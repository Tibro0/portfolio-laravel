<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\MyExperienceDataTable;
use App\Http\Controllers\Controller;
use App\Models\Information;
use App\Models\MyExperience;
use Illuminate\Http\Request;

class MyExperienceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(MyExperienceDataTable $dataTable)
    {
        $key = ['my_experience_short_description'];
        $description = Information::whereIn('key', $key)->pluck('value','key');
        return $dataTable->render('admin.my-experience.index', compact('description'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.my-experience.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'years' => ['required', 'max:255'],
            'title' => ['required', 'max:255'],
            'company_name' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
        ]);

        $experience = new MyExperience();
        $experience->years = $request->years;
        $experience->title = $request->title;
        $experience->company_name = $request->company_name;
        $experience->description = $request->description;
        $experience->save();

        toastr()->success('Created Successfully!');
        return redirect()->route('admin.my-experience.index');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $experience = MyExperience::findOrFail($id);
        return view('admin.my-experience.edit', compact('experience'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'years' => ['required', 'max:255'],
            'title' => ['required', 'max:255'],
            'company_name' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
        ]);

        $experience = MyExperience::findOrFail($id);
        $experience->years = $request->years;
        $experience->title = $request->title;
        $experience->company_name = $request->company_name;
        $experience->description = $request->description;
        $experience->save();

        toastr()->success('Updated Successfully!');
        return redirect()->route('admin.my-experience.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $experience = MyExperience::findOrFail($id);
        $experience->delete();
        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }

    public function MyExperienceShortDescriptionUpdate(Request $request){
        $validatedData = $request->validate([
            'my_experience_short_description' => ['required'],
        ],[
            'my_experience_short_description.required' => 'Description field is required.'
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
