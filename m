Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMPOU7WQKGQEH27HY7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F49DDCCD9
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:32:34 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id 101sf3347422oth.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:32:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571419953; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uk8MIgEfKupNE2BrVsOcQe/wMJQ7YtQyMgGRBvQxH2A2oCiJ+swfd2gsGgEeZdclQ3
         gLtd0KCuRYtSsaeC7ynW9tWa2l1lg8PV5CBXHld6MdDHfPthzgq5vEApVGpfHfK7MSz/
         jwIXUH5ZsnChN+l34zw7uJu+lU8xr1Lj4Dxhb4lywtctBjzZzULwoIbwAggB8YBb7xMW
         b5RuRDwHp0SWYXiNFD31QgnKLBIODUl0znVMZFh23RlKczpbc3152kwpcSJdmEWVoNkG
         S9Qjow3PFRAmHyBtKdNs54Gc4LXAE5TY6w30DqU4QOx3xzKGd5REkq5kWu+rc/WNvioh
         lvyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xrN2byNhknGhsdV/FmB93SJrLZr6NO2E0Xzjajah6fI=;
        b=t97BrQUbt12DJZm4M1IH8mlfxxogIyMfOQv2AvHqPU9QRln9Fnbv8eSo446S0+DyLM
         M0WabiZvWZVWJp95yF5KfqOuDQ9KmE8wHu+0LDp4SqVefK2tg051RNOoDvG6TIlkR7En
         YfdhXTX/SEzW8LDdUHeoJwkXel/1i3YM0Rx7qHG1/xUTNBxz2UB1WAm8S2wxH5hiZoLE
         z8RROA2vg8lops05Lf7OGlptO16HkrA3zdHorSd0PpXmjvG1saJHRLmL/jYQYxcwKy5Y
         7FNWSg6uMQuYC3rRrtWQOJ3iQTbaozdbN3ZZn028ZiMn+wPFb0gbSrybVjnucv6HonED
         0GrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q2GrSm+O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xrN2byNhknGhsdV/FmB93SJrLZr6NO2E0Xzjajah6fI=;
        b=EjA7K3VKMRXMOx8BBwIlIj9coHMOsQC/OwO7xNzC6qUmo/tK0AgcBLa8hx/ta/YZth
         2Pq47/l7gbZ0A6ojj4yYuY950s8bGXzLgG7Ou5/2l+m46+qnt6Ozx+xORPBwAZoC8Ogw
         lyCscnGHJ/FHvZ5ZJwryOiq5OPhbxjBaNbhI6VxqRYIE7O2bAVk4H6TJH76q0PPtadT8
         VmKgNPaul6/Z4j/iqzpgwu2+jK+4w+Ape2RMZ/mn6+d4tSIdu/lPoVPsyl4PBTkiNG09
         a7SSWcnxciRdBQ63rixRw9HGk5//x01CmPHcWCHvfSMscc9omFQKG/pgCvhL7ZXR5UOy
         qcDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xrN2byNhknGhsdV/FmB93SJrLZr6NO2E0Xzjajah6fI=;
        b=r4RvBHJICa2AbYzX3tU6fjte7dER8zxQIaPrXDOImUzUdJyw6lnziLwjZuCukAxwmI
         02XMt13M8TndUH4hNF9mVreO4mkYAuz6Cb5DlwEyrofDE4IBhK75RaeSltq17Tz6aFQM
         VPOtORRs+qiGtPJR0170pWEnj/bjiErzMUSNnKKj563SnEfiNkn+yAHGuvNGED+HLufg
         wtVocGQYdg2znc3KbmkC2kjEd2SihdFvcavuhTcCTHEb7tW4rgS/5T5wlzJ83LOfhIFP
         qdZP5UcjAklJ0S0oBaKjRVEcWVoy+Tcz4RGo1DlQKGJIc/ZSNcOHYwBx6DfZpijPvm/1
         YRFA==
X-Gm-Message-State: APjAAAWERFVYg2vOCvBoRGhns+aJB4kj/XHmwIZk7rMFERaIaXk5AHxB
	p0XDeNG9XY7cxnMPxQZ56GY=
X-Google-Smtp-Source: APXvYqwVM2M2MLNL/LUHwVDTyX+mJb1kJG+iyQRruymG9gLyBFmdb3R1bLWdb1M5KM86lig1pRDS3w==
X-Received: by 2002:aca:4fd8:: with SMTP id d207mr9363220oib.33.1571419953267;
        Fri, 18 Oct 2019 10:32:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1d1:: with SMTP id e75ls1184511ote.15.gmail; Fri, 18 Oct
 2019 10:32:32 -0700 (PDT)
X-Received: by 2002:a9d:7083:: with SMTP id l3mr8618253otj.268.1571419952975;
        Fri, 18 Oct 2019 10:32:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571419952; cv=none;
        d=google.com; s=arc-20160816;
        b=aeohWAZlyhnQFN1NQjPFR9eLC5v8IaOehRsDfyEL7wWSJFY5HTMpeqYDFuwD5L1gjy
         g69kExml5W/LZfz1+Vbhg8ZZND39UUDdYcdjvURmhLQ1U0ay2w+gRorNQ4OpUr2T+cml
         KDVUEoMGOXoOF/5+VJ2bvQCBZnkbW9DVe0RHlOHoK+6IctuSui/cw39j1xJnjZypATJy
         Dm/UdiVMdYoyjiHS27NLoq5cmAioUa5wFYkZdE0KBmslU3JkU2XJq0351oSGJMvawW4L
         q3UB/D3SjWWnZFfFqDwFf+hKXkMYt5rkKZ21uJBeUHdpcjM6J6AqJgvFDb9Gcpio8NAF
         MnXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LUCkDiO1QUpPk5cl+dZgUeLa1d4lsLLAG2MEy31ElWU=;
        b=QeFh1UODHp18+QqSeCcAx8nqDosIzYx1vPLSXWHGcb6W1CiU+iRNGLweyefK44lS9Z
         gvvcKi4xXMawghwi0QrFvcRgVVtQ3H7Nn060ILSrw+LBi13Vzk3sKjR59IWG+ireJgML
         5BNe5dd95ePSeLnGbrLdcq8fb9T+xIVmMbLxOEIryxCucHgzcZXBXG8NNZVsbzfdlKim
         WT2semPjO4oCCocVAhRUUbtolrgSRdNYpssPjxrmZ5pcqd/GecfuQamnuy4XmTFUBQwP
         pqoKs1seeYwe86JzoR79cwjWsCxd2/xBuEzJYVqmcMGp0/d8jK/7Qky9XZ4Ie8bxHIFx
         x/vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q2GrSm+O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a22si342880otf.3.2019.10.18.10.32.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:32:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q12so4292562pff.9
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:32:32 -0700 (PDT)
X-Received: by 2002:a63:5448:: with SMTP id e8mr11186188pgm.10.1571419951879;
 Fri, 18 Oct 2019 10:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-6-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-6-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:32:20 -0700
Message-ID: <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q2GrSm+O;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Fri, Oct 18, 2019 at 9:11 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> Before we can start using register x18 for a special purpose (as permitted
> by the AAPCS64 ABI), we need to tell the compiler that it is off limits
> for general allocation. So tag it as 'fixed',

yep, but...

> and remove the mention from
> the LL/SC compiler flag override.

was that cut/dropped from this patch?

>
> Link: https://patchwork.kernel.org/patch/9836881/

^ Looks like it. Maybe it doesn't matter, but if sending a V2, maybe
the commit message to be updated?

> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

If sending a V2 with the above cleaned up, you may also include:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

I like how this does not conditionally reserve it based on the CONFIG
for SCS.  Hopefully later patches don't wrap it, but I haven't looked
through all of them yet.

> ---
>  arch/arm64/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 2c0238ce0551..1c7b276bc7c5 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -55,7 +55,7 @@ endif
>
>  KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst)     \
>                    $(compat_vdso) $(cc_has_k_constraint)
> -KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
> +KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables -ffixed-x18
>  KBUILD_CFLAGS  += $(call cc-disable-warning, psabi)
>  KBUILD_AFLAGS  += $(lseinstr) $(brokengasinst) $(compat_vdso)
>
> --
> 2.23.0.866.gb869b98d4c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSZ%2Bf6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg%40mail.gmail.com.
