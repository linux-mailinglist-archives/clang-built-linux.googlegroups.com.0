Return-Path: <clang-built-linux+bncBDX4HWEMTEBRB6W3473QKGQELB3M5ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 011C520CED7
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 15:34:51 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id m4sf9997808pll.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 06:34:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593437690; cv=pass;
        d=google.com; s=arc-20160816;
        b=NwyVEZIHa/Ewx44mCM9CgG7FX9vJtMJBjmWitP3LzaMPj23BkWCPQtzdRCdMYusYbl
         c8OIjhUXaSiFkbka7zxBOFgLR8CPJkbidBJ4aOT5XvJe83aVYNxhcrrCmr5chf7YwW7l
         nb78qqCLDjDwfr/hajLAV0eB5HjHGoWTfyb0m3oAxQbPavvINxpgmlsZ65XcSC7oIQmb
         akalSNyi3Tq3YfPTRjDBRkvzKBaGNmF9f5lDyGZrENRpVIk1W/RCnWJEwtG3x8XfG3qC
         F4Sh39ZCROb01zCv8ruzmOgnczAGYR0ugwviThs1fYt6O72ysVODEo3Mr5D2V7f2Govq
         f1Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y0n4AAAK+5mtpI/GccMwouR45Ztk9C5hfK08Sekiy+I=;
        b=b1FXVWUAkaSukw2nYcevHw0rcE5c5bZdF4LJ+8fgyFqTs9OLQgvdHqVJFo0MNHVUR9
         m4ot+yEI+aSjKq/Qdd7dZFpPc2SeGSE/64DBqPp5OwL6huD0pjuQ56j1plO59PZMlpx5
         ferSQ2pwv/TlBCrr4m7pzNTmlug2aZFET6HYVEqqhFxjL25PuoInpo+io5XBdAlgU/vN
         7OLnRRFZeDdVpGodAQMUDSalqeiI2H2Z1MF6GS8a+xot9LqMj40PGyTBK5aVwzNpj3Qf
         hWFAl7E7bdXPOQzO/oU6x2PRIpD/601gCLFGCUS3PO9waKIY/+5uBVPX5ki+edV4Q8Qs
         r9YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uoCEwiDC;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y0n4AAAK+5mtpI/GccMwouR45Ztk9C5hfK08Sekiy+I=;
        b=EYcmoXsPfwwSd8oeywQ/S6VidiIgdjwkQbJqSTHs0VYZIlq2dWs9JcThbmKk7+50cA
         V2t8rOQctxomRZcS9O7NPVvGCz0gH+8gaEFnwztJxOuhYB2grKFibgj3MrqR0QrzX0LQ
         PGn29AlozwwIXZ07KD4pA20Cex0MNNp+qKihnOA6LLGj19WDMd2D2zrmfSugaesIHMrd
         hU474oTojCXqJtIT8zicoOKMUOpcLfkV9hnPYaALloE+YKdnaOOsProis1LB2AshPA9k
         +RrgTTlG3od2ATJW/w6OW/htmpinu9iBWLNtDg27ZDZHbfeeU5Akd0kxUseRiGAkfPHH
         GW+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y0n4AAAK+5mtpI/GccMwouR45Ztk9C5hfK08Sekiy+I=;
        b=X4rmHTkI5tZhkFqwyMIth7MI83Gg5ObYl8L42bk3p2pqoBx8t7Rc8fVeCIYPf8Oduv
         vPR7iVAam+fjlb4YMpXnj9TjIeVGiCT7HBfLW5zaII8ereZmiPEWOp+DHL1D6I/mDW/a
         0d2pBUMx3Q5R9k+8Cnn+qTIa1nz/L+B+3fkXHGsnEIAE26hzBY6/c1dlJuZCxPFtscNB
         KJfDD/O3dOWt1aXHBi6/5tlst0Yr9+M1PpQPISbqpgccT9RCi3W7qDJt30cwmRZEKicR
         eLl0r/Aw+2qf/U1nFHsmo+03MORbWw7z1ME9/lBltIB/AsddeX73ejf1/SZxqgGRN4y+
         IehQ==
X-Gm-Message-State: AOAM530QsWR/uQK0HQ9QN4FHfluUWi+I0xVBkOo6X1pCuVp1/+ybRkcg
	Q1TpS283PkwPru6rC//8rU4=
X-Google-Smtp-Source: ABdhPJyr0yWhQZW3zawhIvzErpPCK4Oh2tkrVzKWnqnpbxFEnXnX9gZAbRef33mZF1xVuUNTCdVaJw==
X-Received: by 2002:a63:545:: with SMTP id 66mr10972402pgf.120.1593437690405;
        Mon, 29 Jun 2020 06:34:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7686:: with SMTP id m6ls6303406pll.1.gmail; Mon, 29
 Jun 2020 06:34:50 -0700 (PDT)
X-Received: by 2002:a17:90a:1d06:: with SMTP id c6mr1171494pjd.194.1593437690099;
        Mon, 29 Jun 2020 06:34:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593437690; cv=none;
        d=google.com; s=arc-20160816;
        b=eXwkBCq8I5QEOSUuupfWrlxXwUdCQzZUBy8lvGxjo4bxvCo+cu7tbTfvlcYOPWF0L5
         GJN0HI50TaestZM3+jkW25wIL1wPCpHBcYrREA3K8er0UqSXOtY6GUHdsIYKXUAxl/kj
         tdY7FGNnV+bsJZTE3k3eFSOYEcw2si6I3Knd0CHnY5ZD6ooP1tCrVIlIViw8WeNMrvcA
         zihSCUCs8oDCIdrlZ5VoNK7hB8zqybc3pFsMbFP11DsEKzMRJhti9v47SzgxrgPk6AQb
         i/WRqk8ACgK+cTdhAyingjNzJyF2DjjX30oZ7q7q964w0w0IAoHPspfFfFyclJxRUyPY
         7OSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4UqCNZ+OTg1lzw/q2Kz2sA9G3h4mbPe/xzzDfR/Wl6o=;
        b=as7pzlD1dAcmYfy7nn06e/YTs6xvZbqe7j5UqTHqhu0mPd7i9CWCl3z88k/P9HBU3k
         AYMMH0bFHuKx6Edbxf0yJTK8fRjm6w7BdGp44V/kva3ZeuJL/JUVFxdD75nPlctjssTn
         X33V4OZXfzzEXT3rlZt4COzlzTpVRN4U5RlOclomYbNUutXNZcui6mIu9WtmyoJoTYly
         XSCZ3Yss+JJLEORGUdM+J5U+rn0UZHkHnW2SMZESPDFRotAl1DVd0d/l2+5On3SXJi4I
         6B6Fj7ajtGVTJeuRWD0N/bACsV3fO8ysWCpqOZyGI/koOjP3qtm0vzFP+NKPsfmHfj+F
         kF5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uoCEwiDC;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id cp21si329pjb.3.2020.06.29.06.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 06:34:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id o22so2978132pjw.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 06:34:50 -0700 (PDT)
X-Received: by 2002:a17:902:6ac1:: with SMTP id i1mr14053992plt.147.1593437689499;
 Mon, 29 Jun 2020 06:34:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200629104157.3242503-1-elver@google.com>
In-Reply-To: <20200629104157.3242503-1-elver@google.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 15:34:38 +0200
Message-ID: <CAAeHK+wbaHoeEqaKCNgPhFFWQZ0Ck2BYF9QiCcOuyB9JGDmhsw@mail.gmail.com>
Subject: Re: [PATCH 1/2] kasan: Improve and simplify Kconfig.kasan
To: Marco Elver <elver@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Walter Wu <walter-zh.wu@mediatek.com>, 
	Arnd Bergmann <arnd@arndb.de>, Daniel Axtens <dja@axtens.net>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uoCEwiDC;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::1042
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

On Mon, Jun 29, 2020 at 12:42 PM Marco Elver <elver@google.com> wrote:
>
> Turn 'KASAN' into a menuconfig, to avoid cluttering its parent menu with
> the suboptions if enabled. Use 'if KASAN ... endif' instead of having
> to 'depend on KASAN' for each entry.
>
> Signed-off-by: Marco Elver <elver@google.com>
> ---
>  lib/Kconfig.kasan | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 34b84bcbd3d9..89053defc0d9 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -18,7 +18,7 @@ config CC_HAS_KASAN_SW_TAGS
>  config CC_HAS_WORKING_NOSANITIZE_ADDRESS
>         def_bool !CC_IS_GCC || GCC_VERSION >= 80300
>
> -config KASAN
> +menuconfig KASAN
>         bool "KASAN: runtime memory debugger"
>         depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC) || \
>                    (HAVE_ARCH_KASAN_SW_TAGS && CC_HAS_KASAN_SW_TAGS)
> @@ -29,9 +29,10 @@ config KASAN
>           designed to find out-of-bounds accesses and use-after-free bugs.
>           See Documentation/dev-tools/kasan.rst for details.
>
> +if KASAN
> +
>  choice
>         prompt "KASAN mode"
> -       depends on KASAN
>         default KASAN_GENERIC
>         help
>           KASAN has two modes: generic KASAN (similar to userspace ASan,
> @@ -88,7 +89,6 @@ endchoice
>
>  choice
>         prompt "Instrumentation type"
> -       depends on KASAN
>         default KASAN_OUTLINE
>
>  config KASAN_OUTLINE
> @@ -113,7 +113,6 @@ endchoice
>
>  config KASAN_STACK_ENABLE
>         bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
> -       depends on KASAN
>         help
>           The LLVM stack address sanitizer has a know problem that
>           causes excessive stack usage in a lot of functions, see
> @@ -134,7 +133,7 @@ config KASAN_STACK
>
>  config KASAN_S390_4_LEVEL_PAGING
>         bool "KASan: use 4-level paging"
> -       depends on KASAN && S390
> +       depends on S390
>         help
>           Compiling the kernel with KASan disables automatic 3-level vs
>           4-level paging selection. 3-level paging is used by default (up
> @@ -151,7 +150,7 @@ config KASAN_SW_TAGS_IDENTIFY
>
>  config KASAN_VMALLOC
>         bool "Back mappings in vmalloc space with real shadow memory"
> -       depends on KASAN && HAVE_ARCH_KASAN_VMALLOC
> +       depends on HAVE_ARCH_KASAN_VMALLOC
>         help
>           By default, the shadow region for vmalloc space is the read-only
>           zero page. This means that KASAN cannot detect errors involving
> @@ -164,8 +163,10 @@ config KASAN_VMALLOC
>
>  config TEST_KASAN
>         tristate "Module for testing KASAN for bug detection"
> -       depends on m && KASAN
> +       depends on m
>         help
>           This is a test module doing various nasty things like
>           out of bounds accesses, use after free. It is useful for testing
>           kernel debugging features like KASAN.
> +
> +endif # KASAN
> --
> 2.27.0.212.ge8ba1cc988-goog
>

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2BwbaHoeEqaKCNgPhFFWQZ0Ck2BYF9QiCcOuyB9JGDmhsw%40mail.gmail.com.
