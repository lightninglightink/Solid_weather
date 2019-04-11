//
//  PartOFDailyWeather.swift
//  SolidWeather
//
//  Created by Igor Dev on 4/5/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import Foundation

//<time from="2017-03-03T06:00:00" to="2017-03-03T09:00:00">
//<symbol number="600" name="light snow" var="13n"/>
//<precipitation unit="3h" value="0.03125" type="snow"/>
//<windDirection deg="303.004" code="WNW" name="West-northwest"/>
//<windSpeed mps="2.29" name="Light breeze"/>
//<temperature unit="kelvin" value="269.91" min="269.91" max="270.877"/>
//<pressure unit="hPa" value="1005.61"/>
//<humidity value="93" unit="%"/>
//<clouds value="scattered clouds" all="32" unit="%"/>
//</time>

struct PartOFDailyWeather {
    
    var startTime: Date?
    var endTime: Date?
    var weather: NSString?                  // sunny, hazy etc.
    
    // precipitation.name = "snow" or "rain" etc.
    // precipitation.duration = "3h" for example
//    var precipitation: Precipitation?
//    var wind: DailyWind?
//    var temperature: Temperature?
//    var pressure: Pressure?
//    var humidity: Humidity?
//    var clouds: DailyClouds?
}
