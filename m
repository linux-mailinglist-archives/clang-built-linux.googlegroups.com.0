Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBSGM56CAMGQECNNONCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6621837C024
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 16:29:29 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id z11-20020a19504b0000b02901dd6ba9b417sf714605lfj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 07:29:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620829769; cv=pass;
        d=google.com; s=arc-20160816;
        b=fSfct3uludvZaz5BAsYD3aoCRBeSr4BtCbINyKvNfFFTIBKTQLnydWdC/yrRePIx3M
         qTvLXyvFtaiaAcvLK+pcKyR2A1tMjBYLRwLKQXD3O49iYLfZhTVRY2jAI8ZP4wIM+G86
         mtAkUe44W8Ur3Zfa6GLR63Y2A+QDHnQ4aad3+GCFFQQBbBQBBrrGSGsmgVaR7oJ4i8M2
         pjQOfjB9BRn/bXUqPqCRJBeNT5+lTUo7pqaVtKtbMjcPw6KCD06V/QA8FvdwG+eYSUas
         L+YwihWqIJHWhJL2QqyhHpivU3/JwYyRk+Tb6phB5IJUcS30N8j1FL5Jf/paOqCgdiKj
         yiHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:cc:to:subject:from:message-id
         :mime-version:sender:dkim-signature;
        bh=Z9hxCXSlbJsV+e0lsY5A3vuhtsXRNYv3EcTYQk6WMW8=;
        b=QVTdgQxWJwu+FwKhzJHWPWkCvWGSuGfd5V55S+IBW7b1AzwAFqNbQnuBnb29w8GzU2
         PfwNPO3bHP+DXog0VYrABWwAMTAv5M6FPmYR07HMw4/DGqExj47UdPE49ZxkBkzkid4I
         Lt+LvTJwq1tUYhX4Xrfeg58LSvFtPTWpguAP/HRXCoqr7qtdwFwyY5jCkG2ph3A1hwpY
         yk6fYNJZzeMaOf9HdW/FSLfVQd15L/sjiETx3lzz14jiiA5TIdhz2BKXhdjhpHLQ8QpV
         Q5eOTFkpJZMtTuLbet3SHRkAKBJYdzPM0324t/EodwaD7dRkKS3YY8e64X6eqczeB4Lk
         8nVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:message-id:from:subject:to:cc:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9hxCXSlbJsV+e0lsY5A3vuhtsXRNYv3EcTYQk6WMW8=;
        b=Fv9FAOdmWaiuWoAFXi3eVFnz/HhkN4+QPQKGqbi5YzN7UJ0qte1w0sJaHx11LewoHW
         3NKSs4Gu7xzACjSxLzLzWXbo93DU7xGTEGgUXUda6mOsNpCJI6IJuWiNR3At+VOy7sx/
         ybgcO+VF7jPeAM78+XG4qD9FaPqaRx2WDgF/lkgmFKunEnCUYYzpLNnRWnnt5LU5Bhl6
         6ql5kmJ7qEIRXEtKdQdPOSkJPod161zdz8Uu1pfYbeGpjPn6DFPHEZ7YiQz/PgtcnL4i
         +01yJfDwMNzGjTMjUT7BDugeM3H5dop8TZqzgS2eX9BJp8JuePCDtDdr3j/7S2nhAmqM
         GOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:from:subject:to
         :cc:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z9hxCXSlbJsV+e0lsY5A3vuhtsXRNYv3EcTYQk6WMW8=;
        b=Stl54JEDxDSf4diLOepyxIDU10Gbf7JaGGn6NJurvZa07l5Ydrn/Su/E2oeHkSSCFM
         6xhd1+X0CDZ8et9TttA+rGgP4VIbw4bRkQAIPOxfaE72PAuUu2jDVAABJYycCRGkG6wk
         XzsCf8+xbfaFJvq9I51TgCuHh7xFhIia/fjr2EaZNT1aqtinXSUI6t2jyFfdUn/EraA1
         mJllcasGa437pjg4U6c6YziwUE+5grXUOhPy4DySjGAaE9UHchBXFv9hnffRV5iY9P35
         OXHHJqDVsEJf1gPdf8hk4VfX/SGgz1Lh2vEXSQBRcjV9E7DAJRqVD4rYyeGmLxEXTSWP
         s/lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XjBhn0Xh/8eeol57b05We1I53ld7E0vXyvWcFa98eiorblqix
	7mNphLG96+D9FNRbKQTHuJg=
X-Google-Smtp-Source: ABdhPJx+vyY0a+/9XKURVPB7F9Pcc+AdNz4Bnyp/P1g+rkNfMIcTRps7Mvnb5oqP6mW6F2UKGM3ydA==
X-Received: by 2002:a05:6512:1141:: with SMTP id m1mr11930599lfg.28.1620829769001;
        Wed, 12 May 2021 07:29:29 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls473816ljr.9.gmail; Wed, 12 May
 2021 07:29:28 -0700 (PDT)
X-Received: by 2002:a2e:88c8:: with SMTP id a8mr28350825ljk.386.1620829767979;
        Wed, 12 May 2021 07:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620829767; cv=none;
        d=google.com; s=arc-20160816;
        b=uq0oxzxoCztbc2LtC2NAbUb+uY4b8rfjv6tX5xz85fkfBHKAuQJME2WLlXe9KRw15z
         RtGxaFv4Sqs0I9V9XDimRl4WK8njO9iFn7LfJiQEvUIswUEu2XjZQR48XXK89z9G1M5Y
         RChv8CjsFfVGuUFNHWGZVCMBmt+jZD3etrQGoRv8us/R6ipkhBYdB55VHc84Y7SyDmL+
         NTou9j1JKVABme94ixqo0jomZMYVtlt8WRNuoZYhYiYcoC8npkjRdZuV+7oLruuL1dAJ
         OGYaHAgak79oO6niINfyGJEcMu/xRg4vBgXYuOJj5bI9k6XHkFcGgzoVUkbSojhHAS2h
         smQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:cc:to:subject:from:message-id;
        bh=UDzmI8UCamwovqJwHyISHtL63+M3IpVzwITPZXxew+k=;
        b=W/uL8jUl0/8z13ZMqPsPWrmZt7FlJbDmo6Uf0wsRGNBM1JMYfbSs3x6jl3o7DiSU3k
         QW+2nBObVi7WrGiJ6Rj5xDB+C/VOppw+OvIJJaZ3AN3M5nVQx10R4Ye4G52wj0+xqCvg
         bJlGref3Gjra+cTNWFdHU8dq8rwf5HoYptFnyICOcq/ge/wa3dMJLV+ntHsZbmqd9RZV
         EkPGbjKAUXqYeVOu4pY6nNb//pPnU9WZHpFOZPz4nm8Cp+34RE044lpmplIF39rIc1A/
         SX9xDIXB0rBozY1z5DcuVCcI3iWdGbqRpUPxYdfk4J+Sgzy+qluYeOH2oCEkpK2BVlS2
         6Kkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id j7si6218ljc.6.2021.05.12.07.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 07:29:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4FgHHC0HYgz9sdw;
	Wed, 12 May 2021 16:29:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzyjPwJLNrbE; Wed, 12 May 2021 16:29:26 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4FgHHB6PHQz9sdc;
	Wed, 12 May 2021 16:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B895C8B7F4;
	Wed, 12 May 2021 16:29:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id coiZCkJi0xFr; Wed, 12 May 2021 16:29:26 +0200 (CEST)
Received: from po15610vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 7DC5F8B7F3;
	Wed, 12 May 2021 16:29:26 +0200 (CEST)
Received: by po15610vm.idsi0.si.c-s.fr (Postfix, from userid 0)
	id 3FADF64173; Wed, 12 May 2021 14:29:26 +0000 (UTC)
Message-Id: <472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy@csgroup.eu>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH 1/2] kprobes: Allow architectures to override optinsn page
 allocation
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
    naveen.n.rao@linux.ibm.com,
    anil.s.keshavamurthy@intel.com,
    davem@davemloft.net,
    mhiramat@kernel.org
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
    clang-built-linux@googlegroups.com
Date: Wed, 12 May 2021 14:29:26 +0000 (UTC)
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
---
 kernel/kprobes.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy%40csgroup.eu.
