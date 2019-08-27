Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWFKS3VQKGQEWTPBYEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 651C29F44A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:57 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id a20sf210132pfn.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938456; cv=pass;
        d=google.com; s=arc-20160816;
        b=dufo/9EYDaxzgEPhXXzj+H2yLVfwTtnxUoT8am8K5bJ8ZX7lquOEWA0G5dOP+KkGdt
         LkZLSxwxlLIcK12E6qdvdKqsYTOID9kanKE8avn7wxz+X3iHw+4dxn+vU2mE5h4i8ltt
         j18LiNh4tJU5P1ILNbDN3iS3YwGVhQxsXi0xFcTTkeRkOWQMrQkisLIRMGQ1RjUz2d/g
         AKw5vo7yp6/qubbBzQsZbaUWHOIfnmLgW4mAIVOG6/ja8sqYRW12KqjzM5ohWcs7naIK
         aPywUbmNbo/TFiujvAwB2goWeHyRPHmLirYODKTsVCxJvNsdnfGmZ3TXJp8uXCxf6WGX
         PhMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=AohCQps+TIm+SNisIEm5XRs06bRWk4qtrR/ju4Lho48=;
        b=LEt6SFlRbmar7evXS6l3uL6R+ZaLVFzacEB0jwuBUyXQ/QlgO6tfT6tVEFtgLaPpyJ
         Et9j9qYBgFA+X0twV4ErLgX3gSqdAsINt8t+bH39K2ZEAuwAnPrm31j0oiPXja32H19l
         D2zNI3oVzVsh6uU0Zl1eAdH2YeXBKhoLXm5W9KhaRZt3r52emK3Wo2Yy+5v6QX2/ESni
         qcrlnqkEu7fXhR0SdYsA8Kdd1YqFvDAwiZ3KscUAcChV4xK/ZGNITkpGp/LuQuSUVMOG
         EbaFHFjdn27WmuNSuoQuGUf1B34mTR0g6ZJSGybWW+rhpBM2B20t6vSVug2EL3e/8Nmf
         Gt2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iwi+WE6J;
       spf=pass (google.com: domain of 3v5vlxqwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3V5VlXQwKAAoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AohCQps+TIm+SNisIEm5XRs06bRWk4qtrR/ju4Lho48=;
        b=LOUkwuBonvC3OG7n2KkKbeaHaG+jby5n2TkCf4eddEFZkMQHhK/6MAUhTgU7/9w57X
         Rhc/NiOD+/kpB97erB5dBmWs6zJnpC6zX6TllRbFdiOGPpAkwJqKLjKoL57ioR6j2qhH
         KCMIyX4DOnbIP7oPdZ8RsaLk+Hm/QYpK1ZCqs2Yf2ij8MggC24UhJmoHkTzLzS4yQGVC
         ZIW+96YpOuBD7Ovf870amsKkSWm/ZSu4iRgZDyVzysiaV1R4SSgkdgS7uoNXTa7omzrw
         iTIC//cijpeqdPVPr4RNlsV2zydTn68e/uUeb7u1qhNk9jC6YeFsYT0apZ6sCMs4bLoT
         eydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AohCQps+TIm+SNisIEm5XRs06bRWk4qtrR/ju4Lho48=;
        b=FmaSyobTGnAKi90he2QrQ7LBPmOHeZTISpHv10/17w1nCSUasCWy+57b8nCv+ZD8cb
         9dcSYyswvxdeOD3KzvldJTBI8M1qL8sQ+Vu1CmOO1lwD9qJmLSduVeKZ6pRLycd6caCJ
         qI7LCwVarksbpojZtCYfB4alZUPB2aqNuzBhIZRllGazEpumKjrybLh5BgbknzpHE9iH
         QLn+8mu/u+F16L9f6ly/HaCb6UFknsJuzznZwdyo+GcT9EraMyFzQDXraik+DI6YvA6m
         +frPVqXwbGY40A4HIHGdMnP5DyUkvRN0eY5XT6ueh5hmCPermfPeAsWQcpZ+nHRYF9Nb
         cOig==
X-Gm-Message-State: APjAAAWO9z955RHmGKho8X2mKkV7w85z4yK3wLWsujvuUt/Y42izzdZP
	3h/jorpwxfA8JZqWQDimoL0=
X-Google-Smtp-Source: APXvYqyQ8wCNTDtRhvXW9DBt2nT7j0Vb0sCh/4PuebHOmsUI+62uCahLFUDoe996A5GIkP+jFldlPw==
X-Received: by 2002:aa7:97aa:: with SMTP id d10mr429579pfq.176.1566938456126;
        Tue, 27 Aug 2019 13:40:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4302:: with SMTP id j2ls55265pgq.6.gmail; Tue, 27 Aug
 2019 13:40:55 -0700 (PDT)
X-Received: by 2002:a62:8344:: with SMTP id h65mr402354pfe.85.1566938455843;
        Tue, 27 Aug 2019 13:40:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938455; cv=none;
        d=google.com; s=arc-20160816;
        b=JHOLpBFhs5W8Lnh/e/Kf0NUbvOnEyWCvpIrrEMxqnNhZHMMzZIN0rCzFIwDEJETqBE
         V6J1ftBmDPZe21o7C6uCbGoZv3wjR0nCBMmTYL4LV5BmkuiqH19jkXKcpsJIbHhlrU1q
         s8t/2eGnRvVwh8kKIJsR62X1lmqUHAXdBJVH4tDza80G39/e2njNHAGXBaYrADgFXD+5
         43tJoi4+dEeHqZ54oEJaDndTQO9tpMYO8E7Ehrp8USlKK/zsQy0QyTJZCUH0z+Wv8ref
         8iUqv9bcLUXkjbBv26Q81RjeguVCmvXYGP3euO4ckyOxZILZxcSZHf6YaFwoSqV0rPRq
         mO0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=7fwBBDcVeQDxpK7w1Viqz28DYsc11S+Pn/agx9uPCfE=;
        b=Nm9F6D+xe4LSYrrtogn1EPl/s05UIQ+RvuZgpu9psnz5/AzIc131MXhUfeqPTk8RhL
         c5RMt9uxEm8BiLGU+HHB0Ji6cPh58wjcm/jOmP+lDyz3AAYAo0G7NPpPOxuu3tve4qY8
         F64XeGfP1n/GVWJeaS8TrzwhZtJl3bqD5tcMDXQTGY0cPJKqw5CEaT0PE9BCaRNyOjAx
         SIfzma4NE3b4zTbvcQJwl9C2sS3LgvkIHkD17bndFhpFq+CoftbiYt/g3QJQJwx8F/CL
         4DRDFSYWxuYcjJRX7eT+P49XMtxGFdZR/TMSt1m2Xq2y1D0kJneNouiSc95poO3yDdmJ
         +mJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iwi+WE6J;
       spf=pass (google.com: domain of 3v5vlxqwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3V5VlXQwKAAoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id o9si13868pjt.2.2019.08.27.13.40.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3v5vlxqwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id b21so213371pfb.17
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:55 -0700 (PDT)
X-Received: by 2002:a65:5183:: with SMTP id h3mr300039pgq.250.1566938455242;
 Tue, 27 Aug 2019 13:40:55 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:03 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-11-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 10/14] x86: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Iwi+WE6J;       spf=pass
 (google.com: domain of 3v5vlxqwkaaoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3V5VlXQwKAAoxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
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
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-11-ndesaulniers%40google.com.
