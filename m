Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUMVU7VAKGQEGKYXUEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DEE838EA
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 20:45:39 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id y66sf56467512pfb.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 11:45:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565117137; cv=pass;
        d=google.com; s=arc-20160816;
        b=hguo2mg+fdAWYJvQVZbZwEOt2oVuAkUhUPaFXSA6DmdJ+yLXPseNrjBuIDWApqncjg
         Bpz5pNz7YvVWZIDfilnmlh5roL4KEJ9G9lb7C0iDMJm8JE+Gyf1hPcLLoxPeTygPCRIk
         G1sQoJX3m4quEXjbZJM/lcF9qcIaVmek9rWVXb6Iz9RM+KtEutWEN3w2axkVDSnVFWZ4
         3szNz8kLVIEcrPaG28A9/NshYnIxpILlqqFcKG4RWsIi6cetnvRLFMRMkugogvYDH9HC
         MJZelAaOP33VsNEdRnIpr0APo5txHiXQbFnf8a5bYk0TS3/oe/A1pfspsmvdYlLuVc/O
         3s+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=qI7I0fd+l1gB5JfEqEcARpYpG8m9iw98eHqSUaErYWU=;
        b=HYSDRprHhOl8ynss24lbEGjQ0l5EkPtxK5o16Hov8xHSEnBz/QH/+XJZLy5XDewJ3T
         nYDdryW93DYn2lEPyq0ZPWI0buYf1CYo7HVl3svnCurNowJQR04FVC93Quu2NZLltgfq
         IdurkslRlRJd8BwBWgSUx9LlsOkgaumxGxB3d+aNkFzu24K+Untpjp21hRahmRZZxcY+
         /txp+WrLmnRFBUP9tCdhAP5lYFEKV5PwqlyS8gRUPVGJSIF4GpF8/eYC5gRS4c/HES2e
         RDUJyTEFfssByVPLloPwzp/MKeHl9f8RApjdxsWisAdo7c1Ow+BmBjeaRUtC+OdQr5yb
         v5IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fx1Eg3sj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qI7I0fd+l1gB5JfEqEcARpYpG8m9iw98eHqSUaErYWU=;
        b=lutX40NC0B4Vnm9rlTWI6F2ZuezgEdMLBYlHMTvFQBAnzdZfWewm7Bdo/n5gJL2qUC
         lNEuVThtdS+VCdUQPzn43nbuNWVc0IIcsyvc4d0lMuzHDWEparvH6jO54bFPv+IsR0H9
         VpxlUFTkZE4ha2jXAmDGZYQ7Dpkt3dISx4A/QxaM6wU3XTXoiVoc9dotOhPHB+lvd2qT
         2yoytHUYVRzhe6ci7t7j1OP9jPI7jCJZAqTOP+iCDof/ICAsU+C/f6tmFtg0K9ya5jdF
         mt7slNhTNg2HEpKv/SsYlEJEk5jWx1p3Bb5+cdaX8lDGGb03On47MM5WrgudIvMQ/Qiq
         WO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qI7I0fd+l1gB5JfEqEcARpYpG8m9iw98eHqSUaErYWU=;
        b=sK8UnLqGMrY7g7RtLzNXAgmQR2qAgFBJlTUE5AujlMy/n3aqw1aSNzTtZG4or1s3/P
         MxgW3UI68CUQsy8+pBZHyFrA8Y8IvFuCyWu65pu10Ak1MGJg85lUnQwG5ba5yZBmIAUI
         hRhgMDIySkREmUNiCO3y/BiwCNPrC5+Z9bhWojUsSKmlnWTgB+ug82Nb9skIBaWnYxNY
         scCca2/X4KT4KtfH7S+XJ4dSqaPfOKJd3MLKwzuO8aUyWKpB4gHqTZqSWQPUxER4U9mA
         8vuM828ZqL9XEXPTXLHHVv5QWZ3bFC0e6xj7oJACz+dpLOrqS3Lq5ARS3jZE2HpYv+Xe
         52zA==
X-Gm-Message-State: APjAAAVeA/b8V5zsYTykessPgKq+m3l1RBLQY34MoHi6Srh2D4yr8cPN
	Dsp7fJ2jSkrISQES1bY55jU=
X-Google-Smtp-Source: APXvYqyq4mSfer5wyBxGSawmCSzcKnXaK2bua3dCD480/SYPaCiFZ9FVT26fDOpT97ZwLNSIBtt6KQ==
X-Received: by 2002:a17:90a:3542:: with SMTP id q60mr2499841pjb.0.1565117137533;
        Tue, 06 Aug 2019 11:45:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9895:: with SMTP id s21ls23501229plp.3.gmail; Tue,
 06 Aug 2019 11:45:37 -0700 (PDT)
X-Received: by 2002:a17:90a:2562:: with SMTP id j89mr4570517pje.123.1565117137182;
        Tue, 06 Aug 2019 11:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565117137; cv=none;
        d=google.com; s=arc-20160816;
        b=Y48slTvv0+661kXExHci9+tm8S1hYDwCqyayJWx3zi0McGXxmyb7khU4GtCv9AjHCl
         /7tBX6MsbOXzCnAQqa73ckNyVqdKFnhFG6FO1XIp4g11/i5ZBnuMkuJlJM7B5/mrEtoJ
         d7v3FmuDsS45HBxh3eVgC4Lu5NTgHNcXlQiILqtqukVEIvnPsUn72+jAdxh53sHskJzQ
         ho/ECq5O6jBY/49AcPhaIAqCgOAqU2SOdL6EdiZc0I7P8aKGAPRSV0d1LKm+urDtsnJx
         +DtquQozuKMBoeMpGbB41IJy/k3Un7s5OgwdwQpMIOX4g2I3g2BW7lIUx27rga95GTVk
         VkUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=Bwnzn8ziF6CXuOdPCugqp3jHicAK6YtS1qnhM+ed38w=;
        b=yfWYNHheJ/L6A5OlRNtHOEJT7nDs/Ugq3qVNAXvxI1boU0TtK/ixvpV5CWbK3Oyp8e
         9HB7OgqFt0zPNqLaPhE3zy8uTl7BioirVYMFcX2V/57ReB56S8JupkyJNBspXOLa7Y1n
         tZtfTnRVdWXXw6hCb/hHtPtZb+3x5ztHCjFTI2gKxdOgK9Ax9l4XpdDGnXeg0CnmSOTR
         oJEId1ilz9OT0MsDHPvfr0Xwf35Wj0Qd1lNGbE6/19RrFQ2CGsW02aYZsXgdLGzyU8mT
         /y1gZwX41rO1TZgGDFq1bvjwiYRsbTd86BIROWcBdQowl8LayGt6fA0ofoDtCKYxV6t4
         74zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fx1Eg3sj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id cm10si3912887plb.0.2019.08.06.11.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 11:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id w3so4843077pgt.13
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 11:45:37 -0700 (PDT)
X-Received: by 2002:a17:90a:ac11:: with SMTP id o17mr4630618pjq.134.1565117136310;
 Tue, 06 Aug 2019 11:45:36 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 11:45:25 -0700
Message-ID: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
Subject: aarch64 Big Endian
To: Mark Brown <mark.brown@linaro.org>
Cc: kernelci@groups.io, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fx1Eg3sj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

Mark,
I was able to "boot" a aarch64 kernel with CONFIG_CPU_BIG_ENDIAN=3Dy,
but without a userspace image... the kernel seems to get stuck in a
loop somewhere.  I would have expected it to panic somewhere since no
rootfs was provided.

Is the boot failures KernelCI's reporting a boot timeout or no output at al=
l?

=E2=9E=9C  kernel-all git:(master) =E2=9C=97 qemu-system-aarch64 -kernel
arch/arm64/boot/Image.gz -machine virt -cpu cortex-a57 -nographic
--append "console=3DttyAMA0" -m 2048
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x411fd070]
[    0.000000] Linux version 5.3.0-rc3-00016-g0eb0ce0a78e1
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 10.0.0
(https://github.com/llvm/llvm-project.git
5bf16ec02b82c0e2502308c0ba36810b303ead0f)) #109 SMP PREEMPT Tue Aug 6
11:38:10 PDT 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem
0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbf1840-0xbdbf2fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x00000000bffff=
fff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv0.2 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] percpu: Embedded 23 pages/cpu s56216 r8192 d29800 u94208
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 832075
[    0.000000] CPU features: detected: ARM erratum 834220
[    0.000000] CPU features: detected: EL2 vector hardening
[    0.000000] ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 51609=
6
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: console=3DttyAMA0
[    0.000000] Dentry cache hash table entries: 262144 (order: 9,
2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8,
1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1983700K/2097152K available (11582K kernel
code, 1858K rwdata, 5780K rodata, 4992K init, 415K bss, 80684K
reserved, 32768K cma-reserved)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, N=
odes=3D1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu: RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu_ids=
=3D1.
[    0.000000] Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D1
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv2m: range[mem 0x08020000-0x08020fff], SPI[80:143]
[    0.000000] random: get_random_bytes called from
start_kernel+0x1d0/0x390 with crng_init=3D0
[    0.000000] arch_timer: cp15 timer(s) running at 62.50MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
max_cycles: 0x1cd42e208c, max_idle_ns: 881590405314 ns
[    0.000046] sched_clock: 56 bits at 62MHz, resolution 16ns, wraps
every 4398046511096ns
[    0.002587] Console: colour dummy device 80x25
[    0.005780] Calibrating delay loop (skipped), value calculated
using timer frequency.. 125.00 BogoMIPS (lpj=3D250000)
[    0.005885] pid_max: default: 32768 minimum: 301
[    0.006624] LSM: Security Framework initializing
[    0.007468] Mount-cache hash table entries: 4096 (order: 3, 32768
bytes, linear)
[    0.007513] Mountpoint-cache hash table entries: 4096 (order: 3,
32768 bytes, linear)
[    0.051639] ASID allocator initialised with 32768 entries
[    0.059550] rcu: Hierarchical SRCU implementation.
[    0.080493] smp: Bringing up secondary CPUs ...
[    0.080667] smp: Brought up 1 node, 1 CPU
[    0.080722] SMP: Total of 1 processors activated.
[    0.080886] CPU features: detected: 32-bit EL0 Support
[    0.081041] CPU features: detected: CRC32 instructions
[    0.085940] CPU: All CPU(s) started at EL1
[    0.086275] alternatives: patching kernel code
[    0.106298] devtmpfs: initialized
[    0.115792] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.115902] futex hash table entries: 256 (order: 2, 16384 bytes, linear=
)
[    0.119939] pinctrl core: initialized pinctrl subsystem
[    0.130474] NET: Registered protocol family 16
[    0.132084] audit: initializing netlink subsys (disabled)
[    0.136810] audit: type=3D2000 audit(0.116:1): state=3Dinitialized
audit_enabled=3D0 res=3D1
[    0.139644] cpuidle: using governor menu
[    0.140560] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers=
.
[    0.145303] DMA: preallocated 256 KiB pool for atomic allocations
[    0.148195] Serial: AMBA PL011 UART driver
[    0.175320] 9000000.pl011: ttyAMA0 at MMIO 0x9000000 (irq =3D 39,
base_baud =3D 0) is a PL011 rev1
[    0.191373] printk: console [ttyAMA0] enabled
[    0.223211] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.223426] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.223677] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.223909] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.247462] cryptd: max_cpu_qlen set to 1000
[    0.277101] vgaarb: loaded
[    0.278702] SCSI subsystem initialized
[    0.281838] usbcore: registered new interface driver usbfs
[    0.282331] usbcore: registered new interface driver hub
[    0.282828] usbcore: registered new device driver usb
[    0.285259] pps_core: LinuxPPS API ver. 1 registered
[    0.285501] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
Rodolfo Giometti <giometti@linux.it>
[    0.285984] PTP clock support registered
[    0.286600] EDAC MC: Ver: 3.0.0
[    0.293275] FPGA manager framework
[    0.294082] Advanced Linux Sound Architecture Driver Initialized.
[    0.302087] clocksource: Switched to clocksource arch_sys_counter
[    0.303005] VFS: Disk quotas dquot_6.6.0
[    0.303328] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byte=
s)
[    0.321791] thermal_sys: Registered thermal governor 'step_wise'
[    0.321872] thermal_sys: Registered thermal governor 'power_allocator'
[    0.323228] NET: Registered protocol family 2
[    0.326821] tcp_listen_portaddr_hash hash table entries: 1024
(order: 2, 16384 bytes, linear)
[    0.327239] TCP established hash table entries: 16384 (order: 5,
131072 bytes, linear)
[    0.327774] TCP bind hash table entries: 16384 (order: 6, 262144
bytes, linear)
[    0.328296] TCP: Hash tables configured (established 16384 bind 16384)
[    0.329450] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.329872] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, li=
near)
[    0.331383] NET: Registered protocol family 1
[    0.346875] RPC: Registered named UNIX socket transport module.
[    0.347167] RPC: Registered udp transport module.
[    0.347399] RPC: Registered tcp transport module.
[    0.347635] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.348053] PCI: CLS 0 bytes, default 64
[    0.351576] Unpacking initramfs...
[    0.451870] Freeing initrd memory: 14796K
[    0.454334] hw perfevents: enabled with armv8_pmuv3 PMU driver, 1
counters available
[    0.454815] kvm [1]: HYP mode not available
[    0.732776] request_module: kmod_concurrent_max (0) close to 0
(max_modprobes: 50), for module binfmt-4c46, throttling...
[    5.882267] request_module: modprobe binfmt-4c46 cannot be
processed, kmod busy with 50 threads for more than 5 seconds now
(qemu) q
=E2=9E=9C  kernel-all git:(master) =E2=9C=97 grep ENDIAN .config
CONFIG_CPU_BIG_ENDIAN=3Dy

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn0kv%2BN5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ%40m=
ail.gmail.com.
