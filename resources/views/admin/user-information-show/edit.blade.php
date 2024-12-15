@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Show Contact Message</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Show Contact Message</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Show Contact Message</h4>

            </div>
            <div class="card-body">
                <form action="{{ route('admin.user-information-show.update', $userInformation->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label>User Name</label>
                        <input type="text" name="name" value="{{ $userInformation->name }}" class="form-control"
                            readonly>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" name="email" value="{{ $userInformation->email }}" class="form-control"
                            readonly>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" name="phone" value="{{ $userInformation->phone }}" class="form-control"
                            readonly>
                    </div>
                    <div class="form-group">
                        <label>Email Subject</label>
                        <input type="text" name="email_subject" value="{{ $userInformation->email_subject }}"
                            class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label>message</label>
                        <textarea name="message" class="form-control" readonly>{{ $userInformation->message }}</textarea>
                    </div>
                    <div class="form-group">
                        <label>Aneser</label>
                        <select name="anser" class="form-control">
                            <option @selected($userInformation->anser === 'yes') value="yes">Yes</option>
                            <option @selected($userInformation->anser === 'no') value="no">No</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </section>
@endsection
