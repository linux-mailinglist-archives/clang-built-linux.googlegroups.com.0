Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBFOO333AKGQE7VOMPGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id EA61A1ED0EF
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 15:35:18 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id b22sf2024933pfi.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 06:35:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591191317; cv=pass;
        d=google.com; s=arc-20160816;
        b=S2sL4vG4rNoMiJdiF5MZzbKZeu/2tePs+5Zqr9RsWePAAWq2H+BXgJb6BWb9aIjzSw
         K6rh8q0AYiHL6N24xsviTwwH8RO7ZPqTbhx3ZoIUhuuYdKVNkifEApHpz3FY8epl7m7W
         /nQMmy4/QdjBeLCilXbROXGdIjoxI11tSDZs4efN2WSoGSQcfKbySvxKkAZk9XY3W4Ug
         c+2Kcdb5gbW8b7kclRBYGt5Bmn7rTJikg0ndiyQunCKztNKYTl4abWTNraOiboQ0lkzb
         JrigFTuzC7uqrp1GfOY4ZaHTaOis2hQaSbPCiEoZ2vUBI9xR01Vr/Z05uA6Bp6qNveS4
         AIOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tTnmDum0yoBWgWw+grvRVgCAJlBgEiFP8doWB0VZ3CQ=;
        b=EMSuRWtpcmoFWIhsCkNK85+IyxL06Cu7LI5wXdhScU1pRWdz/JcyY7qvKn5M3fM2d2
         jEZiTPivtD4wBS8ilMPdowdtBUkwmvOJZmwnB+3hLkWmSKD7xcjyYe95PvdecNYpj1Jb
         Yxfl8EPhK5tpD2fJBQip4nBcktG5jlHM0s7LSgQRbuJtBip1TN+IEKjpHpqK3Bh+yNaV
         1BVb5BTWfALgmfOMsgySoF4F81LLuHKAby+81UKpm2RtYmaD+R1vg2xoCOY7DtGswr9O
         ABBEc78RnE6UjMMJvI1jJ9PVPqBuiWeHSQru6BxbCuVuSGVL2W27dOelSyad0nq4GWkR
         jSBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dHJRR/6w";
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tTnmDum0yoBWgWw+grvRVgCAJlBgEiFP8doWB0VZ3CQ=;
        b=e8tW3Po3ZK88vpeafs/Ng7QMVaXVI00Qv6odOFhxI+uhT5x3Ejw8SfD4X7buprpZN4
         sdaPeLEq9/2MGeWXTpK+DvvS/VEwjKIg2h179nuMO+OAygw61PO0Z2tCai3E3+P5ArPx
         jc+CTofPUmShXDDp/lrhMNGTgltmDzNgs4/I966dsPK/touy0cZcup4KQxMM0z/Bvemd
         k2oVkJWRcBxvMuVLDyjode4edTsPLI2hGgPWDojwe7mmVPlwvRnrravW2ImHdZBxVoJ7
         hbeiMPB6OZ4qywI0ZZrivmRtAV3yjbH97zpU3dck7l5cPFkbnIcG6auMOZHfxel01zp7
         Uh2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tTnmDum0yoBWgWw+grvRVgCAJlBgEiFP8doWB0VZ3CQ=;
        b=I8EHBpobayyhd7v+eb9mPy//5NgwE3cnGjU2c/7k2c93lacUpumGc2gKH+YgYYoCSy
         wpzUv0kkRUR5bcr2ystxMcxttstCd+3ID+MYp5PzZVIssgo0Nx/WCYmZ6g6TeBkNwfSa
         PEs6jggwASVDI10NbxbAP6DnyVfkKQGOO8+nV4PYsEDMzyFxTA/ydmTtQBgSMOcOBfkL
         /LHf9Yu+JjvizegwYLNvi47VMURZrFlt/mgYffHdaSlCFRE3pbPlXLadchaChuDX6Ibf
         LFMp3u3Od9U1pZ7IKdw4PvYwLS/FFZ39mJGxWsv0hbI9F4i0No6hhsHkkh1slV/RSA9x
         rrdQ==
X-Gm-Message-State: AOAM5319QPlNtGh588zDpRGSRC8qeQUG2tk1c/Kk+hLmFnpTX9wY+Cf4
	vOXliB7CY9Afvry1FJjaVjg=
X-Google-Smtp-Source: ABdhPJzQC3xpnuuEimexlShR6uuIg9DLwqphj+k13DzFCMY9VCcD4yFXv4ygPIFcj7aDkAZzpTuaJg==
X-Received: by 2002:a17:902:b193:: with SMTP id s19mr9592plr.33.1591191317126;
        Wed, 03 Jun 2020 06:35:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls1610938pjb.0.canary-gmail;
 Wed, 03 Jun 2020 06:35:16 -0700 (PDT)
X-Received: by 2002:a17:90a:3669:: with SMTP id s96mr6035279pjb.149.1591191316734;
        Wed, 03 Jun 2020 06:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591191316; cv=none;
        d=google.com; s=arc-20160816;
        b=TiUkUePDWqP5/WJvrEBhifpE9o3ZyZleO6MgjcIXliR1mQaDTCBQ+xyZtUUa+U6bHb
         sMwmzvNHWKYTVDGFK8u/NxpE3NFG5hBwDqjkGxfvt0NfzV2MMxJLpT2vVXOI61pkpft+
         0cFF4k92bgKK8MEhjUdOu6MDu8ZmDelNIUUYRX9B7TigQ5y/XjTj0tdnHi65zyazWDW/
         hoD5ySGlIMAKLzweeAK2tHD2/jXMwB1yeyGZ6lsGDGoglh/8aE6O2fN2NzY1bJcETfIz
         b/3Dz3PRj5pYZPuR6YpziKqR0UOe/cYQWwxL3YT5bu+5tQGVo9brXD3On7W5nO5If55K
         qsHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ffoWRsiIdmktI0Aa3BFBPpp+Z+t9ruAh+fRHAhTsS0U=;
        b=dZxs/dRePcKRApcFOxUnHTWYEFsoCLyjIdJK2RrNafIU1v5BFqaB/BUWvyCjUBxVaF
         UHnMVtexneRXxhKvvf9etWnUqN2r7Q3/m3WlmR0hxFdu/jNZVgAQeLhf1qIo0V9OqrYD
         ZIKVJ4eqXoXbwhSGsBkkrsG8UZLIeNcjvoNkgEFYyxO33Mndy+JUTB7zWihH+D/6K2WR
         gYWitqQO9X1OXtrtMLMudmJ7Yl1uWVZe/zxYNutaqRdWwcoJpU/87vKnZVW5KwiwF/6Q
         /+p2mK8ud0D5pZN4R9LMEr5BepHEn6qRAmQfvjwfERlXMIzInGLxakM4+bRUtbxEy09d
         Oo+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dHJRR/6w";
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g6si194725pjl.1.2020.06.03.06.35.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 06:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id n23so1738894pgb.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 06:35:16 -0700 (PDT)
X-Received: by 2002:a17:90b:1244:: with SMTP id gx4mr2285007pjb.136.1591191316071;
 Wed, 03 Jun 2020 06:35:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com>
In-Reply-To: <20200602184409.22142-1-elver@google.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Jun 2020 15:35:05 +0200
Message-ID: <CAAeHK+yNmGB6mEQoogGhUh_F1fXFF_baA14G3=4NyYv=oz8Fdw@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dHJRR/6w";       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Tue, Jun 2, 2020 at 8:44 PM Marco Elver <elver@google.com> wrote:
>
> Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> have a compiler that does not fail builds due to no_sanitize functions.
> This does not yet mean they work as intended, but for automated
> build-tests, this is the minimum requirement.
>
> For example, we require that __always_inline functions used from
> no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> fails to build entirely, therefore we make the minimum version GCC 8.
>
> For KCSAN this is a non-functional change, however, we should add it in
> case this variable changes in future.
>
> Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Marco Elver <elver@google.com>

Acked-by:  Andrey Konovalov <andreyknvl@google.com>

> ---
> Apply after:
> https://lkml.kernel.org/r/20200602173103.931412766@infradead.org
> ---
>  init/Kconfig      | 3 +++
>  lib/Kconfig.kasan | 1 +
>  lib/Kconfig.kcsan | 1 +
>  lib/Kconfig.ubsan | 1 +
>  4 files changed, 6 insertions(+)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 0f72eb4ffc87..3e8565bc8376 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -39,6 +39,9 @@ config TOOLS_SUPPORT_RELR
>  config CC_HAS_ASM_INLINE
>         def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
>
> +config CC_HAS_WORKING_NOSANITIZE
> +       def_bool !CC_IS_GCC || GCC_VERSION >= 80000
> +
>  config CONSTRUCTORS
>         bool
>         depends on !UML
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 81f5464ea9e1..15e6c4b26a40 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -20,6 +20,7 @@ config KASAN
>         depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC) || \
>                    (HAVE_ARCH_KASAN_SW_TAGS && CC_HAS_KASAN_SW_TAGS)
>         depends on (SLUB && SYSFS) || (SLAB && !DEBUG_SLAB)
> +       depends on CC_HAS_WORKING_NOSANITIZE
>         help
>           Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
>           designed to find out-of-bounds accesses and use-after-free bugs.
> diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
> index 5ee88e5119c2..2ab4a7f511c9 100644
> --- a/lib/Kconfig.kcsan
> +++ b/lib/Kconfig.kcsan
> @@ -5,6 +5,7 @@ config HAVE_ARCH_KCSAN
>
>  config HAVE_KCSAN_COMPILER
>         def_bool CC_IS_CLANG && $(cc-option,-fsanitize=thread -mllvm -tsan-distinguish-volatile=1)
> +       depends on CC_HAS_WORKING_NOSANITIZE
>         help
>           For the list of compilers that support KCSAN, please see
>           <file:Documentation/dev-tools/kcsan.rst>.
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index a5ba2fd51823..f725d126af7d 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -4,6 +4,7 @@ config ARCH_HAS_UBSAN_SANITIZE_ALL
>
>  menuconfig UBSAN
>         bool "Undefined behaviour sanity checker"
> +       depends on CC_HAS_WORKING_NOSANITIZE
>         help
>           This option enables the Undefined Behaviour sanity checker.
>           Compile-time instrumentation is used to detect various undefined
> --
> 2.27.0.rc2.251.g90737beb825-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2ByNmGB6mEQoogGhUh_F1fXFF_baA14G3%3D4NyYv%3Doz8Fdw%40mail.gmail.com.
