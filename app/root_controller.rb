class RootController < UIViewController
  stylesheet :iphone

  layout :root do
    @a = subview(UILabel, :label)
  end  

  def deletedRun 
    super
    view.backgroundColor = UIColor.lightGrayColor
    @label = UILabel.alloc.initWithFrame([[0,0],[320,480]])
    @label.text = "App Stuff"
    @label.textAlignment = UITextAlignmentCenter
    @label.numberOfLines = 0
    @label.font = UIFont.boldSystemFontOfSize(40)
    @label.backgroundColor = UIColor.clearColor
    @label.textColor = UIColor.whiteColor
    @label.shadowColor = UIColor.blackColor
    @label.layer.shadowRadius = 20
    @label.layer.shadowOpacity = 0.5
    @label.layer.masksToBounds = false

    view.addSubview(@label)
  end

end
