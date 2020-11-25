Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYHU7H6QKGQE4SYD3TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DF22C430E
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 16:38:10 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id g11sf1970385pll.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 07:38:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318689; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ca2mNZvdpwOGS26rQ6ynRMdjXVdf0sI76atM8tVvf/iEYaGfZ6c9DAmVRybHJ3Gmq6
         5TyXrF1C8UFBSeBwf0P1Q9rQoolvZnIrRp2rhXP6dUCF8vbT28CARNOv05B+o8oMKq8x
         FqxMHFQ60yUULrcUQplsokiwPmUgLJBNRZ40V7xBJad5X1j1QzrqY38TDSraKOADj4Ee
         y1TP4xQ8i6+iwbxJqlSjTYsacMonpxPVHyWqgx0MGq1JoN2N017+6ILkQrWyZ+aTe92m
         kKdZCeYNQ6uF3ZZItYLkVsuth98yfaIo+NISY9bC4Duz40fabUK8JpwkIMVWAtxKCEWl
         GyQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XbPJOSJu+uomM6LpmVWEr9xzcZs7EGNUjSGGzyBeGR0=;
        b=QRfsN1oe7uoMvG5emhsWwkF/zL5aJtAX6eX1FmD+Ikdt+8EvlJU2ys5G2N+j85SJx4
         EHI7YH5Q+2mHBVpY1630AOcXH3UXnFRH2QV0Ocemg+J8H6tctVk8u2nJOjiACrs4yZc+
         3LlAiIDBddHuZZk+Ce7//E9EQLccGgkrPo01XcmcoGF0J+S7smaPokN9Tcwu3Sj7oP9B
         Gv9paXZfOzjEDTTppDYI62P/DLXFE5MMRnXvCwgyEbsghkmqJdrMZlhF3GZVEZErm/Fk
         SdZN5zgwehUlk9V6BLo5/m066nDsxPkcT2MPQd0A28HXGw32Ecab4UzJ5VBHUGqh0nUL
         BPLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1vdcbJGo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XbPJOSJu+uomM6LpmVWEr9xzcZs7EGNUjSGGzyBeGR0=;
        b=XpzJII95xnjShEApeYghKkCAQod6QdhbpXdx+gPgwVRzMFRreu4Snsha1veOb4hfwA
         e/qcnWwF7XcLxIDQAdeBKmorTgxyP3QUM0pxwOrBwCvSBrCf0blDZwM+/ClFwENu6LDw
         pAkb/Xl5J8OXq4U+IW+XnrfCHofVPO9bHWBjf/oK/aPgQgh0D7FpZn7v7oH+1pksjOND
         b9Ria02qq9WT/X/cF8q96XC8i+j02Nv8FR57q4L1gRHzCMb0Lag/UO0RMfBWNwVEradm
         EPLhg1oCVo/z+hnigMVkfHcs+tE7YwTsS2qFjXg8n3fqG5nzet2xWq3B+pzcKPWIVJDG
         wiuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XbPJOSJu+uomM6LpmVWEr9xzcZs7EGNUjSGGzyBeGR0=;
        b=OA0ulN+bfOYIwzSQWCZaTpDF/c8wHTQwlENMGyDsBBVVPBq/3A728ZwQ2588Ty99vt
         UHzz4wzQ10q7fu20Lr1r3a2Mx+V8nSbC+j9StyDurbT8l7eiQNeIgsb0VaP80Bhm+bVt
         TPBHE50iuVxVQEy3sqGZWzq73hyBmfr8PBzyftSixrCe7O3OqdBqFw4IekspcuvKn5bU
         uRBlUTlpkIkUIe1PZe1DN27noaBxO8qxV2U85EnBuAY+4HUpa7K11Rn0juafOCqnpDXP
         u7dtYlIj4Gw3jfYDHORwOlHBNK8J1t6U6/gvL/JhxFJ1+7eh6fbGIE7A7nSFF3Ig2/M7
         j6Ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333JyRzUtf7nUjFYxMlHPwvNltIKjxXxkQrN/Fp/RtjJfxjW/my
	cmsOzf2DppbnNHAXIM8A9B8=
X-Google-Smtp-Source: ABdhPJzdCa06TZ26k6PsFTbKoZ43R0FKRqb8hNgb+VwagrPtXNuXWXm01yqGs9bp8qNB88ZTqEJ0tw==
X-Received: by 2002:a17:90a:f3d1:: with SMTP id ha17mr4933536pjb.164.1606318688984;
        Wed, 25 Nov 2020 07:38:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f994:: with SMTP id cq20ls1799031pjb.0.gmail; Wed,
 25 Nov 2020 07:38:08 -0800 (PST)
X-Received: by 2002:a17:902:7e47:b029:d6:c9f2:d50 with SMTP id a7-20020a1709027e47b02900d6c9f20d50mr216879pln.81.1606318688249;
        Wed, 25 Nov 2020 07:38:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318688; cv=none;
        d=google.com; s=arc-20160816;
        b=A47hRGbQ690v7Pu6mLmaqqc75hRezzt4uTrs89C0p0u2Uvc5if6MSbp0xWuB5538M9
         khfw/XvjlvuvOdw9h7i1yIqhrTzsHls18ZnHwp+WOL33LZnVdtw07UE8WK19iImG/6T9
         G0FPFe9NJsWsx84vn91L6CXFALr05+bPRHSrRp+ydrEyzS3sjje393x8hEg0QydslxAh
         cR5Rwlpx97Urm3D5tToWMM7KPMv+NoeExYOrgC/u/jjQzKDNv4ekaIGIrQNLjSZF3lOI
         laSZ2HT9T6GxRfptPNCheuGrIUZBNc8iPA2QLM9eLzHsQcMrCegmy48h3EdgE1Nv9Pkg
         kzgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C2Kxb0bbkjtRylPNr9NQu+cFznxz4Eheqayq0ymIjHU=;
        b=qUfFnWit1tAGewp1DLgM4e6Ep4QejS6xBOqs2uQWwnu3lZ7n8adytw7yf6vboL9/t4
         SA/qPwWzZyNBVXD6C440MR39KWFpeXePUsYxdS02HaVmp2wAHuaZSePaacyVRW/Ha42P
         RkMxf4ksQNow0QsGHtiXhnBCDPUQbo1dCLOWCRdYa16V71LS3SjlqnMTNn+PnCm8HQXj
         x8qgLMycM60c6F6/6HzyiBMKD25f+cenfod4Pkp1dqzjldoXgFoY1R1o8d6zA1Ahk6bg
         gdC+bmCqF0ORJ+BA9Y6Ot1dy97EJ8msX+Aw5942jrkbot8fVFvz515lbDvtY2JiFw5wD
         r9Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1vdcbJGo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o2si190238pjq.0.2020.11.25.07.38.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:38:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CD32C221FC;
	Wed, 25 Nov 2020 15:38:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 10/10] perf/x86: fix sysfs type mismatches
Date: Wed, 25 Nov 2020 10:37:53 -0500
Message-Id: <20201125153753.810973-10-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153753.810973-1-sashal@kernel.org>
References: <20201125153753.810973-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1vdcbJGo;       spf=pass
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
 arch/x86/events/intel/rapl.c   | 14 +-------------
 arch/x86/events/intel/uncore.c |  4 ++--
 arch/x86/events/intel/uncore.h | 12 ++++++------
 4 files changed, 12 insertions(+), 24 deletions(-)

diff --git a/arch/x86/events/intel/cstate.c b/arch/x86/events/intel/cstate.c
index 72d09340c24d2..88ba013d08d49 100644
--- a/arch/x86/events/intel/cstate.c
+++ b/arch/x86/events/intel/cstate.c
@@ -98,14 +98,14 @@
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
diff --git a/arch/x86/events/intel/rapl.c b/arch/x86/events/intel/rapl.c
index 4c1b7ea185415..38dae3d1391b5 100644
--- a/arch/x86/events/intel/rapl.c
+++ b/arch/x86/events/intel/rapl.c
@@ -115,18 +115,6 @@ static const char *const rapl_domain_names[NR_RAPL_DOMAINS] __initconst = {
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
@@ -548,7 +536,7 @@ static struct attribute_group rapl_pmu_events_group = {
 	.attrs = NULL, /* patched at runtime */
 };
 
-DEFINE_RAPL_FORMAT_ATTR(event, event, "config:0-7");
+PMU_FORMAT_ATTR(event, "config:0-7");
 static struct attribute *rapl_formats_attr[] = {
 	&format_attr_event.attr,
 	NULL,
diff --git a/arch/x86/events/intel/uncore.c b/arch/x86/events/intel/uncore.c
index 4f365267b12fe..9f572bf6c6216 100644
--- a/arch/x86/events/intel/uncore.c
+++ b/arch/x86/events/intel/uncore.c
@@ -90,8 +90,8 @@ struct pci2phy_map *__find_pci2phy_map(int segment)
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
index ad986c1e29bcc..f699783114ee3 100644
--- a/arch/x86/events/intel/uncore.h
+++ b/arch/x86/events/intel/uncore.h
@@ -124,7 +124,7 @@ struct intel_uncore_box {
 #define UNCORE_BOX_FLAG_CTL_OFFS8	1 /* event config registers are 8-byte apart */
 
 struct uncore_event_desc {
-	struct kobj_attribute attr;
+	struct device_attribute attr;
 	const char *config;
 };
 
@@ -136,8 +136,8 @@ struct pci2phy_map {
 
 struct pci2phy_map *__find_pci2phy_map(int segment);
 
-ssize_t uncore_event_show(struct kobject *kobj,
-			  struct kobj_attribute *attr, char *buf);
+ssize_t uncore_event_show(struct device *dev,
+			  struct device_attribute *attr, char *buf);
 
 #define INTEL_UNCORE_EVENT_DESC(_name, _config)			\
 {								\
@@ -146,14 +146,14 @@ ssize_t uncore_event_show(struct kobject *kobj,
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
 
 static inline unsigned uncore_pci_box_ctl(struct intel_uncore_box *box)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201125153753.810973-10-sashal%40kernel.org.
