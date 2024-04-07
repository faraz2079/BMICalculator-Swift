import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIvalue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = Float(Double(weight / pow(height, 2)))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You need to eat more Pies", color: UIColor.blue)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "You need to eat less Pies", color: UIColor.red)
        } else {
            bmi = BMI(value: bmiValue, advice: "Nice fit!", color: UIColor.green)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
}


//        if let safeBmi = bmi {
//            let bmiTo1DecimalPlace = String(format: "%.1f", safeBmi)
//            return bmiTo1DecimalPlace
//        }
