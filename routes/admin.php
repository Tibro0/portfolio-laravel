<?php

use App\Http\Controllers\Admin\AboutMeController;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\HomeSectionInformationController;
use App\Http\Controllers\Admin\InformationController;
use App\Http\Controllers\Admin\MyEducationController;
use App\Http\Controllers\Admin\MyExperienceController;
use App\Http\Controllers\Admin\MySkillController;
use App\Http\Controllers\Admin\PortfolioController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\ServiceSectionController;
use App\Http\Controllers\Admin\UserInformationShowController;
use Illuminate\Support\Facades\Route;

/** admin dashboard route */
Route::get('dashboard', [AdminDashboardController::class, 'index'])->name('dashboard');

/** admin profile route */
Route::get('profile', [ProfileController::class, 'index'])->name('profile');
Route::put('profile', [ProfileController::class, 'updateProfile'])->name('profile.update');
Route::put('profile/password', [ProfileController::class, 'updatePassword'])->name('profile.password.update');

/** information route */
Route::get('information', [InformationController::class, 'index'])->name('information');
Route::put('information/update', [InformationController::class, 'informationUpdate'])->name('information.update');

/** Home Section Information route */
Route::get('home/section/information', [HomeSectionInformationController::class, 'index'])->name('home-section-information.index');
Route::put('home/section/information/update', [HomeSectionInformationController::class, 'homeSectionUpdate'])->name('home-section-information.update');

/** Product Service Section Routes */
Route::resource('service', ServiceSectionController::class);

/** My Experience Routes */
Route::put('my-experience-short-description/update', [MyExperienceController::class, 'MyExperienceShortDescriptionUpdate'])->name('my-experience-short-description.update');
Route::resource('my-experience', MyExperienceController::class);

/** My Education Routes */
Route::put('my-education-short-description/update', [MyEducationController::class, 'MyEducationShortDescriptionUpdate'])->name('my-education-short-description.update');
Route::resource('my-education', MyEducationController::class);

/** My skill Routes */
Route::put('my-skill-short-description/update', [MySkillController::class, 'MySkillShortDescriptionUpdate'])->name('my-skill-short-description.update');
Route::resource('my-skill', MySkillController::class);

/** My skill Routes */
Route::get('about-me-short-description-index', [AboutMeController::class, 'index'])->name('about-me-short-description.index');
Route::put('about-me-short-description-update', [AboutMeController::class, 'aboutMeShortDescriptionUpdate'])->name('about-me-short-description.update');

/** portfolio Routes */
Route::resource('portfolio', PortfolioController::class);

/**contact message show */
Route::resource('user-information-show', UserInformationShowController::class);
