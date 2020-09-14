Return-Path: <clang-built-linux+bncBD6K324WS4FBBKOQ735AKGQEJV6ZEMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE470269326
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:09 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id a4sf48808lff.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104489; cv=pass;
        d=google.com; s=arc-20160816;
        b=pSgJ0Y9qaJeQN4f3/+HbK2SVQZA1++++CnUDYtrp/Dg8GJHYoF69XMgJS3SP2R2hkv
         4CZXtVSd6wCUe8J4MsvyC8WKa295tZuhYmBNKxim8x9BVQV19f0Ixt69pAWS/M9ll0hC
         Jzp+rtuZjh7Ndv+O4zcL1Szr6FLfg2XKgff19egD3klxuaUlG0BS3Qz4xZjgE9c3b0TF
         8NkpVnrA4b/L/OBkQjS4PjfVR8LnoaerirEWADUDUY+JLzZN1g9ziQlcA9EStJZWowui
         NC/jN+DtGjhrgaLNSWLfuPca6d1Ajq40WeEj2UZ2fIkg9gfdANHMb/508jD5D2+qVhOT
         HudQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=WBqVSbJoE79yrVo4oboeS9oflUggYCkK9YZfSYmUBpQ=;
        b=XjWf4S5mqVhue4zWaAOnIdi08t+kDUJjuGSrHoY06SbaNHLNulHngvIOOGJUcXNhEa
         jRtey5eK8R9X51p8vvJmw6uskCk2NL6O5j6SC2pmKja0NwbN+peLG8SIYY3774nSsKIr
         XjdoozB0tDo2buGfOYfR5MYTVo8C+0/ZHqq5ujd+vhB5vqJ0/heC5Khi+u3p54Ey+pNL
         aiT0C4OZPBiJ18b71Ob3ikFFZLmVY0+U5UX2pSZGyfQJgl6Zu8gGmQIXVCBa9SFmbI7b
         5ZKX1z7NjC+xbNPzZJcdTuQ8/3V8EQlbyRBH72KuULI3dVlSd+1sZE6C3iom1ogVgme7
         XFDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FSOe1Y/p";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WBqVSbJoE79yrVo4oboeS9oflUggYCkK9YZfSYmUBpQ=;
        b=g16wjjXQqTEei3S3s7cQUR9YuxA2mxIHSrKIaP5eWLP8kwJ7cjpYPAom9eK888mkgX
         iA8PQCPMm9fAJZYRjbJ3UlTdG5yq7MC4Sog+gJWEEqmW1VU68vp4jKPz8jeN/exYA3ha
         jjqqtBqj3g04QSz0IniD43RouBpLAfgN+/dxWocNeexdtepksv2c9WyvJhtDq3rU8GQL
         aXyUGAM1dHVNUkEvEdvNjFnSGeD2nyDSbTTBHDD+DUlZAczcr20XzgokfHuSv8m98BI5
         hnxqjWPqWdUlXBwIkIGPXPmDHvlh3kegIoxzbK8bOl57n4CtryEO0a3VKPzFuJr5q12E
         8ZBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WBqVSbJoE79yrVo4oboeS9oflUggYCkK9YZfSYmUBpQ=;
        b=kaAi8d0+AL2WC9NGLDtuwGEi3S589MwJ5URGXwzpd6xE1Tj9iBT+hnZYYMaKZUJGug
         GXQqvhTr6Obg8ua3b3Y5lweXqB3gp60+2Q60aJUImOyVbKOC1RtSUnpGQxfaYFd+Dv1w
         32Ozof73n8Dyo+cENTIuN8Dlqv69XYTPJeeSA1ErFNZv+VFO4enwlLtdcYC+bToRgIet
         BbgkXNPbg8UweS7JHwRqJcvAGrqgZ+wkE1OrgZIHdrs0TbLaJCcNWSEmPof4rDFi57He
         yzobUolNZyevrmUAntKDYMQtIDnayVsCkag2FDe2BVSYQ0QtuE7k4Lx+S2eNYNXEhzUV
         HWjQ==
X-Gm-Message-State: AOAM530isqo2uPISLrCnYYe4Fkw1K5Xunme0w+ju7AivY2AKM2VdE8Ov
	csFF9qBNxTQL7xkrAJ51mb0=
X-Google-Smtp-Source: ABdhPJy7lwMGV4JQqnIYJ3AyOPvIb4x4+IAd+h8OnJu7B+8E1jV8Vpl0PRew+NAEU3MwqkRKaEBYYw==
X-Received: by 2002:ac2:43d5:: with SMTP id u21mr5714808lfl.135.1600104489281;
        Mon, 14 Sep 2020 10:28:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls314747lff.1.gmail; Mon, 14 Sep
 2020 10:28:08 -0700 (PDT)
X-Received: by 2002:a19:c20b:: with SMTP id l11mr5140608lfc.438.1600104487934;
        Mon, 14 Sep 2020 10:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104487; cv=none;
        d=google.com; s=arc-20160816;
        b=otzqtdKJiP4nzY1W+8xOCLtMSVrGxFXKmhaKdU2Mv4i4frrMnOLxfCUSmRnipcj/fV
         BSshwbus4kcASZva+EdGvorn425NStaqRPlMm+OvkKitDPXrrxYJtA/q+mIeBK/v+9e4
         t2v+ODERsHuRF+g94to/vkrohVKaBSFxM4tI/zBDUsur4egp0Q78WqWHVyV0IZZwMayJ
         +Xw2uoua6snPnbXP7ZiK/NVfJyLhhzQMyJDrqRmOSWKQMcsGitxlP5fq5L/pwLduxnVj
         fd3TayzVYW7/Rn+C2TZd+11SaggbBhb/dc0wriCUjuY9otPqoXmiy/Vwa6ai5p19wU3D
         n9Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I6yqR/klZ/NDqjAIsRW35d99E4ctp6zjUJ0+p6Qp1zk=;
        b=qg6Vi0k6xoAg6SEf/MCjPjSl5On8MKd/WwX68n1W1F6xsZ9C8OTrSO4RUCV7VRwEic
         zZvRPJCRTwlNbv/FfhXE0DA4QzWbhbpwLmDKFB+jb4uCakVVYp440jsgAu6QgQid3OSP
         cxtTzKA9AhV86RRXaZtA0fvDtu/xcVrJi4b8g31bITbs4riyJGNOpLsbLjPcQOlhHwED
         7tFN89c7H3ROrmC29C/AK+A1m9yWY7OAFRg+QYK9p1aWgoRvVmMZiMexaZgoRpBbxWx9
         gRLEtzdwLC5hnBtdyvVkKrhA5Z1b0yMZVmAWuJgfrmUc8Wl53OUVqk0Ajtt0uJHZ0TxV
         nlEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FSOe1Y/p";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 14si340076lfq.5.2020.09.14.10.28.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id e16so538718wrm.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:07 -0700 (PDT)
X-Received: by 2002:adf:f586:: with SMTP id f6mr16953275wro.299.1600104487527;
        Mon, 14 Sep 2020 10:28:07 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id h2sm22418218wrp.69.2020.09.14.10.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:06 -0700 (PDT)
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
Subject: [PATCH 03/14] KVM: arm64: Add support for creating and checking a logging buffer inside hyp/nVHE
Date: Mon, 14 Sep 2020 17:27:39 +0000
Message-Id: <20200914172750.852684-4-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="FSOe1Y/p";       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::444
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

Share a buffer between the kernel and the hyp/nVHE code by using the
macros from kvm_debug_buffer.h.

The buffer is composed of a writing index and a statically allocated
array. The writing index counts how many elements have been written inside
the buffer and should be set to zero whenever the code goes back to
EL2 with the clear_kvm_debug_buffer macro.

To avoid consistency problems the buffer is defined per_cpu and is designed
to be read-only from the kernel perspective.

Check if there is any logging data from hyp/nVHE code.

Every time when the state returns back to the kernel after an hvc call,
the __kvm_arm_check_debug_buffer macro checks if there is any data inside
one of the predefined buffers.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_debug_buffer.h | 34 +++++++++++++++++++++++
 arch/arm64/include/asm/kvm_host.h         |  6 ++++
 arch/arm64/kvm/hyp/hyp-entry.S            |  2 +-
 3 files changed, 41 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/kvm_debug_buffer.h

diff --git a/arch/arm64/include/asm/kvm_debug_buffer.h b/arch/arm64/include/asm/kvm_debug_buffer.h
new file mode 100644
index 000000000000..30c9b0b1a7bf
--- /dev/null
+++ b/arch/arm64/include/asm/kvm_debug_buffer.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2020 Google LLC
+ * Author: George Popescu <georgepope@google.com>
+ */
+#ifndef __ASSEMBLY__
+
+#include <linux/percpu-defs.h>
+#include <asm/kvm_asm.h>
+
+#ifdef __KVM_NVHE_HYPERVISOR__
+#define DEFINE_KVM_DEBUG_BUFFER(type_name, buff_name, size)             \
+	DEFINE_PER_CPU(type_name, buff_name)[(size)];	                \
+	DEFINE_PER_CPU(unsigned long, buff_name##_wr_ind) = 0
+
+#define DECLARE_KVM_DEBUG_BUFFER(type_name, buff_name, size)            \
+	DECLARE_PER_CPU(type_name, buff_name)[(size)];                  \
+	DECLARE_PER_CPU(unsigned long, buff_name##_wr_ind)
+
+#else
+
+#define DECLARE_KVM_DEBUG_BUFFER(type_name, buff_name, size)            \
+	DECLARE_PER_CPU(type_name, kvm_nvhe_sym(buff_name))[(size)];    \
+	DECLARE_PER_CPU(unsigned long, kvm_nvhe_sym(buff_name##_wr_ind))
+#endif //__KVM_NVHE_HYPERVISOR__
+
+#else
+
+.macro clear_kvm_debug_buffer sym tmp1, tmp2, tmp3
+	mov \tmp1, 0
+	hyp_str_this_cpu \sym, \tmp1, \tmp2, \tmp3
+.endm
+
+#endif // __ASSEMBLY__
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 905c2b87e05a..adc8957e9321 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -494,6 +494,10 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 		__kvm_call_hyp(kvm_ksym_ref_nvhe(f), ##__VA_ARGS__);	\
 	})
 
+#define __kvm_arm_check_debug_buffer()					\
+{									\
+}
+
 /*
  * The couple of isb() below are there to guarantee the same behaviour
  * on VHE as on !VHE, where the eret to EL1 acts as a context
@@ -506,6 +510,7 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 			isb();						\
 		} else {						\
 			kvm_call_hyp_nvhe(f, ##__VA_ARGS__);		\
+			__kvm_arm_check_debug_buffer();			\
 		}							\
 	} while(0)
 
@@ -518,6 +523,7 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 			isb();						\
 		} else {						\
 			ret = kvm_call_hyp_nvhe_ret(f, ##__VA_ARGS__);	\
+			__kvm_arm_check_debug_buffer();			\
 		}							\
 									\
 		ret;							\
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 46b4dab933d0..8df0082b9ccf 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -68,7 +68,7 @@ el1_sync:				// Guest trapped into EL2
 	cbnz	x1, el1_hvc_guest	// called HVC
 
 	/* Here, we're pretty sure the host called HVC. */
-	ldp	x0, x1, [sp], #16
+	ldp	x0, x1,	[sp], #16
 
 	/* Check for a stub HVC call */
 	cmp	x0, #HVC_STUB_HCALL_NR
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-4-georgepope%40google.com.
