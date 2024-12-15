@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Create Service</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Create Services</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Create Services</h4>

            </div>
            <div class="card-body">
                <form action="{{ route('admin.service.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label>Icon(BoxIcon)</label>
                        <input type="text" name="icon" value="{{ old('icon') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>URL</label>
                        <input type="text" name="url" value="{{ old('url') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="title" value="{{ old('title') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control">{{ old('description') }}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Create</button>
                </form>
            </div>
        </div>
    </section>
@endsection
