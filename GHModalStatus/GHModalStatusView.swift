//
//  GHModalStatusView.swift
//  GHModalStatus
//
//  Created by Gabriel Henrique Santos Pereira on 05/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

public class GHModalStatusView: UIView {
    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headlineLabel: UILabel!
    @IBOutlet private weak var subheadLabel: UILabel!
    
    let nibName: String = "GHModalStatusView"
    var contentView: UIView!
    
    // MARK: Set Up View
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        
        addSubview(contentView)
        
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        headlineLabel.text = ""
        subheadLabel.text = ""
    }
    
    // Provide functions to update view
    public func set(image: UIImage) {
        self.statusImage.image = image
    }
    
    public func set(headline text: String) {
        self.headlineLabel.text = text
    }
    
    public func set(subheading text: String) {
        self.subheadLabel.text = text
    }
}
