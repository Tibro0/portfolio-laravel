<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::insert([
            [
                'name' => 'MD. Faysal Hossain Tibro',
                'email' => 'faysaltibro@gmail.com',
                'role' => 'admin',
                'password' => Hash::make('faysaltibro0171226103501966221364'),
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'User',
                'email' => 'user@gmail.com',
                'role' => 'user',
                'password' => Hash::make('faysaltibro0171226103501966221364'),
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
