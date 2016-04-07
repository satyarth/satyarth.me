---
title: 'Supa Bot 🔥Fire🔥: I Spit That'
author: satyarth
date: 2015-05-30
tags: [python, dank-memes]
byline: A bot that tweets in the style of Supa Hot Fire
template: article.jade
---

I wrote a bot that replies to people's tweets in the style of [Supa Hot Fire](https://www.youtube.com/watch?v=-ChppfnazzE/). While the primary goal was dank memes, it also served as a nice introduction to natual language processing and the Twitter API.

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">nothing: I regret that. <a href="https://twitter.com/AubriasV">@AubriasV</a></p>&mdash; Supa Bot Fire (@supabotfire) <a href="https://twitter.com/supabotfire/status/606235211337232384">June 3, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

*Update*: The bot got banned. RIP in peace.

## How it works

When running, the bot gets a stream of tweets containing 'I' or 'we' via Twitter's [streaming API](https://dev.twitter.com/streaming/reference/post/statuses/filter). It looks for tweets in the stream in the format of a personal pronoun followed by a verb (for example *"I like turtles"*). When it gets a hit, it restructures the sentence (*"Turtles: I like that"*) and tweets it back at the tweeter. Then it chills out for up to an hour.

It uses [Tweepy](http://www.tweepy.org/) as a Twitter API wrapper and [NLTK](http://www.nltk.org/) to chunk and tag tweets.

## Links

* [Twitter](https://twitter.com/supabotfire)
* [Github](https://github.com/satyarth/supa-bot-fire)
