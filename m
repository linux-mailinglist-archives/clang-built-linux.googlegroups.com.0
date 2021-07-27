Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTXPQGEAMGQE33FIK5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 542393D8132
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:17:03 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id e17-20020a0568081491b02901f566a77bb8sf335397oiw.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420622; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1RILcPkFzZCZK3pfsRFIxftyh16uXKb/IKAKYbb8VnmjE3sJx3I2kqaqatRgSwfeU
         JlcSikPVK0hKM6oJYh51EPgI++/ryhTU6AhoVY5hfJWErzxfsIZvTA6BuT9UNObHL+8c
         fxRKjDuoyh82HAtzcGWqpddDTccALH93kQ00/1TncIs0E8jz0Hhkq1R2U4LZP68m5Cnp
         Z3iQ84Sg1tNo6jjtWhAkSfVW72F5OfwM9m90MuGVfiAl4Swndx+NIZCtcJZzn2yDItlj
         kCLpd0BmPyw44IVwZB6agB6rpO/TDXMHYCg9uP8Md0qlDkcl8dmpi/9vr8KKDecmXKaI
         sOFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+60vu4ie9znnVv5BwHBEW0G3XXsKV0VxBFyjMZ5j2VM=;
        b=pxgQRo8MJT1fXpGPKVOc4ru6WMaJS+BZnB7CtOH/Gjdx8FztMIU3hT1d7II+X3O1k9
         J0WiCLovXIw4bgKCHb8btTs5r96ztrRElX89OncZqV5I3R5SD/y60RRGFk10xzkSSGUp
         OiCI010nYj+tTzxdRt7cmGiuB1gB8W9wEvhQ3C4g2OsFsQg/OTJw8SVfkMvR1jGnxae9
         QAk4EuPZLlHpZ+n8acWQqPwtfJegar8m68t0IYXVzdCjdBFzzZNYP1D5cHDf2qq3Ho20
         W18+vMsBatz4pZzttpsd8D+bDjD/qy4bmq+DZf+nTezCBWLEP6L0NkN0utzVWU9ZNE9Z
         i6Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YAUu+p5P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+60vu4ie9znnVv5BwHBEW0G3XXsKV0VxBFyjMZ5j2VM=;
        b=lbapBpUy4NbUms4IvozxBZz4C9VCx0I0EqwQv6rDMc6vO6HrdG6app/roUYTsbMG6k
         iwT+uthEBzrF7uiO2FD+eXdmSw0e5ljdauWKWeYRa0glrqGtRm2xELCNeNRua0IR+r2c
         mSnKi4fJEn+fk0bYCp/Kv7PAIPmQaBemml4QfKXvshPR7Igwd7xG2G8KTXOWDHfqMvrV
         1yUJIJ4GjU75sDRMzzLBsVI1wEmuVjEp8GvQ+M9P2VtXUO8va0CS8QAH0V0xpJpNsj+F
         3IsJz5UjXzNwx/yfG8UihUnA4ASD+8kv3/LftA2TXnpGuJe3bfivQ0GzFw0Jdm1bPI3O
         I0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+60vu4ie9znnVv5BwHBEW0G3XXsKV0VxBFyjMZ5j2VM=;
        b=ZFapMXMTT9pAe/akc3JvLJ9shYU1TgrejVRXlpAf3EPShW17iQ//3ngsdkdODUJGKm
         kfrhUWC5+kfz3CwvXcTqaMmvTBE9AcffRNrB16BAi0rKWDLghnewnEX7yOcXzEbO9bsv
         3YaMLKykXjU6jJ1iT7JGX3O0TnOTbKnzlZnK1SPfXdT+1teOrqJu0ZHqhUtRBKocwY+H
         m8PuArKTOZCMUUNk96Promca1DKephLOA2z3yQZ7y3Jfce33n8+v3IBPoocgmCmoxTU5
         kh8kmISa1e/7MoNcQzItWKduewPbxmvWCShEwb34WscOWZfUyOdTyVokSUNzMpw+/oUY
         9vXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532l0FBLVcHplpm8pH4ofQ84YvzZ/5cOsSgdNYOEOdtkxr3B6lwg
	aUK7ar2NMdMjrwQyqGLR0ms=
X-Google-Smtp-Source: ABdhPJzCICvuaxiozMi94GFkU91Bz/oXZ5MOOW2CwGkWsENnaFtYevjT7x3RKt2MLtD5j+2odS5Utw==
X-Received: by 2002:a9d:63d3:: with SMTP id e19mr5556786otl.147.1627420622323;
        Tue, 27 Jul 2021 14:17:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb5:: with SMTP id 50ls29700oth.6.gmail; Tue, 27 Jul
 2021 14:17:02 -0700 (PDT)
X-Received: by 2002:a05:6830:1b7a:: with SMTP id d26mr16456275ote.218.1627420621942;
        Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420621; cv=none;
        d=google.com; s=arc-20160816;
        b=CPztXf1C3v6T3EUWH/gJ8oP840uhUmIhFBnwanE+vPRy1Jzf7/odxZ8iXVSLINEfOJ
         CE4KyK8wDWTW1Hu9GShndXku0ILZq3a2YH1k+MRd/2ZThGrUR5Q05wzT3Vpt7xphtAXo
         WtQyZn/w+R1tuM2+rkkt1+aTUMAFC8Aek41RGnq1cq3t7GLEXzFoXfwJZ6HutJLGulqQ
         C5DfsH6MWe7MB7M8NLvK1D6/jM4/QqUaBpEsfOgRT6BqkN1JPLnpXo2XBXOEA/5LzE7h
         akLM8VFJVtIEjOMgSqVkvY1O8LRHrnoRi31cWQbqMg/Rj9JwNyrXUUr2jsc2lZywlEMV
         xnMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pTss2I65Q2CWQl0zMLaa8H82eOPPoCY8oMnTRENSqR4=;
        b=nS2FxJUewoxBsbqmLgnDBMho1IhyAx4EhHv2YHdSgKdydv+QO8naLZb/Tjq6V0Z6fx
         n/201ng+lGvovkiWj7QCdOCxOaalK6teYUpBy4c5ymEHgUzWkR2CVvc4fau7JA0cPeQw
         uXU7daDXkd9Xwihj6JUoCMNtSssIafNjr5yjfnx74y/IY0q0xhhp5Xii+o/FMfcGChuR
         B1oW7+R2DcajLItXYNtyrAom7TTTnVdzLhGz5AaEpUoGBQMSDaXEyI3Kw2+2o6nQZH44
         +poPa/P8V+0tg1s0SBJyCXJ6EOp505FpiVw21GfKiuY/9TaALsBEzT00EdDtssGe/8xw
         PzNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YAUu+p5P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id m17si431810otk.1.2021.07.27.14.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id q17-20020a17090a2e11b02901757deaf2c8so1268975pjd.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
X-Received: by 2002:a17:90a:d301:: with SMTP id p1mr5932205pju.220.1627420621296;
        Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z124sm5174413pgb.6.2021.07.27.14.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 33/64] lib: Introduce CONFIG_TEST_MEMCPY
Date: Tue, 27 Jul 2021 13:58:24 -0700
Message-Id: <20210727205855.411487-34-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9613; h=from:subject; bh=vMvyiyYe9K9D2gND/ltuxCZWuPzQBox4RoUvXlZiiJg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOHMVso80UVr0RhQnwYElca8D+4vYHNyJyis1bc atW3oFGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhwAKCRCJcvTf3G3AJjllD/ 9XMGR1In5NUDFOfmtBe5obH+PZnVXYS7aCsaC9BBl36zVbpB9g3hy9o9954IL44Q2M2X8l/iP0Mdt9 Fprd6vbL7wO+hDD4ywgbQtQaW4EbO1b99AS/E4opV8walRqK+MZ1ssZ9th1mYU1Yryl3nNwXH80K5z cHnVH/c6qUM1l7u4iPrktSMcqi0uxY+WT4tJT2QpEzBS2uA2Z++Pg0QAuabvzcMJLD36XlzH1dMGHF QsjWHoq3OpB7JI9BFoibODlYeQfe0vH+O4ZMR0CdC9+uqqaXOGvYga3tfXZzEFjKmWYLSbRiO/mRRb CiyxwZtmj156O9vH2uplTEipL2Mfks1IS1tv2wMc6e1Uc36ZTXbZ+ZDpYJHijeW4Kff8vdOt/zCO6H muSBMvvv8ZNOdnqmeHtRo5TJNWctfJSbnn4+sNRiDBQn7X6UuwmNmMhxRUt+l9Pjt5J1qx0T9lAmLn 0YWwa+kC7zviH7HJgzmVAbq7+flzYb9RAM0a927c5isRD+tKPj1F6yCfYw+B22p8x1p/BgLIibuR8G 83lZvdFsnQZvJgeK1txkG4sB66fQousphoaJGgD4py+IHG1KtnDuFiq/fwlscSFVTgiEGImI+xoQCE yfbM7YDkZxoxwyj7Q+KKDvxwFASZkIBYQ4AxZh75JAJqW2RHNpzsVKTFNVHw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YAUu+p5P;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

Before changing anything about memcpy(), memmove(), and memset(), add
run-time tests to check basic behaviors for any regressions.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.debug |   3 +
 lib/Makefile      |   1 +
 lib/test_memcpy.c | 285 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 289 insertions(+)
 create mode 100644 lib/test_memcpy.c

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 4654e838d68b..d315db9702de 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -2220,6 +2220,9 @@ config TEST_XARRAY
 config TEST_OVERFLOW
 	tristate "Test check_*_overflow() functions at runtime"
 
+config TEST_MEMCPY
+	tristate "Test memcpy*(), memmove*(), and memset*() functions at runtime"
+
 config TEST_RHASHTABLE
 	tristate "Perform selftest on resizable hash table"
 	help
diff --git a/lib/Makefile b/lib/Makefile
index 40b4bf0bc847..083a19336e20 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -77,6 +77,7 @@ obj-$(CONFIG_TEST_MIN_HEAP) += test_min_heap.o
 obj-$(CONFIG_TEST_LKM) += test_module.o
 obj-$(CONFIG_TEST_VMALLOC) += test_vmalloc.o
 obj-$(CONFIG_TEST_OVERFLOW) += test_overflow.o
+obj-$(CONFIG_TEST_MEMCPY) += test_memcpy.o
 obj-$(CONFIG_TEST_RHASHTABLE) += test_rhashtable.o
 obj-$(CONFIG_TEST_SORT) += test_sort.o
 obj-$(CONFIG_TEST_USER_COPY) += test_user_copy.o
diff --git a/lib/test_memcpy.c b/lib/test_memcpy.c
new file mode 100644
index 000000000000..7c64120a68a9
--- /dev/null
+++ b/lib/test_memcpy.c
@@ -0,0 +1,285 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Test cases for memcpy(), memmove(), and memset().
+ */
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/device.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/mm.h>
+#include <linux/module.h>
+#include <linux/overflow.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+#include <linux/vmalloc.h>
+
+struct some_bytes {
+	union {
+		u8 data[32];
+		struct {
+			u32 one;
+			u16 two;
+			u8  three;
+			/* 1 byte hole */
+			u32 four[4];
+		};
+	};
+};
+
+#define check(instance, v) do {	\
+	int i;	\
+	BUILD_BUG_ON(sizeof(instance.data) != 32);	\
+	for (i = 0; i < sizeof(instance.data); i++) {	\
+		if (instance.data[i] != v) {	\
+			pr_err("line %d: '%s' not initialized to 0x%02x @ %d (saw 0x%02x)\n", \
+				__LINE__, #instance, v, i, instance.data[i]);	\
+			return 1;	\
+		}	\
+	}	\
+} while (0)
+
+#define compare(name, one, two) do { \
+	int i; \
+	BUILD_BUG_ON(sizeof(one) != sizeof(two)); \
+	for (i = 0; i < sizeof(one); i++) {	\
+		if (one.data[i] != two.data[i]) {	\
+			pr_err("line %d: %s.data[%d] (0x%02x) != %s.data[%d] (0x%02x)\n", \
+				__LINE__, #one, i, one.data[i], \
+				#two, i, two.data[i]);	\
+			return 1;	\
+		}	\
+	}	\
+	pr_info("ok: " TEST_OP "() " name "\n");	\
+} while (0)
+
+static int __init test_memcpy(void)
+{
+#define TEST_OP "memcpy"
+	struct some_bytes control = {
+		.data = { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			},
+	};
+	struct some_bytes zero = { };
+	struct some_bytes middle = {
+		.data = { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0x00,
+			  0x00, 0x00, 0x00, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			},
+	};
+	struct some_bytes three = {
+		.data = { 0x00, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x00, 0x00, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
+			},
+	};
+	struct some_bytes dest = { };
+	int count;
+	u8 *ptr;
+
+	/* Verify static initializers. */
+	check(control, 0x20);
+	check(zero, 0);
+	compare("static initializers", dest, zero);
+
+	/* Verify assignment. */
+	dest = control;
+	compare("direct assignment", dest, control);
+
+	/* Verify complete overwrite. */
+	memcpy(dest.data, zero.data, sizeof(dest.data));
+	compare("complete overwrite", dest, zero);
+
+	/* Verify middle overwrite. */
+	dest = control;
+	memcpy(dest.data + 12, zero.data, 7);
+	compare("middle overwrite", dest, middle);
+
+	/* Verify argument side-effects aren't repeated. */
+	dest = control;
+	ptr = dest.data;
+	count = 1;
+	memcpy(ptr++, zero.data, count++);
+	ptr += 8;
+	memcpy(ptr++, zero.data, count++);
+	compare("argument side-effects", dest, three);
+
+	return 0;
+#undef TEST_OP
+}
+
+static int __init test_memmove(void)
+{
+#define TEST_OP "memmove"
+	struct some_bytes control = {
+		.data = { 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			},
+	};
+	struct some_bytes zero = { };
+	struct some_bytes middle = {
+		.data = { 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x00, 0x00, 0x00, 0x00,
+			  0x00, 0x00, 0x00, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			},
+	};
+	struct some_bytes five = {
+		.data = { 0x00, 0x00, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x00, 0x00, 0x00, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			},
+	};
+	struct some_bytes overlap = {
+		.data = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
+			  0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			},
+	};
+	struct some_bytes overlap_expected = {
+		.data = { 0x00, 0x01, 0x00, 0x01, 0x02, 0x03, 0x04, 0x07,
+			  0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			  0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
+			},
+	};
+	struct some_bytes dest = { };
+	int count;
+	u8 *ptr;
+
+	/* Verify static initializers. */
+	check(control, 0x99);
+	check(zero, 0);
+	compare("static initializers", zero, dest);
+
+	/* Verify assignment. */
+	dest = control;
+	compare("direct assignment", dest, control);
+
+	/* Verify complete overwrite. */
+	memmove(dest.data, zero.data, sizeof(dest.data));
+	compare("complete overwrite", dest, zero);
+
+	/* Verify middle overwrite. */
+	dest = control;
+	memmove(dest.data + 12, zero.data, 7);
+	compare("middle overwrite", dest, middle);
+
+	/* Verify argument side-effects aren't repeated. */
+	dest = control;
+	ptr = dest.data;
+	count = 2;
+	memmove(ptr++, zero.data, count++);
+	ptr += 9;
+	memmove(ptr++, zero.data, count++);
+	compare("argument side-effects", dest, five);
+
+	/* Verify overlapping overwrite is correct. */
+	ptr = &overlap.data[2];
+	memmove(ptr, overlap.data, 5);
+	compare("overlapping write", overlap, overlap_expected);
+
+	return 0;
+#undef TEST_OP
+}
+
+static int __init test_memset(void)
+{
+#define TEST_OP "memset"
+	struct some_bytes control = {
+		.data = { 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			},
+	};
+	struct some_bytes complete = {
+		.data = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
+			  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
+			  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
+			  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
+			},
+	};
+	struct some_bytes middle = {
+		.data = { 0x30, 0x30, 0x30, 0x30, 0x31, 0x31, 0x31, 0x31,
+			  0x31, 0x31, 0x31, 0x31, 0x31, 0x31, 0x31, 0x31,
+			  0x31, 0x31, 0x31, 0x31, 0x30, 0x30, 0x30, 0x30,
+			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			},
+	};
+	struct some_bytes three = {
+		.data = { 0x60, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			  0x30, 0x61, 0x61, 0x30, 0x30, 0x30, 0x30, 0x30,
+			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
+			},
+	};
+	struct some_bytes dest = { };
+	int count, value;
+	u8 *ptr;
+
+	/* Verify static initializers. */
+	check(control, 0x30);
+	check(dest, 0);
+
+	/* Verify assignment. */
+	dest = control;
+	compare("direct assignment", dest, control);
+
+	/* Verify complete overwrite. */
+	memset(dest.data, 0xff, sizeof(dest.data));
+	compare("complete overwrite", dest, complete);
+
+	/* Verify middle overwrite. */
+	dest = control;
+	memset(dest.data + 4, 0x31, 16);
+	compare("middle overwrite", dest, middle);
+
+	/* Verify argument side-effects aren't repeated. */
+	dest = control;
+	ptr = dest.data;
+	value = 0x60;
+	count = 1;
+	memset(ptr++, value++, count++);
+	ptr += 8;
+	memset(ptr++, value++, count++);
+	compare("argument side-effects", dest, three);
+
+	return 0;
+#undef TEST_OP
+}
+
+
+static int __init test_memcpy_init(void)
+{
+	int err = 0;
+
+	err |= test_memcpy();
+	err |= test_memmove();
+	err |= test_memset();
+
+	if (err) {
+		pr_warn("FAIL!\n");
+		err = -EINVAL;
+	} else {
+		pr_info("all tests passed\n");
+	}
+
+	return err;
+}
+
+static void __exit test_memcpy_exit(void)
+{ }
+
+module_init(test_memcpy_init);
+module_exit(test_memcpy_exit);
+MODULE_LICENSE("GPL");
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-34-keescook%40chromium.org.
