Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB2NFXH5AKGQERQOHKFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A504258F9A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 15:55:54 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id g10sf1052205qtr.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 06:55:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598968553; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5GEtKInRu2l3joh+17LAwKeihpMz2EMxL6dONpSdYseiGE7iBFqRFNsT5x4U+Y+MU
         26Fnk1mn2VArHJP49vBbu2dxMLhzGI7y7bX6JJmmO/rxNoCgBo/Y+z1aof19n5mmLgZ1
         Ny0wEAu1kNgrbk6IcM8vXUQPQC3QW4CE7y7HwNxyW+sqjyBdDTR1ohltxmz4tHd8jDAC
         8xEPs/FntYmkivZvmx8wKqrdmL2VITggDHetEcQbAhn8Khii/IWHaJM5JLCAMCXgqJUE
         nFSxpaTXfPeb2zd3cwfbk7Y7xHU6JiuQIoByV0W//Bcw5de11Afu7VCqs6c3CR//bqho
         iX0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tIQQ4+uthVypbTI3lsB1cILkzPXDElIl4YfN4muRzrI=;
        b=zs230UwPZ2xLNE0jRACBt2NqIAfqPegEijWIArK4kE1oUyPQjLm983XKVIqQI6FHod
         UiqBw5drzX/SSegVrmB26bcnFHmNOZBNIpy+nxWpBUO25/XW3ETwaE5gxAu/p3KSt1xg
         9dODjIlA9xNBP6KrM0CkSGETJaX0Y/60/S/rQwW/E79/6t/UZscSH//dkwBVRFKWprLj
         JPBIjrM5+vGCxSsVdUx3FWmRC5KUD2Yav/wUSHXN8oGmI28yUqz0SQwaYgu0Pd+WGE0A
         gbaHapVCRo1WSGg9yOWXuAj87sNgT1mVbzKROhV/XjeReriwWPNLN3lK8MzptMJINiwZ
         IdCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FnafQcK5;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tIQQ4+uthVypbTI3lsB1cILkzPXDElIl4YfN4muRzrI=;
        b=l5LMEcrunRB8s2qxi/KcCOMnwan+iIY55Cnt8PdGhv5pG3cuDVkL8bjSwQrR5hWmgW
         1nlPqO+5IWjGviAe1MfDyYH1fBKGYexRRpaKHDL/LqCKv2tIxHUEsh0VvjyJoy2tRN0F
         PghAj/j9rif0Dls3SffpBLiMpoTCo5fOjo4avrlw8Fy6k68KeQ8hVgvZhCCFIxK44oSn
         dMJ5z2wpBgOxIkZwL0wDF8copL+dhAhwTsF4ehV5D8mhDVQkRcVTIbs3aUAg3Zui6Gda
         MwOZzSOkzHvdI5bW6L/gzKuchyqfZfEWoUMVo45XzNwkX9I4NrdGw9z4Yx7c4qiGtHm+
         g/Vg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tIQQ4+uthVypbTI3lsB1cILkzPXDElIl4YfN4muRzrI=;
        b=FeEoG0fdlrNe5KENT8+/zFgd2eKTc/mihvcn8m59Jh6JjK2NBLccxv5VSatzldRSvc
         WV+f8JpPmbO5qCCOd8tCvdICmwZmxBo7ZjjCrjaa+KiLWlf0WW5AktATVXvukY2lwSIp
         DI+EIuyRQPELi4pPlhMgaeuA33vbycRns2msStJrv+PWleGhIj9oJeSDtaZKkBzPs3nv
         8uJx0023mNA/7aMAJjoWJx/edXKnvRIG2kLOPQD0wUvZS6ofzQLHGE3bsA5kYe1yX3g3
         w9QIMONZVhD31EBoVJF4vbj0zVfeG+GBib3wEvXFxiSWuwxkQA1KDsmlNrxvDvikGDX4
         73Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tIQQ4+uthVypbTI3lsB1cILkzPXDElIl4YfN4muRzrI=;
        b=klO7VYglVKwwtxm1pbG7ha267Vsg0pnvRfl90pAp/7X6vzHnNGAONplFLimKDI2dRo
         Pd3kbLXPd8eFzXQHuoA94VDhV/UjYuWfjLBdNTXVG1Fpd2gIjAhRxg50dLWQevb3QK2E
         MkEXzmC9Rt7eJv5ZOJWKzQ7D+BGV8F1kI9295t8kY79MjibX4jxcjyRSSxUx+KX1H1Fm
         IclW9GmhGuQJdJrncGw9+fI0O2CLmQmCswd3cQebf/t3jL1antMPeKiLYRCrHKE2Ns11
         F7XUZs869o/dJIWcd3Uo+pSEDfqp8Ot4hJGRp5aBDELa7p9gVt8iHPQmAMKR/AN7h7/K
         02tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324c1oCF7HDcP6yARdmkTfxksxk/CMkV/tK9YVceoRpAQ0zeKou
	ldvEvGxda86fL634+ulFUYg=
X-Google-Smtp-Source: ABdhPJwWGZuWI3WPdm8LZjCEKIAkMiby0PJING4H7hewg3oUU62+Kwmf99zB2HWErvkEwRc8+dRmzg==
X-Received: by 2002:a0c:9a0e:: with SMTP id p14mr2093911qvd.229.1598968553144;
        Tue, 01 Sep 2020 06:55:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:eb82:: with SMTP id x2ls269203qvo.1.gmail; Tue, 01 Sep
 2020 06:55:52 -0700 (PDT)
X-Received: by 2002:a0c:e54e:: with SMTP id n14mr2126088qvm.200.1598968552787;
        Tue, 01 Sep 2020 06:55:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598968552; cv=none;
        d=google.com; s=arc-20160816;
        b=0zt0T9R6xUMRc8WR0AKMUfNXSwCMB+NfqyQfUmry8mnub8wmuqLIAqW7sgoF1M0Xn6
         8AECSdwmx9uN/11dtZqvyD+1t/Fe1i3AnIanjQA9HM2dXyeBaP1mk2NuYgrwIpR0d2mr
         FBtP5+aEzUKpwpG2KhwAiW/2RIGHK8lr6Xzx8Xmlj+oNRE8cCafgi7FPqhWKPkmpxGcO
         purxaHCj8f74Um9QcXxTCopZAi70icd0NmhLiRT18PKTZ8rPZpx+LScEUbZUVTVxECgt
         QJFB8Kw8S6quSEfd63cTxDTLRlNNGaj+v21EPpl5yZsZIkrZgWw2tS1hr4xzR68Dzu+M
         OqYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=auSG8HzNptzzyjz8pWXNKZpHnASP/U1wFsRM2hl4jxE=;
        b=omI4Ds2BdBJAzH+9V9+GbB8JEd7gdtlz5ketP1xaD7BPJWQQr9QIJy/KySus34kmCp
         j0zaF6JeptaNSWGSR48IApRLOUsHwq33yAlJA3ptwaG1vt+GBN0KuOA3IyRGw9WF2T5g
         rStoOumI7pYiB26Q3d13Z7oQhn2Oh4M/8NrJk+r1Ve//CjpMeVPaiSB0eJ5M7OvTgz+9
         U5YNFR6FLHLuIPVmaesuspZp3c9zQbMs+u9I3UZHMPSW1nnnPEHbQOATO0sW49rjohZu
         Lefx8CtYZVSt//BV1fYMpkGsUBpfvzmNohvrEs2KyoSt0HNu5fuFBRrhu6a5AYslniG/
         +fXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FnafQcK5;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id x13si73919qtp.0.2020.09.01.06.55.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 06:55:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id x14so1202233oic.9
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 06:55:52 -0700 (PDT)
X-Received: by 2002:aca:ec50:: with SMTP id k77mr1161530oih.35.1598968552301;
 Tue, 01 Sep 2020 06:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 1 Sep 2020 15:55:40 +0200
Message-ID: <CA+icZUVWMXFJ1K1Mkfm9mnTAgoM4-avww=9BPn5msDNMvrvN+w@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] set clang minimum version to 10.0.1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Marco Elver <elver@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FnafQcK5;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Tue, Sep 1, 2020 at 2:23 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Adds a compile time #error to compiler-clang.h setting the effective
> minimum supported version to clang 10.0.1. A separate patch has already
> been picked up into the Documentation/ tree also confirming the version.
>
> Next are a series of reverts. One for 32b arm is a partial revert.
>
> Then Marco suggested fixes to KASAN docs.
>
> Finally, improve the warning for GCC too as per Kees.
>
> Patches after 001 are new for v2.
>
> Marco Elver (1):
>   kasan: Remove mentions of unsupported Clang versions
>
> Nick Desaulniers (6):
>   compiler-clang: add build check for clang 10.0.1
>   Revert "kbuild: disable clang's default use of -fmerge-all-constants"
>   Revert "arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support"
>   Revert "arm64: vdso: Fix compilation with clang older than 8"
>   Partial revert "ARM: 8905/1: Emit __gnu_mcount_nc when using Clang
>     10.0.0 or newer"
>   compiler-gcc: improve version warning
>

I have tested theses 7 patches together with v2 of "Documentation: add
minimum clang/llvm version".

- Sedat -

>  Documentation/dev-tools/kasan.rst | 4 ++--
>  Makefile                          | 9 ---------
>  arch/arm/Kconfig                  | 2 +-
>  arch/arm64/Kconfig                | 2 --
>  arch/arm64/kernel/vdso/Makefile   | 7 -------
>  include/linux/compiler-clang.h    | 8 ++++++++
>  include/linux/compiler-gcc.h      | 2 +-
>  lib/Kconfig.kasan                 | 9 ++++-----
>  8 files changed, 16 insertions(+), 27 deletions(-)
>
> --
> 2.28.0.402.g5ffc5be6b7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVWMXFJ1K1Mkfm9mnTAgoM4-avww%3D9BPn5msDNMvrvN%2Bw%40mail.gmail.com.
