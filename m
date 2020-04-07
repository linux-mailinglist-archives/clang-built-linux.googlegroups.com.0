Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQPNWL2AKGQEOV4FBJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA63D1A1293
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 19:22:10 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id f19sf3893749ill.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 10:22:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586280130; cv=pass;
        d=google.com; s=arc-20160816;
        b=p0LkogYh17Kr8mjqL7al3JJHAz6Mw6YUoPqcYqyhmRNMJn5VNQq38AG71E0+OjI2nf
         s+MT73kNLK8jeVaURB2SN2LfWIvREINpOG+2xrh5cPkMYT1ZhHvHYi/HNnuVAIYTXXVS
         E6qQamaoJtrHgmfbSeuGprVfTKcavgmLHQq2GrekeADO1P6LooXvVGZw/wDj6AGvJjW8
         Y95njl071Cpl/3VXm+9PezZ2kgqZMAyQ0QWrHyV0mkZYn6E84tEW343x4sMg4SEXqT4t
         ItuNBwuUr2iuGJ9MWcSd4tEEWcmuWWIa892lpiiyr+oGRp99BNUJZ2DIfpl8GdTbEovW
         jGJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iu2WLcjC6J7wXNUNgpq0CWmd7BjY+ND9k77yxbXifnE=;
        b=FQnIrffkDGU2yx3QCJm5efK5aCr07clqwMclCKTTzNHWBozCo6vFmR5HlNulP0zegL
         0Rk3b1YMDOMyuwNrrH/mxVae3CW5Mb1ai4VCP7XtCJmsF3XqY15lQavaDy5xGqbINYB1
         W9qMSm8HNda8p0HGIHZndBF3tvKDpha871rN3Fi5fzf1Iv1JcI9ZgY9UwEcLYYB+dKez
         U9c1BkAY2jNBq1lRV9mPinPFdVNhktmZrqW/dp3NpacCrlYMZA3fGKzk0N/s9X9YfIfz
         FOKCockzq3taM6kXl29sFQY9/jzvZY6AXhFILSMDm3VCZZGwZNpl3BracFJnco2d+Zy1
         UZxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A//evzdq";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iu2WLcjC6J7wXNUNgpq0CWmd7BjY+ND9k77yxbXifnE=;
        b=ok+F1BM7Rrgz2PCVbLw+MnBoaqdimrOMOi5unHznd1jdrIzWR/aDyzu/lRTrvn//Hj
         qPvXEppPNypyE9utOrVp4O0+enezN6/IEjTZ+RQ89spw0KTe5t6upel0akwVCj6pcHxU
         FlO2CDQGsqbu/esVJ5Ue9dYkoiJTEHvykICgWiy+RLf7QKNUols/lNqXl/uwZFkssREs
         54Xg6HzeI0rPnXNpeBZZW3bGE8dOeTwYI+49GhU8o+R6S7zl08+4+6PDT3u0gaLSRsLw
         +ui+QPxPpnjWBMbY1Icf0ypnne4zhLnjou+gmje61kUHVTp67zJh8eO2zedQr46AFgNS
         ZuoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iu2WLcjC6J7wXNUNgpq0CWmd7BjY+ND9k77yxbXifnE=;
        b=nqmVAqxJYNAHB1UvKCDR1CNG7C8e73Qir1Mtrb1cTPWdkKu1v7t+Pl54la+eUnC93q
         BG+gi5k/sB15KXk3qIJ5Cvgv2xbw9MfKPsrqgBjuWkdWC0hYmjCBloYWmBneN7Mn64aE
         WDy61J0homNJUfaqpdybEbb4QVsvjXbV4BnfIQuu498tXuwZhAuopDpTjVTWVwqxionD
         YO+xxweeWg0Woc1Bmed2QhvcIqJuTCC0ZZeYEguuUpaVDFfUx2OMPfSbRpuZ68uv9jqu
         2sr37/fW3M02hZMgCnGc9UvbnODEKdKQXjGE6WGmofEmQ0OS59v8gRf18bCA8JbsrV5O
         WP2A==
X-Gm-Message-State: AGi0PuYmXIKaaYmGojss8FlZuU+69kWjy7CK4PFLkN0SCjIluxftkPi2
	B9id6f2BYEFtsFCE4nTbu8E=
X-Google-Smtp-Source: APiQypJShXvEIzAbuuOHHwEO4LKMNbqPS2hGq7lGoND9Yy7/gnz02KjOgUxPEhQLPFEilXMvc/vO/Q==
X-Received: by 2002:a5d:9ccf:: with SMTP id w15mr3130569iow.187.1586280129797;
        Tue, 07 Apr 2020 10:22:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:dcca:: with SMTP id b10ls1975197ilr.9.gmail; Tue, 07 Apr
 2020 10:22:09 -0700 (PDT)
X-Received: by 2002:a92:89d5:: with SMTP id w82mr3472581ilk.95.1586280129398;
        Tue, 07 Apr 2020 10:22:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586280129; cv=none;
        d=google.com; s=arc-20160816;
        b=LV495vcDUOV+yn5uAboA4MRDwGqFwpbJsaG9lIfkZ5LVtI4hREof5THFlYlSBl5Wdm
         7Z1302YEPMZJD8nFNwBanCsfXI9xywSf/hIVpdELhtBk6Itq+6gGKWVg91QnD/kwXnyX
         ICL2RB8djB1WXb3a4y47oLr6kOaApO1guAXsbO4NoZD9vec2k349f9hU1YeFOhvkI/3K
         u7YsGeCtwqEwDgqq0X7Y+1NcsJaTr24r4VTNxaxb6nzt7Tn346MJATvNwgfzAmOGVCIh
         bAYV7WazosGyRegEXG7/ZSI8X947B5g4Kxu46R/3j4OMd7nGv3Xpuh+u+N8Ixlk56pJq
         QwLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1WtbWNWaVQeVcZQhFvV6urZvQa34yJxf2HAD/pRyZ2g=;
        b=q9v++Upf1rl4uDfFW3z9EUL7xQUyCFzQha8aDntemA6t0j1UGvsWykWFCq43rWDQWQ
         /dIdjjJ4ygFBLHW/K2OhUXrxUEWjPknHBdB5vilVz3Z5Z3fbzB6EkNMDMfJjurzAL6DT
         c/3uO9D9g51EKVEkns7lhR6ZA24S3JIomDaIHZNGk/d8lcnS/Ae8q+GEB9OHM64RtfnQ
         X7iDh0nyK/MvdCCUiBag6lkGGIbxjDp04a6TXBFGdfXhRNxQts0eL0OJ8MgauxCiV9D8
         6vW2HQ0e9J5EiJJE7v9xPvEXOGUIw/iTuXIUG1a0otXVY18kptm5ZAOFKM16wyHV0k2J
         vrAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A//evzdq";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g17si319891ioe.0.2020.04.07.10.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:22:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id d17so2052199pgo.0
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 10:22:09 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr1741195pgc.381.1586280128643;
 Tue, 07 Apr 2020 10:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200405082451.694910-1-jiaxun.yang@flygoat.com> <20200407080611.859256-1-jiaxun.yang@flygoat.com>
In-Reply-To: <20200407080611.859256-1-jiaxun.yang@flygoat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 10:21:56 -0700
Message-ID: <CAKwvOd=Upj_OcrhBnqf1=woCRm-g2wqjv882R0HQeMJu12Uq9w@mail.gmail.com>
Subject: Re: [PATCH v2] MIPS: Truncate load-y into 32bit for 32bit kernel
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="A//evzdq";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Apr 7, 2020 at 1:07 AM Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:
>
> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.
>
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>
> --
> V2: Take MaskRay's shell magic.

V2 is way too clever, V1 was much more readable.

Can this tag be added to the commit to help us track when and where it lands?
Link: https://github.com/ClangBuiltLinux/linux/issues/786

> ---
>  arch/mips/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index e1c44aed8156..f8fd3c39fb55 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -286,6 +286,9 @@ ifdef CONFIG_64BIT
>        $(error CONFIG_CPU_DADDI_WORKAROUNDS unsupported without -msym32)
>      endif
>    endif
> +else
> +       # Truncate address into 32-bit
> +       load-y := 0x$(shell echo "$(load-y)" | rev | head -c 8 | rev)
>  endif
>
>  KBUILD_AFLAGS  += $(cflags-y)
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DUpj_OcrhBnqf1%3DwoCRm-g2wqjv882R0HQeMJu12Uq9w%40mail.gmail.com.
