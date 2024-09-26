import UIKit
class CustomView: UIView {
    var identifier: String
    init (frame: CGRect, identifier: String) {
        self.identifier = identifier
        super.init(frame: frame)
    }
    required init? (coder: NSCoder) {
        fatalError ("init(coder:) has not been implemented")
    }
}

let view1 = CustomView(frame: CGRect(x: 0, y: 0, width: 100, height: 100), identifier: "View1")
let view2 = CustomView (frame: CGRect(x: 0, y: 0, width: 100, height: 100), identifier: "View2")
let view3 = CustomView (frame: CGRect(x: 0, y: 0, width: 100, height: 100), identifier: "View3")
let parentView = UIView (frame: CGRect(x: 0, y: 0, width: 300, height: 300))
parentView.addSubview(view1)
parentView.addSubview(view2)
parentView.addSubview(view3)

let setA: Set<UIView> = [view1, view2, view3]
let setB: Set<UIView> = [view1, view3]
let intersection = setA.intersection(setB)
let union = setA.union(setB)
let symmetricDifference = setA.symmetricDifference(setB)

for view in intersection {
    parentView.addSubview(view)
}

for view in union {
    parentView.bringSubviewToFront(view)
}

print("Subviews in parentView after operations: ", parentView.subviews.map { ($0 as? CustomView)?.identifier ?? "Unknown" })
