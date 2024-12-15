<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\UserInformation;
use Illuminate\Http\Request;

class UserInformationController extends Controller
{
    public function ContactFormSubmit(Request $request){
        $request->validate([
            'name' => ['required', 'max:255'],
            'email' => ['required', 'email', 'max:255'],
            'phone' => ['required', 'max:255'],
            'email_subject' => ['required', 'max:255'],
            'message' => ['required', 'max:255'],
        ],[
            'name.required' => 'Full Name Field is Required.',
            'email.required' => 'Email Address Field is Required.',
            'phone.required' => 'Phone Number Address Field is Required.',
            'message.required' => 'Your Message Address Field is Required.',
        ]);

        $contact = new UserInformation();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->email_subject = $request->email_subject;
        $contact->message = $request->message;
        $contact->save();

        toastr()->success('Your Message has been Sent.');
        return redirect()->back();
    }
}
