<?php

namespace Database\Seeders;

use App\Models\ServiceSection;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ServiceSectionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ServiceSection::insert([
            [
                'icon' => 'bx bxl-jquery',
                'url' => 'https://devtibro.com/',
                'title' => 'jQuery',
                'description' => 'jQuery Development, AJAX Interactions, DOM Manipulation, Front-End Animations, Plugin Development.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxs-webcam',
                'url' => 'https://devtibro.com/',
                'title' => 'Web Design',
                'description' => 'Website Design & Development, UI/UX Design, Branding, Logo Design, Responsive Websites.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-php',
                'url' => 'https://devtibro.com/',
                'title' => 'PHP',
                'description' => 'PHP Development, Custom Web Applications, API Development, CMS Integration, E-commerce Solutions.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-sketch',
                'url' => 'https://devtibro.com/',
                'title' => 'Web Development',
                'description' => 'Website Design & Development, E-commerce Solutions, SEO, UI/UX, Mobile-Responsive Websites.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxl-bootstrap',
                'url' => 'https://devtibro.com/',
                'title' => 'Bootstrap',
                'description' => 'Responsive web design with Bootstrap. Create beautiful, cross-browser compatible websites.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'icon' => 'bx bxs-paint',
                'url' => 'https://devtibro.com/',
                'title' => 'Laravel',
                'description' => 'Custom Laravel Development, API Integration, E-commerce Solutions, Web App Maintenance, Cloud Deployment.',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
