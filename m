Return-Path: <clang-built-linux+bncBD6K324WS4FBBO6Q735AKGQEZO4JBWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66393269341
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:28 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id dc22sf108377ejb.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104508; cv=pass;
        d=google.com; s=arc-20160816;
        b=dk9dTLMUXE9Xa33p77thGu2dtHiApaNEov1Xx7UECfNrpVUMLZ3EkTuZKN31bSgrnv
         lw0QNblkkOQ3OV5BlaaGoQpf0JrAekdX8CrZNDzyEpDgAWfnBy5PPMxc8CBdIqkgpPuw
         1vCmOzpQttWFzVXI0SrbKq113af7YicrI7kBw3hlh6iWcyvdhrS2RfL2b2FrrGTzzzDj
         RJ8m/k9hgcSQ2lpzz+Zb0cVxfhDRXMhEQTuA/8gUxMl00p5HkBT05TmX4kmhQd6SvSAX
         T4doYML3BVm0FHzKAd2LQtUSdCGnH6/LanjeJUHDpRPoK/w7Cmc6YLoMGHA/5dVJ/3ll
         qrJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oc4Bnjk+/y49eqFob7IjdZLHb6U/at2EFYN6IJuOH3s=;
        b=HcuKIsXzXJrHOqaJC348XjijaO3j++G5h9Ek7lkr3oWuENNgoKKOWms/4YeGBgxuA3
         EW5dW+Yqk9IbslzHuZnRKftbuimr1O+q2oVGmdFxiHAQw6Hv74/Up/y84XDuk/6huv2I
         NEBks/gh1Wubimff3cTOeBi5Gv5+nL3Pzz1w96DLriaAR5BZZzfYJyTtlI7+hF/2ySLL
         8doVXAkfZZWYfR2E+kb99QNuULop96EjdVdUvDsqDN4ridQ4XhKj0FoA2X9f2tzcLnjy
         qqebLodp1jovBWtAqJBoHXbJp0f3STX/G2Xk9C2jrVrbtgV/gn4W+67rf9VIB0LrEXHm
         m4HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jW8otPoo;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Oc4Bnjk+/y49eqFob7IjdZLHb6U/at2EFYN6IJuOH3s=;
        b=TF4tj1PXrJWJDEZX2uhDj8IzNmSKSNZF0y1rGQ+r3l0BmgsTIFrRCd1BSNxXmu2mKS
         IOi+P33a4V6LwNcEE9nauTqEHaF1I8CDMpzsl0dtokSeOm0SWSynj4hNgYIpPRLg/bZf
         pYwSxKte/H9075TPg/696uwetNxDc7eKPlyY9DUVuFqr8sRIJGtg0/T8UwsD/WE9a3y6
         6o7Xx7iuqT85LOm+M8hjPCbz6zM1LgZNi2fb4RlVmDXNJ346FqnhS00pihj+AcT4SV1D
         WGWLRHOULDuWIZ1WvrRpboBE+R212Pgmib16xe2bDwmo/RmBgmDWJJt4Z6mJBfkZH74r
         ym9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oc4Bnjk+/y49eqFob7IjdZLHb6U/at2EFYN6IJuOH3s=;
        b=uSW27o+fkb2i9WLbEvlCQYB2H0lIwgkr9jswrifNtBICPAH9L8WaCKuUKqktiEktc4
         4eExj+NJVvNk7aOzP5sCLllx+YngnOWbpnISlpmp6HroabSi7cOWp7U9OT5ochSPLspD
         lUQR2LwosJHZob7A/l7uXU7v5Tl3J1ZxGvXdcVRU6AzUi5ZrrBoF9KLilJ4qlzblkgFz
         sz42AyURVRO1T0JEm2DeDWEmkmNTfMDFIKj6i9ndnHbGW41QqZaLJFev+oGuHfjxxZdj
         B/hO+YmtbrDO1uBhgsDvuck2y0gX/5y0MBzi6iGk/FCRYBVf6VcrRRiAS6ZgASeLBJg0
         c8tQ==
X-Gm-Message-State: AOAM5333I0eXOuVGiHz6nKnBN3GlxCv24pkStdBZll1dcfPjlVG5jJ3h
	brhxoYavJhttMhVBG4Tfi+E=
X-Google-Smtp-Source: ABdhPJy/p0nfWeJKfEyYLE91gQ7+iHMHbqSeaifQ+C9rfRvexJLcidVhDpV80JlhMHuArTj14hvLdA==
X-Received: by 2002:aa7:d981:: with SMTP id u1mr17935640eds.250.1600104508116;
        Mon, 14 Sep 2020 10:28:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f996:: with SMTP id li22ls4931221ejb.10.gmail; Mon,
 14 Sep 2020 10:28:27 -0700 (PDT)
X-Received: by 2002:a17:906:3ad0:: with SMTP id z16mr16493715ejd.193.1600104507289;
        Mon, 14 Sep 2020 10:28:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104507; cv=none;
        d=google.com; s=arc-20160816;
        b=ZGUEMC0aopfdw9ASjHdd8f2wdBBqdiwgdmXb8G1EccMQKhx0N9/bOxdbYEydnNV/IX
         /hjZGaJ7qb9YLLErU37d8MapKHFqpry4l8mkwyYUfBYEwWuQeBzF15680y8YeRAh45Vh
         ImRCj/E9KgVkvvNQBL6foUJ1M7rOxrDwv/NookqT0fX0xZQgogJiuD9d/OAbEhW76WJu
         TZz7oXt+4ikiDo8TF6cnOZ/3jwX2sg0XXeb4ShsoZO0Yh+kqLAoKj5SlxEF22cseQn5V
         CNzQ267sFWjif2nMNa5QpScG///uBaBoRazHIvBVFz2aa0jHPjjA1+1/eVboqn9p9RAB
         ha7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=80sUfzO1ZftIFVscZ9nv5OunuS9GCgF/C+i0bRP7nsw=;
        b=JWUpWZK2dGJKr3wzaOFLIoW5kB3O5ado4Zw0kRDVSczt7oswh98BfBNiJ7idx9mtVh
         LJJqzzyVx2lViXndggFLv5GW4Zlv6gLIP2bMFCE9FaWbdKU/71tPd/6kkAw4FkEZ2DN3
         jrTFdLw+XpScjOgEyMClxRiK/5KDpsu+GC6r65pZzPP8B9F8PLshloZK8r+2jTGwLARi
         k1+ouAtX9MhRGYhBjJ4hP1IEkIVdaDLtvgFPRzeML80zjYKVT4/fJXu5X4PTBsdSLeWP
         BIHIqO8Sc1MBzxyVDalGVPnxbFzZemhiEQOAWpv2wBqDBNwLBn5jkV2IFSsgLPziGNiC
         xeUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jW8otPoo;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id a16si558912ejk.1.2020.09.14.10.28.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id d4so795322wmd.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:27 -0700 (PDT)
X-Received: by 2002:a1c:6487:: with SMTP id y129mr490641wmb.90.1600104506813;
        Mon, 14 Sep 2020 10:28:26 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id b11sm22135485wrt.38.2020.09.14.10.28.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:26 -0700 (PDT)
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
Subject: [PATCH 13/14] KVM: arm64: Enable the CONFIG_TEST UBSan for PKVM.
Date: Mon, 14 Sep 2020 17:27:49 +0000
Message-Id: <20200914172750.852684-14-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jW8otPoo;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::334
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

Test the UBsan functionality for the hyp/nVHE code.
Because modules are not supported inside of hyp/nVHE code, the default
testing module for UBSan can not be used. For this purpose new functions
are defined inside of hyp/nVHE.

Test UBSan only when the hypervisor is initialized to prevent spamming
the boot messages.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/kvm/Kconfig               |   3 +
 arch/arm64/kvm/arm.c                 |   8 ++
 arch/arm64/kvm/hyp/nvhe/Makefile     |   1 +
 arch/arm64/kvm/hyp/nvhe/ubsan_test.c | 115 +++++++++++++++++++++++++++
 4 files changed, 127 insertions(+)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/ubsan_test.c

diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
index 318c8f2df245..b6581f2512fb 100644
--- a/arch/arm64/kvm/Kconfig
+++ b/arch/arm64/kvm/Kconfig
@@ -60,6 +60,9 @@ config KVM_ARM_PMU
 config KVM_INDIRECT_VECTORS
 	def_bool HARDEN_BRANCH_PREDICTOR || RANDOMIZE_BASE
 
+config NVHE_KVM_TEST_UBSAN
+	def_bool (TEST_UBSAN != n)
+
 endif # KVM
 
 endif # VIRTUALIZATION
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index eff57069e103..5468fa5599cf 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1297,6 +1297,14 @@ static void cpu_init_hyp_mode(void)
 	BUG_ON(!system_capabilities_finalized());
 	__kvm_call_hyp((void *)pgd_ptr, hyp_stack_ptr, vector_ptr, tpidr_el2);
 
+#ifdef CONFIG_NVHE_KVM_TEST_UBSAN
+	static bool test_ubsan_run;
+
+	if (!test_ubsan_run && (smp_processor_id() == 0)) {
+		test_ubsan_run = true;
+		kvm_call_hyp_nvhe(__kvm_test_ubsan);
+	}
+#endif
 	/*
 	 * Disabling SSBD on a non-VHE system requires us to enable SSBS
 	 * at EL2.
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index cc082e516353..2b495fe41f2b 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -12,6 +12,7 @@ obj-y += ../vgic-v3-sr.o ../aarch32.o ../vgic-v2-cpuif-proxy.o ../entry.o \
 
 CFLAGS_ubsan.hyp.tmp.o += -I $(srctree)/lib/
 obj-$(CONFIG_UBSAN) += ubsan.o
+obj-$(CONFIG_NVHE_KVM_TEST_UBSAN) += ubsan_test.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan_test.c b/arch/arm64/kvm/hyp/nvhe/ubsan_test.c
new file mode 100644
index 000000000000..f4e7b3ed3cf5
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan_test.c
@@ -0,0 +1,115 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/percpu-defs.h>
+#include <asm/kvm_asm.h>
+
+typedef void(*test_ubsan_fp)(void);
+
+static void test_ubsan_add_overflow(void)
+{
+	volatile int val = INT_MAX;
+
+	val += 2;
+}
+
+static void test_ubsan_sub_overflow(void)
+{
+	volatile int val = INT_MIN;
+	volatile int val2 = 2;
+
+	val -= val2;
+}
+
+static void test_ubsan_mul_overflow(void)
+{
+	volatile int val = INT_MAX / 2;
+
+	val *= 3;
+}
+
+static void test_ubsan_negate_overflow(void)
+{
+	volatile int val = INT_MIN;
+
+	val = -val;
+}
+
+static void test_ubsan_divrem_overflow(void)
+{
+	volatile int val = 16;
+	volatile int val2 = 0;
+
+	val /= val2;
+}
+
+static void test_ubsan_shift_out_of_bounds(void)
+{
+	volatile int val = -1;
+	int val2 = 10;
+
+	val2 <<= val;
+}
+
+static void test_ubsan_out_of_bounds(void)
+{
+	volatile int i = 4, j = 5;
+	volatile int arr[4];
+
+	arr[j] = i;
+}
+
+static void test_ubsan_load_invalid_value(void)
+{
+	volatile char *dst, *src;
+	bool val, val2, *ptr;
+	char c = 4;
+
+	dst = (char *)&val;
+	src = &c;
+	*dst = *src;
+
+	ptr = &val2;
+	val2 = val;
+}
+
+static void test_ubsan_misaligned_access(void)
+{
+	volatile char arr[5] __aligned(4) = {1, 2, 3, 4, 5};
+	volatile int *ptr, val = 6;
+
+	ptr = (int *)(arr + 1);
+	*ptr = val;
+}
+
+static void test_ubsan_object_size_mismatch(void)
+{
+	/* "((aligned(8)))" helps this not into be misaligned for ptr-access. */
+	volatile int val __aligned(8) = 4;
+	volatile long long *ptr, val2;
+
+	ptr = (long long *)&val;
+	val2 = *ptr;
+}
+
+static const test_ubsan_fp test_ubsan_array[] = {
+	test_ubsan_out_of_bounds,
+	test_ubsan_add_overflow,
+	test_ubsan_sub_overflow,
+	test_ubsan_mul_overflow,
+	test_ubsan_negate_overflow,
+	test_ubsan_divrem_overflow,
+	test_ubsan_shift_out_of_bounds,
+	test_ubsan_load_invalid_value,
+	test_ubsan_misaligned_access,
+	test_ubsan_object_size_mismatch,
+};
+
+void __kvm_test_ubsan(void)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(test_ubsan_array); i++)
+		test_ubsan_array[i]();
+}
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-14-georgepope%40google.com.
