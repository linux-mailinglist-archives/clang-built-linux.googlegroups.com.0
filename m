Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB6VQ6CCAMGQEUBUZE6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7991937D1B1
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:03:39 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id l7-20020a9229070000b0290164314f61f5sf20193229ilg.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:03:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842618; cv=pass;
        d=google.com; s=arc-20160816;
        b=NuohmRiPPAZIJRVFqh7GjogBStcXdpUOQvkLZG7tJcvlPWnxhZcPk2tpTkgTuD880h
         FfqCkLp0+y/yov6xokoUErBbqVmGbENncGMDCz9M2zEiXdr9CtOmfYr4E9kSBnpy1BgB
         n8AJKvifpQ4KICiCZbHJC7i2ZiulSmPjtgkroDNeN4pBkMZOozjI/kVkKo+LI3mfJGG/
         uEgcEjcRHqJmujiVoVJJSquIey3qL+W2wKv4D3RF2MsUEouUXMrNf0N0PChWnzEugAkL
         x7I5GPXIydXdIfgJbwYS/Jc6qpSd3mamzI+AtBN1MRkq6WnTLHdTP1UAVFJM/oKCb7uI
         JE4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FSL6qKLmevCEVAhy0gobVoEOQy5n7DZDVEaGwv1NwP4=;
        b=XJrXzQUlKC+1yNIH+a4n9M283lz7NyuiFQ8cth3VlyuJUQQus26h8xmzbXiIcSR1MA
         etMcC0ISZajrFy1oYwotSU691J4IyeiHdzECFDE2Hmjny5CmDF4B59W+OBt06MPRJpq7
         GoBeEvZI5yKzVJwz3EbIFaDZ81zEXDIZJhQuCpuEqYDG6PriE6y7BEgY4poRmHjqFnex
         6B7VzGDBSJa+EYDt+JqSbPgXEmCyk+Tfrwte5sb/Tj+gNErNS5hdq0Y1PwS5Aqi4BWjP
         25wbgI9uGEAtdvUy5uhQhxOzceJRsXXVDZdfIwnJmltrz4d/X2pA+eoECrm5Okbp/Jtl
         oWbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KpT1MniI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FSL6qKLmevCEVAhy0gobVoEOQy5n7DZDVEaGwv1NwP4=;
        b=oPN4NADnp4TZD0ocO53uC4YDqMiiBr8LPEFGCm0AUy5wBSHD9l5ehunhvnPFBIDDUn
         WgjlW7b31fTKb10R5kY2A12WSIesFWcm0ghsMpPHX3NkY3eR9YZyNKyyKsZcJbuPKNIs
         7JcWZr3uaiwaE8NVekCTojFxG06saBeRmDuLnWTKFyZipDTcFARlMKuhqp/FH1zhLQwO
         LpyEFpkNGTBnajhmnlcmAozL5DHvNVc/EJ1xL8A16bhrnc3YtrxKIwGLWprDV2efA/bX
         AAWDsTMzW/GEIzWnEFanN3t4BhTH5F2eCvA5OEXEgBDIvoT1SyoCiQsyvdh3KqUd5u1h
         KfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FSL6qKLmevCEVAhy0gobVoEOQy5n7DZDVEaGwv1NwP4=;
        b=Afbwb1pD7BWLaprPvJDh+nUfGS+2lNvYD/ZG3kD/0ZP9IbvpTBa1T17YTek86XP/YL
         nU7NanfZF0Q76X+za0OYTZ2upCjFRheL/bFfyC2Otf2hHRA/nNFTLNmjzJPLPth5IDtb
         9TvSVDzFlrgklAFH4JglXKNTSf2qSdVOydk0hTeNqXC7/2xT+bZ28308BkOkPFSk7FIK
         9M+pEUSepckrj+BuCrZjg8D1otUBY0TSUsFORmoJfzwVJykNXQB9NYDioFumCeFBu+tS
         ehaK7fhctxszMtR4jBfVpbRkdS0NuNkQCzFIw7x8sV2T1bwynTQTsizVOvjE/GqIPjCz
         iqfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HYL8aQjqidX8zJrsVWd/0GA9VrTOnbDMava7iT146kjvufCKO
	4KB6+2rVQAySrOqRUQW1sP4=
X-Google-Smtp-Source: ABdhPJwQK5vNpvYei9oHLxZQumtu/BlQRCYF799Q3ZIt4t//Vc3hdnHOld/vAQlvfJYfq+i7xP4VFA==
X-Received: by 2002:a05:6e02:de7:: with SMTP id m7mr23839720ilj.76.1620842618469;
        Wed, 12 May 2021 11:03:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:4a3:: with SMTP id e3ls750203ils.5.gmail; Wed, 12
 May 2021 11:03:38 -0700 (PDT)
X-Received: by 2002:a92:340a:: with SMTP id b10mr32192821ila.301.1620842618087;
        Wed, 12 May 2021 11:03:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842618; cv=none;
        d=google.com; s=arc-20160816;
        b=zmREvmrjYvjJqmOtiMDv2egBDn816g1TicnND3Lu+B+m0qtGcQmG63twccSx3RE73m
         CN/uL2y8BijsvKwgEQxLuE/cay04QsghWHlCMVX5ljJKNZvcIjuQHSnC0/0oHSWn38H1
         d2Bwhb5KkK8bu+GD60LifyZ6g8dkWFDQzqxQwbOqdpPmq59Dpui6QBDSnjSgG17ePpww
         WXKyVsT4p5UqGmnj/gO/UxT65pTl+ZpvkG5Tcvwx59QHQBh1TdG1OSkJlqP2OikZ7ZjU
         xWq3vrxnh9Ulo1kuV7ZkebF4puKRN7bqT/StBjW/P8BnowlvJbZoKdkzhT1y5cXOlelP
         P94Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sL5aQapDIvY2DMTBUKdhqVClwdcBtTpMxmf3Obs9sOg=;
        b=BAiZ99iglPgwSbFp6F7kqdTbfEmTnyMX9JZ8a41STKfhIQY5SHEfXk/F6xzZEo9Ua+
         bls/zPV3yjWAXAF9hMCD6/pj+S1kwznZ2Jv0sJSJ+cSDM4qhcwB+eUH/vX5EwmpQUe+R
         I52LTSoOvsnSAiD1s1yzdKLGY4NFyDsUGmB+CTKt4iwoQ31/Mql4/YsBUjSKaiyYw5zS
         8c2KtToXLtMd75A5SOQKgWFI8ThOhXfancIqRUcold0sPlTFMVQXEv6Auqz/abfYu+D/
         +MqJGvmBcJ0nM5b8J4t+Y+fl6a/dvZPBp5oDGAQy608dWOf/4v4IC61JFVAWjwYXwvf1
         hKmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KpT1MniI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z2si77761ilo.2.2021.05.12.11.03.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:03:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4BE1C6143A;
	Wed, 12 May 2021 18:03:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 18/34] riscv: Workaround mcount name prior to clang-13
Date: Wed, 12 May 2021 14:02:49 -0400
Message-Id: <20210512180306.664925-18-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180306.664925-1-sashal@kernel.org>
References: <20210512180306.664925-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KpT1MniI;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit 7ce04771503074a7de7f539cc43f5e1b385cb99b ]

Prior to clang 13.0.0, the RISC-V name for the mcount symbol was
"mcount", which differs from the GCC version of "_mcount", which results
in the following errors:

riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_level':
main.c:(.text+0xe): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_start':
main.c:(.text+0x4e): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_finish':
main.c:(.text+0x92): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `.LBB32_28':
main.c:(.text+0x30c): undefined reference to `mcount'
riscv64-linux-gnu-ld: init/main.o: in function `free_initmem':
main.c:(.text+0x54c): undefined reference to `mcount'

This has been corrected in https://reviews.llvm.org/D98881 but the
minimum supported clang version is 10.0.1. To avoid build errors and to
gain a working function tracer, adjust the name of the mcount symbol for
older versions of clang in mount.S and recordmcount.pl.

Link: https://github.com/ClangBuiltLinux/linux/issues/1331
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
 arch/riscv/kernel/mcount.S      | 10 +++++-----
 scripts/recordmcount.pl         |  2 +-
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/include/asm/ftrace.h b/arch/riscv/include/asm/ftrace.h
index 845002cc2e57..04dad3380041 100644
--- a/arch/riscv/include/asm/ftrace.h
+++ b/arch/riscv/include/asm/ftrace.h
@@ -13,9 +13,19 @@
 #endif
 #define HAVE_FUNCTION_GRAPH_RET_ADDR_PTR
 
+/*
+ * Clang prior to 13 had "mcount" instead of "_mcount":
+ * https://reviews.llvm.org/D98881
+ */
+#if defined(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION >= 130000
+#define MCOUNT_NAME _mcount
+#else
+#define MCOUNT_NAME mcount
+#endif
+
 #define ARCH_SUPPORTS_FTRACE_OPS 1
 #ifndef __ASSEMBLY__
-void _mcount(void);
+void MCOUNT_NAME(void);
 static inline unsigned long ftrace_call_adjust(unsigned long addr)
 {
 	return addr;
@@ -36,7 +46,7 @@ struct dyn_arch_ftrace {
  * both auipc and jalr at the same time.
  */
 
-#define MCOUNT_ADDR		((unsigned long)_mcount)
+#define MCOUNT_ADDR		((unsigned long)MCOUNT_NAME)
 #define JALR_SIGN_MASK		(0x00000800)
 #define JALR_OFFSET_MASK	(0x00000fff)
 #define AUIPC_OFFSET_MASK	(0xfffff000)
diff --git a/arch/riscv/kernel/mcount.S b/arch/riscv/kernel/mcount.S
index 8a5593ff9ff3..6d462681c9c0 100644
--- a/arch/riscv/kernel/mcount.S
+++ b/arch/riscv/kernel/mcount.S
@@ -47,8 +47,8 @@
 
 ENTRY(ftrace_stub)
 #ifdef CONFIG_DYNAMIC_FTRACE
-       .global _mcount
-       .set    _mcount, ftrace_stub
+       .global MCOUNT_NAME
+       .set    MCOUNT_NAME, ftrace_stub
 #endif
 	ret
 ENDPROC(ftrace_stub)
@@ -78,7 +78,7 @@ ENDPROC(return_to_handler)
 #endif
 
 #ifndef CONFIG_DYNAMIC_FTRACE
-ENTRY(_mcount)
+ENTRY(MCOUNT_NAME)
 	la	t4, ftrace_stub
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	la	t0, ftrace_graph_return
@@ -124,6 +124,6 @@ do_trace:
 	jalr	t5
 	RESTORE_ABI_STATE
 	ret
-ENDPROC(_mcount)
+ENDPROC(MCOUNT_NAME)
 #endif
-EXPORT_SYMBOL(_mcount)
+EXPORT_SYMBOL(MCOUNT_NAME)
diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index 857d5b70b1a9..4f84657f55c2 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -395,7 +395,7 @@ if ($arch eq "x86_64") {
     $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
 } elsif ($arch eq "riscv") {
     $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
-    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
+    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_?mcount\$";
     $type = ".quad";
     $alignment = 2;
 } elsif ($arch eq "nds32") {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180306.664925-18-sashal%40kernel.org.
