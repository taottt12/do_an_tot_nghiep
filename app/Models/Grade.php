<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Grade extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'slug'
    ];

    public function students(): BelongsToMany
    {
        return $this->belongsToMany(Student::class, 'detail__classes', 'grade_id', 'student_id');
    }
    public function teachers(): BelongsToMany
    {
        return $this->belongsToMany(Teacher::class, 'detail__classes', 'grade_id', 'teacher_id');
    }
}
