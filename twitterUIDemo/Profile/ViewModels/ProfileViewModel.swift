//
//  ProfileViewModel.swift
//  twitterUIDemo
//
//  Created by Prabhat Pankaj on 02/11/23.
//

import Foundation

class ProfileViewModel: ObservableObject {
    let user: User
    @Published var tweets = [Tweet]()
    init(user: User) {
        self.user = user
    }
    func fetchUserTweets() -> [Tweet] {
        return [Tweet(id: "0", caption: "In preparation for the NFL lockout, I will be spending twice as much time analyzing my fantasy baseball team during ...", likes: 12, user: User(username: "amit123", fullname: "Amit Sharma", profileImageUrl: "https://media.licdn.com/dms/image/C4D03AQHWtuA49IZwTA/profile-displayphoto-shrink_400_400/0/1623264354823?e=1704326400&v=beta&t=1BmylGqsSyTyW12WU0mEUd94K9Hw6NnivUMJt14tftA"), didLike: true),
                Tweet(id: "1", caption: "Captain MS Dhoni smashed this iconic six in the final when India faced Sri Lanka last time in Wankhede stadium in World Cups ...", likes: 12, user: User(username: "msdhoni123", fullname: "MS Dhoni", profileImageUrl: "https://pbs.twimg.com/profile_images/1570500099373170688/VVVytBl2_400x400.jpg"), didLike: false),
                Tweet(id: "2", caption: "It’s unbelievable that so many of u come & wish me late at night. I am but a mere actor. Nothing makes me happier, than, the fact that I can entertain u a bit. I live in a dream of your love. Thank u for allowing me to entertain you all. C u in the morning…on the screen & off it", likes: 12, user: User(username: "srk123", fullname: "Shah Rukh Khan", profileImageUrl: "https://pbs.twimg.com/profile_images/1692780873546952704/vXjQc2Og_400x400.jpg"), didLike: true),
                Tweet(id: "3", caption: "The famous Israeli actress Gal Gadot who played Wonder Woman in the Hollywood movie turns up at for army service.", likes: 12, user: User(username: "JIX5A123", fullname: "JIX5A", profileImageUrl: "https://pbs.twimg.com/profile_images/1570701595960131585/A5wUTNEj_400x400.jpg"), didLike: false),
                Tweet(id: "4", caption: "The new MacBook Pro. Now in Space Black. Supercharged by the M3 family of chips.", likes: 12, user: User(username: "apple123", fullname: "Apple", profileImageUrl: "https://pbs.twimg.com/profile_images/1717013664954499072/2dcJ0Unw_400x400.png"), didLike: true),
                Tweet(id: "5", caption: "The Mahindra Truck and Bus Division has shown robust 45% growth in sales this past October, year on year. This is in an industry we were told we had no right to succeed in.  It takes time and patience, but Commitment and Conviction usually bring just rewards. Bravo Team…", likes: 12, user: User(username: "@anandmahindra123", fullname: "Anand Mahindra", profileImageUrl: "https://pbs.twimg.com/profile_images/1660212046779252737/fwUV5epW_400x400.jpg"), didLike: false)
        ]
    }
}
