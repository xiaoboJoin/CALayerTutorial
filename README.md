# CALayerTutorial
iOS 关于CALayer 的应用和详解

CALayer 定义：
The CALayer class manages image-based content and allows you to perform animations on that content. 

CALayer 作用：
Layers are often used to provide the backing store for views but can also be used without a view to display content. A layer’s main job is to manage the visual content that you provide but the layer itself has visual attributes that can be set, such as a background color, border, and shadow. In addition to managing visual content, the layer also maintains information about the geometry of its content (such as its position, size, and transform) that is used to present that content onscreen. Modifying the properties of the layer is how you initiate animations on the layer’s content or geometry. A layer object encapsulates the duration and pacing of a layer and its animations by adopting the CAMediaTiming protocol, which defines the layer’s timing information.

CALayer 使用：


CALayer 动画实现：



扩展归纳及subclass：

1,CALayer
2,CAScrollLayer
3,CATextLayer
4,AVPlayerLayer
5,CAGradientLayer
6,CAReplicatorLayer
7,CATiledLayer
8,CAShapeLayer
9,CATransformLayer
10,CAEmitterLayer





参考的文献：
http://www.raywenderlich.com/90488/calayer-in-ios-with-swift-10-examples

推荐的APP：
Layer Player

github 地址：
https://github.com/scotteg/LayerPlayer

