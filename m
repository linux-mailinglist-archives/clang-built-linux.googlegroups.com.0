Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG6P6KEAMGQEHRZYLQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EF73EFC5A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:28 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id u5-20020a4aae850000b02902869d22d7a1sf512263oon.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267867; cv=pass;
        d=google.com; s=arc-20160816;
        b=DC3qvehc/5Iyvmlq8KPbmIrVSSsqE2i7rvWLRBi0kVFgKPoK5YTHRmJD0VeC/0ED4l
         Q3HNIexLWJKNDGm3MmWP49PmZU6vgSlT7Hs7DDdbsRoT3Pus/uowH6MJr2WoRkwk85Dl
         hNKFaSnqQQTj4BzEMconlkb3uHv9vXASGIuema/3LwSADjuZWiZqNpjaFWQX2JkRz4iq
         g7XN04tCSwtb0FE0wMKzLo2N5isjQLE2DNA8UFta+CchsPohdjoHe7ONex+x7HA4RpGs
         qhqsMYfQsUNwla4BKXxLKUMBqBImblPXZuNzWHafkQfonW0kcbphofMqdGzIZB1M8Q1l
         1sZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wgH/TsKy7KyJlgb4C05crwvcGCLmgYMOZYcB0rypOvo=;
        b=cdPevCtA9oML0OtNdDsHVYwOQE4FGSC0YWunWqkpwffFK29qbgXMUtYsKPiRPfwl9O
         3T/zNNm7Z8Z3Zy6bXHCG+ikGoirCrCaWZUk6EnivaEIhmPy7TH8DCKz59HKvq6ihKy/w
         Wms92m0nPOwZiCXpKsoiG1u4iUT1e70cdM/Jkfg6LmRwg4WO8homGEsmRfQVRXHaXzYH
         yaAXpA0GCGYShUBCp2G2UtRsI2UfHwNj2vThwHcRYzhu2A+wvlRFgur34kkhF3mtp2kW
         XHyiSe6mhfdZjIb0vlSHieGWnicebdjvSNtiQh5AAuQ61D44/97wbF+70MKRIYTcXy/I
         4rkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZMHNI+Ym;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgH/TsKy7KyJlgb4C05crwvcGCLmgYMOZYcB0rypOvo=;
        b=dM5KloOZ3uXfS7k1ExfxdOu/cBVBhlNpB80qn6xkwnD91/g0QGsYbWHolQbml7JLHi
         wn1Dnwdwkc+uGT2k0xZA7KNVRRARKT1s8Fq8OdCvIspQYLoNuUQkfig6t/auhp0ljfd3
         KYXtpGBwBS1Wswv72QSHx2gcMO/O6UHNxs40u/If3xXVfavfFqI7OeS0yRyoQKg91Lm/
         CZ2aLmeNezYKAeRY1XdPKoemQSpeXpVg2DNkOPd8eBbUxB4YIJM5WqHzbwR9tX/cz8BI
         fqELa/jXcHgCcYVkPMF6u4jRzxAONjgofD0/1eAqd7AquH0+pWkwJh/85XbjCDlChaoJ
         jUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgH/TsKy7KyJlgb4C05crwvcGCLmgYMOZYcB0rypOvo=;
        b=jfzOWBzoGbCpd/fj6URWq0+I1xeirxQUdb/d8a4v64nzWDFr2+vjlPLx0Oxzz7A43q
         VEVqJaEJyoiuuG4t/uYgMWs0DHEeEc4Mv6l8/4m3AuMmIHCdr+N17V+9y8EeBmoQqnfM
         PbKfidDSsPTuCk5qSk+rXoi2bM2A5HFZw+dyCdJtplELWI0CLd2IDN7rE3tZlulP8OTL
         K++blTlsq0rJ14CDjnGyqq9s4bzh2fLe/cRVMBG0tLWQawr3S9SkAlniZdCkH1eAcM14
         MOIZz8V19xBrM92twOvgqdZfe9fCTJaCKQQN7Yt1BzzOyekWidiQldTOQdbus3/z+3Ku
         /wwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lJx3+Wrn+7B12cCvu9r9yIBLasMwpcfWopCGsFtRhCpEPihP9
	vSFm5+namaaLWVyHLQQKN+Y=
X-Google-Smtp-Source: ABdhPJxXSiNuvpY81guZtKLZ526VfcjC1A3NQ70SH2RWHGeX5K+nNOnYU865y2cZByIfGD/EnyOwEg==
X-Received: by 2002:aca:31c1:: with SMTP id x184mr5631932oix.8.1629267867486;
        Tue, 17 Aug 2021 23:24:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:31d1:: with SMTP id x200ls360719oix.3.gmail; Tue, 17 Aug
 2021 23:24:27 -0700 (PDT)
X-Received: by 2002:a17:90b:296:: with SMTP id az22mr7623282pjb.79.1629267856790;
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267856; cv=none;
        d=google.com; s=arc-20160816;
        b=crESbmwM/AEr4niyOtmpvmQ336ko1Qk9dawslhHVBsI/Ede4fmvzP6xetyk3eEpOiW
         Qcz5NuowMBPokB21ZBKHAompJzFDGPsTEsiIiojXcdA0kfQxP2yGvnZbqZBWbSzpBE9t
         YqmqdKKUX27+j3Kja8ACNphN9ErQ+N2U1blE7TymMIwJHf6XcD/+5CSy0rbVh7Xy/hwo
         Ok4J+PkDmdxzmISN2YnfyYlObywZpCKIVJQm1YqsXNTLle97y88Ij3mBcMf0FPoS0rie
         zr51hyXt436dSZTuxjYkA80lSBB8yn5ftaPNa2qJoKAX8aBFy3T66q//bXi461adEldb
         xxGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y7BVTAnQ8KWAba3s9PSeGwDU7zhQzuDKzH5xAAzSSPw=;
        b=NusWmuQzvMdAttbHtU3JMZGa2r0ORLRH5nAxTZaKYIGdb0dkV0pdULyh4PxVxNvEBN
         i3TH+OVtDdosB5w2hGymGwedoIfQU3PtmyIsUtlMCMqYwO0untXYj5BW/fwKKD2JE8VQ
         TSHVNMB6N2AyDsLFeDtwV3u1F7da7u5sfhH5J7RHMQJnZsuzjd2fEAX78X2lmaGp6gzv
         IBWczSCUJ/XSbDduUQD5xzrV6WWMBXcEaq2Pbn5JOX8tH/SM54Chb1uTMxvNSZX2bEHH
         40gLU8EuxaUp84H3PTaNGUQuq3e0q3GvkRGZL75pW2CB6EsLZ+RMOGNIGWlqukpz3uBB
         sz5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZMHNI+Ym;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id mn23si242090pjb.2.2021.08.17.23.24.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id cp15-20020a17090afb8fb029017891959dcbso8260270pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
X-Received: by 2002:a17:90b:3ec3:: with SMTP id rm3mr7432229pjb.7.1629267856411;
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z33sm5580994pga.20.2021.08.17.23.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
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
Subject: [PATCH v2 32/63] fortify: Add compile-time FORTIFY_SOURCE tests
Date: Tue, 17 Aug 2021 23:05:02 -0700
Message-Id: <20210818060533.3569517-33-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=14488; h=from:subject; bh=4CFYuaBLYz0lFjOjNx//rrY4Et67yt92T+e8DD2y+sw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMlm+MPDSarxn6l3GdHFIEU7LZvWMlELnRpy9uf Vje94jCJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJQAKCRCJcvTf3G3AJrWQEA CeoUAbhRbS6vCwD6skjxcpFHdYQ8ewl5rHdVS5DiHMasJNh7bw1v2rKGfRKguHg7h739GlpBgw7haA YdunfnYKuZnM4kI2XMyXvKZwXinm+/sPci1V4/SWOwZhqUZKkQQe+Zx9S6X5PAhmkEVSaBmeJpCfbT DJw7qHosMLbW8Dzv6XjaOrXJ0298uuLXqyjj2en3dtnuXLTqgsj75jL6VlH7n/VhvcsULKxCeOs5T2 D5zXcHZj+FyVhq6T2prP0IqcaxDobhIgA4RvTJKmThNl/aibeWOSTBxHCBkxASgBKYiL2Sv7hxlXzz M9dd06Omw1K7jS1N821qbXbyAnCB4QbDT5j6LQZiyMDiDHXbvcaq8QyBHUj5c+eQj7MehHOaLNBGvv o+luwwhX2ErZVSlbyi8tmFROZNJrFGxgzpfIJMtMt7JYvxNTNwSwQbqkIO0iICBxjvUu97rygz7iPz I7MRLlc6br7hZiiVWz7xQGcGvMerwJ1Fbce0XJ+pFQdbKm7TquwHiZO0I2WheZuyHQb9upyrpjm6wZ TmQnXtwgb7LnKitlQ/RIjF2Kxha0SBst8LCJm4RqV3GafX4oFI/zPimeDgRTKlJFQ4GrpzEetxGnDe sOvpc5D0uldFLJf2G0UfypV8uBODHFmaO0xPGFo3TOtxM6aJ+dnJ4h7oU3ug==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZMHNI+Ym;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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

While the run-time testing of FORTIFY_SOURCE is already present in
LKDTM, there is no testing of the expected compile-time detections. In
preparation for correctly supporting FORTIFY_SOURCE under Clang, adding
additional FORTIFY_SOURCE defenses, and making sure FORTIFY_SOURCE
doesn't silently regress with GCC, introduce a build-time test suite that
checks each expected compile-time failure condition.

As this is relatively backwards from standard build rules in the
sense that a successful test is actually a compile _failure_, create
a wrapper script to check for the correct errors, and wire it up as
a dummy dependency to lib/string.o, collecting the results into a log
file artifact.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/.gitignore                                |  2 +
 lib/Makefile                                  | 33 +++++++++++
 lib/test_fortify/read_overflow-memchr.c       |  5 ++
 lib/test_fortify/read_overflow-memchr_inv.c   |  5 ++
 lib/test_fortify/read_overflow-memcmp.c       |  5 ++
 lib/test_fortify/read_overflow-memscan.c      |  5 ++
 lib/test_fortify/read_overflow2-memcmp.c      |  5 ++
 lib/test_fortify/read_overflow2-memcpy.c      |  5 ++
 lib/test_fortify/read_overflow2-memmove.c     |  5 ++
 lib/test_fortify/test_fortify.h               | 35 +++++++++++
 lib/test_fortify/write_overflow-memcpy.c      |  5 ++
 lib/test_fortify/write_overflow-memmove.c     |  5 ++
 lib/test_fortify/write_overflow-memset.c      |  5 ++
 lib/test_fortify/write_overflow-strcpy-lit.c  |  5 ++
 lib/test_fortify/write_overflow-strcpy.c      |  5 ++
 lib/test_fortify/write_overflow-strlcpy-src.c |  5 ++
 lib/test_fortify/write_overflow-strlcpy.c     |  5 ++
 lib/test_fortify/write_overflow-strncpy-src.c |  5 ++
 lib/test_fortify/write_overflow-strncpy.c     |  5 ++
 lib/test_fortify/write_overflow-strscpy.c     |  5 ++
 scripts/test_fortify.sh                       | 59 +++++++++++++++++++
 21 files changed, 214 insertions(+)
 create mode 100644 lib/test_fortify/read_overflow-memchr.c
 create mode 100644 lib/test_fortify/read_overflow-memchr_inv.c
 create mode 100644 lib/test_fortify/read_overflow-memcmp.c
 create mode 100644 lib/test_fortify/read_overflow-memscan.c
 create mode 100644 lib/test_fortify/read_overflow2-memcmp.c
 create mode 100644 lib/test_fortify/read_overflow2-memcpy.c
 create mode 100644 lib/test_fortify/read_overflow2-memmove.c
 create mode 100644 lib/test_fortify/test_fortify.h
 create mode 100644 lib/test_fortify/write_overflow-memcpy.c
 create mode 100644 lib/test_fortify/write_overflow-memmove.c
 create mode 100644 lib/test_fortify/write_overflow-memset.c
 create mode 100644 lib/test_fortify/write_overflow-strcpy-lit.c
 create mode 100644 lib/test_fortify/write_overflow-strcpy.c
 create mode 100644 lib/test_fortify/write_overflow-strlcpy-src.c
 create mode 100644 lib/test_fortify/write_overflow-strlcpy.c
 create mode 100644 lib/test_fortify/write_overflow-strncpy-src.c
 create mode 100644 lib/test_fortify/write_overflow-strncpy.c
 create mode 100644 lib/test_fortify/write_overflow-strscpy.c
 create mode 100644 scripts/test_fortify.sh

diff --git a/lib/.gitignore b/lib/.gitignore
index 5e7fa54c4536..e5e217b8307b 100644
--- a/lib/.gitignore
+++ b/lib/.gitignore
@@ -4,3 +4,5 @@
 /gen_crc32table
 /gen_crc64table
 /oid_registry_data.c
+/test_fortify.log
+/test_fortify/*.log
diff --git a/lib/Makefile b/lib/Makefile
index 5efd1b435a37..bd17c2bf43e1 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -360,3 +360,36 @@ obj-$(CONFIG_CMDLINE_KUNIT_TEST) += cmdline_kunit.o
 obj-$(CONFIG_SLUB_KUNIT_TEST) += slub_kunit.o
 
 obj-$(CONFIG_GENERIC_LIB_DEVMEM_IS_ALLOWED) += devmem_is_allowed.o
+
+# FORTIFY_SOURCE compile-time behavior tests
+TEST_FORTIFY_SRCS = $(wildcard $(srctree)/$(src)/test_fortify/*-*.c)
+TEST_FORTIFY_LOGS = $(patsubst $(srctree)/$(src)/%.c, %.log, $(TEST_FORTIFY_SRCS))
+TEST_FORTIFY_LOG = test_fortify.log
+
+quiet_cmd_test_fortify = TEST    $@
+      cmd_test_fortify = $(CONFIG_SHELL) $(srctree)/scripts/test_fortify.sh \
+			$< $@ "$(NM)" $(CC) $(c_flags) \
+			$(call cc-disable-warning,fortify-source)
+
+targets += $(TEST_FORTIFY_LOGS)
+clean-files += $(TEST_FORTIFY_LOGS)
+clean-files += $(addsuffix .o, $(TEST_FORTIFY_LOGS))
+$(obj)/test_fortify/%.log: $(src)/test_fortify/%.c \
+			   $(src)/test_fortify/test_fortify.h \
+			   $(srctree)/include/linux/fortify-string.h \
+			   $(srctree)/scripts/test_fortify.sh \
+			   FORCE
+	$(call if_changed,test_fortify)
+
+quiet_cmd_gen_fortify_log = GEN     $@
+      cmd_gen_fortify_log = cat </dev/null $(filter-out FORCE,$^) 2>/dev/null > $@ || true
+
+targets += $(TEST_FORTIFY_LOG)
+clean-files += $(TEST_FORTIFY_LOG)
+$(obj)/$(TEST_FORTIFY_LOG): $(addprefix $(obj)/, $(TEST_FORTIFY_LOGS)) FORCE
+	$(call if_changed,gen_fortify_log)
+
+# Fake dependency to trigger the fortify tests.
+ifeq ($(CONFIG_FORTIFY_SOURCE),y)
+$(obj)/string.o: $(obj)/$(TEST_FORTIFY_LOG)
+endif
diff --git a/lib/test_fortify/read_overflow-memchr.c b/lib/test_fortify/read_overflow-memchr.c
new file mode 100644
index 000000000000..2743084b32af
--- /dev/null
+++ b/lib/test_fortify/read_overflow-memchr.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memchr(small, 0x7A, sizeof(small) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/read_overflow-memchr_inv.c b/lib/test_fortify/read_overflow-memchr_inv.c
new file mode 100644
index 000000000000..b26e1f1bc217
--- /dev/null
+++ b/lib/test_fortify/read_overflow-memchr_inv.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memchr_inv(small, 0x7A, sizeof(small) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/read_overflow-memcmp.c b/lib/test_fortify/read_overflow-memcmp.c
new file mode 100644
index 000000000000..d5d301ff64ef
--- /dev/null
+++ b/lib/test_fortify/read_overflow-memcmp.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memcmp(small, large, sizeof(small) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/read_overflow-memscan.c b/lib/test_fortify/read_overflow-memscan.c
new file mode 100644
index 000000000000..c1a97f2df0f0
--- /dev/null
+++ b/lib/test_fortify/read_overflow-memscan.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memscan(small, 0x7A, sizeof(small) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/read_overflow2-memcmp.c b/lib/test_fortify/read_overflow2-memcmp.c
new file mode 100644
index 000000000000..c6091e640f76
--- /dev/null
+++ b/lib/test_fortify/read_overflow2-memcmp.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memcmp(large, small, sizeof(small) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/read_overflow2-memcpy.c b/lib/test_fortify/read_overflow2-memcpy.c
new file mode 100644
index 000000000000..07b62e56cf16
--- /dev/null
+++ b/lib/test_fortify/read_overflow2-memcpy.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memcpy(large, instance.buf, sizeof(large))
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/read_overflow2-memmove.c b/lib/test_fortify/read_overflow2-memmove.c
new file mode 100644
index 000000000000..34edfab040a3
--- /dev/null
+++ b/lib/test_fortify/read_overflow2-memmove.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memmove(large, instance.buf, sizeof(large))
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/test_fortify.h b/lib/test_fortify/test_fortify.h
new file mode 100644
index 000000000000..e1dfe64d79a3
--- /dev/null
+++ b/lib/test_fortify/test_fortify.h
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+
+void do_fortify_tests(void);
+
+#define __BUF_SMALL	16
+#define __BUF_LARGE	32
+struct fortify_object {
+	int a;
+	char buf[__BUF_SMALL];
+	int c;
+};
+
+#define LITERAL_SMALL "AAAAAAAAAAAAAAA"
+#define LITERAL_LARGE "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
+const char small_src[__BUF_SMALL] = LITERAL_SMALL;
+const char large_src[__BUF_LARGE] = LITERAL_LARGE;
+
+char small[__BUF_SMALL];
+char large[__BUF_LARGE];
+struct fortify_object instance;
+size_t size;
+
+void do_fortify_tests(void)
+{
+	/* Normal initializations. */
+	memset(&instance, 0x32, sizeof(instance));
+	memset(small, 0xA5, sizeof(small));
+	memset(large, 0x5A, sizeof(large));
+
+	TEST;
+}
diff --git a/lib/test_fortify/write_overflow-memcpy.c b/lib/test_fortify/write_overflow-memcpy.c
new file mode 100644
index 000000000000..3b3984e428fb
--- /dev/null
+++ b/lib/test_fortify/write_overflow-memcpy.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memcpy(instance.buf, large_src, sizeof(large_src))
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-memmove.c b/lib/test_fortify/write_overflow-memmove.c
new file mode 100644
index 000000000000..640437c3b3e0
--- /dev/null
+++ b/lib/test_fortify/write_overflow-memmove.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memmove(instance.buf, large_src, sizeof(large_src))
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-memset.c b/lib/test_fortify/write_overflow-memset.c
new file mode 100644
index 000000000000..36e34908cfb3
--- /dev/null
+++ b/lib/test_fortify/write_overflow-memset.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memset(instance.buf, 0x5A, sizeof(large_src))
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-strcpy-lit.c b/lib/test_fortify/write_overflow-strcpy-lit.c
new file mode 100644
index 000000000000..51effb3e50f9
--- /dev/null
+++ b/lib/test_fortify/write_overflow-strcpy-lit.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	strcpy(small, LITERAL_LARGE)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-strcpy.c b/lib/test_fortify/write_overflow-strcpy.c
new file mode 100644
index 000000000000..84f1c56a64c8
--- /dev/null
+++ b/lib/test_fortify/write_overflow-strcpy.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	strcpy(small, large_src)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-strlcpy-src.c b/lib/test_fortify/write_overflow-strlcpy-src.c
new file mode 100644
index 000000000000..91bf83ebd34a
--- /dev/null
+++ b/lib/test_fortify/write_overflow-strlcpy-src.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	strlcpy(small, large_src, sizeof(small) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-strlcpy.c b/lib/test_fortify/write_overflow-strlcpy.c
new file mode 100644
index 000000000000..1883db7c0cd6
--- /dev/null
+++ b/lib/test_fortify/write_overflow-strlcpy.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	strlcpy(instance.buf, large_src, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-strncpy-src.c b/lib/test_fortify/write_overflow-strncpy-src.c
new file mode 100644
index 000000000000..8dcfb8c788dd
--- /dev/null
+++ b/lib/test_fortify/write_overflow-strncpy-src.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	strncpy(small, large_src, sizeof(small) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-strncpy.c b/lib/test_fortify/write_overflow-strncpy.c
new file mode 100644
index 000000000000..b85f079c815d
--- /dev/null
+++ b/lib/test_fortify/write_overflow-strncpy.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	strncpy(instance.buf, large_src, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow-strscpy.c b/lib/test_fortify/write_overflow-strscpy.c
new file mode 100644
index 000000000000..38feddf377dc
--- /dev/null
+++ b/lib/test_fortify/write_overflow-strscpy.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	strscpy(instance.buf, large_src, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
diff --git a/scripts/test_fortify.sh b/scripts/test_fortify.sh
new file mode 100644
index 000000000000..a6d63871738b
--- /dev/null
+++ b/scripts/test_fortify.sh
@@ -0,0 +1,59 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+set -e
+
+# Argument 1: Source file to build.
+IN="$1"
+shift
+# Extract just the filename for error messages below.
+FILE="${IN##*/}"
+# Extract the function name for error messages below.
+FUNC="${FILE#*-}"
+FUNC="${FUNC%%-*}"
+FUNC="${FUNC%%.*}"
+# Extract the symbol to test for in build/symbol test below.
+WANT="__${FILE%%-*}"
+
+# Argument 2: Where to write the build log.
+OUT="$1"
+shift
+TMP="${OUT}.tmp"
+
+# Argument 3: Path to "nm" tool.
+NM="$1"
+shift
+
+# Remaining arguments are: $(CC) $(c_flags)
+
+# Clean up temporary file at exit.
+__cleanup() {
+	rm -f "$TMP"
+}
+trap __cleanup EXIT
+
+status=
+# Attempt to build a source that is expected to fail with a specific warning.
+if "$@" -Werror -c "$IN" -o "$OUT".o 2> "$TMP" ; then
+	# If the build succeeds, either the test has failed or the the
+	# warning may only happen at link time (Clang). In that case,
+	# make sure the expected symbol is unresolved in the symbol list.
+	# If so, FORTIFY is working for this case.
+	if ! $NM -A "$OUT".o | grep -m1 "\bU ${WANT}$" >>"$TMP" ; then
+		status="warning: unsafe ${FUNC}() usage lacked '$WANT' symbol in $IN"
+	fi
+else
+	# If the build failed, check for the warning in the stderr (gcc).
+	if ! grep -q -m1 "error:.*\b${WANT}'" "$TMP" ; then
+		status="warning: unsafe ${FUNC}() usage lacked '$WANT' warning in $IN"
+	fi
+fi
+
+if [ -n "$status" ]; then
+	# Report on failure results, including compilation warnings.
+	echo "$status" | tee "$OUT" >&2
+	cat "$TMP" | tee -a "$OUT" >&2
+else
+	# Report on good results, and save any compilation output to log.
+	echo "ok: unsafe ${FUNC}() usage correctly detected with '$WANT' in $IN" >"$OUT"
+	cat "$TMP" >>"$OUT"
+fi
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-33-keescook%40chromium.org.
