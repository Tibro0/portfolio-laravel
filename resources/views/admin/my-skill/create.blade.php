@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Create My Skills</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Create My Skills</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Create My Skills</h4>

            </div>
            <div class="card-body">
                <form action="{{ route('admin.my-skill.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label>Icon(BoxIcon)</label>
                        <input type="text" name="icon" value="{{ old('icon') }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Icon Name</label>
                        <input type="text" name="icon_name" value="{{ old('icon_name') }}" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Create</button>
                </form>
            </div>
        </div>
    </section>
@endsection
