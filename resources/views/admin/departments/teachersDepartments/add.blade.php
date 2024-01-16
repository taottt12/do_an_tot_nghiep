@extends('admin.layouts.app')
@section('title', 'Create Departments')
@section('content')
    <div class="right_col" role="main">
        <div class="row">
            <div class="page-title">
                <div class="title_left">
                    <h3>Create Department Teacher</h3>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-4 col-sm-4 ">
                    <div class="">
                        <div class="x_content">

                            <!-- start form for validation -->
                            <form method="post" action="{{ route('departments.teachers-departmentstore') }}" id="demo-form"
                                data-parsley-validate>
                                @csrf
                                <div class="field item form-group">
                                    <div class="col-md-10 col-sm-6">
                                        <div class="form-floating">
                                            <select class="form-select" id="selectOption" name="teacher_id"
                                                aria-label="Floating label select example">
                                                <option>Select teacher:</option>
                                                @foreach ($teachers as $teacher)
                                                    <option value="{{ $teacher->id }}">
                                                        {{ $teacher->last_name . ' ' . $teacher->first_name }}</option>
                                                @endforeach
                                            </select>
                                            <label for="floatingSelect">Name tracher</label>
                                        </div>
                                        @error('description')
                                            <span class="text-danger">{{ $message }}</span><br>
                                        @enderror
                                    </div>
                                </div>
                                <div class="field item form-group">
                                    <div class="col-md-10 col-sm-6">
                                        <div class="form-floating">
                                            <select class="form-select" id="selectOption" name="department_id"
                                                aria-label="Floating label select example">
                                                <option>Select departement:</option>
                                                @foreach ($departements as $departement)
                                                    <option value="{{ $departement->id }}">
                                                        {{ $departement->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <label for="floatingSelect">Name departement</label>
                                        </div>
                                        @error('description')
                                            <span class="text-danger">{{ $message }}</span><br>
                                        @enderror
                                    </div>
                                </div>

                                <br />
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">ADD</button>
                                </div>
                            </form>
                            <!-- end form for validations -->

                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8">
                    <div class="x_panel">
                        <div class="x_content" id="selectedInfo">
                            @foreach ($teachers as $teacher)
                                <div class="teacher-info-container" id="{{ $teacher->id }}" style="display: none;">
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
                                                <span class="label">Teacher Code:</span>
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
                            @endforeach

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        // Add event listener to the select element
        document.getElementById('selectOption').addEventListener('change', function() {
            // Get the selected option value
            var selectedOption = this.value;

            // Hide all teacher-info-container elements
            var teacherInfoContainers = document.querySelectorAll('.teacher-info-container');
            teacherInfoContainers.forEach(function(container) {
                container.style.display = 'none';
            });

            // Display the selected teacher-info-container
            document.getElementById(selectedOption).style.display = 'block';
        });
    </script>
@endsection