# Flutter template

This is a template app with an elaborated arquitecture that allow the app to grow with a clear separated layers

## Description

The app is basically designed to make two interactions with the API https://dev.s1m.ch/frontworkAPI/
The first one will give us the token during the login page and the second one is to post some fake hardcoded bartenderers in the second main screen. For now it doesnt make anything else, don´t expect anything. Check the logs.

## Arquitecture

I´ve tried to separate the different layers so in the future it will be as easier as possible to manage big apps.

![Arquitectura](/imgs/arquitecture.PNG)

# API interactions

There are a couple of frameworks to interact with APIs, in this version I havent used any but http straight, cause for now is the best to manage the different kind of responses. The implementetation is under the folder [API](/lib/API). I have also tried [retrofit](https://pub.dev/packages/retrofit) and [chopper](https://pub.dev/packages/chopper), you could switch branchs to see its implemantation, I think for now this is the best option, but feel free to change to any if you feel like.

# Database

In this version im using [floor](https://pub.dev/packages/floor), it´s quite similar to room if you come from android. The only problem I´ve had is to have a list<object> in my table. I´ve been forced to do a work around, basically I´ve followed this example, even though that one is for moor. The developer is fixing this problem developing Typeconverter. Hope it will release soon.
The other version that´s written in the second branch is [moor](https://moor.simonbinder.eu/docs/) as mentioned before, the problem with this one is that Im not used to it basically and the querys and daos are different. But it is also quite good.

# Repository

The important class in this arquitecture is the repository, where the data is managed. Here we will find an instance of Our APIservice, database and I have also added sharedpreferences. Everything must be get and set through here.

# Provider

Provider is the package that allow us to inject code from where we want, i´ve been following the best practices and inyect our repository on the creation of the app, this way it will be above the widget tree and accesible from any widget of the app.
You can check the [doc](https://pub.dev/packages/provider) but our guy is Coding with andrea. [here](https://www.youtube.com/watch?v=O71rYKcxUgA&ab_channel=CodeWithAndrea) you can follow a serie of videos that explain perfectly the use of this package.
