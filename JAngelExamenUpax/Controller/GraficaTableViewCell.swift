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
    var posicion = 0
    var sivalor = 0
    var novalor = 0
    var Elektravalor = 0
    var BancoAztecavalor = 0
    var Netovalor = 0
    var Upaxvalor = 0
    var Dragonvalor = 0
    var Otrovalor = 0
    var talvezvalor = 0
    var Italikavalor = 0
    var values = [valuess]()
    var preguntasdata = [String]()
    var valoresdata = [PieChartDataEntry]()
    let consumoapiviewmodel = ConsumoApiViewModel()
    
    var PREGUNTA = [PieChartDataEntry]()
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        //  updateChartData()
        validar()        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
    }
    func validar(){
        DispatchQueue.main.async {
            [self] in
            if posicion == 0{
                updateChartData1()
            }
            if posicion == 1{
                updateChartData2()
            }
            if posicion == 2{
                updateChartData3()
            }
            if posicion == 3{
                updateChartData4()
            }
        }
    }
    func updateChartData1(){
        DispatchQueue.main.async { [self] in
            var si = PieChartDataEntry(value: Double(sivalor))
            var no = PieChartDataEntry(value: Double(novalor))
            grafica.chartDescription.text = ""
            PREGUNTA = [no, si]
            si.label = "Si \(sivalor)%"
            no.label = "No \(novalor)%"
            let chartDataSet = PieChartDataSet(entries: PREGUNTA, label: "")
            
            let chartData = PieChartData(dataSet: chartDataSet)
            
            let colors = [UIColor(named: "no"), UIColor(named: "si")]
            chartDataSet.colors = colors as! [NSUIColor]
            grafica.data = chartData
        }
    }
    func updateChartData2(){
        DispatchQueue.main.async { [self] in
            var Elektra = PieChartDataEntry(value: Double(Elektravalor))
            var BancoAzteca = PieChartDataEntry(value: Double(BancoAztecavalor))
            var Neto = PieChartDataEntry(value: Double(Netovalor))
            var Upax = PieChartDataEntry(value: Double(Upaxvalor))
            var Dragon = PieChartDataEntry(value: Double(Dragonvalor))
            var otro = PieChartDataEntry(value: Double(Otrovalor))
            grafica.chartDescription.text = ""
            PREGUNTA = [Elektra, BancoAzteca, Neto, Upax, Dragon, otro]
            Elektra.label = "Elektra \(Elektravalor)%"
            BancoAzteca.label = "BancoAzteca \(BancoAztecavalor)%"
            Neto.label = "Neto \(Netovalor)%"
            Upax.label = "Upax \(Upaxvalor)%"
            Dragon.label = "Dragon \(Dragonvalor)%"
            otro.label = "Otro \(Otrovalor)%"
            let chartDataSet = PieChartDataSet(entries: PREGUNTA, label: "")
            
            let chartData = PieChartData(dataSet: chartDataSet)
            
            let colors = [UIColor(named: "Elektra"), UIColor(named: "BancoAzteca"),UIColor(named: "Neto"), UIColor(named: "Upax"), UIColor(named: "Dragon"), UIColor(named: "Otro")]
            chartDataSet.colors = colors as! [NSUIColor]
            grafica.data = chartData
        }
    }
    func updateChartData3(){
        DispatchQueue.main.async {
            [self] in
            var si = PieChartDataEntry(value: Double(sivalor))
            var no = PieChartDataEntry(value: Double(novalor))
            var talvez = PieChartDataEntry(value: Double(talvezvalor))
            var Upax = PieChartDataEntry(value: Double(Upaxvalor))
            var Dragon = PieChartDataEntry(value: Double(Dragonvalor))
            var otro = PieChartDataEntry(value: Double(Otrovalor))
            grafica.chartDescription.text = ""
            PREGUNTA = [no, si, talvez, Upax, Dragon, otro]
            si.label = "Si \(sivalor)%"
            no.label = "No \(novalor)%"
            talvez.label = "Tal Vez \(talvezvalor)"
            Upax.label = "Upax \(Upaxvalor)%"
            Dragon.label = "Dragon \(Dragonvalor)%"
            otro.label = "Otro \(Otrovalor)%"
            let chartDataSet = PieChartDataSet(entries: PREGUNTA, label: "")
            
            let chartData = PieChartData(dataSet: chartDataSet)
            
            let colors = [UIColor(named: "no"), UIColor(named: "si"), UIColor(named: "Talvez"), UIColor(named: "Upax"), UIColor(named: "Dragon"), UIColor(named: "Otro")]
            chartDataSet.colors = colors as! [NSUIColor]
            grafica.data = chartData
            
        }
    }
    func updateChartData4(){
        DispatchQueue.main.async {
            [self] in
            var Elektra = PieChartDataEntry(value: Double(Elektravalor))
            var BancoAzteca = PieChartDataEntry(value: Double(BancoAztecavalor))
            var Neto = PieChartDataEntry(value: Double(Netovalor))
            var Upax = PieChartDataEntry(value: Double(Upaxvalor))
            var Dragon = PieChartDataEntry(value: Double(Dragonvalor))
            var Italika = PieChartDataEntry(value: Double(Italikavalor))
            grafica.chartDescription.text = ""
            PREGUNTA = [Elektra, BancoAzteca, Neto, Upax, Dragon, Italika]
            Elektra.label = "Elektra \(Elektravalor)%"
            BancoAzteca.label = "BancoAzteca \(BancoAztecavalor)%"
            Neto.label = "Neto \(Netovalor)%"
            Upax.label = "Upax \(Upaxvalor)%"
            Dragon.label = "Dragon \(Dragonvalor)%"
            Italika.label = "Italika \(Italikavalor)%"
            let chartDataSet = PieChartDataSet(entries: PREGUNTA, label: "")
            
            let chartData = PieChartData(dataSet: chartDataSet)
            
            let colors = [UIColor(named: "Elektra"), UIColor(named: "BancoAzteca"),UIColor(named: "Neto"), UIColor(named: "Upax"), UIColor(named: "Dragon"), UIColor(named: "Otro")]
            chartDataSet.colors = colors as! [NSUIColor]
            grafica.data = chartData
        }
    }
    func updatepruebapruebaarray(){
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
