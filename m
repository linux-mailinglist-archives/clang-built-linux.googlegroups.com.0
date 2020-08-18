Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAVY6D4QKGQER7ST66I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F21248DD9
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:20:51 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id x142sf13423304pfc.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 11:20:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597774850; cv=pass;
        d=google.com; s=arc-20160816;
        b=F9N7HtSskpME7dJe5LmdcHeiD5JHvIE9Q/iomPVd2SWkSv9VYe+f033mjmwYHqxu/b
         xGWonqpack1mIsDCIYEXay8yujnC9QKBU1W4bmDafx4B8RsqO0zooShyV6YhwCVV9ziu
         fBqaBpg4e/TtSRz0o2X4aiMiK136cMaAAxOJQh1onIfKMMAVeI47sEWi8Lp30oDRZ7b1
         Ba0gGCuwWHBp0ObZ8relRFQI7NIHB2nkhLn8AqFUfxtRv9qSv0KtnSXiRAuyjC9JJPTO
         qYpExIPZv70g7GHhuIdPWwLrGbFUeVOceBwD3JYDYnVK4Hoc4HJSkO17xXE55I4IJrZN
         mhfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XOzs2diOOo6EetztO6ggup/g/TaWH68cg/EeIL6Grhw=;
        b=Eex64QASta9srd+vivVCnszeCS0T4k/xTjLlpOMFeuEWm7JbwHx5PlzeuHy9KV1feK
         1hK5ykM6dbephSCyUgOhkp/1pFuPRQiF4ERlTavntOkAS4nnsI0YK5tAc3NI7ZVs5k6N
         ew5xKhyc0Kw4UD58Tc4cJkcLzjnng+10z4n77uEEZ5SG6R0X3aCbUGFLDg0pqZH0JIS6
         hr3cDLCki0IKyrLf3/E9lVsTRbWfZgMka4EmFZYy88AJlBdEuwmdjGfze7DdTtr/EL78
         0VWrX0DMvsQHXOk1GJ4VtRLrQov9NN2yHj4z6hkKc8/V6TglFLXvXjJQwBD/ChxBrQl+
         TKHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FTWpxnSA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XOzs2diOOo6EetztO6ggup/g/TaWH68cg/EeIL6Grhw=;
        b=MhjB+RAVLCUtSFR1KUHj5SNL9cIknXwoF94NGiKbn12Sz3ygVa/Dqs9u7O8b59psCH
         0USTD1LXJ+XW/LkH1GdlDMJVCOVzUF/3qDGy2TR0wb7EN8JIUCFORU0bBQBgM1qLgcUz
         fQQTEOqW1XX6n2vKhQ++u3N34BVHoCM/pVRFhOLOcQNdAo057B0GnUEalU2wSTS34N0z
         1sbE+3FzRgAacnys4JQ6hFPg0/ec0X/LI0U1tf67k2N8vRFe21mok7+dWF1he9Q17tcz
         Fo0j8r6cdYZ7FgmhiUPK8iGJKYOxMx84tpKb8qwFcNyjfpjhDBC9wnKk1eQW6+J67ogu
         Qkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XOzs2diOOo6EetztO6ggup/g/TaWH68cg/EeIL6Grhw=;
        b=Vcl0KQu3MoAKPMAllCZD3BowpZsJOegzpqQnN1cRuUv5276TZOxMO+wqxIV4OKgqYk
         psoL7GCgltIFGFdin+q7T2ECCHevTrTv1E33TwFTsGQdqKKOCLwj6bcd4vcVHyR7DmWA
         l4gaS45LnIN5dZPWYyucSJaGNrK2YcBB85zV5J9DM0Xj3085wtJ8gJRC3U6cCe7E8eRL
         wNaBZ6936mA0amLh7mjFd1wCI5lMn6yg/BxCAHjbdqG53MSDbKpalPKWskNUTPZsbX6J
         hi8uH3u70ouRQplwl10z832yakvuIQnyUW5pDL51XcjL10rao/Hb+sm1ypx/309rnTP8
         ds/w==
X-Gm-Message-State: AOAM533pzuXlvdlEValk0HnAPsyic9S6CFoE9Y/8chn5zGQvn2bigU1S
	60ILv7iQSOk3+6g5SXc4bEM=
X-Google-Smtp-Source: ABdhPJwIxG12nTxZm8qs+cXJHWPGvrwLYuSfHWkFz2yVXt2F9gAxuxLk9aLEZe0aiVxfUIzZl48cSw==
X-Received: by 2002:a17:90b:1258:: with SMTP id gx24mr949184pjb.98.1597774850675;
        Tue, 18 Aug 2020 11:20:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:951d:: with SMTP id p29ls5847858pgd.2.gmail; Tue, 18 Aug
 2020 11:20:50 -0700 (PDT)
X-Received: by 2002:a63:c401:: with SMTP id h1mr10580959pgd.164.1597774850169;
        Tue, 18 Aug 2020 11:20:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597774850; cv=none;
        d=google.com; s=arc-20160816;
        b=V1zBBWLRNoiBKaSeouxzIx6dlIehruvl5BFe1e+3//2dSxEuRdgh9mZsDBtCQlLC1m
         UVfMIG4xZ7xNlcgBk3+yuCHRG8DyBUgPcp7J2YAHfsy33vaysfUIY9AzkzrVMzmNTb3A
         JAFjL+TNVDAt5Q888rpweHDZfAymQFEHGvS2JN1/XzwykoEO2mcYnyBetANoHWVoqWDR
         yB4fHzt00wil2jEJFK2PTrYjZLi3UUg65kkPRyfTZsegW5IOr4XcJ5rsuYAPa3Ogd3QK
         Nt+KdhERzqgwwCc18LaI4PtZ13BF25FjtB77uS+CFZxTi7PWa77fl89cRbjYOdNlgweh
         nBag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MfOVq/Wt6/4nzgnpEvTWaHNQRZgKP5c0BN2Gj8N5tbw=;
        b=ftLLWKs7CVHvgou9mwvqbaFIaN/pElJkjlX7y05tLqErtUeX/4frs3EGxzcpHINRCA
         LxLUIBCnLH1hoKZyQ0cMFxsbEoMxoAMIkKr8XTi3lSC4sY5KAEzsJWEaCPRORf08EunK
         PSQtwcCmQDBI29opt3BCl5fOJuy1SNxsFzWIVNx5DaXZwg6aUDCH8adH8PMBvRX3l4vw
         2v/X4ybIaQGXBPMGjDJTTzkq/YpLrE1Mqx8LISFfa21cL5T0i5tBM9H4xiBz3Zal9agm
         NgFXn/GOzphrftkwbJWLEVX0atBEz5kD3PZ1hzjyKlvQwCwBZ8zGFrCiP9iH+NST01BJ
         JXWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FTWpxnSA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id n2si1435569pfo.5.2020.08.18.11.20.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 11:20:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id v16so5013plo.1
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 11:20:50 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr959898pjb.101.1597774849653;
 Tue, 18 Aug 2020 11:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=+taiqCpyknLOm-+kVVWEj-PxX9t5rktj_tNBaQq4iTA@mail.gmail.com>
 <alpine.DEB.2.21.2008180736150.6891@felia>
In-Reply-To: <alpine.DEB.2.21.2008180736150.6891@felia>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Aug 2020 11:20:38 -0700
Message-ID: <CAKwvOdnyE3FtgZusG5fxhncKLmd6ytsKOUyVpT4nAykKyzr-fw@mail.gmail.com>
Subject: Re: llvm mc - plumbers schedule live
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Nathan Huckleberry <nhuck15@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FTWpxnSA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Aug 17, 2020 at 10:42 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
>
>
> On Mon, 17 Aug 2020, 'Nick Desaulniers' via Clang Built Linux wrote:
>
> > https://linuxplumbersconf.org/event/7/timetable/?view=lpc
> >
> > Starting at 7am PDT runs for four hours.  Just waiting on one more
> > abstract and it should be complete.
> >
>
> On Tue, Aug 18, 2020 at 1:26 AM 'Nick Desaulniers' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > https://linuxplumbersconf.org/event/7/timetable/?view=lpc
> >
>
> Nick, I am looking forward to this microconference.
>
> Just to point out some nice overlap (it is good to see multiple
> subcommunities driving with similar ideas and thoughts):
>
> Nathan's and Miguel's talk, Clang-tidy and Clang-format,
> https://linuxplumbersconf.org/event/7/contributions/803/, mentions this
> goal for discussion:
> Furthermore, we will seek feedback on how we can incorporate these tools
> into wider kernel dev/CI workflows, as well as what kinds of static
> analyses we should seek to develop in the future.
>
> My proposal for discussion, Maintaining results from static analysis
> collaboratively?,
> https://linuxplumbersconf.org/event/7/contributions/700/, touches on a
> similar subject and coincidently, I will probably just use the
> clang-analyzer findings as a simple example for the general
> discussion around open questions and challenges to address.
>
> Just as some insights, here is some quick first screenshots of using
> Ericsson's open-source CodeChecker to manage clang-analyzer findings in
> the kernel:
>
> https://drive.google.com/drive/folders/1prX-mKX5zyOgX4s0eIkCysGLqNUP6v7v?usp=sharing

(Moving most folks to bcc)

Oh man, that's awesome! In particular the "bug path length" is
essential; my workflow for attacking these is to sort by shortest to
longest "bug path length."  I think you'll find bug reports where the
path length starts to get much longer than 10 get quite hard to follow
(let alone bug paths of 100+).

It's great to see the report inline with the source; we could figure
out how to get clang-tidy to drive the static analyzer, but not
produce HTML reports.

>
> Nathan and Miguel, I will share more of my experiments, my demo, some
> screenshots and my structure and notes for discussion with you until end
> of the week. Maybe, we can take the discussion points from Monday directly
> and see if that is helpful for clang-tidy as well.
>
> Maybe, we can also meet for a "virtual (coffee/beer/favorite
> beverage/snack) break" (it is five o'clock somewhere), chat and
> exchange ideas and thoughts along what you would like to set up, see
> others contribute to, etc. I am certainly supportive to contribute to our
> common goal and I would like to know what you see next to be done around
> clang-tidy and clang-format.
>
>
> Best regards,
>
> Lukas



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnyE3FtgZusG5fxhncKLmd6ytsKOUyVpT4nAykKyzr-fw%40mail.gmail.com.
