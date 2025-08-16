<?php

namespace Database\Seeders;

use App\Models\Portfolio;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PortfolioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Portfolio::insert([
            [
                'image' => 'frontend/images/portfolio1.png',
                'title' => 'Frontend Project',
                'description' => 'Showcase of a frontend project. Demonstrates skills in HTML, CSS, JavaScript, and front-end frameworks. Includes code examples and project documentation.',
                'language' => 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.',
                'live_link' => 'https://tibro0.github.io/Securex/',
                'github_link' => 'https://github.com/Tibro0/Securex',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'image' => 'frontend/images/portfolio2.png',
                'title' => 'Charite Website',
                'description' => 'Official website of Charité – Universitätsmedizin Berlin. Provides information about the hospital, research, patient care, and careers. Online appointments and medical information available.',
                'language' => 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.',
                'live_link' => 'https://tibro0.github.io/chariteam/',
                'github_link' => 'https://github.com/Tibro0/chariteam',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'image' => 'frontend/images/portfolio3.png',
                'title' => 'Construction Company',
                'description' => 'Showcase projects, services, and expertise. Contact information, client testimonials, and project portfolio. Enhance online presence and attract new clients.',
                'language' => 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.',
                'live_link' => 'https://tibro0.github.io/Buildx/',
                'github_link' => 'https://github.com/Tibro0/Buildx',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'image' => 'frontend/images/portfolio4.png',
                'title' => 'Learning Management System',
                'description' => 'Online platform for delivering and tracking e-learning courses. Features include course enrollment, assignments, quizzes, progress tracking, and communication tools.',
                'language' => 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.',
                'live_link' => 'https://lms.devtibro.com/',
                'github_link' => 'https://lms.devtibro.com/',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'image' => 'frontend/images/portfolio5.png',
                'title' => 'Restaurant Management Website',
                'description' => 'Streamline restaurant operations. Online ordering, table reservations, inventory management, employee scheduling, customer relationship management.',
                'language' => 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.',
                'live_link' => 'https://food-park.devtibro.com/',
                'github_link' => 'https://github.com/Tibro0/food-park-laravel',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'image' => 'frontend/images/portfolio6.png',
                'title' => 'Multi Vendor E-commerce Website',
                'description' => 'Online marketplace where multiple sellers can list and sell their products. Features include product listings, order management, and secure payments. Benefits buyers and sellers.',
                'language' => 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.',
                'live_link' => 'http://ecommerce.devtibro.com/',
                'github_link' => 'https://github.com/Tibro0/multi-vendor-ecommerce-website-laravel',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
