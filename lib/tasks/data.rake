roles = ['Director', 'Writer', 'Producer', 'Voice', 'Animator', 'Audio', 'Intern', 'Character Designer', 'Lead Animator', 'Creator']

tags = [
  'Absract',
  'Robot',
  'Aliens',
  'Angels',
  'Baseball',
  'Bounty Hunters',
  'Cars',
  'Dinosaurs',
  'Dragons',
  'Food',
  'Monster-of-the-week'
]

genres = [
'Giant-robot',
'Racing',
'Sports',
'Slice-of-life',
'Comedy',
'Adventure',
'Magical Girl'
]


anime = ['Bad Girl Mode',
'Cautious Pe Mami',
'Combat Maid Admirals',
'Cultural Stone Shadow',
'Eyepatch Neun',
'General Armageddon',
'Initial Glass Hell Marines',
'Magic Drei',
'My Pretty Magic Corrector Tau',
'Natural Outrage Beats',
'Ninja Restraunt',
'Neo Speed Mermaid Doctors',
'Ogre Girl Zeshin',
'Our Justice Beats',
'Planetary Moon Zone',
'Power Trooper Espers',
'Prince Lover Mutants',
'Prince \ Marionnete',
'Professor Space',
'Revelation Robots',
'Secret Zepplin',
'Teacher Twilight',
'Time Layers',
'Total Thunder Asassin Phi',
'Weather Sorcerors',
'Battler Savior',
'Bebop Professor Princess Honey',
'Big Dream Cop Troopers',
'Bubblegum Fairy Searphim',
'Detective Honey',
'Dynamic Twilight Dragon Phantom',
'Experiment Rogue Sirens',
'Formula Climber Demon',
'Her Rogue Oblivion Wedding Hundred',
'His Charming Captain Cognition',
'Hit Collector Mortals',
'Lord Ice Alpha',
'Lost Major Rage',
'Lover One-Hundred Yutaka',
'Major Detonator Twins',
'Miracle : Rage',
'Nighttime Admiral Asassin Rock',
'Our Army Zeshin',
'Siren Adventures',
'Strike Phantom Warriors',
'Submarines of Jin',
'Super-dimensional Barbaric Hades Omega',
'Super-dimensional Queen Monster Troopers',
'Teacher Mistress Maids',
'World Mistress Seekers',
'Abominable Unthinkable Devil Odin',
'Angel Love Brides',
'Battleship Idol Espers',
'Big Last Alliance Singer Nu',
'Blade Knight Captors',
'Boy Planet U',
'Candy Mermaids Twins',
'Dream of Eiko',
'Evil Captain Bounty',
'Geo Yod',
'Giant Mighty Metal Express',
'Gladiators Crown',
'Gladiators Wonder',
'Gunsmith Maze',
'Hell Gender Mu',
'Hunter Teth Yoshimasa',
'Layer Thief Ronin',
'Our Chimera Jumper Lady Tadako',
'Outrageous Salvation General Fool Akihiko',
'Psycho Miss Magic-User Troopers',
'Robot Female Guerillas',
'Sailor Tokyo',
'Spirit Journey',
'Truck \ Showdown',
'Velocity Omega']


namespace :data do
  desc "Create demo data for AMDB"
  task seed: :environment do
    (0..74).each do |r|
      a = Anime.create
      a.update(
        :name        => anime[r],
        :runtime     =>  rand(22..120), 
        :age_rating  => ['TV-Y', 'TV-Y7', 'TV-G', 'TV-PG', 'TV-14', 'TV-MA'].shuffle.first,
        :air_date    =>  (('01/01/1990'.to_date)..(Date.today)).to_a.shuffle.first,
        :description => 'Test description')
    end

    (0..200).each do |r|
      c = Contributor.create
      c.update(
        :name => Faker::Name.first_name + ' ' + Faker::Name.last_name,
        :age => rand(22..78),
        :birthplace => 'Japan',
        :trivia => 'Test trivia'
        )
    end

    (0..10).each do |r|
      t = Tag.create
      t.update(
        :name => tags[r]
      )
    end

    (0..6).each do |r|
      g = Genre.create
      g.update(
        :name => genres[r]
      )
    end

    (0..500).each do |r|
      a = AnimeContributor.create
      a.update(
        :anime_id       => Anime.all.shuffle.first.id,
        :contributor_id => Contributor.all.shuffle.first.id,
        :role => roles.shuffle.first
        )
    end

    (0..300).each do |r|
      t = AnimeTag.create
      t.update(
        :anime_id => Anime.all.shuffle.first.id,
        :tag_id => Tag.all.shuffle.first.id
      )
    end

    (0..200).each do |r|
      g = AnimeGenre.create
      g.update(
        :anime_id => Anime.all.shuffle.first.id,
        :genre_id => Genre.all.shuffle.first.id,
      )
    end


  end
end