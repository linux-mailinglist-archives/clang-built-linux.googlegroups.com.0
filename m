Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3VV4TZQKGQEUMTUTJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA5318FEFC
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:24:15 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id u3sf5391585uau.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:24:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584995054; cv=pass;
        d=google.com; s=arc-20160816;
        b=b/ILEeb1RhZM/Nqw86hjTIflIRoHoycgiO6ekrhTz049PvoSq1g+kfLAlpvm2vzCVo
         1DK9uI6Sch4hnl7bNm0XOPkYTMFhiMTpcrwGABAPfwRiHOWhSrLth3Ig+tr84IfK/kHu
         wgwYyIqfVCMBbHwWjg3TTscVu1OWYSuMYW3fWwfnIkv0qFx0Nuj0f3glwHFaIelxbiqC
         2zGSWvG/72kU+n0/Z+6s2fkQxFzRuFDtuGNKNIFa6rax0KvasRl7PtHszBH9m+1sXxH5
         Tiyl3yF1N3zEfsTxqtqTQRW838mIJrSSoOje4FNCmGxfFkdILX5Og7sjHzwfwmfxAaM8
         Yx5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HPgUdoRfpdRdXwF38xpLra+nLn9gdExopDtY0eKVQ5g=;
        b=dUg3izr3x3AjVhGzgCuaJcKlH9lah4EZx7whaMdJNNzFCiZmWw+tcxPdtBZ1rCf7Tv
         JLm2Hffuk3xDj8riipE1FO6IjqayPwMwn1TNrBlKMz4cqqDXj2fz9aUxRdC0YIq6Il/2
         8hlZ40PDUvUuFIrxGF3G5OAAOstXpYOH3THgh04VDh8sSEqQE9ld4BqSrJKPrrw7Zbz5
         r4HDvIwz3aDUnhTDuB+ovI/knwu6kHcnV31jd3SWYjw+wYwB0FJ/rlTFVABHTwRQrrmG
         CiQAL2mvAkYNJezNjYdF7kXrZit5//n2yWLyQ0V3qELmfnhmyBBNPbOMzwac9OL6Z8Hd
         xHlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mUNBTWdV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HPgUdoRfpdRdXwF38xpLra+nLn9gdExopDtY0eKVQ5g=;
        b=p5D3GSUb/25tmdusMalRpywPeDQf+wCw9SAY1UUhE9/GavKyDFCGsnLV0lmcQr6Dtv
         tAwAqlIByUyAt0tNOZiYhOMmPMtYbZWiRdmjTvkLaWQwtKWo6TjBo2cSjIwEzsgS9nhy
         rHLk4H3PePYg+STbqDrHzFaWmYwcRCzgRZArpPVqXEQEBxJypqq2EjS/bZ0uaPgZbf/6
         6F3MrutkuDbKo8eQsCbq4qHZCLLKqIFYJKYKyNykLMLTUANjGuW5CwpeL9zKmxgsJjLc
         vEldM17Lv9ATRGI16D56SHN2NxgK9KByFD4iJLmKsdz09i8L08nE5g+pcaEJEsN5JKMq
         6dKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HPgUdoRfpdRdXwF38xpLra+nLn9gdExopDtY0eKVQ5g=;
        b=YQK9grl9NeR2dOiwCcwQ6H9tY/fahEbq1OYPhZE5i6jEAusOynC+4nuRbn0L3TN08F
         H3ZFa+R7zTAF9FUZg67D6eb98Tfd9z9h2Ejy0gVK0ZQsCR+5gnsKuz24VZFQNZ90Byz+
         s3XvXtbdtrwrWjZlPBLqdlCwkr3naCRVvVxswNPNGc1F6R+H8DTx3dpHz7kNGAvtBRnE
         ns1Ep42KRuUxUnaLPslfmhn8Dy2uZMyoBlmHdV7ZpcVEfB2gSOBGt7igpdBgNZj0+NEs
         yDJWAZTqjz9ea+QcoTCvVxXZQF/z4nhOQJzR2zpipnwqezR1y81JFdGyUboWGkH7wO0e
         9V7A==
X-Gm-Message-State: ANhLgQ1KpKnaVSLRcDf5V7GuTWWscTpMoluTvxfe/oOPLPlNxtTn/QnV
	90ic4o0iPFltfldFlPrJlWc=
X-Google-Smtp-Source: ADFU+vuCjXMUUVSKNAlyy4iSBpnCww/1fRZRCoxo6e+Eeztf0PF7ogqMUkBKOc/KyBkKQx0lkEeGRA==
X-Received: by 2002:a67:1581:: with SMTP id 123mr15680102vsv.171.1584995054425;
        Mon, 23 Mar 2020 13:24:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3b27:: with SMTP id i39ls1119744uah.4.gmail; Mon, 23 Mar
 2020 13:24:14 -0700 (PDT)
X-Received: by 2002:ab0:4913:: with SMTP id z19mr15163447uac.132.1584995054032;
        Mon, 23 Mar 2020 13:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584995054; cv=none;
        d=google.com; s=arc-20160816;
        b=trPfhBzWPwRLtiXcsQ5JacW6cGxAVGwR/AT8NVnKHnj6bfZeRlpbrNRpTzbD5DqGFb
         WdJ89iV95iKIBhapeP7qu2k4jVrzlImj429eZRgPoFONt/14ueL2mV3NBF3vBdLJusBc
         FXoq8xc46aZX3JrBLWJygQnAmVaPsWq4di1WkSFWCwoE/gNQ3A77S+kMOGOf5T58eeL0
         0lT+tKKEsiFubbTOQej/FDgFI0gxjOFOE/uqJnrFaSg9r8HIYgA2UGW1PQdjjM8vR490
         q92EfnPLx8YlkD9ugB3mYMfCyOHrYGwppEYzOy4D6uhih5HRRyYit2qWhIm0rddrK7oc
         FHng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C0LsAz70o8cEG4Nw2F0iYGNC/gi7roMlmMUaydZViic=;
        b=QyCr0MkknbT7CbnmPf97Zh4kcc4wpqUDEenzKlvbat0RVe7xXhwHA7qo9OiCH1Gsjf
         a630x6FCqYItupPI7t02FeZwO3TquhFXbcDt7YSG01xxEmnIjh3FYzI32l4oKBoREZU8
         4se0pDHr7OtqMKqI27UjokWZKVQMF0akLjkNcQ7YbwVqhYHnmTHWAVJ5PEprBM4OGNlB
         vN95GI5eygHZuY/KGYr2Vqg+Ne0BndBvYpHF+o7OG/c2+B+SIogS9nZSn2XK9Aksu+v7
         we5915sNCRFx1AJhAy8k8v2+jybte50ZD9CIkjqZBLgL5xGdRlxbfKttNB+wwal+ahih
         CLmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mUNBTWdV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s124si1052136vka.1.2020.03.23.13.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 13:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id mj6so376704pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:24:13 -0700 (PDT)
X-Received: by 2002:a17:90b:8d2:: with SMTP id ds18mr1099401pjb.186.1584995052592;
 Mon, 23 Mar 2020 13:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200323021053.17319-1-masahiroy@kernel.org>
In-Reply-To: <20200323021053.17319-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 13:24:01 -0700
Message-ID: <CAKwvOdk3g0HzU1r90oRm46ACwfr=CwYjYxUs8w_x47n_sRsVTQ@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>, 
	"Jason A . Donenfeld" <Jason@zx2c4.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mUNBTWdV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Mar 22, 2020 at 7:12 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> CONFIG_AS_MOVNTDQA was introduced by commit 0b1de5d58e19 ("drm/i915:
> Use SSE4.1 movntdqa to accelerate reads from WC memory").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").

Indeed, I see 2.21 was released in 2010, and I see a commit modifying
existing support for movntdqa in 2008; it looks like these have been
supported for a while.  Thanks for this cleanup; the less we have to
invoke tools during make invocation, to lower the overhead of Kbuild.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by Clang's integrated assembler.
>
> Remove CONFIG_AS_MOVNTDQA, which is always defined.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  drivers/gpu/drm/i915/Makefile      | 3 ---
>  drivers/gpu/drm/i915/i915_memcpy.c | 5 -----
>  2 files changed, 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index a1f2411aa21b..e559e53fc634 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -28,9 +28,6 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>  CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
>  CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
>
> -subdir-ccflags-y += \
> -       $(call as-instr,movntdqa (%eax)$(comma)%xmm0,-DCONFIG_AS_MOVNTDQA)
> -
>  subdir-ccflags-y += -I$(srctree)/$(src)
>
>  # Please keep these build lists sorted!
> diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
> index fdd550405fd3..7b3b83bd5ab8 100644
> --- a/drivers/gpu/drm/i915/i915_memcpy.c
> +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> @@ -35,7 +35,6 @@
>
>  static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
>
> -#ifdef CONFIG_AS_MOVNTDQA
>  static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
>  {
>         kernel_fpu_begin();
> @@ -93,10 +92,6 @@ static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
>
>         kernel_fpu_end();
>  }
> -#else
> -static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len) {}
> -static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len) {}
> -#endif
>
>  /**
>   * i915_memcpy_from_wc: perform an accelerated *aligned* read from WC
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323021053.17319-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3g0HzU1r90oRm46ACwfr%3DCwYjYxUs8w_x47n_sRsVTQ%40mail.gmail.com.
