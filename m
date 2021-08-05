Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFHDWCEAMGQEE2NQLJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EE63E1B96
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:44:37 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id cb3-20020ad456230000b02903319321d1e3sf3017325qvb.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:44:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628189076; cv=pass;
        d=google.com; s=arc-20160816;
        b=qiZCa/YzL7oW0Bgc4wWY7IYc0a2kqslZIXSJzkdiUmyAzFkocprXURSSA2fwO5Nmwy
         YyZUTcz7kNTge5h/x5eFtCvYEnU/bCIbg+2MsuA3gxx+J1l3W1LzHGjY+3zh6ET4Tzw0
         ZO3QpGpjpoMC74b6BLKur6ELN/hnJBh1WYNCPIioB3o5dc4UlKql4jN+xhFbdrEoOS8C
         A/4tNnMidwdoODHCm+SUyPpTDwMcJ9lkaiU/N5DdrnLwUgyIyu0JiPPEeLrReCD+e3Qk
         wTzsjusR7DYP3X5BTxElK2qnENNVsgQ/aMT2OBqICtFG1UnAoI1XurIrTV4wNeXNheww
         ZxPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=q6albpcPkZz/Hp1c5mria2hCOIGaZYKYUby6z0adyAE=;
        b=PpQu5M7qO6Rpcq/x/j1Vf0mjRgOsa3UWUrLHvBNTfhRH/DWwX+3YIlgRkVmQSSyxA4
         XNa1OQk1PjxGpQC5N0UCf8OxB0z+GyWn10fe2br+lWUVX3/FZfoIYndLOsoqvARlP83f
         yPVQCDyCLazaAcO2JJCIrHNDS/PWbkxynB3nMaFno1OTs4+gPxrKi+Ftlqq85ObOzrvm
         UbxDN7V8BYvJGEW0suUcBpZC5+QDf33lNFcMzmcUXNygKgCW9hlomwTyLuJZ2Pew4Nr6
         lV7lY3xSU1bKGtg2mdSV/wUaoyABZxujFixEBIe+CRw+xPfNtbew51yRkxbQg4+GChuy
         a/lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="i/JOA3ob";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q6albpcPkZz/Hp1c5mria2hCOIGaZYKYUby6z0adyAE=;
        b=r5Q4kPxlA/a95mfBJiCBd2GGBt+hEFyOpS/4gmMixiPAtTAt4zrh0Mznsh5z1n9Wg1
         UhPTQzKXOu2oMxBBQU6lRbCiDBzrne/ADgo5BHEdznVPXDSDrWhV2vEmGlncXUfN+dI6
         C7CIyLICnD1M1QXiWrP0S/JXT2MDzwG9mN+c78SdrO+EmdmVjBhcMVW6Il7Qz7KLrq9t
         cnr82BKtdllIviur+9OObAiI3aYMKnoCo1lG9kgYV0Dj53rom3ZxB5fpBbsAFcjJgV7E
         E3xwsKNnNQtcFTsZe3PwCpByzuPL/tcL60yKqtKZTQQT4NUwP+7B5eI7FK79G7+tqgmo
         zq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q6albpcPkZz/Hp1c5mria2hCOIGaZYKYUby6z0adyAE=;
        b=jdxVN7uBCGVG6LOexTNl+d6hjFVKYGT+YI47q2r729FLLAYkcaOUxUmVxhTqJpizVy
         BJ5TRjo5Tf1mfJqQTvs9okRWex0KfcHr3f+p4JtIi13M4f5cKjqkrOGUOI7D4eJ3Jzc+
         Eidr056iAi9yld+ULx5quO55e2mJVcF5UeiMA1DUkMOzVUYjIp4yPuFvyqZgqsSjitLY
         1jqbI+qOg9vkO+NApXUV/KSC/6IydAdF69M9pGZE+ZW2XYOKN88rCG/CNMne7pIaSocg
         KsSOq64myQl6+qZICnYsqarjtsJ/pSKFJ3g5ZikPhZDdjs56rCTb73UpHC2tLb9Yve7N
         WqFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53198UhrVckPycNQZL+X9M6YiAXHZk01x069N45I1pR1m680afU3
	AETUwGWYfe66h8eDsbs+QFU=
X-Google-Smtp-Source: ABdhPJw4kleNBqzuunfBeB3AaVavAC/bLEtVg0qFJPeKPCrv6id12LVnu5zfJlfMktvjHiUVnti/CA==
X-Received: by 2002:ac8:7eea:: with SMTP id r10mr5598343qtc.286.1628189076491;
        Thu, 05 Aug 2021 11:44:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f70d:: with SMTP id s13ls3848057qkg.7.gmail; Thu, 05 Aug
 2021 11:44:36 -0700 (PDT)
X-Received: by 2002:a37:bc43:: with SMTP id m64mr6324239qkf.129.1628189076047;
        Thu, 05 Aug 2021 11:44:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628189076; cv=none;
        d=google.com; s=arc-20160816;
        b=ifT+jX1TOcDi9xIbHsuoHfXE+MOWBlWd8nfD7hBZEiO4gMJWSlxIqwS78SrvDIxVAg
         lgCUnj6uKTa1O9+5elS0a/FLylOXuLRZC5qMYgjudveDPxtLA30LIZZ4QArLUBRjNGOD
         97HeWWvOxY3SS9w6qXQZ+GvTHN+jNBoe2wTPZHTySITynNPXToI0qKdMY8oOxyZUz5fa
         AgO3ebL+fGR4pD2Xbi4ki0NTI1h6kg9Mej/xrSGN2v0XrISlcMsTtf/UpbbrCmEC92io
         VkHrjzikGmXkwNdw/X2S864rycuZojbIoWuMAWM+ABOGbjzVoVT20XGbHEuxq9g5xV/m
         boIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HD63OwH13BRL/yJTdGzVt5fGliFytxXQ33FvTdOFREA=;
        b=Uhh8ZlzBwhnSBRS1/iwk1f5tk8Wv4eNbJ65MZjZpPibMnaLM2JyfrFNPzYYC0swxv+
         pBSZYOwhl/JJ8Tl2LI/AkHbbMPP9cLJBM78AtFWMbxX4yy8XGFOdCINYJRfE9jYJ3l0U
         hwLhrjVUnfFwFyN98j0QxEz2drn6wA5M6M7a1nlOLnsupJiyihfHJIVKyH0uBs+dGpqm
         aiNZKmvvLJH6UQHODLtOWvCx2tHZq4ks5djw96LFxzGjESWPrWfwD9vH5AV/JXPIgv90
         3uhvsBhkg34azRPJmJlklkEtKs7dSe/xDJGLpUG89sUtLVs7xpjcOmReAg3ePzszDjYW
         1EyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="i/JOA3ob";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d11si196862qtd.0.2021.08.05.11.44.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:44:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5783560F01;
	Thu,  5 Aug 2021 18:44:34 +0000 (UTC)
Subject: Re: [PATCH v3] riscv: explicitly use symbol offsets for VDSO
To: Saleem Abdulrasool <abdulras@google.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling
 <morbo@google.com>, clang-built-linux@googlegroups.com
References: <20210804173214.1027994-1-abdulras@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <615fafba-bdcc-7f13-483d-6f3ef405924c@kernel.org>
Date: Thu, 5 Aug 2021 11:44:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210804173214.1027994-1-abdulras@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="i/JOA3ob";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/4/2021 10:32 AM, 'Saleem Abdulrasool' via Clang Built Linux wrote:
> The current implementation of the `__rt_sigaction` reference computed an
> absolute offset relative to the mapped base of the VDSO.  While this can
> be handled in the medlow model, the medany model cannot handle this as
> it is meant to be position independent.  The current implementation
> relied on the BFD linker relaxing the PC-relative relocation into an
> absolute relocation as it was a near-zero address allowing it to be
> referenced relative to `zero`.
> 
> We now extract the offsets and create a generated header allowing the
> build with LLVM and lld to succeed as we no longer depend on the linker
> rewriting address references near zero.  This change was largely
> modelled after the ARM64 target which does something similar.
> 
> Signed-off-by: Saleem Abdulrasool <abdulras@google.com>

Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   arch/riscv/Makefile                        |  4 ++++
>   arch/riscv/include/asm/vdso.h              | 14 ++----------
>   arch/riscv/kernel/vdso/Makefile            | 25 ++++++++++------------
>   arch/riscv/kernel/vdso/gen_vdso_offsets.sh |  5 +++++
>   arch/riscv/kernel/vdso/so2s.sh             |  6 ------
>   5 files changed, 22 insertions(+), 32 deletions(-)
>   create mode 100755 arch/riscv/kernel/vdso/gen_vdso_offsets.sh
>   delete mode 100755 arch/riscv/kernel/vdso/so2s.sh
> 
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index bc74afdbf31e..e026b2d0a5a4 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -108,6 +108,10 @@ PHONY += vdso_install
>   vdso_install:
>   	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
>   
> +prepare: vdso_prepare
> +vdso_prepare: prepare0
> +	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso include/generated/vdso-offsets.h
> +
>   ifneq ($(CONFIG_XIP_KERNEL),y)
>   ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)
>   KBUILD_IMAGE := $(boot)/loader.bin
> diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
> index 1453a2f563bc..d8d003c2b5a3 100644
> --- a/arch/riscv/include/asm/vdso.h
> +++ b/arch/riscv/include/asm/vdso.h
> @@ -9,25 +9,15 @@
>   #define _ASM_RISCV_VDSO_H
>   
>   #include <linux/types.h>
> +#include <generated/vdso-offsets.h>
>   
>   #ifndef CONFIG_GENERIC_TIME_VSYSCALL
>   struct vdso_data {
>   };
>   #endif
>   
> -/*
> - * The VDSO symbols are mapped into Linux so we can just use regular symbol
> - * addressing to get their offsets in userspace.  The symbols are mapped at an
> - * offset of 0, but since the linker must support setting weak undefined
> - * symbols to the absolute address 0 it also happens to support other low
> - * addresses even when the code model suggests those low addresses would not
> - * otherwise be availiable.
> - */
>   #define VDSO_SYMBOL(base, name)							\
> -({										\
> -	extern const char __vdso_##name[];					\
> -	(void __user *)((unsigned long)(base) + __vdso_##name);			\
> -})
> +	(void __user *)((unsigned long)(base) + __vdso_##name##_offset)
>   
>   asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, uintptr_t);
>   
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 24d936c147cd..f8cb9144a284 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -23,10 +23,10 @@ ifneq ($(c-gettimeofday-y),)
>   endif
>   
>   # Build rules
> -targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-syms.S
> +targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds
>   obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
>   
> -obj-y += vdso.o vdso-syms.o
> +obj-y += vdso.o
>   CPPFLAGS_vdso.lds += -P -C -U$(ARCH)
>   
>   # Disable -pg to prevent insert call site
> @@ -43,20 +43,22 @@ $(obj)/vdso.o: $(obj)/vdso.so
>   # link rule for the .so file, .lds has to be first
>   $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
>   	$(call if_changed,vdsold)
> -LDFLAGS_vdso.so.dbg = -shared -s -soname=linux-vdso.so.1 \
> +LDFLAGS_vdso.so.dbg = -shared -S -soname=linux-vdso.so.1 \
>   	--build-id=sha1 --hash-style=both --eh-frame-hdr
>   
> -# We also create a special relocatable object that should mirror the symbol
> -# table and layout of the linked DSO. With ld --just-symbols we can then
> -# refer to these symbols in the kernel code rather than hand-coded addresses.
> -$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> -	$(call if_changed,so2s)
> -
>   # strip rule for the .so file
>   $(obj)/%.so: OBJCOPYFLAGS := -S
>   $(obj)/%.so: $(obj)/%.so.dbg FORCE
>   	$(call if_changed,objcopy)
>   
> +# Generate VDSO offsets using helper script
> +gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
> +quiet_cmd_vdsosym = VDSOSYM $@
> +	cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> +
> +include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
> +	$(call if_changed,vdsosym)
> +
>   # actual build commands
>   # The DSO images are built using a special linker script
>   # Make sure only to export the intended __vdso_xxx symbol offsets.
> @@ -65,11 +67,6 @@ quiet_cmd_vdsold = VDSOLD  $@
>                      $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>                      rm $@.tmp
>   
> -# Extracts symbol offsets from the VDSO, converting them into an assembly file
> -# that contains the same symbols at the same offsets.
> -quiet_cmd_so2s = SO2S    $@
> -      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
> -
>   # install commands for the unstripped file
>   quiet_cmd_vdso_install = INSTALL $@
>         cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
> diff --git a/arch/riscv/kernel/vdso/gen_vdso_offsets.sh b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
> new file mode 100755
> index 000000000000..c2e5613f3495
> --- /dev/null
> +++ b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
> @@ -0,0 +1,5 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +LC_ALL=C
> +sed -n -e 's/^[0]\+\(0[0-9a-fA-F]*\) . \(__vdso_[a-zA-Z0-9_]*\)$/\#define \2_offset\t0x\1/p'
> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
> deleted file mode 100755
> index e64cb6d9440e..000000000000
> --- a/arch/riscv/kernel/vdso/so2s.sh
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0+
> -# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
> -
> -sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set \2,0x\1!' \
> -| grep '^\.'
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/615fafba-bdcc-7f13-483d-6f3ef405924c%40kernel.org.
