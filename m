Return-Path: <clang-built-linux+bncBDYJPJO25UGBB766RTXAKGQES2PRJ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 396C0F1FFF
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 21:39:29 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id v5sf12307375iot.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 12:39:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573072768; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZwueQ02h1aRpqxaCMMR3YlxxdZvW/xyDcxfVTalSPI1l9x9agbtoxh8soPSHnjqEO
         8zD7lgapuC3P4jeYxO5M9vjNJpGEFKmrQoDuJE3QdH5ndRafBoTByMzf7DodUgK9G8ZL
         6ru3D9+96rPbRFSHKenDynewdkz1vkX7K1Y85sTJwHoJMpG01sOuiHUsCrrdsCkYdOrL
         ama64KSTi0ou8ASG8KgTP5PJuKNu5RV2yctXjtYyDFc40UM07d/U99s6HqEDRRcX4UEs
         C/AXheQsanRLTA/o+t7Sk0zQb6KGcsNwm2lxV/O5UCxv4xXjXfMtTrzG7wKAD4/ZCvpo
         n2Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XN4drJJVJjKLTGk73DWPKd4ioERp6qgSC4PZiY+W2Fc=;
        b=z/aehzCFIzCNYwXVCjicCisfghvKwcNDpGe3oT/VR8/w5p5oyAL2CkMSI1KTPtxVQX
         kIBYcJI7Goco7NClQxKIfsVUOqMWkhzS1mOUpOr5hYPsO0qsvzsYuNZzZ5ywcgMDpHaN
         Rch/hVFNsCk0yvQHw7O4sywpA/la1tNKp3X139cZkmV3un/ps1/xS7o9kFEmSCisk19N
         HDygEqSLRZieC00jNhnAzGP5ij0zYf0dXWzbj7i6Ytknsz1/JISvFDq/I6w3uUJWT1Xt
         Q4Ydr0lprZE/SG43aJ2uHr/V9ljGkcXQxJqzwtBlnZ8qSiy7l3WvbkvvyDCYSnV1Kg/n
         aOgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CrBxheWL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XN4drJJVJjKLTGk73DWPKd4ioERp6qgSC4PZiY+W2Fc=;
        b=M9pYss0Vi36p9byf0deM/SQMmjHC/k325sYKFkWGOSPaKnAS4xv1iq096hU/1LBSwz
         bvgaWe/qQJDmtwvBAgLISC/zmkawdwU/Rv893KswKCqlqcQzxMykuWmgcVXUHxFA/x/C
         S3RtjT2xi8OcfS3xjhdgvDuQPmisH3PlbqE7yNQf2CeKQNZjCFZgZaZHung4dhKrbDk3
         MYxm/i2vNdX/xkaa/0CH0wjViNrIl0EkmFA9gdp+znadwy9VJ8/ewcrr3ZSZ/Oc4r7In
         a++17lK2kLXsU6CSW3YFzMCJxqkHEc4TaFjd0rbyGPfKcjU3BqUf5InhEDqXT5kqQSJk
         olwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XN4drJJVJjKLTGk73DWPKd4ioERp6qgSC4PZiY+W2Fc=;
        b=lJS7bceJIfpTvyq0dXiqPmVsaI8BAtICxcQQoW8ACla7oTYHKcm1xYItwd7CsqIrxj
         HhYr7mFBt2XDm1PeAaNmVIPHvC15EWr1qADFLCvw7OSFlZyzX4+jLfjiJfZ46e51fPLb
         eT/ooFZ9GkaU0OcXMGu72JFNTSWoJjZJBgIl4jLw8vk8IWKv4COEBCXc9Yuz5IxcitbO
         poqNpMp73vtraH3whnzcZRHKgX0RW7u7bU6Z4UFgxJOC7f1c2lR4WqQ/mYwShBVQC+ln
         7rEQr+SiVnKzOP/AB0S3jmkFlsV2W5m57POi+bssMTFIN6ZuS8pAbSJZ4nTkGMGQlFqY
         rD9w==
X-Gm-Message-State: APjAAAVgA3Qoq3etphtNzirwBp6dDHkX+lO1ENe6AEThiBLuaTZ0OmXc
	tIQENawH2n9NqY0HnXy0JGQ=
X-Google-Smtp-Source: APXvYqxo6Xl1sXTwoKkENjbhrIK3jYB+V7wPnODMqy7zl/1rwsNhtG90Nx1JCeBTxYfu2C0aXpa/mA==
X-Received: by 2002:a6b:ee06:: with SMTP id i6mr4630349ioh.250.1573072767640;
        Wed, 06 Nov 2019 12:39:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c209:: with SMTP id v9ls542490iop.0.gmail; Wed, 06 Nov
 2019 12:39:27 -0800 (PST)
X-Received: by 2002:a6b:b906:: with SMTP id j6mr3961804iof.24.1573072767260;
        Wed, 06 Nov 2019 12:39:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573072767; cv=none;
        d=google.com; s=arc-20160816;
        b=WJIY3rBtLPDXwI/oWLizl35NWNkVF80fMJ3t+2DEhk6xOcq/j24/FjhudahB7vZxg7
         JRdGgDIE1gEK6dv1GvSEDvWArnmpa9aQpXdg21+/vLZ6aTU2Fc4ee86XSs6IKbLt8dKR
         fvLSZU29DVsm2XIG6JFATRd7iOeCc77lmyM9z0qeysyGOdJInb9D9Q6+oiURzh91Q0qZ
         ZTayF6hV7a+BOrqkklog8d0cpi1Ab3aqcltvMyp6HqhUNsXE4iAzO1HQvWCnAf7lOJUe
         U3xqPyP7yW7OAQhugN5G8WxZz00x4uHhomFbsq5hVZBaGVKWXFHNKayxC6WidGhOAR+d
         kYWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Bp86L5fucSA+9Bwlt84/eQbHaJRbEE/iIVDIU2TrYmM=;
        b=0jo7/12ctPp/ONCklzd09fEg/w8FUuzTnN9eWoHMtwGKMcMuEDVZ36VNZ8lzcJkfL4
         JuBpIjHX/ImhLds0YjnA2PWp4VO0LHga+EXgPQfzwBeOStNboIziPhbhPNFR/YLlMPl5
         5++YurgMono56H4XtqpXuoHDaNRIMTGut4/IcxRPCJWYFUuOV4rpoVsAsybDBaVAd7fB
         Zu+xi1EAhAl2GDoKGqB+nPjQNJ3s94LduxHl+0NqmYMEG0YPc5ZUBfzOsWH79BLrIW4h
         8VPcwugAoSrra20+SGDhzoqgsDFbVgYdDU1RHCEvPDtrCzfo/ET0QsvDaB03I6+TK6xq
         J8cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CrBxheWL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a17si402905iok.0.2019.11.06.12.39.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 12:39:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id z4so13779321pfn.12
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 12:39:27 -0800 (PST)
X-Received: by 2002:aa7:8e56:: with SMTP id d22mr5854475pfr.3.1573072766085;
 Wed, 06 Nov 2019 12:39:26 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com> <20191105235608.107702-11-samitolvanen@google.com>
In-Reply-To: <20191105235608.107702-11-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 Nov 2019 12:39:14 -0800
Message-ID: <CAKwvOdkGUn+X2HCnV7zM8ruCPYBsRi_UD8JY4VW4FbuOam8Pmg@mail.gmail.com>
Subject: Re: [PATCH v5 10/14] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CrBxheWL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Nov 5, 2019 at 3:56 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Don't lose the current task's shadow stack when the CPU is suspended.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Re-LGTM

> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/include/asm/suspend.h |  2 +-
>  arch/arm64/mm/proc.S             | 14 ++++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
> index 8939c87c4dce..0cde2f473971 100644
> --- a/arch/arm64/include/asm/suspend.h
> +++ b/arch/arm64/include/asm/suspend.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_SUSPEND_H
>  #define __ASM_SUSPEND_H
>
> -#define NR_CTX_REGS 12
> +#define NR_CTX_REGS 13
>  #define NR_CALLEE_SAVED_REGS 12
>
>  /*
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..5c8219c55948 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -49,6 +49,8 @@
>   * cpu_do_suspend - save CPU registers context
>   *
>   * x0: virtual address of context pointer
> + *
> + * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
>   */
>  ENTRY(cpu_do_suspend)
>         mrs     x2, tpidr_el0
> @@ -73,6 +75,11 @@ alternative_endif
>         stp     x8, x9, [x0, #48]
>         stp     x10, x11, [x0, #64]
>         stp     x12, x13, [x0, #80]
> +       /*
> +        * Save x18 as it may be used as a platform register, e.g. by shadow
> +        * call stack.
> +        */
> +       str     x18, [x0, #96]
>         ret
>  ENDPROC(cpu_do_suspend)
>
> @@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
>         ldp     x9, x10, [x0, #48]
>         ldp     x11, x12, [x0, #64]
>         ldp     x13, x14, [x0, #80]
> +       /*
> +        * Restore x18, as it may be used as a platform register, and clear
> +        * the buffer to minimize the risk of exposure when used for shadow
> +        * call stack.
> +        */
> +       ldr     x18, [x0, #96]
> +       str     xzr, [x0, #96]
>         msr     tpidr_el0, x2
>         msr     tpidrro_el0, x3
>         msr     contextidr_el1, x4
> --
> 2.24.0.rc1.363.gb1bccd3e3d-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkGUn%2BX2HCnV7zM8ruCPYBsRi_UD8JY4VW4FbuOam8Pmg%40mail.gmail.com.
