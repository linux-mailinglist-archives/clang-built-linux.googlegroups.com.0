Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBPSWX4AKGQESZGGZ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E7721ECA7
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:21:10 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id i9sf18193pfu.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 02:21:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594718469; cv=pass;
        d=google.com; s=arc-20160816;
        b=xg5IzkMQ6ekQaQlpGsLNz3g5CbIHaU0efFDy9BJt3V95iQqnhEVyH/bpTbCL3qbwa8
         fKvJqVkaQ1q2d/BeMj3xARBg1wgb2Q812Qy9GU/FmlMF5eAdT5C0m+m7E1D8alnXg4cL
         4vDuqT9ci0sHKeRNyEHCGnXd+EvwxgIIOybur0Eakhe3jMPFtEquEZtU9Yz1K+PfrlpS
         AjM930pX6pemwM8r52BEr58csmjrBbieglsDsS8ezYWMI/3urjBUKy9CwWXrdGARsGGK
         8lgaO4a92wnyi3XQDSvksTIfY7WMvTTzj4GvpY5vbEzaNem12Wy5R4RfJyYUhf6uKGWF
         rVkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=38DyJtrCzherJOUNEG5XYL0QKbryfAVMv+GOONyY0mQ=;
        b=lJcDEI+1Ts5GtEJ4A6tRBPkNJU90Ka+XwhsQ8J2m1eijUO/cBmj1o3Ov5fTWVLA1Nd
         7DLk4RPjxfw3aQRp++HEkovWN9z5gp+P201bkJ5YlTzm7YBy6vb+hgG6XpoFUmEzSvtp
         bLIbsVnCz3ktr4wgxPchHwmMoQR46dhoIluhJAVNZIDSKNltaOUxg8S+KKyO0aueXUys
         dz5ky0KB4IBS3/W4ECFADOhD7LxuWBdIlGmrSfFOpJEdQgqFd7fBmyC2Rt5LiwRV9fRo
         KeWA2tRDNyZ2TiB40zLrTjWZ0/puDSBEPRuOfhUg6LS5yvBVtwxY3wpGeIjhNXi3j8Yu
         eQUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tEvn4OQx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=38DyJtrCzherJOUNEG5XYL0QKbryfAVMv+GOONyY0mQ=;
        b=sin4m+Azp7JE21LeiLzJz4zhOmO0Jv5N6jl6JR5ULD4tiitOZvX3noW4m6AkOr5TB9
         EOTnKgCoAXsLa8YwNi9bEsVci2D3ZQbfmQkrRahGKaYfD+B60ytca8WZ0a+vkNt8qwdx
         D5Ro1Yd65uqePs8PdhEbmELVDrcY8Tf03ZYEB38QdkKa1d50l6PfParwQ/RBoolNaccJ
         sBdkhl9K5+e7ZAkSR+UneJ/t/0tK2Wzej/YGpikjdoKInJqwTqstlLyaL0ljv0fOuGnV
         n8yMW+RHPCeRkeMZtEdtTeKuW6XARiLr/QuI1vWs9u+50HvnTyh/SyxBzbqZZUmlxT9q
         2Csw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=38DyJtrCzherJOUNEG5XYL0QKbryfAVMv+GOONyY0mQ=;
        b=mgOt0islZ4G9dyw9gqkQkfgZnQlVDUAClqeqGJ4QtvC49YxuntZW+lP6iWEro0RbrL
         UyWmgzegf+KyP6zbkSS0ILN7rQ2oFahptHLmR5036Can/eUcRCPdhximgxK0YSIlAEp/
         PW4WG6v1DzYLNDb9Jzm97BNPkA194t4mna8fO2j89drBJgb7VWrfpWXV7mTVOqmJpVEg
         GwBBBMc8aRG8IFJznlGZcZr218h+hcX1vQqexuBiKT+CAFTu0oj+V0JjJg6Z0+gkrGyg
         hM5CB9C9020lhrDA4jCzI4FGkDVcm/556w3/+nxjulnOxPT1nHBYTkZb36acM1WqzSPM
         0X0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=38DyJtrCzherJOUNEG5XYL0QKbryfAVMv+GOONyY0mQ=;
        b=NJKxi0NJwYFX7xp5olM2lJqLqPJLpQ0ZDQj85cUnNQ5UJLiOoLuzMUZCG03yLVFooq
         icdcdsNEGTFGmoI8mJ7Rv0hzahPX3vIIiOHnKhTUudciMXD+g/IJ6s4DiIz+mp1nPuey
         mPPqanL+ZfvJGXq/jcb8DNtFvcPxBADCW5WGLFrtKIktQLgmJtgwKpYDgYv/i2ZENwij
         xMCmpVAU0mU2yqTFspLNDCqwHKcRslmPn2X7o2SFa26SWipzpH5ZAdDp3F2dW7zyU++b
         w/w7dcHY2AFv5ueInWAYacfTfrWZw6vyWs/QOAFIwOT2e7XYox0Wjno7IzhYTZc2poeo
         TmBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ogCcuGXzr0+fhF1KxRDGsYj+zJXuk9WLMWKMDR/rkg6ToZC6l
	rBsXJtnUhARwGWGjVe81blg=
X-Google-Smtp-Source: ABdhPJxoD5LhDbZZps29cY0l4tkwPwN+uJd6DA57EQtGXfWj71okULsVvcuObuEIGSpd1Ovv47T/fw==
X-Received: by 2002:a17:90a:ce02:: with SMTP id f2mr3831795pju.159.1594718469299;
        Tue, 14 Jul 2020 02:21:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e97:: with SMTP id z145ls6378009pfc.4.gmail; Tue, 14
 Jul 2020 02:21:08 -0700 (PDT)
X-Received: by 2002:a63:af01:: with SMTP id w1mr2761956pge.23.1594718468833;
        Tue, 14 Jul 2020 02:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594718468; cv=none;
        d=google.com; s=arc-20160816;
        b=TIi7OuFxZt5wEacfqaOBCWMXP+d7tSqrUeqrxGwP1U0Mq8hC5qhgQpvhROawdHAVgN
         nL4JlXNzZPX+JZ8ULt/ls1OvzU9PhK9P7p1TArH2vMdm8asSiJMLh7dZ2bDuLGfECTNr
         FFrCP+UvyiItbIpBh9oY7FzzG4AnnHd6c3/gujh2DqdZk6j+n8CZu/KJqKwcukWT2zG1
         p3kblXhoh7oDVsiCG5f59MUpTXAMGJWA/wnvA2IrG4XIrpyqVspdswthplOhBM89/mxU
         UJGlhhIyItM/pJ4aTnJQMwDzAreRMjuQVQHeJV8iza6hD4/iW2DHPr0mUY97y5rvSqrK
         xaWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C11Oho+jb/RAewyI2tPC4vl+z9j8D1ewX1ArPvL+1E8=;
        b=wEkAs5c3b0imLMNVPwptRqw3GHD31Cxre9AIUFoPQ0LKSm0FF4FEV7kDHfrYfTKd6g
         klS+ZLj5k31m3kzWzSPb2zUdIyPlANJP7E1LEj3XOkbc99rMng3RQU8wfnCwo1Hg0Eq2
         U2eZERgLO6XQmbcVIDFcsDWZNlGZ/hd65iSAfdaz3qz6tkjtNbCYq+I4OBMAF3pKLnoj
         2bmvGNYzcrWIdj4ZEOWfKQeq3jZI/fBk6AbVKxpu9bvelHUW/s905m0ooLuSvhgeN92f
         bs2YfHLLQ3rHrpGUbfio4VmOknPov2vb1PgiYQy4Ue4rB1ZJkhlcgtEkIjH9A0M6ydn3
         jYqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tEvn4OQx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id d16si778557pgk.2.2020.07.14.02.21.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 02:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id y2so16556714ioy.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 02:21:08 -0700 (PDT)
X-Received: by 2002:a05:6602:1555:: with SMTP id h21mr3908817iow.163.1594718468272;
 Tue, 14 Jul 2020 02:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu> <20200629140928.858507-3-nivedita@alum.mit.edu>
In-Reply-To: <20200629140928.858507-3-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 11:20:57 +0200
Message-ID: <CA+icZUVPF9-0KysS14f9oV7py87BfkK1mMS6cUKuusaos2K7hg@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] x86/boot/compressed: Force hidden visibility for
 all symbol references
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tEvn4OQx;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
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

On Mon, Jun 29, 2020 at 4:09 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> From: Ard Biesheuvel <ardb@kernel.org>
>
> Eliminate all GOT entries in the decompressor binary, by forcing hidden
> visibility for all symbol references, which informs the compiler that
> such references will be resolved at link time without the need for
> allocating GOT entries.
>
> To ensure that no GOT entries will creep back in, add an assertion to
> the decompressor linker script that will fire if the .got section has
> a non-zero size.
>
> [Arvind: fixup -include hidden.h to -include $(srctree)/$(src)/hidden.h]
>

Thanks for your v3 patchset.

I tried your initial patchset and informed you about the <hidden.h>
include file handling.
Dropped your patchset against Linux v5.7 as I got no (satisfying) replies.
For me this one is missing a Reported-by of mine.

As I want to test the whole v3 series, I will report later.

- Sedat -

> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> From: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/20200523120021.34996-3-ardb@kernel.org
> ---
>  arch/x86/boot/compressed/Makefile      |  1 +
>  arch/x86/boot/compressed/hidden.h      | 19 +++++++++++++++++++
>  arch/x86/boot/compressed/vmlinux.lds.S |  1 +
>  3 files changed, 21 insertions(+)
>  create mode 100644 arch/x86/boot/compressed/hidden.h
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 7619742f91c9..b01c8aed0f23 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -42,6 +42,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
>  KBUILD_CFLAGS += -Wno-pointer-sign
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> +KBUILD_CFLAGS += -include $(srctree)/$(src)/hidden.h
>
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  GCOV_PROFILE := n
> diff --git a/arch/x86/boot/compressed/hidden.h b/arch/x86/boot/compressed/hidden.h
> new file mode 100644
> index 000000000000..49a17b6b5962
> --- /dev/null
> +++ b/arch/x86/boot/compressed/hidden.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * When building position independent code with GCC using the -fPIC option,
> + * (or even the -fPIE one on older versions), it will assume that we are
> + * building a dynamic object (either a shared library or an executable) that
> + * may have symbol references that can only be resolved at load time. For a
> + * variety of reasons (ELF symbol preemption, the CoW footprint of the section
> + * that is modified by the loader), this results in all references to symbols
> + * with external linkage to go via entries in the Global Offset Table (GOT),
> + * which carries absolute addresses which need to be fixed up when the
> + * executable image is loaded at an offset which is different from its link
> + * time offset.
> + *
> + * Fortunately, there is a way to inform the compiler that such symbol
> + * references will be satisfied at link time rather than at load time, by
> + * giving them 'hidden' visibility.
> + */
> +
> +#pragma GCC visibility push(hidden)
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index b17d218ccdf9..4bcc943842ab 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -81,6 +81,7 @@ SECTIONS
>         DISCARDS
>  }
>
> +ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
>  #ifdef CONFIG_X86_64
>  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
>  #else
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVPF9-0KysS14f9oV7py87BfkK1mMS6cUKuusaos2K7hg%40mail.gmail.com.
