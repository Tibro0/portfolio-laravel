@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Update Service</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Update Services</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Update Services</h4>

            </div>
            <div class="card-body">
                <form action="{{ route('admin.service.update', $service->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label>Icon(BoxIcon)</label>
                        <input type="text" name="icon" value="{{ $service->icon }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>URL</label>
                        <input type="text" name="url" value="{{ $service->url }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="title" value="{{ $service->title }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control">{{ $service->description }}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </section>
@endsection
