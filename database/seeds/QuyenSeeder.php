<?php

use Illuminate\Database\Seeder;

class QuyenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('quyens')->insert([
            'id' => 1,
            'ten_quyen' => 'Admin',
        ],
        [
            'id' => 2,
            'ten_quyen' => 'Hãng phim',
        ],
        [
            'id' => 3,
            'ten_quyen' => 'Thành Viên'
        ]
        );
    }
}
