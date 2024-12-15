@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Update My Education</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Update My Education</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Update My Education</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.my-education.update', $education->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label>Years</label>
                        <input type="text" name="years" value="{{ $education->years }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Course Name</label>
                        <input type="text" name="course_name" value="{{ $education->course_name }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Company Name</label>
                        <input type="text" name="company_name" value="{{ $education->company_name }}"
                            class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control">{{ $education->description }}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </section>
@endsection
