Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS4GRCEQMGQEJRXIRPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 955803F3E7E
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:00 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id a91-20020a9d26640000b02904f073e6bc1dsf7796617otb.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619019; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fo9pxzbHGkXhJLDQJekqFam9WH2I5waQA1ih6W0pN3yLrFMy6pYawudg75KoB1V6ZH
         hoSanCcew0YABsU6MY+g7F2Nr27yx+N/7awN++ZRVHKq7Tz9dNYo0TTsK0WDLUTgiN8I
         /O0GDrDHV06hQJ5qKT4ga4vYCwe0hARIX5h8HOipuqDw/yKsBYVIhsYoBqdR92r4WEaz
         e5zhAByO1Hvjo43jtjo+tMbPCKEF0Po2EV3PsbsJytNGNsYVJhd5gpEGVqnCwospc4oZ
         +vV2ru//A45lIGQdSv2S6NCaAewKHlAtcj+9v7J8tDudf0YbGpM8cqC329Nql5wjbq25
         2j5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=x7rXc/3AroUFhCjDWeO+FvCJ1HlgJ6jl8H8sISjpQh8=;
        b=bfHCVRdETKEhZ2PZ41RqV+T1kQqrWr5BnrZwflDPXeTleGKY9sPSsq8qMXOjqKJ4hj
         cVHkG3Of7tPCQzj5nNy0oTT2rUxoTtb720CAGVz1/ZsGpcnnr6Uolg7pE+dRdf5iuIW+
         PQ1so4jCJP6vwK0RD9v9mG42FhmHEF0nqCp3lqE+aVQ7vc94e/DwWpv/5bdByeh4smsQ
         iJRf8NW7jvXAs/C8Ns+lH6w++tlasexo9cziE2Ar5SYnGTo0xmGtH5a0qQ1LLzkldhfm
         UhtEfIvH2EUJKxxwgP/fe5L/EZsJvoTD6Appm0A/n7mhSOzOMkZ3uFxRouEnOiQDkN+x
         hxvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GKUtY8Zr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7rXc/3AroUFhCjDWeO+FvCJ1HlgJ6jl8H8sISjpQh8=;
        b=UEkGPSzJUmn683ylYq9wbotF1raTcPbujzR8Ixzg76916EZeNDDhrXlXAMfX0/5/K2
         y56d8vUHizusmnrBOynxQKTLyuAIz8f0WkQhT26QnmHNtIL7PqW/a856SEull1gc365m
         H1Z+qXWQ8HwBoJmhbpBXZObUtRqR59lcGZEbdOhUc5Mc9SQXG4SxbVlxjBA/73LkoDUE
         tp1Suwv3D6+aTjHyp1ERauKa1LfL6bKYpsU3S7T1oFDVG2YZA9BN8vVX85povXaf39Dw
         cH2kKamC3BWJGkz9uA1PPbRAgSjJAPjTg1p6t7nrpp+wY6Twf4IX88Ex6VTgClhwT6DL
         6Acw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7rXc/3AroUFhCjDWeO+FvCJ1HlgJ6jl8H8sISjpQh8=;
        b=JZe0XWOuMVAYUpQ7vopwe/N08RJ4duJqRc3PeZQ2p0Ovyz/kSQdx59J9XzQsM1RbyD
         z72lp1TyXnXZBzf3VD5NZ7kUItb0CEaeQtbtwcg8V2sHkxLkl4x/JG6UWOpIBGJJJN9X
         cbX/R0ly8DXxp+gFoyewzdECyuscL06fwzhuYc/3cCB/vyLPUW4KNXnF0t6J818cjfEz
         E/WaeoSQBZCMFPJFdgOMEoxlz3wVXELEBMx1UUfK5nxmmkzKemEVsMpso9y6vYcOp7OE
         R5ZHAUxVPMf+DmOC2OmuAaDwzcnd3FcD5xK0yfPC0w6RmCYqiwxXeY+KJHLPiHCEHzvV
         V3UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uCMBlTuh/hxU1wpCl5uGNKvnfbvwOq8o4/5m0GuIW5jiG2bQp
	26c1lj/OpYi7xY1XriZWu6c=
X-Google-Smtp-Source: ABdhPJxDrKiV+YNcz7mKpfoGV/vEHJ7UmQJAtIH0Hijc0csagpIu/JDwDxjk6m7v2ND9PxxznL8wkg==
X-Received: by 2002:a9d:6959:: with SMTP id p25mr23412048oto.81.1629619019568;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:df09:: with SMTP id w9ls3338751oig.4.gmail; Sun, 22 Aug
 2021 00:56:59 -0700 (PDT)
X-Received: by 2002:aca:ea54:: with SMTP id i81mr8159966oih.174.1629619019238;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619019; cv=none;
        d=google.com; s=arc-20160816;
        b=o8wYfYO+YJAEtYEq/ZApkYSNeQlBYkBLF24TLzYdJ3XrZ/nTWEhoTdyDnET7KFUlHS
         rA+Ky0Y0PAZvatsYht6nrfubD3zpNhrGTJTBUUOMfuU24QFj4XuFm/aqCZvoYuz/nWHa
         lqH562Jtd0pLchh18Ouz6R0RBawL6gSq3Q9W4tRLR060x10NhJHD3VQoLg4iuoSGfHNG
         ZzbY9w5vwcbZcc3sJrDhz4I82L94rJpCxBQOUPYVgDYMzgREFHYbEAQrGnkx1VJv27sZ
         /M440RrDPGk5Ep+GwoS6aofE0eUqoaON8m7bTQA4czT3Fy8ZYOwUAhxQOV70bPfoNDNj
         0NJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=esTuixCLLKpApTRPX2HCFeqFboPKiGroJFfFu+WSZ+c=;
        b=zPflRKTcJh4mFk4i6hhIZD+NoSA+a/Gxj9HHbAKuIIRVi6rFOPyiiZ+FffG4tE8nQD
         ObiwjXlthaedh2ATqFbBiN5CZlc/DkUVDa4TraB6+KrH0oQ1JDMghRI/skfu1BoeBgTp
         XjxYFp2bvfIgz/YBSUWbTZZWl5YWBE6MNoRnpab/YA5i6wN3lttrB4eQuk/shgDwvqkG
         I/rmSFOvCXd3WfnxH71MU0D+/jDbB+b/ndjK2HansB5rtF3rQuUFiVVtLoAwrpGNX3XB
         HsDmIqcngS/FwHrCATdemdJQj+CfNYG91kvVCTk5NdEseKfsn8uwQ/U3+H+EUgWBKq3x
         7dPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GKUtY8Zr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id o7si760585oik.2.2021.08.22.00.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so16690564pjr.1
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
X-Received: by 2002:a17:902:a40c:b029:12c:17cf:ab6f with SMTP id p12-20020a170902a40cb029012c17cfab6fmr23344154plq.71.1629619018562;
        Sun, 22 Aug 2021 00:56:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x19sm12550691pfo.40.2021.08.22.00.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
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
Subject: [PATCH for-next 20/25] fortify: Add compile-time FORTIFY_SOURCE tests
Date: Sun, 22 Aug 2021 00:51:17 -0700
Message-Id: <20210822075122.864511-21-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=14487; h=from:subject; bh=d6cDtDi6tN5v08m75LtOJYNhyRaS100VqVCmwytOPcA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH5ERUpR7c+mr4L29WRtM/FRs2vNUIC5P2B2Vhn t9DCo3uJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+QAKCRCJcvTf3G3AJqHbEA CvBOupzpzAqKpudZfOWXmv6P7Rp4Ydmmt21tYPMRTgrUXM0kUkrpQYgJwUIIK6lDPhndiIS0pjsxZO adadaKlLyh1ZAo3I1qLdrxNgl9iEeTiB9yLXVJB8i+1dCVnppO6AesG77zl2Fvku+4mtZzeHvqZV0a n+sF2GLTt0s/mT30JCo3yktg9egOrws4a7ltpSDjNe4PY4kL4VSD501QjGvkJxiacFMJUb8HWBu9IV W/zGJ6til24TARTtvOXxTvOc1WI8uk2FKUToOA6pRJEaM+IICKp/YBJ0jWM8DFyZtuCcKbEtY8uaCr 4yDE7VTOED9w7uSvCOIod5JGQFxKHUmRZ8W0+LiP/YAoF8fGoQI2wnpsujy18ATF40cdjYNZOXkve6 STYbwV0Go/BCiMT75p8TVboQJzQeuJEMw+MkqGSw1SE0Y92ysetyTv+P9pOfDZGiNTB7qsgH+MuQDl ylRzlYqiYAHETYMDuEkICUmfpxZxVq5aZCGsfznDFeijK+aAeFENs6L7U+QS/s85C70WRsPdU6SVoS giWJzqZf25zLjEd1T0AHLCA5z3LFlJyG9prGFIGoslQyAmpOLWO/0bnLPnd5Y2NIbJ/6CHwtKybd9X P02jcYFpzKpayUTPgY2SzN71CYpawRiaELNkz+YBPxx+sJCnsEXzZsdx2S6g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GKUtY8Zr;       spf=pass
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
index 000000000000..d22664fff197
--- /dev/null
+++ b/lib/test_fortify/test_fortify.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
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
index 000000000000..622c7a0b15e5
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
+	# If the build succeeds, either the test has failed or the
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-21-keescook%40chromium.org.
