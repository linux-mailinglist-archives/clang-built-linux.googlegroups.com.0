Return-Path: <clang-built-linux+bncBDLKPY4HVQKBB2WY6OCAMGQEXP6LEWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EC037F4AF
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 11:07:54 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id z64-20020a1ce2430000b029016d56f15ac0sf482576wmg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 02:07:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620896874; cv=pass;
        d=google.com; s=arc-20160816;
        b=DVuGrcFcB6d1AavQiy6h7KINO7LfAyEJh7R10X3YLDZyqurTdUASqoh0ma7uTfKLzy
         kgP4W4ggPgswkmVfk8ZMlmwN6HB123qVU/WenA5CYFdWoALWQ9hg480oamywZcNSbHNY
         jVFpigQQ/kKKUn2FjD9nA4RTsD4yu94ieAhJ0s1kb4VEJz8c1QOmEqMSjoE6822guwDO
         B59vyLSIu2jDq5TKCo6GE6jACbYt4EipmpBUTiNnMCasU7vTO47Oq+gp0NtSw7OAWTv0
         U7k8vTCPmYJFqJlVTlLaeVlV8prfCeJC7/W/hD5wxbewvp50NJk+D1/HW7aS/WsTNVzz
         wUJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:cc:to:subject:from:message-id
         :mime-version:sender:dkim-signature;
        bh=XpX4JAgZdJiZO74hintE1PPq6gtZZBLUk6r4knqPw/k=;
        b=pvCbVC8QLkV9FbrEpjzz1egZPc6BJJ69ZztLB0FlcFg/OIm0GNECq2Y9+J/dSjEH23
         9y41XDQizLtYYuHIwFRT1ss3/F5dLa4TY7vuX+qu9nrak1G+TKyJx4mmKg2KUeNt6sGw
         MThy4ZAzEwEVBagm3lUUz1aDaW1J2F+7CFFM0kRdQbT/cWJMAlXktJmH2lt+B/1Vfqz2
         q8qQEfVUYUXKgZ3otQLChWWrxeO8aRpquqRhSYb/NrJeV+U4hDJTnB0vAUKS4q1VeN85
         MYZIeIvbY4HeghmZh76L3f1YjZDn91vAMf1+NafhVXRMdM8j0XUS8cNPWlRpN7u5SgSz
         AYbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:message-id:from:subject:to:cc:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XpX4JAgZdJiZO74hintE1PPq6gtZZBLUk6r4knqPw/k=;
        b=HN9VToAaCE0V/hO2HUY/VtXYKStSBKUGw9WLB1Dj7B1FlIZsCZISVCIscR9NDOfYg3
         tdrGprAATRw3Kzhy5eUtUEynFR4aTARTqbJtz4vZViye6UxmRGjFbFgYqtEOaflB37Mx
         DNDDGKQOvBEpO7qhH7td1EVnusVEBFCOU3dtSLxrjnarrkYeoh7YSo6Q7lSdX3K0uvVC
         fLDqYicMZO1GEsqeT8Aoa9kjk+17iSqGbP+JwDDsAB+OYJStjtugRYg0mit6LA8vKqci
         JIkqxPuxBLZ5537x3j8AhrIHltVpEJpZWA/tAvkH0aT7xatG66O71rjDALMh6cI/7Zjk
         7NEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:from:subject:to
         :cc:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XpX4JAgZdJiZO74hintE1PPq6gtZZBLUk6r4knqPw/k=;
        b=EAgugarwVdhycK7sOck/iFSuCbgQksleOROGd+Av2Z19O2AEn2P6QW11W9KwquXXJp
         oKWiMWOy6CJQGa7U83kusIORfWUTIlryX71wb9r89vV5B83k8QVd30pMjjtakPmSHp9f
         1/vUkixhSNqYBhpJO3SzbAOmndl1GN6Tc4PSps/FnODEjZfEcI4RD7syN6I8Y1tvQUcE
         /rPP/Hw4kb/oH19GFEcd0CSgzRBWAgGz0KyTuCTWuFathXYb5HXhElhW5e/WfoSrCmyO
         abiVN9KEYnGisOnwV7V1dDo7QQQBtkAY0N1UFcdF2vi4CjbX8mCLY3NeUkJVuACLuqxB
         fFDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oXTXVZPSU5bFn4SIFPyYtcEWcp1FVORACcPnMO4Pf1lwDRYKi
	bTqpmouFdGSwhgwSMT90c1M=
X-Google-Smtp-Source: ABdhPJzePVF71hwjk4emRo9r7UWhwTA31Bis/Qbz2sWbPCKUmQaAmz7beZ2Xh5nxegXgCf7c+/Fk3g==
X-Received: by 2002:a05:600c:1907:: with SMTP id j7mr42284288wmq.158.1620896874205;
        Thu, 13 May 2021 02:07:54 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f844:: with SMTP id d4ls6048243wrq.3.gmail; Thu, 13 May
 2021 02:07:53 -0700 (PDT)
X-Received: by 2002:adf:c002:: with SMTP id z2mr50703478wre.100.1620896873373;
        Thu, 13 May 2021 02:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620896873; cv=none;
        d=google.com; s=arc-20160816;
        b=EDhHP9sQgnTQfhXyuzQ7nc1xW2+NhZELb/8bguJNpu0Yep2ZesSMHafGDN4qUDYaRH
         umsSug23WMUGZ1WEccsVOT7Q31EEGuYeuYj7CiinkQdYIEDQomxhLzRbdC137lljN3Rm
         bpfq6B4TTnIQVHAAk1Y2CmGbKdQL2qN1WLlBCMivIHSGWKT7HXZDqLCquzNBsaJm/1kY
         qWjdrX3MLljjNvS+qSdi32CHyBDA2mJrmKmuB8LdYwGhcLEAAyL8aQGwb9h/EJ+G047z
         D+l7MzDjDxfu2o6QOxILqwmXDb2oDER6zOTmRIu4saxcbpi6q1S0mjEeJwFlCTpKrwUe
         n5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:cc:to:subject:from:message-id;
        bh=eWzDcATXd6Sqv8tXvM+NdJFuCX1Jjqnu3XzVgSeHgmA=;
        b=sQTQIWaf/N7Ick+CIr1rtypXlCJSP25q0m+ODtqPpubuQ4SekV2pRDhRE5OVntD4Ju
         NrTopwGZkz8xrj7WZfHmlFX1phtPEgzaA/ZMboI7LFNVGU0ux/zfA47TGa+xXZYPvLHK
         f8NJP+R4AiNS8LFpQ6Y5Lsi2kPYxXdsqj4ho04pRTuMF8Z+Q65Bst+Fs8HLW/FYSMZW/
         mKMMAfW4nZh3l//5rUQi0kJ8ZE/p8osNaZZ20pYPRAskli3lWevQ7b3XXS1cy6Mc90N0
         8Mat9gt5PCMFFnm8nfwuKJWbCtCWHtHZHIAZvASy6HC81TQVy3UvfXCWKqgr/XrfSfgb
         H6zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id z7si52147wmg.2.2021.05.13.02.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 02:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4Fgm5h6qWPz9sbR;
	Thu, 13 May 2021 11:07:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IKc8HArddjH8; Thu, 13 May 2021 11:07:52 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4Fgm5h5tl6z9sbQ;
	Thu, 13 May 2021 11:07:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id A59CF8B7F3;
	Thu, 13 May 2021 11:07:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id NDVGIVfb4mfx; Thu, 13 May 2021 11:07:52 +0200 (CEST)
Received: from po15610vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 561978B76C;
	Thu, 13 May 2021 11:07:52 +0200 (CEST)
Received: by po15610vm.idsi0.si.c-s.fr (Postfix, from userid 0)
	id 1C7BB64185; Thu, 13 May 2021 09:07:51 +0000 (UTC)
Message-Id: <40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy@csgroup.eu>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH v2 1/2] kprobes: Allow architectures to override optinsn page
 allocation
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
    naveen.n.rao@linux.ibm.com,
    anil.s.keshavamurthy@intel.com,
    davem@davemloft.net,
    mhiramat@kernel.org
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
    clang-built-linux@googlegroups.com
Date: Thu, 13 May 2021 09:07:51 +0000 (UTC)
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

Some architectures like powerpc require a non standard
allocation of optinsn page, because module pages are
too far from the kernel for direct branches.

Define weak alloc_optinsn_page() and free_optinsn_page(), that
fall back on alloc_insn_page() and free_insn_page() when not
overriden by the architecture.

Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
---
v2: Added missing prototypes in linux/kprobes.h
---
 include/linux/kprobes.h |  3 +++
 kernel/kprobes.c        | 14 ++++++++++++--
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/include/linux/kprobes.h b/include/linux/kprobes.h
index 1883a4a9f16a..02d4020615a7 100644
--- a/include/linux/kprobes.h
+++ b/include/linux/kprobes.h
@@ -409,6 +409,9 @@ void dump_kprobe(struct kprobe *kp);
 void *alloc_insn_page(void);
 void free_insn_page(void *page);
 
+void *alloc_optinsn_page(void);
+void free_optinsn_page(void *page);
+
 int kprobe_get_kallsym(unsigned int symnum, unsigned long *value, char *type,
 		       char *sym);
 
diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 745f08fdd7a6..8c0a6fdef771 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -321,11 +321,21 @@ int kprobe_cache_get_kallsym(struct kprobe_insn_cache *c, unsigned int *symnum,
 }
 
 #ifdef CONFIG_OPTPROBES
+void __weak *alloc_optinsn_page(void)
+{
+	return alloc_insn_page();
+}
+
+void __weak free_optinsn_page(void *page)
+{
+	free_insn_page(page);
+}
+
 /* For optimized_kprobe buffer */
 struct kprobe_insn_cache kprobe_optinsn_slots = {
 	.mutex = __MUTEX_INITIALIZER(kprobe_optinsn_slots.mutex),
-	.alloc = alloc_insn_page,
-	.free = free_insn_page,
+	.alloc = alloc_optinsn_page,
+	.free = free_optinsn_page,
 	.sym = KPROBE_OPTINSN_PAGE_SYM,
 	.pages = LIST_HEAD_INIT(kprobe_optinsn_slots.pages),
 	/* .insn_size is initialized later */
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy%40csgroup.eu.
