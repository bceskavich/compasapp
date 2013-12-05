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
Attendance.destroy_all

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

e1 = Event.new(:name => 'Macklemore and Ryan Lewis', :location => 'Carrier Dome, Syracuse, NY', :date => '2013-11-11', :time => '2000-01-01 18:30:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'Macklemore and Ryan Lewis are coming to the Carrier Dome!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e1.image = File.open(IMAGE_FOLDER + '/macklemore.png')
e1.save

e2 = Event.new(:name => 'Hudson Mohawke', :location => 'Schine Student Center, Syracuse, NY', :date => '2013-12-05', :time => '2000-01-01 20:00:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'University Union is proud to announce Hudson Mohawke w/ Special Guest Cashmere Cat on Wednesday, December 4th!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e2.image = File.open(IMAGE_FOLDER + '/hudson_mohawk.png')
e2.save

e3 = Event.new(:name => 'Chance the Rapper', :location => 'Schine Student Center, Syracuse, NY', :date => '2013-11-06', :time => '2000-01-01 20:00:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'University Union is proud to announce Chance the Rapper, bringing his Social Experiment Tour with Special Guests DJ Rashad and Spinn to the Underground on November 6th!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e3.image = File.open(IMAGE_FOLDER + '/chance.png')
e3.save

e4 = Event.new(:name => 'Juice Jam', :location => 'Skytop Field, Syracuse, NY', :date => '2013-09-08', :time => '2000-01-01 12:00:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'The first ever student-run music festival in the country, only at Syracuse Universitys Skytop Field.!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e4.image = File.open('app/assets/images/juice_jam.png')
e4.save

e5 = Event.new(:name => 'David Sedaris', :location => 'Goldstein Auditorium, Schine Student Center, Syracuse, NY', :date => '2013-12-09', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'Dont miss the insights of author and comedian David Sedaris!', :category_id => Category.find_by_name('Speaker/Lecture').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e5.image = File.open('app/assets/images/hudmo.jpg')
e5.save

e6 = Event.new(:name => 'Block Party', :location => 'Carrier Dome', :date => '2013-04-26', :time => '2000-01-01 18:30:00 UTC', :ticket_info => 'Purchase at Box Office', :description => 'Ke$ha, Trey Songz, & Drop City Yacht Club will be performing!', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e6.image = File.open('app/assets/images/juice_jam.png')
e6.save

e7 = Event.new(:name => '20 Watts Launch Party', :location => 'Funk N Waffles, Syracuse, NY', :date => '2013-12-05', :time => '2000-01-01 18:30:00 UTC', :ticket_info => '$3 at the Door', :description => 'Come hang with 20 Watts Magazine and Baked Magazine at Funk n Waffles this Thursday, December 5th for our joint launch party!', :category_id => Category.find_by_name('Social').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('20 Watts').id)
e7.image = File.open('app/assets/images/funk_n_waffles.jpg')
e7.save

e8 = Event.new(:name => 'Active Minds Monthly Info Session', :location => 'HBC, Syracuse University, Syracuse, NY', :date => '2013-12-09', :time => '2000-01-01 17:30:00 UTC', :ticket_info => 'Free', :description => 'Come learn how to get involved with Active Minds at Syracuse!', :category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Active Minds').id)
e8.image = File.open('app/assets/images/activeminds.jpg')
e8.save

e9 = Event.new(:name => 'Rose Laying Ceremony', :location => 'Wall of Remembrance, Syracuse, NY', :date => '2014-10-10', :time => '2000-01-01 14:00:00 UTC', :ticket_info => 'Free', :description => 'Join the Remembrance Scholars and Lockerbie Students as they lay roses in memory of the victims of Pan Am 103.', :category_id => Category.find_by_name('Other').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Remembrance Scholars').id)
e9.image = File.open('app/assets/images/rose.jpg')
e9.save

e10 = Event.new(:name => 'Afterhours', :location => 'Hendricks Chapel, Syracuse, NY', :date => '2013-12-05', :time => '2000-12-04 22:00:00 UTC', :ticket_info => 'Free', :description => 'Allow the members of Otto Tunes to serenade you one last time before the semester comes to a close.', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Otto Tunes').id)
e10.image = File.open('app/assets/images/afterhours.jpg')
e10.save

e11 = Event.new(:name => 'Orange Appeal Vocal Auditions', :location => 'Hendricks Chapel, Syracuse, NY', :date => '2014-01-27', :time => '2000-12-04 3:00:00 UTC', :ticket_info => 'Free', :description => 'Come audition to join on with the Orange Appeal team.', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Orange Appeal').id)
e11.image = File.open('app/assets/images/auditions.jpg')
e11.save

e12 = Event.new(:name => 'CitrusTV Programming Marathon', :location => 'TV', :date => '2013-12-06', :time => '2000-12-04 11:00:00 UTC', :ticket_info => 'Free', :description => 'Tune in as we air every new episode from each of our television shows in an end-of-the-year finale!', :category_id => Category.find_by_name('Other').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('CitrusTV').id)
e12.image = File.open('app/assets/images/citrustv.png')
e12.save

e13 = Event.new(:name => 'Zamboni Revolution Improv Skits', :location => 'Maxwell Auditorium, Syracuse, NY', :date => '2013-12-06', :time => '2000-12-04 20:00:00 UTC', :ticket_info => 'Free', :description => 'Weve rehearsed all year to come up with the perfect, most hilarious unrehearsed improv skits. Come laugh at us.', :category_id => Category.find_by_name('Comedian').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Zamboni Revolution').id)
e13.image = File.open('app/assets/images/zamboni_revolution.jpg')
e13.save

e14 = Event.new(:name => 'Humor Whore Content Screening', :location => 'Herg Auditorium, Syracuse, NY', :date => '2013-12-05', :time => '2000-12-04 20:00:00 UTC', :ticket_info => 'Free', :description => "Screening of Humor Whore's semesters content, including some NOT YET released sketches! Get Excited!", :category_id => Category.find_by_name('Comedian').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Humor Whore').id)
e14.image = File.open('app/assets/images/hw_content_screening.jpg')
e14.save

e15 = Event.new(:name => 'Daily Orange Wrap Party', :location => '519 Walnut Ave, Syracuse, NY', :date => '2013-12-07', :time => '2000-12-04 22:30:00 UTC', :ticket_info => 'Invite Only', :description => 'Well team, we did it. After countless sleepless nights debating on whether or not to use a comma or a semicolon, weve put a wrap on this semesters printing. Now its time to celebrate.', :category_id => Category.find_by_name('Social').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('The Daily Orange').id)
e15..image = File.open('app/assets/images/party2.jpg')
e15.save

e16 = Event.new(:name => 'PledgeMusic Project Wrap', :location => 'North End Records, Syracuse, NY', :date => '2013-12-09', :time => '2000-12-04 12:00:00 UTC', :ticket_info => 'Free', :description => 'Help WERW and North End Records reach our vinyl sales goals and support local music in the process!', :category_id => Category.find_by_name('Other').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('WERW - Real College Radio').id)
e16.image = File.open('app/assets/images/north_end_records.jpg')
e16.save

e17 = Event.new(:name => 'Z89 Wrap Party', :location => '374 Euclid Ave, Syracuse, NY', :date => '2013-12-06', :time => '2000-12-04 22:00:00 UTC', :ticket_info => 'Invite Only', :description => 'Lets celebrate a semester of awesome music and awesome broadcasts. That simple.', :category_id => Category.find_by_name('Social').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Z89').id)
e17.image = File.open('app/assets/images/party2.jpg')
e17.save

e18 = Event.new(:name => 'The Messiah', :location => 'St. Pauls Cathedral, Syracuse, NY', :date => '2013-12-08', :time => '2000-01-01 14:00:00 UTC', :ticket_info => 'Free', :description => 'Stage performance of the play "The Messiah"', :category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e18.image = File.open('app/assets/images/cathedral.jpg')
e18.save

e19 = Event.new(:name => 'Portuguese Language Table', :location => '352 Eggers Hall, Syracuse, NY', :date => '2013-12-06', :time => '2000-01-01 13:00:00 UTC', :ticket_info => 'Free', :description => 'An inside look at the shapings of the Portuguese language.', :category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e19.image = File.open('app/assets/images/portugal_map.gif')
e19.save

e20 = Event.new(:name => 'Export Controls in a University Setting', :location => '2-202 Center for Science and Technology, Syracuse, NY', :date => '2013-12-12', :time => '2000-01-01 13:00:00 UTC', :ticket_info => 'Free and Open to the Public', :description => 'A conversation about university exports and their regulations.', :category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e20.image = File.open('app/assets/images/syracuse.jpg')
e20.save

e21 = Event.new(:name => 'Soulful Sitdowns', :location => '204 Tolley Building, Syracuse, NY', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Free', :description => 'A reflective group conversation about spirituality', :category_id => Category.find_by_name('Mind/Body').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e21.image = File.open('app/assets/images/soulful_sitdowns.png')
e21.save

e22 = Event.new(:name => 'Fit Friday Fitness Class', :location => 'Flanagan Fitness Studio, Syracuse, NY', :date => '2013-12-06', :time => '2000-01-01 12:10:00 UTC', :ticket_info => 'Free and Open to the Public', :description => 'Come relieve some of that end of the semester stress with a good workout!', :category_id => Category.find_by_name('Mind/Body').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e22.image = File.open('app/assets/images/fitness.jpg')
e22.save

e23 = Event.new(:name => 'Spring Career Fair', :location => 'Goldstein Auditorium, Syracuse, NY', :date => '2014-02-11', :time => '2000-01-01 12:30:00 UTC', :ticket_info => 'Free', :description => 'Talk to employers from all different industries to try to find a job before the summer. A must attend for all seniors!', :category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e23.image = File.open('app/assets/images/cuse_connect.png')
e23.save

e24 = Event.new(:name => 'Resumania', :location => '235 Schine Student Center, Syracuse, NY', :date => '2014-01-31', :time => '2000-01-01 11:10:00 UTC', :ticket_info => 'Free and Open to the Public', :description => 'Industry professionals critique your resume to provide experienced insight on which pieces of information are helpful and which are not.', :category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e24.image = File.open('app/assets/images/cuse_connect.png')
e24.save

e25 = Event.new(:name => 'SU Orange v. Binghamton', :location => 'Carrier Dome, Syracuse, NY', :date => '2013-12-07', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Box Office', :description => 'The SU Mens basketball team take on Binghamton in the last home game before winter break.', :category_id => Category.find_by_name('Sports').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e25.image = File.open('app/assets/images/binghamton.gif')
e25.save

e26 = Event.new(:name => 'SU Women Ice Hockey v. Lindenwood', :location => 'Tennity Ice Skating Pavilion, Syracuse, NY', :date => '2013-06-07', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Box Office', :description => 'The womens ice hockey team take on Lindenwood.', :category_id => Category.find_by_name('Sports').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e26.image = File.open('app/assets/images/lindenwood.gif')
e26.save

e27 = Event.new(:name => 'SU Women Basketball v. Niagara', :location => 'Carrier Dome, Syracuse, NY', :date => '2013-12-19', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Box Office', :description => 'The womens backetball team takes on Niagara.', :category_id => Category.find_by_name('Sports').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e27.image = File.open('app/assets/images/niagara.gif')
e27.save

### Attendances Generation ###

Attendance.create(:attended_event_id => e1.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e2.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e3.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e4.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e5.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e6.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e7.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e8.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e9.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e10.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e11.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e12.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e13.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e14.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e15.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e16.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e17.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e18.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e19.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e20.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e21.id, :attendee_id => u1.id)
Attendance.create(:attended_event_id => e22.id, :attendee_id => u1.id)

Attendance.create(:attended_event_id => e1.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e2.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e3.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e4.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e5.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e6.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e7.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e8.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e9.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e10.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e11.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e12.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e13.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e14.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e15.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e16.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e17.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e18.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e19.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e20.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e21.id, :attendee_id => u2.id)
Attendance.create(:attended_event_id => e22.id, :attendee_id => u2.id)

Attendance.create(:attended_event_id => e1.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e2.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e3.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e4.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e5.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e6.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e7.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e8.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e9.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e10.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e11.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e12.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e13.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e14.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e25.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e16.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e17.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e18.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e19.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e20.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e21.id, :attendee_id => u3.id)
Attendance.create(:attended_event_id => e22.id, :attendee_id => u3.id)

Attendance.create(:attended_event_id => e1.id, :attendee_id => m1.id)
Attendance.create(:attended_event_id => e2.id, :attendee_id => m1.id)
Attendance.create(:attended_event_id => e3.id, :attendee_id => m1.id)

Attendance.create(:attended_event_id => e4.id, :attendee_id => m2.id)
Attendance.create(:attended_event_id => e5.id, :attendee_id => m2.id)
Attendance.create(:attended_event_id => e6.id, :attendee_id => m2.id)

Attendance.create(:attended_event_id => e7.id, :attendee_id => m3.id)
Attendance.create(:attended_event_id => e8.id, :attendee_id => m3.id)
Attendance.create(:attended_event_id => e9.id, :attendee_id => m3.id)

Attendance.create(:attended_event_id => e10.id, :attendee_id => m4.id)
Attendance.create(:attended_event_id => e11.id, :attendee_id => m4.id)
Attendance.create(:attended_event_id => e12.id, :attendee_id => m4.id)

Attendance.create(:attended_event_id => e13.id, :attendee_id => m5.id)
Attendance.create(:attended_event_id => e14.id, :attendee_id => m5.id)
Attendance.create(:attended_event_id => e15.id, :attendee_id => m5.id)

Attendance.create(:attended_event_id => e16.id, :attendee_id => m6.id)
Attendance.create(:attended_event_id => e17.id, :attendee_id => m6.id)
Attendance.create(:attended_event_id => e18.id, :attendee_id => m6.id)

Attendance.create(:attended_event_id => e19.id, :attendee_id => m7.id)
Attendance.create(:attended_event_id => e20.id, :attendee_id => m7.id)
Attendance.create(:attended_event_id => e21.id, :attendee_id => m7.id)

Attendance.create(:attended_event_id => e22.id, :attendee_id => m8.id)
Attendance.create(:attended_event_id => e23.id, :attendee_id => m8.id)
Attendance.create(:attended_event_id => e24.id, :attendee_id => m8.id)

Attendance.create(:attended_event_id => e25.id, :attendee_id => m9.id)
Attendance.create(:attended_event_id => e26.id, :attendee_id => m9.id)
Attendance.create(:attended_event_id => e27.id, :attendee_id => m9.id)

Attendance.create(:attended_event_id => e1.id, :attendee_id => m10.id)
Attendance.create(:attended_event_id => e2.id, :attendee_id => m10.id)
Attendance.create(:attended_event_id => e3.id, :attendee_id => m10.id)

Attendance.create(:attended_event_id => e1.id, :attendee_id => f1.id)
Attendance.create(:attended_event_id => e2.id, :attendee_id => f1.id)
Attendance.create(:attended_event_id => e3.id, :attendee_id => f1.id)

Attendance.create(:attended_event_id => e4.id, :attendee_id => f2.id)
Attendance.create(:attended_event_id => e5.id, :attendee_id => f2.id)
Attendance.create(:attended_event_id => e6.id, :attendee_id => f2.id)

Attendance.create(:attended_event_id => e7.id, :attendee_id => f3.id)
Attendance.create(:attended_event_id => e8.id, :attendee_id => f3.id)
Attendance.create(:attended_event_id => e9.id, :attendee_id => f3.id)

Attendance.create(:attended_event_id => e10.id, :attendee_id => f4.id)
Attendance.create(:attended_event_id => e11.id, :attendee_id => f4.id)
Attendance.create(:attended_event_id => e12.id, :attendee_id => f4.id)

Attendance.create(:attended_event_id => e13.id, :attendee_id => f5.id)
Attendance.create(:attended_event_id => e14.id, :attendee_id => f5.id)
Attendance.create(:attended_event_id => e15.id, :attendee_id => f5.id)

Attendance.create(:attended_event_id => e16.id, :attendee_id => f6.id)
Attendance.create(:attended_event_id => e17.id, :attendee_id => f6.id)
Attendance.create(:attended_event_id => e18.id, :attendee_id => f6.id)

Attendance.create(:attended_event_id => e19.id, :attendee_id => f7.id)
Attendance.create(:attended_event_id => e20.id, :attendee_id => f7.id)
Attendance.create(:attended_event_id => e21.id, :attendee_id => f7.id)

Attendance.create(:attended_event_id => e22.id, :attendee_id => f8.id)
Attendance.create(:attended_event_id => e23.id, :attendee_id => f8.id)
Attendance.create(:attended_event_id => e24.id, :attendee_id => f8.id)

Attendance.create(:attended_event_id => e25.id, :attendee_id => f9.id)
Attendance.create(:attended_event_id => e26.id, :attendee_id => f9.id)
Attendance.create(:attended_event_id => e27.id, :attendee_id => f9.id)

Attendance.create(:attended_event_id => e1.id, :attendee_id => f10.id)
Attendance.create(:attended_event_id => e2.id, :attendee_id => f10.id)
Attendance.create(:attended_event_id => e3.id, :attendee_id => f10.id)


