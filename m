Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJ542LZAKGQEQXLRM4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E6216B865
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 05:10:17 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id t17sf6543617plr.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 20:10:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582603815; cv=pass;
        d=google.com; s=arc-20160816;
        b=XY06jIXr1q/J3FD8+QFbw/GVKHh0JUpEGHFNHuqfw0HZ5apeIcjJDcOmfEKxSXLwJs
         2HrQTBZ/7BD+tS6Tf9ciKSbiBwMBNpSvJhtx7Upoo8IRO/S01pv2rgOt5LXPnEkDFLFF
         tDiwHFESVAy4zEMrvELr92PWr4DUr5j5sJKGcsOlQAjgHrPbrSyk/twHn+S1FZZp57Eq
         FOiBFSwyF4FquJkhTumSmHbZR53/Lr6nHOKQ5NzkXD1ljzZCPbcgO9waF1AHvNBR7oRk
         N+9Rqi8Q47JkNMSMgAj0582XDxcVWAMy+s7PQO/vUeArMezlXjyiTlDDSxFx/08/P/2p
         ZKRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=m3AN5xHBhCJSb8mVOSlagGEpopEpoEQiZajRxa6MgCE=;
        b=0MeUt8H/6efXhDzqmEr8rO8sxiZHo5YnKWGA5PzaHYUlXaKVOlmXc8iEjHNEDCNWuQ
         E63BKoM5HhqWTSGIeXcS1Y6MfcPl8QD/B4YfyrM81KGUjLEYN2nH3+HH83hFZfIFB6iU
         +rOSC8QmRFq3FmIgyR3122fmSB+MfrZU1zs9brNR8gZKVgAKJUFx6rzp3N7ednUiC2EW
         H4HrMTfToAo2LV1Xelmyl+R27tV1PnrdssLHyeunE6FYhlDnO6BHOLHHGZV/dZBpbnAL
         6vZwR2D/sdPP2UrtE5xcBJl9YifEEB1YbF7eDQnbnjBYO8EnCEpD3/dUfbT3r+aoOwfe
         599g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LVqXzB6A;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m3AN5xHBhCJSb8mVOSlagGEpopEpoEQiZajRxa6MgCE=;
        b=sdsKk5AxDqDW2ugTVJWkUj/Xgf6/sMBu20SPFM1Lma/rLNTaqdRhVcpOnlw8Xfm3qJ
         9Rmhu13jh5YeXNQFvIpELaTAeYjKhjFWFHEvAbrvNNYBL7PW67800JW0zvyYoTVSfHUI
         dNzh4irbRySQs7xAtzrGoYGujKW0WKHKvrq7hQyibCQAlVbSl71WgOrprGIb8VCSs0Vv
         TOq74YxhkeZtV1dBYeeP/d0tMY3bTZNzEoUnQa8Tc3/NfgrvY2iwbKeZvyqO39Ebku9o
         5KC7xHn6/2zEwmKBEM/Y4wHWCL47dcTs/kI4CikvX0wxeRcnCm2EHQL0OmxCq/PyC+qd
         AQFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m3AN5xHBhCJSb8mVOSlagGEpopEpoEQiZajRxa6MgCE=;
        b=U//xqIc0QY0+U0hdqPy9OK0NYsLukzkll++GvmilJOLmFLuMebM0acRtGUbAFObyDx
         RCtAa9pnvJp/nB94kZB4c6vrd7RWi1X/XAfRzhdt/g+/IrqktSH79TeMKDhU0Jmh5kap
         E23Mlvz262cOihqP3gJB6n4/qIrJTxv+seylRqid7ak2rxHAoQpDkV46yFmpdffq0dz8
         i45/j70BsvPlhh65/V8tKBpsVizyzufxXssVX3wlx2flETW+KAQpGdQMeF3Qkuyv7HWz
         aLGLq5aErq3QDEtVgIQxR87y9+R720Tr4lyxtCdnhanLAhbfrxOvrHcDB0x7qJjbXWzg
         BGkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWzqkRKPvqg/t9c9kxGFufeTONeYOX3mNUTnU0MNfVyOvNivP2O
	+9UTzlkyRydZBqVreFOu25I=
X-Google-Smtp-Source: APXvYqwCuIJy8DB6RO5ZfHsvfx/vkQeiLN4km7KD8Iql97MY4qPoOFLuPZEUx/erBL7K9vLZwm128Q==
X-Received: by 2002:a17:90a:26ab:: with SMTP id m40mr2949181pje.42.1582603815706;
        Mon, 24 Feb 2020 20:10:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls3978274plp.2.gmail; Mon, 24
 Feb 2020 20:10:15 -0800 (PST)
X-Received: by 2002:a17:90a:d585:: with SMTP id v5mr2834194pju.4.1582603815282;
        Mon, 24 Feb 2020 20:10:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582603815; cv=none;
        d=google.com; s=arc-20160816;
        b=hSTgea/Kp7ZDejjtktcthM7orT5Wx3j6fMkS+jhT5gYw1qRgBwqgTVlAg1cI+NZTdW
         yebKUCat0AGLboJTiOdxfa82k166LdyD8Ti3bGvZ7QXxqaTIN/kuVzT3cSeRrBqr7rzl
         CyLPIwqkBXSCyAw5xXcATXluOTwRbSk0tOlQja4XN8sAnVvboHhxPBaGcMcDj5rKZ7xN
         ORUPVbF99f+v9Lyh6gs1xJMI1bRYCDekBvuRh3NanSEpekzR51riROpdWsj+bMCEUj6a
         8oSUsZDxUiFGi8bM4TW2fh63FH+HFKwGMuVYAU7AUurSN65zxKsJTN54p9OhscZ2fkGw
         D9Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Vusshdc55krHefiBaqz9JgK7J4GXTO3PHrFYufBJIy8=;
        b=OXShuMgv8ZpRNebyKxYB4L14UzECX+qA3PNNrZx84WpQ1OtOY2bS0+nGYq5JWi8xM4
         zGLyP/Sq7W9BVRDsVcp/OtD/VDSHDILZEWQK0NBUP7DklqmhgcCkuBgIQ4u1oA/VVvwC
         oqTWwEaICGjQU/5YKQnxgzMtYfDsT2KuShAk/8AFCCEQgx2XhvOVazv3x59ByHAqPGu9
         wZZ3aLotSqEvbf2IYIbknlbTZ0ty0T331yjUwpgE7Yi6ncptpeGJOZWSORdu5zLhvmKK
         0mETbGvMv3ULYRfXKLQbrOah7bDKp3LHa9t1jZZ4I804abUDL/gIndmFEVvBxWkHUcsW
         SIRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LVqXzB6A;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d14si899262pfo.4.2020.02.24.20.10.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 20:10:15 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id y30so6192130pga.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 20:10:15 -0800 (PST)
X-Received: by 2002:aa7:8804:: with SMTP id c4mr56003796pfo.214.1582603814922;
        Mon, 24 Feb 2020 20:10:14 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z30sm14679470pff.131.2020.02.24.20.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 20:10:14 -0800 (PST)
Date: Mon, 24 Feb 2020 20:10:12 -0800
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH v2 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
Message-ID: <202002242009.43E8DFD58@keescook>
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
 <20200224232129.597160-2-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224232129.597160-2-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LVqXzB6A;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Mon, Feb 24, 2020 at 06:21:28PM -0500, Arvind Sankar wrote:
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

Thanks for sorting this out. I think it's much cleaner than adding it to
DISCARD. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

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
>  KBUILD_CFLAGS	:= $(REALMODE_CFLAGS) -D_SETUP
>  KBUILD_AFLAGS	:= $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  KBUILD_CFLAGS	+= $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> +KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
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
>  KBUILD_CFLAGS	:= $(REALMODE_CFLAGS) -D_SETUP -D_WAKEUP \
>  		   -I$(srctree)/arch/x86/boot
>  KBUILD_AFLAGS	:= $(KBUILD_CFLAGS) -D__ASSEMBLY__
> +KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
>  GCOV_PROFILE := n
>  UBSAN_SANITIZE := n
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 98a81576213d..a1140c4ee478 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ -O2 \
>  				   -mno-mmx -mno-sse -fshort-wchar \
>  				   -Wno-pointer-sign \
>  				   $(call cc-disable-warning, address-of-packed-member) \
> -				   $(call cc-disable-warning, gnu)
> +				   $(call cc-disable-warning, gnu) \
> +				   -fno-asynchronous-unwind-tables
>  
>  # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
>  # disable the stackleak plugin
> -- 
> 2.24.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002242009.43E8DFD58%40keescook.
