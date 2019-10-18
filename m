Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNGXU7WQKGQEKMX5NOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id C580ADCBBE
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:43:33 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id y2sf4074300plk.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:43:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571417012; cv=pass;
        d=google.com; s=arc-20160816;
        b=klhlbhOA5mobWE9TwO8D97M687WIhUBU5H5OijMurtb+lf+IONDaFPlVMCiXWxq1Wk
         YxFaFVbnUg9+VGJJljN+avSIbvzij2zeaK/Qf89SU/4tGrS8ArvlD7BpQCfKzIAgvJzj
         HlfVg0oCaBTqlxIKf4EdJ9ON1DOF9P9CVeznuQTWg5wQlqpnzqwsMxTopW89nqSnwxBZ
         MROvOKk/TGEi67I/lcbL6USXqQTiBTjnhxGok0xqnAET8FSujugprLt8GINhWEH+UMUu
         v/X5MPIm+YTvfC19Vq5Fhcb3Y+VGWTk+jFFt795/xN/AWY3QTxHI4ub+IV0NR6lxNmzn
         BqIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/edJXjlsqAi2i4Cc/p69I+7kHAmsFOsqDsFgYeTCaPk=;
        b=I4m6tDIyf54d5Al+0jN6booP2kfm+1Zpr9B2tR5TBUEKb2lZdgzENSZsX828TuTz67
         6zFmnWO0L3sjOghls6uRCec+duIJvjY1d/Ubc17zjFdHwNNt58rm71Vqv7zWGk9QnVfB
         rzb8uHV0L1F5WEzZc5QCuVsROffybKfEOhSWzCsgD969n3iNFP7WIyBQoITd2nrMj/C4
         KjpQPHrfI/U9qkxtIXd3a0tRGf8T+DzR5gO8S6TJ+xYUMr14MbGNOS2mt+uFYhuhGLJg
         Q9VC/EB0FUI+0cTvEmRAcSBulcDhn4PYv95ftRrh6727yWt5ucHNuQVYgrGhTfjQ3cql
         p8TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a4KqHH64;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/edJXjlsqAi2i4Cc/p69I+7kHAmsFOsqDsFgYeTCaPk=;
        b=qMRL9DdP0P1g5+0rweRLq1bJ2dDBUVfN0FooW7INqN+i/Gl2mIgJvP7xha6asiD1vk
         U5p1WlyrBH9tBcbPlmcEL1gwyatwdjfRjqmbDv8H8rQuS3hb/8P6k0MIOVwmQ6xa/Pwr
         A/ZSy/pXzcL3O89KkwPsmeLNjN3RZh/ClGgUfVNPSeHFfVr6duuEFB4O5PEu1jD0UYXt
         9ocwD/oQuI1aWCf02S2Gs8lu8F8od/ebtjUdu7FPbdN1ACOaH+y5IHc3DvIT33IFq60w
         ZInYaMTEU1hMHtPp35x3J6/fmlhfrKlcQfkso8yzm96lUE++paNRRdUPAEbOtGAsPZds
         XNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/edJXjlsqAi2i4Cc/p69I+7kHAmsFOsqDsFgYeTCaPk=;
        b=YreKaHflMOziEcJC89YdqiA3xNYFpxmSb/IYfuGFK5RuFjd5BIb/Qk2Dqc5E56wZtD
         5Q46X2xdIziu2mamXjU8fb2/ZJPMdUoNBNV71DqtCT6nGEgbEqEgmS4OY9QO5z9mMR9a
         SCKFESH5BOMpJvDzygAKb5J/T4Ns/irRyqqkgdG2ADBE/a2ArWHvPa/SjUE6hyyLhz6n
         r/OKIYj1QR63cRURSV8aQhVwSu7clHqY+n4B1Z+WY9QLUSYpcl/DCq8LyEFwplKIJplc
         NFOZsrmgaKpDeDgN48z78GJ3UhtaJGK7jZoqXLiTJRhrIG8ELI/AVVZihva5/LX3EskW
         1sKg==
X-Gm-Message-State: APjAAAVZt+EXP1ggVgfxC+JXBjo9pm2QfEsWHQHHP+231R4Z5h6Fiauz
	dDEazvf65Mco6Qtnq0T3bP8=
X-Google-Smtp-Source: APXvYqwX0w8CfFQkEjDCHsPRlHbnXoBA7uC8Z2I6pRSBCviDSugESFl5Avq35kioJNvFwCrf0AjEvw==
X-Received: by 2002:a62:ed01:: with SMTP id u1mr7966310pfh.54.1571417012496;
        Fri, 18 Oct 2019 09:43:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4458:: with SMTP id t24ls1952970pgk.4.gmail; Fri, 18 Oct
 2019 09:43:32 -0700 (PDT)
X-Received: by 2002:aa7:96ba:: with SMTP id g26mr7964582pfk.132.1571417012067;
        Fri, 18 Oct 2019 09:43:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571417012; cv=none;
        d=google.com; s=arc-20160816;
        b=tpevoyQBBfX0Cc005L7sXVBZxRU33YlNk8gW/6CwMuAIo+6sX6AIRxZglTRiDL53c3
         KVu/Blr/XBfTf7VBHo3T5N3Qk9w660WSYBtZwZlMpKTq2b8326rtfEYAH1AsvmiT7Sj2
         28EvB0Jwhk8kmIOUNohSZgxszrT3nrwtPnS8arcpB3+a44mMIrlts0gnBdzgoougbsi4
         nxqVpdkYCsHEYdmmUydFXafyi+YzeGdoDN5+0KrmPUjMBFMKpUttqlPAdhNNQND3+MX7
         sI0RHUzW5gpwrpR4RG2/TaZHFyuxej5SRLqCx6EySfBiIEJfHeYYr/yDA82lxqDN0Ox+
         FM5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=itPDN3uOMullCrqvdWp4VHOtEiVy99lUJjyxqObTixM=;
        b=yTGMAEUosSCi74dxlVVb6jG2bg4gPDDkuyKe5gY/pphVkyGGb/KpXt+U01JL7LNwOH
         dyDPM75vaRBnmuXQdIETJE7y2R9mTuH2GHcstmfj9pCLAvL+P3xJ1bpoW83KBfREkv1i
         1gSAp7poGeNZA+S9f1dHFRYOiodSDUa8QV50cF5sDXDMtqTDDasZQCjQz9vlN9kUYbyZ
         JvbKzG4wpt9YUOvbPcvB4O+1tyOw3WWeWqQDXeAphDCcB4T0SGut3o8ek8SUkJN5EWXo
         i8eItyLCLzPx5m/bpH3wFPyuhAVIxbLFNGpR8QguonS4J5mn/FboSW0Ci//xztNylH+w
         d/eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a4KqHH64;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id q141si432356pfc.4.2019.10.18.09.43.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id u20so3117431plq.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:43:32 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr10710877plp.179.1571417011191;
 Fri, 18 Oct 2019 09:43:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-2-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-2-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 09:43:20 -0700
Message-ID: <CAKwvOd=rspmzW+v=nG=07H5XZ2OPWVbhDusYEe3k5+mZ79JvwA@mail.gmail.com>
Subject: Re: [PATCH 01/18] arm64: mm: don't use x18 in idmap_kpti_install_ng_mappings
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
 header.i=@google.com header.s=20161025 header.b=a4KqHH64;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Fri, Oct 18, 2019 at 9:10 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> idmap_kpti_install_ng_mappings uses x18 as a temporary register, which
> will result in a conflict when x18 is reserved. Use x16 and x17 instead
> where needed.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

TIL about .req/.unreq.  Seems like a nice way of marking "variable"
lifetime.  Technically, only `pte` needed to be moved to reuse
{w|x}16, but moving most the unreqs together is nicer than splitting
them apart. The usage all looks correct to me.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm64/mm/proc.S | 63 ++++++++++++++++++++++----------------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
>
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index a1e0592d1fbc..fdabf40a83c8 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -250,15 +250,15 @@ ENTRY(idmap_kpti_install_ng_mappings)
>         /* We're the boot CPU. Wait for the others to catch up */
>         sevl
>  1:     wfe
> -       ldaxr   w18, [flag_ptr]
> -       eor     w18, w18, num_cpus
> -       cbnz    w18, 1b
> +       ldaxr   w17, [flag_ptr]
> +       eor     w17, w17, num_cpus
> +       cbnz    w17, 1b
>
>         /* We need to walk swapper, so turn off the MMU. */
>         pre_disable_mmu_workaround
> -       mrs     x18, sctlr_el1
> -       bic     x18, x18, #SCTLR_ELx_M
> -       msr     sctlr_el1, x18
> +       mrs     x17, sctlr_el1
> +       bic     x17, x17, #SCTLR_ELx_M
> +       msr     sctlr_el1, x17
>         isb
>
>         /* Everybody is enjoying the idmap, so we can rewrite swapper. */
> @@ -281,9 +281,9 @@ skip_pgd:
>         isb
>
>         /* We're done: fire up the MMU again */
> -       mrs     x18, sctlr_el1
> -       orr     x18, x18, #SCTLR_ELx_M
> -       msr     sctlr_el1, x18
> +       mrs     x17, sctlr_el1
> +       orr     x17, x17, #SCTLR_ELx_M
> +       msr     sctlr_el1, x17
>         isb
>
>         /*
> @@ -353,46 +353,47 @@ skip_pte:
>         b.ne    do_pte
>         b       next_pmd
>
> +       .unreq  cpu
> +       .unreq  num_cpus
> +       .unreq  swapper_pa
> +       .unreq  cur_pgdp
> +       .unreq  end_pgdp
> +       .unreq  pgd
> +       .unreq  cur_pudp
> +       .unreq  end_pudp
> +       .unreq  pud
> +       .unreq  cur_pmdp
> +       .unreq  end_pmdp
> +       .unreq  pmd
> +       .unreq  cur_ptep
> +       .unreq  end_ptep
> +       .unreq  pte
> +
>         /* Secondary CPUs end up here */
>  __idmap_kpti_secondary:
>         /* Uninstall swapper before surgery begins */
> -       __idmap_cpu_set_reserved_ttbr1 x18, x17
> +       __idmap_cpu_set_reserved_ttbr1 x16, x17
>
>         /* Increment the flag to let the boot CPU we're ready */
> -1:     ldxr    w18, [flag_ptr]
> -       add     w18, w18, #1
> -       stxr    w17, w18, [flag_ptr]
> +1:     ldxr    w16, [flag_ptr]
> +       add     w16, w16, #1
> +       stxr    w17, w16, [flag_ptr]
>         cbnz    w17, 1b
>
>         /* Wait for the boot CPU to finish messing around with swapper */
>         sevl
>  1:     wfe
> -       ldxr    w18, [flag_ptr]
> -       cbnz    w18, 1b
> +       ldxr    w16, [flag_ptr]
> +       cbnz    w16, 1b
>
>         /* All done, act like nothing happened */
> -       offset_ttbr1 swapper_ttb, x18
> +       offset_ttbr1 swapper_ttb, x16
>         msr     ttbr1_el1, swapper_ttb
>         isb
>         ret
>
> -       .unreq  cpu
> -       .unreq  num_cpus
> -       .unreq  swapper_pa
>         .unreq  swapper_ttb
>         .unreq  flag_ptr
> -       .unreq  cur_pgdp
> -       .unreq  end_pgdp
> -       .unreq  pgd
> -       .unreq  cur_pudp
> -       .unreq  end_pudp
> -       .unreq  pud
> -       .unreq  cur_pmdp
> -       .unreq  end_pmdp
> -       .unreq  pmd
> -       .unreq  cur_ptep
> -       .unreq  end_ptep
> -       .unreq  pte
>  ENDPROC(idmap_kpti_install_ng_mappings)
>         .popsection
>  #endif
> --
> 2.23.0.866.gb869b98d4c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DrspmzW%2Bv%3DnG%3D07H5XZ2OPWVbhDusYEe3k5%2BmZ79JvwA%40mail.gmail.com.
