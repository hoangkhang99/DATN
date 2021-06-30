@extends('layouts.home')

@section('sidebar')
    <p class="lead">{{ $lesson->course->title }}</p>

    <div class="list-group">
        @foreach ($lesson->course->publishedLessons as $list_lesson)
            <a href="{{ route('lessons.show', [$list_lesson->course_id, $list_lesson->slug]) }}" class="list-group-item"
                @if ($list_lesson->id == $lesson->id) style="font-weight: bold" @endif>{{ $loop->iteration }}. {{ $list_lesson->title }}</a>
        @endforeach
    </div>
@endsection

@section('main')

    <h2>{{ $lesson->title }}</h2>

    @if ($purchased_course || $lesson->free_lesson == 1)
        {!! $lesson->full_text !!}

        @if ($test_exists)
            <hr />
            <h3>Test: {{ $lesson->test->title }}</h3>
            @if (!is_null($test_result))
                <div class="alert alert-info">Điểm của bạn: {{ $test_result->test_result }}</div>
            @else
            <form action="{{ route('lessons.test', [$lesson->slug]) }}" method="post">
                {{ csrf_field() }}
                @foreach ($lesson->test->questions as $question)
                    <b>{{ $loop->iteration }}. {{ $question->question }}</b>
                    <br />
                    @foreach ($question->options as $option)
                        <input type="radio" name="questions[{{ $question->id }}]" value="{{ $option->id }}" /> {{ $option->option_text }}<br />
                    @endforeach
                    <br />
                @endforeach
                <input type="submit" value=" Submit results " />
            </form>
            @endif
            <hr />
        @endif

    @else
        Please <a href="{{ route('courses.show', [$lesson->course->slug]) }}">Quay lại</a> và mua khóa học.
    @endif
    <p class="help-block">Đính kèm:</p>
    <div class="photo-block">
        <div class="progress-bar form-group">&nbsp;</div>
        <div class="files-list">
            @foreach($lesson->getMedia('downloadable_files') as $media)
                <p class="form-group">
                    <a href="{{ $media->getUrl() }}" target="_blank">{{ $media->name }} </a>                    
                    
                </p>
            @endforeach
        </div>
    </div>
    <hr>
    @if ($previous_lesson)
        <p><a href="{{ route('lessons.show', [$previous_lesson->course_id, $previous_lesson->slug]) }}"><< {{ $previous_lesson->title }}</a></p>
    @endif
    @if ($next_lesson)
        <p><a href="{{ route('lessons.show', [$next_lesson->course_id, $next_lesson->slug]) }}">{{ $next_lesson->title }} >></a></p>
    @endif

@endsection