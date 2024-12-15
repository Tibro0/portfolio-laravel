@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Update Portfolio</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Update Portfolio</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Update Portfolio</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.portfolio.update', $portfolio->id) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label>Preview</label><br>
                        <img width="100" src="{{ asset($portfolio->image) }}" alt="">
                    </div>
                    <div class="form-group">
                        <label>Image</label>
                        <input type="file" name="image" class="form-control">
                        <input type="hidden" name="old_image" value="{{ $portfolio->image }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="title" value="{{ $portfolio->title }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" name="description" value="{{ $portfolio->description }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Language</label>
                        <input type="text" name="language" value="{{ $portfolio->language }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Live Link</label>
                        <input type="text" name="live_link" value="{{ $portfolio->live_link }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Github Link</label>
                        <input type="text" name="github_link" value="{{ $portfolio->github_link }}" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </section>
@endsection
