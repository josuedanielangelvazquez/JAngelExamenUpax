//
//  GraficaTableViewCell.swift
//  JAngelExamenUpax
//
//  Created by MacBookMBA6 on 15/02/23.
//

import UIKit
import Charts
import Hex

class GraficaTableViewCell: UITableViewCell {
    @IBOutlet weak var grafica: PieChartView!
    
    @IBOutlet weak var Preguntalbl: UILabel!
    var crearcolorviewmodel = ColorsViewModel()
    var sivalor = 0
    var novalor = 0
    var values = [valuess]()
    var preguntasdata = [String]()
    var valoresdata = [PieChartDataEntry]()
    let consumoapiviewmodel = ConsumoApiViewModel()
   
    var sucursalLimpia = [PieChartDataEntry]()
    override func awakeFromNib() {
        super.awakeFromNib()
       
      
      //  updateChartData()
        updateprueba2()
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
    func updateprueba2(){
        DispatchQueue.main.async { [self] in
            grafica.chartDescription.text = ""
            for posicion in values{
                valoresdata.append(PieChartDataEntry(value: Double(posicion.value)))
                
            }
            let ChartDataSet = PieChartDataSet(entries: valoresdata, label: "")
            
            let charData = PieChartData(dataSet: ChartDataSet)
          
            var colors = [UIColor]()
            for coloradd in colors{
                let colorcreate = crearcolorviewmodel.Cambiacolors2()
                colors.append(UIColor(hex: colorcreate))
                
            }
            ChartDataSet.colors = colors as! [NSUIColor]
            grafica.data = charData
            
          
          
                
            }
            
            
        }
    }
    

