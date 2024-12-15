<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Information;
use Illuminate\Http\Request;

class InformationController extends Controller
{
    public function index(){
        $key = ['first_name', 'last_name', 'phone', 'email', 'github_link', 'linkedin_link', 'facebook_link', 'whatsapp_link', 'experience', 'city', 'nationality', 'age', 'language', 'gender', 'full_time', 'freelancer','status','address'];
        $information = Information::whereIn('key', $key)->pluck('value', 'key');
        return view('admin.information.index', compact('information'));
    }

    public function informationUpdate(Request $request){
        $validateData = $request->validate([
            'first_name' => ['required', 'max:255'],
            'last_name' => ['required', 'max:255'],
            'phone' => ['required', 'numeric'],
            'email' => ['required', 'email', 'max:255'],
            'github_link' => ['required', 'url', 'max:255'],
            'linkedin_link' => ['required', 'url', 'max:255'],
            'facebook_link' => ['required', 'url', 'max:255'],
            'whatsapp_link' => ['required', 'url', 'max:255'],
            'experience' => ['required','max:255'],
            'city' => ['required','max:255'],
            'nationality' => ['required','max:255'],
            'age' => ['required','max:255'],
            'language' => ['required','max:255'],
            'gender' => ['required','max:255'],
            'full_time' => ['required','in:Available,Not Available'],
            'freelancer' => ['required','in:Available,Not Available'],
            'status' => ['required','in:Married,UnMarried'],
            'address' => ['required'],
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
