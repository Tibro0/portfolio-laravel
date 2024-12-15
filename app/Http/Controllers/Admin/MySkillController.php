<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\MySkillDataTable;
use App\Http\Controllers\Controller;
use App\Models\Information;
use App\Models\MySkill;
use Illuminate\Http\Request;

class MySkillController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(MySkillDataTable $dataTable)
    {
        $key = ['my_skill_short_description'];
        $description = Information::whereIn('key', $key)->pluck('value','key');
        return $dataTable->render('admin.my-skill.index', compact('description'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.my-skill.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'icon' => ['required', 'max:255'],
            'icon_name' => ['required', 'max:255'],
        ]);

        $skill = new MySkill();
        $skill->icon = $request->icon;
        $skill->icon_name = $request->icon_name;
        $skill->save();

        toastr()->success('Created Successfully');
        return redirect()->route('admin.my-skill.index');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $skill = MySkill::findOrFail($id);
        return view('admin.my-skill.edit', compact('skill'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'icon' => ['required', 'max:255'],
            'icon_name' => ['required', 'max:255'],
        ]);

        $skill = MySkill::findOrFail($id);
        $skill->icon = $request->icon;
        $skill->icon_name = $request->icon_name;
        $skill->save();

        toastr()->success('Updated Successfully');
        return redirect()->route('admin.my-skill.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $skill = MySkill::findOrFail($id);
        $skill->delete();
        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }

    public function MySkillShortDescriptionUpdate(Request $request){
        $validatedData = $request->validate([
            'my_skill_short_description' => ['required'],
        ],[
            'my_skill_short_description.required' => 'Description field is required.'
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
