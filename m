Return-Path: <clang-built-linux+bncBCA3DLNM3MPBBUPFW2CAMGQEVQRPOTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 120713708DA
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 21:58:10 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id 67-20020adf81490000b029010756d109e6sf1112715wrm.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 12:58:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619899089; cv=pass;
        d=google.com; s=arc-20160816;
        b=InNRLjSO3/9g13umoJgQ2LHNtT3+go/EILy37VlL7UQnI6Bfqbd3bIyMs7TtKcWHak
         3ZmJSj5wwPNlbwNndhwINx3e1Lk7BZKpoMO05wTFTMDGpuNlZspc5fpDJQ1+jk/7L4CF
         Pod+LvLwtcckknGzP9xJQ7yiggC0fZ3Io68iiQpM5h2cED2HwW6DJGFYCWbpW3cNlnbe
         Qdy0YEclXMpxaiGjc3gwZp1ttMAtTzlZjW7GLmxnFvwefWjY4Mz60KLs9jkO8bXIIwak
         OX7Q9oJbm9dqkmti5tSVpknBDgkLqhYUGoBXoEAVcCw9rwBEyWFmS6U9eRtVHS98ROMQ
         VbJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Cnvn/FWD18XbQfXSrG/YjW6S4UOYSbGs1V1Foww+R1I=;
        b=LRGLG/QgenwTgbnXi6d1Uy8ATQMcD3uEXgFwLsPNFsON79wKNt8c1Fa9rqEMHzwoYA
         Azpr1dwIRbGsHp51N1qcwYvLYjx+9dJ/gBCG56pJ5XRnV52Max9UxqzNLcO9wDkJ5lIn
         DYII9pq2CFs2EmHlt+flRvqBKD0QR8uGtUejBxG22SZ5Si61yjadL9VMpNpt6tGEhTA8
         HASuvgE3hCLGcMJ9ih4S/JIVYb5NXy3ouysn9Oo3S7t5p0sAa0jLGccVL/5vAENH5O1m
         3aHaP/Hvfcarh4N/d79kjm+2807CM2EYVHlETiPwLQIUSnFscb6yrtURsu7jwBsCAtBm
         wC+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 2a01:e0c:1:1599::10 is neither permitted nor denied by domain of serge.guelton@telecom-bretagne.eu) smtp.mailfrom=serge.guelton@telecom-bretagne.eu;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cnvn/FWD18XbQfXSrG/YjW6S4UOYSbGs1V1Foww+R1I=;
        b=HGzQqwMNUVEAbeXnO4ItQxjb7tcN7yKVulaJ7DIG6n9dgi/Kzoosb6G5p9zXVNvfr3
         BXdftVXHNJPg8FYPxAaui1x81+zJHl3eT8+25xiIXQiegaCYIrCA/NArRDMd6Y/+vGnl
         NlMpqabqbyxjabRCr4CPOQt2Fbo02L5KOC2zOcjiOlJP8l0Sm6C3EfVYtOqRhzeijDTT
         X5RnKBXzjCbnKujwE/jlHXJ7Z+dPqd1rElbBAt6pCyDlFO7V9YtHG4uvRaMF3SR6ELhc
         rTvSdtvdlkWw1RSsWGYKf6zmN/2dndDhZK/bYtrNEHlLX3j9CAhBK7jH/xihlB+t5+p3
         ucjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cnvn/FWD18XbQfXSrG/YjW6S4UOYSbGs1V1Foww+R1I=;
        b=XISaqH8wRWuYOtyKT7582R02ohvI1c5iCGdXeyXFEcmEl+uXjLJ00OqwsLoFwHWKYg
         jZuP0e3LjT+bKPM+1D5WRhFjhS0jin8rCg9Mql7j854iY/tetPx3UHBdCk73kH3K6iQX
         rDG99t558h8qOVQczhAAU5ZpRj4kz+aridmTVNuW2cL8HAfH/P84MsSmHJ7dr+ngN9g4
         T8x+WWg28AjPeri6H4IqYxtF/yqJZAuLSjFdOWlN4Bv0Yj5upgeyHuGgGA/c85kT8PPm
         BzcE8KtKIi7ocWDKpboBroaeqer9MHesyI0bt15770W8MYI82w6o6WYfm0AUszdkr0Mj
         Ba+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pLCML2zagXNIyc/TqT9WwdxVak3guiLtEJYur+/0WitZ3f84/
	TBiJEgBNcFw28vvAt7LnjGg=
X-Google-Smtp-Source: ABdhPJw2yXoYW4m1NX9RU1tP+znqnZDrxglAHsJYOKWbr3YyDBDAuvB2AM6Y48RlRJ7itmHWb99Faw==
X-Received: by 2002:a05:600c:3798:: with SMTP id o24mr24109899wmr.12.1619899089830;
        Sat, 01 May 2021 12:58:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls8858814wrx.3.gmail; Sat, 01
 May 2021 12:58:08 -0700 (PDT)
X-Received: by 2002:adf:e686:: with SMTP id r6mr15025228wrm.187.1619899088770;
        Sat, 01 May 2021 12:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619899088; cv=none;
        d=google.com; s=arc-20160816;
        b=qpk/tI1/nOw/9D599zGXzTYLd5MYNsu+IfpsAR3Q/Ai5JiGKl2jiXTJtd2sLer9BVZ
         hDjs4hgXvlr++kNyXLs/PnpQf985DEHkChWSV/OFS7fXh1J3eCkmIh/MbFUiVL+47Jyt
         A5cPF9Q8G68aif1BsGBCMvbYl13J1SaEuG4Xnau2mqaDcJEcJebRRm8NpWZNlsqRDPtM
         iV8oA1PkrxQvUKYlWGLN3pDFvphIfHCZTNuigB5PgY2TJFVr745ZkW5/4z765PCH20By
         tvthI2fcVYU3tAyuTKvJl9hr++8XO6cG1weK+8TBllkaNZivJZDIyvNy2cyilb75h3fe
         zx0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=A9R4j7a8fI/3H7XHbWziyC6/tMo7wqo/k8KiwRI6ZK8=;
        b=ckd0GI1nQG4kRueZ3ogG3csCFdRpe8bSmgmKMHcdqDrUazQCA7dXCtRTgZmgmmwaIw
         xA0omC/A00/7s3fGByBhXkczVq5vHwyw1c3Onawq5rcAadXnlTlfHw5JwtO6oJ35go2I
         9T65N1uUE4Gv7Y7R03HlZJ4aSLkLyhXmXOZTPcaBwdGzgSPNXVhiyrRLBsFKyzx7MLg5
         VxWF9kCJeVLuoh6a1F5tZozzCrvxYJNdbBrOWtTbILyMSUyk+HXj2njudChcEX3iVDKK
         kyfbLoLK6NSq2o1PMmitY4+r9PI5sl2AV2Wda7HmrM+J7zm+51vnv07NXD/rgEWAYm4H
         jCmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a01:e0c:1:1599::10 is neither permitted nor denied by domain of serge.guelton@telecom-bretagne.eu) smtp.mailfrom=serge.guelton@telecom-bretagne.eu;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr. [2a01:e0c:1:1599::10])
        by gmr-mx.google.com with ESMTPS id s141si1347793wme.2.2021.05.01.12.58.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 01 May 2021 12:58:08 -0700 (PDT)
Received-SPF: neutral (google.com: 2a01:e0c:1:1599::10 is neither permitted nor denied by domain of serge.guelton@telecom-bretagne.eu) client-ip=2a01:e0c:1:1599::10;
Received: from localhost (unknown [88.164.140.197])
	(Authenticated sender: sergesanspaille@free.fr)
	by smtp1-g21.free.fr (Postfix) with ESMTPSA id F011CB0052C;
	Sat,  1 May 2021 21:57:50 +0200 (CEST)
Date: Sat, 1 May 2021 21:57:50 +0200
From: Serge Guelton <sguelton@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Tom Stellard <tstellar@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210501195750.GA1480516@sguelton.remote.csb>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: sguelton@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2a01:e0c:1:1599::10 is neither permitted nor denied by domain of
 serge.guelton@telecom-bretagne.eu) smtp.mailfrom=serge.guelton@telecom-bretagne.eu;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Sat, May 01, 2021 at 09:32:25AM -0700, Linus Torvalds wrote:
> On Fri, Apr 30, 2021 at 8:33 PM Tom Stellard <tstellar@redhat.com> wrote:
> >
> > Yes, it's intentional.  Dynamic linking libraries from other packages is
> > the Fedora policy[1], and clang and llvm are separate packages (in Fedora).
> 
> Side note: I really wish Fedora stopped doing that.
> 
> Shared libraries are not a good thing in general. They add a lot of
> overhead in this case, but more importantly they also add lots of
> unnecessary dependencies and complexity, and almost no shared
> libraries are actually version-safe, so it adds absolutely zero
> upside.
> 
> Yes, it can save on disk use, but unless it's some very core library
> used by a lot of things (ie particularly things like GUI libraries
> like gnome or Qt or similar), the disk savings are often not all that
> big - and disk is cheap. And the memory savings are often actually
> negative (again, unless it's some big library that is typically used
> by lots of different programs at the same time).
> 
> In this case, for example, it's true that a parallel build will be
> running possibly hundreds of copies of clang at the same time - and
> they'll all share the shared llvm library. But they'd share those same
> pages even if it wasn't a shared library, because it's the same
> executable! And the dynamic linking will actually cause a lot _less_
> sharing because of all the fixups.
> 
> We hit this in the subsurface project too. We had a couple of
> libraries that *nobody* else used. Literally *nobody*. But the Fedora
> policy meant that a Fedora package had to go the extra mile to make
> those other libraries be shared libraries, for actual negative gain,
> and a much more fragile end result (since those libraries were in no
> way compatible across different versions - so it all had to be updated
> in lock-step).
> 
> I think people have this incorrect picture that "shared libraries are
> inherently good". They really really aren't. They cause a lot of
> problems, and the advantage really should always be weighed against
> those (big) disadvantages.
> 
> Pretty much the only case shared libraries really make sense is for
> truly standardized system libraries that are everywhere, and are part
> of the base distro.
> 
> [ Or, for those very rare programs that end up dynamically loading
> rare modules at run-time - not at startup - because that's their
> extension model. But that's a different kind of "shared library"
> entirely, even if ELF makes the technical distinction between
> "loadable module" and "shared library" be a somewhat moot point ]

I tend to agree with most of these arguments, but let me offer another
perspective:

# from an llvm-repo, configured to use libLLVM.so
> du -s bin
9152344 bin

# from the same repo, configured to use static libraries
> du -s bin
43777528

As a packager, I roughly need to put all these bits in packages, across
base, development and debug package. As a user, I may need to download them.
disk space is ok, but network bandwidth is not as cheap for everyone.

Different metrics lead to different choice, then comes the great pleasure of
making compromises :-)
not

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210501195750.GA1480516%40sguelton.remote.csb.
