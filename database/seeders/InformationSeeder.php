<?php

namespace Database\Seeders;

use App\Models\Information;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class InformationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Information::insert([
            [
                'key' => 'first_name',
                'value' => 'MD. Faysal Hossain',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'last_name',
                'value' => 'Tibro',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'phone',
                'value' => '1734449023',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'email',
                'value' => 'faysaltibro@gmail.com',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'github_link',
                'value' => 'https://github.com/tibro0',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'linkedin_link',
                'value' => 'https://www.linkedin.com/in/md-faysal-hossain-tibro-1aa622226/',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'facebook_link',
                'value' => 'https://www.facebook.com/faysaltibro',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'whatsapp_link',
                'value' => 'https://api.whatsapp.com/send/?phone=8801734449023&text=Hello&type=phone_number&app_absent=0',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'address',
                'value' => 'Monsurabad, Adabor, Dhaka-1207.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'experience',
                'value' => '1+ Years',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'city',
                'value' => 'Dhaka',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'nationality',
                'value' => 'Bangladeshi',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'language',
                'value' => 'English, Bangla',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'gender',
                'value' => 'Male',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'full_time',
                'value' => 'Available',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'freelancer',
                'value' => 'Available',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'status',
                'value' => 'UnMarried',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'animation_text_one',
                'value' => 'Laravel Developer',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'animation_text_two',
                'value' => 'Web Developer',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'animation_text_three',
                'value' => 'PHP Developer',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'animation_text_four',
                'value' => 'Web Designer',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'home_section_description',
                'value' => 'Highly motivated and results-oriented professional with 1+ years of experience in Laravel. Passionate about Laravel, PHP, HTML, CSS, Bootstrap,  JavaScript, jQuery. Strong work ethic and a desire to continuously learn and grow.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'my_experience_short_description',
                'value' => 'Over 1+ years of experience in web development. Expertise in Laravel, PHP, and UI/UX design. Proven track record of delivering high-quality, user-centric web applications.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'my_education_short_description',
                'value' => 'Bachelor of Science in Computer Science from Dhaka Central Polytechnic Institute. Strong academic foundation in Programming, Data Structures, and Algorithms.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'my_skill_short_description',
                'value' => 'Proficient in PHP, Laravel, JavaScript, HTML, CSS. Experience with databases (MySQL, PostgreSQL). Strong problem-solving, communication, and teamwork skills.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'age',
                'value' => '24 Years Old',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'key' => 'about_me_short_description',
                'value' => 'Highly motivated and results-oriented professional with 1+ years of experience in Laravel. Passionate about Laravel, PHP, HTML, CSS, Bootstrap, JavaScript, jQuery. Strong work ethic and a desire to continuously learn and grow.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
