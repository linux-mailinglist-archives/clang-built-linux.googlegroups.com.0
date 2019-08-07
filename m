Return-Path: <clang-built-linux+bncBDV37XP3XYDRBGHDVPVAKGQE6FBIQ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8128485029
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 17:43:21 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id s7sf18290183ljm.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 08:43:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565192601; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwOgyplBMKhM86XEYafOz2XLUX+Hayidq3+JDe1KNxhGjpWNvfoLf2jtkYL3Wc6uOE
         JneMyptpo60usfTeO1QJ6yPphYFgHExd5bHZv4q3LVuOiUl5oFV/45BjA/rKVESXM0g+
         8CM7GSI5kFdVm2r4UkfDR8TdSd2MH4OiAgKKcuQV/j6YdA85fgvnx1Row1jgMqEIqZSC
         FWoi02BaFQXv+Umv0UtjeEl5NwdmktLdMWon6gHPq99JtK86EsBfZmT93n9qi8x/ONeK
         hmwY5n1bkU9znaueaFF6SpcgYpvALEFc05kBaqA1iXV1nBMZzw4RR2uO1C0Ig2Hf7HMS
         uMeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=c/HuYlhIpUkhTn3yCuDowSopAK5AB6gbw3x5ZDMjdXw=;
        b=p86Ccuuabdfd4EcE1strkt34G3KAG3EZyTuaJpRmwJrjEO24/UUfVkl087X2z9W8yh
         3Cf21A6OsR0NK3PbWQE2nP/rOm6kBAi5iCwBZovQgaqys225ehXq1Ad9PLaDNK8ygx4z
         /KI5B5U04EdA9ldkCfiKTYzoNpkKfGqup3NIf6mzjbZKVm+41JFiTAzYtnGXcuQg7zX8
         2HpSgqORYNjpurwaG3urftIn/3VhXWqw9MC7NbJVZa5mwV/5/QUrOJKSf3dVb5WQiVYo
         Rc+/dHF87D7fgLzHm/q6PMITjkL0r1++5EsArQk5uRSX4tREB31MGlc8p2CKcjlWzyt4
         t16w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c/HuYlhIpUkhTn3yCuDowSopAK5AB6gbw3x5ZDMjdXw=;
        b=niwWTNfM4sDBf3zrR8F+nbo/ElLeh0o8wO3+OaF70hswegyRJuuoSLjWy2XXwSv0BF
         KaMbyWQLLQwcV7mEIZjujodSmQ8S8wta9XTODWNgUKyD7yBbwhxyabOi1vC8lzhVwdYw
         7ChXttGilSRH9Rq5Fjug/pjNyV3TxcjMHuZUoGTe53Pvk/7K1WLekPwvFZqBtkjkBZtA
         TTRX5urapculfj75/SBUgsSvx4mzi7Pdwf+l0BWmxru1mIxLKcvCVCJ1vu/Iy/pzoZDh
         8gN4zBycereHojbDeVdZtDABUgp7PqMndw3wDAe+lIqbFpi0le5OMjl6hjJ2V1QSeuZg
         yPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c/HuYlhIpUkhTn3yCuDowSopAK5AB6gbw3x5ZDMjdXw=;
        b=AQASnZ2PM5DgY0TQGH1TUi/RX1NL7sNhDrtFFbf7Dw+HioL3nYhJxOcmM5wq9DCaIt
         epj446YwslrMHrEYop916nCUwJkifzKfFT75xJ20VGEiGlO/m6Lf94ZK2PCZ7l5c6Msh
         DuuHEjvhGo2NXbo8wtA3jp6L8uvcHa+qm4cUZFwsp9TIUBvLWhH41X03Yex3lRcZWx09
         d/sbO/UJ/bFfsovrGWfNOqYpp+C7oDkT2sAtF13ooc74J/WXC6ZniiCDJQaz4b1YDwFW
         vcdjJt4KATsu81oTIYMUn9lDZtPM3spXOL1+SJrs2RfwrstYJPNp1dQgLymffnbrVYLf
         QjyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUDtFuW9/dFRerQFA8m7AjwU3k2zGL3/7/XHPkB5OA8eral6/ft
	+0t60F8hLUl6/1JqNm/tRWw=
X-Google-Smtp-Source: APXvYqxxwUpu+SBM1lLarPPjkID8kKDmoaCy3Nqv0oVKhDqc9Wy/K2ArfN4ldMdlt2WF2wd4Ho0gmg==
X-Received: by 2002:a19:6707:: with SMTP id b7mr6320555lfc.16.1565192601031;
        Wed, 07 Aug 2019 08:43:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ca54:: with SMTP id h20ls1152003lfj.10.gmail; Wed, 07
 Aug 2019 08:43:20 -0700 (PDT)
X-Received: by 2002:ac2:5097:: with SMTP id f23mr6351464lfm.130.1565192600322;
        Wed, 07 Aug 2019 08:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565192600; cv=none;
        d=google.com; s=arc-20160816;
        b=tYNtV/bIiHABYupIzhdiFJrhs6PBhtAd6E282GDCSAukMBXuOIiHADXiZCGSbpFVPA
         jAiD3u72DjuRBO1zrJ3AVGWKdUKcyRxEVTSi55r42ArvUJTn3CW0pLFH51rYJzXI14Pr
         G4zxg5ug04z2igMSGRXyzwmOwoOUdctpLI0YLIcUu/JezLSF5SGJuEzwONkduVYy6e7W
         99TIWZ454Jg6TXZCei60EUoFoUaKx17ACNd7x7F6rripjVhNqRDbr6KpPFgRv47QGLol
         XD5fcKtor09Jwy06sSdMx1PbOzZcLWw154cg/P2vHYTK7M5XXYNcpryCwiriHyKiiBwK
         XgqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wuN4JMe1YKkj5fBTuMRk5tkekHotmclZi++Xk9kh0bo=;
        b=kQU0KA/A+SoF/vvRzhksZVTP5WYsj3DaTjgs1+jMdPd4KlHJS6bMwJW4JDwIvgtREB
         cV23sWsriG7Ui0FYMWYKei57xH+d5zFlrO5a2dAmz7zxWq0lWpOJeVCBopfksPIBstkC
         4y4JXEl7SODsZ3WK3sYtRkRP4g7/jmCHl3hIrNeisDg6J9X1AD9KgiSmVwDFZ0PVpwbq
         RSiID+jmhn+lescEsdDdAwb6GSv6+61mPDjVGOWjEpoNg4DEUsTjWn+hOhOwIhLIw83O
         uFuQKklWnUaKPiiTgkgaZSNVDVd+APLlaIT38vdy8E3oHpiFlYQCzN/VWV0IPOtDYre0
         gkDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f26si4451945lfp.5.2019.08.07.08.43.19
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 08:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34ABD1570;
	Wed,  7 Aug 2019 08:43:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFAE03F73D;
	Wed,  7 Aug 2019 08:43:16 -0700 (PDT)
Date: Wed, 7 Aug 2019 16:43:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Matt Hart <matthew.hart@linaro.org>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807154314.GH54191@lakrids.cambridge.arm.com>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
 <20190807135618.GF54191@lakrids.cambridge.arm.com>
 <20190807152934.GF4048@sirena.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190807152934.GF4048@sirena.co.uk>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Wed, Aug 07, 2019 at 04:29:34PM +0100, Mark Brown wrote:
> On Wed, Aug 07, 2019 at 02:56:19PM +0100, Mark Rutland wrote:
> > On Wed, Aug 07, 2019 at 02:05:27PM +0100, Mark Brown wrote:
> You can see the exact image being used in the reports I linked:
> 
> 	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/Image

That confirms what Robin suggested [1] from looking at the config: this
is a little-endian kernel.

The Image header flags the big-endian bit is 0, and it succcessfully
boots with a little-endian rootfs; log below.

Thanks,
Mark.

[1] https://lore.kernel.org/r/ec7bef46-7dcf-d165-b772-b4fd6055d964@arm.com

---->8----
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x431f0af1]
[    0.000000] Linux version 5.3.0-rc2-next-20190730 (KernelCI@30d217901839) (clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)) #1 SMP PREEMPT Tue Jul 30 06:50:57 UTC 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbf3840-0xbdbf4fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] On node 0 totalpages: 524288
[    0.000000]   DMA32 zone: 8192 pages used for memmap
[    0.000000]   DMA32 zone: 0 pages reserved
[    0.000000]   DMA32 zone: 524288 pages, LIFO batch:63
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.0 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 23 pages/cpu s56856 r8192 d29160 u94208
[    0.000000] pcpu-alloc: s56856 r8192 d29160 u94208 alloc=23*4096
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: loglevel=9 rodata=full earlycon root=/dev/vda
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1997596K/2097152K available (12028K kernel code, 1912K rwdata, 6004K rodata, 5184K init, 448K bss, 66788K reserved, 32768K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=1.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=1
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: no VLPI support, no direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000080a0000
[    0.000000] ITS [mem 0x08080000-0x0809ffff]
[    0.000000] ITS@0x0000000008080000: allocated 8192 Devices @bb030000 (indirect, esz 8, psz 64K, shr 1)
[    0.000000] ITS@0x0000000008080000: allocated 8192 Interrupt Collections @bb040000 (flat, esz 8, psz 64K, shr 1)
[    0.000000] GICv3: using LPI property table @0x00000000bb050000
[    0.000000] GICv3: CPU0: using allocated LPI pending table @0x00000000bb060000
[    0.000000] random: get_random_bytes called from start_kernel+0x1d4/0x39c with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 200.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2e2049d3e8, max_idle_ns: 440795210634 ns
[    0.000008] sched_clock: 56 bits at 200MHz, resolution 5ns, wraps every 4398046511102ns
[    0.003286] Console: colour dummy device 80x25
[    0.004711] printk: console [tty0] enabled
[    0.006114] printk: bootconsole [pl11] disabled
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x431f0af1]
[    0.000000] Linux version 5.3.0-rc2-next-20190730 (KernelCI@30d217901839) (clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)) #1 SMP PREEMPT Tue Jul 30 06:50:57 UTC 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbf3840-0xbdbf4fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] On node 0 totalpages: 524288
[    0.000000]   DMA32 zone: 8192 pages used for memmap
[    0.000000]   DMA32 zone: 0 pages reserved
[    0.000000]   DMA32 zone: 524288 pages, LIFO batch:63
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.0 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 23 pages/cpu s56856 r8192 d29160 u94208
[    0.000000] pcpu-alloc: s56856 r8192 d29160 u94208 alloc=23*4096
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: loglevel=9 rodata=full earlycon root=/dev/vda
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1997596K/2097152K available (12028K kernel code, 1912K rwdata, 6004K rodata, 5184K init, 448K bss, 66788K reserved, 32768K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=1.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=1
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: no VLPI support, no direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000080a0000
[    0.000000] ITS [mem 0x08080000-0x0809ffff]
[    0.000000] ITS@0x0000000008080000: allocated 8192 Devices @bb030000 (indirect, esz 8, psz 64K, shr 1)
[    0.000000] ITS@0x0000000008080000: allocated 8192 Interrupt Collections @bb040000 (flat, esz 8, psz 64K, shr 1)
[    0.000000] GICv3: using LPI property table @0x00000000bb050000
[    0.000000] GICv3: CPU0: using allocated LPI pending table @0x00000000bb060000
[    0.000000] random: get_random_bytes called from start_kernel+0x1d4/0x39c with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 200.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2e2049d3e8, max_idle_ns: 440795210634 ns
[    0.000008] sched_clock: 56 bits at 200MHz, resolution 5ns, wraps every 4398046511102ns
[    0.003286] Console: colour dummy device 80x25
[    0.004711] printk: console [tty0] enabled
[    0.006114] printk: bootconsole [pl11] disabled
[    0.007538] Calibrating delay loop (skipped), value calculated using timer frequency.. 400.00 BogoMIPS (lpj=800000)
[    0.007551] pid_max: default: 32768 minimum: 301
[    0.007581] LSM: Security Framework initializing
[    0.007608] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.007620] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.031972] ASID allocator initialised with 32768 entries
[    0.040072] rcu: Hierarchical SRCU implementation.
[    0.048261] Platform MSI: its@8080000 domain created
[    0.048294] PCI/MSI: /intc@8000000/its@8080000 domain created
[    0.048599] EFI services will not be available.
[    0.056343] smp: Bringing up secondary CPUs ...
[    0.056358] smp: Brought up 1 node, 1 CPU
[    0.056364] SMP: Total of 1 processors activated.
[    0.056372] CPU features: detected: Privileged Access Never
[    0.056378] CPU features: detected: LSE atomic instructions
[    0.056385] CPU features: detected: RAS Extension Support
[    0.056390] CPU features: detected: CRC32 instructions
[    0.056422] CPU: All CPU(s) started at EL1
[    0.056433] alternatives: patching kernel code
[    0.060214] devtmpfs: initialized
[    0.064667] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.064698] futex hash table entries: 256 (order: 2, 16384 bytes, linear)
[    0.065319] pinctrl core: initialized pinctrl subsystem
[    0.065982] DMI not present or invalid.
[    0.066218] NET: Registered protocol family 16
[    0.066370] audit: initializing netlink subsys (disabled)
[    0.068996] audit: type=2000 audit(0.064:1): state=initialized audit_enabled=0 res=1
[    0.073011] cpuidle: using governor menu
[    0.073154] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.074272] DMA: preallocated 256 KiB pool for atomic allocations
[    0.074866] Serial: AMBA PL011 UART driver
[    0.080484] 9000000.pl011: ttyAMA0 at MMIO 0x9000000 (irq = 39, base_baud = 0) is a PL011 rev1
[    0.229613] printk: console [ttyAMA0] enabled
[    0.239415] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.241407] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.243419] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.245647] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.255900] cryptd: max_cpu_qlen set to 1000
[    0.268422] ACPI: Interpreter disabled.
[    0.272279] vgaarb: loaded
[    0.273044] SCSI subsystem initialized
[    0.276232] libata version 3.00 loaded.
[    0.277368] usbcore: registered new interface driver usbfs
[    0.278868] usbcore: registered new interface driver hub
[    0.280448] usbcore: registered new device driver usb
[    0.282241] pps_core: LinuxPPS API ver. 1 registered
[    0.283441] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.285880] PTP clock support registered
[    0.286815] EDAC MC: Ver: 3.0.0
[    0.294074] FPGA manager framework
[    0.295226] Advanced Linux Sound Architecture Driver Initialized.
[    0.297068] clocksource: Switched to clocksource arch_sys_counter
[    0.298920] VFS: Disk quotas dquot_6.6.0
[    0.300084] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.302592] pnp: PnP ACPI: disabled
[    0.305599] thermal_sys: Registered thermal governor 'step_wise'
[    0.305601] thermal_sys: Registered thermal governor 'power_allocator'
[    0.307263] NET: Registered protocol family 2
[    0.310373] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.312314] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.314627] TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.316540] TCP: Hash tables configured (established 16384 bind 16384)
[    0.318499] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.320465] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.322749] NET: Registered protocol family 1
[    0.336608] RPC: Registered named UNIX socket transport module.
[    0.338472] RPC: Registered udp transport module.
[    0.339675] RPC: Registered tcp transport module.
[    0.340980] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.343132] PCI: CLS 0 bytes, default 64
[    0.344482] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available
[    0.347065] kvm [1]: HYP mode not available
[    0.351832] Initialise system trusted keyrings
[    0.352989] workingset: timestamp_bits=44 max_order=19 bucket_order=0
[    0.357762] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.363821] NFS: Registering the id_resolver key type
[    0.365144] Key type id_resolver registered
[    0.365963] Key type id_legacy registered
[    0.366969] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.368424] 9p: Installing v9fs 9p2000 file system support
[    0.378865] Key type asymmetric registered
[    0.379958] Asymmetric key parser 'x509' registered
[    0.381016] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
[    0.383497] io scheduler mq-deadline registered
[    0.384538] io scheduler kyber registered
[    0.388367] pl061_gpio 9030000.pl061: PL061 GPIO chip registered
[    0.390238] pci-host-generic 4010000000.pcie: host bridge /pcie@10000000 ranges:
[    0.391780] pci-host-generic 4010000000.pcie:    IO 0x3eff0000..0x3effffff -> 0x00000000
[    0.393604] pci-host-generic 4010000000.pcie:   MEM 0x10000000..0x3efeffff -> 0x10000000
[    0.395182] pci-host-generic 4010000000.pcie:   MEM 0x8000000000..0xffffffffff -> 0x8000000000
[    0.396830] pci-host-generic 4010000000.pcie: ECAM at [mem 0x4010000000-0x401fffffff] for [bus 00-ff]
[    0.399261] pci-host-generic 4010000000.pcie: PCI host bridge to bus 0000:00
[    0.400526] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.401684] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
[    0.402759] pci_bus 0000:00: root bus resource [mem 0x10000000-0x3efeffff]
[    0.404202] pci_bus 0000:00: root bus resource [mem 0x8000000000-0xffffffffff]
[    0.405634] pci 0000:00:00.0: [1b36:0008] type 00 class 0x060000
[    0.407312] pci 0000:00:01.0: [1af4:1000] type 00 class 0x020000
[    0.408801] pci 0000:00:01.0: reg 0x10: [io  0x0000-0x001f]
[    0.409984] pci 0000:00:01.0: reg 0x14: [mem 0x00000000-0x00000fff]
[    0.411504] pci 0000:00:01.0: reg 0x20: [mem 0x00000000-0x00003fff 64bit pref]
[    0.413840] pci 0000:00:01.0: reg 0x30: [mem 0x00000000-0x0003ffff pref]
[    0.416196] pci 0000:00:02.0: [1af4:1001] type 00 class 0x010000
[    0.417822] pci 0000:00:02.0: reg 0x10: [io  0x0000-0x007f]
[    0.419063] pci 0000:00:02.0: reg 0x14: [mem 0x00000000-0x00000fff]
[    0.420334] pci 0000:00:02.0: reg 0x20: [mem 0x00000000-0x00003fff 64bit pref]
[    0.423194] pci 0000:00:01.0: BAR 6: assigned [mem 0x10000000-0x1003ffff pref]
[    0.424869] pci 0000:00:01.0: BAR 4: assigned [mem 0x8000000000-0x8000003fff 64bit pref]
[    0.427018] pci 0000:00:02.0: BAR 4: assigned [mem 0x8000004000-0x8000007fff 64bit pref]
[    0.428507] pci 0000:00:01.0: BAR 1: assigned [mem 0x10040000-0x10040fff]
[    0.430560] pci 0000:00:02.0: BAR 1: assigned [mem 0x10041000-0x10041fff]
[    0.432139] pci 0000:00:02.0: BAR 0: assigned [io  0x1000-0x107f]
[    0.433657] pci 0000:00:01.0: BAR 0: assigned [io  0x1080-0x109f]
[    0.439764] EINJ: ACPI disabled.
[    0.444641] virtio-pci 0000:00:01.0: enabling device (0000 -> 0003)
[    0.449017] virtio-pci 0000:00:02.0: enabling device (0000 -> 0003)
[    0.455905] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.458373] SuperH (H)SCI(F) driver initialized
[    0.459684] msm_serial: driver initialized
[    0.461407] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    0.465763] loop: module loaded
[    0.468068] virtio_blk virtio1: [vda] 12000000 512-byte logical blocks (6.14 GB/5.72 GiB)
[    0.477848] libphy: Fixed MDIO Bus: probed
[    0.478986] tun: Universal TUN/TAP device driver, 1.6
[    0.482174] thunder_xcv, ver 1.0
[    0.482970] thunder_bgx, ver 1.0
[    0.483806] nicpf, ver 1.0
[    0.484754] hclge is initializing
[    0.485736] hns3: Hisilicon Ethernet Network Driver for Hip08 Family - version
[    0.487390] hns3: Copyright (c) 2017 Huawei Corporation.
[    0.488827] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    0.490682] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.492067] igb: Intel(R) Gigabit Ethernet Network Driver - version 5.6.0-k
[    0.493889] igb: Copyright (c) 2007-2014 Intel Corporation.
[    0.495332] igbvf: Intel(R) Gigabit Virtual Function Network Driver - version 2.4.0-k
[    0.498230] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    0.499893] sky2: driver version 1.30
[    0.501195] VFIO - User Level meta-driver version: 0.3
[    0.507337] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.509403] ehci-pci: EHCI PCI platform driver
[    0.510865] ehci-platform: EHCI generic platform driver
[    0.512295] ehci-orion: EHCI orion driver
[    0.513372] ehci-exynos: EHCI EXYNOS driver
[    0.514497] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.515985] ohci-pci: OHCI PCI platform driver
[    0.516978] ohci-platform: OHCI generic platform driver
[    0.518568] ohci-exynos: OHCI EXYNOS driver
[    0.520044] usbcore: registered new interface driver usb-storage
[    0.522710] rtc-pl031 9010000.pl031: registered as rtc0
[    0.524262] i2c /dev entries driver
[    0.527836] sdhci: Secure Digital Host Controller Interface driver
[    0.529490] sdhci: Copyright(c) Pierre Ossman
[    0.530893] Synopsys Designware Multimedia Card Interface Driver
[    0.532651] sdhci-pltfm: SDHCI platform and OF driver helper
[    0.535051] ledtrig-cpu: registered to indicate activity on CPUs
[    0.537058] usbcore: registered new interface driver usbhid
[    0.538898] usbhid: USB HID core driver
[    0.541460] NET: Registered protocol family 17
[    0.542521] 9pnet: Installing 9P2000 support
[    0.543580] Key type dns_resolver registered
[    0.544954] registered taskstats version 1
[    0.546181] Loading compiled-in X.509 certificates
[    0.547737] input: gpio-keys as /devices/platform/gpio-keys/input/input0
[    0.549466] rtc-pl031 9010000.pl031: setting system clock to 2019-08-07T15:40:46 UTC (1565192446)
[    0.553232] ALSA device list:
[    0.554015]   No soundcards found.
[    0.554839] uart-pl011 9000000.pl011: no DMA platform data
[    0.556293] EXT4-fs (vda): mounting ext3 file system using the ext4 subsystem
[    0.564596] EXT4-fs (vda): mounted filesystem with ordered data mode. Opts: (null)
[    0.567288] VFS: Mounted root (ext3 filesystem) readonly on device 254:0.
[    0.569455] devtmpfs: mounted
[    0.571312] Freeing unused kernel memory: 5184K
[    0.572540] Run /sbin/init as init process
[    0.597524] EXT4-fs (vda): re-mounted. Opts: errors=remount-ro
Starting logging: OK
Initializing random number generator... [    0.631818] random: dd: uninitialized urandom read (512 bytes read)
done.
Starting network: udhcpc: started, v1.26.2
udhcpc: sending discover
udhcpc: sending select for 10.0.2.15
udhcpc: lease of 10.0.2.15 obtained, lease time 86400
deleting routers
adding dns 10.0.2.3
OK
Starting sshd: [    0.773922] random: sshd: uninitialized urandom read (32 bytes read)
OK

Welcome to Buildroot
buildroot login: root
Password:
# zcat /proc/config.gz | grep ENDIAN
# CONFIG_CPU_BIG_ENDIAN is not set
# CONFIG_VHOST_CROSS_ENDIAN_LEGACY is not set
# CONFIG_FB_FOREIGN_ENDIAN is not set
CONFIG_USB_OHCI_LITTLE_ENDIAN=y
# poweroff
Stopping vtund.
# no process in pidfile '/var/run/vtund*' found; none killed
Stopping sshd: OK
Stopping network: OK
Saving random seed... [   15.010433] random: dd: uninitialized urandom read (512 bytes read)
done.
Stopping logging: OK
umount: devtmpfs busy - remounted read-only
[   15.029155] EXT4-fs (vda): re-mounted. Opts: (null)
The system is going down NOW!
Sent SIGTERM to all processes
Sent SIGKILL to all processes
Requesting system poweroff
[   17.035638] reboot: Power down
[

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807154314.GH54191%40lakrids.cambridge.arm.com.
