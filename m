Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGENTTVQKGQEEN4KNII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 62552A0DE1
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:25 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id o201sf1069578ywo.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032984; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xu1bMQuoaw5S3vexpliNLY4E/bjQiZW/ZH+uKFSbA4qmg8Iriyrers9czXM+6LQ/3b
         aegSMy1Nc+ogGe+min2r3J4G1INpv7mGNjg4tTeuCVBG+bIvvLRDFzWlTL88J7tcsldR
         BRAsaOXgqiNSorUu2zoKC0iRRJNwjbjcP3NSkV3ev4ZT1iMaMxwT/ZOc5oE7BaU1ogzK
         9n0QAbGjy7zya31PaK0TCJKeyDfibXxKW4rMyQJAAfRFWQuqSDOHnWUflvH7XHOihmjE
         uKXR4zdqkBKIIklb6eMwZLRfSSNZqC8KFsr3XokVhKW7wSinnFfefALKNZI2OoiW8U5D
         gLJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=uqJJfZtXrk10VET2oG6ur9HOFc9Un68Wgjr1HvmnYhs=;
        b=VZ0Q2YWCbC846LtrWF7mdaciFeql0pLm8Voof9cYNT921H0qVSPnMsrhSuJ0jKJ2eA
         o00govsrKVxeIAbo7WNMkvVx4SMdwCdy7HTGGToJl+V9Q34W/vxhZLIJ2LTGMiVe4EqI
         dzhQzk5X2RBR+KpShZoVaWmobwUzfcO+Ubeh4MzgvOlEBo3nG54pPsBhGZkyXlXFUXVz
         UWMDNVQBcmx81rZ0Fl5v0ROExMPqouuN/jaD9hGAf3mDjXbSKuDQi7+GExg9R5egyS98
         uq1QX/SHWnvWyQN0qkHYJ/kvrSr8jHNyBkBoM+ZBhZVWEJum7Lsukky8kqR6Pl4LLAdn
         tFTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CMVAnmm+;
       spf=pass (google.com: domain of 3lwznxqwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3lwZnXQwKADIbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uqJJfZtXrk10VET2oG6ur9HOFc9Un68Wgjr1HvmnYhs=;
        b=erRWsy3pjXjJVztPjLyFwA4SdIWKg/uT71Pvd27Fqy27ac2VrxEMBg2mhBsaTP94hZ
         4FkwBx8B/iCHuDVW0zYVSZbBk//lO6mbKLnLIJ+0/XnAC1pU/BmhCjYEnvl30YaVHdOV
         ryt4hDyZwBNFIe+8gMv6ni4KeY5hcSkrAbokWj1DctWWYkOs2QuTi7RrC6o81fJbBr9f
         C4JKyJ5+grMECRnuIUJuX3lEm6guMXuNeb5LQ575dRsh7SD+UhWAg5jTC+EQ9atEEtV5
         VPHT9cp96qBHjkvRShcfp1j+MSEHstc18eevsY/Bsf/bYTa7Z4tunkaahqCBKULbfxIx
         +L6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uqJJfZtXrk10VET2oG6ur9HOFc9Un68Wgjr1HvmnYhs=;
        b=Y027233aRzhMz1pjAB2rORkoVRny515/h7DtVni9FrSYVvgep6B0o1iFbVMa+vBxkZ
         xCAAgQRlmVaoj85vifSiA/XsASXktzAFhVgnxKgP5X0qxyUpLn8okRrnMvX1jzwNHz7D
         M2XHhfrbwA/85JF+zh7VOKRQ4PWwm+v8kosIfLsX2vRii6yb/pVNaK/oiZOydvTFAk9u
         HDIPS0jn1EQJSDXVkBnDXsvToUi7utFG9O0GTsv3Ocv1IvCuB5eG1n8TeDhjb4xBbOCu
         sR8ocI6TsV2Tnp6JkQwL3FU2uYH9f2hUOj1PtQJ/xMckiJ/9tFr/wCG50ex65cVMqZyc
         CS1g==
X-Gm-Message-State: APjAAAXeNv3ZJ5y5RL6L+q0gPvssL7SjcA8bdenX8mhPGsmCex/Vxa0a
	QFrJ9jdgpnjGYcdIHYcmrCY=
X-Google-Smtp-Source: APXvYqzRdNvyyuBQjFRMoCkaw1g0ZBNC9qDfMWGOGke2/tDZ7V0P4Tu6WEhxrR9Z5+STdgt5PrJZCw==
X-Received: by 2002:a25:f20d:: with SMTP id i13mr4803437ybe.170.1567032984402;
        Wed, 28 Aug 2019 15:56:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:be47:: with SMTP id d7ls92368ybm.14.gmail; Wed, 28 Aug
 2019 15:56:24 -0700 (PDT)
X-Received: by 2002:a25:2a4d:: with SMTP id q74mr4893530ybq.498.1567032984198;
        Wed, 28 Aug 2019 15:56:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032984; cv=none;
        d=google.com; s=arc-20160816;
        b=D8REjqalvzkU26MglI8QJjS3ujx8EKirzDdlwfnUBwhQMSPJW4xowCAfBESjXou7f+
         jSdI1COw6QHKfDDBThK6zDmdBgITctzWXWwqsBCTK1yos3hKEhqQ22Oq/L6nQvnzh3En
         Kaez11C5/D5ciwJ/jP5ZucOPjP6N2Ed6rO44THRoZmFsbzoQnWmcT3Nm+fybdS/PHGRr
         97sxz0UZLujMYqpKshY7N2PPLPs07tjqfGb0wIJLIRhF72ZzT3DRamtvevmqdgpD1pbK
         //SfzEHh0RL0zPcX9BDuQhrsLBllr08dQafPqbvkVLm5rb4PW1pPgeqEg+9rv9RL0cla
         tz8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tRdkLp5blIPkAjhL3VcWLqU9CGzkwns+t7XttYIchcI=;
        b=Vn/oTpu/Bl5b7Bkt8ifmxit/gsn3OzHz9F+65jkVqTbGxr8DoyxbjcQTXHA1GfegiR
         H0Nm1A/nkG3wRag9virOoqyfISwTJrXaQsoS3rGnwNjoUjLWY9BuCa2C1JWgWya047/F
         0mhngy5xeDXP2j3WmvtQLwsdvx5MxWZimfce9pjXVZUTI/CpWZdpr08dxxSwxMe/SmA6
         RDfC1eNq98cO5no+ysOoRgmbEaMXUx1zstwpNZEuj5iZTmimj7vJ3/eU5G5W9dWUAR6s
         5c1BfXnlUuUXUONe95Gc1IJq7/WnALaaRD5Avn8NQHk1JJEGJQSw+EmVe3EZ8kp7eDyD
         Ai9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CMVAnmm+;
       spf=pass (google.com: domain of 3lwznxqwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3lwZnXQwKADIbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id n40si34040ywh.3.2019.08.28.15.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lwznxqwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id u24so799268plq.22
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:24 -0700 (PDT)
X-Received: by 2002:a65:638c:: with SMTP id h12mr5450926pgv.436.1567032983334;
 Wed, 28 Aug 2019 15:56:23 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:31 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-11-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 10/14] x86: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CMVAnmm+;       spf=pass
 (google.com: domain of 3lwznxqwkadibrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3lwZnXQwKADIbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/cache.h       | 2 +-
 arch/x86/include/asm/intel-mid.h   | 2 +-
 arch/x86/include/asm/iommu_table.h | 5 ++---
 arch/x86/include/asm/irqflags.h    | 2 +-
 arch/x86/include/asm/mem_encrypt.h | 2 +-
 arch/x86/kernel/cpu/cpu.h          | 3 +--
 6 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/x86/include/asm/cache.h b/arch/x86/include/asm/cache.h
index abe08690a887..bb9f4bf4ec02 100644
--- a/arch/x86/include/asm/cache.h
+++ b/arch/x86/include/asm/cache.h
@@ -8,7 +8,7 @@
 #define L1_CACHE_SHIFT	(CONFIG_X86_L1_CACHE_SHIFT)
 #define L1_CACHE_BYTES	(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #define INTERNODE_CACHE_SHIFT CONFIG_X86_INTERNODE_CACHE_SHIFT
 #define INTERNODE_CACHE_BYTES (1 << INTERNODE_CACHE_SHIFT)
diff --git a/arch/x86/include/asm/intel-mid.h b/arch/x86/include/asm/intel-mid.h
index 8e5af119dc2d..f51f04aefe1b 100644
--- a/arch/x86/include/asm/intel-mid.h
+++ b/arch/x86/include/asm/intel-mid.h
@@ -43,7 +43,7 @@ struct devs_id {
 
 #define sfi_device(i)								\
 	static const struct devs_id *const __intel_mid_sfi_##i##_dev __used	\
-	__attribute__((__section__(".x86_intel_mid_dev.init"))) = &i
+	__section(.x86_intel_mid_dev.init) = &i
 
 /**
 * struct mid_sd_board_info - template for SD device creation
diff --git a/arch/x86/include/asm/iommu_table.h b/arch/x86/include/asm/iommu_table.h
index 1fb3fd1a83c2..7d190710eb92 100644
--- a/arch/x86/include/asm/iommu_table.h
+++ b/arch/x86/include/asm/iommu_table.h
@@ -50,9 +50,8 @@ struct iommu_table_entry {
 
 #define __IOMMU_INIT(_detect, _depend, _early_init, _late_init, _finish)\
 	static const struct iommu_table_entry				\
-		__iommu_entry_##_detect __used				\
-	__attribute__ ((unused, __section__(".iommu_table"),		\
-			aligned((sizeof(void *)))))	\
+		__iommu_entry_##_detect __used __section(.iommu_table)	\
+		__aligned((sizeof(void *)))				\
 	= {_detect, _depend, _early_init, _late_init,			\
 	   _finish ? IOMMU_FINISH_IF_DETECTED : 0}
 /*
diff --git a/arch/x86/include/asm/irqflags.h b/arch/x86/include/asm/irqflags.h
index 8a0e56e1dcc9..68db90bca813 100644
--- a/arch/x86/include/asm/irqflags.h
+++ b/arch/x86/include/asm/irqflags.h
@@ -9,7 +9,7 @@
 #include <asm/nospec-branch.h>
 
 /* Provide __cpuidle; we can't safely include <linux/cpu.h> */
-#define __cpuidle __attribute__((__section__(".cpuidle.text")))
+#define __cpuidle __section(.cpuidle.text)
 
 /*
  * Interrupt control:
diff --git a/arch/x86/include/asm/mem_encrypt.h b/arch/x86/include/asm/mem_encrypt.h
index 0c196c47d621..db2cd3709148 100644
--- a/arch/x86/include/asm/mem_encrypt.h
+++ b/arch/x86/include/asm/mem_encrypt.h
@@ -50,7 +50,7 @@ void __init mem_encrypt_free_decrypted_mem(void);
 bool sme_active(void);
 bool sev_active(void);
 
-#define __bss_decrypted __attribute__((__section__(".bss..decrypted")))
+#define __bss_decrypted __section(.bss..decrypted)
 
 #else	/* !CONFIG_AMD_MEM_ENCRYPT */
 
diff --git a/arch/x86/kernel/cpu/cpu.h b/arch/x86/kernel/cpu/cpu.h
index c0e2407abdd6..7ff9dc41a603 100644
--- a/arch/x86/kernel/cpu/cpu.h
+++ b/arch/x86/kernel/cpu/cpu.h
@@ -38,8 +38,7 @@ struct _tlb_table {
 
 #define cpu_dev_register(cpu_devX) \
 	static const struct cpu_dev *const __cpu_dev_##cpu_devX __used \
-	__attribute__((__section__(".x86_cpu_dev.init"))) = \
-	&cpu_devX;
+	__section(.x86_cpu_dev.init) = &cpu_devX;
 
 extern const struct cpu_dev *const __x86_cpu_dev_start[],
 			    *const __x86_cpu_dev_end[];
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-11-ndesaulniers%40google.com.
