<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Information;
use Illuminate\Http\Request;

class HomeSectionInformationController extends Controller
{
    public function index(){
        $key = ['animation_text_one', 'animation_text_two', 'animation_text_three', 'animation_text_four', 'home_section_description'];
        $homeSection = Information::whereIn('key', $key)->pluck('value', 'key');
        return view('admin.home-section-information.index', compact('homeSection'));
    }

    public function homeSectionUpdate(Request $request){
        $validateData = $request->validate([
            'animation_text_one' => ['required', 'max:255'],
            'animation_text_two' => ['required', 'max:255'],
            'animation_text_three' => ['required', 'max:255'],
            'animation_text_four' => ['required', 'max:255'],
            'home_section_description' => ['required', 'max:255'],
        ],[
            'home_section_description.required' => 'description field is required',
        ]);

        foreach ($validateData as $key => $value) {
            Information::updateOrCreate(
                ['key' => $key],
                ['value' => $value],
            );
        }

        toastr()->success('Updated Successfully!');
        return redirect()->back();
    }
}
