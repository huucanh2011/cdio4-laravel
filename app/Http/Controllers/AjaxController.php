<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Exception;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\DanhGia;
use App\TheLoaiPhim;
use App\Phim;
use App\BaiDang;
use App\BinhLuan;
use App\GoiDangKy;
use App\Thich;
use DD;

class AjaxController extends Controller
{
    public function postLockUser(Request $request)
    {
        $user = User::findOrFail($request->userId);
        try {
            $user->update(['trang_thai' => $request->lock]);
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function postDuyetDangKy(Request $request)
    {
        $user = User::findOrFail($request->user_id);
        try {
            $user->update(['trang_thai' => $request->duyet, 'ngay_duyet_dang_ky' => get_now()]);
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function postAnBaiDang(Request $request)
    {
        $baiDang = BaiDang::findOrFail($request->idBaiDang);
        try {
            $baiDang->update(['trang_thai' => $request->an]);
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function loadDanhGia($phimId)
    {
        $phim = Phim::findOrFail($phimId);
        $danhGias = DanhGia::with('user')->where('phim_id', $phimId)->orderby('created_at', 'desc')->get();
        return view('subpages.danhgia', compact('phim', 'danhGias'));
    }

    public function postDanhGia(Request $request)
    {
        $user_id = Auth::user()->id;
        $check = DanhGia::where('phim_id', $request->phim_id)->where('user_id', $user_id)->count();
		if($check == 0){
			try {
				DanhGia::create($request->only(['diem','noi_dung','phim_id'])+['user_id'=>$user_id]);
			} catch (Exception $e) {
				return $e->getMessage();
			}
			return response()->json([
				'error'=>false,
				'thongbao'=>'Đánh giá thành công',
			],200);
		}
		else{
			return response()->json([
				'error'=>true,
				'thongbao'=>'Không được phép đánh giá',
			],200);
		}
    }

    public function postCapNhatDanhGia(Request $request)
    {
        $user = Auth::user();
        $danhGia = DanhGia::findOrFail($request->danhGiaId);
		if($danhGia){
			try {
				$danhGia->diem = $request->diemCapNhat;
                $danhGia->noi_dung = $request->noiDungCapNhat;
                $danhGia->phim_id = $request->phimId;
                $danhGia->user_id = $user->id;
                $danhGia->update();
			} catch (Exception $e) {
				return $e->getMessage();
			}
			return response()->json([
				'error'=>false,
				'thongbao'=>'Cập nhật thành công',
			],200);
		}
		else{
			return response()->json([
				'error'=>true,
				'thongbao'=>'Không tìm thấy đánh giá',
			],200);
		}
    }

    public function getXoaDanhGia($danhGiaId)
    {
        $danhGia = DanhGia::findOrFail($danhGiaId);
		try {
			$danhGia->delete();
		} catch (Exception $e) {
			return response()->json([
				'error'=>true,
			],200);
		}
		return response()->json([
			'error'=>false,
		],200);
    }

    public function getSuaBinhLuan(Request $request)
    {
        $binhLuan = BinhLuan::findOrFail($request->id);
		try {
			$binhLuan->update($request->only(['noi_dung']));
		} catch (Exception $e) {
			return response()->json([
				'error'=>true,
			],200);
		}
		return response()->json([
			'error'=>false,
		],200);
    }

    public function getXoaBinhLuan($binhLuanId)
    {
        $binhLuan = BinhLuan::findOrFail($binhLuanId);
		try {
			$binhLuan->delete();
		} catch (Exception $e) {
			return response()->json([
				'error'=>true,
			],200);
		}
		return response()->json([
			'error'=>false,
		],200);
    }

    public function loadBinhLuan($baiDangId)
    {
        $baiDang = BaiDang::findOrFail($baiDangId);
        $binhLuans = BinhLuan::with('user')->where('baidang_id', $baiDangId)->orderby('created_at', 'desc')->get();
        return view('subpages.binhluan', compact('baiDang', 'binhLuans'));
    }

    public function postBinhLuan(Request $request)
    {
        $user_id = Auth::user()->id;
        try {
            BinhLuan::create($request->only(['noi_dung','baidang_id'])+['user_id'=>$user_id]);
        } catch (Exception $e) {
            return $e->getMessage();
        }
        return response()->json([
            'error'=>false,
            'thongbao'=>'Đánh giá thành công',
        ],200);
    }

    public function loadThongTinNguoiDanhGia(Request $request)
    {
        $user = User::findOrFail($request->userId);

        return response()->json($user, 200);
    }

    public function loadTheLoai(Request $request)
    {
        $mang = get_mangTheLoaiPhim($request->phimId);

        return response()->json($mang, 200);
    }

    public function loadThongTinPhim(Request $request)
    {
        $phim = Phim::findOrFail($request->phimId);

        return response()->json($phim, 200);
    }

    public function loadGoiDangKy(Request $request)
    {
        $goiDangKy = GoiDangKy::findOrFail($request->goiDangKyId);

        return response()->json($goiDangKy, 200);
    }

    public function updateStatusFilm(Request $request)
    {
        $phim = Phim::findOrFail($request->phimId);
        try {
            $phim->update(['trang_thai' => $request->status]);
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function postLike(Request $request)
    {        
        $is_like = true;
        $update = false;
        $baiDangId = $request->baiDangId;
        $baiDang = BaiDang::findOrFail($baiDangId);
        $user = Auth::user();

        $like = $user->thich()->where('baidang_id', $baiDang->id)->first();
        if($like)
        {
            $update = true;
        }
        else
        {
            $like = new Thich;
        }
        $like->thich = $is_like;
        $like->baidang_id = $baiDang->id;
        $like->user_id = $user->id;
        if($update)
        {
            $like->update();
            return response()->json(['ms' => 'Cập nhật thành công'], 200);
        }
        else
        {
            $like->save();
            return response()->json(['ms' => 'Like thành công'], 200);
        }
        
        return response()->json(['ms' => 'Lỗi'], 200);
    }

    public function postDisLike(Request $request)
    {
        $is_like = false;
        $update = false;
        $baiDangId = $request->baiDangId;
        $baiDang = BaiDang::findOrFail($baiDangId);

        $user = Auth::user();

        $like = $user->thich()->where('baidang_id', $baiDang->id)->first();
        if($like)
        {
            $update = true;
        }
        else
        {
            $like = new Thich;
        }

        $like->thich = $is_like;
        $like->baidang_id = $baiDang->id;
        $like->user_id = $user->id;

        if($update)
        {
            $like->update();
            return response()->json(['ms' => 'Cập nhật thành công'], 200);
        }
        else
        {
            $like->save();
            return response()->json(['ms' => 'Dislike thành công'], 200);
        }
        
        return response()->json(['ms' => 'Lỗi'], 200);
    }
}
