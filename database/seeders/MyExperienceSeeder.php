<?php

namespace Database\Seeders;

use App\Models\MyExperience;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MyExperienceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        MyExperience::insert([
            [
                'years' => '2024',
                'title' => 'Udemy Online Courses - Laravel',
                'company_name' => 'Web Solution US',
                'description' => 'Delivering cutting-edge web solutions for businesses of all sizes. From design and development to digital marketing, we drive online success.',
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);
    }
}
