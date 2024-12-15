@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Create Portfolio</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Create Portfolio</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Create Portfolio</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.portfolio.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label>Image</label>
                        <input type="file" name="image" value="{{ old('image') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="title" value="{{ old('title') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" name="description" value="{{ old('description') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Language</label>
                        <input type="text" name="language" value="{{ old('language') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Live Link</label>
                        <input type="text" name="live_link" value="{{ old('live_link') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Github Link</label>
                        <input type="text" name="github_link" value="{{ old('github_link') }}" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Create</button>
                </form>
            </div>
        </div>
    </section>
@endsection
