Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRGMRL7AKGQECB44MIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id C435A2C70A5
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 20:34:30 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id c24sf6204624pfd.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 11:34:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606592069; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+eAkfqT1JVvz91WF9Y2uDp/D5m5zZ5739o5RJCcpPNGiNgjaPCOEayb7i38s6lH/x
         V7vWEbTfB+Xt9OGQteZkic6sWw9xxrVRz6Kc1D8/gpf+GnwApEovdv2/VlgpFx/gktqs
         jznpe/TTcTe6PbM9c6UX1IAnNvETt5tLtAFJPSzegRWWp4Cr4t+vfLtGjJqK8QA+1Wns
         vq8iLLG2LNL/lYGJqx/zmLpTWOY70fTadc0GwD6DJkxZxrXAoBsDx/rMBVnvelCd8X0p
         6jTgg76xiNLK9lP28ZPuld+eiC9AH56dwlwuG8iqMMppMSxIUgn9HHtqxevyTg0ek57v
         PcVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=aqHlBBh4MK3rkPJesAKZemM+fdad1vVLHMFjQ68SPEc=;
        b=v0v5DnLDaC8bzD3ThrVdScFs84/oiC0FBMxxdN4l2Cjii0fCCx8Cd2KTfr0UlFvY5J
         0LWKU0ipZIkCJdiHz6ASnLAQPDv/2O7/3aNv5ySmox7TxLDClMoj52IfdqmMUq5MHrZw
         JwUTMOjp780g7i1MmByG/HksVo+oVYkbbmRQ22AZP29DvemmWChS/k2GPVWreOWS4sHq
         PSDqYJmnfcm11/wU85GJWnuLYgjiE/2tGIjpe1e6QNfX1siO1KKjLJug9ZHE3tPtWsUG
         RBLMRqO2Vf4Akj/QX0QYgoti6uGRFBKz+90ZMpJ9RyVTVWcr23qJeGg9/KXHOO+c3It3
         qUBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=a03Y7n9C;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aqHlBBh4MK3rkPJesAKZemM+fdad1vVLHMFjQ68SPEc=;
        b=iU7nrZEGRHZnar02krytW2bj+WoKczhoR6WOnNyQBYrQFjTHYc9tiU/USf1llibKNd
         eVMXhDqed4SYHIfPJEisI8Pf9B93rg43E7toWQXbujcxWrC/3Xb6ohyl5tjyx+sTpN0g
         BbDca8o3GhExRsbYFlwgiFr905i0LKL467OLk6OKcvT0sraZ1W32wu+ySj1+4YOTjWQH
         SvhcfjMQezAnRJWlfNFTeOfV9BBEkMznetdk1fiA1KXcdzMcLxYIwvD+rvYCIG9gGSYN
         s+v7W/mXU9pslELjt1bE8QsVUmxPsspRmIiRpMwqSpgsuV4/FmtLOprfqdIokgPU+2Tg
         Xy6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aqHlBBh4MK3rkPJesAKZemM+fdad1vVLHMFjQ68SPEc=;
        b=Mb08e3x+sKgRPE2BMS6JtBOXnP2/tzsBrJpoZH1fSoZwq8rX3zqRdv8yOsjNOkFsqS
         yEiVe37WCSHEBT6sSAaEBG6I9LI4p2Z6QS3pmMdJ4dL1Jw5r3a4/PDMasBTWCUASM+d9
         +iysrmgs7iau8ZJZs+te37q6as9BkP1wCH3PI3hSa+NJkWrXb6KpNvouRM2jbN/fj5xe
         g29sXb7uOOMyj1eyKwTXPdv4Ih7Eno2033o3Xe+obgbmJnux9wYl5tBv91Glq8TYXVDs
         Qda2DQyF9T/nteeA5e5qyClII8rQpoMIFBjHB4/EpYhZa9h/XpaW1edjgKI42pRcIvlr
         RNbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338Llfq+xJrx9RD4P2js5TV0RuhJcSEbvOZ4n+0OP+c2cYEZqfB
	Nlc8fUV8I/if3fCWnCYiTZY=
X-Google-Smtp-Source: ABdhPJzg4CfZC50kMBI/jI4XYQcQjrgnlIfAxT4vqsFwACGd9eWYd47/gvb8vLUNr+HkfNxnFG1k8w==
X-Received: by 2002:a17:90a:7e0f:: with SMTP id i15mr17365317pjl.93.1606592069111;
        Sat, 28 Nov 2020 11:34:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15ca:: with SMTP id 193ls3157727pfv.5.gmail; Sat, 28 Nov
 2020 11:34:28 -0800 (PST)
X-Received: by 2002:a62:e204:0:b029:19a:9f74:3882 with SMTP id a4-20020a62e2040000b029019a9f743882mr10598268pfi.19.1606592068491;
        Sat, 28 Nov 2020 11:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606592068; cv=none;
        d=google.com; s=arc-20160816;
        b=itp4yArjMJZKa6x1TVMZuMOn6kctodF6Xg9be7cH/vIPEYCTszTHo15z7n5xc3iHmy
         5rD+uSyx7Hbd5Z0j39Cwd77eP0dqFMvrksGhlVdnIzUxJ33Ihg2XzD8SorsMzftrvfW5
         zLrQUjp00RlJiAdwIqffxhMDCJdNwqEfDru6yCUrkJbd4jAUTi4xxY1Yo8TjI99aikrw
         oJuNsiy9IWhirzPsHrmMR6XQw/vKokIbb9ONijSqmoj0K3CGCnKrVHYgQ5yvF2UZEbXS
         dlgI4uao07Q/2s89Fz/vs4Zv3CNHyA0DotaXSAFtqWcq2CAjwzP0BIWCzNUK4w6FsEkJ
         Wdog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=jLumgvXrvZOXOwLum8VDFamzZ4g8hoOKUXqB+QzEoCA=;
        b=f1c/ex6BXuGUsybUuLctYh/gl4K8pJiqfHSx/dUOTfpb2R8jQxuWH/ID4yqLDVIMsQ
         VJ3z3xIJ7zpGcKtrmPDw4i9X/w2+eO5ysssQN1QMbBeNv19zFnSeuT4iBI73SbaHN6OF
         wKS4crliDxivwjXvVu3umYygD+jwCQfjVUJCGfh/ek5nhM+a/VD0yTpDcmoa2f7i0oFW
         i94DS5DM2HuOaDRsNzNgR1TMhUuwr/M4E9C6J+LfkmJz+bZf4w1fVARf6YHAdG4odH7q
         jXO4BdkxMRBKBE9tpi2v9sCF5CdsmHxcMfQ0FLB2sUafCZkd63bhyuEKRJC30UjApT0O
         rRhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=a03Y7n9C;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id o2si899388pjq.0.2020.11.28.11.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Nov 2020 11:34:28 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.RMN.KIBA.LAB.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 0ASJXeQS028710;
	Sun, 29 Nov 2020 04:33:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 0ASJXeQS028710
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Shuah Khan <shuah@kernel.org>, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
        netdev@vger.kernel.org, wireguard@lists.zx2c4.com
Subject: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
Date: Sun, 29 Nov 2020 04:33:35 +0900
Message-Id: <20201128193335.219395-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=a03Y7n9C;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Revert commit cebc04ba9aeb ("add CONFIG_ENABLE_MUST_CHECK").

A lot of warn_unused_result warnings existed in 2006, but until now
they have been fixed thanks to people doing allmodconfig tests.

Our goal is to always enable __must_check where appropriate, so this
CONFIG option is no longer needed.

I see a lot of defconfig (arch/*/configs/*_defconfig) files having:

    # CONFIG_ENABLE_MUST_CHECK is not set

I did not touch them for now since it would be a big churn. If arch
maintainers want to clean them up, please go ahead.

While I was here, I also moved __must_check to compiler_attributes.h
from compiler_types.h

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

Changes in v3:
  - Fix a typo

Changes in v2:
  - Move __must_check to compiler_attributes.h

 include/linux/compiler_attributes.h                 | 7 +++++++
 include/linux/compiler_types.h                      | 6 ------
 lib/Kconfig.debug                                   | 8 --------
 tools/testing/selftests/wireguard/qemu/debug.config | 1 -
 4 files changed, 7 insertions(+), 15 deletions(-)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index b2a3f4f641a7..5f3b7edad1a7 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -171,6 +171,13 @@
  */
 #define __mode(x)                       __attribute__((__mode__(x)))
 
+/*
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warn_005funused_005fresult-function-attribute
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#nodiscard-warn-unused-result
+ *
+ */
+#define __must_check                    __attribute__((__warn_unused_result__))
+
 /*
  * Optional: only supported since gcc >= 7
  *
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index ac3fa37a84f9..7ef20d1a6c28 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -110,12 +110,6 @@ struct ftrace_likely_data {
 	unsigned long			constant;
 };
 
-#ifdef CONFIG_ENABLE_MUST_CHECK
-#define __must_check		__attribute__((__warn_unused_result__))
-#else
-#define __must_check
-#endif
-
 #if defined(CC_USING_HOTPATCH)
 #define notrace			__attribute__((hotpatch(0, 0)))
 #elif defined(CC_USING_PATCHABLE_FUNCTION_ENTRY)
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index c789b39ed527..cb8ef4fd0d02 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -286,14 +286,6 @@ config GDB_SCRIPTS
 
 endif # DEBUG_INFO
 
-config ENABLE_MUST_CHECK
-	bool "Enable __must_check logic"
-	default y
-	help
-	  Enable the __must_check logic in the kernel build.  Disable this to
-	  suppress the "warning: ignoring return value of 'foo', declared with
-	  attribute warn_unused_result" messages.
-
 config FRAME_WARN
 	int "Warn for stack frames larger than"
 	range 0 8192
diff --git a/tools/testing/selftests/wireguard/qemu/debug.config b/tools/testing/selftests/wireguard/qemu/debug.config
index b50c2085c1ac..fe07d97df9fa 100644
--- a/tools/testing/selftests/wireguard/qemu/debug.config
+++ b/tools/testing/selftests/wireguard/qemu/debug.config
@@ -1,5 +1,4 @@
 CONFIG_LOCALVERSION="-debug"
-CONFIG_ENABLE_MUST_CHECK=y
 CONFIG_FRAME_POINTER=y
 CONFIG_STACK_VALIDATION=y
 CONFIG_DEBUG_KERNEL=y
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201128193335.219395-1-masahiroy%40kernel.org.
