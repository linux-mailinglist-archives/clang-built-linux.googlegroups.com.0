Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH5Z2HZAKGQEFGSYFEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3E316B58F
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:30:41 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id c12sf21342409ilr.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:30:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582587040; cv=pass;
        d=google.com; s=arc-20160816;
        b=nSijh7r9uftxkPsxl72TUdYZyIAbOPmkvrpoYa9HZknHSbtlgvA9Yd/T5jb8BDywdj
         cwy/wF/bnVx0cUVZNHmQBfKKO+43f/zLbWUAL6XsAnjlNK3188T7Wu0tmrrw02W83VYo
         Qx+VBc1mt4cN2kO7xuyb1JYnvwf5qe5pSgIvTd0uvPXA3qKVHgzh5AhjrApIJsfe8t5C
         EBZmC6ybY5FyaVpxf821DkQegKBlgJ4rIKm/2eLTV5aw3YxGWRdIKjIAmc5aIEBbqWK5
         SEFZb0khriw69yVLA4rDvmpqfeMaph5ANq5u3QzyWBmchUIiWvoWPFUtMsyCtu5sZbE7
         crSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FSwK5mJkZ2SSSN/0oE/PRnFyPXQLfVfR9as8fdH8yDU=;
        b=u5FkZ9mrxjdd2C2+yrrpgabuNtG223De/ViuT5ZONc6dCk+jBJrb5QDPVlVRNTA7eV
         ga/7U+nWa49/cNj3t/r/FgTtAHYcc8qHxACJKIcotT7Vz/fjE6FX3nuGbXiKcvIaVGuf
         5Mh3EO9lnj1dLz8Uteg5h0OaXwRqTQuPLCxUVgR8FFJVnYUCClFzuwKQydFWwfokTuzF
         bqYAlltIhyq7lxfQIeogCF810uWk8gidD7ICEQ66asdAI/sQ8CvlJxTSM5l3iE1Yk2kD
         0ay07ZP4qensKZgwO/U23Xh5OoPU3UjRetzq8iAyMMxiHgi5a/jva9W6Iy3VrML3ZhQQ
         e3TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y9e4ZIE5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FSwK5mJkZ2SSSN/0oE/PRnFyPXQLfVfR9as8fdH8yDU=;
        b=rPKmJ5taAdBgi4SI6E//2u8XECyvvbBf36i8IgrsaN5HIKJ/XTZE5kIK9PNOHXV3IA
         TlRa2wKqCGesYH9QSDDdvRc0JOW025wK+Gtr365Qgunfp/PV12D7eJKLnlfxx/FEXygj
         PUSkiZwO/1JWdhdiN1kURDDWd4LRH7rhxixAlXEJxDvnaxEI4EjLTEV5HLI97p1ytMdR
         CvPm+bmhraD1xhF1CKYok36zy0YnCBYzUK+TcHYCZ0h4RXglbjQWM9J+IGzEs+LnxNMk
         yszkcJ8tpi60pBvwhdxvcKT3lIEZ+NMLvL/h+him4EXmTFhGDqOnXRsWOluuxPLuz8JE
         fgUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FSwK5mJkZ2SSSN/0oE/PRnFyPXQLfVfR9as8fdH8yDU=;
        b=XsHVWXWgQfL/OQJitqawukaI32ef8yeYDnCPtfrqDE7iUkQgk6478FA7xQRn6yiqZu
         +2mGM/WYbWPe3hPRzr0KFGb788JuCG6zAwvczW7OwJcIY2+0PImosUo32nctRY6+3QdI
         lqsN5hoHLwKhFoyM6YH4Q0uzts+oNrpZzC5QT9vQFBYtQiEwmKcj8ZYjxAfW7mPR2hYb
         1xIvoykZf19FA+CfMvymI+yJrxRqhggrx/vkLZPUlkioy0dSoJwTVb1kJ7/SPumWKVYq
         ds3LnAp4wUEh0cAqeRiOifG4NHg1KNUr0t4RnZ2D+dDkIYUmbdV9svhyEzf1e+sgkv1e
         k+wg==
X-Gm-Message-State: APjAAAU55UAUem6mM5F+u3zMwB/f02zieezXTGTKzapqc992sqaEsczL
	C3oK/t+dw46MWHNPuZGo4AU=
X-Google-Smtp-Source: APXvYqyKteRtyHu2bThwkAsH5MilQKdwf/HmcND+Xtbv76vdBrBdZkQdBUNOCB3VIMvr7LXut/qAVQ==
X-Received: by 2002:a92:9e99:: with SMTP id s25mr62946654ilk.80.1582587039649;
        Mon, 24 Feb 2020 15:30:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8d0a:: with SMTP id m10ls1994525ioj.8.gmail; Mon, 24 Feb
 2020 15:30:39 -0800 (PST)
X-Received: by 2002:a5e:9246:: with SMTP id z6mr57598685iop.232.1582587039171;
        Mon, 24 Feb 2020 15:30:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582587039; cv=none;
        d=google.com; s=arc-20160816;
        b=zG3s8GLS4IxTJU8eQOWG1+MMicsxFsj5cgExEcc2XE42okkwy+s6MzTwj8aJdRMkVD
         cHQBbNjUYnzOrm/T3N0NyRh8NmXaZfqtkfrOtk6al5jZLCHKeeMoIvGDefCagykg71PU
         5vaOMIDH8BQjSTBltfdokM1haYsl/QZJ4uBqubTaH1r8emN3PjG35YTLadHfxLUSy2qg
         u+g2aIbalrEthNFi5JkXcnPXiNGcU1wMylxqLX2yZFCY8UYWFnb1fWpEyJVOjChzhAYt
         t8nk/RS5+lC0+RGz1v+w1s9l5ILOe/jJAc0QX3/r7tzNYwgHhcfhibTkM2aYgYtKHiXa
         A9Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZMfELxm44QBYo6rqimr2zJP2ICXy8S+lHokTgtg/D4E=;
        b=e+a+MrGRnoh9aJ5oBff+9gdnPN/ZX19ysMCHqOBfbknIZWgPsZtmRICemln+BGK8QR
         tphtyen7Afuc2KehPEx4L/3ve1DViEe2b+U1qOmS1BI1CelcBiwwWc7rHw/Lg4TIKKpK
         D5+HyRw+6HobvLjTsMTOo+JEyOUAIaWfn5GGD3wcPnzPHgfyE70PlKAxG6beaWgGyk6U
         dnw1Y8ojMBotRTP7gY2nLhS2wWPdf8cfRbotTlJ7HyYaEijlKk5EBNcIP6syl5joHwwR
         HKsCIqm9tRhKkk4unpMSJPQ3E9iP7TdZo0FAAVcwiivUhhhXQYK1gi+B2O49bi6X1Fmg
         JlFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y9e4ZIE5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d26si102942ioo.1.2020.02.24.15.30.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:30:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id u12so5908473pgb.10
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:30:39 -0800 (PST)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr19298985pgb.263.1582587038117;
 Mon, 24 Feb 2020 15:30:38 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
 <20200224232129.597160-2-nivedita@alum.mit.edu>
In-Reply-To: <20200224232129.597160-2-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 15:30:27 -0800
Message-ID: <CAKwvOdkG-fFLce+1UNxRXSptkwWUJU9=MG2Pcd_SJiGUmhaHPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>, 
	Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y9e4ZIE5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Feb 24, 2020 at 3:21 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> While discussing a patch to discard .eh_frame from the compressed
> vmlinux using the linker script, Fangrui Song pointed out [1] that these
> sections shouldn't exist in the first place because arch/x86/Makefile
> uses -fno-asynchronous-unwind-tables.
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

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkG-fFLce%2B1UNxRXSptkwWUJU9%3DMG2Pcd_SJiGUmhaHPg%40mail.gmail.com.
