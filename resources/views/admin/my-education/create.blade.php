@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Create My Education</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Create My Education</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Create My Education</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.my-education.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label>Years</label>
                        <input type="text" name="years" value="{{ old('years') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Course Name</label>
                        <input type="text" name="course_name" value="{{ old('course_name') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Company Name</label>
                        <input type="text" name="company_name" value="{{ old('company_name') }}" class="form-control">
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
