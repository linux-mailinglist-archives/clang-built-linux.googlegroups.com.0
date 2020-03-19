Return-Path: <clang-built-linux+bncBAABB3N2ZTZQKGQEW3GUA2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 964DE18AD49
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:21:18 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id v10sf1754659qtk.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 00:21:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584602477; cv=pass;
        d=google.com; s=arc-20160816;
        b=n65TMJ0hnxBvUYVG8pKN5n1OFGGVLwwcUoGMQjf0oGgrHYUJq8ZPoHuzSnKziFVWcg
         iam6OqMaayedekCoQSXveLmn/Rju9pKNEwwfxu8JeWl2swhh337FNuzGp5Tj6ligVyLu
         ld8pbIsxHzZXdWL1AE5OalKFQwg7ed5yHL5lFPwSNVwHRMd5PqwI8/CsqHA0XB12Frvh
         N9sBs5P1MkLbQi2qBhzazlyMZ8UX8UClsGe1Pqh8UysbOwBhZhwjF5x7YXcVZAX7y8ok
         3yxwapUg1Z58zZ6qT1hNxhOplXbrBjXqBB2srNJ3+pMjkfij5/4v+I3MCQ+hZouGRNED
         3TLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Vevu1+1XLR72RZy6XHmR/ZPB83RxkjA4GZ5/tCNQVOY=;
        b=CB7eW5ln2GtnTZUbRY5gS6MjqBm5o0tOpUkpjusvLh+YLJ96Q655Q/OHlcd7rK4YP3
         /DxDmt9OrE+xrVAEhV+rpC72JAwIwhBuHbr7fJj2NIKjsAC7+nou8CFIwzXegR5XKoiU
         sIh9ObudnQjNW6kggmdu8K4sBQ0IMtEI0OwUl/rjsJo8vebxxn3gEVMiH/K3uhwH+YBv
         h2Y8rC+EjJeANyssSaqmg1ZRJ8MvIX05CnTihXMz02kwTE6U06b6XmExzPuXNxVNAjh+
         MRwIXcPlN+sS2xYvwdiOuq1h1I4NBX2kLFuCcSYJd+8bYv/YjSUM53okV7vWKg4s9VDU
         aOGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="0/vp+6Jt";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vevu1+1XLR72RZy6XHmR/ZPB83RxkjA4GZ5/tCNQVOY=;
        b=lvZXslr8WsfS+4m3l/Wst/f57FcblvrgHs/c6Pa/Oox8o/PGtJZGNgvXKH1fo4SRs9
         K4nzseOow4KexbPUmiZcE8hRFu4RxTUjwyuHhGWunyszX0ILH4zFenn4TZeC0b1oClXc
         g57fr/vmkglLFI4AqjZTni4+8tWqh6J7pFfSdGGvpYLGLHm7w9RzvWqOLUZhsJ9JnRNW
         iPusfM9L6f+uoLmSM7Ia/KieCCyTNZq9OpphceKaAkTmFoG3wePzu4q57itY48Vf7VKm
         fnh9G2Myf2KWalu8ksy9qjr9KmIVP9AIjxKr/IVYOIR/+lGjEjY6SasbsCCVPR/jfuCf
         x5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vevu1+1XLR72RZy6XHmR/ZPB83RxkjA4GZ5/tCNQVOY=;
        b=U5LXgZfMBQ4c6IM/4kE8K+aOXcJV78K3hk1bRBMdLrR2blpfw1yi+cWn6JdEP+71fO
         HnV6hh1k3z7yUtCcWQ4TzicWHvZN9VaF2Ba8XmKtRpp49E6EXY+b+mxMtH896mz90u9b
         YpRA4e6MAmgXDejlTyKE0K9mJ3itufH5T5w+k7h9vv1BvgxfxBFg6iAyUojqeckHmY8e
         Zzc6cTzW/zKkbYjqldVmy0ksolIkkQDGDUV9DvLbsqkBJwYR+EP+8iOSLgM0830xAjW2
         QmTphjPDlqnTgskwBD6Cd4covyMarOOJkLyzI1gbFbMSenb2el5bsG8/8KqhG06yTBg5
         ZpVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Uwuy7VY9EASMNNJYt5VoT7N7cJw1bZm543nlOn2ewKEW3MiLf
	jYlQGwR0+W12xVXhYt0y8k0=
X-Google-Smtp-Source: ADFU+vsP3gQtCLPzfp1vRjy0cKV0brheOQIAZ7ddi9g0dcQK8kMMZ2pvHfJtdlOuuLpxHtf2W1cciw==
X-Received: by 2002:a05:6214:427:: with SMTP id a7mr1674789qvy.10.1584602477391;
        Thu, 19 Mar 2020 00:21:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4695:: with SMTP id g21ls641371qto.3.gmail; Thu, 19 Mar
 2020 00:21:17 -0700 (PDT)
X-Received: by 2002:ac8:378d:: with SMTP id d13mr1509358qtc.227.1584602477036;
        Thu, 19 Mar 2020 00:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584602477; cv=none;
        d=google.com; s=arc-20160816;
        b=tCZzPOjItgeTNz1qwFHxnPETScVHXD8qPf1sVrP/uvfLDs/Ro4VTm1rf6KROEZfk1r
         xP7TdcFhL79vyoHelNeVZwXhbaG7nBliq1Yi0rOvVQ/AGaxQec9Hby8c85+mYnI1Fbt0
         MEeE9+gmKMGVKbe2xoarIhrJ8MOWGgR3MxbZNUSdXIxcMAzY/jq8KPVZYqmcow4AJCSF
         unuk/xCFLQybQ4DaxUlUk1mAGeWg2+HeEO0pGvALhH6zylUDSiRJzDsIsH842qqdpDjy
         pF6QEUJ5N9aD8sDXYBI7u+fXK5yUX4qtl2oM8psUzVnbt3fVkf0YssLq1NVXIQzBkS79
         D2dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=7mIqQ7KnCxUIjZLM3J+eJp954uanv6Sg/97Cuvsmk4c=;
        b=Zga95YW8BywLj3wcnZUDE6VLCkFa9HV6IV7/B0/z4Alqq2r2mEiydc5qqQzJtNaiwP
         sbyn25xH2Eyp2kG9VfpEzi+2TlJ+BAj/YPwUqJD9Amv+RZ9vCiJXBbRYdssGnZXy0ItU
         HZgkqBfiVBBQoCPtWEOPOO20T8U3ycUNYaawB6m2aUt0kKsPNbA8xbVGzWbbm7Rt3yJ0
         9lx/RQ/ozKT8vBZQzXXz/uMBREECsxaSVgRkKxyRkmlDxlvxOKiKP5FN6pFDWrvMzmXf
         K9HOo+kYvKmkKXmfcvFO7IuAcz0xM62EKVajyZooy0Lei0LCWJZSHV+W+GA4ChBPeWP1
         KLLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="0/vp+6Jt";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id x11si86735qka.4.2020.03.19.00.21.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 00:21:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 02J7KsiQ031376
	for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 16:20:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 02J7KsiQ031376
X-Nifty-SrcIP: [209.85.221.170]
Received: by mail-vk1-f170.google.com with SMTP id n128so439700vke.5
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 00:20:54 -0700 (PDT)
X-Received: by 2002:a1f:32cf:: with SMTP id y198mr1387267vky.96.1584602453713;
 Thu, 19 Mar 2020 00:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200220110807.32534-1-masahiroy@kernel.org>
In-Reply-To: <20200220110807.32534-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 19 Mar 2020 16:20:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNARHBfp=gkVO9q3pC9o_w9PgNW=5AP95s1MR1tHLJV=0fg@mail.gmail.com>
Message-ID: <CAK7LNARHBfp=gkVO9q3pC9o_w9PgNW=5AP95s1MR1tHLJV=0fg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] sparc,x86: vdso: remove meaningless undefining CONFIG_OPTIMIZE_INLINING
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>, X86 ML <x86@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        sparclinux <sparclinux@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>,
        "David S. Miller" <davem@davemloft.net>,
        "H. Peter Anvin" <hpa@zytor.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="0/vp+6Jt";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Andrew,

Ping.
Could you pick up this series?


Thanks.


On Thu, Feb 20, 2020 at 8:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The code, #undef CONFIG_OPTIMIZE_INLINING, is not working as expected
> because <linux/compiler_types.h> is parsed before vclock_gettime.c
> since 28128c61e08e ("kconfig.h: Include compiler types to avoid missed
> struct attributes").
>
> Since then, <linux/compiler_types.h> is included really early by
> using the '-include' option. So, you cannot negate the decision of
> <linux/compiler_types.h> in this way.
>
> You can confirm it by checking the pre-processed code, like this:
>
>   $ make arch/x86/entry/vdso/vdso32/vclock_gettime.i
>
> There is no difference with/without CONFIG_CC_OPTIMIZE_FOR_SIZE.
>
> It is about two years since 28128c61e08e. Nobody has reported a
> problem (or, nobody has even noticed the fact that this code is not
> working).
>
> It is ugly and unreliable to attempt to undefine a CONFIG option from
> C files, and anyway the inlining heuristic is up to the compiler.
>
> Just remove the broken code.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> ---
>
> Changes in v2:
>   - fix a type
>   - add Acked-by
>
>  arch/sparc/vdso/vdso32/vclock_gettime.c     | 4 ----
>  arch/x86/entry/vdso/vdso32/vclock_gettime.c | 4 ----
>  2 files changed, 8 deletions(-)
>
> diff --git a/arch/sparc/vdso/vdso32/vclock_gettime.c b/arch/sparc/vdso/vdso32/vclock_gettime.c
> index 026abb3b826c..d7f99e6745ea 100644
> --- a/arch/sparc/vdso/vdso32/vclock_gettime.c
> +++ b/arch/sparc/vdso/vdso32/vclock_gettime.c
> @@ -4,10 +4,6 @@
>
>  #define        BUILD_VDSO32
>
> -#ifndef        CONFIG_CC_OPTIMIZE_FOR_SIZE
> -#undef CONFIG_OPTIMIZE_INLINING
> -#endif
> -
>  #ifdef CONFIG_SPARC64
>
>  /*
> diff --git a/arch/x86/entry/vdso/vdso32/vclock_gettime.c b/arch/x86/entry/vdso/vdso32/vclock_gettime.c
> index 9242b28418d5..3c26488db94d 100644
> --- a/arch/x86/entry/vdso/vdso32/vclock_gettime.c
> +++ b/arch/x86/entry/vdso/vdso32/vclock_gettime.c
> @@ -1,10 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #define BUILD_VDSO32
>
> -#ifndef CONFIG_CC_OPTIMIZE_FOR_SIZE
> -#undef CONFIG_OPTIMIZE_INLINING
> -#endif
> -
>  #ifdef CONFIG_X86_64
>
>  /*
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220110807.32534-1-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARHBfp%3DgkVO9q3pC9o_w9PgNW%3D5AP95s1MR1tHLJV%3D0fg%40mail.gmail.com.
