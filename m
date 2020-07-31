Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPGNSL4QKGQEGRSOMTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4A0234E61
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:21 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id h26sf6986715oih.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237501; cv=pass;
        d=google.com; s=arc-20160816;
        b=fS/X482x8BgFa1Gc1H5L/ocAU3Zs6XARoGw2BTwHKo2gcW33tggF/7XP1hzHdCeIGI
         qQ/h38tOeJmci30K5yNt8CrXIOHg+j3eYOdf4+48VBOj10mW4WWAfQlLr/S0oMN5JcHd
         vlYDZylg8wuXAMs+Spvb2vjybJ14xD8Tlg3AwUVFQm8h5sFrKZxNKV5ioSzeDIM3XseB
         qnn1+xU1htLrvqmS8y6JwlQk71cTprS2Kkvrdirpc5xTcMqoXXgTZp1cAUIGFXxhhmWO
         7LttLCY3s6ujS8JK6XRybA9UaGqZuLLJh6U3ivu9SlNs680V28mphqzhriadm4WtRsAS
         i3dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IlEQGH6z4G2XdVpkIVm376WNnnEWt+4ILI2Zrd63oFk=;
        b=uGLEgvWfYEy4x+8ZmNkCXrAVSbE9KnIAld+7NLaFh32zcd3Zo3+hCZ5m798G8XQ8fO
         UW1dEvNj+SJiNRyH7y1fC2+ynRF81hFnPf5MqYP/AaViPpC9qgIV4Eivtju3cwAG7nag
         Waoj1x8C7i78IfnMxLpwFVMX85eeKRV0uCGc7s5+UssHXe8J3qRLoNbz24aWYnEC65uz
         mCBy5y5+1S7HU1tzor5U0D+IO2SysO7KBqthxLOkLarM1weNHWDgvq5MUO/TXDOVXVlE
         NM/KukLOl9+tI7XvKzvosWgmJlIL+WZGl7VBIT8J88qzoCU8LGMlpEbfsE33E6RJLG5b
         H51w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V7pRW5Z7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlEQGH6z4G2XdVpkIVm376WNnnEWt+4ILI2Zrd63oFk=;
        b=iO/QbRa+2UGp13BIXuf3XkMwaJ670mSLFPFgKhjAKvYAhf5bJkZYe7r0JXgG4M/aGj
         B5RhDR3XrCaVp0zouyuXPGZ0XRByuh4atZQ4GMTLZuUzPQBq2FdafAO7CHc0Acq9AoAW
         3SesoCPbGKnqznQT8E3DNDCOb4iYsy9IXkXjzxo6G2jyWUMiqNMXAeiOO0gEmE84RoeT
         BSVSiPLPt5GQ2FoQF+Bvmb0Hd+NHUrhMRpuTupzoffwH48Ud4cP6ZkO/eZaQ9QjJPpIu
         ktR8lMczeEouO40T3O8MOq4ldNOpbl9rgwYNpgV8kYk4RcfJYXZBAwhjhCLD99dXD0vS
         6HUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlEQGH6z4G2XdVpkIVm376WNnnEWt+4ILI2Zrd63oFk=;
        b=K8T1abuWeKiFpLc2SOYYTnus1s7HLCBsW/0rg+mrDjV/0TrNzjbPgNV74U97xwxO+k
         CTGv7IqXX20oSWF+lzyC1Hnkm5d0Dp2BhUZeeusuMYX39nPd9sZqYJfV3DMjiiDmA1FK
         v1yktkTbgnf2opAf8BvZT6TcSIy7nF55N9NKBtJF0kozH1Q09/RgJVK0NBTN2DJEcA+6
         tnX5ZOupsjcaKL7Zb1HhCT5/icPDOnGGCoP4UcuEngX2XFi1jOgR1KJFFeyn0B0LMHyk
         Kfkd1aE1/U7g5vJpNkSg2WumluzNzp6c0RTrxV3KwdbrDoFUVvqUoMXXTZGPdRcIBzc0
         uDQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530m3qy9lo4YJ7OinAzhCAR25YC8TMcJXNLdhnffSmBsrw2SYps9
	fv1b4+ygtqGjxqVSN54CP8s=
X-Google-Smtp-Source: ABdhPJz6DqN8Ym0ZKfQvY3RqrYAvQTay9w6e7H0NYrxNfdJbb1TEg8NagOH/g6aGkYo8meR3fgsT3w==
X-Received: by 2002:a4a:9e05:: with SMTP id t5mr5182458ook.76.1596237500899;
        Fri, 31 Jul 2020 16:18:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d09:: with SMTP id 9ls2100170oin.6.gmail; Fri, 31 Jul
 2020 16:18:20 -0700 (PDT)
X-Received: by 2002:a54:4795:: with SMTP id o21mr4883297oic.13.1596237500666;
        Fri, 31 Jul 2020 16:18:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237500; cv=none;
        d=google.com; s=arc-20160816;
        b=0BTeSDiNhs7xqsl6sbnDi3mUfRd3p9EUWT4NEPmDBfXac3STk/rG0jyX8eDfbgAhgC
         UEOktT9L1NfePyyXMSU+f99gNQUz+3KNNPcw2rhzqmYmTz3/XyQNdfqB70SlRGw8gBIo
         rPIdiACjOqyOw4EXseCfMDN+LAzuSCZ9EjW8wzcL1goQ4QgXhtkQukY0sQww8Xt7aW1j
         lJfo15XiWaM1gSGXB7xbds/76xOfbTiL2I/UEYjtpvb3L5n9YZ6SAQqN6Te2pjhM7K3I
         PZUy8+Mo15jhlN3VYZFeZ55VBl9S/To0eQyQZ5jUCbjrsGQ9wEc/awO44q9o15npjCGh
         c5wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aNMQ3F5q4g/Uk/+s5Q6WGurCwVwunmhXKYzGhkTYsIo=;
        b=ceMsbk+lJXxJ/ks/C9ON4RNKnc+UjaOFEiyNNp7xq0TxuEvQvNx2JbXrKjpM6vbEEb
         TJhenjRSIE/kvik6QU9+h/13A3yZXZsDCpClOO5VBc7JMfouIVYXPItQRjj6b0vjJcSG
         HQKTTl4WFWDIjp+6X0qzPUGyGNoXs7cfbMiPMZcjDb401S8/5BbEGeTBAhutlqYryJ6f
         o+UA53GiIsiH5vTIGgejOKMEY26kMjTvh1T/uTBflA6cZMcw26LRTXGT6Z+wizn4ZrZz
         95jYrPFczKy4L9BZuu/9z3okt6tpwG9avwY6V9e4I8bGE0mpCz3h6huJDB7CygDH1yzt
         lL6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V7pRW5Z7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id c199si414554oob.1.2020.07.31.16.18.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id h12so5427203pgf.7
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:20 -0700 (PDT)
X-Received: by 2002:a63:3c55:: with SMTP id i21mr5799731pgn.93.1596237500020;
        Fri, 31 Jul 2020 16:18:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c134sm11221511pfc.115.2020.07.31.16.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 22/36] arm/build: Refactor linker script headers
Date: Fri, 31 Jul 2020 16:08:06 -0700
Message-Id: <20200731230820.1742553-23-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=V7pRW5Z7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for adding --orphan-handling=warn, refactor the linker
script header includes, and extract common macros.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/{kernel => include/asm}/vmlinux.lds.h | 13 ++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S              |  4 +---
 arch/arm/kernel/vmlinux.lds.S                  |  4 +---
 3 files changed, 10 insertions(+), 11 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (96%)

diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
similarity index 96%
rename from arch/arm/kernel/vmlinux.lds.h
rename to arch/arm/include/asm/vmlinux.lds.h
index 381a8e105fa5..a08f4301b718 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#include <asm-generic/vmlinux.lds.h>
 
 #ifdef CONFIG_HOTPLUG_CPU
 #define ARM_CPU_DISCARD(x)
@@ -49,8 +50,12 @@
 		EXIT_CALL						\
 		ARM_MMU_DISCARD(*(.text.fixup))				\
 		ARM_MMU_DISCARD(*(__ex_table))				\
-		*(.discard)						\
-		*(.discard.*)
+		COMMON_DISCARDS
+
+#define ARM_STUBS_TEXT							\
+		*(.gnu.warning)						\
+		*(.glue_7)						\
+		*(.glue_7t)
 
 #define ARM_TEXT							\
 		IDMAP_TEXT						\
@@ -64,9 +69,7 @@
 		CPUIDLE_TEXT						\
 		LOCK_TEXT						\
 		KPROBES_TEXT						\
-		*(.gnu.warning)						\
-		*(.glue_7)						\
-		*(.glue_7t)						\
+		ARM_STUBS_TEXT						\
 		. = ALIGN(4);						\
 		*(.got)			/* Global offset table */	\
 		ARM_CPU_KEEP(PROC_INFO)
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 3d4e88f08196..904c31fa20ed 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -9,15 +9,13 @@
 
 #include <linux/sizes.h>
 
-#include <asm-generic/vmlinux.lds.h>
+#include <asm/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 #include <asm/memory.h>
 #include <asm/mpu.h>
 #include <asm/page.h>
 
-#include "vmlinux.lds.h"
-
 OUTPUT_ARCH(arm)
 ENTRY(stext)
 
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 5592f14b7e35..bb950c896a67 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -9,15 +9,13 @@
 #else
 
 #include <linux/pgtable.h>
-#include <asm-generic/vmlinux.lds.h>
+#include <asm/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 #include <asm/memory.h>
 #include <asm/mpu.h>
 #include <asm/page.h>
 
-#include "vmlinux.lds.h"
-
 OUTPUT_ARCH(arm)
 ENTRY(stext)
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-23-keescook%40chromium.org.
