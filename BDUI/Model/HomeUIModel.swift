import Foundation

struct HomeUIModel: Hashable {
    
    struct SectionModel: Hashable {
        let section: Section
        let body: [Item]
    }
    
    enum Section: Hashable {
        case mainBanner(id: String)
        case textHeadre(id: String)
        case courseSwimLane(id: String)
        case udemyBusinessBanner(id: String)
        case categories(id: String)
        case featuredCourse(id: String)
    }
    
    enum Item: Hashable {
        case mainBanner(id: String, imageLink: String, title: String, caption: String)
        case course(id: String, imageLink: String, title: String, author: String, raiting: Double, price: Decimal, String, tag: String)
        case textHeader(id: String, text: String, highlightedText: String?)
        case udemyBusinessBanner(id: String, link: String)
        case categoriesScroller(id: String, tiles: [String])
        case featuredCourse(id: String, imageLink: String, title: String, author: String, raiting: Double, price: Decimal, String)
    }
}

