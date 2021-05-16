Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYGVQKCQMGQEGHLCVAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AD6381CFB
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 07:17:22 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id h4-20020a926c040000b0290192f4fa4c3bsf3556465ilc.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 22:17:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621142241; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCWBVSrCpjK6bindRyHNm8/n30o7rrEu5O2EthO76r/CWaLnT7XRxhorCKGZPYXus3
         pwIEtyLaxHpXZ7P//ISNMa5KBz9eorfqP9DYaltXKLp2o2+FzQy96qWaj1zRQS87Wp07
         IKoBQxBzb0LoYICHFCZQ5hUg7EYy2W6Y87HAehZhsCk11xEofDrhro0RmR189OMJ48MW
         oLXt8TuE1gAQwZQSA6IqBGq3IvFeaPvBp4FUTp3rJPWfkPaxHP/6oem/1Oly/5TI3TwO
         jf19D3cVebe2uHXQB9syS/s+6xiOCqfoRzxDKQnCklQR3r0hLpj4LFzwL32WQezm38kg
         LAiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MVVJP7icr1/rZ8aLSlwUq/8m6wz9KU39xWLtzL1adXM=;
        b=Z/ZXYQbr3gj3mCAO7XVqBaiJ0RJnKRvCiYLf7a+1xLV0DoDz6cxDMATSR+EwWz8wfY
         o0LAo/f3fy0viEu22guJhwiZV9bas6oUCGzTgfIYwHY2+z3MJARoCmflhyEBsKFf3kBN
         KOSnch8S7tUnrKtNDyTwdXfY6UJBBXAt5ETz5lHn3ra+uf0DXBo8haktLE28nvRZOAph
         viWJl6OcoNFTHiWVamnECK0Xlghe+gLgJkGapHu2xculfewcVWz4RJtQ9WfJ6quDXGJs
         kjJcNTDIGPvGJqep6hJ/eWciGSdipanq1kkyLqlByyxkmA1Ibgk6ffjjBUj0Bj537KcQ
         K7oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b8j0z3qd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MVVJP7icr1/rZ8aLSlwUq/8m6wz9KU39xWLtzL1adXM=;
        b=jG+WVSGRdGawCibH1HTkUnuL5M/+NfZkpByhK3Sv8r/0A2H4HGu7uWlGzFEAKxY5fp
         kNPC7B+4sPqzLy/X5r2yDuPoZ03a2fttCe1Dh3QiWJC1AVXuukIMcYbEYjHlXzCvgPk9
         52ZucFY5vRY6zaQvn8Tie/rzf9h4Ooj8iuLYe1Ph1irEbzkfNvcY5OgzyTGMbjq/YYhp
         TI2oH/osDPLsmEA+39zM1QbzpWTb9Wcef01oc80YepFOraeA8TzzrD9vvw0p9PJlilUX
         x9rq4cSLKljR7uX+B3lRdF2aWDgNKI2h8dTm0JwqQStnvXvSCExTQwfYjvf75aznoA11
         obnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MVVJP7icr1/rZ8aLSlwUq/8m6wz9KU39xWLtzL1adXM=;
        b=Gb3R+s3Dg46P6hmtJhiPYfFtP8DFXeiDe5vbAHKB2f/ou9NlzA4/QN0eOi+LNAMhTg
         gfei8UQJsgNwSXXmXvEAwPEru4MANLj8enfnvENuRaIxkeIJn11CxBm4nqOqSWqVxo6M
         2+kUHa/v6uVt8JCThfe2dHpIyNlSXwLk6QLzVhZfjJGHkMN8vdAjEesSzbP8g9CBWqtH
         9EsCjKU6WQinEFua2SPReEW3j1gLdbc6c207knYqw7MxLSjrRVTGCrTTP0zewEy4aiW3
         JjzFprenLWj3d8lrJHBgHxl2H7xQbzkBAw07+ClCRv2sVsEmtuTcMuKkdmiDCs6Lk1OA
         cAZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530L8Z91oxIFrXvQrpXHW5lcw2bfGwjYcgOWvzmwODSmykhgXJD7
	6qgpfHEssg6+UaStI1MlYvc=
X-Google-Smtp-Source: ABdhPJwWHkDEABWsyWREVLwaRiSejdJh/34+d+d9U9LppWui4okQdQ2yfRWtXi5pxqr1evdPGAIc7g==
X-Received: by 2002:a02:cbad:: with SMTP id v13mr50954339jap.28.1621142241054;
        Sat, 15 May 2021 22:17:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f59:: with SMTP id u25ls2012836iot.10.gmail; Sat, 15
 May 2021 22:17:20 -0700 (PDT)
X-Received: by 2002:a05:6602:34a:: with SMTP id w10mr23492353iou.208.1621142240612;
        Sat, 15 May 2021 22:17:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621142240; cv=none;
        d=google.com; s=arc-20160816;
        b=obvdc3PXZG7aP6p5LJd0J+3uvGbMBKuXLCGqeGNpgcrTcL71FZGFTVVW6FXDt31wYi
         6j77b98OHTSJsEhx8nvcBFsF72SXFQE+uXuHYZeZJqrOmrFk8EgDs7gobh8PeirAfvuN
         Sl5SnQhLDapXUaGFjJzGJbeMHivnRkJafGU+51tlt5msCZW2GHQUzB1xQzt/d6kIXlZQ
         cYLph/gaZ4aC3ANiuf431hNwwl7WHvjYeBbJC2WKJZPf7cAYCi3sS2QnPdoYEWQCsWYj
         N7aT07FeveWMG24bK20RwA3m5o5JxYoKJd/c2Y5Zqrv80LalyKf4HZJ55VRtD5gsP3v4
         KJmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=65SjhG70OhpeqETZEIHJJGOSiFNnIY+u8jTI1E4NYCI=;
        b=uGG/CpSMTpiAyDGSEsskGjGuXZnp+dSejgKKYEMydOYhKdvf0Aiin+vw40u+Ikyq5U
         PHyVocmJEHm0ZgLkl2vPCnEG8ygtCJqEn95fdH8ckjcS6343dq5TyHSWyVSlGdibN+l7
         y/xGlSuHmwYASP9HM7CXJWtDu6goQOJpNuh6p/HJTalocmU3unpgNBo3lNaU9y7xKwhm
         G52m6SxvUVwl0tgNvPPEc5GmeyKEjaWkAjoJesoNu7d+Z1YeGU6V21RlHCXbUyKHGIKP
         RR3Mb2UTwNUFvLZKERXhK9u94h5bDCtWESFcfTCGbXDnnAsNLdpMXo//PF1Cf8gy6vNZ
         RSTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b8j0z3qd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z2si924620ilo.2.2021.05.15.22.17.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 May 2021 22:17:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 198C860FE8;
	Sun, 16 May 2021 05:17:17 +0000 (UTC)
Date: Sat, 15 May 2021 22:17:14 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
Message-ID: <YKCq2pfZI3TKSm0E@archlinux-ax161>
References: <20210514140015.2944744-1-arnd@kernel.org>
 <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
 <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
 <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1>
 <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
 <YJ8BS9fs5qrtQIzg@elver.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YJ8BS9fs5qrtQIzg@elver.google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=b8j0z3qd;       spf=pass
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

Hi Marco,

On Sat, May 15, 2021 at 01:01:31AM +0200, Marco Elver wrote:
> FWIW, this prompted me to see if I can convince the compiler to complain
> in all configs. The below is what I came up with and will send once the
> fix here has landed. Need to check a few other config+arch combinations
> (allyesconfig with gcc on x86_64 is good).
> 
> Thanks,
> -- Marco
> 
> ------ >8 ------
> 
> >From 96c1c4e9902e96485268909d5ea8f91b9595e187 Mon Sep 17 00:00:00 2001
> From: Marco Elver <elver@google.com>
> Date: Fri, 14 May 2021 21:08:50 +0200
> Subject: [PATCH] init: verify that function is initcall_t at compile-time
> 
> In the spirit of making it hard to misuse an interface, add a
> compile-time assertion in the CONFIG_HAVE_ARCH_PREL32_RELOCATIONS case
> to verify the initcall function matches initcall_t, because the inline
> asm bypasses any type-checking the compiler would otherwise do. This
> will help developers catch incorrect API use in all configurations.
> 
> A recent example of this is:
> https://lkml.kernel.org/r/20210514140015.2944744-1-arnd@kernel.org
> 
> Signed-off-by: Marco Elver <elver@google.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Joe Perches <joe@perches.com>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: Miguel Ojeda <ojeda@kernel.org>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: "Paul E. McKenney" <paulmck@kernel.org>

Hi Marco,

I verified that I see an error without Arnd's patch with all supported
KCSAN compilers when I apply this patch.

clang-11: https://builds.tuxbuild.com/1sYcyUZoCS7hFS3qZMZsJgsA5bp/build.log
clang-12: https://builds.tuxbuild.com/1sYcyRDtvvkaQQbGX435X8FUb6o/build.log
clang-13: https://builds.tuxbuild.com/1sYcyPubVREo7Dl05zCKRRNh6RB/build.log

gcc-11 had to be done locally as TuxSuite appears not to support gcc-11
so no nifty link:

In file included from /home/nathan/cbl/src/korg-linux/include/asm-generic/atomic-instrumented.h:20,
                 from /home/nathan/cbl/src/korg-linux/include/linux/atomic.h:82,
                 from /home/nathan/cbl/src/korg-linux/kernel/kcsan/debugfs.c:10:
/home/nathan/cbl/src/korg-linux/include/linux/build_bug.h:78:41: error: static assertion failed: "__same_type(initcall_t, &kcsan_debugfs_init)"
   78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
      |                                         ^~~~~~~~~~~~~~
/home/nathan/cbl/src/korg-linux/include/linux/build_bug.h:77:34: note: in expansion of macro '__static_assert'
   77 | #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
      |                                  ^~~~~~~~~~~~~~~
/home/nathan/cbl/src/korg-linux/include/linux/init.h:246:9: note: in expansion of macro 'static_assert'
  246 |         static_assert(__same_type(initcall_t, &fn));
      |         ^~~~~~~~~~~~~
/home/nathan/cbl/src/korg-linux/include/linux/init.h:254:9: note: in expansion of macro '____define_initcall'
  254 |         ____define_initcall(fn,                                 \
      |         ^~~~~~~~~~~~~~~~~~~
/home/nathan/cbl/src/korg-linux/include/linux/init.h:260:9: note: in expansion of macro '__unique_initcall'
  260 |         __unique_initcall(fn, id, __sec, __initcall_id(fn))
      |         ^~~~~~~~~~~~~~~~~
/home/nathan/cbl/src/korg-linux/include/linux/init.h:262:35: note: in expansion of macro '___define_initcall'
  262 | #define __define_initcall(fn, id) ___define_initcall(fn, id, .initcall##id)
      |                                   ^~~~~~~~~~~~~~~~~~
/home/nathan/cbl/src/korg-linux/include/linux/init.h:293:41: note: in expansion of macro '__define_initcall'
  293 | #define late_initcall(fn)               __define_initcall(fn, 7)
      |                                         ^~~~~~~~~~~~~~~~~
/home/nathan/cbl/src/korg-linux/kernel/kcsan/debugfs.c:274:1: note: in expansion of macro 'late_initcall'
  274 | late_initcall(kcsan_debugfs_init);
      | ^~~~~~~~~~~~~
make[3]: *** [/home/nathan/cbl/src/korg-linux/scripts/Makefile.build:273: kernel/kcsan/debugfs.o] Error 1

I did a series of builds against next-20210514 with gcc 8 through 10 and
clang 11 through 13 targeting arm, arm64, i386, powerpc, s390, and
x86_64 defconfig and allmodconfig with no errors with this patch on top
of Arnd's. Repo and TuxSuite configuration below in case anyone cares :)

https://git.kernel.org/pub/scm/linux/kernel/git/nathan/linux.git/log/?h=tuxsuite/initcall-static-assert
https://gist.github.com/nathanchance/eb71e1c2287561a0de79ef28c3c521384

When you formally send it, please feel free to add:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

Cheers,
Nathan

> ---
>  include/linux/init.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/init.h b/include/linux/init.h
> index 045ad1650ed1..d82b4b2e1d25 100644
> --- a/include/linux/init.h
> +++ b/include/linux/init.h
> @@ -242,7 +242,8 @@ extern bool initcall_debug;
>  	asm(".section	\"" __sec "\", \"a\"		\n"	\
>  	    __stringify(__name) ":			\n"	\
>  	    ".long	" __stringify(__stub) " - .	\n"	\
> -	    ".previous					\n");
> +	    ".previous					\n");	\
> +	static_assert(__same_type(initcall_t, &fn));
>  #else
>  #define ____define_initcall(fn, __unused, __name, __sec)	\
>  	static initcall_t __name __used 			\
> -- 
> 2.31.1.751.gd2f1c929bd-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKCq2pfZI3TKSm0E%40archlinux-ax161.
