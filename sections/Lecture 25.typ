#import "@preview/dvdtyp:1.0.1": *

= ANN/CNN (Lecture 25)

Artificial Nerual Networks (ANN) and Convolutional Neural Networks (CNN) are two types of neural networks used in machine learning and deep learning. They are designed to recognize patterns and make predictions based on input data.

*Universal approximation theorem:* A feed forward neural network with a linear output layer and at least one hidden layer with any "squashing" activation function can
approximate any continuous function. \
However, no guarantee on the learnability of the function primarily due to:
- finding global minima
- due to over fitting

Several activaiton functions can be used, but the most common one is the sigmoid function, which is defined as:
#definition("Sigmoid function")[
  $ sigma(t) = 1/(1 + e^(-t)) $
]

Convolution network use a convolution between some sort of "mask" going over the "image". This results in reducing the size of the network, show in @fig:convoltion. Maxpooling is kind of the same but instead of convolution it simply takes the max of the given grid size e.g. 2 as shown in @fig:maxpooling.

#figure(
  image("../images/convolution.png", width: 60%),
  caption: "Convolutional network"
)<fig:convoltion>
#figure(
  image("../images/maxpooling.png", width: 60%),
  caption: "Maxpooling"
)<fig:maxpooling>

We can also see an example structure of a CNN in @fig:cnn-structure. \

#figure(
  image("../images/cnn-sturcture.png", width: 100%),  
  caption: "CNN structure"
)<fig:cnn-structure>

== Style transfer

Style transfer is a technique used in deep learning to apply the style of one image to the content of another image. It involves using convolutional neural networks (CNNs) to extract features from both the content and style images, and then combining these features to create a new image that retains the content of the original image while adopting the style of the style image.

== Autoencoders

Autoencoders are a type of neural network used for unsupervised learning. They are designed to learn efficient representations of data by compressing it into a lower-dimensional space and then reconstructing it back to the original space. The main components of an autoencoder are the encoder, which compresses the input data, and the decoder, which reconstructs the data from the compressed representation.
