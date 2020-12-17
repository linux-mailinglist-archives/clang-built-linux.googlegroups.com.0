Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBF4R5X7AKGQEI25A5UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F2A2DD0FC
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 13:01:28 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id o65sf12667295ooo.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 04:01:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608206487; cv=pass;
        d=google.com; s=arc-20160816;
        b=cEuXEYo4hgjvykuix1B0DyPYb3l6tYI9E6TUg08Xz1JNhFUsOps5YFE2H7W3vlIn46
         dTcsiKdv4K1cZT+Ce09OlxTuSHzvygWfZ3Z74nMco6d2XckSBhrz1/keNfpW8ASgt/KX
         +AvwDEPzSpX+T/6YAZdF8Ej6RRCgrxSHtmh2qnw7zp530G/LnbF/BbK4LawN1DM5oWcg
         wr3b7/nG27+Wbb4U605R2LBZTVRM7ulMvQy7Ag/Ib8rYgGlMOo+wsv7rnbSlDlZqbiur
         KpSsohHBnq3w+Xzq0pYXrb+f9MStAGvRsf5jad91Prjbc3gzu0+RvuWT7t8lC8A7MKHF
         c3Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZmVJmqnB141AcZ7hRQExXHw83NfRU5EI+Dc7vNW4uo8=;
        b=QdAPpL3HtV1/V6vVWZGnaMOOAEYjkE38kR/hCfMxZ4EyscNk+yqRaKWiDpQHNEbm34
         dTfNoO4KC2cb7q65plj/ixRT8BmbEtfO9nLOXXYlW6PIig6zLtfzox+0wYkxjKDiXBkC
         xUIJdWL9Kz5n4wVe+sfWs7Z8k69ZHykyHpzEybp3mgbVE55iKWa8elnE6m2PpKTmSrAL
         K31ZJjppUNdIm+eMRq/AQtMQwhwHILKp2ZHAowBJj5NX0ASOg9kAwuF8eD7BYYY3mlMQ
         UwSVonn9ltQTbUO7Wc8BYTytLWHeSJ9+wht01X8/RV4m5HvggHILZ8Flm7ZTB9y6jjEC
         yKLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YC253vLN;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZmVJmqnB141AcZ7hRQExXHw83NfRU5EI+Dc7vNW4uo8=;
        b=rOpT57SGo2iy98gWmIgYal1l1Q6kGRdn7GH7b3bkmTTv7NT388qUeDyncvwN04C/Ew
         +QMRaZ+FOIebGO8+rGsAOjrxHOcW1OR0CMeYgWu4YzFNUxJqAr3ugsFfOevrT0sw95qO
         VHbcFbJQGTlVetJDAooqBHduGRUARBiHWhe+bB57DmUA1id4x5uqf6z3IvSSc3Xuypho
         hhps6jnnvcKJw/ivzZBYX2s71LWx88sKk3FtFkL7fnYfUIIiUVBSG7S6Lc0TA+tGS9ex
         A6KQQYtNF58dpUb+REkd84j+WCbC0dX7WdRb2IQEUp1OvjeXAnxHmse2OVE3lGeDWcN6
         BrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZmVJmqnB141AcZ7hRQExXHw83NfRU5EI+Dc7vNW4uo8=;
        b=t/2ISfl1s/QBiy4zzKhU/2KMVoK+7mPq2bapb9DV/SlWWSW+P9Yi60vnrCtYET6Gmv
         w0GC6u1PG8CrmrzB+gQAiHQHmyF1IUHJa4pJGnfQmxT4t0+iS1TUdsa1cHy8A9P3UM9y
         j36D7LyXseg0HP3iMv2jvCLV55lKs7Wfmm2qSpB56FMEDt5LwE0rPWUNRjA/zoZjOG6a
         fs791sLN0DionuD7fL1Q0cHMerTrF8Y5vJXHVrvV2eYnZr2lT0jpm+FJSl3XkCRNH6KG
         BAUn0YSKSTOfTCxl8fRdkrcwx8zyTrAI9YS0kdWsFTRAkBe4a5D6l3u51yPlFl3HFeij
         vXzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZINA65NIGJNuTB9EXUGSwpvVl8lnwJw34eEcbChu4Y5ts2Rr6
	5scZG2wkf58oEwWHcU9G0YA=
X-Google-Smtp-Source: ABdhPJy10U3ydx08XzG/bPgKUmVdRjHUfKnq53MHyM3RDG9wfQglehywm5BsfEkTyOyghOwLtNZoeQ==
X-Received: by 2002:aca:5253:: with SMTP id g80mr4522869oib.98.1608206487279;
        Thu, 17 Dec 2020 04:01:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:140e:: with SMTP id v14ls7267994otp.4.gmail; Thu,
 17 Dec 2020 04:01:26 -0800 (PST)
X-Received: by 2002:a05:6830:1bc6:: with SMTP id v6mr29538618ota.135.1608206486564;
        Thu, 17 Dec 2020 04:01:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608206486; cv=none;
        d=google.com; s=arc-20160816;
        b=Lqgj5tXw2bRem6vCQj8faVL6aCQvfKoGKA2MywxJZGEdZ+An2zeePi0jRBtgHcOpmN
         k5U1c3FWglHg5UkuQ9zGDrzDRTf6UBpeiB5aFnLt7lLN+PtuG/fXFmJnjykcf5Ye/m5H
         BvUlEQJqA3Ghb8YohDH+1VAfMLu+r7XBPB+dkQr9fAyfdoZT8zqO1m5GA3doWIOk4cAZ
         oCDbj7CN/yeffqVrV3dUOYDHLcU7dTOy4gUZIm7t2ATjXeOqmARIXcyxgM4VjdVfG7cd
         4Ru3kEW1DWJhA4bQcC70F6KM1QyFHQKdt9f3CRIXzvGYEOsJIOppGM+bIotVziIGljNg
         BCIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=FOPsZyXx4iN8p0/4mxhvAamcUnQWn1EP2C1OkJ+wAcc=;
        b=zSheUPC9Dgboo9KHcPTPD1pEnaw08r3gLBiic4Fa445D+J7/jHpVeq4J4Dl81YnGmA
         Us+a8OMjJenAWjdR4c7DMC1PG93kLvbXoTN2e5V90t1PkKk+eiC8Cf5gRJDcXFoWqfCI
         LQDSvLZ+O4BvwsD5UCFAU2FrIi0Kt66OHQlq/BwRZOyHtCO3X33mjciBELbbJdDd8X+w
         n52ktLCvwr07NvWm+rRHN4kchjl/eQqL1PuhdhhipY0wUfiEtBPSkPOyQPgWfnM/2cmX
         iOJ8rAMJ2ibHxk7pJw8FhdlkgcDp8DlfZNb/IvydcVaRffNLAQhqXxB8a7BHIxOJuBiX
         +s4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YC253vLN;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x20si499602oot.1.2020.12.17.04.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Dec 2020 04:01:26 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Thu, 17 Dec 2020 12:01:19 +0000
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	kernel-team <kernel-team@android.com>,
	Peter Smith <Peter.Smith@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Quentin Perret <qperret@google.com>, Alan Modra <amodra@gmail.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: link with -z norelro for LLD or aarch64-elf
Message-ID: <20201217120118.GC17544@willie-the-truck>
References: <CAKwvOdkP8vHidFPWczC24XwNHhQaXovQiQ43Yb6Csp_+kPR9XQ@mail.gmail.com>
 <20201217004051.1247544-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201217004051.1247544-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YC253vLN;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, Dec 16, 2020 at 04:40:51PM -0800, Nick Desaulniers wrote:
> With newer GNU binutils, linking with BFD produces warnings for vmlinux:
> aarch64-linux-gnu-ld: warning: -z norelro ignored
> 
> BFD can produce this warning when the target emulation mode does not
> support RELRO relocation types, and -z relro or -z norelro is passed.
> 
> Alan Modra clarifies:
>   The default linker emulation for an aarch64-linux ld.bfd is
>   -maarch64linux, the default for an aarch64-elf linker is
>   -maarch64elf.  They are not equivalent.  If you choose -maarch64elf
>   you get an emulation that doesn't support -z relro.
> 
> The ARCH=arm64 kernel prefers -maarch64elf, but may fall back to
> -maarch64linux based on the toolchain configuration.
> 
> LLD will always create RELRO relocation types regardless of target
> emulation.
> 
> To avoid the above warning when linking with BFD, pass -z norelro only
> when linking with LLD or with -maarch64linux.

Given that, prior to 3b92fa7485eb, we used to pass '-z norelro' if
CONFIG_RELOCATABLE then was this already broken with the ELF toolchain?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201217120118.GC17544%40willie-the-truck.
