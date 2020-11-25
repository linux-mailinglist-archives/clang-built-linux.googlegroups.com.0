Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJPU7H6QKGQEMELEPQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id C42AC2C4305
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 16:37:10 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id b4sf1922480plk.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 07:37:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318629; cv=pass;
        d=google.com; s=arc-20160816;
        b=O6GvhQNLeFrfSX2jMweZ6BFxLjDNZovSvDRF02Yq25pViv+EOBusmGwiqG/infN/uo
         yKp39qDxnEj+lFY7EXjcDtxCTFaK/8H4qEuPLxq76SAVI4NynOQQdHQyxPQ3rKclXtpQ
         EazjGzaT8+GcVKk2IkfLGjA34h5+DxTrcppp/2FKTXUMio3G7p6au1TqLslZ8xd3e9Rb
         TbjyaohQfZSpcgtgLLz1t94RDnPkUmSBego8IDeKQOtLfpa5E81UxFET1FoCSEiGhXwV
         qqDhpykXRfNEKmuMUMjYRg2EEnkRfwJK7d27LvL9f8GydVF+MJ/n0abqSmtQh6E2qQLX
         WUyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zEUSV6H4BTAfj4xOTMBbXcdeDTLHiv2hc5Pl5iE1XAo=;
        b=IKB8+oDaWO8B6kwfeeg15lYwQHB6ezUadMW5kI1kC+Sko9xyqY12yQnG846lXexK4b
         N356TE4Fpy4JhpUwJFxn6E3WqXkMAdh9V37Hbp7wCroUora+Z2Go1iAC68RW9t/XQQpp
         l6nAiAJM+ht5JEvYIGcB6TW579awecIl20h9+63sJ35EcxmHVHDvaN31h1D8NZzXS+WD
         3KD4q0wlIyNgzmO7UTWc6iLuFNQN+hW9U4/tg4L3ZfgXtaoQahXbQV51I+q8i6MlIyaq
         9Pt/CDtZP+vUJkIVBZnDsYeKSphvl8BlO3vOji9E4obfKBcqvNwyBZ69s+wzBA8+z5Ax
         p3lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ljSsMk01;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zEUSV6H4BTAfj4xOTMBbXcdeDTLHiv2hc5Pl5iE1XAo=;
        b=od4H5sklmjaNjFUjZPXulP/L2ZfNsnlOUtCLB6oUkgcrg/27G7HoGhpWvP/7YMhjte
         Q68kVFMecGXMVHvJ6NpszPD4o92rytRORudjFO2Mm9IoDEe/FjZn0oaDLZHegq3PD0Lw
         xmZCM/RJHHezEtvHhSeVJxmTjHXxC+xlUbfS9/TJuIr7Rsq8MX8oC40cljCovu386f5y
         YPFlDuw6eBdu+3jDrXuNniTB0KMa6ysVrDepdtsmwzCmUMDR6GGfrYNLlS/G+0LSKyj4
         3g5gISZuqCF583rzY2bjIube9sl27wcsWblXPctvVuQj71JJzNu+/coBU2KmK5vPXnQy
         fH5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zEUSV6H4BTAfj4xOTMBbXcdeDTLHiv2hc5Pl5iE1XAo=;
        b=OiJ6wUpml0qsClBR5lpzIgPQ6ZvGI6F3JcPLUwAvmWn+s47RQHUC0jr4qzAqnsW2TA
         zV4ipistUz/W2AuCaSgE2uHITRea0fyBKiDi6lOsLsDpBP6NG+zhqT7M1HIH2oVrM4vS
         +P55kYJ9Fhhf5Z2c1sCjbClPM89ROut8HPJ+x1qyoffHxlBGBp4qKPkiK8o9fPwxV9OY
         j+s8DEbtznZdXBafUqHQh9xbldBo8FWidVv7N1a5CP+HSsL5Zp6qQhbVhFWwGnvUhcPb
         G3TjefXEDB6B14yS6nJglBF8kfOMgCKi5JfGbIeIwDmNhwmG4FQVoHFlaKmlAETgX57H
         rgdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TilDaGOqwZKivWQ6UZC8FrzlGTAZoCcHm8FymAVTWZE24Q48N
	K/FB9mHs4tagn41EVUJUlGs=
X-Google-Smtp-Source: ABdhPJzjSXfGzhht/R20iTLYYZen8iGNdfiM83VOMvuNnr35obTdsXE1yGRIQWG/+nYJIvt+M/YkDQ==
X-Received: by 2002:aa7:92c7:0:b029:197:e36f:fc5c with SMTP id k7-20020aa792c70000b0290197e36ffc5cmr3554145pfa.62.1606318629501;
        Wed, 25 Nov 2020 07:37:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls1238491plr.3.gmail; Wed, 25
 Nov 2020 07:37:09 -0800 (PST)
X-Received: by 2002:a17:902:9689:b029:d8:e310:2fa2 with SMTP id n9-20020a1709029689b02900d8e3102fa2mr2713982plp.42.1606318628905;
        Wed, 25 Nov 2020 07:37:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318628; cv=none;
        d=google.com; s=arc-20160816;
        b=RQkwhTiAa4cOLvNQaINiEBq0VsQ+4fI3JpJclLzfpkDaP/a9PHbR0eikwjBj/ZWu8J
         7Mkq0js9YwlFaVsoZCUtlzIqmRKNbwD0lno5M6k4B21ohOdMz+mpK4+5aiR49PnZWqNU
         RJMBMOPdg07QIiD5fQ6jdgdUTP7wwhBoHauLzxE7B530O9NkV89W1eMx2QwaZm0mkdNV
         XcpNvDVWPCWF1njJ01DO/4/YWiNj8lw4fqYGrO1VcJrDvaYIloMtxiI831X2ulze5CbI
         n/sJMRDdAgz1ZP68qQFnuPfoez26qBQ2fxHj6aHFRNlNq6b8lkpCoO4bRHklmrg0IGo0
         UqQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fxVSX7iX37w8b8QpkVW0RxrEbI2dqeGVJmOcEey7E2g=;
        b=dvuzZT8KRtUuC4tQHZB0G+6xQL9xT/Rkc+E0QqjbNS4tchOJlwk7mwEt0lIPKmwDcq
         /XuOpHVPkZFbRpA5PLPo2xGIOsWENQf8jTWItCUIb6O3qykykNcCHIYZcdB9SSs0N+nh
         FYSVvt4K8JHuu6iuUPVPUU4gfXUYIKIQbiB2iVkdTMsRQnzVx4YaBosKZdleQPntYWxD
         R3781wn1kVUYgpn5nIEQb3t0POibtDQp/ksAWD8QTBX3pkzwSyNRtuHc6HublEr55Ygk
         zyLNqn+SPe5kLZWbZRVq+Iq3HlR1h9OxxaHzDL9/Ytabmj6bsWtQv4Y3pHxJ4UFtA4b0
         IlPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ljSsMk01;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nu3si197961pjb.0.2020.11.25.07.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:37:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7BFBF221EB;
	Wed, 25 Nov 2020 15:37:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 21/23] perf/x86: fix sysfs type mismatches
Date: Wed, 25 Nov 2020 10:36:36 -0500
Message-Id: <20201125153638.810419-21-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153638.810419-1-sashal@kernel.org>
References: <20201125153638.810419-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ljSsMk01;       spf=pass
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
index 4814c964692cb..0b50119ea12cc 100644
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
index 86467f85c3831..a335be03aeef1 100644
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
index bbfdaa720b456..7b964c63e993c 100644
--- a/arch/x86/events/intel/uncore.h
+++ b/arch/x86/events/intel/uncore.h
@@ -144,7 +144,7 @@ struct intel_uncore_box {
 #define UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS	2
 
 struct uncore_event_desc {
-	struct kobj_attribute attr;
+	struct device_attribute attr;
 	const char *config;
 };
 
@@ -165,8 +165,8 @@ struct pci2phy_map {
 struct pci2phy_map *__find_pci2phy_map(int segment);
 int uncore_pcibus_to_physid(struct pci_bus *bus);
 
-ssize_t uncore_event_show(struct kobject *kobj,
-			  struct kobj_attribute *attr, char *buf);
+ssize_t uncore_event_show(struct device *dev,
+			  struct device_attribute *attr, char *buf);
 
 #define INTEL_UNCORE_EVENT_DESC(_name, _config)			\
 {								\
@@ -175,14 +175,14 @@ ssize_t uncore_event_show(struct kobject *kobj,
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
index 187c72a58e69c..9050d7b8abc5a 100644
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
@@ -433,7 +421,7 @@ static struct attribute_group rapl_pmu_events_group = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201125153638.810419-21-sashal%40kernel.org.
