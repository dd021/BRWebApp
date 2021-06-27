INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2d169044-a2de-4041-8c85-141c0f0c1a8d', N'admin', N'admin', N'0008006a-9786-44c3-8d22-29554a96d136')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5965dd94-1944-4880-a3a8-7684d2a3e975', N'super@gmail.com', N'SUPER@GMAIL.COM', N'super@gmail.com', N'SUPER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI1xWOupqa1Qxx6Lxt7o/SEoTWNh8YxRyGyInU1OqQLiLQJkw6hlr8Ug9Xh6Iw6+fQ==', N'FGJVOOCG6FKUWRCTJYGQFMPV7QSEWKT7', N'1584f054-0035-4908-8c94-1a65bc8f065a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b25b8fa4-2eab-4d3a-9bae-734dcd7d5b91', N'emily@gmail.com', N'EMILY@GMAIL.COM', N'emily@gmail.com', N'EMILY@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPtnoJbWW0HhhcG42xMH8vYB6VoVZhd9r++ComUAvCekifGkohddbEhl65E2WdFUDg==', N'WI7UFK3HTL7HDIT4Q3AMWDEOIVLJLOGN', N'12cc8414-445b-4c60-929f-bbded5d58efb', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ff8c13c4-0929-4e7b-ae84-0a53d2ae5e46', N'supers@gmail.com', N'SUPERS@GMAIL.COM', N'supers@gmail.com', N'SUPERS@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOOcSz4gosyrFjHp9yNY1gpGOKBtqSVZIpJqnLtZR+dtrcOAAke4MBdO0lI+zXWmeg==', N'R5LEPM4MED2ZZ5IDTJ5ELW6G4SJEAS6O', N'e1faed64-0649-460c-83d5-1c54cf6e7f25', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ff8c13c4-0929-4e7b-ae84-0a53d2ae5e46', N'2d169044-a2de-4041-8c85-141c0f0c1a8d')
GO
SET IDENTITY_INSERT [dbo].[CategoryInfos] ON 
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (1, N'Ordinary (Hard) Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (2, N'French Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (3, N'Reduced Fat Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (4, N'Light Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (5, N'Soft Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (6, N'No Sugar Added Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (7, N'Lactose-free Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (8, N'Gluten-Free Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (9, N'Organic Ice Cream')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (10, N'Sticks (bars) ')
GO
INSERT [dbo].[CategoryInfos] ([CategoryID], [CategoryName]) VALUES (11, N'Cones ')
GO
SET IDENTITY_INSERT [dbo].[CategoryInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductInfos] ON 
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (1, N'Cup Ice Cream', N'pics.png', N'.png', N'image/png', N'Very Tasty Ice Cream', 16, 5)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (2, N'Banana Royale Sundae', N'banana_royale_new_op.png', N'.png', N'image/png', N'Monkey about with this banana treat! Fruit flavored ice cream atop sliced banana with a meltdown of hot fudge over it all. Then topped with whipped cream, roasted almonds and a cherry. Sail the high seas of great taste in this banana ice cream sundae boat.', 22, 6)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (3, N'Banana Split Sundae', N'banana_split_sundae_new_op.png', N'.png', N'image/png', N'Go Bananas for this classic. Three of your favorite ice creams with bananas and yummy hot sauces and toppings. - There may be a whole lot of bananas but there’s no monkey business in this ice cream sundae!', 29, 3)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (4, N'Oreo Cookie Sundae', N'_0008_oreo-cookie_new_op.png', N'.png', N'image/png', N'Pure decadence, stacks of Oreo cookies, vanilla and chocolate ice cream smothered with hot fudge one on top of the other. You don’t need to go for seconds; this sundae has them built in. It’s time to fall in love all over again, we promise this chocolate oreo ice cream sundae won’t let you down!', 26, 9)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (5, N'Chocolate Madness', N'6_1_.png', N'.png', N'image/png', N'A decadent sundae of two scoops of your favourite Baskin Robbins ice cream over a hot fudge molten cake topped with a waffle cone, Oreo cookies, roasted almonds, wheat crispies and some more chocolate fudge. This chocolate sundae is the king of all ice cream sundaes', 29, 5)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (6, N'Fresh Very Berry Strawberry', N'very_berry_strawberry_4.png', N'.png', N'image/png', N'Sublime strawberry flavoured ice cream laden with natural strawberry puree, as well as Strawberry fruit chunks. This Strawberry ice cream is a childhood favourite. Scrap that actually, it’s an all time favourite!', 15, 4)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (7, N'Fresh Chikoo', N'chikoo.png', N'.png', N'image/png', N'Enjoy the sweet and with Chikoo''s malty, caramelized taste of fresh fruits in our range', 22, 7)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (8, N'Cotton Candy', N'cotton_candy_8.png', N'.png', N'image/png', N'Perky pink, purple and childhood coloured cotton candy flavoured ice cream (Contains milk)', 16, 8)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (9, N'Dutch Chocolate', N'chocolate_6.png', N'.png', N'image/png', N'Tempting chocolate ice cream with a distinct hint of cocoa. The mother of every chocolate ice cream creation of ours.', 17, 2)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (10, N'Bavarian Chocolate', N'bavarian_chocolate_6.png', N'.png', N'image/png', N'Rich chocolate based ice cream adorned with chocolate pieces and cashew nut crispies. If it’s Bavarian Chocolate flavour then it’s gotta be sinful and intensely indulgent. Throw in a bit of crunch and you’ve got a truly divine chocolate ice cream treat.', 26, 9)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (11, N'Vanilla ''N Chocolate', N'_0007_chocolate_1.png', N'.png', N'image/png', N'Premium rich vanilla ice cream coated with rich milk chocolate. The ultimate classic. There’s some who prefer the good ol’ fashioned Chocolate and Vanilla ice cream stick.', 5, 10)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (12, N'Cotton Candy Surprise', N'_0006_chocolate_1.png', N'.png', N'image/png', N'Premium rich cotton candy ice cream coated with raspberry flavoured white chocolate. Every kid’s delight, this cotton candy ice cream stick and raspberry flavour will have you going back for more', 7, 10)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (13, N'Cookies N’ Cream', N'7.png', N'.png', N'image/png', N'Creamy Vanilla ice cream with crumbled cookies, coated in rich dark chocolate. Did you get that? Dark Chocolate, Creamy Vanilla Ice cream, and generously LOADED with crumbled cookies. You don’t just want a Cookies N Cream stick, you need it.', 8, 10)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (14, N'Mississippi Mud', N'mississippi-mud.png', N'.png', N'image/png', N'Chocolate and chocolate fudge ice cream swirled with chocolate fudge ribbon & loads of brownie pieces coated with rich milk chocolate. No such thing as too much chocolate. So stop drooling, it’s time to order you Mississippi Mud Stick.', 9, 10)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (15, N'Dulce De Leche', N'_0005_layer-1-copy_1.png', N'.png', N'image/png', N'Premium rich caramel ice cream coated with white chocolate confectionary and studded with roasted almonds and cashew. You don’t need to know how to pronounce Dulce De Leche, you just gotta know that it tastes awesome.', 8, 10)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (16, N'Mango Mania', N'mango-mania.png', N'.png', N'image/png', N'Premium Mango ice candy coated with Mango flavoured white chocolate. All the mango you could want wrapped wonderfully into this delightful ice cream stick!', 7, 10)
GO
INSERT [dbo].[ProductInfos] ([ProductID], [ProductTitle], [PhotoName], [ExtName], [PhotoType], [Description], [Price], [CategoryID]) VALUES (17, N'Mango Mania', N'mango-mania.png', N'.png', N'image/png', N'Premium Mango ice candy coated with Mango flavoured white chocolate. All the mango you could want wrapped wonderfully into this delightful ice cream stick!', 7, 10)
GO
SET IDENTITY_INSERT [dbo].[ProductInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductOrders] ON 
GO
INSERT [dbo].[ProductOrders] ([OrderID], [Address], [OrderDate], [UserID], [Price], [Quantity], [Total], [ProductID]) VALUES (1, N'94  Wilmington Place, Sunnynook, North Shore', CAST(N'2021-06-26T22:46:54.2841256' AS DateTime2), N'emily@gmail.com', 15, 150, 2250, 6)
GO
SET IDENTITY_INSERT [dbo].[ProductOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[EnquiryInfos] ON 
GO
INSERT [dbo].[EnquiryInfos] ([EnquiryID], [Name], [Email], [Mobile], [Subject], [Message], [EnquiryDate]) VALUES (1, N'Emily Leo', N'emily@gmail.com', N'(029)-345-564', N'Franchise Rate', N'I want to open Franchise, Kindly Contact Me For Further discussion.', CAST(N'2021-06-26T22:10:33.4745148' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[EnquiryInfos] OFF
GO
