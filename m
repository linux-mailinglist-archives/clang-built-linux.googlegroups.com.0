Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCUP3KCQMGQEW7OZBEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7EF397A8A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:16:27 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id bn8-20020a05651c1788b02901274fe2c687sf2395771ljb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:16:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622574987; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1AKTs6CjfkmkZX0quzrhlI1aHqLaiJaH58ZxMXm5roPaKGcqK1g2djbLYESuztXgM
         AZ0320yt2rfgW63ZsCkW3hrVTChPUy7XxM+rcZyyS1jNlBHGUsepGEpoQIr+qnn2V71I
         ybcVqEybuIOf+6EpO2i5in/yTGgpu+n5qO0UhfwPreRpt9m15i/6n1mOUDETh5nPqcjY
         AIZmTiPVTnaqL8tI2QhFlVZLO1sSQ1mPNLqlsIJIsdv3HDGCF66N/OJylF/+vgC80T+Y
         SisXheGShLTUIrz4j5Se85qnEGri6haWP4vUT8NhAxIOofc0nk3v49dwN8fJH1JXrFBE
         2nmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fWH1UOV/pBEu3QvEAFBvQvEn3m6cSN3GCVOTFRy6vQE=;
        b=DfsceFkTuimb3yOQJlvyUnAG7Do+ICwpRKg+5TOPCJCOu+UOOKmsXWIo/i3Hg3igbw
         l73yOfTN7N2L9+MT6pgEiqGtl3FKSwz4RGds9WHy5PcP/Iri41ed/JKifsntgkcYdoEb
         XQZbM/SY4hay72G6QH5mzo5i814qJtTnSYYlQ4aXYw4VqtU5i8+kOPr+4aYm1VSgDeKS
         wdnnDUkTUPk5s0b5C/n//qLqhPjzyl9G1fYFT9g4That48VvNq3WRQKfCoaIMboN2ft/
         PQaGolsPZgbXJgYt+iWhtaYuuD8+31VCkYucsMBor1UOUu/bmVp4bx1s1siGcQ385l2P
         g8xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JNQVKx8Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fWH1UOV/pBEu3QvEAFBvQvEn3m6cSN3GCVOTFRy6vQE=;
        b=Xl2B/DBWzOHnuldVe4tPnTDhy4cXeVNg27dkekxcsN3basmZx2X+umZAxiCVVLg/Ip
         jY+Ny8eslmsiGx7Q5k8alao1nWMTOBTCfJ2SUeQfUdxSZLs45zuT3O5kF0AqMGJIMb5O
         +kUqwAzigeTqTQIE3TM3MiUEztZagW+j0h+/ildPHc0ofyoz3dVr80QSa8278n1qo/Fb
         fpWLWbqH38yW8ggk38lLY0rGlcABSd/qoM2e4wddkv6AXCrcxz6tX8h6g8Gv/hNAM8jT
         8qOL7+JRzPl2/WKDEP2n9Xm8GXnn0J5ChAsBc+qMJaMhPoDxCsqMhZO3XWTFbJ70iLOs
         UjWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fWH1UOV/pBEu3QvEAFBvQvEn3m6cSN3GCVOTFRy6vQE=;
        b=KE31wCEVOFqy8MtA0MRhb53LJH2bQotDsup+1bbmQm8rDJ62T5tBvVh8PQOdTJ/Zfz
         XWz/EYlBrFp8ZnUT57sf45NYG5FlCmfdCoMlfrq1ONoateYqUiy4sUxIMJA1YxIgag8s
         mB7c23qMneGIJguLaMuy6vIPbHQn15LZZiVzFzKNnmUJUFecgkcOUvpN5qSYiIB3o6EJ
         EncrQfj37/ZKo0/WyNay32/GWMsc60yyJzIIkvta7aPDG4BGuzFaV4Wd97NBp661l8pe
         SDImCR71gOysps2C2ulZSqz7dMZibvjWi87rvt5xjX9tyVXpB3r+oQkssfrw0XO5PgGI
         1K0w==
X-Gm-Message-State: AOAM532SlZm2J6rIOJc93RQ1I+RtXPz5342OGWPZnSc9gToKjnH2MxZa
	H/lxU7kvvjTBnYkpNrffZqE=
X-Google-Smtp-Source: ABdhPJwFR7+V+V56nu+cs9UjicYw6b8CXZQMZw97ETJ4xK8ilmy1UDO0sn4dGy5bym88nT/RrQRhhw==
X-Received: by 2002:a05:6512:20c9:: with SMTP id u9mr19911916lfr.158.1622574987073;
        Tue, 01 Jun 2021 12:16:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:54e:: with SMTP id q14ls1940694ljp.9.gmail; Tue, 01
 Jun 2021 12:16:25 -0700 (PDT)
X-Received: by 2002:a05:651c:201b:: with SMTP id s27mr22529512ljo.190.1622574985896;
        Tue, 01 Jun 2021 12:16:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622574985; cv=none;
        d=google.com; s=arc-20160816;
        b=iBHVXLef7ZfdzX2TxEPo+5ImpA/GBZKYfIKBcgDCGYT2QcBL0se8ymcOOcPJm1olMp
         X0tdzYuN0CyCVFBaXDYaHxXSyrmB8muEJxoA7tWDjjnilXgptf4rmhRlSZV9I6elIBI6
         MWCBY8PizmCORB0RM62G0cNGXo3T9FBNBAoEay/LMOVxLkYaGvygpoUQdBBwcnzPFQ0A
         QluFbNUSir27MXOgdt4jb4OeTun4vgUitAU15WXZhtcbwP+tLCDRC/2uCy+spYPoo9dH
         gjVLWprLIvk23RXRnIC/aWToUYr/lq65tMOMOBX2fiD3ANGleprYvUoXyopBE8tGAwnu
         uVmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=V/jOJxrVdwVgkU5pbHsyaxFrpR7j0sbYKE51g0U8/jE=;
        b=cuj0ykyv+LgDw4RG2MBWXL9ihoZpeVlVvoqHqO4YAqORTTDPoAi1Cu6GaNzTPLIFCZ
         6sYnCQrTLhJldmdgN5S+5kGiHmMUwyQrPUWugYdc3SSKTNwf0rXqLEI6TG9eBmjUIZyT
         +jutn8rV0gZ4q+wPL52yMteqyPeqWyWjFibofd/loDL1VhdY+BGTzFxo8PAxEyamtXu8
         IxXw3rvjUejiEfptSZ+Ou29yep8tzmwT1UwAjuPPY3acsbP+T89zEEbRAcEfqqBMq49q
         CY/FqVZTeXAqRytlHpP2FspzzHlcUKmjTwfiqYvN8+eETx/GMOBfkYdDtxGAeIaSWI4J
         wvZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JNQVKx8Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id p17si18064lfe.0.2021.06.01.12.16.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:16:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id a4so20762151ljd.5
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:16:25 -0700 (PDT)
X-Received: by 2002:a2e:6e13:: with SMTP id j19mr22336288ljc.116.1622574985372;
 Tue, 01 Jun 2021 12:16:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210521011239.1332345-1-nathan@kernel.org> <20210521011239.1332345-2-nathan@kernel.org>
In-Reply-To: <20210521011239.1332345-2-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 12:16:14 -0700
Message-ID: <CAKwvOdnUdQHMungT97KcECo-HzMSLeDM7s=JCGh5XwOkR84+Rg@mail.gmail.com>
Subject: Re: [PATCH 1/3] hexagon: Handle {,SOFT}IRQENTRY_TEXT in linker script
To: Nathan Chancellor <nathan@kernel.org>
Cc: Brian Cain <bcain@codeaurora.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JNQVKx8Y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
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

On Thu, May 20, 2021 at 6:13 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Patch "mm/slub: use stackdepot to save stack trace in objects" in -mm
> selects CONFIG_STACKDEPOT when CONFIG_STACKTRACE_SUPPORT is selected and
> CONFIG_STACKDEPOT requires IRQENTRY_TEXT and SOFTIRQENTRY_TEXT to be
> handled after commit 505a0ef15f96 ("kasan: stackdepot: move
> filter_irq_stacks() to stackdepot.c") due to the use of the
> __{,soft}irqentry_text_{start,end} section symbols. If those sections
> are not handled, the build is broken.
>
> $ make ARCH=hexagon CROSS_COMPILE=hexagon-linux- LLVM=1 LLVM_IAS=1 defconfig all
> ...
> ld.lld: error: undefined symbol: __irqentry_text_start
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>
> ld.lld: error: undefined symbol: __irqentry_text_end
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>
> ld.lld: error: undefined symbol: __softirqentry_text_start
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>
> ld.lld: error: undefined symbol: __softirqentry_text_end
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
> ...
>
> Add these sections to the Hexagon linker script so the build continues
> to work. ld.lld's orphan section warning would have caught this prior to
> the -mm commit mentioned above:
>
> ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is being placed in '.softirqentry.text'
> ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is being placed in '.softirqentry.text'
> ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is being placed in '.softirqentry.text'
>
> Fixes: 505a0ef15f96 ("kasan: stackdepot: move filter_irq_stacks() to stackdepot.c")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1381
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the series, and sorry I didn't get around to reviewing
before I took time off last week.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/hexagon/kernel/vmlinux.lds.S | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
> index 35b18e55eae8..20f19539c5fc 100644
> --- a/arch/hexagon/kernel/vmlinux.lds.S
> +++ b/arch/hexagon/kernel/vmlinux.lds.S
> @@ -38,6 +38,8 @@ SECTIONS
>         .text : AT(ADDR(.text)) {
>                 _text = .;
>                 TEXT_TEXT
> +               IRQENTRY_TEXT
> +               SOFTIRQENTRY_TEXT
>                 SCHED_TEXT
>                 CPUIDLE_TEXT
>                 LOCK_TEXT
> --
> 2.32.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUdQHMungT97KcECo-HzMSLeDM7s%3DJCGh5XwOkR84%2BRg%40mail.gmail.com.
