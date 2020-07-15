Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBSEIXP4AKGQEJHKUAVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 101DF2207D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 10:54:34 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 72sf2314312pgb.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:54:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803272; cv=pass;
        d=google.com; s=arc-20160816;
        b=KlLgEr8AfzaPVV6u7umfSz3ySwHIVBkvKsCWHZ1adoibBG6kVLoof7HBxEqK3eKi46
         dNtgnA//i2tos0kc19dFdJodm9r7ht4E4K4vNLf4LW6CWMrOVdCLaySl/dXCfzdEK7bG
         livMD0x+yfduW7pFl2aP5OUfLHqGKDQaCthqtHtj7dstOKiZrSktKDgH7rwYE3jEzwlH
         g0MMMcNtmw8rdyoK6/g1gufhy02xOcIdhf8MsC+w3Yx6IHrZuNZR0dH0zGVOvFCxgVlX
         HM1zatl6205wSNHURbIzbVSo20bORGUnpzCXw2lU8AaMslzgacZYH8juQ9kq77RRWX0l
         V+Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QNT8fXGIubDlURWqFfs2dQwyDJi090qTZ4Yqsea1tMc=;
        b=pcRUysMWXtVG0r574zCDvy6VTB+CP7+6PqcE9zTCr0uWVhdTmQRf4drszSZJHHUlBv
         1kcb7zFY3Mp7cB/E6oqkpSepZhvLNI6x2MdenCtsqswMOSo3qSna3mO4AFTsW/DO74WH
         Ja+mSnxboa3mlFt+dgMjp/LvCH16C1jaLL/dpqOW6gyFUhiRnGF2KE87qePLZ02mQY2b
         /Sda7gcsjwXPd8+3FfQftdNlLw+Q+eoe+FRtZx5WFJgyrZY5N0U7PtEOdg4YfCkItH3c
         TsXvSwR/Ck1puGRB2hAgs0D6eV8dONMJ3HV5NGBkK20J5pRivmNzjTFuqmUHCaTtrU77
         s6gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZrE2/4u2";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QNT8fXGIubDlURWqFfs2dQwyDJi090qTZ4Yqsea1tMc=;
        b=fnA1TlsTV5EZqoSVDo90iYMOtBFSkgYPlOieOv1AVYSIqKWAAxpT4adh3Rm/LNIjCR
         GLbHf4lrI/McipcucMg6Sc7VanaRa0DmZZ/41L0NoK+ntKUwMwsTTaqbYRBCLL6PCT0t
         4XFQ7I80BYAMedXkFGSNYi8v/d5cM9j7j2h9UFRRzxweL37CLvaCypI75y4Hm+h+OYTF
         TcdSnIc/1wTUFXr+nwPMKUK28ZKEY6Qr2bUK8Whff5pHDxRNKn9CabzER4/xsHhrvSSw
         vX1Di+Y33M1iqXbZQsrOy6b8PaR5VCEv/FhGcU8HAWhJTATR/3ReJFtfFgBsfHS7eCFG
         vzBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNT8fXGIubDlURWqFfs2dQwyDJi090qTZ4Yqsea1tMc=;
        b=lIEPhiiX9Qq+vfEpavS1O0brvFv3NiL8Oo5fXiTMdK7EjWp/eY6sz50Vv7xsmQjks8
         2WnoUfx4tQuxO4hMkrd7weJFyNOxnXyHXDpN+vhcou7IT0M9OXvNLjPf+3n5qK3mhvC3
         mAVdNhzFEphRc6f32chCZIeA9d7Xy+2OI3qLariTbDgtTN492/ds88as1dERQASskYU/
         7CAsV0DeTX1sEAC9RRDEhguMlv4wuBdggF9ukUEKbv6pYw261XwmX55eqJ/bjtVYksxN
         cOozYLwT1q114Y4JJ9dVL3tdbkBK5CNUycLXjLEyIbF/0kzCgkBZ33loMB0IPo3HkQLk
         XwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNT8fXGIubDlURWqFfs2dQwyDJi090qTZ4Yqsea1tMc=;
        b=SWDV3F6pD9kIrzhIXCCiB5bR0QiiJ99bfzVftxaIO6jJ2jHSEe92WlnPhK2PFTcb2i
         VH4o2Y1psvoq0OdrONjlHr/zoYGFZmGcliH6pVeiHg+tapIgrf/El3qgIeTa4xWK2NNE
         8PZ0Zc+pqYxuj2vJR74p6k6SqjNh+3IantrLsvBFFhGf2OKtDi9NzzG+32ciwCKPr0He
         D3HyhRSteuHIZ5L9f6jbNvo+pMZh7YdsPJVLB/eRPd5GghmmIO6CPk0tFJKURaWsACOa
         dYbADZLUVECleVgxjbKZbYdu/OG6rOIm4S3HSAe47c8w9z8aLZnvxso1sDp81MJmy+uK
         U0ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QvQIxAhkklZnUgrZXmxOFtWLeRV7QVKyrrh3aDmrWRehwakk0
	PRSd8aNJezKY+3gdJ0NHqtE=
X-Google-Smtp-Source: ABdhPJx9NRvtZYuXrxDYSZzN26LqYhUsnb69ovnQTUHgNaTLKqGfLP1fddXJnyoCC4OmrBc/mqnyEA==
X-Received: by 2002:a17:90a:26ac:: with SMTP id m41mr8783366pje.169.1594803272494;
        Wed, 15 Jul 2020 01:54:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1b4d:: with SMTP id q71ls836681pjq.2.gmail; Wed, 15
 Jul 2020 01:54:32 -0700 (PDT)
X-Received: by 2002:a17:902:7807:: with SMTP id p7mr7611346pll.242.1594803271999;
        Wed, 15 Jul 2020 01:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803271; cv=none;
        d=google.com; s=arc-20160816;
        b=Lw3lHA0FTD8UKoOVPd+THaVmduY38+MA3IoRZRL4ugY9cM6fTNYOYzru8I7Jhs2vsq
         +y/lFPVSgeJOwDAHoMdjFWsW9jI5scQzcEVvYD5htGG7s31Uggc5GhCC0etLGIAvh5X2
         HuqCh9ZtB1oFT2aK+MtdZp3bgEOACgiNFX5+o6N3KHXYWMi8kEe0h+X5rBL3W/pqBJ6/
         yVb+AJKCZlMhmssP2rNSjevsnOAkYOe47q9p7dvTn1g6Ll2VxZv9xnquiMGoWYR6pJMr
         r3PrOe8/pIKQdwMiG38YEC2qBqGc6WooQJqSHP80wXVYAzzGd3qV27P68p2heV4iIeWG
         FYsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1k+VOrS3k+fDAx9V/lzvRFaKuobwwRq89CgWgY4l2xA=;
        b=iYyJ7XE+uR6rus5erJsvrP+ZvpZRmkIqHUTuQJP/DGkPTw5ve9DcRyDkx76b+dqDUk
         fFDjw8zdJjtA+Ep8ye54WjH1q1RikM7jIma84ipHGN+WTG3DSFWX1A0egw8sRXf0OHur
         4Ub3GY6CUeJJKrJcCGJfTyrPpO7afBJRp+rx6vknhnsXOKTzGTDqJDKcS/4EhCFHww1d
         b55cuiIzvUV8R11rH6bWNxkUiovDOn9o3czCD8fG/XnnVTDMRJtkX75TuKV4iUAy6Cnc
         Xm8Y+uONSNX0eGzIXSynSxtfI8gr5KpJR+6nNnT6IpCajogHhN7q7Y1iCPUP1D5tdLvf
         C8Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZrE2/4u2";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id l6si274593pjn.1.2020.07.15.01.54.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 01:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id e64so1393093iof.12
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 01:54:31 -0700 (PDT)
X-Received: by 2002:a6b:c343:: with SMTP id t64mr9383464iof.66.1594803271042;
 Wed, 15 Jul 2020 01:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-3-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-3-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 10:54:19 +0200
Message-ID: <CA+icZUUxn6qZhXEgr4jiBSUjSLqCw=wPLwmKZw6eViZ6ORLXdQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] x86/boot/compressed: Force hidden visibility for
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
 header.i=@gmail.com header.s=20161025 header.b="ZrE2/4u2";       spf=pass
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

On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
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
> [Arvind: move hidden.h to include/linux instead of making a copy]
>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>

Reported hidden.h breakage and asked for a follow-up.

- Sedat -

[1] https://marc.info/?l=linux-kernel&m=159056070321982&w=2

> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> From: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/20200523120021.34996-3-ardb@kernel.org
> ---
>  arch/x86/boot/compressed/Makefile      |  1 +
>  arch/x86/boot/compressed/vmlinux.lds.S |  1 +
>  drivers/firmware/efi/libstub/Makefile  |  2 +-
>  drivers/firmware/efi/libstub/hidden.h  |  6 ------
>  include/linux/hidden.h                 | 19 +++++++++++++++++++
>  5 files changed, 22 insertions(+), 7 deletions(-)
>  delete mode 100644 drivers/firmware/efi/libstub/hidden.h
>  create mode 100644 include/linux/hidden.h
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 7619742f91c9..c829d874dcac 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -42,6 +42,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
>  KBUILD_CFLAGS += -Wno-pointer-sign
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> +KBUILD_CFLAGS += -include $(srctree)/include/linux/hidden.h
>
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  GCOV_PROFILE := n
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
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 4cce372edaf4..609157a40493 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -27,7 +27,7 @@ cflags-$(CONFIG_ARM)          := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>  cflags-$(CONFIG_EFI_GENERIC_STUB) += -I$(srctree)/scripts/dtc/libfdt
>
>  KBUILD_CFLAGS                  := $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
> -                                  -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
> +                                  -include $(srctree)/include/linux/hidden.h \
>                                    -D__NO_FORTIFY \
>                                    $(call cc-option,-ffreestanding) \
>                                    $(call cc-option,-fno-stack-protector) \
> diff --git a/drivers/firmware/efi/libstub/hidden.h b/drivers/firmware/efi/libstub/hidden.h
> deleted file mode 100644
> index 3493b041f419..000000000000
> --- a/drivers/firmware/efi/libstub/hidden.h
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * To prevent the compiler from emitting GOT-indirected (and thus absolute)
> - * references to any global symbols, override their visibility as 'hidden'
> - */
> -#pragma GCC visibility push(hidden)
> diff --git a/include/linux/hidden.h b/include/linux/hidden.h
> new file mode 100644
> index 000000000000..49a17b6b5962
> --- /dev/null
> +++ b/include/linux/hidden.h
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
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUxn6qZhXEgr4jiBSUjSLqCw%3DwPLwmKZw6eViZ6ORLXdQ%40mail.gmail.com.
