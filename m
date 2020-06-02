Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBK6A3L3AKGQESIPFLPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FFA1EC22C
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 20:53:33 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x3sf8566395pgl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 11:53:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591124012; cv=pass;
        d=google.com; s=arc-20160816;
        b=kGLR3c+A5Z8R4mScKWIbemePGdXcvSMidgEV6oApobH/L+goCf2ob0nZmd1xKaN86D
         53mOcR+Z3pm5F7CqYS9nuB0ytfiULpvYfnV/WgY9KdGom41xk2gwXyiGSvHPYmPKpDmq
         lpWyEeF2l+zg7qkmK9JFpNEV8gTHKTOVbaxK9nKUcApj0Gqww+CkPtc6IcbFwsutiiT/
         3UemEKqFnon8gn/Tc6rY8hB1jgrQhVbtzaWHXerPAZFMqA96yLkqzxSYCABsuMT3az1f
         iRggSmZaNdjv00/uXSaLZOmThU5/Tjt+rcc/shRSwYgvv7JvrDTN+atUxQyIqwGctA6q
         qOfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yY5ogQu9cIiJRsfuyZV+4eMy2MTc6dV5GdoBm95wK4I=;
        b=LCDNDri1UCfK5ZqCED1oURs+ijvJeUJog/hO3ZWFmtDDMuZgu6JXJktbVxTS/JDhsv
         +zLTCnPYaZtsWtsH6qjiUz17AbtGSDLjobmVLEkhKvLBprUE/CV4TKPWNiM5fo7RRo0k
         NCFDeEEcKPikvIUMidyujNJ6fNrbKtocO/1NwgbxWoo7OpBj23ZyvrS8sRmeHgk83G6m
         Ov1NyESeQQfL63oRU46dt2C66u8cYDk3xBaqeKOZSW0SneCjDjIYVGdUwU0t1wht1aaD
         Z8d6bBmXA7lkC1/w0G7NuNTUujP3SE16bn/Hz6zquf1o12YLwXAxLYkhmxOAReUa7ii4
         VoBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iY81CrGf;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yY5ogQu9cIiJRsfuyZV+4eMy2MTc6dV5GdoBm95wK4I=;
        b=hwQ6aLUyD50daLkZ7Ntfxtx1AzQaOQBQs6ph3YdL25KZXOk/7JDgjxx9f4wxt6eieG
         Z/19mRwTsi3czY/yrWQej5UUbs6n6EBMtlcrvqQ2UunLczBOOcRMf5EcsKijgLPYTYmR
         J39EI+rftcboMiywhvhLwUamecVktX3e98xQhIOwMmijdJWJkDo8iOKx91lEvy2Dg0xO
         FUAfD81ynCaGKO5TXfFBrUhkSrFki7y9djuuFZWOH5ASYkoU4ZxJP25qzadL26zat2w9
         6mxp/FKioq1Skoy2lTy2teF8H5wLTw+LR+GNnf+9y3PJqA8ROAifh9Va4iGHmW8Cy0qa
         NXIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yY5ogQu9cIiJRsfuyZV+4eMy2MTc6dV5GdoBm95wK4I=;
        b=GRIHdgDUd2yaCJhsnGBuS6BYDLIW17SvvAZfPoNtqA3c7NfSyqXS5jF5tNdbgM6FQG
         ZaVauGWbbjVU06rlcoMhBEU9VFiGa/XCLcGrgn6N5Lmj8EfPGYKoVYfdbvAjilseaMrY
         8qECMbK06/fvRUGiryc7M2Avlrh5ftpFdxjs8vEEDadLcp2om7HBbtAbQwjZH+hDrDcj
         pZHpctztqjuXMdX+VFvMNNqRjmr7AeqcL2Xqorc24IOM4e5o/FhqOQ5x2BJ0MPiUigLy
         NzeAiZCRhSnlwXL622vQkLSdE2BwU8k0YjKDJpq0DHJ/uaY25dyNQ6r9ph6kwxeR00ey
         yjsQ==
X-Gm-Message-State: AOAM531YZfZNoZUeCEbYw+FfnCb/XtOzi08X7CTWeFe/ESLdj10YB8p1
	TWjOZNCmgKmLTdsX9MqNYsI=
X-Google-Smtp-Source: ABdhPJyXTQuE31V31XY9imq1Fyg4B+fjMCiLEv+ZmW5Dpu9/PKXRu6Gm/ZrXj+iolsQO2oj75AzJaA==
X-Received: by 2002:a63:7016:: with SMTP id l22mr24956297pgc.284.1591124011913;
        Tue, 02 Jun 2020 11:53:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab89:: with SMTP id f9ls6387722plr.3.gmail; Tue, 02
 Jun 2020 11:53:31 -0700 (PDT)
X-Received: by 2002:a17:90a:f8e:: with SMTP id 14mr665566pjz.172.1591124011476;
        Tue, 02 Jun 2020 11:53:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591124011; cv=none;
        d=google.com; s=arc-20160816;
        b=JMQOjutnQCKic2v6WuEUSOMX17QcnQiKr9f1UgolLO0irY6g2B/bHAYJqVYZR/zA2d
         2JhK7F/Y9LYmBO5kvKVCj1ywGPyqaHvWUGs3oWx5GVvAfu4oJrDk8sTtK1yC8mrLHsCj
         aGuGe3yOGbS2UsqOEQ/nqq2GQPskhFh0PHrTQaQjxboTuyHh+eF3Ek/+U5fAV1KvLzqz
         OOHArOcZ3F5FEbJzmomGZGIWB04Ed1IYQzgfMS+Z6Whf3ykIKawrJTN9YrthRFE3yCQi
         oF2Cdxzrfn6+rUu1l6QN/CIAaIQTOB3pSex/xVMDUkjNmfT1xXyDS+b+V+LZTIS4AjxF
         Axtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lcbY1VrV57GqPoFo7ptDB2znFdFUv0Mj9KOWNzaUW2E=;
        b=Te6Rk5g5yc0nvSRE8cmsa7wBhBCZPImChRAgN4rRX0pHdMkX2tgcWcpAiOKCPEDHUg
         ilh7GpQAo6X86YzgXAwNG/ZiedWbrhsDwT8RcCT0vsvFXFsx9bwMMIXuof76B2dkZvzq
         V/4QK56PX0byap0CFxw9n+wO7ARXjDIv8fOvK32AXPistkvU+MQhn2jxoAyLAsOdsjZi
         V7l4qVw9X8lyfUBjlDSpqQ33Tr7I1YLGSJP5Q3BfAFruZAiylyvZyBkMfV0fsR/5I2SE
         DUWAuwziEndYRxPLBr50aMS0gEc/uWq3kpN6h9JY57k1jieyoaIYRk1C2Yn0B+HUaeUA
         1EUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iY81CrGf;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id i17si360543pjv.1.2020.06.02.11.53.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 11:53:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id n9so1757133plk.1
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 11:53:31 -0700 (PDT)
X-Received: by 2002:a17:90a:2a8e:: with SMTP id j14mr627704pjd.136.1591124010835;
 Tue, 02 Jun 2020 11:53:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com>
In-Reply-To: <20200602184409.22142-1-elver@google.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 20:53:19 +0200
Message-ID: <CAAeHK+wh-T4aGDeQM5Z9tTgZM+Y4xkOavjT7QuR+FHQkY-CHuw@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=iY81CrGf;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::641
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

Could you also update KASAN docs to mention this requirement? As a
separate patch or in v2, up to you.

>
> For KCSAN this is a non-functional change, however, we should add it in
> case this variable changes in future.
>
> Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Marco Elver <elver@google.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2Bwh-T4aGDeQM5Z9tTgZM%2BY4xkOavjT7QuR%2BFHQkY-CHuw%40mail.gmail.com.
