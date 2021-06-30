<?php

return [
	
	'user-management' => [
		'title' => 'Quản lý người dùng',
		'created_at' => 'Time',
		'fields' => [
		],
	],
	
	'permissions' => [
		'title' => 'Phân quyền',
		'created_at' => 'Time',
		'fields' => [
			'title' => 'Phân quyền',
		],
	],
	
	'roles' => [
		'title' => 'Vai trò',
		'created_at' => 'Time',
		'fields' => [
			'title' => 'Chức năng',
			'permission' => 'Phân quyền',
		],
	],
	
	'users' => [
		'title' => 'Người dùng',
		'created_at' => 'Time',
		'fields' => [
			'name' => 'Tên',
			'email' => 'Email',
			'password' => 'Mật khẩu',
			'role' => 'Vai trò',
			'remember-token' => 'Remember token',
		],
	],
	
	'courses' => [
		'title' => 'Các khóa học',
		'created_at' => 'Time',
		'fields' => [
			'teachers' => 'Giáo viên',
			'title' => 'Khóa học',
			'slug' => 'SEO',
			'description' => 'Mô tả',
			'price' => 'Giá',
			'course-image' => 'Ảnh khóa học',
			'start-date' => 'Ngày đăng',
			'published' => 'Published',
		],
	],
	
	'lessons' => [
		'title' => 'Các bài học',
		'created_at' => 'Time',
		'fields' => [
			'course' => 'Khóa học',
			'title' => 'Tên bài',
			'slug' => 'Slug',
			'lesson-image' => 'Ảnh bài học',
			'short-text' => 'Short text',
			'full-text' => 'Full text',
			'position' => 'Vị trí',
			'downloadable-files' => 'Đính kèm',
			'free-lesson' => 'Miễn phí',
			'published' => 'Published',
		],
	],
	
	'questions' => [
		'title' => 'Các câu hỏi',
		'created_at' => 'Time',
		'fields' => [
			'question' => 'Câu hỏi',
			'question-image' => 'Ảnh câu hỏi',
			'score' => 'Điểm',
		],
	],
	
	'questions-options' => [
		'title' => 'Các lựa chọn câu hỏi',
		'created_at' => 'Time',
		'fields' => [
			'question' => 'Câu hỏi',
			'option-text' => 'Lựa chọn',
			'correct' => 'Đáp án đúng',
		],
	],
	
	'tests' => [
		'title' => 'Bài kiểm tra',
		'created_at' => 'Time',
		'fields' => [
			'course' => 'Khóa học',
			'lesson' => 'Bài học',
			'title' => 'Bài kiểm tra',
			'description' => 'Mô tả',
			'questions' => 'Các câu hỏi',
			'published' => 'Published',
		],
	],
	'app_create' => 'Tạo mới',
	'app_save' => 'Save',
	'app_edit' => 'Sửa',
	'app_view' => 'Hiển thị',
	'app_update' => 'Cập nhật',
	'app_list' => 'Danh sách',
	'app_no_entries_in_table' => 'Không có dữ liệu',
	'custom_controller_index' => 'Chỉ mục điều chỉnh.',
	'app_logout' => 'Đăng xuất',
	'app_add_new' => 'Thêm mới',
	'app_are_you_sure' => 'Bạn chắc chắn?',
	'app_back_to_list' => 'Quay lại',
	'app_dashboard' => 'Trang chủ',
	'app_delete' => 'Xóa',
	'global_title' => 'Giảng dạy trực tuyến',
];