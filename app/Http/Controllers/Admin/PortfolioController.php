<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\PortfolioDataTable;
use App\Http\Controllers\Controller;
use App\Models\Portfolio;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class PortfolioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(PortfolioDataTable $dataTable)
    {
        return $dataTable->render('admin.portfolio.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.portfolio.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'image' => ['required', 'image', 'max:2000'],
            'title' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
            'language' => ['required', 'max:255'],
            'live_link' => ['required', 'url', 'max:255'],
            'github_link' => ['required', 'url', 'max:255'],
        ]);

        if ($request->file('image')) {
            $image = $request->file('image');
            $manager = new ImageManager(new Driver());
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            $img = $manager->read($image);
            $img = $img->resize(700,684);
            $img->toJpeg(80)->save(base_path('public/uploads/portfolio/'.$name_gen));
            $save_url = 'uploads/portfolio/'.$name_gen;
        }

        $portfolio = new Portfolio();
        $portfolio->image = $save_url;
        $portfolio->title = $request->title;
        $portfolio->description = $request->description;
        $portfolio->language = $request->language;
        $portfolio->live_link = $request->live_link;
        $portfolio->github_link = $request->github_link;
        $portfolio->save();

        toastr()->success('Created Successfully');
        return redirect()->route('admin.portfolio.index');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $portfolio = Portfolio::findOrFail($id);
        return view('admin.portfolio.edit', compact('portfolio'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'image' => ['image', 'max:2000'],
            'title' => ['required', 'max:255'],
            'description' => ['required', 'max:255'],
            'language' => ['required', 'max:255'],
            'live_link' => ['required', 'url', 'max:255'],
            'github_link' => ['required', 'url', 'max:255'],
        ]);

        $oldImage = $request->old_image;
        if ($request->file('image')) {
            $image = $request->file('image');
            $manager = new ImageManager(new Driver());
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            $img = $manager->read($image);
            $img = $img->cover(700,684);
            $img->toPng(indexed: true)->save(base_path('public/uploads/portfolio/'.$name_gen));
            $save_url = 'uploads/portfolio/'.$name_gen;

            if (file_exists($oldImage)) {
                unlink($oldImage);
            }

            $portfolio = Portfolio::findOrFail($id);
            $portfolio->image = $save_url;
            $portfolio->title = $request->title;
            $portfolio->description = $request->description;
            $portfolio->language = $request->language;
            $portfolio->live_link = $request->live_link;
            $portfolio->github_link = $request->github_link;
            $portfolio->save();

            toastr()->success('Updated Successfully');
            return redirect()->route('admin.portfolio.index');
        }else{
            $portfolio = Portfolio::findOrFail($id);
            $portfolio->title = $request->title;
            $portfolio->description = $request->description;
            $portfolio->language = $request->language;
            $portfolio->live_link = $request->live_link;
            $portfolio->github_link = $request->github_link;
            $portfolio->save();

            toastr()->success('Updated Successfully');
            return redirect()->route('admin.portfolio.index');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $portfolio = Portfolio::findOrFail($id);
        $deleteImage = $portfolio->image;
        unlink($deleteImage);
        $portfolio->delete();

        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }
}
