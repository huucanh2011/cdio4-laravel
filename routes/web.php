<?php

Route::get('/','PageController@getHome')->name('home');
Route::post('login','LoginController@authenticate')->name('login');
Route::get('logout','LoginController@logout')->name('logout');
Route::resource('register','RegisterController');
Route::post('post-article','BaiDangController@store')->name('post-article');
Route::resource('cooperate','DangKyHopTacController');
Route::get('profile', 'PageController@getProfile')->name('profile')->middleware('user');
Route::get('all-movies', 'PageController@getAllPhim')->name('all-movies');
Route::get('community', 'PageController@getCommunity')->name('community');
Route::get('movie/{id}-{slug}', 'ChiTietPhimController@show');
Route::get('post/{id}-{slug}', 'ChiTietBaiDangController@show');
Route::post('changepassword', 'UserController@changePassWord')->name('changepassword');
Route::get('search', 'PageController@search')->name('search');

///////////////////// AJAX /////////////////////
Route::group(['prefix' => 'ajax'], function(){
    Route::post('upload-image', 'UserController@uploadHinh')->name('ajax-upload-image');

    Route::post('binhluan', 'AjaxController@postBinhLuan');
    Route::get('binhluan/{baiDangId}', 'AjaxController@loadBinhLuan');
    Route::get('binhluan/xoa/{binhLuanId}', 'AjaxController@getXoaBinhLuan');
    Route::post('binhluan/sua', 'AjaxController@getSuaBinhLuan');

    Route::post('danhgia', 'AjaxController@postDanhGia');
    Route::post('danhgia/capnhat', 'AjaxController@postCapNhatDanhGia');
    Route::get('danhgia/{phimId}', 'AjaxController@loadDanhGia');
    Route::get('danhgia/xoa/{danhgiaId}', 'AjaxController@getXoaDanhGia');

    Route::post('like', 'AjaxController@postLike');
    Route::post('dislike', 'AjaxController@postDisLike');

    Route::get('sort-film', 'AjaxController@getSortFilm');
});

///////////////////// HÃNG PHIM /////////////////////
Route::group(['prefix' => 'hangphim', 'middleware' => 'hangphim'], function(){
    Route::get('dashboard', 'PageController@indexFilmStudio')->name('filmstudio.dashboard');
    Route::get('danhgia','DanhGiaController@indexHangPhim')->name('filmstudio.danhgia.index');
    Route::post('danhgia/{id}','DanhGiaController@destroy')->name('filmstudio.danhgia.destroy');
    Route::resource('phim', 'PhimController');
    Route::group(['prefix' => 'ajax'], function(){
        Route::post('thongtinnguoidanhgia', 'AjaxController@loadThongTinNguoiDanhGia');
        Route::post('thongtinphim', 'AjaxController@loadThongTinPhim');
        Route::post('loadtheloai', 'AjaxController@loadTheLoai');
    });
});

///////////////////// ADMIN /////////////////////
Route::group(['prefix' => 'admin','middleware' => 'admin'], function(){
    Route::get('dashboard', 'PageController@indexAdmin')->name('admin.dashboard');
    Route::resource('quyen','QuyenController');
    Route::resource('taikhoan','UserController');
    Route::get('phim', 'PhimAdminController@index')->name('admin.phim.index');
    Route::get('phim/{id}', 'PhimAdminController@show')->name('admin.phim.show');
    Route::resource('baidang','BaiDangController');
    Route::resource('binhluan','BinhLuanController');
    Route::get('danhgia','DanhGiaController@indexAdmin')->name('admin.danhgia.index');
    Route::delete('danhgia/{id}','DanhGiaController@destroy');
    Route::resource('goidangky','GoiDangKyController');
    Route::resource('dangkyquangcao','QuanLyHopTacController');
    Route::get('phanquyen','UserController@getPhanQuyen')->name('phanquyen.index');
    Route::post('phanquyen','UserController@postPhanQuyen');
    Route::group(['prefix' => 'ajax'], function(){
        Route::post('lockuser', 'AjaxController@postLockUser');
        Route::post('duyetdangky', 'AjaxController@postDuyetDangKy');
        Route::post('anbaidang', 'AjaxController@postAnBaiDang');
        Route::post('thongtinnguoidanhgia', 'AjaxController@loadThongTinNguoiDanhGia');
        Route::post('loadgoidangky', 'AjaxController@loadGoiDangKy');
        Route::post('status', 'AjaxController@updateStatusFilm');
    });
});
