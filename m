Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYUO3WDQMGQEAL7NR7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B06163D0429
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 00:00:03 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id n16-20020ac5c8900000b029025d809b26dbsf110003vkl.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 15:00:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626818402; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrd9ehSOh4lB0I60WHDvoe4u1jxaPZ9cDWtIYHggJfgX2tdcxOOdqhtXGUHJdC83Kl
         knG1muucqOjRVmegykn+SE3kMrpMVfNcdOXPjtZBWwCO9/3xEhLtSZGQ5FC/AKm8UVan
         xCHye0mjUpEd43/hbeaL/Di4S729+6qXG1UXr8hNtHfvZvOmYN0gMO2AnX3u2MrPsZ6u
         Hd/fwyW+8hph3Rkel83KL8QuFnCnVHCniwaQMRdfSi7wRzF2W3HvKCNkX3kwFfu9vn5q
         Mh4iAIzZ0xI5L9A8DcjNZ7bOOKfQUfceEwHlxiGy1CDznbJDCzbOaBPULw3e8kjFWclH
         eFUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nLbE/kd5ZYSQuuHjzeX+/xQN87g/Zn6cQO9tDuFIVKA=;
        b=NHInnJXPI5l5of+HZeG8S/fjwK7J5PGi3NRfxV1GtuQytClWeEqJOrC1aOCeNgj978
         940SF3Kq60I2SvHcSuUVEE/d04bsF6WyPAhwPNUlSFYEPxMUIGLsjf0bertYoVY4+qt9
         RYZOrsFOEbqX4NbU+z9denPjiurFsAQN7/i0NUftaBJy8zxwY8j9asY7l/EuogGXYnBO
         Ik3buWmRA/UdgIReN8tooJyXx7vWQO/QJCstEXT5N5QUcVkzyXyQGyW7n4tVtkn/HLLV
         ml18C2HcX1HZ6gLxwBvmMPjbkawbqSJLXIeQrPLntuhIewdX+KjZaftwNeSgqrJ2QFEO
         yHEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CvGYL7R+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLbE/kd5ZYSQuuHjzeX+/xQN87g/Zn6cQO9tDuFIVKA=;
        b=miRFHepR19K4s1PjiB6rSUbWbtyCp+a4C63ikkPltELKCcxUW5UrcpIFk4c2qwSPSe
         q86ZneC0mn5LvD0KwG6yE6bD93CXGUBCy1N+tbJ7orkEDnv/S0l9AbILlFHtG9nDwkhH
         KnIdqXdY4BY/nGYJm9fT4Mt6xBE54D8vr20NXmj7zgnrc670cAS1DJ4LdMEakEYSVRC5
         FmWIkURqaiMN/7nB0XzgYPVoXfRP2zkHxp2g0q1RpHF/09xGrRWhFCbPIAe860wQ7b+I
         Siq/WSz3XJRe7hMKv5hfKQtuksyQPg7Y/bbgokaHpoPj/MR0Fy19Rne71gSUY28DNe3t
         s1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nLbE/kd5ZYSQuuHjzeX+/xQN87g/Zn6cQO9tDuFIVKA=;
        b=c4GaHBcqLnQtv4gpfQe3rEyH7Rc2QxS8X9Mze6QO/EzF2b0vCXibe9eYsb+RTOi6+d
         J/n/of24m67B04P/YZdDHN+qSrt/eqLAVIfN9/yG7Agdn5zGNJO2xRduslSN/YsgyYUl
         P5jg0FlEyA9N83zv5ke39jkw/OBP0RV13qK8M9EuOfexGEllfQzcb7SYe0Fxmpsf4K6p
         Qwa0jNEO8EC13eA7o/GY5gSioWVxuaeuvlX+ViUdI9qjvTUpToT5AcLtkx1ttFdh7b8r
         NqoRLb/SwxWPhF3c+mbzYRH6/ztRsfet5YO4uRpvyeUniEwLLIIHb1wtFR9ePALEU9Fq
         iLrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311tdot68TAqnxfG0gjzPrUEtQsSBLqleLf6FCqdROvmihbRX9X
	TwwN7W9DHGk3nELnojIdQf8=
X-Google-Smtp-Source: ABdhPJwabgPdtmPUPlewcZ08nqaRXnN9xiFEy5lf08nrZnC/eX4fsi1uoNnAh+rwHZPRbn87EDggjA==
X-Received: by 2002:ab0:48c8:: with SMTP id y8mr34481324uac.36.1626818402810;
        Tue, 20 Jul 2021 15:00:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7e95:: with SMTP id j21ls55722uax.6.gmail; Tue, 20 Jul
 2021 15:00:02 -0700 (PDT)
X-Received: by 2002:ab0:378e:: with SMTP id d14mr34353987uav.18.1626818402324;
        Tue, 20 Jul 2021 15:00:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626818402; cv=none;
        d=google.com; s=arc-20160816;
        b=nvjCLaG6HrJg4URwJsdh6Qu5eTKT7IjlT87KRK/UnX4auNjXPpJQhUFnwZBSjTV8et
         g78p8of+IClT0Csz4wptdqQZFyzH3kwsF2xWUWMUGLCLvKJF39vZ1cnx6/4TcRurtmhp
         mTN8tXayq/R+Ti3WlVRyIOQ9svcICVi8aKob+/SeYaRwKMKkzpckHDRk8CoiyTcKsvO7
         pDMGp7BOkt/l+ZnN+ugDiYloa6a0GRJaovyWLj9ya/5TqfRsAht2puSWqSxhXSXxQJVm
         R28+FUn8SccnOJWdDH0TnWL3Kg7i61x4UwU8pfSTXJfeP/67hXraYSkVxrbRM5/wk/mG
         PtGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WyxGUW8l0i1+27gVKNpxMIuSdpPKu6kJDnkVFPaL1B8=;
        b=QxmUU2ROdIDNK8bJdKBxe/yMmU2YL5/bYsmX7USmP7cDnGormfHiHow7PSdy+0s6Bn
         ESR3DT687WPwyDzg1bviZZK0Yh32/Yfk9CHf6iPhqg5cYOe/Nvow9qwDF9btHgwk0wIo
         G+PyyZR5PFCHg98AbomJPErbmLCWh5GJqNkiNRauvvOCoG41LxH1YadyDvAeutTgRm+w
         MYEY0gXxDJKuEdM7mq87P52rxmTTzqzy0/AEz6KAC9KrqQDQTEV5Bh1ylxtI0Gp80Oi4
         bHBbhkIwzXRH9NShyZ9X1zQ34LV2hlEsYwrNyxX+NgwyyAniXuJAGpBKiu+MRowX9jTf
         pgdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CvGYL7R+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id p66si1932337vkg.1.2021.07.20.15.00.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 15:00:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id j3so12111058plx.7
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 15:00:02 -0700 (PDT)
X-Received: by 2002:a17:90a:c8b:: with SMTP id v11mr505781pja.114.1626818401485;
        Tue, 20 Jul 2021 15:00:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e16sm28694557pgl.54.2021.07.20.15.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 15:00:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	glider@google.com,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] hardening: Clarify Kconfig text for auto-var-init
Date: Tue, 20 Jul 2021 14:59:57 -0700
Message-Id: <20210720215957.3446719-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4689; h=from:subject; bh=Z2jIdIqSWFjGjbsnH0q1H4OQWdcOHIzxX0E/vHpuz2Y=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBg90dclov0B+zGzREFyMibbwv9l5oqr9QJrpcMBRsN hb++VKyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYPdHXAAKCRCJcvTf3G3AJvpfD/ 48Gq6fxhiEccbjQyQe+7IJXzIsYGWv+awOpA5DqwDe5ctfyYW5icxUSVx+Clzkn60bS8MOF5HK64Zs zu2EN8WIVWI53o/I7n8yieURnaJhOWRaodHPfz6sO8dvn3ddQAG2LF18ckn+L532AKdvPnDGhGHFDR Ez7EcJQoM2jNCTffA+Z7joyraqV4sL590QVJ6mB6CWtxsy2rB8JRIv73xRyHtajtELy3TJ9fExNdDZ ZIA26rgLKetjgMSKtz45O4khEwF0biQzfJw/pev0HXIzTOs5LZ+oxWMKyMM5dU9/77VKgTx6FDd9OE /Un9lPGCZKWTkGdyOUTXo4LNX2DYldun1e7zJ6Y73mo0HY//kluFhjJx/A84aNfge+v8JufRdH7ymD woQcwoMBkyRAWQFy4Jd/S91LPhyp1NA1uXoc4M8ZXvePbBtG201Awb2fCaYEAuXm7TiR18GmAtRqsB XR3rfGyHFvi/qRNpjBfAnvgOL2UY/r9TYrKZhNBEsMcIWpGLKjT6Jtlqf8MmXHsuNVElcnIPRCgom9 wdrabjtlA41UUFPBGhgsEF76FSR3UPI2v3gL/T+jL7RjJp++1nTkK5M38G1RKo8Zfda0wK3qcLIaVU vs2ym4j9tzZ8qvAreuqUY7R+rhMNrO4+Iyo4eQ8M6ZhUT9i1aYIRpPQ0uhQw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CvGYL7R+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

Clarify the details around the automatic variable initialization modes
available. Specifically this details the values used for pattern init
and expands on the rationale for zero init safety. Additionally makes
zero init the default when available.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 security/Kconfig.hardening | 52 +++++++++++++++++++++++---------------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
index 023aea5e117c..90cbaff86e13 100644
--- a/security/Kconfig.hardening
+++ b/security/Kconfig.hardening
@@ -29,6 +29,7 @@ choice
 	prompt "Initialize kernel stack variables at function entry"
 	default GCC_PLUGIN_STRUCTLEAK_BYREF_ALL if COMPILE_TEST && GCC_PLUGINS
 	default INIT_STACK_ALL_PATTERN if COMPILE_TEST && CC_HAS_AUTO_VAR_INIT_PATTERN
+	default INIT_STACK_ALL_ZERO if CC_HAS_AUTO_VAR_INIT_PATTERN
 	default INIT_STACK_NONE
 	help
 	  This option enables initialization of stack variables at
@@ -39,11 +40,11 @@ choice
 	  syscalls.
 
 	  This chooses the level of coverage over classes of potentially
-	  uninitialized variables. The selected class will be
+	  uninitialized variables. The selected class of variable will be
 	  initialized before use in a function.
 
 	config INIT_STACK_NONE
-		bool "no automatic initialization (weakest)"
+		bool "no automatic stack variable initialization (weakest)"
 		help
 		  Disable automatic stack variable initialization.
 		  This leaves the kernel vulnerable to the standard
@@ -80,7 +81,7 @@ choice
 		  and is disallowed.
 
 	config GCC_PLUGIN_STRUCTLEAK_BYREF_ALL
-		bool "zero-init anything passed by reference (very strong)"
+		bool "zero-init everything passed by reference (very strong)"
 		depends on GCC_PLUGINS
 		depends on !(KASAN && KASAN_STACK)
 		select GCC_PLUGIN_STRUCTLEAK
@@ -91,33 +92,44 @@ choice
 		  of uninitialized stack variable exploits and information
 		  exposures.
 
+		  As a side-effect, this keeps a lot of variables on the
+		  stack that can otherwise be optimized out, so combining
+		  this with CONFIG_KASAN_STACK can lead to a stack overflow
+		  and is disallowed.
+
 	config INIT_STACK_ALL_PATTERN
-		bool "0xAA-init everything on the stack (strongest)"
+		bool "pattern-init everything (strongest)"
 		depends on CC_HAS_AUTO_VAR_INIT_PATTERN
 		help
-		  Initializes everything on the stack with a 0xAA
-		  pattern. This is intended to eliminate all classes
-		  of uninitialized stack variable exploits and information
-		  exposures, even variables that were warned to have been
-		  left uninitialized.
+		  Initializes everything on the stack (including padding)
+		  with a specific debug value. This is intended to eliminate
+		  all classes of uninitialized stack variable exploits and
+		  information exposures, even variables that were warned about
+		  having been left uninitialized.
 
 		  Pattern initialization is known to provoke many existing bugs
 		  related to uninitialized locals, e.g. pointers receive
-		  non-NULL values, buffer sizes and indices are very big.
+		  non-NULL values, buffer sizes and indices are very big. The
+		  pattern is situation-specific; Clang on 64-bit uses 0xAA
+		  repeating for all types and padding except float and double
+		  which use 0xFF repeating (-NaN). Clang on 32-bit uses 0xFF
+		  repeating for all types and padding.
 
 	config INIT_STACK_ALL_ZERO
-		bool "zero-init everything on the stack (strongest and safest)"
+		bool "zero-init everything (strongest and safest)"
 		depends on CC_HAS_AUTO_VAR_INIT_ZERO
 		help
-		  Initializes everything on the stack with a zero
-		  value. This is intended to eliminate all classes
-		  of uninitialized stack variable exploits and information
-		  exposures, even variables that were warned to have been
-		  left uninitialized.
-
-		  Zero initialization provides safe defaults for strings,
-		  pointers, indices and sizes, and is therefore
-		  more suitable as a security mitigation measure.
+		  Initializes everything on the stack (including padding)
+		  with a zero value. This is intended to eliminate all
+		  classes of uninitialized stack variable exploits and
+		  information exposures, even variables that were warned
+		  about having been left uninitialized.
+
+		  Zero initialization provides safe defaults for strings
+		  (immediately NUL-terminated), pointers (NULL), indices
+		  (index 0), and sizes (0 length), so it is therefore more
+		  suitable as a production security mitigation than pattern
+		  initialization.
 
 endchoice
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210720215957.3446719-1-keescook%40chromium.org.
