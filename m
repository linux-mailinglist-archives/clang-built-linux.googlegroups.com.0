Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBN7FQ7WAKGQE53U5JAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7C5B5FBE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 11:02:49 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id s12sf3144755oic.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 02:02:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568797367; cv=pass;
        d=google.com; s=arc-20160816;
        b=rYnkjwXauEusxvfvRS3RnC5+w8C7k7CQfxQBMvIgg6nE6KXEDp3edJdXDIAhpaG7rt
         S5OkblrXHdJaJe7ddzTBXLkV0MTdDr+5kL8H9ZsNlSyzBQmT4Z7b5wLHwWs9JA7oAxMV
         VSWVcq9IlFapAZLqsu8+DR98SMrK2iP2U8SEV69mWZotCeReQZcybg4juZZ8weJpLa33
         Vo/QioChtfGPRvfNwAEqgC1+CwLxg23WtV+mZn921qt41cNtZY+ZNeHNNWTRqgkWG9Gc
         MQGcJlPy88/3dBFVffv0k5S9MGGTicWgkDXqFKtQkxiPcle9Jd/809iV1P/Hlr7/ge4u
         fTTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=A4QsWTMT/EprV+p6KRVlkCRFdpWEiOVM9HGNmepNcGo=;
        b=HkxN9HgCDEBaRy7kXbf6RkI4ybEnoHmB1x3gvdaZ2HO3XPFx9pVfe7pkQyH1QN/ZvQ
         0lSWTX8bJ9YeAx17DvAjlbt1I1a61bJhliuMJI+lJ7x3zxnmqTJN7IIhA/HlW1NlO4Kj
         P0iXAJeHlOwHZKW/Lvnv2Tk5ywqUkz3SEIYwRKjLjYp5SrrZlqNJorclF5+c41OP91PV
         drg0H/015G734catsWFIXrp1hF2xkWfZs89Lk0QgaxgQQw7WxZmyaWSP3mcvkRkErzpn
         A/6g4Wp5fa66sXirZh6j3nep/Aq2+f3Th1yPbQ47Nif04m4zgf0TyNCPBqts9M+n19cf
         jxaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2YY6sB07;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A4QsWTMT/EprV+p6KRVlkCRFdpWEiOVM9HGNmepNcGo=;
        b=CWqYdjAbNRHC07WQhE38EAGi+UqNyu+NYCG7H5xh1Ge5QrVbxKEaoEOWR8J5p3G9/y
         tB+wHPXrsCsPNXdFpznraRUObFqZk2MwUqSLcL7+G6bVbY7ZdOBwUEkr6jXUue0f8vpF
         SvoubwG7/BxjoJyyV3nuVQz0fKlYZJFveSIfKU49jBvXAvlhHfRnUwXHTRQfahLis/Rq
         YK5RX2or3IZW205BsW9kGSVYmmzn8QMId9v+yS69Z5yqOek0rLB+keaMfeI01D/YQW52
         gRBwqrNX1yF92zfh9mVgluc2slnaRonCwTuSFK5WAMDdAtaqBiQg0gfpErg2vSfGquj+
         EHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A4QsWTMT/EprV+p6KRVlkCRFdpWEiOVM9HGNmepNcGo=;
        b=g53SYNXOpbtqLqHqvAT0e3GTxSPiZdpd+3z2BSvrjEvbVohrks0f0v8Qd2zbx8Ksbf
         LJ8cBf3iv2RRFl0w1w7K9+Wmok5Phz4VBt9o4qoHXkhJh/9yej64SVM9Rrw44I00Soni
         Xg5tmG4L2bPwv804/LjJxyQmjnYMl0bwoGSjxAYe5AKCIza57hzExwAbrQ92hJ0gaw30
         l7gWbadmqQBBZACMJUtoD94LWU4BZUAfDyiK3c79hUW36vjgBg9xuLFFyfhoSsifoQqX
         7VNRBHBQb5rGjWp6RlVb+8HX83Rvq1DEAoFr67E/gjG/4EAxhQLEqxc21hiPq9nfdMSZ
         rneQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJ8kyRcFd4b9jNDEr1TSxEdmqlvGmj3+/+LpXq0sU0OvaU7Wfc
	zthNdGmc9HNjO6uWQtr59hg=
X-Google-Smtp-Source: APXvYqziSw8JzuNsI7Eej42lyz+EVamoylUElGBEzMt3HPe+sc2fbm8MPGcPyXQLwMXrYKEwPz6mqQ==
X-Received: by 2002:a54:4105:: with SMTP id l5mr1435356oic.83.1568797367655;
        Wed, 18 Sep 2019 02:02:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1245:: with SMTP id s5ls327007otp.4.gmail; Wed, 18
 Sep 2019 02:02:47 -0700 (PDT)
X-Received: by 2002:a9d:3a6:: with SMTP id f35mr2183520otf.363.1568797367245;
        Wed, 18 Sep 2019 02:02:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568797367; cv=none;
        d=google.com; s=arc-20160816;
        b=COOVh7OGwz25idvUJHCw596Tzg44dbzMBZjJaI+6yiZgpmutI0HVSIt1E7xAcJOg4t
         YKYzxwT+uEKrLZHpq/TMS+4tdxkWX86mdBY3qcUh+AA3BYp/Ajye8Jl2iLZnw92WtQDX
         6AcJipHApKWQ8PoawiU6o1FhhWzD710FcDreH5Rs6/TMfjUOT7ufHetCdIRyI6fIrM18
         nn0kU5DN5AeMAF3grf5cRLk9dhMvz2ya2dvxPtXicsE2SYFqJrUVUSTTL6GsmMc6reqk
         FsHm93CvRDFZVB4hbaiNtyo/sf5Ngt7VS32iThqjIkt5C5U+Qbir9Wj0KrJ6MLerVChH
         hqIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dHLexpxRwBYrFPvNt2U/Le6Dos2Eo0yE3qCUW0hPxG4=;
        b=TYpW736f9UeXH/flUUACWGvQJOo+zy87sF2H49nciI0CGLYKE19felhMB5dNj1qOh7
         a+XNNnbxWb9sfQKFKy1gYm9OsuNA0Q0BLMMqB37SkfhMPY6npGQVtfTydJgINm/iE+ay
         eT29pxMbhlGqOjPvmZt0bcaYcRkMBJJ5IYRHRFIFjaNcsNKr/5ekTk+1j5U/+qzGX0k4
         dYLI9GONq4QH/Uo6AhP9Ar3uxXiJsVYPuJpVhnLhGjhlpkut3LdfpTKjij6NXlw9dAGG
         VJV0yNNOEDXxC+stpGAxR5SqTbJgHlK91zthW+jrPRekGYhlqFl4/TUubhPU1EjT8kCX
         D5Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2YY6sB07;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p10si554047otk.5.2019.09.18.02.02.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 02:02:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7842820640;
	Wed, 18 Sep 2019 09:02:44 +0000 (UTC)
Date: Wed, 18 Sep 2019 10:02:41 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
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
Message-ID: <20190918090240.5cc3rfcuenefisgr@willie-the-truck>
References: <20190910115643.391995-1-arnd@arndb.de>
 <20190917203425.GA31423@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190917203425.GA31423@archlinux-threadripper>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2YY6sB07;       spf=pass
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

On Tue, Sep 17, 2019 at 01:34:25PM -0700, Nathan Chancellor wrote:
> On Tue, Sep 10, 2019 at 01:56:22PM +0200, Arnd Bergmann wrote:
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
> > Clang then fails a compile-time assertion, because it cannot tell at
> > compile time what the size of the argument is:
> > 
> > mm/memcontrol.o: In function `__cmpxchg_mb':
> > memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> > memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> > 
> > Mark all of the cmpxchg() style functions as __always_inline to
> > ensure that the compiler can see the result.
> > 
> > Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/648
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > Tested-by: Andrew Murray <andrew.murray@arm.com>
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> > v2: skip unneeded changes, as suggested by Andrew Murray
> > ---
> >  arch/arm64/include/asm/cmpxchg.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > index a1398f2f9994..f9bef42c1411 100644
> > --- a/arch/arm64/include/asm/cmpxchg.h
> > +++ b/arch/arm64/include/asm/cmpxchg.h
> > @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
> >  #undef __XCHG_CASE
> >  
> >  #define __XCHG_GEN(sfx)							\
> > -static inline unsigned long __xchg##sfx(unsigned long x,		\
> > +static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
> >  					volatile void *ptr,		\
> >  					int size)			\
> >  {									\
> > @@ -148,7 +148,7 @@ __CMPXCHG_DBL(_mb)
> >  #undef __CMPXCHG_DBL
> >  
> >  #define __CMPXCHG_GEN(sfx)						\
> > -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
> > +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
> >  					   unsigned long old,		\
> >  					   unsigned long new,		\
> >  					   int size)			\
> > @@ -255,7 +255,7 @@ __CMPWAIT_CASE( ,  , 64);
> >  #undef __CMPWAIT_CASE
> >  
> >  #define __CMPWAIT_GEN(sfx)						\
> > -static inline void __cmpwait##sfx(volatile void *ptr,			\
> > +static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
> >  				  unsigned long val,			\
> >  				  int size)				\
> >  {									\
> > -- 
> > 2.20.0
> > 
> 
> Looks like the arm64 pull request happened without this patch so clang
> all{mod,yes}config builds are broken. Did the maintainers have any
> further comments on it or could this make it in with the next one?

Fear not! I plan to send this with some other fixes we've got for -rc1.
I just to get my CI scripts going again (new machine), but that shouldn't
take long.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918090240.5cc3rfcuenefisgr%40willie-the-truck.
