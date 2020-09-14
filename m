Return-Path: <clang-built-linux+bncBD6K324WS4FBBLGQ735AKGQEIMTF5YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F1926932C
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:13 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id k13sf142329wrl.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104493; cv=pass;
        d=google.com; s=arc-20160816;
        b=LSAnx96ap/Km5uypLsAHJ8M4Bcg2vkAR7dWYCm/uZcMxfrWvKJ8O/vX30plWef1Blw
         WXy+KsopyC5bLtejwsasoex4Imhw5bVPQ72zrJjI53zEh2jGNNnHQm2gjeSaIVG8QWI1
         Vw6JH1/yxiAucftFugKclSbOc2vmgX4DE3EJbAoXGZ7hBN1T9uXuPEKEX6YgJsXRVKEa
         2XGtTH/wtgAMZ7eyQpCRd0OiKKFw8InmSUJD04BMBK8ZONz+aHAAnKakWJSFALF8I3Se
         6AIuhmh/4+XyzcM3tPLe1uoXLaeOmPoQmdDKorEfmuQjIWNCoyqayGDnlbEbxkyetZxD
         1kzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=+UhvEv6bS7h8noNeIQbIPVD9XVLqb3gcfv2Vq8uRgZg=;
        b=0yTsyq8nc8MIkFQmx4Us+lQ51WztLI2xwTn7YnZyherry/bhsq6CnxS4goUtH6oU4K
         osoNukLQU364ptkuS4wNQg+DqE0e+t7g/4u1LCKfHbv2XGk4zSaGFWIghDLJSYJ75cgV
         O13Q0yMNfQySgrWYg8/nPKfZStSwGrKzDkiTJBCR1bNh9BADvwJguiks8hi8b2c9KRsf
         KO9/Wdx6XjaRx/KPeIJfIUezm/AxYoUxueQHE5uCSHETU2iJdIJ6L4vySGxHxTA8PjLL
         f2buKA1Q9O1nLH8xKGExB7ejhrk0H/kBMkx1uR2jPOHB94kgk95oYtq1ts2UwjygvZSq
         72+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=amPh1yVy;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+UhvEv6bS7h8noNeIQbIPVD9XVLqb3gcfv2Vq8uRgZg=;
        b=oXxfQKZwo0eYF+aM/Lm/fsZSImFAB8LyZrELMO1fpnT4ugP6nbbEywoUHwWYOYObOE
         k8LqMfWFlwEu193UmluTT8ED03REdMj/1OZpnh+PD+l8KEkNCdIKLebK3zi3QYMeijmN
         eWEHZjrKeRD7chuBMlzXTEa0fFRn5XMGBTPrDKLhIcnndIiLiHqNVvDwYI1hWZEyRV4R
         rxa7lFCiSwMNd1P0UMETUKpZ2WzP+DjeBDYDVSmOsW/xkJ9Ok+d4ZlBRr9tItn+cGBGW
         NXSU6Z44satG7J6ZE647P+uR2eoA+Za6tsKbqRdNqMVoPxHtSnxAXj6BRhIkAaDyIQPf
         oMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+UhvEv6bS7h8noNeIQbIPVD9XVLqb3gcfv2Vq8uRgZg=;
        b=YnkV6WedlHDJ+oiQvmxoIV0ro5HIFsHXCMDS3v8VNNbEOaM2a+Lq5W5AbJdHkYwgY3
         cH39ylzY4Jz4Lir5qm369FUsCTETF0MKGtiPZjz4dPh9HGBcjpdjRTFFReeBXK2s9ROo
         ajNlqNRsiB0C75huSrp7C2ZRIn/vHJrxMs0fmaRJfFGsbOwghQNscFuYhy4HHBPesTtm
         n8WaZgQkX9YWOD+tC1WKGuHw2XhFHabmRe9R88tZpK9NsGnKDpiXtoI8+QJkYpdi9PHF
         9AnmAgXAhaDdvZMcKcKgOSq2f29VBfxdtlQtkKEjiBS6miDaSXnrM7EugXgEf/em8I3X
         HgMA==
X-Gm-Message-State: AOAM533iszbQfG34530vh2QFCarIv3JATzNWM6vHO6PUqh9+0zDR6FLT
	uqr01HbCqav1I0g9K/MgdbU=
X-Google-Smtp-Source: ABdhPJxmUSKNLuOGZud7SJC8sQfaVFwnkGxJ8JETee1WwwNZNlXug/0/lcRyFs4DNZ63wVjOfGzqsg==
X-Received: by 2002:adf:ff90:: with SMTP id j16mr18287849wrr.105.1600104492902;
        Mon, 14 Sep 2020 10:28:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls28338wrm.1.gmail; Mon, 14 Sep
 2020 10:28:12 -0700 (PDT)
X-Received: by 2002:adf:8405:: with SMTP id 5mr17908409wrf.143.1600104492021;
        Mon, 14 Sep 2020 10:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104492; cv=none;
        d=google.com; s=arc-20160816;
        b=wExe4mRjr47zcb/k2IoMSXbpLMZZR6HC2WAPZqz6DE0k1HTmOxxRdYiiRzUMN5WAQL
         f/DSS0pQqohFZ8zMbMZbmkWeidGnIDm1xg6QFMshXUlnRFV174vvBiN8yDzApPi73S9+
         fVjy6cLNeELDb/WHeS5FUwtYu2TOoGycx5Na2pPXMNf2JF1oIxIGeghVhSpxPoQ3CCDh
         LcczfmmFHZAMgPAhqzq42aD4DxJrd1VFxHG73vgVHvYR4YFYmlC9+fIQAO2NjFAsBiTq
         a2+26xa01LA68IWcJcAvOFJvfI/L6ywhNMp2CoZ7s706lpak/RIAxwKkLdMFUZ2iVm0D
         VrZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/4VwXgJoMbk9POxFRHy1vRuuoE0F0rYUfbOkZd2TWH0=;
        b=inQufg/nBN3UDB+lfHn12tMH4vlGHRotoNZ6OVXnkgLVl3AxdSHuwhMsuIS6KvJT/Z
         XYYSLHlOHmRBAhhK2M4h38EJIHX8TVKOjWT1s+NrwjhTesszIeTlERaGZw+lo1HBPY11
         hIf5lYgPJUjN1y/GRk13hXQzZUy4EIrdx1AtA9B12Le0+6kfmDh9ULv5phGAjL56qtWe
         ITwo9HDc1wdNOAQewsJA8+LQXeCwO5VlziYlkR1jPmgJN7kI/xJm7ZxSY9Yi+Dcmx+kt
         07jWaxLunnC1i3rTAdZ2HkeIgygXncpsPyeNVqlEkUMS6JVkSiNkCU5Mw0wwhKDo5b+l
         vWRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=amPh1yVy;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y64si318315wmc.0.2020.09.14.10.28.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id a17so505783wrn.6
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:11 -0700 (PDT)
X-Received: by 2002:adf:8b48:: with SMTP id v8mr17059052wra.21.1600104491563;
        Mon, 14 Sep 2020 10:28:11 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id h16sm22935608wre.87.2020.09.14.10.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:10 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	masahiroy@kernel.org,
	michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	james.morse@arm.com,
	julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	dbrazdil@google.com,
	broonie@kernel.org,
	maskray@google.com,
	ascull@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	dvyukov@google.com,
	elver@google.com,
	tglx@linutronix.de,
	arnd@arndb.de,
	George Popescu <georgepope@google.com>
Subject: [PATCH 05/14] KVM: arm64: Define a buffer that can pass UBSan data from hyp/nVHE to kernel
Date: Mon, 14 Sep 2020 17:27:41 +0000
Message-Id: <20200914172750.852684-6-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=amPh1yVy;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

From: George Popescu <georgepope@google.com>

Store data, which is collected from UBSan handlers that lives inside hyp/nVHE,
into the kvm_ubsan_buffer.
This buffer is designed to store only UBSan data because it should not be
preoccupied by other mechanisms data structures and functionalities.

Map the buffer and the write index before switching the control to
hyp/nVHE.

Map the kernel .data region to read the compile time generated UBSan struct's
data from hyp/nVHE.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_asm.h   |  3 +++
 arch/arm64/include/asm/kvm_host.h  |  6 +++++
 arch/arm64/include/asm/kvm_ubsan.h | 17 +++++++++++++
 arch/arm64/kvm/Makefile            |  4 ++++
 arch/arm64/kvm/arm.c               | 38 +++++++++++++++++++++++++++++-
 arch/arm64/kvm/hyp/hyp-entry.S     |  4 ++++
 arch/arm64/kvm/hyp/nvhe/ubsan.c    | 24 ++++++++++++++++++-
 arch/arm64/kvm/kvm_ubsan_buffer.c  | 32 +++++++++++++++++++++++++
 8 files changed, 126 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_ubsan.h
 create mode 100644 arch/arm64/kvm/kvm_ubsan_buffer.c

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 200bb8d0a720..9d4a77f08ffd 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -63,6 +63,9 @@
 #define CHOOSE_VHE_SYM(sym)	sym
 #define CHOOSE_NVHE_SYM(sym)	kvm_nvhe_sym(sym)
 
+#define this_cpu_ptr_nvhe(sym)		this_cpu_ptr(&kvm_nvhe_sym(sym))
+#define per_cpu_ptr_nvhe(sym, cpu)	per_cpu_ptr(&kvm_nvhe_sym(sym), cpu)
+
 #ifndef __KVM_NVHE_HYPERVISOR__
 /*
  * BIG FAT WARNINGS:
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index adc8957e9321..337fd2d0f976 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -494,8 +494,14 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 		__kvm_call_hyp(kvm_ksym_ref_nvhe(f), ##__VA_ARGS__);	\
 	})
 
+#ifdef CONFIG_UBSAN
+extern void __kvm_check_ubsan_buffer(void);
+#endif
+
 #define __kvm_arm_check_debug_buffer()					\
 {									\
+	if (IS_ENABLED(CONFIG_UBSAN))					\
+		__kvm_check_ubsan_buffer();				\
 }
 
 /*
diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
new file mode 100644
index 000000000000..af607a796376
--- /dev/null
+++ b/arch/arm64/include/asm/kvm_ubsan.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2020 Google LLC
+ * Author: George Popescu <georgepope@google.com>
+ */
+
+#ifdef CONFIG_UBSAN
+#include <ubsan.h>
+
+
+#define UBSAN_MAX_TYPE 6
+#define KVM_UBSAN_BUFFER_SIZE 1000
+
+struct kvm_ubsan_info {
+	int type;
+};
+#endif
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 99977c1972cc..92f06cb5b3df 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -24,4 +24,8 @@ kvm-y := $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o \
 	 vgic/vgic-mmio-v3.o vgic/vgic-kvm-device.o \
 	 vgic/vgic-its.o vgic/vgic-debug.o
 
+CFLAGS_kvm_ubsan_buffer.o += -I $(srctree)/lib/
+CFLAGS_arm.o += -I $(srctree)/lib
+
+kvm-$(CONFIG_UBSAN) += kvm_ubsan_buffer.o
 kvm-$(CONFIG_KVM_ARM_PMU)  += pmu-emul.o
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index b588c3b5c2f0..eff57069e103 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -42,10 +42,17 @@
 #include <kvm/arm_pmu.h>
 #include <kvm/arm_psci.h>
 
+#include <asm/kvm_debug_buffer.h>
+#include <asm/kvm_ubsan.h>
+
 #ifdef REQUIRES_VIRT
 __asm__(".arch_extension	virt");
 #endif
 
+#ifdef CONFIG_UBSAN
+DECLARE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
+#endif
+
 DEFINE_PER_CPU(kvm_host_data_t, kvm_host_data);
 static DEFINE_PER_CPU(unsigned long, kvm_arm_hyp_stack_page);
 
@@ -1519,7 +1526,15 @@ static int init_hyp_mode(void)
 		kvm_err("Cannot map bss section\n");
 		goto out_err;
 	}
-
+#ifdef CONFIG_UBSAN
+	/* required by ubsan to access the handlers structures fields */
+	err = create_hyp_mappings(kvm_ksym_ref(_data),
+				  kvm_ksym_ref(__end_once), PAGE_HYP_RO);
+	if (err) {
+		kvm_err("Cannot map data section\n");
+		goto out_err;
+	}
+#endif
 	err = kvm_map_vectors();
 	if (err) {
 		kvm_err("Cannot map vectors\n");
@@ -1552,6 +1567,27 @@ static int init_hyp_mode(void)
 		}
 	}
 
+#ifdef CONFIG_UBSAN
+	for_each_possible_cpu(cpu) {
+		/* map the write index */
+		struct kvm_ubsan_info *buff;
+		unsigned long *wr_ind;
+
+		wr_ind = per_cpu_ptr_nvhe(kvm_ubsan_buff_wr_ind, cpu);
+		err = create_hyp_mappings(wr_ind, wr_ind + 1, PAGE_HYP);
+		if (err) {
+			kvm_err("Cannot map the busan buffer write index: %d\n", err);
+			goto out_err;
+		}
+		buff = per_cpu_ptr(kvm_nvhe_sym(kvm_ubsan_buff), cpu);
+		err = create_hyp_mappings(buff, buff + KVM_UBSAN_BUFFER_SIZE, PAGE_HYP);
+		if (err) {
+			kvm_err("Cannot map the ubsan buffer: %d\n", err);
+			goto out_err;
+		}
+	}
+#endif
+
 	err = hyp_map_aux_data();
 	if (err)
 		kvm_err("Cannot map host auxiliary data: %d\n", err);
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 8df0082b9ccf..bcdbab4d2e43 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -14,6 +14,7 @@
 #include <asm/kvm_asm.h>
 #include <asm/kvm_mmu.h>
 #include <asm/mmu.h>
+#include <asm/kvm_debug_buffer.h>
 
 .macro save_caller_saved_regs_vect
 	/* x0 and x1 were saved in the vector entry */
@@ -74,6 +75,9 @@ el1_sync:				// Guest trapped into EL2
 	cmp	x0, #HVC_STUB_HCALL_NR
 	b.hs	1f
 
+#ifdef CONFIG_UBSAN
+	clear_kvm_debug_buffer kvm_ubsan_buff_wr_ind, x4, x5, x6
+#endif
 	/*
 	 * Compute the idmap address of __kvm_handle_stub_hvc and
 	 * jump there. Since we use kimage_voffset, do not use the
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
index a5db6b61ceb2..a43c9646e1e8 100644
--- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -3,9 +3,31 @@
  * Copyright 2020 Google LLC
  * Author: George Popescu <georgepope@google.com>
  */
+#include <linux/bitops.h>
 #include <linux/ctype.h>
 #include <linux/types.h>
-#include <ubsan.h>
+#include <linux/percpu-defs.h>
+#include <linux/kvm_host.h>
+#include <asm/kvm_arm.h>
+#include <asm/kvm_asm.h>
+#include <asm/kvm_ubsan.h>
+#include <asm/kvm_debug_buffer.h>
+#include <kvm/arm_pmu.h>
+
+DEFINE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
+
+static inline struct kvm_ubsan_info *kvm_ubsan_buffer_next_slot(void)
+{
+	struct kvm_ubsan_info *res;
+	struct kvm_ubsan_info *buff;
+	unsigned long *buff_ind;
+	unsigned long buff_size = KVM_UBSAN_BUFFER_SIZE;
+	unsigned int struct_size = sizeof(struct kvm_ubsan_info);
+
+	init_kvm_debug_buffer(kvm_ubsan_buff, struct kvm_ubsan_info, buff, buff_ind);
+	res = kvm_debug_buffer_next_slot(buff, buff_ind, struct_size, buff_size);
+	return res;
+}
 
 void __ubsan_handle_add_overflow(void *_data, void *lhs, void *rhs) {}
 
diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
new file mode 100644
index 000000000000..28dcf19b5706
--- /dev/null
+++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2020 Google LLC
+ * Author: George Popescu <georgepope@google.com>
+ */
+
+#include <linux/ctype.h>
+#include <linux/types.h>
+#include <asm/kvm_debug_buffer.h>
+#include <asm/kvm_arm.h>
+#include <asm/kvm_asm.h>
+#include <kvm/arm_pmu.h>
+
+#include <ubsan.h>
+#include <asm/kvm_ubsan.h>
+
+DECLARE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
+
+
+void __kvm_check_ubsan_buffer(void)
+{
+	unsigned long *write_ind;
+	unsigned long it;
+	struct kvm_ubsan_info *slot;
+
+	init_kvm_debug_buffer(kvm_ubsan_buff, struct kvm_ubsan_info, slot, write_ind);
+	for_each_kvm_debug_buffer_slot(slot, write_ind, it) {
+		/* check ubsan data */
+		slot->type = 0;
+	}
+}
+
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-6-georgepope%40google.com.
