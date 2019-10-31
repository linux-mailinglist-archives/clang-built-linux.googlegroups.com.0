Return-Path: <clang-built-linux+bncBDYJPJO25UGBB55O5TWQKGQEIXYTLWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BE7EB5F7
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 18:18:48 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id f11sf3963797otf.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 10:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572542327; cv=pass;
        d=google.com; s=arc-20160816;
        b=w0Fdm4rYmJJAhTRlQhPk9vz4sL9uWXsBQC063bF96sXODZMDFfz9D6uS+Fc02uF98f
         HhRKDFITRgqxJMl71kOmF6NY2JGLWLrDoxIKyZMrJQCGK34hbXmmG+JFV1v0azHMkUrI
         qZ2ZUiSoc7ZUiJDEzjJLRoPDGqQPSf62DfsruU7f6dRg4t+l07EK2aHzA5j5HhGbCGJX
         4DuFIt0sNQrZW0KHV8ebsjHMaLCdOZL9QUEPCrvZ2kFiLUPTkKDMnaSctrQgd4SzCXvg
         7zvqW/IO95FtW4DotYW1n9IVAYJ1Zv/KHlMQzy1/sLDavtjfEs3Hlv5iAUvf4cqWLYjo
         6RSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S/aTDjHm1yrtNC0yFUgXcl0IOwL969fzY1fGcqTbS1c=;
        b=Gd6UEu8SvGrfEjdmu37rAaSlXjW8dpPOR16y49tFRM5fVkEohx1Q5QrLkV6b+apZD0
         hq1DaPwk5Nrj05iCyf88zA3FVcIMpnlqnKv218ETZJf5AirfctPK+tJcm1BNtyWsrNQc
         lN3irWp6XRWXeHKhl/YWXN3zbWQGY/83DokrfNmW+0pU7cmaZ6SG2iQc0KIcFRxFB7dV
         h3oTEVeN2Vyb3odFxWTyAlqSzPyhVRMIrPTdyDOPfDcikBvIcllUvhRLEnJ/Q7VvbZLj
         VD7/UnqmJHSaX4Ey0r7kXGcM14woAE6kvQre72top9jibhhPY3XsC+U1BDsyT9XkUf2w
         TxBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sAYUg0xO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/aTDjHm1yrtNC0yFUgXcl0IOwL969fzY1fGcqTbS1c=;
        b=SC8uoJmBCyAbuPqoot/6XzOsM7/KkzpZygV7kQifVR65THRu7bgPw1urxmLntvSNz+
         yVRPE0lg5BOwXibnFvToazQWxu9EQsxV2bSm8JfRgDhhUmx+ZlLl7WhNfVfbOtVocMFo
         Uhj4s3bu/fEU0w9wzWfGH2UgQSRWMmmp2ykebgCsFw9uE20xiBL5mhkCLuQdYH58qWuE
         tt6zkK0/Al7oZ1eI42W7FjkNUN97mqll0C25ZeDm0apSm+keCIk2Qsu7xq2E7qEA/PUn
         lR9YEW3+G5uROlCOgJ270kezfPA8JmL7lkYoS5PQHURdUDqUXfaHSxIzt8gPNfsnbPGq
         WcgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/aTDjHm1yrtNC0yFUgXcl0IOwL969fzY1fGcqTbS1c=;
        b=EurQMQACRJMc7VY1YDxfcUP23aWJQhiiPjUAy1pG0amLGXvRmTiUjklrHrLy0uiPjF
         xPLGcsluqsGaeiPmH/QzGm+q1bvB0CKP2ik8V5D9yZIirBM+hwbkcvdRBFaPn+hd1d9W
         Y0oh40EDfVwUqPEG6XhWsre87Ar0guEJbxFe031ywid4rnnCG7ckyTZvNYUR/gV+1OOb
         QbBid98enRVGUcv+soLNiOpE3WUo/0YeT2FBEFNq3mDb328qTxW7Y1a1hBcT81o7Ype+
         E/q/FitSVGYkWrkFg5rQ7B724YW8DgezJs8/I2Ms+tMQLzmTjeNwvDSOVou4C2t9Ndou
         s1gw==
X-Gm-Message-State: APjAAAXd4Y+dTLAq/vKau6IY66JPC18CzQz/vDt8YS+2mKhE2iPzWLGp
	pi9cEslVlVhDPxudZoth74s=
X-Google-Smtp-Source: APXvYqwHQDf4ETiWiAtAU1IpCe+lVVLVotsC2KP74Z2mIbuGS5uzsA9MVdpnym855vx/dt8zbOt+Hw==
X-Received: by 2002:a9d:7985:: with SMTP id h5mr1261117otm.260.1572542327118;
        Thu, 31 Oct 2019 10:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5886:: with SMTP id m128ls656668oib.14.gmail; Thu, 31
 Oct 2019 10:18:46 -0700 (PDT)
X-Received: by 2002:aca:3846:: with SMTP id f67mr5180781oia.71.1572542326777;
        Thu, 31 Oct 2019 10:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572542326; cv=none;
        d=google.com; s=arc-20160816;
        b=LcEFSS1QSYGYbhkZH4YgMbo9yReR/0ibMjz1VXhx5J1CfGmZF+b7gBgCp97TTbZtOm
         fExruysKU0Qlhs955dAoy38WHneeNzEZAQYryirewOe1iMgKMg1GK0JTIAMHjvlAWuj4
         Yaz1KtdUkRzrDrYasOK0ybN3XjC5vWlhICxKEXA9MieGZH74p9JruTWhMC1iAMuzlI5F
         Z91Zc/sXWMXz17ZlxRU0haAICY6PLBBxVXB9UOIwNi55wQOgI3OmQgw27NIqHT4jMJI4
         IGSEcEBoCiIhfks9TXX7hIfAZBtLPST39zEnMiDI5BEUNTOpI0anIHoX0gmVE+yEJ1UN
         tVyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b+sTelK7MqY9vqwBDqCXPdhr5H6iAxzQESslNr9zDOQ=;
        b=dGahq4fqWvxRsBE4WbeeC4JhDbCTI8g1z7f0MuZGlZtMaBcpY9AuVuX/6uJEnhXs0G
         5d5kFjq6HZ4zkciWaf7XSp5H/hfudc2ANo9vvzktuePgF7DOWIu57GxiM47xzQdbJdKZ
         AtoHteBB+3wG/4rXHQXPkh21yYIo/AXBuHQCtLa0dizzcfHZoMfOnvhMuH9s5jnr20P5
         svhXSC5ePoDnmVZM9L+zr/Mmatos9CU4ANdER26L70rT/+HE8c5OqnZ9JXkHhW1k/Eoi
         IrWINwE6Jqd9kpZ4Qan+9aOrQBrXPthZlVOWad4Kvj72Ozone4afilh4j/jwbGO8GqM2
         j99g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sAYUg0xO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n49si217162ota.2.2019.10.31.10.18.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 10:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id p12so4453928pgn.6
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 10:18:46 -0700 (PDT)
X-Received: by 2002:aa7:8210:: with SMTP id k16mr7828428pfi.84.1572542325643;
 Thu, 31 Oct 2019 10:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-14-samitolvanen@google.com>
In-Reply-To: <20191031164637.48901-14-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Oct 2019 10:18:34 -0700
Message-ID: <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sAYUg0xO;       spf=pass
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

On Thu, Oct 31, 2019 at 9:47 AM <samitolvanen@google.com> wrote:
>
> Don't lose the current task's shadow stack when the CPU is suspended.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/suspend.h | 2 +-
>  arch/arm64/mm/proc.S             | 9 +++++++++
>  2 files changed, 10 insertions(+), 1 deletion(-)
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
> index fdabf40a83c8..0e7c353c9dfd 100644
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
> @@ -73,6 +75,9 @@ alternative_endif
>         stp     x8, x9, [x0, #48]
>         stp     x10, x11, [x0, #64]
>         stp     x12, x13, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       str     x18, [x0, #96]
> +#endif
>         ret
>  ENDPROC(cpu_do_suspend)
>
> @@ -89,6 +94,10 @@ ENTRY(cpu_do_resume)
>         ldp     x9, x10, [x0, #48]
>         ldp     x11, x12, [x0, #64]
>         ldp     x13, x14, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       ldr     x18, [x0, #96]
> +       str     xzr, [x0, #96]

How come we zero out x0+#96, but not for other offsets? Is this str necessary?

> +#endif
>         msr     tpidr_el0, x2
>         msr     tpidrro_el0, x3
>         msr     contextidr_el1, x4
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DkcPS1CU%3DAUjOPr7SAipPFhs-v_mXi%3DAbqW5Vp9XUaiw%40mail.gmail.com.
