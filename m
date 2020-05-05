Return-Path: <clang-built-linux+bncBD4ORNPPWYEBBH6LY32QKGQECZ3NGJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id BF12F1C5F13
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 19:42:55 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id r11sf1566309wrx.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 10:42:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588700575; cv=pass;
        d=google.com; s=arc-20160816;
        b=DqhBnzNuwwwnjN47fEM7F+IYy3yo1YVe+fB9TY9rjBEf7cLBDNNGstvJNEDI2gMBep
         w2eScfV2gX2fsg5hn8AKxyvmJUVDCkhVUoz/hapTF0r7pQ3U7i5ggtHd6axdsLCzUe6p
         TeZ+zVh9TzfM6igKy2f0ZafJBmiXxFBPiGNOUYgEDPka+tiW6k6WisVzfBTShUdxDhCn
         tJnYPt7NT2S27+PFmQKR5C3GE6qQ5v5dIPLp97PNzTpblP28hZ3YYY5rCKF1YTf5x220
         utcU6bt8ne6+e80NfN4O972uWFr+POjR/UnbgWQNigxT4x1gv5i98uPA7LN9Z40p1qCr
         F26A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dKz/2EOEhMpdT2G9PXi4+vyix3TOkxgORQ4u8QB6nAg=;
        b=YmFCnglUjg8J5LjygqZA3gpHiTqsbqTkkBzS07a55pLwLgRBMGoxbs8rQRTB+/jCHD
         7ZVfxG29wnnkdgeJj2VjHAgw29AMkdiwjlQbc+Wcd/9GDB1PEn0f1Pkc8A9r04BNRWZF
         +CChfj2VCnVO6aIKVj3pwldWKBIoCf60TmLhQ8CjSIgGYfXXxEoiOD69ss+5cVgFzLX6
         XMn5FxfhIBuZbGsw2PU7RCATkczjwTxrxUc5AveWuB+TbwHVbDKo2HafWDXVnrCgnQR6
         cWLrfdkWqfbZd5L11o446Z1oWv0N+7FQ1GmtglElDhdaw8Rt4KH7eFS/XpBVHz10ICzP
         yF6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of duwe@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=duwe@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dKz/2EOEhMpdT2G9PXi4+vyix3TOkxgORQ4u8QB6nAg=;
        b=CdZlyZ92IdJypu31X1y6aHcLXfrnQBJSgy6JWpLhmTvENV/0lq3lccPjA3U9IwjKCk
         xezzb7zh6AR6J5Oxep52ETP8JQC+tcZal3SsNjQpwM/b8KTdNvlfqCgzWbOg9ZFnxcZC
         Qep6XlSeXwedjvOajMiIQTx7HIzTVwTeiZnXavzE7uDU3OxbTFYy24ZmeOvoCSf02hZ2
         rF9FHoYJDQCe9go9f1M2R11+0u+fZWPw+fKcy9R8ZyYLEc1t4eYBGoaGLf+pOsT6M2Xa
         +3bq6A7C6p2PyeAqqUaZ6sdoZV4oYjjnGUMTY3eJy0wcpdYvP1I31wetGoQaVbZ1iOks
         /tDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dKz/2EOEhMpdT2G9PXi4+vyix3TOkxgORQ4u8QB6nAg=;
        b=Kb83UlbtmQVxeQONqLYsEHfqbB07qdkRFQelTMz5dUbZNY1+AAh1RRj4u3bBKmt6/m
         kbhSVwTJYblLj+8bL5NzP0KMfCtSwKloLn5DvNQsHf/5mSRAzC4azthPMUH5uKfNZecO
         3HBzaonc0+Q9hYabbbt2K23bbUYakhDCtYouHrJ2nGGxTIjJjQSYdJNEsLUlO0lD4CRX
         aCe2qz0+6nkQeNxwRXpz4ZMMERHCFn4jTkki17TWgYBKwFrI7QFGE+SNzRC0D9lxFimr
         VnTJxUBmGeFoofFH+rm5O74VjWHkdNmocUb5uln2NXYlAinRsastchUSw3niB276COJ4
         VffQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubH+xW6Tbfjjknm5GuFjAGknNjxpbHW2DBzDL5gNfTuPm2wMdWD
	3PkwZrSJO7XZ+dCUkgLL1Xw=
X-Google-Smtp-Source: APiQypJZIh7WGP/iqALQSJiN3PotoCqh8oHHt5JrWZI1+VCE3onMC3J3ZVcJzEFddfMJs+gd8nzoUQ==
X-Received: by 2002:adf:ea05:: with SMTP id q5mr4633476wrm.87.1588700575550;
        Tue, 05 May 2020 10:42:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fa52:: with SMTP id y18ls4333802wrr.9.gmail; Tue, 05 May
 2020 10:42:55 -0700 (PDT)
X-Received: by 2002:a05:6000:1203:: with SMTP id e3mr5331361wrx.229.1588700574971;
        Tue, 05 May 2020 10:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588700574; cv=none;
        d=google.com; s=arc-20160816;
        b=LMCu0+TFYDeRx1oFOg/gg+WEX6kSv01Ak7/V9Zx0n0dANQXbXl7lULyjcDMFuLQZsN
         GzgE8vXbTPN6AwRPEFEtspoyFrxIDmgseR1NMvgOhNAfm6TbQIoIDWUrpt8jRj5/cR6M
         8pmdb7YBaEzUpKQkqxnUJh+kGaGWRorqsFgLeltRw1ttwqkhzTwCit35OCSv+yQ20rU3
         eekzaGGgMi6mMrzcLw/svlhjt7dcNYUUzrMYINC8trmp8N42/IkZSc2/B5v3ieR/NFhB
         wavW1+bBlkWq1e3Dl8exL8HAY9xGufo+fOycpLMy5sSYYUE58prxUNqTMVh9kY/I+HDp
         4TYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=9hER+xjeLTySbc0OMv+yqXPdSFAiL4DNxII6xXGHaWs=;
        b=u/Fnn3HYkbc2NwWVLwL51dYfmY0ysqjCjRt68SCKf/QMopmkJCC71XyyjMouTvA+RU
         B+p+F4W7qx6cjwTmQKD4plibWFXIxS6hcAABbO+Vd1b/TPR6tmhKBQYrMsxbjyOP4Ew1
         LaBnav0FRE2DsZLQulFU28rh9jSZScoL2WzSOBjrChD4SNa7fBUFnWiFoPugFG18zdH4
         8eNd3T2RSS4xsd+pO1z4+4YWTmrHEQZOr8EnFkHfBSCj9e1OWTNOIHuTD2HFbS20I4U6
         TeHV4RbmG0e+NBTdYLGRha2b1MhxWh27zcWaY9qBS2Zivc1y8CWL2NSYjtsCVO8Fxcto
         Fg4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of duwe@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=duwe@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id s22si202877wme.0.2020.05.05.10.42.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 10:42:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of duwe@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 107)
	id C914768C7B; Tue,  5 May 2020 19:42:52 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on verein.lst.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=ALL_TRUSTED,BAYES_50
	autolearn=disabled version=3.3.1
Received: from blackhole (p5B0D8880.dip0.t-ipconnect.de [91.13.136.128])
	by verein.lst.de (Postfix) with ESMTPSA id 4B6E268BFE;
	Tue,  5 May 2020 19:42:48 +0200 (CEST)
Date: Tue, 5 May 2020 19:42:43 +0200
From: Torsten Duwe <duwe@lst.de>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Ard Biesheuvel
 <ardb@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>, Torsten Duwe
 <duwe@suse.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, AKASHI Takahiro
 <takahiro.akashi@linaro.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Julien
 Thierry <jthierry@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, Alexandre
 Ghiti <alex@ghiti.fr>, Kristina Martsenko <kristina.martsenko@arm.com>,
 Ionela Voinescu <ionela.voinescu@arm.com>, Steve Capper
 <steve.capper@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200505194243.5bfc6ec6@blackhole>
In-Reply-To: <20200505142556.GF82823@C02TD0UTHF1T.local>
References: <20200505141257.707945-1-arnd@arndb.de>
	<20200505142556.GF82823@C02TD0UTHF1T.local>
Organization: LST e.V.
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: duwe@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of duwe@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=duwe@lst.de
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

Hi Arnd, Mark and others,

this may not be worth arguing but I'm currently fighting excessive
workarounds in another area and so this triggers me, so I have to make
a remark ;-)

On Tue, 5 May 2020 15:25:56 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > Clang only supports the patchable_function_entry attribute on
> > little-endian arm64 builds, but not on big-endian:
> > 
> > include/linux/kasan-checks.h:16:8: error: unknown attribute
> > 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]
> > 
> > Disable that configuration with another dependency. Unfortunately
> > the existing check is not enough, as $(cc-option) at this point does
> > not pass the -mbig-endian flag.
> 
> Well that's unfortunate. :(
> 
> Do we know if this is deliberate and/or likely to change in future?
> This practically rules out a BE distro kernel with things like PAC,
> which isn't ideal.

But still better than cumulating workarounds. If clang's flags aren't
orthogonal then that's a bug in clang. If I get a vote here I'm against
it.

> > Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> This looks fine for now, and we can add a version check in future, so:
                                      ^^^^^^^^^^^^^^^^^^^
see what I mean? And in the end another line of code you'll never again
get rid of.

I suggest to get a quote from clang folks first about their schedule and
regarded importance of patchable-function-entries on BE, and leave it as
is: broken on certain clang configurations. It's not the kernel's fault.

> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> Mark.
> 
> > ---
> >  arch/arm64/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 4b256fa6db7a..a33d6402b934 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -151,7 +151,7 @@ config ARM64
> >  	select HAVE_DMA_CONTIGUOUS
> >  	select HAVE_DYNAMIC_FTRACE
> >  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
> > -		if $(cc-option,-fies on y=2)
> > +		if $(cc-option,-fpatchable-function-entry=2) &&
> > !(CC_IS_CLANG && CPU_BIG_ENDIAN) select
> > HAVE_EFFICIENT_UNALIGNED_ACCESS select HAVE_FAST_GUP
> >  	select HAVE_FTRACE_MCOUNT_RECORD
> > -- 
> > 2.26.0
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505194243.5bfc6ec6%40blackhole.
