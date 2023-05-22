//
//  ViewController.swift
//  WeatherAppGame
//
//  Created by Administrator on 9/6/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var windImage: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet var weatherImage: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var picker: UIPickerView!
    var pickerData = WeatherData.getCities()
    
    // TODO:  add a static method in WeatherData.swift to get the first city
    // TODO:  call the new method here
    var currentWeather =  WeatherData.getFirstCity();

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabels()
    
        // picker properites
        self.picker.delegate = self
        self.picker.dataSource = self
    }
    
    func updateLabels() {
        
        
        // TODO: make this structure more efficient and add the other weath images.
                
        if currentWeather.weather == "sunny" {
            weatherImage.image =  UIImage(named:"sun")!
        } else if currentWeather.weather == "cloudy" {
            weatherImage.image =  UIImage(named:"cloudy")!
        } else if currentWeather.weather == "thunderstorms" {
            weatherImage.image = UIImage(named:"rainthunder")!
        } else if currentWeather.weather == "rainy" {
            weatherImage.image = UIImage(named:"rain")!
        }
        
        // TODO: update the city label
        cityLabel.text = currentWeather.city
        // TODO: update the temperature label
        tempLabel.text = String(currentWeather.temp)
        
        if currentWeather.wind > 15 {
            windImage.image = UIImage(named: "wind")
        }else{
            windImage.image = nil;
        }
            
        
    }
    
   
    /* Picker functions */
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
     
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
  
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("boom")
        let selectedCity = pickerData[picker.selectedRow(inComponent: component)]
        print(selectedCity)
        currentWeather = WeatherData.getWeatherForCity(city: selectedCity)
        updateLabels()
    }
    /* End Picker functions */
}

