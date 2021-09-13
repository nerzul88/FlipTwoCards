//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        //создаём кривые на сцене
        createBezier(on: view)
    }
    
    private func createBezier(on view: UIView) {
        //создаём графический контекст (слой)
        //на нём в дальнейшем будут рисоваться кривые
        let shapeLayer = CAShapeLayer()
        //добавляем слой в качестве дочернего к корневому слою корневого представления
        view.layer.addSublayer(shapeLayer)
        //изменение цвета линий
        shapeLayer.strokeColor = UIColor.gray.cgColor
        //изменение толщины линий
        shapeLayer.lineWidth = 5
        //определение фонового цвета
        shapeLayer.fillColor = UIColor.green.cgColor
        //shapeLayer.fillColor = nil
        //shapeLayer.lineCap = .round
        //shapeLayer.lineDashPattern = [5, 8, 12]
        //shapeLayer.lineDashPhase = 2
        //shapeLayer.strokeStart = 0.6
        //shapeLayer.strokeEnd = 0.8
        //shapeLayer.lineJoin = .round
        //создание фигуры
        shapeLayer.path = getPath().cgPath
    }
    
    private func getPath() -> UIBezierPath {
//        let path = UIBezierPath()
//        //создание первого прямоугольника
//        path.move(to: CGPoint(x: 50, y: 50))
//        //создание первой линии
//        path.addLine(to: CGPoint(x: 150, y: 50))
//        //создание второй линии
//        path.addLine(to: CGPoint(x: 150, y: 150))
//        //создание третьей линии
//        path.close()
//
//        //создание второго прямоугольника
//        path.move(to: CGPoint(x: 50, y: 70))
//        path.addLine(to: CGPoint(x: 150, y: 170))
//        path.addLine(to: CGPoint(x: 50, y: 170))
//        path.close()
        
//        //создание сущности "Прямоугольник"
//        let rect = CGRect(x: 10, y: 10, width: 200, height: 100)
//        //создание прямоугольника
//        let path = UIBezierPath(roundedRect: rect,
//                                byRoundingCorners: [.bottomRight, .topLeft],
//                                cornerRadii: CGSize(width: 30, height: 30))
        
//        //создание дуги
//        let centerPoint = CGPoint(x: 200, y: 200)
//        let path = UIBezierPath(arcCenter: centerPoint,
//                                radius: 150,
//                                startAngle: 0,
//                                endAngle: .pi*2,
//                                clockwise: true)
        
//        //создание овала
//        let rect = CGRect(x: 50, y: 50, width: 200, height: 100)
//        let path = UIBezierPath(ovalIn: rect)
        
//        //создание кривой
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: 10, y: 10))
//        path.addCurve(to: CGPoint(x: 200, y: 200),
//                      controlPoint1: CGPoint(x: 100, y: 20),
//                      controlPoint2: CGPoint(x: 50, y: 300))
        
        //создание шапки
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 100))
        path.addArc(withCenter: CGPoint(x: 150, y: 100),
                    radius: 50,
                    startAngle: .pi,
                    endAngle: 0,
                    clockwise: true)
        path.addLine(to: CGPoint(x: 220, y: 100))
        path.addArc(withCenter: CGPoint(x: 220, y: 150),
                    radius: 50,
                    startAngle: .pi*3/2,
                    endAngle: .pi/2,
                    clockwise: true)
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 200, y: 260))
        path.addLine(to: CGPoint(x: 100, y: 260))
        path.addLine(to: CGPoint(x: 100, y: 200))
        path.addLine(to: CGPoint(x: 80, y: 200))
        path.addArc(withCenter: CGPoint(x: 80, y: 150),
                    radius: 50,
                    startAngle: .pi/2,
                    endAngle: .pi*3/2,
                    clockwise: true)
        path.close()
        return path
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
