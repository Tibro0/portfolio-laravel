@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Update My Experience</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Update My Experience</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Update My Experience</h4>

            </div>
            <div class="card-body">
                <form action="{{ route('admin.my-experience.update', $experience->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label>Years</label>
                        <input type="text" name="years" value="{{ $experience->years }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="title" value="{{ $experience->title }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Company Name</label>
                        <input type="text" name="company_name" value="{{ $experience->company_name }}"
                            class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control">{{ $experience->description }}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </section>
@endsection
