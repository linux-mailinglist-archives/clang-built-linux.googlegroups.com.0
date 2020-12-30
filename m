Return-Path: <clang-built-linux+bncBCKYNX7Y3IMBBCPRWP7QKGQEAVPXIDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9B62E7CE7
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 23:00:42 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id j70sf10870812lfj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 14:00:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609365642; cv=pass;
        d=google.com; s=arc-20160816;
        b=gZTHv/kGuTHklAywA5dwsVLFglAq8P+EQ58NtHAlZLo92Bj1zsLe1h2eiXc6ja04S8
         lywNHJJpPrMw2fVMcU6Ppo5vMMnQc1UqwhrzxlnyQ+c0+FWBXdWmqSYGlGbKlLlfZIkq
         3W6F/hqNolmP9BA9joae7gPAPKCgsWJX6PR/3WUU4fgBPcNA55MzdKLm5HFiJzygM8cl
         PzcAvRvCe3v+/bk0opxfSu8Wwk+iqP2bI0ItplK0+V6sbEyKasfIE15oZXRIflegfRYH
         j0K4eXOtI3e/gKMVYiT2BHkEXdZsY9NpdsX4kTjJENq1u5WvfVRL9QydLJv/GmnQt2li
         ou4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mfRQbd79OMunx9T1tZt5Ohvf3O/OVIgdkEE8Tu9Q4BA=;
        b=haEig7RkXUZy+vlNkQMpwhwXoVtZACeLQQraUvm+9Wa5VJM0EAOAEjatrsW+Jfo0bb
         PS6lf7TCNoODoCl8HZZl3Jgf9O/kmDn3FSgCSoR+cZ5ES0tDNkHHNLx++Far5GKsZvHd
         wQkmrrQ0Gx9mp+3ya7pvngQXDJlu3aJGTn/PN4JlL3QksGOMdz63Xr59jGqGKMcuI2Xw
         pFJYUmYOsj9dv05VbpFYZHqw9ZM6ffaVNSwpigPccDedSlHUSBVw7Gf6UKZqF3Z4U1DW
         C9FK4IRuc901LG+hyFEPVLcCV2Vtc0O36kbBfMvtTviT9057r+uT/1C66Wam7QILalAT
         2eFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.178.232 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mfRQbd79OMunx9T1tZt5Ohvf3O/OVIgdkEE8Tu9Q4BA=;
        b=OuRawvirsQTz96ajSMtGavC1FmsENdWDiRF/YFxrW+kp6NhWnboxA3bnF3UOpxqBgR
         hDJwC6G+9oRgnJre13JjLeeAgc0zfxeGGfjYJtK5Sdlgx/75hihg5dED31VIWDFSl6jG
         QUZ4Mh0RubLvmGshskQQ5YT1BBJyh50tqQFNTk1xsPog5Yy/7zbTsQWEcLIkgZ29XlG8
         r9pEfk9ybui8Lva6nyMXE1OVShuT3lqwXOse+cOt8PBj05Wmw0FlvWahausvRclE5KeA
         F16cQ/s9s23UGybtp1pU/mk8/7HGcCXHkzYbeGtUtHeEVkoqErnfhpYsCpAIMOyLcOWH
         W/RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mfRQbd79OMunx9T1tZt5Ohvf3O/OVIgdkEE8Tu9Q4BA=;
        b=K4QBfznz+xz4yGmmMqoYtJ0VVgkPSU03oqodHYl+5gH0ZB3RrEYKdicuXIdX5Rh0Sl
         eSwqj92QuqPhKeiW+LPIBrh3p3DRQlYs0xCK+DfkN87twBgwBldS8bhr+3qxdgBtXjWV
         PtwrUIg/eE4e/XxoCNWKThnz4+TgWZRaN4goMk0RJhB2FfsWIsIKARO7nbUS7Imt6Vl6
         XTJ03yn98qlkiujXjSP4/BnU7LVQIvlycc/27sL8gdvHZFsi1euGTnvSN1L6oG+8VvXG
         YrIeFvwmZl1UYF4B+fHimnxZqq0rKGXUqdY5d+yXZdaLEPzGvIv0+byRtZxFDLqDx+Y1
         3naQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CUnfoiM9g6FRbmKw2l4Vqh+na/dN98O/e50RkMJ9A4B8/tUzP
	JySGF3+ooxAi6bpk6YGmxtU=
X-Google-Smtp-Source: ABdhPJxJhPvhJ7VegMHJMC0J9sEO3o1knw7QSFZssotd2NNWuI2RJShUX0bRiMWZUMXsQhGaZNjvmQ==
X-Received: by 2002:a05:651c:315:: with SMTP id a21mr27879368ljp.403.1609365642136;
        Wed, 30 Dec 2020 14:00:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc2a:: with SMTP id b42ls12665087ljf.2.gmail; Wed, 30
 Dec 2020 14:00:41 -0800 (PST)
X-Received: by 2002:a2e:a402:: with SMTP id p2mr26518451ljn.270.1609365641061;
        Wed, 30 Dec 2020 14:00:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609365641; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7UcXOaRmDo6xbEAv4JcygX+2Z722fGltKridL9tiW5HIMFXgkRoAoxvGI68Tyog2h
         wVxXY5xfrjrGKrcedj8DkkYnh0jZx9PlFLssF25TsRQm3BgNqDfRIccHJpiNJd66BAee
         Oqg3JCVayPFPK8qKC0vuinSKZa4gzLU1MzfmxsILDftD2kEuGRiqrJmrN/h4OEJztZJA
         FoqsFhs+y2E5RythT7drz07+sJwboegnqrveTARtkfVnfy4FHLbU6FbPNM7iuWhqMUGc
         eWJRLR7/IjyChaAiLP6RrMtXrIeXt9Gnh2ck6X7FMYrWBWsYTPiLjDNGvbsurupoZuDx
         GwiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=1fWraQed1ezVslrmyYtir21Zwsyr02WdeQHLNKtfwD4=;
        b=bJ75hshtUio7KpcZiA06aDOGmKx/FZ6oHf9fa3qKJct4dTBUEjwTHAyDrT1zRlXT7t
         fowl1NGFI1xb1JxhiymWmmhwnUHLTK15Y73htpktUJZtEO381PsbIohLQWT9/ULpvodD
         mfSBrBlM9NM+j3DNYkzAdNH7FemlSxqx2i3qqLtWKlYk9viXXrZVyPFGjeq7cfKMlAfy
         f6MDRkGqgXzApi1mdwjG1taxEuT6Zuwl4OKt8TcB51W4+CTmQmyA1awaOx8N3vRUE2Av
         kB8Tyg1kGcyUFxTqIsEndvDaYUmkrUBhcBRxuZjcs9U20JVNr2UqwHPH8z264Ww4R2pX
         BsGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.178.232 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net. [217.70.178.232])
        by gmr-mx.google.com with ESMTPS id q28si1675264lfb.10.2020.12.30.14.00.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 30 Dec 2020 14:00:41 -0800 (PST)
Received-SPF: pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.178.232 as permitted sender) client-ip=217.70.178.232;
Received: from localhost (lfbn-lyo-1-13-140.w86-202.abo.wanadoo.fr [86.202.109.140])
	(Authenticated sender: alexandre.belloni@bootlin.com)
	by relay12.mail.gandi.net (Postfix) with ESMTPSA id 93C3420000A;
	Wed, 30 Dec 2020 22:00:39 +0000 (UTC)
Date: Wed, 30 Dec 2020 23:00:38 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nicolas Pitre <npitre@baylibre.com>, Arnd Bergmann <arnd@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-i3c@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i3c/master/mipi-i3c-hci: re-fix __maybe_unused attribute
Message-ID: <20201230220038.GC110311@piout.net>
References: <20201230154304.598900-1-arnd@kernel.org>
 <orno9ppp-no44-4rp5-s6-58n46rsps045@onlyvoer.pbz>
 <20201230214053.GB110311@piout.net>
 <20201230214321.GA1961980@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230214321.GA1961980@ubuntu-m3-large-x86>
X-Original-Sender: alexandre.belloni@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandre.belloni@bootlin.com designates
 217.70.178.232 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
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

On 30/12/2020 14:43:21-0700, Nathan Chancellor wrote:
> On Wed, Dec 30, 2020 at 10:40:53PM +0100, Alexandre Belloni wrote:
> > On 30/12/2020 16:23:56-0500, Nicolas Pitre wrote:
> > > On Wed, 30 Dec 2020, Arnd Bergmann wrote:
> > > 
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > 
> > > > clang warns because the added __maybe_unused attribute is in
> > > > the wrong place:
> > > > 
> > > > drivers/i3c/master/mipi-i3c-hci/core.c:780:21: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
> > > > static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
> > > >                     ^
> > > > include/linux/compiler_attributes.h:267:56: note: expanded
> > > > 
> > > > Fixes: 95393f3e07ab ("i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning")
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > Acked-by: Nicolas Pitre <npitre@baylibre.com>
> > > 
> > > This might be the 3rd patch from 3 different people fixing the same 
> > > thing. Looks like I3C maintainer is on vacation. Please feel free to 
> > > send this trivial fix upstream some other way.
> > > 
> > 
> > Isn't it already upstream?
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=95393f3e07ab53855b91881692a4a5b52dcdc03c
> 
> This patch is fixing that one, the attribute was added between the
> struct type, causing a new warning for clang.
> 

Ah yes, even after reading that 3 times, I got it wrong.

> I sent a fix for this earlier too, I do not care which one goes in as
> long as one does so:
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 

I was going to review and apply yours now that I have access to the i3c
repo. I must admit I didn't have a look at i3c patches until now and the
holiday season is not helping.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230220038.GC110311%40piout.net.
