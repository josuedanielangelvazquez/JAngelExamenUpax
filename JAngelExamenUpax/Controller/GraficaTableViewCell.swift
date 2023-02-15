//
//  GraficaTableViewCell.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 15/02/23.
//

import UIKit
import Charts

class GraficaTableViewCell: UITableViewCell {
    @IBOutlet weak var grafica: PieChartView!
    
    @IBOutlet weak var Preguntalbl: UILabel!
    var sivalor = 0
    var novalor = 0
    
    let consumoapiviewmodel = ConsumoApiViewModel()
   
    var sucursalLimpia = [PieChartDataEntry]()
    override func awakeFromNib() {
        super.awakeFromNib()
       
      
        updateChartData()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func updateChartData(){
        DispatchQueue.main.async { [self] in
            var si = PieChartDataEntry(value: Double(sivalor))
            var no = PieChartDataEntry(value: Double(novalor))
            grafica.chartDescription.text = ""
            sucursalLimpia = [no, si]
            si.label = "Si \(sivalor)%"
            no.label = "No \(novalor)%"
            let chartDataSet = PieChartDataSet(entries: sucursalLimpia, label: "")

            let chartData = PieChartData(dataSet: chartDataSet)
            
            let colors = [UIColor(named: "no"), UIColor(named: "si")]
                chartDataSet.colors = colors as! [NSUIColor]
            grafica.data = chartData
        }
       
    }
    
}
