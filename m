Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFEEZXVAKGQERR7IEOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5288C49C
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 01:04:53 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id g9sf3709041plo.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 16:04:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565737492; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gv7I5jJwP0EWRdhgGyK6iepgJWrjmqH3dV0AjEOIB0em1RUhgTb5M4ipDN9Z5oFEHx
         jlxm+JqlyrLAwkdZVVELOZlH4MKYUMLvXJjy34FFCPDAJnCnKkko2qpDSL35eu8Uz6SO
         wOnXeQqUHNi1G6j97RvWYe0uwbdgq2yH2557d62qVLcL6sPGqxZ87pP9qSeJCGHgcEcX
         kzPmpjcPgSPgKm9wUAn9bwGMtoUIa4/3loDeZR/k5dxxRpsTO90lbcVXwtxM8CZFKF5N
         du4bPrcbzbQBLzBNKBpOu7JF6DjfUXCCfiv4gJ8GLAggQ9uDZlw2nSqjyPRBEooAs2lu
         a/Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=oxsJyb0ypyL7YqckGR650/puXCEp4Nfy6m7DgdTA/AY=;
        b=a6NX20qCCgYafXBxeUf30OcskKLjCNlw6coW1qgMTyoEAiEFPJv3neefGgq1VwWXtv
         FfP80gGyt34IXtPXCLQjFU4kC/VsNHKrmSgwPb2EkYSfGk0Lc0i0tGTe3Pw94vUAb5BN
         eLTRvrJGo7RrxNiR/u4+MXv8xKF0OZvMx2/KO0SVABJwwKBeQM3IFRcxW8cJ/KZPuMHb
         39JMOvf8LhAeVW6RyCSHJ7kLsZsTZfGK1LWqXyQqsYhhQOxgZf1IFUxpq3E3q+jjLaJZ
         OwhY1MahnNb4uN3S7TgyQ8WK5mYdhQpxzFy4kUUSZhmWJ3vAqlysM2jQx9qCM/a9DEnn
         z/wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jTb0CaVw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oxsJyb0ypyL7YqckGR650/puXCEp4Nfy6m7DgdTA/AY=;
        b=OQG0QaVA9f/vzJgIvuGT6rRdHRgfozWlJjKIvyqGr4DlxoIS4QEdNIBj5kH9XBfTX2
         ZuZ9XeP/INHNstGeHi95hrVfYPAN1jdhOTuuUmc8SsVfQO5n3vPLhC6pNuQUcxxJeX6c
         ZTRm34hekzmPM3Z9O0ONg/9uA5q2Int5VNLmq/sA2RgrPMu4ypqrIr3lgB41FfHhpySM
         u4zct8A82q1lvQOiSDzCHVDh8dcV5UnubmkP9Rig67x21YRrIOVVYyBAPXiySmoQdeoU
         rXLfR3yV8iwc8YB7YEd0G5T9MXXo4MAJbH05SNWAiFax65ekavnICmlU5mb+j/oa1JNS
         rLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxsJyb0ypyL7YqckGR650/puXCEp4Nfy6m7DgdTA/AY=;
        b=LvsMklx+t9T9cRa/wEwYhg3V5wjDpbEex22qIi6SoZzkQYWFQOsY5oUlIyB1s+TbqB
         LVJAWZCpwMOMYLkGuN3WY3VX+hXHVmQdZfJgl5cHu+3hhbiiIuR2XY+ssX3g3+KBrWE2
         UtIMJ1bBqR1APUrnNvlYkNrZl5HEblOVWvRVdzr6885oQdGQsQ41DfTMLRIxyFeodqBE
         hx/CDfpqkSz7V6ffEXk8VVPcnf6Yju+Odb5nuYe33v1qRy2K2UIXtrTa2VIWjdhE0AhZ
         wbG9SoikXNPcdrFA/s3HrRaBPD0AU/cnf+ybF+rqPPA3OnvkwN4z6ZOMK1Ql5WurYjMa
         D/uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXGk+7IoRaytPuuMRZOWMvtgiPfNCxZAdWGK+BRtAve7l77pWXB
	mlT5iThZGaGPg5Z91dchKP8=
X-Google-Smtp-Source: APXvYqyXTZ9dkEIQspQOPqPmn1kTM9QwCAMTzYU+BuOdInqKJrOTnBPg1u3NJEtq9yyvUl1C0g46+A==
X-Received: by 2002:aa7:914e:: with SMTP id 14mr43187307pfi.136.1565737492708;
        Tue, 13 Aug 2019 16:04:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9895:: with SMTP id s21ls77447plp.3.gmail; Tue, 13
 Aug 2019 16:04:52 -0700 (PDT)
X-Received: by 2002:a17:902:6b4c:: with SMTP id g12mr2812933plt.118.1565737492431;
        Tue, 13 Aug 2019 16:04:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565737492; cv=none;
        d=google.com; s=arc-20160816;
        b=ESUSXEcP9BFMQkU6LT2tXECtWpV8nCVBl/YG6pPqyBs4nMJ8A0zrv2OrdUE1ZD3jFM
         pIQa+uF2YKfAHyQ+H4ErHMDGCR5H2jiccYALC4OEXc47C3AkMzyZs5HzPwfZlHaMPrAP
         WHrgQBIs+XMiTQp4ervvNZUCJKMCeVeEsoBgVlNh938nIVdr53SiAYrO3wU7m0zLvy09
         Jdow8l+biSPAMtPvVh6Qq35LthMF/h65rNtjiJfOtN1dvQISfJas6A23JU0cn/mt7OQ+
         HB3hJyLq6h5GST0uOx4bzxJ1TFRBbSybDRSJRl75uhvlt2ZblKLzTympTAYF5+f7JjRM
         rPjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=b+JmorHFxBDjgjp81mdE+eQ+tC1x8WkQJkcE1tgqkc4=;
        b=Oolw16Kv4gh0pwxF+SKj8ic8h3BaOqNQcOXaFWAVjawydlO6Bf5wjJT2RgcI6ogDOG
         rVX3nY+6daUl3DFlWGRXC6lGD8/UMVCrVTFugyi2udkzABnN/3FFIPhjPmvQVMRyxqO9
         brkMs7uhxLEFfIvHF1c+b6wN5/vtWyHElq8oxeK5TuJ5YtkN+mtWwYC0mOQfXFeuVi0W
         wMAde2NT5+Ovvztos63EE3kD7guwgAbwpcnLP3LaZoclLaN8KFPIJBC7aDvJ3W24RpcR
         p2O2+EDtTA0AM5zhAF4v+G/7YbcI36G32csDN7VDVhJkQqkAVStOOVqrXzJFAtAAwXjQ
         IUog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jTb0CaVw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id j6si53671pjt.0.2019.08.13.16.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2019 16:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id gn20so629908plb.2
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 16:04:52 -0700 (PDT)
X-Received: by 2002:a17:902:f30e:: with SMTP id gb14mr6861249plb.32.1565737492192;
        Tue, 13 Aug 2019 16:04:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s11sm116207822pgv.13.2019.08.13.16.04.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 13 Aug 2019 16:04:51 -0700 (PDT)
Date: Tue, 13 Aug 2019 16:04:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Peter Smith <peter.smith@linaro.org>
Subject: [PATCH] arm64/efi: Move variable assignments after SECTIONS
Message-ID: <201908131602.6E858DEC@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jTb0CaVw;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

It seems that LLVM's linker does not correctly handle variable assignments
involving section positions that are updated during the SECTIONS
parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
an absolute symbol explicitly") ran into this too, but found a different
workaround.

However, this was not enough, as other variables were also miscalculated
which manifested as boot failures under UEFI where __efistub__end was
not taking the correct _end value (they should be the same):

$ ld.lld -EL -maarch64elf --no-undefined -X -shared \
	-Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
	-o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
  readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end

$ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
	-Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
	-o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
  readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end

To work around this, all of the __efistub_-prefixed variable assignments
need to be moved after the linker script's SECTIONS entry. As it turns
out, this also solves the problem fixed in commit aa69fb62bea1, so those
changes are reverted here.

Link: https://github.com/ClangBuiltLinux/linux/issues/634
Link: https://bugs.llvm.org/show_bug.cgi?id=42990
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/image-vars.h  | 51 +++++++++++++++++++++++++++++++++
 arch/arm64/kernel/image.h       | 42 ---------------------------
 arch/arm64/kernel/vmlinux.lds.S |  2 ++
 3 files changed, 53 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm64/kernel/image-vars.h

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
new file mode 100644
index 000000000000..25a2a9b479c2
--- /dev/null
+++ b/arch/arm64/kernel/image-vars.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Linker script variables to be set after section resolution, as
+ * ld.lld does not like variables assigned before SECTIONS is processed.
+ */
+#ifndef __ARM64_KERNEL_IMAGE_VARS_H
+#define __ARM64_KERNEL_IMAGE_VARS_H
+
+#ifndef LINKER_SCRIPT
+#error This file should only be included in vmlinux.lds.S
+#endif
+
+#ifdef CONFIG_EFI
+
+__efistub_stext_offset = stext - _text;
+
+/*
+ * The EFI stub has its own symbol namespace prefixed by __efistub_, to
+ * isolate it from the kernel proper. The following symbols are legally
+ * accessed by the stub, so provide some aliases to make them accessible.
+ * Only include data symbols here, or text symbols of functions that are
+ * guaranteed to be safe when executed at another offset than they were
+ * linked at. The routines below are all implemented in assembler in a
+ * position independent manner
+ */
+__efistub_memcmp		= __pi_memcmp;
+__efistub_memchr		= __pi_memchr;
+__efistub_memcpy		= __pi_memcpy;
+__efistub_memmove		= __pi_memmove;
+__efistub_memset		= __pi_memset;
+__efistub_strlen		= __pi_strlen;
+__efistub_strnlen		= __pi_strnlen;
+__efistub_strcmp		= __pi_strcmp;
+__efistub_strncmp		= __pi_strncmp;
+__efistub_strrchr		= __pi_strrchr;
+__efistub___flush_dcache_area	= __pi___flush_dcache_area;
+
+#ifdef CONFIG_KASAN
+__efistub___memcpy		= __pi_memcpy;
+__efistub___memmove		= __pi_memmove;
+__efistub___memset		= __pi_memset;
+#endif
+
+__efistub__text			= _text;
+__efistub__end			= _end;
+__efistub__edata		= _edata;
+__efistub_screen_info		= screen_info;
+
+#endif
+
+#endif /* __ARM64_KERNEL_IMAGE_VARS_H */
diff --git a/arch/arm64/kernel/image.h b/arch/arm64/kernel/image.h
index 2b85c0d6fa3d..c7d38c660372 100644
--- a/arch/arm64/kernel/image.h
+++ b/arch/arm64/kernel/image.h
@@ -65,46 +65,4 @@
 	DEFINE_IMAGE_LE64(_kernel_offset_le, TEXT_OFFSET);	\
 	DEFINE_IMAGE_LE64(_kernel_flags_le, __HEAD_FLAGS);
 
-#ifdef CONFIG_EFI
-
-/*
- * Use ABSOLUTE() to avoid ld.lld treating this as a relative symbol:
- * https://github.com/ClangBuiltLinux/linux/issues/561
- */
-__efistub_stext_offset = ABSOLUTE(stext - _text);
-
-/*
- * The EFI stub has its own symbol namespace prefixed by __efistub_, to
- * isolate it from the kernel proper. The following symbols are legally
- * accessed by the stub, so provide some aliases to make them accessible.
- * Only include data symbols here, or text symbols of functions that are
- * guaranteed to be safe when executed at another offset than they were
- * linked at. The routines below are all implemented in assembler in a
- * position independent manner
- */
-__efistub_memcmp		= __pi_memcmp;
-__efistub_memchr		= __pi_memchr;
-__efistub_memcpy		= __pi_memcpy;
-__efistub_memmove		= __pi_memmove;
-__efistub_memset		= __pi_memset;
-__efistub_strlen		= __pi_strlen;
-__efistub_strnlen		= __pi_strnlen;
-__efistub_strcmp		= __pi_strcmp;
-__efistub_strncmp		= __pi_strncmp;
-__efistub_strrchr		= __pi_strrchr;
-__efistub___flush_dcache_area	= __pi___flush_dcache_area;
-
-#ifdef CONFIG_KASAN
-__efistub___memcpy		= __pi_memcpy;
-__efistub___memmove		= __pi_memmove;
-__efistub___memset		= __pi_memset;
-#endif
-
-__efistub__text			= _text;
-__efistub__end			= _end;
-__efistub__edata		= _edata;
-__efistub_screen_info		= screen_info;
-
-#endif
-
 #endif /* __ARM64_KERNEL_IMAGE_H */
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 7fa008374907..803b24d2464a 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -245,6 +245,8 @@ SECTIONS
 	HEAD_SYMBOLS
 }
 
+#include "image-vars.h"
+
 /*
  * The HYP init code and ID map text can't be longer than a page each,
  * and should not cross a page boundary.
-- 
2.17.1


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908131602.6E858DEC%40keescook.
