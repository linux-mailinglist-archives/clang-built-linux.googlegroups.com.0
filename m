Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAHU7H6QKGQE2QKBKYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EE12C42FE
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 16:36:33 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id j10sf1744162iog.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 07:36:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318592; cv=pass;
        d=google.com; s=arc-20160816;
        b=pw4rctY2ebcBu3fG0Ir7dNVccp0hPD+gOxI4YtowStSPayQMuXYl14cV2ugYkJqD7P
         LA6cdvk/cKse8V8CNn4IfGJIhr8sLOVcOUY6/8wWyx7btNxRXotlLEzirixFJRikRPQ4
         mHZeEm5xs8EM71gNfSETUcU6c21OMc0uYFWBz5QXz/NfmLN0FFdeccHcSW7fVOFgZ9RR
         FO80v7VgDI9soUrO4ysFWU3YnBcvVjH712c93OJtz/kp9XRvVTFiec5CoYDPwmEdzEQ5
         o5mOFnzqhiSdrrcs4LC7viN0McW9XF3okXUa6HR7Qc1NFYcdQTMuNRSpvbM89jKxFGho
         3u+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zTBpE7gNFvVGWggNNHwtYCKiF4Rm43B8cj0JdsEU/K4=;
        b=oYp25h8MOhfCeGBmMmosbim4NgMooIv4eLGR/vean7+uNkfQjtTtYoj5W+JtX2mrTL
         Aj9H2GutlOeYYPlxfBX56K7OftervtoxGFtb+WPLNfxbNB82TFtZRSgspNN5TGxeOwmq
         dS9k7VwVzaxmy79CdCKRa9p1yoJmmt3m/p14+iS2izsJwL2f/1dJ8thQKF4aqBiK2Oa7
         wBmcFkor+m4gGEyaujfbp2es2zG5d+7KkG6btgYhphvBxTBBgA9BqXWCWa3bdM4o+9SY
         z6mRcbLKqwu7+QPc7w6ibsT24B7nbEC6eUNyh+uo5GREhqVClEiiJirPvRtACNdy/7NP
         +7wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MKSyW2Rz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zTBpE7gNFvVGWggNNHwtYCKiF4Rm43B8cj0JdsEU/K4=;
        b=XHOiokfdwbAHucxmm3zOGUetxnKUV4owUHLsHUuvz/yAMzvZ6WGZ0S4Vz7swjlBn3h
         otf7NEgoJHFUt443txQgFrqVV0NWA++QcbUcZ6SlXhEEo5VxCzMRu7bSNKuqipM5u9Nk
         VRh79ZsBrhaji+TOZFt2CThXxYcxyF2zt8Mj37xvqtGHdFXBvDu9kuNXJnfN7eoxGzvG
         kGDBJavnMR8c0JbYabra4uZX8XfdyYsw8ccDCfvkFLsgBsK43P7QInmERwT2CkgnohKx
         a5CJvwIle3M9MgALLiS7hOM8p1WUBfF89zAQoUEn+4D1PutL/ydA7PC4SmpsifknAqTk
         neyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zTBpE7gNFvVGWggNNHwtYCKiF4Rm43B8cj0JdsEU/K4=;
        b=C9/sPwhY4sB1Y6jCdg8GPgfcr6r172eWbE4Vd2hZDoyGGlLk/vi1bNtr/6lARXMk8y
         jD5GIQcQ5N/k6dLPJvoJoQu/Uj1PL75bdYy/YqY1UagbnAROXs/m6FcgjZUYJYFnNBc6
         tDgHmpU0gy+h0GAr/S6F9UCoK9GTAgFIArX8ZhScOUmSJabQxNdVbF8KYu1habThfYch
         VdCRzmm7WIn4k8rkh8uvUnPJJVLqk6pEoLdq8bcvtXfdJ3SvOebxmPhLX+4NnuIvCQ4u
         rADz2UqtzJdjBC4AjWYfSM4/XFsTdbre4bq/G3He3TRpTi+T7dzunEsqMcah3uMKEeo8
         OdMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530X/ewzNF1rKAKIuUaoHzNKe1fa+9s8rwUX7gWqNGMaXaoAPCC+
	jvxmbCeDtEDHS4xH0YexKeI=
X-Google-Smtp-Source: ABdhPJwT+hARNJHCJAx9gFN7Ys6aH6uEadef//RYbjOXUip2h4nkdEogaW+laUdm82dLr+pnbpnDaw==
X-Received: by 2002:a05:6e02:6d2:: with SMTP id p18mr3601230ils.41.1606318592692;
        Wed, 25 Nov 2020 07:36:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb4b:: with SMTP id w72ls749905ili.9.gmail; Wed, 25 Nov
 2020 07:36:32 -0800 (PST)
X-Received: by 2002:a05:6e02:df1:: with SMTP id m17mr3534645ilj.70.1606318592140;
        Wed, 25 Nov 2020 07:36:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318592; cv=none;
        d=google.com; s=arc-20160816;
        b=xccfcfE8Non5eyTUM8sszHRTi+70CQb+KbNOML++ozQ4+eL57aXEA4RmZ7eBrexWen
         TvxWI/7eMDfRaNw/eXI9zJulnmhJb31MtLxFYRHwYrsGUAxqCRSkDw2CuuGLvYAt6fOE
         B980w3KaGg+ofMQXy2SgCJ6nJmG3B1wykPxpczUGEI/smtaVnlD/TXdY8XrbJ43d8CmG
         WYc3IxuwMsAJMbUlnLmQm7tAKBiiuKtosSXhs5xZkIWeKrrdKMzLupK+0SIK2wHWf+7+
         YC6rkW6Qo73+QPd8GwYrZZ+w1oZc+h4f4UtRf7LN4UMGCxv+j1FxzL4cMiZXkdQsHq33
         +bXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IibDqPQKMjn9OBAHCArJWu9aFiCeIYg77KFeEWeypJc=;
        b=I/tcQhJ+bp+3pKVgh5/1M5i4k6x7uN54mwDdVK4dFWKZihdt4rEbZHwsmvhD4yd5/F
         p7mI5Kw7jSzvEcMJ1ttuxm8zFqKgJxNhBQ1Sm5nMfq9l1XsybENQqDWLFbhM02A42mYP
         iceSMYbCOdKaBE9U4WbYSVUfWHViUiwP9uZPLOBhBG+/mhOHUKgFSqKEAYzrMlNmq50Z
         pKtddaVWJF5OZ+RcNc5VYMz6Lzwa88VieCKI0R5oBxDHt/k7Qz8gdwWnB0f6OQem5KaL
         Hv73YWfeb6U6ZHBMqDumQK5nYad9eJUidBlPLQQW6Cr0UyHsNPKNu7uz/7PN1ZTS3l7+
         vJlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MKSyW2Rz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n9si134537iom.3.2020.11.25.07.36.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:36:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5BB5421D91;
	Wed, 25 Nov 2020 15:36:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.9 29/33] perf/x86: fix sysfs type mismatches
Date: Wed, 25 Nov 2020 10:35:46 -0500
Message-Id: <20201125153550.810101-29-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153550.810101-1-sashal@kernel.org>
References: <20201125153550.810101-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MKSyW2Rz;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Sami Tolvanen <samitolvanen@google.com>

[ Upstream commit ebd19fc372e3e78bf165f230e7c084e304441c08 ]

This change switches rapl to use PMU_FORMAT_ATTR, and fixes two other
macros to use device_attribute instead of kobj_attribute to avoid
callback type mismatches that trip indirect call checking with Clang's
Control-Flow Integrity (CFI).

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Link: https://lkml.kernel.org/r/20201113183126.1239404-1-samitolvanen@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/events/intel/cstate.c |  6 +++---
 arch/x86/events/intel/uncore.c |  4 ++--
 arch/x86/events/intel/uncore.h | 12 ++++++------
 arch/x86/events/rapl.c         | 14 +-------------
 4 files changed, 12 insertions(+), 24 deletions(-)

diff --git a/arch/x86/events/intel/cstate.c b/arch/x86/events/intel/cstate.c
index 442e1ed4acd49..4eb7ee5fed72d 100644
--- a/arch/x86/events/intel/cstate.c
+++ b/arch/x86/events/intel/cstate.c
@@ -107,14 +107,14 @@
 MODULE_LICENSE("GPL");
 
 #define DEFINE_CSTATE_FORMAT_ATTR(_var, _name, _format)		\
-static ssize_t __cstate_##_var##_show(struct kobject *kobj,	\
-				struct kobj_attribute *attr,	\
+static ssize_t __cstate_##_var##_show(struct device *dev,	\
+				struct device_attribute *attr,	\
 				char *page)			\
 {								\
 	BUILD_BUG_ON(sizeof(_format) >= PAGE_SIZE);		\
 	return sprintf(page, _format "\n");			\
 }								\
-static struct kobj_attribute format_attr_##_var =		\
+static struct device_attribute format_attr_##_var =		\
 	__ATTR(_name, 0444, __cstate_##_var##_show, NULL)
 
 static ssize_t cstate_get_attr_cpumask(struct device *dev,
diff --git a/arch/x86/events/intel/uncore.c b/arch/x86/events/intel/uncore.c
index d5c6d3b340c50..803601baa753d 100644
--- a/arch/x86/events/intel/uncore.c
+++ b/arch/x86/events/intel/uncore.c
@@ -92,8 +92,8 @@ struct pci2phy_map *__find_pci2phy_map(int segment)
 	return map;
 }
 
-ssize_t uncore_event_show(struct kobject *kobj,
-			  struct kobj_attribute *attr, char *buf)
+ssize_t uncore_event_show(struct device *dev,
+			  struct device_attribute *attr, char *buf)
 {
 	struct uncore_event_desc *event =
 		container_of(attr, struct uncore_event_desc, attr);
diff --git a/arch/x86/events/intel/uncore.h b/arch/x86/events/intel/uncore.h
index 105fdc69825eb..c5744783e05d0 100644
--- a/arch/x86/events/intel/uncore.h
+++ b/arch/x86/events/intel/uncore.h
@@ -157,7 +157,7 @@ struct intel_uncore_box {
 #define UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS	2
 
 struct uncore_event_desc {
-	struct kobj_attribute attr;
+	struct device_attribute attr;
 	const char *config;
 };
 
@@ -179,8 +179,8 @@ struct pci2phy_map {
 struct pci2phy_map *__find_pci2phy_map(int segment);
 int uncore_pcibus_to_physid(struct pci_bus *bus);
 
-ssize_t uncore_event_show(struct kobject *kobj,
-			  struct kobj_attribute *attr, char *buf);
+ssize_t uncore_event_show(struct device *dev,
+			  struct device_attribute *attr, char *buf);
 
 static inline struct intel_uncore_pmu *dev_to_uncore_pmu(struct device *dev)
 {
@@ -201,14 +201,14 @@ extern int __uncore_max_dies;
 }
 
 #define DEFINE_UNCORE_FORMAT_ATTR(_var, _name, _format)			\
-static ssize_t __uncore_##_var##_show(struct kobject *kobj,		\
-				struct kobj_attribute *attr,		\
+static ssize_t __uncore_##_var##_show(struct device *dev,		\
+				struct device_attribute *attr,		\
 				char *page)				\
 {									\
 	BUILD_BUG_ON(sizeof(_format) >= PAGE_SIZE);			\
 	return sprintf(page, _format "\n");				\
 }									\
-static struct kobj_attribute format_attr_##_var =			\
+static struct device_attribute format_attr_##_var =			\
 	__ATTR(_name, 0444, __uncore_##_var##_show, NULL)
 
 static inline bool uncore_pmc_fixed(int idx)
diff --git a/arch/x86/events/rapl.c b/arch/x86/events/rapl.c
index 67b411f7e8c41..abaed36212250 100644
--- a/arch/x86/events/rapl.c
+++ b/arch/x86/events/rapl.c
@@ -93,18 +93,6 @@ static const char *const rapl_domain_names[NR_RAPL_DOMAINS] __initconst = {
  * any other bit is reserved
  */
 #define RAPL_EVENT_MASK	0xFFULL
-
-#define DEFINE_RAPL_FORMAT_ATTR(_var, _name, _format)		\
-static ssize_t __rapl_##_var##_show(struct kobject *kobj,	\
-				struct kobj_attribute *attr,	\
-				char *page)			\
-{								\
-	BUILD_BUG_ON(sizeof(_format) >= PAGE_SIZE);		\
-	return sprintf(page, _format "\n");			\
-}								\
-static struct kobj_attribute format_attr_##_var =		\
-	__ATTR(_name, 0444, __rapl_##_var##_show, NULL)
-
 #define RAPL_CNTR_WIDTH 32
 
 #define RAPL_EVENT_ATTR_STR(_name, v, str)					\
@@ -441,7 +429,7 @@ static struct attribute_group rapl_pmu_events_group = {
 	.attrs = attrs_empty,
 };
 
-DEFINE_RAPL_FORMAT_ATTR(event, event, "config:0-7");
+PMU_FORMAT_ATTR(event, "config:0-7");
 static struct attribute *rapl_formats_attr[] = {
 	&format_attr_event.attr,
 	NULL,
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201125153550.810101-29-sashal%40kernel.org.
