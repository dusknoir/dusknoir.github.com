---
title: The Weakest Link in Warcraft Security
date: 2012-08-27 20:08 -04:00
tags: ['security']
---

Did you know that [battle.net account passwords aren't case sensitive](https://news.ycombinator.com/item?id=4022145)? They're also limited to 16 characters, and exclude some non-alphanumeric symbols. And passwords are very easy to crack: computers built for the purpose, with multiple graphics cards, can test between 100,000 and 3 million passwords per second. Still, you have an authenticator, right? [Two-factor authentication](https://en.wikipedia.org/wiki/Two-factor_authentication#Tokens_with_a_display_.28disconnected_tokens.29) should make up for any lapses in Blizzard's security.

It doesn't: [Xandyn (allegedly) accessed Hydra's account](http://www.arenajunkies.com/topic/227822-proof-hydrahacked/) and disbanded his arena teams. Hydra's password may not have been great, but he did use an authenticator.[^1] Xandyn accessed his account by exploiting the weakest link in Blizzard's security: humans.

Conning Blizzard
================

He called Blizzard and presented a fake ID, claiming to be Hydra. We can't blame Blizzard for assuming Xandyn was really Hydra. They don't record photos, so any ID with a matching name can be used. That isn't a problem on their end, because recording photos and ID raises several problems with regards to privacy. [People don't like their real identities being tied to the game.](http://www.joystiq.com/2010/07/09/real-id-nixed-from-blizzard-forums-morhaime-explains/)

The fault is in Blizzard relying on that alone, because of how trivial (albeit illegal) it is to create fake identification. Surely, Xandyn couldn't answer any
[_secure_ recovery questions](http://www.slate.com/articles/news_and_politics/explainer/2012/06/mitt_romney_email_hack_which_password_recovery_questions_are_most_secure_.html) that Hydra may have had in place, and couldn't answer any questions regarding Hydra's billing information.

What to Take From This
======================

In security, [the weakest link is always humans](https://en.wikipedia.org/wiki/Social_engineering_%28security%29). And not only Blizzard; you couldn't count how many people are more than willing to hand over their information to an in-game password inspector. People need to choose secure passwords; they need to choose secure recovery questions; they need to use an authenticator; and, most importantly, they need Blizzard to respect those things. This could be the catalyst to widespread identity fraud in the PVP community --- it being illegal didn't stop DDOSing.

[^1]: [Hydra hacked 2 days before season end&#33; - Arena Junkies](http://www.arenajunkies.com/topic/227779-hydra-hacked-2-days-before-season-end/page__view__findpost__p__3750781)

