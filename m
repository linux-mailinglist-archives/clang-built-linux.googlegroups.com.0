Return-Path: <clang-built-linux+bncBC4IFTUFXEFBB2E7UXVAKGQELL4EJCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F8982F35
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 12:01:13 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id i16sf34308510oie.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 03:01:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565085672; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rppjl+B8xfaoyoV5D+jGmc0s7syro26fXKdk/qswSDYt/TDFUg9HEjJsYBcgZRF41m
         W4EPGILQTalnBxJmMHkn0yTXU3hrvFKWs5I/IMr0ReY/YJUUQkt3JoPT8JRV1zITrsvL
         vg4Eq6SwjoqJQrkuwellW+eNvEA9UjaK18x7wKlEl7NtlcctzJdwgoysknYI437yCbDN
         07OFaidchC4W00m3KbcSunUXpSDxJ2DRS7jGP2JGkkaASJimMuHT/4uF9+/SU/9NTVax
         pfmRc+IeNVjiAlgVR6LIuKDOxBpCZMipoRsRVouI+JS2CmXT0Q5zTIFVtjGcrApTCxc2
         A26g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=/s+Xhyxuzy6Njs23/k/dhol8l3MFQ3B60niSFn6SDqo=;
        b=qCWcZoksSdCBzh4DQ1afMSKGDMcjYGdNCaXV7/Llh4fhw24X1VU21xD2kYRcEQMZTa
         hz79mqbOeOWrLHoAKWHj9MGriD21w5++I3QGztfXo/Zn1qV/elYJQSDiGT8T/aWE55gQ
         YKYasjD+HoMBNuSN4UzNW6tLaIu5CoVCVT/GO/YC2HHEvs45CmUWmd/talZ0XFQ5GTWP
         qsOGNLga2D1MD3au0A3h63S3VCFo0R51F9n5kGcn9hosa4mRg0byC97R/5WPTDUIqr4u
         D6UvOoZ/2k9uX7Nfpz4vfeowgbh3zTDw6rTV7ZPddp7B5UFVq4gBkeVapPV1jAJA7zVv
         neWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ryN6Ug8N;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/s+Xhyxuzy6Njs23/k/dhol8l3MFQ3B60niSFn6SDqo=;
        b=W/zdbNqg2z9aLN0VCHjX6eXtBhq/FU04Lla3d+I3LLj5yTq1c7kYr2onqy4q7X+fjA
         esv60UamVlFSFXt9fmWVrqmxK6rAsKviAfEXKOCBaM7eyZ+InkpGYdbPoej0zj0BC7I0
         gVi1Tgs2ooP5x5JWmR1D1uCiJeVpw4e5WrnmbaiCkZdfDuw0ZdHFI0R6fig9AXXVAhBi
         oGjR0yDoXEwXTWqJhmWWr6hu5gaTrtlcdfYZF+M7vT8EEGS2ClAqh4Z9I6odL8lJD4mF
         hBK00tpgciX+tBlBX0oyPrj4By6ZVGj2AeG++L+JETrOiMTXQTsHeGTWMPtccYnKOhcu
         7FQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/s+Xhyxuzy6Njs23/k/dhol8l3MFQ3B60niSFn6SDqo=;
        b=mSSVXTYMWMkTmIQfEAwnQcVIpW+oodDNAPfVWl+gNbxrxonneoyMZKfntKC169YlxS
         4hgdFvReA1+55+ORDscza/1uSSgTttBA89lfdw4ucEt35vOZp3SXPUqe2xLV5hZVbtR9
         Bot4eZmIpkrwRMMthLFHM4wi+oT0dUhs3Djy/gb2Ow4FwIe6CNJphACXtw7Wxf0e4JYB
         O78mTxkAbAJjiRtaPnxGKJY6omn67kgaXP+ZVeQjHCAi2L+gUaEiDWZ+GR4D7y0luyPt
         sGZcEte9DLe5Z7KuAvKWA4qTP7RsSiaEX69Guwus6QgjAxiLPn4FqoXiVikOpYh0NyrT
         DorA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU+iLMkwSJuOW71kW+okG3I9DMU+Xd+Eq64l3SWGiVtU3N+b9VG
	2INdhf8I8/qziWXO55j3yd4=
X-Google-Smtp-Source: APXvYqwtWBvsspGnqJVExfhpiVbqUhcNVGKZcdc9BuA6iafWHuCoNRxVoO/HRUu7kTjPy8bdn08kMA==
X-Received: by 2002:a9d:70d3:: with SMTP id w19mr2498877otj.208.1565085672781;
        Tue, 06 Aug 2019 03:01:12 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dd09:: with SMTP id u9ls705421oig.6.gmail; Tue, 06 Aug
 2019 03:01:12 -0700 (PDT)
X-Received: by 2002:aca:48c2:: with SMTP id v185mr2065296oia.132.1565085672533;
        Tue, 06 Aug 2019 03:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565085672; cv=none;
        d=google.com; s=arc-20160816;
        b=syCZ97TQjl/mywziffYI/qq98GWbcqkQbDpMgAAOsbFhHpG3nlrj4EG9yooWjDr0+3
         hMwTW36XwpYF59oPpfOO5VDlYJV7IKiw5xs3zL1aHV0pS9dunYo34qVW318E05H4ON/b
         98fe4CrhwJ4UWe+lharVdoSPhwnA5uKgZ+/Fp0L/7zQSASxNfHmXYMefZ9j3moHqWvut
         N6L9RGIl7fxx5sCRGb4dIcG5Cf87CouV2yZbmkhJFOadDbUCmg65KFp51cwfkoQMu21t
         Sda6wljGGVDUpFH/KYl+lK9nSeJb1Ps/uAghzJDyDUSkWf8UFd3GAeQaN7LC9yV5W4V6
         PBHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=X1kq35amQF0eADWBqq2tRXGYPbvo4jnAQagrNi2mP5k=;
        b=MMQ695hkszOnnj3AIkmOn9R3ROVbst/aLzYDNpxFk9a+RCszk4+SMknF3F/F5w/1yn
         IkQN9ibQSiGjrNqw/hhnsc1QdqTyJVlgCyDWndnfldqztXFSpveDiiYhqniqGEcoRX6c
         5CuxZoVg0fsKfNK/HEbNjA08VvJWSQPqW1OX5l9LJKzNre7AjzsU/blM/q6rXLCX6eY/
         rM7A0poB5oS5UmTnGo8OdgZXE2xZVoJQAtoSf3dmuIvVgDDTwkIgDSbrWHWJ+CWyX8Ih
         as8viNzqSdolpc83akvUTFLo4ZHP4Olwi8LnQeWC1IIq5+diUe/oiwvHW04hx2TvvjmA
         s2Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ryN6Ug8N;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id i6si3671979oii.0.2019.08.06.03.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 03:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-yw1-xc42.google.com with SMTP id i138so30625393ywg.8
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 03:01:12 -0700 (PDT)
X-Received: by 2002:a81:2545:: with SMTP id l66mr1596296ywl.489.1565085671977;
        Tue, 06 Aug 2019 03:01:11 -0700 (PDT)
Received: from localhost.localdomain (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id h12sm18316685ywm.91.2019.08.06.03.01.02
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 03:01:11 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>,
	Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-arch@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v2 2/3] arm64: Add support for function error injection
Date: Tue,  6 Aug 2019 18:00:14 +0800
Message-Id: <20190806100015.11256-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
References: <20190806100015.11256-1-leo.yan@linaro.org>
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ryN6Ug8N;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c42
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Inspired by the commit 7cd01b08d35f ("powerpc: Add support for function
error injection"), this patch supports function error injection for
Arm64.

This patch mainly support two functions: one is regs_set_return_value()
which is used to overwrite the return value; the another function is
override_function_with_return() which is to override the probed
function returning and jump to its caller.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/Kconfig              |  1 +
 arch/arm64/include/asm/ptrace.h |  5 +++++
 arch/arm64/lib/Makefile         |  2 ++
 arch/arm64/lib/error-inject.c   | 18 ++++++++++++++++++
 4 files changed, 26 insertions(+)
 create mode 100644 arch/arm64/lib/error-inject.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..b15803afb2a0 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -148,6 +148,7 @@ config ARM64
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
+	select HAVE_FUNCTION_ERROR_INJECTION
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index b1dd039023ef..891b9995cb4b 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -301,6 +301,11 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
 	return regs->regs[0];
 }
 
+static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
+{
+	regs->regs[0] = rc;
+}
+
 /**
  * regs_get_kernel_argument() - get Nth function argument in kernel
  * @regs:	pt_regs of that context
diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
index 33c2a4abda04..f182ccb0438e 100644
--- a/arch/arm64/lib/Makefile
+++ b/arch/arm64/lib/Makefile
@@ -33,3 +33,5 @@ UBSAN_SANITIZE_atomic_ll_sc.o	:= n
 lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o
 
 obj-$(CONFIG_CRC32) += crc32.o
+
+obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
diff --git a/arch/arm64/lib/error-inject.c b/arch/arm64/lib/error-inject.c
new file mode 100644
index 000000000000..ed15021da3ed
--- /dev/null
+++ b/arch/arm64/lib/error-inject.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/error-injection.h>
+#include <linux/kprobes.h>
+
+void override_function_with_return(struct pt_regs *regs)
+{
+	/*
+	 * 'regs' represents the state on entry of a predefined function in
+	 * the kernel/module and which is captured on a kprobe.
+	 *
+	 * When kprobe returns back from exception it will override the end
+	 * of probed function and directly return to the predefined
+	 * function's caller.
+	 */
+	instruction_pointer_set(regs, procedure_link_pointer(regs));
+}
+NOKPROBE_SYMBOL(override_function_with_return);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806100015.11256-3-leo.yan%40linaro.org.
