<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Information;
use Illuminate\Http\Request;

class AboutMeController extends Controller
{
    public function index(){
        $key = ['about_me_short_description'];
        $description = Information::whereIn('key', $key)->pluck('value','key');
        return view('admin.about-me.index', compact('description'));
    }

    public function aboutMeShortDescriptionUpdate(Request $request){
        $validatedData = $request->validate([
            'about_me_short_description' => ['required']
        ]);

        foreach ($validatedData as $key => $value) {
            Information::updateOrCreate(
                ['key' => $key],
                ['value' => $value]
            );
        }

        toastr()->success('Updated Successfully!');
        return redirect()->back();
    }
}
