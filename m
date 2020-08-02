Return-Path: <clang-built-linux+bncBAABBDGXTP4QKGQEAMSRYAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF95235884
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:36:29 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id z10sf1133163qvm.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:36:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386188; cv=pass;
        d=google.com; s=arc-20160816;
        b=R3nTuf12Fpn1x8ta6nANj4a09oTinD/VxvBPhpuZVLS1yYoFzaUC61xYHEeIYUDB+2
         EtiS0sJBSm1m1PxemOFT6Nf9g7RY5eC8q5F/6YvbAi/8Cjd7QMGCBYwliRo9IvgSHmjN
         NHX1Fq8dT8DYoNnaehxQ98V9l8n3HjjCd98gPAD2B8eHb93Sr1g7fQryfQ+vmMfpyLBr
         OPxYCXcPUSsgXs97cTTwLuEhl+5HqSFCk1+3A4b3G2WP8XQNFZo0OoJ23V+78AoKhFpN
         W4DYFJjl6cUF1kMJqn6NVbldRW0/B3EfUjznTajNQ/aFOpEhV6UEPwkUjs447wIjPLFh
         RAVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j3RpqFiFygasaDpeHRRbNiL5Gvk7MClMF7WE08yFvB0=;
        b=wePA9Rbn18yG6Ba0QQWBSEzJHtElWJm4lkItJEwO4g3hp9NNWMAcFKyy4vJlULVCN+
         ftZlue9Q8EMdnFCHsDMl5kh0OxynhWqeSU3BISW7N1gZjhIDwtorxRGRoIA0XoKEbNv6
         pR2xWLipp0cW2ymQ6tHrv/mCZHu67jK8/bJovMtEywbCs8rnjoL2L943styCgsqs83pt
         P7eMXIULtHdvkEFYxLLVUg/8Jl4DlvDIBeHXWuLgnZTy2F9/+Q/Mk9IMdAaGHuExX4z9
         Lt996vg9Hx8bK1+5k8v+IrMICAwi7kiR1+U2uxj2MSpY6R7Rt135ZQ3uthWSojAiDS5a
         na9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LCVbBqUy;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j3RpqFiFygasaDpeHRRbNiL5Gvk7MClMF7WE08yFvB0=;
        b=GVYjUqlhK3yUJIEdrrlXUYqQjaHneaO5nTmKdQW+LYJONbUMZcdkdJje4iRmP7hTUb
         EC+0ebO/yeiBbkYXt5cpAfI6LOjpZUdqr199zzSWY7lwqB6ywFlG90oNe/LzEVRRnI/2
         i6WJGxd7j/F6NF6mASUzuQ7YO7SkFRR18dwWw7qnjiLqUtqFHWfpH5J2Rot75gG4VfFC
         cIW03JDpkjspo+rOcvd98Yu0VFPI2fvmKc8xKFHcMMdl3jHGY2wXnIqhC1CMPG+xWgn3
         lAsR1nzkn2aQcood8XPZUfpqB8JWh+3EA+j4prnpwyIjLPxU1oOirLpHkEzinT74ErFy
         CPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j3RpqFiFygasaDpeHRRbNiL5Gvk7MClMF7WE08yFvB0=;
        b=Y2neB/QRtRSVsGba37B1/oyT4YgjBieBPE1xu96FS946JM4eAzlImBcoOiyBKAbR/B
         0QArvOlXLniNflhi9/XQWs8u/Sa0hJKctpPkU5VoZeagkWcUjNqMcBD0PW+zYgAr3cta
         ZYKiws7xHFH1oWvz07fCaMZVuvWfGlMO57O2J/Cx7GoJosv5M1LmNoi6sDfhbElVLa6n
         G95654kNgCxvJmDJfGLM0x4Jh6cj+OSAmb/zvZrZxHW1jKg+UxGlVZHTMfUNXtVgqD6s
         qTChPuoWuKuEvfPkE4LRxmD6XH+vFyADghyBte0bT3U3ocMQerB/z2yqrwvL+lhT0snk
         7czg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rn1DuibkYyEGo8oI2d0XTcu5/hw61FFI8hSILZsC79nbYslRt
	1v+9uWWKTzexplRmR/tcE5o=
X-Google-Smtp-Source: ABdhPJwMCYgKkaewSKEhTsOORf/mP5Vmpw0sktSI3bFtlK6u188KzVK1J4yiupZ4cGde5RH7JEe4tw==
X-Received: by 2002:a0c:ac4c:: with SMTP id m12mr13498848qvb.218.1596386188169;
        Sun, 02 Aug 2020 09:36:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7390:: with SMTP id t16ls3461545qtp.10.gmail; Sun, 02
 Aug 2020 09:36:27 -0700 (PDT)
X-Received: by 2002:ac8:6b84:: with SMTP id z4mr12793947qts.279.1596386187907;
        Sun, 02 Aug 2020 09:36:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386187; cv=none;
        d=google.com; s=arc-20160816;
        b=bymynzyNzSrBJM9B1QKPcZtiOEdQ7cYb7tPdf/sY8uxF+6XNk6Cfv8BJUumPm/ZBJX
         TBWNvMiVwqT2cx424yq+/tlMG1SJztkYCITb+KsoMxJp2IDvAFAov2Wy7zlMtx3UO+08
         e7kY0W/r7RznL7KUCMw4jR78p0/UyV9sJ0Wjg+wgCidTWSoLDCK0+FzesNRbZzXotqDx
         oaprzbldQ4JDbiwdGY96IzH9XRzDycbwbNooNxErrITRx756YSt30qrtqsiwGwf3PPkm
         OrSWRggpb0hf6M7H1oivnAAv39qAV1SaP3V26+7T1okSCD2PPukPfzOQ3ZdLPRKrEreV
         qmCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cTsMNGVz/6FnfILPoy4BCnh+qoVojN51Hm/njwANGhM=;
        b=rPTyUDZqJ3WymPpSK5r2r30LovnkyLqXcX2lOoSa47UqBi6zVs85hZZNLa0HUcY5ow
         dpunnd/nPYogekKfInx9R3FaySfpG6TyRBcIz32qY8uYQFn2e7OK58cWt9IOEKk4GDN6
         nmd9GZwK2v1CbyURjFfzqLRJy7IGiTvH5x7trSTAGjDrtAjAv6OjjNYMZi2SVPTJOoWj
         NkRyqpxW06pMuRL6eUlx0R4IVLDczWUDbTnVhGUaQ00NKmpKhQK+i5kZJHWTLs6J7h35
         dX/Ki25hLewhELMmTCmgiFmsTd2oOMVHFT0wZGC0s8SVS/lH6ReAnxHDVVuY8KpPmV6z
         2ZKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LCVbBqUy;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si867803qtn.0.2020.08.02.09.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:36:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8CB07208B3;
	Sun,  2 Aug 2020 16:36:16 +0000 (UTC)
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
Subject: [PATCH v2 01/17] KVM: PPC: Book3S HV: simplify kvm_cma_reserve()
Date: Sun,  2 Aug 2020 19:35:45 +0300
Message-Id: <20200802163601.8189-2-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LCVbBqUy;       spf=pass
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

The memory size calculation in kvm_cma_reserve() traverses memblock.memory
rather than simply call memblock_phys_mem_size(). The comment in that
function suggests that at some point there should have been call to
memblock_analyze() before memblock_phys_mem_size() could be used.
As of now, there is no memblock_analyze() at all and
memblock_phys_mem_size() can be used as soon as cold-plug memory is
registerd with memblock.

Replace loop over memblock.memory with a call to memblock_phys_mem_size().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/powerpc/kvm/book3s_hv_builtin.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_hv_builtin.c b/arch/powerpc/kvm/book3s_hv_builtin.c
index 7cd3cf3d366b..56ab0d28de2a 100644
--- a/arch/powerpc/kvm/book3s_hv_builtin.c
+++ b/arch/powerpc/kvm/book3s_hv_builtin.c
@@ -95,22 +95,15 @@ EXPORT_SYMBOL_GPL(kvm_free_hpt_cma);
 void __init kvm_cma_reserve(void)
 {
 	unsigned long align_size;
-	struct memblock_region *reg;
-	phys_addr_t selected_size = 0;
+	phys_addr_t selected_size;
 
 	/*
 	 * We need CMA reservation only when we are in HV mode
 	 */
 	if (!cpu_has_feature(CPU_FTR_HVMODE))
 		return;
-	/*
-	 * We cannot use memblock_phys_mem_size() here, because
-	 * memblock_analyze() has not been called yet.
-	 */
-	for_each_memblock(memory, reg)
-		selected_size += memblock_region_memory_end_pfn(reg) -
-				 memblock_region_memory_base_pfn(reg);
 
+	selected_size = PHYS_PFN(memblock_phys_mem_size());
 	selected_size = (selected_size * kvm_cma_resv_ratio / 100) << PAGE_SHIFT;
 	if (selected_size) {
 		pr_debug("%s: reserving %ld MiB for global area\n", __func__,
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-2-rppt%40kernel.org.
