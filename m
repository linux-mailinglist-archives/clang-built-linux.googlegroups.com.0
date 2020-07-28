Return-Path: <clang-built-linux+bncBAABBOHH734AKGQEHGMNCOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 1352F230125
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:12:26 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id c13sf5956695uae.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:12:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913145; cv=pass;
        d=google.com; s=arc-20160816;
        b=t6c9oH3NUL5sg35xsF+A9tJYWjLadwa81IelhRzvXiMfuGe+hFGztwswmFpLSvj4tP
         HhjMyQ1r/ORyc8r/UY2S89QkiK1VDcGZkrkR+SGCfwcEnAP1+Bw2F3Bmt2SpFWKB6PIr
         32GUbNkeossVrYIvnDkWj5ONdediRqupLC5ykJp/5BkcBYx6EKMp40CSzOvbZDr2OvrU
         CFKn4yogz53hHBqrbxC8VyA30NhAy+aHMytOsgyh0T5eubAkgtxzXrqoSuWQ7Lov4O7x
         RpKY9zOrBZGvM/A8qcp9zET83cUyERwk2ZrtAw3sUF8n2+uofNAejxQ1G9Gh0FSDBoiG
         mj/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Gf/al/lDqWz/OM5bRnPz7HjOoTYDMejquQF5YD8JlLE=;
        b=Yq90XyydfEzbB6BSLDgk3FHLjSIQNdDAi95RDuazkYrcZNUhnoI1SRXC/gzDQwZe2s
         rqC5xZIorwp3G88qcexw24WEm5rDsgIdRXDhlaT4lllYRDIXTIirV4Jq5M7V4HkElPdz
         zvdOZjMrJpqJGj5+bSaw9lRDRV9/RWiozCXa3419QVGXOZoCr/uJ2XQnNgfiCd50EpP3
         nnAXFOSEmgie5CHxiJP/7IyxtsWuXoLoMHqZ+/xH8u+8INPuZzq2mi7pZVOz8euCSKwB
         VHwQpgsKq2mkqTyGq1M5cBkS4yypVkS/cfKHZufGUBQvlArbyVzc0zPClpu8PsBLdbZd
         49cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="D4u/UIbz";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gf/al/lDqWz/OM5bRnPz7HjOoTYDMejquQF5YD8JlLE=;
        b=L8PGer/+tQoirP1QrU3Iv/BrnqYNSBMRNtKmFQi/07p00MkVKEwo56zI1YLN4NdZAy
         GxQYptU8eWhOQuqQ17BCLLEzWLuNlT/xo4oVu3yxzm6282owN+Lu18W34WMg6mijrT4M
         qpyx6fBqG6UInepkpoukIB8hKTxTwm5bM1Wva0rpPYQGrssuCjoS+hKjyGtNEUIRtty1
         m+yofTfEAzxyl0JjbT1Fk7njBJU52D8rJUcpvs1VfGLaWsazw5xdco4zXbGwbSZqgvZq
         epB83LA2+3/IHH+c/X64E9tRSBSEz0iWhq0SK3Y2U8bPLJdVdhyyc3d/3g6M7Jzs1gwg
         bamA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gf/al/lDqWz/OM5bRnPz7HjOoTYDMejquQF5YD8JlLE=;
        b=FqHEWalswrba8UcG4AenGxfsAhewnuva1yHfyhHMS1Fa1BgiksG/BW/9qGnBpcc6mE
         tw47Aq438ARbV617SA/2MuZW39xGB73k3dwcVIWXM30g0iBZR0//pw5De6RAlleMVxYM
         2SRnJWllpfJTr5tOnUh7UHUkuR2+X6eivYnGy6qpavLEW15gKJCFeBBpAWXTxyqme0j4
         aaLXu6FeHWJqfTOUGWbHOitbVCCYyJ8V4va5vMz8ilUpH5elvkaF3Ki3NeoiNTZThvl9
         4sK7m5h4JdOm79zrvxOz/4CoYmyE/h1bIPO6NUc2Anh4eHwpHYh2Ok364/NXgiso++V2
         YSZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53028/DgQkosC1DBc0ua5OPqD75z0GDOLgZ8/zY4RCGGrk8jvPmF
	PG0stc3uz/JYXnfxgB2G+Mg=
X-Google-Smtp-Source: ABdhPJwNYTX4Q0BSsN0BlOEp22UPraa/qkInPQw6Ca8iF8uqUz4SayukmNoeddrsiJWpbOLi7NLzHQ==
X-Received: by 2002:a1f:f848:: with SMTP id w69mr19214128vkh.86.1595913144980;
        Mon, 27 Jul 2020 22:12:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:30de:: with SMTP id k30ls304902uab.5.gmail; Mon, 27 Jul
 2020 22:12:24 -0700 (PDT)
X-Received: by 2002:ab0:5e01:: with SMTP id z1mr19097783uag.118.1595913144631;
        Mon, 27 Jul 2020 22:12:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913144; cv=none;
        d=google.com; s=arc-20160816;
        b=qzE++HRKrpQoFf6xNwasl7geUy6+91Amr38dsv5xoK+W+eFK/Ghqn7Wi7SMxCzbTfm
         08zZNiXWtcuL8sO+quK0JiYodWpCvym8WB2eiQdCPwMB65pcSScPSEiXL5cMD/bpNYet
         n7Awz9XftxbaDvUXOS68CKJAxF/BNTkfUrwC7VQQONCdPw6eD9ZM/rvXAjKaj8jteHil
         mh/gG1FkK+ZVxV9DIL7vYqfZhrfP+kf7+ejIxLLbqVIMbpx9XfC/5C5H7X9rVfZ+zyNR
         4HHvduTIkl4TwnyHVL13CRwhe7je0qTSMZqWRHcP6qXv4yghSvecYK2Lb1YZowjyWwXr
         IrAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cTsMNGVz/6FnfILPoy4BCnh+qoVojN51Hm/njwANGhM=;
        b=eNzWlygdzZrdy7YZXesTm1njVBuqMC0WOQ7+V1IzpAkN159FL3LrxH4p6qkPZkV1XR
         zu7APj8NkEuSLbiqRoPp7ce3pe2DgJN4z0o4iykOSktjT3QEHfBgqWMVKGTb3i5V/E3w
         xhTyzCVrCQxsQTrC/H4lymhVrk+0nGmYCGrxMA0ZHbCW9MeVaze+1sja+zG/Vaqa2SSS
         CSKps1pTGM5HIu5hKS3ETifHELhcNEZYrnAm6h8c5r+k2joq5YtdSSfQKeUVmABe76Ed
         UIep9cci0UfLPQd6n3++6BDeRcj2/zjsQPT8F0Ffad77VjgK92qx6JYODQ7aAv2l9oxg
         rlIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="D4u/UIbz";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c186si750230vke.3.2020.07.27.22.12.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:12:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5790E22B3F;
	Tue, 28 Jul 2020 05:12:14 +0000 (UTC)
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
Subject: [PATCH 01/15] KVM: PPC: Book3S HV: simplify kvm_cma_reserve()
Date: Tue, 28 Jul 2020 08:11:39 +0300
Message-Id: <20200728051153.1590-2-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="D4u/UIbz";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-2-rppt%40kernel.org.
