Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKNZRCCAMGQEY4F23GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CEB368A1D
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 03:02:34 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id t15-20020a92dc0f0000b029016b11675c42sf19871376iln.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 18:02:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619139753; cv=pass;
        d=google.com; s=arc-20160816;
        b=R3SBcfMy56ilw8mvBPxHK/IV1qnJKxjxVJtB4Djk4hf8y+BgIYOTFHyXyWcgfVCqnv
         QDsvIUyGgxvORKCfmZUkA2BGhM9qNToklmXlYmBTmwDzb2c5DajBQdT6lBiTuIfdm7aK
         IvPHvWX6kkx7yj8vq27UQ87Z64eNwZ8la9yg0ldfCmAysUPaBUrDH33tSLwtouslmIzU
         Sy64fn8lNlIlbML6z8FaPdF9T+wP9KTIe9SG5IBl1fSrlzU0AaR8WpFHXq3TfiROGdAJ
         VTMS7Gpn2/svxMZ4McEV0CtOGva0lI0A9F7pNUYpOl5yQ0DbPUo4a925mYeyXNH3Llt3
         l+Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z09x6RiK01nfAW25PFq8F6TiH+mgXotyYmhNkRchBaE=;
        b=kqwOSVBnMl4LXVDHp0UqjbW3SvnJF5k81Jo28IMKGAfnDykmptk1KOSE0Og17Ui8qK
         dHmBYHuSL+Iq8A/J02ck8/sPLG419zVXwGbP5GSYNS7zQTVTb1EpOValdGYmL6RrA7oq
         lBZVGVWKIs/hfKHFWrq2Fipw/0hAe+WzSmRRNzB6BJsVGK0+w3UDMvjDvchdLINPS831
         iJ9TVJt7kcM91Nuz8jaZX6ZDozjtRBMrzQ5MOBbHtH5+f9DP8GQoRevZVj4AJhxwANR9
         rJGpLMvOaWZBZ10WfXnyvzjFN45J5s+JMwuItbuqgiSu1pzmhZc/tqmwGyAFJz2k97Qf
         vUyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tpwM6QZo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z09x6RiK01nfAW25PFq8F6TiH+mgXotyYmhNkRchBaE=;
        b=IBExTT4CZMVOKEM0bJZ1No8BtNINKTv6zU4KEo2iaPqe12yB/9BX6PhBeA+SK4gPtx
         G1rPLHq2ZO4EQC/GIj18ShKKkuW5gZKeO5S2KPIsxKp5au9lntg4SbdvaMiqP35Iq5s3
         WvnH5nJ6SyIrTcz6JIA/17ovAj5BmnnEivduCil9L8nJ9gDc7G6Kv/k7jNz2qsDD4xXc
         GgKKWBj7r7QyjJDOz8/g/QYXJ8dAWKM9EJwSbwJsEa6daSAZ9BwbS09/dy89xnZk54Mf
         JSSgBV30Xp7689tawwtw9YOYX7cDDW1rklrEcFoX0yZIK006Q2Vd3TtH9lB2PVeErS1I
         9Nww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z09x6RiK01nfAW25PFq8F6TiH+mgXotyYmhNkRchBaE=;
        b=b1x12ucSvIq9tWD41Le0yzXhw4BtzZCSIF/CyzntRsdPqWsJQAicO3C3dYqpwjZX1E
         CkLKsogfER+oMAcn2wNzLbcMBGExrvM5F+LdrkwNWfh75uMyXsn6kLmScY+AQAQajzAo
         2KC6cInNkalBPU3m8fuxwiHp/eCtk7k3ZLiwVNqvhWSBxMiWdyu/S6lZINnod8Jej9QR
         kClxZozPu2ThffAWs1VqLeIGkYyLeSP4kWQN+4LzusK3hZpQ/q61V1NmGvC6aGumeqdQ
         qOVpD5lrMyeremf1ZmW9KtS39p5/8ruJn6O1ROzREO2dg7To3pg6dGbaR0Cs9uDXCC0g
         wn9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/zn5sM1gkS4uWrv0zmcqXJ+q1xtBx5jWPXE04qEFpmw4j2Xz9
	yIlWacafqI1WRlhOI+chPk0=
X-Google-Smtp-Source: ABdhPJxQcUWMxJsB6KNorBJBH62rbdJTJKcLVwCmsn9Ppi+dDb52Gw/nlehsdnvDKaJgr/6vd53m3A==
X-Received: by 2002:a92:d251:: with SMTP id v17mr970622ilg.236.1619139753489;
        Thu, 22 Apr 2021 18:02:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6102:: with SMTP id v2ls1373323iob.0.gmail; Thu, 22 Apr
 2021 18:02:33 -0700 (PDT)
X-Received: by 2002:a05:6602:1353:: with SMTP id i19mr1411159iov.202.1619139753118;
        Thu, 22 Apr 2021 18:02:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619139753; cv=none;
        d=google.com; s=arc-20160816;
        b=rUyRLm3ucF5l0h6UTRrXlsd9MilG/y4AAlI/dVlPaCzd35x6hPIsI5H3mMvxvc82UP
         Q9RmjYKjMLJFcAZAse+ej6Gt6Jhtpt9rCylhJbpNoLNGBvqWa1vCtK3e9PzrfILM9IQG
         Fh4hxrKAM5ZC1nyLfClK5MqDXqdOz9bGbuJc7045gqsBR5T09/hr9qWiSe9GrmrTUPtQ
         kw6VyyJAkOsyXfRvxu/DlSX3Zmd0SPHvZQadpFD2Czm2pa9oGj2eORVZZRht1JYNd4vb
         cTtcd+p9Z6vTMiigRPd+OpvOA9FLN0rw+X7S9c99J/vejBwcM3ZAXUpFnJrqHLupjWl0
         U2mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0ZEDP7SaC2/xr/n2KuS2a4DIiOt16/m5tCewLe7kws8=;
        b=Uo8KNCTnjDSoGFAwVvhDJelbNr1rA6fai7zzQwZ6PHm4s65kVbp2bzQK5eSjGmmvGu
         WtyvXQIr6+Tl5vzyr9/PGQ7ph0dypOSb+3KwsAHsZoKHBfKUOklS40NaOamiz79e5dOM
         fQK+AcXMhA3ivcKHQNFQsHdLsSxmMrkZvGjbyBLKA3oQJ9Y5+mS1pY55UayL1bZHjZVD
         NdqFZHzCKGp+vB2+dqPrpyTAYOG4qSuqVeu2WcPlMeXLwZ/UzblBMAMEUpQysPP1h8z7
         0HRaJvbHKA/UGh27EBHhjKlE++GW5G+NPViG5vdRc3/aOUUZpbplt6Xgvvcp6CB5zrme
         /vzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tpwM6QZo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n13si530498iop.3.2021.04.22.18.02.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Apr 2021 18:02:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A07C613FA;
	Fri, 23 Apr 2021 01:02:30 +0000 (UTC)
Date: Thu, 22 Apr 2021 18:02:27 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Elena Reshetova <elena.reshetova@intel.com>,
	David Laight <David.Laight@aculab.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] stack: replace "o" output with "r" input constraint
Message-ID: <YIIcoz4fHjVjWHTI@archlinux-ax161>
References: <20210419231741.4084415-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210419231741.4084415-1-keescook@chromium.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tpwM6QZo;       spf=pass
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

On Mon, Apr 19, 2021 at 04:17:41PM -0700, Kees Cook wrote:
> From: Nick Desaulniers <ndesaulniers@google.com>
> 
> "o" isn't a common asm() constraint to use; it triggers an assertion in
> assert-enabled builds of LLVM that it's not recognized when targeting
> aarch64 (though it appears to fall back to "m"). I've fixed this in LLVM
> 13 now, but there isn't really a good reason to be using "o" in particular
> here. To avoid causing build issues for those using assert-enabled builds
> of earlier LLVM versions, the constraint needs changing.
> 
> Instead, if the point is to retain the __builtin_alloca(), we can make ptr
> appear to "escape" via being an input to an empty inline asm block. This
> is preferable anyways, since otherwise this looks like a dead store.
> 
> While the use of "r" was considered in
> https://lore.kernel.org/lkml/202104011447.2E7F543@keescook/
> it was only tested as an output (which looks like a dead store, and
> wasn't sufficient). Use "r" as an input constraint instead, which
> behaves correctly across compilers and architectures:
> https://godbolt.org/z/E9cd411ob
> 
> Link: https://reviews.llvm.org/D100412
> Link: https://bugs.llvm.org/show_bug.cgi?id=49956
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Kees Cook <keescook@chromium.org>
> Fixes: 39218ff4c625 ("stack: Optionally randomize kernel stack offset each syscall")
> Signed-off-by: Kees Cook <keescook@chromium.org>

I built arm64 defconfig with and without
CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT with LLVM 12 (which does not have
Nick's LLVM fix) without any issues and did a quick boot test in QEMU,
nothing exploded.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  include/linux/randomize_kstack.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/randomize_kstack.h b/include/linux/randomize_kstack.h
> index fd80fab663a9..bebc911161b6 100644
> --- a/include/linux/randomize_kstack.h
> +++ b/include/linux/randomize_kstack.h
> @@ -38,7 +38,7 @@ void *__builtin_alloca(size_t size);
>  		u32 offset = raw_cpu_read(kstack_offset);		\
>  		u8 *ptr = __builtin_alloca(KSTACK_OFFSET_MAX(offset));	\
>  		/* Keep allocation even after "ptr" loses scope. */	\
> -		asm volatile("" : "=o"(*ptr) :: "memory");		\
> +		asm volatile("" :: "r"(ptr) : "memory");		\
>  	}								\
>  } while (0)
>  
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIIcoz4fHjVjWHTI%40archlinux-ax161.
