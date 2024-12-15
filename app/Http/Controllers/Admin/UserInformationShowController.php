<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\UserInformationShowDataTable;
use App\Http\Controllers\Controller;
use App\Models\UserInformation;
use Illuminate\Http\Request;

class UserInformationShowController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(UserInformationShowDataTable $dataTable)
    {
        return $dataTable->render('admin.user-information-show.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $userInformation = UserInformation::findOrFail($id);
        return view('admin.user-information-show.edit', compact('userInformation'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $userInformation = UserInformation::findOrFail($id);
        $userInformation->anser = $request->anser;
        $userInformation->save();

        toastr()->success('Updated Successfully');
        return redirect()->route('admin.user-information-show.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $userInformation = UserInformation::findOrFail($id);
        $userInformation->delete();

        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }
}
