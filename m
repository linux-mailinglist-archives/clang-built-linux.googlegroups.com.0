Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUMT433QKGQEWJVV52Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0430F20CCC3
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:27:31 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id m7sf11694054pgv.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:27:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593412049; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iasi4Lz3sLvZt5h2n4AF53TTxmW5eNsrUcsgSrgToDcNQxrqCG2fdE/TrMjFerdsBF
         9cXgi+/3sNfsUPk1Eljyzn6jOW16GiwsUCCvxq0sVgSKNAdUPq3rnF7NShnmOfWh6Bk3
         iZFhsQ1TslAqekGJVu/4X8gNuJ12+JlJpFSZr9bKpY/wE3v88FN8B4YGDeoHVR2JEmUp
         XKnMQ9Oe/aTa/xOetDg4W54Hpz303PI6mNgc9DNjkigXjAN3jNzrGr7cElYSk18fm79y
         lGzaKYLVOUBIw3Pu7zk12Eph6UBZv1N4M0P0mTwfhvsR9cmuDi3ZqVIxZrc/8g4q33Co
         SZKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L9kiWEZc58q+hYtl6zhphkLSnwBw5kl8HWzo0it8Tas=;
        b=UDhUlukbRXSZUHJIcXGhOw5SM8VOglACF7l1jYqi4M1vk5KUdjw2A+mYgYjDEfT5b+
         wW1HC8bsiRpZgqxAWCgcLpF2pIXWcymaNBn4yFDfDHg1wqF0kxYumUs/hqmxcPTWNIu/
         19CaIp6IXMViQJs/mLYAlxU+PqxQWaiKBPDw2RG3nwR70XIKp+4GQuI6HnXBSkMRuuwR
         cdEK7EC1RLSMlS7jQ/dFMy0wEt+ADql+Z+iBgJa5h5RVJoRtn+LRWS54fpf7a/iMg287
         jU5hMGinpRVsH/tBKPDFu0mUOoXa8yCPcit3bQ9nR2yEegSu+6LfQQPQuPtMrWcSAP4h
         oJ6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Dr3LTyOc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L9kiWEZc58q+hYtl6zhphkLSnwBw5kl8HWzo0it8Tas=;
        b=O69UfCQWVmOE1cA7VsxIr8tGz+HGcvCplGFwDtsXb/iT4d7g8/RJGY4B7EoOpS27Nk
         WSVHSO2vfTJz9wg4jnhvylMVLJYGfCAY6lVU8vcb1+2rlsWkcV1rXnD4PXewf7MGcKC2
         Ca6GXsKAPUtal0NPHwxtkKy8H3Z3LnVmQHVaA1PezeFvNitg6+32O/U3UpTOp3Sao14l
         rsPQpVe62bfFKZwaqLL6MGljciwXO3lDrVmPOPrXvXa8x/d71vUlTq/y0WhMKViO2iPz
         fH/cXSBhQi5l/pC5LWWG21FJWXPbA9CRH1rNB1lUEL4dDrWYzt74Ax+ppFjJZQQBtRv6
         s+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L9kiWEZc58q+hYtl6zhphkLSnwBw5kl8HWzo0it8Tas=;
        b=Q/klyMppCA5mcA6R+MRinnDxK8jMQpmk3EDvf7mZE46cMgbeAhJ0wLo+9OtBw2TraH
         2ZyNIuLwwgldK4jeAehUfAIy48BiNDzn7w2y9mdID7A/LLAoHuwtCrm59ncvqq3f6ug0
         VNKcVUucVzVpRPAysIWcEXtWPF7cLkbwzC2gweV17JX6A39ikrFxMCoL1OEsMkYMwlF3
         WKWesiHQy1DE2PLvtBG9naLWUyGgMJ1y2hvPg2ghocTuhB6RgV3Ud70cti52TbVIuhUu
         GA4srVFbI7j1hZ7HRJKOLC+WMqINjsob25lemlaQ08EYETai7HA158Azd9Biti33CHSm
         K6UA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yHtzP8ubs04Fmg6O31hSdYKmajuDwO5oKmdiyjFAjdXAS1vAx
	MI7IhfbI6WWkoRdIZBBpMYg=
X-Google-Smtp-Source: ABdhPJyNA//Mx+vKE1JvfEJSOsaNVo9zkrdH3mU43Y9liF/ODGCUV+e/7Garm0jCmYd25rP2Hh4k7w==
X-Received: by 2002:a17:902:502:: with SMTP id 2mr12767296plf.62.1593412049732;
        Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8858:: with SMTP id l85ls5097217pfd.6.gmail; Sun, 28 Jun
 2020 23:27:29 -0700 (PDT)
X-Received: by 2002:a63:545:: with SMTP id 66mr9559936pgf.120.1593412049402;
        Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593412049; cv=none;
        d=google.com; s=arc-20160816;
        b=XgXByl+230qnOXAw/xc7OyGy+yQe6u6oV0uFiRJ6+HUutITZD4QdJ+LS7C9easCVdn
         vCd31o1BHtSR+o78Hk49OnafE+6oKFmLjw6EmrpFzxH7R4FRt8VEY6Bjqgu5zzesu7bs
         zNZ6dwD0NPJ0jJC8qvrt4qNeeMFa6dm//FJo+fx0B9vaXUpdAzi8IjvBWDqdmKtdCdt2
         tNDuV8E/eSDoKwLpLe32MSGbFx6bKKiLCABmBVQHI/c2WViLea8T0kKgsAtTB7tZ3NnN
         gUYK9/GUQBJMJ7qvbBwSeynCMWxXD7EyXTAlSYhkc183wcOmYrvT4EIEe6NMX/j9tlzE
         shaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sXG3FvFqQ5OV+ZXnRU9R+TEF3U1pZeLG1jvNfenb62s=;
        b=VbIGe1s8i8usHoSNLTSEBf8sUVVN3qn/L+xbH5Th7XXiR7KmL0iVF1qiCBHdbXH8mb
         GGmWmmp37k90+BNRcN5gkprwm5FG2fpvP2mqDDNYclYIYOTtrlPrxFxw1xccrghVfcaM
         XRzj9mzXpFpgCe/vZBzcjStVYeyYjSxELpPt2i2mK08Lpd8xfO0qGEnwzIZCUPtQRuwY
         8GkJpbzKQ9cXDsGyeVTot+dysw0ZFGNrXUoJ4AthajucZ482gPP6OXc5RtLJuF4klSQo
         KyeRvYMJEU/qTcdUFUBsX5cVc7PybFeg3iwKQBHhwO83ibbmi8KqMJs3BFoTcOMEoPIL
         7SaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Dr3LTyOc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n68si1470746pgn.1.2020.06.28.23.27.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id o13so4872762pgf.0
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
X-Received: by 2002:a65:410b:: with SMTP id w11mr6271531pgp.65.1593412049107;
        Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s9sm28713610pgo.22.2020.06.28.23.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:27:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v4 15/17] arm/boot: Warn on orphan section placement
Date: Sun, 28 Jun 2020 23:18:38 -0700
Message-Id: <20200629061840.4065483-16-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Dr3LTyOc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Use common macros for debug sections, discards, and text stubs. Add
discards for unwanted .note, and .rel sections. Finally, enable orphan
section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/Makefile      |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S | 18 ++++++++----------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 00602a6fba04..b8a97d81662d 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -128,6 +128,8 @@ endif
 LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
+# Report orphan sections
+LDFLAGS_vmlinux += --orphan-handling=warn
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index 09ac33f52814..636e9ceb79ec 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -2,6 +2,7 @@
 /*
  *  Copyright (C) 2000 Russell King
  */
+#include <asm/vmlinux.lds.h>
 
 #ifdef CONFIG_CPU_ENDIAN_BE8
 #define ZIMAGE_MAGIC(x) ( (((x) >> 24) & 0x000000ff) | \
@@ -17,8 +18,11 @@ ENTRY(_start)
 SECTIONS
 {
   /DISCARD/ : {
+    ARM_COMMON_DISCARD
     *(.ARM.exidx*)
     *(.ARM.extab*)
+    *(.note.*)
+    *(.rel.*)
     /*
      * Discard any r/w data - this produces a link error if we have any,
      * which is required for PIC decompression.  Local data generates
@@ -36,9 +40,7 @@ SECTIONS
     *(.start)
     *(.text)
     *(.text.*)
-    *(.gnu.warning)
-    *(.glue_7t)
-    *(.glue_7)
+    ARM_STUBS_TEXT
   }
   .table : ALIGN(4) {
     _table_start = .;
@@ -128,12 +130,8 @@ SECTIONS
   PROVIDE(__pecoff_data_size = ALIGN(512) - ADDR(.data));
   PROVIDE(__pecoff_end = ALIGN(512));
 
-  .stab 0		: { *(.stab) }
-  .stabstr 0		: { *(.stabstr) }
-  .stab.excl 0		: { *(.stab.excl) }
-  .stab.exclstr 0	: { *(.stab.exclstr) }
-  .stab.index 0		: { *(.stab.index) }
-  .stab.indexstr 0	: { *(.stab.indexstr) }
-  .comment 0		: { *(.comment) }
+  STABS_DEBUG
+  DWARF_DEBUG
+  ARM_DETAILS
 }
 ASSERT(_edata_real == _edata, "error: zImage file size is incorrect");
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-16-keescook%40chromium.org.
