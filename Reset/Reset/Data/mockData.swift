import Foundation

// Generate unique IDs for each user
let user1ID = UUID()
let user2ID = UUID()
let user3ID = UUID()
let user4ID = UUID()
let user5ID = UUID()
let user6ID = UUID()

// Sample array of mock users
let mockUsers: [User] = [
    User(
        id: user1ID,
        name: "John Doe",
        age: 34,
        memberSince: Date(timeIntervalSince1970: 1577880000), // January 1, 2020
        soberSince: Date(timeIntervalSince1970: 1609502400),  // January 1, 2021
        resets: 2,
        streak: 100,
        bloodGroup: "A+",
        sex: "Male",
        profileImage: "profile_john",
        sponsorID: nil,
        friends: [user2ID, user3ID]
    ),
    User(
        id: user2ID,
        name: "Jane Smith",
        age: 29,
        memberSince: Date(timeIntervalSince1970: 1514764800), // January 1, 2018
        soberSince: Date(timeIntervalSince1970: 1577836800),  // January 1, 2020
        resets: 0,
        streak: 365,
        bloodGroup: "B+",
        sex: "Female",
        profileImage: "profile_jane",
        sponsorID: user1ID,
        friends: [user4ID, user5ID]
    ),
    User(
        id: user3ID,
        name: "Michael Brown",
        age: 42,
        memberSince: Date(timeIntervalSince1970: 1546300800), // January 1, 2019
        soberSince: Date(timeIntervalSince1970: 1577836800),  // January 1, 2020
        resets: 5,
        streak: 200,
        bloodGroup: "O+",
        sex: "Male",
        profileImage: "profile_michael",
        sponsorID: user1ID,
        friends: [user6ID]
    ),
    User(
        id: user4ID,
        name: "Emily Davis",
        age: 26,
        memberSince: Date(timeIntervalSince1970: 1483228800), // January 1, 2017
        soberSince: Date(timeIntervalSince1970: 1609459200),  // January 1, 2021
        resets: 3,
        streak: 150,
        bloodGroup: "AB-",
        sex: "Female",
        profileImage: "profile_emily",
        sponsorID: nil,
        friends: [user2ID, user6ID]
    ),
    User(
        id: user5ID,
        name: "David Wilson",
        age: 38,
        memberSince: Date(timeIntervalSince1970: 1451606400), // January 1, 2016
        soberSince: Date(timeIntervalSince1970: 1546300800),  // January 1, 2019
        resets: 1,
        streak: 250,
        bloodGroup: "O-",
        sex: "Male",
        profileImage: "profile_david",
        sponsorID: user3ID,
        friends: [user4ID]
    ),
    User(
        id: user6ID,
        name: "Sophia Martinez",
        age: 31,
        memberSince: Date(timeIntervalSince1970: 1577836800), // January 1, 2020
        soberSince: Date(timeIntervalSince1970: 1609459200),  // January 1, 2021
        resets: 2,
        streak: 300,
        bloodGroup: "A-",
        sex: "Female",
        profileImage: "profile_sophia",
        sponsorID: nil,
        friends: [user3ID, user5ID]
    )
]

// Sample array of mock posts
let mockPosts: [Post] = [
    Post(
        user: mockUsers[0],
        postDate: Date(timeIntervalSinceNow: -86400),  // 1 day ago
        postText: "Had an amazing day at the park!",
        postImage: "image_park",
        postLikes: 120,
        postComments: ["Looks fun!", "Wish I was there!", "Nice picture!"]
    ),
    Post(
        user: mockUsers[1],
        postDate: Date(timeIntervalSinceNow: -172800), // 2 days ago
        postText: "Just started reading this new book, it's awesome!",
        postImage: "image_book",
        postLikes: 98,
        postComments: ["What book?", "Looks interesting!", "I want to read it too!"]
    ),
    Post(
        user: mockUsers[2],
        postDate: Date(timeIntervalSinceNow: -259200), // 3 days ago
        postText: "Feeling proud of my progress!",
        postImage: "image_progress",
        postLikes: 150,
        postComments: ["Keep going!", "So inspiring!", "Amazing work!"]
    ),
    Post(
        user: mockUsers[3],
        postDate: Date(timeIntervalSinceNow: -345600), // 4 days ago
        postText: "Enjoying a peaceful evening with family.",
        postImage: "image_family",
        postLikes: 200,
        postComments: ["Family time is the best!", "Such a lovely picture!", "You all look great!"]
    ),
    Post(
        user: mockUsers[4],
        postDate: Date(timeIntervalSinceNow: -432000), // 5 days ago
        postText: "Just finished a great workout!",
        postImage: "image_workout",
        postLikes: 175,
        postComments: ["Way to go!", "You're killing it!", "I need to work out too!"]
    ),
    Post(
        user: mockUsers[5],
        postDate: Date(timeIntervalSinceNow: -518400), // 6 days ago
        postText: "Had the best coffee this morning!",
        postImage: "image_coffee",
        postLikes: 85,
        postComments: ["Where did you get it?", "I love coffee!", "That looks delicious!"]
    )
]
