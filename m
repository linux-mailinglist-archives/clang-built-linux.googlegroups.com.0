Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAO3UD6QKGQEQVIEO2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6EE2AACA6
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 18:40:20 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id b20sf1991421pgh.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 09:40:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604857218; cv=pass;
        d=google.com; s=arc-20160816;
        b=SV+pwq7Wk0Z9+5Iau3Q+inA8PfFJ0s1EN/LC5GfRNKyoF2gx4nUUB7Jbj9u1/Gr1fG
         li0FHwyq3qtNHo+19ccwrQYBbiY+LxXsYK5NJ7cTSG74y2NuHVeArc0o8qzHglvumWzP
         irENPTgjq92wBPexNYUMIGBXoN8TynLz/E5gmKXBbPF7ERmdZfq5nJITlUz5TBaZUDi1
         8CcGybV5mKbLHVQ7NUhLDrXJPB8PJqK4zx5YTy8FwJcj3muzPgr4dNe28KmfyKwF9/ZK
         g5I9ZZ4BwssStj2CoD4+6sqskgbgNDC9YGqX/tSduSyRd5UVBmv4Bkzeoe0OAEqCfa7Q
         794Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=dAsd1hm5OoA1wkR6E36dTe3FoIN0kdtol1Tdux4YlQM=;
        b=xsLIXVgKf6NrTK00oc5npoTyMpKPCldULBi34g4+6yABBLHGbNx1Pgt/SWDLQbYC6o
         GdlYKt2jDq6JRHr+w8JqiVujLRUiZVqqmMCQrY2CAkItWNY8NBxmDwf8X9bX/phwuzWd
         +Bwk1GKtaYbTHRor0u4THI2msRFHRvNcA4NU7Sd2vRcnTV4Wyrk+98eC0m2eWfKs+kbd
         uoH5rWFyGQkH7LY8GUKdatoLKAu8YFayJ4s9PhLZdTJTA3aOLpzBW/c5WhvmhgweR+F+
         v9J70orLoyEiIHbjpdnPTGCFGrfVJaXRDaXJkwJQmIvCYd4095HWPxp1x0+XsorQLqt3
         xWMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oTiZFw3p;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dAsd1hm5OoA1wkR6E36dTe3FoIN0kdtol1Tdux4YlQM=;
        b=qqz/o63X84Z+sXpHZCda8ak3pRFlsgg6HZwIIlC2bYQh1geFVZ9QEjeZP9flMLvyHL
         CeRS5xTF+blB/TN7Ybdm7+dfXGYHTKZ6MwBL4ev42oM9HvwZk82st+Vg5Ajk+EIxMdPs
         Zq8Sj3/KfDrRAEVUGxhGtuDdpZjlvvU0eOkk4Xyv7OOja37C10OMsW/OqpNiYxI9eOXC
         kZU9Hs4T++qTfFtt4lRpjSzeXuIeCNS0TNXrYrqSa/wKRx1ZisjFogwicQQlEJhL1CII
         Um6g25r+n5YC/qi6QPqgovbktvoDLexY4cO0edUiyzFmaT97KmAKxrOnrnvzoYCyujUx
         lGZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dAsd1hm5OoA1wkR6E36dTe3FoIN0kdtol1Tdux4YlQM=;
        b=LFhSm24++YBBiBxFWvYbqMje/kaV10wIjOp0uS9re6XYpkXp4ANYxYJc/782aIngSQ
         HTIEeLuj3d92N3lzYreyWQ216IYix9AWAC5Jox9+9XXEZNb83JRyn45WOie+nZ8xePzl
         R7ujPuj0jaiMCkYGkdf3S6TQFu9JA6WWldDUaE+UmiMKNKT1rCuaw8xxwOVzeiLkQ6u1
         FWi00MpdnYoFO/L4k/W47JXRh+BOYWSmUUr8TXTMC24rXFc0ICIGg6impdqqnvQ7wR5o
         ZuqENYb/PBsl5DdOnzwRd7dAsRNTd9gXw0fdBt+PmiGTwnvpgkSLqLALrGpQBeuUDAxE
         8Zaw==
X-Gm-Message-State: AOAM531yW/VzWmuPlFCKeRMRwEetvw/El7Yj57vy/yAFJV2qx1F+RWTX
	1CX1+dB9A4CmUqoKpiid7+4=
X-Google-Smtp-Source: ABdhPJydDAndJd/1WzmKrfEiqff3O4X1uRegt3hsjLkNr4CErSHyX9vSsEXtWSF+Dh24dlXCsMf+Mg==
X-Received: by 2002:a17:902:c281:b029:d7:ce5d:6406 with SMTP id i1-20020a170902c281b02900d7ce5d6406mr6187260pld.35.1604857218154;
        Sun, 08 Nov 2020 09:40:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls2164151pgn.8.gmail; Sun, 08 Nov
 2020 09:40:17 -0800 (PST)
X-Received: by 2002:a62:2ec7:0:b029:164:4811:e1d6 with SMTP id u190-20020a622ec70000b02901644811e1d6mr10965057pfu.12.1604857217477;
        Sun, 08 Nov 2020 09:40:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604857217; cv=none;
        d=google.com; s=arc-20160816;
        b=xQ13Mx4EWxUqzIvAcHcLGTpo0Mn1CjJB97lCVtBC5vUlk6sznctYcxJOjrKm81FZs6
         KK/yAwK2HJXun+ZgDTRwUjvAgDlOtJRSmvDYUTGK82bYVU1q/R7F55kInoEcQr9wPge6
         usUoId/OKX+fKzZ3IAJeI7UXslN1EdGrjzUJwQCdZIbkqZbWR7rZhR9pePJB1ts05h9Y
         oUmKBqu6ibdlujR1nYevp1ruLY4r3w2pdERTIGPYwrFlbBMyHxweS506HM8exsV4GIcR
         +7pTduRDr1OH7KH1B8aadVAxP0CPPKTsLn/k9P+4WW7rbtWEUabiIuOBKA3BaCKKoxzz
         +x5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=BgT2CP26pzdejYHyc1QoimRmV9Baz6Lnq3lNUhEBR1U=;
        b=loM1wum9D13DoWnu1mBEkO2hnwbwom3EtzwwJz8QrumDmkX8zeNCZRUcMw6diwrhsG
         p5gEHDAijEczI9m6eE113danRTY4iNhHW561ifMovEZimH87+nzB2N9hiP1YnJfA/VrB
         WEG12bEvjs37ZmTj9xpBc68NDROAQrFWaD9ES3PHEjC/koXXWntg1CUesJQC3Og4jOu2
         vlnC2e6oTpVFuMMcVuwqkTsRlmzBG2qyYY8lF6t4Xjn2Ad1+GRnZpXLP6l9fss8q6vNM
         aNPwM55bJgqrS7sDd3pSrw4WLMs/lQUfljOff6RqIM0Qnc5I3Hr73pe2dvdX1pXZy4dK
         ubSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oTiZFw3p;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id bd7si363845plb.0.2020.11.08.09.40.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2020 09:40:17 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id d28so846337qka.11
        for <clang-built-linux@googlegroups.com>; Sun, 08 Nov 2020 09:40:17 -0800 (PST)
X-Received: by 2002:a37:458c:: with SMTP id s134mr10034685qka.405.1604857216288;
        Sun, 08 Nov 2020 09:40:16 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y14sm2723654qkj.56.2020.11.08.09.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 09:40:15 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 8 Nov 2020 12:40:14 -0500
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201108174014.GA219672@rani.riverdale.lan>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106051436.2384842-3-adrian.ratiu@collabora.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oTiZFw3p;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote:
> Due to a Clang bug [1] neon autoloop vectorization does not happen or
> happens badly with no gains and considering previous GCC experiences
> which generated unoptimized code which was worse than the default asm
> implementation, it is safer to default clang builds to the known good
> generic implementation.
> 
> The kernel currently supports a minimum Clang version of v10.0.1, see
> commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1").
> 
> When the bug gets eventually fixed, this commit could be reverted or,
> if the minimum clang version bump takes a long time, a warning could
> be added for users to upgrade their compilers like was done for GCC.
> 
> [1] https://bugs.llvm.org/show_bug.cgi?id=40976
> 
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  arch/arm/include/asm/xor.h | 3 ++-
>  arch/arm/lib/Makefile      | 3 +++
>  arch/arm/lib/xor-neon.c    | 4 ++++
>  3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
> index aefddec79286..49937dafaa71 100644
> --- a/arch/arm/include/asm/xor.h
> +++ b/arch/arm/include/asm/xor.h
> @@ -141,7 +141,8 @@ static struct xor_block_template xor_block_arm4regs = {
>  		NEON_TEMPLATES;			\
>  	} while (0)
>  
> -#ifdef CONFIG_KERNEL_MODE_NEON
> +/* disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976 */
> +#if defined(CONFIG_KERNEL_MODE_NEON) && !defined(CONFIG_CC_IS_CLANG)
>  
>  extern struct xor_block_template const xor_block_neon_inner;
>  
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 6d2ba454f25b..53f9e7dd9714 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -43,8 +43,11 @@ endif
>  $(obj)/csumpartialcopy.o:	$(obj)/csumpartialcopygeneric.S
>  $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
>  
> +# disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976
> +ifndef CONFIG_CC_IS_CLANG
>  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    NEON_FLAGS			:= -march=armv7-a -mfloat-abi=softfp -mfpu=neon
>    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
>    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
>  endif
> +endif
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index e1e76186ec23..84c91c48dfa2 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -18,6 +18,10 @@ MODULE_LICENSE("GPL");
>   * Pull in the reference implementations while instructing GCC (through
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
> +
> + * On Clang the loop vectorizer is enabled by default, but due to a bug
> + * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
> + * so xor-neon is disabled in favor of the default reg implementations.
>   */
>  #ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -- 
> 2.29.0
> 

It's actually a bad idea to use #pragma GCC optimize. This is basically
the same as tagging all the functions with __attribute__((optimize)),
which GCC does not recommend for production use, as it _replaces_
optimization options rather than appending to them, and has been
observed to result in dropping important compiler flags.

There've been a few discussions recently around other such cases:
https://lore.kernel.org/lkml/20201028171506.15682-1-ardb@kernel.org/
https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/

For this file, given that it is supposed to use -ftree-vectorize for the
whole file anyway, is there any reason it's not just added to CFLAGS via
the Makefile? This seems to be the only use of pragma optimize in the
kernel.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201108174014.GA219672%40rani.riverdale.lan.
