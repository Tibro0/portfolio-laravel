<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Information;
use App\Models\MyEducation;
use App\Models\MyExperience;
use App\Models\MySkill;
use App\Models\Portfolio;
use App\Models\ServiceSection;
use App\Models\User;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index(){
        $userAvatar = User::where('id', 1)->first();
        $information = Information::all()->pluck('value', 'key');
        $services = ServiceSection::orderBy('id', 'DESC')->get();
        $MyExperiences = MyExperience::orderBy('id', 'DESC')->get();
        $MyEducations = MyEducation::orderBy('id', 'DESC')->get();
        $MySkills = MySkill::orderBy('id', 'DESC')->get();
        $portfolios = Portfolio::orderBy('id', 'DESC')->get();
        return view('frontend.home.home', compact('userAvatar', 'information', 'services', 'MyExperiences', 'MyEducations', 'MySkills', 'portfolios'));
    }
}
