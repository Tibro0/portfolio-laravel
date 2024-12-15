<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\ServiceSectionDataTable;
use App\Http\Controllers\Controller;
use App\Models\ServiceSection;
use Illuminate\Http\Request;

class ServiceSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(ServiceSectionDataTable $dataTable)
    {
        return $dataTable->render('admin.service.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.service.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'icon' => ['required', 'max:255'],
            'url' => ['required', 'url', 'max:255'],
            'title' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
        ]);

        $service = new ServiceSection();
        $service->icon = $request->icon;
        $service->url = $request->url;
        $service->title = $request->title;
        $service->description = $request->description;
        $service->save();

        toastr()->success('Created Successfully!');
        return redirect()->route('admin.service.index');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $service = ServiceSection::findOrFail($id);
        return view('admin.service.edit', compact('service'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'icon' => ['required', 'max:255'],
            'url' => ['required', 'url', 'max:255'],
            'title' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
        ]);

        $service = ServiceSection::findOrFail($id);
        $service->icon = $request->icon;
        $service->url = $request->url;
        $service->title = $request->title;
        $service->description = $request->description;
        $service->save();

        toastr()->success('Updated Successfully!');
        return redirect()->route('admin.service.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $service = ServiceSection::findOrFail($id);
        $service->delete();
        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }
}
