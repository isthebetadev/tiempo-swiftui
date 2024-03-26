//
//  WeatherModelMapper.swift
//  weather
//
//  Created by Ruben on 26/3/24.
//

import Foundation

struct WeatherModelMapper {
    func mapDataModelToModel(dataModel: WeatherResponseDataModel) -> WeatherModel {
        guard let weather = dataModel.weather.first else {
            return .empty
        }
        return WeatherModel(city: dataModel.city,
                            weather: weather.main,
                            description: "\(weather.description)",
                            iconURL: URL(string: "http://openweathermap.org/img/wn/\(weather.iconURLString)@2x.png"),
                            currentTemperature: "\(Int(dataModel.temperature.currentTemperature))º",
                            minTemperature: "\(Int(dataModel.temperature.minTemperature))º Min.",
                            maxTemperature: "\(Int(dataModel.temperature.maxTemperature))º Max.",
                            humidity: "\(dataModel.temperature.humidity) %")
    }
}
