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
Owner.destroy_all

##### Category Seeds #####

c1 = Category.create(:name => 'Concert')
c2 = Category.create(:name => 'Comedian')
c3 = Category.create(:name => 'Speaker/Lecture')
c4 = Category.create(:name => 'Film')
c5 = Category.create(:name => 'Social')
c6 = Category.create(:name => 'Academic/Information Session')
c7 = Category.create(:name => 'Mind/Body')
c8 = Category.create(:name => 'Sports')
c8 = Category.create(:name => 'Publication') 
c9 = Category.create(:name => 'Other')

##### Admin Users and/or Signed-Up Users ####

u1 = User.new(:user_name => 'bceskavich', :first_name => 'Billy', :last_name => 'Ceskavich', :password => 'SU2orange!', :email => 'bceskavich@gmail.com', :location => 'Syracuse, NY',  :school => 'Syracuse University')
u1.image = File.open(IMAGE_FOLDER + '/m/propic.jpg')
u1.save

u2 = User.new(:user_name => 'lggorman', :first_name => 'Linda', :last_name => 'Gorman', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
u2.image = File.open(IMAGE_FOLDER + '/f/lggorman.jpg')
u2.save

u3 = User.new(:user_name => 'tcharles', :first_name => 'Tom', :last_name => 'Charles', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
u3.image = File.open(IMAGE_FOLDER + '/m/tcharles.jpg')
u3.save

u4 = User.new(:user_name => 'alphabeta', :first_name => 'Alpha', :last_name => 'Beta', :password => 'Expl0rewithus!', :location => 'Syracuse, NY', :school => 'Syracuse University')
u4.image = File.open(IMAGE_FOLDER + '/default_user_pic.jpg')
u4.save!

u5 = User.new(:user_name => 'mprattico', :first_name => 'Marcello', :last_name => 'Prattico', :password => 'Expl0rewithus!', :location => 'Syracuse, NY', :school => 'Syracuse University')
u5.image = File.open(IMAGE_FOLDER + '/beta/mprattico.png')
u5.save!

u6 = User.new(:user_name => 'skeefe', :first_name => 'Stacey', :last_name => 'Keefe', :password => 'Expl0rewithus!', :location => 'Syracuse, NY', :school => 'Syracuse University')
u6.image = File.open(IMAGE_FOLDER + '/beta/skeefe.jpg')
u6.save!

#### Fake User Seeds ####

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

#### Signed-Up Orgs ####
o1 = Organization.new(:name => 'University Union', 
	:description => 'University Union (UU) is the Official Programming Board of Syracuse University. UU is entirely student run and is one of the largest student organizations on the Syracuse campus, in terms of its budget, membership, and the size and frequency of events.')
o1.image = File.open(IMAGE_FOLDER + '/uu_insignia.jpg')
o1.save

o2 = Organization.new(:name => 'Groovestand', 
	:description => "GROOVESTAND is a group rooted from the desire & fervid passion to collaborate & express through the creativity of music, while always sharing a message with the world... even if the message is just to have a good time! It was founded in 2000. We are currently 21 members strong, and we represent many different majors! Throughout the year you'll find us singing at charity events and fundraisers, invitationals, A Cappella After Hours in Goldstein Auditorium, and various events across campus.")
o2.image = File.open(IMAGE_FOLDER + '/beta/groove.jpg')
o2.save

o3 = Organization.new(:name => 'NAACP', 
	:description => "The mission of the National Association for the Advancement of Colored People is to ensure the political, educational, social, and economic equality of rights of all persons and to eliminate racial hatred and racial discrimination.")
o3.image = File.open(IMAGE_FOLDER + '/beta/naacp.jpg')
o3.save

o4 = Organization.new(:name => 'Otto Tunes', 
	:description => "An orange-inspired all-male a cappella group brought to you by Syracuse University.")
o4.image = File.open('app/assets/images/ottotunes.jpg')
o4.save

o5 = Organization.new(:name => 'Turkish Student Association', 
	:description => 'Making every effort to build a stronger communication among Turkish Students at SU')
o5.image = File.open(IMAGE_FOLDER + '/beta/tsa.jpg')
o5.save

o6 = Organization.new(:name => 'Collegians for a Constructive Tomorrow', 
	:description => "We are a national non-profit organization that focuses on free-market solutions to energy and environmental issues. We strongly believe that most consumer and environmental problems can best be met and overcome not through excessive government regulation, but rather through the power of the free-enterprise system and ingenuity of science and technology.")
o6.image = File.open(IMAGE_FOLDER + '/beta/cfact.jpg')
o6.save

o7 = Organization.new(:name => 'College Republicans', 
	:description => 'We are the College Republicans at Syracuse University.')
o7.image = File.open(IMAGE_FOLDER + '/beta/cr.png')
o7.save

o8 = Organization.new(:name => 'National Association of Black Journalists SU', 
	:description => "NABJ SU is a support group for rising journalists, communicators and media enthusiasts at Syracuse University.")
o8.image = File.open(IMAGE_FOLDER + '/beta/nabj.gif')
o8.save

o9 = Organization.new(:name => 'SU Entrepreneurship Club', 
	:description => "The Entrepreneurship Club is dedicated to helping students foster their ideas, as well as educate them on what it takes to start a business of their own. The Entrepreneurship Club puts a strong emphasis on community and doing whatever it takes to succeed.")
o9.image = File.open(IMAGE_FOLDER + '/beta/e-club.jpg')
o9.save

o10 = Organization.new(:name => 'Baked Magazine', 
	:description => "Syracuse University's first student-run food magazine.")
o10.image = File.open(IMAGE_FOLDER + '/beta/baked.png')
o10.save

o11 = Organization.new(:name => 'Student Association', 
	:description => "Student Association is the official student governing body of Syracuse University and SUNY ESF undergraduate students. We serve to represent students in all facets of University life. Through our committees and overall initiatives and goals, Student Association strives to meet its core mission: to represent and be the defender of the students.")
o11.image = File.open(IMAGE_FOLDER + '/beta/sa.jpeg')
o11.save

o12 = Organization.new(:name => 'SU AIGA', 
	:description => "Syracuse University's Student Chapter of the American Institute of Graphic Arts, located at The Warehouse. Keep in touch for resources and events!")
o12.image = File.open(IMAGE_FOLDER + '/beta/aiga.png')
o12.save

o13 = Organization.new(:name => '20 Watts', 
	:description => "Syracuse University's best independent music and culture magazine. Check us out online or in print across campus.")
o13.image = File.open('app/assets/images/20watts.png')
o13.save

#### Org Ownerships ####

Owner.create(:user_id => u1.id, :organization_id => o1.id)
Owner.create(:user_id => u2.id, :organization_id => o2.id)
Owner.create(:user_id => f6.id, :organization_id => o3.id)
Owner.create(:user_id => u6.id, :organization_id => o4.id)
Owner.create(:user_id => m8.id, :organization_id => o5.id)
Owner.create(:user_id => f9.id, :organization_id => o6.id)
Owner.create(:user_id => m1.id, :organization_id => o7.id)
Owner.create(:user_id => f9.id, :organization_id => o8.id)
Owner.create(:user_id => u6.id, :organization_id => o9.id)
Owner.create(:user_id => u5.id, :organization_id => o10.id)
Owner.create(:user_id => u1.id, :organization_id => o11.id)
Owner.create(:user_id => u4.id, :organization_id => o12.id)
Owner.create(:user_id => u3.id, :organization_id => o13.id)

Owner.create(:user_id => u4.id, :organization_id => o1.id)
Owner.create(:user_id => u4.id, :organization_id => o2.id)
Owner.create(:user_id => u4.id, :organization_id => o3.id)
Owner.create(:user_id => u4.id, :organization_id => o4.id)
Owner.create(:user_id => u4.id, :organization_id => o5.id)
Owner.create(:user_id => u4.id, :organization_id => o6.id)
Owner.create(:user_id => u4.id, :organization_id => o7.id)
Owner.create(:user_id => u4.id, :organization_id => o8.id)
Owner.create(:user_id => u4.id, :organization_id => o9.id)
Owner.create(:user_id => u4.id, :organization_id => o10.id)
Owner.create(:user_id => u4.id, :organization_id => o11.id)
Owner.create(:user_id => u4.id, :organization_id => o12.id)
Owner.create(:user_id => u4.id, :organization_id => o13.id)

#### Upcoming Events ####
e1 = Event.new(:name => 'CollegeHumor Live', :location => 'Goldstein Auditorium, Schine Student Center, Syracuse University', :date => '2014-02-19', :time => '2000-01-01 00:00:00 UTC', 
	:ticket_info => 'On sale in the Schine Box Office for $5 with your SU/ESF ID.', 
	:description => 'Join University Union for a night of comedy with Jake Hurwitz, Amir Blumenfeld, Streeter Seidell, and Dan Gurewitch. Tickets are $5 for all SU/SUNY ESF students, faculty, and staff and go on sale at the Schine Box Office on Tuesday January 21st.', 
	:category_id => Category.find_by_name('Comedian').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e1.image = File.open(IMAGE_FOLDER + '/beta/ch.png')
e1.save

e2 = Event.new(:name => 'St. Lucia', :location => 'Schine Undergroud, Schine Student Center, Syracuse University', :date => '2014-03-05', :time => '2000-01-01 22:30:00 UTC', 
	:ticket_info => 'On sale in the Schine Box Office for $5 with your SU/ESF ID.', 
	:description => 'Our first Bandersnatch show of the semester!', 
	:category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e2.image = File.open(IMAGE_FOLDER + '/default_event.jpg')
e2.save

e3 = Event.new(:name => '20 Watts Spring Issue!', :location => 'TBD', :date => '2014-03-20', :time => '2000-01-01 18:30:00 UTC', 
	:ticket_info => 'N/A', 
	:description => 'Find a free copy of 20Watts spring issue around campus for the taking!', 
	:category_id => Category.find_by_name('Publication').id, :user_id => User.find_by_user_name('tcharles').id, :organization_id => Organization.find_by_name('20 Watts').id)
e3.image = File.open(IMAGE_FOLDER + '/20watts.png')
e3.save

e4 = Event.new(:name => 'SA Spring Budget Training', :location => 'Room 304ABC, Schine Student Center, Syracuse University', :date => '2014-02-04', :time => '2000-01-01 23:00:00 UTC', 
	:ticket_info => 'Free!', 
	:description => 'All students writing budgets this spring for an SU RSO are required to attend at least one budget training session. Join us to learn more about the budgeting process at SU.', 
	:category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('alphabeta').id, :organization_id => Organization.find_by_name('Student Association').id)
e4.image = File.open(IMAGE_FOLDER + '/beta/sa.jpeg')
e4.save

e5 = Event.new(:name => 'SA Spring Budget Training', :location => 'Hall of Languages 107, Syracuse University, Syracuse, NY', :date => '2014-02-07', :time => '2000-01-01 18:30:00 UTC', 
	:ticket_info => 'Free!', 
	:description => 'All students writing budgets this spring for an SU RSO are required to attend at least one budget training session. Join us to learn more about the budgeting process at SU.', 
	:category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('alphabeta').id, :organization_id => Organization.find_by_name('Student Association').id)
e5.image = File.open(IMAGE_FOLDER + '/beta/sa.jpeg')
e5.save

e6 = Event.new(:name => 'SA Spring Budget Training', :location => 'Hall of Languages 105', :date => '2014-02-08', :time => '2000-01-01 17:00:00 UTC', 
	:ticket_info => 'Free!', 
	:description => 'All students writing budgets this spring for an SU RSO are required to attend at least one budget training session. Join us to learn more about the budgeting process at SU.', 
	:category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('alphabeta').id, :organization_id => Organization.find_by_name('Student Association').id)
e6.image = File.open(IMAGE_FOLDER + '/beta/sa.jpeg')
e6.save

e7 = Event.new(:name => 'General Interest Meeting', :location => 'Room 001, Whitman Building, Syracuse University, Syracuse, NY', :date => '2014-02-14', :time => '2000-01-01 23:30:00 UTC', 
	:ticket_info => 'Open to all members.', 
	:description => 'Our first meeting of the spring semester, join us to learn about grassroots entrepreneurial efforts here at SU.', 
	:category_id => Category.find_by_name('Academic/Information Session').id, :user_id => User.find_by_user_name('skeefe').id, :organization_id => Organization.find_by_name('SU Entrepreneurship Club').id)
e7.image = File.open(IMAGE_FOLDER + '/beta/e-club.jpg')
e7.save

e8 = Event.new(:name => 'Macklemore and Ryan Lewis', :location => 'Carrier Dome, Syracuse, NY', :date => '2013-11-11', :time => '2000-01-01 18:30:00 UTC', 
	:ticket_info => 'Purchase at Box Office', 
	:description => 'Macklemore and Ryan Lewis are coming to the Carrier Dome!', 
	:category_id => Category.find_by_name('Concert').id, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e8.image = File.open(IMAGE_FOLDER + '/macklemore.png')
e8.save