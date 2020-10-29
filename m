Return-Path: <clang-built-linux+bncBC2ORX645YPRBF425T6AKGQEGSJ4OKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CC329F439
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 19:42:31 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id f3sf1606953ljc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 11:42:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603996951; cv=pass;
        d=google.com; s=arc-20160816;
        b=sEtnuUSXU+TVxSBZ6XqA57TTbEaVNPVZuSGBg/djvomVYzMgJ3KyxXiBpEixhYalkK
         pJhtHeycDN6Lvghd1yGtHk2hJOpPC8wgZIpK430TAbdDpv5UpE+gICP0uUwYOSsmS1oh
         oEg49MKrfXHZYMk1uSuEes5yQy5Pcm9pKW2rXNU1CKxJUEFWWqOLnim4OiaiSGQSR1VZ
         07ywQwn+z25C8tp2orzEu9PgXHb3hG+6bNRJs++cqTO61ZIeAxQyuYamKsXDLc80losN
         N42AIjuPjjRv5RqMtAJ2jvvaMCV9hZhi+NYIjhLiGZmypOsoz78jsjtXf8DuENi6kqzT
         eFSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JTmzqDGZxslE99wJ6wz/fF3EJ2T22cVd/ct0Ll+kfPA=;
        b=ZcVChSvz+lh0glgEUP6aCFOpvL+rwNK0sLbLNOcT09wNpE6PVrMiMGPE7cJA+e+1k1
         /p298pNW8tDrVT2+wTMAwF5zXVEOEN/m2fMMEGrahHol3AL2eii6xkiHIF1KgkxZ+cRr
         VyJSV0QeHZaRavfcPHHM5AGJmaK7kktH3aGISiESdFQtavQzYghqv3BNB1W7ZCUXoJwj
         0Uhzk+NYyaybR4IXHC+AvdCdXvMpJyQ0cMRMYHVGPm0nsrz61mYXMu/mNSEL7wJTMrB3
         wNgh9vUWa5d3/XfifvbbitNjxGBAlac82LZaqr/Zt/i8xcNQ1QLCpsL6/Oh4WDeH0FiS
         jUWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="T6rc/5mN";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JTmzqDGZxslE99wJ6wz/fF3EJ2T22cVd/ct0Ll+kfPA=;
        b=X0JMWopcTom4Oz2NbZeGsmYx61o5u89Ag1rgS5szCW8b6R07hMjRbD623hNyIXdK5W
         NAW2mMEPKdgyVBhIiwYBRl+FEwgV7+NRZF7oWWM7DGIwBsdWTvxMFBVkbJey1v954eYa
         GJl4aswOamZWHM2iCAjOTjNWCcUugk+0/iLQuq2BQ9xbOQWAgwR+y9eIO3PG/goeLgGV
         ItdiYO7uAk3HN82R2FOE76IsKAsqLTARBLmWYJ7XSBCBb8wGMIiavFrseyAAI59crrYW
         xBOI6duYWrHYyA7HOeQYQkzfbWgpdj8QiQawj2kCP4q7ZWHuClZf/IZJEK9wCRvKzpDi
         pknA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JTmzqDGZxslE99wJ6wz/fF3EJ2T22cVd/ct0Ll+kfPA=;
        b=iad9CS4siDw4kAYUGcvRu82UzHA32lffxFrq/2bCnGq1KZKKXnMCV+N6oRMQ2dZIhF
         XqwOUZAw+WXVbKlVf/J7p1VRWHCqttUBcuPX2gX9PbmCA93q8UiCSGHJgupEnylHBICV
         48R9y1SMTZ1IkGgkV0cphEpX6ULTEu1MCvg+W6FKRms3PsOONBu8o75dccWULlj2gmYf
         6XRx58YGjjB12rBolInZKc8xlajjqnLuK7DWimxKe4T8YMnKIRXYxBPAzs2SOMV55oM6
         TrPkWomBJppbTLMsSIE4bx1aZK+ah7K+dN9t1jo7Zwy1qcCieeMlvkjMxN5obAM/AIa6
         D4Ww==
X-Gm-Message-State: AOAM533O9GNj9xo0MfuY+0NkvcHmvjEn9pqak/Mz6JxUN94sBKIaRGy3
	9WOq76Xw9EXbh542gryLuXs=
X-Google-Smtp-Source: ABdhPJyiTXLK4pJxWdRoXUgPfzvuT0JmHrMm12Bcb95H1d1FM558RfAxocK021MhkkzGak+aqfO+AQ==
X-Received: by 2002:a2e:8e37:: with SMTP id r23mr2675384ljk.344.1603996951322;
        Thu, 29 Oct 2020 11:42:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9cc1:: with SMTP id g1ls506105ljj.0.gmail; Thu, 29 Oct
 2020 11:42:30 -0700 (PDT)
X-Received: by 2002:a2e:5ce:: with SMTP id 197mr2403949ljf.418.1603996950101;
        Thu, 29 Oct 2020 11:42:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603996950; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5ykgJcBPj+Y2vR/flx/ZAydSRx6NE+8BTiURXj7j3l7B9r4knCiVDwwaeGn4ruvYn
         N0SNhGn2fIW+8vRk2hKUfYTOIo711bD1W8u1L1ieiLreznQWedqBRNnrh3yeIjOXbqaS
         L4wfAsV/yflVui/G0VMEcsCPGx/rGgxO6w7/VY8B9dZEm9xz27SfYxJouxfHSauSTk0Y
         mFYmoHTEw/jXB/KeaYoWy/6HFCiuvNMDvmU/amnzVBFb//D+3t6VJS1xb6Smkb0QUiVP
         /A8bX5zyPvoqGm5q9jc5uMcJznIB/BBXt6kjdwykCKFIvtmqrlaY5KxDcWBiTP+zNb+Z
         ag6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mej6eukC5PTZqXIPkS9F7D1m3B/P6HH0uiBYCexoXFI=;
        b=BNy2UkPg3mGpqb4nlMa+wlqkvw6GNTLV1FwZvpKkRRCAuC1fmlG+QTRUW5f9x0XqG5
         dfMaVY3jFxGF8qMj87bEMS7Nrw5Q89YgyKq1WpyyzwlgBADfd8jqrtBA8YgzLmbDbNr8
         yMSMwUap2wJjyUWO6D3IJB6ScK4QEAzIQpn/gS/7YmahNMrI+JFSEdlIJakWqdMUMUQi
         ErQfw9lWf0eEXCMZsWWSUWzgDOkpl1sbYCfD1FFX7OHT+PJKZsk9P0kQ7t2+u5qqK1U6
         NU8D119aTz+o7DBiJN1QVMaI6WFydrqa/P9WiWKbXIzaoVfM2R4T5dn4nVJD0VCgo+ip
         xjWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="T6rc/5mN";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 8si131726lfm.7.2020.10.29.11.42.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 11:42:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id p9so5236588eji.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 11:42:30 -0700 (PDT)
X-Received: by 2002:a17:906:53d7:: with SMTP id p23mr5363816ejo.232.1603996949344;
 Thu, 29 Oct 2020 11:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <20201029180525.1797645-1-maskray@google.com>
In-Reply-To: <20201029180525.1797645-1-maskray@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 11:42:18 -0700
Message-ID: <CABCJKuceep1jo_hkZA0bEAZxL49K4QbR4aAnOcJnvnF9YdRgUg@mail.gmail.com>
Subject: Re: [PATCH] x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S
To: Fangrui Song <maskray@google.com>
Cc: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="T6rc/5mN";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Oct 29, 2020 at 11:05 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
> memset/memmove/memcpy functions") added .weak directives to
> arch/x86/lib/mem*_64.S instead of changing the existing SYM_FUNC_START_*
> macros. This can lead to the assembly snippet `.weak memcpy ... .globl
> memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding.
>
> Use the appropriate SYM_FUNC_START_WEAK instead.
>
> Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: <stable@vger.kernel.org>
> ---
>  arch/x86/lib/memcpy_64.S  | 4 +---
>  arch/x86/lib/memmove_64.S | 4 +---
>  arch/x86/lib/memset_64.S  | 4 +---
>  3 files changed, 3 insertions(+), 9 deletions(-)

Thank you for fixing this! I tested the patch with gcc 9.3 and clang
12, both with and without Clang's integrated assembler, and the kernel
builds and boots with all compilers again.

Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuceep1jo_hkZA0bEAZxL49K4QbR4aAnOcJnvnF9YdRgUg%40mail.gmail.com.
