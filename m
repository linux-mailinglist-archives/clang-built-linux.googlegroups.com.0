Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMNRSX7AKGQEXEQ5G7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 050B52C8F52
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 21:40:19 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id y4sf593211vsl.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:40:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606768818; cv=pass;
        d=google.com; s=arc-20160816;
        b=wB07rDmvVe03i4TNCeqZPWWvce2DbrdfJ2NrSDuInybGH0Ql4Gb+46nKpzhENTvBiG
         m/6QkB4VyYadcAYV/MSLLxTjxu7C27tsjFexniharMRYhIR9jqC0BzWU9SvRfBibGeZD
         3/jrReCKL10vONSPe3V6gE0Mv7VTXElRCo5e3KFhDFsZzNqTAiXfHLzUJ2mKTxA5E0Q3
         xR3yQ+E/6yKO/ihuUkqUByqLdstoj5YOOxuNlk37SeF6E7/RwN32VEFs5/UpfHumPj9k
         9oX/hcEsThEARxQ1YQzzFMlDnMBkBJXUDYw8MzTAesYvWag3Og5JMx3bcWJ3S9yQKUAZ
         5DNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2tXz6ob2Rp4rih/dwbTY3HigV5CZKyvXKwH2/a8bRj0=;
        b=Zg4TC8sooktEoMZLooaGWfqkeaCMQMbcFMENwYBhIGu4sSP3Tny87qkmpR5uX/+lDf
         SLUa9Fcfy4G3uclQCKBFq1JjTtrRb8RtcKRcwGgRceAAwLkVplV23ezSKeGC1xLmOzqX
         qKblfUEKem2EdstaIiV5bEetclp7UGADxpQIes2Iz8ZRSWVp/GtqcjMHCmcB2rR4nXjl
         YdYI0BCyyCw42qgjcBwbs6qPrO9CJcS6D/aaKiKiTDQxAoP8q1rcYnkcCotj6JGLCd6Q
         h3LtN6rGZuaxqQRDWEVWh2fexklAjdJbV9nQh2OCSr54SsAMllfomB8eNN7tJkptF7jr
         wxIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vKKvL0gS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tXz6ob2Rp4rih/dwbTY3HigV5CZKyvXKwH2/a8bRj0=;
        b=TwmKMuJEyt73ProcOsRkVFphvgENQjCyMKdiRzJllvdzm672mNrlwvLtGFcqyXm3cP
         0fS/hBlixeaozaynRBssjNuFvRwfQy+uKA8NIgZcbG9Np+l3rhCxvx1SSqB2uOuKsZsd
         xLZn0ILq+RRwhgPisI7NG97M025ZmEjNDH0jjEo2UXhWmyxALnLf6eMeuTbFr38do8RW
         79hNh2E3W6vUCUwDmwerdKQg3NsCWrRWAB+xgxHEXgGa5Y/NbJSmM1wElBunLNO7OnfV
         YqAretS8/cLiAb8MMAdco9p7OtvhAkAOm9UkFwm4CLCTY8KikYG+wwK5/8bsR3dboOaL
         djuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tXz6ob2Rp4rih/dwbTY3HigV5CZKyvXKwH2/a8bRj0=;
        b=d+hUPX6aZ5V5na4fOJbkQSH8jWTlR4TcgGKMpOkZ+NAeAa4+tf4aJtI94oj2YmhzeU
         sy9unmT2OW/Y5a6LU+8GI8upIjZw4TRlrLaOl30DdtFfDPMY1Hrcrnec7z9pyA/4lh8e
         RMJSiKAXa7vUiF1HC+qvRKfWvIetU6TCtfQDlu0TEkrbzBx7/5p1RZxBi7YNoV+Ge+LL
         SJ5hodV00cTZuJ/wbalZK5HP9GPOC/eupV8I4Ra7tQawjDKS3TiSnwGtYE8D0dWV92TG
         XXMue21mA961tTspLKhMf4dpTuhPQFTPXayP60MGUN9DH5lt1rSLdz7OIxEaOB7grnoC
         DzjQ==
X-Gm-Message-State: AOAM532eNaTyUHBDj9oWD4VV5oYfcv1uXMn/N5Qo2/KeZUWcRgUuhhGA
	te/GYRIvjmnpfrCxNDtaA8U=
X-Google-Smtp-Source: ABdhPJwDqNCQstPEaRqVcmIH3G3yHS7VuQtGKvAvGLJ7UpNN48LPCn2DI0gJwGKMn1qCO2x6jQ1AJg==
X-Received: by 2002:a67:7c11:: with SMTP id x17mr17642550vsc.20.1606768818097;
        Mon, 30 Nov 2020 12:40:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c9b2:: with SMTP id f18ls771218vkm.9.gmail; Mon, 30 Nov
 2020 12:40:17 -0800 (PST)
X-Received: by 2002:a1f:fc82:: with SMTP id a124mr17439302vki.14.1606768817630;
        Mon, 30 Nov 2020 12:40:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606768817; cv=none;
        d=google.com; s=arc-20160816;
        b=oY6STKLeszEG/E61rvm+zCOLTwyK3zrPxJVZr5N3iVea2PnC8VOmYX6ZPo/gNeOmFN
         eyVsP0Tva4fwQ/RRD2Cuw2ic1u9SP55ClIzw/umG1lKkGGqOKnaRjgrTgIZ4cNYzQT7U
         B3S+EU6G5RS86txyH/6evqwHipocshNfxBgdkvShMAH3om9B2ICRZkYI7FaKH8OLPjhE
         HHeAj4Gnl1U/wRTYfzkxJU/Y/5ggQ2lgQ3cHcQ06CCqPsqHKkXm96G2KBkY5tvhdHHRw
         xos6UVK9EkjHhcHoNnJdacaiYB+O++JtT3pMbKhMDVWAowpuHLcCGFQWOUeaAWWm7L9j
         Nk0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I8qDHQ/jUJK0YpI0GEkFGscMHRpymFfegAxsOzmAN4o=;
        b=OvG44W63w9itYTrk8mZyby3NCi20YtU+JEdh8gopp0o/Q+XY8eGUGHdEoLKVAb9hAK
         jHs09T8GrIeoAoGeB+2Md7xV8A5CGjqomOMnSB7Mn1FPULGtajqjxByqMoh5WZMTYoAE
         lwrKNJ82JO31ZkaFdDJ0sydFEsV0y2cg3I2oJ7TnGoWuq+q+Gpfs2xaBMRNAmbShs0OA
         RKqrdJ7q38LikLHOk9q6lcBMSEOmEx7mDs7ezU4LWx06dyWqIBl/eJTOo0y5FuAu+R6L
         nm465zc8eg0DsZPzWK1ty+SXFRGQ/Ka0Hmi7AB5OQ2Jf1tVPtWrE2GWbdjHji9G8Gymr
         U6eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vKKvL0gS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id b25si1223276vkk.5.2020.11.30.12.40.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 12:40:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id b12so332171pjl.0
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 12:40:17 -0800 (PST)
X-Received: by 2002:a17:902:221:b029:d8:f938:b112 with SMTP id
 30-20020a1709020221b02900d8f938b112mr20664724plc.10.1606768816582; Mon, 30
 Nov 2020 12:40:16 -0800 (PST)
MIME-Version: 1.0
References: <20201127083943.2666864-1-anders.roxell@linaro.org>
In-Reply-To: <20201127083943.2666864-1-anders.roxell@linaro.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 12:40:05 -0800
Message-ID: <CAKwvOdmtT+DtK6Fs0TdGaObuSHY5C7Ssrx9-5nv+ZUB6uuz3+A@mail.gmail.com>
Subject: Re: [PATCH] mips: fix Section mismatch in reference
To: Anders Roxell <anders.roxell@linaro.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, chenhc@lemote.com, taohl@lemote.com, 
	yanh@lemote.com, alex.smith@imgtec.com, zhangfx@lemote.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vKKvL0gS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Fri, Nov 27, 2020 at 12:39 AM Anders Roxell <anders.roxell@linaro.org> wrote:
>
> When building mips tinyconfig with clang the following error show up:
>
> WARNING: modpost: vmlinux.o(.text+0x1940c): Section mismatch in reference from the function r4k_cache_init() to the function .init.text:loongson3_sc_init()
> The function r4k_cache_init() references
> the function __init loongson3_sc_init().

Looks like loongson2_sc_init() might also have the same problem? (Both
loongson2_sc_init  and loongson3_sc_init are called from non-__init
setup_scache).  Trying to pinpoint a Fixes tag is tricky, it looks
like setup_scache used to be marked __init, then __cpuinit?

> This is often because r4k_cache_init lacks a __init
> annotation or the annotation of loongson3_sc_init is wrong.
>
> Remove marked __init from function loongson3_sc_init(),
> mips_sc_probe_cm3(), and mips_sc_probe().

mips_sc_probe_cm3() is only called from mips_sc_probe() which is
marked as __init.  mips_sc_probe is only called from mips_sc_init,
which is not marked __init.

So the patch is fine (and thanks for sending it):

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

though it looks like it might be worthwhile for the MIPS maintainer or
Loongson folks to see if they can lower the kernel image size in
memory post init by possibly re-adding __init to
setup_scache()/r4k_cache_init()/cpu_cache_init() and friends.

>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/mips/mm/c-r4k.c   | 2 +-
>  arch/mips/mm/sc-mips.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/mips/mm/c-r4k.c b/arch/mips/mm/c-r4k.c
> index 99521764c75b..4f976d687ab0 100644
> --- a/arch/mips/mm/c-r4k.c
> +++ b/arch/mips/mm/c-r4k.c
> @@ -1609,7 +1609,7 @@ static void __init loongson2_sc_init(void)
>         c->options |= MIPS_CPU_INCLUSIVE_CACHES;
>  }
>
> -static void __init loongson3_sc_init(void)
> +static void loongson3_sc_init(void)
>  {
>         struct cpuinfo_mips *c = &current_cpu_data;
>         unsigned int config2, lsize;
> diff --git a/arch/mips/mm/sc-mips.c b/arch/mips/mm/sc-mips.c
> index dd0a5becaabd..06ec304ad4d1 100644
> --- a/arch/mips/mm/sc-mips.c
> +++ b/arch/mips/mm/sc-mips.c
> @@ -146,7 +146,7 @@ static inline int mips_sc_is_activated(struct cpuinfo_mips *c)
>         return 1;
>  }
>
> -static int __init mips_sc_probe_cm3(void)
> +static int mips_sc_probe_cm3(void)
>  {
>         struct cpuinfo_mips *c = &current_cpu_data;
>         unsigned long cfg = read_gcr_l2_config();
> @@ -180,7 +180,7 @@ static int __init mips_sc_probe_cm3(void)
>         return 0;
>  }
>
> -static inline int __init mips_sc_probe(void)
> +static inline int mips_sc_probe(void)
>  {
>         struct cpuinfo_mips *c = &current_cpu_data;
>         unsigned int config1, config2;
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmtT%2BDtK6Fs0TdGaObuSHY5C7Ssrx9-5nv%2BZUB6uuz3%2BA%40mail.gmail.com.
