Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUPU7H6QKGQEI3BL3NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 797E82C430B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 16:37:54 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id s18sf1893569pfc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 07:37:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318673; cv=pass;
        d=google.com; s=arc-20160816;
        b=jIQW7lJUHDqPmQl9xkdWKvw+jtXrZRlmVwkK1edyCqYhg8o5th+0KlAdYKLZJ9rlNm
         K/DBxNCtVHLGotd9G5LdHnnkOfNrAqQuIRQhwj2/Y/Cuzfxfl0YPUMdzlJ8O5YFgJnWr
         293FSj7pFBLviewvQxRK+Kby6DU0pWF+K6qdiUhQlD2QHt8Ovr+PBopLjV9VkqVnkB/j
         PmZ5XK7STegXplKUR4t8c3sBDHej9QSGTRCmqzG3d/LG/9uIkMWdWkAy2a72xGWghbsF
         c0TcDVGOJq6ZY1ubmFfkBCQxJrDq3D9lzP/6Kyt1IzYJ7VpqNICugnnATB6MHGgrPJ+w
         7aQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jjdUG0R9tviXPtMCQbTZXkB6Py4kDAa1pHeU2RjCF2I=;
        b=qbp+cd81bf6JAmnMGPg0dBVYW0Vwx8eg/T4Q4h+2jQLQHhasgNbL8KQKoKoey8Y3Wm
         g1gR4E2dkNcnwX54FIQz6O5rAceLhUMLQTkghaPB1Lg1OnCf/69BsyK7839l+BzUy+DK
         W/EED9tT9PV1VfNO6qzQwGoPR3Z/u/aYulOE9Hi+NPa1gbzyRwWwvPe1tmL2e/jEHUml
         csyAR/WpKUA/R4inknQ0xCuYtz2m0OBraBGMopGgSZMhBclDVwoGfw7H9cYipflDf0aZ
         /YjTj3vVKlGmDNc9elRMJ1iSUvsrh1F13lEsNKB4BafrDITGjBrzOprq5gZweoZG3MDV
         g4sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ty4PDd9n;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjdUG0R9tviXPtMCQbTZXkB6Py4kDAa1pHeU2RjCF2I=;
        b=FYw0ZQUlYiu6NbzORhOjGM2WnQM95WhB72SwnwiUYVyhgcRqjE2u/FTPkLnzlutfCS
         eqJCH76N5sKUg3kDjZWt4n3JmCC6DMnT9zkgZbLZiMp+mod9h8XHVyHn90wTt5h61hLd
         Cfb4f18PwrRsFaeFYYm5mA6t+YIHHW6iSYWhNlyTsBg1oXni/pMy95JS5sNuRqB2FwG8
         +HC8w1hbWV0xroKuXQleLw/hh/NZYaypcNFPxIvgXOZEF8KzuukCikpaOBdQeD+tyZHj
         CDKQFZzYLauGHF7Bn08yBOJcd18rKmllpAtHfVyXQhG6peWPaVyMmT7DjjzsT49YfY3S
         CFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjdUG0R9tviXPtMCQbTZXkB6Py4kDAa1pHeU2RjCF2I=;
        b=G1d22inrtbR3HPn8NqeExEz13JIecafN5I1HU1EHh6NyoAarKPbVuMPXzAWo6IXOuv
         WP+0gqk6uNoPwg4/Ez/YdTukjGi497B7Ad9anT7VlVqH1QBB80yaHXc86ZoLhVGVmniN
         oVikdi+Wn1aiQE9j7+FDOKHqqh6rKJ0vPILyC9QmuVCwTTmSCJN7YNx95hEx7ue7gXcM
         YaPiWFau0aX/w3G3YknxZA0I/v9y5o5I/hGUk9PuYqMZTUi8ke12BJ3JMR4rXfY9NB3+
         m2aJUO6LikyDjjWH30/b5I+Bi38BIxMEl5nO5n9/UsnZvOKowndvOh0f0B4WNEMckc1k
         IInw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325RzLVWaqhtiiYr6v5kN5NJT+QeSElpfcLWymHuW4yqmGHgFp9
	hQYWPcdrpCQn2giUQiMhAHk=
X-Google-Smtp-Source: ABdhPJzqXNZkk/3CN+8Nf7D37J2PhnAkGw+Y4FEIaggMKOgR0bifp25DRf6D7kfnVuBAOPf1ALgM8w==
X-Received: by 2002:a17:902:ed0d:b029:d9:d737:6169 with SMTP id b13-20020a170902ed0db02900d9d7376169mr2877347pld.45.1606318673246;
        Wed, 25 Nov 2020 07:37:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15ca:: with SMTP id 193ls1068579pfv.5.gmail; Wed, 25 Nov
 2020 07:37:52 -0800 (PST)
X-Received: by 2002:a65:6a50:: with SMTP id o16mr3473003pgu.292.1606318672616;
        Wed, 25 Nov 2020 07:37:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318672; cv=none;
        d=google.com; s=arc-20160816;
        b=byOuZ1/RQGdWX7/yHWLbCMK7dyQP4pGEE/8Y1GOooc8CcUtEFar/eNvCx/CAi1rdiN
         rbn3oPlC+kelkoc47NvxybyTX27xGecAIupRu2cFA3+A5fV+jty8QNDbweu6tagzoFVX
         4TxoUkCd8KIQ/JGAdlVeca10FcwGdz/yWfQqfIj4zQVuZrQKLoT2r8vy6/4DJPhSftA2
         LOa169QWEmnjZUYoZvlbIbrUqjqgvVBYT/ISZE/2X7IMvCp8J5FWUwN0NTZg2Toie/tv
         TXnb0UbcXrtyGyW052hIU9pXFRm+cEv5yk7qyBk7b327lgYqRP+CErWdlfLPMLoULl4N
         m0UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6UdT1lHAej01D7NKLh9jwUJBvbt+9RimaOAfQFn/zgU=;
        b=JXYr6oyORhkPFE+SA4/YJdxp+4mbB0cE9pm4J1lSKF23XNI+uM24RQk+akOSqaGahd
         gApmrG4zEyxRfZTKjdCx/0PRP/eNunStTnypZlBSmIDw1rHs5TBiVNoDteed56SrxRAd
         nHZZL/I5awXDxGRXPWDeeviGCxwoajNix8gw+ZiPTaz2OP/qG4bd7yy4Sjx8NVuZ3XIE
         nlfAYvhb1j98ht4pvN7mJIpMugo/I3V9vRYvdXCFL5ix1nmR6BYnp4a5Nf2cQbbRR6oQ
         lhkuu0MpnKG6AAJG7wFs9t9m0ckQgRoKsPdAURZ/VyPWQBEmZqG8aYe6YvRoOzAwbda5
         ylnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ty4PDd9n;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l8si260091pjt.1.2020.11.25.07.37.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:37:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 45E05221FD;
	Wed, 25 Nov 2020 15:37:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 12/12] perf/x86: fix sysfs type mismatches
Date: Wed, 25 Nov 2020 10:37:34 -0500
Message-Id: <20201125153734.810826-12-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153734.810826-1-sashal@kernel.org>
References: <20201125153734.810826-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ty4PDd9n;       spf=pass
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
index 59521c71c98a4..4ebeaa3c67100 100644
--- a/arch/x86/events/intel/cstate.c
+++ b/arch/x86/events/intel/cstate.c
@@ -99,14 +99,14 @@
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
index d36a5fac6a18b..7d3f861e31654 100644
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
index c56cb37b88e33..4ad93871508cd 100644
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
index 4364191e7c6b2..ae4ab89e16c7d 100644
--- a/arch/x86/events/intel/uncore.h
+++ b/arch/x86/events/intel/uncore.h
@@ -125,7 +125,7 @@ struct intel_uncore_box {
 #define UNCORE_BOX_FLAG_CTL_OFFS8	1 /* event config registers are 8-byte apart */
 
 struct uncore_event_desc {
-	struct kobj_attribute attr;
+	struct device_attribute attr;
 	const char *config;
 };
 
@@ -137,8 +137,8 @@ struct pci2phy_map {
 
 struct pci2phy_map *__find_pci2phy_map(int segment);
 
-ssize_t uncore_event_show(struct kobject *kobj,
-			  struct kobj_attribute *attr, char *buf);
+ssize_t uncore_event_show(struct device *dev,
+			  struct device_attribute *attr, char *buf);
 
 #define INTEL_UNCORE_EVENT_DESC(_name, _config)			\
 {								\
@@ -147,14 +147,14 @@ ssize_t uncore_event_show(struct kobject *kobj,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201125153734.810826-12-sashal%40kernel.org.
