# Compas

Compas is an event aggregation system for college campuses. The webapp is built on Rails and is part of a class project for IST 488 at Syracuse University.

Check back for more as this project progresses.

Designed with love by:

*	[Billy Ceskavich](https://github.com/bceskavich)
*	[Tom Charles](https://github.com/tcharles411)
*	[Linda Gorman](https://github.com/lggorman)

## Current Features

Compas is currently in a very early stage of development. We have worked to develop the basic scaffolding, which includes the following:

*	Schema for Users, Events, Organizations, and Categories
*	Basic auth functions, which are currently required to access the rest of the app
*	A seed file that will generate test data for the created schema

## To Use

Clone this version (via https://github.com/bceskavich/compas.git), run bundle install, migrate and seed the databases. This should set up the service with all the data needed to test and build further. Use the suggested login credentials below:

_Username_: johndoe | _Password_: SU2orange!

## Next Steps

Compas has a long way to go, but here are the intended next steps:

1. Finalize the system structure, which includes

	*	Established relationships via bridge tables and many-to-one relationships
	*	Structure that links item creation to these connections (i.e. for Events/Orgs, Users/Orgs, Events/Category, etc.)
	*	Implement Omniauth or some other social authentication plugin for auth replacement

2. Establish more detailed relationships for users to navigate through
3. Implement content-based items (Ex. Orgs' popularity indices derived from event rating)
4. Implement the frontend design
