Return-Path: <clang-built-linux+bncBDY3NC743AGBBUP43PZAKGQEYIV2FAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DB7170C86
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 00:25:07 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id 13sf2012082yww.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 15:25:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582759506; cv=pass;
        d=google.com; s=arc-20160816;
        b=yWrBIxuNNGXN+0fRTazdSyPXOrsMqi2xM/x8KyBQSoTnxF3tM4+NILqwMOfDZwLUb6
         NFGVHFf5AB31i6rYQTZWfN0aFMBt15U/zurfkp6opBxFVL1Yi2UsxF2P8XrvoUuVjftw
         G5QTNMt8PmjccKb1gq53kr37oNqPanraK6lOjM6BK+ZMI5d5vMFVttXdYymIdyDxz4YY
         MagCUqmz93jl7y/ODPjPuNGBUbyMMZHC0l447vTF11s+QN5giqYV3fY1iM+P3KjLdPbc
         pWZAHEwaXIJBq1ZRslpwbg/L6u6pXrqouP9d9dmNVURLVuEpBT7EtODQm6U5ptKZmYO5
         J1eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=j69DO485d1Jj2gKimoxB/kxBqm2NuL995j8NnZE80Gw=;
        b=D7iTcf4xR71UBlRjhxQsqDprmU37yKMtQ9AJBrsTORENN3S589jymklO9obfvpsTIN
         46WgvQKBCJnp9gsl8OZqcM1r0U/DBQXddgfln20kQfEIs4okd+ZgRHRKTpHc6KCp+hpf
         axXqnHoy6BvaQ2fxYRREfogoSJWC4iIwRfP83ZeuopEoyAfiNjlplq2oKN22HXYfOZEo
         eZkPbQ0p8ZhEY7DMyWAyX/+xzl3YrUDjEiBJ4SkfvmFhJNKP2ydF5ogBxu/f2pgbQQEl
         vWcFCv8IYqDeVL/6mYIUa97U/OddtBRz2Py240yl3CezGMrcT/YMvMaFAd0ryyRyvtPk
         T47Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.120 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j69DO485d1Jj2gKimoxB/kxBqm2NuL995j8NnZE80Gw=;
        b=T/z4UTCe7vCbUtP58p6d8HZGHDcGAZPen8GlwWO52gpiU9K9z7gLKu+NH8Bsh3YzGM
         HsNZ/IPatp5Vk3D6qVw1CLWiEXHgwkvqy6kR76E04Ql5Qq5Aa6Lv2SfPeNK88nVU2Qp7
         E/0ZTtzG7huUomloAUBwPYAZK1KSRDfsB90F0inllpAEyMMe6mQ22DBHLCThg8eb+1Rf
         gHswbuW30wUwV2Vk89w9RVuhlJaZ5xMEeDkuU8gqvQoQpvaMgOdjz1syS1eE5xWxtUYm
         qoDdFTpL+/+mYyyBOkNWS5t/DsMpftPOz8HS0jsSnycn9t1dMwxn/5c8p5JLNEsmlS7j
         UspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j69DO485d1Jj2gKimoxB/kxBqm2NuL995j8NnZE80Gw=;
        b=AYi8hYS47KhgEHq/QM7pJIrwRKEZevtqAivZdvA+AH0YV48zWM41GWa2dRcjNkVAaY
         5PN08a3nxmWeigx0z2RBhlpripuMvkAK5o914qgZuglSMN8OJru2eo5HvSCO67NVV/gW
         8jg7AIbHJkY7udovLybV3xxzTXvPTv9I+3SEGYis9kA7V4EakEFVr1XjdBXcZeV0l4XD
         i6LadvMijgXEfuLiaersp+43xS4YhJY86XiQtaJAAHmNzamoyJjfz1IcCT4Jkuh8dDyY
         cfSLQ3OKvUEbL1MN+xjnfGbsOQrCuVeHdUQ6KlxsgUr8GY6BgANg6EJy77AzPsXT6fyH
         I2Nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0aTRSgwMt3MRaMBBa45Y6an4izQcXHfLauate4E3NqZ+8XpMN
	IbemIaDAd0/hS91zAQ+kn4I=
X-Google-Smtp-Source: APXvYqyN+ADs1q80dqDVIJrBkDvL+KhgRFpUHli/POTcji99l8kKta9qjg4G+s6QwUWwPwQSyHEW2Q==
X-Received: by 2002:a25:c101:: with SMTP id r1mr1258497ybf.283.1582759505962;
        Wed, 26 Feb 2020 15:25:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:df8b:: with SMTP id i133ls252889ywe.7.gmail; Wed, 26 Feb
 2020 15:25:05 -0800 (PST)
X-Received: by 2002:a81:5e09:: with SMTP id s9mr1755478ywb.348.1582759505549;
        Wed, 26 Feb 2020 15:25:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582759505; cv=none;
        d=google.com; s=arc-20160816;
        b=Cfn2FnWWXikQZVKSoLUMJvalwMigblUUi/qj7EJi/79O2CKbMoPNytNDItDYouNpsk
         UMaB/JAyiNK+bmG9sGENHrRWpiKNiovwd2EBbDymZxUVi5TeqykRQI3tVXvQqm95qF0P
         G52as0OgrVdT66Y/mubT2GayTkmh5LfeFUuyxRc9bkOH5zblexV9Y6ZHFLNZn2OPvv3F
         3SiDyjVOtc21l26lJdsDP6BwwCZb/SiL+jaOQd52GHhVxdow9mpwOnK25A7TvrTntXkH
         LLpH4AHILZEBlWCJUftnyH76fEfVT5EBcwnUt2UaLrJksT5vk4mXOPj/ZtMrj9r5QIA6
         pm7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Hxz11bFwVnDQPADqMXPC541/ndHpQ1WTnowhBcf6LFw=;
        b=BrFyDA2R0Kwy4QEBb3orreruFU7WeJeOiy7/n+mS8BXam2cBRKt7Hc8mcgubGOyh67
         SPZqhifDUAv2EqQgwBwYrb4U5qdFK9xAu3oWWZmUnBFAk2wm8utCFU/W9sXisI78YUvn
         8PbAiluiAwjjgMT7/612GYjSdsE2of19ujS67INoLSGQJaaUsDcrkhj0+jX/PhrMEL3D
         fJwDyNxG2LNCaPCPJDqHn8t/tYL025D8z46syj6bl26lPYmKDl4zGNfhM5AsF6Ee4XSD
         HFOSx7SdXEmE+FBn5TCI5YMn3lsyrOr5a/GUxUomM3Ff6wviDPiEWyJ3vw9NPb2ZIlPe
         zuZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.120 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0120.hostedemail.com. [216.40.44.120])
        by gmr-mx.google.com with ESMTPS id u7si133077ywg.5.2020.02.26.15.25.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2020 15:25:05 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.120 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.120;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id EFA36100E7B43;
	Wed, 26 Feb 2020 23:25:04 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2689:2740:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3874:4321:5007:7653:10004:10400:10848:11232:11658:11914:12297:12660:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21611:21627:21790:30012:30054:30060:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: error50_4912417d1f308
X-Filterd-Recvd-Size: 2340
Received: from XPS-9350 (47-209-22-207.mmlkcmtc01.res.dyn.suddenlink.net [47.209.22.207])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Wed, 26 Feb 2020 23:25:01 +0000 (UTC)
Message-ID: <8b9eaca3ab7b05db8b5562284484a24d44bf6cce.camel@perches.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Masahiro
 Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Linux Doc Mailing
 List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Wed, 26 Feb 2020 15:23:31 -0800
In-Reply-To: <CAKwvOdmSix2hgDGsvcAzVD9L5XmM8tPDMyrdXmZjcvGXu_TMSQ@mail.gmail.com>
References: <20200224174129.2664-1-ndesaulniers@google.com>
	 <202002242003.870E5F80@keescook>
	 <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
	 <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
	 <202002251353.25A016CD@keescook>
	 <3b7b2b366220c9ba39ebc241ba22c0304f0d61b0.camel@perches.com>
	 <CAKwvOdmSix2hgDGsvcAzVD9L5XmM8tPDMyrdXmZjcvGXu_TMSQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.120 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Wed, 2020-02-26 at 15:18 -0800, Nick Desaulniers wrote:
> On Tue, Feb 25, 2020 at 2:21 PM Joe Perches <joe@perches.com> wrote:
> > On Tue, 2020-02-25 at 13:56 -0800, Kees Cook wrote:
> > > I think we should take a specific version stand as the
> > > "minimum" version. Being able to build x86 defconfig is a good minimum
> > > IMO.
> > 
> > Agree.
> > 
> > It's odd to say that clang 4 is fine for arm when it's
> > not fine for x86.  It's also reasonable to expect arm
> > users to upgrade their compiler to a more recent version
> > when the only cost is a very small bit of time.
> 
> That's a very x86 centric point of view.

Really?

How many code generation improvements and possible defects
have been corrected between clang 4 and clang 10 for arm?

I presume more than a few.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8b9eaca3ab7b05db8b5562284484a24d44bf6cce.camel%40perches.com.
