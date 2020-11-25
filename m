Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPPU7H6QKGQEWYVHQHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D49A2C4309
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 16:37:34 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id k10sf1868882pfh.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 07:37:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318653; cv=pass;
        d=google.com; s=arc-20160816;
        b=NefZgUV58Z267xygwcbwD5YsSJ2FJxecu6ApDdRpBEDg65cFS118ZC8xfp9bri1gIH
         00KsgKtaV39hnyNln1uOuJGv82r/zpYF11QNuXZMoP2iNWTGSo3Tl90gvEqH9CuDS7XP
         zu63vK1k3dxhxhLe7Pp4f0DT/j468BBI3TF/6QuKYVLXGCEJy7yh9TaaekEoNGiZt1rg
         sUEYeTW7S2qGk0zO9rFg2jEEsDKubo/+GFDkrW6l8vetTWlNx1YKDW9efA/eU/UFhU+n
         2EEWy/2Ftj7az2+FBzngYeaaYIwDZtNz4fN6+1fu74A8I4u6a31KBF21s2+mzm3JGf50
         o6kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dM4/3mVn8nQVNa0h/qp1nve/vO+ZlE9djab6fwu2ysI=;
        b=EtnCNCcM7RM8l6HJzOlkhGODd/5ekhdzSrlsp7cj88PeWpuOci62d/puKQE7DtsKQz
         u6p9u95P1Qs8OzJWD1ZRqSyNvJOJSWgbHKOxeTmigHA8j8sfHGDacwYMSSoI4A0xXreQ
         MLzxF5egaBncOPatSI/ZVi7qDX5AmUy+m4zw8G1zyPByXKpCD3BjEhCOb1CzBjzRLbRn
         5R8D83n/iu6ePRFob5ynZUmpE/ghs/GHi8p/BYUV3r6JloLLTwIy2DCLqFVFfh94vt0B
         p8UMXqG1t9auKh43rU31x0+WK9R46i4fEsWLhV9qlyXVoLaxC4LeFjJdLvuaIOtrOMS3
         xsTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=stnMF9XC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dM4/3mVn8nQVNa0h/qp1nve/vO+ZlE9djab6fwu2ysI=;
        b=rQos8FJWtrZ7f4SlwyJW316QHdYhdFwEl1LwPnMWZcijXg0p+f1VvwwR0eaVarLDAk
         8QLyfBgrUjqVxDCT7M7b25ioZP3Y11RNZb1xWb14pq7rY+IRbbv2TTDGE/y7V1cFKwHD
         rBzFtKu2oFgLLHqvZQRj/S+INQb7c/iqeXJxD5GcdoqbESQUzAVRDrFUFefwfpRrF7iT
         7x06jTP3FtethsyxKA0FY8UnwRHF1KPbRRR022GXnCRV3DAl1gPi7tVTm0bSxfLRvY3i
         Hulc5UUsChdiwqBS/S2ta39MLYn9Hd4HZXTCJgyn7LxMUtEGKCBXPZ7gbv93fL4spKTH
         7Z2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dM4/3mVn8nQVNa0h/qp1nve/vO+ZlE9djab6fwu2ysI=;
        b=qf6/dwzmjZyiij9hH96znM+LaholECv2SGZh6hGzfthEQGWYymTAK+/4lAJpsVmd8Q
         z8LH4Q71T40JhWh2WreQRGB1l+wieYnGcDU3xJkwt9Ld/MEW1eX5mSv2tRAhOSmJ2Raq
         qld1zNainYgkrYNnfi1xIoioksYd5Irldnkl/tp8ES+rhVOoJlsejR4IjAs6BswURdin
         w+s4JGZv/UyhJtTZn2BYbN37B4ea1FfMCBHqYMYbZZyJKQCU8ESMY7FO3nbmXSiGeTFw
         1P24+qESaWEz/iElmLury9xdOfE7laC/QnwpmSwLbiW5OCEpOCryDPTgIBJi6eix0eG/
         AlOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BGy5IkZ/pnbmwB/Tvhc+1in9RR1dK+YNvzlMwFgBLQlMn6Z8K
	gzUei6DuKObfUky/Ych36HY=
X-Google-Smtp-Source: ABdhPJwSnTC4yId/8dtba56t2K3x+x2HEzt077X4W66FEHGo1kkzQbmoyprzpZbbQCG/8i4LgkA4JQ==
X-Received: by 2002:a63:cf41:: with SMTP id b1mr570710pgj.96.1606318653138;
        Wed, 25 Nov 2020 07:37:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls1788567pjx.2.canary-gmail;
 Wed, 25 Nov 2020 07:37:32 -0800 (PST)
X-Received: by 2002:a17:902:7b90:b029:d6:ad06:d4c0 with SMTP id w16-20020a1709027b90b02900d6ad06d4c0mr2704509pll.35.1606318652495;
        Wed, 25 Nov 2020 07:37:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318652; cv=none;
        d=google.com; s=arc-20160816;
        b=ik8lfiI9MQGyFJr8QmXTnvvOzSO1FK5LLBNZErXaSwA20OeL5RV4h+mA4E5I7L6Ssa
         JMzIlBi/QR33jyu4vrNs2hfgby0KXWp+zSQjupB45p1WSi4SWmMWAr1Ai3GN9MuHzQ0/
         JByob7ajIC9lJH6VJzooMwGy/9/L30yupib4GHWcqMLV9P7C/dJKOSOeDhMBHNMBv9xk
         IIlHVS6RAx3YHohJW7+UOFiw3XjXIaIzX+Hk9vzUWnLBmuxsgL7+no7qUTRYzpC4uaL9
         6vzr0T2t7K/skbGGi/AUG1d35MDUb6je0KAxWpVXqweNAYHOj6nLiDHw+dEFZLA+Sp2u
         tdZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2XMUikzjPJzz6tM+HZXlzE6oiJ93057jwB3rCsjJJko=;
        b=QrwJUMUBWskJpq+ol3JGD9mNm7+61ZQXhFcJ22EkXQhrNkdjulVLfLmulDBFiW4fRm
         rfBZY9Wf3s+aZ+si/RnUeRU9o3vr3j8AIp5lYxuijUbh/HPgRQ/wvxvKB6taZw5kw0lW
         v4J2rxMa7JCyaA5wlKgsVN0mm5oQWFwJNdQ3VD7NMoBQtiyT91IsEHuy8/JT5wdY0w2S
         olgYCBU5WuOx7Fgm1wsQHUNCXoMpxyehNrb3DORXJ05OG+i4LcSJ/GYsMDQtC61Q7286
         RIFmQTr0YOUn/U7M0kwONo16sXL7MPly3vVxF6BbTE9YmJbm+UgurBjrZ4Chko0GiqcQ
         p3hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=stnMF9XC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r127si99548pfc.5.2020.11.25.07.37.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:37:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1C853221FD;
	Wed, 25 Nov 2020 15:37:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 14/15] perf/x86: fix sysfs type mismatches
Date: Wed, 25 Nov 2020 10:37:11 -0500
Message-Id: <20201125153712.810655-14-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153712.810655-1-sashal@kernel.org>
References: <20201125153712.810655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=stnMF9XC;       spf=pass
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
index 4a650eb3d94a3..3b3cd12c06920 100644
--- a/arch/x86/events/intel/cstate.c
+++ b/arch/x86/events/intel/cstate.c
@@ -100,14 +100,14 @@
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
index 2413169ce3627..bc348663da94d 100644
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
index 7098b9b05d566..2f4ed5aa08bad 100644
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
index 40e040ec31b50..0fc86ac73b511 100644
--- a/arch/x86/events/intel/uncore.h
+++ b/arch/x86/events/intel/uncore.h
@@ -133,7 +133,7 @@ struct intel_uncore_box {
 #define UNCORE_BOX_FLAG_CTL_OFFS8	1 /* event config registers are 8-byte apart */
 
 struct uncore_event_desc {
-	struct kobj_attribute attr;
+	struct device_attribute attr;
 	const char *config;
 };
 
@@ -153,8 +153,8 @@ struct pci2phy_map {
 
 struct pci2phy_map *__find_pci2phy_map(int segment);
 
-ssize_t uncore_event_show(struct kobject *kobj,
-			  struct kobj_attribute *attr, char *buf);
+ssize_t uncore_event_show(struct device *dev,
+			  struct device_attribute *attr, char *buf);
 
 #define INTEL_UNCORE_EVENT_DESC(_name, _config)			\
 {								\
@@ -163,14 +163,14 @@ ssize_t uncore_event_show(struct kobject *kobj,
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
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201125153712.810655-14-sashal%40kernel.org.
