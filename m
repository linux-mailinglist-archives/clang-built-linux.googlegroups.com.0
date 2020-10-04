Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQXN4X5QKGQEMRDXHJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DF828295B
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 09:16:19 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id g13sf3376827ooo.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 00:16:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601795779; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ch6Y2FigEFnoT3YkRMgRxyrigH/sOojVespnSWQhOK487p07hUK62ZiMAjIewKmdCe
         GuqBvMQy0HH6bALV+k1q2fxvpxIMrVF/xEJDMkYvRs2hJ+6AXdR5KFqaouEE2vqWA+vF
         oRbBPwsD/tOeCGcgNDzoxdP2QQAsU2BoDB6LmOgDthWTzV7iqfClZqufm/5QKeaCIaWV
         VFSBhqDFXigpkiK8154ArVxzXGuwoODaaoDiMGV9OaXB2NVO7ILMwAw7mriJYqqvryhV
         Y6Pddd0n1h5dAYIGMnbOGjVlYrzKFHQc7xAnE/CxaHaAMWdwQMR5VoBUGMcL0sXs2f9O
         UHwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=2B+lunu7F0P77afbHOfyyy4Dzj1sriU5cKchpspYrpA=;
        b=Bo/TWGU4vdMOUuGEpyhN6vRF1ztFIa2EsBdmNvoFsUxn2yhOjrox60ioyxsvb6a2uU
         3/x6jZgu1WxDK1Jwu8thg56WP411/Ti1nXUmBI4OIWOLFmvaPre4r5yPe3AasdxFcos8
         RoOK6gPXR30tZ2WEHo0/DDePnqjyOwUZe8PvGOwkiS144dzuruDhajfUBayjfyHbh47a
         qZE4zhNYAe6TRBCgw7ILOceyxaJ+WVfTE1oStB2e7qXp2l5qt4Tt9/6TqqhxLgRkrP7o
         HalD5NMk/ObTojEZlkg0ZbnJZN85qYQqmbn0pFnQ/aMsX3HXQGDDr7NXAmr/E1y++6Ki
         WPFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bwZ7T5i0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2B+lunu7F0P77afbHOfyyy4Dzj1sriU5cKchpspYrpA=;
        b=qnR+xsimSAMQhN9/wu4f6P184/jyfpw/6ck9MPWltq3k/ywx8mFTaCC4ta+NonmC2f
         JTSrGb+7xql5Ir724wWmkEEY5HB+7t92ZUuNgTDVx/jpBum/HkrPy8sFbGfNQmjmaXtf
         TH93Bg7ogQkkPSmCAWz3bJj0rcDxnintPCc6zkq8mEwkv9U3wK8m0e7DbIkLMP50ph8a
         NZezyHmEFJKeLDvlpLelt90j6ftkyFKFFBrI2oJmlp3ESTrPZv8GdMQPr9O6yYK8vrKc
         qNoip4vC1+VIvQO3epnk4lC1WkHGjm0kk6fNqDQO09oo+8nbrg8tP6wKczMFV+D+qyV3
         VQJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2B+lunu7F0P77afbHOfyyy4Dzj1sriU5cKchpspYrpA=;
        b=NwUW1TSnVLIHDGa3EdKmoH8j5nlaWLpIQkvwM0OB1MTlt5v5yNEHU0JEZtFMYjnTgc
         Pe+nn+FeImXZjSzFINlRgsKwgxi0Yz9xq87UiPf3z5TG/ixv/gVNohh61vGXD3/LKArc
         9RGoiv/EX9cJ2iRzOkCggDOVmYx/nb31lEsdjLmN0U5hJaHj1oBMEtxwIfSTeZSBm3YK
         FaPS2/Hcz3hfMm8LiPUWVAmOoDaHQMmzhIVuI7O8LtAP+zUKSc5jBsvqdFVvd/EHbbI4
         uJyDYhnkDRhmMhhAnM9/HLa29DrN8b+VF5hQkNiAZqjKMXt84WSqkH4q9peRCal4fc7C
         9Bww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2B+lunu7F0P77afbHOfyyy4Dzj1sriU5cKchpspYrpA=;
        b=ZhZFgYfvGue0WMlPRY7JQolTGAMiBnWTJNAIveNpume7jtMo0BSU+7K49ELQDTqBAx
         ztK3SnnYu7bXa+W0LKcwpm/5rY/AaYXGTH0RqURFAv5T6kE1gVrG49ATq+bK5m7VvO2w
         zAnBelYYHOJVaMzuoBD57RLqlDERr9siorfI6lWo0KM7RVqkEs++N+ON0WGo1zvqX9Il
         4taE3jVLaZCTe+hzGzyrdYqDKdGllJht6MVG+rAVCQ0acu989QF72eWM85ERHG5e78ex
         3tL8YA+C5u1l3GO+Ze4E0eyFQMezwlb8njEialFl+/VWLujeEtOjEGxni9b65e0tBPdr
         mL2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CZhreY8Wh2R6DTfw99voCHhKU99N+RMyaGr4sJBsxpZbkLOBN
	gRjEc2NFCXbCwcVgjs6PWvo=
X-Google-Smtp-Source: ABdhPJwAylviNgpFz4D2Qp6kAF30u+UO8U8jKkJ8jECm7UjNKodGNx3kZ2t6Wnu8wxOnPLwAifsRRg==
X-Received: by 2002:aca:fd16:: with SMTP id b22mr5643816oii.179.1601795778866;
        Sun, 04 Oct 2020 00:16:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1486055otk.2.gmail; Sun, 04 Oct
 2020 00:16:18 -0700 (PDT)
X-Received: by 2002:a05:6830:1301:: with SMTP id p1mr1327180otq.241.1601795778545;
        Sun, 04 Oct 2020 00:16:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601795778; cv=none;
        d=google.com; s=arc-20160816;
        b=yyEkoEJlJoi7omHCJgbsKBux1kRMuvdt8RVua8jEo4B97SvTwypWQIH4ZLuGzj2L1K
         +9Brg0z1re7726ZRTolU6P4Mn3c8kgrO43kIH2ZM8kxyE5J9xEzRE12hZzLK+TZcCAYZ
         5mr/M+Qg3Z/qw/+LL92r8bOFHfJ5mXgHZ9taotenBTsGRnLPAKIkUrmf+3EkCpKXWEDM
         8HJarUxeIT13u88ipDuCBnisxkzDPl5qCPwhfKffju0fUGELX5/gbdZlw7XN51HT5S5H
         QkxuSVVPRRzEmZRWuOdyZxI6sQ4QTE5p0fMqCYtNGj/uIxzQhBvhX8QUqYhIPXFGHo6m
         t1Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RXKCh5HpeWdI85i5+9LmXdJRxwwEh3eG7DoEYlLrBrs=;
        b=EtPL7VFIwOLnUEOonwY7xIzb3wMYXwk918xjGotN/AIANeK1Ic3aVNLYTqIxtt0WA9
         T1FNnWvC5oUi9zwf5iTyklhvB50reOmot8hLf4UT3FM1KlVU4YFzgM22nNtXWIS4HovO
         cVmrUErzemoYeHF+8NYGXCAl38RKQLmmIi4QDv5B0ML2SbFHd+XpeeE7qnX7CopsaS9c
         qSQ0JlXHIluMvRxOgseW/rXv1AnQ2Q9gTEohi+7JL3r2tQTEebr5m8wNGvLI0vy1Gzu5
         LnL/wEkytpdEujWugYTYof25yjBaszc+hAUWO7n/CENGnczh5LCvhjxUaMxNc+9NOyhB
         ZRTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bwZ7T5i0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id u27si528880otg.5.2020.10.04.00.16.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 00:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id p21so3659254pju.0
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 00:16:18 -0700 (PDT)
X-Received: by 2002:a17:90a:a111:: with SMTP id s17mr10886040pjp.28.1601795777789;
        Sun, 04 Oct 2020 00:16:17 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-3-136-221.ph.ph.cox.net. [68.3.136.221])
        by smtp.gmail.com with ESMTPSA id j12sm6523742pjs.21.2020.10.04.00.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 00:16:17 -0700 (PDT)
Date: Sun, 4 Oct 2020 00:16:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] ubsan: Force -Wno-maybe-uninitialized only for GCC
Message-ID: <20201004071614.GC1650@Ryzen-9-3900X.localdomain>
References: <20201002221527.177500-1-keescook@chromium.org>
 <20201002221527.177500-4-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201002221527.177500-4-keescook@chromium.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bwZ7T5i0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 02, 2020 at 03:15:26PM -0700, Kees Cook wrote:
> Clang handles 'maybe-uninitialized' better in the face of using UBSAN,
> so do not make this universally disabled for UBSAN builds.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Well this patch is not strictly necessary because Clang does not support
-Wmaybe-uninitialized anyways :) its flags are -Wuninitialized and
-Wsometimes-uninitialized so the warning stays enabled for UBSAN as it
stands.

However, something like this could still worthwhile because it would
save us one call to cc-disable-warning (yay micro optimizations).

Maybe it just does not need to have a whole new symbol, just make it

ubsan-cflags-$(CONFIG_CC_IS_GCC)

instead of

ubsan-cflags-$(CONFIG_UBSAN)

No strong opinions either way though.

> ---
>  lib/Kconfig.ubsan      | 6 ++++++
>  scripts/Makefile.ubsan | 6 +++---
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index aeb2cdea0b94..1fc07f936e06 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -36,6 +36,12 @@ config UBSAN_KCOV_BROKEN
>  	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
>  	  in newer releases.
>  
> +config UBSAN_DISABLE_MAYBE_UNINITIALIZED
> +	def_bool CC_IS_GCC
> +	help
> +	  -fsanitize=* options makes GCC less smart than usual and
> +	  increases the number of 'maybe-uninitialized' false-positives.
> +
>  config CC_HAS_UBSAN_BOUNDS
>  	def_bool $(cc-option,-fsanitize=bounds)
>  
> diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> index 72862da47baf..c5ef6bac09d4 100644
> --- a/scripts/Makefile.ubsan
> +++ b/scripts/Makefile.ubsan
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> -# -fsanitize=* options makes GCC less smart than usual and
> -# increases the number of 'maybe-uninitialized' false-positives.
> -ubsan-cflags-$(CONFIG_UBSAN) += $(call cc-disable-warning, maybe-uninitialized)
> +# The "maybe-uninitialized" warning can be very noisy.
> +ubsan-cflags-$(CONFIG_UBSAN_DISABLE_MAYBE_UNINITIALIZED) += \
> +						$(call cc-disable-warning, maybe-uninitialized)
>  
>  # Enable available and selected UBSAN features.
>  ubsan-cflags-$(CONFIG_UBSAN_ALIGNMENT)		+= -fsanitize=alignment
> -- 
> 2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004071614.GC1650%40Ryzen-9-3900X.localdomain.
