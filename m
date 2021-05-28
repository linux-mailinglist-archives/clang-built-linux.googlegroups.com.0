Return-Path: <clang-built-linux+bncBC53FPW2UIOBBZMYYWCQMGQEWIQ3AMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DCE3947B9
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 22:02:45 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id w13-20020a170906384db02903d9ad6b26d8sf1521213ejc.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 13:02:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622232165; cv=pass;
        d=google.com; s=arc-20160816;
        b=RTOzgbUNYTNqgXS4tfMlQV4rX4pG89bij6ZRv910PmqjHxb+J+Gw6az70S9Tp7/bQI
         r6TMmFhUQHdP05Zj4ChB4fqZwKnlUl8rJUbNc7Dg38pmcdKFSo7P2VtLYAkcgZDlDWAM
         qbjo1z5uvvb8ULA6QxdmD3AlbqcKRyz6WaHcmcA9iHyxc7WhTX6g+wdEz1ONkTvAEKzS
         sENV+y9aEdj6+q/JC/OcpdSxlm9//Yoj/8OqL7InfowihtLUI4AOum6OE1SM367u2kYu
         ixwynO8uqHCCu8LhZeQBED4BT0FykO63g68wK4t6osFokI8PD4CDEbBZ1q334Xkp97QR
         g66g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ihCSRuOVj45SvBbEWiVz/5L/EtJ6anfyeoEB30BkRLc=;
        b=QHGqeGvgcvQN9K3AnFn4XTqrRI5Kl4ioR39pk3TM2qd+8ez7xcjSqnnnRiB935UGms
         o8GMM+66tC5/yAWPwVH99526sviDds2o0XkZcHsniEBtNb+InDiRSh166Fmkg6v6KrJY
         5p8KOsoQRR+kuhMo5uW3FlKfV0lKw7nclUtOZBvB2ksIl9eQwi/4pT6PWMHZzcU9R9Ei
         pxwJEAdVJkbFNl5rXTnGpLPrkw3M1KxFmSQN2kzheL9MsVVRyE3XQgAQBhH2a7aEsPD5
         HHoenaPhJzTHcksemXF+/L0vZwPwb5GFglvGow9SfeGh7O4fiwsTi9HbHHLbAe6WET8G
         bIhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=guVGVqm5;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ihCSRuOVj45SvBbEWiVz/5L/EtJ6anfyeoEB30BkRLc=;
        b=kgHoIP035Sg6dk/29PDv2EnBkqIDnxL/11AmzkITK1Iljda2NYouxoHCWvK3DVD1xZ
         6FmuwJYnD07vAO7ieSofuIj3O7SkKCdXGBcvIbhn3YBkcR2FxPw6AeFguvGBUpRV6Zz5
         pKF4h2JvjS69WKfrim006ltuBW4byx2bxqadsY384iSoHn8+LDDvn03Z10ylKN7RLT12
         6XPMS03Ix56l3SLtAu120o+4rWtNeHcZC+n7RUdWn8heP/U8LZ1lGPQkyTx4E5ELYVoI
         4tIPL2dlXno9I1Cr7UjD1OWHoDFPuFgOl/3NMNMa4px0zzlLfsS4Yi98W0iNI8Vj5+tw
         Dfyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ihCSRuOVj45SvBbEWiVz/5L/EtJ6anfyeoEB30BkRLc=;
        b=U5Cmm2MSEdtZ9IpRS5sT+WK2TKAmjSdJbO4xdadiRR4FNthCkJ4Ps3ucu+n89bBLpk
         k0hlH+SjKSKyfdNol71Tfqf/so1sugzwiflLgCqL86KKFiwBBhH7lZFMNvFlV3WGupqA
         bQuQ4IwcCEu26+I9N7BemO8Ehsq5AKEdmI/Cgr7XWiuWwyFJy28Mr/c3kJxuKE7zXj03
         mSSude9FWLVUPPvYmvQteOTaPwoQvX02//mzWK8MUjyrGonJOV/dLr/1KgM4BkpUjwWG
         GBpdYg3d5O6Fo/eDln8D/W6sGPY4GiKAK1V27K7bXgpNHWKz/7VYd0Y1GMmrc9tpRkRm
         98yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ihCSRuOVj45SvBbEWiVz/5L/EtJ6anfyeoEB30BkRLc=;
        b=IGxcWVRiKijMy2vRVEVAhHqpgHxdVO3glgg5BNDbxHWxG1kqbDYYXMH2RA6Bk9BUIc
         8Dr2oj8ldUSY41xlFILZ5YN0E8h4CSoNa/uACeQZ6vDfpa5xnuefm9jCZuWNcg5vP7TO
         1GYZyKS42ETqIFNuVSu1mq6PM071paWNJaQlrZjCd8cdc2ygA1AtEiwRHh9vxiWCbGwB
         7z8BZjMFbMAAzVrCdagMj2OIsKZb2jA4eBJn2kpAzuGeAsM4QNWVN5v4mM77k2KdR26e
         x1apFRhof/hsykAN991TXmOcn5XibCj1NvRvxXxWE/VbPIhXxubGDlP0onuZw795IRUF
         u1XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nZ07V7p5/WFM6bUCkoLg62ouk8FU4hvxS/8Qonkz8QUDQ+hlz
	9CJ7ILRgOXlDDUvadjLg62E=
X-Google-Smtp-Source: ABdhPJxzMXN/Q8bHv2w0OWeSqVuiCGTl6M3pOV9p/5jGaNEfnAT+vwIOYa15fBDCouA1a1smbvFgZw==
X-Received: by 2002:a50:9f23:: with SMTP id b32mr11940888edf.4.1622232165684;
        Fri, 28 May 2021 13:02:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8542:: with SMTP id h2ls3523587ejy.5.gmail; Fri, 28
 May 2021 13:02:44 -0700 (PDT)
X-Received: by 2002:a17:906:8394:: with SMTP id p20mr8319348ejx.170.1622232164725;
        Fri, 28 May 2021 13:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622232164; cv=none;
        d=google.com; s=arc-20160816;
        b=xdPrtUAMN1Y0rRQlFLq88oDtQDfncCHE8pTCQUAJjHKUrw98+2pKr8sM2eOTvcIh1o
         8uO/MWlA4Ms2+/VAPi3vN1/x/fcROk5hm+xuJbssSw3GRIDbn0hkPLFQ6ZEzTNXew1SR
         FnDMdPJyAz9V7ANgAAf9ZVXNi9QMz/0+B4CpY8tl/BOYQ8WM1JI6scFlzPzXTCWsgTy2
         jq+nEBVvPD0MxzZGUrzi/RQV3VEx+nWduGNI1uSxHQeDi3odznNrxtsuYVdRom7s/Ez5
         tTXZ/Gy+nBhpv5qYKdU218e2w7rO8WjGDurT3nyRIxJA1lXNpOjYws+wPDLF88yiAkcU
         zE3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8CjTgaGzpx1tYGvhyBdGCwHJ4sxt2qfBMHTKvcLBoYI=;
        b=WHXBnJmwP87G+ntRxp010iYwl70kkRTQhMSoV9M9eBG+70kih6+Cb3F4TmCQJ/WOF2
         SQZYk2xrj0EknPdHpjVWJr4O1wE0xdU4Tm+S7cSBuj3+aIZpLA1iLozQL7kW7RbtR1bm
         uFO5ZrZKgrp6EcJdDHXIw9dPq6gbmyn6+uKWAjCaVzUPcpHeITpRsxbQ+MTgu7W2k+5u
         IyC5KndcBvSadZe5nGr8uaxAvKBUMDPRflkpanBppQBYKmJGmteuBO8AzFy7/0N1BEec
         J6/DZ5DhDfZ55irWE0Wd0rRaVK2TBx8tITCUReDHFho6WtiI0dUIG12gEbvnvlv8rKq0
         3ZLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=guVGVqm5;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id cc21si390362edb.2.2021.05.28.13.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 13:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id a4so6748667ljd.5
        for <clang-built-linux@googlegroups.com>; Fri, 28 May 2021 13:02:44 -0700 (PDT)
X-Received: by 2002:a05:651c:4c6:: with SMTP id e6mr7853378lji.326.1622232164523;
        Fri, 28 May 2021 13:02:44 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yg81q1---xrfn1y-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:bcab:6bff:fe6e:22ea])
        by smtp.gmail.com with ESMTPSA id h29sm600263lfv.230.2021.05.28.13.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 13:02:44 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: samitolvanen@google.com
Cc: jeyu@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: [PATCH 1/6] pgo: modules Expose module sections for clang PGO instumentation.
Date: Fri, 28 May 2021 23:01:33 +0300
Message-Id: <20210528200133.459022-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=guVGVqm5;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch series enables reading PGO profile data for
modules. It also contains some changes to instrumentation
code to fixup flaws when profile data is serialized from loaded modules.

To be able to export clang PGO profile data from modules into user space
we need to expose __llvm_prf_xxx sections from loaded modules.
This data is used by pgo/instrument.c and pgo/fs_mod.c in following patches.

====
The patch is based on Sami Tolvanen's earlier code: [1]
Patch https://lore.kernel.org/linux-doc/20210407211704.367039-1-morbo@google.com/
and kernel v5.13-rc3 was used as starting point for my changes.

Be kind, I'm an kernel newbie and this is my first git send-mail. :-)

[1] https://patchwork.kernel.org/project/linux-kbuild/patch/20210407211704.367039-1-morbo@google.com/
====
Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 include/linux/module.h | 12 +++++++++++-
 kernel/module.c        |  8 +++++++-
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/include/linux/module.h b/include/linux/module.h
index 8100bb477d86..2aa1e1fe4afa 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -504,7 +504,6 @@ struct module {
 	/* Elf information */
 	struct klp_modinfo *klp_info;
 #endif
-
 #ifdef CONFIG_MODULE_UNLOAD
 	/* What modules depend on me? */
 	struct list_head source_list;
@@ -527,6 +526,17 @@ struct module {
 	struct error_injection_entry *ei_funcs;
 	unsigned int num_ei_funcs;
 #endif
+#ifdef CONFIG_PGO_CLANG
+	/* Clang PGO llvm_prf_xxx sections */
+	void *prf_data; /* struct llvm_prf_data */
+	int prf_data_size;
+	u64 *prf_cnts;
+	int prf_cnts_num;
+	const char *prf_names;
+	int prf_names_num;
+	void *prf_vnds; /* struct llvm_prf_value_node */
+	int prf_vnds_size;
+#endif
 } ____cacheline_aligned __randomize_layout;
 #ifndef MODULE_ARCH_INIT
 #define MODULE_ARCH_INIT {}
diff --git a/kernel/module.c b/kernel/module.c
index 7e78dfabca97..e49de3b95d87 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -3342,7 +3342,13 @@ static int find_module_sections(struct module *mod, struct load_info *info)
 
 	info->debug = section_objs(info, "__dyndbg",
 				   sizeof(*info->debug), &info->num_debug);
-
+#ifdef CONFIG_PGO_CLANG
+    /* Grab module sections for Clang PGO profiler to hook into */
+	mod->prf_data = section_objs(info, "__llvm_prf_data", 1, &mod->prf_data_size);
+	mod->prf_cnts = section_objs(info, "__llvm_prf_cnts", sizeof(u64), &mod->prf_cnts_num);
+	mod->prf_names = section_objs(info, "__llvm_prf_names", sizeof(char), &mod->prf_names_num);
+	mod->prf_vnds = section_objs(info, "__llvm_prf_vnds", 1, &mod->prf_vnds_size);
+#endif
 	return 0;
 }
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210528200133.459022-1-jarmo.tiitto%40gmail.com.
