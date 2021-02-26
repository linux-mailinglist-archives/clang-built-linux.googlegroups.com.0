Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH6I4WAQMGQEV4SN26Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2524932692F
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 22:12:01 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id j45sf5820376otj.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 13:12:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614373919; cv=pass;
        d=google.com; s=arc-20160816;
        b=cu06XvyeCuBBAMcnX8mhVsZ7LizSZb5EvkLbXPqqs1ceEXHW36hNt15ZFL3hEaC+MJ
         BC2xFYCYBmPUPtdiwsX9wSEvIbYUovSBr8smOrBdNLO96wjm0qt9De/cA9cLMNhQ3UmS
         BcxfnufQSdmbCRwkQ6nO7SF9KQdy6KPuK63MZ29OTG+b+CI3+mDBes1w/Iae32C1hyXZ
         ACiWRvd8CIglViCTAKX9ZMvsYkMHXpkeqkPwEtiZgZ4FlzYfQEoMegSpy8dQNsIXAOrD
         sy1IgDA6YhH3qbfzYg3H5rfWTUAdx7UBMD8x5NiSUFiaEkVr4IOMG96dnUc0fbCIrFJQ
         8gSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=L5ubEOBBqERpj1qCbrOSc7rzViMRa8U1hOlpAvntk98=;
        b=nIFNo1ydtCakUAczJ34kCfssd3PsLN880FHiIZ72M9s5GsNHOUbbjw5zpUaceZtoIM
         oJjDEPsWeWugLxQk0QNwpuFqvBJb9GsdABS5pUpJR813NQWkYNencg1cI/LGLKqTLD1V
         ZONdOjuMUqFKdOvz8bGy9ZrABFOBr7/pE9WBCMk4zqXDzsnZCwVd0QrCYE3rx/bgiW8D
         yHRl6NUrtZv2eDTYW2Lf1FT+MrlB+Jr+C/Fl9CKcMOolSGflcCNsQjWsPrA5X7AUO879
         OfJHj34ZjGFKn0m75g9QQDiFUwjzHy9K+Zr4g4fnmtJUxFRC1TLmnSBwlsyk3zyUuNUM
         XEWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j+VC875O;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L5ubEOBBqERpj1qCbrOSc7rzViMRa8U1hOlpAvntk98=;
        b=C9D4RS3bGkSJ8bP0/XJ3p+nL/+eAa0ZLALVcuvH3fl4RYHxyDC9k672ddNt7qdyd1R
         Sr7S6CLO5Dna0F5WDSMNLvEuEeuaAGWSHiciLzAMOe4/Bfo+6cdR/BE/SbMaNJsyAd3y
         PLHEcm4yr977yO44JzdvCrlN0n0aOnll4I2rMzY/UJuAxd+QAO9BLk0bsgCVdVnxD0VL
         b648IsGd7odmtds+qziduxqFoPx/2ZWcJ9CyAwT8J429um30wh7Ux1dB4kGGeoeIeI+a
         i6UI5zvta/Kjfzy+I+Q3FsN+6dxzMk8kbaPr/BQAyi5ad44pCcDqTLn7eE5K3miZZ8lA
         i4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L5ubEOBBqERpj1qCbrOSc7rzViMRa8U1hOlpAvntk98=;
        b=SAdk3rHxCWGJCQMkaYMO8SJDwvu2Y9/KKn+4zn2Jbe6QlMrojznQ7mUhvJPsyw945R
         oEfyI/ez7Ad1r4N1I89hws9ipaAr6njm8Aa/9c+3bw4LgqkO1Q2Z5s63p345eAkJdzEa
         kto8jdpGIACq8bJD9p/+MtoZflu5/Fa6Eng26ZP60Ll/zl46E1btSkN7XOCdNJkRtGF5
         JdilpUVEJbUZVefI9y3AyUMUQM64xes5tiWdx80NrpCM1dsrWvglTc8KJS8bz50KERD3
         DPBMsmrBqdbCa6AVNcGm8yzejDMRbhJo60MS+roIKJmqZQnARk9kWx7w8RKNOKdn2HtT
         gzrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qqoWiJAdiOUNbrnZQ5AtNHQGcpNwhk3/rrQ3wTbP9ulkFUiHm
	l/1Zxpm0oELLZj3mN/nKapU=
X-Google-Smtp-Source: ABdhPJwWtxWCkSP/nof5EXi5c7DlS5YhDJ9pDew+m9XYcTTfN92+yweXihJ1vvMqKvnn9G3v2rmYUA==
X-Received: by 2002:aca:ed85:: with SMTP id l127mr3547219oih.152.1614373919774;
        Fri, 26 Feb 2021 13:11:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1482:: with SMTP id e2ls2673135oiw.4.gmail; Fri, 26
 Feb 2021 13:11:59 -0800 (PST)
X-Received: by 2002:a54:4803:: with SMTP id j3mr3498813oij.124.1614373919487;
        Fri, 26 Feb 2021 13:11:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614373919; cv=none;
        d=google.com; s=arc-20160816;
        b=CbXefSkByyP0el3YxYYuXgR5/bty96QUY/1158gLCs6SFrmoJxrq3kHDQ4v+kSQtY5
         jZBqcqKXrSbof1y1Wbb/8/AUD0o3oTghBpCNCtGNJtpRHX2q7AkEAeDoLPXORRRcaPtP
         U5eAq6OUq91vdf5Tcwmr6c+PVX+Qre/IKAyd1aXjkO6ooLwk/U2yTV0Hk03gO9HEaSV5
         7SAdx8xa0Xn2hOAWeJcJ7vkRUFGjH9aMRCEwtHEnfM0SWGyb4j3LbB+XXURJCvE+2ohK
         RrKs91T2r8uMjDOG+LW6WOgX79xiBDnoFtKThCTnEAb+YJSISVCIuUrDhEeWpFh4EJkj
         T7Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rmAtNExccO7tAdUfHma6TcSDCuJ2T/7h7w+GmDLZNag=;
        b=tsP5Z1ARFXpqi7ee9BYrHe//zDjiDAjRHsR46SG38RX14duHA4derHOxkShvgj3WGn
         bPE1VzAFy/lP+s1q0qEu3IETS3+4HK57h90he86926Y0RVBxAhXBa7YY9HNXlyIBvb6e
         OL/YF2CrMYejjT/wqxIYPsX3YT+LQk2yvstbqLLZxaEhTVqKycPzw05NrVw+Sj1Br64X
         hbBhsgKylHdab9Qhxz+mO4WkK0Jmi44lUaQnHDlw2++XzelmmWSh4vbnsMX7zCiEh4WN
         JpLPTHw7yjNjNNH31ATcgc8eR0hCUJrrxerHBUgcLlr2YfWpboZMaHfgPsVSHWKWdzh/
         hBBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j+VC875O;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v26si235876otn.1.2021.02.26.13.11.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 13:11:59 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3229664EED;
	Fri, 26 Feb 2021 21:11:58 +0000 (UTC)
Date: Fri, 26 Feb 2021 14:11:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Congrats, Nathan!
Message-ID: <20210226211154.GA21392@MSI.localdomain>
References: <CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT=F42KYvyBox1em_1KiQ@mail.gmail.com>
 <CA+icZUWFE-NyoxrgtWAa_Z=oc1mYJZk_i1tGoP9+7Q5NT4d3ow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWFE-NyoxrgtWAa_Z=oc1mYJZk_i1tGoP9+7Q5NT4d3ow@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=j+VC875O;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 26, 2021 at 10:12:19AM +0100, Sedat Dilek wrote:
> On Fri, Feb 26, 2021 at 7:54 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> >
> > My news ticker just pointed me to some random news repetition of:
> >
> > https://www.linuxfoundation.org/en/press-release/google-funds-linux-kernel-developers-to-focus-exclusively-on-security/
> >
> > Great to see to have such a great supporter for Clang-Built Linux
> > long-term on board now and some media coverage on it :)
> >
> > ...and of course to Nick pulling the required strings, and to Google
> > having those strings :)
> >
> > [For you insiders that is probably all very "old" news by now...]
> >
> >
> 
> Congrats Nathan.
> 
> I love when people do good things and are paid for it, too :-).
> 
> Thanks Lukas for sharing this post/link!
> 
> - Sedat -

Thank you both. I am very excited to be doing this full time now :) I
guess hard work can pay off!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226211154.GA21392%40MSI.localdomain.
