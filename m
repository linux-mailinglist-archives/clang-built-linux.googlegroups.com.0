Return-Path: <clang-built-linux+bncBAABBYXB574QKGQEDV3747Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id D97E82488EB
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:16:51 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id q18sf13347273qkq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:16:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763810; cv=pass;
        d=google.com; s=arc-20160816;
        b=z1fJg+dgvFk98ABbO8MaslWjEjnrzjBXf7piGAWekrLoiaoH6VNefREP5wCG/LyOjI
         8lwiEzY4W8HQ341Fxw/JIFKFvyvUd3NUGaPz3554i+hJWfLyiVGwEmbKyHaBfvjBOquo
         1mlccEHdIJLfLJpjoRBfbY626UnVd1tN5Y/sLWJokbI1AjHTT9aNDqxzUaq6IZV3AbSx
         Mo8n9M5h0fPyAzm90qAJRxss8qBRshN9Cn1W6qum3TDI4pRPrTTtJKA6JujZwAqbCXh/
         DoB2Rg8rtazK91ye8Jyk9ibG9a6Y2u1x6+WMzEym642xJUgOwxkZmSJ7WAxRFgwHPxcm
         zOFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wThJSgl7u12HsOhJJH4vP0msvsIjvxeqoW7n+Lne0HU=;
        b=MGZ/LJp9HiLNPkU9+5VKrZ/Tav6fCdfKEkvSP9+V5ztuPZeIwHb1MmEobH/aJ7ibb0
         NWsfVtQdKsvZJxVrBXBf3Id5pwm8ttkeFNUVi0sIVrBMiMzxWM+gue93Bj4Ki+HEuuC6
         HQZoQMBSCHxYaVYeKIjRORE/45ixzoDcx6QDV5kBqIYG435YJ7ul674cyeYTKmUpdABU
         ahdPqh5Uq2dZrc6gQGn3cgszjW63SPBrDDn37qWCFWBQlmDi2PslHJhtZmblxpHCS8KQ
         x7tvgwCxTj/Ha1d/abeknX7aBLsC8c7Bl2VE/0WHOD5TbV2LwzsWIDQxsplIfszn9R1O
         5uyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="mZ4Dw/78";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wThJSgl7u12HsOhJJH4vP0msvsIjvxeqoW7n+Lne0HU=;
        b=lGXTUCziF0pyhJdNTMJ6Vg+8mQ62+i3KlJhJqyUPBi+FmZfFIXNCOq2EVnZZIaLsVt
         jASIcmyA5M21HzKoZMEKJkYKAFFzO+67GY5/oLZ82l/b1a2jLTJ8Ajs90N1kYKtLcFpN
         CUb5/CaB07BUKPeuDZxtiz7M+0vJxUY4w0MWT++o8A5xHMCbqJuE3yPh27dz6xR3f3Yc
         pQHrSsqAhvBTU+I9SrmpkUrWehKIEs1tkk3qBXiyRs7xGaV16CkbynHt9n9LZjkwkmJw
         hquq0xu46JyxPdbysp8bWgJjfcJhbJdMZPYLcITUw65oZ1CW0merxV+Co4STEsgp3F+n
         yN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wThJSgl7u12HsOhJJH4vP0msvsIjvxeqoW7n+Lne0HU=;
        b=Odr9mblxBLuPlzFpanhucqw5tkRlOlWQbg8reHqVr0MZc41xWsNSV5ssJ4799DYhRu
         rEnNuGMTw9sGjxDWIkHy4rINoLKF90vxwfXeLfEl53boyR+Dx3IAtmw0yoeQ43BeQnyB
         NaPXtnuiiMrGyBIAbiBubir/YL4jLnK9WpJwvNspdgDzqWfnfK0TLyCFPwBVdmqhjQUo
         lvw/t1eTbYUyChTBdVLd4jR699S1j5/pkZFKe3w/Zt9s44KeROL/NBnuInBE45fn4JgQ
         AXcHcGFhQ9k8DBvQP36h4V2Vk8rCH+RZLIhexSbaFJ9oKOYRzP5U5U/dttaXMZblmefw
         T2+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532r2IvrwdkAVIpN4LEvU4Flvn0uW/TpjXfXLXeivp+DN0SyWRv3
	O6xmY4Z8SgMjk0quojupVMY=
X-Google-Smtp-Source: ABdhPJx5ObCqfR/y9i7RCeGiMezUamgLdzzGsudptZTz7o/ZeixVOkEWEfY5XYIxCdrqsP6Gh2TG7w==
X-Received: by 2002:ac8:408f:: with SMTP id p15mr18270088qtl.156.1597763810733;
        Tue, 18 Aug 2020 08:16:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4aa2:: with SMTP id i2ls5112934qvx.10.gmail; Tue, 18 Aug
 2020 08:16:50 -0700 (PDT)
X-Received: by 2002:a0c:d44e:: with SMTP id r14mr19680292qvh.105.1597763809764;
        Tue, 18 Aug 2020 08:16:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763809; cv=none;
        d=google.com; s=arc-20160816;
        b=DHNmrUmMYl+Ne5ohAV7g34p5k7w6nXmkiPBM4BOHH5X1ljPUuoMf/nopIBEJHmuZCf
         LglLNbyTHsQPZcB8AGwyW4tRY5VLz97Si9XeTVN9sL2FPdhQXiTOLYFDDHMZuSw8NqXe
         pm1SxfLZ0IpxBtsbq8wmlV/kcYF2UJ2Xat0tKisaVvjjQMQUSPAUjS6TisCYV10UmmAV
         DEt0VcuPympPfpSl3TclaMKFvrbjv8bJupzR/fUV0kS3pKiwzK/hiIU0Dp6DMKDDWAhA
         qe70VKCGnBG/iVhUGCPkG66YuRIN+OqV51pjhcLG51MtITkg1j5WDYXvCqceDPM1AwIg
         Yr/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=M4k+eMMkx5PwjPkDHOvAw9D58TIDiuZ9dr103gAJs10=;
        b=AkskSMh0RfHo/XfWZNaRnRmJZSMSP43Qp49Qlf7J8anClhWiMoONgwo5ShhYMuw3Hz
         OEMsrKDp9rS4/OMlaRnG3Id6Gaccf+LzthD4VIFh2KGFCKZjlXYIlKP8hcCqBEgFqBIY
         BP1c7ZuwpOk8bsYmFjeyKWMWjJpsS2E8hxiTfpc9qgy76XEbmofBzAKabnTWae9jZ5y1
         a92Eg1A+12cI5z08bxBcY01Echd2XW1BtgkdrQImGSp1pDnZQzUe9l4yvykf2i6BL6CW
         I9y0VSi1FkbnxGRih6tdy7EE/bovxZLCAT08a0B9Zy58j6cJ4mIfA6/lMqBRn77pvCDK
         wqmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="mZ4Dw/78";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si1190762qtn.0.2020.08.18.08.16.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 140422054F;
	Tue, 18 Aug 2020 15:16:37 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Daniel Axtens <dja@axtens.net>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org,
	linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-mm@kvack.org,
	linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org,
	linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org,
	sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp,
	x86@kernel.org
Subject: [PATCH v3 00/17] memblock: seasonal cleaning^w cleanup
Date: Tue, 18 Aug 2020 18:16:17 +0300
Message-Id: <20200818151634.14343-1-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="mZ4Dw/78";       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Mike Rapoport <rppt@linux.ibm.com>

Hi,

These patches simplify several uses of memblock iterators and hide some of
the memblock implementation details from the rest of the system.

The patches are on top of v5.9-rc1

v3 changes:
* rebase on v5.9-rc1, as the result this required some non-trivial changes
  in patches 10 and 16. I didn't add Baoquan's Reviewed-by to theses
  patches, but I keept Thomas and Miguel
* Add Acked-by from Thomas and Miguel as there were changes in MIPS and
  only trivial changes in .clang-format
* Added Reviewed-by from Baoquan except for the patches 10 and 16
* Fixed misc build errors and warnings reported by kbuild bot
* Updated PowerPC KVM reservation size (patch 2), as per Daniel's comment

v2 changes:
* replace for_each_memblock() with two versions, one for memblock.memory
  and another one for memblock.reserved
* fix overzealous cleanup of powerpc fadamp: keep the traversal over the
  memblocks, but use better suited iterators
* don't remove traversal over memblock.reserved in x86 numa cleanup but
  replace for_each_memblock() with new for_each_reserved_mem_region()
* simplify ramdisk and crash kernel allocations on x86
* drop more redundant and unused code: __next_reserved_mem_region() and
  memblock_mem_size()
* add description of numa initialization fix on arm64 (thanks Jonathan)
* add Acked and Reviewed tags

Mike Rapoport (17):
  KVM: PPC: Book3S HV: simplify kvm_cma_reserve()
  dma-contiguous: simplify cma_early_percent_memory()
  arm, xtensa: simplify initialization of high memory pages
  arm64: numa: simplify dummy_numa_init()
  h8300, nds32, openrisc: simplify detection of memory extents
  riscv: drop unneeded node initialization
  mircoblaze: drop unneeded NUMA and sparsemem initializations
  memblock: make for_each_memblock_type() iterator private
  memblock: make memblock_debug and related functionality private
  memblock: reduce number of parameters in for_each_mem_range()
  arch, mm: replace for_each_memblock() with for_each_mem_pfn_range()
  arch, drivers: replace for_each_membock() with for_each_mem_range()
  x86/setup: simplify initrd relocation and reservation
  x86/setup: simplify reserve_crashkernel()
  memblock: remove unused memblock_mem_size()
  memblock: implement for_each_reserved_mem_region() using
    __next_mem_region()
  memblock: use separate iterators for memory and reserved regions

 .clang-format                            |  5 +-
 arch/arm/kernel/setup.c                  | 18 +++--
 arch/arm/mm/init.c                       | 59 +++------------
 arch/arm/mm/mmu.c                        | 39 ++++------
 arch/arm/mm/pmsa-v7.c                    | 23 +++---
 arch/arm/mm/pmsa-v8.c                    | 17 ++---
 arch/arm/xen/mm.c                        |  7 +-
 arch/arm64/kernel/machine_kexec_file.c   |  6 +-
 arch/arm64/kernel/setup.c                |  4 +-
 arch/arm64/mm/init.c                     | 11 +--
 arch/arm64/mm/kasan_init.c               | 10 +--
 arch/arm64/mm/mmu.c                      | 11 +--
 arch/arm64/mm/numa.c                     | 15 ++--
 arch/c6x/kernel/setup.c                  |  9 ++-
 arch/h8300/kernel/setup.c                |  8 +-
 arch/microblaze/mm/init.c                | 21 ++----
 arch/mips/cavium-octeon/dma-octeon.c     | 12 +--
 arch/mips/kernel/setup.c                 | 31 ++++----
 arch/mips/netlogic/xlp/setup.c           |  2 +-
 arch/nds32/kernel/setup.c                |  8 +-
 arch/openrisc/kernel/setup.c             |  9 +--
 arch/openrisc/mm/init.c                  |  8 +-
 arch/powerpc/kernel/fadump.c             | 57 +++++++-------
 arch/powerpc/kexec/file_load_64.c        | 16 ++--
 arch/powerpc/kvm/book3s_hv_builtin.c     | 12 +--
 arch/powerpc/mm/book3s64/hash_utils.c    | 16 ++--
 arch/powerpc/mm/book3s64/radix_pgtable.c | 10 +--
 arch/powerpc/mm/kasan/kasan_init_32.c    |  8 +-
 arch/powerpc/mm/mem.c                    | 33 ++++----
 arch/powerpc/mm/numa.c                   |  7 +-
 arch/powerpc/mm/pgtable_32.c             |  8 +-
 arch/riscv/mm/init.c                     | 36 +++------
 arch/riscv/mm/kasan_init.c               | 10 +--
 arch/s390/kernel/setup.c                 | 27 ++++---
 arch/s390/mm/page-states.c               |  6 +-
 arch/s390/mm/vmem.c                      |  7 +-
 arch/sh/mm/init.c                        |  9 +--
 arch/sparc/mm/init_64.c                  | 12 +--
 arch/x86/kernel/setup.c                  | 56 +++++---------
 arch/x86/mm/numa.c                       |  2 +-
 arch/xtensa/mm/init.c                    | 55 +++-----------
 drivers/bus/mvebu-mbus.c                 | 12 +--
 drivers/irqchip/irq-gic-v3-its.c         |  2 +-
 include/linux/memblock.h                 | 88 +++++++++++++---------
 kernel/dma/contiguous.c                  | 11 +--
 mm/memblock.c                            | 95 ++++++++++--------------
 mm/page_alloc.c                          | 11 ++-
 mm/sparse.c                              | 10 +--
 48 files changed, 387 insertions(+), 562 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-1-rppt%40kernel.org.
