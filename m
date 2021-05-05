Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBDW2Y6CAMGQEGKRDQHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1AB37335F
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 02:55:44 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id s82-20020a632c550000b029020f29c9e921sf363760pgs.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 17:55:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620176143; cv=pass;
        d=google.com; s=arc-20160816;
        b=OHDrsCMP79rmPPDsOAHfITnix8GHePkKAGn+9T7kKyvUJdX1yHppi13/qRjX6GqhdA
         7TteObvQvPBG55mZYh7Anf+dKQjf2bgslmoKqBeI2ft8ZP6JrdkJ/7bOtzU3R50eQWrQ
         eRm7YFihemmPjZbyfNPM9Pic5Hyc31zcQruJAutPz1+D/0r6zg3XLA/KyIjrHB3Rz6zE
         HKckUSYTLUZfVRiwWIQCnn1p0Rpn7kF/hUoB98OdGTTpPXQdU440J5Z91WZOugEkO7tP
         YxJsJWKmL4BRqZxPVWtT2LNLCRPi9CDnzsBSS2N1I7E+37mqFgFSRR5c8/IrdTtIdslS
         JxvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4t+Jm5wfcS7XIdvKjGC8k6kYse5kfQBvg5JEnMXRPn4=;
        b=zVCs6cSDvx3FOwnKFADf7eT0HAL+bmqKyy+8nD0M/m+XagC6ahgBAObmiAjr0yHwht
         2VMhnGT0HB5MvQNeIrHCj6E4iR0tqdhUP6E/J7f4hNO/ZY1M/9QD14AMMyh3ftr+y056
         3StMi2poBuPs9vfFGj0uZmuyA+fZM90RKfzVKWRw5uoZC7zHeq7Qwi8YR2J2eEB1x/83
         tRd8cReQJHwXBY0I5CaJA2rbJ4yprgCQZzPpp/vxUmD1UAmRx7JgnkG/SQjZLGWtd7xa
         fu50bYeW/JDcF7bE6xWpEA7VoakqNcuw8omm9NsH86c1k8fhOeBP9pS8RlqoCpqplROf
         C+XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4t+Jm5wfcS7XIdvKjGC8k6kYse5kfQBvg5JEnMXRPn4=;
        b=T0p/WYe9ayGcVnXof5C/uiiRBrvAvlDcfSxo0togtHnnh5Fl0mUhyQzh6TGl9X2z46
         NuvZ2mOeZ7/axFTTWwS4B+/m0Da0Mh7TxHPQmHNzqdAlOgU07vmqBqUq7tJV+6/EqgpZ
         GGaSKbnE59CUxwskZJzInybEvFVSxu0djusoWNYC+SaPTV1ExMp18AGqzBRr2kCsO3Z4
         V1xRxGKhbCq265weV5r/Ii4pk1Z7iar3zLjH1Eo28cPDF7ukmS6bxN/jY7hqn+HrCr9H
         Aa6ovv9PPNxBHMX9W3CE5BIW0ujxHVdIXWO1KU1nbFcMTUtmj7H2thGxvz0caR9LLmCA
         Gv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4t+Jm5wfcS7XIdvKjGC8k6kYse5kfQBvg5JEnMXRPn4=;
        b=nTLl0V8BG/J46FM5De3azGU7k26ppFepkvjM6emNaMR2+RSfnlZQ51hEuwefElszSb
         xRO9eaoz9NmLGWzs+lX0PXx19DVXE7wnGgpmv9pAGP/pqmvB9qcVssXoI5rwAW+tlGcI
         gOhYydeshHKstzNsBKAqOLOjJGFu2u3Uqd1xycpeq66cTm7vIv/h3yORvotJls7Nu2NP
         NU2UOBbnrVUkUCXBlc3dMVzjzBF5HfT+INeXZ6OW81gCXUNwrQ8+eL1cmfUtM/FcvbCj
         oWD5MDzr/11VSylnMb7kK5tJEMy0oAibGZgGas6Hd3ZuB33GlrZ5KRpU7KwT24W2fRxR
         wbQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532f1YbtoPxh8fmELXQgtwNFflGgZMOPXXCqC7x9ZPbLHvFXARKu
	d4RmVhKuqYbShA77PR9niNE=
X-Google-Smtp-Source: ABdhPJxCSq3y3WsQpDJOfZKoBCqHYmD5VTzTLB3Y2TlTA/W8s9h9SSh0JCjG9u7Db4ysx3VOgI3dyA==
X-Received: by 2002:a17:902:eb54:b029:ed:19ae:bb17 with SMTP id i20-20020a170902eb54b02900ed19aebb17mr29457718pli.61.1620176143045;
        Tue, 04 May 2021 17:55:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7d89:: with SMTP id a9ls10342913plm.7.gmail; Tue, 04
 May 2021 17:55:42 -0700 (PDT)
X-Received: by 2002:a17:902:b68c:b029:e6:bb9f:7577 with SMTP id c12-20020a170902b68cb02900e6bb9f7577mr28601994pls.0.1620176142479;
        Tue, 04 May 2021 17:55:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620176142; cv=none;
        d=google.com; s=arc-20160816;
        b=iw7inBe8Y4o23nH/RyndEI0G9frQKw6WRdCe/RakHmiTRTtoQVhA9iXgwkmQ3G2jtd
         38FFlSQfAb5w1uQPp1yVeWZnYOLuLxwi+P6r26ZAwlDG/U0mafic+5gbNxlmIUdbYfY0
         odnuuqlag4Osnt+WdcdTPytdjyk2F3wC7RQKTgEkWh2PVsqQ/CG2Qjlzui5VC1i3ud42
         UNda9LH9RBEFb1B9qngB92yhBXFPNe3jZ2FMx4S7RoOGCZgB3J9pCdlQ++3ytHjZ6GhH
         4e0S5pZcdT0kx4ypviBCsLQyFbrJfDrgSQKjZTe8vYJLe5OgM3Iw1X2x0ynwIkjQ9YAo
         urjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=wqdA+cSVSbdoUnh/ZYwMHMr7Xc0skZhj3LP5mAlyLyQ=;
        b=l9WgSIqU1wBEzsKepUAEqNwIX3IOnKFGZL//2X17uqs660NYPPaBTHCT44amDVC2h7
         65VJUofQ4S/yJcFmdkYMxXLATbOCKJPbiD+nvznApdSkCU0bpRT+YGOT3HYhwoHMTcvG
         +zCLFBDadQky5NWgfOCq1A1lbEpdsBD4IOAM1skv7Oj36zMgnO2PC0iCQmeo9kLZZUoW
         jM8DKsqQHFXw609BGI7N7U0trXQH6iPTRkVdjh+n6x4g2Y1/7Lxk2J1dpJs3iV9CsErR
         YqK1+65/5lq0vuJFw6Kdgltwtj8NnzO0Llw7+CA5Hh94pC88vIyiSa8vFBPmJnoMd9+k
         PIKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id a10si385778pgv.3.2021.05.04.17.55.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 17:55:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 1450tcRo016413
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 May 2021 20:55:38 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id 3A57A15C3C43; Tue,  4 May 2021 20:55:38 -0400 (EDT)
Date: Tue, 4 May 2021 20:55:38 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Greg Stark <stark@mit.edu>
Cc: "Maciej W. Rozycki" <macro@orcam.me.uk>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Tom Stellard <tstellar@redhat.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>,
        Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <YJHtCr9rWC0HqHGk@mit.edu>
References: <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk>
 <YJAK1C1uLknYGYrH@mit.edu>
 <CAM-w4HOJqDUyK9HXjtqD3K2ja1Wt=u2s5waQ1wqm7jHy0P5V-A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAM-w4HOJqDUyK9HXjtqD3K2ja1Wt=u2s5waQ1wqm7jHy0P5V-A@mail.gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Tue, May 04, 2021 at 07:04:56PM -0400, Greg Stark wrote:
> On Mon, 3 May 2021 at 10:39, Theodore Ts'o <tytso@mit.edu> wrote:
> >
> > That was because memory was *incredibly* restrictive in those days.
> > My first Linux server had one gig of memory, and so shared libraries
> > provided a huge performance boost --- because otherwise systems would
> > be swapping or paging their brains out.
> 
> (I assume you mean 1 megabyte?)
> I have 16G and the way modern programs are written I'm still having
> trouble avoiding swap thrashing...

I corrected myself in a follow-on message; I had 16 megabytes of
memory, which was generous at the time.  But it was still restrictive
enough that it made sense to have shared libraries for C library, X
Windows, etc.

> This is always a foolish argument though. Regardless of the amount of
> resources available we always want to use it as efficiently as
> possible. The question is not whether we have more memory today than
> before, but whether the time and power saved in reducing memory usage
> (and memory bandwidth usage) is more or less than other resource costs
> being traded off and whether that balance has changed.

It's always about engineering tradeoffs.  We're always trading off
available CPU, memory, storage device speeds --- and also programmer
time and complexity.  For example, C++ and stable ABI's really don't
go well together.  So if you are using a large number of C++
libraries, the ability to maintain stable ABI's is ***much*** more
difficult.  This was well understood decades ago --- there was an
Ottawa Linux Symposium presentation that discussed this in the context
of KDE two decades ago.

I'll also note that technology can also play a huge role here.  Debian
for example is now much more capable of rebuilding all packages from
source with autobuilders.  In addition, most desktops have easy access
to high speed network links, and are set up auto-update packages.  In
that case, the argument that distributions have to have shared
libraries because otherwise it's too hard to rebuild all of the
binaries that statically linked against a shared library with a
security fix becomes much less compelling.  It should be pretty simple
to set up a system where after a library gets a security update, the
distribution could automatically figure out which packages needs to be
automatically rebuilt, and rebuild them all.

> > However, these days, many if not most developers aren't capable of the
> > discpline needed to maintained the ABI stability needed for shared
> > libraries to work well.
> 
> I would argue you have cause and effect reversed here. The reason
> developers don't understand ABI (or even API) compatibility is
> *because* they're used to people just static linking (or vendoring).
> If people pushed back the world would be a better place.

I'd argue is just that many upstream developers just don't *care*.
The incentives of an upstream developer and the distribution
maintainers are quite different.  ABI compatibility doesn't bring much
benefits to upstream developers, and when you have a separation of
concerns between package maintenance and upstream development, it's
pretty inevitable.

I wear both hats for e2fsprogs as the upstream maintainer as well as
the Debian maintainer for that package, and I can definitely see the
differences in the points of view of those two roles.

Cheers,

					- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJHtCr9rWC0HqHGk%40mit.edu.
