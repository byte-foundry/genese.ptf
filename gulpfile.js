'use strict';

var gulp = require('gulp'),
	operation = require('./operationalyzer'),
	jsufon = require('./jsufonify');

var $ = require('gulp-load-plugins')({
  pattern: ['gulp-*']
});

gulp.task('build', function() {
	return gulp.src('src/**/*.coffee')
		.pipe($.coffee({bare: true}).on('error', $.util.log))
		.pipe(operation())
		.pipe($.concat('font.json'))
		.pipe(jsufon())
		.pipe(gulp.dest('dist/'));
});