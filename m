Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBI4CWCNAMGQEY5AS56Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id A94D05FFF6C
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Oct 2022 15:03:32 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id 133-20020a1c028b000000b003c5e6b44ebasf7786162wmc.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Oct 2022 06:03:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665925412; cv=pass;
        d=google.com; s=arc-20160816;
        b=CBf1zJgQVMermT+L7dzow6XML2aPabbNC4XaS53vxpALe2AlV5acqiZxJbC7r1QiHb
         e7IoJ2qfWpc+McKc9oCboIqmUsLILuwNrB5RGPJjNRgyXWnKriPHfoWDcBwy0g6GXygh
         1Vk9qPxSFYN3fNoA+v+F+EFK2cEqMzMgWGzeizrr2fkRMhtrtAqnz6xtaWoMhPNugBZs
         Ob4Ev7DzkWR9xW+ATqV86L8CpCil0eLgaUvtvNiC1k4f6chd7x1u1m8Pfz//JRdJkyi1
         pDpkh7/+/0hDoifeq12vevwpSeLbUo8RUlxgGi+IgS1npg8GfSqikh3imzstE4ClcfdT
         hwTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=tviCC/rHS6yhQpijyrLb/A29P6MYBQLtbm6CDpXhjDc=;
        b=anvymuZUa9OMFr1eQaprujNfOJ9rnlSsEZoq1Ql1FsX6duWMqpClI+XQdKZ8Gzui3x
         k5X069hZG09MvyFsXMlZWWXtiRmQnUodjN1hf1Eqk4eyiblLTAZ/eio6CSPE/W6MXHxd
         MikCxfnwUqS23z4Oi8OJabZqxSLlDQw2tlhy9rUpaurNfRcSPv+LoDy07wcu5zFkQdcr
         g7qQWsu+lWLfllksDRpQfPqpELNT1LJJ3j9Fy1O+zo2NVGvoCJVw8TOFLiPjyuQN0wS7
         GZzhMR+CtJbOou6oa4O3K6p2TcsH29WxLwzpx1krOj9vpJP0ig+NgPTPpmuFFKsqh1ll
         ms5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lpGabC6R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:cc:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tviCC/rHS6yhQpijyrLb/A29P6MYBQLtbm6CDpXhjDc=;
        b=Wt+foQR5PALqPzD0yJVMAyM/PEySYr3E6g2N1qVi1GgKom83nJfXEgalMfiu0MSX5S
         Si0eQXX4mTEXuq0LxXS7s9nbcPSu4yZUylnXwHCc6mf9jWNelKRoAS/FI82hs4JIKJqu
         r7mz7T2upCtRz6yuXvo1L7aiZOPF7Dbej1vidkTpNNn2+eTrFqQUli7p6YceP91sXe9O
         k8B9xrr/Ab3qqQ3oWdAVF3gypKyZJ9J4FiQALASNPp3P5CtiMQaCyOmQCnMUndo71U4x
         UpDfU6sNG02IdAdUX3bYzhHhb8klNPK0OTiEgvf9eM4MpE1RDk7E/6WnN20EzKpleap/
         LTfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:cc:to:subject:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tviCC/rHS6yhQpijyrLb/A29P6MYBQLtbm6CDpXhjDc=;
        b=fVLiWGo1iKFBVKfd5m31a2tPOpkjc7254AmSf+9AI2Aw1ZTfROXTc+1fEjqI9oEkrn
         WC19Qvw09oUjtqnuM76mgKL1PVg/WO9mXEy3oKroHdvkEDqKKchB9UEhDytuFx/krmYL
         6vqFlWTJw1bw5Z8uvApv2DXTUkDKDBkRpiIoM5uvk/Uppfkz8PcYCDRhQT+W0BhSPHfk
         nOCv3iV0qWrqxtdvv3otgQKYHrAmC1GsEVxPFN+1wn0v8ZmAV00jDqZyKZH4JPVCUXmX
         600RP+opB1UGjORmcETufX4oZH2NwP5YQC01rO4cO2J8JI/Pscyrwxo4BLGRfgvi8Wic
         PIRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACrzQf0gsqN21f2xROJGc5I3p0oZF8sC2MC9hj8vv5SwmLtFTPucCv6B
	pew+TM47jZ+5JJIZ9iWROOk=
X-Google-Smtp-Source: AMsMyM7CUbKd+zvdz7SUxKlC2FqUPAnwsF/qjSd3XMX6SFCmV+2EUFO/Vzu5X2EMJIrYECwnO7SgFQ==
X-Received: by 2002:a05:600c:214f:b0:3c6:ce02:8a68 with SMTP id v15-20020a05600c214f00b003c6ce028a68mr16465307wml.187.1665925412009;
        Sun, 16 Oct 2022 06:03:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:69e:b0:22e:5d8a:c92d with SMTP id
 bo30-20020a056000069e00b0022e5d8ac92dls15008276wrb.1.-pod-prod-gmail; Sun, 16
 Oct 2022 06:03:31 -0700 (PDT)
X-Received: by 2002:a05:6000:144c:b0:230:816f:3167 with SMTP id v12-20020a056000144c00b00230816f3167mr3671280wrx.532.1665925410926;
        Sun, 16 Oct 2022 06:03:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665925410; cv=none;
        d=google.com; s=arc-20160816;
        b=mrMcmz+Or93nM8OehmWWnU9scfjM9LF69/c+oLvrF9KxOTKXjiooI2RL3BIROG/y8h
         cFDuNKwn3VoQ+yLnTfvfdHvyrrMQ0bq1xt1yTXynAUeR18rUtctfgUic6vr4DOJDYOyC
         9gLh/XmbLxlMfCuSFlR1TtHYr2HMjeg/vHBqfLE2GoCfJHRJcncwaER9hGxpuU04xHjc
         Rtix8pcyzJDCA4OrdMAkka2KV49oys6cLEon2xUf7fAci+eNtUoCmckmM0rulP4CZ4iu
         7X3Dk81p7H7F1gxWWeD1t3/KST6UruCeewMSST2ZUyouxLcKTIMOx01igeo3ZoD1sB2X
         eKWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=OgX+2k2xhP/bvEbIFzJvWr5XDx8XacbyOgxyYq8BKqQ=;
        b=Yse9AzmOS7dn7owEEgwjzz0+Br6Z1TBEU3sbXFkJ7uAcWCOoITed04Xbr1+LGl9fwv
         ZWkziKbe8yvxR9frjqhPcXg2OEyQUGD1LQvPUv/qefruBao5wf6jXAu2V3duN83Cg/fn
         XqL6Av/FXGIrtEDg921hclUNw4zRaKXlHYAffUdqtvsXRd+Stwjy147blmOUlI371mb9
         DPoUx2q5CQOWNbmnGxZyjTn2f17aUVd4AeVnyY0Zfaz6uJ1bkWLJPmuhEqrrpW4kIjxk
         Tc2VWvnLYYKCCrr/hlbsr7pmEoTVI8CXmv804uGpvtQQD0dmyeXi6jBlQxW8XmyJAGx/
         aCMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lpGabC6R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id b4-20020a05600003c400b0022e3df50e0bsi260574wrg.2.2022.10.16.06.03.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2022 06:03:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A21B4B80CAB;
	Sun, 16 Oct 2022 13:03:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1554C433C1;
	Sun, 16 Oct 2022 13:03:29 +0000 (UTC)
Subject: Patch "hardening: Clarify Kconfig text for auto-var-init" has been added to the 5.10-stable tree
To: clang-built-linux@googlegroups.com,glider@google.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,keescook@chromium.org,nathan@kernel.org,ndesaulniers@google.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Sun, 16 Oct 2022 15:04:07 +0200
Message-ID: <1665925447150168@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=lpGabC6R;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    hardening: Clarify Kconfig text for auto-var-init

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     hardening-clarify-kconfig-text-for-auto-var-init.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Sun Oct 16 03:03:28 PM CEST 2022
From: Kees Cook <keescook@chromium.org>
Date: Tue, 20 Jul 2021 14:54:17 -0700
Subject: hardening: Clarify Kconfig text for auto-var-init

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
 


Patches currently in stable-queue which might be from keescook@chromium.org are

queue-5.10/hardening-avoid-harmless-clang-option-under-config_init_stack_all_zero.patch
queue-5.10/hardening-remove-clang-s-enable-flag-for-ftrivial-auto-var-init-zero.patch
queue-5.10/hardening-clarify-kconfig-text-for-auto-var-init.patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1665925447150168%40kroah.com.
