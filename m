Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBMXK47ZQKGQEM625HTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F17190CCC
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:55:32 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id q4sf2165664vso.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 04:55:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585050931; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUNFC9BqjgxZiKOwjr+0R88r0xpnuQY8tMwMaxDkqlAxOEJEAauIMrTJJveky1FER2
         j2wR9EJGSGzar7Kig4GzJ/LoPQ7XuujAcEitTdrupVtUGdJWx/lU83uRJ5BhfzWktrSD
         92U2yX4INvUH3x+Zume2OVSB4uEiXTxQDYM6B1GuHIFiP76Is9y6Qb3Ygsz5aQB/0331
         lhsNqNnhgFo4dewmTrHlP+9yrqrMt1AzMP2SFkyICkl++2ft9w2EiuVXFmKHwGrNVyq5
         JCnYY9ynmc0hoXAUGeRfuZcKu7MAhkFWq4++QVetB4Jya8aNbyWi06S36ZCNp/NKY+X2
         AwWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GPjbNLg+JxunDYbaDrbT4laM5pvoBQ2gHX54LeV2PQg=;
        b=y0r1IgjmbT9bZ6K7M+BxaS5nakEbHJ7P7uC10WBsXY87p1tbOt+R7VNcQak82pm5Bp
         cETxRe6hPeSgFb3rYlGG/N69FAtWJLoOR45+CjZVZWi/qDf7JXMzVR6dNTjuHyc9KiEu
         n4moscg4PsL4YGIEw2sCMCYatj08Tn7MuX5rrGGllI3v01+f210ooFLYnrFhCP6tYB3w
         YvFgf16FDEnq8dj1E4UIc3QjZqN8KFfX5jPeLXz8qU8LP0RfpXcyrKtGxAgIyBxt+2or
         9xBqu5Orx1Vky/CL/ux+Qstsu/OGB3nupW+aY19HowvGv1cKiDTKtjVPeF4Q1aQB5MKi
         McPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GPjbNLg+JxunDYbaDrbT4laM5pvoBQ2gHX54LeV2PQg=;
        b=fQ/6Mds1m3ZrSRcu5L0ghAzem9B/TeztHamhWQPHFaQ6mX8TQ7SUm7bD/C5bJWpjVR
         wawRUs1UZEw3ROE6OKpUx71ssdOCkyl3c0t9rPuvSZa/8nokUIqiYAsIsPZJqdLOHRs9
         apOgPsfqXjWpfXayuBG+4yLg0caJj0jOWTsy3RGTmSp0ySnaMgymzBJGOg+OOcyvELIG
         QdzyGxmaLjTGK6C12fQsIcrozU1QjgygW94nCwWwM0+deeJmVv4I+j1Vg87chBxb5YkK
         R/TC+KLbYXOrgWb/hd51PDJrQ6JSUllavO22mO0KBOCC/cuEdHjb3dgGrMszHNJJiJIV
         kC0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GPjbNLg+JxunDYbaDrbT4laM5pvoBQ2gHX54LeV2PQg=;
        b=asexKKTNyDScRusmsl4+WSm77yky5mdMEqsqfbi7RnpBGnmzu4bWkJr2XHiPFzmoAQ
         lalfC+8SdlAammUcMIRmrWeNilaTsS+g8tsiEgthUDYuSp0xL4sUegGXi8wX0Pzbsvve
         oDfX7rxtN1pbvSHVsmjRkbhzWgacNGy8jKKtUr4UoJUP/hZkf4+XOyPscjgWnbt50Ejm
         PaOxpDnR2xbPFTu/3liluWfL+CnHrsQFZhW8JAoS9SsM2IxY3OTRymzLGHB0qVOjJzPd
         zpirX/U443iKfMvcDdzJ4fIxasGkQxZipyjd0YA3kct5N7CK6rixxkGC8hMKjRzHZJpG
         sDeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0MgSL5E0Y7KVEEEiKFRoCNL8SCG8dpnZuoGP0Q+FX4jKURNVIh
	LVcvMXdodrvDoUJ+gXkNQjA=
X-Google-Smtp-Source: ADFU+vvLvhiHh/ulLeJ4CxVM3jCGPdmuP1PefkjqulNyHGChWJiZ71ngyxzhR05jW4wL0r7nkAVREg==
X-Received: by 2002:a67:f6c9:: with SMTP id v9mr19204481vso.48.1585050931118;
        Tue, 24 Mar 2020 04:55:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ca1c:: with SMTP id z28ls2246112vsk.4.gmail; Tue, 24 Mar
 2020 04:55:30 -0700 (PDT)
X-Received: by 2002:a05:6102:108f:: with SMTP id s15mr19222539vsr.12.1585050930419;
        Tue, 24 Mar 2020 04:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585050930; cv=none;
        d=google.com; s=arc-20160816;
        b=o2sH/I9xUu55A7cLx+pq9XuduS0iPYE0Xm9OwpsinXBZlslYYWbmXc7oqpRe6qBS/H
         A/iVM0ilM8uPtiuEaqxyZ3qvqarn2hsURfv7eJlQuGbmwBoNbVWlhfYHtlT6ClrApNef
         NlJ94htGq2FlgV710BP9pUJj0Zds/P0XwKgynVBDpI2DQ07Pm/sWuqlu3I4/J88rOd0T
         WOaxJNSOSqW38iAhyxeSW3TYZbDACu72cJNCleHBI2FgaAPgMhHpeWu+p8nPR797EVBH
         9dpUaYBsPYTrd3S72KOnznwW38JIyc0JqVwYMOvXnmjAM6edW5nFkJtu8MEf28vHiHkZ
         gp7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LOfQzw2uaxmMoaNYxC7HDo8z1L3PWh6DbKddnsB1a+0=;
        b=yxm1N7IKoR8xDZ1UhAe/n5u7rTvN5bS0uePXnbSVLG4aDvkpR5S/gywwt3dDRsW5ji
         gagVn/un6odZUelxDLNhVrz0mSxlJUNo3MkaL2hsnFoTZWnOIDw22U4fvIkV97ZblD0q
         1NvWXtLoWuzl2Qn5DOx9+QK3biiPquGvlsz/CwDIwXkPm2tKO1p7PGYU2k7EFOm8/VhR
         FVdB6yhJ9OTLHGAvXqzt3LxjwtRk5kcux6Dy1CEcrfzOG5qxaMHL9qIedFrHZhcnD0YG
         gfN4wviXiIXsvQIVq6XmgUS1OkMPfoehBa5gLO8FLZr7xeHKHbBy+w0+sonK/sWucpTE
         OhSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id h6si701441vko.4.2020.03.24.04.55.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Mar 2020 04:55:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.me.apana.org.au ([192.168.0.7] helo=gwarestrin.arnor.me.apana.org.au)
	by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
	id 1jGi8q-0005xC-H7; Tue, 24 Mar 2020 22:54:45 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Tue, 24 Mar 2020 22:54:44 +1100
Date: Tue, 24 Mar 2020 22:54:44 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com, linux-crypto@vger.kernel.org,
	Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	Peter Zijlstra <peterz@infradead.org>,
	"H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	linux-kbuild@vger.kernel.org,
	"Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [PATCH 12/16] crypto: x86 - rework configuration based on Kconfig
Message-ID: <20200324115444.GA31003@gondor.apana.org.au>
References: <20200324084821.29944-1-masahiroy@kernel.org>
 <20200324084821.29944-13-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200324084821.29944-13-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Tue, Mar 24, 2020 at 05:48:17PM +0900, Masahiro Yamada wrote:
> From: "Jason A. Donenfeld" <Jason@zx2c4.com>
> 
> Now that assembler capabilities are probed inside of Kconfig, we can set
> up proper Kconfig-based dependencies. We also take this opportunity to
> reorder the Makefile, so that items are grouped logically by primitive.
> 
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/x86/crypto/Makefile | 152 +++++++++++++++++----------------------
>  crypto/Kconfig           |   8 +--
>  2 files changed, 69 insertions(+), 91 deletions(-)

Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324115444.GA31003%40gondor.apana.org.au.
