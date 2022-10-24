Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBVUF3KNAMGQES2XJOBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F8A60A4F1
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Oct 2022 14:19:35 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id t8-20020a2e9548000000b0027702e8a5b2sf2319460ljh.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Oct 2022 05:19:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1666613974; cv=pass;
        d=google.com; s=arc-20160816;
        b=HSjaB0O2lW3ywSULQfaDGpE8F1NG74vlbEOqhxDa85leXVr5SGgDB1y2xLzZTsL7Wm
         C88Bzit3houJHWyIPQmQfdzfQo6j3/A0Vka2BKUhtzbtALW+jOMBOfB9RJFzrt8UyTLu
         3BdzsBKHkCgc4rMOBBBnbch0zPPoKL6P673atwTf+mZU4eJ676ro6WF4DDPHRDB86n9d
         uBE8EqjSnob7AnvcS99RtJ6X4C+VVWUCUc11QEXJpjN1CY0WvcPt035SkHEs23uc2jDd
         wYtkjMwrdYTKez4/xYUjbutHRrH/IflVF0e2DF25wixXR4n5Q5FfyFq6b8OtTAHWR4ri
         8U/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=JlWdC8gf8mT9omD3Hfg4NZUfgQBaETNBd7UQFNuVZco=;
        b=sX57YwsBpjqH0vjDuKoxISdg5DY0mI3/A/RBSUYCUtjDRMTVdsAyk4b0FZ1opdEjF4
         9ECogTobRvApddJ8f2SWqIfldLoNJ1kAZAyY6X/a+9ueTC9EpnwYM2hVDnBiE7gOnBLT
         XE1zOnosCaJBcx9UHEUQu8NUsdAfFbBDHHyaULle70ArBdtX0kWsqbDp1i6UjWWu3vT1
         OAKLl2ctiEemVrordFqBl1yXi2cglEkbZZhcYbg5uiZ8IVbt6cJQpV9I5ZVS3mZx52h1
         PD8ObNC5/k7NnP16bISl0BgaH4RFaa3vS0N5ceJVBRjTJiZWbmmLIUoLN+e6YnHA07H6
         ZGvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=pDQqV9s9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:user-agent:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JlWdC8gf8mT9omD3Hfg4NZUfgQBaETNBd7UQFNuVZco=;
        b=JdvXUAZySKSibtLD6vTlrMiYWu9Bs6b//tvpCFE3x0csQk+xzUdmYV3W/+XU093TyS
         eAgeo75m662XO4zZVWTcPBDGGjYuTux/KsD6QCuijia60/uIsZ3B4Q4UKxi6FP9UQ5Ti
         i6FyVnlbvpb0Q4T6ZAS2DAk89iQ9NcQS3PdNml9p1dC5edaS2eF1euOe4kIj/qFLl5xa
         GJiip1JO+Nm5hDjusyiXJVzEOKDYruFpx7bBiDj8rw67DXb5xguK7w4SHSbKOhctU1oj
         HwkR6GpKTfgWP9Cbvu1HvIyT5YlJaBMrH4ONcFtKhYUeFonCSXX0zVu3AfEBwkmWZljo
         pkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JlWdC8gf8mT9omD3Hfg4NZUfgQBaETNBd7UQFNuVZco=;
        b=tLBXHldzkEc26GyQ1ANHc7Fe9uTd2EgS4/UzZAyr3+a/tQma9dJhaXOaSgknNyMTN3
         hcdB/L7CTMZnVvz4iAFBp+6p2cQomShvbUfucpOYCiDQbNd1J4owe4hZe23pBBkEwIYY
         +GJk9k4yKphtl968YDHHXG3/j1XMGcpAp7jUQb1FhRsRinq+2hmELVOW/8sb6A+bF7eV
         jMqpWFTzzO35s2EzqO8tmtO/JYiD5AYLAMSo8PeU4sq3hRxl89TrrX47shYmVJ1Sb0+H
         kz+/rTcLKVm2hahS8d1m8n16DDu8x3uT9tnm+Jd3OpLOvDuLPvo9W9sQG05oXdhX1Vsi
         Ojaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACrzQf1At411+KURfcZIlwTMDjNZ8FsnKGFVbY8g94d6wRGFWtB3i8Bo
	+ZMQPU2i4uCfLRhvUDgRWk0=
X-Google-Smtp-Source: AMsMyM50YIcX1WZNbYhfmyZHWqYzUuzSKhRejFU7SOkkgf5faUSnr+7khlkDQZQ8dKhfKCh1V66jiA==
X-Received: by 2002:a05:6512:3e13:b0:499:1829:5181 with SMTP id i19-20020a0565123e1300b0049918295181mr12227795lfv.71.1666613974384;
        Mon, 24 Oct 2022 05:19:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf29:0:b0:26f:b780:6802 with SMTP id c41-20020a2ebf29000000b0026fb7806802ls1810738ljr.0.-pod-prod-gmail;
 Mon, 24 Oct 2022 05:19:33 -0700 (PDT)
X-Received: by 2002:a05:651c:54e:b0:26f:df91:ba27 with SMTP id q14-20020a05651c054e00b0026fdf91ba27mr11343969ljp.414.1666613973147;
        Mon, 24 Oct 2022 05:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1666613973; cv=none;
        d=google.com; s=arc-20160816;
        b=POJC049HFZqOK1FduHRvKCO2PHTDXjaNwXBl4D3Q+TdyYIQVQtuhKbi6kl/dk25ad2
         aHs+KgjnAWBC+ijJ1VrqhwcOZ90JBGR08CTiB7kKS111jx8atvIeDNtW3xk2hXScDk2l
         r2OYAgMe0R5mbgtv4uLqeiQo/dZNsYcl7LwkoPqd6CYDV4sMCpummeCc9xlJtPXH7kyH
         lke5Dhf/Cbtaa3QWBolK6w2Gb+vmZkhsv5w39rw5SdHLI2qXUMQIpRDr2aI4mabiCuuy
         HSkziLvucFfZl3mIDgvmwYXrDOZSaXDMaPPgyK0ejcqeghaCj/L+ikhUsCmgcWou4TPO
         Vb8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=wZPxi2FHspOrUvPKLX0hasprZ91j50U1MYBVGhjBYgM=;
        b=RI0+k9kvaNT0n/PDgR1dJL58F91ZpmTscbU6+WmtHoOQGbDQ7u1ah30Wzc9BlcC5j0
         R9jM/Z6s/SScWfLkr6OHxiwYF49UypXOeGoScPSdN+rFO6l+xRqlsNng1DKGUA0irtWN
         /qKJtQmmg3sA7PJUhH7qdlHfWcKBYayh39rVUrZ77tJAKFEmiaC8WEdqElIxMcusAiOB
         yhk25tKbwpn2eOAuE2FBHM2BgOryqzbIdrFQ5+0B545Kwpgi130HY+W8G9HcQbafcqoP
         yK3l/S56B+LYyUrY3juAQ3GhTRbwdI2mcSWsP+ZoOU0LmZ/KRIQVrqoTLnvk0Eg0uXKB
         5kfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=pDQqV9s9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id m6-20020a056512114600b004abdb5d1128si66675lfg.2.2022.10.24.05.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Oct 2022 05:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 97A22B8163F;
	Mon, 24 Oct 2022 12:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25AFC433C1;
	Mon, 24 Oct 2022 12:19:30 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	glider@google.com,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: [PATCH 5.10 053/390] hardening: Clarify Kconfig text for auto-var-init
Date: Mon, 24 Oct 2022 13:27:30 +0200
Message-Id: <20221024113024.895215368@linuxfoundation.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221024113022.510008560@linuxfoundation.org>
References: <20221024113022.510008560@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=pDQqV9s9;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

From: Kees Cook <keescook@chromium.org>

commit dcb7c0b9461c2a30f6616262736daac6f01ecb09 upstream.

Clarify the details around the automatic variable initialization modes
available. Specifically this details the values used for pattern init
and expands on the rationale for zero init safety. Additionally makes
zero init the default when available.

Cc: glider@google.com
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-security-module@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 security/Kconfig.hardening |   52 +++++++++++++++++++++++++++------------------
 1 file changed, 32 insertions(+), 20 deletions(-)

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
 		depends on !(KASAN && KASAN_STACK=1)
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221024113024.895215368%40linuxfoundation.org.
