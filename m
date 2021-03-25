Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2FB6SBAMGQE53K5T7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A252E349C5E
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 23:38:34 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id u12sf5049753pgr.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 15:38:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616711913; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4B91pg844uONzpk0qxtDtYrPUtYAsft2wUxybKjA41zsi5TxPL2MfKm3nyc/nBo6s
         e2AOJznXE0/ODZfHMvyhwKWzSiZLKDSu0A37p4TfQyF+AkW29Dz+7qeL5jUMVjpWGcbf
         FjHVoPPvUXNY/DTi/VMKmnYRxEw3R9c23R+pEPgbABX6npLwfJ7YkuqMnNtedt0Q9Sv/
         mrSMXyBTdfoVF8lowFyjScQ+nMmUriLWJkTvT8aq2rZlpNZfIKoVhy2fp1ct7/xp6rmO
         1MHk2nCGwJ39cCki1LGWDQPFOw0VKemX3VMvhUl+ur7j2wjKBM09BPDQN4dCMuxvnDuN
         Ghmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YikF4UP3ZnSS9sL3nK//vr3xlW3IgaG91E/j4m4GON4=;
        b=jUVbFIjp4yUN14rRViP9pBHNku7pkTi2dr4wabRsk9ipTHlvhIeqZHYHRpuoyXPzFm
         yzTIyLpQ1S8j6iFmRBspnUK4YUQ/rEgsbuzEZQXMrevvdMCZspWhxc+7ttr2+OLhVcb3
         TXPnxM/SPrxMhctTfDHkSHAMCYowElhyHtUjUKYWSxSxFZpcBvE3O2uwruWxjgUJkHoj
         7376XYeNEVa2N6M0Zzo4SclkMxhEabJxKn8wEPp0YLVljN9bXzAzg5lAu8iW14ImYlI3
         9/+C7ha/AQozgVSLZ24vxDeqxOINGtEZBxcB+hO9uPXCtlCTrbVquq87ktqD+dtWSq59
         X79A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LgZ2Xfmo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YikF4UP3ZnSS9sL3nK//vr3xlW3IgaG91E/j4m4GON4=;
        b=MyF2pOKBUK7uOroheKxF/g7z8WDpkKQKsZOZLMdWdurL4M5SrgqPzC+d9j1AvHZthK
         8x9Qz9agA27oYco/TwIMdqZg6DqCIV5964w2ui302kJOppqBPKhYBaEZAZU9pBL68W/i
         yqsffjr1Xft2zMJARlBFTLByc9UvOek0LNlDYSat4/pkrxz0ztvoEjVZtKlDSQEofzAQ
         BWX4h9P7+Cpv2X3F5KoLmDThvaAxYXW2PyutyD+vdlMaeChNTxhfOTwz2H06zfTK3v28
         D+ritFEhfgXFiiYZGfFHYpbByQTJO5LELOtmp82z/r5fYudOJpTVq2iAhkFZ9LxGGzjE
         nYRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YikF4UP3ZnSS9sL3nK//vr3xlW3IgaG91E/j4m4GON4=;
        b=HijjFnCl39BQ6U92jEh8a33mcHn7Zq/rBUpxuJ7qoy4k15Pz3+4Zrbzp6PSPY9ETaG
         Xs3TKFOhMjGMg1rsIVbjcZXKJkQJqaEm6iD9isih0t6mvm4ymbrk9BFQm5MIL8HRsRhx
         /YIY4F+zj0XF//76uhHGbIK8cnfj7yXiW0IzIEs58MH9gH9DSyFUUa7eqTXCrUvRhHb2
         fyxZwa4RNrtrNOfGo5MKCDyC+yqXMU4o04MT7T0VKM+SZvoYUV+lSPHNO6dCkTZGwHJk
         7Nd0CIl/uagdkS+5iUKn+cEBgHtX9UJuC2YDOGSxN6KhjGeyqqiQy3GXx6bCzZu+xXf4
         +nXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53164fZiWf2QZP4tYAiojAXqT7qqJyoHEdxKRpMQYBd9aRaZVQ0k
	8adneFOH2Bplgj7w2NTtyjQ=
X-Google-Smtp-Source: ABdhPJxUChBfANOv0Eu0upw36uPZ0CVga2z5KijqF0t19ps8ZTgEYEON+aLO1S3jAJvLvB6b5SuQ/A==
X-Received: by 2002:a17:902:a606:b029:e6:4c7e:1cba with SMTP id u6-20020a170902a606b02900e64c7e1cbamr11800095plq.46.1616711912387;
        Thu, 25 Mar 2021 15:38:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls3989199plq.3.gmail; Thu, 25
 Mar 2021 15:38:30 -0700 (PDT)
X-Received: by 2002:a17:902:d78a:b029:e6:e1f:f695 with SMTP id z10-20020a170902d78ab02900e60e1ff695mr12029250ply.82.1616711910405;
        Thu, 25 Mar 2021 15:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616711910; cv=none;
        d=google.com; s=arc-20160816;
        b=Hdobo/P2k2BagBS38avriFqSnK3cIUnXsMTn8LfT2RBepGTeSXWcmyRv2/ECeLjFep
         8BCgFJvPCzG4jQvQqRKs4qnrVUKAzN96u7Lxq5a6Bg9LGw6oXC4ktAz5shI1EC1I9Nu3
         ZJrMwctmrg80cm9+9UDhHky9CfMde2/SsYBxtK29f7RLG2FvLtJ3MGTT9QzQgtiWisdp
         q+dngMcBiu3inI0iGGLnbiRt46+ymXSd8VmbcgNd3txJdz9AIWDsBY9yo5XnkNqVSn8y
         A/0rn5mvciOV5v0O6QX/lZq5dSyyQm+eJj1JhdlEEStaq8+d1JLRJGegQIQMOvGoObKH
         ex3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Nqto8jzNVxhJi7OPUvvR1+nxGISVs6jLUc/6ynBS56A=;
        b=lS1REU2xjH6qw1Nse4U5g/6BK6pvmRRg0XNu5RSuUvbKIX9LZWqeV0EZyBtVqgfJaX
         SKubb+uNQ1ZDCfMWxgzDNq9egO+zgiGt+627RRZtmGcloL4bDmiSDnCSfPyLHkb0jaj5
         bboy04PkffopSDe81yxc2zog4cOqu/Hz8NSycJc8ayBgGJF7iRnQbs/tu0+bM2QD/Jha
         st1BWNi0y8lkkmbsPA+HhUihXF4vn2NPI5xKcDKYe03Cn/Tq3GwNAyCLZhEkhXfHOFIQ
         M5imOdShnxNRK1gkvbCa0tDRmPbTzumW7H3Fb7OMfs9crsNk2etL77bdlfU6sCn1aVI/
         x7eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LgZ2Xfmo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id md20si650770pjb.1.2021.03.25.15.38.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 15:38:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 980E261A3F;
	Thu, 25 Mar 2021 22:38:28 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 2/3] riscv: Workaround mcount name prior to clang-13
Date: Thu, 25 Mar 2021 15:38:06 -0700
Message-Id: <20210325223807.2423265-3-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210325223807.2423265-1-nathan@kernel.org>
References: <20210325223807.2423265-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LgZ2Xfmo;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1331
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
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
index a36df04cfa09..7b83a1aaec98 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -392,7 +392,7 @@ if ($arch eq "x86_64") {
     $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
 } elsif ($arch eq "riscv") {
     $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
-    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
+    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_?mcount\$";
     $type = ".quad";
     $alignment = 2;
 } elsif ($arch eq "nds32") {
-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-3-nathan%40kernel.org.
