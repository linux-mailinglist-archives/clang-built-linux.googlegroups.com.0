Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIXH7DZQKGQE55AFBRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 797E8195C0F
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:10:59 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id l8sf8253997qvs.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:10:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585329058; cv=pass;
        d=google.com; s=arc-20160816;
        b=dqYgti7m1x3NatcvaHl7SusUNsoQTbQMTuGuXmGsB5fAmdk1t1kXKawblIBQ95CzRu
         cSkAhio5E66PAjFjBzyTGtBriDXOG5y5CFFn7B9sNnRA4s3VoiWjxTLFTsYsHBQLtTqQ
         xRXEyAIJwx+5B93/jbSsn2oLr+WBhBwPPaLAqClAB5USr8BBPGnEbfzShO16+TVMMZVP
         l2vCT0FAW1zp/sQWSsSRiTelvA3Q4Cu1IByQKmoFgf3tNK0myjv9gM6HWeSvZUNzYlRF
         v6vPoWcSLBYJP9Qw6AYR6NNv7drYdT5SYMXT+4ssSCEGs716DQeYaynOn3iN9H2f2KCg
         ieUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=M44KA271OUaeFGAHPYj5bqM7Q6L6XT5dsTtDN3ig4zE=;
        b=UJFTUF5C98HItWqEebu1i9kAxH3IXY/NVKhwcc1cJnnl2TiR+FRk6+Z3tgqn2/vXeH
         PBUSOEDyTLq/2z7fQ8bQmtDfaSkNLmSRDKM1nc8HFlwyyMxJkOiezfUGyBQb0rx52zVF
         Zt5DMUePMr7exojcKhDp9GSPQ7q3XpfeYpa4TKZg0AzqDw8ZylvBdB4WHpc9qO/fROHV
         XUJd/4xxnWM9lj1VPa58JD6JHd1LsWiXMdv1pbE3k6AojSZC8nwaClgcNcdpxjR87bAb
         gfRpv9nyMiK6A16Plon+HbUwu8BgeaLfVxWKdHDQd8iUNge0f+AEX0/fBmQ+/AajOrd8
         fEJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MUofL7R+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M44KA271OUaeFGAHPYj5bqM7Q6L6XT5dsTtDN3ig4zE=;
        b=r2C1BnH4b4VQqWqYQbe/HmwItwPb6u10YWZSBKOOBS6p8tI2zydi3r2fF1YW+5cNUL
         wOun+060D6l17FPLby0DjwSv/btuZs6LsY4jnaeelXrr2WqnHzShoEchxVWkMRPQlApE
         Jf+GRz9mAuhdbTy/pPGhCBnslmOcnf+bAvKLhyyTHpuq8oyRBDVfVWZ/COT+TxFMi7RL
         satyXeJITUNuquGw68PPAc8tcwKIvSTetZvAK2jYQxU/w3yV2BdAdWtjFWmBucSYt6sP
         BPlWVZiXnWB8tdTHk8PcqCxI+j55FdDFidCsiMBOb+YdSy971XicTgGtEEyzv4niRvhs
         8tHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M44KA271OUaeFGAHPYj5bqM7Q6L6XT5dsTtDN3ig4zE=;
        b=eDz9TJ9aTuSOFc97CWECIAiqWh2xvN1cb8t6MMj6irHQsr5OWbxDZ8n+y7wSRPCTUf
         z14j2yiqnFpIvo7uhknPiZK7R5VBwf/3kvM7JjAXV368dX114X6e63jxpvNzLnJzOjYc
         fxRrOHHTlbJmP2YuN6WyIcVI6MJMtvUUGWPsHMYylwSf5s4Y89FmCTdlZOdglpwhMz0/
         qBzp6ffFCLzuzJ53RF+OB3STO1LmGXDGdRMsXG0qAHjSqqg+dECZx3FPmYrNHwOrdLNJ
         LIH71KpWxDKYgEnJgswoCsU19FRKTsgi/PHxd0jYTWj3+YfqQ3j+CRIC5fKK5Y6/ZcKU
         ldpg==
X-Gm-Message-State: ANhLgQ2xFA+NXcCvhVkc9Pk1KJA0XHswb2Se968sTsa2aRogokTYVvMP
	9Abj0y/zFoOTwAPrJ7iGHkM=
X-Google-Smtp-Source: ADFU+vs3EEcG2EA+iKtsjFvbBPcmhFW7nvaxmhRpGW6arbY9wnr5Ivx+vLGrawZ7WmrbB4VuADIJBw==
X-Received: by 2002:a05:6214:17c8:: with SMTP id cu8mr228006qvb.178.1585329058175;
        Fri, 27 Mar 2020 10:10:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6542:: with SMTP id z63ls4756388qkb.3.gmail; Fri, 27 Mar
 2020 10:10:57 -0700 (PDT)
X-Received: by 2002:a05:620a:20dc:: with SMTP id f28mr354006qka.216.1585329057557;
        Fri, 27 Mar 2020 10:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585329057; cv=none;
        d=google.com; s=arc-20160816;
        b=VS8x+jUnTXpuWlnqmbCYH4+iOKfbfp3a/GahnK+OFOc9STqMvLQaSysKByyCLhe1YE
         0bcXSHclOuw+Q0rDMx26AzxzSaATofTfYDSYmlmorkO8qpqDPWiog8eBdi13t5JANpM1
         86LOBKPi/YCJ1YD2+7+DjL2MHV/VpJ28aNljM1nI4JRmc1UkFYjONfNfVOke4ULKA3n7
         e9lIZXfziNNVujQ9X4gOWMGvpiHKgj42IMhSe43jm6M+owykQ/NDBjzZrAG+BYdzUePc
         YridzJv5P5gxPcRbadxGjC6PnRyqxCsigBB3qn3og06fh1AjKgzUMQyNAgTcqH+oJI2o
         +Umw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pBCjAk0gvrWE6sWceslEiTTxRDFmFfcP2iFKJjO3ChU=;
        b=BwEKk2RZfIWsQGyxncAuRzF8dTUG/zV5czCBRQ+S4P9jQmrWBIaOFPmmyor4b3u0ek
         7s7MlOJhmhAFMbbWCQL395WoVov0TmFxq0cugQg2ykWJpczSLbxpPydz6B1uy7ys5ljt
         06/cj9ml50J6XlaBYiFZ8h7G/f1rLep5RG3TJuy7AI8dfT4qgfOzx66bY8MNIkd0lT12
         ymo81JEDBLtf0FpfKVMSEBH3ILtAsNB/nPXgQXYy+gUhTO9pL1XztxfUNjgUW/eUThQ9
         NMlPjWkACKmbnxok7V8GDuWwIE72rdXk8deXOZMOHxY54X5tK7I+bLjJV2hTp/f8NtGl
         Df5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MUofL7R+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d193si363894qke.1.2020.03.27.10.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id c12so840534plz.2
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 10:10:57 -0700 (PDT)
X-Received: by 2002:a17:902:820a:: with SMTP id x10mr62388pln.179.1585329056243;
 Fri, 27 Mar 2020 10:10:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200327100801.161671-1-courbet@google.com>
In-Reply-To: <20200327100801.161671-1-courbet@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Mar 2020 10:10:44 -0700
Message-ID: <CAKwvOdmLmfJY4Uk-Atd9dT5+zQTPeoagjMZMcDqdVfKCU7_BuA@mail.gmail.com>
Subject: Re: [PATCH v1] powerpc: Make setjmp/longjump signature standard
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MUofL7R+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Fri, Mar 27, 2020 at 3:08 AM Clement Courbet <courbet@google.com> wrote:
>
> Declaring setjmp()/longjmp() as taking longs makes the signature
> non-standard, and makes clang complain. In the past, this has been
> worked around by adding -ffreestanding to the compile flags.
>
> The implementation looks like it only ever propagates the value
> (in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
> with integer parameters.
>
> This allows removing -ffreestanding from the compilation flags.
>
> Context:
> https://lore.kernel.org/patchwork/patch/1214060
> https://lore.kernel.org/patchwork/patch/1216174
>
> Signed-off-by: Clement Courbet <courbet@google.com>

Hi Clement, thanks for the patch! Would you mind sending a V2 that
included a similar fix to arch/powerpc/xmon/Makefile?

For context, this was the original patch:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=aea447141c7e7824b81b49acd1bc78
which was then modified to:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c9029ef9c95765e7b63c4d9aa780674447db1ec0

So on your V2, if you include in the commit message, the line:

Fixes c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")

then that will help our LTS branch maintainers back port it to the
appropriate branches.

>
> ---
>  arch/powerpc/include/asm/setjmp.h | 6 ++++--
>  arch/powerpc/kexec/Makefile       | 3 ---
>  2 files changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
> index e9f81bb3f83b..84bb0d140d59 100644
> --- a/arch/powerpc/include/asm/setjmp.h
> +++ b/arch/powerpc/include/asm/setjmp.h
> @@ -7,7 +7,9 @@
>
>  #define JMP_BUF_LEN    23
>
> -extern long setjmp(long *) __attribute__((returns_twice));
> -extern void longjmp(long *, long) __attribute__((noreturn));
> +typedef long *jmp_buf;
> +
> +extern int setjmp(jmp_buf env) __attribute__((returns_twice));
> +extern void longjmp(jmp_buf env, int val) __attribute__((noreturn));
>
>  #endif /* _ASM_POWERPC_SETJMP_H */
> diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
> index 378f6108a414..86380c69f5ce 100644
> --- a/arch/powerpc/kexec/Makefile
> +++ b/arch/powerpc/kexec/Makefile
> @@ -3,9 +3,6 @@
>  # Makefile for the linux kernel.
>  #
>
> -# Avoid clang warnings around longjmp/setjmp declarations
> -CFLAGS_crash.o += -ffreestanding
> -
>  obj-y                          += core.o crash.o core_$(BITS).o
>
>  obj-$(CONFIG_PPC32)            += relocate_32.o
> --
> 2.25.1.696.g5e7596f4ac-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmLmfJY4Uk-Atd9dT5%2BzQTPeoagjMZMcDqdVfKCU7_BuA%40mail.gmail.com.
