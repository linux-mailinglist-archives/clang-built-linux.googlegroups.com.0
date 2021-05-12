Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBSWM56CAMGQE5RY4PGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EC237C025
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 16:29:30 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id 4-20020adf80040000b029010cab735fdesf10193960wrk.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 07:29:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620829770; cv=pass;
        d=google.com; s=arc-20160816;
        b=mJF/MiLt2aE0cVR7TS8ckNlRnsZKPK+ej37fWBkaw+6OfIQmQHpV1ZGXq2y7YJpLFb
         7HnCCKJX7Yccca8l6jTZfCAwh/r/WfBj+opTZBabeczwiZ91Y66TRN74kjXqG6y+YpM3
         q8IlnZ8ZYaqZS27v41LHQW1cwz0g95bMiQHehyFGccEh0+A4H4MvcRxlB/fuF8OK77PG
         GeAghRC/9+OEqTGgk0PkLmNnEe7hynCM2ighnB2ipSKx6TcXCqDr48HGhXGvrYx2Z2l3
         FBTqNc63p9XWiM3yiGXBiAQocEI+Y+lfdl8b5vw+1cUDPqBZnV4l1x65KD1A26hGTBxM
         J0gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:cc:to:subject:from:references
         :in-reply-to:message-id:mime-version:sender:dkim-signature;
        bh=grumI8RP5+NBzKQi4CM4ebdMpQeoWL+7fjMVWT6oomE=;
        b=hQThymeCDplUmvakgJrjCiKNKaQmshn5ZxbRtEFHSxOyPB8e52oGhFsfnt7nrr2wTB
         7xUVlzEM7lhKZVljZ+yIeERGCxG8sEBgmxJMlTag60xMXyaeafjsey+o7ytDK2Fa7ath
         V6l4nq7UYSN2IIfSjC4S+T86S70Fwq3nS6GoX0NjyQDlb/nnVMUq0Jv1RW1Rj8wqHVas
         irLNN5RT8qBzNGEyEKT7fBIEvs19Sv7pPZ+XgPYftS3dtWCEBhrCWpoC5+BFgCn9+XeT
         zg9+f9EW/VwRmcMr2DQC5f+qs3Nv48SM0L0x7RWwAFtSG4OUrf+cXmREWcQtCsDVXhWM
         9p7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:message-id:in-reply-to:references:from:subject
         :to:cc:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grumI8RP5+NBzKQi4CM4ebdMpQeoWL+7fjMVWT6oomE=;
        b=UsAN3gYclQhnpazIOOWFrZA7yXlaGeBPi27Aoa99Qq4GyfPr24hgctGfM+86Z4clG0
         ZyTjyPvKfJ+xXVwWKXWHODDsOuj9ZKtNTikwMNXX+YEnvrGD3aeAB3YUX8e2mavKPJkD
         xTbipj47ThFVQpRDt63QlbF/9WQnt3dhNWX9znkqP8TypMAoj8HAZnTn2CPnXpbBoiS2
         RHoVbHJFNlJzZW+KDpAQsUy06AWWeCz68/dSBkj9pXCq+ElEZKei2OD2c3zxnMVx8+YR
         QkVXdYHjZn8OnDwcgf2L6ozU6Kq9ogvf4+4Ms/b2TipPJJfYfBuXv3bL7irXbVWX45bQ
         /uTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:in-reply-to
         :references:from:subject:to:cc:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grumI8RP5+NBzKQi4CM4ebdMpQeoWL+7fjMVWT6oomE=;
        b=k0GqP6CnEJJ8HEX+/vzd426LPpWMvP+nrNRa51C5xjoKVUpgA8k5q99qMF/Xifi7yO
         gRBVicIdC++VJf1iICTo7RgPH9qOlukceriT3q/Sh/v+XV1QPUq9aQlKz/x/6Igaa650
         4lPP9rhyc4GMl4kcg0oUYvs3jrzQvvJypaPpoMj6wVsqsj91t4iXxrz90x4g2yO28b7c
         Qk/cyns8cb3gUgkUrDRK2l54prcIFr9p0REJ01ee0Vn8LemzxpVGhefq+W25LI+9Nyp6
         A6DD8dRQ3XYqSidoFxwHrVIe/hK/7WIOC9apdIH+N7+kJHTYnAhwn1qSTUUtIMk8ggLZ
         SLpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WhqEoLORCyQibBla79SwO8vV26ZoaC2mBqslV8qs5qhsh4Zsr
	jM8jFYDoveOa8htft/jLQbU=
X-Google-Smtp-Source: ABdhPJx4cr0IuW6dJcZZ00uyMAFzKIFlAkDS9v4Q2uBUXa5tHg/MpBVaN41dU549IZz64XoDEPCq/A==
X-Received: by 2002:adf:d227:: with SMTP id k7mr46790676wrh.390.1620829770640;
        Wed, 12 May 2021 07:29:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls3091687wmq.3.canary-gmail;
 Wed, 12 May 2021 07:29:29 -0700 (PDT)
X-Received: by 2002:a05:600c:293:: with SMTP id 19mr39350666wmk.144.1620829769749;
        Wed, 12 May 2021 07:29:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620829769; cv=none;
        d=google.com; s=arc-20160816;
        b=B4bVopaljzRwd+v5D8VHYV47S8PFqAcxwyB8f3iZy1GyBCew/tTExIf3NFcuETIt/O
         X8+ZRD7XXELgW0uSoAN/70xoo2nuZQ9sHwmtr5GlKfsMhJ7P0mV7AOtODMqiojJ77b+u
         AltHhlgTMtyEhzzzX67DQvSCIV+4lgIlqcF+5sitEo6/za2UrN+57gDD0QQ69qqaPdNi
         ED980NE8mU/MzhYRoatCFHtqW/vdfiuQjSctJO5i1tsJltvocL800NvuhKrYna4Wv5QC
         WgqquT+GHsMTsZR8nzpbnnGPLQP9+LhHclXl/dWCRSOXWwqfToggyy+vXwGu/LZBDs9J
         hCVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:cc:to:subject:from:references:in-reply-to:message-id;
        bh=Ul9PeR5UkoV5NZhcB5Qqzk5iy4bhOBhUoN99gEy258Y=;
        b=LTzu/e4ipHuRw71BbJH6dREZTmBSgCWGkfROefAB6Oi6yKkW4odNQD2mTG9QjSJosQ
         MnY7B+LdHK/toa9CU5+kzp1uLVq5tRhbDacP1vCHzpTBnmXVabMsf3GYXZf7tFSzNYqj
         iYKr98kAkb7cLol9YUrFvES/eOyQ9cPq7YEMSOMq1BKxxAwXGZ4MTFbpsXh1ybKpk129
         J8kUvQfWUSG+0oDBrxExjwltZaOHVltp5xtxl2mON67CwGUhtBzFAR1V/N/W+KiRn6tS
         T2FNW2+jUl1wS3R5lcSHdMro2V0R69a2FEm1kwFBEGE1cLMYWyjMOfLHSM8nDDnyA/VI
         cq0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id x11si3958wrn.1.2021.05.12.07.29.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 07:29:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4FgHHD1DK6z9sfK;
	Wed, 12 May 2021 16:29:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iyVlUkZJ4Brm; Wed, 12 May 2021 16:29:28 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4FgHHC5qKkz9sdc;
	Wed, 12 May 2021 16:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id A18B38B7F5;
	Wed, 12 May 2021 16:29:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id PhcWGk4GTMnw; Wed, 12 May 2021 16:29:27 +0200 (CEST)
Received: from po15610vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 6D40A8B7F3;
	Wed, 12 May 2021 16:29:27 +0200 (CEST)
Received: by po15610vm.idsi0.si.c-s.fr (Postfix, from userid 0)
	id 4BD5D64173; Wed, 12 May 2021 14:29:27 +0000 (UTC)
Message-Id: <46998c941d0a5664daaeb92998391aace015eddf.1620829724.git.christophe.leroy@csgroup.eu>
In-Reply-To: <472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy@csgroup.eu>
References: <472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy@csgroup.eu>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH 2/2] powerpc/kprobes: Replace ppc_optinsn by common optinsn
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
    naveen.n.rao@linux.ibm.com,
    anil.s.keshavamurthy@intel.com,
    davem@davemloft.net,
    mhiramat@kernel.org
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
    clang-built-linux@googlegroups.com
Date: Wed, 12 May 2021 14:29:27 +0000 (UTC)
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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

Commit 51c9c0843993 ("powerpc/kprobes: Implement Optprobes")
implemented a powerpc specific version of optinsn in order
to workaround the 32Mb limitation for direct branches.

Instead of implementing a dedicated powerpc version, use the
common optinsn and override the allocation and freeing functions.

This also indirectly remove the CLANG warning about
is_kprobe_ppc_optinsn_slot() not being use, and the powerpc will
now benefit from commit 5b485629ba0d ("kprobes, extable: Identify
kprobes trampolines as kernel text area")

Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
---
 arch/powerpc/kernel/optprobes.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/arch/powerpc/kernel/optprobes.c b/arch/powerpc/kernel/optprobes.c
index cdf87086fa33..a370190cd02a 100644
--- a/arch/powerpc/kernel/optprobes.c
+++ b/arch/powerpc/kernel/optprobes.c
@@ -31,11 +31,9 @@
 #define TMPL_END_IDX		\
 	(optprobe_template_end - optprobe_template_entry)
 
-DEFINE_INSN_CACHE_OPS(ppc_optinsn);
-
 static bool insn_page_in_use;
 
-static void *__ppc_alloc_insn_page(void)
+void *alloc_optinsn_page(void)
 {
 	if (insn_page_in_use)
 		return NULL;
@@ -43,20 +41,11 @@ static void *__ppc_alloc_insn_page(void)
 	return &optinsn_slot;
 }
 
-static void __ppc_free_insn_page(void *page __maybe_unused)
+void free_optinsn_page(void *page)
 {
 	insn_page_in_use = false;
 }
 
-struct kprobe_insn_cache kprobe_ppc_optinsn_slots = {
-	.mutex = __MUTEX_INITIALIZER(kprobe_ppc_optinsn_slots.mutex),
-	.pages = LIST_HEAD_INIT(kprobe_ppc_optinsn_slots.pages),
-	/* insn_size initialized later */
-	.alloc = __ppc_alloc_insn_page,
-	.free = __ppc_free_insn_page,
-	.nr_garbage = 0,
-};
-
 /*
  * Check if we can optimize this probe. Returns NIP post-emulation if this can
  * be optimized and 0 otherwise.
@@ -136,7 +125,7 @@ NOKPROBE_SYMBOL(optimized_callback);
 void arch_remove_optimized_kprobe(struct optimized_kprobe *op)
 {
 	if (op->optinsn.insn) {
-		free_ppc_optinsn_slot(op->optinsn.insn, 1);
+		free_optinsn_slot(op->optinsn.insn, 1);
 		op->optinsn.insn = NULL;
 	}
 }
@@ -203,14 +192,12 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *p)
 	unsigned long nip, size;
 	int rc, i;
 
-	kprobe_ppc_optinsn_slots.insn_size = MAX_OPTINSN_SIZE;
-
 	nip = can_optimize(p);
 	if (!nip)
 		return -EILSEQ;
 
 	/* Allocate instruction slot for detour buffer */
-	buff = get_ppc_optinsn_slot();
+	buff = get_optinsn_slot();
 	if (!buff)
 		return -ENOMEM;
 
@@ -297,7 +284,7 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *p)
 	return 0;
 
 error:
-	free_ppc_optinsn_slot(buff, 0);
+	free_optinsn_slot(buff, 0);
 	return -ERANGE;
 
 }
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46998c941d0a5664daaeb92998391aace015eddf.1620829724.git.christophe.leroy%40csgroup.eu.
