Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBEE7Z6DAMGQER4H66GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id D02DA3B243A
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 02:19:29 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id r17-20020ac842510000b02902456ec03025sf4478256qtm.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 17:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624493968; cv=pass;
        d=google.com; s=arc-20160816;
        b=xW8fMLQRKSFy+4adv0tOq0n/vb/s+7O0CWlu5Ai6Wn2iWbHfes44PHeQ1C3S0HxYCD
         MHyP8PK4ZNaWnBNXSL9BDUWgVt+BMMQ+ZwgpuaA5GzI6flfqudbY/SojcqLPjwhHrUDr
         OGIeBeJ6YwKy8/E1D93PKGlgRBsZqCgc0yYfz9dPjSgRLt/lYyFWhE2kMVe2tbOroXEf
         EET2bhylteIvEOuj4yCt4x2OEuOzUE8NcYyLJxdPyXaMHlydHdIybXDTuX6PIbl5kML/
         yNbu6bmxuM4n5+Uo5Qj78tEFOFrinyK4+1NoeXaSs/6R6xE8opaTDYVARJcbHU6pCHTv
         DTcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=5Bx/a4FI2UIrZxgQ7CYjiXmWvAYzlEUegH2plaL+uSk=;
        b=SSVw9KMialIXrQCjDLbFTGrZYEWhWDJa4ht0LTO7YIueRE742vJYPMpz9XA4WGjVtT
         umietgnBmlqsnEo7i/4RZ58x7Gg13FhCtaGrDfsjQN+5K9DIfXO/K7PKYkEEFXh6K4G8
         j98A1Cw3hgX81YdXPXTR/xlHGDqvXz4E+TSF42Uh2v9hPThDJgMVR1NPDyo0FvDvewEx
         kLSewkrNJH0aNZYu3FqGH0Cf7cFeG6qX6uZG3niGxOiwZxsmBchoIud6K9O+3BBHg9ag
         crO/eNDwdTGpvrNwaBDh3ZuwSQWo2qCp+WAVmBgs7xGo17W5UVVQZuE65/S8YDLXcPR4
         s9Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sHaCwDox;
       spf=pass (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=20by=LS=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Bx/a4FI2UIrZxgQ7CYjiXmWvAYzlEUegH2plaL+uSk=;
        b=OXODxiCwH8bqurgvFYloitbXK2lg/6Ibeql87ItWmgNM9a0M5dUAfML70BEumSpgYM
         HcEfMq4flK7TnUHnY/MC5xoKYxOUXfdL9BYPWTKWfFhML/DMKQHIoDOl+zTyCRgxA16M
         IRxgoTjLfWMHQZFNIsMMr7YfYk/og3g6X/+s7cGETI3Qc0yV5XZvDA9d2T0cqfxaN48s
         Vkikdc4mjSURlOpGreEjzDQe/jhPSblEoN/WlIVTRmYEPGEmOg92txlHj9h4zzSmg6iv
         P5NTDUDNWOLaEu2YaNwn44+X7w8rRBwL7FSLT7KNW5rYSuTcPp7hT4MN92WRt9SCg3RI
         oFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Bx/a4FI2UIrZxgQ7CYjiXmWvAYzlEUegH2plaL+uSk=;
        b=Wkx6NSMWWBqzmvdXnhMMlwkiXcJOQ4dCbv6MPlcCDgO0PHE+5cg6EA+MgmRltxVJXB
         xhVC78mk4CBInPwyMuxaHdpxnbkqmB/6omo+hLcEooQVd8mumH57HG7SITt4QqwYhxyP
         IXgmXsx8Xj4yt9C1rAGxFy/bEMVEZ3w4lUZ7FnvzpyPbvY/FE4GZGDoluOTjkoT+Dmgk
         8bJjOE/n45BQ/Sw5GgrW1VTDD0KxrpGeEBhsURiDzhCRTiUiOPak4sGqKGkGzUk99mtR
         Tywh7X+vLxUU+FUuOSis4TgYZLFvDDlOdWLJpixh07aI9fzRAaOuFSjBAlkbLUP9dg/V
         n3wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EkWG+LKKdQcE3pVQ0/quze6hrdWPjV04ujYmbA1fjbEt8nPPQ
	es5oy9BA5ECSmfI/iRevK18=
X-Google-Smtp-Source: ABdhPJzH6imwdl3ZlnLiTMCjTkdI61F+DrdVbu1Kj+tTZokDbHozSROiJZUZPe5hOhfyQdR+MjwhAA==
X-Received: by 2002:a25:b8c:: with SMTP id 134mr1220456ybl.332.1624493968542;
        Wed, 23 Jun 2021 17:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:3c3:: with SMTP id t3ls2168341ybp.4.gmail; Wed, 23 Jun
 2021 17:19:28 -0700 (PDT)
X-Received: by 2002:a25:25c5:: with SMTP id l188mr1098461ybl.41.1624493968136;
        Wed, 23 Jun 2021 17:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624493968; cv=none;
        d=google.com; s=arc-20160816;
        b=D2HSPPFowZ3vRC0FvzwjJ0yl2/2rl8aftC157TaSScIi0NM/o3Ykz8ye8qELEuDolo
         4SR42Y4tBo3PIOXVi1J83PAB8rlraOgql7ZWMXWLC12uQmPygokJJSHybNPIEUXilJAG
         daRTh+OuaHYd8R4CoiDpCiNI4x+Ahnav9M084uCih4g3Dc2cOrMafh2Vvhg7N+n4sY2H
         +pkq0YumbpntBR1x0xyqJXmZeEwAgvFS1MltZu609b7Zsb+OIf+Q79IIjpEqKmQpE0jV
         sBeQ8FC2B3r49rGJwslVAdEVg64fJngslKU7SOEhinqGBGmKDfIAEnP9mqnDqCrH2mv+
         Qbqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=80WNEcgMjOX1BxOcZNw/jURKPRJ9npx+iMl3NIjFOFw=;
        b=Y05BLesSHDqY3yVAetvDwjM5AHQBxCapIAM4Syj9JSECo8gwTqpjhNbD+P0zWZsf1y
         hrq5UAbzrEDfglHSP8sufZfukcCRi5hKUibxQQDZ79QWNa2+PzCDtXxVh5v6ITSLrT30
         w+khtdmEJsjIUv7EunqkCd7V1H9TFUXsKz84nnuKBeKXwrbTyNqQHMNpNHT2Bcw3YGUg
         vrGEkPMLBRUlaacpnfbmYzazpgoWO78RcHKUa73jZBEt/RHZVnEchTOLyVXTlbjYCwzD
         fixMwRj4TdZiZuigrrdwaAhAloWMjsmXYQlKzjT2VofNhj7H4FdZu3to0Ci3SkkUuT5r
         4yyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sHaCwDox;
       spf=pass (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=20by=LS=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e184si154038ybf.0.2021.06.23.17.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 17:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 444E060FE9;
	Thu, 24 Jun 2021 00:19:27 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 186885C08D8; Wed, 23 Jun 2021 17:19:27 -0700 (PDT)
Date: Wed, 23 Jun 2021 17:19:27 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: aneesh.kumar@linux.ibm.com, LKML <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Marco Elver <elver@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Build failure in -next
Message-ID: <20210624001927.GS4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <20210623223015.GA315292@paulmck-ThinkPad-P17-Gen-1>
 <CAKwvOd=Y1fhJM7NpotvjNy3OE+JtqEBy046ctwE=cqV_ge5tgw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Y1fhJM7NpotvjNy3OE+JtqEBy046ctwE=cqV_ge5tgw@mail.gmail.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sHaCwDox;       spf=pass
 (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=20by=LS=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jun 23, 2021 at 04:39:11PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 23, 2021 at 3:30 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> >
> > Hello, Aneesh!
> >
> > Yesterday evening's next-20210622 testing gave me the following
> > kernel-build error:
> >
> > ld: mm/mremap.o: in function `move_huge_pud':
> > /home/git/linux-next/mm/mremap.c:372: undefined reference to `__compiletime_assert_395'
> >
> > Bisection landed on this commit:
> >
> > 257121c5aabe ("mm/mremap: convert huge PUD move to separate helper")
> >
> > I have no idea how this commit relates to that error message, but
> > reverting this commit on top of next-20210622 really does get rid of
> > the problem.
> >
> > The following reproducer provokes this error:
> >
> > tools/testing/selftests/rcutorture/bin/kvm.sh --allcpus --torture lock --configs LOCK07 --build-only --kconfig "CONFIG_DEBUG_LOCK_ALLOC=y CONFIG_PROVE_LOCKING=y" --kmake-arg "CC=clang-11"
> >
> > Run the above command in the top-level directory of your -next source
> > tree, and using this compiler:
> >
> > $ clang-11 -v
> > Ubuntu clang version 11.1.0-++20210428103817+1fdec59bffc1-1~exp1~20210428204431.166
> > Target: x86_64-pc-linux-gnu
> >
> > Thoughts?
> >
> >                                                         Thanx, Paul
> 
> ++beers_owed; for the report and bisection. Also reported
> https://lore.kernel.org/lkml/YM0mrZIPM+sWTDHf@Ryzen-9-3900X.localdomain/,
> let's chat over there.

And thank you for the redirection!

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210624001927.GS4397%40paulmck-ThinkPad-P17-Gen-1.
