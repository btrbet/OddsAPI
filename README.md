# OddsAPI

A Swift 5 client library for JSON API from the-odds-api.com.

See https://the-odds-api.com/liveapi/guides/v4/ for documentation

## Usage

**Fetch upcoming Odd objects**

```{swift}
let oddsApi = OddsApi(withKey: "your-odds-api-key")
let odds = await oddsApi.fetchUpcomingOdds()
```

**Fetch all Sport objects**

```{swift}
let oddsApi = OddsApi(withKey: "your-odds-api-key")
let sports = await oddsApi.fetchSports()
```

## Copyright & License

Copyright 2022 zach wick zach@zachwick.com

Licensed under the Apache 2.0 license
