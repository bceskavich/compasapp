# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##### Database Reset #####

Comment.destroy_all
Event.destroy_all
Organization.destroy_all
User.destroy_all
Category.destroy_all

##### Category Seeds #####

c1 = Category.create(:name => 'Concert')
c2 = Category.create(:name => 'Comedian')
c3 = Category.create(:name => 'Speaker/Lecture')
c4 = Category.create(:name => 'Film')

def random_cid
  c_max = Category.last.id
  c_min = Category.first.id
  (rand * (c_max + 1 - c_min)).floor + c_min
end

##### Basic User Seeds #####

u1 = User.new(:user_name => 'bceskavich', :first_name => 'Billy', :last_name => 'Ceskavich', :password => 'SU2orange!', :location => 'Syracuse, NY',  :school => 'Syracuse University')
u1.image = File.open('app/assets/images/propic.jpg')
u1.save

u2 = User.new(:user_name => 'johndoe', :first_name => 'John', :last_name => 'Doe', :password => 'SU2orange!', :location => 'Boston, MA',  :school => 'Boston University')
u2.image = File.open('app/assets/images/propic.jpg')
u2.save

u3 = User.new(:user_name => 'janedoe', :first_name => 'Jane', :last_name => 'Doe', :password => 'SU2orange!', :location => 'Portland, ME', :school => 'Maine University')
u3.image = File.open('app/assets/images/propic.jpg')
u3.save

u4 = User.new(:user_name => 'lggorman', :first_name => 'Linda', :last_name => 'Gorman', :password => 'SU2orange!' ,:location => 'Wilmington, DE',  :school => 'University of Delaware')
u4.image = File.open('app/assets/images/propic.jpg')
u4.save

def random_uid
  u_max = User.last.id
  u_min = User.first.id
  (rand * (u_max + 1 - u_min)).floor + u_min
end
	
##### Basic Org Seeds #####

o1 = Organization.new(:name => 'University Union', :description => "SU's Official Programming Board", :user_id => User.find_by_user_name('bceskavich').id)
o1.image = File.open('app/assets/images/uu_insignia.jpg')
o1.save

o2 = Organization.new(:name => 'Active Minds', :description => "Fighting misconceptions about mental health", :user_id => User.find_by_user_name('bceskavich').id)
o2.image = File.open('app/assets/images/uu_insignia.jpg')
o2.save

o3 = Organization.new(:name => 'Remembrance Scholars', :description => "Pan Am 103 remembrance", :user_id => User.find_by_user_name('johndoe').id)
o3.image = File.open('app/assets/images/uu_insignia.jpg')
o3.save

o4 = Organization.new(:name => '20 Watts', :description => "Music Mag", :user_id => User.find_by_user_name('janedoe').id)
o4.image = File.open('app/assets/images/uu_insignia.jpg')
o4.save

##### Basic Event Seeds #####

e1 = Event.new(:name => 'Macklemore & Ryan Lewis', :location => 'Carrier Dome', :date => '2013-11-11', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'World tour yo!', :category_id => random_cid, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e1.image = File.open('app/assets/images/macklemore.png')
e1.save

e2 = Event.new(:name => 'Hudson Mohawke', :location => 'Schine', :date => '2013-11-29', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'Bandersnatch yo!', :category_id => random_cid, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Active Minds').id)
e2.image = File.open('app/assets/images/hudson_mohawk.png')
e2.save

e2 = Event.new(:name => 'Chance, The Rapper', :location => 'HBC', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'Cinemas yo!', :category_id => random_cid, :user_id => User.find_by_user_name('johndoe').id, :organization_id => Organization.find_by_name('Remembrance Scholars').id)
e2.image = File.open('app/assets/images/chance.png')
e2.save

e2 = Event.new(:name => 'Juice Jam', :location => 'Goldstein', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'PA yo!', :category_id => random_cid, :user_id => User.find_by_user_name('janedoe').id, :organization_id => Organization.find_by_name('20 Watts').id)
e2.image = File.open('app/assets/images/juice_jam.png')
e2.save

e1 = Event.new(:name => 'David Sedaris', :location => 'Carrier Dome', :date => '2013-11-11', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'World tour yo!', :category_id => random_cid, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('University Union').id)
e1.image = File.open('app/assets/images/hudmo.jpg')
e1.save

e2 = Event.new(:name => 'Jeffrey Eugenides', :location => 'Schine', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'Bandersnatch yo!', :category_id => random_cid, :user_id => User.find_by_user_name('bceskavich').id, :organization_id => Organization.find_by_name('Active Minds').id)
e2.image = File.open('app/assets/images/juice_jam.jpg')
e2.save

e2 = Event.new(:name => 'Billy Collins', :location => 'HBC', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'Cinemas yo!', :category_id => random_cid, :user_id => User.find_by_user_name('johndoe').id, :organization_id => Organization.find_by_name('Remembrance Scholars').id)
e2.image = File.open('app/assets/images/MacklemorePosterOfficial.jpg')
e2.save

e2 = Event.new(:name => 'Activities Fair', :location => 'Goldstein', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'PA yo!', :category_id => random_cid, :user_id => User.find_by_user_name('janedoe').id, :organization_id => Organization.find_by_name('20 Watts').id)
e2.image = File.open('app/assets/images/hudson_mohawk.png')
e2.save

e2 = Event.new(:name => 'Block Party', :location => 'Goldstein', :date => '2013-12-05', :time => '2000-01-01 19:00:00 UTC', :ticket_info => 'Buy Online', :description => 'PA yo!', :category_id => random_cid, :user_id => User.find_by_user_name('janedoe').id, :organization_id => Organization.find_by_name('20 Watts').id)
e2.image = File.open('app/assets/images/juice_jam.png')
e2.save
