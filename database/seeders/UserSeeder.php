<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::insert([
            [
                'avatar' => 'frontend/images/profile.png',
                'name' => 'MD. Faysal Hossain Tibro',
                'email' => 'faysaltibro@gmail.com',
                'role' => 'admin',
                'email_verified_at' => now(),
                'password' => Hash::make('faysaltibro0171226103501966221364'),
                'remember_token' => Str::random(10),
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'avatar' => '/uploads/avatar.png',
                'name' => 'User',
                'email' => 'user@gmail.com',
                'role' => 'user',
                'email_verified_at' => now(),
                'password' => Hash::make('faysaltibro0171226103501966221364'),
                'remember_token' => Str::random(10),
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
