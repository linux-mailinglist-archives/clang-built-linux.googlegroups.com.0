Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBV5R6CCAMGQECMKXVXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C3A37D1C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:05:12 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id d3-20020a056e021c43b029016bec7d6e48sf20272472ilg.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:05:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842711; cv=pass;
        d=google.com; s=arc-20160816;
        b=HY3LQEUJ6w1paEgNRQ8VBdptqj+joRKyPOnxbz8lCKdlGUVmKa5RBvTutZXDRE1WP7
         ZF5mUQ+CAxpQXAFo33AgIFxF884e/X08aDEAwDofVk+iTBegSKuUqmEHidm84pRszgrd
         yGPlimvSMipukaXvfq4IqT7y1v7t1d99Z9iLv0Jxsnxg5PNE+P5Bu702uxrDJcO/avgO
         MhzT0y51soMugbppI0srwQFE5xTVHom+S5EkJ3uxLCLveZGGqX95w9Rk3CKr0NN/Evsr
         pA91mwH+LYjpMCa//0JexxgZVLx3RFzCKaknBsKS2b/dYhsRqIpsZcO90vI4psD98U7n
         YY9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uDWbXPHII6wUVQfOB/Lg7voxs06QAxRE9ymTEkmxgSw=;
        b=apUN6w4rONsICkMFdTUW9EhVLpV5E3cSq0AaM9Kfl0Jk5jnJIt8XN8huN65y6d7kqO
         0J3I+pR2O7Oz3rIZE29F+6dkBLL1uF42ZEIqAVxgOG/mBYTA3ChENYHsXvSPG6WQgE7x
         bmY0EanyKvF7TqXAYimiQ6XeHQCTAnQcY8mcJ5eKIUzagwj87MzpQPDd2EPMItz6AIiC
         Ig9HIiHR488ty4IJF4EAXudpZIDRxpoRX4ySOLCvGLY9hPVhttV6wvW9YnvoxdUeFfTY
         SquacVS8J/qAf0gB9ooxVGRnu7Buap4k0bRakWIxqydD+TbdRI+7zN3d91sGz8Isclxx
         BR4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pG920Nu4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDWbXPHII6wUVQfOB/Lg7voxs06QAxRE9ymTEkmxgSw=;
        b=LqHOqlY43ih1AXHb3vZ8ox/z+rp0RB+jvesZ124DdT9Wbi0zdSLqNaq1DjaS3txjfH
         ftIdWXfhx85rwNS/aTqhthd5yvygYYeL7ZDH44PBIr1ehbq5tsz+RZo38Qo6IdbShOMt
         K6/Nm2LGGdeS7R7Y0jADVn2ZfAcLOzz60O96Soc9e/P7/SUA3to2wq7EN3YY1pr6PdYL
         r8KojFtlZ160NoR6Gu4L4vwn9h/o/UlsjUwvUU9RCXBd/LUx5SRE9YyzFT+1aAydDLZC
         9dT5vEO9gX9ETdIuBW37qcwb3N6+JGQ+HANRMTUiiQciEgp5qhskjdcehmmtRhxMQE89
         Fpgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDWbXPHII6wUVQfOB/Lg7voxs06QAxRE9ymTEkmxgSw=;
        b=DJP7zTDwGAs0l3aDoREluMGuvfcbKd1ztCF3sFBiKOFEr28+54OrxVYeHNi5zNo5lz
         Alu6QiLFOps5wP8fybuHZ465wOkGcoNphBdIyAf6nJT5HI9ILdbMtRqKo7475WROaCJK
         OWiQZbVn5UtAlo2lsXHKfTFsV/dl5eMtXvH2LJb5kryzA990zt0ABpq6Me4iqEVov/KJ
         upBxEG3iXeW63+EHsl377+eKPTELG3gmlVHTDw0DtLIxFifdGdTkur7Yk+ZfeRjkMXGj
         E1+y/Kij7JfNryaiuiWAxDVS0kiWPXBYLbo7fGmh9QJtteuEXFQaPwrhkGyxTiW2nBAl
         wfTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530blIKPEFjyymSltrw+b/341sYdvGAt0XMw1w6I8duh2fbKRTKD
	1/4iB1hkkhRs/Xzd7PeO9sI=
X-Google-Smtp-Source: ABdhPJwpN3lH4G0qmBVLwhZm1eQhsKDAbBR79T177tVrM8IVFQizxpWBugB1uSq4uEBT2nJYyPWH1A==
X-Received: by 2002:a92:d191:: with SMTP id z17mr28169188ilz.13.1620842711405;
        Wed, 12 May 2021 11:05:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:6aa:: with SMTP id d10ls606662jad.10.gmail; Wed, 12
 May 2021 11:05:11 -0700 (PDT)
X-Received: by 2002:a02:a992:: with SMTP id q18mr16321210jam.87.1620842710939;
        Wed, 12 May 2021 11:05:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842710; cv=none;
        d=google.com; s=arc-20160816;
        b=PJ7QRjbpD7hIU40zp5IRbgHMUZB1dcMsY4QYSjvaRHjTKuhAuUtT78dSruJij69usG
         zEFgETA0LPPs53kEgVqrCTH+os0oGMmU9+eRDrwONkmbiYOOD2Cly8h46vjXyK1GOkgd
         K3nheu8FmRM+XERnbJykJt+dDUonVgCkNh7oyOtq4dUPV2pApG1+dPGQRLAzOA7IcPra
         3VM/+BBDmUNrA01rT103rdSN9rTXA5V+EFPYwQbIRiyPC2O2qK48Oq9pKfC1rZk4Hk/u
         i3gGQ08VZEZ7ioXvEDOZa3MYCnUHsnc8DaoUjXqInVPXjRK9EUifEQOsUM7ZJQ0wd/ke
         V/KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7kNYrkOWoj61b15q7zJ8fyJ5RvP9wYg4wrB+I5gonTU=;
        b=m6BfSSZeaCm7EvT6e5E47eOi0RbzIXIWDs+XZqIe8lW+Oz7aKyNHntF4pcDUIbN9Uc
         OtLNlHQ4vnpFoTKU9Dp1R1vXs0wR1nM2r7VgCTXbhtSsiKjnAPrLxrkoaTdUljlZfx4/
         TSY+UU5d9J255RtNv0RTE8PiqOrmv/UgkYFX3jxa61HxiD4Fndkcerkh4NPJOWb5E3tJ
         WNMkKHam4zNCkA62QRa6iMClHCZQSDcADlq0usil9sUcZKabResMG5o4Eldbp2ZNhA7+
         h689jZWYHxMSGxomCh5X8lBtMTr07UF3m/W3P580OOCWdCyK6BC/2/4XUltUz8HPJBud
         pXBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pG920Nu4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si58334iog.3.2021.05.12.11.05.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:05:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 267806188B;
	Wed, 12 May 2021 18:05:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 11/18] riscv: Workaround mcount name prior to clang-13
Date: Wed, 12 May 2021 14:04:42 -0400
Message-Id: <20210512180450.665586-11-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180450.665586-1-sashal@kernel.org>
References: <20210512180450.665586-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pG920Nu4;       spf=pass
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
index 02fbc175142e..693c3839a7df 100644
--- a/arch/riscv/include/asm/ftrace.h
+++ b/arch/riscv/include/asm/ftrace.h
@@ -10,9 +10,19 @@
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
@@ -33,7 +43,7 @@ struct dyn_arch_ftrace {
  * both auipc and jalr at the same time.
  */
 
-#define MCOUNT_ADDR		((unsigned long)_mcount)
+#define MCOUNT_ADDR		((unsigned long)MCOUNT_NAME)
 #define JALR_SIGN_MASK		(0x00000800)
 #define JALR_OFFSET_MASK	(0x00000fff)
 #define AUIPC_OFFSET_MASK	(0xfffff000)
diff --git a/arch/riscv/kernel/mcount.S b/arch/riscv/kernel/mcount.S
index 5721624886a1..fabddee90d1b 100644
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
@@ -79,7 +79,7 @@ EXPORT_SYMBOL(return_to_handler)
 #endif
 
 #ifndef CONFIG_DYNAMIC_FTRACE
-ENTRY(_mcount)
+ENTRY(MCOUNT_NAME)
 	la	t4, ftrace_stub
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	la	t0, ftrace_graph_return
@@ -125,6 +125,6 @@ do_trace:
 	jalr	t5
 	RESTORE_ABI_STATE
 	ret
-ENDPROC(_mcount)
+ENDPROC(MCOUNT_NAME)
 #endif
-EXPORT_SYMBOL(_mcount)
+EXPORT_SYMBOL(MCOUNT_NAME)
diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index bc12e12e4b3a..657e69125a46 100755
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180450.665586-11-sashal%40kernel.org.
