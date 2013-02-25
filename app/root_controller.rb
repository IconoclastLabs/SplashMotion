class RootController < UIViewController
  stylesheet :iphone

  layout :root do
    @a = subview(UILabel, :label)
  end  

  def viewDidLoad 
    super
    #view.backgroundColor = UIColor.lightGrayColor
  end

end
