-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 11:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduniversity`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(111) NOT NULL,
  `name` varchar(100) NOT NULL,
  `abv3` char(3) DEFAULT NULL COMMENT 'ISO 3661-1 alpha-3',
  `abv3_alt` char(3) DEFAULT NULL,
  `code` char(3) DEFAULT NULL COMMENT 'ISO 3661-1 numeric',
  `slug` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `abv3`, `abv3_alt`, `code`, `slug`) VALUES
(1, 'Afghanistan', 'AFG', NULL, '4', 'afghanistan'),
(2, 'Aland Islands', 'ALA', NULL, '248', 'aland-islands'),
(3, 'Albania', 'ALB', NULL, '8', 'albania'),
(4, 'Algeria', 'DZA', NULL, '12', 'algeria'),
(5, 'American Samoa', 'ASM', NULL, '16', 'american-samoa'),
(6, 'Andorra', 'AND', NULL, '20', 'andorra'),
(7, 'Angola', 'AGO', NULL, '24', 'angola'),
(8, 'Anguilla', 'AIA', NULL, '660', 'anguilla'),
(9, 'Antigua and Barbuda', 'ATG', NULL, '28', 'antigua-and-barbuda'),
(10, 'Argentina', 'ARG', NULL, '32', 'argentina'),
(11, 'Armenia', 'ARM', NULL, '51', 'armenia'),
(12, 'Aruba', 'ABW', NULL, '533', 'aruba'),
(13, 'Australia', 'AUS', NULL, '36', 'australia'),
(14, 'Austria', 'AUT', NULL, '40', 'austria'),
(15, 'Azerbaijan', 'AZE', NULL, '31', 'azerbaijan'),
(16, 'Bahamas', 'BHS', NULL, '44', 'bahamas'),
(17, 'Bahrain', 'BHR', NULL, '48', 'bahrain'),
(18, 'Bangladesh', 'BGD', NULL, '50', 'bangladesh'),
(19, 'Barbados', 'BRB', NULL, '52', 'barbados'),
(20, 'Belarus', 'BLR', NULL, '112', 'belarus'),
(21, 'Belgium', 'BEL', NULL, '56', 'belgium'),
(22, 'Belize', 'BLZ', NULL, '84', 'belize'),
(23, 'Benin', 'BEN', NULL, '204', 'benin'),
(24, 'Bermuda', 'BMU', NULL, '60', 'bermuda'),
(25, 'Bhutan', 'BTN', NULL, '64', 'bhutan'),
(26, 'Bolivia', 'BOL', NULL, '68', 'bolivia'),
(27, 'Bosnia and Herzegovina', 'BIH', NULL, '70', 'bosnia-and-herzegovina'),
(28, 'Botswana', 'BWA', NULL, '72', 'botswana'),
(29, 'Brazil', 'BRA', NULL, '76', 'brazil'),
(30, 'British Virgin Islands', 'VGB', NULL, '92', 'british-virgin-islands'),
(31, 'Brunei Darussalam', 'BRN', NULL, '96', 'brunei-darussalam'),
(32, 'Bulgaria', 'BGR', NULL, '100', 'bulgaria'),
(33, 'Burkina Faso', 'BFA', NULL, '854', 'burkina-faso'),
(34, 'Burundi', 'BDI', NULL, '108', 'burundi'),
(35, 'Cambodia', 'KHM', NULL, '116', 'cambodia'),
(36, 'Cameroon', 'CMR', NULL, '120', 'cameroon'),
(37, 'Canada', 'CAN', NULL, '124', 'canada'),
(38, 'Cape Verde', 'CPV', NULL, '132', 'cape-verde'),
(39, 'Cayman Islands', 'CYM', NULL, '136', 'cayman-islands'),
(40, 'Central African Republic', 'CAF', NULL, '140', 'central-african-republic'),
(41, 'Chad', 'TCD', NULL, '148', 'chad'),
(42, 'Chile', 'CHL', 'CHI', '152', 'chile'),
(43, 'China', 'CHN', NULL, '156', 'china'),
(44, 'Colombia', 'COL', NULL, '170', 'colombia'),
(45, 'Comoros', 'COM', NULL, '174', 'comoros'),
(46, 'Congo', 'COG', NULL, '178', 'congo'),
(47, 'Cook Islands', 'COK', NULL, '184', 'cook-islands'),
(48, 'Costa Rica', 'CRI', NULL, '188', 'costa-rica'),
(49, 'Cote d\'Ivoire', 'CIV', NULL, '384', 'cote-divoire'),
(50, 'Croatia', 'HRV', NULL, '191', 'croatia'),
(51, 'Cuba', 'CUB', NULL, '192', 'cuba'),
(52, 'Cyprus', 'CYP', NULL, '196', 'cyprus'),
(53, 'Czech Republic', 'CZE', NULL, '203', 'czech-republic'),
(54, 'Democratic Republic of the Congo', 'COD', NULL, '180', 'democratic-republic-of-congo'),
(55, 'Denmark', 'DNK', NULL, '208', 'denmark'),
(56, 'Djibouti', 'DJI', NULL, '262', 'djibouti'),
(57, 'Dominica', 'DMA', NULL, '212', 'dominica'),
(58, 'Dominican Republic', 'DOM', NULL, '214', 'dominican-republic'),
(59, 'Ecuador', 'ECU', NULL, '218', 'ecuador'),
(60, 'Egypt', 'EGY', NULL, '818', 'egypt'),
(61, 'El Salvador', 'SLV', NULL, '222', 'el-salvador'),
(62, 'Equatorial Guinea', 'GNQ', NULL, '226', 'equatorial-guinea'),
(63, 'Eritrea', 'ERI', NULL, '232', 'eritrea'),
(64, 'Estonia', 'EST', NULL, '233', 'estonia'),
(65, 'Ethiopia', 'ETH', NULL, '231', 'ethiopia'),
(66, 'Faeroe Islands', 'FRO', NULL, '234', 'faeroe-islands'),
(67, 'Falkland Islands', 'FLK', NULL, '238', 'falkland-islands'),
(68, 'Fiji', 'FJI', NULL, '242', 'fiji'),
(69, 'Finland', 'FIN', NULL, '246', 'finland'),
(70, 'France', 'FRA', NULL, '250', 'france'),
(71, 'French Guiana', 'GUF', NULL, '254', 'french-guiana'),
(72, 'French Polynesia', 'PYF', NULL, '258', 'french-polynesia'),
(73, 'Gabon', 'GAB', NULL, '266', 'gabon'),
(74, 'Gambia', 'GMB', NULL, '270', 'gambia'),
(75, 'Georgia', 'GEO', NULL, '268', 'georgia'),
(76, 'Germany', 'DEU', NULL, '276', 'germany'),
(77, 'Ghana', 'GHA', NULL, '288', 'ghana'),
(78, 'Gibraltar', 'GIB', NULL, '292', 'gibraltar'),
(79, 'Greece', 'GRC', NULL, '300', 'greece'),
(80, 'Greenland', 'GRL', NULL, '304', 'greenland'),
(81, 'Grenada', 'GRD', NULL, '308', 'grenada'),
(82, 'Guadeloupe', 'GLP', NULL, '312', 'guadeloupe'),
(83, 'Guam', 'GUM', NULL, '316', 'guam'),
(84, 'Guatemala', 'GTM', NULL, '320', 'guatemala'),
(85, 'Guernsey', 'GGY', NULL, '831', 'guernsey'),
(86, 'Guinea', 'GIN', NULL, '324', 'guinea'),
(87, 'Guinea-Bissau', 'GNB', NULL, '624', 'guinea-bissau'),
(88, 'Guyana', 'GUY', NULL, '328', 'guyana'),
(89, 'Haiti', 'HTI', NULL, '332', 'haiti'),
(90, 'Holy See', 'VAT', NULL, '336', 'holy-see'),
(91, 'Honduras', 'HND', NULL, '340', 'honduras'),
(92, 'Hong Kong', 'HKG', NULL, '344', 'hong-kong'),
(93, 'Hungary', 'HUN', NULL, '348', 'hungary'),
(94, 'Iceland', 'ISL', NULL, '352', 'iceland'),
(95, 'India', 'IND', NULL, '356', 'india'),
(96, 'Indonesia', 'IDN', NULL, '360', 'indonesia'),
(97, 'Iran', 'IRN', NULL, '364', 'iran'),
(98, 'Iraq', 'IRQ', NULL, '368', 'iraq'),
(99, 'Ireland', 'IRL', NULL, '372', 'ireland'),
(100, 'Isle of Man', 'IMN', NULL, '833', 'isle-of-man'),
(101, 'Israel', 'ISR', NULL, '376', 'israel'),
(102, 'Italy', 'ITA', NULL, '380', 'italy'),
(103, 'Jamaica', 'JAM', NULL, '388', 'jamaica'),
(104, 'Japan', 'JPN', NULL, '392', 'japan'),
(105, 'Jersey', 'JEY', NULL, '832', 'jersey'),
(106, 'Jordan', 'JOR', NULL, '400', 'jordan'),
(107, 'Kazakhstan', 'KAZ', NULL, '398', 'kazakhstan'),
(108, 'Kenya', 'KEN', NULL, '404', 'kenya'),
(109, 'Kiribati', 'KIR', NULL, '296', 'kiribati'),
(110, 'Kuwait', 'KWT', NULL, '414', 'kuwait'),
(111, 'Kyrgyzstan', 'KGZ', NULL, '417', 'kyrgyzstan'),
(112, 'Laos', 'LAO', NULL, '418', 'laos'),
(113, 'Latvia', 'LVA', NULL, '428', 'latvia'),
(114, 'Lebanon', 'LBN', NULL, '422', 'lebanon'),
(115, 'Lesotho', 'LSO', NULL, '426', 'lesotho'),
(116, 'Liberia', 'LBR', NULL, '430', 'liberia'),
(117, 'Libyan Arab Jamahiriya', 'LBY', NULL, '434', 'libyan-arab-jamahiriya'),
(118, 'Liechtenstein', 'LIE', NULL, '438', 'liechtenstein'),
(119, 'Lithuania', 'LTU', NULL, '440', 'lithuania'),
(120, 'Luxembourg', 'LUX', NULL, '442', 'luxembourg'),
(121, 'Macao', 'MAC', NULL, '446', 'macao'),
(122, 'Macedonia', 'MKD', NULL, '807', 'macedonia'),
(123, 'Madagascar', 'MDG', NULL, '450', 'madagascar'),
(124, 'Malawi', 'MWI', NULL, '454', 'malawi'),
(125, 'Malaysia', 'MYS', NULL, '458', 'malaysia'),
(126, 'Maldives', 'MDV', NULL, '462', 'maldives'),
(127, 'Mali', 'MLI', NULL, '466', 'mali'),
(128, 'Malta', 'MLT', NULL, '470', 'malta'),
(129, 'Marshall Islands', 'MHL', NULL, '584', 'marshall-islands'),
(130, 'Martinique', 'MTQ', NULL, '474', 'martinique'),
(131, 'Mauritania', 'MRT', NULL, '478', 'mauritania'),
(132, 'Mauritius', 'MUS', NULL, '480', 'mauritius'),
(133, 'Mayotte', 'MYT', NULL, '175', 'mayotte'),
(134, 'Mexico', 'MEX', NULL, '484', 'mexico'),
(135, 'Micronesia', 'FSM', NULL, '583', 'micronesia'),
(136, 'Moldova', 'MDA', NULL, '498', 'moldova'),
(137, 'Monaco', 'MCO', NULL, '492', 'monaco'),
(138, 'Mongolia', 'MNG', NULL, '496', 'mongolia'),
(139, 'Montenegro', 'MNE', NULL, '499', 'montenegro'),
(140, 'Montserrat', 'MSR', NULL, '500', 'montserrat'),
(141, 'Morocco', 'MAR', NULL, '504', 'morocco'),
(142, 'Mozambique', 'MOZ', NULL, '508', 'mozambique'),
(143, 'Myanmar', 'MMR', 'BUR', '104', 'myanmar'),
(144, 'Namibia', 'NAM', NULL, '516', 'namibia'),
(145, 'Nauru', 'NRU', NULL, '520', 'nauru'),
(146, 'Nepal', 'NPL', NULL, '524', 'nepal'),
(147, 'Netherlands', 'NLD', NULL, '528', 'netherlands'),
(148, 'Netherlands Antilles', 'ANT', NULL, '530', 'netherlands-antilles'),
(149, 'New Caledonia', 'NCL', NULL, '540', 'new-caledonia'),
(150, 'New Zealand', 'NZL', NULL, '554', 'new-zealand'),
(151, 'Nicaragua', 'NIC', NULL, '558', 'nicaragua'),
(152, 'Niger', 'NER', NULL, '562', 'niger'),
(153, 'Nigeria', 'NGA', NULL, '566', 'nigeria'),
(154, 'Niue', 'NIU', NULL, '570', 'niue'),
(155, 'Norfolk Island', 'NFK', NULL, '574', 'norfolk-island'),
(156, 'North Korea', 'PRK', NULL, '408', 'north-korea'),
(157, 'Northern Mariana Islands', 'MNP', NULL, '580', 'northern-mariana-islands'),
(158, 'Norway', 'NOR', NULL, '578', 'norway'),
(159, 'Oman', 'OMN', NULL, '512', 'oman'),
(160, 'Pakistan', 'PAK', NULL, '586', 'pakistan'),
(161, 'Palau', 'PLW', NULL, '585', 'palau'),
(162, 'Palestine', 'PSE', NULL, '275', 'palestine'),
(163, 'Panama', 'PAN', NULL, '591', 'panama'),
(164, 'Papua New Guinea', 'PNG', NULL, '598', 'papua-new-guinea'),
(165, 'Paraguay', 'PRY', NULL, '600', 'paraguay'),
(166, 'Peru', 'PER', NULL, '604', 'peru'),
(167, 'Philippines', 'PHL', NULL, '608', 'philippines'),
(168, 'Pitcairn', 'PCN', NULL, '612', 'pitcairn'),
(169, 'Poland', 'POL', NULL, '616', 'poland'),
(170, 'Portugal', 'PRT', NULL, '620', 'portugal'),
(171, 'Puerto Rico', 'PRI', NULL, '630', 'puerto-rico'),
(172, 'Qatar', 'QAT', NULL, '634', 'qatar'),
(173, 'Reunion', 'REU', NULL, '638', 'reunion'),
(174, 'Romania', 'ROU', 'ROM', '642', 'romania'),
(175, 'Russian Federation', 'RUS', NULL, '643', 'russian-federation'),
(176, 'Rwanda', 'RWA', NULL, '646', 'rwanda'),
(177, 'Saint Helena', 'SHN', NULL, '654', 'saint-helena'),
(178, 'Saint Kitts and Nevis', 'KNA', NULL, '659', 'saint-kitts-and-nevis'),
(179, 'Saint Lucia', 'LCA', NULL, '662', 'saint-lucia'),
(180, 'Saint Pierre and Miquelon', 'SPM', NULL, '666', 'saint-pierre-and-miquelon'),
(181, 'Saint Vincent and the Grenadines', 'VCT', NULL, '670', 'saint-vincent-and-grenadines'),
(182, 'Saint-Barthelemy', 'BLM', NULL, '652', 'saint-barthelemy'),
(183, 'Saint-Martin', 'MAF', NULL, '663', 'saint-martin'),
(184, 'Samoa', 'WSM', NULL, '882', 'samoa'),
(185, 'San Marino', 'SMR', NULL, '674', 'san-marino'),
(186, 'Sao Tome and Principe', 'STP', NULL, '678', 'sao-tome-and-principe'),
(187, 'Saudi Arabia', 'SAU', NULL, '682', 'saudi-arabia'),
(188, 'Senegal', 'SEN', NULL, '686', 'senegal'),
(189, 'Serbia', 'SRB', NULL, '688', 'serbia'),
(190, 'Seychelles', 'SYC', NULL, '690', 'seychelles'),
(191, 'Sierra Leone', 'SLE', NULL, '694', 'sierra-leone'),
(192, 'Singapore', 'SGP', NULL, '702', 'singapore'),
(193, 'Slovakia', 'SVK', NULL, '703', 'slovakia'),
(194, 'Slovenia', 'SVN', NULL, '705', 'slovenia'),
(195, 'Solomon Islands', 'SLB', NULL, '90', 'solomon-islands'),
(196, 'Somalia', 'SOM', NULL, '706', 'somalia'),
(197, 'South Africa', 'ZAF', NULL, '710', 'south-africa'),
(198, 'South Korea', 'KOR', NULL, '410', 'south-korea'),
(199, 'South Sudan', 'SSD', NULL, '728', 'south-sudan'),
(200, 'Spain', 'ESP', NULL, '724', 'spain'),
(201, 'Sri Lanka', 'LKA', NULL, '144', 'sri-lanka'),
(202, 'Sudan', 'SDN', NULL, '729', 'sudan'),
(203, 'Suriname', 'SUR', NULL, '740', 'suriname'),
(204, 'Svalbard and Jan Mayen Islands', 'SJM', NULL, '744', 'svalbard-and-jan-mayen-islands'),
(205, 'Swaziland', 'SWZ', NULL, '748', 'swaziland'),
(206, 'Sweden', 'SWE', NULL, '752', 'sweden'),
(207, 'Switzerland', 'CHE', NULL, '756', 'switzerland'),
(208, 'Syrian Arab Republic', 'SYR', NULL, '760', 'syrian-arab-republic'),
(209, 'Tajikistan', 'TJK', NULL, '762', 'tajikistan'),
(210, 'Tanzania', 'TZA', NULL, '834', 'tanzania'),
(211, 'Thailand', 'THA', NULL, '764', 'thailand'),
(212, 'Timor-Leste', 'TLS', NULL, '626', 'timor-leste'),
(213, 'Togo', 'TGO', NULL, '768', 'togo'),
(214, 'Tokelau', 'TKL', NULL, '772', 'tokelau'),
(215, 'Tonga', 'TON', NULL, '776', 'tonga'),
(216, 'Trinidad and Tobago', 'TTO', NULL, '780', 'trinidad-and-tobago'),
(217, 'Tunisia', 'TUN', NULL, '788', 'tunisia'),
(218, 'Turkey', 'TUR', NULL, '792', 'turkey'),
(219, 'Turkmenistan', 'TKM', NULL, '795', 'turkmenistan'),
(220, 'Turks and Caicos Islands', 'TCA', NULL, '796', 'turks-and-caicos-islands'),
(221, 'Tuvalu', 'TUV', NULL, '798', 'tuvalu'),
(222, 'U.S. Virgin Islands', 'VIR', NULL, '850', 'us-virgin-islands'),
(223, 'Uganda', 'UGA', NULL, '800', 'uganda'),
(224, 'Ukraine', 'UKR', NULL, '804', 'ukraine'),
(225, 'United Arab Emirates', 'ARE', NULL, '784', 'united-arab-emirates'),
(226, 'United Kingdom', 'GBR', NULL, '826', 'united-kingdom'),
(227, 'United States', 'USA', NULL, '840', 'united-states'),
(228, 'Uruguay', 'URY', NULL, '858', 'uruguay'),
(229, 'Uzbekistan', 'UZB', NULL, '860', 'uzbekistan'),
(230, 'Vanuatu', 'VUT', NULL, '548', 'vanuatu'),
(231, 'Venezuela', 'VEN', NULL, '862', 'venezuela'),
(232, 'Viet Nam', 'VNM', NULL, '704', 'viet-nam'),
(233, 'Wallis and Futuna Islands', 'WLF', NULL, '876', 'wallis-and-futuna-islands'),
(234, 'Western Sahara', 'ESH', NULL, '732', 'western-sahara'),
(235, 'Yemen', 'YEM', NULL, '887', 'yemen'),
(236, 'Zambia', 'ZMB', NULL, '894', 'zambia'),
(237, 'Zimbabwe', 'ZWE', NULL, '716', 'zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(111) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug_name` varchar(255) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `page_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `name`, `slug_name`, `tittle`, `image`, `short_desc`, `page_content`) VALUES
(1, 1, 'Business Entrepreneurship', 'business-entrepreneurship', '', 'bechalar-of-arts.jpg', 'It is the process of developing, organizing and managing a new business to generate profit while assuming financial risk.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What is Business Entrepreneurship?</h3>                     <p>                         It is the process of developing, organizing and managing a new business to generate profit while                         assuming financial risk.                     </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired </h3>                     <p>                         This program provides the student with the understanding, trust, and relationships to turn their                         ideas into market-ready products, services, businesses, and social projects. The student                         experiences the success and satisfaction of life as a visionary entrepreneur, improving the                         world, creating jobs, and providing a positive future for himself and others.                     </p>                 </div>             </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Business Entrepreneurship?                         </strong>                     </p>                     <p>                         This program will help the students understand the context, concerns and language of                         entrepreneurship and will prepare them to enter the market with their own business.                     </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Business Entrepreneurship?                         </strong>                     </p>                     <p>                         To study for a Associate in Business Entrepreneurship, you need to have finished high school.                     </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             Entrepeneurs can work both from the comfort of home in their new venture, as well as in                             companies offering administration, counseling and business management services.                         </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Courses</h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>English Composition I </li>                         <li>History of Art </li>                         <li>College Algebra </li>                         <li>General Biology </li>                         <li>Western Civilizations </li>                         <li>English Composition II </li>                         <li>Introduction to statistics </li>                         <li>Environmental Science </li>                         <li>Equality & Inequality </li>                         <li>Ethics </li>                     </ul>                 </div>                 <div class=\"col-lg-6\">                     <ul>                         <li>Introduction to Managing Conflict and Bargaining </li>                         <li>Introduction to Digital Humanities </li>                         <li>Entrepreneurships </li>                         <li>Computing Fundamentals for Entrepreneurship </li>                         <li>Managerial Accounting </li>                         <li>Principles of Management </li>                         <li>Principles of Finance </li>                         <li>Introduction to Lean Start Up </li>                         <li>Principles of Marketing </li>                         <li>Principles of Macroeconomics </li>                     </ul>                 </div>             </div>         </div>     </div>    </div>'),
(2, 1, 'Business Administration', 'business-administration', '', 'Bachelor-of-Journalism.png', 'Business administration oversees the general operations of an organization or department. This may include teams support and supervision, problem solving, developing and implementing plans, and meeting goals.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What is Business Administration? </h3>                     <p>                         Business administration oversees the general operations of an organization or department. This                         may include teams support and supervision, problem solving, developing and implementing plans,                         and                         meeting                         goals.                     </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired</h3>                     <p>Students learn to perform accounting functions, record and verify transactions, prepare payroll,                         monitor                         inventories, prepare financial statements, and analyze financial information. Emphasis is placed                         on both                         manual and computer-based accounting programs to learn accounting data processing.</p>                  </div>              </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Business Administration?                          </strong>                     </p>                     <p>                         On-the-job training and instruction is provided to meet the challenges of this rewarding                         position.                       </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Business Administration?                          </strong>                     </p>                     <p>                         To study for a Associate in Business Administration, you need to have finished high school.                     </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             In companies in the areas of administration and sales, as a business advisor, financial                             analyst, market research analyst, human resources specialist, marketing administrator,                             logistics manager, entrepreneurship manager, etc.                         </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Courses</h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>English Composition I </li>                         <li>History of Art </li>                         <li>College Algebra </li>                         <li>General Biology </li>                         <li>Western Civilizations </li>                         <li>English Composition II </li>                         <li>Introduction to statistics </li>                         <li>Environmental Science </li>                         <li>Equality & Inequality </li>                         <li>Ethics </li>                     </ul>                 </div>                 <div class=\"col-lg-6\">                     <ul>                         <li>Principles of Accounting </li>                         <li>Principles of Accounting Lab (Pre-req: ACC101) </li>                         <li>Social Responsibility </li>                         <li>Principles of Business Management </li>                         <li>Principles of Marketing </li>                         <li>Spreadsheet Application </li>                         <li>8-8 Business Communications </li>                         <li>Statistics (Pre-req: MAT104) </li>                         <li>Introduction to Managing Conflict and Bargaining </li>                         <li>Introduction to Lean Start Up </li>                     </ul>                 </div>             </div>         </div>     </div>    </div>'),
(3, 2, 'Bachelor in Marketing and Sales', 'marketing-and-sales', 'Bachelor in Marketing and Sales', 'bechalar-of-arts.jpg', 'Marketing refers to the set of activities to promote a product or service, according to the needs and expectations of the client. Sales, on the other hand, are the actions to encourage customers to make a certain purchase.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What is Marketing and Sales?                     </h3>                     <p>                         Marketing refers to the set of activities to promote a product or service, according to the                         needs and expectations of the client. Sales, on the other hand, are the actions to encourage                         customers to make a certain purchase.                       </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired</h3>                     <p>                         Graduates of this program will apply key disciplinary skills as business professionals to                         critical business problems in finance, marketing, information systems, research methodologies,                         economics, business law, management, and accounting.                       </p>                 </div>              </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Marketing and Sales?                          </strong>                     </p>                     <p>                         Marketing studies provide a unique competitive advantage: learning to promote yourself and your                         work. After all, marketing studies help to understand the true meaning of value: the value of                         the product and the value of the person or brand that delivers that product.                       </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Marketing and Sales?                          </strong>                     </p>                     <p>                         To study for a degree in Marketing and Sales, you need to have finished high school.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             : In marketing agencies, public relations agencies, advertising agencies, market research                             areas or teams, or big data departments, etc.                         </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Professional Courses</h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Introduction to Calculus </li>                         <li>Introduction to statistics </li>                         <li>History of Art </li>                         <li>English Composition </li>                         <li>Intercultural Communication </li>                     </ul>                 </div>                 <div class=\"col-lg-6\">                     <ul>                         <li>Oral and written communications abilities </li>                         <li>General Biology </li>                         <li>Western Civilizations </li>                         <li>Equality & Inequality </li>                         <li>Environmental Sciences </li>                     </ul>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">General Education Requirements </h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Principles of Accounting I </li>                         <li>Principles of Accounting I Lab </li>                         <li>Principles of Microeconomics </li>                         <li>Legal environment of Business </li>                         <li>Principles of Business Management </li>                         <li>Principles of Marketing </li>                         <li>Product and Pricing Strategies </li>                         <li>International Marketing </li>                         <li>Sales, Advertising and Promotions </li>                         <li>Consumer Behavior </li>                         <li>Marketing Analytics </li>                         <li>Digital Marketing </li>                         <li>Introduction to Lean Start Up </li>                         <li>Business Communication </li>                         <li>Social Responsibility </li>                     </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Introduction to Managing Conflict and Bargaining </li>                         <li>Foreign trade </li>                         <li>Entrepreneurships </li>                         <li>Management support systems </li>                         <li>Project management </li>                         <li>Organization and management </li>                         <li>Operation Management </li>                         <li>Professional ethics </li>                         <li>Computational mathematics </li>                         <li>Strategic management </li>                         <li>International organizations </li>                         <li>Marketing communications </li>                         <li>Social Media Marketing </li>                         <li>Marketing and Society </li>                         <li>Cost analysis and applications </li>                     </ul>                 </div>             </div>         </div>     </div>   </div>'),
(4, 2, 'Bachelor in Business Administration with a Minor in Management Information Systems', 'business-administration-with-a-minor-in-management-information-systems', 'Bachelor in Business Administration with a Minor in Management Information Systems', 'Bachelor-of-Journalism.png', 'Business administration oversees the general operations of an organization or department. This may include teams support and supervision, problem solving, developing and implementing plans, and meeting goals.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What is Business Administration?                     </h3>                     <p>                         Business administration oversees the general operations of an organization or department. This                         may include teams support and supervision, problem solving, developing and implementing plans,                         and meeting goals.                       </p>                 </div>                 <div>                     <h3 class=\"course_heading\">What are Management Information Systems?</h3>                     <p>                         It is an integrated system that provides information in order to support the planning, control                         and operations of an organization in order to develop useful information in administration.                       </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired </h3>                     <p>                         This program is focused and designed for graduates to implement the best practices in                         cybersecurity of data and databases, keeping company information and files safe.                      </p>                 </div>             </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Business Administration with a Minor in Management Information Systems?                         </strong>                     </p>                     <p>                         Students learn to implement efficient risk management, as well as an in-depth analysis of the                         organization’s file management systems.                       </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Business Administration with a Minor in Management Information                             Systems?                          </strong>                     </p>                     <p>                         To study for a Bachelor in Business Administration with a Minor in Management Information                         Systems you need to have finished high school.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             In companies in the areas of administration and sales, as a business advisor, financial                             analyst, market research analyst, human resources specialist, marketing administrator,                             logistics manager, entrepreneurship manager, etc.                          </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">General Education Requirements                     </h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Introduction to Calculus </li>                         <li>Introduction to statistics </li>                         <li>History of Art </li>                         <li>English Composition </li>                         <li>Intercultural Communication </li>                     </ul>                 </div>                 <div class=\"col-lg-6\">                     <ul>                         <li>Oral and written communications abilities </li>                         <li>General Biology </li>                         <li>Western Civilizations </li>                         <li>Equality & Inequality </li>                         <li>Environmental Sciences </li>                     </ul>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">General Education Requirements </h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Introduction to Information Systems </li>                         <li>Statistics for Business and Economics </li>                         <li>Business Innovation Management </li>                         <li>Business Process Analysis </li>                         <li>Integrated business applications </li>                         <li>Analysis and design of systems </li>                         <li>Management of relational databases </li>                         <li>Business Data Management </li>                         <li>Management support systems </li>                         <li>Project management </li>                         <li>Organization and management </li>                         <li>Operation management </li>                         <li>Strategic Management </li>                         <li>Professional ethics </li>                     </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Design and innovation of digital business </li>                         <li>Accounting for planning and control </li>                         <li>Introduction to Information Technology </li>                         <li>Legal environment of Business </li>                         <li>Computational mathematics </li>                         <li>IT Engineering </li>                         <li>Cost analysis and applications </li>                         <li>Discrete mathematics </li>                         <li>Management information security </li>                         <li>Financial markets </li>                         <li>Foreign trade </li>                         <li>Investments </li>                         <li>International organizations </li>                         <li>Principles of Marketing </li>                         <li>Marketing communications </li>                         <li>Marketing and Society </li>                     </ul>                 </div>             </div>         </div>     </div>   </div>'),
(5, 2, 'Bachelor in Health Service Administration', 'bachelor-in-health-service-administration', '', 'Bachelor-of-Journalism.png', 'Health Services Administration is the planning, direction and coordination of medical and health services. Healthcare administrators may manage an entire facility, a specific clinical area or department, or a medical practice for a group of physicians.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What is Health Services Administration?                     </h3>                     <p>                         Health Services Administration is the planning, direction and coordination of medical and health                         services. Healthcare administrators may manage an entire facility, a specific clinical area or                         department, or a medical practice for a group of physicians.                      </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired </h3>                     <p>                         Graduates of this program will apply key disciplinary competencies in the management of Health                         Services as professionals in the key scenarios of this area, obtaining a high command of the                         necessary tools for its efficient management: health information systems, health legislation,                         administration, accounting, finance, and marketing focused on the fields of Health.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Health Services Administration?                          </strong>                     </p>                     <p>                         The Bachelor of Science in Health Services Administration program provides students with a broad                         view of today’s health care system. The program provides the professional skills necessary for                         administrative positions throughout the health care industry. In addition, the program prepares                         its graduates for admission to postgraduate study in the health care system.                       </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Health Services Administration?                          </strong>                     </p>                     <p>                         To study for a degree in Health Services Administration, you need to have finished high school.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             This program prepares students to work in hospitals, health agencies, managed care                             organizations, medical office management, health insurance companies, nursing homes,                             residential facilities, etc.                          </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Professional Courses</h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Introduction to Calculus </li>                         <li>Introduction to statistics </li>                         <li>History of Art </li>                         <li>English Composition </li>                         <li>Intercultural Communication </li>                     </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Oral and written communications abilities </li>                         <li>General Biology </li>                         <li>Western Civilizations </li>                         <li>Equality & Inequality </li>                         <li>Environmental Sciences </li>                     </ul>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">General Education Requirements </h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Principles of Business Management </li>                         <li>Principles of Accounting I </li>                         <li>Principles of Accounting I Lab </li>                         <li>Introduction to Health Care </li>                         <li>Medical Terminology </li>                         <li>Operation Management </li>                         <li>Medical Office Management </li>                         <li>Medical Office Procedures </li>                         <li>Medical Insurance Coding & Billing </li>                         <li>Managerial Accounting </li>                         <li>Introduction to Health Services Administration </li>                         <li>Introduction to Medical Informatics </li>                         <li>Financial Issues in Health Care </li>                         <li>Ethics in Health Care </li>                         <li>Community Health and Epidemiology </li>                     </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Health Care Marketing </li>                         <li>Business Communication </li>                         <li>Cultural Diversity in Health Care </li>                         <li>Risk Management </li>                         <li>Organizational Behavior </li>                         <li>Human Resources Management </li>                         <li>Health Care Law </li>                         <li>Long Term Care Administration </li>                         <li>Health Service Administration </li>                         <li>Health Information System </li>                         <li>Ethics of Caring for the Elderly </li>                         <li>Supervisory Skills </li>                         <li>Entrepreneurship </li>                         <li>Negotiation and Conflict Resolution </li>                         <li>Legal Aspect & Legislation in Healthcare </li>                     </ul>                 </div>             </div>         </div>     </div>   </div>'),
(6, 3, 'Master in Education with Concentration in Digital Technologies', 'concentration-in-digital-technologies', '', 'bechalar-of-arts.jpg', 'It allows immersive simulations (for example, role-playing, augmented reality, and virtual reality) where students enter experiences from authentic situations, and that constitute, in doing so, another perspective of structuring in pedagogy.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What are Digital Technologies in Education?                     </h3>                     <p>                         It allows immersive simulations (for example, role-playing, augmented reality, and virtual                         reality) where students enter experiences from authentic situations, and that constitute, in                         doing so, another perspective of structuring in pedagogy.                       </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired </h3>                     <p>This program offers a comprehensive curriculum for the professional development of educators of                         all levels who wish to design and apply technology in their own learning environments more                         effectively. Contents focus on constructive learning, curriculum development, integration and                         use of software and websites, application and design of digital instructional materials and the                         psychology of the classroom and the adaptation of technologies.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Digital Technologies in Education?                         </strong>                     </p>                     <p>                         This program is of high value for all professionals in the educational field, who, in addition                         to learning to use the most up-to-date and advanced technological tools, will be able to deepen                         their applied knowledge through the publication of their academic articles in Academic Networks,                         Scientific Journals and International Technological Platforms. The program will develop                         teachers’ abilities to design their own educational materials using digital technologies and                         develop creative and innovative approaches to their work, as well as master the use of digital                         technologies to enhance practice, research, and professional and academic development.                       </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Digital Technologies in Education?                          </strong>                     </p>                     <p>                         To study for a Master in Digital Technologies in Education, you need to have finished bachelor’s                         degree.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             In educational institutions as teachers, administrators or academic coordinators.                          </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Core courses</h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Introduction to Computers in Education</li>                         <li>Introduction to Knowledge Building</li>                         <li>Computers in the Curriculum</li>                     </ul>                 </div>                 <div class=\"col-lg-6\">                     <ul>                         <li>Constructive Learning and Design of Online Environment</li>                         <li>Knowledge Media and Learning</li>                         <li>Instructional Design: Beyond the Lecture</li>                         <li>21st Century Competencies, Multiliteracies, and As</li>                         <li>Technology, the Environment and Education</li>                      </ul>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Concentration Courses                    </h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Technology@Work: The Internet in Workplace Learning</li>                         <li>Integrating Technology into the Classroom: Issues</li>                         <li>Technology, Language and Literacy</li>                     </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Technology, Psychology and Play</li>                         <li>Technology and Education</li>                      </ul>                 </div>             </div>         </div>     </div>   </div>'),
(7, 3, 'Master in Business Administration in Human Resources Management', 'business-administration-in-humanresources-management', '', 'Bachelor-of-Journalism.png', 'Business administration oversees the general operations of an organization or department. This may include teams support and supervision, problem solving, developing and implementing plans, and meeting goals.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What is Business Administration?                     </h3>                     <p>                         Business administration oversees the general operations of an organization or department. This                         may include teams support and supervision, problem solving, developing and implementing plans,                         and meeting goals.                       </p>                 </div>                 <div>                     <h3 class=\"course_heading\">What is Human Resource Management?                     </h3>                     <p>                         It is the set of practices, policies and decisions that is responsible for working for the                         well-being of people within the organization, maintaining the focus on business development.                       </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired </h3>                     <p>                         The program focuses on integrated learning experiences in which students develop problem-solving                         and team-building skills. The program is designed for students who want a broad understanding of                         business operations with an intense focus on the area of Human Resource Management.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Business Administration in Human Resource Management?                         </strong>                     </p>                     <p>                         This program provides a professional identity locally and internationally thanks to our faculty                         members, all of them recognized experts in the specific application of knowledge and                         technological tools within their fields of work. The targeted study will equip students with the                         most sought-after skills required to succeed in Human Resources while completing the strategic                         circle through organizational management courses.                       </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Business Administration in Human Resource Management?                          </strong>                     </p>                     <p>                          To study for a Master in Business Administration in Human Resource Management, you need to have                         finished a bachelor’s degree.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             They can work in companies in the areas of administration or as a specialist in human                             resources, human talent manager, rewards or professional development.                           </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">core Courses</h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Fundamental theory of organization </li>                         <li>Quantitative Methods for Business </li>                         <li>Marketing management </li>                         <li>Project evaluation and risk analysis </li>                     </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Accounting Management </li>                         <li>Finance management I </li>                         <li>Strategic management of human talent </li>                         <li>Transformational leadership </li>                     </ul>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">General Education Requirements </h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Managing Human Resources </li>                         <li>Human Resource Development </li>                      </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Talent Management </li>                         <li>Managing Total Rewards </li>                      </ul>                 </div>             </div>         </div>     </div>   </div>'),
(8, 3, 'Master in Business Administration (MBA)', 'business-administration-mba', '', 'Bachelor-of-Journalism.png', 'Business administration oversees the general operations of an organization or department. This may include teams support and supervision, problem solving, developing and implementing plans, and meeting goals.', '<div class=\"content_work\">      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">What is Business Administration?                     </h3>                     <p>                         Business administration oversees the general operations of an organization or department. This                         may include teams support and supervision, problem solving, developing and implementing plans,                         and meeting goals.                       </p>                 </div>                 <div>                     <h3 class=\"course_heading\">Competences to be acquired </h3>                     <p>                         This program is structured to train experts with the knowledge, skills and abilities in the                         creation and efficient management of public and private organizations. Participants will have an                         entrepreneurial and innovative vision with ethical and socially responsible leadership, capable                         of satisfying all the needs of organizations, efficiently using the most sophisticated tools and                         techniques.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             Why study Business Administration?                          </strong>                     </p>                     <p>                         This program offers a good understanding of basic economic principles, how markets are affected                         by world events, and how to assess the financial health of a company. This can help in making                         better informed investment decisions.                      </p>                 </div>             </div>             <div class=\"col-md-6 col-sm-12 mb10\">                 <div class=\"bir_about roundblock\">                     <p>                         <strong>                             What do I need to study Business Administration?                          </strong>                     </p>                     <p>                         To study for a Master in Business Administration, you need to have finished a bachelor’s degree.                       </p>                 </div>             </div>         </div>     </div>      <div class=\"content_work\">          <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-10 col-sm-12\">                     <div>                         <h3 class=\"course_heading\">Possible jobs </h3>                         <p>                             In companies in the areas of administration and sales, as a business advisor, financial                             analyst, market research analyst, human resources specialist, marketing administrator,                             logistics manager, entrepreneurship manager, etc.                           </p>                     </div>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Core Courses</h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Fundamental theory of organization </li>                         <li>Quantitative Methods for Business </li>                         <li>Marketing management </li>                         <li>Project evaluation and risk analysis </li>                      </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Accounting Management </li>                         <li>Finance management I </li>                         <li>Strategic management of human talent </li>                         <li>Transformational leadership </li>                      </ul>                 </div>             </div>         </div>     </div>      <div class=\"gray_clor\">         <div class=\"container\">             <div class=\"row\">                 <div class=\"col-md-12\">                     <h2 class=\"\">Concentration Courses                    </h2>                 </div>                 <div class=\"col-md-6\">                     <ul>                            <li>Policy and strategy in global competition </li>                         <li>Finance Management II </li>                     </ul>                 </div>                 <div class=\"col-md-6\">                     <ul>                         <li>Management and organizations                         </li>                         <li>                             Professional Ethics                          </li>                      </ul>                 </div>             </div>         </div>     </div>   </div>'),
(12, 2, 'Bachelor in Commerce', 'bachelor-in-commerce', 'Bachelor in Commerce', 'Bachelor-of-Journalism.png', 'A Bachelor of Commerce (B.Com) is an undergraduate degree that provides students with a foundation in business and commerce.', '<div class=\"content_work\">     <div class=\"container\">         <div class=\"row\">             <div class=\"col-md-10\">                 <div>                     <h3 class=\"course_heading\">Bachelor in Commerce </h3>                     <p> A Bachelor of Commerce (B.Com) is an undergraduate degree that provides students with a                         foundation in business and commerce. </p>                 </div>             </div>         </div>     </div> </div>');
INSERT INTO `courses` (`id`, `category_id`, `name`, `slug_name`, `tittle`, `image`, `short_desc`, `page_content`) VALUES
(13, 3, 'Master in Commerce', 'master-in-commerce', 'Master in Commerce', 'Bachelor-of-Journalism.png', 'A Master of Commerce (M.Com) is a two-year postgraduate degree that focuses on commerce, accounting, business administration, management, and economics. It\'s a popular choice for students with a commerce background, and can prepare students for jobs in finance and accounting.', '<div class=\"content_work\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-md-10\">\n                <div>\n                    <h3 class=\"course_heading\">Master in Commerce </h3>\n                    <p> A Master of Commerce (m.Com) is an undergraduate degree that provides students with a\n                        foundation in business and commerce. </p>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `courses_backend`
--

CREATE TABLE `courses_backend` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_description` longtext NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT 1 COMMENT '1 = is actieve, 0 = de-active',
  `created_by` int(11) NOT NULL,
  `created_date` int(10) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `courses_backend`
--

INSERT INTO `courses_backend` (`id`, `course_name`, `course_description`, `course_image`, `is_active`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'BACHELOR OF ARTS – ENGLISH', 'Bachelor of Arts in English', 'ba_english.jpg', 1, 1, 1719066879, 1, 1719066879),
(2, 'BACHELOR OF ARTS – GENERAL', 'Bachelor of Arts in General', 'ba_general.jpg', 1, 1, 1719066879, 1, 1719066879),
(3, 'BACHELOR OF BUSINESS ADMINISTRATION – BBA', 'Bachelor of Business Administration', 'bba.jpg', 1, 1, 1719066879, 1, 1719066879),
(4, 'BACHELOR OF COMPUTER APPLICATION – BCA', 'Bachelor of Computer Application', 'bca.jpg', 1, 1, 1719066879, 1, 1719066879),
(5, 'MCA 222', '<p>tesssstt</p><div class=\"container\"><div class=\"row\"><div class=\"col-md-10\"><div><h3 class=\"course_heading\"><br><br>What is Business Entrepreneurship?</h3><p>It is the process of developing, organizing and managing a new business to generate profit while assuming financial risk.</p></div><div><h3 class=\"course_heading\">Competences to be acquired</h3><p>This program provides the student with the understanding, trust, and relationships to turn their ideas into market-ready products, services, businesses, and social projects. The student experiences the success and satisfaction of life as a visionary entrepreneur, improving the world, creating jobs, and providing a positive future for himself and others.</p></div></div></div></div>', '', 1, 1, 1722148468, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `edu_users`
--

CREATE TABLE `edu_users` (
  `user_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT 1,
  `created_by` int(255) NOT NULL,
  `created_date` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `edu_users`
--

INSERT INTO `edu_users` (`user_id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `is_active`, `created_by`, `created_date`) VALUES
(1, 'Admin', '', 'admin', 'admin@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', 1, 1, 1717235681);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` int(10) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `course_id`, `semester_name`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 1, 'First Year', 1, 1719066992, 1, 1719066992),
(2, 1, 'Second Year', 1, 1719066992, 1, 1719066992),
(3, 1, 'Third Year', 1, 1719066992, 1, 1719066992),
(4, 2, 'First Year', 1, 1719066993, 1, 1719066993),
(5, 2, 'Second Year', 1, 1719066993, 1, 1719066993),
(6, 2, 'Third Year', 1, 1719066993, 1, 1719066993),
(7, 3, 'Ist Semester', 1, 1719066993, 1, 1719066993),
(8, 3, 'IInd Semester', 1, 1719066993, 1, 1719066993),
(9, 3, 'IIIrd Semester', 1, 1719066993, 1, 1719066993),
(10, 3, 'IVth Semester', 1, 1719066993, 1, 1719066993),
(11, 3, 'Vth Semester', 1, 1719066993, 1, 1719066993),
(12, 3, 'VIth Semester', 1, 1719066993, 1, 1719066993),
(13, 4, 'Ist Semester', 1, 1719066993, 1, 1719066993),
(14, 4, 'IInd Semester', 1, 1719066993, 1, 1719066993),
(15, 4, 'IIIrd Semester', 1, 1719066993, 1, 1719066993),
(16, 4, 'IVth Semester', 1, 1719066993, 1, 1719066993),
(17, 4, 'Vth Semester', 1, 1719066993, 1, 1719066993),
(18, 4, 'VIth Semester', 1, 1719066993, 1, 1719066993);

-- --------------------------------------------------------

--
-- Table structure for table `student_inquiry`
--

CREATE TABLE `student_inquiry` (
  `id` int(111) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `acadamic_course` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_inquiry`
--

INSERT INTO `student_inquiry` (`id`, `first_name`, `last_name`, `email`, `mobile`, `country`, `acadamic_course`, `created_date`) VALUES
(1, 'Anil', 'Nadiya', 'anils7015@gmail.com', '9737635720', 234, 'BE (AS)', '2024-07-01 17:11:32'),
(2, 'Anil', 'Nadiya', 'avsdi@fdsds.cf', '42347879287', 232, 'BA (MBA)', '2024-07-01 17:12:44'),
(3, 'Anil', 'Nadiya', 'das@fsd.tgrttr', '4324897587', 234, 'BA (MBA)', '2024-07-01 17:22:08'),
(4, 'daslk', 'kldjfsdklfsj', 'sdkfd@fkdf.fdr', '4574389378', 234, 'MAS (BS)', '2024-07-01 17:25:38'),
(5, 'gdfklkj', 'kdffjk', 'fsdfk@fdk.com', '45349837897', 234, 'MAS (BS)', '2024-07-01 17:28:18'),
(6, 'gfd', 'dfsdf', 'dfsdf@ret.fdh', '645476576', 234, 'MAS (BS)', '2024-07-01 18:40:53'),
(7, 'Anil mobil', 'Nadiya', 'anils7016@gmail.com', '9737636750', 90, 'BA (MBA)', '2024-07-03 04:42:06'),
(8, 'Rocky', 'Patel', 'rockypatel@gmail.com', '9834634556', 0, 'BA (AS)', '2024-07-04 16:24:08'),
(9, 'AJ', 'sahh', 'anj008@yahoo.com', '7325209622', 227, 'BA (MBA)', '2024-07-05 16:43:39'),
(10, 'dhruvi', 'shah', 'ddhruvibb@gmail.com', '9342102525', 227, 'HSA (BS)', '2024-07-06 01:03:31'),
(11, 'Billie', 'Kunde', 'marquis97@theaccessuk.org', '+447965223989', 0, 'BA (AS)', '2024-07-09 13:26:26'),
(12, 'Anil', '', '', '', 0, '', '2024-07-25 17:10:23'),
(13, 'Anil', '', '', '', 0, '', '2024-07-25 17:10:36'),
(14, 'Anil', '', '', '', 0, '', '2024-07-25 17:10:53'),
(15, 'Anil', 'Nadiya', 'anil@gmail.com', '9737636750', 2, 'BAMMIS (BS)', '2024-07-25 17:44:50'),
(16, 'Anil', 'Nadiya', 'anils7016@gmail.com', '97376750', 2, 'HSA (BS)', '2024-07-25 17:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_description` longtext NOT NULL,
  `subject_image` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `semester_id`, `subject_code`, `subject_name`, `subject_description`, `subject_image`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 1, 'BAE-101', 'LANGUAGE - I', 'Language - I Description', 'ba_english_101.jpg', 1, 1719067052, 1, 1719067052),
(2, 1, 'BAE-102', 'ENGLISH COMMUNICATION - I', 'English Communication - I Description', 'ba_english_102.jpg', 1, 1719067052, 1, 1719067052),
(3, 1, 'BAE-103', 'INDIAN CONSTITUTION AND HUMAN RIGHTS', 'Indian Constitution and Human Rights Description', 'ba_english_103.jpg', 1, 1719067052, 1, 1719067052),
(4, 1, 'BAE-104', 'INDIAN WRITING IN ENGLISH', 'Indian Writing in English Description', 'ba_english_104.jpg', 1, 1719067052, 1, 1719067052),
(5, 1, 'BAE-105', 'MODERN ENGLISH GRAMMER AND USAGE', 'Modern English Grammer and Usage Description', 'ba_english_105.jpg', 1, 1719067052, 1, 1719067052),
(6, 2, 'BAE-201', 'LANGUAGE - II', 'Language - II Description', 'ba_english_201.jpg', 1, 1719067052, 1, 1719067052),
(7, 2, 'BAE-202', 'ENGLISH COMMUNICATION - II', 'English Communication - II Description', 'ba_english_202.jpg', 1, 1719067052, 1, 1719067052),
(8, 2, 'BAE-203', 'ENVIRONMENTAL STUDIES', 'Environmental Studies Description', 'ba_english_203.jpg', 1, 1719067052, 1, 1719067052),
(9, 2, 'BAE-204', 'POETRY', 'Poetry Description', 'ba_english_204.jpg', 1, 1719067052, 1, 1719067052),
(10, 2, 'BAE-205', 'AMERICAN LITERATURE', 'American Literature Description', 'ba_english_205.jpg', 1, 1719067052, 1, 1719067052),
(11, 3, 'BAE-301', 'FUNDAMENTALS OF COMPUTER APPLICATION', 'Fundamentals of Computer Application Description', 'ba_english_301.jpg', 1, 1719067052, 1, 1719067052),
(12, 3, 'BAE-302', 'INTRODUCTION TO LITERARY CRITICISM', 'Introduction to Literary Criticism Description', 'ba_english_302.jpg', 1, 1719067052, 1, 1719067052),
(13, 3, 'BAE-303', 'SHAKESPEARE', 'Shakespeare Description', 'ba_english_303.jpg', 1, 1719067052, 1, 1719067052),
(14, 3, 'BAE-304', 'TWENTIETH CENTURY LITERATURE', 'Twentieth Century Literature Description', 'ba_english_304.jpg', 1, 1719067052, 1, 1719067052),
(15, 3, 'BAE-305', 'HISTORY OF ENGLISH LITERATURE', 'History of English Literature Description', 'ba_english_305.jpg', 1, 1719067052, 1, 1719067052),
(16, 4, 'BAG-101', 'LANGUAGE - I', 'Language - I Description', 'ba_general_101.jpg', 1, 1719067052, 1, 1719067052),
(17, 4, 'BAG-102', 'ENGLISH COMMUNICATION - I', 'English Communication - I Description', 'ba_general_102.jpg', 1, 1719067052, 1, 1719067052),
(18, 4, 'BAG-103', 'INDIAN CONSTITUTION, AND ETHICS', 'Indian Constitution, and Ethics Description', 'ba_general_103.jpg', 1, 1719067052, 1, 1719067052),
(19, 4, 'BAG-104', 'HISTORY OF INDIA (EARLY TIMES TO 1750 A.D.)', 'History of India (Early Times to 1750 A.D.) Description', 'ba_general_104.jpg', 1, 1719067052, 1, 1719067052),
(20, 4, 'BAG-105', 'ECONOMICS: MICRO ECONOMICS', 'Economics: Micro Economics Description', 'ba_general_105.jpg', 1, 1719067052, 1, 1719067052),
(21, 5, 'BAG-201', 'LANGUAGE - II', 'Language - II Description', 'ba_general_201.jpg', 1, 1719067052, 1, 1719067052),
(22, 5, 'BAG-202', 'ENGLISH COMMUNICATION - II', 'English Communication - II Description', 'ba_general_202.jpg', 1, 1719067052, 1, 1719067052),
(23, 5, 'BAG-203', 'ENVIRONMENTAL STUDIES', 'Environmental Studies Description', 'ba_general_203.jpg', 1, 1719067052, 1, 1719067052),
(24, 5, 'BAG-204', 'HISTORY OF INDIA (1750 A.D. – 1950 A.D.)', 'History of India (1750 A.D. – 1950 A.D.) Description', 'ba_general_204.jpg', 1, 1719067052, 1, 1719067052),
(25, 5, 'BAG-205', 'ECONOMICS: INDIAN ECONOMY', 'Economics: Indian Economy Description', 'ba_general_205.jpg', 1, 1719067052, 1, 1719067052),
(26, 6, 'BAG-301', 'FUNDAMENTALS OF COMPUTER', 'Fundamentals of Computer Description', 'ba_general_301.jpg', 1, 1719067053, 1, 1719067053),
(27, 6, 'BAG-302', 'HISTORY OF MODERN WORLD (1453 A.D. – 1945 A.D.)', 'History of Modern World (1453 A.D. – 1945 A.D.) Description', 'ba_general_302.jpg', 1, 1719067053, 1, 1719067053),
(28, 6, 'BAG-303', 'INTERNATIONAL ECONOMICS', 'International Economics Description', 'ba_general_303.jpg', 1, 1719067053, 1, 1719067053),
(29, 6, 'BAG-304', 'POLITICAL SCIENCE: WESTERN POLITICAL THOUGHT', 'Political Science: Western Political Thought Description', 'ba_general_304.jpg', 1, 1719067053, 1, 1719067053),
(30, 6, 'BAG-305', 'INTRODUCTION TO SOCIOLOGY', 'Introduction to Sociology Description', 'ba_general_305.jpg', 1, 1719067053, 1, 1719067053),
(31, 7, 'BBAM-101', 'BUSINESS ORGANIZATION AND SYSTEM', 'Business Organization and System Description', 'bba_101.jpg', 1, 1719067053, 1, 1719067053),
(32, 7, 'BBAM-102', 'BUSINESS COMMUNICATION SKILLS', 'Business Communication Skills Description', 'bba_102.jpg', 1, 1719067053, 1, 1719067053),
(33, 7, 'BBAM-103', 'BUSINESS ACCOUNTING', 'Business Accounting Description', 'bba_103.jpg', 1, 1719067053, 1, 1719067053),
(34, 7, 'BBAM-104', 'BUSINESS ECONOMICS', 'Business Economics Description', 'bba_104.jpg', 1, 1719067053, 1, 1719067053),
(35, 7, 'BBAM-105', 'BUSINESS MATHEMATICS', 'Business Mathematics Description', 'bba_105.jpg', 1, 1719067053, 1, 1719067053),
(36, 8, 'BBAM-201', 'PRINCIPLES OF MANAGEMENT', 'Principles of Management Description', 'bba_201.jpg', 1, 1719067053, 1, 1719067053),
(37, 8, 'BBAM-202', 'PRINCIPLES OF MARKETING', 'Principles of Marketing Description', 'bba_202.jpg', 1, 1719067053, 1, 1719067053),
(38, 8, 'BBAM-203', 'PRINCIPLES OF FINANCE', 'Principles of Finance Description', 'bba_203.jpg', 1, 1719067053, 1, 1719067053),
(39, 8, 'BBAM-204', 'BASICS OF COST ACCOUNTING', 'Basics of Cost Accounting Description', 'bba_204.jpg', 1, 1719067053, 1, 1719067053),
(40, 8, 'BBAM-205', 'BUSINESS STATISTICS', 'Business Statistics Description', 'bba_205.jpg', 1, 1719067053, 1, 1719067053),
(41, 9, 'BBAM-301', 'PERSONALITY DEVELOPMENT', 'Personality Development Description', 'bba_301.jpg', 1, 1719067053, 1, 1719067053),
(42, 9, 'BBAM-302', 'BUSINESS LAWS', 'Business Laws Description', 'bba_302.jpg', 1, 1719067053, 1, 1719067053),
(43, 9, 'BBAM-303', 'HUMAN RESOURCE MANAGEMENT AND ORGANIZATIONAL BEHAVIOR', 'Human Resource Management and Organizational Behavior Description', 'bba_303.jpg', 1, 1719067053, 1, 1719067053),
(44, 9, 'BBAM-304', 'MANAGEMENT ACCOUNTING', 'Management Accounting Description', 'bba_304.jpg', 1, 1719067053, 1, 1719067053),
(45, 9, 'BBAM-305', 'BUSINESS ECONOMICS (MACRO)', 'Business Economics (Macro) Description', 'bba_305.jpg', 1, 1719067053, 1, 1719067053),
(46, 10, 'BBAM-401', 'INFORMATION TECHNOLOGY IN MANAGEMENT', 'Information Technology in Management Description', 'bba_401.jpg', 1, 1719067053, 1, 1719067053),
(47, 10, 'BBAM-402', 'PRODUCTION AND OPERATIONS MANAGEMENT', 'Production and Operations Management Description', 'bba_402.jpg', 1, 1719067053, 1, 1719067053),
(48, 10, 'BBAM-403', 'INTERNATIONAL BUSINESS', 'International Business Description', 'bba_403.jpg', 1, 1719067053, 1, 1719067053),
(49, 10, 'BBAM-404', 'DIRECT TAXATION', 'Direct Taxation Description', 'bba_404.jpg', 1, 1719067053, 1, 1719067053),
(50, 10, 'BBAM-405', 'RESEARCH METHODOLOGY', 'Research Methodology Description', 'bba_405.jpg', 1, 1719067053, 1, 1719067053),
(51, 11, 'BBAM-501', 'BUSINESS ETHICS', 'Business Ethics Description', 'bba_501.jpg', 1, 1719067053, 1, 1719067053),
(52, 11, 'BBAM-502', 'MANAGEMENT INFORMATION SYSTEM', 'Management Information System Description', 'bba_502.jpg', 1, 1719067053, 1, 1719067053),
(53, 11, 'BBAM-503', 'FINANCIAL MANAGEMENT', 'Financial Management Description', 'bba_503.jpg', 1, 1719067053, 1, 1719067053),
(54, 11, 'BBAM-504', 'INDIRECT TAXATION', 'Indirect Taxation Description', 'bba_504.jpg', 1, 1719067053, 1, 1719067053),
(55, 11, 'BBAM-505', 'ENTREPRENEURSHIP DEVELOPMENT', 'Entrepreneurship Development Description', 'bba_505.jpg', 1, 1719067053, 1, 1719067053),
(56, 12, 'BBAM-601', 'BUSINESS PLANNING AND PROJECT MANAGEMENT', 'Business Planning and Project Management Description', 'bba_601.jpg', 1, 1719067053, 1, 1719067053),
(57, 12, 'BBAM-602', 'EVENT MANAGEMENT', 'Event Management Description', 'bba_602.jpg', 1, 1719067053, 1, 1719067053),
(58, 12, 'BBAM-603', 'MANAGEMENT OF FINANCIAL SERVICES', 'Management of Financial Services Description', 'bba_603.jpg', 1, 1719067053, 1, 1719067053),
(59, 12, 'BBAM-604', 'SUPPLY AND CHAIN LOGISTICS MANAGEMENT', 'Supply and Chain Logistics Management Description', 'bba_604.jpg', 1, 1719067053, 1, 1719067053),
(60, 12, 'BBAM-605', 'E-COMMERCE', 'E-Commerce Description', 'bba_605.jpg', 1, 1719067053, 1, 1719067053),
(61, 13, 'BCA-101', 'FUNDAMENTALS OF COMPUTER', 'Fundamentals of Computer Description', 'bca_101.jpg', 1, 1719067053, 1, 1719067053),
(62, 13, 'BCA-102', 'PROGRAMMING PRINCIPLES AND ALGORITHM', 'Programming Principles and Algorithm Description', 'bca_102.jpg', 1, 1719067053, 1, 1719067053),
(63, 13, 'BCA-103', 'BUSINESS COMMUNICATION', 'Business Communication Description', 'bca_103.jpg', 1, 1719067053, 1, 1719067053),
(64, 13, 'BCA-104', 'MATHEMATICS – I', 'Mathematics – I Description', 'bca_104.jpg', 1, 1719067053, 1, 1719067053),
(65, 13, 'BCA-105', 'LOGICAL ORGANIZATION OF COMPUTER - I', 'Logical Organization of Computer - I Description', 'bca_105.jpg', 1, 1719067053, 1, 1719067053),
(66, 14, 'BCA-201', 'PC SOFTWARE', 'PC Software Description', 'bca_201.jpg', 1, 1719067053, 1, 1719067053),
(67, 14, 'BCA-202', 'C PROGRAMMING', 'C Programming Description', 'bca_202.jpg', 1, 1719067053, 1, 1719067053),
(68, 14, 'BCA-203', 'ORGANIZATIONAL BEHAVIOR', 'Organizational Behavior Description', 'bca_203.jpg', 1, 1719067053, 1, 1719067053),
(69, 14, 'BCA-204', 'MATHEMATICS – II', 'Mathematics – II Description', 'bca_204.jpg', 1, 1719067053, 1, 1719067053),
(70, 14, 'BCA-205', 'LOGICAL ORGANIZATION OF COMPUTER - II', 'Logical Organization of Computer - II Description', 'bca_205.jpg', 1, 1719067053, 1, 1719067053),
(71, 15, 'BCA-301', 'OBJECT ORIENTED PROGRAMMING USING C++', 'Object Oriented Programming Using C++ Description', 'bca_301.jpg', 1, 1719067053, 1, 1719067053),
(72, 15, 'BCA-302', 'DATA STRUCTURE USING C', 'Data Structure Using C Description', 'bca_302.jpg', 1, 1719067053, 1, 1719067053),
(73, 15, 'BCA-303', 'ELEMENTS OF STATISTICS', 'Elements of Statistics Description', 'bca_303.jpg', 1, 1719067053, 1, 1719067053),
(74, 15, 'BCA-304', 'MANAGEMENT ACCOUNTING', 'Management Accounting Description', 'bca_304.jpg', 1, 1719067053, 1, 1719067053),
(75, 15, 'BCA-305', 'SOFTWARE ENGINEERING', 'Software Engineering Description', 'bca_305.jpg', 1, 1719067053, 1, 1719067053),
(76, 16, 'BCA-401', 'DATABASE MANAGEMENT SYSTEM', 'Database Management System Description', 'bca_401.jpg', 1, 1719067053, 1, 1719067053),
(77, 16, 'BCA-402', 'WEB TECHNOLOGY', 'Web Technology Description', 'bca_402.jpg', 1, 1719067053, 1, 1719067053),
(78, 16, 'BCA-403', 'INTRODUCTION TO OPERATING SYSTEM', 'Introduction to Operating System Description', 'bca_403.jpg', 1, 1719067053, 1, 1719067053),
(79, 16, 'BCA-404', 'PROGRAMMING IN VISUAL BASIC', 'Programming in Visual Basic Description', 'bca_404.jpg', 1, 1719067053, 1, 1719067053),
(80, 16, 'BCA-405', 'INTRODUCTION TO MICROPROCESSORS', 'Introduction to Microprocessors Description', 'bca_405.jpg', 1, 1719067053, 1, 1719067053),
(81, 17, 'BCA-501', 'JAVA PROGRAMMING', 'Java Programming Description', 'bca_501.jpg', 1, 1719067053, 1, 1719067053),
(82, 17, 'BCA-502', 'SYSTEM PROGRAMMING', 'System Programming Description', 'bca_502.jpg', 1, 1719067053, 1, 1719067053),
(83, 17, 'BCA-503', 'INTRODUCTION TO INTERNET PROGRAMMING', 'Introduction to Internet Programming Description', 'bca_503.jpg', 1, 1719067053, 1, 1719067053),
(84, 17, 'BCA-504', 'PRINCIPLES OF FINANCE MANAGEMENT', 'Principles of Finance Management Description', 'bca_504.jpg', 1, 1719067053, 1, 1719067053),
(85, 17, 'BCA-505', 'ELEMENTS OF PROBABILITY', 'Elements of Probability Description', 'bca_505.jpg', 1, 1719067053, 1, 1719067053),
(86, 18, 'BCA-601', 'E-COMMERCE', 'E-Commerce Description', 'bca_601.jpg', 1, 1719067053, 1, 1719067053),
(87, 18, 'BCA-602', 'MULTIMEDIA SYSTEMS', 'Multimedia Systems Description', 'bca_602.jpg', 1, 1719067053, 1, 1719067053),
(88, 18, 'BCA-603', 'INTRODUCTION TO DATA MINING', 'Introduction to Data Mining Description', 'bca_603.jpg', 1, 1719067053, 1, 1719067053),
(89, 18, 'BCA-604', 'PROJECT WORK', 'Project Work Description', 'bca_604.jpg', 1, 1719067053, 1, 1719067053),
(90, 18, 'BCA-605', 'INTRODUCTION TO ARTIFICIAL INTELLIGENCE', 'Introduction to Artificial Intelligence Description', 'bca_605.jpg', 1, 1719067053, 1, 1719067053);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_backend`
--
ALTER TABLE `courses_backend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu_users`
--
ALTER TABLE `edu_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `student_inquiry`
--
ALTER TABLE `student_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courses_backend`
--
ALTER TABLE `courses_backend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `edu_users`
--
ALTER TABLE `edu_users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student_inquiry`
--
ALTER TABLE `student_inquiry`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses_backend` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
