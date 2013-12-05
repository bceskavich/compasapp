# Compas

Compas is an event aggregation system for college campuses. The webapp is built on Rails and is part of a class project for IST 488 at Syracuse University.

Submitted to the [SU App Challenge 2013](http://appchallenge.syr.edu/)

Designed with love by:

*	[Billy Ceskavich](https://github.com/bceskavich)
*	[Tom Charles](https://github.com/tcharles411)
*	[Linda Gorman](https://github.com/lggorman)

## Current Features

Compas makes it easy for college students to find events on campus. Users can enjoy some of the following features:

*	Interactive event listings that can be filtered by category, date, and organization
*	Event attendances and lists
*	Social interactivity - event commenting and rating a core features of the app

## Next Steps

Compas has a long way to go, but here are the intended next steps:

1. Finalize the system structure, which includes

	*	Established relationships via bridge tables and many-to-one relationships
	*	Structure that links item creation to these connections (i.e. for Events/Orgs, Users/Orgs, Events/Category, etc.)
	*	Implement Omniauth or some other social authentication plugin for auth replacement

2. Establish more detailed relationships for users to navigate through
3. Implement content-based items (Ex. Orgs' popularity indices derived from event rating)
4. Implement the frontend design
