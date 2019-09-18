Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAVKRHWAKGQE6TTZUWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C99B67A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 18:02:11 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id f10sf198618wmh.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 09:02:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568822530; cv=pass;
        d=google.com; s=arc-20160816;
        b=jSJtHfE6zi5s9JhkYuFeUtOZliV/X6/HpMNHOo6NDYbJ4cTloVd+qb5cMWllgnve0h
         kEFeI3D6iuqfREHfkhwv04MTPUNItOvt+7eUaXponh23FlEcUAcgeCYYMsX1S3YAzbnj
         jR4bghyTseZA/JxRs3Yzmi5HNJmBTS0F6vf4GE0rdVSdeVh87EwJd6IQVlYwmfVo8Avz
         GUZqQq3wXRB25KyJZT5UmGjJVNj9WT8WDRNP75ehGWPDgC+srMOrROYYfz6ciEtesK/i
         FcHGReK9x6PerdPus9BqOd9LbAUEcz5qBth616DDheTXZnW3Ak0Vqgt3BQ9Kr+5piFdK
         yfrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=afGsQRzjBOyzTGk8NtynFqLD91cHyLZVqrxYK1zGSNU=;
        b=fGCe4YPl7rTJeH4RkMLXA72hhqMKA3oLiwL3KMOsrZVibxgMr8Z4dWwWrcmjrASzao
         0Y5z4vepM8mTe/oEsnK2yc/WlVT8KiSV0Okr2KlN+8dGQTAIFUM717UzXaT2peWcaE/y
         XtIo8bulnUFrn9OoeJB9bJ1HetoX4aod6iOgKx8qqLDOwOCcOokqd1leLuIzf6xGeSjO
         xO9FKnakMA9Hy8bLHPl+nWs7CDYZ4TavfCBAkcQhWfnMxHdwjd63+w7OZqifnQJzqUDC
         Qq3tirbIXiYsoER/7W8l9srSYCpwlrUEScnvuAtkWJSBsxq/89R1Hq0BKAz2m+1NaL06
         bPWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U351S7T4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afGsQRzjBOyzTGk8NtynFqLD91cHyLZVqrxYK1zGSNU=;
        b=hU3FjXIcwh2Ke7ABuYSqlSkMwQ4slpihuUfZOW9tGx59CtOVA0lsCyLViLL8hp6uYu
         GTN0UcgoQ4lwP6yHcWUF7a/KzU821H2cSfPmNlGTw6iA1ZVmTjJzV55Ns4sANPEA1jGQ
         j7JlMrHpJDSxJ4O5jHr8sxTufpQV7nB2wltXpSx93ujID13Do3vimt6lKSgIkT3+I5dT
         0bmF5poFPLQIqMU9a3C95sJ5Yg6p5qUcjNORiokSyKfS2aIEk87rZoXfJY9ochmfCqhY
         kCIjiEcV9SPmHdjxmIT1UMm5y70jE98H+IgBdXPY6xrwyBnvoNGncACq5tPDB1EFLfWg
         ARPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afGsQRzjBOyzTGk8NtynFqLD91cHyLZVqrxYK1zGSNU=;
        b=EZXCVR0sidFKfSsDbGXvgA9LaWHT7jj3ETmIRZAt9eYMVX1cFj1XqauuKUZzXTCU86
         2W27i+bJhh7li77mgM6nLYNYQHOqQT15tvNGi5Ui1lDD6Y2xXtCNIWd5LA5GUWQ3ZqX4
         topWTjQsdkDbIq1im5eDaB+Yd2tqGJLaAvCKXcUugcQwyXtpWCP/4oFK7xupDWFOEfuE
         WH/wPgeBoyeSmWOzHCraLAQJvwCIuK5lTQe+jzr9FitOJuzOhc4YRlXbqkAQMs756Yj2
         8a29c/xvsirWUzHdRjnYTrj4/iPkUWbqccAt9psec/lOFwCmLa81KKoKIJkhkASImRXu
         UjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=afGsQRzjBOyzTGk8NtynFqLD91cHyLZVqrxYK1zGSNU=;
        b=ebDDNvIL9H1f11R8N+zNEZ+VJpoMwJpTws2YM/2ptf3huemtWtVYEabYqwrAybj82E
         ssPLliQTyWrycked83Wq8IrYR6bEoXqAMRX1mBSsKEpOt6QWJoixH9xWqpO2HjBm0SjQ
         oB8nlMhQ39p1jmElv271Xk/vz3dRKt1yhhnZNa3vaUzt1U/GXf/Tu9P7+RA6cbuPPuwR
         GLiF0+Oa3o74mZCIceUMy0gKtVu9QTwOhEC1BmVwzbUishwNSEgSuayeF8gY/3LZ3tGQ
         4LOlrOMlH+f7V+lwobUE7iQoMBNG6Hk4hOiXnfcGprBYOrJZUdVl53dFIVSbZ3GjKmqs
         vLhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFf2mKnsr3pxPFszES0PlSedDQDp1t+RbRiOoOzEypli32/Flk
	N5eCy+yBhl9AnulkFw4ARCs=
X-Google-Smtp-Source: APXvYqzxCUiLQBgIUW//TXmAYzaWamtThOwvw3eujj2c3BVqe+sJEZ8FYLLCuVqYh0evzJhDTf1wTg==
X-Received: by 2002:a1c:c189:: with SMTP id r131mr3585789wmf.153.1568822530871;
        Wed, 18 Sep 2019 09:02:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe43:: with SMTP id m3ls40272wrs.4.gmail; Wed, 18 Sep
 2019 09:02:10 -0700 (PDT)
X-Received: by 2002:a5d:4944:: with SMTP id r4mr3864159wrs.283.1568822530320;
        Wed, 18 Sep 2019 09:02:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568822530; cv=none;
        d=google.com; s=arc-20160816;
        b=Cus1kURZdO7+pQ8fP7c/iAUfi4Yxgf3/HN1G+7J1qiScc0EQ2AyVE9p12dJE45fNVg
         /xwmCbv2wToPhA+pivIeSauo3oFiHAYmntPzMJSe41d6Ng4ROuYuLXys3goYNURu4Y+C
         bHgDz7Fhm0oYb2pSjvlcAcybyPP+b2Yf+CYvrzx1lUROdnz1hab7SMsOpnFJNGsm2lCS
         cykteSCy5qIT4DTFG5rNxsviTLNHQj8vZpEGgUVzwgtGcJtSJszp6u7qaJqmOUJcz+9S
         hEGUIXGVaiC9LIMDoa3WvzkDiWXo9MnQi/2uZGO3Htnje6HNuYiX3PHPxE1Ei5h9Eg8g
         Cvzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Yl3CO9TXK6n/CjIj2w2hV4glH8vSZmkVoir/AzZov4I=;
        b=nQu7AhvYVuamitLQa++0J6As2eI0FVa0jt0i3ia8dXQy/qIlYg8VBISsMSpO5YEiEN
         BJEAowKjt1MdHFjBvgFzCiq7yMZTp03lnEFdqFOFCg9cvbzcEcQBjP6ztXcd8+ePLsMp
         rW1LbLHwLzrSqSDMA7HbuwrJaQxWY5mzQPTKlPgR8Iq9QYG2WfOCyciKuDplOzt81eJC
         CtEiDoG+xoPh5QpNvarCMbM/SaTepGqOfPJd81ynTgInOfrZ5Bi0xVHcTznYs8HDrGf+
         /w1rTm1oj2shQxonDo07PSZY3kRZ74RriRtW//eWusLE5/B6eGswmWU8XBKeVAXcTV9e
         zIXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U351S7T4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id u15si138963wmc.1.2019.09.18.09.02.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 09:02:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id p7so732113wmp.4
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 09:02:10 -0700 (PDT)
X-Received: by 2002:a7b:c0d4:: with SMTP id s20mr3638158wmh.101.1568822529834;
        Wed, 18 Sep 2019 09:02:09 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r28sm8558346wrr.94.2019.09.18.09.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 09:02:09 -0700 (PDT)
Date: Wed, 18 Sep 2019 09:02:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190918160207.GA23613@archlinux-threadripper>
References: <20190910115643.391995-1-arnd@arndb.de>
 <20190917203425.GA31423@archlinux-threadripper>
 <20190918090240.5cc3rfcuenefisgr@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190918090240.5cc3rfcuenefisgr@willie-the-truck>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U351S7T4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Sep 18, 2019 at 10:02:41AM +0100, Will Deacon wrote:
> On Tue, Sep 17, 2019 at 01:34:25PM -0700, Nathan Chancellor wrote:
> > On Tue, Sep 10, 2019 at 01:56:22PM +0200, Arnd Bergmann wrote:
> > > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > > when CONFIG_OPTIMIZE_INLINING is set.
> > > Clang then fails a compile-time assertion, because it cannot tell at
> > > compile time what the size of the argument is:
> > > 
> > > mm/memcontrol.o: In function `__cmpxchg_mb':
> > > memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> > > memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> > > 
> > > Mark all of the cmpxchg() style functions as __always_inline to
> > > ensure that the compiler can see the result.
> > > 
> > > Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/648
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > > Tested-by: Andrew Murray <andrew.murray@arm.com>
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > > v2: skip unneeded changes, as suggested by Andrew Murray
> > > ---
> > >  arch/arm64/include/asm/cmpxchg.h | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > > index a1398f2f9994..f9bef42c1411 100644
> > > --- a/arch/arm64/include/asm/cmpxchg.h
> > > +++ b/arch/arm64/include/asm/cmpxchg.h
> > > @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
> > >  #undef __XCHG_CASE
> > >  
> > >  #define __XCHG_GEN(sfx)							\
> > > -static inline unsigned long __xchg##sfx(unsigned long x,		\
> > > +static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
> > >  					volatile void *ptr,		\
> > >  					int size)			\
> > >  {									\
> > > @@ -148,7 +148,7 @@ __CMPXCHG_DBL(_mb)
> > >  #undef __CMPXCHG_DBL
> > >  
> > >  #define __CMPXCHG_GEN(sfx)						\
> > > -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
> > > +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
> > >  					   unsigned long old,		\
> > >  					   unsigned long new,		\
> > >  					   int size)			\
> > > @@ -255,7 +255,7 @@ __CMPWAIT_CASE( ,  , 64);
> > >  #undef __CMPWAIT_CASE
> > >  
> > >  #define __CMPWAIT_GEN(sfx)						\
> > > -static inline void __cmpwait##sfx(volatile void *ptr,			\
> > > +static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
> > >  				  unsigned long val,			\
> > >  				  int size)				\
> > >  {									\
> > > -- 
> > > 2.20.0
> > > 
> > 
> > Looks like the arm64 pull request happened without this patch so clang
> > all{mod,yes}config builds are broken. Did the maintainers have any
> > further comments on it or could this make it in with the next one?
> 
> Fear not! I plan to send this with some other fixes we've got for -rc1.
> I just to get my CI scripts going again (new machine), but that shouldn't
> take long.
> 
> Will

Great, thank you!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918160207.GA23613%40archlinux-threadripper.
