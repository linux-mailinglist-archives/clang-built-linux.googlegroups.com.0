Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7N462BAMGQESJR4U5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7F534A352
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 09:42:38 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id a16sf4831718qtw.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 01:42:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616748157; cv=pass;
        d=google.com; s=arc-20160816;
        b=LBOHxGRSdOsGefMZVxAQfRSgUsnNmq3XWTgsRMVDCXO+kzZ8ysDuaYMEguQbpYw8QE
         Ga+ir50293CiamWNkpnUISsNQwcKWrO1J14maxff3WRo3ExxLoCsDgdDbpzRpl7Kw0Pa
         EKHT0NmSTkwgmVW4TmW2+BUxuPuTxyNCW3bDhvnTGthzRgsdRGKoRHfGpmQaZwuB/Izx
         fq/RAPkhXek6keByxIAjM9jVFB/KA9wYlXSbsBv4H7axNnJnZwZNoXoRkpU/hN0IYuRh
         SUbz79XDaxRxLPGFjxLPrzzK+jSKPM7+RFhqx+srZqijsoOx+qNHop8Mcoi5CJQ+xcJL
         z1VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZFDXbI3XqclCa52KVxqPlvM+6N+KWMagMHe6wHaeozY=;
        b=RWDW0IT3bGdpnTMN9efb0CfCXMshGjCDkeT3x6BVW3T8KhUos+xzACORF6PatbLs3F
         NPs+APcHmNEGyclYDIEaJ9oFgjnoMxAzokx6VOLLBr6RG49qKlIe2kIxAaILm89ikLRV
         WQZjCkManP2hdLQPz6lGjfwk2jSK/xLKGK6yrpPzqfJzyO4HjXeBUB6AS3V/bsC+Dogx
         W4plIS0kW8EqA7uZhBMhz67qoWuAFcPYbG0cCtejnlIC5Zsi8yHEjtlir3AzAWip8Ibo
         O5cPlLsFrMvvNRUZpZFgFp2A3NCx1g5uG02QPRoh64F4tTUTBwzDuEW1xnBIZgAAaauy
         DnUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R60U+wzx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZFDXbI3XqclCa52KVxqPlvM+6N+KWMagMHe6wHaeozY=;
        b=ZL+mvmB6Sn6QREcHOJdflcurnRXQb/QnbHMf8HiB9sAxrrgWL+zcqqAYTB4Mogdf0Y
         8aHK4/XmOWPWTOKF3rTH/vHDeuTrI8O1/MdCBqkqLokWQHLbotPIlbD8PXyGPnZj/fIR
         c77lOZ91DQUBMxlnn3soRqfM86mFBrII2wYKSnMeARqbl7RFUXsWn9Pd9sHilQYI3DBG
         t9jJDMsUOlOd7C+2pb5ob3quCRl+V4PKEmsXN64Ookd/VSrWiuZn2oZidVGVg7h4IfeG
         YTT6OoqCaVwAwnKwv+jQoSUSpeTymoAYwUuGwYfBtbKHK9k5YItsG0N9jbqm4FVQxxZR
         bk1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFDXbI3XqclCa52KVxqPlvM+6N+KWMagMHe6wHaeozY=;
        b=fwYn4LjExLCMlwaqXWd10mbQwVBy2WYInWXTTH9K9IsUzpIjRpdnAURRjQbvXorxfK
         Dg/BKbEUrsAv9fKSUsFaX+3brV6QpspCg8bw9kmNstTluoBpTkXfgxECDZ96+KZthdSz
         azyMQdqnLw1Zvbd2DS2SxrZLiG3wXLwhtBurwymVh7AUBCBIgz3WwopLdHNSE7BbSMO8
         AqWs8zfHN0QLRksOJ4wK5MPJJiSg+vapLZZdTDRK6t2BxYFZPZVPvrnn7oNI6xr6aTjT
         hSXovtnfFN9xNPTscU5AysqBTeDe2vUAV3qPI0LQfx0vZgO+m1oj+e1RLPi+h0LMpq4Y
         wxGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFDXbI3XqclCa52KVxqPlvM+6N+KWMagMHe6wHaeozY=;
        b=iuoAvJZtCc9nu6KQyqRAUgWo08SP+e0D9m0z09HBSYMqG+TRrMUfxvtMoiIkax7Zgv
         jjLFDbwMmcqzx8ccvsrCqrGZNhQnZQiX+rvzu+CTFj7N02ThO1MuUDqz3+6K75tPAvos
         HFM3QdjFDPj2Gp8JsQc1065gX2vUr62yYEokE4dpPf+N9KuuYYTo8gTfhPSaP85iAJES
         ar5TJLOm8t9LCua0Skfb0vtlL5rNF+Uc8YZO4II64EY1KLC6jrmWrWs4gAnUnPiOfs/e
         RrIxC1FRziWrgK2cog///3I2sUkaFnyzDN6/7JVnobvQQX46DfNH8oo+uWFHvTavrwC7
         hh3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331uwh1ybic1Lpsrq9XxhDVA2uelBdgSGRKbRtNRJ3ODZdTceIH
	lRCuEcOe1D9vig0zkiSZADk=
X-Google-Smtp-Source: ABdhPJxgQRrbit1Ogz+SkeWGn1sEboLiIP1+usCG1NkcCriIjrmMsU8Uw/MoAy+d2AgsS8LDySqSQg==
X-Received: by 2002:a37:65d4:: with SMTP id z203mr11646952qkb.254.1616748157686;
        Fri, 26 Mar 2021 01:42:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b752:: with SMTP id q18ls2185644qve.8.gmail; Fri, 26 Mar
 2021 01:42:37 -0700 (PDT)
X-Received: by 2002:a05:6214:180d:: with SMTP id o13mr12163112qvw.10.1616748157250;
        Fri, 26 Mar 2021 01:42:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616748157; cv=none;
        d=google.com; s=arc-20160816;
        b=omdBtA9jCF6BWZBhfokiSvgGjRVhDkVaiotgaExy+b3i30FFwVgdHLMKd2i+Za8B05
         RhTXOARz3gssionmqtEuw5L9fqjI9Vr7IbjYtI5RBgN8aa0Y/wQ3X7mfuGQbyrPISJNK
         lwDc6vNPibl1cub8Zse1E7vRi4K3r8qAXN8EwAlvn1FMjB7dHesbyqcFfS/wGmbZWjom
         RwPt4YNgNuzkRoSVQx4zjkK6MXO+W+IfvFIaoTybLOT7J/GY+QUby3kFyXq2EtZYuowQ
         0h1vLtApuV6eSx92+N5411yuQFMwnw1kwXiw/oxprEONxv9PkopplNkAz0OVu8gy+92f
         aXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CkY4A20RVJeXci+R5FXU3k0PYcW30JfQNZigwa1FYbw=;
        b=lL4wl/XvLGvJZAF9Ik/oT6zF2gbN2uyhicj4Mh7pgkGWzvampGTyUq4Ce6t8Ee64KI
         JZ6wDOg7Ezp00oReA/aH+CjjOLAaNFOerBgEnzffW3YDDXqEMV78fkOZtR7Bwo0Rux4o
         weO01W7gjxYelgTm8za5EfF0qmLF4osevoF264sIJDqwNaZIxKk5CNWILo9kS4eGlCXd
         1YPKPPNyKkcEoTyW5+YSJzyC8dBMWvJGxec6wNeinSKH/B28PHO1e1O92T7pKp10a04c
         PewcjhzKpORzjDn9AgJhiMUC12QEoHk+ROKZzFmSr+nKmv5ypjmlLqRuLNQWMt5eHrHl
         nSLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R60U+wzx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id o8si668620qtm.5.2021.03.26.01.42.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Mar 2021 01:42:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Received: by mail-il1-x130.google.com with SMTP id y17so4408705ila.6
        for <clang-built-linux@googlegroups.com>; Fri, 26 Mar 2021 01:42:37 -0700 (PDT)
X-Received: by 2002:a92:c5c6:: with SMTP id s6mr120887ilt.186.1616748157005;
 Fri, 26 Mar 2021 01:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210326000435.4785-1-nathan@kernel.org> <20210326000435.4785-2-nathan@kernel.org>
In-Reply-To: <20210326000435.4785-2-nathan@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Mar 2021 09:42:01 +0100
Message-ID: <CA+icZUV2ieaw-YGRzpFM033aDcPFYa4ZNcBNdh2XWbVwqUp2Lg@mail.gmail.com>
Subject: Re: [PATCH 1/3] x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, Ard Biesheuvel <ardb@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-efi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, John Millikin <john@john-millikin.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=R60U+wzx;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130
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

On Fri, Mar 26, 2021 at 1:04 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> From: John Millikin <john@john-millikin.com>
>
> When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
> contains additional flags needed to build C and assembly sources
> for the target platform. Normally this variable is automatically
> included in `$(KBUILD_CFLAGS)' by via the top-level Makefile.
>
> The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
> plain assignment and therefore drops the Clang flags. This causes
> Clang to not recognize x86-specific assembler directives:
>
>   arch/x86/realmode/rm/header.S:36:1: error: unknown directive
>   .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real_mode_header
>   ^
>
> Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
> which is inherited by real-mode make rules, fixes cross-compilation
> with Clang for x86 targets.
>
> Relevant flags:
>
> * `--target' sets the target architecture when cross-compiling. This
>   flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
>   to support architecture-specific assembler directives.
>
> * `-no-integrated-as' tells clang to assemble with GNU Assembler
>   instead of its built-in LLVM assembler. This flag is set by default
>   unless `LLVM_IAS=1' is set, because the LLVM assembler can't yet
>   parse certain GNU extensions.
>
> Signed-off-by: John Millikin <john@john-millikin.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

I had John's v2 of this patch in my custom 5.11 patchset.
Thanks for bringing this up again, Nathan.

Later, I will test the triple patchset series.

Feel free to add for this one:

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  arch/x86/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 2d6d5a28c3bf..9a73e0cea19c 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -33,6 +33,7 @@ REALMODE_CFLAGS += -ffreestanding
>  REALMODE_CFLAGS += -fno-stack-protector
>  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
>  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
> +REALMODE_CFLAGS += $(CLANG_FLAGS)
>  export REALMODE_CFLAGS
>
>  # BITS is used as extension for files which are available in a 32 bit
> --
> 2.31.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV2ieaw-YGRzpFM033aDcPFYa4ZNcBNdh2XWbVwqUp2Lg%40mail.gmail.com.
