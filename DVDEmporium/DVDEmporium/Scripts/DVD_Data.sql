INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd051b0f9-a0d1-4532-a438-9dcc2ed92185', N'admin', N'admin', N'fb792102-bb5a-4966-a128-f21d6b62d30b')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9bd16d22-8fc1-4192-8916-0e589710ff9f', N'admin@dvds.com', N'ADMIN@DVDS.COM', N'admin@dvds.com', N'ADMIN@DVDS.COM', 1, N'AQAAAAEAACcQAAAAEJq2W6xHeC7MgtnXktP9C4U4mcAMJvWZnQPJlxkE3pfZnyN6hLGgRqLLax9eAdZNDw==', N'HZJUVO5XUAUMQU67TADAV5ZEH5YXZVPL', N'ae165d8a-0409-45d4-b956-af6901ed053b', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f7e1464e-6314-4553-aa33-ca75c832e691', N'user@dvds.com', N'USER@DVDS.COM', N'user@dvds.com', N'USER@DVDS.COM', 1, N'AQAAAAEAACcQAAAAELem8hcOsf3A6tnkUGHRLuPMLJEduQe+051PqsU0bIGrGXiVbGSRMwBZ69M9MyigqA==', N'QMDUC437PKAIN4WRV7TQM7U2HKXCMWO2', N'96e0de7e-63b0-43d7-aa68-1561506b1f39', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9bd16d22-8fc1-4192-8916-0e589710ff9f', N'd051b0f9-a0d1-4532-a438-9dcc2ed92185')
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (1, N'Catherine Hardwicke')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (2, N'Pierre Morel')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (3, N'Christopher Nolan')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (4, N'J.J. Abrams')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (5, N'George Lucas')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (6, N'Irvin Kershner')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (7, N'Richard Marquand')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (8, N'David Lean')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (9, N'Steven Spielberg')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (10, N'Mel Gibson')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (11, N'Richard Attenborough')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (12, N'Peter Jackson')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (13, N'Chris Columbus')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (14, N'Mike Newell')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (15, N'David Yates')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (16, N'Quentin Tarantino')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (17, N'Vicky Jenson')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (18, N'Richard Loncraine')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (19, N'Issa Lopez')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (20, N'Oliver Hirschbiegel')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (21, N'Doug Pray')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (22, N'Steve Lawrence')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (23, N'Stephen Herek')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (24, N'Kevin Lima')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (25, N'John Lasseter')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (26, N'Peter Chelsom')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (27, N'Bruce Hendricks')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (28, N'Michael Anderson')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (29, N'Steve Hickner')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (30, N'Clyde Geronimi')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (31, N'Angela Robinson')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (32, N'Vincent McEveety')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (33, N'Robert Stevenson')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (34, N'Duwayne Dunham')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (35, N'Carlos Saldanha')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (36, N'Pete Docter')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (37, N'Chris Miller')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (38, N'David Hand')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (39, N'Neill Blomkamp')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (40, N'Robert Schwentke')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (41, N'Nora Ephron')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (42, N'Hoyt Yeatman')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (43, N'Neal Brennan')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (44, N'Robert Luketic')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (45, N'Hayao Miyazaki')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (46, N'Judd Apatow')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (47, N'Stephen Sommers')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (48, N'Michael Sucsy')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (49, N'Asger Leth')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (50, N'John Trank')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (51, N'Mans Marlind')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (52, N'Daniel Espinosa')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (53, N'Stephan Elliot')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (54, N'David Fincher')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (55, N'Joe Johnston')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (56, N'Duncan Jones')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (57, N'James Gunn')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (58, N'Paul Verhoeven')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (59, N'Robert Zemeckis')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (60, N'Doug Liman')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (61, N'James Cameron')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (62, N'Alex Proyas')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (63, N'Anthony Russo')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (64, N'Edgar Wright')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (65, N'Joss Whedon')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (66, N'Bryan Singer')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (67, N'Francis Lawrence')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (68, N'The Wachowskis')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (69, N'Antoine Fuqua')
GO
INSERT [dbo].[Directors] ([DirectorID], [DirectorName]) VALUES (70, N'Justin Lin')
GO
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (1, N'Childrens')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (2, N'Thriller')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (3, N'Action')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (4, N'Sci-fi')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (5, N'Drama')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (6, N'Biography')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (7, N'Comedy')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (8, N'Documentary')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (9, N'Horror')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (10, N'Adventure')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (11, N'Family')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (12, N'Romance')
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Studios] ON 
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (1, N'Summit Entertainment')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (2, N'Europa Corp.')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (3, N'Warner Bros. Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (4, N'Paramount Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (5, N'Lucasfilm')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (6, N'Horizon Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (7, N'Universal Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (8, N'Icon Entertainment International')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (9, N'Columbia Pictures Corporation')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (10, N'New Line Cinema')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (11, N'The Weinstein Company')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (12, N'Fox Searchlight Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (13, N'Freestyle Releasing')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (14, N'Maya Entertainment')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (15, N'IFC Films')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (16, N'Seventh Art Releasing')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (17, N'Columbia Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (18, N'Cruella Productions')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (19, N'Pixar Animation Studios')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (20, N'It''s a Laugh Productions')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (21, N'Michael Todd Company')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (22, N'DreamWorks Animation')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (23, N'Walt Disney Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (24, N'Touchwood Pacific Partners 1')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (25, N'Blue Sky Studios')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (26, N'TriStar Pictures')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (27, N'Paramount Vantage')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (28, N'Spyglass Entertainment')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (29, N'Dune Entertainment')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (30, N'Screen Gems')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (31, N'Screen Australia')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (32, N'MGM Studios')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (33, N'Liberty Films UK')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (34, N'Marvel Studios')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (35, N'Twentieth Century Fox')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (36, N'Crowvision Inc.')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (37, N'Hemdale Film')
GO
INSERT [dbo].[Studios] ([StudioID], [StudioName]) VALUES (38, N'Color Force')
GO
SET IDENTITY_INSERT [dbo].[Studios] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (1, N'101 Dalmations', N'Walt Disney''s original cartoon feature ', N'When a litter of dalmatian puppies are abducted by the minions of Cruella De Vil, the parents must find them before she uses them for a diabolical fashion statement. ', 1961, 24.95, N'.jpg', 30, 11, 23)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (2, N'102 Dalmatians', N'A Spotless New Tail Is To Be Unleashed.', N'Cruella DeVil gets out of prison and goes after them darned puppies once more.', 2000, 25.5, N'.jpg', 24, 11, 18)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (3, N'A Bug''s Life', N'An epic of miniature proportions.', N'A misfit ant, looking for warriors to save his colony from grasshoppers, recruits a group of bugs that turn out to be an inept circus troup.', 1998, 35, N'.jpg', 25, 1, 19)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (4, N'Aliens', N'This time there''s more.', N'The planet from Alien (1979) has been colonized, but contact is lost. This time, the rescue team has impressive firepower, but will it be enough?', 1984, 29.5, N'.jpg', 61, 4, 35)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (5, N'Around the World in Eighty Days ', N'See everything in the World worth seeing!', N'Adaptation of Jules Verne''s novel about a Victorian Englishman who bets that with the new steamships and railways he can do what the title says.', 1958, 35, N'.jpg', 28, 11, 21)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (6, N'Art & Copy', N'Definitely one for the Objectified set.', N'A documentary on some of the mavericks of modern American advertising.', 2009, 33, N'.jpg', 21, 8, 16)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (7, N'Bee Movie', N'Hold on to your honey.', N'Barry B. Benson, a bee who has just graduated from college, is disillusioned at his lone career choice: making honey. On a special trip outside the hive, Barry''s life is saved by Vanessa, a florist in New York City. As their relationship blossoms, he disc', 2008, 33, N'.jpg', 29, 1, 22)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (8, N'Braveheart', N'The courage to face fear.', N'William Wallace, a commoner, unites the 13th Century Scots in their battle to overthrow English rule.', 1995, 35, N'.jpg', 10, 6, 8)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (9, N'Captain America: The first Avenger', N'The first Avenger', N'After being deemed unfit for military service, Steve Rogers volunteers for a top secret research project that turns him into Captain America, a superhero dedicated to defending the USA''s ideals.', 2011, 35, N'.jpg', 55, 3, 4)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (10, N'Captain America: The Winter Soldier', N'In heroes we trust. ', N'As Steve Rogers struggles to embrace his role in the modern world, he teams up with another super soldier, the black widow, to battle a new threat from old history: an assassin known as the Winter Soldier.', 2014, 35.95, N'.jpg', 63, 10, 34)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (11, N'Cars', N'Ahhh... it''s got that new movie smell.', N'A hot-shot race-car named Lightning McQueen gets waylaid in Radiator Springs, where he finds the true meaning of friendship and family', 2006, 35, N'.jpg', 25, 1, 23)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (12, N'Chronicle', N'Not all heroes are super.', N'Whilst attending a party, three high school friends gain superpowers after making an incredible discovery underground. Soon, though, they find their lives spinning out of control and their bond tested as they embrace their darker sides. ', 2012, 29.95, N'.jpg', 50, 10, 29)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (13, N'Cinderella', N'The greatest love story ever told. ', N'When Cinderella''s cruel stepmother prevents her from attending the Royal Ball, she gets some unexpected help from the lovable mice Gus and Jaq, and from her Fairy Godmother', 1950, 35, N'.jpg', 30, 1, 23)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (14, N'Contraband ', N'What would you hide to protect your family? ', N'To protect his brother-in-law from a drug lord, a former smuggler heads to Panama to score millions of dollars in counterfeit bills.', 2012, 30, N'.jpg', 49, 3, 7)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (15, N'District 9', N'Mini pop culture phenomenon.', N'In Johannesburg, South Africa, a government operative (Copley) becomes sympathetic to the extraterrestrial race living in slum-like conditions within the city''s borders when he is exposed to their biotechnology.', 2009, 35, N'.jpg', 39, 4, 26)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (16, N'Edge of Tomorrow', N'Live, Die, Repeat ', N'A military officer is brought into an alien war against an extraterrestrial enemy who can reset the day and know the future. When this officer is enabled with the same power, he teams up with a Special Forces warrior to try and end the war.', 2014, 26, N'.jpg', 60, 3, 3)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (17, N'Five Minutes of Heaven', N'Political thriller.', N'As a youth, Alistair Little (Neeson) was a member of the Ulster Volunteer Force, a paramilitary group in Northern Ireland. After serving a thirty year sentence for the murder of a young Catholic man, Little prepares for his televised meeting with his victi', 2009, 35, N'.jpg', 20, 2, 15)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (18, N'Funny People', N'Adam Sandler looks to rule.', N'When seasoned comedian George Simmons (Sandler) learns of his terminal, inoperable health condition, his desire to form a genuine friendship inspires him to take a relatively green performer (Rogen) under his wing as his opening act.', 2009, 35, N'.jpg', 46, 7, 7)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (19, N'Furious Seven', N'One last ride.', N'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.', 2015, 29.95, N'.jpg', 70, 2, 7)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (20, N'Hannah Montana: The Movie', N'She has the best of both worlds... ', N'As Hannah Montana''s popularity begins to take over her life, Miley Stewart, on the urging from her father takes a trip to her hometown of Crowley Corners, Tennessee to get some perspective on what matters in life the most.', 2009, 35.59, N'.jpg', 26, 11, 20)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (21, N'Harry Potter and the Sorcerer''s Stone ', N'Let The Magic Begin. ', N'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School of Witchcraft and Wizardry.', 2001, 35, N'.jpg', 13, 10, 3)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (22, N'Ice Age: The Meltdown', N'Kiss Your Ice Goodbye', N'Diego, Manny and Sid return in this sequel to the hit Ice Age. This time around the Ice Age is over and is starting to melt, which will destroy their valley. So they must unite and warn everyone about the situation.', 2006, 35, N'.jpg', 35, 11, 25)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (23, N'Moon', N'The last place you''d ever expect to find yourself', N'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet''s power problems', 2009, 32, N'.jpg', 56, 4, 33)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (24, N'The Avengers', N'Earth''s mightiest heroes must come together', N'Nick Fury is director of S.H.I.E.L.D. The agency is a who''s who of Marvel Super Heroes, with Iron Man, The Incredible Hulk, Thor, Captain America, Hawkeye and Black Widow. When global security is threatened by Loki, Nick Fury and the team save the world.', 2012, 39.95, N'.jpg', 65, 10, 34)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (25, N'Taken', N'The time for revenge has come.', N'A former spy relies on his old skills to save his estranged daughter, who has been forced into the slave trade. ', 2009, 45, N'.jpg', 2, 2, 2)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (26, N'The Dark Knight', N'Why So Serious?', N'Batman, Gordon and Harvey Dent are forced to deal with the chaos unleashed by an anarchist mastermind known only as the Joker, as it drives each of them to their limits. ', 2008, 45, N'.jpg', 3, 2, 3)
GO
INSERT [dbo].[Movies] ([MovieID], [Title], [TagLine], [Plot], [Year], [Price], [Extension], [DirectoryID], [GenreID], [StudioID]) VALUES (27, N'Twilight', N'When you can live forever what do you live for? ', N'A teenage girl risks everything when she falls in love with a vampire. ', 2008, 25, N'.jpg', 1, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [Address], [OrderDate], [UserID], [Quantity], [Price], [Total], [MovieID]) VALUES (1, N'Street 11 Queensland', CAST(N'2021-04-13T15:56:01.6172704' AS DateTime2), N'user@dvds.com', 5, 30, 150, 14)
GO
INSERT [dbo].[Orders] ([OrderID], [Address], [OrderDate], [UserID], [Quantity], [Price], [Total], [MovieID]) VALUES (2, N'Street 11 Queensland', CAST(N'2021-04-13T16:02:33.2714517' AS DateTime2), N'user@dvds.com', 5, 29.95, 149.75, 19)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
