//
//
//// The Observer protocol defines the update method
//protocol Follower {
//    func update(video: Video)
//}
//
//// Concrete Observers that conform to the Follower protocol
//class User: Follower {
//    private var username: String
//    
//    init(username: String) {
//        self.username = username
//    }
//    
//    func update(video: Video) {
//        print("\(username) received new post: \(video.content)")
//    }
//}
//
//// Data structure to represent a post
//struct Video {
//    var author: String
//    var content: String
//}
//
//// The Subject protocol defines methods to manage followers
//protocol SocialMediaPlatform {
//    func addSubscriber(_ follower: Follower, forUser username: String)
//    func notifySubscribers(ofVideo video: Video, forUser username: String)
//}
//
//// Concrete Subject that maintains a list of followers
//class Youtube: SocialMediaPlatform {
//    private var followersDict = [String: [Follower]]() // User: [Followers]
//    
//    func addSubscriber(_ follower: Follower, forUser username: String) {
//        if followersDict[username] == nil {
//            followersDict[username] = [follower]
//        } else {
//            followersDict[username]?.append(follower)
//        }
//    }
//    
//    func notifySubscribers(ofVideo video: Video, forUser username: String) {
//        if let followers = followersDict[username] {
//            for follower in followers {
//                follower.update(post: post)
//            }
//        }
//    }
//}
//
//
//let twitter = Youtube()
//
//let user1 = User(username: "iosmayank")
//let user2 = User(username: "swiftanytime")
//
//twitter.addSubscriber(user1, forUser: "Mayank")
//twitter.addSubscriber(user2, forUser: "Swift Anytime")
//
//let newVideo = Video(author: "Mayank", content: "Just shared my vacation photos!")
//twitter.notifySubscribers(ofVideo: newVideo, forUser: "John")
//
//// Output:
//// user1 received new Video: Just shared my vacation photos!
//// user2 received new Video: Just shared my vacation photos!
//
