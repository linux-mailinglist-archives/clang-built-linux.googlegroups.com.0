Return-Path: <clang-built-linux+bncBAABBLEF273QKGQEHFMNEHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C120620AF26
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 11:41:01 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id s64sf825595oih.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 02:41:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593164460; cv=pass;
        d=google.com; s=arc-20160816;
        b=zA3bGaEc988mcVSuOcpCr/ydKPkKJJyw2oM9HxS2K4tN1lIBDoYF18iGdNOg8/9He4
         wL+ymNXt5bgGV+ijdF+0pJN1aAiNViTZGFT9Hs/ODa0LdXSNObe5bawyuJEGEB6avGHJ
         1TbfeIef9zcNmLqI9Gl7puwEamNkDroI7bfk8EOz00h19VDOn/Vs2++9HhzXpbZTJTJG
         4LLXUBx/m6pgwRayWGdpkOYWcRianJAeDRyJz7iFR6LiffwQjzmuGStiB8K++Viwp9TE
         QKaZujXWNBQJMa95doijpTsb90zcjhGdNusrwzinBnerbxPySfhzmwljv4sbCwrdTKxC
         gGYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=dN0E1kbHVrHv3/5J2LFCIOdJyexBKJQX1ZZlg4EBWsw=;
        b=HePKnZvb9yCEkMTQ466UDuob0T75wj2wKuvTrniMfXkFmsGu+dOra6NDnVl8YEByUu
         IRww7S2H4RejAO36Q5+Qva/FEULO50lCj4Qz5K5g6/4giL/NOnEOtPhEX3NgG+RYLnEV
         ++IfHnvqOD0KMVUMCjiMAaPXdTIFFhQFhOe9EQ9SfJFw85OAXv0jUKx4QdgmRuhc2TeR
         JUTHJMYXQPXN5iaw7wX37a9BGG+lP0JF0MWXzHZjpg9I92U+srLcA5A4VwpNNxZmVQtg
         8rirFUkfHLcvF3sCnQiUctMcn3ci4CofB26GApvlvEn+w4t6ZHLDuSRpD+NgllTphvKZ
         b41A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=alexandru.elisei@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dN0E1kbHVrHv3/5J2LFCIOdJyexBKJQX1ZZlg4EBWsw=;
        b=My3sX1760Qt15zhn0T0SWuP3+FuNjbtn0HWmPT4i6Dql6OFMwMFhwppL/cX0uDQDcp
         uNa9954myhCTmMkLO+Hf6YBehr8WInBME+z5J5V3vTyCOd8wqeQNZEgtHzCORJxj12sV
         ZUBOp9OjBJqmbtKNwBl8s3kWP/edKDqphCIo5VkAP3W3gqDHtgxR89+4ym4j866dvm34
         Yv6LITbIWoztEgfKBVm4W40jXPeDn9ipB3CfdzchhACgrhrd5hLwiTJL8UCABWLpku/W
         xHhhKBTAkjB9pACSe5E/7M7WBv/lsP4BmunFSuuccnYRroL63BP8ok88xHu1ncJPTjAs
         jBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dN0E1kbHVrHv3/5J2LFCIOdJyexBKJQX1ZZlg4EBWsw=;
        b=t2WRtkAL9/VQNekiRLfI48T2BfzeSUxbW59eOaUvFUKW+Jwar9a7cPv5qQI9gm+2PR
         zyEh1YrZfki1D21LQTkyrSaL57tPwb9Z7M22DAHRGFtfE9KjDe80AnDgq2CQsXJUBdO6
         jDF7LPlVUi1Mg4jpFK+espyFMXYJZys82ejRoCwa3Kb6zh+W46nGM0fjAoWSNwAZM4vK
         EZ/xV+z/MOHiEx1PSU5FJxaibRO84t7AqDg85VPeq8kM8MdBew2YbdYhSFFamiBwlO3h
         Ku4F90N1KXW03CUXB/cSESYunKwHwf2o/QX4iBYaLBPW+BWRT2mz0evMcd1gumGdfblp
         s23w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533U/BemhgsIqxCv6obB94I5+EgMlcZEJWX5Lt5KWEaziYf19nOn
	VZldzihG/GlgNukbZ/P09Rs=
X-Google-Smtp-Source: ABdhPJyZZz3lCd2qhf+MKTIiZQs7YswKF46PTGA8KkEfwQNuH5ERfxPGILX3BB+rH/BSLmgoMmtVUA==
X-Received: by 2002:aca:f3c5:: with SMTP id r188mr1717071oih.83.1593164460595;
        Fri, 26 Jun 2020 02:41:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:eac1:: with SMTP id i184ls1698955oih.4.gmail; Fri, 26
 Jun 2020 02:41:00 -0700 (PDT)
X-Received: by 2002:aca:d458:: with SMTP id l85mr1703787oig.127.1593164460229;
        Fri, 26 Jun 2020 02:41:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593164460; cv=none;
        d=google.com; s=arc-20160816;
        b=uU9NduXOBpRGvbf+ZEpX91g1Y1wuNvFGYECQE3Z3nSkk1Yvdw3ISBJUsCohRHK2Fub
         QMNgHm6tRy9StRs+nCrLQNFu+yIfJx53r29JbWxb+NVsGTA48eZCy9ZRRO3nFL3vT/yb
         U92wcUCXPd4sDyLhlr1JV8XcqC/RRhuI2FQjAKjLi4lIsk6bkZeE2OncDOEhRsmlHq1u
         GBeYotz9ZjNwJpvNCGQ+GZh1X0NDiZjse/zoPKBSBY+c+QV3LP5flwT4oo4aVuVq0HLa
         WypMpTeGSHiXnFDCSFQKwMVJF1rhvD1fv0DvOSrXfRqzJIN9cEuuzaJ9VBRkY+TyMmF1
         pWiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=tzbP5WFkDc1qCCSv4tc0wxzMlC+5K67k+uWJPI3E+LQ=;
        b=y0hq5uVSmeycoB8q8untVfLgc/1CNnJLtnOB6o5UKFLwq1c6iPWvPzFpNKWCjD+zkb
         w3L0eT9749OQK2Xxf9qaihsGARG8BzQvfqxxfv3CM7tdWX8olEppwecWgMHOdNovr/Ji
         jJfYkK32mLIhZwqKmZYbUkqKpkI+zvYpPBufqeXTAriCMJDtmSJFASau6xAwCAl5+Z0P
         4LUbLk0Q92IMa0AgiliwJwgPtHNF1DELV+Z0jyvLde8JOTBryBYLZDvohFMu+OBZmerI
         /x5z5y/+M5pEdG9vGYfH9EDpV12+ISNaQ3htU/9q7cZJaivCpbPscqXgC35w2735mbWc
         OBoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=alexandru.elisei@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l14si17908otn.5.2020.06.26.02.41.00
        for <clang-built-linux@googlegroups.com>;
        Fri, 26 Jun 2020 02:41:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 004CB1FB;
	Fri, 26 Jun 2020 02:41:00 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49D623F71E;
	Fri, 26 Jun 2020 02:40:58 -0700 (PDT)
Subject: Re: [PATCH 2/2] irqchip/gic-v3: Support pseudo-NMIs when SCR_EL3.FIQ
 == 0
To: kernel test robot <lkp@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 maz@kernel.org, tglx@linutronix.de, jason@lakedaemon.net,
 yuzenghui@huawei.com, julien.thierry.kdev@gmail.com, will@kernel.org,
 catalin.marinas@arm.com
References: <20200625150026.867727-3-alexandru.elisei@arm.com>
 <202006260902.snscFOg0%lkp@intel.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <31059bad-54e1-58a7-6531-14e473950bc9@arm.com>
Date: Fri, 26 Jun 2020 10:41:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <202006260902.snscFOg0%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: alexandru.elisei@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=alexandru.elisei@arm.com
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

Hi,

On 6/26/20 2:51 AM, kernel test robot wrote:
> Hi Alexandru,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on arm64/for-next/core]
> [also build test WARNING on tip/irq/core v5.8-rc2 next-20200625]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Alexandru-Elisei/irqchip-gic-v3-Support-pseudo-NMIs-when-SCR_EL3-FIQ-0/20200625-230144
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> config: arm64-randconfig-r025-20200624 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 8911a35180c6777188fefe0954a2451a2b91deaf)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

My mistake, I'll start compiling the kernel with clang too.

The register width for ICC_PMR_EL1 in the kernel is rather inconsistent: in
arch_gicv3.h, the accessors use 32 bits for the PMR value which gets casted to 64
bit by the {read,write}_sysreg_s macros anyway, in struct pt_regs the register is
64-bit, in __cpu_do_idle_irqprio it's declared as an unsigned long,
arch_local_irqs_{disable,enable} declares it as u32 and casts it to an unsigned
long when used by the inline assembly, the gicv3 irqchip driver uses it as a 32
bit variable.

I think the confusion stems from the fact that originally it was a 32 bit
register, but was changed to 64 bits in Arm IHI 0069E (January 2019).

I could cast it to an unsigned long in the inline assembly, but IMO that looks a
bit awkward. Before sending the patches I was considering changing it everywhere
to 64 bits, but Mark Rutland had a different idea. Mark, would you mind explaining
why keeping it 32 bit wide makes more sense?

Thanks,
Alex
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    In file included from arch/arm64/kernel/asm-offsets.c:10:
>    In file included from include/linux/arm_sdei.h:8:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/irqdomain.h:35:
>    In file included from include/linux/of.h:17:
>    In file included from include/linux/kobject.h:20:
>    In file included from include/linux/sysfs.h:16:
>    In file included from include/linux/kernfs.h:13:
>    In file included from include/linux/idr.h:15:
>    In file included from include/linux/radix-tree.h:15:
>    In file included from include/linux/rcupdate.h:26:
>    In file included from include/linux/irqflags.h:16:
>>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqon)
>                           ^
>    arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqoff)
>                           ^
>    arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    2 warnings generated.
> --
>    In file included from drivers/power/supply/ltc2941-battery-gauge.c:12:
>    In file included from include/linux/module.h:13:
>    In file included from include/linux/stat.h:6:
>    In file included from arch/arm64/include/asm/stat.h:12:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:54:
>    In file included from include/linux/irqflags.h:16:
>>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqon)
>                           ^
>    arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqoff)
>                           ^
>    arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    drivers/power/supply/ltc2941-battery-gauge.c:476:13: warning: cast to smaller integer type 'enum ltc294x_id' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>            info->id = (enum ltc294x_id)of_device_get_match_data(&client->dev);
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    3 warnings generated.
> --
>    In file included from drivers/power/supply/goldfish_battery.c:11:
>    In file included from include/linux/module.h:13:
>    In file included from include/linux/stat.h:6:
>    In file included from arch/arm64/include/asm/stat.h:12:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:54:
>    In file included from include/linux/irqflags.h:16:
>>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqon)
>                           ^
>    arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqoff)
>                           ^
>    arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    drivers/power/supply/goldfish_battery.c:269:36: warning: unused variable 'goldfish_battery_acpi_match' [-Wunused-const-variable]
>    static const struct acpi_device_id goldfish_battery_acpi_match[] = {
>                                       ^
>    3 warnings generated.
> --
>    In file included from drivers/power/supply/bq25890_charger.c:8:
>    In file included from include/linux/module.h:13:
>    In file included from include/linux/stat.h:6:
>    In file included from arch/arm64/include/asm/stat.h:12:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:54:
>    In file included from include/linux/irqflags.h:16:
>>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqon)
>                           ^
>    arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqoff)
>                           ^
>    arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    drivers/power/supply/bq25890_charger.c:1060:36: warning: unused variable 'bq25890_acpi_match' [-Wunused-const-variable]
>    static const struct acpi_device_id bq25890_acpi_match[] = {
>                                       ^
>    3 warnings generated.
> --
>    In file included from drivers/power/reset/vexpress-poweroff.c:8:
>    In file included from include/linux/notifier.h:15:
>    In file included from include/linux/rwsem.h:16:
>    In file included from include/linux/spinlock.h:54:
>    In file included from include/linux/irqflags.h:16:
>>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqon)
>                           ^
>    arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqoff)
>                           ^
>    arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    drivers/power/reset/vexpress-poweroff.c:124:10: warning: cast to smaller integer type 'enum vexpress_reset_func' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>            switch ((enum vexpress_reset_func)match->data) {
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    3 warnings generated.
> --
>    In file included from arch/arm64/kernel/asm-offsets.c:10:
>    In file included from include/linux/arm_sdei.h:8:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/irqdomain.h:35:
>    In file included from include/linux/of.h:17:
>    In file included from include/linux/kobject.h:20:
>    In file included from include/linux/sysfs.h:16:
>    In file included from include/linux/kernfs.h:13:
>    In file included from include/linux/idr.h:15:
>    In file included from include/linux/radix-tree.h:15:
>    In file included from include/linux/rcupdate.h:26:
>    In file included from include/linux/irqflags.h:16:
>>> arch/arm64/include/asm/irqflags.h:45:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqon)
>                           ^
>    arch/arm64/include/asm/irqflags.h:42:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    arch/arm64/include/asm/irqflags.h:67:10: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                    : "r" (pmr_irqoff)
>                           ^
>    arch/arm64/include/asm/irqflags.h:64:29: note: use constraint modifier "w"
>                    __msr_s(SYS_ICC_PMR_EL1, "%0"),
>                                              ^
>    2 warnings generated.
>    arch/arm64/kernel/vdso/vgettimeofday.c:9:5: warning: no previous prototype for function '__kernel_clock_gettime' [-Wmissing-prototypes]
>    int __kernel_clock_gettime(clockid_t clock,
>        ^
>    arch/arm64/kernel/vdso/vgettimeofday.c:9:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __kernel_clock_gettime(clockid_t clock,
>    ^
>    static 
>    arch/arm64/kernel/vdso/vgettimeofday.c:15:5: warning: no previous prototype for function '__kernel_gettimeofday' [-Wmissing-prototypes]
>    int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
>        ^
>    arch/arm64/kernel/vdso/vgettimeofday.c:15:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
>    ^
>    static 
>    arch/arm64/kernel/vdso/vgettimeofday.c:21:5: warning: no previous prototype for function '__kernel_clock_getres' [-Wmissing-prototypes]
>    int __kernel_clock_getres(clockid_t clock_id,
>        ^
>    arch/arm64/kernel/vdso/vgettimeofday.c:21:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __kernel_clock_getres(clockid_t clock_id,
>    ^
>    static 
>    3 warnings generated.
>
> vim +45 arch/arm64/include/asm/irqflags.h
>
>     12	
>     13	/*
>     14	 * Aarch64 has flags for masking: Debug, Asynchronous (serror), Interrupts and
>     15	 * FIQ exceptions, in the 'daif' register. We mask and unmask them in 'dai'
>     16	 * order:
>     17	 * Masking debug exceptions causes all other exceptions to be masked too/
>     18	 * Masking SError masks irq, but not debug exceptions. Masking irqs has no
>     19	 * side effects for other flags. Keeping to this order makes it easier for
>     20	 * entry.S to know which exceptions should be unmasked.
>     21	 *
>     22	 * FIQ is never expected, but we mask it when we disable debug exceptions, and
>     23	 * unmask it at all other times.
>     24	 */
>     25	
>     26	/*
>     27	 * CPU interrupt mask handling.
>     28	 */
>     29	static inline void arch_local_irq_enable(void)
>     30	{
>     31		u32 pmr_irqon = GIC_PRIO_IRQON;
>     32	
>     33		if (system_has_prio_mask_debugging()) {
>     34			u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
>     35			u32 pmr_irqoff = gic_prio_irqoff();
>     36	
>     37			WARN_ON_ONCE(pmr != pmr_irqon && pmr != pmr_irqoff);
>     38		}
>     39	
>     40		asm volatile(ALTERNATIVE(
>     41			"msr	daifclr, #2		// arch_local_irq_enable",
>     42			__msr_s(SYS_ICC_PMR_EL1, "%0"),
>     43			ARM64_HAS_IRQ_PRIO_MASKING)
>     44			:
>   > 45			: "r" (pmr_irqon)
>     46			: "memory");
>     47	
>     48		pmr_sync();
>     49	}
>     50	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/31059bad-54e1-58a7-6531-14e473950bc9%40arm.com.
