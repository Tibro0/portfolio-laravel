<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class ProfileController extends Controller
{
    public function index(){
        return view('admin.profile.index');
    }

    public function updateProfile(Request $request){
        $request->validate([
            'avatar' => ['nullable', 'image', 'max:2000'],
            'name' => ['required', 'max:255'],
            'email' => ['required', 'email', 'max:255', 'unique:users,email,'.Auth::user()->id],
        ]);

        $old_avatar = $request->old_avatar;
        if ($request->file('avatar')) {
            $image = $request->file('avatar');
            $manager = new ImageManager(new Driver());
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            $img = $manager->read($image);
            $img = $img->resize(807,962);
            $img->toPng(indexed: true)->save(base_path('public/uploads/'.$name_gen));
            $save_url = 'uploads/'.$name_gen;

            $user = Auth::user();
            $user->avatar = $save_url;
            $user->name = $request->name;
            $user->email = $request->email;
            $user->save();

            // if (file_exists($old_avatar)) {
            //     unlink($old_avatar);
            // }

            toastr()->success('Updated Successfully With Image!');
            return redirect()->back();
        }else{
            $user = Auth::user();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->save();

            toastr()->success('Updated Successfully Without Image!');
            return redirect()->back();
        }


    }

    public function updatePassword(Request $request){
        $request->validate([
            'current_password' => ['required', 'current_password'],
            'password' => ['required', 'min:5', 'confirmed']
        ],[
            'current_password.current_password' => 'Current password is invalid.',
            'current_password.required' => 'Current password field is required.'
        ]);

        $user = Auth::user();
        $user->password = Hash::make($request->password);
        $user->save();

        toastr()->success('Password Updated Successfully!');
        return redirect()->back();
    }
}
