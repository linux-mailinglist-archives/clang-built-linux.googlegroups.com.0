Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7O6W74AKGQE256KO5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBF821F876
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 19:46:39 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id x14sf9789217pln.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 10:46:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594748797; cv=pass;
        d=google.com; s=arc-20160816;
        b=fc9uJlsd+nTkjPof5c0TqndIw8SptfMGFEQBGObMQrC8unWGt475144jHGUdiV/8eG
         l5JHN8y+zPOlCL2FBgGumRtRub4CSOLh07SLJMbqTljrY/12OXr/4yEvHLFC16yqdQ+U
         VEQGf0npDkZa9yB8BzPYv546lHUf2EHh5xH7I7dbje7gBnqo7ufNqY5bwhHVAXaC9Azl
         XaJLbbLU/boP3NjXl2XjPHQhc6x8QTRa8zZmY9hSTOoXmTfHPU9K1IOtoPtj+hEbvHFD
         BtpIMAZ8+WQv6jRC3qO3X/zM8uNl7Xh6s4uZWacwFxaEogJlt4eG97NnJzNjLmPE1taf
         7/cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/ubtAGyvgfB5KGWyTYXfRtSkIHnAhAEnkhohR5lgzoA=;
        b=i2wJSx5+WH2MFNoEYmgeecivBWBkAydUDsGyl8VmQ1WjRFnrMlhkS92z/qE+K1CLWU
         XxKRy2BSPlPWYTiRdo92KgybE4ch8Pb/dv2ufgguQ2+O7SD25b6uibK56CrGJwzd4InJ
         gVgMRbHcJqe75SG+EDSJgdvMHeTX0qhbmyvHydZSoaMty08OQ4f38VhccnKEW2vR/DPE
         5go3IwE0Scao+bvvSTo+AKi1zyI9AUkVqesjT/MzQhpvFhgVWs2AcfwOxw1/kB5yIuwV
         DiI/Xv5YjM0Qgmluj4+CGzrLYsr8aPrHUbd+VUh2DNAXOsvg9aEcZDSHcTxhkpM2zXr6
         681A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rQRl75iU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ubtAGyvgfB5KGWyTYXfRtSkIHnAhAEnkhohR5lgzoA=;
        b=i7HAi4Zf1H3uVroHARFSaR5Uhvi0jC2HzkZM6YqgH5V0zWYGk343UPrOtlu04D3mmq
         5N/Ncdgbkf/aDmctrJh7/Zw2skH4dfummW8OPsSJ2lDfaO0+wubQa5uS/ga/BcXsVlI7
         ih5yIw32mevNkp6/knX3HvIJQXdJrBFFEzzmmqQP07dPilwTv14L6edZ/z+r3voecTWC
         GBw20eEa1FSje6hpRUEXMAJe/eliSuNQmAQk5VK0gwd7xYX3M8Zl9Phus2ZYwmYAADAF
         MZ5ziGWcmQYsL/+ag3vFXEY4fiAJ5urYzPHd0PDaojtHHBIitVqWqBXh0kG1mM14/cCk
         G6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ubtAGyvgfB5KGWyTYXfRtSkIHnAhAEnkhohR5lgzoA=;
        b=NZbjufLrzQ++8TzRH16uyBAj3lPB2KqjeBmEqHd6PBfQb7qe4xmKPq+3blts4aWWqV
         u0NdIAsE1r3c/0n5YgJjsdRdVCfutbqzIKEOYCaNIC529IvrEK2SDbK6NmF/iA2gOG10
         EQSi8LCwqFmCHyavjcLsIEZF1WpAY3O96mLQDDsIauGiRqL5ygj89TEkSb21U+zznNqk
         kglioya8qfVvLAXJfzuGF8ZLKm2xLT8qC6EFdqCcmV285GrpN6OXqiT+7M5nMgNdYIrj
         1ST6gQ3c1qG25Aj2i9e9p5yJFb2RfwKbMnFlt7o9DaVKCDRJwobTRcDR8kHiqeeNY40e
         UUKw==
X-Gm-Message-State: AOAM5316M8Q9z8TjU9w1+GQeHKIZiAMH61YW/mPlMQLUqmpLoUwCtEgE
	CDQbFnHiGtaQ6GzdKP87rjY=
X-Google-Smtp-Source: ABdhPJzpVZFT7QlJggCnl9HbvecQ6BtDhU3qYRUIeYfMlOby4NxLz7l9DY/lzr40GzrT+qbPC+brYA==
X-Received: by 2002:a17:90a:17e4:: with SMTP id q91mr5699714pja.61.1594748797516;
        Tue, 14 Jul 2020 10:46:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff08:: with SMTP id f8ls8234036plj.1.gmail; Tue, 14
 Jul 2020 10:46:37 -0700 (PDT)
X-Received: by 2002:a17:90a:2c0e:: with SMTP id m14mr5938281pjd.166.1594748797004;
        Tue, 14 Jul 2020 10:46:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594748797; cv=none;
        d=google.com; s=arc-20160816;
        b=fDdA19dlRgh8c1IjUGdgXIWGT8uPfAof10O6Mrxg/ADChZRiM21ZzjE8/rIYbfhqZ6
         gvOyAK3/5ZTbBCwb3gGWOSwJXrFOYzdM8Q/I7pQWLBilIyF+9e0FY2h78PFEJrNdC/5t
         aVvBDvlpjbjK3ojq6zV7X7KKSQv/G2Y6CdtiUZSLyPWM9j3Sw9uU2vCdgor9FPCX051H
         F2ubXxy0PQ2Hv1Aq85kaM5Ig4AIlUGtmaUQC2OG00IcVIWjeqGx3bO60tqINyswx1RnO
         LKSCM/y/F1+TZe+7cLIfRxphoyn2o73SrVkgSMKlH5/FvoPLPffBaavEnNSOG8y3OjtU
         6uiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zVAqQ1RrD/8AbvIkruHdsHuHjF9WaxXjKmuECQBQMDs=;
        b=H1XMY5stqcxbIe8EHrF3NicuCF5CrRoQqQaAZ7sDXq7ObjgBhYgpEYPzAopcf9+HWP
         qJBrp2oRop1UgWCp6CDZp8SBblI+JuwbBrPOezP4RnOoHw8ATqG1bU2qfl2Fjj/q4XHZ
         Bxif2CTCt0krYqB5CPvQSiK0RQtjcpXllz4u3eR5cZzvztJFaYWADhYQU3m6cc99S5Mz
         PNhMN0MYNSqPTkvO38xAdAyaIW6w7APfxzm59UarYL9Y3fPOLi4AiW/dihJ6DSRNdHL3
         4BKRwCkaCUyRk+PNIIiLn7QkBvmUDJKdSi+KNAutl9dwGaiZp8LBkpquGiL7VOT6Z224
         hEjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rQRl75iU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id y9si970934pgv.0.2020.07.14.10.46.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 10:46:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ch3so1945518pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 10:46:36 -0700 (PDT)
X-Received: by 2002:a17:902:d311:: with SMTP id b17mr4752076plc.223.1594748796321;
 Tue, 14 Jul 2020 10:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200714111103.14591-1-sedat.dilek@gmail.com>
In-Reply-To: <20200714111103.14591-1-sedat.dilek@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Jul 2020 10:46:24 -0700
Message-ID: <CAKwvOdk3WSMhMxxaWfFeWYkR=xYgwrREckS+X5Yg5QeC48UVrg@mail.gmail.com>
Subject: Re: [PATCH v2] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	Wei Liu <wei.liu@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <caij2003@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rQRl75iU;       spf=pass
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

On Tue, Jul 14, 2020 at 4:11 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> When using Clang's Integrated Assembler (LLVM_IAS=1) we fell over
> ClangBuiltLinux (CBL) issue #1043 where Jian Cai provided a patch.
>
> With Jian's patch applied another issue raised up when CONFIG_HYPERV=m.
>
> It turned out that the conversion of vectors to IDTENTRY_SYSVEC in
> case of CONFIG_HYPERV was incomplete and fails with a build error:
>
> <instantiation>:9:6: error: expected absolute expression
>  .if HYPERVISOR_REENLIGHTENMENT_VECTOR == 3
>      ^
> <instantiation>:1:1: note: while in macro instantiation
> idtentry HYPERVISOR_REENLIGHTENMENT_VECTOR asm_sysvec_hyperv_reenlightenment sysvec_hyperv_reenlightenment has_error_code=0
> ^
> ./arch/x86/include/asm/idtentry.h:627:1: note: while in macro instantiation
> idtentry_sysvec HYPERVISOR_REENLIGHTENMENT_VECTOR sysvec_hyperv_reenlightenment;
> ^
> <instantiation>:9:6: error: expected absolute expression
>  .if HYPERVISOR_STIMER0_VECTOR == 3
>      ^
> <instantiation>:1:1: note: while in macro instantiation
> idtentry HYPERVISOR_STIMER0_VECTOR asm_sysvec_hyperv_stimer0 sysvec_hyperv_stimer0 has_error_code=0
> ^
> ./arch/x86/include/asm/idtentry.h:628:1: note: while in macro instantiation
> idtentry_sysvec HYPERVISOR_STIMER0_VECTOR sysvec_hyperv_stimer0;
>
> I and Nathan double-checked the hyperv(isor) vectors:
>
> $ rg --no-heading "HYPERVISOR_REENLIGHTENMENT_VECTOR|HYPERVISOR_STIMER0_VECTOR"
> $ rg --no-heading "HYPERV_REENLIGHTENMENT_VECTOR|HYPERV_STIMER0_VECTOR"
>
> Fix these typos in arch/x86/include/asm/idtentry.h:
>
> HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
> HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR
>
> For more details see CBL issue #1088.
>
> With both fixes applied I was able to build/assemble with a snapshot
> version of LLVM/Clang from Debian/experimental.
>
> NOTE: My patch is independent from Jian's patch and should be applied separately.

Hi Sedat,
Thanks for the patch!  Nice job finding the fix.

I would like to see a v3 with the commit message trimmed a bit.  In
particular, you mention that Jian's patch is unrelated.  In that case,
please don't mention it in the commit message, drop the link to issue
#1043, and drop the lore link.  I think if the commit was just simply:

```
x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV

When assembling with Clang via `make LLVM_IAS=1`, we observe the
following error:
<instantiation>:9:6: error: expected absolute expression
<rest of the diagnostic>

This is caused by typos in arch/x86/include/asm/idtentry.h:

HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR
```
Then the tags you have below minus the unrelated ones.

>
> Cc: Jian Cai <caij2003@gmail.com>
> Cc: clang-built-linux@googlegroups.com
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Wei Liu <wei.liu@kernel.org>
> Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> Link: https://lore.kernel.org/patchwork/patch/1272115/
> Link: https://github.com/ClangBuiltLinux/linux/issues/1088
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---

Otherwise you can put some additional info here "below the fold."  It
doesn't hurt to say "I also need Jian's patch to completely build with
LLVM_IAS=1" but I don't think that should be in the message that gets
committed per se.  Sorry to be a pedant about this.  With those
changes, I'd be happy to sign off on the patch.

> Changes v1->v2:
> - Add Wei Liu's Reviewed-by
> - Add note to clarify my patch is independent from Jian's patch
> - Add link to latest version of Jian's patch
>
>  arch/x86/include/asm/idtentry.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> index eeac6dc2adaa..d79541bfc36f 100644
> --- a/arch/x86/include/asm/idtentry.h
> +++ b/arch/x86/include/asm/idtentry.h
> @@ -626,8 +626,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,  sysvec_kvm_posted_intr_nested
>
>  #if IS_ENABLED(CONFIG_HYPERV)
>  DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,    sysvec_hyperv_callback);
> -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,     sysvec_hyperv_reenlightenment);
> -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,     sysvec_hyperv_stimer0);
> +DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR, sysvec_hyperv_reenlightenment);
> +DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR, sysvec_hyperv_stimer0);
>  #endif
>
>  #if IS_ENABLED(CONFIG_ACRN_GUEST)
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3WSMhMxxaWfFeWYkR%3DxYgwrREckS%2BX5Yg5QeC48UVrg%40mail.gmail.com.
