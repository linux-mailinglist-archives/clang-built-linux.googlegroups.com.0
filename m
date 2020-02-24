Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOPG2DZAKGQEUZWDYZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5342016B0FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 21:34:03 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id k27sf11963526qtu.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 12:34:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582576442; cv=pass;
        d=google.com; s=arc-20160816;
        b=UyTWN6hDmL42afjaBll9Pogue43DvD0CV7/Hq7Zo9fbV1JzXkVvMDbv33a8UMqR10h
         SxpocKdZqhXWiAZqLKPGRq2WMjnyVkVMH4w2jrDVLsQq1HINFSKkvpnp63r2DsRwHXD0
         xSlzwNNHCqSdBqW7TRobhyP0mPnX0QMdrWu+CAAHSrNFI3B5Hr2LEzobyfemmjoESzNx
         9JHqJ1mi+sALTOj+58M/qi+RNRhgLz45KjW+SpsbxFNnB/IGFX+0GXtduXvK8vjEzLLl
         vb4Udw+ThWd69qiO6BKrsIloqZu584xQwDzdh9I3eD/g+XeW6bLm7uo86vh0GxaazIde
         GvYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qu45WzXCNkQoZh6qXY+o67ROGqolJtd3NzD3NoPD9cE=;
        b=ukY7ZJuJmvtgpg7EEB7RGbx5aWM6WD4HxyfeH+RuSFTkkX90OXEyHXTgUJda6jUB7C
         75W0/qihHJhsdHO4YvH48gvG14yiCCi2gww3NWw5BDAKt2udaQbP6XUmbB7NWkMm++L3
         84JFl9y4Jfi6p5VsdPn4TxqSAAgMBjVub/iBZJ12fDWWe6gwYodKocW/d2MlNGM4nJZt
         /fBlH8aYWL4sfj54mK43hyzIyK2RxheCnSwdG4a0rRx/dMWS57RuisCYhyDHzXtyi58V
         lmugsw7uT4vteBVSHRxLvZo6dlp7q7CwodD7h+a91OX8Ylf2rtrRycCvJOjS2jhH6MBB
         73gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wAakMVhF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qu45WzXCNkQoZh6qXY+o67ROGqolJtd3NzD3NoPD9cE=;
        b=rjRoAUBV4Ouw61oMCeLvamVikrAFoqPad+M2aVBez/qIj28PjboqtJNF+ZxwEOK4IK
         n/Qk7Zd/nJAfQpr8L+UFxiq+U9C4vEmpOwA6cOjeIUIBW5erIZ+QACvb+UNBjvFdfNth
         twGBmKQ67Mzb0yQ/kAi6MuTlL14cjVHLd3OGQgotqWmQFJKrDnRI0tVYednTo5sR9t8s
         ND+ocrEvAQwf9QKH7zTBYe7oNuy2Zkw5Mg/RjX0Svec9rqyt4ckRReYWrV2O5z8ldSZt
         8lYgmwivyqy2pAYPa70iTR9sGqzZRlBG3LS2rxYiwzLhO5R+qIlMPqf+ZwAwQLc8RxcB
         GAng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qu45WzXCNkQoZh6qXY+o67ROGqolJtd3NzD3NoPD9cE=;
        b=II4SyzXuRSPamHVgAoA16IwKjU/bREGWsoGxrk7g3SYnbF0rYn7jcDyBoPNuHhvItW
         1+f3Fy1kstu4YTWSZfKE/D6Yf8M6gpsMf//PZggIAwyXjhdkcPbauH9UruJfavO7JOmU
         YkXh9rvM2L2CIBfuzkrjdVBlklZSaPq/Kuou3SVBDR1jX8YdDrgfVKR/BOMtEDPbsPAA
         U4cCtcUWF5w+IpMh6x+N3ChApEPMLIcwtItsoDmijCRSL9Q723eZXEdfAaXBN0DLjm5x
         p6+PKtuLuCpoPSHnIZiH7ugLS5XNUjrD2m7QwgDa/GOmHgOWagREeGk/Jo43OfKj2o3u
         G0Nw==
X-Gm-Message-State: APjAAAVH0Ib1lZUPf+e3g5W5tAXJo2AzqQGT4Eeg9ebYkkkmlZT1MU6Q
	fseHb/bHK6Zpzw2lOIh/LPI=
X-Google-Smtp-Source: APXvYqxsmgTgjhF7a3htMS/rETQ8NvUmVZlM7WfWshnvQ+aO7bfniZEJwIFATFGf6s1RbsfmS8+CgQ==
X-Received: by 2002:a05:6214:907:: with SMTP id dj7mr45533771qvb.245.1582576442114;
        Mon, 24 Feb 2020 12:34:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1762:: with SMTP id u31ls4117724qtk.9.gmail; Mon, 24 Feb
 2020 12:34:01 -0800 (PST)
X-Received: by 2002:ac8:4e91:: with SMTP id 17mr22466918qtp.133.1582576441619;
        Mon, 24 Feb 2020 12:34:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582576441; cv=none;
        d=google.com; s=arc-20160816;
        b=RluGC525X783nyhuxR9wblbijo/nAP7+ITbdBg76saAQb8B5BrfIzVxW/JVftNcZM4
         cE/cN4ahkwmxAn6itWHZ0ziAELgLTw+JtZDB6WfFoq8HHU54JIDnNMVY1Mt8I+5SJMq5
         RqsxzKFz5fwQ3uNSpnRSoPvfbZ59DdJig+OxfcrrfYoaRYaN7cSqsVK2YfMN+JM9MeZG
         M3ihXQ+8Sq9YVIox1x0NO9wpg+CeOK84vzSpAhKjAqDdWuVLKA4atabkOfOfecESz/QS
         WJs/mtQfBldWgW14I9kf/g9JvLFAAGR45Ty+cKTBe7XZ6vw4CceM2g/NWknlBU5GCACm
         3B9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=76eCXvzOdkKqMOkLCtpzKfQrkjuAlYbntrCFv9FhTZo=;
        b=rYsu0dJjzrBi3RwPBFuhElqr2FYEeaF4jrw3LF9mUA+mXgBXxcLa8+HVD4DAsQqimv
         E8NzqG+Omj98ZhpViHWXXVfG6hDGV6QP1Kc2nbAKg7HK7dueo/U/w2u2zd6/MBEKTD5F
         fhzknPtRTwHQw4Cr8e5hDe0SsLkqZUaQ8OQ0gsU9fWMVb6BJvo87rxNFF/Y+PDwSthkh
         DrVZGewn+SlgOcxw8Zvcf/grilEQJ6BCVtpxnawKAUP8xNSBM2w5OS9pCbKJflUPm5Vt
         eLs8yiq2KME8/B3Fmk8/a6LmsRCjeiaFLzIhP1tZgALne6qhiXNwU+0CZ7hK6niWYh4B
         aJyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wAakMVhF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 76si697914qki.1.2020.02.24.12.34.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 12:34:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q4so387335pls.4
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 12:34:01 -0800 (PST)
X-Received: by 2002:a17:902:760e:: with SMTP id k14mr49014175pll.119.1582576440335;
 Mon, 24 Feb 2020 12:34:00 -0800 (PST)
MIME-Version: 1.0
References: <20200222235709.GA3786197@rani.riverdale.lan> <20200223193715.83729-2-nivedita@alum.mit.edu>
In-Reply-To: <20200223193715.83729-2-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 12:33:49 -0800
Message-ID: <CAKwvOdniNba30cUX9QAZdVPg2MhjVETVgrvUUzwaHF70Dr3PrQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wAakMVhF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> While discussing a patch to discard .eh_frame from the compressed
> vmlinux using the linker script, Fangrui Song pointed out [1] that these
> sections shouldn't exist in the first place because arch/x86/Makefile
> uses -fno-asynchronous-unwind-tables.

Another benefit is that -fno-asynchronous-unwind-tables may help
reduce the size of .text!
https://stackoverflow.com/a/26302715/1027966

>
> It turns out this is because the Makefiles used to build the compressed
> kernel redefine KBUILD_CFLAGS, dropping this flag.
>
> Add the flag to the Makefile for the compressed kernel, as well as the
> EFI stub Makefile to fix this.
>
> Also add the flag to boot/Makefile and realmode/rm/Makefile so that the
> kernel's boot code (boot/setup.elf) and realmode trampoline
> (realmode/rm/realmode.elf) won't be compiled with .eh_frame sections,
> since their linker scripts also just discard it.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-By: Fangrui Song <maskray@google.com>
> [1] https://lore.kernel.org/lkml/20200222185806.ywnqhfqmy67akfsa@google.com/
> ---
>  arch/x86/boot/Makefile                | 1 +
>  arch/x86/boot/compressed/Makefile     | 1 +
>  arch/x86/realmode/rm/Makefile         | 1 +
>  drivers/firmware/efi/libstub/Makefile | 3 ++-
>  4 files changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
> index 012b82fc8617..24f011e0adf1 100644
> --- a/arch/x86/boot/Makefile
> +++ b/arch/x86/boot/Makefile
> @@ -68,6 +68,7 @@ clean-files += cpustr.h
>  KBUILD_CFLAGS  := $(REALMODE_CFLAGS) -D_SETUP
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  KBUILD_CFLAGS  += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> +KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
>  GCOV_PROFILE := n
>  UBSAN_SANITIZE := n
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 26050ae0b27e..c33111341325 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -39,6 +39,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
>  KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
>  KBUILD_CFLAGS += -Wno-pointer-sign
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> +KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
>
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  GCOV_PROFILE := n
> diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
> index 99b6332ba540..b11ec5d8f8ac 100644
> --- a/arch/x86/realmode/rm/Makefile
> +++ b/arch/x86/realmode/rm/Makefile
> @@ -71,5 +71,6 @@ $(obj)/realmode.relocs: $(obj)/realmode.elf FORCE
>  KBUILD_CFLAGS  := $(REALMODE_CFLAGS) -D_SETUP -D_WAKEUP \
>                    -I$(srctree)/arch/x86/boot
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> +KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
>  GCOV_PROFILE := n
>  UBSAN_SANITIZE := n
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 98a81576213d..a1140c4ee478 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)          += -m$(BITS) -D__KERNEL__ -O2 \
>                                    -mno-mmx -mno-sse -fshort-wchar \
>                                    -Wno-pointer-sign \
>                                    $(call cc-disable-warning, address-of-packed-member) \
> -                                  $(call cc-disable-warning, gnu)
> +                                  $(call cc-disable-warning, gnu) \
> +                                  -fno-asynchronous-unwind-tables

I think we want to add this flag a little lower, line 27 has:

KBUILD_CFLAGS     := $(cflags-y) -DDISABLE_BRANCH_PROFILING \

so the `cflags-y` variable you modify in this hunk will only set
-fno-asynchronous-unwind-tables for CONFIG_X86, which I don't think is
intentional.  Though when I run

$ llvm-readelf -S drivers/firmware/efi/libstub/lib.a | grep eh_frame

after doing an x86_64 defconfig, I don't get any hits. Do you observe
.eh_frame sections on any of these objects in this dir? (I'm fine
adding it to be safe, but I'm curious why I'm not seeing any
.eh_frame)

>
>  # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
>  # disable the stackleak plugin
> --
> 2.24.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdniNba30cUX9QAZdVPg2MhjVETVgrvUUzwaHF70Dr3PrQ%40mail.gmail.com.
