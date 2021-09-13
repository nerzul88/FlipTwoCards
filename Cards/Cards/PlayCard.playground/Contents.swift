//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view

//        //игральная карточка рубашкой вверх
//        let firstCardView = CardView<CircleShape>(frame: CGRect(x: 0, y: 0, width: 120, height: 150), color: .red)
//        firstCardView.flipCompletionHandler = { card in
//            card.superview?.bringSubviewToFront(card)
//        }
//        self.view.addSubview(firstCardView)
//        //игральная карточка рубашкой вниз
//        let secondCardView = CardView<CircleShape>(frame: CGRect(x: 200, y: 0, width: 120, height: 150), color: .red)
//        secondCardView.flipCompletionHandler = { card in
//            card.superview?.bringSubviewToFront(card)
//        }
//        self.view.addSubview(secondCardView)
//        secondCardView.isFlipped = true

    }
}

extension UIResponder {
    func responderChain() -> String {
        guard let next = next else {
            return String(describing: Self.self)
        }
        return String(describing: Self.self) + " -> " + next.responderChain()
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
