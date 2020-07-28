Return-Path: <clang-built-linux+bncBAABBL7H734AKGQETAQT3LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A8223011F
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:12:16 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id z10sf3325317oto.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913135; cv=pass;
        d=google.com; s=arc-20160816;
        b=nRaJyUI6ebPA7CyQQTVEyyEL3nZHN1msOHzRcFzuIHmiodX0EoA/EuE8kxMap3fZhy
         s0J3os0+snHbjfqSI8Sq62H4E9cc1TIqfbBHs1QAUACN4Al3S0UiRRIN4JJ9cFZyNxz3
         BVHS8u1gqtn+/ZREfxEgEoKYB5O6Ddk4/v1zT5vIUQvlcwF6oG7eOW0/RrLYnTeWCYlO
         GOqMApO2LCavm9blkjZXc87ZsLITcyu4700mTQC4r8RjiB1mp8aqG4WP8aIsrll5GTNg
         HkIYrCG4sW8/LWGvpDOZ965L1vLxCYPhLU8XIVaytTj2+slewq0/Lp1Ms+oU+3OTjmR2
         noww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XJI1R94GSxSHyPARz6mPp+TqWuSmNT0o5mjL8ivKl98=;
        b=PbFXke8zxtMRDpcJ21bODOglC/W7vKveXtTZ5oaLV+BBwM0Nso0noAFbPxXJ3Irbxb
         YXgm5HMO3ISPWY2tnSCb3XCT2xmINQ6sWbxtT972rm02sjh9pwmk2bzqTJTUf9cqglsi
         bKxW6coOMF6xRdKvXSLL/befZMsXXlBJnYiehjgh/3th4SqIoHDZ0GmFO7mjNMbWdG4+
         EF9QdvAyO824f2N6nToLWFcqGKHPrG9H5L1dEWYEpY4hlG7XOBgSGO6xRCS+Vsu3HEAK
         lvKzQjCX9CzqZnZO65fO1twtvDZFTCmLAdIsGfNocoZBWeCKJrIrH/gauU+DVsxG0AW7
         mmXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="zUj8Ky/I";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XJI1R94GSxSHyPARz6mPp+TqWuSmNT0o5mjL8ivKl98=;
        b=RkRnpnZ0/MqM/R7EilNgzGhVlpRnuEioN2lsj+ezyd1wJGKbVyXZZDWqZS/M3UJ0XO
         dqJ+B+y1SXZb5+W8efW9bQnc8TjDbqPQ38+clKhkra4BmdwSkk1QtOt/uXmBZbBZHCcS
         FVzuwF7XS02c3hp0HItja9KbIAjYMAclE7rbSRKdfnELfuASyTaYL+o5EhtieOZtYxeE
         NLOxA9E7OQXj+WtUfUzYnItUJgoCGGsaEOi3zTsPAtvrU8HVoP9JIWgba7RQLerrRmoR
         +Cjgu6ThnVZtUWSFUDD1OJy3TSneHGCWmCp6Ylq3QT4DcLfMR0NJTA5X4GvwSg1nI8h3
         4jzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XJI1R94GSxSHyPARz6mPp+TqWuSmNT0o5mjL8ivKl98=;
        b=Of++cNnC0dQxwZ9w00isoE3GD4O9eqyzIC7Mtwu5sar3uPVdA0k8Ajq3fKBTZnSuxt
         JCTwwnzZAe9IF5R0jF5ZCJN+Vcb0dMZ0TdGPNetg1sRqsHdBisQvvwK4zJpoXKzia57a
         2RW7W3o1+hfoIRiHhipgMlV8qBp0TnUoQUjrmCElS2Mt5Ro2PeNJAAi8iZ8FCuaDcDef
         HzxjnqR2YN0EF2LKMGrQd71hocj/CMZTzS+FY6/PlyQxrW3T6v9I7NZ8MRjoIC+cZ/Ek
         /1OvCuvSvFXkcF+DB2t9+ae3jk6LUzxm7O3Kl5xtWrP/fqouh3d75ANvKiruip8d7eLu
         8GcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NF7sKPQ8ZXSrBv50guyDyN5MprFUmPyNJeZG53bIHlZ9KGC3U
	HcMRY4UR0WJGBN/rDl79g2g=
X-Google-Smtp-Source: ABdhPJzaRKsTWCLtK/aHOFADWAvjF9NKfhz+GsgVrk17TL0Yp81Q35BLdoOytfPDqel5+HBaPyK6Rw==
X-Received: by 2002:aca:b2d7:: with SMTP id b206mr2048322oif.51.1595913135125;
        Mon, 27 Jul 2020 22:12:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:18c5:: with SMTP id v5ls3795422ote.10.gmail; Mon,
 27 Jul 2020 22:12:14 -0700 (PDT)
X-Received: by 2002:a9d:6484:: with SMTP id g4mr24289399otl.103.1595913134809;
        Mon, 27 Jul 2020 22:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913134; cv=none;
        d=google.com; s=arc-20160816;
        b=ckfX4qUHNUs+2IKanKtu43LCppUzuKTuiHXB0PsB2FWQ440FeEW0fXucjUpWyEjPK/
         2N7mxpnuePlnUSc6ORKfoYOq/b11/YjGWzhFKBJ8GcVOBRg+QCZfy1Qnlh62D30yPpvn
         2WXf8DMYujFZka2QEBdQAys00LjP1M8kPbLriJlKffa+ObUeXkG9VBlxkbZKvCxNC85+
         OC3B91ZCfNeyR3TyyXeVe9ucxIKkuffmPFqks4WUafBSSbHsCfHpbIESbx8YAkQO2s/v
         6BthiWgwVo5Ojf4WObk4H3pfYWtyGhTlCy07NO+uzsOOnsTrO6tAn1zNdxo7rkyOuYVK
         RLAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9OoRHBWttwNZk2YN4aAFFJZn6IGYOKu8SngYHikVNmY=;
        b=VBRuu+n0y3BiMlpBzgG/hv9TlcykmLZDwhtjqubYXnLXj4TV9SV6ITcv1vXJF9NEu0
         JNGtjZn10rlqKj6WAYL/4dMc/8DMTUGU8NK69Pby8uoR9uoCkFO75ab7EbR02Zfw2abI
         wzNgfG/yniMK5tFxuDg/2DDFTIndAqVLDw0y9yhPEO2EB6SnV0IjnOBdDxIBVbaya6iJ
         lnKwWM4uTFkRRtI0Z3BW6sIgKCJQ5EC852DvXFtPbUJC0o6HJT3MBncDCljsPbFy2q1F
         yZX0XDOmYYOYfiYlCYjulIhZSMZmyL02/9DOOJQis198tDjD4hxe9Hua/HBP73JY9GY3
         zhzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="zUj8Ky/I";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x2si653751oto.3.2020.07.27.22.12.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 799682070A;
	Tue, 28 Jul 2020 05:12:04 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
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
Subject: [PATCH 00/15] memblock: seasonal cleaning^w cleanup
Date: Tue, 28 Jul 2020 08:11:38 +0300
Message-Id: <20200728051153.1590-1-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="zUj8Ky/I";       spf=pass
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

[1] http://lkml.kernel.org/r/20200712083130.22919-1-rppt@kernel.org 

Mike Rapoport (15):
  KVM: PPC: Book3S HV: simplify kvm_cma_reserve()
  dma-contiguous: simplify cma_early_percent_memory()
  arm, xtensa: simplify initialization of high memory pages
  arm64: numa: simplify dummy_numa_init()
  h8300, nds32, openrisc: simplify detection of memory extents
  powerpc: fadamp: simplify fadump_reserve_crash_area()
  riscv: drop unneeded node initialization
  mircoblaze: drop unneeded NUMA and sparsemem initializations
  memblock: make for_each_memblock_type() iterator private
  memblock: make memblock_debug and related functionality private
  memblock: reduce number of parameters in for_each_mem_range()
  arch, mm: replace for_each_memblock() with for_each_mem_pfn_range()
  arch, drivers: replace for_each_membock() with for_each_mem_range()
  x86/numa: remove redundant iteration over memblock.reserved
  memblock: remove 'type' parameter from for_each_memblock()

 .clang-format                            |  1 +
 arch/arm/kernel/setup.c                  | 18 +++++---
 arch/arm/mm/init.c                       | 59 +++++-------------------
 arch/arm/mm/mmu.c                        | 39 ++++++----------
 arch/arm/mm/pmsa-v7.c                    | 20 ++++----
 arch/arm/mm/pmsa-v8.c                    | 17 ++++---
 arch/arm/xen/mm.c                        |  7 +--
 arch/arm64/kernel/machine_kexec_file.c   |  6 +--
 arch/arm64/kernel/setup.c                |  2 +-
 arch/arm64/mm/init.c                     | 11 ++---
 arch/arm64/mm/kasan_init.c               |  8 ++--
 arch/arm64/mm/mmu.c                      | 11 ++---
 arch/arm64/mm/numa.c                     | 15 +++---
 arch/c6x/kernel/setup.c                  |  9 ++--
 arch/h8300/kernel/setup.c                |  8 ++--
 arch/microblaze/mm/init.c                | 24 ++--------
 arch/mips/cavium-octeon/dma-octeon.c     | 12 ++---
 arch/mips/kernel/setup.c                 | 31 ++++++-------
 arch/mips/netlogic/xlp/setup.c           |  2 +-
 arch/nds32/kernel/setup.c                |  8 +---
 arch/openrisc/kernel/setup.c             |  9 +---
 arch/openrisc/mm/init.c                  |  8 ++--
 arch/powerpc/kernel/fadump.c             | 58 ++++++++---------------
 arch/powerpc/kvm/book3s_hv_builtin.c     | 11 +----
 arch/powerpc/mm/book3s64/hash_utils.c    | 16 +++----
 arch/powerpc/mm/book3s64/radix_pgtable.c | 11 ++---
 arch/powerpc/mm/kasan/kasan_init_32.c    |  8 ++--
 arch/powerpc/mm/mem.c                    | 33 +++++++------
 arch/powerpc/mm/numa.c                   |  7 +--
 arch/powerpc/mm/pgtable_32.c             |  8 ++--
 arch/riscv/mm/init.c                     | 33 ++++---------
 arch/riscv/mm/kasan_init.c               | 10 ++--
 arch/s390/kernel/crash_dump.c            |  8 ++--
 arch/s390/kernel/setup.c                 | 31 ++++++++-----
 arch/s390/mm/page-states.c               |  6 +--
 arch/s390/mm/vmem.c                      | 16 ++++---
 arch/sh/mm/init.c                        |  9 ++--
 arch/sparc/mm/init_64.c                  | 12 ++---
 arch/x86/mm/numa.c                       | 26 ++++-------
 arch/xtensa/mm/init.c                    | 55 ++++------------------
 drivers/bus/mvebu-mbus.c                 | 12 ++---
 drivers/s390/char/zcore.c                |  9 ++--
 include/linux/memblock.h                 | 45 +++++++++---------
 kernel/dma/contiguous.c                  | 11 +----
 mm/memblock.c                            | 28 +++++++----
 mm/page_alloc.c                          | 11 ++---
 mm/sparse.c                              | 10 ++--
 47 files changed, 324 insertions(+), 485 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-1-rppt%40kernel.org.
