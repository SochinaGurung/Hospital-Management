package com.coursework.filter;

public @interface webFilter {

	boolean asyncSupported();

	String[] urlpatterns();

}
