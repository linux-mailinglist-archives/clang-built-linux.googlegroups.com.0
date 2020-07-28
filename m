Return-Path: <clang-built-linux+bncBAABBOHI734AKGQE47XLVQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A6923017E
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:14:33 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id t18sf11189592plo.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:14:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913272; cv=pass;
        d=google.com; s=arc-20160816;
        b=JvtmVo/cL/X1nVhuNImqWbUub86lGaM1ESGCl41FAHmkj0LjkTIdrmDdhMvUppf2Xd
         Btu3SGjnN7DWbfDNhrKp3DGr3oJksU+ZF/wbjWds/Czv1vOL8mfs9m6HlhLTKRj+kQt7
         78c+UNMNfqLlYJbwD5Bb2LJaJehmOVOw2+iThKeE4XK7ZHc3fbcE8sJKspStdjsVLDEp
         dBUbqb8X8HXLOGF9HDLFicUnXhlbHXnPuVjcoVkyf6D8nFv+kiYrdlaMorSDs0FGPnZd
         nLpt7xPkkEkl2PLzupXtDHhrTn0tyAl5cMrUmHgkydOQDV42yPvgN/tmjrHaCTxrHqJZ
         /vtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iG0k9pA16A7k4zsA29fLGQxYBcSLteDLzP6IAVx4WMc=;
        b=pl2k3Kn4Dv8WOlUH9vt0AwLjlcVzjVzCKbP/H4TD/+5bODlE7omKugQcYX2cZV2hab
         P8ThNxAgQgNUaQCJAGupWhGixVv37WrS6HNyzvUnFaXp/OEloaV2dkOMYAvisKlA0i2g
         8WQkvRgo5y9CM+5qksEShvLBUrT37uhlfasP/3zLFl2+QikFDfquAWluWD/bByPMnir0
         FNR/opLm16Z9sbA0IYk6KXEQpwZKBSxxhqNbagNAHgBaRglASVY/q37vbccGPf+mtkNT
         y40U9a8IalMCm/KUfliaWTmqT1yHxWiZPFCpeSVodsWG6sR43cjqK1RgPX0zefPRY2rg
         mxcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M+RZG9Zn;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iG0k9pA16A7k4zsA29fLGQxYBcSLteDLzP6IAVx4WMc=;
        b=EpMoxyvS99KRymJsRsQiEF09z1v5N9NnFn3qXMhP0l+TD/JAYSSwEm6OOUeIM9agYc
         +ADODnwaGZBSqEHh4A1sKXZ1IbKBHpzZ28Ni/4nA/IAh8dg5sT9t7GNhqEiUoBV/U6O5
         eHpfE65XcNnWMQc+dqJm/G7qN9XJRNtCa8ZKtQmJP+vrR2AmB6hCRY0sFtgnEoRAZOMA
         BXxO355tBBTnj0KoeyQ0YuyP5colDfKXHIY9mOSgtx3UOSHxPoPs5o1gHXat2DIuDrBZ
         FQBkS+gcFc8kvnVN3dR8KUQbKkvx8cx8GM3xuhW53fFU727iJouS7u/5ZCcuI545uKDx
         euiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iG0k9pA16A7k4zsA29fLGQxYBcSLteDLzP6IAVx4WMc=;
        b=fC2vi0bKK2pXUGTDliBGoDhi2x30tK4bvnJ1Dxfmz0Y+pDIxofavkMyw1pDwUNrT+u
         bejN8GNXM4/q9lSR1nakXWsVxIG0DfrZnvIvRSe4XzuYdknFdeueQ3bjY9O+6bH52H6h
         /1LsR1auaNCIZcGjhFl2NhYvjo7RDr1aTXSit0UrCwbhmZlPwC1/BPlF29FvBMjkEeGR
         zR3BGPouyls+IoLKWdOC4i8a8bFlxMkwY4s/NRQ/hVkRM9uqmPpZwn2TfajA3IX+ioyk
         vc3TbotI9jPvBXYowfBur+r8a/Xqi6kZ1syGHgQv9NZ/7h1rJccgQhDdayKfZWxPCbDA
         8Zgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CgpQbFam36R1Lc6yWJPCAJfpbdIYal1CVUU6xb45KHq8Ds9v5
	8QV4omepA5f/+fbGEIKqX9U=
X-Google-Smtp-Source: ABdhPJyORhfFgpiMbmZGfrzs9cwcUND7M3F/giZ3ZA5Y20Iw+MqdtePcPMvuNPfv5heTDP7wD9dUww==
X-Received: by 2002:a62:6c2:: with SMTP id 185mr8510261pfg.30.1595913272617;
        Mon, 27 Jul 2020 22:14:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls7334855pls.5.gmail; Mon, 27
 Jul 2020 22:14:32 -0700 (PDT)
X-Received: by 2002:a17:90b:112:: with SMTP id p18mr2729022pjz.92.1595913272231;
        Mon, 27 Jul 2020 22:14:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913272; cv=none;
        d=google.com; s=arc-20160816;
        b=LRzrO3sS8lS4YOoUWVoZVytIjX5p70tpmGQ7nfbIZRTPEkxdQmDC5flbjRsrtf3tBD
         GVxdBCFVjykJG1B6FVfS77qq66YD2Qe4fbPJt0JP1pVPL8m16gsB3dTLQA0dnQVyHV6q
         /KZw+minNSq2jpn2UEIMA2NE6tcuBcsiT/fXGYoQ5FzCa54jaMMqTMt6ZkcK9VcPpZyO
         SbhtqKtoNgt7BGyP/XjmrqVoSt4VI/xpmxCZiWMqwRsiIiveQyZhc9JBMSTz71pbiXFX
         LFZVt1/KmgsqhTZncXHzFFXoEp6+uHgOSKTfaiwUMgNOBDlE8yMzBhyRsEN9YKF9vGXr
         cGOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7APXP5ZKgXv1QuX9EaUUa1aUiPfuHP6Ju+WLnf40ssg=;
        b=FqEr5mkAwVyWgUhHY9BrKxwgOOaWoiyELItrm6jW3qKVCmcyxIOhQ3WDbLcqhNhpSp
         L1+ZH5Nch7lszQCPJs6QFbYC6ZF/BSGVkrOT8ts/NZGlnFjvmLItLp7ZG9Vzmdklpyck
         kznZAKZ7G8k24gMCCmMvbNQJ+GSdlL5l8mcSR2a4xE1R6ZDQTCipqg4woOGGrEI5StdZ
         BmZxrz1E81c9T6b7nunPgOGJjrSdqIMCH3FOp1My7CnZKaFnjOrguOPY8Ca2tCG4Dswt
         q1G4AZNNDX677GnGfm0SBkDVbS5wO+9dUzXEeXyKiPVWHSFDEYH9suZwXce/qRar2YmR
         WUlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M+RZG9Zn;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q13si870954pfc.6.2020.07.27.22.14.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A319622B45;
	Tue, 28 Jul 2020 05:14:22 +0000 (UTC)
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
Subject: [PATCH 14/15] x86/numa: remove redundant iteration over memblock.reserved
Date: Tue, 28 Jul 2020 08:11:52 +0300
Message-Id: <20200728051153.1590-15-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=M+RZG9Zn;       spf=pass
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

numa_clear_kernel_node_hotplug() function first traverses numa_meminfo
regions to set node ID in memblock.reserved and than traverses
memblock.reserved to update reserved_nodemask to include node IDs that were
set in the first loop.

Remove redundant traversal over memblock.reserved and update
reserved_nodemask while iterating over numa_meminfo.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/x86/mm/numa.c | 26 ++++++++++----------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index 8ee952038c80..4078abd33938 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -498,31 +498,25 @@ static void __init numa_clear_kernel_node_hotplug(void)
 	 * and use those ranges to set the nid in memblock.reserved.
 	 * This will split up the memblock regions along node
 	 * boundaries and will set the node IDs as well.
+	 *
+	 * The nid will also be set in reserved_nodemask which is later
+	 * used to clear MEMBLOCK_HOTPLUG flag.
+	 *
+	 * [ Note, when booting with mem=nn[kMG] or in a kdump kernel,
+	 *   numa_meminfo might not include all memblock.reserved
+	 *   memory ranges, because quirks such as trim_snb_memory()
+	 *   reserve specific pages for Sandy Bridge graphics.
+	 *   These ranges will remain with nid == MAX_NUMNODES. ]
 	 */
 	for (i = 0; i < numa_meminfo.nr_blks; i++) {
 		struct numa_memblk *mb = numa_meminfo.blk + i;
 		int ret;
 
 		ret = memblock_set_node(mb->start, mb->end - mb->start, &memblock.reserved, mb->nid);
+		node_set(mb->nid, reserved_nodemask);
 		WARN_ON_ONCE(ret);
 	}
 
-	/*
-	 * Now go over all reserved memblock regions, to construct a
-	 * node mask of all kernel reserved memory areas.
-	 *
-	 * [ Note, when booting with mem=nn[kMG] or in a kdump kernel,
-	 *   numa_meminfo might not include all memblock.reserved
-	 *   memory ranges, because quirks such as trim_snb_memory()
-	 *   reserve specific pages for Sandy Bridge graphics. ]
-	 */
-	for_each_memblock(reserved, mb_region) {
-		int nid = memblock_get_region_node(mb_region);
-
-		if (nid != MAX_NUMNODES)
-			node_set(nid, reserved_nodemask);
-	}
-
 	/*
 	 * Finally, clear the MEMBLOCK_HOTPLUG flag for all memory
 	 * belonging to the reserved node mask.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-15-rppt%40kernel.org.
