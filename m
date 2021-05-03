Return-Path: <clang-built-linux+bncBDSZXKXZ3MMRB466YCCAMGQEINDOGSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D49371E2F
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 19:14:27 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id 93-20020adf93e60000b029010d9bb1923esf4307435wrp.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 10:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620062067; cv=pass;
        d=google.com; s=arc-20160816;
        b=NeyO1MSlwUOHiIjroC7MbELR3J3zfP8oqJ41COUXRTuCTIgYvvnOlxLv6voU2PWbkd
         +SJ0bWFSqnOHq60qclMWkGedU0QH+/vdIAGL5OCG65yS2bx3sK4bwqp8IBqBYgksmpn0
         vXNAhcPuh6rXPYLQwOw0SM6ofu7ZPD7J+G8UiDZ99F6TIAIypZOnQDn4U5BJ0fl8DIiI
         PV5DHT75T00K1E06u3WAupwqsB/+my3FlDD3U9XnU5BhIrF3iGzDKIFKVXuzdkqAzRg+
         Vaz+Z3+0AFAjj+eG3LBtGbJQEG4FiWAKsKOHt1END1zjsGA0p7gqzNLrBeUuJw3VDm/o
         oycg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=25Fkk0x+XNEBwCL5kP6rU7aLhfEvs1avE11DwtuYqwc=;
        b=Ddz+RyTLDYwl4Wg5O7r7I2ofL09XolXgTBo7GNz/uftq65N1q2rueu/+B5cgaf4VwM
         Ro/NOkT79UGlM1I04gPn2heUTFEyvl00Nx27r7NvY9K/ScMIRjvDmnMmfI5lpfTZ4ysX
         KpPmlSeCnCqUInX6dAID/3wVjQ1VN3MfG2UzeoBQ5YbNU59TQtnP4tUYj0VdEocy2Kwf
         xs8ETYNMpOrU0FqKBv1HRhBVaY8ec2QC2EjVjRjTwqO9ueXMrXRjc5EiFbA1LhuARJUT
         a3HW1v2RXm8ek5RiqiQ834xmaReu1txlDEWLFP8aUxIblFC8oW0EFvwK9ktTWuETrs6n
         Lkng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=25Fkk0x+XNEBwCL5kP6rU7aLhfEvs1avE11DwtuYqwc=;
        b=g7AnmjJhnMvle/ftZqbEn4VXwQXCS8cFPAv9YSo3poRwJsfDPlnFhTMLljeQufxdfV
         r/DSHWQyZ33/J8YXWmIVnenzva2m8HUNE1LCxX9fM6V/9UroZpqIX0sk2vDbfc/qUOaO
         nkiDijwnPe4YeGfyfsVzsquerbsr3HOAnf40K6VkdoyM+vliRffbAqHxcSYcTu7IkKw1
         UeJ3vKtxlzaHeicbOmq0BP/8Bb0uayd3RBOiF13nwPBUyktKEGzJVctEW5uEHgeqEZQb
         AbkT/BHYKsmqbLi/R7vfPY+pNkfsFkU3PpHcadlGZ8MG0Q57RSFCFwmf0wT0KdMvd/uS
         EpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=25Fkk0x+XNEBwCL5kP6rU7aLhfEvs1avE11DwtuYqwc=;
        b=lhsGHvHpQxjo6ijHg33FUHAHlGQu7jluQ0l/W5MPeeAwx0kvXgQUHlkT7sFeHcO8Fu
         6cchT7A39E79T9p8tOa/JDVODj2PbFC2tLx4FTLNkjKT/JfOIkal8D3Yscj2vWCW3xtq
         Z70avi2oL62/I3IsozM0BJuuPcJhjZyPtDD3PjVaod+1Hg6X6p1BHZOzY2M+CblGw6yM
         ptg1WhPr89NnMRr/0Wgb/WLx9GDXGFkXMkh1bSr/F+LOiJ6WLgX3UY7I4qH+JZhQdK4f
         710tvjLHQTNmBF7wPqRLddx4e7Yzu9x+ALWt54ZGFHRnZTtHp99WKCthW3/FektpQg0X
         /DBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337DLO5YaQVOSK8V6IMUD1IetggyvMm7wM/IYzoTYIerumAY4tt
	GXAMFkR9MQjRbJNk4Av5OZ8=
X-Google-Smtp-Source: ABdhPJxZ90WxA7aS7rwhlpjLLco/rPojI88PdlustVuZzTkaHZ0nLDKhqdOLQEh/pxolJW3FJwo96Q==
X-Received: by 2002:a1c:540b:: with SMTP id i11mr33263037wmb.40.1620062067728;
        Mon, 03 May 2021 10:14:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls2019408wrx.3.gmail; Mon, 03
 May 2021 10:14:26 -0700 (PDT)
X-Received: by 2002:adf:d223:: with SMTP id k3mr25964292wrh.99.1620062066835;
        Mon, 03 May 2021 10:14:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620062066; cv=none;
        d=google.com; s=arc-20160816;
        b=bBCInv0mP49RiF4iloxxbQSWmppX/OoOJ74FZV7BqOjzFrkWdfaSh6m8m1Q2Z58tgS
         a0txoOJjuXEeEbnOPEh3ULP75VOZiZNEBOWUW7r2qvMLHri9Z+uKCBahDmI/fpdmQrea
         uVFu33LO85uB3OzDff+HsVEzIqqVOukpORkLPLRByKBdei0LZVP21wSWH6eJH3WvIvj+
         ciZoFvbFSv8Dz4YFP67qbwKSaIGrvpIMbLMQSAVerP5IfKKYRaWe5IVJoMBYvLSveeyl
         gYqRQwSl+uu6TxrmDsPB1TOG/LJ7yT1sPd+BOJJajk1lE8b4upmZWBn/kkB1SyOVczAF
         wUXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RYylb18Ldy8r3VSFWHeUGFk3NA8FfaSNFSAHOFLZcko=;
        b=tT4aKtnRSlJ9RLGZrMLr3GNddm3x+cj9Y+KThdbsyTg3WP1vtyfgDFFoGdyfqqcJ/L
         OTsDqXZA2oQFwXoVwOosGkkRbjOqN0ZR7xHr2TEikQtPz2mhPwkbu7ndcc8ny7Oga9JH
         xn6u+8rNaYpsTW8Or4lwAb+7kfjZDidYavybfxDdFasYVJv8Y23zXN3vzQprinw7yiQ/
         sduqo7pIBjXD+F18SDl+FzoUfw/oe+XAJuv9zKbZgJr/61gzxlYTo90pyKnHQW2XHD21
         I/smWt4bOalDFNTGAzJfJjfwkflVr8n61feL8/hb3N/2A2Tfh3zVM4yzt5K3Gc04uLvi
         5BnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
Received: from angie.orcam.me.uk (angie.orcam.me.uk. [2001:4190:8020::4])
        by gmr-mx.google.com with ESMTP id z5si34127wmb.1.2021.05.03.10.14.26
        for <clang-built-linux@googlegroups.com>;
        Mon, 03 May 2021 10:14:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) client-ip=2001:4190:8020::4;
Received: by angie.orcam.me.uk (Postfix, from userid 500)
	id CFF9792009C; Mon,  3 May 2021 19:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by angie.orcam.me.uk (Postfix) with ESMTP id C372A92009B;
	Mon,  3 May 2021 19:14:25 +0200 (CEST)
Date: Mon, 3 May 2021 19:14:25 +0200 (CEST)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Theodore Ts'o <tytso@mit.edu>
cc: Linus Torvalds <torvalds@linux-foundation.org>, 
    Tom Stellard <tstellar@redhat.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Masahiro Yamada <masahiroy@kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>, 
    Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
In-Reply-To: <YJAOq9CD72EWaF8P@mit.edu>
Message-ID: <alpine.DEB.2.21.2105031838150.2587@angie.orcam.me.uk>
References: <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com> <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com> <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com> <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com> <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com> <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk> <YJAK1C1uLknYGYrH@mit.edu> <YJAOq9CD72EWaF8P@mit.edu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@orcam.me.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@orcam.me.uk designates
 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
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

On Mon, 3 May 2021, Theodore Ts'o wrote:

> On Mon, May 03, 2021 at 10:38:12AM -0400, Theodore Ts'o wrote:
> > On Mon, May 03, 2021 at 03:03:31AM +0200, Maciej W. Rozycki wrote:
> > > 
> > > People went through great efforts to support shared libraries, sacrificed
> > > performance for it even back then when the computing power was much lower
> > > than nowadays.
> > 
> > That was because memory was *incredibly* restrictive in those days.
> > My first Linux server had one gig of memory, and so shared libraries
> > provided a huge performance boost --- because otherwise systems would
> > be swapping or paging their brains out.
> 
> Correction.  My bad, my first Linux machine had 16 megs of memory....

 There was memory and there was storage.  Back in 1990s I maintained Linux 
machines with as little as 4MiB of RAM or 2MiB even with some 80386SX box, 
and as little as 40MB HDD or 64MB SSD (which was pretty damn expensive and 
occupied the whole 3.5" drive space in the PATA form factor).  Yes, 2MiB 
used to be the minimum for x86 around 2.0.x, and you could actually boot a 
system multiuser with as little RAM.  And obviously dynamic executables 
took less storage space than static ones, so if you had more than just a 
couple, the saving balanced the overhead of the shared library files used.

 But I agree this is only relevant nowadays in certain specific use cases 
(which will often anyway choose to run things like BusyBox plus maybe just 
a bunch of tools, and won't see any benefit from memory sharing or storage 
saving).

> > However, these days, many if not most developers aren't capable of the
> > discpline needed to maintained the ABI stability needed for shared
> > libraries to work well.  I can think several packages where if you
> > used shared libraries, the major version number would need to be
> > bumped at every releases, because people don't know how to spell ABI,
> > never mind be able to *preserve* ABI.  Heck, it's the same reason that
> > we don't promise kernel ABI compatibility for kernel modules!
> > 
> > https://www.kernel.org/doc/Documentation/process/stable-api-nonsense.rst
> > 
> > And in the case of Debian, use of shared libraries means that every
> > time you release a new version of, say, f2fs-tools, things can get
> > stalled for months or in one case, over a year, due to the new package
> > review process (a shared library version bump means a new binary
> > package, and that in turn requires a full review of the entire source
> > package for GPL compliance from scratch, and f2fs-tools has bumped
> > their shared library major version *every* *single* *release*) ---
> > during which time, security bug fixes were being held up due to the
> > new package review tarpit.

 Well, SONAME maintenance is indeed a hassle, but to solve this problem 
we've had symbol versioning for decades now, ever since we've switched 
from libc 5 to glibc 2.0.  And glibc hasn't bumped the SONAMEs of the 
individual libraries ever since, while maintaining all the old ABIs (not 
necessarily available to link against) and adding new ones as required.

 So it has been pretty easy to maintain ABI compatibility nowadays without 
the need to carry multiple library versions along, as long as you actually 
care to do so.

> > If people could actually guarantee stable ABI's, then shared libraries
> > might make sense.  E2fsprogs hasn't had a major version bump in shared
> > libraries for over a decade (although some developers whine and
> > complain about how I reject function signature changes in the
> > libext2fs library to provide that ABI stability).  But how many
> > userspace packages can make that claim?

 That's actually the matter of general software quality and the competence 
of software developers.  I have no good answer except for a suggestion to 
see this talk: <https://lca2020.linux.org.au/schedule/presentation/105/>.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2105031838150.2587%40angie.orcam.me.uk.
