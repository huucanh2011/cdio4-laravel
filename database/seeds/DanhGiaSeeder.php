<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class DanhGiaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 500 ; $i++) { 
            DB::table('danh_gias')->insert([
                'diem' => 6,
                'noi_dung' => 'Phim hay ghê ta ơi!',
                'phim_id' => 1,
                'user_id' => 1,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
        }
    }
}
