<?php

namespace Database\Seeders;

use App\Models\MyEducation;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MyEducationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        MyEducation::insert([
            [
                'years' => '2015',
                'course_name' => 'Mission International School & Collage',
                'company_name' => 'Secondary School Certificate',
                'description' => 'Secondary School Certificate from Mission International School & Collage. Proficient in English, Mathematics, Science. Eager to learn and grow.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'years' => '2023',
                'course_name' => 'Shikhbe Shobai',
                'company_name' => 'Full Stack Web Development - Wordpress',
                'description' => "Shikhbe Shobai: Bangladesh's premier IT training institute. Learn in-demand skills: web development, programming, digital marketing, and more.",
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'years' => '2024',
                'course_name' => 'Shikhbe Shobai',
                'company_name' => 'Full Stack Web Development - PHP Laravel',
                'description' => "Shikhbe Shobai: Bangladesh's premier IT training institute. Learn in-demand skills: web development, programming, digital marketing, and more.",
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'years' => '2025',
                'course_name' => 'Dhaka Central Polytechnic Institute',
                'company_name' => 'Diploma Engineering Computer Technology',
                'description' => "Diploma in Computer Engineering from DCPI. Proficient in Laravel, PHP, and Wordpress. Strong foundation in computer hardware and software.",
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
