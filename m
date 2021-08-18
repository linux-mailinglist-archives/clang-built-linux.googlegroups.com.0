Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBD6P6KEAMGQEGKDIN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C51EE3EFC49
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:16 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id y6-20020a0568302a0600b00518b08df4d2sf493308otu.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267855; cv=pass;
        d=google.com; s=arc-20160816;
        b=rbKlJIIouDm5vH+78ps8dmf6gnKlNu89ayCm+uBb7kX4Ejf4m7DB/qawpB1RF80Bqu
         t66McNI8rc0dvU+wIEkxGoZpeIDf2VNGUHI8wWCR6z1KfbAD7MJmmJn1TtGQnCmJ7kae
         z6iGRJu15WfMXqswmEcvaTGzXWUx4nwVRPFCLczgDC1Njm7k5bD21k0+jQrJkM/5RZbk
         fGWdl4/GWo4fvj2Nv9JvmKdgRx4rbaA9ZBF1H+mm3FhFWpXEfgc0Cm5Fdk5pGBJjLBhl
         meOEGqHMg0dUwgszeD5absnJAk45ik9vzaMwU9NiV8Pjh4mzfWeFV7iYo2aIgpTuuX0v
         u9bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6iuMxd51Sc3C9zu7wZbUpDJe3lflS+aUZ4xLP1Hi4Es=;
        b=wZRzwpVP9XSKzUnlsRHsywPrHIuv6TqIV4tZ2li+eIw3QCuePe9xLnoWUm6T3m1Hh4
         QKpQTLUQZ7J2r7El4A5ndXi8Sxgdm57J7JONEuSXziN5TKsdyMDXbvj8SgXDSwqdeoeK
         TufXnmlxJ3NNyYrd31SC29fpRlnaY8WhcwXZgVIxiej9UQ9jnqLO3A6b1pFTs3c0m3wD
         FdqQEQijYoQ04bgwxptpMnaKVVxO4Y5yYe/PDEi2nqCL3KqVxYksijVi6atl28z0a5Ne
         eu0+SbCMZr3TaRqVb+045MTEp/XoJ9shl0RZGoSo0LKrfSvLi/Tkai/N/dzhGiNh9emt
         oEvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bPPnHrhI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6iuMxd51Sc3C9zu7wZbUpDJe3lflS+aUZ4xLP1Hi4Es=;
        b=VMByMDA1EulLrA7knYetZW5ikRBqDooTWeMyhNnrGfpqjo5NpRfHLpaQrU4YiyLmHc
         enG2vUPrmkTGz4hGukFimDwAL+lNIm+SnX6lbwEb0vE1w2ZEDp1DxixIxVXOp1JjTM25
         gwFn5Bc3wKxmZLx5FtLrY+vLLuAsKED5sMeeKay26Pb3KG2/eA/r/lYX+M5Ymv1+AXic
         y1gSEMyBTYi803VmWz52RdyPxZ/HnuRTMuLYDh0mmbb7pZiGI+zWDLBcI0IYtK1sBjUI
         tcFTseyE831PklUXxvpbZAP8aLhipYY8k912Nb8GFId8pVUZH9moMjQqrxjSNwzQb1UK
         08bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6iuMxd51Sc3C9zu7wZbUpDJe3lflS+aUZ4xLP1Hi4Es=;
        b=czAXUvUQpRwopbE+rHL3bLl7P2snK55ADceD/VjuquymAHoJMnkLrv/HNYogX+eBn7
         0hF2wXtTBFd1dWtGnTuKkj43TCpk5kso46mA75H7/L7Mt9V1SCcdjiLY6Sl2oNL/bQ2t
         6hK8krjv5ju+rcwJWwWHOsbueLcfzBkOh+vkmshAi40wVpwDB4t0MKXeRoLqZgAeKcHZ
         cXxH5XLTArhArBAw0nXbMtv3/IHs1mzd1QiJicxH+nP9lB7uLFt2JpPq1/0C6LFrNDd2
         vumL4TCc1AWFc2KIfQsnnoJFnPHgcGWH6wNeDxGlEbR92xK4hqgsIZrr+p0zSUC+WosL
         BTPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xjcGlf9Iu0SzaiEAYvVt6XVvu+xSzuYB4j/KfyXGv98GLsVKO
	dg6auZ+pwerpokU7Kj7WjnA=
X-Google-Smtp-Source: ABdhPJzDHgW9lR1c+UIWPIazXGWeKl94rqwzbUlj8fNSibFyB44tvof0XduoTkwBPAshY7zxzUPvVA==
X-Received: by 2002:aca:aad7:: with SMTP id t206mr5566944oie.12.1629267855693;
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:18a5:: with SMTP id bi37ls353080oib.9.gmail; Tue,
 17 Aug 2021 23:24:15 -0700 (PDT)
X-Received: by 2002:aca:b984:: with SMTP id j126mr5761312oif.32.1629267855302;
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267855; cv=none;
        d=google.com; s=arc-20160816;
        b=whh/HTNuwb6/fGgM0/1Le3fIZg4pwbGW9JhBDbRkOhSFUT+u0/SYE2OWXBGAbG8tnj
         ZEQNF+aSeOUf4wTPDzmemDkDZyHG2J+cU5YAfiLVrCZwLiKCJI7vpJAWiieyCACHCgCz
         F69Sg8bGx6PiyWSvZysdf+kSsWLbpNx+oPoHcYPwtPKe/K4tcDb4lsLINHz5AULO0HOA
         6/iD10AA4//EI67D575eCFa10SRdXZNXNw9yb1916ISDQZTedLbdn2NiFZEZRb3bAnyh
         iZdPAva529lAc6mBVdzfgPiBrMh1ZJORbOCjEwtuhDHLpzCyXR2oF4Z3951aWP1X6ixU
         F8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=orREwqmDjC6eAbyLmeCBTfr28uXfwJ53YVeS5e6q0po=;
        b=tSG49+aFjMOnAml+BVKOMJ4cNkbk3FG2EOUxrt4SyKdvRmaZjZRTyiSGryeTp0oOb9
         BnHhDlBkdWy0E0RUYym0dclzPRnICwKL+n2BljwniePRfZnF8w3wy1Sq0Gwy4ZhAy4dm
         kbL6xNqguRKuEz1LlDfo/DgW8KomAyMh65BoExBpiMMcD1LpEPO/FJvpqVIkhZ2tcGAm
         Ya1/rPZOXcDvMD+nB9XDIrtR4oF+VTXxARq3HksZ8+Nx4rEXmC2Xdb8jTRlnQNqdCRyZ
         Vi4BaqHPxiwVeumcubBA7a4zTLEibNmbWWn7eFWb6DLmcBi2DrmqpCu48jDhgugn6RWR
         rtPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bPPnHrhI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id b9si402036ooq.1.2021.08.17.23.24.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id i133so1101929pfe.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
X-Received: by 2002:a63:79c7:: with SMTP id u190mr7225234pgc.355.1629267854929;
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j17sm4864162pfn.148.2021.08.17.23.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 33/63] lib: Introduce CONFIG_TEST_MEMCPY
Date: Tue, 17 Aug 2021 23:05:03 -0700
Message-Id: <20210818060533.3569517-34-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9572; h=from:subject; bh=p1QoeTWxn6DEJODiVvxWPGNDYFdsmH5aDDL7ng36IGY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMl2cfYNueA2t4nhVLJ6CVAeEsjEk0oThed6oX5 x/KTrVOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJQAKCRCJcvTf3G3AJjNtD/ 9N5316VubSv+/QS+eA4q6I4ZLlYJYJxhRVcKTXmABF+pqH1pk9B2RJ10lamIDk1OmGkZhAJqvpyRim EYokH8jG9ERic0ljriKnWlMvBvR/oqFpA/+1bZCKpqX2zEYltWlK61D3eS06lAM+vM40MAxt4J5p9B Qog/QGYXrYuMIkKd9yjMeabM28TL8oLSIggJhIMI1NOVYkgBVVHLiirmKkK4eoUR7ElzmioYXXkDIc viHwQIKCxcGk5M2nNFiGLLJWe4CWE7xcuhmbdAEUqvZ+JgzFWyjZyrFY+sd2X12ESGtgyB+sSYfcU+ LDVdEuxaVXzeBjbMVVfTSgmVirrL0zoSzHWADGXqRqmiOK4DWjAprBNTc49ylWScVtAuaWHSW2Y5Jm ro5UxxrVbOan+kZKESNzcaSOfaGbZd6OjmE4HHaA1VNsjzqT8nQOPmGIoX15aRPCO8Dd5ih9HjFxC9 6ku9y5cvlQG1ULxqdlizR6t2dQsYOSEsjiVZRuZoQy7xJW2rysHStYmf0mSCfZth19ppuksL9KS50A W2zNB45woRFFLXifUkqMD0FvJO173N3Tfc9qfMVHeDeSgZFfRo0oFUL4FXvnf5loAsIAq327/RJFrt n3UxEQGgNao9G6lvM0j3RPpuwsq2C5w76FchRc4K586gN5PfXPGaz1c3zyRw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bPPnHrhI;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430
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
 lib/Kconfig.debug |   7 ++
 lib/Makefile      |   1 +
 lib/test_memcpy.c | 264 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 272 insertions(+)
 create mode 100644 lib/test_memcpy.c

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 139d362daa32..db2e8ffa6049 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -2476,6 +2476,13 @@ config RATIONAL_KUNIT_TEST
 
 	  If unsure, say N.
 
+config MEMCPY_KUNIT_TEST
+	tristate "Test memcpy(), memmove(), and memset() functions at runtime" if !KUNIT_ALL_TESTS
+	depends on KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  Builds unit tests for memcpy(), memmove(), and memset() functions.
+
 config TEST_UDELAY
 	tristate "udelay test driver"
 	help
diff --git a/lib/Makefile b/lib/Makefile
index bd17c2bf43e1..8a4c8bdb38a2 100644
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
index 000000000000..be192b8e82b7
--- /dev/null
+++ b/lib/test_memcpy.c
@@ -0,0 +1,264 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Test cases for memcpy(), memmove(), and memset().
+ */
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <kunit/test.h>
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
+		KUNIT_ASSERT_EQ_MSG(test, instance.data[i], v, \
+			"line %d: '%s' not initialized to 0x%02x @ %d (saw 0x%02x)\n", \
+			__LINE__, #instance, v, i, instance.data[i]);	\
+	}	\
+} while (0)
+
+#define compare(name, one, two) do { \
+	int i; \
+	BUILD_BUG_ON(sizeof(one) != sizeof(two)); \
+	for (i = 0; i < sizeof(one); i++) {	\
+		KUNIT_EXPECT_EQ_MSG(test, one.data[i], two.data[i], \
+			"line %d: %s.data[%d] (0x%02x) != %s.data[%d] (0x%02x)\n", \
+			__LINE__, #one, i, one.data[i], #two, i, two.data[i]); \
+	}	\
+	kunit_info(test, "ok: " TEST_OP "() " name "\n");	\
+} while (0)
+
+static void memcpy_test(struct kunit *test)
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
+#undef TEST_OP
+}
+
+static void memmove_test(struct kunit *test)
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
+#undef TEST_OP
+}
+
+static void memset_test(struct kunit *test)
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
+#undef TEST_OP
+}
+
+static struct kunit_case memcpy_test_cases[] = {
+	KUNIT_CASE(memset_test),
+	KUNIT_CASE(memcpy_test),
+	KUNIT_CASE(memmove_test),
+	{}
+};
+
+static struct kunit_suite memcpy_test_suite = {
+	.name = "memcpy-test",
+	.test_cases = memcpy_test_cases,
+};
+kunit_test_suite(memcpy_test_suite);
+
+MODULE_LICENSE("GPL");
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-34-keescook%40chromium.org.
