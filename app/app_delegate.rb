class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = RootController.alloc.init
    #Splash Screen
    image_view = UIImageView.alloc.initWithImage(UIImage.imageNamed("Default.png"))
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
