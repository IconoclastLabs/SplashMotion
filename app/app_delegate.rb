class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = RootController.alloc.init
    #Splash Screen
    # this next line is a little messy, but it gives the idea for handling iphone 5
    image = (568 == UIScreen.mainScreen.bounds.size.height) ? ("Default-568h") : ("Default")
    image_view = UIImageView.alloc.initWithImage(UIImage.imageNamed(image))
    @window.rootViewController.view.addSubview(image_view)
    @window.rootViewController.view.bringSubviewToFront(image_view)
    # normal
    @window.makeKeyAndVisible

    # fade out splash image
    fade_out_timer = 1.0
    UIView.transitionWithView(@window, duration:fade_out_timer, options:UIViewAnimationOptionTransitionNone, animations: lambda {image_view.alpha = 0}, completion: lambda do |finished| 
      image_view.removeFromSuperview
      image_view = nil
      UIApplication.sharedApplication.setStatusBarHidden(false, animated:false)
    end) 
    true
  end
end
