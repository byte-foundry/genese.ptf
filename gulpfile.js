'use strict';

var gulp = require('gulp'),
	expr2str = require('./expr2str');

var $ = require('gulp-load-plugins')({
  pattern: ['gulp-*']
});

gulp.task('build', function() {
	return gulp.src('src/glyphs/*.coffee')
		.pipe($.coffee({bare: true}).on('error', $.util.log))
		.pipe(expr2str())
		.pipe(gulp.dest('dist/glyphs/'));
});