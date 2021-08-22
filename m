Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAUERCEQMGQEQN5QZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A633F3E59
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:31 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id k21-20020a056a001695b0290329e718b5a3sf6919292pfc.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618690; cv=pass;
        d=google.com; s=arc-20160816;
        b=EsFkQ7mir0IubHJ+2NXS29U3kYLd/ZEb/o5re9iQ1C3J1upmjvS4amcx55wQR6oxdY
         q+efuPu3l/4kEL8eI65/5cT7duve/reKwDrXk5nBIWhIih5TmXnPuh5zQ0KYeSVVBlsz
         Xz0WcbQ71WZxKeoCcYgmG9XxBb7pIma51CbL/O76PFeV/C572Ff446KacITsUSpwFUMa
         rT99QOIPNbtD+aPxcY08xqNMfzufCySmQhL8r6ZbyxMlZYe36BSNWpAh7fy6GRs/qtht
         S4KOLPPcoqwZk81W8wNka+lZD8rpLM99B1mySjPaC8NQuGzSgw2vgahwvhpZZLjY8QrG
         Gwag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8MT6eEsmSjP71AX9MpCOZ69AO1U2oTQuL3IhPBAIuBM=;
        b=1LzmBluS47LN++9U7t7XPJtlI6dR4O78Fmm1nOSUcTQUD+EjobEZSC24MgUNv5iPPi
         Ybx4a7Jv7dK5ofd2N1P4WNHXtm5JTZBPcrGJWTq937ai76Jkqd5YDPCtAkhh2MDNWRxQ
         4w7utmB4XbDfSLh0Rm/NbULVEbVsEHbaQPOzL+i1ILI2trFqpXL04r6P8Q0t7r/caOkS
         avp3zX1WBv+Yt4SW79OfnYQkMyU0vcrLctErau8MiSPX3BBtIe1EfP1Zt7qhLM3MLJ7G
         tHhkZMtTZYgjXEkYyjFo7xCUY+TTCk8z1FLKZWA2iZXIpbbbZzyovOwcaQ+zu0JwH5SL
         FgzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OybusePZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8MT6eEsmSjP71AX9MpCOZ69AO1U2oTQuL3IhPBAIuBM=;
        b=Pn/ut/GhV5hF9xKbnUm8Yln8nq9jyMVxJ2f8lHmDiAyiaGiihfeQsei0Aqb1O468G3
         Doz2DKicUmkgyjX7FDzANc3GL1T1FUTfzqOSEibmfkadZ8miuZ56lFRuOixKNGCQO+Ov
         YPhTdkXVuDpzPy+NRFwgKMbmX4CSm8SdQgx9w4LEAffDXhctFdpQjRlGumhfd3umpBOZ
         VYVnKOVF+BjJlNIVzcex+UEqQ//Oaw4Uw9WUC/50vaeA++2qCUO30Vu7s1jN9ljXAwyp
         aXGmbwHaypshfYmwZeSUQbsQfLdSKgBE6aWBPH4Gfkz/Fk0HY6IzPDY3xc3jTx9HNu2a
         phaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8MT6eEsmSjP71AX9MpCOZ69AO1U2oTQuL3IhPBAIuBM=;
        b=cwrDaOslH995Xdzwskmc/yl1zLkga5XRs4hzeEB05KzeaLoJ9DdNAQ1rtu+RUgLzlM
         kCwfgq6omnUF0kI6MgA229lxKPbKZfAPCaqKATdgBdySXATYXNz2P3tc4yrbPaAzFOa/
         xkwc6/iCVHzrkiUdceoYChFPWvGI4lZSRBAcGOLs+E+C443KQMWp8+wM5xtFHUditDlP
         htbCQC4mNKVcIQuBGerTCfRZjer64Hhjz8UO4I7V6PyMzgPjwFf21DVkaJlUCJnmbHf2
         9nBit5yN4Iz+kojHJGacHoXMYrWumRGLwJF/P2C3i9O6PiAqebfZSBqnm+xviDsuL1Wj
         trUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VGk16OQ/mXvBFnASN7YVGtdnlY/5/6rBDmqnDFuy4uDNjP1Gd
	2lvMBzlJYMMmb7a/12dsnuw=
X-Google-Smtp-Source: ABdhPJyH+mlcaxjn4AZhvMkufvGfc8Pgfnng1IQZmDZ/2OYN2A6Igkvax8oGlS5WC6l/44LADDnY0g==
X-Received: by 2002:a63:a4c:: with SMTP id z12mr26798594pgk.185.1629618690543;
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6802:: with SMTP id l2ls5733529pgt.8.gmail; Sun, 22 Aug
 2021 00:51:30 -0700 (PDT)
X-Received: by 2002:a65:644e:: with SMTP id s14mr26774312pgv.410.1629618689930;
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618689; cv=none;
        d=google.com; s=arc-20160816;
        b=j/nwfad3065oT3cFly+zoHHBRYNNltL0sfRyX4PATHaEqySNeB2b9+7pLiTGJu5qJl
         TsGkhfq6Ezum7jj0P1DqOaEUdFXnuAy3YQ5/9bR1L/WDssIJoI4bzBu2jii2iQqRpVlR
         kvGYTKBMYwsVnixui81PuxAGWcydvYftG9PR3XJ7jdyhCzTDxEWgPPceLo5dAEkO/qDE
         v8E5yQ6tw0tw9TRe1mGuhNhyIlQQjwGLPkyxXbBmlYEubUpaGaGQ+jbR5Z5tlyJ9bES2
         NSwDz/rqYsxHNME1JjNEjOeme31wTp8nYrUqNbHFTk7LhLPPEmWofMyDgsUZXhWQuvI9
         MjMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eA1/RCZvA4eh8kSUwIkQsy83t52sxem7VcmVr/L+Sis=;
        b=e+fEIv/NUh6se4PddM0WytjxHH9+rF7dIP75TKvWa/C5UwWc6WFWA1AF2lOlly1+zZ
         Q902Wi5ulTlkPrwaUGrRwg+R0s0DnN+lk9JurwQsp76rrqT7iOVhuY20DjLxOp1zYTcC
         76Gg+e13wRcdpWcN3GUN0B0ZpLL5SsHPXZvybtfR51jumAfxJEPj6mK7K6AzyRnrIYRl
         36Isdsy6xfREULNHzEaQDmxZ4WZtBa0UNc0TsT0kW7qg/UmbKQL781hRjrMTDWSM8zBK
         KRzv/HDZumZa1NBkTdKWFOMjwPdx9zlt5kC2X2suVIPo1MKo6JWVKXrRqStmMCWScKwq
         dfzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OybusePZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id u5si1251133pji.0.2021.08.22.00.51.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id oa17so10018755pjb.1
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
X-Received: by 2002:a17:902:8bc4:b029:12b:8470:e29e with SMTP id r4-20020a1709028bc4b029012b8470e29emr23726292plo.2.1629618689604;
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a190sm10053648pfa.49.2021.08.22.00.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Keith Packard <keithp@keithp.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 04/25] stddef: Introduce struct_group() helper macro
Date: Sun, 22 Aug 2021 00:51:01 -0700
Message-Id: <20210822075122.864511-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9843; h=from:subject; bh=u5fX+UqxhdcioJkWviuiAc++ub9cxwZ1QofYrPUghAU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH1sowy/yBp3PMXTkKsKq1zkOkKRGQ55eXH3/HT KSxoXF+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9QAKCRCJcvTf3G3AJshxEA CuVHRbQoEYAR/xN1/Thv8kPAvZyr5+zcAeXlzgJU52GJWkOw9CZd5y2Mna9TAZuYWbMHmOYwdty5gW Ne6tJU4xflqK4syBvoAWw7A7e4elXNXKI4xVYSOha5hUV22qUO8oo/jyFtWjOSv4ESvsMOjPX54z8E MxiJ6jlBr8xV+T4sRp0m+kIGjT/1My/B5TkOXxgunLwN0Ygwz3+pfsuUY3y2b+YmXw8FtDRzxi7pke dS/3wcN4C1iBJssBhqExyrNbURFRqJAG8bewokSkRiIRwalR/4VAapEH1lvqpenLk0iivEfw99oDE6 Kp+x24HKjPGzhpKeaG5eeHTogQVxMzzrjOqkdtK/Bc4AaHYuWci4KJSzpyZ/IC7h/kAxS6F3jpX6Ot Ul7ZSEM+xaRbisMzCO63UXZVvWJ2dKaCOB2qo23D2pyMAa4/QrlXWw9mSVTxje05EmuT/7avuMvT0d Ydi10515xpc4x9+pW6PHDN4JHN0V5Cms7vPXJjdvr+GbxZ6PEOR10vH8o65HqtZ7ffCCPIH6kMI5a8 4ECSsf3mR7bXhbWlCYiYrsJlvLS/0RORQ90wOF+AyxNxRX/bZV4kjlYRIOHwmV2Nkwu9GVk8JJRvDZ UtTbi4V00YbxSf6v3G8e49vym8169FoHnBELFjnIXCITJM1EOO1FwJlZ8p3g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OybusePZ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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

Kernel code has a regular need to describe groups of members within a
structure usually when they need to be copied or initialized separately
from the rest of the surrounding structure. The generally accepted design
pattern in C is to use a named sub-struct:

	struct foo {
		int one;
		struct {
			int two;
			int three, four;
		} thing;
		int five;
	};

This would allow for traditional references and sizing:

	memcpy(&dst.thing, &src.thing, sizeof(dst.thing));

However, doing this would mean that referencing struct members enclosed
by such named structs would always require including the sub-struct name
in identifiers:

	do_something(dst.thing.three);

This has tended to be quite inflexible, especially when such groupings
need to be added to established code which causes huge naming churn.
Three workarounds exist in the kernel for this problem, and each have
other negative properties.

To avoid the naming churn, there is a design pattern of adding macro
aliases for the named struct:

	#define f_three thing.three

This ends up polluting the global namespace, and makes it difficult to
search for identifiers.

Another common work-around in kernel code avoids the pollution by avoiding
the named struct entirely, instead identifying the group's boundaries using
either a pair of empty anonymous structs of a pair of zero-element arrays:

	struct foo {
		int one;
		struct { } start;
		int two;
		int three, four;
		struct { } finish;
		int five;
	};

	struct foo {
		int one;
		int start[0];
		int two;
		int three, four;
		int finish[0];
		int five;
	};

This allows code to avoid needing to use a sub-struct named for member
references within the surrounding structure, but loses the benefits of
being able to actually use such a struct, making it rather fragile. Using
these requires open-coded calculation of sizes and offsets. The efforts
made to avoid common mistakes include lots of comments, or adding various
BUILD_BUG_ON()s. Such code is left with no way for the compiler to reason
about the boundaries (e.g. the "start" object looks like it's 0 bytes
in length), making bounds checking depend on open-coded calculations:

	if (length > offsetof(struct foo, finish) -
		     offsetof(struct foo, start))
		return -EINVAL;
	memcpy(&dst.start, &src.start, offsetof(struct foo, finish) -
				       offsetof(struct foo, start));

However, the vast majority of places in the kernel that operate on
groups of members do so without any identification of the grouping,
relying either on comments or implicit knowledge of the struct contents,
which is even harder for the compiler to reason about, and results in
even more fragile manual sizing, usually depending on member locations
outside of the region (e.g. to copy "two" and "three", use the start of
"four" to find the size):

	BUILD_BUG_ON((offsetof(struct foo, four) <
		      offsetof(struct foo, two)) ||
		     (offsetof(struct foo, four) <
		      offsetof(struct foo, three));
	if (length > offsetof(struct foo, four) -
		     offsetof(struct foo, two))
		return -EINVAL;
	memcpy(&dst.two, &src.two, length);

In order to have a regular programmatic way to describe a struct
region that can be used for references and sizing, can be examined for
bounds checking, avoids forcing the use of intermediate identifiers,
and avoids polluting the global namespace, introduce the struct_group()
macro. This macro wraps the member declarations to create an anonymous
union of an anonymous struct (no intermediate name) and a named struct
(for references and sizing):

	struct foo {
		int one;
		struct_group(thing,
			int two;
			int three, four;
		);
		int five;
	};

	if (length > sizeof(src.thing))
		return -EINVAL;
	memcpy(&dst.thing, &src.thing, length);
	do_something(dst.three);

There are some rare cases where the resulting struct_group() needs
attributes added, so struct_group_attr() is also introduced to allow
for specifying struct attributes (e.g. __align(x) or __packed).
Additionally, there are places where such declarations would like to
have the struct be tagged, so struct_group_tagged() is added.

Given there is a need for a handful of UAPI uses too, the underlying
__struct_group() macro has been defined in UAPI so it can be used there
too.

To avoid confusing scripts/kernel-doc, hide the macro from its struct
parsing.

Co-developed-by: Keith Packard <keithp@keithp.com>
Signed-off-by: Keith Packard <keithp@keithp.com>
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Link: https://lore.kernel.org/lkml/20210728023217.GC35706@embeddedor
Enhanced-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Link: https://lore.kernel.org/lkml/41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk
Enhanced-by: Dan Williams <dan.j.williams@intel.com>
Link: https://lore.kernel.org/lkml/1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com
Enhanced-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Link: https://lore.kernel.org/lkml/YQKa76A6XuFqgM03@phenom.ffwll.local
Acked-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/stddef.h      | 48 +++++++++++++++++++++++++++++++++++++
 include/uapi/linux/stddef.h | 21 ++++++++++++++++
 scripts/kernel-doc          |  7 ++++++
 3 files changed, 76 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 8553b33143d1..8b103a53b000 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -36,4 +36,52 @@ enum {
 #define offsetofend(TYPE, MEMBER) \
 	(offsetof(TYPE, MEMBER)	+ sizeof_field(TYPE, MEMBER))
 
+/**
+ * struct_group() - Wrap a set of declarations in a mirrored struct
+ *
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members.
+ */
+#define struct_group(NAME, MEMBERS...)	\
+	__struct_group(/* no tag */, NAME, /* no attrs */, MEMBERS)
+
+/**
+ * struct_group_attr() - Create a struct_group() with trailing attributes
+ *
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @ATTRS: Any struct attributes to apply
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members. Includes structure attributes argument.
+ */
+#define struct_group_attr(NAME, ATTRS, MEMBERS...) \
+	__struct_group(/* no tag */, NAME, ATTRS, MEMBERS)
+
+/**
+ * struct_group_tagged() - Create a struct_group with a reusable tag
+ *
+ * @TAG: The tag name for the named sub-struct
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members. Includes struct tag argument for the named copy,
+ * so the specified layout can be reused later.
+ */
+#define struct_group_tagged(TAG, NAME, MEMBERS...) \
+	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
+
 #endif
diff --git a/include/uapi/linux/stddef.h b/include/uapi/linux/stddef.h
index ee8220f8dcf5..610204f7c275 100644
--- a/include/uapi/linux/stddef.h
+++ b/include/uapi/linux/stddef.h
@@ -4,3 +4,24 @@
 #ifndef __always_inline
 #define __always_inline inline
 #endif
+
+/**
+ * __struct_group() - Create a mirrored named and anonyomous struct
+ *
+ * @TAG: The tag name for the named sub-struct (usually empty)
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @ATTRS: Any struct attributes (usually empty)
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical layout
+ * and size: one anonymous and one named. The former's members can be used
+ * normally without sub-struct naming, and the latter can be used to
+ * reason about the start, end, and size of the group of struct members.
+ * The named struct can also be explicitly tagged for layer reuse, as well
+ * as both having struct attributes appended.
+ */
+#define __struct_group(TAG, NAME, ATTRS, MEMBERS...) \
+	union { \
+		struct { MEMBERS } ATTRS; \
+		struct TAG { MEMBERS } ATTRS NAME; \
+	}
diff --git a/scripts/kernel-doc b/scripts/kernel-doc
index 7c4a6a507ac4..d9715efbe0b7 100755
--- a/scripts/kernel-doc
+++ b/scripts/kernel-doc
@@ -1245,6 +1245,13 @@ sub dump_struct($$) {
 	$members =~ s/\s*CRYPTO_MINALIGN_ATTR/ /gos;
 	$members =~ s/\s*____cacheline_aligned_in_smp/ /gos;
 	$members =~ s/\s*____cacheline_aligned/ /gos;
+	# unwrap struct_group():
+	# - first eat non-declaration parameters and rewrite for final match
+	# - then remove macro, outer parens, and trailing semicolon
+	$members =~ s/\bstruct_group\s*\(([^,]*,)/STRUCT_GROUP(/gos;
+	$members =~ s/\bstruct_group_(attr|tagged)\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
+	$members =~ s/\b__struct_group\s*\(([^,]*,){3}/STRUCT_GROUP(/gos;
+	$members =~ s/\bSTRUCT_GROUP(\(((?:(?>[^)(]+)|(?1))*)\))[^;]*;/$2/gos;
 
 	my $args = qr{([^,)]+)};
 	# replace DECLARE_BITMAP
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-5-keescook%40chromium.org.
