Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZU35D3QKGQE6KMWMUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id AC31620CFD5
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:51:03 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 21sf12788784pgk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:51:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593445862; cv=pass;
        d=google.com; s=arc-20160816;
        b=OD0FS92vCjLTr/ITnxwhbkRAc3okBoXRSmvzfnadmz547THh+cP38VdIP6Nbws6JsN
         54h4jy2qaGnGQSEoL1c5ahW9pn3jY7MWyz2RqLJbz8syKrZIDGuSIk1mSgGt34VwivLi
         YgRixDX2D3EZQYRvdFWIonCY0eQURsTRXbh/3UDWjzfJ6Yyx+NpiIdp1ecSxagv17W8R
         f+R4aoJZ3/+ldFDSNjzBCO4SeLvZzXEQGM/vsyDeap4S1ei/jVYhWy6g5YuyIeWIHvsK
         T3v9DdsqKck4lYodPXAi9Qbu3CULSKF/6VDFqAzMBufZVBKyG0goq/bvEs8GWGKmcVlA
         bIsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eiXidmqm+vfFdpkntbS9BYWcco56IzLsRjf73r9Oszw=;
        b=ZRFaWwHkiTjoqss/8OXwdMfwjoeDezA2x/rQoSG45UyisEfdz9BL7JBEXFaFBwcEoE
         4e5t7bIh/f1RQcRyPGzzbk2EsDv66KzfTaFZMcJJi4AhUtS2aVhu9Is1TA0gcC9qf79C
         HBh9xlNMzBfiRW8lk8PCOQAA5K/PySrNZ03wo9T2lkB/VixOUoo8MwtABXgXN/YDzh9X
         6aUHhqS31msSSnhpeK8UW3Ov6gKTLisbjBLhhWOEZmfVmZ1AuBvRr/J0+Hcd9tcJc4Lb
         UEEVtJ7JI6/brBej7iHlv4zvhC4QKIYM7GPr/sA303AC9Febk3pRqnOWDada2S3Vdm0L
         2rLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OsFrigUr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eiXidmqm+vfFdpkntbS9BYWcco56IzLsRjf73r9Oszw=;
        b=W1ayLezV8nKST0B7vAQidSuZVcDwfMZghbBrt9PzsK/nGNmcJ/J8P8uhAfgW//vkXh
         9i2ZcN8qp7vU0qoNaVVQ1pRP4yzcjzjbSa50xMgLEyEe8SlxEBX0u6bdguY5txjEMxaS
         iQ4PXYBlT5Rv5Z7IfExu25ZcqPMPrGPlQGn1dX9nISQnXzUDeTFIQCFsSeAHk0ZKJgZ7
         EQMixvLZu2rEEQcDa0DXkrEcEk1wYQ9hvHH0NQctSQXAmOOjhHENCVbvGc7s3owJveXb
         e9Dgnp26pmU18MFABDZ6+PLwn0wN0aNOazHxxJZBFUGj1rmVLsf7Z1GEN7RBia31iM8L
         997Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eiXidmqm+vfFdpkntbS9BYWcco56IzLsRjf73r9Oszw=;
        b=YeTJpgDv91Yesf7Wz8sv9FPeDNa4bLoc2sIemRNkDU9m1uVu6vmiR2qISCTlrLqhm8
         YlzURa25Fa5VkUQXxfHaDcDzmT17E0cNcbdh2NHBra/IGkFbDtPJlYmBm2uov0o8RK2V
         8ej1IVZ2EGsVYGsIfc0ci+SGPhdvRq6FohH1402RE8IpAGcmoGdNj8dGRX8s5OXA3gqX
         8KG/zK9R6PhA5dxFI2ZYH5fEj0Tzw4zr7Ar0j0k44L6Tabq8m2ovOn3L594kRD/TaDDp
         I+ONqyPPyQJjjK7h174jS77xaOurnikPpNFoFL0KYTF4HPxkTpDPz2A+7c7wBWvoJd/W
         TkZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303LdET7st9sqikEx/2zH5yC9wzfCMW+/CmuBu7GgN+xvwRuUBa
	MobuluFIOMBjLn60VE+So+0=
X-Google-Smtp-Source: ABdhPJxtL+Z/uhpNAdoW0FAmOfhNOu3/JJQIN8uz07lAPEbX8Sqed74hxird9XgxnClrI5zHS48Mdg==
X-Received: by 2002:a17:90a:c003:: with SMTP id p3mr18802994pjt.178.1593445862434;
        Mon, 29 Jun 2020 08:51:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:658c:: with SMTP id k12ls1877885pjj.3.gmail; Mon, 29
 Jun 2020 08:51:02 -0700 (PDT)
X-Received: by 2002:a17:90a:e7c2:: with SMTP id kb2mr19190551pjb.69.1593445861986;
        Mon, 29 Jun 2020 08:51:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593445861; cv=none;
        d=google.com; s=arc-20160816;
        b=RAwn4KI/hNl9pVnGFrqBn22BSK+LHxxT/AgShHx1/xtHBgwafZjbgbGOVCKrWsne6v
         2AmYbNG1VBtIYcYvEfalTJGkq/IylJg9Ejb1v784n3oeQfWtt3bBKIwusstAEunF+D+N
         mLfcyWkrA5RVFbyF2zuQ+JVzNOPYF6o5PM3edsz/6Ai/+X5kSXL3oLhNcCJHZAeC4qrb
         bSqNTykY1RPyovb8DmvJMcYQ93Au/brhLhaBFe/szgbUUjoDjOdsgFHd3t9Uace0nnHa
         OqSzhzQ9v0O93XYHriKuEeZVarqLJFCe351eEm3s4qjwg8dDN4vYGvszHY1g6G4wgUfF
         kKXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jfw7xgsCVT4+P8rZ+eOB1eWDoXiGwe+YmdSqzX3C0Y4=;
        b=tLcs3Xp8INXKoUlZpj8C27uYOOhw1w4r0t0Qm3f2Av4FKQgXsiBYvoXPVK5ujN9LiD
         DqFTiUCqU2zMz94I7+GELcp9yhv4AKCF0Dd407CEHbKOs6dPoV0cobKbWsbTDWmbWZss
         a6xLPp3AOVi8IKfSHMrBA7xfXKqTlWNGXnVGKRF3+7CqFIRdEb7+esnNnwPCKkRzrCLD
         Y/h39sx1p2v5MZ5IwZf+l22DtrsImb/tmBjjheznH8uoVzax0g9mSUUnTTft1VEoNa2T
         O9tFVtVzfYlSjhphyS8G3+t+Ecact3d9wGFFtBL2Y8dQOoi5V/d/E2r8JWlBd+WJE48H
         ZVmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OsFrigUr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n68si12478pgn.1.2020.06.29.08.51.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:51:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id d194so5110679pga.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:51:01 -0700 (PDT)
X-Received: by 2002:a62:758b:: with SMTP id q133mr1865322pfc.289.1593445861687;
        Mon, 29 Jun 2020 08:51:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a8sm165949pfi.29.2020.06.29.08.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:51:00 -0700 (PDT)
Date: Mon, 29 Jun 2020 08:50:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/7] x86/boot/compressed: Force hidden visibility for
 all symbol references
Message-ID: <202006290849.940FAE8C9B@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-3-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629140928.858507-3-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OsFrigUr;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 10:09:23AM -0400, Arvind Sankar wrote:
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

Is this recognized by Clang? I'm assuming so, since I see this already
being used in drivers/firmware/efi/libstub/hidden.h

> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index b17d218ccdf9..4bcc943842ab 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -81,6 +81,7 @@ SECTIONS
>  	DISCARDS
>  }
>  
> +ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
>  #ifdef CONFIG_X86_64
>  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
>  #else

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290849.940FAE8C9B%40keescook.
