<?php

namespace Database\Seeders;

use App\Models\MySkill;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MySkillSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        MySkill::insert([
            [
                'icon' => 'bx bxl-html5',
                'icon_name' => 'HTML5',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-css3',
                'icon_name' => 'CSS3',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-bootstrap',
                'icon_name' => 'Bootstrap',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-jquery',
                'icon_name' => 'jQuery',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-jquery',
                'icon_name' => 'jQuery',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-tailwind-css',
                'icon_name' => 'Tailwind CSS',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-javascript',
                'icon_name' => 'JavaScript',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-php',
                'icon_name' => 'PHP',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxs-paint',
                'icon_name' => 'Laravel',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
