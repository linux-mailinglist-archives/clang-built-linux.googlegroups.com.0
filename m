Return-Path: <clang-built-linux+bncBAABBEWX3XVQKGQEGF6LNOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6F1AE6C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 11:23:30 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id z7sf3276097lfj.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 02:23:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568107410; cv=pass;
        d=google.com; s=arc-20160816;
        b=VU4YQUX1M9WNofBl52KhqcWVpcb7pblhqEdPCa1JI6Ta7FJ2PuVslvVLHHvmk3nbkg
         V6iJa0AERJGYq8B9uM9NCUrefngT7G4ISqVnU6uHTAJN65Dzy1IyWcAndcTuOl1CD+In
         XuVp7GHlQO1fM6x95s0CqRgDKfpsuTj+GuKMuMw+3HFA9HVlONnBKdg+VHDhkPYYfEg1
         0tB8JyX8s8QHLk1rN+wIPKi6GZpvXkS+kX8LuJCEoPZ7CwjZTkTtKdiBWAFNBPL/usl0
         JPDXVg2dqbwtnjURi9GKoJx8RXyovtyZRBgNtd2FBFsMZDf8tN1fqXtNr2wXKuqdyDnm
         lT8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6+dl5azgpDEdQkTAzNuyX691WnuS4u2twa87gLI5b/M=;
        b=B2HzNbXvTAofKONY/Bf5fJ75A32Z8IfReDDbE6ve1/XvlQA/b97rHVBSq8HkBQFL0T
         7PjKepVSc6F+i0d1F7BVr6hApoj/MM+omFP8/YoMYU98TipGLcq6vE/g2WdTisVpbSqK
         3N+tCSr4MlguwdYd2g1s94EDVQV3RZHMaQdRgxBOc75imhUWatyWDN3YD1ol3vz2pOW9
         sbDozoD4jbVTiaB3rWm0+zweZO/a99bMS5mayq2wMZFnkQiVnaUEcNzc9L4890Ev+mr4
         EBct4pcrIyKnfsyRYEKdozNqRx0IO1L6+h9A51QelC2+uPIOYvKnDqPMReQOyYp9vHmR
         bhkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6+dl5azgpDEdQkTAzNuyX691WnuS4u2twa87gLI5b/M=;
        b=HvR8xSYyLbDXZhAUVcc4wVR1Ultrk0un8Dkdq7VJU+r5DXhgfMGSBQgn1PtkqlG0fj
         Awilc1jBDc1EENepoHXz79Mt3yk2zY7fuJJn1U9YevWAg+h0drGp/QHNgPd0S1B0fZFF
         8p/1LE/95khWs0GBnZNwvg3ySHa8/VQWjh5ErZg24uV5vDCe8qefF3LD8zX6GeBk5IXZ
         nsQm2nWntm6l9QgjJwdXnvvgYjpg0L0UQGbmGqQ+pcqejbnx9nw8qFMYeYNqhWVQDg1x
         72FYPQLP9DNfj6x0HihNWbTJ+idOMUrBm3NvEOictXhnbDMPimc2r5ZN/UI5n9FIz9we
         d0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6+dl5azgpDEdQkTAzNuyX691WnuS4u2twa87gLI5b/M=;
        b=Wq42o/U8205O/bOcEayZw3DK6qxmfu7nPVfiGvvNVLBVfDf0haT80xNBAT+DJaV9Vb
         SI4Yo0g4vPeBb/6WmOBpQXb9oH/k29QXFGfeUfoIZYwAMhqYZ1b+uJXQt773ILzfZJTM
         UHdmOYZLDfXYSBMyArLt9HQZfp5rIUU27vCeCIuUo7r7B7reNH0y3Tvl7OhK8K9IBY1L
         AeMQ27rpd/Lfc8V7J+1m9sTEmZieLqQ986ILBZbHHqR7FjQ8Jylx86XU/rsnGNQbq6fg
         5Ui1AG/xxiO9sA8T1IgSL+aklR417nyYaxIZRLUWSbOikwhXPABdIJccBdYYc/vfUAb+
         OFyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWcKU+PCizOewIBWhJBWiGJLBO2DPkYOXZrQb4o83Rr0ECbdQtR
	P54rM5hM1b0avR7Km6knSus=
X-Google-Smtp-Source: APXvYqywyMiDIqTL1c9RkVcLWSy6PHOLLusof/vTEUm5DYrvViz9GKhsU45R6AJnAfXO6VHT+rtcBQ==
X-Received: by 2002:a2e:808e:: with SMTP id i14mr15253902ljg.198.1568107410451;
        Tue, 10 Sep 2019 02:23:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:90c6:: with SMTP id o6ls1980273ljg.3.gmail; Tue, 10 Sep
 2019 02:23:30 -0700 (PDT)
X-Received: by 2002:a2e:9c99:: with SMTP id x25mr18981269lji.9.1568107410110;
        Tue, 10 Sep 2019 02:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568107410; cv=none;
        d=google.com; s=arc-20160816;
        b=VDm6ggbQoCZGXV8XxI5rtWFTBfmq3vRzKusjkl3+Kxo2qMf6XuS5yviQNw98yR5elO
         K1D9nckr8yuYUJ2GD41opz8LnJ7Zcxc/6BSJcXMdvlEeE2Kq3ZMLVBa+Pai81fdgbgLw
         cCoB1TvSWmXEFe9/CicMlTDuG+J8HD1432ZMMhtd/39z3t0rZCgxRM6KY+EVEvxCdAkr
         N3Ukhd1xd3Cil6sbWOl1XPmwyjPOn03w3KJf8VCEnkVgdvIzV13MGHbNji6/+SNpn4Vo
         9HL/FsuQh2z9ANkJrPzr27PRoNNuKO2BiTH1Bn7iVNVmBTOyjUBqDGR4yjfn7nBVldVT
         yaUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Sn5itUnsn4LxHGVCCa3qt/H7Cbma2qnF+bsM8tyum1o=;
        b=ZWDgK34CwU8DiaU3Di3expC3zIkx9MxdWW8k0ufKNxCGoI+RBU3AECwCASNhI3dWpT
         ZDaVn/ZBgYHL0HM0Vl+wlz/ouiyhRQpjnY56tuSxBEDYADcntG3oj+r7Qi54QnPbAuX+
         zyQJUJbHxBPhJKX9qZ65UQyXs/WMkrImHColeCL/TxAepTpntSSINwH0an8lAznxd/Nr
         lSU7q0a7dqescM4dNHDkKeA1XbRFsOyi3WDJgh7Gso/1dKT6s06i8VWvJYwRCa5t639S
         bI5fsw/A9vmDL4JnFgzKfPdRqox68IFaoA9bJ0VHzVssBjDfBNpntjSLZuAVrzQkmsZE
         vjMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id h6si973730lfc.3.2019.09.10.02.23.29
        for <clang-built-linux@googlegroups.com>;
        Tue, 10 Sep 2019 02:23:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F49728;
	Tue, 10 Sep 2019 02:23:28 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AED63F71F;
	Tue, 10 Sep 2019 02:23:27 -0700 (PDT)
Date: Tue, 10 Sep 2019 10:23:25 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
References: <20190909202153.144970-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190909202153.144970-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-Original-Sender: andrew.murray@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andrew.murray@arm.com
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

On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.
> Clang then fails a compile-time assertion, because it cannot tell at
> compile time what the size of the argument is:
> 
> mm/memcontrol.o: In function `__cmpxchg_mb':
> memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> 
> Mark all of the cmpxchg() style functions as __always_inline to
> ensure that the compiler can see the result.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

I was able to reproduce this with the following:

$ git describe HEAD
next-20190904

$ clang --version
Android (5821526 based on r365631) clang version 9.0.6 (https://android.googlesource.com/toolchain/llvm-project 85305eaf1e90ff529d304abac8a979e1d967f0a2) (based on LLVM 9.0.6svn)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /home/andrewm/android-clang/clang-r365631/bin

$ make O=~/linux-build/ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang -j56 allyesconfig Image

(I was unable to reproduce with defconfig+OPTIMIZE_INLINING).

However...

>  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> index a1398f2f9994..fd64dc8a235f 100644
> --- a/arch/arm64/include/asm/cmpxchg.h
> +++ b/arch/arm64/include/asm/cmpxchg.h
> @@ -19,7 +19,7 @@
>   * acquire+release for the latter.
>   */
>  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)	\
> -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)		\
> +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\

This hunk isn't needed, there is no BUILD_BUG here.


>  {										\
>  	u##sz ret;								\
>  	unsigned long tmp;							\
> @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
>  #undef __XCHG_CASE
>  
>  #define __XCHG_GEN(sfx)							\
> -static inline unsigned long __xchg##sfx(unsigned long x,		\
> +static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
>  					volatile void *ptr,		\
>  					int size)			\
>  {									\
> @@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
>  #define arch_xchg_release(...)	__xchg_wrapper(_rel, __VA_ARGS__)
>  #define arch_xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
>  
> -#define __CMPXCHG_CASE(name, sz)			\
> -static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
> +#define __CMPXCHG_CASE(name, sz)					\
> +static __always_inline u##sz 						\
> +__cmpxchg_case_##name##sz(volatile void *ptr,				\

This hunk isn't needed, there is no BUILD_BUG here.

>  					      u##sz old,		\
>  					      u##sz new)		\
>  {									\
> @@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
>  #undef __CMPXCHG_DBL
>  
>  #define __CMPXCHG_GEN(sfx)						\
> -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
> +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
>  					   unsigned long old,		\
>  					   unsigned long new,		\
>  					   int size)			\
> @@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
>  })
>  
>  #define __CMPWAIT_CASE(w, sfx, sz)					\
> -static inline void __cmpwait_case_##sz(volatile void *ptr,		\
> +static __always_inline void __cmpwait_case_##sz(volatile void *ptr,	\
>  				       unsigned long val)		\

This hunk isn't needed, there is no BUILD_BUG here.

>  {									\
>  	unsigned long tmp;						\
> @@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
>  #undef __CMPWAIT_CASE
>  
>  #define __CMPWAIT_GEN(sfx)						\
> -static inline void __cmpwait##sfx(volatile void *ptr,			\
> +static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
>  				  unsigned long val,			\
>  				  int size)				\
>  {									\

Alternatively is it possible to replace the BUILD_BUG's with something else?

I think because we use BUILD_BUG at the end of a switch statement, we make
the assumption that size is known at compile time, for this reason we should
ensure the function containing the BUILD_BUG is __always_inline.

Looking across the kernel where BUILD_BUG is used as a default in a switch
statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
within macros, but many are found in an __always_inline function:

arch/x86/kvm/cpuid.h
mm/kasan/generic.c

Though some are not:

include/linux/signal.h
arch/arm64/include/asm/arm_dsu/pmu.h

I wonder if there may be a latent mole ready to whack with pmu.h?

Anyway with just the three remaining hunks:

Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>

> -- 
> 2.20.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910092324.GI9720%40e119886-lin.cambridge.arm.com.
