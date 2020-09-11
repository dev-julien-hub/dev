categ = ['Art & Photo','Artisanat','Cuisine','Edition & journal','Film & Vidéo','Jeux',
'Mode & Design','Musique & Dance','Sports','Technologie','Tourisme','Agriculture & Elevage']

odd = [
	'Pauvreté','Zéro Faim','SantPartenariaté','Education','Genre','Eau et assainissement','Energie','Croissance',
	'Industrialisation','Inégalité','Villes durables','Consommation et Production durable','Changement climatique',
	'Vie aquatique','Vie terrestre','Paix','Partenariat']
region =[
	'Analamanga','Bongolava','Itasy','Vakinakaratra','Amoron’i Mania','Atsimo-Atsinanana','Haute Matsiatra',
	'Vatovavy','Fitovinany','Ihorombe','Alaotra Mangoro','Analanjirofo','Atsinanana','Betsiboka','Boeny',
	'Melaky','Sofia','Androy','Anosy','Atsimo-Andrefana','Menabe','Diana',
	'Sava']
#introduce to database value of categorie, odd, region
#


# create user by test
university = ["ESPA","ENI","IMGAN",'Faculté de science',"Faculté de Droit"]
dip = ['Licence','Master',"Doctorat",'Baccalaureat','BEPC']
school = ["Première année","Deuxième année","Troisième année","Quatrième année","Cinquième année"]
for i in 1..20
  #rand for test name:
  name_id = rand(1..20)
  User.create(
  [
  pseudo: "Pseudo #{name_id}", first: "Prénom #{name_id}",last: "Nom #{name_id}",
  country: "Madagascar", region: region[rand(0..region.length())], address: "Lot AKT #{rand(1..5)} #{region[rand(0..region.length())]}",
  mobile: "03#{rand(2...4)} #{rand(10..99)} #{rand(100..999)} #{rand(10..99)}",
  university: university[rand(0..university.length())],
  diplome: dip[rand(0..dip.length())], school_year: school[rand(0..school.length())],
  email: "test@#{name_id}.com",
  password: "000000",
  password_confirmation: "000000"
  ])
end

#crete seed project for the test
#
categ.each do |i|
  AdminAboutCategorie.create([name: i, categorie_number: rand(1..6)])
end
odd.each do |j|
  AdminAboutOdd.create([name: j, odd_number: rand(0..6)])
end
region.each do |k|
  AdminAboutRegion.create([name: k, region_number: rand(0..6)])
end

for elem in 1...50
  i = rand(0..20)
  Project.create([
  user_id: rand(1..20),
  collect_jeuton: rand(800..10000),
  admin_about_categorie_id: rand(1..categ.length()),
  admin_about_odd_id: rand(1..odd.length()),
  admin_about_region_id: rand(1..region.length()),
  title: "title #{i}",
  description: "decription du projet #{i}",
  slogan: "slogan du prooject #{i}",
  number_day: rand(40...60),
  is_img_attach: false, is_video_attach: false ,
  jeuton: rand(4000...15000),
  is_more_equipe: true, is_finished: false,
  is_cours:true, is_calendar:false, is_validate_admin:true,
  is_public:true,
  is_validate: true,
  financement: "none",
  localisation: region[rand(0..region.length())]
  ])
end


for i in 1...50
  Equipe.create([
  project_id: i, person_one: rand(0..20), person_two: rand(0..20), person_three: rand(0..20), person_four: rand(0..20)
  ])
  Advantage.create([
  project_id: i, title: "title avantagrs #{i}", description: "Description de l'avantage #{i}",
  economique: "Economie ici #{i}", social: "social #{i}", culturel: "culturel ici #{i}"
  ])
  Solution.create([
  project_id: i, title: "title of solution #{i}", explication:"explication of the solution #{i}", illustrations: "illustration of the solution #{i}",
  is_attach: false
  ])
  Idea.create([
  project_id: i, title:"Title of idea #{i}", explication: "explication of idea #{i}",
  illustrations: "illustration of idea #{i}", is_attach: false
  ])
end
#create  categorie && odd && region
