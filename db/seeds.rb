# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#encoding: utf-8

## Specify image folder for user seeds.
IMAGE_FOLDER = 'app/assets/images'  

##### Database Reset #####

Event.destroy_all
Organization.destroy_all
User.destroy_all
Category.destroy_all

##### Category Seeds #####

c1 = Category.create(:name => 'Concert')
c2 = Category.create(:name => 'Comedian')
c3 = Category.create(:name => 'Speaker/Lecture')
c4 = Category.create(:name => 'Film')
c5 = Category.create(:name => 'Social')
c6 = Category.create(:name => 'Academic/Information Session')
c7 = Category.create(:name => 'Mind/Body')
c8 = Category.create(:name => 'Sports')
c9 = Category.create(:name => 'Other')

##### Basic User Seeds #####

u1 = User.new(:user_name => 'bceskavich', :first_name => 'Billy', :last_name => 'Ceskavich', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
u1.image = File.open(IMAGE_FOLDER + '/m/propic.jpg')
u1.save

u2 = User.new(:user_name => 'lggorman', :first_name => 'Linda', :last_name => 'Gorman', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
u2.image = File.open(IMAGE_FOLDER + '/f/lggorman.jpg')
u2.save

u3 = User.new(:user_name => 'tcharles', :first_name => 'Tom', :last_name => 'Charles', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
u3.image = File.open(IMAGE_FOLDER + '/m/tcharles.jpg')
u3.save

	## Fake User Seeds ##

	f1 = User.new(:first_name => 'Sophia', :last_name => 'Smith', :user_name => 'sophiasmith', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f1.image = File.open(IMAGE_FOLDER + '/f/1.jpg')
	f1.save

	m1 = User.new(:first_name => 'Jacob', :last_name => 'Johnson', :user_name => 'jacobjohnson', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m1.image = File.open(IMAGE_FOLDER + '/m/1.jpg')
	m1.save

	f2 = User.new(:first_name => 'Isabella', :last_name => 'Williams', :user_name => 'isabellawilliams', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f2.image = File.open(IMAGE_FOLDER + '/f/2.jpg')
	f2.save

	m2 = User.new(:first_name => 'Mason', :last_name => 'Brown', :user_name => 'masonbrown', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m2.image = File.open(IMAGE_FOLDER + '/m/2.jpg')
	m2.save

	f3 = User.new(:first_name => 'Emma', :last_name => 'Jones', :user_name => 'emmajones', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f3.image = File.open(IMAGE_FOLDER + '/f/3.jpg')
	f3.save

	m3 = User.new(:first_name => 'William', :last_name => 'Miller', :user_name => 'williammiller', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m3.image = File.open(IMAGE_FOLDER + '/m/3.jpg')
	m3.save

	f4 = User.new(:first_name => 'Olivia', :last_name => 'Davis', :user_name => 'oliviadavis', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f4.image = File.open(IMAGE_FOLDER + '/f/4.jpg')
	f4.save

	m4 = User.new(:first_name => 'Jayden', :last_name => 'Garcia', :user_name => 'jaydengarcia', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m4.image = File.open(IMAGE_FOLDER + '/m/4.jpg')
	m4.save

	f5 = User.new(:first_name => 'Ava ', :last_name => 'Rodriguez', :user_name => 'avrodriguez', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f5.image = File.open(IMAGE_FOLDER + '/f/5.jpg')
	f5.save

	m5 = User.new(:first_name => 'Noah', :last_name => 'Wilson', :user_name => 'noahwilson', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m5.image = File.open(IMAGE_FOLDER + '/m/5.jpg')
	m5.save

	f6 = User.new(:first_name => 'Emily', :last_name => 'Martinez', :user_name => 'emilymartinez', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f6.image = File.open(IMAGE_FOLDER + '/f/6.jpg')
	f6.save

	m6 = User.new(:first_name => 'Michael', :last_name => 'Anderson', :user_name => 'michaelanderson', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m6.image = File.open(IMAGE_FOLDER + '/m/6.jpg')
	m6.save

	f7 = User.new(:first_name => 'Abigail', :last_name => 'Taylor', :user_name => 'abigailtaylor', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f7.image = File.open(IMAGE_FOLDER + '/f/7.jpg')
	f7.save

	m7 = User.new(:first_name => 'Ethan', :last_name => 'Thomas', :user_name => 'ethanthomas', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m7.image = File.open(IMAGE_FOLDER + '/m/7.jpg')
	m7.save

	f8 = User.new(:first_name => 'Madison', :last_name => 'Hernandez', :user_name => 'madisonhernandez', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f8.image = File.open(IMAGE_FOLDER + '/f/8.jpg')
	f8.save

	m8 = User.new(:first_name => 'Alexander', :last_name => 'Moore', :user_name => 'alexandermoore', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m8.image = File.open(IMAGE_FOLDER + '/m/8.jpg')
	m8.save

	f9 = User.new(:first_name => 'Mia ', :last_name => 'Martin', :user_name => 'mimartin', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f9.image = File.open(IMAGE_FOLDER + '/f/9.jpg')
	f9.save

	m9 = User.new(:first_name => 'Aiden', :last_name => 'Jackson', :user_name => 'aidenjackson', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m9.image = File.open(IMAGE_FOLDER + '/m/9.jpg')
	m9.save

	f10 = User.new(:first_name => 'Chloe', :last_name => 'Thompson', :user_name => 'chloethompson', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	f10.image = File.open(IMAGE_FOLDER + '/f/10.jpg')
	f10.save

	m10 = User.new(:first_name => 'Daniel', :last_name => 'White', :user_name => 'danielwhite', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
	m10.image = File.open(IMAGE_FOLDER + '/m/10.jpg')
	m10.save
	
##### Org Seeds #####

o1 = Organization.new(:name => 'University Union', :description => "SU's Official Programming Board. We coordinate all major on-campus entertainment, including concerts, cinema screenings, comedy and speaking events. Join us, we are student run!", :user_id => User.find_by_user_name('bceskavich').id)
o1.image = File.open('app/assets/images/uu_insignia.jpg')
o1.save

o2 = Organization.new(:name => 'Active Minds', :description => "Fighting misconceptions about mental health on college campuses across the nation.", :user_id => User.find_by_user_name('bceskavich').id)
o2.image = File.open('app/assets/images/activeminds.jpg')
o2.save

o3 = Organization.new(:name => 'Remembrance Scholars', :description => "The Remembrance Scholars are a group of SU seniors chosen to honor the 35 Syracuse students who perished in the terrorist bombing of Pan Am Flight 103 in December 1988. The Remembrance Scholars plan events throughout the year in memory of the victims and in an effort to act forward in the face of tragedy.", :user_id => User.find_by_user_name('bceskavich').id)
o3.image = File.open('app/assets/images/remembrance.jpg')
o3.save

o4 = Organization.new(:name => '20 Watts', :description => "Syracuse University's best independent music and culture magazine. Check us out online or in print across campus.", :user_id => User.find_by_user_name('bceskavich').id)
o4.image = File.open('app/assets/images/20watts.png')
o4.save

o5 = Organization.new(:name => 'Otto Tunes', :description => "An orange-inspired all-male a cappella group brought to you by Syracuse University.", :user_id => User.find_by_user_name('bceskavich').id)
o5.image = File.open('app/assets/images/ottotunes.jpg')
o5.save

o6 = Organization.new(:name => 'Orange Appeal', :description => "Syracuse University's original all male a cappella group. Established 1997.", :user_id => User.find_by_user_name('bceskavich').id)
o6.image = File.open('app/assets/images/oappeal.jpg')
o6.save

o7 = Organization.new(:name => 'Oy Capella', :description => "Oy Cappella is SU's co-ed Jewish a cappella group!", :user_id => User.find_by_user_name('bceskavich').id)
o7.image = File.open('app/assets/images/oycap.jpg')
o7.save

o8 = Organization.new(:name => 'Groovestand', :description => "Syracuse University's premier co-ed a cappella group. Check the label: if it ain't Groovestand, it ain't fresh.", :user_id => User.find_by_user_name('bceskavich').id)
o8.image = File.open('app/assets/images/groove.jpg')
o8.save

o9 = Organization.new(:name => 'CitrusTV', :description => "CitrusTV is the completely student-run television studio of Syracuse University and the State University of New York College of Environmental Science and Forestry in Syracuse, New York. It was founded in 1970 and has around 350 student members.", :user_id => User.find_by_user_name('bceskavich').id)
o9.image = File.open('app/assets/images/citrustv.png')
o9.save

o10 = Organization.new(:name => 'Zamboni Revolution', :description => "Syracuse Universitys's greatest (and only) improv comedy group!", :user_id => User.find_by_user_name('bceskavich').id)
o10.image = File.open('app/assets/images/zamboni_revolution.jpg')
o10.save

o11 = Organization.new(:name => 'Humor Whore', :description => "Award-winning student-run sketch comedy TV show at Syracuse University. We produce weekly short-form comedy videos that air on our YouTube channel and on Orange Television Network of Syracuse University (channel 2 in CNY). Each semester, we aim to produce 23 minutes of content to make a full episode.", :user_id => User.find_by_user_name('bceskavich').id)
o11.image = File.open('app/assets/images/humor_whore.jpg')
o11.save

o12 = Organization.new(:name => 'The Daily Orange', :description => "The Daily Orange is the independent student newspaper serving the Syracuse University community and the city of Syracuse, New York.", :user_id => User.find_by_user_name('bceskavich').id)
o12.image = File.open('app/assets/images/daily_orange.jpg')
o12.save

o13 = Organization.new(:name => 'WERW - Real College Radio', :description => "WERW is the only student-run radio station at Syracuse University.", :user_id => User.find_by_user_name('bceskavich').id)
o13.image = File.open('app/assets/images/werw.jpg')
o13.save

o14 = Organization.new(:name => 'Z89', :description => "Z89 plays Syracuse's hit music 24 hours a day, 7 days a week, and no commercials! So if you're a fan of boring old men trying to sell you things you don't want, I guess we're not meant to be...", :user_id => User.find_by_user_name('bceskavich').id)
o14.image = File.open('app/assets/images/z89.jpg')
o14.save

##### Event Seeds #####

e1 = Event.new(:name => 'Macklemore and Ryan Lewis', :location => 'Carrier Dome', :date => '2013-11-11', :time => '2000-01-01 18:30:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'Macklemore and Ryan Lewis are coming to the Carrier Dome!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e1.image = File.open('app/assets/images/macklemore.png')
e1.save

e2 = Event.new(:name => 'Hudson Mohawke', :location => 'Schine', :date => '2013-11-29', :time => '2000-01-01 20:00:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'University Union is proud to announce Hudson Mohawke w/ Special Guest Cashmere Cat on Wednesday, December 4th!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e2.image = File.open('app/assets/images/hudson_mohawk.png')
e2.save

e3 = Event.new(:name => 'Chance The Rapper', :location => 'Schine', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'University Union is proud to announce Chance The Rapper’s Social Experiment Tour w/ Special Guests DJ Rashad and Spinn on November 6th!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e3.image = File.open('app/assets/images/chance.png')
e3.save

e4 = Event.new(:name => 'Juice Jam', :location => 'Skytop Field', :date => '2013-09-08', :time => '2000-01-01 12:00:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'The first ever student-run music festival in the country, only at Syracuse Universitys Skytop Field!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e4.image = File.open('app/assets/images/juice_jam.png')
e4.save

e5 = Event.new(:name => 'David Sedaris', :location => 'Goldsten', :date => '2013-12-09', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'Dont miss the insights of author and comedian David Sedaris!', :category_id => Category.find_by_name('Speaker/Lecture').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e5.image = File.open('app/assets/images/hudmo.jpg')
e5.save

e6 = Event.new(:name => 'Block Party', :location => 'Carrier Dome', :date => '2013-04-26', :time => '2000-01-01 18:30:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'Ke$ha, Trey Songz, and Drop City Yacht Club will be performing!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e6.image = File.open('app/assets/images/juice_jam.png')
e6.save

