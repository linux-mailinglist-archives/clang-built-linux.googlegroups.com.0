Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBE6I56AAMGQEXANTKSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 326F230F2DF
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 13:09:57 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id y18sf1609192otk.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 04:09:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612440596; cv=pass;
        d=google.com; s=arc-20160816;
        b=g/ti0c93w1v6VKT1pM4Opw0KNtOv5R6xlSinnZDA+lx7FoFMAEsHuGYRVP6gAlKnHn
         nnTMDXlFxseI3PB2tCU4E0B1i87VzISA85+673Sg9E3NcrTJ0lRLMgKyhU81lP8EaZvr
         N9ER5mR3zB5y6Uysc+BAgXj/9+Gi0Yg0oDmp4nSF8M+HcaZi7HvSm6aMsOZYIzJ4jUg6
         x1j7uV5dU9IKCfuyD3JHghdqoe3foFRjbE58Dy9bdSst7tU4/7oPGukQ9jTQHpIx0X+p
         dZaxOmz4YuJz0nYD+iYbiUnsYX/AK68ZaIK/KCFE3rq9e7N8ayQdjXIn4dRk/3Iv+2C2
         Hq8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=xBAz35mZdG/SiUfn9AVufWXYhNpFzegA+z3z8SmuvZQ=;
        b=YCQNGHPS1RUvF70lloDp8pRxXSqz1bJhuED4D1dbqt+h7aaR40dwm4tI1gzzCaUdPc
         i7UhBgk7VKl+PUjik0ljqb4eTvDFZjdHKug2ELw6cu44YLuFGdOM1Mg+QWnuEcnzpq3a
         MWIzmdj09H3Oqg9i9qtOXKMpBkRAj9qQv8tingUY9U9VRYZz0iZh/vlIfT6uGtZQvGwW
         XmWGSZvMrOwVQ0foK6GgPQbpBr2byJYJVvhw59I17WfRra2ik7UXdvsgTSBFuaAHzRvL
         rt/xC6z/O4BYiHMBCeElZXn7xLSH5M9XNZKqDKg8yBXkcLH9obDI8xrk5zKOPLd/BsQs
         SSug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fCziKORU;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBAz35mZdG/SiUfn9AVufWXYhNpFzegA+z3z8SmuvZQ=;
        b=Gf7aNw9S7XV4V7Yp4lxPMmcJbjfwVAp1kjmxIXUmm9RdDtnbXDnmDgBORKFzt2Uak/
         S+42JKX+t8Es71dh+q0LI27JR5/M4T3YhxuwszYHKuvFs0qa0l9Q2YMl2mZM39yQY9Gz
         W0KmMdhnP6VJJ+YKlJese4dq8bT1UVTA3UZRkNNepK3GaKrbdW95rxuJ+25zkSrGcEQf
         lUzfwtZiuTLDgpnxTTl+1k6J+O7g+9S0ECFZLxFfNeTl7KnV+Yml2j7PYHwXv1ViPNL/
         HSwmQv+lKH6dQnhbxttO39H4qtx9nnRlRS28pwAXWJfkkLPdsmV9t2FE9qotx5iGpYH3
         PRmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBAz35mZdG/SiUfn9AVufWXYhNpFzegA+z3z8SmuvZQ=;
        b=P9dMbsgCmxxfcfkIRhtDM5Tl6YDK5lArTn2FZ+YrJXLPggTgbbQf+s9KcbkjnkDkEx
         0hVPxi90ZDv4Ekhy4r5+2695C+0wHYMnZ3TFG6eM/MZ+/J00B+GDTaNR7C7Gdg4thd+P
         l+G3NK+3u5Lv6Pf2ClMthtxCaMUuJJogMj7TaNZ602QjP+IMnPtYh4Oq0ESogONEsFUW
         H16TtxnFKzVvCrYrxLKxKBpSf+vuq2UBwqMLf630+iDcweHiHEJf3S7bu4QOCdF1h++P
         txqUpy4VyzrKqMMEn3FCtnejZ9IoyKbuYp9tWGkGFLcmwKEBv+RVBP4GOsvSvehAmVIK
         xPqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Qx8WwVPqe305RxS4T3hLUlC1835QksWdX3PrFSiMQ3rGlgzi4
	gaeeJlBvcUk0DSaPWl9xuBg=
X-Google-Smtp-Source: ABdhPJwV1t0iRCJMiFyJQV1RlNLhdkflSoGzVTE3usfCykvw0TYxXp9EDJDnv7vm0bwt9b3RXQ8ZKg==
X-Received: by 2002:a9d:7458:: with SMTP id p24mr5287561otk.357.1612440595966;
        Thu, 04 Feb 2021 04:09:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:14a:: with SMTP id j10ls1277649otp.4.gmail; Thu, 04
 Feb 2021 04:09:55 -0800 (PST)
X-Received: by 2002:a9d:7c7:: with SMTP id 65mr5753146oto.283.1612440595543;
        Thu, 04 Feb 2021 04:09:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612440595; cv=none;
        d=google.com; s=arc-20160816;
        b=vMIEDOY58HIRuPtZ5Gqwlp/E4jRlVSDeAa48DMe8GT0eOWG1k0YVVhrEAJAnhBInph
         CqFGZv52jFbZsNH9Lw8puVwUfbtvBFcZaCv5CacszF91rezCFrINnDui5lPJWBaVnZRw
         0Vzrf3h2JipOHx7HApbHUn5aIvLjXn4jvWl/zY2yzp8GErIILD5yn/urkwi69Oz5UJs1
         r2teR7RQ2J8JydP/gBYraWHICQie72KFDFE/kZlJF6UNcuLF50qBOl5TVCzUiMzvHJtJ
         hK9yCgT5S28OtRyoZOSk0Ze5oiLf/0dLlgjpveMWZXdu1SbwwcQ3ncR/28UjHjmwDmX6
         JGqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f0Ib4/LcThc+zPDOgkYeqnkrr7emVoS1DkfSKP3RvfQ=;
        b=nR45hIijLH8uvaDoHBowAr1mYAX+dBikdwbz1BkeF7bDCtJqWyQUxQT4mnVxxJBbAG
         sdujI6QWhoUM84tBhFAlIdrGocKYfsDF2Wr4y0OX9BTETWgoKa8niOZ6KDViJCLm7GfI
         selvMa3/YmEBK7KK1h3lFTaosS4upNAtCJEq9ZYJ7Q0sOp+dzNksPqI6C5F0dUruzkmT
         Pgxr+BDjXyfmVFotVoxPrqwcaDaqOT0syC/dXMw5R5pltGwPF5asW1uOgkpNUQsL+oEH
         5G9pA0pzJORKCrHgRb8SoPWhphjhr1dd78YwgLcAEksgrC+nW+lBLlXbqzBaaQv65r2u
         O5ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fCziKORU;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m7si353886otq.5.2021.02.04.04.09.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 04:09:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 662B264F48
	for <clang-built-linux@googlegroups.com>; Thu,  4 Feb 2021 12:09:54 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id y11so3161572otq.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 04:09:54 -0800 (PST)
X-Received: by 2002:a05:6830:1614:: with SMTP id g20mr5327010otr.77.1612440593620;
 Thu, 04 Feb 2021 04:09:53 -0800 (PST)
MIME-Version: 1.0
References: <601b773a.1c69fb81.9f381.a32a@mx.google.com> <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk> <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com> <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <20210204114420.GW1463@shell.armlinux.org.uk>
In-Reply-To: <20210204114420.GW1463@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Feb 2021 13:09:42 +0100
X-Gmail-Original-Message-ID: <CAMj1kXH1U72-3i1F=i-FjYrC_mv9S7ypeA835JMubb=-yKjxOg@mail.gmail.com>
Message-ID: <CAMj1kXH1U72-3i1F=i-FjYrC_mv9S7ypeA835JMubb=-yKjxOg@mail.gmail.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Guillaume Tucker <guillaume.tucker@collabora.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Nicolas Pitre <nico@fluxnic.net>, 
	"kernelci-results@groups.io" <kernelci-results@groups.io>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fCziKORU;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 4 Feb 2021 at 12:45, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Feb 04, 2021 at 11:32:05AM +0000, Guillaume Tucker wrote:
> > Yes it does fix the issue:
> >
> >   https://lava.collabora.co.uk/scheduler/job/3173819
> >
> > with Ard's fix applied to this test branch:
> >
> >   https://gitlab.collabora.com/gtucker/linux/-/commits/next-20210203-ard-fix/
> >
> >
> > +clang +Nick
> >
> > It's worth mentioning that the issue only happens with kernels
> > built with Clang.  As you can see there are several other arm
> > platforms failing with clang-11 builds but booting fine with
> > gcc-8:
>
> My gut feeling is that it isn't Clang specific - it's likely down to
> the exact code/data placement, how things end up during decompression,
> and exactly what state the cache ends up in.
>
> That certainly was the case with the original regression.
>

Agreed.

So given that my queued fix turns this

cache_clean
cache_off

into this

cache_off
cache_clean

for v7 only, and considering that turning this into

cache_clean
cache_off
cache_clean

(as the diff tested by Guillaume does) fixes the reported issue, it
seems like the safest option to me at this point.

Reverting both patches, one of which has been in mainline since v5.7,
seems unwise to me at this point in the cycle.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXH1U72-3i1F%3Di-FjYrC_mv9S7ypeA835JMubb%3D-yKjxOg%40mail.gmail.com.
