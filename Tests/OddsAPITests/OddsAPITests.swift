import XCTest
@testable import OddsAPI

@available(macOS 12.0, *)
final class OddsAPITests: XCTestCase {
    func testFetchUpcomingSportOdds() async throws {
        let oddsApi = OddsApi(withKey: "")
        let odds = await oddsApi.fetchUpcomingOdds()

        switch odds {
        case .failure(let error):
            XCTFail("FAILURE: \(error)")
        case .success(_):
            XCTAssertEqual(1, 1)
        }
    }


    // Can parse JSON of [Sport]
    func testFetchSports() async throws {
        let oddsApi = OddsApi(withKey: "")
        let sports = await oddsApi.fetchSports()

        switch sports {
        case .failure(let error):
            XCTFail("FAILURE: \(error)")
        case .success(_):
            XCTAssertEqual(1, 1)
        }
    }
}
