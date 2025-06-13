-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2025 at 03:07 PM
-- Server version: 8.0.42
-- PHP Version: 7.4.3-4ubuntu2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CSV_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `netflix_movies`
--

CREATE TABLE `netflix_movies` (
  `id` varchar(20) NOT NULL,
  `title` text,
  `type` varchar(10) DEFAULT NULL,
  `description` text,
  `release_year` int DEFAULT NULL,
  `age_certification` varchar(10) DEFAULT NULL,
  `runtime` int DEFAULT NULL,
  `genres` text,
  `production_countries` text,
  `seasons` float DEFAULT NULL,
  `imdb_id` varchar(20) DEFAULT NULL,
  `imdb_score` float DEFAULT NULL,
  `imdb_votes` float DEFAULT NULL,
  `tmdb_popularity` float DEFAULT NULL,
  `tmdb_score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `netflix_movies`
--

INSERT INTO `netflix_movies` (`id`, `title`, `type`, `description`, `release_year`, `age_certification`, `runtime`, `genres`, `production_countries`, `seasons`, `imdb_id`, `imdb_score`, `imdb_votes`, `tmdb_popularity`, `tmdb_score`) VALUES
('tm100027', 'Alibaba Aur 40 Chor', 'MOVIE', 'The movie is based on the story of Ali Baba and the Forty Thieves, from the One Thousand and One Nights or Arabian Tales. The role of Ali Baba is played by Dharmendra and Hema Malini play Morjina.', 1979, NULL, 146, '[\'drama\', \'romance\', \'action\', \'fantasy\', \'family\']', '[\'SU\', \'IN\']', NULL, 'tt0079749', 6.2, 565, 2.582, 6.8),
('tm119281', 'Bonnie and Clyde', 'MOVIE', 'In the 1930s, bored waitress Bonnie Parker falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.', 1967, 'R', 110, '[\"crime\", \"drama\", \"action\"]', '[\"US\"]', NULL, 'tt0061418', 7.7, 112048, 15.687, 7.5),
('tm120801', 'The Dirty Dozen', 'MOVIE', '12 American military prisoners in World War II are ordered to infiltrate a well-guarded enemy château and kill the Nazi officers vacationing there. The soldiers, most of whom are facing death sentences for a variety of violent crimes, agree to the mission and the possible commuting of their sentences.', 1967, NULL, 150, '[\"war\", \"action\"]', '[\"GB\", \"US\"]', NULL, 'tt0061578', 7.7, 72662, 20.398, 7.6),
('tm127384', 'Monty Python and the Holy Grail', 'MOVIE', 'King Arthur, accompanied by his squire, recruits his Knights of the Round Table, including Sir Bedevere the Wise, Sir Lancelot the Brave, Sir Robin the Not-Quite-So-Brave-As-Sir-Lancelot and Sir Galahad the Pure. On the way, Arthur battles the Black Knight who, despite having had all his limbs chopped off, insists he can still fight. They reach Camelot, but Arthur decides not  to enter, as \"it is a silly place\".', 1975, 'PG', 91, '[\"fantasy\", \"action\", \"comedy\"]', '[\"GB\"]', NULL, 'tt0071853', 8.2, 534486, 15.461, 7.811),
('tm135083', 'Cairo Station', 'MOVIE', 'Qinawi, a physically challenged peddler who makes his living selling newspapers in the central Cairo train station, is obsessed by Hanuma, an attractive young woman who sells drinks. While she jokes with him about a possible relationship, she is actually in love with Abu Siri, a strong and respected porter at the station who is struggling to unionize his fellow workers to combat their boss\' exploitative and abusive treatment.', 1958, NULL, 77, '[\'drama\', \'crime\', \'comedy\']', '[\'EG\']', NULL, 'tt0051390', 7.5, 4471, 5.546, 7.3),
('tm14350', 'Alexandria… Why?', 'MOVIE', 'Set against the panoramic backdrop of war-torn Egypt, director Youssef Chahine tells a highly personal tale of love and determination. Amid the poverty, death and suffering caused by World War II, 18 year-old Yehia, retreats into a private world of fantasy and longing. Obsessed with Hollywood, he dreams of one day studying filmmaking in America, but after falling in love and discovering the lies of European occupation, Yehia profoundly reevaluates his identity and allegiances.', 1979, NULL, 133, '[\'drama\']', '[\'EG\']', NULL, 'tt0077751', 7.2, 1727, 1.37, 6),
('tm14873', 'Dirty Harry', 'MOVIE', 'When a madman dubbed \'Scorpio\' terrorizes San Francisco, hard-nosed cop, Harry Callahan – famous for his take-no-prisoners approach to law enforcement – is tasked with hunting down the psychopath. Harry eventually collars Scorpio in the process of rescuing a kidnap victim, only to see him walk on technicalities. Now, the maverick detective is determined to nail the maniac himself.', 1971, 'R', 102, '[\"thriller\", \"action\", \"crime\"]', '[\"US\"]', NULL, 'tt0066999', 7.7, 155051, 12.817, 7.5),
('tm154986', 'Deliverance', 'MOVIE', 'Intent on seeing the Cahulawassee River before it\'s turned into one huge lake, outdoor fanatic Lewis Medlock takes his friends on a river-rafting trip they\'ll never forget into the dangerous American back-country.', 1972, 'R', 109, '[\"drama\", \"action\", \"thriller\", \"european\"]', '[\"US\"]', NULL, 'tt0068473', 7.7, 107673, 10.01, 7.3),
('tm156453', 'FTA', 'MOVIE', 'A documentary about a political troupe headed by actors Jane Fonda and Donald Sutherland which traveled to towns near military bases in the US in the early 1970s. The group put on shows called \"F.T.A.\", which stood for \"F**k the Army\", and was aimed at convincing soldiers to voice their opposition to the Vietnam War, which was raging at the time. Various singers, actors and other entertainers performed antiwar songs and skits during the show.', 1972, 'R', 97, '[\'war\', \'documentation\', \'music\', \'comedy\']', '[\'US\']', NULL, 'tt0068562', 6.2, 418, 1.268, 6.1),
('tm16479', 'White Christmas', 'MOVIE', 'Two talented song-and-dance men team up after the war to become one of the hottest acts in show business. In time they befriend and become romantically involved with the beautiful Haynes sisters who comprise a sister act.', 1954, NULL, 115, '[\'romance\', \'comedy\']', '[\'US\']', NULL, 'tt0047673', 7.5, 42488, 8.915, 7.2),
('tm19608', 'The Blazing Sun', 'MOVIE', 'A rich landlord floods and destroys a village on purpose to prevent the people living there from making a profit off their crops. What he doesn\'t know is that his own daughter is in love with Ahmed, a young man from the village.', 1954, NULL, 100, '[\'crime\', \'romance\', \'drama\']', '[\'EG\']', NULL, 'tt0047500', 7.4, 1219, 2.184, 7),
('tm200475', 'Beirut, Oh Beirut', 'MOVIE', 'In the aftermath of the 1967 defeat, four young Lebanese try to figure out their places in a society whose rules seem to have changed. It proved to be an extraordinary anticipation of the civil war that would engulf the country while the film was being edited.', 1975, NULL, 110, '[\'drama\']', '[\'LB\']', NULL, 'tt0169599', 6.4, 108, 1.025, 7.2),
('tm204541', 'Dark Waters', 'MOVIE', 'Ragab, a poor sailor, returns home to Alexandria after three years of absence, during which he tried to save money to marry his one true love, Hamedah. But there\'s trouble on the harbor, and with an old friend.', 1956, NULL, 120, '[\'action\', \'drama\', \'romance\', \'thriller\']', '[\'EG\']', NULL, 'tt0049761', 6.7, 610, 0.849, 5.9),
('tm259855', 'We Are All for the Fatherland', 'MOVIE', 'After the 1978 Israeli invasion of Lebanon, children try to sing the national anthem as citizens search for hope in the war-torn South.', 1979, NULL, 74, '[\'documentation\']', '[\'LB\', \'CA\', \'FR\']', NULL, 'tt0170799', 6.1, 47, 0.6, 5.2),
('tm27298', 'Saladin the Victorious', 'MOVIE', 'Saladin, the first sultan of Egypt and Syria, leads the Muslim military campaign against the invading Christians from Europe during the Third Crusade.', 1963, NULL, 186, '[\'action\', \'drama\', \'war\', \'history\', \'romance\']', '[\'EG\']', NULL, 'tt0057357', 7.6, 2508, 4.156, 7.1),
('tm356209', 'Singapore', 'MOVIE', 'When his employee disappears in Singapore, Shyam travels from India to investigate the absence and becomes entangled in a deadly plot.', 1960, NULL, 158, '[\'drama\', \'thriller\', \'crime\']', '[\'IN\']', NULL, 'tt0268639', 6.4, 84, 0.792, 6.3),
('tm44204', 'The Guns of Navarone', 'MOVIE', 'A team of allied saboteurs are assigned an impossible mission: infiltrate an impregnable Nazi-held island and destroy the two enormous long-range field guns that prevent the rescue of 2,000 trapped British soldiers.', 1961, NULL, 158, '[\'action\', \'drama\', \'war\']', '[\'GB\', \'US\']', NULL, 'tt0054953', 7.5, 50748, 13.844, 7.3),
('tm67378', 'The Professionals', 'MOVIE', 'An arrogant Texas millionaire hires four adventurers to rescue his kidnapped wife from a notorious Mexican bandit.', 1966, 'PG-13', 117, '[\'western\', \'action\', \'european\']', '[\'US\']', NULL, 'tt0060862', 7.3, 16446, 13.123, 7.1),
('tm69997', 'Richard Pryor: Live in Concert', 'MOVIE', 'Richard Pryor delivers monologues on race, sex, family and his favorite target—himself, live at the Terrace Theatre in Long Beach, California.', 1979, 'R', 78, '[\'comedy\', \'documentation\']', '[\'US\']', NULL, 'tt0079807', 8.1, 5141, 4.718, 7.5),
('tm70993', 'Life of Brian', 'MOVIE', 'Brian Cohen is an average young Jewish man, but through a series of ridiculous events, he gains a reputation as the Messiah. When he\'s not dodging his followers or being scolded by his shrill mother, the hapless Brian has to contend with the pompous Pontius Pilate and acronym-obsessed members of a separatist movement. Rife with Monty Python\'s signature absurdity, the tale finds Brian\'s life paralleling Biblical lore, albeit with many more laughs.', 1979, 'R', 94, '[\"comedy\"]', '[\"GB\"]', NULL, 'tt0079470', 8, 395024, 17.77, 7.8),
('tm81728', 'The Land', 'MOVIE', 'Set in 1933, the mayor informs the peasants that the share of irrigation of their land will be split equally between them and feudal lord Mahmoud Bey. The peasants send Muhammad Effendi to submit a petition to the government. Then Mahmoud Bey proposes a project that would require taking part of the peasants\' lands.', 1969, NULL, 129, '[\'drama\']', '[\'EG\']', NULL, 'tt0064038', 8.1, 1958, 1.265, 8.5),
('tm84618', 'Taxi Driver', 'MOVIE', 'A mentally unstable Vietnam War veteran works as a night-time taxi driver in New York City where the perceived decadence and sleaze feed his urge for violent action.', 1976, 'R', 114, '[\"drama\", \"crime\"]', '[\"US\"]', NULL, 'tt0075314', 8.2, 808582, 40.965, 8.179),
('tm89386', 'Hitler: A Career', 'MOVIE', 'A keen chronicle of the unlikely rise to power of Adolf Hitler (1889-1945) and a dissection of the Third Reich (1933-1945), but also an analysis of mass psychology and how the desperate crowd can be deceived and shepherded to the slaughterhouse.', 1977, 'PG', 150, '[\'history\', \'documentation\', \'european\']', '[\'DE\']', NULL, 'tt0191182', 7.5, 2460, 4.305, 7.3),
('tm90896', 'The Return of the Prodigal Son', 'MOVIE', 'In this Andre Gide adaptation, an activist is released after many years in prison and returns home, shaking up established relationships among his family members at the farm governed by his strict father. Demonstrating Chahine’s eclecticism, this is an elegant melodrama, exuberant musical, layered allegory, and profound portrait of personal and political disillusionment.', 1976, NULL, 124, '[\'music\', \'drama\', \'crime\']', '[\'DZ\', \'EG\']', NULL, 'tt0074168', 7.2, 780, 1.858, 5.3),
('tm94651', 'Dostana', 'MOVIE', 'Two close friends decide to enter law enforcement, one as a police officer, the other as a lawyer, but their friendship begins to unravel when they both fall in love with the same woman.', 1980, NULL, 161, '[\'drama\', \'comedy\', \'crime\', \'romance\', \'action\']', '[\'IN\']', NULL, 'tt0080653', 2.1, 25, 3.98, 4.9),
('tm98978', 'The Blue Lagoon', 'MOVIE', 'Two small children and a ship\'s cook survive a shipwreck and find safety on an idyllic tropical island. Soon, however, the cook dies and the young boy and girl are left on their own. Days become years and Emmeline and Richard make a home for themselves surrounded by exotic creatures and nature\'s beauty. But will they ever see civilization again?', 1980, 'R', 104, '[\'romance\', \'action\', \'drama\']', '[\'US\']', NULL, 'tt0080453', 5.8, 69844, 50.324, 6.156),
('ts22164', 'Monty Python\'s Flying Circus', 'SHOW', 'A British sketch comedy series with the shows being composed of surreality, risqué or innuendo-laden humour, sight gags and observational sketches without punchlines.', 1969, 'TV-14', 30, '[\"comedy\", \"european\"]', '[\"GB\"]', 4, 'tt0063929', 8.8, 73424, 17.617, 8.306),
('ts300399', 'Five Came Back: The Reference Films', 'SHOW', 'This collection includes 12 World War II-era propaganda films — many of which are graphic and offensive — discussed in the docuseries \"Five Came Back.\"', 1945, 'TV-MA', 51, '[\"documentation\"]', '[\"US\"]', 1, NULL, NULL, NULL, 0.6, NULL),
('ts45948', 'Monty Python\'s Fliegender Zirkus', 'SHOW', 'Monty Python\'s Fliegender Zirkus consisted of two 45-minute Monty Python German television comedy specials produced by WDR for West German television. The two episodes were first broadcast in January and December 1972 and were shot entirely on film and mostly on location in Bavaria, with the first episode recorded in German and the second recorded in English and then dubbed into German.', 1972, 'TV-MA', 43, '[\'comedy\']', '[]', 1, 'tt0202477', 8.1, 2151, 1.487, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netflix_movies`
--
ALTER TABLE `netflix_movies`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
