# rails r 'puts Badges.all.each{|b| puts "\"#{b.name}\" => [\"#{b.display_name}\", \"#{b.image_path.gsub("badges/", "")}\", \"#{b.description}\", \"#{b.for}\"],"  }'

LEGACY_BADGES = {
  "Beaver" => ["Beaver", "beaver.png", "Have at least one original repo where go is the dominant language", "having at least one original repo where go is the dominant language."],
  "Beaver3" => ["Beaver 3", "beaver3.png", "Have at least three original repo where go is the dominant language", "having at least three original repo where go is the dominant language."],
  "Epidexipteryx" => ["Epidexipteryx", "epidexipteryx.png", "Have at least one original repo where C++ is the dominant language", "having at least one original repo where C++ is the dominant language."],
  "Epidexipteryx3" => ["Epidexipteryx 3", "epidexipteryx3.png", "Have at least three original repo where C++ is the dominant language", "having at least three original repo where C++ is the dominant language."],
  "Locust" => ["Desert Locust", "desertlocust.png", "Have at least one original repo where Erlang is the dominant language", "having at least one original repo where Erlang is the dominant language."],
  "Locust3" => ["Desert Locust 3", "desertlocust3.png", "Have at least three original repos where Erlang is the dominant language", "having at least three original repos where Erlang is the dominant language."],
  "Narwhal" => ["Narwhal", "narwhal.png", "Have at least one original repo where Clojure is the dominant language", "having at least one original repo where Clojure is the dominant language."],
  "Narwhal3" => ["Narwhal 3", "narwhal3.png", "Have at least three original repos where Clojure is the dominant language", "having at least three original repos where Clojure is the dominant language."],
  "Ashcat" => ["Ashcat", "moongoose-rails.png", "Make Ruby on Rails better for everyone by getting a commit accepted", "making Ruby on Rails better for everyone when your commit was accepted."],
  "Kona" => ["Kona", "coffee.png", "Have at least one original repo where CoffeeScript is the dominant language", "having at least one original repo where CoffeeScript is the dominant language."],
  "Raven" => ["Raven", "raven.png", "Have at least one original repo where some form of shell script is the dominant language", "having at least one original repo where some form of shell script is the dominant language."],
  "Labrador" => ["Lab", "labrador.png", "Have at least one original repo where C# is the dominant language", "having at least one original repo where C# is the dominant language."],
  "Labrador3" => ["Lab 3", "labrador3.png", "Have at least three original repos where C# is the dominant language", "having at least three original repos where C# is the dominant language."],
  "Trex" => ["T-Rex", "trex.png", "Have at least one original repo where C is the dominant language", "having at least one original repo where C is the dominant language."],
  "Trex3" => ["T-Rex 3", "trex3.png", "Have at least three original repos where C is the dominant language", "having at least three original repos where C is the dominant language."],
  "Honeybadger1" => ["Honey Badger", "honeybadger.png", "Have at least one original Node.js-specific repo", "having at least one original Node.js-specific repo."],
  "Honeybadger3" => ["Honey Badger 3", "honeybadger3.png", "Have at least three Node.js specific repos", "having at least three Node.js specific repos."],
  "Changelogd" => ["Changelog'd", "changelogd.png", "Have an original repo featured on the Changelog show", "having an original repo featured on the Changelog show."],
  "Bear" => ["Bear", "bear.png", "Have at least one original repo where Objective-C is the dominant language", "having at least one original repo where Objective-C is the dominant language."],
  "Bear3" => ["Bear 3", "bear3.png", "Have at least three original repos where Objective-C is the dominant language", "having at least three original repos where Objective-C is the dominant language."],
  "Cub" => ["Cub", "cub.png", "Have at least one original jQuery or Prototype open source repo", "having at least one original jQuery or Prototype open source repo."],
  "Mongoose" => ["Mongoose", "mongoose.png", "Have at least one original repo where Ruby is the dominant language", "having at least one original repo where Ruby is the dominant language."],
  "Mongoose3" => ["Mongoose 3", "mongoose3.png", "Have at least three original repos where Ruby is the dominant language", "having at least three original repos where Ruby is the dominant language."],
  "Railscamp" => ["Railscamp", "railscamp.png", "Attend at least one RailsCamp event anywhere in the world", "attending at least one RailsCamp event anywhere in the world."],
  "Python" => ["Python", "python.png", "Would you expect anything less? Have at least one original repo where Python is the dominant language", "having at least one original repo where Python is the dominant language."],
  "Python3" => ["Python 3", "python3.png", "Have at least three original repos where Python is the dominant language", "having at least three original repos where Python is the dominant language"],
  "Charity" => ["Charity", "charity.png", "Fork and commit to someone's open source project in need", "forking and commiting to someone's open source project."],
  "Forked" => ["Forked", "forked1.png", "Have a project valued enough to be forked by someone else", "having a project valued enough to be forked by someone else."],
  "Forked20" => ["Forked 20", "forked20.png", "Have an established project that's been forked at least 20 times", "having a project valued enough to be forked by at least 20 developers."],
  "Forked50" => ["Forked 50", "forked50.png", "Have a project with a thriving community of users that's been forked at least 50 times", "having a project valued enough to be forked by at least 50 developers."],
  "Forked100" => ["Forked 100", "forked100.png", "Have a seriously badass project that's been forked at least 100 times", "having a seriously badass project that's been forked at least 100 times."],
  "Lemmings1000" => ["Kilo of Lemmings", "1000lemming.png", "Establish a space in the open source hall of fame by getting at least 1000 devs to watch a project", "establishing a space in the open source hall of fame by getting at least 1000 devs to watch your project."],
  "Lemmings100" => ["Lemmings 100", "100lemming.png", "Write something great enough to have at least 100 watchers of the project", "writing something great enough to have at least 100 people following it."],
  "Altruist" => ["Altruist", "altrustic.png", "Increase developer well-being by sharing at least 20 open source projects", "increasing developer well-being by sharing at least 20 open source projects."],
  "Philanthropist" => ["Philanthropist", "philanthropist.png", "Truly improve developer quality of life by sharing at least 50 individual open source projects", "improving developers' quality of life by sharing at least 50 individual open source projects"],
  "Polygamous" => ["Walrus", "walrus.png", "The walrus is no stranger to variety. Use at least 4 different languages throughout all your repos", "using at least 4 different languages throughout your open source repos."],
  "EarlyAdopter" => ["Opabinia", "earlyadopter.png", "Started social coding on GitHub within 6 months of its first signs of life", "starting social coding on GitHub within 6 months of its first signs of life."],
  "Octopussy" => ["Octopussy", "octopussy.png", "Have a repo followed by a member of the GitHub team", "having a repo followed by a member of the GitHub team."],
  "Velociraptor3" => ["Velociraptor 3", "velociraptor3.png", "Have at least three original repos where Perl is the dominant language", "having at least three original repos where Perl is the dominant language"],
  "Velociraptor" => ["Velociraptor", "velociraptor.png", "Have at least one original repo where Perl is the dominant language", "having at least one original repo where Perl is the dominant language."],
  "NephilaKomaci3" => ["Nephila Komaci 3", "nephilakomaci3.png", "Have at least three original repos where PHP is the dominant language", "having at least three original repos where PHP is the dominant language."],
  "NephilaKomaci" => ["Nephila Komaci", "nephilakomaci.png", "Have at least one original repos where PHP is the dominant language", "having at least one original repos where PHP is the dominant language"],
  "Komododragon" => ["Komodo Dragon", "komododragon.png", "Have at least one original repo where Java is the dominant language", "having at least one original repo where Java is the dominant language."],
  "Komododragon3" => ["Komodo Dragon 3", "komododragon3.png", "Have at least three original repos where Java is the dominant language", "having at least three original repos where Java is the dominant language."],
  "Platypus" => ["Platypus", "platypus.png", "Have at least one original repo where scala is the dominant language", "having at least one original repo where scala is the dominant language."],
  "Platypus3" => ["Platypus 3", "platypus3.png", "Have at least three original repo where scala is the dominant language", "having at least three original repo where scala is the dominant language."],
  "Entrepreneur" => ["Entrepreneur", "entrepreneur.png", "Help build a product by contributing to an Assembly product", "working on an Assembly product when your commit was accepted."],
  "HackathonStanford" => ["Stanford Hackathon", 'hackathonStanford.png', "Participated in Stanford's premier Hackathon, organized by the ACM, SVI Hackspace and BASES.", "participating in Stanford's premier Hackathon, organized by the ACM, SVI Hackspace and BASES."],
  "WrocLover" => [
    'wroc_love.rb',
    'wrocloverb.png',
    "Attended the 2012 wroc_love.rb ruby conference.",
    "attending the 2012 wroc_love.rb ruby conference."
  ],
  "Neo4jContest::Participant" => [
    "Neo4j Challenger",
    'neo4j-challenge.png',
    "Participated in 2012 Neo4j Challenge",
    "participating in the 2012 Neo4j seed the cloud challenge."
  ],
  "Neo4jContest::Winner" => [
    "Neo4j Winner",
    'neo4j-winner.png',
    "Won the 2012 Neo4j Challenge",
    "winning the 2012 Neo4j seed the cloud challenge."
  ],
  "Hackathon" => [
    "Hackathon",
    'hackathon.png',
    "Participated in a hackathon.",
    "participating in a hackathon."
  ],
  "Railsberry" => [
    "Railsberry",
    'railsberry.png',
    "Attended the 2012 Railsberry conference.",
    "attending the 2012 Railsberry conference."
  ],
  "HackathonCmu" => [
    "CMU Hackathon",
    'hackathonCMU.png',
    "Participated in CMU's Hackathon, organized by ScottyLabs.",
    "participating in CMU's Hackathon, organized by ScottyLabs."
  ]
}

(2011...2016).each do |year|
  LEGACY_BADGES["NodeKnockout::Contender#{year}"] = [
    'KO Contender',
    "ko-contender-#{year}.png",
    "Participated in #{year} Node Knockout",
    "participating in #{year} Node Knockout."
  ]
  LEGACY_BADGES["NodeKnockout::Judge#{year}"] = [
    'KO Judge',
    "ko-judge-#{year}.png",
    "Official Judge of the #{year} Node Knockout",
    "judging the #{year} Node Knockout."
  ]
  LEGACY_BADGES["NodeKnockout::Champion#{year}"] = [
    'KO Champion',
    "ko-champion-#{year}.png",
    "Won first place in the #{year} Node Knockout",
    "winning first place in the #{year} Node Knockout."
  ]
  LEGACY_BADGES["NodeKnockout::BestDesign#{year}"] = [
    'KO Design',
    "ko-best-design-#{year}.png",
    "Won the best designed app in the #{year} Node Knockout",
    "winning the best designed app in the #{year} Node Knockout"
  ]
  LEGACY_BADGES["NodeKnockout::MostVotes#{year}"] = [
    'KO Popular',
    "ko-most-votes-#{year}.png",
    "Won the most votes in the #{year} Node Knockout",
    "winning the most votes in the #{year} Node Knockout"
  ]
  LEGACY_BADGES["NodeKnockout::MostUseful#{year}"] = [
    'KO Innovation',
    "ko-most-innovative-#{year}.png",
    "Won the most innovative app in the #{year} Node Knockout",
    "winning the most innovative app in the #{year} Node Knockout"
  ]
  LEGACY_BADGES["NodeKnockout::MostComplete#{year}"] = [
    'KO Complete',
    "ko-most-complete-#{year}.png",
    "Won the most complete app in the #{year} Node Knockout",
    "winning the most complete app in the #{year} Node Knockout"
  ]
  LEGACY_BADGES["NodeKnockout::MostInnovative#{year}"] = [
    'KO Innovation',
    "ko-most-innovative-#{year}.png",
    "Won the most innovative app in the #{year} Node Knockout",
    "winning the most innovative app in the #{year} Node Knockout"
  ],
  LEGACY_BADGES["GithubGameoffJudge#{year}"] = [
    'Github Gameoff Judge',
    "github-gameoff-judge-#{year}.png",
    "Was a judge in the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc",
    "judging the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc"
  ]

  LEGACY_BADGES["GithubGameoffWinner#{year}"] = [
    'Github Gameoff Winner',
    "github-gameoff-winner-#{year}.png",
    "Won the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc",
    "winning the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc"
  ]

  LEGACY_BADGES["GithubGameoffRunnerUp#{year}"] = [
    'Github Gameoff Runner Up',
    "github-gameoff-runner-up-#{year}.png",
    "Was runner up in the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc",
    "being the runner up in the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc"
  ]

  LEGACY_BADGES["GithubGameoffHonorableMention#{year}"] = [
    'Github Gameoff Honorable Mention',
    "github-gameoff-honorable-mention-#{year}.png",
    "Was an honorable mention in the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc",
    "being noted an honorable mention in the Github Gameoff #{year} building a game based on git concepts of forking, branching"
  ]
  LEGACY_BADGES["GithubGameoffParticipant#{year}"] = [
    'Github Gameoff Participant',
    "github-gameoff-participant-#{year}.png",
    "Participated in the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc",
    "participating in the Github Gameoff #{year} building a game based on git concepts of forking, branching, etc"
  ]

  LEGACY_BADGES["TwentyFourPullRequestsParticipant#{year}"] = [
    "24PullRequests Participant",
    "24-participant.png",
    "Sent at least one pull request during the first 24 days of December #{year}",
    "participating in the 24pullrequest initiative during #{year}"
  ]

  LEGACY_BADGES["TwentyFourPullRequestsContinuous#{year}"] = [
    "24PullRequests Continuous Syncs",
    "24-continuous-sync.png",
    "Sent at least 24 pull requests during the first 24 days of December #{year}",
    "Sent at least 24 pull requests during the first 24 days of December #{year}"
  ]
end
