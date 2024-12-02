-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 08:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `at3_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `ID` int(11) NOT NULL,
  `QUESTION` text NOT NULL,
  `ANSWER` text NOT NULL,
  `DESCRIPTION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`ID`, `QUESTION`, `ANSWER`, `DESCRIPTION`) VALUES
(1, 'Organisational Requirements ', 'Code of Conduct: details acceptable organisational and ethical and professional behaviours that employees must follow.  This is important to ensure that team task \r\n\r\nCITE Corporate Social Responsibility:  details the organisations social responsibilities and what they consider is important for the community, the people within that community, sustainability and their accountability.  This determines the culture of the workplace environment \r\n\r\nThe Equity and Diversity Policy:  ensures that the employees of the organization are aware of their rights and responsibilities in creating and maintaining a work environment which encourages and respects equal employment opportunity and diversity and is free from discrimination, harassment, victimization and bullying.  This is fulfills the EEO Act 2000, Disability Opportunity Act 1984 and Age Discrimination Act 2004. \r\n\r\nThe OSH Policy – addresses the OSH of the employees by assisting them to understand their responsibilities and duties with regard to safety and health as well as identifying the responsibilities and duties of the organization as an employer. ', 'When working with teams from other Divisions, describe the organizational policies that you will refer to, to ensure that your project aligns with the organization’s requirements and the importance of each: \r\n\r\n1. Workplace policies \r\n2. Code of conduct \r\n3. Reputation and culture \r\n4. Legislative requirements (EEO, WHS) '),
(2, 'Team facilitation techniques ', 'Prioritise the tasks.   Needs to drive everything. Start at the top of the list and begin allocating work from there. That list should be based on the team’s and the organization’s goals. This has to be the first consideration in terms of how you distribute work. If a project is a top priority and somebody is available to do that work, they should be tasked with that work. \r\n\r\nSkill Sets - Evaluate the skill set of the people who you’re thinking about distributing the work to. If they have the right skill set, you’re going to get a high quality result. The end product will be something that meets your customer’s needs. This also reduces the likelihood of people failing because you’re not giving them work that they don’t have the skill set to perform. You’re giving them something they can be successful with. \r\n\r\nUndertaking Performance Management with individuals will provide insight to their goals.  Be transparent and communicate that they have been singled out as a protégé, but don’t make any guarantees as the situation can change due to circumstances.  Invest in the professional development of those that you select as a successor. ', 'Working with teams can be challenging. What does establish a team performance plan mean and what are the benefits? \r\n\r\nHow would you handle a potential risk or safety hazard to ensure that it did not effect the teams performance?  Provide an example of the risk (eg, second wave of COVID) and the strategy that you would implement. \r\n\r\nThe project’s final deadline is nearing, and it is possible that the project will not be complete unless an unethical alternative suggested by one of the team members is implemented.  What is your approach to tackle this situation? '),
(3, 'Mentoring and coaching techniques ', 'Listening \r\n\r\nCoaching is not about the coach, but rather about those that they are coaching.  Listen to their thoughts, needs and concerns.  Listen in order to: \r\n\r\nnote key points which you can summarise for your coachee to help maintain clarity \r\n\r\npick up on any unfocused statements and then encourage more clarity \r\n\r\nnote the way your coachee responds to determine any underlying issues through further questioning. \r\n\r\nAsking open-ended question that focus on three levels \r\n\r\nFirst level:  describing the issue \r\n\r\nSecond level:  strategic questions – digging deeper \r\n\r\nThird level: strategic questions – helping it change \r\n\r\nMaking observations \r\n\r\nReflect things you observe about a person back to them in a neutral, non-judgement way.  These are only useful when validated by expressing them to the person involved and getter their agreement that the observation is correct and valid.  A well-stated observation may then lead into a coaching or performance conversation. ', 'Coaching and mentoring are development approaches based on the use of one to one conversation to enhance and individuals’ skills, knowledge or work performance.  Describe 2 techniques in coaching and mentoring that you will use with your team to support the members. '),
(4, 'Conflict resolution ', 'Identify common goals \r\n\r\nSearch for agreement \r\n\r\nConsider the range of solutions and possibilities \r\n\r\nQuestion our beliefs \r\n\r\nCommit to resolving issues and problems as a group ', 'When conflict is resolved effectively, it leads to many benefits, such as accomplishing goals and strengthening relationships. Broadly outline a strategy on how you would resolve a conflict within your team. '),
(5, 'Communication methods and styles ', 'Methods: \r\n\r\n- Verbal communication \r\n- Non-verbal communication (body language) \r\n- Written communication \r\n- Listening \r\n- Visual communication \r\n\r\nStyle used with the team:  \r\n\r\n- Assertive (achieves goals without hurting others, emotionally expressive, protects own rights and rights of others, speaks with a balanced tone and volume) ', 'Project success depends on effective communication.  Steady communication from leadership can improve morale and engagement. Describe the different methods and styles of communication that you will use with your team. '),
(6, 'Cross cultural communication ', 'Maintain etiquette – many cultures have specific etiquette around the way they communicate.  Research the target culture. \r\n\r\nAvoid slang – Nonactive English speakers have a comprehensive understanding of English but not slang idiom and sayings.  They may understand the individual words you have said but not the context or meaning. \r\n\r\nSpeak slowly – Modulating your pace will hep as will speaking clearly and pronouncing your words properly. \r\n\r\nKeep it simple – avoid using unnecessary large words. \r\n\r\nThe same techniques would be used when communicating with individuals that have special needs or disabilities but would ask the person what will help with communication as there are different ways to communicate and be polite and patient. ', 'We work and live in a diverse community that has different cultures and individuals with special needs or disabilities. Describe the principles of communication for these groups and how you would apply these principles with your team. '),
(7, 'Professionalism ', 'Being grounded in ethics and integrity – doing the right things for the right reasons \r\n\r\nBuilding trust – doesn’t come automatically but is earned.  Take actions that gain respect. \r\n\r\nBringing others along – help others grow and achieve.  Work with people to help them uncover what they do best and ways to strengthen their assets \r\n\r\nInspiring those around you – have a vision that motivates people to follow and expressing it with passion and energy, backing it was strong beliefs and values that count \r\n\r\nMaking decisions – especially the hard decisions with authority and confidence. \r\n\r\nRewarding achievement – recognize hard work and deliver what you promise when that happens. ', 'A good team leader leads by example.  Describe the professional behaviours that you would role model as a leader for your team '),
(8, 'Workplace Contingencies ', 'Establish team performance \r\n\r\nIdentify the desired performance levels of the team \r\n\r\nIdentify how these performance levels will be achieved \r\n\r\nProvide guidance and direction to the team \r\n\r\nMeasure progress towards the desired performance levels \r\n\r\nAs an example of COVID where face to face meetings where no longer possible and group work still had to continue.  I would change the meetings to a suitable medium (continue with virtual meetings) but have more check-ins with individual team members to ensure that they don’t feel isolated. \r\n\r\nReiterate the code of conduct and organization policy to the entire team. Be firm about not following that path and counsel the individual member. ', 'Personal events can often place strain on teams and contingencies need to be put in place for: \r\n\r\nUnplanned leave or absence of workers \r\n\r\nRe-allocation of work tasks \r\n\r\nSuccession planning for important team roles \r\n\r\nDescribe the contingencies that you have planned for each of the above to ensure that the project objectives can be met. '),
(9, 'Teamwork Challenges ', 'Communicate with your staff \r\n\r\nBe clear with your staff about the purpose of their work, expectations and common goals. You can easily achieve this by having regular office meetings and coming up with a mission statement for your office that encourages a team mentality. By not communicating with employees, you increase the risk of misunderstanding, assumptions, apathy and lack of loyalty. \r\n\r\nCommit to staff development \r\n\r\nSavvy business leaders are always putting resources towards the continued education of their staff members, and helping to develop their skills that will enhance their value to the team. Sending your staff (and yourself) to seminars on communication, emotional intelligence, team building and leadership training are worthwhile as well. Remember to follow up on these courses by giving staff your ongoing support by ensuring employees use their new skills, encouraging them to be proactive, and implementing effective new policies. \r\n\r\nOffer feedback \r\n\r\nYour staff members should always know where they stand with respect to your company, and by providing them with both casual and formal evaluation you will effectively be showing them that they’re valued, respected and that their work is acknowledged. Many business owners make the mistake of only providing feedback when it’s negative, but providing plenty of positive feedback will build the confidence of your staff members and will make it more effective when you do need to criticise. \r\n\r\nEncourage collaboration \r\n\r\nEvery office needs some collaboration among staff members in order to make the work happen, but there are plenty of benefits to making that collaboration more effective. By creating a space where employees can get to know each other — even if they don’t work closely that often — then you will create a space that is more comfortable and that encourages more creative thinking and brainstorming. Having staff members that know each other and that work well together means that better work will get done more quickly, and more innovation will come of it. \r\n\r\nBe consistent \r\n\r\nNo matter how many staff members you have, it’s important that you try to be consistent in your decision-making. Having strong office policies means you don’t “play favourites” and you treat each employee the same, which will make them all feel more valued. Communicate decisions clearly and openly so that everyone knows them at the same time, and handle similar situations involving staff members the same way every time so that each employee knows they are as important. \r\n\r\nStrong teams don’t just appear magically, as you have to work hard to improve communication and respect amongst your staff members. If you really work at it, don’t be surprised if you start noticing positive changes quickly. ', 'Cohesive teams are better able to accomplish tasks, solve problems and create innovation.  As a team leader describe several strategies that you will use to develop team cohesion and effectiveness in your project team. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
