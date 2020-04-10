Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5VVYP2AKGQE4WCZPWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A611A4B5C
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 22:45:43 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id e69sf1464235vke.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 13:45:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586551542; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ho1crTPr2ALiVPPQXBtIHMedg1G+z/eTDDhscoMUHBIWkGRkEJ8Wu4KZjMWYMW7z23
         VnJd/bLo6ru4XDWPRQbaf024d/wZdWum+3v2T+bNDyPMc9N4Wo2w9dpfjtCJkt/FSLFp
         AeHyHgE2EQiCw3ka7zCuq+sC9S2avdIeINPM95Mi48JRgqFA1mXZlfK3GhPQbLBojGiJ
         1zTPNdBpbcVch+Dxvz4Ss9wuNpMDxmmRZ1DPP5mHEP2Sdxr/RGtnGPZqP2ePYvWqpTkK
         3s5MycE7hiZf3WyNXNwEi8APaugHatohaSDI025gi3Kjro3EiQ3GZN4EbxrB6k+mt2Cp
         tLig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n8UGls4DWi0Ss7NY4lSnbKtwZ5BlaRsj8grCMhG7tO4=;
        b=xkpaXAQNb3HnldtYpd+0mLawB8rSONIBx02pwENb3e1N2MSYKHLIQfbKE9moQZn1ER
         zoGonYtAj7E0IMTcGY6vtQ3fRscihA4qcR1IWBewc3IPNcuYsaDwcXqt9Y7bmQpJ9Qai
         Wpc056eX4cP9OK9iR3Am4NTd/OKxf2piBd7WlNyxGdzf1YSAy3eg5qN5vJzzyvMU/rW/
         5tSqgi/m45ZAgthUEqmSzRK/ffGsWFLrlbxg52U1DKhLBozw3KF/3qaFpeLYVOD3ui3N
         GnWUZI2ldErA92FmUfebJ5wSkFK4h3P+nmjTt6Dq5IIsXu4dOLHTJA54JNN+4Nk4TIkh
         HiRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iIXb8hrV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n8UGls4DWi0Ss7NY4lSnbKtwZ5BlaRsj8grCMhG7tO4=;
        b=haCC5JQNqMpVN8blD9yed8KBKSv9re9NT3uS5WLmwPPR9wqJRuLcmvFi4G2ayutlHq
         D1Xhze2AwdHjwAledI7hHRF62gqL+1sXlhOxjk36ZKhDCbmCikBbSWvzfhVd2DmRX+L/
         SXpioHbvNJcFUOLmg4sPq5HCLZZnubamYGMulMrOI9KNMuwuNlz2cVFyrnVOd4wB58Xf
         iZmJ+B/XeRaYvpZMA/9T1o1NFB/6WCt+TV7g7jBTy8EHUVy+3bqanb6sSLYF1wR8FE/s
         uzyWK8xsTQoVDTroDSrm8PA7PfcK9QcO2BL53HSHSiOlvNnEpaeBGV5r5coeMtSn4CcZ
         aFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n8UGls4DWi0Ss7NY4lSnbKtwZ5BlaRsj8grCMhG7tO4=;
        b=EjZidmiRWqanvj+TxWdLU49uIfAUnM6cSDPqefK5ZcJRuRTjxdjrqxYtFXhRJ1aToz
         QdOI28dqNzRDSuZFTi5d31liT2uEG1jV5n91lEbiDGDIjfHZKb+fAaG5jB07NQw53lOq
         2GmXELjwb/o782qE13T+PaswzcLQaAChx5t3hhpDEOUGAPBPwkvXdcAqGUG0SFxPX/Ey
         M8Tu73dauEUlbJdnr2NThCuvIc0XWCgY0RRiYPpracSnSlPu8YaKHVwrrVm68c4h+Mpw
         vNKY4dUUIcLN+qPIRQCv3iaqJ1jv0x22HAbCM+g/RcSNAB44O7N00VDUCrkxAa0G+AKi
         4JAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYQ8nO+mddJS90jhtK6pJmrqbdh49tNJAxjyyvdn/myjopJTZ5E
	NHzH4VfyF1lAvX7zgbCwr6w=
X-Google-Smtp-Source: APiQypJmjTFZSIN2xpfheTykVWJTQH4NZHjmU2q2c8/z2c0tqHx+8R0LB0YD8HFVdtfT3u5NdX5Khg==
X-Received: by 2002:a67:eed0:: with SMTP id o16mr4866693vsp.170.1586551542389;
        Fri, 10 Apr 2020 13:45:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a5c3:: with SMTP id o186ls157878vke.5.gmail; Fri, 10 Apr
 2020 13:45:42 -0700 (PDT)
X-Received: by 2002:a1f:abcc:: with SMTP id u195mr4643728vke.11.1586551541977;
        Fri, 10 Apr 2020 13:45:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586551541; cv=none;
        d=google.com; s=arc-20160816;
        b=iCLALu0YMMGLOzkr7fq5WkDQiukjjBAisT8fZmeYcQ3PZcUcQjJ8aNPwI4psJsahMF
         24kpGBZ4Xt5mLUGrz9edMQMef6HLSzHij4WvHfaiIj0OTNprsGL/qP/keRxxtXCixm2n
         FvJsmHInoJpP/QoHGqrdNLF3dJk0a84iyHswxp0eSwoLV2HIscw3ewek6FfYmWAPEZ3L
         P0DSXYmpeXiYWfsELPM2nGXrDN1YehbhXy+lutZc9imoVTE61LIpdivMFSwgC5GsH9os
         pju4QObmlxNKWAN6dgk4R4F2AZGzd4Bbrl8qXbYTi7sRdvxffx39PviVMkJMhHsw6UAG
         cVhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iij7zgytwGd4FsiXK28RwDWIfgaOYgN4ssh5i9GAVys=;
        b=KFNTvpCkcDOxoRRHL/bZ0PreNoEM2MAku0EfoqR27lFlYTAvDz7TpmV2q4v88iUtDJ
         pknsX/mrs9RMUhD89+s6GWrFweZsg8uqK46/BRZgnobc655cAkgPp8YIIKSy2Ygup+v8
         HLtbrXva2wAgyTWSvj/UNfaoxfCaVIbP4REmku+4mwYcDMuzCLpWXmbMRGUby+lKKdz6
         Z9J8d2c2oe8rlpEor0Qmc6jJUQ7xCwOS2vBqGF0UhwXxg0hLj6I6jeQ077gVWgdqvb+O
         tUotyCxXERa7AAQWRNrdfyAM8rLg6t98fxX1PVh3Xlb9WOJeNK6Ok5LiyUcajhamKU61
         upKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iIXb8hrV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d20si198186vsf.2.2020.04.10.13.45.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2020 13:45:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id ay1so1032002plb.0
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 13:45:41 -0700 (PDT)
X-Received: by 2002:a17:90b:8c4:: with SMTP id ds4mr7707878pjb.44.1586551540896;
        Fri, 10 Apr 2020 13:45:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 80sm2302307pgb.45.2020.04.10.13.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2020 13:45:40 -0700 (PDT)
Date: Fri, 10 Apr 2020 13:45:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, macro@linux-mips.org,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Paul Burton <paulburton@kernel.org>, Borislav Petkov <bp@suse.de>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <202004101334.A641706F0@keescook>
References: <20200407080611.859256-1-jiaxun.yang@flygoat.com>
 <20200410090634.3513101-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200410090634.3513101-1-jiaxun.yang@flygoat.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iIXb8hrV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Fri, Apr 10, 2020 at 05:06:23PM +0800, Jiaxun Yang wrote:
> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> --
> V2: Take MaskRay's shell magic.
> 
> V3: After spent an hour on dealing with special character issue in
> Makefile, I gave up to do shell hacks and write a util in C instead.
> Thanks Maciej for pointing out Makefile variable problem.
> ---
>  arch/mips/Makefile             |  2 ++
>  arch/mips/kernel/Makefile      | 11 ++++++++++-
>  arch/mips/kernel/vmlinux.lds.S |  2 +-
>  arch/mips/tools/.gitignore     |  1 +
>  arch/mips/tools/Makefile       |  5 +++++
>  arch/mips/tools/truncate32.c   | 29 +++++++++++++++++++++++++++++
>  6 files changed, 48 insertions(+), 2 deletions(-)
>  create mode 100644 arch/mips/tools/truncate32.c
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index e1c44aed8156..633e9de4d262 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -14,6 +14,7 @@
>  
>  archscripts: scripts_basic
>  	$(Q)$(MAKE) $(build)=arch/mips/tools elf-entry
> +	$(Q)$(MAKE) $(build)=arch/mips/tools truncate32
>  ifeq ($(CONFIG_CPU_LOONGSON3_WORKAROUNDS),y)
>  	$(Q)$(MAKE) $(build)=arch/mips/tools loongson3-llsc-check
>  endif
> @@ -261,6 +262,7 @@ include arch/mips/Kbuild.platforms
>  ifdef CONFIG_PHYSICAL_START
>  load-y					= $(CONFIG_PHYSICAL_START)
>  endif
> +export VMLINUX_LOAD_ADDRESS		:= $(load-y)
>  
>  entry-y				= $(shell $(objtree)/arch/mips/tools/elf-entry vmlinux)
>  cflags-y			+= -I$(srctree)/arch/mips/include/asm/mach-generic
> diff --git a/arch/mips/kernel/Makefile b/arch/mips/kernel/Makefile
> index d6e97df51cfb..0178f7085317 100644
> --- a/arch/mips/kernel/Makefile
> +++ b/arch/mips/kernel/Makefile
> @@ -112,4 +112,13 @@ obj-$(CONFIG_MIPS_CPC)		+= mips-cpc.o
>  obj-$(CONFIG_CPU_PM)		+= pm.o
>  obj-$(CONFIG_MIPS_CPS_PM)	+= pm-cps.o
>  
> -CPPFLAGS_vmlinux.lds		:= $(KBUILD_CFLAGS)
> +# When linking a 32-bit executable the LLVM linker cannot cope with a
> +# 32-bit load address that has been sign-extended to 64 bits.  Simply
> +# remove the upper 32 bits then, as it is safe to do so with other
> +# linkers.
> +ifdef CONFIG_64BIT
> +	load-ld			= $(VMLINUX_LOAD_ADDRESS)
> +else
> +	load-ld			= $(shell $(objtree)/arch/mips/tools/truncate32 $(VMLINUX_LOAD_ADDRESS))

This is major overkill. Just use the Makefile's builtin text
manipulation:

load-ld = $(subst 0xffffffff,0x,$(VMLINUX_LOAD_ADDRESS))

And note that a shell failure here would be entirely ignored, so the use
of die() in the proposed helper wouldn't actually stop a build, etc.

> +endif
> +CPPFLAGS_vmlinux.lds		:= $(KBUILD_CFLAGS) -DVMLINUX_LINK_ADDRESS=$(load-ld)
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index a5f00ec73ea6..5226cd8e4bee 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -55,7 +55,7 @@ SECTIONS
>  	/* . = 0xa800000000300000; */
>  	. = 0xffffffff80300000;
>  #endif
> -	. = VMLINUX_LOAD_ADDRESS;
> +	. = VMLINUX_LINK_ADDRESS;
>  	/* read-only */
>  	_text = .;	/* Text and read-only data */
>  	.text : {
> diff --git a/arch/mips/tools/.gitignore b/arch/mips/tools/.gitignore
> index 794817dfb389..58ead412c8d3 100644
> --- a/arch/mips/tools/.gitignore
> +++ b/arch/mips/tools/.gitignore
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  elf-entry
>  loongson3-llsc-check
> +truncate32
> diff --git a/arch/mips/tools/Makefile b/arch/mips/tools/Makefile
> index b851e5dcc65a..69debb18bbb4 100644
> --- a/arch/mips/tools/Makefile
> +++ b/arch/mips/tools/Makefile
> @@ -8,3 +8,8 @@ hostprogs += loongson3-llsc-check
>  PHONY += loongson3-llsc-check
>  loongson3-llsc-check: $(obj)/loongson3-llsc-check
>  	@:
> +
> +hostprogs += truncate32
> +PHONY += truncate32

Isn't the special variable named ".PHONY"? (And also is that only for
things the don't get written to disk, but truncate32 is...)

> +truncate32: $(obj)/truncate32
> +	@:
> diff --git a/arch/mips/tools/truncate32.c b/arch/mips/tools/truncate32.c
> new file mode 100644
> index 000000000000..82c19b4c32da
> --- /dev/null
> +++ b/arch/mips/tools/truncate32.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +
> +__attribute__((noreturn))
> +static void die(const char *msg)
> +{
> +	fputs(msg, stderr);
> +	exit(EXIT_FAILURE);
> +}
> +
> +int main(int argc, const char *argv[])
> +{
> +	unsigned long long val;
> +
> +	if (argc != 2)
> +		die("Usage: truncate32 <address>\n");
> +
> +	val = strtoull(argv[1], NULL, 0);
> +
> +	if ((val & 0xffffffff00000000) != 0xffffffff00000000)
> +		die("Invalid input\n");
> +
> +	val = val & 0xffffffff;
> +	printf("0x%08llx\n", val);
> +
> +	return EXIT_SUCCESS;
> +}
> -- 
> 2.26.0.rc2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004101334.A641706F0%40keescook.
