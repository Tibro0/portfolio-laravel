<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\MyEducationDataTable;
use App\Http\Controllers\Controller;
use App\Models\Information;
use App\Models\MyEducation;
use Illuminate\Http\Request;

class MyEducationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(MyEducationDataTable $dataTable)
    {
        $key = ['my_education_short_description'];
        $description = Information::whereIn('key', $key)->pluck('value','key');
        return $dataTable->render('admin.my-education.index', compact('description'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.my-education.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'years' => ['required', 'max:255'],
            'course_name' => ['required', 'max:255'],
            'company_name' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
        ]);

        $education = new MyEducation();
        $education->years = $request->years;
        $education->course_name = $request->course_name;
        $education->company_name = $request->company_name;
        $education->description = $request->description;
        $education->save();

        toastr()->success('Created Successfully!');
        return redirect()->route('admin.my-education.index');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $education = MyEducation::findOrFail($id);
        return view('admin.my-education.edit', compact('education'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'years' => ['required', 'max:255'],
            'course_name' => ['required', 'max:255'],
            'company_name' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
        ]);

        $education = MyEducation::findOrFail($id);
        $education->years = $request->years;
        $education->course_name = $request->course_name;
        $education->company_name = $request->company_name;
        $education->description = $request->description;
        $education->save();

        toastr()->success('Updated Successfully!');
        return redirect()->route('admin.my-education.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $education = MyEducation::findOrFail($id);
        $education->delete();
        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }

    public function MyEducationShortDescriptionUpdate(Request $request){
        $validatedData = $request->validate([
            'my_education_short_description' => ['required']
        ],[
            'my_education_short_description.required' => 'Description field is required.'
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
