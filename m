Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBNGO333AKGQETLSLQZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id A54F51ED0F4
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 15:35:49 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id b131sf2419995pga.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 06:35:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591191348; cv=pass;
        d=google.com; s=arc-20160816;
        b=G1zxTNidn41pNw6Y57Eot4AMeayG04NJL++9Bie915zMBSliHipF12tHBz/YPKUxBH
         PdqYgPtVChLvaR4aAVFbJxEvjK6AXiR9Bq3cwen0i0y2gj4u/PpcJaNPyrd5+m89Tb1H
         M3k0XlCeAuDFLcvOdgBskBMjOogjPyIYq3arAVmEfUYaiVNLcmD1/bwA2t0hxzXzJJb6
         3rehGE1LMRCAodlCh9WiJeRb2M45FMWyOmIqHAwaYsSg278FI7zhhhz/6gOORIotNs8u
         kqjehTQUjzBHbt+sai3Z9lPVNqF11X9IdZmWujrIyZRMON1/G4+iMyEOoqRLFZVqgxal
         UmMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AA+7GNb1OeXgd+VeM6M5jTKVbfvQIPhHBO6tQ3iOF4Q=;
        b=j4V1f9BjRmupxMfye7/qSQxcNCXeB3tM99dr5rLRUfZcuI0HfyPctEPZY3biW8wvSB
         DW6WAiAG2bS8tdC5d45CvvkVyikiTeBvq2tFVgVInt9E+nXRboeMwCNLFfHuk30MqabG
         viXAFmzFxUZCY0FzS/B+JzQqY1Xh5tOu6zlOdyXedS1BYClRxfljeJab8SXnbNoPSyIL
         nlc/aD/MmKiIKr+CriBFjQTsxWY5MpzaN+jIi6h8/P6GCd64XhhreTTE5Xdei3hvh5Si
         Cv4hgyzFMPAAh5bwwlVT36gE1zvITCItYD5H1Uqiz/AqD3vx38Rjkx1VaIWZ3VNXKkrM
         Wflg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ECLofNCH;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AA+7GNb1OeXgd+VeM6M5jTKVbfvQIPhHBO6tQ3iOF4Q=;
        b=BNtsMuz0x0XV4xt2EY7VPkgqA9Caf3kTW5vUdXfKwn/Xhd71gUtn/qVbNob6wAd/9s
         xmncpeY65Wi+9wcih9qndHZdIVAYjEainYJsjxHoOzuLMrFhsTqr4bYVFywAw5clECIB
         MHTPhEr9GEmxyzQOxAdlJhjztynDqNrlDxFbv+ln0MqCJQTCIbm5ebmZY3KUaAYOFLJK
         clLbe3r3se8mSUTdhuEevE8oMZY0NhkF9FvywVc8S/EV2u/ee+OFM5/o+1k8l9EP+lMM
         sACyFp3WuNxr64ooQP6/kTgqSCcBLObhYGhaCwApcx+s+4N9YQhxci7EnPk6ecl/kFvp
         Axew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AA+7GNb1OeXgd+VeM6M5jTKVbfvQIPhHBO6tQ3iOF4Q=;
        b=AyyCaFpz2icyfI2mh/dMGb6zlW0FT32oDsq28My9rxTU+sYgk+XlVzjeXdAI08xobZ
         JNvTJOWKFL8rIRq9C+f7jWe2zggSgrIVxVfjPcbZ8ayfNcj61+yzTGxX+T2maApOsVJU
         N1HEnvGGUrc8H3tKdXcR2az7YmddnMMAISC3Lrpu/a6GqXlf8Qa2OKxcW/3kSuv8+euC
         p3H+57ztfMBQ861Dl6sp3+vUuONpJw9hBTcHHI7nhc4UsmzPUkRsFdtT9uMQPVjRKYz1
         JedDochqDyqKTRxmydblK0D1wD7mncDkrSKzU15yeMs9ag+sTvh28lq5u6okbPaEdEpm
         Mb4Q==
X-Gm-Message-State: AOAM533Uyst3eGDo/SgXmQFj+heuYj1MJ2yxdNgr4wzZVKqKBmGAj5U0
	6wiqWHznKGM0eb2XYwaMbLg=
X-Google-Smtp-Source: ABdhPJw9DSVJltvlCpJitr6dPEayPlUcZOGIpI9VmKVx97nX3AVEawJ6361xDTAW3GaATENoeLcvNg==
X-Received: by 2002:a17:90a:d244:: with SMTP id o4mr5902783pjw.186.1591191348135;
        Wed, 03 Jun 2020 06:35:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b82:: with SMTP id w2ls879690pll.1.gmail; Wed, 03
 Jun 2020 06:35:47 -0700 (PDT)
X-Received: by 2002:a17:902:a502:: with SMTP id s2mr30033466plq.267.1591191347692;
        Wed, 03 Jun 2020 06:35:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591191347; cv=none;
        d=google.com; s=arc-20160816;
        b=w1GID0KsqPqFTvpQrP3Rq9JGeBhkwOo+KFc8v+UzCJLAbqoWSTk4ZlOkR67KzcSVGB
         eIpWzyNKnjyIBYyRR0zU/t0MSoxXvVPXkB49vYMyXOFjGrJ4jh5f4sll65YtT6DAoQo/
         wl+5qtfF0EQftaKiT+6V1+YMmKcUpPS6wuNSHbUtzxzPT/JnlR1Bl9+284gUMdIvjxUt
         VLt99btitDEBfZk3a76oLjiT9BupvkRZQw1z3lnMqEtC0ompoMHoWvVJ94cAF4intxpY
         VgFFlv5BlCxCMMTx/RIPUX04hj3DeeU9IE8MZdBGI9gJWLRbIlqogxDFvhebyQDBjEeR
         DR1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pzgEpVCSH7j0u78t2npqiORwBbG9mOLC23VmgaWMcFo=;
        b=pEomvV31TfAbfLo3zPKB4sHogWZ6QRne6E2bIjaAG5wIYC3uTYw48NrriEeh3Yfw7l
         HWlbtTbT6KRHorr0TqThaewEjRYKuAwDEJbrc91UHJQogBSy+bWDFEY7teqD+VAfiS0P
         xRY5Ty2hKDCyeB5T3X9FIv770XSb+TVYP1SFhRYm9cXJAhYZyMlHSdL5zwJeVecVWsDp
         dDuGPhP0ZFYclrJNKUKiH5eFFIrWHpgYHZxbZlYNrEIpPh3hmeQRYnOp4SfjknStxyLk
         HU0LhvAB3PblzGCkBqpa0tVSCynCTiWTL+WvZEBnQ+Ci75qwsRB3NFYBcMQLmaEBQhM+
         /rRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ECLofNCH;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m204si142284pfd.1.2020.06.03.06.35.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 06:35:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id n23so1739774pgb.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 06:35:47 -0700 (PDT)
X-Received: by 2002:a17:90b:1981:: with SMTP id mv1mr5878381pjb.41.1591191347177;
 Wed, 03 Jun 2020 06:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <20200602184409.22142-2-elver@google.com>
In-Reply-To: <20200602184409.22142-2-elver@google.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Jun 2020 15:35:36 +0200
Message-ID: <CAAeHK+wZegLFPms5_TkBgkoQMeT14UDkY63YoJKmkMaMYnUWQg@mail.gmail.com>
Subject: Re: [PATCH -tip 2/2] compiler_types.h: Add __no_sanitize_{address,undefined}
 to noinstr
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ECLofNCH;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::543
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
> Adds the portable definitions for __no_sanitize_address, and
> __no_sanitize_undefined, and subsequently changes noinstr to use the
> attributes to disable instrumentation via KASAN or UBSAN.
>
> Link: https://lore.kernel.org/lkml/000000000000d2474c05a6c938fe@google.com/
> Reported-by: syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
> Signed-off-by: Marco Elver <elver@google.com>

Acked-by:  Andrey Konovalov <andreyknvl@google.com>

> ---
>
> Note: __no_sanitize_coverage (for KCOV) isn't possible right now,
> because neither GCC nor Clang support such an attribute. This means
> going and changing the compilers again (for Clang it's fine, for GCC,
> it'll take a while).
>
> However, it looks like that KCOV_INSTRUMENT := n is currently in all the
> right places. Short-term, this should be reasonable.
> ---
>  include/linux/compiler-clang.h | 8 ++++++++
>  include/linux/compiler-gcc.h   | 6 ++++++
>  include/linux/compiler_types.h | 3 ++-
>  3 files changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 2cb42d8bdedc..c0e4b193b311 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -33,6 +33,14 @@
>  #define __no_sanitize_thread
>  #endif
>
> +#if __has_feature(undefined_behavior_sanitizer)
> +/* GCC does not have __SANITIZE_UNDEFINED__ */
> +#define __no_sanitize_undefined \
> +               __attribute__((no_sanitize("undefined")))
> +#else
> +#define __no_sanitize_undefined
> +#endif
> +
>  /*
>   * Not all versions of clang implement the the type-generic versions
>   * of the builtin overflow checkers. Fortunately, clang implements
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 7dd4e0349ef3..1c74464c80c6 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -150,6 +150,12 @@
>  #define __no_sanitize_thread
>  #endif
>
> +#if __has_attribute(__no_sanitize_undefined__)
> +#define __no_sanitize_undefined __attribute__((no_sanitize_undefined))
> +#else
> +#define __no_sanitize_undefined
> +#endif
> +
>  #if GCC_VERSION >= 50100
>  #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
>  #endif
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 02becd21d456..89b8c1ae18a1 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -198,7 +198,8 @@ struct ftrace_likely_data {
>
>  /* Section for code which can't be instrumented at all */
>  #define noinstr                                                                \
> -       noinline notrace __attribute((__section__(".noinstr.text"))) __no_kcsan
> +       noinline notrace __attribute((__section__(".noinstr.text")))    \
> +       __no_kcsan __no_sanitize_address __no_sanitize_undefined
>
>  #endif /* __KERNEL__ */
>
> --
> 2.27.0.rc2.251.g90737beb825-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2BwZegLFPms5_TkBgkoQMeT14UDkY63YoJKmkMaMYnUWQg%40mail.gmail.com.
