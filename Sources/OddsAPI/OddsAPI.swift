protocol Api {
    func fetchSports() async -> Result<[Sport], ApiError>
    func fetchUpcomingOdds() async -> Result<Odds, ApiError>
}

@available(macOS 12.0, *)
open class OddsApi: BaseApi, Api {
    
    var apiKey: String
    
    init(withKey apiKey: String) {
        self.apiKey = apiKey
    }
        
    func fetchSports() async -> Result<[Sport], ApiError> {
        await sendRequest(url: allSportsURL(withKey: self.apiKey), responseModel: [Sport].self)
            .map { $0 }
    }
    
    func fetchUpcomingOdds() async -> Result<Odds, ApiError> {
        await sendRequest(url: upcomingOddsURL(withKey: self.apiKey), responseModel: [Odd].self)
            .map { $0 }
    }
}
