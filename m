Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB6XI2P3AKGQE5MD5XVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D851EA3DE
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 14:28:43 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id l2sf2862532wmi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 05:28:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591014522; cv=pass;
        d=google.com; s=arc-20160816;
        b=0t1Rin85ZbWPiGiryD6Q/6CZjGPf0IixI5YRiU4PSizxC2OToB+HxLZ7u5eBZWRFma
         LHnQH58U9EDNJGB5Fz88BeGZ+PhvkyNCA5WAJNGzlpnCL9gKguWpVvZ27KXRPOOK4ap1
         QxN/CrWtUiCFbI4Mqm48dtpBek3WFZWgIvaNa5OMBQcGNNiIms+EkWo93g2e1CdZQWHa
         Cpy6yrQAbqgVgXHSHnU+PV87vK+Clo9jhBErtUsVkLyn1gcwRdIAzS80pk1AD7F6fL+8
         OktAVtahIyL65eAA5jfl//Px0s+VepV7/QKl7MoIZmQTFdZPcykJ6TKG0UMIPlxylbE1
         I71Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:references
         :in-reply-to:message-id:to:date:from:sender:dkim-signature;
        bh=SW1ht6XkSzXQTNoQ6irfdRYazfXoKBDXBtxe1n1KjS4=;
        b=BCLshwZ8JbZTpmvBqLxFCOzRP7znBOdOORyhgfCU/PyrSWAnUsK1qvQVePv4zZr4Bl
         e9ZVRrvuZ8vDQGcl+QzzaqjUcee0YByF8YiRybFG90HkRGtbOieIFPXKP/mZW5mQ6fUA
         dZg29jXn2jXi+NZnreG5ed5tf9OMR14Ktvg2COde6gOy7NXmg/Eoewaf2VIXGRlkbApO
         52CVvNUA8WlvJSHIEZ87WeATlf0GbRTvmL79ileO2VH797IojDV8Xxf8t+qaqFtxvYz1
         lbpcA0+cagY6AENVd5pOQYAT8fuftOduzqPKc7L6n2lTKCaDESHE2XW2E0mWiVKgePVh
         5iUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WmJDICEg;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SW1ht6XkSzXQTNoQ6irfdRYazfXoKBDXBtxe1n1KjS4=;
        b=Rl71qeNIdfyIzefoYtuxRCGx+1OOawK4Kv5TMROLOrItLTQlgmDdOh/cVQoBRzI0/6
         YvY3b6Q6T9lPSoQgcUrzVX8FqRy+yUHH9wdXO+5RlIcdgZA10/VmSy77ufRVOQu2uCsb
         ApmXRS2pflNn8Ond4yh0qG0pjrloW3wig53qhwDGGEt8r3qO44S74m/yZD0y1wZwWtgS
         puQJd6txXEs0XVbKTAJhIqGUgzdz5pTVdlPExbzTfJOcVTvlds04/L3ddQ11M5U8kFqG
         ZIz58jFT8Ak6YloJ8JkY4+gT4ZrMDJ1Tse3hwYIRQvdZx0bQ5juafU2rMLB2HQXrHmnR
         wTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SW1ht6XkSzXQTNoQ6irfdRYazfXoKBDXBtxe1n1KjS4=;
        b=ez9kd+6cJRktz1lOduAj5BeIeM210UIEj/EET02iDwDm5MftCAjBpFREoW3LKwXD/v
         s2xMZky4SufdK2Scxxvvvu9gnea3EfxDwLqbSm9NLtwkjrGOLk33FWyK4mJ5oGo1pS4x
         VQvUCIaCNI2KPrkILkFubrW9OHUAY3ci74HJIvgIjamjBqorALfttYoyAgwaPz6E9nTy
         pG+oWe/mS0KVJgkKnoElJYEm7C5alnniIws98hepKCHDu9BzAn+R0rOLnJciFXrcYlE2
         LpqQWfMNxOzmyYUhWJ/43joJfnkHBmoZ7FcNUcoGK+pG18F1SXqNgcMIluZcPhb4nbFL
         12OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tq5mMf7vx+ZK3J7h5RqrpZ/A0Ty+tDD7vKDekE2ILs5S6UGCe
	LE5MxiHQ33zN2WNJ35li3gU=
X-Google-Smtp-Source: ABdhPJzsfB3IwTbmnxDNg+MpY4qE4CKizHBeuHENibqizb1dzR3iW/A7RPzt0BIjPnUFPSI/hry1ew==
X-Received: by 2002:adf:80eb:: with SMTP id 98mr4295759wrl.351.1591014522793;
        Mon, 01 Jun 2020 05:28:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e510:: with SMTP id j16ls671678wrm.2.gmail; Mon, 01 Jun
 2020 05:28:42 -0700 (PDT)
X-Received: by 2002:adf:ed01:: with SMTP id a1mr23475416wro.271.1591014522286;
        Mon, 01 Jun 2020 05:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591014522; cv=none;
        d=google.com; s=arc-20160816;
        b=P1fjuDWvMqgjONYWsCCECa6nJpZ+ppslzsPeRMiuVdfW2NEaVyzZRd/h8K9N+41Hdj
         80Z9HuIPNjpvhAHkDK22muxK0ehc9b0Ea5gHU5QbuzMSxvzRUeQ0lUzzyz7z5dPrdsHI
         Nosi1lMsTc4Jd0O3hxt17HJOBQ7W8A2dpaibi/aEnWmkPSqW/X+NhZhU5/rJwZ7SVY4y
         +6Sy5Gi0oP4UaJs4QDRl7nN7PUPKLg43xDwIF2dv7SW2QYsdL7exwLmV+mEK2ZQo29cQ
         ff+eK6k96Iw4dWferLS1ULRlm+fa0sEYvZNfNcZP69S+0H+fFiGu5xg9fg9Or6VjE2YR
         aEWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:date:from
         :dkim-signature;
        bh=Fi4tyiFgtrl/FizaXPw2EE8PWby50QskD8vRWIa0jVE=;
        b=cnmnnW9e8IDYDIcozxgzTyqoQkeJnig8Qk2OMnMT2QC0V3/WDavTYe3xJqGuYxmeJw
         NkfRWbTFe4RVMoqhVaicb7BPlUzdvbwCh6wrtNm7y6t9x4/jEHclxXokX+KyU1vr/ly+
         bNa2tY/7rJSCedOoooYtEYfeyQtdQONlW/EtZlaLuZHhqdwdcdzmJEgiK8R/BU/ClD9U
         LRBOx9TP3izlSs4YSsOcBOD7uOsqPp4KA1X76FIMiiIVtC2buXNHEHOLz6pilaGglAph
         j23Gtdn4L1gR39zOJ8DRCtJDOmxRQndufGQ19hCofoSVzCHQvzEXuVUHvQw3mhHS7jYk
         vnog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WmJDICEg;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m20si454524wmc.0.2020.06.01.05.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 05:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id l11so11381726wru.0
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 05:28:42 -0700 (PDT)
X-Received: by 2002:a5d:4282:: with SMTP id k2mr21181540wrq.196.1591014521836;
        Mon, 01 Jun 2020 05:28:41 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id k17sm10745722wmj.15.2020.06.01.05.28.40
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 01 Jun 2020 05:28:41 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 1 Jun 2020 12:28:40 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1078689006.971.1591014521285.JavaMail.javamailuser@localhost>
In-Reply-To: <2033545933.664.1590862608322.JavaMail.javamailuser@localhost>
References: <2033545933.664.1590862608322.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allnoconfig - Build # 3 - Fixed!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_970_1200254403.1591014520710"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WmJDICEg;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

------=_Part_970_1200254403.1591014520710
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-next-allnoconfig
 - tcwg_kernel/gnu-release-aarch64-next-allnoconfig
 - tcwg_kernel/llvm-master-aarch64-next-allnoconfig

Culprit:
<cut>
commit ab7876a98a2160092133de4c648e94b18bc3f139
Author: Dave Martin <Dave.Martin@arm.com>

    arm64: elf: Enable BTI at exec based on ELF program properties
</cut>

Results regressed to (for first_bad == ab7876a98a2160092133de4c648e94b18bc3f139)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
23
# First few build errors in logs:
# 00:00:34 ./include/linux/elf.h:79:19: error: redefinition of 'arch_parse_elf_property'
# 00:00:34 make[1]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
# 00:00:34 make: *** [prepare0] Error 2

from (for last_good == fe0f67660ee9c99408be5261ae045f8b41953b05)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
453
# linux build successful:
all
# linux boot successful:
boot

Artifacts of last_good build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/artifact/artifacts/build-fe0f67660ee9c99408be5261ae045f8b41953b05/
Artifacts of first_bad build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/artifact/artifacts/build-ab7876a98a2160092133de4c648e94b18bc3f139/
Build top page/logs: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/

Configuration details:
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="75caf310d16cc5e2f851c048cd597f5437013368"

Reproduce builds:
<cut>
mkdir investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139
cd investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach ab7876a98a2160092133de4c648e94b18bc3f139
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach fe0f67660ee9c99408be5261ae045f8b41953b05
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allnoconfig

Artifacts: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/artifact/artifacts/
Build log: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allnoconfig/3/consoleText

Full commit:
<cut>
commit ab7876a98a2160092133de4c648e94b18bc3f139
Author: Dave Martin <Dave.Martin@arm.com>
Date:   Mon Mar 16 16:50:47 2020 +0000

    arm64: elf: Enable BTI at exec based on ELF program properties
    
    For BTI protection to be as comprehensive as possible, it is
    desirable to have BTI enabled from process startup.  If this is not
    done, the process must use mprotect() to enable BTI for each of its
    executable mappings, but this is painful to do in the libc startup
    code.  It's simpler and more sound to have the kernel do it
    instead.
    
    To this end, detect BTI support in the executable (or ELF
    interpreter, as appropriate), via the
    NT_GNU_PROGRAM_PROPERTY_TYPE_0 note, and tweak the initial prot
    flags for the process' executable pages to include PROT_BTI as
    appropriate.
    
    Signed-off-by: Mark Brown <broonie@kernel.org>
    Signed-off-by: Dave Martin <Dave.Martin@arm.com>
    Reviewed-by: Kees Cook <keescook@chromium.org>
    Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/Kconfig           |  3 +++
 arch/arm64/include/asm/elf.h | 50 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/kernel/process.c  | 19 +++++++++++++++++
 include/uapi/linux/elf.h     |  6 ++++++
 4 files changed, 78 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..8a15bc68dadd 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -9,6 +9,7 @@ config ARM64
 	select ACPI_MCFG if (ACPI && PCI)
 	select ACPI_SPCR_TABLE if ACPI
 	select ACPI_PPTT if ACPI
+	select ARCH_BINFMT_ELF_STATE
 	select ARCH_CLOCKSOURCE_DATA
 	select ARCH_HAS_DEBUG_VIRTUAL
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
@@ -33,6 +34,7 @@ config ARM64
 	select ARCH_HAS_SYSCALL_WRAPPER
 	select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
+	select ARCH_HAVE_ELF_PROT
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
 	select ARCH_INLINE_READ_LOCK if !PREEMPTION
 	select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
@@ -62,6 +64,7 @@ config ARM64
 	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_USE_CMPXCHG_LOCKREF
+	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
index b618017205a3..4f00d50585a4 100644
--- a/arch/arm64/include/asm/elf.h
+++ b/arch/arm64/include/asm/elf.h
@@ -114,7 +114,11 @@
 
 #ifndef __ASSEMBLY__
 
+#include <uapi/linux/elf.h>
 #include <linux/bug.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/types.h>
 #include <asm/processor.h> /* for signal_minsigstksz, used by ARCH_DLINFO */
 
 typedef unsigned long elf_greg_t;
@@ -224,6 +228,52 @@ extern int aarch32_setup_additional_pages(struct linux_binprm *bprm,
 
 #endif /* CONFIG_COMPAT */
 
+struct arch_elf_state {
+	int flags;
+};
+
+#define ARM64_ELF_BTI		(1 << 0)
+
+#define INIT_ARCH_ELF_STATE {			\
+	.flags = 0,				\
+}
+
+static inline int arch_parse_elf_property(u32 type, const void *data,
+					  size_t datasz, bool compat,
+					  struct arch_elf_state *arch)
+{
+	/* No known properties for AArch32 yet */
+	if (IS_ENABLED(CONFIG_COMPAT) && compat)
+		return 0;
+
+	if (type == GNU_PROPERTY_AARCH64_FEATURE_1_AND) {
+		const u32 *p = data;
+
+		if (datasz != sizeof(*p))
+			return -ENOEXEC;
+
+		if (system_supports_bti() &&
+		    (*p & GNU_PROPERTY_AARCH64_FEATURE_1_BTI))
+			arch->flags |= ARM64_ELF_BTI;
+	}
+
+	return 0;
+}
+
+static inline int arch_elf_pt_proc(void *ehdr, void *phdr,
+				   struct file *f, bool is_interp,
+				   struct arch_elf_state *state)
+{
+	return 0;
+}
+
+static inline int arch_check_elf(void *ehdr, bool has_interp,
+				 void *interp_ehdr,
+				 struct arch_elf_state *state)
+{
+	return 0;
+}
+
 #endif /* !__ASSEMBLY__ */
 
 #endif
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 00626057a384..b8e3faa8d406 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -11,6 +11,7 @@
 
 #include <linux/compat.h>
 #include <linux/efi.h>
+#include <linux/elf.h>
 #include <linux/export.h>
 #include <linux/sched.h>
 #include <linux/sched/debug.h>
@@ -18,6 +19,7 @@
 #include <linux/sched/task_stack.h>
 #include <linux/kernel.h>
 #include <linux/lockdep.h>
+#include <linux/mman.h>
 #include <linux/mm.h>
 #include <linux/stddef.h>
 #include <linux/sysctl.h>
@@ -654,3 +656,20 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
 	if (system_capabilities_finalized())
 		preempt_schedule_irq();
 }
+
+#ifdef CONFIG_BINFMT_ELF
+int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
+			 bool has_interp, bool is_interp)
+{
+	if (is_interp != has_interp)
+		return prot;
+
+	if (!(state->flags & ARM64_ELF_BTI))
+		return prot;
+
+	if (prot & PROT_EXEC)
+		prot |= PROT_BTI;
+
+	return prot;
+}
+#endif
diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
index 20900f4496b7..c6dd0215482e 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -448,4 +448,10 @@ typedef struct elf64_note {
   Elf64_Word n_type;	/* Content type */
 } Elf64_Nhdr;
 
+/* .note.gnu.property types for EM_AARCH64: */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_AND	0xc0000000
+
+/* Bits for GNU_PROPERTY_AARCH64_FEATURE_1_BTI */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI	(1U << 0)
+
 #endif /* _UAPI_LINUX_ELF_H */
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1078689006.971.1591014521285.JavaMail.javamailuser%40localhost.

------=_Part_970_1200254403.1591014520710--
