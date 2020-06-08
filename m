Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLGM7L3AKGQEMVQKCPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F4C1F210D
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 22:57:18 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id 88sf8421211otw.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 13:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591649836; cv=pass;
        d=google.com; s=arc-20160816;
        b=OYDZs5hw1lcG7f11/xCRahlaBVN19SF+fGP2HQsIMYFXIXSeaQGi/Ro5UrwjnnVyq0
         xgOdYBzGejBNrGc2JboZOwyYsVy11J46BDMZshbeuc/zlpXC5SxLjLXAu6zOWIHUC69h
         6hut1alRS0+NnqdvwKB0bM81StzBU8fsWaVHmGCNXlTs6Aql2eOcNrNOdzMLIdApqfg5
         KcByikBj5on9VMNs0sGaAjT6JJoNgfE2caEymVe+M8IqL3SfJuhR8ShvZHkT0rThqY4q
         wI17zBq5cu1Np+UeazM/7YhI9k605kcxiDl1GEWPbZ8mIcUEla9+tgCWHbh2hB6BIVZ7
         J7DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=jbmgU0KJgZbWl8kqY2Y1bRgTJG9kqtIE+pf+Pkmr360=;
        b=gHCLassRsQ1PnyMPKdeJUCMaKBn1SwIsc5v5EpoK16EunHLkCkcUgNVgotopLtEU2f
         01nSVgpqKNm+aVjq5Z2ZUBEWlrPkBnr1IFOCN05/StYABsBLc6a5ncHmbnM2HpSEmVo4
         IOsSPBgd/GqzaZ4BjAqSYAFD1JokhcSdAgL47CwKUWnn6LawUL6jLevf4QW//ynxP6ka
         NhI+QE+ykU+FSRJCOrtECHRmseO8iXuI43GXvNr6Mm5Mr/5PMDzLCjhuBEgVYsadvt3O
         6JHjIGF5arNgQXPZ3aNLNFZ83s8lXK2fLJIPWFOb2u4GZZy1cLjvyHCN2w4X2VC3dl2s
         isaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oo1e6e+n;
       spf=pass (google.com: domain of 3k6bexgwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3K6beXgwKAO4dTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jbmgU0KJgZbWl8kqY2Y1bRgTJG9kqtIE+pf+Pkmr360=;
        b=lTlxuriZbZNzhC/UwmP/PccjlnGafU6oPbMuTHXJ5Zl9Tn9LE+4YVQWrCc5peH/WvN
         PIs0MXjjTyXTguTAjLcK0Qj3xpD2rlu3Fnv5E+DVNmdbQUMggtdle4q+1TCoGlIzMdV/
         +CnhV33jw6VXnZ882z8ct+ns2qPNgxPdNwUmRfd7ZmYnyc8yGExi6XrB4lGbNPfLuxVD
         S5zMNqMcLOgFM58uafWkJ6WzeJIhiQ0cyyc6pum9MFUyUqqqBvC0n/J8KGELQXocUAUc
         3EQAKlSyCqHoJd2FrcCWs6ITB3COgKb/YNzx/uqRsspJbojoR0JBenK2BKEPk3qsCVZp
         Ts7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jbmgU0KJgZbWl8kqY2Y1bRgTJG9kqtIE+pf+Pkmr360=;
        b=uS+ZQQuY+pYovUPrDJTUjxP6/6K8nN0RqjvLeUjf4RZhma+kgXEXa5Vslz+vG3SEkm
         9AB6X7ZkhWtpn6v9RU6ri37YurcUUvH5ylgmZUYOeDReW/4F8M2rCbluMfqjr49MyK2c
         w7MoMvp9JUrV71cr9eCUJpX3QzleE7JG/o1O8JbLxDLJeldsmujuU0k9/ejyifCssZRy
         5H8ZIGZPQwszmqt+BsEPBc8hUFcGmctj/2OSv/cMnI6z/JjIuhSxMfNdZPDk8WHX08RQ
         z31Pm6T30/L9IrafXJ8u2pUIwhTR9KgR+hsh3ajyFpA//k3kR69Pt0hLJjvHFSGokVKP
         SPFw==
X-Gm-Message-State: AOAM532EKf0bOOeJ5NMbbUgpVGYMsvsLnrWb7cU9bgQnqtFckJQ8a1Au
	7AGGupe+CIWErMLxDZwWhXs=
X-Google-Smtp-Source: ABdhPJzgO8uLIJbsuRJV5q+AplJ9XOTZtikqwhvoZPhOqp5M7To+o4QtuzTpCV65QOj6+WZnj+sy5w==
X-Received: by 2002:aca:3c07:: with SMTP id j7mr942789oia.156.1591649836567;
        Mon, 08 Jun 2020 13:57:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:61a:: with SMTP id w26ls3810257oti.8.gmail; Mon, 08
 Jun 2020 13:57:16 -0700 (PDT)
X-Received: by 2002:a05:6830:243c:: with SMTP id k28mr19493914ots.111.1591649836139;
        Mon, 08 Jun 2020 13:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591649836; cv=none;
        d=google.com; s=arc-20160816;
        b=HofEu/Lrx2gQ07Q60hSlYcUwVDNNJSS2kMl1v5AMmiaLZU6oHM4ciA/KqgSKe17R+S
         R6ZwMehEIH0bQWcPFRJ0IeAGU0ZHFtm7X9GJ9TdpxWfE2Cp3gZQjwVXRdQN2PSR9ILMW
         8ZQjWN5TmO+cAYbNNYxW43Ky7McOlhx2u/tyDCrCsGvVdi7KHD6gkos4mdwNkff9dKTu
         UGpur0t4IS15LwRXUrFXfBvg9HuiCuvPB+7jl/Y31JPu/7HpVGwLAZXybCBQnCRhQzSE
         DZ5Ro1eOkm/wCQOXZIB5jIWaAHaXxrc4nhM7zzN0dJcPmYJ9ZLY+VR0uCOfZM07NXzuP
         rOWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=n0Z0MVW9fjL11OJnRXmUnpTQPi7wV6ggXRGNscFMQpE=;
        b=rC4QUbtgdRLGW+RLMzk08GL4ng+hXDLUIx8gvZbwrcbUanJRH7Y2pE8JE9kCe0hWVs
         kppH7RVXnDVaLHRUaQX2yjigAZZngllPmT3xM7nVYkFJEnvPnCtfpzyYVSC+zueeNZEo
         Bkyf3NC0YGdDBFMgst3oy6BgUU2UHiEIkd7UkXWWaywxkQeILxMmMieRDZwZzX1Z00kF
         c6y0kl+J+Mk4fKd4HCGvOVKzBGcgvzerfTJGrpBXrJUQx6Pe4NFq00Y0NWslwINuBWY9
         7Ctbbg0HaPt1C6fNzi2vzX94ufuonCq8ThliRhyiOARzXi3GCPVLhpaAP6PFhJsO6FFi
         cuvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oo1e6e+n;
       spf=pass (google.com: domain of 3k6bexgwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3K6beXgwKAO4dTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id e23si688183oti.4.2020.06.08.13.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 13:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k6bexgwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id z7so15047118qve.0
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 13:57:16 -0700 (PDT)
X-Received: by 2002:a0c:f652:: with SMTP id s18mr597254qvm.96.1591649835537;
 Mon, 08 Jun 2020 13:57:15 -0700 (PDT)
Date: Mon,  8 Jun 2020 13:57:08 -0700
In-Reply-To: <20200528072031.GA22156@willie-the-truck>
Message-Id: <20200608205711.109418-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200528072031.GA22156@willie-the-truck>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Stephen Boyd <swboyd@google.com>, 
	Robin Murphy <robin.murphy@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Luis Lozano <llozano@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Naohiro Aota <naohiro.aota@wdc.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oo1e6e+n;       spf=pass
 (google.com: domain of 3k6bexgwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3K6beXgwKAO4dTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
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

Allow the compat vdso (32b) to be compiled as either THUMB2 (default) or
ARM.

For THUMB2, the register r7 is reserved for the frame pointer, but
code in arch/arm64/include/asm/vdso/compat_gettimeofday.h
uses r7. Explicitly set -fomit-frame-pointer, since unwinding through
interworked THUMB2 and ARM is unreliable anyways. See also how
CONFIG_UNWINDER_FRAME_POINTER cannot be selected for
CONFIG_THUMB2_KERNEL for ARCH=arm.

This also helps toolchains that differ in their implicit value if the
choice of -f{no-}omit-frame-pointer is left unspecified, to not error on
the use of r7.

2019 Q4 ARM AAPCS seeks to standardize the use of r11 as the reserved
frame pointer register, but no production compiler that can compile the
Linux kernel currently implements this.  We're actively discussing such
a transition with ARM toolchain developers currently.

Link: https://static.docs.arm.com/ihi0042/i/aapcs32.pdf
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084372
Cc: Stephen Boyd <swboyd@google.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>
Reported-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* add THUMB2_COMPAT_VDSO config, making -mthumb/-marm configurable
  rather than hard coding.
* Fixed https://reviews.llvm.org/D80828 in Clang, but still an issue.
  Not due to implicit state of -marm vs -mthumb, but actually
  -f{no-}omit-frame-pointer due to
  https://source.chromium.org/chromiumos/chromiumos/codesearch/+/master:src/third_party/toolchain-utils/compiler_wrapper/config.go;l=110,
  which prefixes -fno-omit-frame-pointer for all arches and projects.
  Projects that don't set -f{no-}omit-frame-pointer thus don't overwrite
  the prefixed -fno-omit-frame-pointer, which is an issue when inline
  asm compiled as -mthumb uses r7.
* I don't have a strong preference on the default state of this config.

 arch/arm64/Kconfig                | 8 ++++++++
 arch/arm64/kernel/vdso32/Makefile | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7f9d38444d6d..fe9e6b231cac 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1299,6 +1299,14 @@ config COMPAT_VDSO
 	  You must have a 32-bit build of glibc 2.22 or later for programs
 	  to seamlessly take advantage of this.
 
+config THUMB2_COMPAT_VDSO
+	bool "Compile the vDSO in THUMB2 mode"
+	depends on COMPAT_VDSO
+	default y
+	help
+	  Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
+	  as -marm.
+
 menuconfig ARMV8_DEPRECATED
 	bool "Emulate deprecated/obsolete ARMv8 instructions"
 	depends on SYSCTL
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 3964738ebbde..7ea1e827e505 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -105,6 +105,14 @@ VDSO_CFLAGS += -D__uint128_t='void*'
 VDSO_CFLAGS += $(call cc32-disable-warning,shift-count-overflow)
 VDSO_CFLAGS += -Wno-int-to-pointer-cast
 
+# Compile as THUMB2 or ARM. Unwinding via frame-pointers in THUMB2 is
+# unreliable.
+ifeq ($(CONFIG_THUMB2_COMPAT_VDSO), y)
+VDSO_CFLAGS += -mthumb -fomit-frame-pointer
+else
+VDSO_CFLAGS += -marm
+endif
+
 VDSO_AFLAGS := $(VDSO_CAFLAGS)
 VDSO_AFLAGS += -D__ASSEMBLY__
 
-- 
2.27.0.278.ge193c7cf3a9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608205711.109418-1-ndesaulniers%40google.com.
