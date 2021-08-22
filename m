Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSMGRCEQMGQEHH676QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BFA3F3E81
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:04 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id g93-20020a9d12e6000000b0051b1ee4745dsf2850611otg.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619018; cv=pass;
        d=google.com; s=arc-20160816;
        b=eaM9uf5efJCAZQIDP21ZhB92Whi3nvmUEdaolqOcvsJS0nQXdS1kBAOFVjUOm48WC+
         sr4yu79gCVcCE3c+PfwLQQbSCGT8ZdQwvC5ZCaf65GpX/d1JlWEr9mHqnrFb1ulTczPs
         Iwm+Wo1a2iUUjGjP4goRq8WrJXrnbKeIXE4gL5bA3NCr7VmaM5kAg8wTsppf3pikW2zS
         HP/CHAq3/Z2ka5DUFP9hFRbg6kZz6U7oiUzffXONDoVodcKvxJlQhpCkEy6qsEJ7EWOY
         X4WjetE7tbRYrQaIiOu6iM07Q/e4y+u6rzaCCV2kKXNN1q6TzGuzjjnf/VJxdLkUn5lG
         cPIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gUgHcYxcrTRYpmc3wdSWqHD/zPIvU41CTMMYMvMUadY=;
        b=mHzTN1dNElArUnd6574d7SaWCWrdKzIkBD2k55dUNERBGSKjwSkwbazlGeZRT7Srv7
         z8AYCZ90P8XBrbCZ8eSl1c1w/G/9sQUOuzYMMNy2992y4W4/xgkKt5vgGvKALYJ/zQgr
         ZjWMxXOBp50ITUvwVh+G20EbAmZ0f7ciSw/PFM8AkcivJRvxzmTQdB83HDkBiCPVHDPJ
         QoORjPV2Xt1DChQDlGEGjL3aMet1s4tpAdq6HkxER8AEBa+iroREWgSDrY58TlIdEs4s
         7ucyw9ijNpf3f9pXtSfAjrYVhUoihMh2xH8z5GQ1CWrXZSInkbf2GbSvBhBkxlRpeUd5
         qDTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=B5QY9BAB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gUgHcYxcrTRYpmc3wdSWqHD/zPIvU41CTMMYMvMUadY=;
        b=WIT2z1R5l5yBrM5/dAb+a54ggQ3bYdLOz7NrLEBu/IVZ5vDnnNKDjRmdXPjEz1YCbk
         dJrx+Kh3FFH0HqCddOw82eoU78ITbrJUC1vHcGwZ/A0fzdXn4CfenF5T2XQnpm2ZlaIP
         QeBUSSHkESAALUFn6LhbUIL4V3GdqKxWAvLhPP7BZzJ413mFrXILJ//aTzVscCrJ7MkH
         dZ1ahESsGGbtUQuWE8J/ZSZ2S2VDKLQDw/fxJDBPH0TpqQ0dO0iYg3e12myJZoZ2LkAL
         GaZQPV7ZDESQaU6823Qv1LgDF5a8GghRWxu0Stwy7pzaYv7zhFgCydzxjBLwQvpN7BPV
         aDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gUgHcYxcrTRYpmc3wdSWqHD/zPIvU41CTMMYMvMUadY=;
        b=b7k/PdMBh9cmktMHKPFRUaNb0Y+/NhamAsdx5XssTXgp/SnqbKg7nPbslT0c/mL9+n
         scOpxZTFsP0eBy3iPb3TH5bd8nT52HMjpeVHN4hBBMQlWxpeuYvJOHjmN9IJwDIuRVjh
         I+bbI7gmb8hoO8Ff1rWqSJaPhMt9H+ECHp1hAYxhSfc28cO0nxvmRLDyl1+pG/6nh3Qi
         Z/ICV9fXoLFPzv3+zoB3lmM+0A07RsLwIZYjoiKId05YV4zlSc6F4Krx05IKxYm+U4E6
         m2AYnKx4tK1gta2PXvyytxAWPlSkkS8Xu6FhsVXfpXw/UNbsXU3z+w8WR2qr3QCddORF
         pJZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532L1OJW57Z1o1icvM3QnD4l0z0lwtCtnmzt+qOssZK3AKEezGY+
	uNq2tHomD4J14/iewXz1EtQ=
X-Google-Smtp-Source: ABdhPJyBWH8KAKdflKKLjpMeqAkg78I8I3PFnph0LKrHaqPkd10UEANNDcmaLurqgdSs4/gGeprypw==
X-Received: by 2002:a05:6820:613:: with SMTP id e19mr945721oow.67.1629619018001;
        Sun, 22 Aug 2021 00:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:649a:: with SMTP id g26ls3599269otl.1.gmail; Sun, 22 Aug
 2021 00:56:57 -0700 (PDT)
X-Received: by 2002:a9d:6b97:: with SMTP id b23mr23992145otq.312.1629619017661;
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619017; cv=none;
        d=google.com; s=arc-20160816;
        b=xhlh1iOH31ATyWYZbc01O+cHQ6ikLWiI7eXjGaDNE6aFR0ujMDp+cUtdLA4a1HHhzJ
         K1A4GIdAGxinifNh1pwfpJU5/yl8N0tDzl4nyyhnSxpBqF0nM39BAJHldWPQUoMppFXg
         Y1lGUgamjx8EyQ0VsgzGDgtcnNvcKMqqF5Zwwm9WtouRoxFkSanmf3ZifTtSp/F/A1yv
         AdrP0xfM7gNE1/m+vHDDtaZFA0K8kEt4A/luOq5HthqVu+o/D8408WHeQJ6JvfpnsnE2
         vyn7xtkwWa1Sk4byOPNNGJF5cwpyrqIS33A1rwFE06ADJ7vO4yqdRtd8uqaLDERYctl9
         r0ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=K15d43mjq6biIgLR18/PG2ST/9ClHTj/frmKzAh8Fgc=;
        b=zgyMRxAPrJ8bTbntQF4376JEbeT2cRJSzB39BTA9AMW6sgpcDZYDzU0qRGgHfePG6L
         7c6W1JL7l8EUUpFLPxQzV9Z2fZf/G25NcFH7mkQZnUOtztwV0ZkJuARnkYEcJ1WVNbpd
         A74a8KDhC8pf5QzKl7/Yc5Ij9Grz0M/bTxDh0OfXmSQtsuJLe5vfTxgt6DjEPGabGODD
         Q1EZ9PPmLvTaICk7uh9Jsc0qxK3g1w3jguKYYnFMwGHILr2oE+0jkndWQz4JwuJaeK7J
         GPeIiNoJw56qTXU+nR8Rz9+aH3+rKBBEMsvJjpyuzEpGBehZg0g2R4g5ftvRv1T00arE
         4pLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=B5QY9BAB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id a9si377646oiw.5.2021.08.22.00.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id w6so8366464plg.9
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
X-Received: by 2002:a17:902:b709:b0:12d:a7ab:952f with SMTP id d9-20020a170902b70900b0012da7ab952fmr23596616pls.25.1629619017001;
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 66sm12273644pfu.67.2021.08.22.00.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:55 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 21/25] lib: Introduce CONFIG_TEST_MEMCPY
Date: Sun, 22 Aug 2021 00:51:18 -0700
Message-Id: <20210822075122.864511-22-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=10296; h=from:subject; bh=SCs0gUiQeBdkXzSIn2KtU6GgHndNNkCfOloouMv/FjA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH5gffUe7V9h9DhEAh8IAruzpJoIjBSw/gQvBpt RsXbH1SJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+QAKCRCJcvTf3G3AJvgHD/ 9EBKdt7wIMwq+pnHce4zVRAo13cVlsThSeQHWDVBiOwrDL15EUv1ydtUf2763IWxp1RRvbBSiU3TIH sEcLlcN6FHepmlOs3mucsMgU0WXa0k2ir8YDGqk9KdM9M4bkm1nt6bnZs1RrXegQoROLyie0bLSOPk 2MITOblSGe7hKwDKQlWnHwznMZcMEMHfSfIgybxwTCW7pS+gCEyOtIbFxwdlaiURwmFIIRyPitA3Od WGHg5KKfu5AyzYSll2aAnAB7TSg6t4tYMjIIcnElsUdxtxkPCMwFSqbR0re6Azd0lGAjXNx+5YG2O+ +0IeGHcUQQEaSFsCTcXSgK3ZsI5ysmJAiW0rUM8Nl+jNjPIuba4wGlwEiYG44THSu5y0CwYPFkiMd4 pQmWrAaNSYVpuN6+8S9y2Z8P0KeWGD8UqG60ferrjCTbqYu5m0Py85/znwzAW5aD1sEpID8yoBz+n+ SRhglq0gpbGa4k+PHFzqL6YnvV4Bnr4lidQEmoChW8kYcDQmuhe0HFnIdOhHzWLhajkoeL3itvOxzr 9WPPI3cSUu7EKvW86ITqzA656hJCq/P0I6/aSfhNvMxKN5BM2tJVFFcEHKPFnCRDuyDN+l4UcJIPwp 2rRvI7Afl2ewBSTyHLdYIEFZ/Oi7qOrO+JBMhN0s9kK96gbLCjTU4l4xKJZg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=B5QY9BAB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
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
 MAINTAINERS       |   9 ++
 lib/Kconfig.debug |  11 ++
 lib/Makefile      |   1 +
 lib/test_memcpy.c | 265 ++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 286 insertions(+)
 create mode 100644 lib/test_memcpy.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 6c8be735cc91..e3ffd4bdc24f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7248,6 +7248,15 @@ L:	netdev@vger.kernel.org
 S:	Maintained
 F:	drivers/net/ethernet/nvidia/*
 
+FORTIFY_SOURCE
+M:	Kees Cook <keescook@chomium.org>
+L:	linux-hardening@vger.kernel.org
+S:	Supported
+F:	include/linux/fortify-string.h
+F:	lib/test_fortify/*
+F:	scripts/test_fortify.sh
+K:	\b__NO_FORTIFY\b
+
 FPGA DFL DRIVERS
 M:	Wu Hao <hao.wu@intel.com>
 R:	Tom Rix <trix@redhat.com>
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 831212722924..9199be57ba2a 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -2467,6 +2467,17 @@ config RATIONAL_KUNIT_TEST
 
 	  If unsure, say N.
 
+config MEMCPY_KUNIT_TEST
+	tristate "Test memcpy(), memmove(), and memset() functions at runtime" if !KUNIT_ALL_TESTS
+	depends on KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  Builds unit tests for memcpy(), memmove(), and memset() functions.
+	  For more information on KUnit and unit tests in general please refer
+	  to the KUnit documentation in Documentation/dev-tools/kunit/.
+
+	  If unsure, say N.
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
index 000000000000..ec546cec883e
--- /dev/null
+++ b/lib/test_memcpy.c
@@ -0,0 +1,265 @@
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
+
+kunit_test_suite(memcpy_test_suite);
+
+MODULE_LICENSE("GPL");
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-22-keescook%40chromium.org.
