Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTG2VDWQKGQETKAKLKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2F2DD120
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 23:23:25 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id l7sf3697375otf.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 14:23:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571433804; cv=pass;
        d=google.com; s=arc-20160816;
        b=WPqBQPhO7dVHrJJUqS0lGiCxOGA4CpOv3oqSCZVdBbSsg6jp5me9kaUphte4PizBo3
         q6ylEDe4fwZR9I7QP7q7eRNRJM7f5fwwl39IEEaUlI8XFv0zE9Qc2Hi6Ha0v7ClvPiEj
         hOwwMKRMuBA55wvfZ+UghrBYlTGpR41usJyK8fZCEtm/cg6rS5M9Dlrf78x43hixD+6q
         daX6XTyZR+GR2SSlqPMyn8l3O6Jg6if24vE1FCcEtPSKMIl5pQQ2X3S10tMH/uX/PAFr
         s+r/T2AOUhsmmE8WEvGhapjPgH3E6sNPcwTB7KPzeXO7g2Z8FSAWCdGXIjBf/X5l3VSr
         6gmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EIplRWvqPisniH30gjyGkpSiJ+6p7EMfFOuULXP1BL0=;
        b=AYeWfxDWtowl4f7vJPYHbMhiHEEvM3d9NOaVEf9cShEt3/g3jNqZmXCVHx11xbYjdB
         Kao7gcUgsavOVa//shG9iLeQqFyPx+vYGGMWEzSg472FUcBhYIIq09iJsG6u3p4izThy
         a07jE5w/nWuBZ1oreG0wS5i7Jv9gVD7lTKDT2zHP931jmdgTZni2AtwoQrkdkBU7FOe5
         IbmrP/dsADTObfF6pnXZoaU5BuzwIdCivw73tT5AABvTe6TDFQe+9XINneFn7yuVaxy1
         2Gdl2QzXkJhpn2h5KQCZVzsV0kCGDr80QmjDMZ7eAruN+IlZ4Ey/iBHUeUMFWOCCd+0S
         yCqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kmFuT5Kg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EIplRWvqPisniH30gjyGkpSiJ+6p7EMfFOuULXP1BL0=;
        b=RFNBkMrjPcg2u9dXJDUn9gq4fR3JkbZJ5cZiuPm3lGiWtqN9lTmBrYXvOMb4JnhRhm
         +6Ka1fyLXAMwmvTwYufGcPMbng2+1VNrxdq33jm2VLaEipcZIwgMu6KKInlBiZF/qLEr
         53rk0WngOLl8fnMZYAwLUoTfY0S/9MgJNKlHrAHSYVNIKFYSN/IVuJAWp2Su9KOhOw8N
         Vc+miFSO48CrOCOnTR11suk3ARVEQFiSIgwwuC6z2mleL4skflJVXNlEu3jHmrFQ+LBx
         1YguLcL+tp0VXfxPabiGmdjj5FsZH1UHpSUlvNe81Y9bRSvvnoEbS7pku/lO0M4+tnGk
         feIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EIplRWvqPisniH30gjyGkpSiJ+6p7EMfFOuULXP1BL0=;
        b=MJBCBFEqFXQSRovZpB7izb0vp7WPducm57OXCW5D3QQ2oQiGFX14mqV8atrMut4ZDS
         IIaWo2zViAhKHdLzm7ygjToLoYM/wQCzNJi+09lAVByF6yZd3Wbnug2KXNunO1Jdixbj
         jwHe4QkjrMnnZcDNKaX9x8cas4Xs6/twxvHzIzcGPsO4dpjSmrS9+0YN1id51h3eoFjG
         7fwO4Y4QTRZJBNpNhI0Ob6rMLuJaS40wgWGGuoa7JDAoPVMn5gC74FuWkpYRrJsvX0Du
         YTDwwLSVZxZ+cwVhEb3rMCB5pk/kUPLTLUygAJzfTscZD22ytm31znbNzNat8Fmxdq5o
         YJ1g==
X-Gm-Message-State: APjAAAWPhfD5Iabwf83PnPzUJon+V1sPEPRMTtv9d7QOOdtM4ifeQuaF
	BbptzWqv/tmdaFh1nSTXxHM=
X-Google-Smtp-Source: APXvYqzonS/+vdebR4FwTct0soGgMWzWdQbK9cXC8m6TBXAiekbZBGowOoquKmQWGK/1uo+9mixNlw==
X-Received: by 2002:a9d:4719:: with SMTP id a25mr9505363otf.83.1571433804813;
        Fri, 18 Oct 2019 14:23:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ed43:: with SMTP id l64ls1267118oih.3.gmail; Fri, 18 Oct
 2019 14:23:23 -0700 (PDT)
X-Received: by 2002:aca:c788:: with SMTP id x130mr9967974oif.91.1571433803362;
        Fri, 18 Oct 2019 14:23:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571433803; cv=none;
        d=google.com; s=arc-20160816;
        b=C7G6bVRL3LoHAgzlErD9v2TsarSJC+tBo9TXMj+r5SXIYweFOxDWUgCkAZXYmvPZQX
         5u9m6zX7gUCS0Rt0oqKFeNYKUiLIzasFjcYD5F7AfPz3biSTO0eCHV18oJiGKvNjJ4RE
         8KYaoNkzqvsWUMh2UbR28B6IsGVcrLl5DvADM4hbl0SnDxx9sYSYvBEwJb+Y4I37NS4a
         cJPEkOl27AXC5ngw+jWq43yltQrUyrzB4hirRJ/L9rypf1IO3MCCOVChaUpmAs1ad/ln
         UwPAC+Hb5eO4urDy5laGpc7P6+626G0LcEzzzc2s7byYOSD7owQECsH680Et8b47XlY5
         n/Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vIoI90AJcGtmRzHkaXHGdwrJxP2gbeW0bBXLDxZIi6o=;
        b=bprNGizE+zN44D/tJAz06zmWcVPars5fkhVQKfc/m0dAdykejJEwgv5WapuUZ4YPB5
         2OMoPw2Lkh7TxJYrOpGx6trQfujwTAN1EbdkMqXkIwLy8WtuwERHima9ae/PayabzK7h
         Fgs2Fkc3nDpWcoqrU+Xm8FiqnOl55fhz9M4Sb6BIMFRBdifOkrin8pwX+y8NwUCSx463
         XUadyTySd+YRoOMf/LYoZZd9GJnLqdzVcCx6X65lXRowdmCD93rHyGh4cwodhxPn49EN
         E0lOr6bs0nnfjTVGurBTWbER5k6Sggdvie3jWwIkZZDkjs9YsYW0hpehofhUuKHWSK+4
         d3jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kmFuT5Kg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b11si575486oii.5.2019.10.18.14.23.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 14:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e10so4013260pgd.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 14:23:23 -0700 (PDT)
X-Received: by 2002:aa7:8210:: with SMTP id k16mr9015314pfi.84.1571433802129;
 Fri, 18 Oct 2019 14:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-13-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-13-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 14:23:10 -0700
Message-ID: <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
Subject: Re: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kmFuT5Kg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Oct 18, 2019 at 9:11 AM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Only reserve x18 with CONFIG_SHADOW_CALL_STACK. Note that all external
> kernel modules must also have x18 reserved if the kernel uses SCS.

Ah, ok.  The tradeoff for maintainers to consider, either:
1. one less GPR for ALL kernel code or
2. remember not to use x18 in inline as lest you potentially break SCS

This patch is 2 (the earlier patch was 1).  Maybe we don't write
enough inline asm that this will be hard to remember, and we do have
CI in Android to watch for this (on mainline, not sure about -next).

Either way,
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Makefile | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 1c7b276bc7c5..ef76101201b2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -55,7 +55,7 @@ endif
>
>  KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst)     \
>                    $(compat_vdso) $(cc_has_k_constraint)
> -KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables -ffixed-x18
> +KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS  += $(call cc-disable-warning, psabi)
>  KBUILD_AFLAGS  += $(lseinstr) $(brokengasinst) $(compat_vdso)
>
> @@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
>                                         include/generated/asm-offsets.h))
>  endif
>
> +ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
> +KBUILD_CFLAGS  += -ffixed-x18
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS        += -mbig-endian
>  CHECKFLAGS     += -D__AARCH64EB__
> --
> 2.23.0.866.gb869b98d4c-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-13-samitolvanen%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DrU2cC7C3a%3D8D2WBEmS49YgR7%3DaCriE31JQx7ExfQZrg%40mail.gmail.com.
