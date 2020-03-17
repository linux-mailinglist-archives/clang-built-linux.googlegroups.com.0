Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB4ECYPZQKGQEGCABOIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC5B1883D5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:24:17 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id i7sf1042980ljg.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:24:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447857; cv=pass;
        d=google.com; s=arc-20160816;
        b=fLPDUsR42igVhRWjVm3kW7QWzAV3wcXFuFQLqM8YzDvCyqwp5jUBv6Pcpx/vmyJ8lT
         N8a9n+mnxGRUFVhglhfjo3z/yc7Xbl6Y4eYSmpUi2RBx2nx0rNrS+kN+WIKGtL+pgqPR
         XgiZ1ynRLf7BspLSNVD7Cy/oGfdQm17qbAtXurVryzSicpgT/sW9nxhOdADAcBDRd7F7
         SGS864ni8LdzF9ATdDgF37dRTEmxiUqZDta0UiIU5bOhJemKDYLZjX6+j0MEKJQEw2Hd
         +awHCuk1hW5JTuIixV/noHl4R72JKtWhYHdJrWkycMPWaK8GBHSQpyy1L59ctfBBwOUq
         nLoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PsAHw0d447TUWm0TWQoFJyRo08NOoeGlzKjMthJ4hcM=;
        b=iSaYpDnyB0ZUOxdL2xYp/aW5Yqi2tlscDjmzT7PzZEE1d/ul/E2UBb2D3COTjB69mf
         KSuNAOUW9aWHrtKW55snui8Sv5GueiIfEciXd5nQsqJNpT+/H59movAtLO5e+OY5vHh2
         udjsxwPobcb1858AX+WUPpZdgPq52F1H6me12iIc8u+cAn44oeQ6+ZZQk3uTpgR3Ncan
         H3BROzOF45n3WabhqDmiysKcAT27V3Ozn5Ugxu+mYhP37vJt+y0KJs4kaRHzrHOSzN6S
         n5vXaGUTmw4Uvrzots8kwiOy+KPz2XSnFiGexObGY2mzSGKOmInyWDLnu6LsUxLjyga/
         oxkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PsAHw0d447TUWm0TWQoFJyRo08NOoeGlzKjMthJ4hcM=;
        b=hE20VHAWqWMKxJIAFvxGaU4cssvzAAttapapyd4dF/qdZYNSaG3rhlnkmVhMtHm32x
         PFX2wXcjBHYsBnmuPul+No++CkCdt0E07SUtZ/z4vB0mJSYG286dhdbdDrdh4JUqzrd1
         trg2jfi15iVerEzbGvxMxYmK1HG3bd2nK6CImKpGLbBTAtuY6mlY8Uw5d/5xSk+XgPIj
         fJe8TfRu56xwX/znnsAGrXzTCyD4heEVL92/H9Idq+VrmQOEDGt6YgkexwTsjOUZVfba
         XVD7NZgXKVr8nx+We85wa+Nrm8UVGe5q1zFf06tUgHzzj6AXQG8fmSuUQyNBn0BGP2FL
         4Ccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PsAHw0d447TUWm0TWQoFJyRo08NOoeGlzKjMthJ4hcM=;
        b=kv7ovXTA+9vljgupy4h9jgTMZoC4Eo6rjwKhbw8EelCi5FqPbi3DssNIg40FO7a099
         +TB3jX0j2m5vhfetWNpl9aOS6uY6PyhugxD0X88gVs+Ap9xw8AdHERJeOo0ryB8K9ec3
         /BuGYFGn+MYJM900ub7fFcSnNz2GuFpn0NxWQT7NJKWyOgV6SpQfbG6ULtu0Zw/2oj/I
         r+TAIu9Z+0Ny/avdaw6SeUen0U6QjlJ+6wwVSeB94qnYzDH/dSsjh+VHrvzq2LsnOKix
         yF7j4VISzyESHWgXBQDkET6Uk5HUXDKSXeMNmQaL57F7tRI7UMWn60uXukT9FCcsiXoS
         BR5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0kfMJXBTygCT85yWEdAw5orrn2NEE4zEoymneRrIoq0E//l6kC
	kkzhoChtAzDeHruuK0/2SK0=
X-Google-Smtp-Source: ADFU+vv/jjFMpMG9VRBHSksAFGO3M8c2uj4VxrqQ9Eq8Ywtk4a63ixav5lX/qOaL3KKIYnMId6qg4A==
X-Received: by 2002:a19:c748:: with SMTP id x69mr2689369lff.196.1584447857140;
        Tue, 17 Mar 2020 05:24:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls2925265ljg.5.gmail; Tue, 17 Mar
 2020 05:24:16 -0700 (PDT)
X-Received: by 2002:a2e:8119:: with SMTP id d25mr2696658ljg.39.1584447856417;
        Tue, 17 Mar 2020 05:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447856; cv=none;
        d=google.com; s=arc-20160816;
        b=00tl40Gi1kePs+QC53DT4+oYiM4Y5GU2qqRZrYNYn6hepsa0PEP28Hp0I/IbB/cIQ6
         LKSVSTWTxAu602is7iznij077jGpQtlXFhqlsUEwAeNtJGO1mPNrBkGDOcJGVsi0irSt
         wYRlkmaE/oVLwbRCs+xyj0aFTft0e2Uxb+J5RogZHmZE6PeWbOKIXgGkt18j/eAPtWcU
         HY/kDPvHTuYG9O4dfcTuJsesGGSJKxuQWpOXIA+ts8QCJYh0WHPI8Lh6ZOv7O7vgeXdP
         3DX/y87/gaEubRRG2qj/QIodFfffN1LFX1OBUNatlzmgLku6tMl+lG4BpvVhiSdPfBHZ
         67qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ndtJRAIkIsjQD0vsWaiaLE/YfylcdKAjKcBDdCfbPSw=;
        b=SVnVJG8LhRjimH9W/zBPEsTvIBQ5M9d4/Hll3kcq6K03G/JOZ0TS8ncPd+fo4tZAvo
         MzZQTSpRkwFTYPB1bSS5pQlAn9WC7DNZ8/EazqcHHWAAOFl/xoJeSQ2H0NWvA3R17q1q
         Y3aJSckeXgabMK6N9RifgDYvEPSgUMXmrn+ubtJ5Ey+ZWTUmrwoXt9cxc4IykE5rFt8z
         VoCwkBicrLCUfjQv6Tyy6dd9DwZRBB8/xB8i6vEaRz73aTUB2Q/Gr33hT73xfDRpqkX4
         XI3OVDde/IoTfAQ3jI1L2x6HaOvOqyui9VlGLNX2Izw+XVKcgEMzlnPgsy9SwTOdG5aW
         h6aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a21si182268lff.3.2020.03.17.05.24.16
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:24:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 876C0FEC;
	Tue, 17 Mar 2020 05:24:15 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CCB13F534;
	Tue, 17 Mar 2020 05:24:12 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v4 26/26] arm64: vdso32: Enable Clang Compilation
Date: Tue, 17 Mar 2020 12:22:20 +0000
Message-Id: <20200317122220.30393-27-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Enable Clang Compilation for the vdso32 library.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso32/Makefile | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 04df57b43cb1..3964738ebbde 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -10,7 +10,18 @@ include $(srctree)/lib/vdso/Makefile
 
 # Same as cc-*option, but using CC_COMPAT instead of CC
 ifeq ($(CONFIG_CC_IS_CLANG), y)
+COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
+COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
+
+CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
+CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
+CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
+ifneq ($(COMPAT_GCC_TOOLCHAIN),)
+CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
+endif
+
 CC_COMPAT ?= $(CC)
+CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
 endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-27-vincenzo.frascino%40arm.com.
