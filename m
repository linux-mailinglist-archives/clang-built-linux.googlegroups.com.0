Return-Path: <clang-built-linux+bncBDW2JDUY5AORBD7FRWBQMGQEWW7WEDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id C274D34F136
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 20:48:47 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id v16sf5738185lfg.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 11:48:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617130127; cv=pass;
        d=google.com; s=arc-20160816;
        b=eHyWxDIsEDlDRWQlNBr2JXenMyGIfJ8YeA4TktNvg/FfquH9IhPQ8tpGhMEmc6Fag0
         dlgtHVUuc9v8qLrDRoBOeXknOkFXSuPPysszS715Hf9e8+sFIY/xN+lAmMiuXWW3DUiu
         m6Y1lGqY9xrJh6fvoFIVSMj/LFzjrobnGvEsgL9PPTiKEj1a0HR3iUbkPfiKiIHz9+9y
         vnRQPy7RrteQc7zwxTRG4MJ1sRnS/IV7Ww1PDb2fatvIv9iJ1+yuYUYFck9NPw8s41fP
         Q1q3Mv2gkhXSn9Vz132b/QeQMZtEYn4DZkluEHBmQfpKBsos62X+R7OSXgLeMRucIoSe
         D0Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=A/HHEhOH/0R9/cjSMvzNgUWzbq/NZ7EJ8yJ6tGdTRY0=;
        b=MspZ0wP1AQ2SzLMtFXwavecd3LF+Hb4JE6xcPCPP8Aojww1ygKRgu4jZ/LVk1K37ij
         rPggfYTS9zcqyaebYfMseNxZT/+08hEkmZHzKw8tij21IGewHhIG9YZIIej2xndNZ3mo
         /v6SGUgM7IQ8KR7XHQ2Hs6dz6jCHOc77CXD0Ur3ueQugvSrt94CgYc9Q23bLZ6dmRwJ7
         zq2v1gQccN9Q6zXmAt7nLM51RQdlEiTqs/oujv+OR+D0btP9DN6L3fRVJzoYexHjDbXL
         03uTk5+h0ZY9JPmSLBAvXFEVUCHGPVeJFhIqYxQ9Eizrv145oHM/1OtJPWO9yOIrSpyU
         /SKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JylleUcV;
       spf=pass (google.com: domain of andreyknvl@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=andreyknvl@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/HHEhOH/0R9/cjSMvzNgUWzbq/NZ7EJ8yJ6tGdTRY0=;
        b=NCGKMPF7HizUOIomQLWp4j3Jksrnw+VrYOGMUmAyftxcaIOQt175+KPQRjkzEodE8O
         uRBsCRO1dZYDsRNbYUG2Xkk0L3hhhhYwiLveW7LTIu44qfGfk9JkYEuBHQlrck+3gaK1
         Rsi2qmYPcltRbi0HV/8ZgjEuTBI3HE4gVuLZUAoVS3ec9ECg/PQhDE8HXnuodxqhrs6i
         qapYvxuKnh/h51zq9dYJAO7VUidSxDFf8pFtQ1MGKcwlgu8xQ8sLz0g3nB1G+K/a+std
         3TwmkBisy8BqbwR/TKaBFEEecZI6ButpBfkQENWdci7up5HTlFs7DnqCBNF8UD9ZPXWz
         2jTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/HHEhOH/0R9/cjSMvzNgUWzbq/NZ7EJ8yJ6tGdTRY0=;
        b=q/p1CRz3lie/dhIvUdCcO5m/fj2QJdDZFbU2LPvXybggnBCW616W+mcWV6TRo24PiK
         I8i88H3ycRUNB9A5ixZRsiNA/QdtIYSq4CNlj9wM1mPoktapt1Z6TkueljOrXXF/5cq/
         1fBnv4/pFSIo1c7CVa98S6KbwklpGMo/yxcZ7jQLh/rlUpduZUmbEA0B4y5ybY3xjPJO
         MNVEriw6k9Rq2sRIaSANdn21AgYZD2CIDXqh0i3YJb5jRDhtVOCVDxDudBnEWUSDIZ2g
         0/zY02SEsa5Qs7BuuUGrsu5R9Lk6nP48XYJXISXYdZeqQu+O6EDs7er6dPy86tP5/lby
         Fn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/HHEhOH/0R9/cjSMvzNgUWzbq/NZ7EJ8yJ6tGdTRY0=;
        b=ixFfuHboOW5HKtA5jqDwgu1NhMGSE0ybpKUEhOimaB/VIF9TiP6ybyevF6QsPwoGa/
         nlNLhmSUvwgDbtw9zUc5/dYNRHX+G9euXP5p24kOw5O4E/Lcs44FpvtQZb8renItWT1k
         3u51jr8BFehQ3jZ/nFBim5142m2z1vbliX41hXCdXXo2bwQ0Ggg+XhyG5ELHCaCjzbVO
         +j6NhImUeMk08VuDKUa8b9D7/986XplRpDzWKRtmIwB6sMp1+xSy2WlMtdoSq2EDmSVk
         K0ouPsAq693TOHzVBu73oEyHA9XMv/+McnNCFGnCKFfl6NHlrH8TPdO3q4qqhpNoMtkN
         DsHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531itR6TyYfCPsVJMDAb33hVGtosYgxau4az1Hz7CrPthMQFgZd3
	aqCr82BvZcHUQf4kcgLbfUU=
X-Google-Smtp-Source: ABdhPJzytnAUKg4R2QgmzEJWk4Kt2ogke2vOut/FdXavp9xP+hIoiibvenL/lHPExUPMffUtFz3CPw==
X-Received: by 2002:a2e:9710:: with SMTP id r16mr22535648lji.25.1617130127358;
        Tue, 30 Mar 2021 11:48:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls7758684lfv.1.gmail; Tue,
 30 Mar 2021 11:48:46 -0700 (PDT)
X-Received: by 2002:ac2:4254:: with SMTP id m20mr21042059lfl.474.1617130126358;
        Tue, 30 Mar 2021 11:48:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617130126; cv=none;
        d=google.com; s=arc-20160816;
        b=rV4Z8Je934qf9Dwp5D7ekiOXrH+bF8ehxWYwQNIpQP6oDOd/SqJ4W30IHRw73D6SnL
         7HqPzVC7F+lj95qida0a684CZRDchHMHTjAcw+mjEgrK+/CfcwvrL/EcO7QfQVh64SEp
         bXmTjPK9a2WiL+RitasLQLMXsndgzFLtm8VWstXUBkm/4091WG6rHH/iMOwHzxLEO8k9
         D3hP66OjWDWRLu5c0YQDAhoNnei4lMCuFDPsqGoKCL4MtKUItBW2Ucz4OK+YQxnTVo1W
         om+pH2ELSGd+zMPmBPYBVWSuF3V7XFBTP3pYV9XELmopZ3UbSZH15+T9dvZOoVOaWkLt
         DXqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eN+6HYZu9ai/bWKIofpS3d379/+m4z1HTTkJ2Rk0/xc=;
        b=GJi8Wuzc43eRTTww1NB5djnm9s99s38UL96+fH1QwgbExKO3l6bXToq+jPQbVsAE39
         XvKVpTLnocIE1T1+iSG5w/JYeUrHZuNgl4MFu9yDgrtMbjZQbd+9b/XdDJ+hvUKqAkEq
         6/4vt8gm3EMFv0gcEa83GmK6S8Nl/xrse723LkFxSUF8Ac9w2xv8XVn5YA7sloShVb6S
         7eM5RIwBLhwhVgp4LYXh1FPPUB8iZ4fkuKovgIm+tLFDvRS/vCxgtEZo1kbJSsjSkR5J
         iEYFurFoJeeD6ilSmX8bllcGxySX9ftGK625O2nCwrG4GWLBPSpGbZbBmA0gGnFRFov3
         59Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JylleUcV;
       spf=pass (google.com: domain of andreyknvl@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=andreyknvl@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id q3si1023260lji.2.2021.03.30.11.48.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 11:48:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id a7so26342976ejs.3;
        Tue, 30 Mar 2021 11:48:46 -0700 (PDT)
X-Received: by 2002:a17:906:4e17:: with SMTP id z23mr34847959eju.439.1617130126127;
 Tue, 30 Mar 2021 11:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210323124112.1229772-1-arnd@kernel.org>
In-Reply-To: <20210323124112.1229772-1-arnd@kernel.org>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Tue, 30 Mar 2021 20:48:35 +0200
Message-ID: <CA+fCnZfZre1d07eUq0PBzznn8b6Co0Scp9Dnwad6ZaGp4LyrCQ@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix hwasan build for gcc
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Andrey Ryabinin <ryabinin.a.a@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Marco Elver <elver@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kbuild@vger.kernel.org, 
	kasan-dev@googlegroups.com, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JylleUcV;       spf=pass
 (google.com: domain of andreyknvl@gmail.com designates 2a00:1450:4864:20::633
 as permitted sender) smtp.mailfrom=andreyknvl@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Mar 23, 2021 at 1:41 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> gcc-11 adds support for -fsanitize=kernel-hwaddress, so it becomes
> possible to enable CONFIG_KASAN_SW_TAGS.
>
> Unfortunately this fails to build at the moment, because the
> corresponding command line arguments use llvm specific syntax.
>
> Change it to use the cc-param macro instead, which works on both
> clang and gcc.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  scripts/Makefile.kasan | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
> index 1e000cc2e7b4..0a2789783d1b 100644
> --- a/scripts/Makefile.kasan
> +++ b/scripts/Makefile.kasan
> @@ -36,14 +36,14 @@ endif # CONFIG_KASAN_GENERIC
>  ifdef CONFIG_KASAN_SW_TAGS
>
>  ifdef CONFIG_KASAN_INLINE
> -    instrumentation_flags := -mllvm -hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET)
> +    instrumentation_flags := $(call cc-param,hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET))
>  else
> -    instrumentation_flags := -mllvm -hwasan-instrument-with-calls=1
> +    instrumentation_flags := $(call cc-param,hwasan-instrument-with-calls=1)
>  endif
>
>  CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
> -               -mllvm -hwasan-instrument-stack=$(CONFIG_KASAN_STACK) \
> -               -mllvm -hwasan-use-short-granules=0 \
> +               $(call cc-param,hwasan-instrument-stack=$(CONFIG_KASAN_STACK)) \
> +               $(call cc-param,hwasan-use-short-granules=0) \
>                 $(instrumentation_flags)
>
>  endif # CONFIG_KASAN_SW_TAGS
> --
> 2.29.2
>

Hi Arnd,

This patch breaks SW_TAGS build with Clang for me with:

arch/arm64/include/asm/current.h:19: undefined reference to `__hwasan_tls'

The reason for this is that cc-param is only defined for
KASAN_GENERIC, the definition needs to be moved.

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BfCnZfZre1d07eUq0PBzznn8b6Co0Scp9Dnwad6ZaGp4LyrCQ%40mail.gmail.com.
