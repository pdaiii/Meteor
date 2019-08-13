# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

ApplicationRecord.transaction do
  User.destroy_all
  Story.destroy_all
  Response.destroy_all

 user1 = User.create!(
    username: 'Guest User',
    password: 'password'
  )

  user2 = User.create!(
    username: 'Howard Megdal',
    password: 'password'
  )

  user3 = User.create!(
    username: 'Brandon Anderson',
    password: 'password'
  )

  user4 = User.create(
    username: 'Lon Shapiro',
    password: 'password'
  )

  user5 = User.create!(
    username: 'Jack Baer',
    password: 'password'
  )

  user6 = User.create!(
    username: 'Lila Bromberg',
    password: 'password'
  )

  user7 = User.create!(
    username: 'Jim Cavan',
    password: 'password'
  )

  user8 = User.create!(
    username: 'NY Sports Ranter',
    password: 'password'
  )

  user9 = User.create!(
    username: 'Dan Feldman',
    password: 'password'
  )

  user10 = User.create!(
    username: 'Michael Shapiro',
    password: 'password'
  )

  user11 = User.create!(
    username: 'Andrew Sharp',
    password: 'password'
  )

  file1 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/The+Ultimate+Lottery+Jackpot%E2%80%93Medium.jpeg')
  story1 = Story.create!(
    title: 'The Ultimate Lottery Jackpot?',
    body: 'Philadelphia 76ers general manager Bryan Colangelo almost missed media day.
      It would have been highly unusual for a GM not to be there — reporters were warned a week ahead of time not to expect him, only to be surprised by his last-minute appearance among the players and other team officials.
      But then Colangelo had found himself in an unusual situation: lots of good team news to report, but none, for the moment, that he was actually responsible for.
      The 76ers appear poised to break through in 2017–18, after an unrelieved string of on-court misery in which they ranked among the worst of the NBA teams.
      Vegas certainly thinks the big moment is at hand — a team that finished 28–54 last season, itself a high-water mark of the past four campaigns, has a wins over-under of 41.5 this time around, which means Vegas’ mean expectation of the Sixers is both a winning season and, given the overall weakness of the NBA’s Eastern Conference, a playoff appearance.
      And that’s just what’s likely: The upside of a roster featuring four separate high lottery picks — Joel Embiid, Jahlil Okafor, Markelle Fultz, and Ben Simmons — appears to be a great deal higher than that.
      The reason for Colangelo’s reluctance to be the bearer of good news is that he wasn’t responsible for the acquisition of most of the players responsible for the prospective turnaround. The actual drafting of Embiid and Okafor came during the tenure of Colangelo’s predecessor, Sam Hinkie, whose effort to turn into the skid of what is the typical ebb that precedes most success cycles drew criticism from across the league, and even from commissioner Adam Silver, who has led the push for lottery reform to make the 76ers the last team to profit so handsomely from failure.
      Moreover, the top overall draft-pick positions that followed largely happened due to Hinkie’s work bottoming out the Sixers at 10–72 in 2015–16, leading to the pole position that netted Simmons and the third overall pick that served as a centerpiece with other assets traded to Boston for the top pick used on Fultz.
      So what could Colangelo talk about when the motto adopted by the entire city of Philadelphia — “Trust the process” — was in place before he arrived, and while the league itself is hell-bent on making sure that very process is never repeated?
      He can talk about what comes next, as the team goes from collecting talent to bolstering a roster so it can go contend for championships.
      This past summer looked like the most significant steps to date in making that adjustment, with the signing of veterans Amir Johnson, a multifaceted forward, and J.J. Redick, one of the league’s finest perimeter shooters, to a pair of one-year contracts.
      Colangelo said the shift started even earlier.
      “Well, really we made the decision last year, if you remember,” Colangelo said. “Signed Jerryd Bayless to a deal. Drafted Ben Simmons and felt like we were at that jumping-off point then. Unfortunately, two pretty significant injuries occurred, if you recall. We didn’t really know what we had with Joel last year, but we certainly got a taste of what we do have, given health.
      “This year feels like last year, but now you enhance it with an Amir Johnson, a J.J. Redick, and a Markelle Fultz being brought in. I would say a much better prognosis and knowledge of what we have with Joel and Ben. I think that it is safe to say although we made the decision last year, it’s probably we are more prepared to take that step forward this year, and we’re excited about what that means.”
      Colangelo, if anything, was understating the centrality of the “health” factor to the team’s near-term fortunes.
      Embiid, when the Sixers drafted him, was less than a week removed from foot surgery and didn’t play a single game over his first two seasons in Philadelphia before logging 31 last season. Simmons missed the entire 2016–17 campaign due to injury as well. Okafor’s progress has been limited by knee problems. Even Fultz lost the final month of his lone collegiate season with the Washington Huskies to injury and has been an irregular presence on the court this preseason before his agent revealed this week that he is fighting a shoulder injury.
      There is plenty of other talent on this Sixers team—players brought in along the way. In the case of Redick, a veteran who could have signed with many teams, including more obvious contenders, both the method and the talent served as a magnet.
      “I thought this was a team that was trending this way, was trending up, and felt that my skill set, my personality could help them sort of trend in that direction maybe a little quicker,” Redick said. “But a lot of that trending has nothing to do with me, obviously. It’s through patience and the decisions that this franchise has made over the last four years. I thought it was an interesting opportunity to sort of join this organization at a great time when there’s a lot of excitement about the team, about the core.”
      But those four top picks are the bedrock of what Hinkie set into motion, the four high picks following all the losing in Philly over the past half-decade, and Colangelo is invested in at least three of the four.
      The biggest decision he has made as Sixers executive came just recently, when he signed Embiid to a five-year, $146.5 million contract. This was far from certain, with Colangelo merely expressing optimism about getting something done back in September, amid skepticism over whether the Sixers would guarantee so much money (ultimately, done with some significant protections built in) to a player whose high-water mark for games played in a season so far amounts to less than half of one. Had the Sixers declined to sign Embiid to an extension by October 16, he could have hit the market next summer as a restricted free agent.
      “There are obviously things that we look at when we talk about Joel and how good we can be as a team with Joel healthy and playing and being active and active part of that participation,” Colangelo said. “With respect to him and the number of games that he’ll play, I believe it will be determined over the course of the next several weeks and months when he proves healthy and able to play at those levels. Everything we’re doing now, taking the conservative path that we have is intended to allow him to play in a long-term, sustainable way.”
      Both the caution and the reward were on display when Embiid joined his teammates on the floor in Long Island for a preseason game against the Brooklyn Nets. He played just under 15 minutes, with coach Brett Brown instructing his team to foul simply to get Embiid off the floor when he reached his playing time limit for the night.
      But the tantalizing quality of what he can do when he’s out there, well — 22 points in those 15 minutes, along with seven rebounds, three assists, and a block. Embiid is often the tallest man on the floor, as he was against the Nets, but he is capable of doing everything one expects of a guard or forward — setting up on the wing, or the top of the key, driving to the basket and forcing defenders to either foul him (he took 18 free throws in 15 minutes, an absurd amount) or worse, shoot over them from virtually any distance. He is the most extreme example of positionless basketball, a movement that’s resulted in many other NBA teams going smaller to create more versatility. Embiid is a seven-footer with that versatility.
      Fultz and Simmons, too, are players capable of thriving in many different roles. Fultz is comfortable as facilitator or off the ball, while Simmons, a 6–10 giant of a playmaker, can slot in at either guard or forward spot, even a small ball center. Okafor, in an effort to enhance his faltering early career, slimmed down and added a three-point shot to what is one of the better post games to enter the league in years, though it is widely assumed the Sixers will ultimately move him.
      These decisions, while not guaranteed to bring the kind of success imagined by Colangelo’s predecessor, are still decisions virtually any other team in the league would desperately love to make.
      “Look, this business is complicated,” Colangelo said. “Health and injuries are complicated. Roster building is complicated. Everything we do in this business, in this profession, obviously presents a challenge. A rebuilding team in a market that’s gone through a fairly highly visible process of reorganization and restructuring and change, that’s where we are right now. As I’ve always said, the process never ends. Everything is a process. Life is a process. Team building is a process. We are moving forward as an organization. Whatever has happened in the past is all in the past.
      “This is all about us moving forward. We’re looking forward to a positive season in a number of respects. The business is doing very well. We are virtually in a sold-out situation. We want to deliver on expectations what this marketplace has. Some of those are realistic. Some of them may be unrealistic.
      “I would tell you that we are really happy and pleased with where we are. Feels like we’re at a real true jumping-off point and have the ability to take a next step as an organization and the excitement around the organization amongst the players, in the back of house, with the fan base. It’s something that you don’t see very often, but it’s all built to this moment. Thus, we have a mantra. Our marketing slogan is ‘Welcome to the moment.’ It’s upon us. We need to act on it.”',
    author_id: user2.id
  )
  story1.image.attach(io: file1, filename: 'story1.jpg')

  file2 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/DeangeloRussell.png')
  story2 = Story.create!(
    title: 'After the Lottery-Pick Apocalypse',
    body: 'Struggling NBA teams generally need one of two things in order to rebuild: an established star or high lottery picks. Just as wealth begets wealth, it takes a star — or the promise of future stars — to break a cycle of mediocrity, allowing teams to draw marquee free agents who can get paid anywhere and prefer destinations where championships are plausible.
      But when New Zealand basketball legend Sean Marks took over as general manager of the Brooklyn Nets last year, he had neither.
      Brook Lopez, Thaddeus Young, Joe Johnson, and Bojan Bogdanovic are all useful players, but none can be described as elite, or even elite-adjacent.
      The Nets are in a years-long talent trough that is the direct result of owner Mikhail Prokhorov’s brash promise, upon purchasing the team in 2010, to produce a championship within five years.
      His decisions following that pledge haunt the Nets to this day and threaten to keep them far behind the NBA’s elite teams until the end of the decade.
      Given a win-now mandate from Prokhorov, then–general manager Billy King traded precious assets for disappointments like Deron Williams, giving away lottery picks even for ancillary pieces like Gerald Wallace, before finally committing what may go down as the biggest atrocity in NBA transaction history.
      Seeing itself as a team on the precipice of true contention after a 49–33 season in 2012–13, the Nets traded for the fading Boston Celtics core duo of Paul Pierce and Kevin Garnett. In the massive 15-player deal, the Nets gave up their 2016 first-round pick, their 2018 first-round pick, and even swapped their 2017 pick for Boston’s.
      Failing to lottery-protect those picks went against NBA best practices of the time — say, if the pick landed in the top three or top five, the Nets could hold onto its thus far more valuable asset. King didn’t do that, not with any of them.
      And when Prokhorov pulled the plug on the Garnett-Pierce experiment by unexpectedly deciding against re-signing Pierce, the Nets were left with little present and no future.
      So Marks, along with his handpicked coach, Kenny Atkinson, understands that what they’ve signed up for isn’t easy or all that likely to yield success anytime soon.
      “That goes back to when I was first offered the job, or wanted to take the job,” Marks said last month, during the team’s media day in Brooklyn. “We knew the challenge that was laid out ahead of us, and none of us have looked back and said, oh, what if we had this or that—we didn’t bring it up. So, forget about it, move on. It’s certainly a challenge, but it’s a good challenge. It’s like, how do we get creative here?”
      The team Marks has assembled is a testament to the pursuit of stars through unconventional means.
      So Kevin Durant was never coming to Brooklyn when he reached free agency last summer, signing instead with the Warriors. Marks’ big acquisition via free agency was Jeremy Lin, acting under the reasonable assumption that the league had improperly valued Lin several seasons removed from his brief, spectacular star turn back in 2011–12 with the Knicks.
      Injuries limited Lin to just 36 games, many of them with minutes restrictions as he tried to work his way back from a hamstring tear.
      But Marks looks to have been right about Lin’s ability. He had worked with Atkinson during his Knicks tenure, when Atkinson was an assistant coach. Lin finished with a player efficiency rating of 19.2, just down from his 19.9 in New York, with an assist percentage of 35.5, good for 13th in the league had he played a full season.
      Lin is 29 and signed for another two years, yet the question was asked of Marks whether he considered Lin a mere mentor for the younger Nets.
      “Well, I would hope he’s far more than just a mentor,” Marks said. “And I know Jeremy wants far more than that, too. So I think when you talk about the face of the franchise, that’s not something that either Kenny or myself stand up here and go, Jeremy, you’re the face, D’Angelo, you’re the face, Trevor — we don’t do that. This is something that, ultimately, the fan base, the media, anoints these people, right or wrong, and for us, it’s always been about team. It’s the way he wants to play.”
      Lin is less someone the Nets are building around, and more of the prototype, a reality brought into sharp relief when Lin suffered a season-ending knee injury in the season opener. Like the huge deal this summer to trade longtime Net Brook Lopez to the Los Angeles Lakers for D’Angelo Russell. It was a no-brainer of a trade to make, with Lopez even older than Lin, and Russell not yet 22, two years removed from getting selected second overall in the 2015 NBA Draft.
      Russell clashed with his teammates to the point that the Lakers shipped him out. His size and skills are not in doubt, but he has yet to figure out how to play at an elite level, much less how to lead a team on the court.
      Marks acknowledged that such questions exist.
      “We’ve had candid conversations with D’Angelo, just like we’ve had with all of our guys,” Marks said. “And it’s Kenny and myself, it’s the coaching staff with him, and D’Angelo knows the expectations of him. He wants to come in; he has a chip on his shoulder. He knows that defensively, he’s got to get better. But he’s gotta get better in a lot of different things. His all-around game. We all know he makes players better, and he’s got a high basketball IQ. Now, how does he take that on the court here, with a new group of guys that he’s never played with before, and how do they develop trust together?”
      In the NBA, such would-be stars exist in droves and are usually known as role players. But sometimes a missing piece is added, and players reach new, higher ground. Isaiah Thomas. Draymond Green. Even Steph Curry.
      So, until the first-round picks return in 2019, and perhaps after that, the Nets are instead waiting for Rondae Hollis-Jefferson to develop a consistent jump shot, Caris LeVert to stay healthy and improve his three-pointer, Allen Crabbe to find a game around his three-pointer.
      In the meantime, the Nets are building a first-tier player development mechanism that has started to yield results — Lopez, for instance, became a dangerous perimeter force later in his career, and LaVert exceeded expectations as a rookie.
      “That progress throughout the year, I’m more excited about that than seeing a guy like Brook, for instance, no longer here, but a guy takes his game to a different level,” Marks said. “Adding an outside shot and so forth. And it’s not just things you see on the court; it’s things you see off the court. How do you develop those leadership skills? How do you mature and so forth. And that’s going to be a big part of what we’re trying to do with this group moving forward.”
      Marks knows he can’t control the length of the runway the owner will end up giving him for the rebuild. But he and Atkinson seem to be doing their best to maintain their good humor, or at least their sanity, in the meantime.
      “I think one way we do it is we spend an awful lot of time in each other’s office,” Marks said. “I think it’s important that [for] Kenny, our doors are open…and Kenny can come in there and vent to me about whatever is on his mind, or just ideas. I think when you find guys that are, like, basketball purists and really love the game, Kenny will come to me and say, ‘Hey, I was watching today, and I saw this,’ or, ‘I was watching this game, like, you’ve got Oklahoma City, like, what are you doing?’”
      Atkinson said that the distance provided by the GM role allows Marks to talk him “off the cliff” after games.
      While rumors persist that Prokhorov intends to sell the team, and no guarantee exists that a new owner will afford Atkinson and Marks the requisite time to wait out the transaction calamity that got the Nets here, they’ll continue the small-bore work of improving the team to achieve what Marks called “those small wins along the way.”
      “I think we’re so involved in—this sounds so cliché—the process, and just trying to find our little wins every day in every area of this organization, every corner of this facility,” Atkinson said. “When we go from Barclays Center we’re never like, ‘Hey man, could you imagine when we’re in the playoffs?’ There’s none of that talk.”',
      author_id: user2.id
  )
  story2.image.attach(io: file2, filename: 'story2.jpg')

  file3 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/kawhi-leonard-kevin-durant-kyrie-irving.jpg')
  story3 = Story.create!(
    title: 'The 10 Biggest Takeaways from a Wild Opening Day of NBA Free Agency',
    body: 'WELL, HOLY CRAP! 2019 NBA FREE AGENCY CAME IN LIKE A LION and roared for eight hours straight until darn near every free agent was signed before midnight struck and turned to the new league fiscal year. Kevin Durant and Kyrie Irving are Nets. Kemba Walker is a Celtic. Jimmy Butler is in Miami. Al Horford’s in Philly. And just about no one is in New York or L.A.
      It was one of the wildest days in NBA history, and the entire league looks different on July 1 than it did just one month ago. Almost everyone has signed other than the big kahuna, Kawhi Leonard, and even the minor characters are mostly gone. The NBA saw over $3 billion in contracts agreed to in its first 24 hours of free agency, which technically aren’t even over yet.
      Let’s bounce around the league and look at the 10 biggest takeaways of a wild opening day of 2019 NBA free agency…
      1. The Brooklyn Nets won free agency      
      Kyrie Irving and Kevin Durant are Nets. That is a real thing. It’s crazy how much of a footnote it felt by the end of the day since the Kyrie news was on lock for weeks and the Durant announcement was one of the first of the day. But it’s by far the biggest news of the day.
      In my free agency preview, I deemed only three veterans worthy of a full max contract. The Nets just got two of them, and they got them for less than the max too, since Kyrie and KD are apparently giving up some cash so their very fortunate buddy DeAndre Jordan can tag along in the least big Big Three yet.
      The best NBA duos are now Lakers and Nets, and Brooklyn’s duo have both proven it on the biggest stage. Don’t underestimate how good the Nets already are. If Kevin Durant were healthy, this would be the immediate championship favorite. Everyone had fun smack talking Kyrie Irving but he remains one of the top 10 or 12 players in the league — Giannis, Kawhi, LeBron, Steph, and Harden in some order, followed by some mix of Dame, Brow, Jokic, Kyrie, Embiid, Butler, plus Durant somewhere along the way.
      Healthy KD and Kyrie are really good, like just as good as LeBron/Brow, like just as good as LeBron/Wade. Like championship-caliber good. And it’s not just those guys. DeAndre Jordan, Jarrett Allen, and Nic Claxton are good bigs. Caris LeVert was breaking out before his injury. Spencer Dinwiddie might have been their best player in 2018–19. Garrett Temple, Joe Harris, Taurean Waller-Prince, and Rodions Kurucs are quality, versatile rotation pieces.
      Now the Nets just need to get Kyrie and KD healthy. There’s a faint whiff of early 2000s Orlando Magic here, when Tracy McGrady and Grant Hill never got healthy on the same page, never made their run. Durant won’t be healthy this year, if he plays at all. Kyrie misses 15 or 20 games a season and has missed two playoff runs.
      If the Brooklyn Nets ever get to April healthy, they may be the title favorite. But they might also get only one or two chances, if they get one at all.
      It’s a risk they had to take, certainly. But the team that wins free agency isn’t always the one that wins in June.      
      2. The Warriors as we know them are dead.      
      It wasn’t supposed to happen this way.      
      Boogie’s quad. Durant’s Achilles. Klay’s ACL. There are no asterisks in sports, but we all know the playoffs would have played out differently with a full Warriors roster. Golden State never lost a playoff series with Steph, Klay, Draymond, and Durant healthy. And now they never will.      
      Durant leaving was one thing. We knew all year that might be coming. But then, at the end of a wild night, the Warriors shocked the NBA by completing a sign-and-trade for D’Angelo Russell. His incoming max contract means the Ws are hard capped and immediately led to another move, with Golden State paying a mostly unprotected first to send Andre Iguodala to Memphis to clear salary. Shaun Livingston will be next, one way or another. Kevon Looney won’t be back. Boogie is gone. Even names like Quinn Cook and Jordan Bell will be elsewhere this fall.      
      The Warriors as we know them are dead. They’ll enter this season with a three-man team of Curry, Draymond, and… D’Angelo Russell? It’s still so jarring. They’ll get Klay eventually, at which point they’ll have over $100 million committed to three guards that can’t play together. DLo wants the ball in his hands and is used to being the star, pretty much the antithesis of what made Warriors basketball so beautiful. Around those three it’ll be youngsters Jacob Evans, Jordan Poole, and Eric Paschall plus a new cast of veterans. That’s a 2.5-man team with little support in a deep, retooled West. Golden State might not even make the playoffs next season. And that’s not even taking into account the two first-round picks Golden State paid to do this or the max deal they’re giving to a guy that isn’t worth it right now.      
      Losing Durant stings, but Iggy’s departure is the real death of these Warriors. His tenacity, leadership, intelligence, and defense was a key part of the best the Warriors had to offer in this run. He was part of every great Ws lineup. There’s no more Hamptons Five. No more Death Lineup. It’s over.      
      The Warriors will reload. Maybe they’ll flip DLo as an asset play once Klay returns. They’re not dead. But they are dead as we know them. RIP.      
      3. The Lakers are ALL in on Kawhi Leonard.      
      The Lakers never seem to have a Plan B. Lakers exceptionalism at its finest.      
      So it’s all in on Kawhi Leonard.      
      Kawhi is the only one of this summer’s 12 marquee free agents standing — and reportedly hasn’t even taken a meeting yet. The Raptors, Clippers, and Lakers are waiting. Toronto either keeps him and runs it back or plays things out without him. The Clips either get him or run it back with a fun, young roster and plenty of avenues going forward. But the Lakers have a three-man team, a bunch of cap room they moved heaven and earth to drum up, and exactly one man left worth spending it on.      
      We wondered if the Lakers might sign Kyrie or Kemba to play with LeBron and Anthony Davis. We thought it might be Butler or a run at DLo, or that they might split their cap room between veterans like Patrick Beverley, Cory Joseph, Rodney Hood, or Jeremy Lamb. Nope, nope, nope, and nope. Every one of those names is off the board.      
      There is no Plan B. There’s no Plan C or D or E. If Kawhi doesn’t come, the Lakers might literally have to bring back Rajon Rondo and Kentavious Caldwell-Pope. They might have to absorb someone like Jeff Teague or Goran Dragic or themselves into Austin Rivers or Iman Shumpert. And this is their starting back court!! We haven’t even thought about building depth. And some of those names will probably be signed by the time you read this, too.      
      L.A. didn’t even pony up to keep Reggie Bullock, their presumed de facto two, now gone to New York. Heck, even if Kawhi signs, the Lakers STILL don’t have any guards. They’ll have Kawhi, Bron, and Brow and it probably won’t matter, but still. They’re out of options.      
      I don’t think it’s hit everyone just how bad this is all going to look for the Lakers if Kawhi doesn’t come and they strike out finding a star to play with LeBron a second straight summer in a wide open year.      
      4. Kawhi Leonard is the kingmaker.      
      The Nets are a year away. The Warriors are dead. The Lakers are incomplete. The Bucks got worse. The Sixers reset. The Rockets hate each other. The league remains wide open, even with every free agent in their new home.      
      And that means Kawhi Leonard is the kingmaker. Whoever gets Kawhi is the new favorite. If it’s the Lakers, duh. If it’s the Raptors, it means Danny Green too and running back a championship roster. Even if it’s the Clippers, it’s fair to like their chances now that we’ve seen what Kawhi can do with a strong supporting cast.      
      The world is your oyster, Kawhi. We wait.      
      5. The 76ers are zigging with everyone zagging.      
      Goodbye Jimmy Butler and J.J. Redick. Hello Al Horford and Josh Richardson. And get paid, Tobias Harris.      
      I love the Horford contract and hate the Harris one, and I’d rather have Richardson on his current contract than Butler on a max. The Sixers remixed their lineup again, with an even bigger, more defensive starting five of Ben Simmons, JRich, Tobias, Horford, and Joel Embiid.      
      And I like it.      
      I like that Philly is doing something different when the league is increasingly going smaller, focusing on offense and spacing. This is interesting! Horford and Richardson are 37% shooters and add more spacing overall than Redick and Butler — two shooters are more than one, and Butler made under one 3 per game in Philadelphia. This also means more shots for Harris, who ought to be taking the most shots in Philly now. And it means more time with the ball for Simmons and a possible Giannis role driving into more space with four willing shooters around him.      
      It just feels like everyone fits better. Richardson is the willing role-playing defender Butler once deigned himself to be. Horford will be a great high-low option with Embiid. Redick isn’t there to be hunted on defense anymore; now the weakest defensive link is Harris, a much bigger, more versatile defender. The offense will be more egalitarian. The defense will be more versatile.      
      This is interesting!      
      Philly is back to being a wildcard. And they’re back to being fun now, too.
      6. The East is wide open.      
      Who’s your pick to win the East right now?      
      The Bucks got worse, losing Malcolm Brogdon and Nikola Mirotic. The Celtics downgraded from Kyrie to Kemba and have no Horford replacement. The Pacers added Brogdon and get Oladipo back in January. The Heat got Heatier with the addition of Jimmy Butler. The Nets might be the 2021 favorite but not until we know KD is back. The Raptors are dependent on Kawhi. And the Sixers are on their umpteenth iteration in the last few seasons.      
      Those are the seven teams. One of them will be in next year’s Finals. But your guess is as good as mine on which of the seven it’ll be.      
      For the record, my pick right now is Philadelphia… at least until Kawhi and Danny re-sign in Toronto.      
      7. The New York Knicks remain a laughingstock.      
      The more things change, the more they stay the same.      
      The Knicks traded Porzingis. They waived and stretched Joakim Noah. They cleared cap room and tanked all season for Zion, Kyrie, and Durant. But they didn’t win the draft lottery, and then they didn’t win the Kyrie or KD lottery either and, according to Ramon Shelburne, weren’t even willing to give Durant the full max.      
      Listen, I literally wrote a whole article about the risk of signing KD off his Achilles injury. The risk is very real. But you’re the Knicks! You haven’t been relevant in 20 years!! Sometimes risk is good. Kevin Durant risk is good.      
      Instead, New York “played it safe,” dropping $21 million a year on 6th-man, Julius Randle, then signing a bunch of 1+1 team-option vets in Bobby Portis, Taj Gibson, Reggie Bullock, Wayne Ellington, and Elfrid Payton. Those guys are all nice and will probably net New York some second-round picks at the deadline, and that’s fine. But not one move helps the team in any meaningful big picture way. If they weren’t going to give KD the max, at least use all that cap room to stockpile draft picks eating Andre Iguodala, Allen Crabbe, Goran Dragic, and other contracts teams. That’s four first-round picks right there the Knicks left on the table to sign a bunch of veterans just good enough to knock New York out of pole position for next #1 pick next summer.      
      New York Knickerbockers forever.
      8. The Mavericks and Timberwolves were quiet free agency losers.
      Dallas thought they had a deal lined up with Miami in the Jimmy Butler sign-and-trade. Minnesota thought they were landing D’Angelo Russell and getting off one or two of their awful contracts. Then the music stopped and both were left holding their collective jockstraps.
      Dallas is one of the few teams with a bunch of cap room, even after giving out a quietly dangerous max with no team protections to Kristaps Porzingis. But they didn’t even get a sniff from any of the big free agents and now, like the Lakers, have nothing to spend it on. Minnesota fans got hopes up for life after Wiggins and KAT spent all summer recruiting DLo. Instead it looks like another year with Wiggins, Gorgui Dieng, and Jeff Teague.
      Both teams thought they had a big move lined up. Instead they got nothing while everyone around them got better. The Pelicans added J.J. Redick and Derrick Favors and look like a real playoff threat. So too the Kings, who added Trevor Ariza, Cory Joseph, and Dewayne Dedmon to their talented young core. The Clippers re-signed Patrick Beverley and might still get Kawhi. The Spurs are the Spurs. The Warriors, Thunder, Blazers, Lakers, Rockets, Nuggets, and Jazz are all clearly better. Minnesota and Dallas might be fighting for the West 12-seed, ahead of only the Suns and Grizzlies. Ouch.
      9. Free agency is over before it even began.
      And just like that, free agency is essentially over. In just a few hours, the entire NBA landscape changed. And there’s almost nothing left to figure out.
      We’re still awaiting Kawhi’s decision, and Danny Green’s will follow. But the free agent pool dried up real fast after that. Boogie Cousins could still get a big short-term deal. There are other quality bigs like Kevon Looney, Kenneth Faried, and Willie Cauley-Stein. There’s a few intriguing restricted free agents like Delon Wright, Maxi Kleber, and Khem Birch. This is where we’re at already. It’s July 1st, and we’re already in talk-yourself-into-Jeff-Green range.
      NEVER talk yourself into Jeff Green.
      10. We might look back on June 30, 2019, as the beginning of the end of the Giannis Antetokounmpo era in Milwaukee.
      All we think about right now is the present.
      What’s happening with Kawhi? Who will the Lakers sign? Did the 76ers get better? How good will the Nets be? Are the Jazz really the best starting five in the NBA, and did this dude really just write a 3000-word column on free agency without even mentioning them?
      But one year from now, I wonder if we will ultimately look back on June 30, 2019, as the beginning of the end for the Giannis Antetokounmpo era in Milwaukee.
      The Bucks got definitively worse. Malcolm Brogdon was really good for them, and though he’s now overpaid and netted a future first, he’s a big loss. Brogdon was Milwaukee’s second best player in the ECF. He’s the only Bucks player that does a little bit of everything, a 50/40/90 guy that played off ball and shot the lights out. Milwaukee also lost Nikola Mirotic to Spain, and they used a first-round pick to give away a solid rotation wing in Tony Snell for cap savings they ended up not using to keep their guys.
      Milwaukee did pay to keep Khris Middleton… and paid way too much, like $100 million too much, a contract that is immediately one of the worst in the NBA. They kept Brook Lopez and George Hill, who was mostly out of the rotation until they had no other options. They already paid for Eric Bledsoe, a worse fit than Brogdon, glaringly so in the playoffs. They’ll have those four and Giannis, plus very little off the bench unless you’re a big believer in Pat Connaughton, Sterling Brown, Robin Lopez, or Ersan Ilyasova.
      Two things are undeniably true. The Bucks were not good enough this year. And they just got noticeably worse.      
      There’s a third thing that’s true — Milwaukee is now locked into this roster for a long time. Middleton will be there at least four years. BroLo is signed for four. Bledsoe is, too. This is the team. This is the core. Except you know who’s not signed for four years? Giannis Antetokounmpo.     
      Giannis is under contract just two more years. What happens when the Bucks don’t win 60 games again next season? What if they don’t even make the Eastern Conference Finals? What happens when Giannis looks around and sees teammates that aren’t good enough again and sees an ownership group he now knows isn’t willing to go all-in to give him the best chance to win?
      Two years from today, Giannis Antetokounmpo is a free agent. And the clock just started ticking. Loudly. ■',
      author_id: user3.id
  )
  story3.image.attach(io: file3, filename: 'story3.jpg')

  response1 = Response.create!(
    body: 'If Deangelo Russell finds a way to fit into the Warriors offense the Warriors will still have one of the best backcourts in the NBA.',
    story_id: story3.id,
    author_id: user1.id
  )

  response2 = Response.create!(
    body: 'Signing Deangelo Russell was a good move for the Warrior despite losing Shaun Livingston, KD, and Andre Iguodola',
    story_id: story3.id,
    author_id: user2.id
  )

  response3 = Response.create!(
    body: 'Sad seeing Josh Richardson leave the Miami Heat, but Jimmy Butler is the star the Heat have been looking for.',
    story_id: story3.id,
    author_id: user3.id
  )

  response4 = Response.create!(
    body: 'With Jimmy Butler gone, it will be interesting to see how the Sixers manage late in the 4th quarter.',
    story_id: story3.id,
    author_id: user4.id
  )

  file4 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/paul_george_saved_okc.jpg')
  story4 = Story.create!(
    title: 'The Paul George Trade Just Saved the Oklahoma City Thunder Franchise',
    body: 'THE PAUL GEORGE TRADE SAVED THE OKLAHOMA CITY THUNDER FRANCHISE. Hyperbole? Maybe. But that doesn’t mean it isn’t true.      
      Rewind one week and look at the OKC franchise. What were they?      
      The Thunder had become as landlocked as Oklahoma. The team was locked into an overpriced core of Russell Westbrook Paul George, and Steven Adams, wayyy over the cap with no relief in sight. Denver and Utah have passed them by. The Lakers and Warriors had starrier stars. The Blazers and Rockets played in the last two Conference Finals. The Pelicans, Mavericks, and Kings are coming. Westbrook has never won a playoff series without Kevin Durant, and the team was locked into a 6-seed and a few more depressing first-round exits before George left for greener pastures and fans were left watching 34-year-old Russ putting up 33/14/11/13 (the last number is turnovers) for $47 million in 2023. They were locked into above-average-and-getting-worse, bad enough to never really contend, good enough to avoid great draft picks.      
      And now, everything has changed. Literally overnight.      
      The PG haul
      The Thunder traded Paul George to the Los Angeles Clippers for a record haul, netting borderline All-Star Danilo Gallinari, star sophomore Shai Gilgeous-Alexander, two possible picks swaps, and a staggering five first-round picks.      
      SGA looks like a potential franchise player, with some of basketball’s finest minds like ESPN’s Zach Lowe touting him as a future multiple-time All-Star. He is the franchise’s first legitimately exciting young player since Westbrook and Durant. Gallinari was the best player on a playoff team even before Tobias Harris got traded, always an efficient scorer when healthy. Westbrook, Gallinari, and Adams are still a legit playoff contender, even in the West.      
      And what about those picks? Two of them are from Miami, an unprotected 2021 first and a lottery-protected pick in 2023. That 2021 pick has bounced around half the league now, and it’s no longer quite as juicy as it might have been with Jimmy Butler in tow. Those two picks look like they’ll fall in the 15-to-20 range, for now, but they could get juicier in time.      
      The other three picks are from the Clippers in 2022, 2024, and 2026, each one unprotected. And while the Clips are championship favorites today, a lot can change in three years. After all, three years ago, these very Clippers were essentially the Thunder, a capped-out team committed to an expensive CP3/Blake/DJ core that wasn’t good enough and was only going to get worse. Three years ago Kevin Durant was still on the Thunder (for at least another day or two). A lot can change in three years, and in five years and seven years. In 2026, PG and Kawhi will be 36 and 35 years old. Each has already missed nearly an entire season to injury, Leonard’s played more than 66 games only twice in his career, and George is coming off a shoulder surgery that clearly hampered his play down the stretch.      
      In the best case Clippers scenario, the team becomes a dynasty over the next three or four years. In that case, OKC might get two middling picks from the Heat and a late one from L.A. in 2022, but they’d still have tasty 2024 and 2026 picks to come after the dynasty washes away. Those picks are almost certain to be juicy, so too the 2025 pick-swap rights.      
      But don’t count out the 2022 pick and 2023 swap, either. PG is only signed through 2021 right now (plus a player option for 2022), and if we’ve learned anything this offseason, it’s that contract length means nothing in the player empowerment era. The Clippers could be totally blown up before these future picks even kick in. The Thunder now own the rights to the entire Clippers draft from 2022 through 2026. If this goes south, that could easily turn into four or five lottery picks. And those Heat picks could get good, too. Some of these picks will be good. That’s just simple statistical odds.      
      On ESPN’s The Jump this weekend, New Orleans GM David Griffin called this Paul George trade one of the best in NBA history, noting that no one has ever gotten value like this for one player. And David Griffin would know!! This is the dude that just traded Anthony Davis for like 17 young Lakers players and every future L.A. draft pick for the next decade, so if he thinks this was a huge return for Paul George, you know it’s big.      
      For two years of Paul George production that would’ve capped out with a first- or second-round exit, the Thunder could get as many as six lottery picks if things bounce their way, plus Shai Gilgeous-Alexander, who would’ve easily been a top-5 pick had he been in this year’s class.      
      If the Clippers or Heat go sour, this could be really good. If they both go south, this could be one of the greatest trade coups in NBA history. It’s possible someday we won’t refer to this as the PG trade anymore. Because if things go really south for the Clippers, this trade could be rated NC-17.      
      Up next: Russell Westbrook
      But wait! There’s more!
      There’s so much more. Because the Thunder aren’t done yet. Not even close.
      Today OKC traded Jerami Grant for a 2020 Nuggets first-round pick. That one will be late, but it’s one more pick to add to the war chest. It’s also a clear signal that Thunder GM Sam Presti is nowhere near finished. He’s going to burn this thing all the way to the ground.      
      Russell Westbrook is next.      
      Zach Lowe agrees with me: Westbrook is the second worst contract in the NBA (until you factor in these new contracts, come on down, Tobias Harris and Khris Middleton!). But not everyone agrees with Zach and me, notably the Heat and Pistons. And that makes sense. Those teams are totally capped out, so there’s little downside in trading for Westbrook. They’re already all-in right now around aging stars, so they might as well push a few more chips in and at least improve from a 7-seed to a 3-seed. Pistons writer Mohamed Haji reports that Detroit is offering Reggie Jackson, Tony Snell, and two mostly unprotected picks for Westbrook. He also reports that Miami is offering Goran Dragic, James Johnson, Tyler Herro (this year’s #13 pick), and a future first.      
      In both deals, the Thunder would get two lottery picks for Westbrook! I’ll be shocked if either of those deals is really on the table, but if they are, OKC makes out like bandits. And yes, the Heat do still have future picks to trade, including their ability to remove the protection off the 2023 pick they now owe the Thunder, if they so choose. Other Westbrook suitors could include the Knicks, Magic, or Timberwolves. Or, if Daryl Morey would have his way, maybe even the Rockets. That could mean him offering The Full PG, since he was rumored to have offered four firsts multiple times for Jimmy Butler.      
      Russell Westbrook will not finish this season in a Thunder uniform. He may not even start it there. So if you’re keeping track, that’s now eight first-round picks for the Thunder: five from the PG trade, 1 from Jerami, and 2 from Russ.      
      The Thunder have only just begun      
      But we’re not done yet! Oklahoma City has only just begun.      
      Danilo Gallinari is really good and on an expiring deal. He is absolutely getting traded for something valuable. Looking around the league, I can see him making sense for at least 10 different teams (in no particular order: BOS BKN GSW HOU MIA MIL MIN NOP PHX POR). Every team wants a stretch four, and Gallo is about as good a stretch four as you can hope for. Gallinari can probably be had for an expiring contract and a first, which by the way, makes the Tobias Harris, Harrison Barnes, and Bojan Bogdanovic overpays that much more egregious. I’d love to see Portland get their hands on Gallo, a much cheaper, much easier purchase than Kevin Love.      
      Steven Adams is under contract two more years for $54 million. I’m not sure I see a home for Adams right now. He’s very good but expensive. But in a year, when Adams is expiring and the market is weak, he’ll absolutely net a first in a deal. Even Dennis Schröder could return a first-round pick on a moderately-priced expiring deal a year from now, though we won’t count on that.      
      So now the Thunder have added first-round picks for Grant, Gallinari, and Adams, plus two for Westbrook, plus five more for PG. That’s as many as 10 first-round picks for this roster, and don’t forget about Shai Gilgeous-Alexander and the pick swaps too.      
      The NBA Franchise HOPE Rankings      
      Hope springs eternal… for some NBA franchises. Which teams have the best outlook, and who faces only despair and gloom?      
      The other two picks OKC “traded” for
      But we’re still not done!      
      There’s two more first-round picks the Thunder quietly traded for in the PG deal — their own!! Oklahoma City owes its pick this year to Philadelphia, but it’s top-20 protected one time before turning into a pair of second rounders. The Thunder will easily pick inside the top 20 now, so that pick stays put. OKC also owes a 2022 pick to Atlanta that’s lottery-protected once before turning into 2s. Do you see this Thunder team making the playoffs in 2022? I don’t either. That pick stays too.      
      And not only do those picks stay… they get good!      
      Because that’s one last thing the Thunder just traded for. They just “traded up” from #20 to #12 in the draft the next few years, and once they dump Westbrook too, they’ll “trade up” again from #12 into the top-5. The West is loaded, and OKC is instantly the worst team in the conference once Russ is gone. Oklahoma City’s best assets now are their own draft picks, and every move that makes the team worse now helps them long-term.      
      The Thunder didn’t just trade PG for a bunch of Clippers and Heat picks. They also traded for a few top-5 picks of their own.      
      The Clippers traded all that for 2 players, not 1      
      You’ll hear a lot of talk in the upcoming days about how this was all worth it for the Clippers. And make no mistake about it: it absolutely was.    
      The Clippers are championship favorites now. If they win even one title, their first in franchise history, all of this was worth it. Every pick, every swap, all the future pain, it will all be worth it for just one title — just ask Toronto.    
      And as every analyst will tell you, the Clippers didn’t just trade all that stuff for Paul George. They traded it for PG and Kawhi, cuz they weren’t getting Leonard without the second star. Five picks and two good players are too much for George, but it’s a veritable bargain when you’re getting Kawhi Leonard too. Leonard is a two-time Finals MVP with a real argument as the best player in the league. How much would you trade if Giannis or LeBron were available? There is no price too high. Heck, the Clippers would have given up even more future picks if the NBA didn’t have rules against it.    
      Here’s the thing for OKC, though. The Clippers traded away their future for two players. But the Thunder only traded one.    
      The Raptors and Lakers lost out on Kawhi Leonard, but he was never even in Oklahoma City’s picture. Sam Presti cost the Raps and Lakers Kawhi Leonard and then kept all the spoils for himself. Only three teams were in the running for Kawhi, but somehow Presti thrust himself into the conversation and essentially traded Kawhi Leonard to the Clippers himself.    
      Think about that.    
      A completely unrelated third party managed to butt himself into the middle and essentially trade a free agent he had literally nothing to do with.      
      It’s astounding really.  
      Behold, the magnificent Thunder rebuild  
      Let’s tally up everything the Thunder are going to get in this rebuild-in-process one more time, just to behold its beauty:  
      2021 and 2023 Heat first-round picks  
      2022, 2024, and 2026 Clippers first-round picks  
      2023 and 2025 Clippers first-round swap rights  
      Shai Gilgeous-Alexander, a 2018 lottery pick  
      2020 Nuggets first-round pick, in exchange for Jerami Grant  
      Two future first-round picks for Westbrook  
      A future first-round pick for Gallinari  
      A future first-round pick for Adams  
      Retaining their own 2020 and 2022 picks, against traded protections  
      “Trading up” their own picks the next few years from #20 to top-5  
      That is an absolute masterclass.  
      It’s a staggering 12 first-round picks, a couple monster trade-ups, and a possible franchise point guard in Shai Gilgeous-Alexander, all of it in exchange for a roster that was going absolutely nowhere as the 6- or 7-seed out West the next few years. Maybe this PG trade will someday turn into the PG-13 trade — as in, PG for 13 first-round picks. Are we really going back to the same movie-ratings joke twice in one column? Yes, yes we R.  
      You hear a lot of talk these days about “blowing it up,” every NBA fan’s dream when a team gets locked into that treadmill of mediocrity. The Thunder were just getting onto the treadmill, or maybe they’ve already been there a couple years. Things were going to get ugly in OKC. Think Washington Wizards or Charlotte Hornets ugly. Think can-this-team-even-survive-in-a-small-market-with-a-huge-tax-bill-and-no-talent-omg-are-they-headed-back-to-Seattle ugly.  
      Instead, with one overnight masterstroke, Sam Presti has set the rebuild forward a full five years and sent this team zooming into the future.',
      author_id: user3.id
  )
  story4.image.attach(io: file4, filename: 'story4.jpg')

  response5 = Response.create!(
    body: 'How will OKC do without the likes of Paul George and Russell Westbrook?',
    story_id: story4.id,
    author_id: user1.id
  )

  file5 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/kawhi-leonard-clippers-nba-free-agency.jpg')
  story5 = Story.create!(
    title: 'Did the Los Angeles Clippers Just Save the Entire NBA?',
    body: 'THE LOS ANGELES CLIPPERS SENT SHOCK WAVES THROUGH THE NBA last weekend when they added two superstar wings literally overnight, signing Kawhi Leonard and trading for Paul George. And so ended a wild week-long Kawhi Watch in the craziest NBA free agency on record, with not one but two final exclamation marks.
      All week, fans frantically checked phones for updates as the Toronto Raptors battled both Los Angeles franchises for Kawhi’s signature, with the Lakers reportedly the favorite and the Clippers a distant third. But no one really knew how Kawhi was leaning, and in the end, his decision shocked the NBA and had seismic effects around the league.
      It may have even saved the entire NBA.
      The Paul George Trade Saved the Oklahoma City Thunder Franchise
      The PG trade is only the first step in what could net as many as 13 first-round picks in a masterclass rebuilding plan
      Really? The *Entire* NBA?
      Okay, well, maybe not the entire NBA.
      Two teams are obvious losers here: the Toronto Raptors and Los Angeles Lakers. Both hoped to secure Kawhi’s signature and instead walked away with nothing. Toronto is hardly a loser though, and the Larry O’Brien trophy is a lot more than nothing. The Toronto Raptors are NBA champions, and flags fly forever. Even optimistic Raps fans didn’t expect Kawhi to stick around forever, knowing the rebuild was coming sooner or later. It hurts to move on this early, but memories last a lifetime.
      The Lakers, though, were all-in on Kawhi. And sure, the Lakers have plenty of rings to their name, but they’re always pursuing #17 and haven’t even made the playoffs in six seasons. Last year was supposed to be different. LeBron James came, and everything was supposed to change. But it didn’t. LeBron was still very good, but the supporting cast wasn’t. The kids didn’t step up, the team couldn’t shoot or play much defense, and the players didn’t develop much chemistry. LeBron’s groin injury was the nail in the coffin, but the season was already lost.
      This summer everything was going to be different, again.
      The Lakers traded everything they had for Anthony Davis, including former number two picks Lonzo Ball and Brandon Ingram, first-round pick Josh Hart, and a handful of other future picks and swaps. They cleared enough cap space to add a third superstar, too. They eschewed stars like Kyrie, Kemba, Butler, and DLo, going all-in on the shiniest star of them all, Kawhi Leonard. As the Lakers waited confidently for Kawhi’s decision, every other option went by the wayside, every Plan B and C and F out the window. It was Kawhi or bust.
      Make no mistake about it: if the Lakers had gotten Kawhi’s signature on the dotted line, they would have ravaged through the NBA for the next few seasons like no team ever before.
      LeBron AND Kawhi AND Brow.
      It would have been absurd and easy and ridiculous. And boring. We just escaped five years of Warriors mania and four years of Heatles before that. And while dynasties are fun for awhile, they get old quickly. It’s only fun to root against the villain if you believe the villain can be defeated sometimes.
      LeBron, Kawhi, and Anthony Davis would’ve been invincible. That’s three of the seven most talented basketball players in the universe, and it wouldn’t have mattered one lick who played with them. The other starters could have been you and me, dear reader, and we’d have stormed through the playoffs casting off our opponents like the peons they were. Look how unbeatable the Warriors were with Steph and Durant. LeBron and Kawhi are just as good, and Brow is far more talented than the other Warriors. The healthy Ws were unbeaten in the playoffs, only even threatened in one series in three years.
      The Kawhi Lakers would have walked to the next three or four titles.
      All that exciting player movement from the last couple weeks? Meaningless. The intriguing young cores? Pointless. It would have just been Lakers, Lakers, Lakers, all exceptionalism, all day. It would’ve meant endless thinkpieces bemoaning the death of the NBA. LeBron would’ve passed Jordan in titles, all but ending the GOAT conversation. Players like Chris Paul, James Harden, Russell Westbrook, and Damian Lillard would have faded into obscurity, the end of their primes wasted while a superteam stormed through the league.
      Worse yet, the only solution would have been a second superteam in a second major market. In a couple years, Giannis Antetokounmpo and Joel Embiid would have gotten so frustrated with the lack of parity that they’d have left for greener pastures, joining the ̶K̶n̶i̶c̶k̶s̶ Nets in New York with Durant and Kyrie. The entire NBA would have been reduced to two franchises in the league’s biggest markets. We’d have waited all year for seven games in June and spent the other 358 days listening to Stephen A. Smith and Skip Bayless yell at each other from across the country, echoing from coast to coast.
      That’s what it would have meant if Kawhi had joined LeBron and Davis with the Los Angeles Lakers. It would have meant the end.
      Instead… it’s only the beginning.
      The 10 Biggest Takeaways from NBA Free Agency
      Kyrie and Durant are Nets. Kemba and Butler have new homes. The NBA has turned upside down. Let’s break it all down.
      Every team in the NBA other than the Lakers won last weekend
      Because the Lakers lost, every other team in the NBA won.
      The lack of one huge superteam favorite means every other team has a real chance now. The last nine years, that never seemed possible. And sure, it turned out to be, as long as the Warriors all got hurt or the Heat got old, then maybe that year, one other last team standing could win a title. But this is different. This is a wide open NBA.
      The Los Angeles franchises still look like favorites. But I count a whopping 10 other NBA fan bases that now have a legitimate shot at an NBA championship the next two years:
      Houston Rockets — closest to beating the Warriors the last two years, no more Warriors in their way
      Utah Jazz — added Mike Conley and Bojan Bogdanovic to their 2-time Defensive Player of the Year Rudy Gobert and Donovan Mitchell
      Denver Nuggets — a couple plays from the Western Conference Finals with a young core and a superstar in Nikola Jokic
      Portland Trail Blazers — actually made the WCF, brought back Dame and C.J., and added Hassan Whiteside and Kent Bazemore
      Golden State Warriors — don’t forget about them once Klay returns and they flip D’Angelo Russell for a better fit next to Steph and Draymond
      Philadelphia 76ers — Joel Embiid and Ben Simmons, a re-signed Tobias Harris, Al Horford and Josh Richardson in the league’s best starting five
      Milwaukee Bucks — Giannis Antetokounmpo and most of the core returning from the league’s only 60-win team
      Boston Celtics — Kemba replaces Kyrie, Hayward gets healthy, Tatum and Brown make the leap, and President Brad does the rest
      Brooklyn Nets — Kyrie and the supporting cast hang around long enough for Kevin Durant to return to full speed as the East’s top duo
      Miami Heat — Jimmy Butler in tow, South Beach, Pat Riley, and no state income tax mean a second star (Russ?!) is always on the way
      Add it all up and 12 NBA teams can legitimately win an NBA title the next two years. That’s a whopping 40% of the league! Compare that to the rest of the decade, where one team entered the season as better than 50% favorites by Vegas betting odds, with a few other teams fighting for more than a 5% chance should everything go their way.
      If Kawhi had teamed up with LeBron and Brow, they would have cleared those 50% odds with ease. Watch the contenders bounce off the list. Nuggets and Jazz? Cute, but you’re not beating that trio. Rockets? Not without a barrage of threes. Heat, Clippers, Blazers? Please. Boston? Not ready yet. Milwaukee? Not even Giannis is enough against those three.
      Golden State would have believed, once healthy. Brooklyn would’ve hoped for a chance. Philly might’ve had the best odds with the size and the defense. Everyone else would have been a pretender, like they have been for the past decade. They would’ve been reduced to a consolation run to the Western Conference Finals, like the Blazers this year. No one hangs Conference Finals banners. Few will even remember it was Portland that got there by this fall.
      Yet again, the NBA would have been reduced to one megadeath lineup and a couple weak challengers to the throne. Instead every one of those teams now sees an opening. The Lakers duo is still great. The Clippers pair might be even better. But neither looks unbeatable. Neither feels inevitable.
      The door is not just cracked. It has swung wide open.
      It’s good news for everyone else too. In a wide open race, there are a lot more buyers on the market, and sellers have been making a mint lately. Suddenly the Wizards might not feel so bad about trading Bradley Beal, and maybe the Cavs get the big Kevin Love deal they’ve been waiting on. Perhaps Victor Oladipo or Jrue Holiday is the perfect third star on one of these teams. The leftover Raptors and Thunder could net a few high picks. Blake Griffin and Nikola Vucevic might net big value for a team in need of a star big man. And with some of those teams weakened temporarily, young teams like the Wolves, Kings, and Mavs may have a path to the playoffs.
      In a wide open NBA arms race, everyone wins. Kawhi to the Clippers wasn’t just good for them. It may have saved the entire NBA the next few years.
      Well, every franchise except one.      
      The NBA Franchise HOPE Rankings      
      Hope springs eternal… for some NBA franchises. Which teams have the best outlook, and who faces only despair and gloom?      
      It’s a good thing the Lakers wear purple and gold, because they royally screwed themselves.      
      Classic Lakers exceptionalism.      
      The Lakers always have a plan. It usually mans simply being the Lakers, the sunniest locale with the celebrity fans and the history and the clout. The Lakers’ plan is to get the biggest stars because they always do. Even when they don’t, they do anyway. They got Kareem. They got Wilt. They got Shaq and Kobe. They got LeBron and Brow. They figured they’d get Kawhi too.      
      So they put all their eggs in one Kawhi basket. And certainly it would have been a heck of a basket. It would have meant #17 and #18 and 19 and 20. But the basket turned up empty. And it did so in a summer with a whole lot of other wonderful championship-winning baskets out there.      
      Instead of Kawhi, the Lakers used their cap space on… Danny Green? They ran it back with Kentavious Caldwell-Pope, JaVale McGee, and Rajon Rondo and took a flyer on DeMarcus Cousins. Basically they used cap space on Green and a bunch of guys that should’ve been available at the minimum, the same guys they could’ve signed to add with Kawhi. So they just got Danny instead of Kawhi. Woof. This was not Plan B. It wasn’t even Plan Z. It was Plan Wait-Kawhi-Didn’t-Pick-Us-But-That-Was-Our-Only-Plan-What-Do-We-Do-Now?! The Lakers never have a backup plan, because they never need one.      
      Look at the alternate options the Lakers might have considered. They could’ve tried to pair LeBron with Kyrie again, a championship-winning duo, or gone after Kemba, DLo, or Brogdon. We know LeBron plays well with an attacking guard that can create and hit shots. The Lakers have no such players. They could’ve tried to sell Durant on L.A. or gone all in on Klay, recruiting him to his father’s team. They could’ve brought in Butler to lead the defensive charge or Middleton to carry the scoring load.      
      If they didn’t want a max guy, the Lakers could’ve filled out the lineup with quality supporting players like Patrick Beverley, Trevor Ariza, Garrett Temple, Jeremy Lamb, J.J. Redick, Cory Joseph, Seth Curry, Thaddeus Young… the list goes on. With $30 million in cap room, the Lakers could’ve handpicked the best shooters and defenders to surround LeBron and Brow and build the lineup in the NBA, even without the Kawhi cheat code.      
      What do they have instead?      
      LeBron and Brow are studs. Green is a championship-caliber role player. But the other two starting spots are vacant. Kyle Kuzma is a nice bench scorer. So too Boogie Cousins at this point. The rest of the team is dreadful. Rondo, KCP, JaVale, and Caruso added nothing last year outside of a nice couple months from McGee. Jared Dudley is a nice veteran leader. Quinn Cook and Troy Daniels can shoot in an empty gym. The only rookie of note, Talen Horton-Tucker, is years away from contributing.      
      That’s it. That’s the whole roster. And with the exception of Boogie, the Lakers overpaid to get all these guys. And this roster is sort of locked in at this point, so there may not be a third star on the way. There isn’t an obvious path to max space next summer and might not be a star available anyway, and the team has nothing left to trade other than Kuzma. Everyone else on the roster already got passed over by the rest of the league, and the Lakers can’t trade any of their picks through 2026. The asset cupboard is bare.      
      Where is the defense on this team?      
      Kuzma was the worst defender on the team last year. KCP is supposed to be 3-and-D but does neither. He was the team’s second worst defender. Rondo is the worst defender of the last six years, according to 538.com. Caruso, Cook, Daniels et al are not here to play defense. LeBron plays D for a few summer weeks but was checked out last season, and he’s no longer quick enough to stay with players consistently on the perimeter. Davis is coming off the best defensive season of his career after finally playing center all year, so naturally the Lakers moved him back to the four where he’s less impactful. JaVale is fine. The Lakers will do well enough protecting the rim, but their perimeter defense will be poor, the rotations weak, and the shots allowed abysmal.      
      And where’s the shooting?      
      Oh sure, the Lakers added Troy Daniels, Alex Caruso, and Quinn Cook, all over 40% for their careers. The thing about shooting is it only helps if the guys are on the floor actually taking shots. Shooting is about volume as much as percentage. Daniels plays 15 minutes a game. Cook is in a similar range and plays awful defense. Caruso’s taken under 100 threes in his career. None of these supposed shooters will make a difference because they’re all vying to be the 8th man in the rotation.      
      As for the seven guys who will play ahead of them? All but Danny Green are under 35% threes for their career: Brow 31%, Boogie 33%, LeBron 34%, Kuzma 33%, Rondo 32%, KCP 34%. That’s the sort of shooting this team has. Green’s over 40% but notably dropped to 36% the previous three seasons before a huge spike this year. There’s little shooting efficiency and no volume on this team. Last year’s Lakers ranked 29th in the NBA on three-point percentage at 33%. Eight Lakers took more than three 3s a game; only LeBron, KCP, Rondo, and Kuzma remain. Even Green may not be open much. Why rotate off Danny when the other four defenders can just pack the paint and let the other Lakers fire away? I know you think Boogie and Brow can shoot, but their numbers say otherwise. Every time one of those two or LeBron shoots a three, it’s a win for the defense.      
      That’s the roster the Lakers have chosen to build.      
      Los Angeles began free agency tied in the bottom of the ninth with bases loaded and no outs. Instead of just trying to single or sacrifice the winning run home, they watched eight straight strikes go down the middle of the plate, took one ginormous grand slam swing that hooked foul at the last second, and struck out looking to end the game.      
      Lakers fans will tell you Kawhi was worth the wait. But there were so many other avenues that would have left the Lakers sizable favorites into the new season, even in a world with Kawhi and PG sharing the Staples Center locker room. There was a Plan B and a Plan C and D, and all of them would’ve meant everyone in the NBA chasing LeBron yet again.      
      But the Lakers swung for a grand slam when any old hit would do. They mortgaged their entire conceivable future on this window, and the Clippers just stole it out from under them.      
      This is not the end. LeBron teams always look different in April than in August. There will be buyout players, and LeBron will trade for some new teammates. James has still only lost to the Warriors and Spurs the last eight years. He’ll have a chance; he always does. But he’s an underdog now, and he should have been the favorite.    
      And it could go further south. What if LeBron can’t get back to elite status? What if Bron and Brow have nagging injuries all season? What if there’s little defense or shooting and the team looks a lot like last year? What if the weird coaching situation gets even weirder and the team doesn’t gel? Could the Lakers struggle to make the playoffs in a loaded West where all but a couple teams have a shot? Could the team be so dysfunctional yet again that their young superstar decides to walk as a free agent next summer?    
      Think about that. The Lakers traded everything for Anthony Davis and failed to build anything useful around him. He could walk next summer.
      For nothing!
      The Lakers are in far worse shape now than they were ten days ago. And they are no longer the 2019–20 championship favorites.
      The 20 Worst Contracts in the NBA
      Some players get injured. Some underperform. Some just get old. These are the worst 20 contracts in the NBA right now…
      The Los Angeles Clippers are championship favorites already, and they still have another move coming.
      So remember all that jazzmatazz about the NBA being wide open and 12 teams having a chance and this being better for everyone? As it turns out, maybe not.
      Because these Clippers are going to be really, really good.
      They’ll start Patrick Beverley and Landry Shamet at guard, two sharpshooters that excel off the ball and play smart team defense. At center will probably be Ivica Zubac, a decent enough option. Kawhi and PG form one of the best forward combos in NBA history. And behold the best bench in the NBA: Lou Williams, Rodney McGruder, Moe Harkless, JaMychal Green, and Montrezl Harrell. That bench features the two-time defending Sixth Man of the Year plus a young big that was even better last season. That’s easily the best bench unit in the NBA and means plenty of load management for Kawhi and PG and that the Clippers will come at opponents in waves in the postseason.
      The shooting and defense the Lakers lack? It’s here in droves. Kawhi and PG shoot 38% with plenty of volume. Beverley’s hit 40% three of the past four years and plays enough for that to matter. Shamet made 42% as a rookie. Lou makes 35% with volume, still better than any Laker not named Danny. That’s five regular rotation players that are good to great shooters.
      And the defense is going to be absolutely filthy. Kawhi, PG, and PBev have made 11 All-Defense teams between them. Leonard’s won Defensive Player of the Year twice, and PG was a runner-up this year. If you’re a guard or wing, you could begin a play with Kawhi on you, call for a screen and get switched onto Beverley, and then have PG come over to help. This could be one of the greatest perimeter defensive teams in NBA history.
      Look back at the last decade of NBA Finals. Think how valuable it’s been to have an elite lockdown perimeter defender to guard the LeBrons and Durants of the world. AND THE CLIPPERS HAVE TWO OF THEM.
      No team has ever been more prepared to stop LeBron. Kawhi and PG can take turns, putting everything on Brow’s shoulders. The Bucks will have the same problem, but without Anthony Davis to balance. The Rockets have no shot. Beverley can bother CP3 while Kawhi and PG take turns smothering Harden. The Sixers are by far the most interesting matchup right now with no elite wings to guard and no one small enough to stick Beverley or Lou on.
      We don’t properly value defense because it’s so hard to gauge, but this defense is going to be absolutely nasty under Doc Rivers, and the D alone puts them into the Conference Finals. Kawhi can do the rest from there.
      Remember the Celtics formula we thought would dominate for a decade? Slot in Lou Williams as the guard scorer and Beverley as the defensive jackknife. Harrell isn’t exactly Horford but steps into the big man energy role. Now replace Jaylen and Jayson with Kawhi and PG. Whew.
      There’s one other thing about this Clippers team many have not even realized.
      They’re not done yet.
      Did you notice how the Clips quietly picked up Mo Harkless on an expiring $11-million deal? Were you puzzled when L.A. overpaid McGruder and Zubac a bit on $5 and $7 million AAV contracts? That’s as close as this team gets to having bad money on its books. Kawhi and PG are worth every penny. Lou and Harrell make $14 million combined. Shamet is practically free.
      Do you know why the Clippers went out and got some decent middling contracts? Because you need to match salary in a trade, and the Clippers are not done yet. Even after the PG trade, this team remarkably still has assets. A bunch of them.
      You know how they gave up Shai Gilgeous-Alexander? They still have a young sharpshooter in Shamet. They have last year’s other first-round pick, scoring guard Jerome Robinson, and this year’s first rounder, a unicorn rim protector that shoots threes in Mfiondu Kabengele. And, somehow without anyone noticing, they managed to keep their own 2020 first rounder. They can still trade that one, and rest assured, they will.
      The Clippers are already calling around. They can offer a team an expiring Harkless deal, a young player or two, and a first-round pick for a star that wants out. That’s pretty good! If the salaries don’t quite match, they can add McGruder or Zubac as perfectly fine middling contracts. Now they can trade for a player in the $25-million range. If the star they’re getting is good enough, they can even add in Lou or Harrell to push the deal over the top.
      The third star is coming. Can I interest you in Bradley Beal or Jrue Holiday? How about a big man like Clint Capela, Steven Adams, Derrick Favors, or Myles Turner? All easily targetable adds for this team. They could go out and get Kyle Lowry or Marc Gasol at the trade deadline. Heck, they might even be able to get one of those two and then clear enough expiring salary to sign a frustrated Anthony Davis next summer. Okay, it probably won’t be Davis — though you have to admit, that’d be hilarious schaudenfreude — but there’s a third star out there coming, and they’ll be on this roster before the playoffs.
      Even without that star, the Clippers are already bigger favorites than you think. Once the other shoe drops, it will be lights out for the rest of the NBA.
      So much for an era without any superteams. The next one is already being formed right under out noses.',
    author_id: user3.id
  )
  story5.image.attach(io: file5, filename: 'story5.jpg')

  response9 = Response.create!(
    body: 'Huge changes this offseason..',
    story_id: story5.id,
    author_id: user1.id
  )

  response10 = Response.create!(
    body: 'Do the Clippers have enough to win the title this year?',
    story_id: story5.id,
    author_id: user2.id
  )

  response12 = Response.create!(
    body: 'How will the Raptors defend the title without Kawhi?',
    story_id: story5.id,
    author_id: user4.id
  )

  file6 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/2019_summer_league.jpg')
  story6 = Story.create!(
    title: '2019 NBA Vegas Summer League Blowout Preview',
    body: 'WELCOME TO THE DOG DAYS OF JULY! THE HOT DOGS ARE EATEN, the summer of soccer is nearly a wrap, even baseball is on a break. Enter NBA Summer League, which has caught on in a huge way the last few years. Every team is at Vegas Summer League (SL) again, and they’ll each play at least five games and, eventually, the NBA’s only knockout tournament.
      You don’t have time to watch all 95 games, but you might hop in for a few. But what exactly should you be watching for? Some general SL rules of thumb:
      DO watch for:
      Process over results
      Players that pop or stand out athletically (or struggle)
      Flashes, talents, moments
      Development of new skills
      Who’s too good for SL? Who doesn’t look like they belong?
      DON’T watch for:
      Game scores or individual play results
      Mistakes, as teams often purposely stretch players in unfamiliar roles
      Defense, especially team defense
      Scorers or energy bigs, always over-inflated in this setting
      Raw shooting and scoring numbers on a small sample
      Team chemistry in a me-first make-myself-look-good setting
      When in doubt, always focus on process over results. Summer League doesn’t always tell us who can play, but it often shows us who can’t. Look past the highlights and the shooting numbers. What actual skills do you see?
      Below I rank every team’s watchability from 1 to 5 stars and give you a few players and skills on each team to watch for. Keep this page bookmarked to reference as we work through NBA summer school, and check the bottom of the article for 10 games to set your DVR for. Class is now in session…
      Ranking the 2019 NBA Draft Outcomes for All 30 Teams
      The process behind all 30 NBA teams’ draft nights, ranking the outcomes from 30 to 1…
      Everything you need to know on NBA Draft Day 2019
      Upside & floor rankings, best fits, arbitrage plays, and best worst value plays…
      Summer League Watchability Rankings Cheat Sheet
      ★★★★★
      Boston, Cleveland, New Orleans
      ★★★★
      Detroit, Memphis, Minnesota, New York, Philadelphia
      ★★★
      Atlanta, Charlotte, Chicago, Golden State, Indiana, Oklahoma City, Portland, San Antonio, Washington
      ★★
      Brooklyn, Denver, Houston, Miami, Orlando, Phoenix, Sacramento, Utah
      ★
      Dallas, L.A. Clippers, L.A. Lakers, Milwaukee, Toronto
      Atlanta Hawks ★★★
      Most of the interesting Hawks will sit this out. Trae Young, Kevin Huerter, and John Collins are too good for SL, and Cam Reddish is sidelined with a muscle injury. That one’s especially disappointing as he would’ve been one of the more interesting players to watch in a new setting.
      Omari Spellman is the headliner for now. Last year’s third first-round pick struggled out of Villanova and spent most of the year in the G League. Has he cut weight and looks like more of an NBA athlete? What can he do other than shoot? Does he look ready for real NBA minutes?
      De’Andre Hunter and Bruno Fernando should play eventually, once trades clear. Fernando should dominate physically in this setting, but hopefully we’ll get to see him shoot a bit. With Hunter, watch for him to have the ball in his hands a lot. How does he do against higher level athletes? Can he get to the rim? SL is not an ideal setting for Hunter.
      Boston Celtics ★★★★★
      The Celtics should be one of the top summer watches with a ton of interesting rookies and young prospects.
      Carsen Edwards was made to dominate a setting like this. He’s going to get a lot of shots off and melt the internet some night. Let’s see how well he can get his shot off against bigger, more athletic dudes. Ditto Tremont Waters. How well can either facilitate the offense?
      Unleash the Grant Williams hype train. We already know what he can do. How does Boston use him? How many touches is he getting? Is he in the screen and roll? Who is he defending?
      What does Romeo Langford’s shot form look like? Has he learned to use both hands yet? What sort of energy does he play with and how does he fit into more of a team setting with real teammates?
      Robert Williams is in line for a much bigger role, and his archetype dominates SL with energy and athleticism. Is the Timelord ready?
      Tacko Fall and Guerschon Yabusele are more novelties than NBA players at this point, but they’ll make a great buddy cop duo.
      Brooklyn Nets ★★
      Jarrett Allen and Rodions Kurucs are on the roster, but don’t expect them to play much. Both are too good for SL.
      Dzanan Musa could be showcased for a possible trade with Brooklyn needing cap room and roster space.
      Nic Claxton is the developmental project. He’ll surely spend the year in the G League with Allen and DeAndre Jordan around. Claxton is raw but super talented and didn’t have much help at Georgia. How far away is he?
      The case against drafting rim runners
      Why rim runner is the least valuable center archetype and why Jaxson Hayes and Nic Claxton might be overrated on draft night…
      Charlotte Hornets ★★★
      This is essentially the entire Hornets roster at this point, though Malik Monk will not play. Charlotte has built their roster around grown-up players that won a lot, so they should fare well in a setting like this.
      Expect Miles Bridges to play sparingly. This isn’t his best setting and he’s too good for SL anyway. Watch his shot and dribble progression.
      P.J. Washington should dominate. How does his range extend to NBA 3? What can he do with the ball in his hands on the perimeter or dribbling? UPDATE: P.J. may not play due to his continuing foot injury.
      Devonte’ Graham has a big opportunity with Kemba and Parker gone. He was awful as a rookie and is probably playing for his NBA life. He’s competing with veteran Gonzaga PG Josh Perkins for the backup Hornets point guard role behind Terry Rozier.
      What do Cody Martin and Jalen McDaniels look like outside the Mountain West against real NBA athletes? Can either create space and get to their spot off the bounce? How do they integrate into team play?
      Dwayne Bacon, Kerwin Roach, and Arnoldas Kubolka could all have an opportunity for playing time in Charlotte this year with a good showing.
      Chicago Bulls ★★★
      Coby White is the headliner, and he should look great with all the summer space and pace. We already know he can run in transition and hit the pull-up. What does he do to improve his teammates? What’s he look like in a half-court NBA offense? Can he get to the rim? How’s his finishing?
      Can Daniel Gafford do anything besides block shots and finish alley oops?
      How far along is the Chandler Hutchison project? Is there anything to the Adam Mokoka buzz? Can Tyler Hall score with the big boys? Do not get excited about Antonio Blakeney. Classic AAAA Summer League All-Star.
      Unfortunately Wendell Carter Jr. will not play after summer surgery.
      Cleveland Cavaliers ★★★★★
      The five stars here are for Darius Garland and Kevin Porter Jr., the two most exciting rookies you’ve literally never seen play. It looks doubtful Garland plays, so that sucks. KPJ is supposed to play, but that was true all year too, so we’ll see. Can he actually play on a team? Will he show any effort on transition or defense? Porter will have best dribble and slither you see at SL, but we already know that. He can get to any spot any time. What can he do once he gets there? Has he adjusted the wonky shot form? How does he respond to coaching and mistakes?
      Speaking of which, coaching shout out to John Beilein, the rare head coach that will make his pro debut at SL. Last summer Lloyd Pierce meshed out of the gates with the Hawks and gave us some clues to how they’d use Trae Young and play going ahead. What can we learn from Beilein? How different will he look from college?
      Dylan Windler and Yovel Zoosman are interesting watches, but both will be supporting NBA players that are better on good teams. How do they look against NBA athletes? Does Zoosman look ready to come over?
      No Collin Sexton either, so with him and Garland out, if KPJ sits out a game too, knock the Cavs down to two stars for that game.
      The Pelicans, Grizzlies, and Hawks are each building something special
      New Orleans, Memphis, and Atlanta walked away from the 2019 NBA Draft with a plan and a much brighter future
      Dallas Mavericks ★
      Second rounder Isaiah Roby was one of my favorite draft sleepers, but we didn’t get to see him around real talent at Nebraska and won’t here either. Can Roby show more consistency? He’s a freak athlete that will have a couple huge highlights, but what’s he look like on the possessions in between? Does he stay engaged and play like the best player on the team?
      Josh Reaves was a sleeper favorite for some. His defense won’t translate much on this stage, but what else can he do?
      Denver Nuggets ★★
      We were finally going to get to see Michael Porter Jr. play basketball, and then he got injured *again* on the eve of Summer League and looks like he won’t play. MPJ was legitimately the #1 summer attraction. His absence dropped Denver from 5 stars to 2 stars. I don’t want to talk about it.
      Bol Bol will not play either. Get used to hearing that. We should get some looks at rebounding machine Jarred Vanderbilt plus Vlatko Cancar, another Slovenian prospect. Terence Davis is an intriguing UDFA. But it’ll be really hard to see any of these guys crack a deep Denver rotation.
      Detroit Pistons ★★★★
      For most viewers, this is a first look at Sekou Doumbouya and Deividas Sirvydis. I didn’t grade either as a first rounder, but you never know how international talent will translate. The door is open for Sekou to contribute right away if he’s ready, but as the youngest player in the draft, don’t be shocked if he struggles. Has Doumbouya’s moon shot settled down and does it look more natural? How’s his decision making coming along? How many years away is he from being 2 years away?
      Bruce Brown and Khyri Thomas have a path to real playing time for a playoff team. Brown was the best Pistons wing last year, which is damning with the faintest praise. Detroit will hope either or both of these guys look way too good for SL and get shut down early.
      Louis King has a big opportunity here too. There’s no reason he can’t beat out everyone on this list above for playing time with his raw talent. Detroit needs wing help so badly. Who will make their case?
      Finally, Henry Ellenson is gone. Praise the Lord.
      Golden State Warriors ★★★
      The Warriors roster is so thin all these guys have to play legit minutes next year. Golden State will start Steph, DLo, and Draymond, and they have plenty of centers. One of these guys might start at the three, and the rest could play serious bench roles.
      Jacob Evans was supposed to be NBA-ready out of Cincinnati last year but was so bad he couldn’t even get a few minutes when half the roster was injured in the playoffs. He has supposedly transitioned to point guard and is the Livingston replacement. Can he shoot? Dribble? Pass? Actually stay on a court? What did the G League teach him?
      Jordan Poole and Eric Paschall will be expected to contribute right away. We already know Poole can shoot from range. Can he dribble or create for anyone else? What can Paschall do besides jump? Can he finish against NBA athletes? Does the shot translate at all? How’s his foot speed look?
      Alen Smailagic was a G League stash and he’s too young to make an impact this year or probably with this iteration of the Warriors. But NBA Twitter loves him, so let’s see what the kid can do.
      There’s a real opportunity for Ky Bowman and Davon Reed, two guys I’ve long had my eye on, with a wide open roster. Bowman is signed on a 2–way. Reed is good enough to beat out Evans for a starting 3+D role.
      The NBA Franchise HOPE Rankings
      Which teams have the best outlook, and who faces only despair and gloom?
      Houston Rockets ★★
      Draft Twitter loves Shamorie Ponds. I never bought in, but Houston liked him enough to give him a three-year deal. Ponds is a combo scoring guard and could stick in the rotation if his well-rounded game translates.
      Vince Edwards and Isaiah Hartenstein could also vie for some rotation minutes on a thin roster, though neither has shown much at a pro level.
      Indiana Pacers ★★★
      A first look for many at Goga Bitadze! Goga looks ready for immediate minutes and will be the third Pacers big man. He improved by leaps and bounds this year. How does his improved foot speed and lateral ability look against better athletes? How is his touch and how far does his shooting extend? Does the rim protection translate?
      Aaron Holiday should step into a bigger role with Collison and Joseph gone, though the T.J. McConnell signing muddies the waters. Can Holiday use his quickness to offset his size deficiency? Has he learned how to finish anywhere near the rim? How’s his team creation and decision making?
      Brian Bowen returns from Australia, so it’s also a first look at him on the wing. Bowen, Alize Johnson, and Edmund Sumner could all play rotation minutes for Indiana, who plays a deep rotation and doesn’t have any real bench outside of T.J. Warren and these SL guys.
      Los Angeles Clippers ★
      This is an easy team to avoid unless you’re a Florida State fan and just can’t get enough Mfiondu Kabengele or Terance Mann. Neither is a real rotation threat this year.
      Last year’s lottery pick Jerome Robinson is the one real name to watch. He’s fighting for his future with Beverley, Shai, and Shamet all firmly ahead of him in the rotation at this point. What can he show?
      Los Angeles Lakers ★
      The Lakers need bodies but won’t find them on this roster. Talen Horton-Tucker will sit out injured, and there’s little else to get excited for.
      Zach Norvell is the best bet. He can really shoot and has some passing acumen, so he could have a shot at some time. Jordan Caroline and Aric Holman could garner some attention, but LeBron teams tend to play past-their-prime veterans, not these guys.
      Memphis Grizzlies ★★★★
      No Ja Morant or Jaren Jackson Jr., unfortunately, so we’ll have to wait to see Draft Twitter’s most exciting team play together.
      Brandon Clarke should join after his trade is completed July 6. He’ll be stretched in an uncomfortable role, with more ball in his hands than he’ll get on a real team. Can he do more with his dribble? Any move other than the spin? How’s the jumper look? If he hits a few NBA threes, NBA Twitter will melt down. And whose lives will he end with a ferocious block?
      John Konchar is 23, the adult in the room, my favorite UDFA. He’s not a scorer but does a little bit of everything else and looks like a possible glue guy at the next level. Let’s see how he hangs outside the Summit League.
      We’ll see if new Grizz DeAnthony Melton and Josh Jackson play SL. Melton was one of my favorite watches last summer, an absolute pest defensively. Jackson is also a human being that ostensibly plays basketball.
      Grayson Allen will also join July 6. Yay.
      Brandon Clarke’s defense alone is worth a top-5 NBA Draft pick
      Clarke’s athleticism and feel for the game give him superstar upside…
      Is Ja Morant really worth the #2 pick?
      Morant looks like a worthy #2 pick, but will his game translate to a winning NBA style?
      Miami Heat ★★
      Tyler Herro is the only name of note, and he’s already playing in Sacto, so get to the Heat early and cross them off your list. Miami does a great job building their summer around expanding one key player’s game, so look for Herro to play a lot like Trae Young, with a lot of the ball in his hands, plenty of decision making, and a plethora of pull-up jumpers. Expect him to look uncomfortable with mixed results, but it’ll be good for his long-term development.
      KZ Okpala should join eventually, but expect him to look very raw. He’ll be an interesting long-term Miami project. Duncan Robinson, Yante Maten, and Charles Cooke are worth a stray eye. Miami is among the league’s best at development, so these guys could get there eventually.
      Milwaukee Bucks ★
      Sterling Brown and D.J. Wilson are on the team but played legit minutes this season so don’t expect them to see much time. Wilson has come a long way in two years, and it’d be nice to see him featured a few games.
      Enjoy Fletcher Magee bombing threes. Otherwise there’s no real reason to tune in unless you’re a Notre Dame fan desperate to see Bonzie Colson and Matt Farrell play again.
      Minnesota Timberwolves ★★★★
      The new regime is prioritizing youth and development, a novel concept, and the Wolves have a bunch of interesting guys on the SL roster. Last year’s rookies Josh Okogie and Keita Bates-Diop are here but shouldn’t get a ton of time and should look very good if they do.
      Jarrett Culver is the marquee name, after July 6. Culver had a disappointing finish to his NCAA tournament. Does his athletic ability pop at all on this stage? Can he finish at the rim or through contact? Is his shot more confident, and does it fall?
      Jaylen Nowell will get buckets. Naz Reid will tantalize and frustrate. Barry Brown, Tyus Battle, and Jordan Murphy all have potential. There’s a lot of intrigue on this roster. Who stands out?
      Jarrett Culver is already good. Can he be great?
      Culver has it all — defense, creation, the mental game, and the intangibles. Does he have what it takes to be a star?
      New Orleans Pelicans ★★★★★
      ZION!! Need I say more? Zion plays R.J. Barrett in the Pelicans SL opener, and tickets are going for over $1000. Seriously.
      Jaxson Hayes and Nickeil Alexander-Walker will join this talented young core after July 6. Hayes is super raw. How quickly will he use up his 10 fouls? How are his instincts and reaction time? Has he added strength on the boards or screens? What does NAW look like with the ball in his hands making decisions? How’s his range look from the NBA arc?
      Frank Jackson is supposedly healthy again. We’ll see how that goes. He’s talented but another injury or two away from finding himself out of the league, and he could struggle to stick on a suddenly deep roster, but he also has some breakout potential.
      Zylan Cheatham, Christian Wood, Kenrich Williams, Tony Carr, and Trevon Bluiett all have varying NBA potential. We’ll see what sticks.
      New York Knicks ★★★★
      The Knicks are going to be awful, but at least they’ll be interesting.
      R.J. Barrett is the headliner. He should have some monster performances. Watch the decision making, the shooting, and the half-court offense.
      Kevin Knox should look good since SL isn’t actually real basketball. He and Barrett are going to make Knicks fans’ heads explode in an open no-defense not-actually-basketball game. Over/under 1.5 games before Knicks fans say they never wanted KD and Kyrie anyway cuz they have Knox and R.J. now?
      Mitchell Robinson is way too good for SL. He’s going to posterize some fools. And when he sits down, Kenny Wooten will pick up where he left off.
      Iggy Brazdeikis will be a fan favorite. He plays with chutzpah at all times. Can he do more with the ball in his hands? Can he create a shot?
      Minus one star for rostering Henry Ellenson. Sigh.
      Why I’m out on R.J. Barrett as an elite NBA prospect
      Barrett is one of the most naturally gifted players in the draft, so why is it so hard to see him as a star?
      Oklahoma City Thunder ★★★
      The guy to watch here is Darius Bazley, who we literally haven’t seen against NBA or even college talent yet. Bazley is a raw bundle of talent who dominated with athleticism in high school. How does he hold up physically? How is his decision making? Does he get pushed around or lost on defense? How far away does he look?
      Hamidou Diallo could intrigue. He surprised last year after a raw career at Kentucky, so what improvements has he made this summer? Can he play offense, like at all? On a scale of awful to cover your eyes, how far along is the shot? You won’t believe this, but the Thunder still need an NBA shooting guard.
      Luguentz Dort and Jawun Evans are the same non-NBA player with a good drive and unable to finish at the rim once they get there. Deonte Burton feels like a AAAA player.
      Orlando Magic ★★
      Mo Bamba has added significant muscle and is expected to play. How much stronger is he on the boards and setting screens? Do we get to see him shoot much? How are the defensive instincts (and fouls) coming along? Bamba could be a trade target now that the Magic have invested so heavily in Nikola Vucevic. Expect to see him sparingly.
      There’s not much else to see. Chuma Okeke obviously won’t play as he rehabs his knee. DaQuan Jeffries was a first rounder on my board and gets his shot here as a UDFA. I’m not optimistic on one of the worst developing teams in the NBA.
      Philadelphia 76ers ★★★
      You know how college football teams recruit stud athletes that don’t really have a position and call them “weapons”? Welcome to the Philadelphia Weapons, Zhaire Smith and Matisse Thybulle. We have no idea if these guys are NBA players or what position they’ll play, but they’re crazy fun to watch. Thybulle was one of my favorite 2019 draft sleepers and absolutely wreaks havoc on defense. Zhaire is a nuclear athlete with great instincts and was my favorite 2018 draft sleeper. Has either of them even remotely learned how to shoot or do stuff on offense? Philly has a paper thin bench and needs both of them to play a real rotation role this season.
      Philly needs shooters. Shake Milton and Marial Shayok do a lot of that.
      Christ Koumadje is really tall.
      Phoenix Suns ★★
      Normally you’d get excited for a team with two first-round rookies, but normally first-round rookies aren’t as old as your grandfather when you combine their ages. We pretty much know what Cam Johnson and Ty Jerome are at this point. So that’s something, I suppose.
      Elie Okobo and Jalen Lecque are extremely raw point guards vying for a developmental PG role on this team behind Rubio, Tyler Johnson, and Jerome. Jevon Carter could be in the mix now too. All three could be competing for one roster spot. Okobo has a pretty jumper. Lecque is a great athlete. Carter is a pit bull on defense. Can any of them do anything else?
      Deandre Ayton and Mikal Bridges are apparently too good to play SL minutes. You know what? Let’s give the Suns this one.
      DeAnthony Melton and Josh Jackson won’t be playing in Phoenix either, since they traded two picks to offload them in a salary dump for the cheapskate ownership groups. Bad teams stay bad for a reason.
      Zion Williamson is already a top-10 NBA asset
      Some NBA team is about to win a literal lottery…
      Portland Trail Blazers ★★★
      The Blazers SL team is always pretty competitive. Nassir Little headlines this year’s squad. He should excel in this wide-open format where he can freelance and play outside of UNC’s structure. How does Little’s physique and quickness compare to college? What’s the shot look like? How quick are his decisions? What happens when the game slows down?
      Anfernee Simons and Gary Trent are last year’s rookies. Can Trent do anything more than shoot yet? How has Simons grown his game after a strong finish to the season? How’s the pull-up jumper looking? We know he can score; can he create anything for teammates yet?
      Skal Labissiere and Jaylen Hoard are raw undersized big men Spiderman memes of each other. Mike Daum is literally the exact opposite, a record-breaking scorer from South Dakota State. Can Daum hang athletically? How far away are Skal and Hoard?
      Sacramento Kings ★★
      The Kings finally aren’t a marquee SL team. Marvin Bagley is on the roster but is not expected to play, and Harry Giles isn’t even on the roster. Is this team finally growing up?
      Frank Mason may barely be holding onto his roster spot at this point. He’ll be fighting off second rounders Kyle Guy and Justin James. What else can Mason show that he didn’t do at Kansas? There’s just not much there. We’ll see if that’s true of Guy too, who has overcome his size at every level. Justin James is also a player that was taken with a second-round pick.
      Minus points for having Semaj Christon, Wenyen Gabriel, and Caleb Swanigan on the roster. Nobody needs to see those guys ball ever again.
      San Antonio Spurs ★★★
      The Spurs are legendary at player development. Rest assured one or two of the guys growing up before your eyes on this roster will make an impact for San Antonio next spring. They’re always an interesting SL watch.
      One breakout candidate is Lonnie Walker, who didn’t do much as a rookie after struggling with injuries. Walker is athletic but what basketball skills has he learned in his year off? Has he added some passing and dribble creation? Have the Spurs convinced him to play defense? And does he show any natural intuition or feel for the game yet?
      My vote goes to Keldon Johnson, a frustrating player to scout at Kentucky, who might have been pigeonholed into a role he didn’t fit. What sort of role will KJ have with the Spurs? What’s he look like with the ball in his hands? Has he quickened the shot release? Does he still disappear for large stretches of the game, or can he put his stamp on the game?
      Luka Samanic was the more surprising, higher draft pick. Samanic is a Euro four that traded the usual shooting and instincts in for athletic pop. Does he have any feel for the game or will it move too fast for him?
      Quinndary Weatherspoon is another guy to keep an eye on. Q was a second-round pick and former top-100 recruit and brings a well-rounded profile without an elite talent, similar to Keldon Johnson.
      Toronto Raptors ★
      You found the single least watchable SL team. There’s nothing here. Pull up some championship highlights and check your Kawhi watch instead.
      If you insist, I hope you liked blocked shots. Sagaba Konate, Dewan Hernandez, and Chris Boucher should throw quite a block party.
      Utah Jazz ★★
      In classic Jazz form, Utah has some intriguing deep prospects that will delight basketball nerds. But as loaded as the Jazz are now, these guys won’t be cracking the rotation anytime soon.
      Tony Bradley is a former first rounder who was always going to take a few years to develop. How close does he look? Has his body filled out so he can bang physically and hold his own on the boards and in the post?
      Justin Wright-Foreman got a lot of buckets at Hofstra. Can he get buckets at SL too? He has a path to backup PG minutes with only Mudiay and Exum in his path. Miye Oni and Jarrell Brantley are intriguing second rounders on the wing, smart developmental projects.
      Washington Wizards ★★★
      Who’s the second best Wizards player asset? Cuz unless you’re a believer in John Wall, the only other options are playing on this team.
      Rui Hachimura comes with pedigree. This year’s #9 pick represents the biggest difference between the eye test and analytics. Hachimura has a great mid-range game in an old school 90s way, but can he pass or make his teammates better? Can he play defense? We may not find out at SL.
      Troy Brown was one of the youngest and rawest draft picks last summer. He showed some passing acumen and is supposed to be a point forward. Where’s he at on the development curve?
      Admiral Schofield has some real admirers, though I wonder if they’d like him as much if his name was John Jackson. Is there anything there?
      Washington needs some help at guard. Justin Robinson and Corey Davis are intriguing UDFA that could be ready for low-end NBA minutes.
      The 10 Biggest Takeaways from a Wild NBA Free Agency
      The NBA has turned upside down. Let’s break it all down.
      ',
    author_id: user3.id
  )
  story6.image.attach(io: file6, filename: 'story6.jpg')

  response13 = Response.create!(
    body: 'Zion Williamson',
    story_id: story6.id,
    author_id: user1.id
  )

  response14 = Response.create!(
    body: 'Did Zion get injured?',
    story_id: story6.id,
    author_id: user2.id
  )

  file7 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/kawhi-leonard-kd-kyrie-free-agency.jpg')
  story7 = Story.create!(
    title: 'Which 2019 NBA free agents are really worth a max contract?',
    body: 'THE 2019 NBA SILLY SEASON IS HERE, as free agency kicks off at 6pm on June 30th while news continues to leak all week. It’s a massive NBA free agency season, with Kawhi Leonard and Kevin Durant headlining a long list of stars that includes Jimmy Butler, Kyrie Irving, Kemba Walker, Klay Thompson, and many other stars. NBA teams have been hoarding cap space and clearing room for years for these guys. In the next week or two, the entire landscape of the NBA will change.
      But not every star is worth a max contract, and not all max contracts are created equal. Players can be paid a higher max to stay with their current team, and max amounts change based on years of NBA service, plus there’s the super-max. So which of these guys are actually worth the full max, and which of today’s exciting free agents will turn into tomorrow’s bad contracts?
      We’ll look at the six guys above, plus Kristaps Porzingis, D’Angelo Russell, Khris Middleton, Tobias Harris, Nikola Vucevic, and Al Horford. How many of this summer’s 12 key free agents are worth a max contract? I say only four or five. Players are almost always overpaid in free agency, but the most valuable asset in basketball is a superstar providing surplus value above even a max deal. Let’s rank all 12 in order of most to least deserving of a max contract…
      The NBA Franchise HOPE Rankings
      Hope springs eternal… for some NBA franchises. Which teams have the best outlook, and who faces only despair and gloom?
      TIER I — ANY CONTRACT THEY WANT
      1. Kawhi Leonard
      Kawhi is the best free agent on the market by such a wide margin it’s hardly even worth discussing. He is the Zion of this free agency. We’ll probably only get very good Kawhi in the regular season, something like 65 games at 4 VORP and 5 or 6 BPM, but he’s a basketball god in the playoffs, leaping to around 10 BPM and 9 VORP prorated his last three playoffs. That’s not quite LeBron but it’s as close as we’ve seen. We should be treating Kawhi’s free agency like LeBron’s. Any team that gets him is an instant title contender.
      Don’t be surprised if Kawhi doesn’t take a full 4-year max, wherever he signs. I expect either a one-year deal with a player option in Toronto (we’ll call that a 1+1) or a 2+1 in Los Angeles, with a goal of entering free agency again in two summers when he can sign the biggest max available.
      Fair value — Full max or any contract he wants
      Prediction — A one- or two-year max with a player option
      Verdict — Get him at any cost
      2. Kyrie Irving
      Surprise! Kevin Durant is not the second most valuable free agent on the market, not anymore. We’ll get back to him.
      It’s a little bizarre how little attention we are giving to a player of Irving’s value on the market. Kyrie is pretty clearly a top-15 or better player, and unlike the other biggest names, still has a big chunk of his prime left. He just turned 27, so he can still get better and provide a bunch of very good years.
      Kyrie is one of the most valuable offensive players in the league. In the last two seasons, Irving’s 6.4 OBPM ranks fifth in the NBA behind only Harden, Curry, LeBron, and Dame. He had a VORP over 4 both years, a season worthy of All-NBA consideration despite playing through a bunch of injuries in just 60 and 67 games. He is an elite offensive player and one of a handful of players in the game that can score anytime anywhere, and we already know he can do it at the highest level.
      Kyrie Irving is a franchise changer. And yes, there are questions about exactly what sort of change he brings. But I think it’s oversimplified to hoist all of Boston’s problems on his shoulders. There were young players with changing roles, questionable coaching and front office decisions, and a coach’s favorite returning from career-changing injury as a poor locker room fit. Kyrie takes some of the blame, sure, and he doesn’t appear to be the guy you want “leading” your franchise. But on the court, he can lead any team any day.
      You can find veteran leadership and balance personalities. There’s only one Kyrie, and he should command any contract he wants from any team.
      Fair value — Full max or any contract he wants
      Prediction — Full 4-year $141m max with a player option
      Verdict — Absolutely worth the risk
      TIER II — THE LONG-TERM INVESTMENT
      3. Kevin Durant
      We should probably be a little more afraid of Kevin Durant’s future than we’re letting on. John Wall tore his Achilles, and most have essentially left Wall for dead — I called him the worst contract in the NBA. Durant is better than Wall and not as dependent on athleticism, but he’s also a tall dude with a ton of mileage and a growing list of leg and foot injuries, and NBA history tells us to be very wary.
      Durant is listed as 6 9, though he’s probably closer to 7-foot. Among players 6 9 or taller in NBA history, Durant ranks top 50 in minutes played. He’s played more minutes already than Chris Webber did his whole career, more than Luol Deng or Kyle Korver. Add in two more 2500-minute regular seasons (around average) and now he’s top 25 in minutes among big men, and that’s not accounting for the many deep playoff runs either.
      Durant has more mileage than you think. He might also be 32 years old before he plays another minute, if he sits the whole year out rehabbing the Achilles. Durant is a lock to get the max somewhere, which means some team is going to pay KD $38.2 million to rehab this year. Imagine a world where Durant is only eligible to sign a one-year deal. How much would he be worth? Maybe something like $8 to $12 million, in hopes that you get a 75% Durant back in time for a playoff run? Even then, he’s only worth that to like 5–7 teams where 75% of Durant is enough to matter, and still he’s overpaid by like $30 million in that scenario.
      He’ll be back the following season, but he’ll be 32 and still only 16 months removed from an injury that usually takes years to come back from. Durant the last two seasons has been under 5 BPM and 5 VORP in the regular season, great numbers but nothing like the MVP performance he’s had in the past. Now make him a couple years older and take away 20% of his ability as an approximation of the Achilles damage and now he’s a 3 or 4 VORP player, something like top 20 and still an All-Star, but not KEVIN DURANT. Maybe he can get to old KD in the playoffs, in which he’s worth any price, but we don’t know. And we might not get to find out for 22 months.
      Durant will get the full max, and unlike Kawhi or Kyrie, he has no reason to leave a penny on the table. He’s already in the highest salary bracket, and the Achilles injury puts his future in question enough to lock in the longest, biggest contract he can find. That means a 5-year $221-million contract from the Warriors or 4 years and $164 million from anyone else. There’s more risk here than anyone would let on. Even if peak KD comes back, he opts out of the final year and misses the entire first year of the deal, so you’re paying $120 million the next three years and only get him for two of them. He has to be really good to be worth that. But it’s Kevin Durant, so he might be.
      You win in the NBA because you have a top-5 player carrying you to a title, and we know Durant can be that player. You have to give him the shot. But you’re going to overpay, and this could go very south.
      Fair value — 4 years $120 million or 5 years $155 million
      Prediction — Full 4-year $164 max, or 5/$221m in Golden State
      Verdict — Swallow hard and take the leap
      The 20 Worst Contracts in the NBA
      Some players get injured. Some underperform. Some just get old. These are the worst 20 contracts in the NBA right now…
      TIER III — WORTH A LOT, BUT NOT QUITE THE MAX
      4. Al Horford
      Al Horford is really, really good. We already know he’s awesome in the playoffs, fits almost any lineup, and terrific as a complimentary player. He’s older at age 33 but has had an excellent aging curve, having played 67+ games in all but two seasons with little per-minute decline. Horford is a versatile defender and a rounded offensive player that can pass, shoot, post, or stretch the floor. In short, he does everything a championship team wants.
      Any team in the NBA would benefit with the addition of Horford. He has a top-20 BPM the last two seasons, and he gets even better and more valuable in the playoffs where his metrics all go up and he can stay on the court in any matchup. How many big men are you certain you’d rather have in a playoff series than Al Horford? The list is super short. He is a true 16-game player, and the fact that he’s not going to get a max contract makes him all the more valuable.
      Imagine Horford as the uber-P.J. Tucker in Houston. What would he look like in the Brook Lopez role next to Giannis? Think how good Portland could be with Big Al. He’ll make any team better. You’re going to scoff at how much old man Horford makes per year on his new deal. He’ll be worth it.
      Fair value — 4 years $110 million, or 3/$95m
      Prediction — 4 years $110 million with a team option
      Verdict — Will likely be a relative bargain
      5. D’Angelo Russell (restricted FA)
      Surprise, again!
      Regular readers know I’m not the biggest D-Lo fan. I did not think he deserved an All-Star berth and have been disparaging his future contract all year. But as I studied Russell more, I see a player that might be worth the investment.
      Russell is still so young. He’s entering his age-23 season, and since most contracts are 3+1, you’re paying for ages 23, 24, and 25. Many modern point guards break out around age 24 or 25. The best is yet to come for D-Lo.
      And that’s good, because Russell has plenty to improve on. His shooting numbers are fine, but not great. His efficiency is pretty meh, with a declining free-throw rate. Are we positive Russell didn’t just get hot shooting this year? One of his biggest statistical improvements has been his 10-to-16 foot pull-up. Will his three pointer keep improving? But the biggest single step is his passing, where Russell’s doubled his assist rate since his rookie season and has quietly become one of the league’s better passers and distributors. That skill isn’t going anywhere, so if his iso scoring ability continues to improve, he’ll quickly become a top-10 point guard with room to move up from there.
      There’s one other key factor— because Russell is so young, his max contract is far less than almost everyone else on this list. His max from non-Nets teams is 4 years for $117 million, and that’s really 3/$86m since that he’d likely opt out of the final season. As quickly as the cap is rising, that means your team will be paying Russell only 20 to 25% of its cap, where most here are in the 30 to 35% range. And unlike those more expensive players, there’s every reason to believe Russell is still scratching the surface.
      Right now, Russell is not a max player. His most elite skill today is confidence. But he’s at least a league-average point guard and should keep improving. I’d say he’s worth something like $16 to $20 million right now. Add in a boost each year going forward for improvement, inflate a bit for the cost of upside, and you basically get something close to Russell’s actual max. And unlike most of the other guys on this list, there’s real potential he could improve past the value of the contract and actually provide surplus value.
      Fair value — 4 years $105 million
      Prediction — Full 4-year max $117 million
      Verdict — Probably worth the risk, with big potential surplus value',
    author_id: user3.id
  )
  story7.image.attach(io: file7, filename: 'story7.jpg')

  response15 = Response.create!(
    body: 'Back to the Lakers?',
    story_id: story7.id,
    author_id: user5.id
  )

  file8 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/early_christmas.jpeg')
  story8 = Story.create!(
    title: 'For NBA fans, the Christmas season officially started on July 6th',
    body: 'One of my earliest memories is going to a theater to watch game 7 of the 1969 Lakers-Celtics NBA Finals with my dad on closed circuit television. Since then, we have shared a life watching tennis (his first love), football, basketball, baseball and the Olympics. 50 years later, I lost my number one sports buddy.
      While I did a lot of grieving after he got sick and his quality of life deteriorated quickly over the last month of his life, it feels like an eternity has passed since his physical body finally shut down 13 days ago. Like every person, I miss my dad, thinking about all the things we might have done, and all the words left unspoken. When he needed me most, I was there for him, so I hope he ended his life in peace, surrounded by the love of his son, daughter-in-law and grandsons.
      The first time I almost felt normal was when my wife and I joined our sons and their friends for a 4th of July barbecue. On July 6th, late Saturday morning, I looked at ESPN.com, and learned of all the crazy free agency deals made by the Clippers and Lakers since the night before. In my excitement, my first reaction was to yell across the house, “Hey Dad… you’re not going to believed what happened with Kawhi Leonard!” The realization he wasn’t there brought tears.
      Beryl David Shapiro was a good-hearted guy who rooted for underdogs, like the Clippers. I used to chide him for cheering what I called “fool’s gold,” but they finally struck the mother lode. This NBA hot take is dedicated to you, Dad.
      The NBA has changed radically in the last ten years.
      If we’ve learned anything from the last ten years, it’s that the playoffs and the regular season are moving further and further apart.*
      On offense, basketball is not exactly a crap shoot so much as it has become a game of Russian roulette. Find enough good shooters, and one of them will get hot enough to kill the other team.
      The other thing title contenders have needed is an unstoppable small forward who can get a bucket in crunch time, and an elite defender who can slow down these players.
      Finally, teams need players who can shoot open three pointers and defend multiple positions, as coaching staffs have figured out how to force valuable regular season players onto the bench during a seven-game playoff series.
      7 of the last 8 championships have been won because opponents had nobody who could stop LeBron, KD, or Kawhi. The 8th time, the Warriors won the title because Andre Iguodala was able to “slow down” LeBron James (30.1 ppg, 11.3 rpg, 8.5 apg) and an injured Cavalier team while the Splash Brothers provided enough offense to win in six games.
      This could be the most competitive season in NBA history.
      With Durant injured, there are three unstoppable forces in the league (Giannis, Kawhi, LeBron) and a handful of teams with players who can slow those superstars down a little bit.
      With the way the talent has spread out, I could see any one of nine teams win the title. Here are the odds for eight of those teams.
      In the East, Milwaukee and Philadelphia look to be the class of the East this year, and the West could be insane, even to make the playoffs.
      So many teams appear to have excellent crunch time units (just my guesses here, a lot could change), although some teams will have far more depth:
      Clippers: Leonard-George-Beverly-Williams-Harrell
      Lakers: LeBron-Davis-Kuzma-Green-KCP
      Milwaukee: Giannis-Middleton-Lopez-Hill-Bledsoe
      Philadelphia: Embiid-Simmons-Horford-Harris-Richardson
      Warriors: Curry-Thompson-Russell-Green-WCS/Looney
      Houston: Harden-Paul-Gordon-Tucker-Capela
      Portland: Lillard-McCollum-Nurkic/Whiteside-Bazemore-Hood
      Utah: Mitchell-Conley-Gobert-Bogdanovic-Ingles
      Denver: Jokic-Murray-Harris-Millsap-Craig/Barton
      The battle for Los Angeles basketball supremacy may determine the NBA Title.
      My picks are based on the same criteria I used in predicting that the Warriors and Raptors were the two teams most likely to win the 2019 NBA Title.
      NBA Predictions for 2018–2019
      Which teams can really challenge the Warriors?
      medium.com
      Here is a quick summary of the teams that have a chance to win the 2020 NBA title, based on how many boxes they check.
      Tier 3 — the Longshots
      #9 Denver (2 boxes checked)
      Denver is one of those entertaining teams that is unlikely to win the West, but crazier things have happened. They’re bringing back almost every player from last year, so that continuity will help them break out of the gates fast and become a media darling in the first half of the season, just like they did last year.
      Strengths: they maximize possessions with a low turnover rate and an elite rebounding percentage (check #1), and Paul Millsap, their defensive star, is big enough and strong enough to slow down those unstoppable wings (check #2). They’re young, have a lot of depth at the wing, including a good upgrade in Jeremi Grant who was traded from the Thunder for a first round draft pick.
      Weaknesses: Aside from an incredible defensive effort early in the season, Denver was a league average defense. From December 1, 2018 until the end of the season, the Nuggets were #15 on defense. In the playoffs, they ended up 10th out of 16 teams.
      Offensively, Denver was below average in 3-point shooting (#19), and didn’t get a lot of easy baskets in transition (#15). Worst of all, their go-to guy is Jamal Murray, a high volume, low efficiency scorer who was also terrible on defense. He’s not a max level player, but he just signed an insane $170 M extension that will limit this team for the next five years.
      #8 Utah (1 box checked)
      The Mike Conley trade has fans and the media going insane. No matter how good he was (or will be next season), there’s a reason he never made an All-Star game — he was simply not quite as good as Curry, Harden, Lillard, CP3, Westbrook, and Thompson. Unless Donovan Mitchell makes a massive jump in offensive efficiency, Utah still doesn’t have a consistent closer.
      Strengths: they have an elite defense that is amplified by elite rebounding, and the defense of DPOY Rudy Gobert (check #1). The only reason I put them above Denver at #8 is because Conley will improve all their weaknesses a little, and he is more dependable in the clutch than Murray.
      Weaknesses: Utah was a league average offensive team and that’s simply not enough. They were a little below average in 3-point percentage (#18), terrible in turnovers (#27), and their closer, Mitchell, was top 12 in usage, but less efficient than D’Angelo Russell (and that’s saying a lot): 1.48 ast/to, .493 eFG%, .537 TS%.
      #7 Portland (2 boxes checked)
      Damian Lillard and CJ McCollum are just slightly better than anyone on Denver or Utah. If Nurkic can return to play at the his old level, I think they are the best dark horse bet (+3500) to sneak into the Finals. The problem is, I wouldn’t bet on them to win the title unless they somehow get home court advantage in the playoffs (they were undefeated at home against every Eastern playoff team last season).
      Strengths: Portland doesn’t turn the ball over often (#11) and they are an elite rebounding team — #5 overall %, #2 offensive % — so they don’t waste possessions (check #1). Portland was #8 in shooting three pointers at a high enough volume (check #2). They have two guards who can catch fire and close a game. It’s not quite as good as having the one unstoppable wing, but you’ve got to give them credit.
      Weaknesses: Portland was a league average defensive team and they don’t have a player who can guard the unstoppable wings that dominate the league. that’s simply not enough. Portland is forced to depend on their outside shooting, which means they’re always going to be a step below the Splash Brothers. In addition, they play at a fairly slow pace, so they don’t get a lot of cheap points in transition (#24).
      Tier 2—the Wild Cards
      NOTE: The Warriors and Rockets all seem fragile for next year. There are so many factors that can change, and if things don’t go well early in the season, each team’s GM could make some big changes. There are too many questions to place them higher or lower. And no one has any idea how the 76ers are going to look offensively.
      #6 Houston (2 boxes checked)
      Houston has brought back their team from last year, which was worse than the team the year before. But there is trouble with the coaching staff. Jeff Bzdelik, the team’s defensive specialist, may have decided to permanently retire. When he led the team in 2017, Houston had a top 5 defense. When he retired at the beginning of last season, Houston spun out of control. Between the season opener and November 30th, Houston one of the worst defenses in the league (#27). Bzdelik came back on November 5, and finally righted the ship by December as they finished out the season with an above average defense (#11 in the regular season, #6 in the playoffs). Combine that with the owner turning Mike D’Antoni into a lame duck coach and this looks like a team walking on the razor’s edge. With continuity, they could start fast and stay relevant. But if the Rockets flame out on defense, the players might tune out their coach and be headed for a fiery explosion. (At least I hope so. I’m not a fan of the flop and roll.)
      Strengths: Houston improved their shooting efficiency to become a top 10 three point shooting team (#9) that shoots at a high volume (check #1). The Rockets have two superstar guards in Harden and Paul. During the regular season, Harden draws 10+ free throws per game and becomes an unstoppable offensive force (check #2). Against elite teams in the playoffs, he can’t quite do it, but that still gives them enough to beat the Denvers and Utahs of the league.
      Weaknesses: Houston is just about average to below average in everything they do (rebounding, turnovers, fast break points), and their defense might crater without Bzdelik. Or maybe they just righted the ship without him once they got rid of Carmelo Anthony. They don’t have a real offensive threat in the post to get easy buckets, and they don’t have a defensive stopper.
      #5 Golden State (3 boxes checked)
      I would normally have the Warriors higher, even without Durant, if Klay Thompson was healthy. But there are so many unknowns. Willie Cauley-Stein could be a huge steal, as he is a young, low-usage 7-footer who can rebound and run the floor. He is a huge upgrade over Andrew Bogut, Jordan Bell and the still recovering Boogie Cousins and may be a great fit for the Warriors’ pace and space game. They also made a brilliant move in getting an asset in the Russell sign and trade, a nice consolation prize for losing Kevin Durant.
      The problem is that a Russell-Curry back court means that Stephen Curry is your best back court defender. This is a recipe for disaster, but one that should be rectified when Bob Meyers makes a deal before the trade deadline to get a more complementary two-way player.
      There are the two huge questions for the Warriors this year, and the answers to those questions give them the widest variation in outcomes of any team in the league:
      Can Thompson get back to 100% by the time the playoffs begin?
      Who can the Warriors get in exchange for D’Angelo Russell?
      If Thompson doesn’t return to 100% by the All-Star break, and they don’t get a wing on the Iguodala level, the Warriors will be a low seed and not get out of the first round.
      If Thompson does get back to 100% by the All-Star game, and they don’t get an Iguodala-level wing, the Warriors will be at mid-level (3–6) playoff seed, and be a lock to win their first playoff series. Without a second player to guard either Kawhi or LeBron, maybe they could upset one of the top two teams in the West, but not both, preventing them from reaching a sixth straight NBA Final.
      If Thompson does get back to 100% by the All-Star game, and they do get an Iguodala-level wing, the Warriors suddenly become the third best team in the NBA, and a threat to win it all. Unfortunately, they would have to beat the best two teams in the West just to get to the Finals. With a weak bench and the wear and tear required to win three straight tough series, they will be big underdogs, but they still have a shot at the title.
      Strengths: The Warriors still have the greatest three point shooter in NBA history (check #1). They are an elite team in transition (check #2). And the slimmed down Draymond Green we saw in the playoffs can play at a level where he can guard an unstoppable superstar (check #3). Their championship experience earns them the right to still be considered an elite team.
      Weaknesses: Without Durant and with injuries to Thompson and Iguodala, the Warriors’ defense slumped from elite to just pretty good. The absence of those players and the addition of Russell scares the hell out of me. Without Durant, they lose their unstoppable, high efficiency superstar, in spite of Curry’s brilliance. The Warriors’ bench looks to be even worse than it was last year, as they lost Iguodala, Cook and Cousins, while Livingston was terrible. That would leave them with a six player rotation, and only two players who are really threats from deep. Teams will keep ganging up on the Splash Brothers and dare the others to make shots, giving the Warriors a razor thin margin of error.
      #4 Philadelphia (3 boxes checked)
      Even though Philadelphia came so close to going to overtime in game 7 against Toronto, nothing about their crazy season and off season has changed my mind about them: their coach isn’t as good as the ones in Toronto, Milwaukee, Boston and maybe Brooklyn. Embiid shows no signs of getting in shape. And Ben Simmons shows no signs of even attempting a jump shot. If they could improve in any of these areas, that might be just enough to reach the NBA Finals and then have a puncher’s chance to win the title.
      Strengths: On the other hand, they signed Al Horford and that is a huge key to unlock the East by eliminating the one team (Boston) that makes them poop their pants, while getting the best guy in the league at defending Giannis (check #1). With Horford, Embiid, Simmons, and Richardson, they will have an elite defense (check #2). They are excellent in transition (#7), so the defense will turn into some easy baskets (check #3).
      Weaknesses: The loss of Redick, and Butler, and the trades that sent away Shamet, Covington and Saric have left Philadelphia with some big questions about their 3-point shooting. The 76ers have a potentially unstoppable superstar in Joel Embiid, but shoot themselves in the foot with dubious coaching and his bad conditioning and shot selection. They are also a bad team when it comes to turnovers (#25).
      Tier 1 — the Contenders
      #3 Milwaukee (4 boxes checked)
      I can’t tell you how much I hated Milwaukee’s decision to avoid the luxury tax by letting Malcolm Brogdon go. They made a huge mistake in offering Middleton crazy max money, and resigning Brook Lopez to a big contract. Their priorities were completely backwards — Brogdon was their second best player in the playoffs, followed by Middleton. Bledsoe was unplayable, and every floor spacing shooter except Brogdon, Middleton and Hill was a disaster: Ilyasova (.300 3P%), Lopez (.293 3P%), Mirotic (.289 3P%), Bledsoe (.236 3P%). They are bringing back the same team minus Brogdon, and hoping Donte DiVincenzo can hit big shots and defend in the playoffs.
      Strengths: They have a force of nature in MVP Giannis Antetokounmpo (check #1). If he can become a league average outside shooter, it won’t matter if the rest of his teammates can’t shoot. They will still have an elite defense complemented by strong defensive rebounding (check #2). They are an elite transition team (#3), so the defense will turn into some easy baskets (check #3). And they have a very low turnover rate (#7).
      Weaknesses: They shot poorly on three pointers and that isn’t going to change. If the outside shooting fails, teams have a road map to frustrate Giannis and make it hard for the Bucks to score enough points to keep pace with an elite team. Finally, in spite of their elite defense, they couldn’t stop Kawhi Leonard. Could they stop LeBron James? I think the answer may still be “no” and that’s why I dropped them to #3.
      #2 Los Angeles Lakers (4 boxes checked)
      Does it matter that the Lakers’ front office has been almost as much of a dumpster fire as it was with Jimmy Buss? Apparently not. Does it matter that Rob Pelinka is a back stabbing, political opportunist who isn’t trusted by most of the league’s GMs? Not if you give teams way more than the market value in every trade you make.
      Does it matter that Kawhi Leonard’s delayed decision cost the Lakers the chance to sign another superstar, or at least some top free agents? Who cares? They got Anthony Davis, just like I predicted back in 2017.
      Destination: Hollywood!
      (This was originally a response to a Bill Simmons column when the Ringer was on Medium.)
      medium.com
      If the Lakers can get through the regular season in one piece, they will have a shot at winning it all. And it won’t matter if they don’t have home court advantage against the Clippers because every game will be played at Staples Center!
      I’m glad I waited to publish this until after I heard of the Lakers signing Avery Bradley, because it made me think of the ways that player relationships and agent-player relationships can influence team building in the absence of a strong front office. Look at how this Lakers roster has been reshaped:
      Ties to LeBron James and/or Rich Paul: Anthony Davis, KCP, Kyle Kuzma (rumored to switch agents to Rich Paul), Rajon Rondo, and Talen Horten-Tucker
      Ties to Anthony Davis: Boogie Cousins
      Former Rob Pelinka clients: Avery Bradley and… (fingers crossed!)… Andre Iguodala. (NOTE: The Lakers have left one roster spot available.)
      Ties to Javale McGee: Quinn Cook
      Aside from Danny Green, who was overpaid a little to sign with the team, possibly seven of the team’s nine crunch time players and ten of the fifteen total roster players have previous ties with current Lakers players, agents or a past relationship with Pelinka.
      There seems to be some real planning by the Lakers this off season, unlike the trash fire created by Magic Johnson. It may not work, depending on how well players can regain some of their past form, but look at how these signings anticipate a heated playoff series with the Clippers:
      Boogie Cousins’ strength in the post could create major problems for the Clippers’ small ball center Montrezl Harrell. He was one of the big reasons the Clippers had the second best bench in the NBA last year, as he killed backup centers with his energy, rebounding and defense.
      Avery Bradley played for the Clippers last year, so he practiced every day for months against Lou Williams, the 6th Man of the Year, and the offensive engine for the team. If Bradley can guard Williams effectively, that neutralizes the Clippers biggest advantage on paper over the Lakers.
      If Andre Iguodala somehow ends up with the Lakers, just remember how well he defended Kawhi Leonard in the playoffs while battling injuries. The Lakers could stash him on the bench the entire year, letting him do rest and rehab, then have a huge defensive weapon to slow down the Clippers’ #1 option, allowing LeBron to guard the less dangerous spot up threat in Paul George.
      Strengths: They have two unstoppable superstars (check #1). With the signing of Danny Green, Avery Bradley and Alex Caruso to complement the rim protection of Davis and Javale McGee, they could have a very good defense (check #2). They were an elite transition team (#1), so the defense will turn into some easy baskets (check #3). And they imported a bunch of above average three point shooters in Green (career .404 3P%), Cook (career .418 3P%), Daniels (career .400 3P%), and Dudley (career .392 3P%), which should get the team to at least league average (check #4). Boogie Cousins signing a minimum deal is a great addition if he can get closer to his old level. But there will be games where a big post presence is still valuable, giving the team more roster flexibility during the regular season.
      Weaknesses: The Lakers have been consistently bad with turnovers, both with the ball and with the roster.The team might need a lot of time to come together, and put pressure on the team to catch up to secure a decent playoff spot. The Lakers are not built for the regular season. The poor defense of players like Rondo, Cook and Daniels will probably mean the bench will give up a lot of leads, forcing the stars to play extra minutes and increase the risk of injury. Finally, the Lakers don’t really have a Kawhi stopper (yet). LeBron might try to guard him in crunch time in a big game, but I think that time has passed.
      #1 Los Angeles Clippers (5 boxes checked)
      The Clippers pulled off the greatest trade in NBA history… since Toronto did it last year. They completely changed the balance of the league, getting two MVP-level candidates who are also two of the best three two-way players in the league who will suit up this season. Kawhi Leonard’s power play to get Paul George traded to the Clippers might make him the smartest player in the NBA.
      Once again, Jerry West proved to be a genius at team building. Who cares if the Clippers were tampering all year?
      Now this is How You Tamper!
      The story of how two Los Angeles basketball teams seem to be headed in the opposite direction.
      medium.com
      The Clippers look like the team to beat this year, based on the quality of their non-star players. Even if the duos of LeBron and Davis versus Kawhi and George even out, Lou Williams looks to be the great difference maker in crunch time (unless Avery Bradley regains his defensive prowess).
      Strengths: They have the best player in world at the moment (check #1). We need to look at what Kawhi did in the playoffs this year, even when he seemed to be playing on one leg.
      Leonard averaged 30.5 ppg, and 9.1 rpg, with 40 steals, with at least a .545 eFG%. Only one other player in history has ever done that in the playoffs… the guy in the locker room down the hall at Staples Center.
      With the signing of Leonard, George, and Beverly, L.A. should have an elite defense (check #2). They were an elite transition team (#6), so the defense will turn into a lot of easy baskets (check #3). The Clippers were also the second best three point shooting team in the league (check #4). And they have two guys who can slow down the other team’s superstar (check #5).
      The Clippers have excellent depth with an offensive machine in 6MOY Lou Williams, small ball center Montrezl Harrell (#3 in votes for the 6MOY award), and a host of solid 3-and-D guys like Green, Harkless and Chandler. Last year they had the #2 bench in the NBA, and they kept it intact. They basically turned Gallinari and Gilgeous-Alexander into Leonard and George. That is insane to consider.
      If the Clippers go from having the #27 starters (-15.9 point differential) to just being league average (approximately +0.0 point differential) they could have a total team point differential of +13.7. That’s better than the Warriors teams that won 73 games and won the title in Kevin Durant’s first year.
      Weaknesses: The Clippers only weaknesses are that they were a below average team in terms of turnovers (#19) and average in rebounding (#15). Their main weakness will be at center where they have little depth and will have trouble guarding dominant centers like Embiid, Jokic and Davis.
      We’ve got a massive present already sitting under the tree, and we can’t open it for another five months.
      As good as the Clippers look to be on paper, this still feels like the most wide open title chase since Michael Jordan retired to play baseball and the league was thrown into chaos. The top 5 teams have undergone changes that range from damaging or unpredictable (Golden State, Milwaukee and Philadelphia) to transformational (Lakers and Clippers). And if Kevin Durant comes back successfully from his Achilles’ tendon injury, there will be a top 6 of teams with a strong chance to win a title the following year.
      Besides those top teams, there are dark horses who could make some noise if everything breaks right, and a number of young rebuilding teams that have legitimate hope in making the playoffs in the near future.
      I’m already excited about next season, though sad that I won’t be able to share the craziness with my dad. As the 4th of July weekend came to an end, I poured out one more drink in his honor. Now, the long count down begins.
      *Remember the 2011 Bulls? Remember the 2014 Indiana Pacers? Remember the 2015 Hawks? Remember the 2018 Raptors? They were all #1 seeds in the playoffs. They won a combined THREE games when their season ended at the hands of LeBron James and company. At least the 2018 Rockets took the Warriors to seven games.
      A quick review of the teams that won championships:
      2011 — the Mavs went on a hot streak, shooting out of their minds on three pointers, allowing them to overcome multiple 4th quarter double digit deficits in three straight playoff series. At the time, I thought they had broken the sport and turned basketball into a crap shoot.
      2012 — the Heat won two close games against the Thunder, and turned it into a 4–1 rout on the strength of Battier’s impossible shooting for the series (.612 3P%) and Miller hitting 7 of 8 in the title clinching game. In the crucial second game, Battier hit a key three pointer while falling on his butt.
      2013 — Ray Allen saves the Heat on the greatest clutch three point shot in history.
      2014 — Danny Green earns $70,000,000.00 in future contracts by making 9 of 17 three pointers, helping the Spurs takes a 3–1 lead on the Heat, who then folded. Kawhi Leonard guards — and outplays LeBron James.
      2015 — Stephen Curry and Klay Thompson basically reinvent basketball percentages. What used to be a one-in-a-generation fluke becomes the new rule of thumb. Andre Iguodala guards, slowing down a superhuman LeBron James enough to win the Finals MVP.
      2016 — LeBron James and Kyrie Irving combine to make 14 of 26 three pointers to win games 5 and 6 and tie the series. They finally win a title for Cleveland as LeBron makes the signature play of the Finals on one end, blocking Iguodala’s breakaway layup, and Kyrie hits a game winning 25-foot three pointer on the other end. The Warriors miss 9 out of 10 three pointers in the 4th quarter.
      2017–2018 — Kevin Durant not only guards and outplays LeBron James, he hits game winning three pointers.
      2019 — Kawhi Leonard is the dominant player, the Warriors are decimated by injuries, and it still might not have mattered without Fred VanVleet making 13 of 27 three pointers in the last four games of the Finals, and 17 of 25 three pointers in the last three games of the Conference Finals.',
    author_id: user4.id
  )
  story8.image.attach(io: file8, filename: 'story8.jpg')

  response16 = Response.create!(
    body: 'WHERE IS KAWHI GOING?',
    story_id: story8.id,
    author_id: user3.id
  )

  file9 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/russell_westbrook_leaves_okc.jpg')
  story9 = Story.create!(
    title: 'Russell Westbrook Leaves OKC For Houston',
    body: 'Russell Westbrook’s 11-year tenure with the Oklahoma City Thunder came to an end on Thursday, as the former MVP was traded to the Houston Rockets in exchange for Chris Paul and draft capital.
      It’s truly the end of an era for Oklahoma City, and the news came with an unfortunate coincidence. At the time of Westbrook’s trade, the guard was hosting an actual comedy show in Tulsa.
      As you can imagine, some people had fun with that.
      Of course, it’s worth noting that Westbrook was hosting the show to benefit the “Light It Up Foundation, a non-profit founded by former Kansas State receiver and Tulsa native Tyler Lockett to help student-athletes reach college and provide Thanksgiving and Christmas meals to family.
      That Westbrook was busy running a charity event for an Oklahoma city more than 100 miles from his team’s arena while trade rumors flew should say a lot about what the state meant to Westbrook and vice versa. The city and mayor of Oklahoma City both thanked Westbrook when the news broke, as did Lockett.
      Oklahoma City Thunder guard Russell Westbrook slaps hands with fans as he leaves the floor after an NBA basketball game against the Milwaukee Bucks in which he tied the record for triple-doubles in a season in Oklahoma City, Tuesday, April 4, 2017. Oklahoma City won 110-79. (AP Photo/Sue Ogrocki)
      Russell Westbrook occupies an important place on Oklahoma City Thunder history. (AP Photo/Sue Ogrocki)
      More
      It should also say something that Westbrook still faced the crowd after the trade came to light. He took a moment to thank Oklahoma, according to Brandon ‘Scoop B’ Robinson of Heavy.
      Westbrook has a been a member of the Thunder for as long as the team has been in Oklahoma, and he won one MVP, two scoring titles, two assists titles, eight All-NBA selections and a record three seasons in which he averaged a triple-double during his 11 years there.
      He only got as far as the NBA Finals when Kevin Durant and James Harden were on the team, but that is still quite a ride.',
    author_id: user5.id
  )
  story9.image.attach(io: file9, filename: 'story9.jpg')

  file10 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/anthony_davis_demarcus_cousins.jpg')
  story10 = Story.create!(
    title: 'DeMarcus Cousins and AD Will Be Reunited Again',
    body: 'DeMarcus Cousins and Anthony Davis are set to play together again. And its a pairing that adds up in many ways.
      Cousins agreed to a one-year deal withe Los Angeles Lakers Saturday, reuniting the duo that played on the New Orleans Pelicans together in 2017-18, as well as part of the prior season.
      Up until Saturday’s deal, Cousins had been an afterthought in a hectic free agency period due to concerns over his health after only playing 30 regular-season games last season, as well as a lackluster postseason performance. But if there’s anyone for Cousins to play with to get back to his old self, it’s Davis. 
      When the pair played together in New Orleans, Cousins had one of the best years of his career. He averaged a career-high 12.9 rebounds and 5.4 assists, as well as 25.2 points a game. He also had his highest effective field goal percentage that season at 53.0. 
      Davis had a stellar season in 2017-18 as well, scoring 28.1 points a game — the highest average of his career. He also recorded his highest three-point percentage at 34 percent. 
      The chemistry could benefit the Lakers immensely. New Orleans finished with a 48-34 record and made it to the Western Conference semifinals for the first time since 2007-08 that season. While Cousins had  a season-ending Achilles tear in January of 2018 and therefore wasn’t part of the postseason run, his play with Davis was crucial to setting up the team to get to the playoffs after missing the mark the past two seasons.
      Rajon Rondo, who also signed with Los Angeles Saturday, was on that 2017-18 team as well — though his role was much smaller. 
      Davis and Cousins have proved to be a dangerous frontcourt together, bringing out the best in each other. And now LeBron James will be in the mix as well. It’s not the big three the Lakers initially hoped for with Kawhi Leonard, but nonetheless they’ve still got three All-Star talents on the roster.',
    author_id: user6.id
  )
  story10.image.attach(io: file10, filename: 'story10.jpg')

  file11 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/kobe_bryant.jpeg')
  story11= Story.create!(
    title: 'Hey Basketball',
    body: 'You all know by now. What most of you don’t know, however, is that The Cauldron almost pubbed Kobe Bryant’s retirement announcement*. Sadly, the draft was rejected. But then we decided to run it anyway. Sorry not sorry.
      (*Really not really.)
      Hey Basketball,
      From the moment
      I started stealing cash
      Out of Pops’ duffel bag
      And buying imitation
      Jordans from a gypsy woman
      In the alleys of Pistoria
      Which is in Italy
      Did you know I lived in Italy?
      I can even speak the language:
      Voglio sesso vostre orecchi
      Which means
      I love basketball
      I think.
      … Anyway
      I knew one thing was for real:
      I fell in love with you
      … The game, not the gypsy
      You, the gypsy, smelled like fish
      And gasoline
      All the time
      You put a curse on me
      Hissing through the rocks
      You used for teeth
      No.
      I fell in love with basketball
      A love so deep I bought my own ball — From a different gypsy
      Who said she’d eat my soul If I didn’t bring the other 100 lira
      By Tuesday Sometimes
      To this day
      Blood comes out of my ears
      And I wonder …
      As a six-year-old boy
      Deeply in love with you
      I never saw Byron Scott coming
      Or Adam Morrison
      And his mustache crabs I only saw myself
      Shooting until
      My arm floated away In a plume of smoke.
      And so I shot.
      I shot on every hoop.
      Three hands in my face.
      Five pump fakes from thirty feet.
      Team up five with 12 seconds left.
      Full cast on my right hand.
      Trying to make it
      In a game of lightning
      Against tiny helpless children.
      I gave you my heart
      Even though it
      Had become blackened
      By Smush Parker
      And his never-ending bulls___.
      I played through wine hangovers and jock itch
      Not because I wanted to
      But because I was gambling on the Lakers
      On the sly.
      (To win
      Obviously
      Even though it doesn’t look like that now.)
      I did everything for YOU
      Because I may have
      A borderline pathological obsession
      That should be checked out.
      Because that’s what you do
      When someone makes you pee a little when
      You think about them.
      You gave a six-year-old boy his Hornets dream
      And then ripped it away
      Like a monster
      And sent him to the Lakers instead.
      That hurt.
      Still
      I’ll always love it.
      Except Shaq
      Who can f___ a bear trap
      For all I care.
      But I can’t chuck unconsciously for much longer.
      These shameless knuckleballs
      That careen into the crowd
      Are all I have left to give.
      That and maybe
      Whipping Nick Young over the head
      With a jump rope
      As hard as I can.
      My heart can take the pounding
      My mind can handle the grind
      My knees can always be fixed
      By shady German doctors
      Named Franz and Gerbert
      Whose “licenses”
      Were written quickly on napkins
      Using a pencil
      With a Mickey Mouse eraser at the end of it
      And who probably gave me
      Blood parasites
      Without knowing it.
      But my shooting hand knows it’s time
      To say goodbye.
      And that’s OK.
      My arm is so shot
      I can barely beat an egg.
      I’m ready to let you go.
      I want you to know now
      So we can both savor every moment we have left together
      Because the distraction
      Will inevitably help the Lakers
      Keep that protected first.
      The good and the bad.
      The 81 and the 
      1-of-14.
      The Zen Master and
      Whatever Byron Scott is.
      The five rings
      That probably could’ve been six
      If Derek Fisher
      Was even fat Baron Davis.
      We have given each other
      All that we have
      Though you probably took
      No fewer than 30 years
      Off my life.
      And we both know, no matter what I do next
      I’ll always be that kid
      With the Gypsy Nike knockoffs
      Garbage can in the corner
      :19 seconds on the shot clock
      Ball in my hands
      19 … 18 …
      F___ it.
      Let ‘er rip.
      I’ll most likely come out of retirement at some point,
      ',
    author_id: user7.id
  )
  story11.image.attach(io: file11, filename: 'story11.jpg')

  response18 = Response.create!(
    body: 'KOBE',
    story_id: story11.id,
    author_id: user1.id
  )

  response19 = Response.create!(
    body: 'GOAT',
    story_id: story11.id,
    author_id: user2.id
  )

  file12 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/melo_on_the_bulls.jpg')
  story12 = Story.create!(
    title: 'I Was Going to Chicago',
    body: 'LeBron James has won three championships in 15 years.
      Dwyane Wade has won three championships in 15 years
      Carmelo Anthony has won three playoff series in 15 years.
      Anthony is painfully aware of his lack of team success relative to his friends/peers. He’ll also point out: He never had the teammates LeBron and Wade did.
      But is that partially Anthony’s fault?
      Appearing on ESPN, Anthony discussed potential opportunities to join LeBron and Wade on the Heat in 2010, Derrick Rose and Joakim Noah on the Bulls in 2014.
      LeBron (Cavaliers) and Wade (Heat) signed shorter rookie-scale extensions in 2006, allowing them to become free agents in 2010. Anthony said they urged him to do the same. Instead, Anthony locked in longer with the Nuggets. While LeBron and Wade were uniting with Chris Bosh in free agency, Anthony was stuck in Denver. Had Anthony taken the three-year extension, it could have been him – not Chris Bosh – on Miami’s big three.
      Anthony:
      We didn’t know that that was going to happen. It was just conversations at that point in time. We always said we wanted to play with each other – USA teams, world championships. We always said that, coming into the NBA as well. We don’t know that was going to come into fruition. We didn’t know even how that was going to happen. At that point in time when they brought that to me, it was just an idea.
      The Miami situation, that was just an idea. That was just at the idea stages. And I was about to sign shortly after that conversation.,
      This is spot on. Stars talk about teaming up far more than it actually happens. Anthony could have left guaranteed money on the table, but four years in advance, he had no way of knowing how it’d turn out. Players sometimes sacrifice money for winning and get neither. Anthony took the safe option, and that was totally fine.
      There’s also no guarantee the Heat would’ve been as good with Anthony instead of Bosh. Bosh proved excellent as supporting traditional stars. His defense was essential to Miami. Anthony probably wouldn’t have developed those complementary skills.
      Anthony eventually engineered a trade to the Knicks. New York was mediocre, and Anthony had a chance to leave in 2014 unrestricted free agency. He reportedly nearly chose the Bulls.
      Anthony:
      I was going to Chicago. Derrick Rose, Joakim Noah. I was there, right? I was there. And then I started getting whispers behind the scenes. “Yo, look, this person ain’t gonna be there. It ain’t really right. This and that.” And it was all of that started to come up in the midst of my decision-making. I wasn’t going to let anything cloud that. I met with New York last. They was the last team I met with, because I knew that I was ready to move on from that situation because of what I was dealing with and going through in New York. After that, I met with New York the last meeting and said, “Tell me what you’re going to do for the organization, for us to put a team together to go compete and try to win. That was my conversation with them. There was a lot of things that was promised, a lot of things that was said. And I said, “You know what? Because I belong in New York, I’m going to roll with you. I’m going to roll with you.”
      It sounds like Anthony is talking about Tom Thibodeau. The coach and management were already experiencing tension that led to Thibodeau getting fired the next year. Once again, Anthony had sound reason to pick the lesser team. He rightfully snuffed out that Chicago was soon in for major change.
      However, also once again, Anthony took the bigger contract. He keeps glossing over that.
      There’s nothing wrong with that. He’d look better by just admitting it. By saying he trusted the Knicks – the Knicks! – to build a winner, Anthony looks foolish. That’s a shame-on-him situation. Just say he took the money.
      Anthony was a very good player whose main skill, scoring, draws the largest paychecks. He also didn’t contribute much as a defender and passer. His high salary and narrow skill set made it difficult for his teams to build a winner around him.
      He could have have put himself in different situations. But many of the same people who say Anthony didn’t win enough also criticize Kevin Durant for taking an easy route to the title. It’s so hard to please that crowd.
      Anthony sounds generally satisfied with his career (at least until this last stretch). He played the role he wanted and made a lot of money. That matters.
      It’s easy to second-guess his contracts. But with different moves, we’d probably just be second-guessing a different set of circumstances.',
    author_id: user9.id
  )
  story12.image.attach(io: file12, filename: 'story12.jpg')

  file13 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/kyrie_to_the_nets.jpg')
  story13= Story.create!(
    title: 'Why We Shouldnt Underestimate Kyrie This Year',
    body: 'The Nets were the NBA’s premier underdog story last season as they leapt over .500 for the first time since 2014. Brooklyn rose from the ashes of Billy King’s disastrous Celtics trade with a plucky band of misfits and former outcasts, with D’Angelo Russell leading the organization back to the postseason. Russell is now in Golden State aiming to become an adopted Splash Brother, and Brooklyn’s “underdog” label has been shed in favor of a pair of Finals heroes. The Nets won’t sneak up on anyone as we enter the next decade.
      We’ll likely have to wait a year for the Nets to be the bully on the block in the Eastern Conference. Kevin Durant is out for the majority of 2019-20, and Brooklyn would be foolish to rush him back onto the court after he signed a four-year contract on June 30. The Clippers’ clock is ticking with Kawhi Leonard and Paul George possibly entering free agency in July 2021. The Nets don’t face such urgency, likely beginning their title window in 2020-21. 
      If we concede the Nets are unlikely championship contenders next season barring a miraculous recovery from Durant, where should we place Brooklyn in the Eastern Conference pecking order? The general consensus appears to be a touch skeptical. Kyrie and Co.’s over/under wins total was set at 45.5 for the upcoming season, just 3.5 more than their 42–40 record last year. Yet while the prognosticators have pegged Brooklyn as a mid-tier playoff team in the East, a brighter reality is likely to emerge at Barclays Center. The Nets could approach 50 wins next season, and behind Philly and Milwaukee, Brooklyn may be the third-best team in the East. Even without Durant, the Nets’ summer spending spree could pay immediate dividends.
      Much of the skepticism surrounding the Nets likely centers around Irving. The former Cavs and Celtics point guard has squandered much of the goodwill gained from his 2016 Finals heroics, forcing a trade out of Cleveland in 2017 and all-but-detonating the Celtics’ chemistry in 2018-19. A sizable segment of the basketball media has since treated Irving as a leper incapable of leading a winning squad. But don’t be so quick to bury the former No. 1 pick. Each situation is unique, and Irving has more than enough talent to turn his narrative around. Kenny Atkinson’s run-and-gun style should play to Irving’s strengths more than the structure employed by Brad Stevens. The good vibes could very well continue in Brooklyn in 2019-20 as Irving replaces Russell. 
      Chemistry questions aside, Irving is an upgrade over Russell by nearly every conceivable metric, even after D-Lo’s career year in 2018-19. Irving outscored Russell and shot better from three last season. He posted 9.1 win shares to Russell’s 5.0, and Irving sported a lower turnover rate and higher Player Efficiency Rating. This isn’t a slight to Russell, who was electric in spurts and by-all-evidence a delightful teammate despite his previous reputation. But the Ohio State product is a fringe All-Star. Irving is a clear All-NBA talent. 
      The stream of controversies out of Boston last year obscured Irving’s impressive statistical season. He averaged a career-high in assists and was one of three players to average 23-plus points per game while shooting over 40% from three, joining Steph Curry and Karl-Anthony Towns (not exactly bad company for Minnesota’s big man). As Jayson Tatum clanked midrange jumpers and Gordon Hayward limped through his return to the floor, Irving remained the team’s offensive catalyst. Boston’s season was certainly tumultuous, but Irving’s shotmaking kept the Celtics afloat. He’s one of the best bailout scorers in all of basketball. 
      Irving won’t join a hastily assembled roster similar to LeBron and the Lakers last season. The Nets have one of the league’s more intriguing young cores, with a deep collection of quality youngsters. Expect Jarrett Allen to retain a sizable share of frontcourt minutes even after Brooklyn’s signing of 31-year-old center (and apparent Durant whisperer) DeAndre Jordan. Allen showed some defensive chops in his second pro season, evolving from a simple shot swatter to a solid back-line anchor. He dabbled with stretching his game beyond the arc in his sophomore season after some serious urging from Atkinson, and increased comfortability launching from the corner will only increase his value compared to the paint-bound Jordan. Allen’s versatility and Ed Davis’ offseason departure should leave plenty of minutes for the Texas product.
      Allen’s growth was encouraging in 2018-19, yet the most promising members of Brooklyn’s young core reside in the backcourt. Both Spencer Dinwiddie and Caris LeVert should help alleviate the scoring load alongside Irving, with each player capable of starting for a host of other franchises. Dinwiddie will be a sensible backup and occasional backcourt partner for Irving. He’ll shield Irving from bigger guards with his 6’6” frame, and he has plenty of experience as a ball handler with a 24.9% usage rate in 2018-19. Irving thrived as an off-ball weapon with Cleveland, and he occasionally looked bogged down carrying a major segment of the playmaking duties in Boston. Dinwiddie will help shoulder the load.
      ,LeVert is the most exciting running mate for Irving until Durant returns. The Michigan product was one of the NBA’s premier breakout players to start 2018-19 before a leg injury kept him out from Nov. 14 through January, leading Brooklyn with 19 points per game. LeVert is a strong isolation scorer with good feel in the pick-and-roll and impressive athleticism around the tin. Brooklyn averaged 110.1 points per 100 possessions with Allen and LeVert on the floor together last season, milking the two-man game with a pair of explosive athletes. LeVert will need to improve his jumper in 2019-20, but there remains the outline of a potential All-Star, especially in the weakened Eastern Conference. With LeVert, Dinwiddie and Allen (as well as stretchy swingman Taurean Prince and sharpshooter Joe Harris) Irving has plenty of pieces for a strong season with his third franchise in four years.
      Milwaukee and Philadelphia are still the presumed crop of the East in 2019-20, and rightfully so. Giannis Antetokounmpo is perhaps the best player in basketball, and the Sixers’ roster is among the most talented in the league, especially on the defensive end. But Brooklyn could sit right behind the top two in the East. Kawhi bolted from Toronto to join Paul George in Los Angeles, and Boston will have a difficult time replacing Al Horford. Perhaps the Pacers gain a boost from Malcolm Brogdon or the Heat earn homecourt in round one with Jimmy Butler in and Hassan Whiteside out.
      Regardless, no contender has truly emerged aside from Milwaukee and Philly. Brooklyn can fill the void. Irving is an upgrade over Russell and an emerging young core has remained intact. Atkinson is among one of the conference’s top coaches; he should bring the best out his star point guard. There are plenty of skeptics regarding Irving and the Nets, but the talent is in place for a 50-win campaign. The 2019-20 season won’t be a lost one in Brooklyn, even if Durant stays on the sidelines through the postseason.',
    author_id: user10.id
  )
  story13.image.attach(io: file13, filename: 'story13.jpg')

  file14 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/jazz_win_title.jpg')
  story14= Story.create!(
    title: 'Do The Jazz Really Have a Chance at the NBA Title',
    body: 'The Jazz improved a lot this offseason by adding valuable veterans like former Grizzlies point guard Mike Conley and Bojan Bogdanovic. 
      With the Donovan Mitchell, Rudy Gobert and Joe Ingles rounding out the starting lineup, Utah is gaining popularity in the NBA title race discussion but should we consider them real contenders?
      Andrew Sharp and The Washington Posts Ben Golliver discuss the Utah’s NBA title chances, how they stack up against the Nuggets and the development of Donovan Mitchell on the Open Floor podcast. 
      Andrew Sharp: We have a question from Tanner who says, ‘Hey guys, I am a big Jazz fan and I am having a hard time understanding why you guys like the Nuggets substantially more than the Jazz? In my opinion the Jazz are better at every single position. Conley is better than Murray. Donovan Mitchell is better than Gary Harris. Joe Ingles is better than Will Barton. Bojan Bogdanovic is better than Paul Millsap. And yes I am biased, but in vacuum Jokic might be better than Rudy Gobert but if you look at their numbers when the teams play each other—Gobert tends to dominate that match up. Am I crazy to think that the Jazz have a real shot at winning the NBA title and are definitely better than the Nuggets?” What do you think Ben?
      Golliver: He is not crazy to think that they are better than the Nuggets or have a chance to win the title. I think that is in play for them. They are one of the teams I would put in the title conversation and their ceiling is very high as a team. I think his logic is fundamentally flawed though. If you go down and say this player vs. this player, position-by-position, you are missing the picture. If you looked at past Jazz rosters you can go down and think some of the players down at the bottom were worthless but look at what John Stockton did. He made them better and turned them into an entire team. He made Karl Malone The Mailman—there was no delivering happening if it wasn’t for John Stockton and I think that is a similar thing that is happening with the Denver Nuggets. It is the Jokic effect. Every one of these guys is better than what he looks like on paper because he benefits playing with Jokic. So I don’t think it is the right way to judge the Nuggets player-by-player. I think there are strong arguments to be made for either one of these teams.
      If you want to be an optimist on the Jazz , I can definitely see it. They have very high regular season win totals, they have depth, the starting lineup seems to fit very well, they addressed their biggest weaknesses and they have years of proven winning under the belts, they have a very good and smart head coach, they take the right kind of shots and they have some guys that could definitely take another step in their careers especially Donovan Mitchell who I really think is going to benefit from Mike Conley.
      At the same time, I can make a really optimistic point for Denver. They have incredible home court advantage. Jokic is an MVP-type candidate, lots of great fits centered around Jokic, could have the best offense in the league next year. The list goes on and on and ultimately, it is going to come down to health between these two teams. Maybe you can say Utah is a little bit better prepared to withstand injuries but I am not sure we are way higher on Denver.  I think he kind of mischaracterized that. I just kind of think we saw the internet falling in love with Utah and I think we were trying to point out that Denver didn’t make as many headline type moves this summer but they are still comparable and still on that same type of tier as a team like Utah even though they are not getting any attention.
      Sharp: I agree with all of that. The one thing I would add is that Denver’s depth is probably better than what Utah would be bringing to the table next season. If you look at their bench, they have Ed Davis, the internets favorite back up big, they have Jeff Green who I actually saw jogging through D.C. the other day, then they got Royce O’Neal.
      I like Denver’s bench with Monte Morris a lot. I think ultimately the difference between these two teams is going to be decided by health and the progress made by Donovan Mitchell and Jamal Murray. If Murray can really take a step forward and become fringe all-star type guy or even slightly less than that and average like 21 points per game, five or six assists for that offense and just become a little bit more consistent than the guy he was yesterday, the Nuggets could be really good offensively and good enough to give any team problems in the West.
      By the same token, if Mitchell can smooth out the edges with his game and hopefully he would have to shoulder a lesser burden than he has to over the last few years. The Jazz match up great with most of the teams in the West. A lot is going to depend on what Gobert can do in the playoffs. This team is a real threat in the West.',
    author_id: user11.id
  )
  story14.image.attach(io: file14, filename: 'story14.jpg')

  file15 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/jamal_murray_not_playing.jpg')
  story15= Story.create!(
    title: 'Jamal Murray, R.J. Barrett not playing for Team Canada in World Cup',
    body: 'You all know by now. What most of you don’t know, however, is that The Cauldron almost pubbed Kobe Bryant’s retirement announcement*. Sadly, the draft was rejected. But then we decided to run it anyway. Sorry not sorry.
      (*Really not really.)
      Hey Basketball,
      From the moment
      I started stealing cash
      Out of Pops’ duffel bag
      And buying imitation
      Jordans from a gypsy woman
      In the alleys of Pistoria
      Which is in Italy
      Did you know I lived in Italy?
      I can even speak the language:
      Voglio sesso vostre orecchi
      Which means
      I love basketball
      I think.
      … Anyway
      I knew one thing was for real:
      I fell in love with you
      … The game, not the gypsy
      You, the gypsy, smelled like fish
      And gasoline
      All the time
      You put a curse on me
      Hissing through the rocks
      You used for teeth
      No.
      I fell in love with basketball
      A love so deep I bought my own ball — From a different gypsy
      Who said she’d eat my soul If I didn’t bring the other 100 lira
      By Tuesday Sometimes
      To this day
      Blood comes out of my ears
      And I wonder …
      As a six-year-old boy
      Deeply in love with you
      I never saw Byron Scott coming
      Or Adam Morrison
      And his mustache crabs I only saw myself
      Shooting until
      My arm floated away In a plume of smoke.
      And so I shot.
      I shot on every hoop.
      Three hands in my face.
      Five pump fakes from thirty feet.
      Team up five with 12 seconds left.
      Full cast on my right hand.
      Trying to make it
      In a game of lightning
      Against tiny helpless children.
      I gave you my heart
      Even though it
      Had become blackened
      By Smush Parker
      And his never-ending bulls___.
      I played through wine hangovers and jock itch
      Not because I wanted to
      But because I was gambling on the Lakers
      On the sly.
      (To win
      Obviously
      Even though it doesn’t look like that now.)
      I did everything for YOU
      Because I may have
      A borderline pathological obsession
      That should be checked out.
      Because that’s what you do
      When someone makes you pee a little when
      You think about them.
      You gave a six-year-old boy his Hornets dream
      And then ripped it away
      Like a monster
      And sent him to the Lakers instead.
      That hurt.
      Still
      I’ll always love it.
      Except Shaq
      Who can f___ a bear trap
      For all I care.
      But I can’t chuck unconsciously for much longer.
      These shameless knuckleballs
      That careen into the crowd
      Are all I have left to give.
      That and maybe
      Whipping Nick Young over the head
      With a jump rope
      As hard as I can.
      My heart can take the pounding
      My mind can handle the grind
      My knees can always be fixed
      By shady German doctors
      Named Franz and Gerbert
      Whose “licenses”
      Were written quickly on napkins
      Using a pencil
      With a Mickey Mouse eraser at the end of it
      And who probably gave me
      Blood parasites
      Without knowing it.
      But my shooting hand knows it’s time
      To say goodbye.
      And that’s OK.
      My arm is so shot
      I can barely beat an egg.
      I’m ready to let you go.
      I want you to know now
      So we can both savor every moment we have left together
      Because the distraction
      Will inevitably help the Lakers
      Keep that protected first.
      The good and the bad.
      The 81 and the 
      1-of-14.
      The Zen Master and
      Whatever Byron Scott is.
      The five rings
      That probably could’ve been six
      If Derek Fisher
      Was even fat Baron Davis.
      We have given each other
      All that we have
      Though you probably took
      No fewer than 30 years
      Off my life.
      And we both know, no matter what I do next
      I’ll always be that kid
      With the Gypsy Nike knockoffs
      Garbage can in the corner
      :19 seconds on the shot clock
      Ball in my hands
      19 … 18 …
      F___ it.
      Let ‘er rip.
      I’ll most likely come out of retirement at some point,
      ',
    author_id: user7.id
  )
  story15.image.attach(io: file15, filename: 'story15.jpg')

  file17 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/kawhi-leonard-kevin-durant-kyrie-irving.jpg')
  story17 = Story.create!(
    title: 'The 10 Biggest Takeaways from a Wild Opening Day of NBA Free Agency',
    body: 'WELL, HOLY CRAP! 2019 NBA FREE AGENCY CAME IN LIKE A LION and roared for eight hours straight until darn near every free agent was signed before midnight struck and turned to the new league fiscal year. Kevin Durant and Kyrie Irving are Nets. Kemba Walker is a Celtic. Jimmy Butler is in Miami. Al Horford’s in Philly. And just about no one is in New York or L.A.
      It was one of the wildest days in NBA history, and the entire league looks different on July 1 than it did just one month ago. Almost everyone has signed other than the big kahuna, Kawhi Leonard, and even the minor characters are mostly gone. The NBA saw over $3 billion in contracts agreed to in its first 24 hours of free agency, which technically aren’t even over yet.
      Let’s bounce around the league and look at the 10 biggest takeaways of a wild opening day of 2019 NBA free agency…
      7 Remaining NBA Free Agents Still Worth Pursuing
      Under the radar signings like RHJ, WCS, and Delon Wright could be some of the summer’s biggest bargains
      Which 2019 NBA free agents are really worth a max contract?
      The NBA silly season is here, but which free agents are really worth the max deal, and which ones will kill their…
      
      1. The Brooklyn Nets won free agency
      Kyrie Irving and Kevin Durant are Nets. That is a real thing. It’s crazy how much of a footnote it felt by the end of the day since the Kyrie news was on lock for weeks and the Durant announcement was one of the first of the day. But it’s by far the biggest news of the day.
      In my free agency preview, I deemed only three veterans worthy of a full max contract. The Nets just got two of them, and they got them for less than the max too, since Kyrie and KD are apparently giving up some cash so their very fortunate buddy DeAndre Jordan can tag along in the least big Big Three yet.
      The best NBA duos are now Lakers and Nets, and Brooklyn’s duo have both proven it on the biggest stage. Don’t underestimate how good the Nets already are. If Kevin Durant were healthy, this would be the immediate championship favorite. Everyone had fun smack talking Kyrie Irving but he remains one of the top 10 or 12 players in the league — Giannis, Kawhi, LeBron, Steph, and Harden in some order, followed by some mix of Dame, Brow, Jokic, Kyrie, Embiid, Butler, plus Durant somewhere along the way.
      Healthy KD and Kyrie are really good, like just as good as LeBron/Brow, like just as good as LeBron/Wade. Like championship-caliber good. And it’s not just those guys. DeAndre Jordan, Jarrett Allen, and Nic Claxton are good bigs. Caris LeVert was breaking out before his injury. Spencer Dinwiddie might have been their best player in 2018–19. Garrett Temple, Joe Harris, Taurean Waller-Prince, and Rodions Kurucs are quality, versatile rotation pieces.
      Now the Nets just need to get Kyrie and KD healthy. There’s a faint whiff of early 2000s Orlando Magic here, when Tracy McGrady and Grant Hill never got healthy on the same page, never made their run. Durant won’t be healthy this year, if he plays at all. Kyrie misses 15 or 20 games a season and has missed two playoff runs.
      If the Brooklyn Nets ever get to April healthy, they may be the title favorite. But they might also get only one or two chances, if they get one at all.
      It’s a risk they had to take, certainly. But the team that wins free agency isn’t always the one that wins in June.

      2. The Warriors as we know them are dead.
      It wasn’t supposed to happen this way.
      Boogie’s quad. Durant’s Achilles. Klay’s ACL. There are no asterisks in sports, but we all know the playoffs would have played out differently with a full Warriors roster. Golden State never lost a playoff series with Steph, Klay, Draymond, and Durant healthy. And now they never will.
      Durant leaving was one thing. We knew all year that might be coming. But then, at the end of a wild night, the Warriors shocked the NBA by completing a sign-and-trade for D’Angelo Russell. His incoming max contract means the Ws are hard capped and immediately led to another move, with Golden State paying a mostly unprotected first to send Andre Iguodala to Memphis to clear salary. Shaun Livingston will be next, one way or another. Kevon Looney won’t be back. Boogie is gone. Even names like Quinn Cook and Jordan Bell will be elsewhere this fall.
      The Warriors as we know them are dead. They’ll enter this season with a three-man team of Curry, Draymond, and… D’Angelo Russell? It’s still so jarring. They’ll get Klay eventually, at which point they’ll have over $100 million committed to three guards that can’t play together. DLo wants the ball in his hands and is used to being the star, pretty much the antithesis of what made Warriors basketball so beautiful. Around those three it’ll be youngsters Jacob Evans, Jordan Poole, and Eric Paschall plus a new cast of veterans. That’s a 2.5-man team with little support in a deep, retooled West. Golden State might not even make the playoffs next season. And that’s not even taking into account the two first-round picks Golden State paid to do this or the max deal they’re giving to a guy that isn’t worth it right now.
      Losing Durant stings, but Iggy’s departure is the real death of these Warriors. His tenacity, leadership, intelligence, and defense was a key part of the best the Warriors had to offer in this run. He was part of every great Ws lineup. There’s no more Hamptons Five. No more Death Lineup. It’s over.
      The Warriors will reload. Maybe they’ll flip DLo as an asset play once Klay returns. They’re not dead. But they are dead as we know them. RIP.
      The NBA Franchise HOPE Rankings
      Hope springs eternal… for some NBA franchises. Which teams have the best outlook, and who faces only despair and gloom?
      
      3. The Lakers are ALL in on Kawhi Leonard.
      The Lakers never seem to have a Plan B. Lakers exceptionalism at its finest.
      So it’s all in on Kawhi Leonard.
      Kawhi is the only one of this summer’s 12 marquee free agents standing — and reportedly hasn’t even taken a meeting yet. The Raptors, Clippers, and Lakers are waiting. Toronto either keeps him and runs it back or plays things out without him. The Clips either get him or run it back with a fun, young roster and plenty of avenues going forward. But the Lakers have a three-man team, a bunch of cap room they moved heaven and earth to drum up, and exactly one man left worth spending it on.
      We wondered if the Lakers might sign Kyrie or Kemba to play with LeBron and Anthony Davis. We thought it might be Butler or a run at DLo, or that they might split their cap room between veterans like Patrick Beverley, Cory Joseph, Rodney Hood, or Jeremy Lamb. Nope, nope, nope, and nope. Every one of those names is off the board.
      There is no Plan B. There’s no Plan C or D or E. If Kawhi doesn’t come, the Lakers might literally have to bring back Rajon Rondo and Kentavious Caldwell-Pope. They might have to absorb someone like Jeff Teague or Goran Dragic or themselves into Austin Rivers or Iman Shumpert. And this is their starting back court!! We haven’t even thought about building depth. And some of those names will probably be signed by the time you read this, too.
      L.A. didn’t even pony up to keep Reggie Bullock, their presumed de facto two, now gone to New York. Heck, even if Kawhi signs, the Lakers STILL don’t have any guards. They’ll have Kawhi, Bron, and Brow and it probably won’t matter, but still. They’re out of options.
      I don’t think it’s hit everyone just how bad this is all going to look for the Lakers if Kawhi doesn’t come and they strike out finding a star to play with LeBron a second straight summer in a wide open year.
      
      4. Kawhi Leonard is the kingmaker.
      The Nets are a year away. The Warriors are dead. The Lakers are incomplete. The Bucks got worse. The Sixers reset. The Rockets hate each other. The league remains wide open, even with every free agent in their new home.
      And that means Kawhi Leonard is the kingmaker. Whoever gets Kawhi is the new favorite. If it’s the Lakers, duh. If it’s the Raptors, it means Danny Green too and running back a championship roster. Even if it’s the Clippers, it’s fair to like their chances now that we’ve seen what Kawhi can do with a strong supporting cast.
      The world is your oyster, Kawhi. We wait.
      The 20 Worst Contracts in the NBA
      Some players get injured. Some underperform. Some just get old. These are the worst 20 contracts in the NBA right now…
      
      5. The 76ers are zigging with everyone zagging.
      Goodbye Jimmy Butler and J.J. Redick. Hello Al Horford and Josh Richardson. And get paid, Tobias Harris.
      I love the Horford contract and hate the Harris one, and I’d rather have Richardson on his current contract than Butler on a max. The Sixers remixed their lineup again, with an even bigger, more defensive starting five of Ben Simmons, JRich, Tobias, Horford, and Joel Embiid.
      And I like it.
      I like that Philly is doing something different when the league is increasingly going smaller, focusing on offense and spacing. This is interesting! Horford and Richardson are 37% shooters and add more spacing overall than Redick and Butler — two shooters are more than one, and Butler made under one 3 per game in Philadelphia. This also means more shots for Harris, who ought to be taking the most shots in Philly now. And it means more time with the ball for Simmons and a possible Giannis role driving into more space with four willing shooters around him.
      It just feels like everyone fits better. Richardson is the willing role-playing defender Butler once deigned himself to be. Horford will be a great high-low option with Embiid. Redick isn’t there to be hunted on defense anymore; now the weakest defensive link is Harris, a much bigger, more versatile defender. The offense will be more egalitarian. The defense will be more versatile.
      This is interesting!
      Philly is back to being a wildcard. And they’re back to being fun now, too.

      6. The East is wide open.
      Who’s your pick to win the East right now?
      The Bucks got worse, losing Malcolm Brogdon and Nikola Mirotic. The Celtics downgraded from Kyrie to Kemba and have no Horford replacement. The Pacers added Brogdon and get Oladipo back in January. The Heat got Heatier with the addition of Jimmy Butler. The Nets might be the 2021 favorite but not until we know KD is back. The Raptors are dependent on Kawhi. And the Sixers are on their umpteenth iteration in the last few seasons.
      Those are the seven teams. One of them will be in next year’s Finals. But your guess is as good as mine on which of the seven it’ll be.
      For the record, my pick right now is Philadelphia… at least until Kawhi and Danny re-sign in Toronto.
      Ranking the 2019 NBA Draft Outcomes for All 30 Teams
      A look at the process behind all 30 NBA teams’ draft nights, ranking the outcomes from 30 to 1…
      
      7. The New York Knicks remain a laughingstock.
      The more things change, the more they stay the same.
      The Knicks traded Porzingis. They waived and stretched Joakim Noah. They cleared cap room and tanked all season for Zion, Kyrie, and Durant. But they didn’t win the draft lottery, and then they didn’t win the Kyrie or KD lottery either and, according to Ramon Shelburne, weren’t even willing to give Durant the full max.
      Listen, I literally wrote a whole article about the risk of signing KD off his Achilles injury. The risk is very real. But you’re the Knicks! You haven’t been relevant in 20 years!! Sometimes risk is good. Kevin Durant risk is good.
      Instead, New York “played it safe,” dropping $21 million a year on 6th-man, Julius Randle, then signing a bunch of 1+1 team-option vets in Bobby Portis, Taj Gibson, Reggie Bullock, Wayne Ellington, and Elfrid Payton. Those guys are all nice and will probably net New York some second-round picks at the deadline, and that’s fine. But not one move helps the team in any meaningful big picture way. If they weren’t going to give KD the max, at least use all that cap room to stockpile draft picks eating Andre Iguodala, Allen Crabbe, Goran Dragic, and other contracts teams. That’s four first-round picks right there the Knicks left on the table to sign a bunch of veterans just good enough to knock New York out of pole position for next #1 pick next summer.
      New York Knickerbockers forever.

      8. The Mavericks and Timberwolves were quiet free agency losers.
      Dallas thought they had a deal lined up with Miami in the Jimmy Butler sign-and-trade. Minnesota thought they were landing D’Angelo Russell and getting off one or two of their awful contracts. Then the music stopped and both were left holding their collective jockstraps.
      Dallas is one of the few teams with a bunch of cap room, even after giving out a quietly dangerous max with no team protections to Kristaps Porzingis. But they didn’t even get a sniff from any of the big free agents and now, like the Lakers, have nothing to spend it on. Minnesota fans got hopes up for life after Wiggins and KAT spent all summer recruiting DLo. Instead it looks like another year with Wiggins, Gorgui Dieng, and Jeff Teague.
      Both teams thought they had a big move lined up. Instead they got nothing while everyone around them got better. The Pelicans added J.J. Redick and Derrick Favors and look like a real playoff threat. So too the Kings, who added Trevor Ariza, Cory Joseph, and Dewayne Dedmon to their talented young core. The Clippers re-signed Patrick Beverley and might still get Kawhi. The Spurs are the Spurs. The Warriors, Thunder, Blazers, Lakers, Rockets, Nuggets, and Jazz are all clearly better. Minnesota and Dallas might be fighting for the West 12-seed, ahead of only the Suns and Grizzlies. Ouch.
      The Official 2018-19 NBA Awards
      Giannis or Harden for MVP? Trae or Luka for Rookie of the Year? Time to look back and give out some awards…
      
      9. Free agency is over before it even began.
      And just like that, free agency is essentially over. In just a few hours, the entire NBA landscape changed. And there’s almost nothing left to figure out.
      We’re still awaiting Kawhi’s decision, and Danny Green’s will follow. But the free agent pool dried up real fast after that. Boogie Cousins could still get a big short-term deal. There are other quality bigs like Kevon Looney, Kenneth Faried, and Willie Cauley-Stein. There’s a few intriguing restricted free agents like Delon Wright, Maxi Kleber, and Khem Birch. This is where we’re at already. It’s July 1st, and we’re already in talk-yourself-into-Jeff-Green range.
      NEVER talk yourself into Jeff Green.

      10. We might look back on June 30, 2019, as the beginning of the end of the Giannis Antetokounmpo era in Milwaukee.
      All we think about right now is the present.
      What’s happening with Kawhi? Who will the Lakers sign? Did the 76ers get better? How good will the Nets be? Are the Jazz really the best starting five in the NBA, and did this dude really just write a 3000-word column on free agency without even mentioning them?
      But one year from now, I wonder if we will ultimately look back on June 30, 2019, as the beginning of the end for the Giannis Antetokounmpo era in Milwaukee.
      The Bucks got definitively worse. Malcolm Brogdon was really good for them, and though he’s now overpaid and netted a future first, he’s a big loss. Brogdon was Milwaukee’s second best player in the ECF. He’s the only Bucks player that does a little bit of everything, a 50/40/90 guy that played off ball and shot the lights out. Milwaukee also lost Nikola Mirotic to Spain, and they used a first-round pick to give away a solid rotation wing in Tony Snell for cap savings they ended up not using to keep their guys.
      Milwaukee did pay to keep Khris Middleton… and paid way too much, like $100 million too much, a contract that is immediately one of the worst in the NBA. They kept Brook Lopez and George Hill, who was mostly out of the rotation until they had no other options. They already paid for Eric Bledsoe, a worse fit than Brogdon, glaringly so in the playoffs. They’ll have those four and Giannis, plus very little off the bench unless you’re a big believer in Pat Connaughton, Sterling Brown, Robin Lopez, or Ersan Ilyasova.
      Two things are undeniably true. The Bucks were not good enough this year. And they just got noticeably worse.
      There’s a third thing that’s true — Milwaukee is now locked into this roster for a long time. Middleton will be there at least four years. BroLo is signed for four. Bledsoe is, too. This is the team. This is the core. Except you know who’s not signed for four years? Giannis Antetokounmpo.
      Giannis is under contract just two more years. What happens when the Bucks don’t win 60 games again next season? What if they don’t even make the Eastern Conference Finals? What happens when Giannis looks around and sees teammates that aren’t good enough again and sees an ownership group he now knows isn’t willing to go all-in to give him the best chance to win?
      Two years from today, Giannis Antetokounmpo is a free agent. And the clock just started ticking. Loudly. ■',
      author_id: user3.id
  )
  story17.image.attach(io: file17, filename: 'story17.jpg')

  file20 = open('https://meteor-app-seeds.s3-us-west-1.amazonaws.com/durant_kyrie.jpg')
  story20 = Story.create!(
    title: 'Why the Kyrie and KD dynamic will work in Brooklyn',
    body: 'Much has been made of the lack of maturity of the two stars joining the Brooklyn Nets. Kyrie was vocally critical of the Celtic’s young players, gave questionable effort in the playoffs, and overall disappointed all of New England in his time as a Celtic. KD had a spat with Draymond that might have put his tenure with GSW over the edge. He also has gotten into it on social media with individuals, and even had ghost-accounts on Twitter to defend himself. These factors plus KD’s absence from the team in the first year has led many people to describe their marriage in Brooklyn as potentially toxic.
      There is certainly reason to believe that this has all the potential to be a nightmare. KD, Kyrie, and Deandre Jordan is a lot of personality to handle. Kenny Atkinson has been a good coach, but to players like this he has relatively little power. Kerr, Stevens, and Doc, who coached these three players, all had more success as coaches than Atkinson has had. Thus, the dynamic between these players and coach Atkinson will be critical, especially since he is one to get in player’s faces.
      Nonetheless, there are a few factors that will be important in keeping this Nets team together. It is important to remember that KD and Kyrie were viewed as outsiders to their respective teams. KD was joining a championship roster in Golden State that featured a trio of Steph, Klay, and Draymond. These guys were all in different stages of life and the team had accomplished a lot without KD. Similarly, Kyrie joined a group of young guys in Boston who, when he was injured, made it all the way to game 7 of the Eastern Conference Finals. These guys likely had the same perception as the trio in Golden State, thinking — “we can do it without him.”
      The Nets team is a completely different group of characters than those in Golden State and those in Boston. This team features a core of young players, who last year showed they can play ego-less basketball. The team showed that they are a fun group to play with and that there is a culture brewing in Brooklyn. It is important to remember that KD already has a somewhat solid relationship with Jarrett Allen and Caris Levert, who are budding stars in the league. Jarrett Allen and KD both went to UT, and KD has said that he loved Jarrett. Caris also has a previous relationship with KD, who precociously told Caris to “be ready for that moment.” Caris Levert has also referred to KD as “big brother”, further demonstrating the solid footing KD has with these young players.
      As for Kyrie, the key to his emersion with the team comes from Spencer Dinwiddie, who has been recruiting Kyrie for quite some time. The two players took a semester long seminar at Harvard Business School, developing a relationship that helped land Kyrie in Brooklyn. Spencer already knows the culture in Brooklyn, and knows his role on the team. He already played a similar role to D-Lo as a second key option in the backcourt. His friendship with Kyrie will be critical in making Kyrie feel comfortable in Brooklyn and helping Kyrie develop friendships with the rest of the Squad.
      Deandre Jordan’s presence is also a key factor for the Nets. Evidently, he has a strong friendship with KD and Kyrie. Deandre could be an X-factor on this team. He will be key to helping develop Claxton and Jarrett Allen. His mentorship will be extremely helpful. But his largest value-add will be as the adult in the room during the first year when KD is out. Clearly, he is someone that Kyrie respects and is friends with. Thus, if there are any spats with Kyrie, Deandre will in theory be able to help calm Kyrie down or talk to him rationally. Moreover, the largest swing factor in this entire Nets experiment is the relationship between both Kyrie and KD. If this falls to the ground, this can blow up in everyone’s faces. By having someone who is friends with both of them, there will hopefully be someone who can mediate any potential arguments. This is critically important as there may be a power struggle between KD and Kyrie since this will in essence be KD walking into Kyrie’s team since he is out for the first year.
      The final piece to this all working out is the Nets’ infrastructure. From the top, the ownership group of Joe Tsai and Prokorov is supportive of making these stars into worldwide icons. This is not something that many other franchsies can provide. The allure of being stars worldwide combined with making basketball in New York great and making the Barclay’s center buzz should be an exciting challenge for both KD and Kyrie. This shared goal, along with playing with friends, should be enough to keep things on the rails. Moreover, the Nets have strong leadership with both Marks and Atkinson. Although relatively unproven, this duo has proven in a short period of time that they can help build a winning culture in Brooklyn. Clearly, Marks has a strong relationships with the representatives of these players or else this would not have been able to come to fruition. There are also key pieces like Adam Harrington, a Nets assistant who used to be KD’s trainer. Overall, this is a well-run organization that will have high expectations (and thus media scrutiny), but not the expectations that would have come with playing for the Knicks in the Garden.',
    author_id: user8.id
  )
  story20.image.attach(io: file20, filename: 'story20.jpg')
end