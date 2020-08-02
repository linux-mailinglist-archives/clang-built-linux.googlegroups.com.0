Return-Path: <clang-built-linux+bncBAABBAGXTP4QKGQEO6Q7N2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A1923587C
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:36:18 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id h5sf24517687pgq.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:36:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386176; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsepdXNVgFUmtg4FFF6u8J6fq8vRVMP/9DOd+e5i6WwoQ5J6nMp7S26VbPPX9jfNG5
         tLa97wKrICG/0u3STG5XftkPKTeRRA+StqW+7FUaaB9iydVYElIcFMGqlelVtApZVZS2
         Tq12XxanX7RuQZdqDw8wblBk/37kdmTTU8LJnggPOZ34Fs7V80XatjHvssRo0j8tYM3C
         v8hHDVKxso8wNwTYQqlEx5sX+Gi6/dqCWOFajEXG3FRwlgq4MDuP01iMShCbJytg0DSG
         SkrR+2bvdSKhyfcM2y+xZcrGOM+tdj73ABr8+IH5vnx3pvlPPgxVbvslWvLqneHWSrsg
         LqVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=j0qjWyy4BhX67QIgBS/Zhc5PyKocatqRje2OiCCuUn4=;
        b=kLPhjDRF86ptdlQkIFHEV0WUk8joelwjzv4hy1KHwyndW8B2bY0LZerg3PfO1vpFRk
         Aj/z6V2C3FeLSaQkVpJV8neSuv8B7HjXjYmrup9FIonlmvzMCrRXJSV0u7EGlVwxv7NY
         SfveDcZuBqZwgyX17tV36uqiU3LRuCjOOY0g7vIQLo8ozELh0ggmD1aCL8dBsrA6Sln/
         h6Tj9mDk/0Qw/W9jOUjlPOumpdOY/PpyVZYByastg4hkwitW4SDSVISFs4VmsMZlzGna
         kqW0QGa3pENxMWMOk9QuFXX9lW2NojTjMfkIIvDJkYgaHv+/0SsDEUcxMWC8VG67mZOH
         x4aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LIo4s4fR;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j0qjWyy4BhX67QIgBS/Zhc5PyKocatqRje2OiCCuUn4=;
        b=BO4/j75vkxMg/WOGeuuxw0f0iaG3N68rd6QIQ6iPhmL61du2vjaWpmRm45WVTdCLPd
         E9ru4mDB7obfEXl+KQkfBecmKBcdcs1PxCpTUrxTv90UtD2/J5Dxtf81YmDEG07VA5Xw
         q1IhCNck1fFDcICI+q+cDE4lGVxDWDBtadz5q+viL0aG7P5w9ybhx+Axd8u9fwj2/AZW
         jLQnmRgMEEIsFUqF/FLeurcpGc8C+eHoZUaY2KMJ1A8DkaLVDzjV36xZoxCsIsfki2kl
         1gi9CC+/cIoMFIcx+EO+saGXcK7k/syJCyO+X5ERjsnlKxd7koIJiehZuf7rLURjJ4Jz
         TTaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j0qjWyy4BhX67QIgBS/Zhc5PyKocatqRje2OiCCuUn4=;
        b=oQ66dwdw/iA6m4j3hDpsBjSsTMALk5XuHwvHGKfnUpdQN8aJoN4PfTAsiB6qT/Fgk8
         EFyxHiEnjt9xFVHph+4LbyutLgxNYAy6pfnYZyAdr4lT8jYyeRuxGweZBa2WWq/mDp4W
         OaogW1Fanfg5mp9/QWOw7QfquttZj9SUp3rYWXsFzq6BSWp4Vlk5TSAZ1XkflxiHtA3f
         A03nhJuKsgqLsrKZ+WuFa0rPWs621HsARDq2p1EqURJeqAZ5bfwP/ifexdZI5Sqx7rpP
         9xRVL85nzfk6iA/oqZmZ+8xYJ3jRswd+NcCqJhqWodOjvBT3rr6JJrwTkc7x/aL95nSB
         c6GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vIa6/9ItzwLpj4F+EQMPHbHjgjBsQFUSQqKAFVvNRIZp5mRst
	s5dOTcx6wxzAa+MT2x7Ld3o=
X-Google-Smtp-Source: ABdhPJxkKmXz81xd/nW7+Anqjbm8Jc+Httwj4UbqX0prrh8MsxBLxx5M7Pl3LmFHYkZHN2iFrYritw==
X-Received: by 2002:a17:90a:3aa6:: with SMTP id b35mr4971316pjc.69.1596386176664;
        Sun, 02 Aug 2020 09:36:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls4460877pgo.9.gmail; Sun, 02 Aug
 2020 09:36:16 -0700 (PDT)
X-Received: by 2002:a63:504a:: with SMTP id q10mr1386013pgl.355.1596386176303;
        Sun, 02 Aug 2020 09:36:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386176; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUOCYU5ttt70sWpPxdXoJZISS+GySgHAKXzyy2tPsEgdEsv8NJpSQMRlwsRAsvww8a
         cEpzNnaRlQYqSz2ZovCAUMAHLj7etclzSGHv+VCltdnraM/kOJUamRTUj82p23w9UJUf
         OhB6LoRl63cFcqCgZOoFOulvK5vmFYzgVI+a4FPHrlrh/ptcQPgfpWQQFnaoesgmBNLI
         aFqeUZEF3xLMSaCwJVpA+sRBkddO70+ZMl0SdGBha0VNC1Nqr34nizPN5r5yLyud3pRT
         Uo8WjAQjU/4ow66S/5dXyAlKQi3bB4X9r1nnDQGAg73I4yCVhdwb+9J5rQF5PFGZecZy
         aULw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1rMlp2SuXg8dvk653C42OiZiY3troU2YpRpyHDVF6iU=;
        b=erWZ/Og7UzGNEEGnCn1wFJhGlNN/8+O2IYfhqALVRnxKXjIwJMIZjOvw2IRMaRYE9m
         wnu4JZdhY+pxo2K2+AV7C6TNRBjWTgtQxtVAjrHR/Qwpsns201I95D9Tg4+e5mSxL8x+
         zi3rPqlE+wM3Z54gB/f1IKU8d7FL0rRJDYvSoaaIpS6WRp1vkYyueyHO0H8J0dkC1ViZ
         gqz+IGq2D9r5HYyNHsvBPowWb+QFXotMdMPxbAPDs6eA4b97hl/nOoYKFAlycFpCtkxz
         XCkwAW26yY/c7UC8t5YkA7AdS2+FDpaghExDu1oFv25b3OAAAvDvBlylj4dyomDgVd6S
         Wcvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LIo4s4fR;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si128993pgx.2.2020.08.02.09.36.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:36:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A84AE20738;
	Sun,  2 Aug 2020 16:36:05 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
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
Subject: [PATCH v2 00/17] memblock: seasonal cleaning^w cleanup
Date: Sun,  2 Aug 2020 19:35:44 +0300
Message-Id: <20200802163601.8189-1-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LIo4s4fR;       spf=pass
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

The patches are on top of v5.8-rc7 + cherry-pick of "mm/sparse: cleanup the
code surrounding memory_present()" [1] from mmotm tree.

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

[1] http://lkml.kernel.org/r/20200712083130.22919-1-rppt@kernel.org 

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
  memblock: implement for_each_reserved_mem_region() using __next_mem_region()
  memblock: use separate iterators for memory and reserved regions

 .clang-format                            |  4 +-
 arch/arm/kernel/setup.c                  | 18 +++--
 arch/arm/mm/init.c                       | 59 ++++------------
 arch/arm/mm/mmu.c                        | 39 ++++-------
 arch/arm/mm/pmsa-v7.c                    | 20 +++---
 arch/arm/mm/pmsa-v8.c                    | 17 +++--
 arch/arm/xen/mm.c                        |  7 +-
 arch/arm64/kernel/machine_kexec_file.c   |  6 +-
 arch/arm64/kernel/setup.c                |  4 +-
 arch/arm64/mm/init.c                     | 11 ++-
 arch/arm64/mm/kasan_init.c               | 10 +--
 arch/arm64/mm/mmu.c                      | 11 +--
 arch/arm64/mm/numa.c                     | 15 ++---
 arch/c6x/kernel/setup.c                  |  9 +--
 arch/h8300/kernel/setup.c                |  8 +--
 arch/microblaze/mm/init.c                | 24 ++-----
 arch/mips/cavium-octeon/dma-octeon.c     | 12 ++--
 arch/mips/kernel/setup.c                 | 31 +++++----
 arch/mips/netlogic/xlp/setup.c           |  2 +-
 arch/nds32/kernel/setup.c                |  8 +--
 arch/openrisc/kernel/setup.c             |  9 +--
 arch/openrisc/mm/init.c                  |  8 ++-
 arch/powerpc/kernel/fadump.c             | 57 ++++++++--------
 arch/powerpc/kvm/book3s_hv_builtin.c     | 11 +--
 arch/powerpc/mm/book3s64/hash_utils.c    | 16 ++---
 arch/powerpc/mm/book3s64/radix_pgtable.c | 11 ++-
 arch/powerpc/mm/kasan/kasan_init_32.c    |  8 +--
 arch/powerpc/mm/mem.c                    | 33 +++++----
 arch/powerpc/mm/numa.c                   |  7 +-
 arch/powerpc/mm/pgtable_32.c             |  8 +--
 arch/riscv/mm/init.c                     | 34 +++-------
 arch/riscv/mm/kasan_init.c               | 10 +--
 arch/s390/kernel/crash_dump.c            |  8 +--
 arch/s390/kernel/setup.c                 | 31 +++++----
 arch/s390/mm/page-states.c               |  6 +-
 arch/s390/mm/vmem.c                      | 16 +++--
 arch/sh/mm/init.c                        |  9 +--
 arch/sparc/mm/init_64.c                  | 12 ++--
 arch/x86/kernel/setup.c                  | 56 +++++-----------
 arch/x86/mm/numa.c                       |  2 +-
 arch/xtensa/mm/init.c                    | 55 +++------------
 drivers/bus/mvebu-mbus.c                 | 12 ++--
 drivers/irqchip/irq-gic-v3-its.c         |  2 +-
 drivers/s390/char/zcore.c                |  9 +--
 include/linux/memblock.h                 | 65 +++++++++---------
 kernel/dma/contiguous.c                  | 11 +--
 mm/memblock.c                            | 85 ++++++++----------------
 mm/page_alloc.c                          | 11 ++-
 mm/sparse.c                              | 10 ++-
 49 files changed, 366 insertions(+), 561 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-1-rppt%40kernel.org.
