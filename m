Return-Path: <clang-built-linux+bncBDV37XP3XYDRBCNRVPVAKGQEWICJ4PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AADAA84E06
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 15:56:25 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id i13sf10791075lfj.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 06:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565186185; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJxpG0inlNfL5AWY3SilrZPb1oaBK5wcrCnf/RzQVHHXYAypJLr7XENhhphr6ww0Z8
         IF1R4PzBraNVZ//7/cjOVTzUPkjg6cBb14P+zVRBbI89Du04nUh0kEAovRw/lgVZiJtD
         eAt4NsMeW3vpQY7YqnKszNwrU5cuSw0+EzzQs9XPAZp3iHC7WPkSzY3IIndF/P2umbi8
         U6bRpz55wtv9qJjChHwjFZhltrsWxeoHZy8SdQaM6k3gAxSm5OwXp8/OjAT1vTp1/ydz
         EK3xGsEUNJVSaHISGu+3fhZMRkD/q+YhODKWbeOjJ5bhvEoAxTFB9BMFwVxasecqaVT5
         N6Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=F7J8iUXOrxcqw1SSjjCLSB8ICjlpZBdkQunnKPRc4pk=;
        b=jH+BVofR0LvMuyq94z9+G5gCBUturXZICMVP/l+xYnuH4FmJwnYBI/xRqBBBbpwKRp
         AvAiSmNHJO8gx3oR7MgNsGO0of+HT97yCyJsA5otLjiWy/SBI07LW2Cunl50SRGhh5FR
         xo0annsSc6/aojhMv1OkUYOQb7AChXwdoDiwJbP1XCH9tt5xDVYDDrX5UyZ1YWlNzyrh
         NJ/6OB9+9BMMgNO/8gJE6GByJBZnDnEgfoGwwMorDEw+NYflPOyFbsXuOzGxvO+4UHfC
         zyz1nPZCZeSQxB1Aorp1SJaf0BMOqS/olFcYdfhgffJQ6tufuGcuAgo6m2bKdj+AwaFB
         CdPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F7J8iUXOrxcqw1SSjjCLSB8ICjlpZBdkQunnKPRc4pk=;
        b=hBjcVDhlAAge3CtBWbtf6Uyz+FsZM2gLlExEORkD4m/FTnQq2BYpKc1ux025fdx0hT
         SbnvZnIPsfu02AAGNzTEm77NzUduyvLbknQL2HH/4X1tANxHH1XYApuRBf13VKeJValZ
         ZQua09SxrxsN3drJQV+wq6NWNtm4CPtS0I4O4FVz4pV2LojRm0w6dKi5jECdd7A2qZzR
         AjtNUdtsmXH/VOYPL2zDGBDzWaV0nhcAgbN1MM7QfTq1BiytKMh9S3IC7WP/eOTEO22o
         5YDHkP8IqyGUvZAD1BYOFwiMI/VRT54j+vtqwOAIK3HfjigRIAQcspadS9dqB3SbXsoB
         Ak8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F7J8iUXOrxcqw1SSjjCLSB8ICjlpZBdkQunnKPRc4pk=;
        b=k/lBI38Qq7SRE6YkopVwkT/ezXkZXFxgV0jxqLTySG/859cB2LCV/ZWTB3LDsNbidg
         3mkzfc6INm8qhaxp1UatUb/Ecp+U5wBI2AChorMfVJwDhHX7BDSUzJ/pp1CyzlqSy17+
         w5bp4uNR5Vh9U+dELJ5gDHYa7Hfa1FDirD14nuiYl18iLOaqCpjz4zLioQAH1hTKPq5A
         tU+ivRAe7sRCsYHxja+Rhqk7my/20UfZZApUtP1eX4y8ICBQFv3+IzARNU+xqTt6PPIB
         Jc7q5taMjdUZw04opOEpyiYO9u7LUCpVNNEQqp25y7gnGiioqmLX9ZUrY8H7TCf65Nyk
         zPWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWF94O+6OIIqgBXzQ7WDg2UeN+IWLIVRQ2frY1yF9Tvfd3HY9BX
	k1ePu+QtxxKNxdY8lOGFq0o=
X-Google-Smtp-Source: APXvYqyJNMHgepCkUFxwWAw0+0b3wq2oEhwPCHklZRR7/qMHTUIMt25YowRgMQKzDsrGT47SmE/1Dg==
X-Received: by 2002:a2e:8847:: with SMTP id z7mr5047743ljj.51.1565186185205;
        Wed, 07 Aug 2019 06:56:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls10267038lji.0.gmail; Wed, 07
 Aug 2019 06:56:24 -0700 (PDT)
X-Received: by 2002:a05:651c:1105:: with SMTP id d5mr4895021ljo.161.1565186184528;
        Wed, 07 Aug 2019 06:56:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565186184; cv=none;
        d=google.com; s=arc-20160816;
        b=0kO15TkJd0hnBPW23eIr5lPncmUYGz9ry/2AVdvTyVeJY/YJnFsIb8+POYXT2T/4aK
         LTWjjTYjqdU+rX1W16fodpZi1UbJKpMYkyxVgL+atcjzpIXe6SfwK3a/DhFBaWsLP/He
         B3ZzbCVXoSoynBsfWlHubH0soaD6UCDTVHx/4Fv8mItBuxSLsTQyRBYKIdVsLLgTLCav
         3rqkXjRCU2xBIUuYVwtmXRpiA+hJdxP2ckXcM83FPtpWfXdinPZ56yhYYbRp9TWqqbuV
         ueP4lUwTNB129VS28u9+xsDCeVcBsEbDiDe83g4hnfF3xfoWR/2viLPXlj42gAbTGOmK
         U9+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=PFGGfsqipMYRXFzsiZ/QJ/XRdLMan0ni7tyvuE6/zlQ=;
        b=abFJuAqeZc96Dq02jQaNbEAC16qef7rvh6+//BeaIWvXnYeTc9wIr2AIqNQX1tZx5n
         pBxWYP3mKtOI+CpzYz2VrwtA5m9/OpWvJ1GIe3Bwb4/ZWA4ISTa2hVbUGkdYWm+pGlRd
         OXnuFxE8bwkayFqfNdagJaNl6KUIvks8NVR9Y6S46BN5wFDI7TZ/C2bG+wZeUbMYfXrN
         fbzbLLACmStdIG0OGfe3o53dlr/urLBtzIsACFeO/vULa9AhTJgBG/YfhGXcXWm42yEI
         BL2njNT0CurTY5PjqGv51mu+8ZAsdylwBPgyLW6j+AGFjEOXp8XUV2Jn3afoartBKIGd
         Qnsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b8si1625347lfp.3.2019.08.07.06.56.23
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 06:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E32228;
	Wed,  7 Aug 2019 06:56:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 136373F706;
	Wed,  7 Aug 2019 06:56:20 -0700 (PDT)
Date: Wed, 7 Aug 2019 14:56:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807135618.GF54191@lakrids.cambridge.arm.com>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190807130527.GD4048@sirena.co.uk>
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

On Wed, Aug 07, 2019 at 02:05:27PM +0100, Mark Brown wrote:
> On Wed, Aug 07, 2019 at 02:01:11PM +0100, Mark Rutland wrote:
> > On Tue, Aug 06, 2019 at 07:39:18PM +0100, Mark Brown wrote:
> 
> > Judging by the kernel log linked in a reply, this is with:
> 
> > * clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)
> 
> >   Is that the llvm.org binary release, or a custom build of clang?
> 
> It's from a llvm.org .deb.
> 
> > * Linux 5.3.0-rc2-next-20190730
> 
> >   Could we previously build a BE kernel with clang? If so, what's the
> >   last working kernel?
> 
> As far as I know this has been broken for as long as we tried building
> and booting big endian kernels in clang.  The compile works fine, it's
> just that the resulting binary doesn't seem to be working so well.

I've just had a go, and it works for me. Log below from a BE busybox,
but I also have a BE buildroot filesystem working.

For reference, I'm using:

* Linux v5.3-rc3 defconfig
* LLVM 8.0.0 (x86_64) from llvm.org
* GCC 8.1.0 (x86_64) from kernel.org crosstool

... so I don't think we should blacklist this just yet, but we certainly
need to better understand the issue you're seeing. I'll have a go with
LLVM 8.0.1 in case there's a regression from 8.0.0 to 8.0.1.

From your log, it looks like the kernel is trying to launch init via
binfmt_misc, using binfmt-464c. It could be that the file is corrupted
somehow, or something's going wrong with binfmt. I haven't delved into
that.

Are you using the right filesystem (and is the kernel definitely
identifying itself as BE in the Image header flags)?

This could be a dynamic loader issue -- my busybox is statically linked,
and I'm not sure about my buildroot filesystem.

This could be platform-specific; I'm booting under a KVM/QEMU VM on
ThunderX2, using virtio-block for storage.

Thanks,
Mark.

---->8----
[mark@gravadlaks:~/repro]% ./vmboot.sh ~/Image.be-clang
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x431f0af1]
[    0.000000] Linux version 5.3.0-rc3-00001-g9b0f179cd3d1-dirty (mark@lakrids) (clang version 8.0.0 (tags/RELEASE_800/final)) #2 SMP PREEMPT Wed Aug 7 14:20:53 BST 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbf1840-0xbdbf2fff]
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
[    0.000000] percpu: Embedded 23 pages/cpu s56216 r8192 d29800 u94208
[    0.000000] pcpu-alloc: s56216 r8192 d29800 u94208 alloc=23*4096
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: loglevel=9 rodata=full earlycon root=/dev/vda init=/sbin/reboot -- -f
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1964648K/2097152K available (11582K kernel code, 1860K rwdata, 5752K rodata, 38848K init, 411K bss, 99736K reserved, 32768K cma-reserved)
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
[    0.000000] random: get_random_bytes called from start_kernel+0x1d4/0x394 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 200.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2e2049d3e8, max_idle_ns: 440795210634 ns
[    0.000002] sched_clock: 56 bits at 200MHz, resolution 5ns, wraps every 4398046511102ns
[    0.002284] Console: colour dummy device 80x25
[    0.003215] printk: console [tty0] enabled
[    0.004070] printk: bootconsole [pl11] disabled
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x431f0af1]
[    0.000000] Linux version 5.3.0-rc3-00001-g9b0f179cd3d1-dirty (mark@lakrids) (clang version 8.0.0 (tags/RELEASE_800/final)) #2 SMP PREEMPT Wed Aug 7 14:20:53 BST 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbf1840-0xbdbf2fff]
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
[    0.000000] percpu: Embedded 23 pages/cpu s56216 r8192 d29800 u94208
[    0.000000] pcpu-alloc: s56216 r8192 d29800 u94208 alloc=23*4096
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: loglevel=9 rodata=full earlycon root=/dev/vda init=/sbin/reboot -- -f
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1964648K/2097152K available (11582K kernel code, 1860K rwdata, 5752K rodata, 38848K init, 411K bss, 99736K reserved, 32768K cma-reserved)
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
[    0.000000] random: get_random_bytes called from start_kernel+0x1d4/0x394 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 200.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2e2049d3e8, max_idle_ns: 440795210634 ns
[    0.000002] sched_clock: 56 bits at 200MHz, resolution 5ns, wraps every 4398046511102ns
[    0.002284] Console: colour dummy device 80x25
[    0.003215] printk: console [tty0] enabled
[    0.004070] printk: bootconsole [pl11] disabled
[    0.005050] Calibrating delay loop (skipped), value calculated using timer frequency.. 400.00 BogoMIPS (lpj=800000)
[    0.005058] pid_max: default: 32768 minimum: 301
[    0.005081] LSM: Security Framework initializing
[    0.005102] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.005111] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.026434] ASID allocator initialised with 32768 entries
[    0.034467] rcu: Hierarchical SRCU implementation.
[    0.042554] Platform MSI: its@8080000 domain created
[    0.042576] PCI/MSI: /intc@8000000/its@8080000 domain created
[    0.050567] smp: Bringing up secondary CPUs ...
[    0.050575] smp: Brought up 1 node, 1 CPU
[    0.050580] SMP: Total of 1 processors activated.
[    0.050586] CPU features: detected: Privileged Access Never
[    0.050591] CPU features: detected: LSE atomic instructions
[    0.050597] CPU features: detected: RAS Extension Support
[    0.050602] CPU features: detected: CRC32 instructions
[    0.050631] CPU: All CPU(s) started at EL1
[    0.050641] alternatives: patching kernel code
[    0.053527] devtmpfs: initialized
[    0.054721] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.054737] futex hash table entries: 256 (order: 2, 16384 bytes, linear)
[    0.055078] pinctrl core: initialized pinctrl subsystem
[    0.055567] NET: Registered protocol family 16
[    0.055653] audit: initializing netlink subsys (disabled)
[    0.056035] audit: type=2000 audit(0.056:1): state=initialized audit_enabled=0 res=1
[    0.058627] cpuidle: using governor menu
[    0.058683] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.059634] DMA: preallocated 256 KiB pool for atomic allocations
[    0.059852] Serial: AMBA PL011 UART driver
[    0.062444] 9000000.pl011: ttyAMA0 at MMIO 0x9000000 (irq = 39, base_baud = 0) is a PL011 rev1
[    0.167037] printk: console [ttyAMA0] enabled
[    0.172543] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.173847] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.175162] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.176469] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.184501] cryptd: max_cpu_qlen set to 1000
[    0.200632] vgaarb: loaded
[    0.201203] SCSI subsystem initialized
[    0.204589] libata version 3.00 loaded.
[    0.205301] usbcore: registered new interface driver usbfs
[    0.206212] usbcore: registered new interface driver hub
[    0.207093] usbcore: registered new device driver usb
[    0.208092] pps_core: LinuxPPS API ver. 1 registered
[    0.209064] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.210567] PTP clock support registered
[    0.211254] EDAC MC: Ver: 3.0.0
[    0.217131] FPGA manager framework
[    0.217742] Advanced Linux Sound Architecture Driver Initialized.
[    0.219023] clocksource: Switched to clocksource arch_sys_counter
[    0.220083] VFS: Disk quotas dquot_6.6.0
[    0.220766] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.223534] thermal_sys: Registered thermal governor 'step_wise'
[    0.223536] thermal_sys: Registered thermal governor 'power_allocator'
[    0.224622] NET: Registered protocol family 2
[    0.226944] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.228829] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.230225] TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.232057] TCP: Hash tables configured (established 16384 bind 16384)
[    0.233295] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.234698] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.236598] NET: Registered protocol family 1
[    0.249815] RPC: Registered named UNIX socket transport module.
[    0.250897] RPC: Registered udp transport module.
[    0.251908] RPC: Registered tcp transport module.
[    0.252777] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.254086] PCI: CLS 0 bytes, default 64
[    0.989340] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available
[    1.018960] kvm [1]: HYP mode not available
[    1.024106] Initialise system trusted keyrings
[    1.025048] workingset: timestamp_bits=44 max_order=19 bucket_order=0
[    1.027932] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    1.033139] NFS: Registering the id_resolver key type
[    1.033995] Key type id_resolver registered
[    1.034688] Key type id_legacy registered
[    1.035492] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    1.036697] 9p: Installing v9fs 9p2000 file system support
[    1.047121] Key type asymmetric registered
[    1.047876] Asymmetric key parser 'x509' registered
[    1.048738] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
[    1.049943] io scheduler mq-deadline registered
[    1.050760] io scheduler kyber registered
[    1.054072] pl061_gpio 9030000.pl061: PL061 GPIO chip registered
[    1.055778] pci-host-generic 4010000000.pcie: host bridge /pcie@10000000 ranges:
[    1.057333] pci-host-generic 4010000000.pcie:    IO 0x3eff0000..0x3effffff -> 0x00000000
[    1.058946] pci-host-generic 4010000000.pcie:   MEM 0x10000000..0x3efeffff -> 0x10000000
[    1.061017] pci-host-generic 4010000000.pcie:   MEM 0x8000000000..0xffffffffff -> 0x8000000000
[    1.062688] pci-host-generic 4010000000.pcie: ECAM at [mem 0x4010000000-0x401fffffff] for [bus 00-ff]
[    1.064960] pci-host-generic 4010000000.pcie: PCI host bridge to bus 0000:00
[    1.066392] pci_bus 0000:00: root bus resource [bus 00-ff]
[    1.067670] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
[    1.068949] pci_bus 0000:00: root bus resource [mem 0x10000000-0x3efeffff]
[    1.070353] pci_bus 0000:00: root bus resource [mem 0x8000000000-0xffffffffff]
[    1.072113] pci 0000:00:00.0: [1b36:0008] type 00 class 0x060000
[    1.073775] pci 0000:00:01.0: [1af4:1000] type 00 class 0x020000
[    1.075144] pci 0000:00:01.0: reg 0x10: [io  0x0000-0x001f]
[    1.076269] pci 0000:00:01.0: reg 0x14: [mem 0x00000000-0x00000fff]
[    1.077693] pci 0000:00:01.0: reg 0x20: [mem 0x00000000-0x00003fff 64bit pref]
[    1.079303] pci 0000:00:01.0: reg 0x30: [mem 0x00000000-0x0003ffff pref]
[    1.081194] pci 0000:00:02.0: [1af4:1001] type 00 class 0x010000
[    1.082575] pci 0000:00:02.0: reg 0x10: [io  0x0000-0x007f]
[    1.083914] pci 0000:00:02.0: reg 0x14: [mem 0x00000000-0x00000fff]
[    1.085043] pci 0000:00:02.0: reg 0x20: [mem 0x00000000-0x00003fff 64bit pref]
[    1.086849] pci 0000:00:01.0: BAR 6: assigned [mem 0x10000000-0x1003ffff pref]
[    1.088499] pci 0000:00:01.0: BAR 4: assigned [mem 0x8000000000-0x8000003fff 64bit pref]
[    1.089860] pci 0000:00:02.0: BAR 4: assigned [mem 0x8000004000-0x8000007fff 64bit pref]
[    1.091294] pci 0000:00:01.0: BAR 1: assigned [mem 0x10040000-0x10040fff]
[    1.092446] pci 0000:00:02.0: BAR 1: assigned [mem 0x10041000-0x10041fff]
[    1.093565] pci 0000:00:02.0: BAR 0: assigned [io  0x1000-0x107f]
[    1.094566] pci 0000:00:01.0: BAR 0: assigned [io  0x1080-0x109f]
[    1.098710] virtio-pci 0000:00:01.0: enabling device (0000 -> 0003)
[    1.102352] virtio-pci 0000:00:02.0: enabling device (0000 -> 0003)
[    1.106588] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.108458] SuperH (H)SCI(F) driver initialized
[    1.109419] msm_serial: driver initialized
[    1.110369] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    1.113573] loop: module loaded
[    1.115477] virtio_blk virtio1: [vda] 12000000 512-byte logical blocks (6.14 GB/5.72 GiB)
[    1.124324] libphy: Fixed MDIO Bus: probed
[    1.125080] tun: Universal TUN/TAP device driver, 1.6
[    1.127819] thunder_xcv, ver 1.0
[    1.128424] thunder_bgx, ver 1.0
[    1.129002] nicpf, ver 1.0
[    1.129678] hclge is initializing
[    1.130237] hns3: Hisilicon Ethernet Network Driver for Hip08 Family - version
[    1.131904] hns3: Copyright (c) 2017 Huawei Corporation.
[    1.133059] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    1.134258] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.135636] igb: Intel(R) Gigabit Ethernet Network Driver - version 5.6.0-k
[    1.136827] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.137988] igbvf: Intel(R) Gigabit Virtual Function Network Driver - version 2.4.0-k
[    1.139748] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.141114] sky2: driver version 1.30
[    1.142173] VFIO - User Level meta-driver version: 0.3
[    1.147966] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.149338] ehci-pci: EHCI PCI platform driver
[    1.150270] ehci-platform: EHCI generic platform driver
[    1.151947] ehci-orion: EHCI orion driver
[    1.152845] ehci-exynos: EHCI EXYNOS driver
[    1.153749] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.155091] ohci-pci: OHCI PCI platform driver
[    1.156033] ohci-platform: OHCI generic platform driver
[    1.157177] ohci-exynos: OHCI EXYNOS driver
[    1.158240] usbcore: registered new interface driver usb-storage
[    1.160629] rtc-pl031 9010000.pl031: registered as rtc0
[    1.162033] i2c /dev entries driver
[    1.164599] sdhci: Secure Digital Host Controller Interface driver
[    1.165925] sdhci: Copyright(c) Pierre Ossman
[    1.166961] Synopsys Designware Multimedia Card Interface Driver
[    1.168936] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.170752] ledtrig-cpu: registered to indicate activity on CPUs
[    1.172920] usbcore: registered new interface driver usbhid
[    1.174083] usbhid: USB HID core driver
[    1.176164] NET: Registered protocol family 17
[    1.177116] 9pnet: Installing 9P2000 support
[    1.177848] Key type dns_resolver registered
[    1.178701] registered taskstats version 1
[    1.179536] Loading compiled-in X.509 certificates
[    1.180717] input: gpio-keys as /devices/platform/gpio-keys/input/input0
[    1.181917] rtc-pl031 9010000.pl031: setting system clock to 2019-08-07T13:23:53 UTC (1565184233)
[    1.184596] ALSA device list:
[    1.185165]   No soundcards found.
[    1.185836] uart-pl011 9000000.pl011: no DMA platform data
[    1.200058] Freeing unused kernel memory: 38848K
[    1.201303] Run /init as init process

Please press Enter to activate this console.
/bin/sh: can't access tty; job control turned off
/ # busybox --version
--version: applet not found
/ # busybox help
help: applet not found
/ # busybox --help
BusyBox v1.22.1 (2014-09-25 18:26:52 BST) multi-call binary.
BusyBox is copyrighted by many authors between 1998-2012.
Licensed under GPLv2. See source distribution for detailed
copyright notices.

Usage: busybox [function [arguments]...]
   or: busybox --list[-full]
   or: busybox --install [-s] [DIR]
   or: function [arguments]...

        BusyBox is a multi-call binary that combines many common Unix
        utilities into a single executable.  Most people will create a
        link to busybox for each function they wish to use and BusyBox
        will act like whatever it was invoked as.

Currently defined functions:
        [, [[, acpid, add-shell, addgroup, adduser, adjtimex, arp, arping, ash,
        awk, base64, basename, beep, blkid, blockdev, bootchartd, brctl,
        bunzip2, bzcat, bzip2, cal, cat, catv, chat, chattr, chgrp, chmod,
        chown, chpasswd, chpst, chroot, chrt, chvt, cksum, clear, cmp, comm,
        conspy, cp, cpio, crond, crontab, cryptpw, cttyhack, cut, date, dc, dd,
        deallocvt, delgroup, deluser, depmod, devmem, df, dhcprelay, diff,
        dirname, dmesg, dnsd, dnsdomainname, dos2unix, du, dumpkmap,
        dumpleases, echo, ed, egrep, eject, env, envdir, envuidgid, ether-wake,
        expand, expr, fakeidentd, false, fbset, fbsplash, fdflush, fdformat,
        fdisk, fgconsole, fgrep, find, findfs, flock, fold, free, freeramdisk,
        fsck, fsck.minix, fstrim, fsync, ftpd, ftpget, ftpput, fuser, getopt,
        getty, grep, groups, gunzip, gzip, halt, hd, hdparm, head, hexdump,
        hostid, hostname, httpd, hush, hwclock, id, ifconfig, ifdown,
        ifenslave, ifplugd, ifup, inetd, init, insmod, install, ionice, iostat,
        ip, ipaddr, ipcalc, ipcrm, ipcs, iplink, iproute, iprule, iptunnel,
        kbd_mode, kill, killall, killall5, klogd, last, less, linux32, linux64,
        linuxrc, ln, loadfont, loadkmap, logger, login, logname, logread,
        losetup, lpd, lpq, lpr, ls, lsattr, lsmod, lsof, lspci, lsusb, lzcat,
        lzma, lzop, lzopcat, makedevs, makemime, man, md5sum, mdev, mesg,
        microcom, mkdir, mkdosfs, mke2fs, mkfifo, mkfs.ext2, mkfs.minix,
        mkfs.vfat, mknod, mkpasswd, mkswap, mktemp, modinfo, modprobe, more,
        mount, mountpoint, mpstat, mt, mv, nameif, nanddump, nandwrite,
        nbd-client, nc, netstat, nice, nmeter, nohup, nslookup, ntpd, od,
        openvt, passwd, patch, pgrep, pidof, ping, ping6, pipe_progress,
        pivot_root, pkill, pmap, popmaildir, poweroff, powertop, printenv,
        printf, ps, pscan, pstree, pwd, pwdx, raidautorun, rdate, rdev,
        readahead, readlink, readprofile, realpath, reboot, reformime,
        remove-shell, renice, reset, resize, rev, rm, rmdir, rmmod, route, rpm,
        rpm2cpio, rtcwake, run-parts, runlevel, runsv, runsvdir, rx, script,
        scriptreplay, sed, sendmail, seq, setarch, setconsole, setfont,
        setkeycodes, setlogcons, setserial, setsid, setuidgid, sh, sha1sum,
        sha256sum, sha3sum, sha512sum, showkey, slattach, sleep, smemcap,
        softlimit, sort, split, start-stop-daemon, stat, strings, stty, su,
        sulogin, sum, sv, svlogd, swapoff, swapon, switch_root, sync, sysctl,
        syslogd, tac, tail, tar, tcpsvd, tee, telnet, telnetd, test, tftp,
        tftpd, time, timeout, top, touch, tr, traceroute, traceroute6, true,
        tty, ttysize, tunctl, ubiattach, ubidetach, ubimkvol, ubirmvol,
        ubirsvol, ubiupdatevol, udhcpc, udhcpd, udpsvd, umount, uname,
        unexpand, uniq, unix2dos, unlzma, unlzop, unxz, unzip, uptime, users,
        usleep, uudecode, uuencode, vconfig, vi, vlock, volname, wall, watch,
        watchdog, wc, wget, which, who, whoami, whois, xargs, xz, xzcat, yes,
        zcat, zcip

/ #
/ #
Please press Enter to activate this console.
/bin/sh: can't access tty; job control turned off
/ # poweroff
swapoff: /etc/fstab: No such file or directory
umount: can't umount /: Invalid argument
The system is going down NOW!
Sent SIGTERM to all processes
Terminated
Sent SIGKILL to all processes
Requesting system poweroff
[  229.194564] reboot: Power down
[mark@gravadlaks:~/repro]%

























































































































[mark@gravadlaks:~/repro]% ./vmboot.sh ~/Image.be-clang
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x431f0af1]
[    0.000000] Linux version 5.3.0-rc3-00001-g9b0f179cd3d1-dirty (mark@lakrids) (clang version 8.0.0 (tags/RELEASE_800/final)) #2 SMP PREEMPT Wed Aug 7 14:20:53 BST 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbf1840-0xbdbf2fff]
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
[    0.000000] percpu: Embedded 23 pages/cpu s56216 r8192 d29800 u94208
[    0.000000] pcpu-alloc: s56216 r8192 d29800 u94208 alloc=23*4096
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: loglevel=9 rodata=full earlycon root=/dev/vda init=/sbin/reboot -- -f
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1964648K/2097152K available (11582K kernel code, 1860K rwdata, 5752K rodata, 38848K init, 411K bss, 99736K reserved, 32768K cma-reserved)
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
[    0.000000] random: get_random_bytes called from start_kernel+0x1d4/0x394 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 200.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2e2049d3e8, max_idle_ns: 440795210634 ns
[    0.000002] sched_clock: 56 bits at 200MHz, resolution 5ns, wraps every 4398046511102ns
[    0.002392] Console: colour dummy device 80x25
[    0.003317] printk: console [tty0] enabled
[    0.004171] printk: bootconsole [pl11] disabled
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x431f0af1]
[    0.000000] Linux version 5.3.0-rc3-00001-g9b0f179cd3d1-dirty (mark@lakrids) (clang version 8.0.0 (tags/RELEASE_800/final)) #2 SMP PREEMPT Wed Aug 7 14:20:53 BST 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbf1840-0xbdbf2fff]
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
[    0.000000] percpu: Embedded 23 pages/cpu s56216 r8192 d29800 u94208
[    0.000000] pcpu-alloc: s56216 r8192 d29800 u94208 alloc=23*4096
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: loglevel=9 rodata=full earlycon root=/dev/vda init=/sbin/reboot -- -f
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1964648K/2097152K available (11582K kernel code, 1860K rwdata, 5752K rodata, 38848K init, 411K bss, 99736K reserved, 32768K cma-reserved)
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
[    0.000000] random: get_random_bytes called from start_kernel+0x1d4/0x394 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 200.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2e2049d3e8, max_idle_ns: 440795210634 ns
[    0.000002] sched_clock: 56 bits at 200MHz, resolution 5ns, wraps every 4398046511102ns
[    0.002392] Console: colour dummy device 80x25
[    0.003317] printk: console [tty0] enabled
[    0.004171] printk: bootconsole [pl11] disabled
[    0.005144] Calibrating delay loop (skipped), value calculated using timer frequency.. 400.00 BogoMIPS (lpj=800000)
[    0.005151] pid_max: default: 32768 minimum: 301
[    0.005175] LSM: Security Framework initializing
[    0.005198] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.005206] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.026500] ASID allocator initialised with 32768 entries
[    0.034531] rcu: Hierarchical SRCU implementation.
[    0.042612] Platform MSI: its@8080000 domain created
[    0.042629] PCI/MSI: /intc@8000000/its@8080000 domain created
[    0.050617] smp: Bringing up secondary CPUs ...
[    0.050624] smp: Brought up 1 node, 1 CPU
[    0.050627] SMP: Total of 1 processors activated.
[    0.050632] CPU features: detected: Privileged Access Never
[    0.050636] CPU features: detected: LSE atomic instructions
[    0.050640] CPU features: detected: RAS Extension Support
[    0.050644] CPU features: detected: CRC32 instructions
[    0.050664] CPU: All CPU(s) started at EL1
[    0.050670] alternatives: patching kernel code
[    0.053393] devtmpfs: initialized
[    0.054728] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.054739] futex hash table entries: 256 (order: 2, 16384 bytes, linear)
[    0.054952] pinctrl core: initialized pinctrl subsystem
[    0.055293] NET: Registered protocol family 16
[    0.055355] audit: initializing netlink subsys (disabled)
[    0.055610] audit: type=2000 audit(0.056:1): state=initialized audit_enabled=0 res=1
[    0.058679] cpuidle: using governor menu
[    0.058739] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.059505] DMA: preallocated 256 KiB pool for atomic allocations
[    0.059761] Serial: AMBA PL011 UART driver
[    0.062404] 9000000.pl011: ttyAMA0 at MMIO 0x9000000 (irq = 39, base_baud = 0) is a PL011 rev1
[    0.154551] printk: console [ttyAMA0] enabled
[    0.159532] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.160704] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.161945] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.163014] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.172396] cryptd: max_cpu_qlen set to 1000
[    0.188541] vgaarb: loaded
[    0.189257] SCSI subsystem initialized
[    0.192493] libata version 3.00 loaded.
[    0.193251] usbcore: registered new interface driver usbfs
[    0.194165] usbcore: registered new interface driver hub
[    0.195048] usbcore: registered new device driver usb
[    0.196037] pps_core: LinuxPPS API ver. 1 registered
[    0.197052] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.198675] PTP clock support registered
[    0.199402] EDAC MC: Ver: 3.0.0
[    0.205125] FPGA manager framework
[    0.205734] Advanced Linux Sound Architecture Driver Initialized.
[    0.206909] clocksource: Switched to clocksource arch_sys_counter
[    0.207941] VFS: Disk quotas dquot_6.6.0
[    0.208604] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.211337] thermal_sys: Registered thermal governor 'step_wise'
[    0.211339] thermal_sys: Registered thermal governor 'power_allocator'
[    0.212372] NET: Registered protocol family 2
[    0.214371] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.216248] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.217712] TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.218979] TCP: Hash tables configured (established 16384 bind 16384)
[    0.220071] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.221208] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.222501] NET: Registered protocol family 1
[    0.235747] RPC: Registered named UNIX socket transport module.
[    0.236757] RPC: Registered udp transport module.
[    0.237513] RPC: Registered tcp transport module.
[    0.238273] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.239486] PCI: CLS 0 bytes, default 64
[    0.847684] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available
[    0.877150] kvm [1]: HYP mode not available
[    0.882051] Initialise system trusted keyrings
[    0.882941] workingset: timestamp_bits=44 max_order=19 bucket_order=0
[    0.885650] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.890850] NFS: Registering the id_resolver key type
[    0.892011] Key type id_resolver registered
[    0.892718] Key type id_legacy registered
[    0.893379] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.894617] 9p: Installing v9fs 9p2000 file system support
[    0.905232] Key type asymmetric registered
[    0.906003] Asymmetric key parser 'x509' registered
[    0.906827] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
[    0.908506] io scheduler mq-deadline registered
[    0.909330] io scheduler kyber registered
[    0.912451] pl061_gpio 9030000.pl061: PL061 GPIO chip registered
[    0.913982] pci-host-generic 4010000000.pcie: host bridge /pcie@10000000 ranges:
[    0.915435] pci-host-generic 4010000000.pcie:    IO 0x3eff0000..0x3effffff -> 0x00000000
[    0.916768] pci-host-generic 4010000000.pcie:   MEM 0x10000000..0x3efeffff -> 0x10000000
[    0.918077] pci-host-generic 4010000000.pcie:   MEM 0x8000000000..0xffffffffff -> 0x8000000000
[    0.919721] pci-host-generic 4010000000.pcie: ECAM at [mem 0x4010000000-0x401fffffff] for [bus 00-ff]
[    0.921262] pci-host-generic 4010000000.pcie: PCI host bridge to bus 0000:00
[    0.922467] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.923675] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
[    0.924709] pci_bus 0000:00: root bus resource [mem 0x10000000-0x3efeffff]
[    0.925828] pci_bus 0000:00: root bus resource [mem 0x8000000000-0xffffffffff]
[    0.927207] pci 0000:00:00.0: [1b36:0008] type 00 class 0x060000
[    0.928607] pci 0000:00:01.0: [1af4:1000] type 00 class 0x020000
[    0.929792] pci 0000:00:01.0: reg 0x10: [io  0x0000-0x001f]
[    0.930721] pci 0000:00:01.0: reg 0x14: [mem 0x00000000-0x00000fff]
[    0.932208] pci 0000:00:01.0: reg 0x20: [mem 0x00000000-0x00003fff 64bit pref]
[    0.933542] pci 0000:00:01.0: reg 0x30: [mem 0x00000000-0x0003ffff pref]
[    0.935114] pci 0000:00:02.0: [1af4:1001] type 00 class 0x010000
[    0.936226] pci 0000:00:02.0: reg 0x10: [io  0x0000-0x007f]
[    0.937177] pci 0000:00:02.0: reg 0x14: [mem 0x00000000-0x00000fff]
[    0.938298] pci 0000:00:02.0: reg 0x20: [mem 0x00000000-0x00003fff 64bit pref]
[    0.940275] pci 0000:00:01.0: BAR 6: assigned [mem 0x10000000-0x1003ffff pref]
[    0.941465] pci 0000:00:01.0: BAR 4: assigned [mem 0x8000000000-0x8000003fff 64bit pref]
[    0.942849] pci 0000:00:02.0: BAR 4: assigned [mem 0x8000004000-0x8000007fff 64bit pref]
[    0.944866] pci 0000:00:01.0: BAR 1: assigned [mem 0x10040000-0x10040fff]
[    0.945974] pci 0000:00:02.0: BAR 1: assigned [mem 0x10041000-0x10041fff]
[    0.947193] pci 0000:00:02.0: BAR 0: assigned [io  0x1000-0x107f]
[    0.948277] pci 0000:00:01.0: BAR 0: assigned [io  0x1080-0x109f]
[    0.952525] virtio-pci 0000:00:01.0: enabling device (0000 -> 0003)
[    0.956538] virtio-pci 0000:00:02.0: enabling device (0000 -> 0003)
[    0.960969] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.962824] SuperH (H)SCI(F) driver initialized
[    0.964039] msm_serial: driver initialized
[    0.965015] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    0.968075] loop: module loaded
[    0.969973] virtio_blk virtio1: [vda] 12000000 512-byte logical blocks (6.14 GB/5.72 GiB)
[    0.982789] libphy: Fixed MDIO Bus: probed
[    0.983945] tun: Universal TUN/TAP device driver, 1.6
[    0.988551] thunder_xcv, ver 1.0
[    0.989117] thunder_bgx, ver 1.0
[    0.989633] nicpf, ver 1.0
[    0.990238] hclge is initializing
[    0.990759] hns3: Hisilicon Ethernet Network Driver for Hip08 Family - version
[    0.992237] hns3: Copyright (c) 2017 Huawei Corporation.
[    0.993104] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    0.993996] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.994903] igb: Intel(R) Gigabit Ethernet Network Driver - version 5.6.0-k
[    0.996375] igb: Copyright (c) 2007-2014 Intel Corporation.
[    0.997265] igbvf: Intel(R) Gigabit Virtual Function Network Driver - version 2.4.0-k
[    0.998460] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    0.999655] sky2: driver version 1.30
[    1.000473] VFIO - User Level meta-driver version: 0.3
[    1.005825] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.006832] ehci-pci: EHCI PCI platform driver
[    1.007770] ehci-platform: EHCI generic platform driver
[    1.008627] ehci-orion: EHCI orion driver
[    1.009279] ehci-exynos: EHCI EXYNOS driver
[    1.009956] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.010908] ohci-pci: OHCI PCI platform driver
[    1.011619] ohci-platform: OHCI generic platform driver
[    1.012459] ohci-exynos: OHCI EXYNOS driver
[    1.013286] usbcore: registered new interface driver usb-storage
[    1.015000] rtc-pl031 9010000.pl031: registered as rtc0
[    1.016050] i2c /dev entries driver
[    1.017949] sdhci: Secure Digital Host Controller Interface driver
[    1.018894] sdhci: Copyright(c) Pierre Ossman
[    1.019919] Synopsys Designware Multimedia Card Interface Driver
[    1.021121] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.022399] ledtrig-cpu: registered to indicate activity on CPUs
[    1.023827] usbcore: registered new interface driver usbhid
[    1.024703] usbhid: USB HID core driver
[    1.026302] NET: Registered protocol family 17
[    1.027116] 9pnet: Installing 9P2000 support
[    1.027802] Key type dns_resolver registered
[    1.028633] registered taskstats version 1
[    1.029277] Loading compiled-in X.509 certificates
[    1.030352] input: gpio-keys as /devices/platform/gpio-keys/input/input0
[    1.031659] rtc-pl031 9010000.pl031: setting system clock to 2019-08-07T13:27:45 UTC (1565184465)
[    1.034034] ALSA device list:
[    1.034499]   No soundcards found.
[    1.035197] uart-pl011 9000000.pl011: no DMA platform data
[    1.058358] Freeing unused kernel memory: 38848K
[    1.059303] Run /init as init process

Please press Enter to activate this console.
/bin/sh: can't access tty; job control turned off
/ # busybox --help
BusyBox v1.22.1 (2014-09-25 18:26:52 BST) multi-call binary.
BusyBox is copyrighted by many authors between 1998-2012.
Licensed under GPLv2. See source distribution for detailed
copyright notices.

Usage: busybox [function [arguments]...]
   or: busybox --list[-full]
   or: busybox --install [-s] [DIR]
   or: function [arguments]...

        BusyBox is a multi-call binary that combines many common Unix
        utilities into a single executable.  Most people will create a
        link to busybox for each function they wish to use and BusyBox
        will act like whatever it was invoked as.

Currently defined functions:
        [, [[, acpid, add-shell, addgroup, adduser, adjtimex, arp, arping, ash,
        awk, base64, basename, beep, blkid, blockdev, bootchartd, brctl,
        bunzip2, bzcat, bzip2, cal, cat, catv, chat, chattr, chgrp, chmod,
        chown, chpasswd, chpst, chroot, chrt, chvt, cksum, clear, cmp, comm,
        conspy, cp, cpio, crond, crontab, cryptpw, cttyhack, cut, date, dc, dd,
        deallocvt, delgroup, deluser, depmod, devmem, df, dhcprelay, diff,
        dirname, dmesg, dnsd, dnsdomainname, dos2unix, du, dumpkmap,
        dumpleases, echo, ed, egrep, eject, env, envdir, envuidgid, ether-wake,
        expand, expr, fakeidentd, false, fbset, fbsplash, fdflush, fdformat,
        fdisk, fgconsole, fgrep, find, findfs, flock, fold, free, freeramdisk,
        fsck, fsck.minix, fstrim, fsync, ftpd, ftpget, ftpput, fuser, getopt,
        getty, grep, groups, gunzip, gzip, halt, hd, hdparm, head, hexdump,
        hostid, hostname, httpd, hush, hwclock, id, ifconfig, ifdown,
        ifenslave, ifplugd, ifup, inetd, init, insmod, install, ionice, iostat,
        ip, ipaddr, ipcalc, ipcrm, ipcs, iplink, iproute, iprule, iptunnel,
        kbd_mode, kill, killall, killall5, klogd, last, less, linux32, linux64,
        linuxrc, ln, loadfont, loadkmap, logger, login, logname, logread,
        losetup, lpd, lpq, lpr, ls, lsattr, lsmod, lsof, lspci, lsusb, lzcat,
        lzma, lzop, lzopcat, makedevs, makemime, man, md5sum, mdev, mesg,
        microcom, mkdir, mkdosfs, mke2fs, mkfifo, mkfs.ext2, mkfs.minix,
        mkfs.vfat, mknod, mkpasswd, mkswap, mktemp, modinfo, modprobe, more,
        mount, mountpoint, mpstat, mt, mv, nameif, nanddump, nandwrite,
        nbd-client, nc, netstat, nice, nmeter, nohup, nslookup, ntpd, od,
        openvt, passwd, patch, pgrep, pidof, ping, ping6, pipe_progress,
        pivot_root, pkill, pmap, popmaildir, poweroff, powertop, printenv,
        printf, ps, pscan, pstree, pwd, pwdx, raidautorun, rdate, rdev,
        readahead, readlink, readprofile, realpath, reboot, reformime,
        remove-shell, renice, reset, resize, rev, rm, rmdir, rmmod, route, rpm,
        rpm2cpio, rtcwake, run-parts, runlevel, runsv, runsvdir, rx, script,
        scriptreplay, sed, sendmail, seq, setarch, setconsole, setfont,
        setkeycodes, setlogcons, setserial, setsid, setuidgid, sh, sha1sum,
        sha256sum, sha3sum, sha512sum, showkey, slattach, sleep, smemcap,
        softlimit, sort, split, start-stop-daemon, stat, strings, stty, su,
        sulogin, sum, sv, svlogd, swapoff, swapon, switch_root, sync, sysctl,
        syslogd, tac, tail, tar, tcpsvd, tee, telnet, telnetd, test, tftp,
        tftpd, time, timeout, top, touch, tr, traceroute, traceroute6, true,
        tty, ttysize, tunctl, ubiattach, ubidetach, ubimkvol, ubirmvol,
        ubirsvol, ubiupdatevol, udhcpc, udhcpd, udpsvd, umount, uname,
        unexpand, uniq, unix2dos, unlzma, unlzop, unxz, unzip, uptime, users,
        usleep, uudecode, uuencode, vconfig, vi, vlock, volname, wall, watch,
        watchdog, wc, wget, which, who, whoami, whois, xargs, xz, xzcat, yes,
        zcat, zcip

/ # uname -a
Linux (none) 5.3.0-rc3-00001-g9b0f179cd3d1-dirty #2 SMP PREEMPT Wed Aug 7 14:20:53 BST 2019 aarch64_be GNU/Linux
/ # poweroff
swapoff: /etc/fstab: No such file or directory
umount: can't umount /: Invalid argument
The system is going down NOW!
Sent SIGTERM to all processes
Terminated
Sent SIGKILL to all processes
Requesting system poweroff
[   12.838390] reboot: Power down
[

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807135618.GF54191%40lakrids.cambridge.arm.com.
