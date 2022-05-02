import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let containerView = UIView()
        
//        let imgView = UIImageView(frame: CGRect(x: -30, y: 100, width: 400, height: 346))
//        imgView.image = UIImage(named: "sticker")
//        imgView.alpha = 0.3
//        view.addSubview(imgView)
        
        containerView.layer.addSublayer(coatColor1())
        containerView.layer.addSublayer(coatColor2())
        containerView.layer.addSublayer(body())
        containerView.layer.addSublayer(head())
        containerView.layer.addSublayer(face())
        containerView.layer.addSublayer(eye())
        let leftLightOut = Flight0ut()
        let rightLightOut = Rlight0ut()
        let leftLightIns = FlightIns()
        let rightLightIns = RlightIns()
        containerView.layer.addSublayer(leftLightOut)
        containerView.layer.addSublayer(rightLightOut)
        containerView.layer.addSublayer(leftLightIns)
        containerView.layer.addSublayer(rightLightIns)


        leftLightOut.add(move(fromValue: rightLightOut, toValue: Flight0ut_move()), forKey: "animatePosition")
        rightLightOut.add(move(fromValue: rightLightOut, toValue: Rlight0ut_move()), forKey: "animatePosition")
        leftLightIns.add(move(fromValue: leftLightIns, toValue: FlightIns_move()), forKey: "animatePosition")
        rightLightIns.add(move(fromValue: rightLightIns, toValue: RlightIns_move()), forKey: "animatePosition")
        view.addSubview(containerView)
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    func body() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20, y: 330))
        path.addQuadCurve(to: CGPoint(x: 43, y: 345), controlPoint: CGPoint(x: 5, y: 358))
        path.addQuadCurve(to: CGPoint(x: 94, y: 396), controlPoint: CGPoint(x: 54, y: 340))
        path.addQuadCurve(to: CGPoint(x: 88, y: 410), controlPoint: CGPoint(x: 98, y: 400))
        path.addQuadCurve(to: CGPoint(x: 104, y: 420), controlPoint: CGPoint(x: 74, y: 425))
        path.addLine(to: CGPoint(x: 200, y: 375))
        path.addCurve(to: CGPoint(x: 250, y: 394), controlPoint1: CGPoint(x: 244, y: 340), controlPoint2: CGPoint(x: 225, y: 417))
        path.addQuadCurve(to: CGPoint(x: 254, y: 337), controlPoint: CGPoint(x: 260, y: 380))
        path.addQuadCurve(to: CGPoint(x: 175, y: 250), controlPoint: CGPoint(x: 182, y: 310))
        path.addQuadCurve(to: CGPoint(x: 130, y: 231), controlPoint: CGPoint(x: 155, y: 230))
        path.addCurve(to: CGPoint(x: 123, y: 266), controlPoint1: CGPoint(x: 84, y: 238), controlPoint2: CGPoint(x: 152, y: 253))
        path.addQuadCurve(to: CGPoint(x: 20, y: 330), controlPoint: CGPoint(x: 100, y: 272))
        path.close()
        
        let bodyLayer = CAShapeLayer()
        bodyLayer.path = path.cgPath
        bodyLayer.fillColor = UIColor.clear.cgColor
        bodyLayer.strokeColor = UIColor(red: 103/255, green: 103/255, blue: 103/255, alpha: 1).cgColor
        bodyLayer.lineWidth = 4

        return bodyLayer
    }
    func head() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 200, y: 305))
        path.addCurve(to: CGPoint(x: 240, y: 216), controlPoint1: CGPoint(x: 128, y: 210), controlPoint2: CGPoint(x: 240, y: 213))
        path.addQuadCurve(to: CGPoint(x: 266, y: 237), controlPoint: CGPoint(x: 270, y: 198))
        path.addQuadCurve(to: CGPoint(x: 277, y: 248), controlPoint: CGPoint(x: 275, y: 246))
        path.addQuadCurve(to: CGPoint(x: 298, y: 275), controlPoint: CGPoint(x: 318, y: 228))
        path.addCurve(to: CGPoint(x: 200, y: 305), controlPoint1: CGPoint(x: 320, y: 363), controlPoint2: CGPoint(x: 240, y: 345))
        path.close()
        let headLayer = CAShapeLayer()
        headLayer.path = path.cgPath
        headLayer.fillColor = UIColor.clear.cgColor
        headLayer.strokeColor = UIColor(red: 103/255, green: 103/255, blue: 103/255, alpha: 1).cgColor
        headLayer.lineWidth = 4

        return headLayer
    }
    func coatColor1() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 80, y: 370))
        path.addQuadCurve(to: CGPoint(x: 88, y: 410), controlPoint: CGPoint(x: 98, y: 400))
        path.addQuadCurve(to: CGPoint(x: 104, y: 420), controlPoint: CGPoint(x: 74, y: 425))
        path.addLine(to: CGPoint(x: 200, y: 375))
        path.addCurve(to: CGPoint(x: 250, y: 394), controlPoint1: CGPoint(x: 244, y: 340), controlPoint2: CGPoint(x: 225, y: 417))
        path.addQuadCurve(to: CGPoint(x: 254, y: 335), controlPoint: CGPoint(x: 260, y: 380))
        path.addQuadCurve(to: CGPoint(x: 290, y: 247), controlPoint: CGPoint(x: 328, y: 340))
        path.addQuadCurve(to: CGPoint(x: 210, y: 315), controlPoint: CGPoint(x: 300, y: 325))
        path.addQuadCurve(to: CGPoint(x: 80, y: 370), controlPoint: CGPoint(x: 180, y: 396))
        path.close()
        let coatColorLayer = CAShapeLayer()
        coatColorLayer.path = path.cgPath
        coatColorLayer.fillColor = UIColor(red: 242/255, green: 232/255, blue: 218/255, alpha: 1).cgColor
        coatColorLayer.strokeColor = UIColor.clear.cgColor
        coatColorLayer.lineWidth = 1

        return coatColorLayer
    }
    func coatColor2() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 65, y: 295))
        path.addQuadCurve(to: CGPoint(x: 130, y: 262), controlPoint: CGPoint(x: 110, y: 270))
        path.addQuadCurve(to: CGPoint(x: 65, y: 295), controlPoint: CGPoint(x: 110, y: 320))
        path.close()
        path.move(to: CGPoint(x: 143, y: 400))
        path.addQuadCurve(to: CGPoint(x: 206, y: 370), controlPoint: CGPoint(x: 155, y: 346))
        path.close()
        path.move(to: CGPoint(x: 240, y: 216))
        path.addQuadCurve(to: CGPoint(x: 220, y: 215), controlPoint: CGPoint(x: 225, y: 214))
        path.addQuadCurve(to: CGPoint(x: 266, y: 237), controlPoint: CGPoint(x: 270, y: 198))
        path.addQuadCurve(to: CGPoint(x: 277, y: 248), controlPoint: CGPoint(x: 275, y: 246))
        path.addQuadCurve(to: CGPoint(x: 298, y: 275), controlPoint: CGPoint(x: 318, y: 228))
        path.addQuadCurve(to: CGPoint(x: 305, y: 300), controlPoint: CGPoint(x: 305, y: 285))
        path.addQuadCurve(to: CGPoint(x: 262, y: 242), controlPoint: CGPoint(x: 265, y: 285))
        path.addQuadCurve(to: CGPoint(x: 220, y: 215), controlPoint: CGPoint(x: 247, y: 247))
        let coatColorLayer = CAShapeLayer()
        coatColorLayer.path = path.cgPath
        coatColorLayer.fillColor = UIColor(red: 241/255, green: 220/255, blue: 186/255, alpha: 1).cgColor
        coatColorLayer.strokeColor = UIColor.clear.cgColor
        coatColorLayer.lineWidth = 1

        return coatColorLayer
    }
    func face() -> CAShapeLayer {
        let path = UIBezierPath()
        //鬍鬚
        path.move(to: CGPoint(x: 200, y: 205))
        path.addLine(to: CGPoint(x: 205, y: 215))
        path.close()
        path.move(to: CGPoint(x: 213, y: 205))
        path.addLine(to: CGPoint(x: 217, y: 215))
        path.close()
        path.move(to: CGPoint(x: 313, y: 300))
        path.addLine(to: CGPoint(x: 305, y: 295))
        path.close()
        path.move(to: CGPoint(x: 314, y: 290))
        path.addLine(to: CGPoint(x: 304, y: 288))
        path.close()
        //嘴巴
        path.move(to: CGPoint(x: 244, y: 244))
        path.addQuadCurve(to: CGPoint(x: 258, y: 248), controlPoint: CGPoint(x: 249, y: 250))
        path.addQuadCurve(to: CGPoint(x: 263, y: 262), controlPoint: CGPoint(x: 255, y: 257))
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = path.cgPath
        faceLayer.fillColor = UIColor.clear.cgColor
        faceLayer.strokeColor = UIColor(red: 103/255, green: 103/255, blue: 103/255, alpha: 1).cgColor
        faceLayer.lineWidth = 4
        return faceLayer
    }
    func eye() -> CAShapeLayer {
        let aDegree = CGFloat.pi / 180
        let path = UIBezierPath(arcCenter: CGPoint(x: 246, y: 234), radius: 5, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        path.move(to: CGPoint(x: 270, y: 258))
        path.addArc(withCenter: CGPoint(x: 270, y: 258), radius: 5, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        path.close()
        
        let eyeLayer = CAShapeLayer()
        eyeLayer.path = path.cgPath
        eyeLayer.fillColor = UIColor(red: 254/255, green: 204/255, blue: 85/255, alpha: 1).cgColor
        eyeLayer.strokeColor = UIColor(red: 103/255, green: 103/255, blue: 103/255, alpha: 0).cgColor
        eyeLayer.lineWidth = 4
        return eyeLayer
    }
    //左邊燈光
    func Flight0ut() -> CAShapeLayer {
        let path = UIBezierPath()
        //左邊
        path.move(to: CGPoint(x: 246, y: 234))
        path.addLine(to: CGPoint(x: 200, y: 100))
        path.close()
        path.move(to: CGPoint(x: 246, y: 234))
        path.addLine(to: CGPoint(x: 160, y:103))
        path.close()
        let lightLayer = CAShapeLayer()
        lightLayer.path = path.cgPath
        lightLayer.fillColor = UIColor.clear.cgColor
        lightLayer.strokeColor = UIColor(red: 254/255, green: 220/255, blue: 141/255, alpha: 0.5).cgColor
        lightLayer.lineWidth = 4
        return lightLayer
    }
    //左邊燈光動畫
    func Flight0ut_move() -> CGPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 246, y: 234))
        path.addLine(to: CGPoint(x: 290, y: 100))
        path.close()
        path.move(to: CGPoint(x: 246, y: 234))
        path.addLine(to: CGPoint(x: 250, y:103))
        path.close()
        return path.cgPath
    }
    func Rlight0ut() -> CAShapeLayer {
        let path = UIBezierPath()
        //右邊
        path.move(to: CGPoint(x: 270, y: 258))
        path.addLine(to: CGPoint(x: 289, y: 100))
        path.close()
        path.move(to: CGPoint(x: 270, y: 258))
        path.addLine(to: CGPoint(x: 309, y:103))
        path.close()
        let lightLayer = CAShapeLayer()
        lightLayer.path = path.cgPath
        lightLayer.fillColor = UIColor.clear.cgColor
        lightLayer.strokeColor = UIColor(red: 254/255, green: 220/255, blue: 141/255, alpha: 0.5).cgColor
        lightLayer.lineWidth = 4
        return lightLayer
    }
    //右邊燈光動畫
    func Rlight0ut_move() -> CGPath {
        let path = UIBezierPath()
        //右邊
        path.move(to: CGPoint(x: 270, y: 258))
        path.addLine(to: CGPoint(x: 199, y: 100))
        path.close()
        path.move(to: CGPoint(x: 270, y: 258))
        path.addLine(to: CGPoint(x: 219, y:103))
        path.close()
        return path.cgPath
    }
    //左邊燈光
    func FlightIns() -> CAShapeLayer {
        let path = UIBezierPath()
        //左邊
        path.move(to: CGPoint(x: 246, y: 234))
        path.addLine(to: CGPoint(x: 200, y: 100))
        path.addLine(to: CGPoint(x: 160, y:103))
        path.addLine(to: CGPoint(x: 246, y: 234))
        
        path.close()
        path.move(to: CGPoint(x: 270, y: 258))
        path.close()
        let lightLayer = CAShapeLayer()
        lightLayer.path = path.cgPath
        lightLayer.fillColor = UIColor(red: 255/255, green: 229/255, blue: 168/255, alpha: 0.5).cgColor
        lightLayer.strokeColor = UIColor.clear.cgColor
        return lightLayer
    }
    //左邊燈光動畫
    func FlightIns_move() -> CGPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 246, y: 234))
        path.addLine(to: CGPoint(x: 290, y: 100))
        path.addLine(to: CGPoint(x: 250, y:103))
        path.addLine(to: CGPoint(x: 246, y: 234))
        
        path.close()
        path.move(to: CGPoint(x: 270, y: 258))
        path.close()
        return path.cgPath
    }
    func RlightIns() -> CAShapeLayer {
        let path = UIBezierPath()
        //右邊
        path.move(to: CGPoint(x: 270, y: 258))
        path.addLine(to: CGPoint(x: 289, y: 100))
        path.addLine(to: CGPoint(x: 309, y:103))
        path.addLine(to: CGPoint(x: 270, y: 258))
        path.close()
        
        path.move(to: CGPoint(x: 270, y: 258))
        path.close()
        let lightLayer = CAShapeLayer()
        lightLayer.path = path.cgPath
        lightLayer.fillColor = UIColor(red: 255/255, green: 229/255, blue: 168/255, alpha: 0.5).cgColor
        lightLayer.strokeColor = UIColor.clear.cgColor
        return lightLayer
    }
    func RlightIns_move() -> CGPath {
        let path = UIBezierPath()
        //右邊
        path.move(to: CGPoint(x: 270, y: 258))
        path.addLine(to: CGPoint(x: 199, y: 100))
        path.addLine(to: CGPoint(x: 219, y:103))
        path.addLine(to: CGPoint(x: 270, y: 258))
        path.close()
        
        path.move(to: CGPoint(x: 270, y: 258))
        path.close()
        return path.cgPath
    }
    func move(fromValue:Any?, toValue:Any?) -> CABasicAnimation{
        let animation = CABasicAnimation(keyPath: "path")
        animation.fromValue = fromValue // 初始 path
        animation.toValue = toValue        // 結束 path
        animation.duration = 2.0
        animation.autoreverses = true
        animation.repeatCount = .infinity
        return animation
    }
    
}
struct ContentView: View {
    var body: some View {
        
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

