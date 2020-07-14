Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBH7YWX4AKGQER2XV5OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2245421ECFD
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:34:25 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id f89sf7898697uaf.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 02:34:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594719264; cv=pass;
        d=google.com; s=arc-20160816;
        b=0YS+oT8kODj+pW5GYV4zbE5a5vQiJj/suMcFwQL9RZNMRPfkwvwCMp0LwoDWkBA2x2
         GC+F0/bCVYp3QEE2rEYuOXglZv5Ra+raI4OAqWM/Wfk5pKU/edN1B/r6an/Zj537FFbJ
         s6OdCv34ubJaqOuigEinRL5NTdsXoENMy0VpN2Y2ACupQK00s6T2+8uaDxyqZ9EEnPQH
         19k/WOPKbrntcClMenI80jK8RzSDZ+x2yD4bAW4OczNOXH3IgYU2pcmp8OfvtRjX2znP
         mpiS4RqQOIWQfpMc9Ae5njHY/dB0yQHEil302tJx6bGkIFDFKHvtljG0YBNGfYBnM9xX
         wPTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yBdBYANs6312dms6Ela7axDyp35F41F6yQOvmuL+VJg=;
        b=WuS7xjwRi++77laAK7fWvN3fH7xiEogQnpX7jaC2cWUwfIoB1sb3eJ6H0kL8ykvdlM
         CGCiBgUpkayTETUag7ioxid331jEJDTFXJBFNuIqqcacWrzOWNGLN/+Dv3voylpnMr+p
         6DRlxkGHaOLm+ArejCFm8pHAE+n16tgQGxJJ+UqgHinrzAl7pdFkuJPaNIQa1qvzxrZb
         3YyoTMuSx0DzrK9DZqglGX7bN++HYJR++Hn/N/vG2TTob+XM8UyHvNRvL0KofXdQStJt
         JhIRy1OxBP2L4E71poNsd3NEzQfeqN1B3nkvyI3dvzMSJHk9XEr/GFCAOehRsjHO8GXh
         0I0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rLwNFfEA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yBdBYANs6312dms6Ela7axDyp35F41F6yQOvmuL+VJg=;
        b=VnExI5z/Fi8+CBoRllOPaP78PsJkt2vUzpZfeJMbSgce8W/gM8Pxby7rheSKYBUhS5
         b3yMaQtADcFgkjIKwPxqciuWqgfBSm0ZT81AWkDew9XSlZSw0/9XZRY5Q8MTp7KOR02F
         SjiB7Bx1pyydnPOjXT/XA8lG01aOtWYLvy4lvzg7EIM7L2fOgDj82LfQOiEc377VnMxI
         qkTmyQzKfxolZh+YrS8JF2ORY7UiwlDtA3LlHGtPobQJ1zF8YlCcwNDP1UYrzh+XqtVw
         2UYqJFxLWUjLJrUMyH07RfutAbpJ7OeZiMP25LsX9lb+nWkOrDFkSBkswAJ9bzCqeWS3
         VB+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yBdBYANs6312dms6Ela7axDyp35F41F6yQOvmuL+VJg=;
        b=Ul6+Ii+ZNbFZqQhIzqJnf9fjO8/sUTAor9yHdnQPf8pudJBwhl18HkjzEGlZN90wwO
         IP7mBzuYtRkYXvVR2RqbdvmCS49wFUjEGXKhAnQyf65aHUDa44goMcgryBGOQYsNMnst
         muzOfPkEUT1a+MNa9p+yP8eXQZOfac8brdGyNf5SwtnjxHZ9DDCiVQjstfVOPf0mAGzU
         r/6k1xYzCURL3DoDS9cBwO5lfiwALYFXtTxED0XfT0bf74WxP5geZwaekPoHq6CHKseZ
         uyu8Th52+q0XpkWIS1tqGUQJO4m6LSJs8UB6eylnyYm6fZJKKuMdfKD75v5Q6uBez5Bu
         1Grw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yBdBYANs6312dms6Ela7axDyp35F41F6yQOvmuL+VJg=;
        b=oXB2uA0hpyr4WJKdWXjJ15fK2RIrExGUTK+p+I4Yz+F62k7T7CwMIxM0YtBInrAQX3
         rGltCTzrvm03lxfJ9Jf6O4v5Y8D8wa6lgqwEVWMr4PFLg2CJOUvfKJrsYUqbx1k1vRhh
         u2aHkJhz3ODjYCFfk5AmRtYLQQZzohAt5Nh9hvzdECmvgBCS0PXsxPSEUB5R+qravGNL
         2/vu3WxQABFuHy8xKeATgrVD/TxGlgFadSy7L/gaHNakkIpc43YOJoZaDFSC/LRJigva
         iTxWUZtl074FKqkgods+b5Dm3zAddPNbWqB1zsC+yxXGVsFa88Sn3HKx4pKPWIrjVniO
         IePw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bY7mMAkKntExuHLoGTCPgsS1dIqhH0u74oDcXdgj1qqT6IicU
	40IGfNclolpQrJ7rpgXBbPg=
X-Google-Smtp-Source: ABdhPJyGp42mtwsG5LNrOQNrjGVJrfKD1N5ot8ZgiTM7ys2QWnWzroIl0lfQ9aK84W+x7AMvEhezTg==
X-Received: by 2002:a67:f557:: with SMTP id z23mr2555102vsn.27.1594719263933;
        Tue, 14 Jul 2020 02:34:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5404:: with SMTP id n4ls1305492uaa.8.gmail; Tue, 14 Jul
 2020 02:34:23 -0700 (PDT)
X-Received: by 2002:ab0:498e:: with SMTP id e14mr2702135uad.38.1594719263545;
        Tue, 14 Jul 2020 02:34:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594719263; cv=none;
        d=google.com; s=arc-20160816;
        b=rSeysXK1L3ueLxELYHLOkNuFVGw/jDvNbdrrPI6Lh74R0tVGZ54QPLd/Mw/KLpxFct
         W8J8UobKuRxhtToTi6kzeZ7W5NrR6RZtrXUxFjBQRwazBorRSGuFhx2EPPgAtmCAK15q
         eW1G3wlxsJvrtsQ0EfEhr3tbNf8IQILZBNwDBrayiVyu0q0B0m8BpOY1/49NS0lEbRD2
         Xr5w0eZEJobFrbMqrIGqVqdE+4oVrjyHWz3ojGzvsmlXHFmu3U+0fqx4xIctTTt6DGp3
         M1xZX+FsyTbjbXaPdbkFnQqoScQ2DXvb4lxc6PkLlNCnX5AaVbIVaXGLsc7K1485xULp
         9MQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lRrq57w397KEjj99F1eu0ePTuse9TMJvNbmNZttcxV4=;
        b=Het+E6svvJAYUq+YOTUKG7O8K+kuyIKAdT3L4C3KIssvxjIHpwJ3oVcpRkDTH66zqN
         4Dt2eE0v+6QSogVEtgNCT69hvy0hAPikm+ghp8eYVhvzUaRoXsOiJo45vx8MsNpr5YM+
         Je+l3Lc+OKyOUsPPYrDpNNNZQHB4wdGMAASG0uib7b8YHMI1RMIFmPzidicQqVla6Z8j
         qN1ggPNpjRrHe6QzHkVh2+hSLDrYAPtp82RqDoEHv+BS3pvACMhJ6BLW4XbsjL/H8OrJ
         mwzQeJ0hqp7FnXH5SeMiLpaigcX4K9TPA1nFc0uF7OEr6zj0M39wkI2AMl6cKH6WAh5N
         ExPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rLwNFfEA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id o66si1076556vkc.0.2020.07.14.02.34.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 02:34:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id f23so16588134iof.6
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 02:34:23 -0700 (PDT)
X-Received: by 2002:a5e:9309:: with SMTP id k9mr3962748iom.135.1594719262995;
 Tue, 14 Jul 2020 02:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200713012428.1039487-1-caij2003@gmail.com> <20200713224020.1297154-1-caij2003@gmail.com>
In-Reply-To: <20200713224020.1297154-1-caij2003@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 11:34:12 +0200
Message-ID: <CA+icZUUXZmDLOXbcj6vZi6+ZTC41VbH77CViHFRmQfxiMBqYtw@mail.gmail.com>
Subject: Re: [PATCH] x86/entry: add compatibility with IAS
To: Jian Cai <caij2003@gmail.com>
Cc: jiancai@google.com, Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com, 
	Brian Gerst <brgerst@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Alexandre Chartre <alexandre.chartre@oracle.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rLwNFfEA;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Tue, Jul 14, 2020 at 12:40 AM Jian Cai <caij2003@gmail.com> wrote:
>
> Clang's integrated assembler does not allow symbols with non-absolute
> values to be reassigned. This patch allows the affected code to be
> compatible with IAS.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Brian Gerst <brgerst@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Jian Cai <caij2003@gmail.com>

Hi Jian,

thanks for the update!

I am glad to see that some Linux/x86 assembler "monsters" jumped on the train.

So, your patch with reviewer's comment got several iterations?
Not sure if you are aware of the process of submitting patches (see [1])?

It is common to add a ChangeLog below commit-message-body and diffstat
means add below "--".
Something like:
--
Changes v1 -> v2:
- I did some cool stuff to improve this

While at it... Please add your version-of-patch to the subject-line:
You can do this via "git format-patch --signoff --subject-prefix="PATCH v2".
There might be other cool git tricks I do not know.

Hope I was no "Uberlehrer".

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst

> ---
>  arch/x86/include/asm/idtentry.h | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>
> diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> index f3d70830bf2a..5efaaed34eda 100644
> --- a/arch/x86/include/asm/idtentry.h
> +++ b/arch/x86/include/asm/idtentry.h
> @@ -469,16 +469,15 @@ __visible noinstr void func(struct pt_regs *regs,                 \
>         .align 8
>  SYM_CODE_START(irq_entries_start)
>      vector=FIRST_EXTERNAL_VECTOR
> -    pos = .
>      .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
>         UNWIND_HINT_IRET_REGS
> +0 :
>         .byte   0x6a, vector
>         jmp     asm_common_interrupt
>         nop
>         /* Ensure that the above is 8 bytes max */
> -       . = pos + 8
> -    pos=pos+8
> -    vector=vector+1
> +       . = 0b + 8
> +       vector = vector+1
>      .endr
>  SYM_CODE_END(irq_entries_start)
>
> @@ -486,16 +485,15 @@ SYM_CODE_END(irq_entries_start)
>         .align 8
>  SYM_CODE_START(spurious_entries_start)
>      vector=FIRST_SYSTEM_VECTOR
> -    pos = .
>      .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
>         UNWIND_HINT_IRET_REGS
> +0 :
>         .byte   0x6a, vector
>         jmp     asm_spurious_interrupt
>         nop
>         /* Ensure that the above is 8 bytes max */
> -       . = pos + 8
> -    pos=pos+8
> -    vector=vector+1
> +       . = 0b + 8
> +       vector = vector+1
>      .endr
>  SYM_CODE_END(spurious_entries_start)
>  #endif
> --
> 2.27.0.383.g050319c2ae-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUXZmDLOXbcj6vZi6%2BZTC41VbH77CViHFRmQfxiMBqYtw%40mail.gmail.com.
