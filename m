Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDMC5SEAMGQEY556INI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id B36913EE0DB
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:34 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id b24-20020ab02398000000b002abb9087041sf2543126uan.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159693; cv=pass;
        d=google.com; s=arc-20160816;
        b=zhuQJldKfNlPAXgbPGsRn7Pq8LhK+U+bWkk0CUiX2zoZMr91DUr7tctUAR4+JZFrDp
         BQL4ejuka9VGyhRVJLjAi7B6Ix/KnK15N+tgV+Tun/ytYZYyNHeu+M0qPJPuV6ej/aRo
         mIZQ1FqPzwRDG7Z/0y2KDHKFWkhEwjUOBSDX3T69wzzlSsIsx9fVOiallqKYaMEOqp77
         fWNWV+D0H1J4+3SMvq37mZb+D56R3C7S8RmtOkntvjdy3r8/yzAuh7uka+B9NFdTCZIq
         176qtzsyeywSyXgMb5nHTJcyaJWs+ruU3TeY+ZIfeTPlCbW+feSwwNqjGip/1uDN4K9z
         2Uvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=PXjFI3KwL/dGtZ3gHI2yPQYDNUdqKUNKUYAliB6rz+A=;
        b=ECndL/wWj7MCGOCmFXfti/th9S74fKwN82rm2JBGotHbQ2w2lqE4VQUQNZbL+51L9B
         sBEn2DaQFHg/PDeoZe+sD4+JR8ihUeAWI9ciu6++iLONAXp6NZTW4IIQlWt9zP6eGN6o
         MyBm46mKTcdM7W6WpW9ZNIdTBXguNMN+iZM2kOGG+7E4E/H7zYttt2A/28jdcEOreSGE
         JpWgU66SlMXoxrryhiyq5XXr+AREKrp7rbx9LCeJENrAlsGqjN2jel+6cbsd/5szwQul
         ppNKSn8TPj9RY9Hrv3tvSC3hulDbyTYZSYBtFFzjFUG+2GgMBnp2jbQXZ2M1THjHp8kL
         7goQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JUWAV2ZY;
       spf=pass (google.com: domain of 3daebyqwkaik0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3DAEbYQwKAIk0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PXjFI3KwL/dGtZ3gHI2yPQYDNUdqKUNKUYAliB6rz+A=;
        b=kdXoyzNR187sDTcLSuDdZsN3CsdRH58SOgNw0FXCvVJPtKlWjWJQiM9jnsrPovCb+C
         nDqD8NhJwqPuq1vqh03mXK2cVleEjPHtth9Km2N+khxsYDyxinqx0/Mq91/+FU3wmw79
         N7L8zOrGkSFRTqCuWi9aHtBMibx7zHocmfSJNWgKjLWaBWFNj9C5kt/9eLJTj7x0MwCy
         9gY/ZI8Q2ZhLlDHed3Q56hZ6pxgM4BtNSvGak+KJtBoZJVmG6+ef25c9jfCuj0Xdl6KK
         0GDdQfbip930Bl0eNa3A97gO//qDNVxDHvjozz3epj/KxhwMuN7XEjXvCKPtQswGmNcr
         9Npw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PXjFI3KwL/dGtZ3gHI2yPQYDNUdqKUNKUYAliB6rz+A=;
        b=ODXDx6ObqpQQQAeUWFDsrLRBpINKhcjxNJOU98MLnnchcvTRdXQDEiV5DDSrWpY3QW
         RkRz4hJyHrDEAeT2tg6QrBUGSQ9M1a5Tct21ZCccPXpZ+ni5CgpAP1i3sNL3/nmjmTPP
         wa4sdXCxt4MjkaFSEr9DgyJIkfgj4aVHmD4BrsLfhHLpXfFTZJrfq1Mz0ZwXm6MX8zOb
         1H0AKLSPASBShCrRswQUyPmhZQkD0/4m6EKY7UzxvYJSA/tp8OhasSyUsM3Nj8rYXUs6
         KrAUtr4CPfMm8WeJJLJAaeMRbd2InXplc7heOHijoGfULExveXG65ZghEAc2UbyZv9Sf
         v15Q==
X-Gm-Message-State: AOAM532MxN8RoVMCV+seudRbvOOUbB7SxBwdi9NbaQhAruZzG/BT0AtN
	Cc9vibxUfmZ3frvDL8p1xkU=
X-Google-Smtp-Source: ABdhPJyynWuNSAS8GCLFmmrs988l0TzYyqLMtu5+XJ5I/gRZKutldNs+Yj9IcceG7wcAr5zCBvR8QA==
X-Received: by 2002:a05:6122:1143:: with SMTP id p3mr663284vko.1.1629159693801;
        Mon, 16 Aug 2021 17:21:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2429:: with SMTP id l9ls56303vsi.10.gmail; Mon, 16
 Aug 2021 17:21:33 -0700 (PDT)
X-Received: by 2002:a67:7709:: with SMTP id s9mr564855vsc.57.1629159693335;
        Mon, 16 Aug 2021 17:21:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159693; cv=none;
        d=google.com; s=arc-20160816;
        b=ZtwygDxqPGcAcwOU5/mABTFG6tPiNmoLR6GMaO+XTxfHNkZ0WpTJvqYh3IG92Cs27E
         R7t0WdVS8YAI+/d2RNMx+NijFKvA2rqXNcV5cYOWgPdU2VYG9QePdim+uhOHCSJcr4f4
         58KT/Meu5+afWr0jsgbrwY6OxkphMQGICt2fdZr4mib5zxdUn8U5Jt5aeM/DnWCzG8OS
         9nZnUpxQ4+1BQXC4OVXHKGsqLd0Y/0m2Ev+8frqTJCpqGc8MBMC//A1GH+aCbEslinqT
         r3QGV1RCE9rK4/bC1QG6inAg+RVyGiZVVAO2d41ZqYMZKViHkqG+Cju99mbmJBVM2lyD
         GGLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qcMahTy1suowLl0Za6h1NGXvaZHNK4dybAs/n3NhjkY=;
        b=sRpd1sYr/RW8v8K0OY7IVEB4v6I4lRS96RLf/8uJYSXWKGSfuSTW0fPkWCMLzF17OO
         iVnLZNUeCcOwUhTD/5ff25vmOK6Fl6ghaGZ3hleRNShhx+m16GiHJEJL4E2CtK0C+H/S
         TvxUtX7liVe/rVCJ3ZTy9eJjzSEgQnGez6KTv9k66oCE5+hYeusbBJDWTFE3NtTYCWkz
         fzuoUVUZuxrU6IuzUMrTOq/lKn82C0s0J8SaniLbDazHMZA7NO5On99Fn7HFyDxoURj2
         4IWG1Mz06GlREW3oNjK4W4oic1/d+ekPTFd2PQ0bh6CfAH+qaxg2ipG7tNKCrDi6ubgg
         9vwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JUWAV2ZY;
       spf=pass (google.com: domain of 3daebyqwkaik0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3DAEbYQwKAIk0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k21si32913vko.3.2021.08.16.17.21.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3daebyqwkaik0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id o3-20020a2541030000b0290557cf3415f8so18776204yba.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:33 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a25:83cd:: with SMTP id
 v13mr865069ybm.325.1629159692935; Mon, 16 Aug 2021 17:21:32 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:09 -0700
In-Reply-To: <20210817002109.2736222-1-ndesaulniers@google.com>
Message-Id: <20210817002109.2736222-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 7/7] kbuild: remove cc-option-yn, update Docs
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JUWAV2ZY;       spf=pass
 (google.com: domain of 3daebyqwkaik0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3DAEbYQwKAIk0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
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

cc-option-yn can be replaced with cc-option. ie.
Checking for support:
ifeq ($(call cc-option-yn,$(FLAG)),y)
becomes:
ifneq ($(call cc-option,$(FLAG)),)

Checking for lack of support:
ifeq ($(call cc-option-yn,$(FLAG)),n)
becomes:
ifeq ($(call cc-option,$(FLAG)),)

This allows us to remove cc-option-yn. Do so and update the docs with
examples.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Documentation/kbuild/makefiles.rst | 22 +++++++++-------------
 scripts/Makefile.compiler          |  5 -----
 2 files changed, 9 insertions(+), 18 deletions(-)

diff --git a/Documentation/kbuild/makefiles.rst b/Documentation/kbuild/makefiles.rst
index db3af0b45baf..4538c36d8df0 100644
--- a/Documentation/kbuild/makefiles.rst
+++ b/Documentation/kbuild/makefiles.rst
@@ -650,24 +650,20 @@ more details, with real examples.
 	-march=pentium-mmx if supported by $(CC), otherwise -march=i586.
 	The second argument to cc-option is optional, and if omitted,
 	cflags-y will be assigned no value if first option is not supported.
-	Note: cc-option uses KBUILD_CFLAGS for $(CC) options
+	Note: cc-option uses KBUILD_CFLAGS for $(CC) options.
 
-   cc-option-yn
-	cc-option-yn is used to check if gcc supports a given option
-	and return 'y' if supported, otherwise 'n'.
+	cc-option can be combined with conditionals to perform actions based on tool
+	support.
 
 	Example::
 
-		#arch/ppc/Makefile
-		biarch := $(call cc-option-yn, -m32)
-		aflags-$(biarch) += -a32
-		cflags-$(biarch) += -m32
+		ifneq ($(call cc-option,$(FLAG)),)
+		# $(FLAG) is supported
 
-	In the above example, $(biarch) is set to y if $(CC) supports the -m32
-	option. When $(biarch) equals 'y', the expanded variables $(aflags-y)
-	and $(cflags-y) will be assigned the values -a32 and -m32,
-	respectively.
-	Note: cc-option-yn uses KBUILD_CFLAGS for $(CC) options
+	Or::
+
+		ifeq ($(call cc-option,$(FLAG)),)
+		# $(FLAG) is not supported
 
     cc-disable-warning
 	cc-disable-warning checks if gcc supports a given warning and returns
diff --git a/scripts/Makefile.compiler b/scripts/Makefile.compiler
index 86ecd2ac874c..c19c0b544c0f 100644
--- a/scripts/Makefile.compiler
+++ b/scripts/Makefile.compiler
@@ -51,11 +51,6 @@ __cc-option = $(call try-run,\
 cc-option = $(call __cc-option, $(CC),\
 	$(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS),$(1),$(2))
 
-# cc-option-yn
-# Usage: flag := $(call cc-option-yn,-march=winchip-c6)
-cc-option-yn = $(call try-run,\
-	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -x c /dev/null -o "$$TMP",y,n)
-
 # cc-disable-warning
 # Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
 cc-disable-warning = $(call try-run,\
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-8-ndesaulniers%40google.com.
