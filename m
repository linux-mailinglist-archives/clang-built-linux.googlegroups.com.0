Return-Path: <clang-built-linux+bncBDLKPY4HVQKBB26Y6OCAMGQERXXI6HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 0803937F4B0
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 11:07:56 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id zo1-20020a170906ff41b02903973107d7b5sf8109726ejb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 02:07:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620896875; cv=pass;
        d=google.com; s=arc-20160816;
        b=qyJu/uDGhLOE3Y2soKHB6aCmrykbLoOCUN/OQ5oOxGNXGbKeNNKJMfkfNHVcf+JHrv
         M7+6FBoiLnK1mrLfyoP+RVI4YRUORhrvMexdXQFd82NWdeCnfEM5MItLjbM31a4QiFbZ
         trp7EsmcnuNtI4EppleDDww68AmBo2drcn0LkvIpXdKn8srHljvuqyI4aNWiM1bDM8o1
         tXlpH6cXj0/155fgV1iGX/A5lP+o0XB+MqiF3WwbJDfedJlAAaC+nEa3RzQUtyvh4/lD
         oNhhJEqcXEAYDXfqFbnILOoi7fI/LBr1guEVMjA+6Ix60lNCSWkz+8duhlJP6RCtNlQ7
         TV5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:cc:to:subject:from:references
         :in-reply-to:message-id:mime-version:sender:dkim-signature;
        bh=44Ro3wNrSRgU7gtNEutXaTTb6Auf+fPdTro0dYmSYLo=;
        b=h2XexBNcGEMHw1mlqmXSuTcU6xhvrEvuy9lB2LkMgwTgS0TzoZIiCLhu7MCVrEGzkG
         ffm/wmS9QEWREmxHXYCWNkLmwNG8L4GAOqSNZmpZ9ELEri2mY6ve28vAohtfxOhqT3Hi
         qUvTnRM1RITNtco6wZSabgxzJIvKcpCcr9/j7noZP7f8w9EMkmHMlJlxBx/8cC6Aqi6z
         RDiZVWhSIaKjukJ3KPYA0pBA/24eeb0Y/yyCPhPCaq0+yIx6Z86dO9UM7xJDYONICGdp
         kgD37DXC5M0BE2JeKeLwr1y+JcR7TCvhKAYyH3d0X9u6o6IpxC6D2QBiZ4VLJj7YmInp
         ufBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:message-id:in-reply-to:references:from:subject
         :to:cc:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44Ro3wNrSRgU7gtNEutXaTTb6Auf+fPdTro0dYmSYLo=;
        b=ANec7bQy/rpEmF36Zy9hj6uIGuPfJ26tDD4eZt05XLFU3MojYtIF2PMzd2LDV/9WPT
         SEcOLN4hQJcyTvOAxk7he9qxe7kSwW6uI89CWcNHVY3u5ZtOBQghqPjgN9tfcBqr3WIJ
         DiKQ01Q+LhJmGIwmSgF5zKnJCMmvIwsPHF/nDJub8KJvtG4ecDLTosew7DNH2xEmGx4c
         xuTKRTZdRoJiO69sT182Jccubf6JPDrw6wXqiVRtWMKbJXg2u24o+3kSmucS0NRt96EF
         YWVsX50KB+Cmv0KtB6wYuDKFcCUYuYB5X8D80k/UpWSLP9aUvxzw63c4FzDN5oaCH5ZI
         uUAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:in-reply-to
         :references:from:subject:to:cc:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44Ro3wNrSRgU7gtNEutXaTTb6Auf+fPdTro0dYmSYLo=;
        b=JcOu7qPD0KQxI7Rv6xN5hhtjaL9twh306JepKCWfqe1G9Wa+aUj5bnCHmk0XEh115K
         5SnSvoGgO4tJEGw8ExRpohDw3Wulw8PKz6w16FWySUuebrdYx/m85EB51YRL79HbXwQh
         GxnbidO+9zZigB8HhGRhM2ObhKISw0GfUrbNeWzEN/RagsjALO7RHBWwR9pW7Wg8ztI2
         LDHJyz9w5kcxNksceWUjoNqiqNINK9L5hhoT46NM0h5mWVyEnZOApKXfJ+tg5rExjLO1
         dtjPBNIy3RwWnpVymwhACiAWD81Ls+cPa3pC5m+hfFQ8FsLlID3cb2kjnFdP+LPAyhh6
         j50w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325YK+RhMxwEpkG5dgQPMpQk+QkHZedHur6FWBKsXwwC/ubt9rh
	DPChgvPGuFyb+NBiingEygE=
X-Google-Smtp-Source: ABdhPJx+05JmraNuUsIZUb+YZ9wNJi4z045kKs0dJLvCrTqk7aW1QPM8mDt9ow7x/4yqRuF9z0Uylg==
X-Received: by 2002:a50:a404:: with SMTP id u4mr49162535edb.112.1620896875758;
        Thu, 13 May 2021 02:07:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:af8a:: with SMTP id mj10ls171401ejb.10.gmail; Thu,
 13 May 2021 02:07:54 -0700 (PDT)
X-Received: by 2002:a17:906:9bc2:: with SMTP id de2mr11674389ejc.340.1620896874746;
        Thu, 13 May 2021 02:07:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620896874; cv=none;
        d=google.com; s=arc-20160816;
        b=LerdYz1tTZIDfP83j4OPHpHY726K5jrEDmZ9fKHi3fRZQBnF9FbMaZ8sh2z0kTmxNl
         +X7YTUVxwzhKdfc6mWGGl/OUTm3b/6jbDN4RtjnZ7BeY6VxK3MjCWLIGZAdNwErU56zl
         TafX19XqTjgf0VkmM3q6z80yzkebqlpNFefhxAxtTQvV53iogQ9wMV5Yc347AXtxp4ZQ
         QFBjsnVODFhN5sIv2i8XIx2H4zWwOKqQSmE7wHunHn9L3LtGaM8aCxdMy+nCggZ3HtIF
         ZWYowGHigQ7qY5sEo0oCoi7KLlFvlIPcPhGPaM3gQtWDwCBobPk1G9Nj61uOc1calYYZ
         4PAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:cc:to:subject:from:references:in-reply-to:message-id;
        bh=abUCHma7oCfQ1FxY5AgLSt3SnxO/tW56HKwFhFptiVI=;
        b=b/uvarqTTzQE4eIH9nKEGgYmb4qJ2hIbeV8OzFbTpyURSe243BfAIKfqX8TLfcPWuN
         8GuRltHkN8LAX41hIPkc17BecyE/YR5ciWg2nWpxWdyMz36/K5xHi4r1MO1suN/7vnEw
         OIrjxzR6RimCOdREaYnzTRjQTH7VenvGBS8EKrzNXC+OrHXLR9yZKMCpOeMelUopjhu4
         fUZY/RivtLyyWG5FgfMzy0uBLmeODWWbBE/w24+zzdgLqYp2jl58N9hzvZmFHyqDJWC0
         IyryHqgVywRjGJAIY9IZLK/N2ZuRFQm3yQeCx9qos+Cq5Gwf5jCRmHzfm7ZbjICrpMv3
         ML6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id di23si91109edb.0.2021.05.13.02.07.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 02:07:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4Fgm5k1wbJz9sbZ;
	Thu, 13 May 2021 11:07:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6s838qCcO9bm; Thu, 13 May 2021 11:07:54 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4Fgm5j5bH0z9sbQ;
	Thu, 13 May 2021 11:07:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 7F7958B7F3;
	Thu, 13 May 2021 11:07:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 7BOwx6cbSXtS; Thu, 13 May 2021 11:07:53 +0200 (CEST)
Received: from po15610vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 4925A8B76C;
	Thu, 13 May 2021 11:07:53 +0200 (CEST)
Received: by po15610vm.idsi0.si.c-s.fr (Postfix, from userid 0)
	id 261DC64185; Thu, 13 May 2021 09:07:53 +0000 (UTC)
Message-Id: <ec5e85f9f9abcfecc959a03495f4a7858eb4d203.1620896780.git.christophe.leroy@csgroup.eu>
In-Reply-To: <40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy@csgroup.eu>
References: <40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy@csgroup.eu>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH v2 2/2] powerpc/kprobes: Replace ppc_optinsn by common optinsn
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
    naveen.n.rao@linux.ibm.com,
    anil.s.keshavamurthy@intel.com,
    davem@davemloft.net,
    mhiramat@kernel.org
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
    clang-built-linux@googlegroups.com
Date: Thu, 13 May 2021 09:07:53 +0000 (UTC)
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
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
---
v2: no change
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ec5e85f9f9abcfecc959a03495f4a7858eb4d203.1620896780.git.christophe.leroy%40csgroup.eu.
