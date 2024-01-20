@extends('admin.layouts.app')
@section('title', 'Edit Grades Teacher')
@section('content')
    <div class="right_col" role="main">
        <div class="row">
            <div class="page-title">
                <div class="title_left">
                    <h3>Edit Grade Teacher</h3>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-4 col-sm-4 ">
                    <div class="">
                        <div class="x_content">

                            <!-- start form for validation -->
                            <form method="post" action="{{ route('grades.teachers-gradeupdate', $teacher->id) }}"
                                id="demo-form" data-parsley-validate>
                                @csrf
                                @method('PUT')
                                <div class="field item form-group" id="radioGroupContainer">
                                    <div class="col-md-10 col-sm-6">
                                        <div class="form-floating">
                                            <h4 for="">Name position: </h4>
                                            {{-- {{ dd($check) }} --}}
                                            @if ($check)
                                                <div class="form-check form-check-inline" id="homeroomTeacherOption"
                                                    style="display: {{ $teachersStatus->status == 1 ? 'block' : 'none' }};">
                                                    <input class="form-check-input" type="radio" name="status"
                                                        id="flexRadioDefault1" value="1"
                                                        {{ $teachersStatus->status == 1 ? 'checked' : '' }}>
                                                    <label class="form-check-label" for="flexRadioDefault1">Homeroom
                                                        teacher</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="status"
                                                        id="flexRadioDefault2" value="2"
                                                        {{ $teachersStatus->status == 2 ? 'checked' : '' }}>
                                                    <label class="form-check-label" for="flexRadioDefault2">Subject
                                                        teacher</label>
                                                </div>
                                            @else
                                                <div class="form-check form-check-inline" id="homeroomTeacherOption">
                                                    <input class="form-check-input" type="radio" name="status"
                                                        id="flexRadioDefault1" value="1">
                                                    <label class="form-check-label" for="flexRadioDefault1">Homeroom
                                                        teacher</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="status"
                                                        id="flexRadioDefault2" value="2" checked>
                                                    <label class="form-check-label" for="flexRadioDefault2">Subject
                                                        teacher</label>
                                                </div>
                                            @endif
                                        </div>
                                        @error('description')
                                            <span class="text-danger">{{ $message }}</span><br>
                                        @enderror
                                    </div>
                                </div>
                                <br />
                                <div class="text-center">
                                    @can('edit-teacher-class')
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    @endcan
                                </div>
                            </form>
                            <!-- end form for validations -->

                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8">
                    <div class="x_panel">
                        <div class="x_content">
                            <div class="teacher-info-container">
                                <div class="right col-md-5 col-sm-5 text-center">
                                    <img src="{{ asset('public/uploads/teachers/individual/' . $teacher->image_personal) }}"
                                        alt="" class="img-circle img-fluid w-75">
                                </div>
                                <div class="teacher-details mt-3">
                                    <ul>
                                        <li class="fs-5">
                                            <span class="label">Name:</span>
                                            {{ $teacher->last_name . ' ' . $teacher->first_name }}
                                        </li>
                                        <li class="fs-5">
                                            <span class="label">teacher Code:</span>
                                            {{ $teacher->code }}
                                        </li>
                                        <li class="fs-5">
                                            <span class="label">Gender:</span>
                                            {{ $teacher->gender }}
                                        </li>
                                        <li class="fs-5">
                                            <span class="label">Birthday:</span>
                                            {{ $teacher->birthday }}
                                        </li>
                                        <li class="fs-5">
                                            <span class="label">Hometown:</span>
                                            {{ $teacher->hometown }}
                                        </li>
                                        <li class="fs-5">
                                            <span class="label">Phone:</span>
                                            {{ $teacher->phone }}
                                        </li>
                                        <li class="fs-5">
                                            <span class="label">Email:</span>
                                            {{ $teacher->email }}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
