Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIPHQGEAMGQEXHGORIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D45FC3D7FB6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:14 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id r1-20020a0569021541b029054df41d5ccesf106136ybu.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419554; cv=pass;
        d=google.com; s=arc-20160816;
        b=Antlshcxb33Ipbp0h1AUgPFflrmejM5SKcLKscpb50kYOCrCRYIAOhDqXqQqaR/Yn6
         9XNII0twPlYaZsi1/A+KL9KMAUQ40Dx+MyOsy+CtEnPoV1Isqdc+q1qOrdtNeb7PUAh4
         4y7slrrVNIUDa0jt2SAinAl3lLelaVmoIZCbNjgMh+tvXKkfWKQxrI1LK8aGlW0+wy3V
         CrLVS613oWkJSXgA88jC+r0jKlJFba8Y7+6XgmfxZ+bY9iHQeQnw0fFWUU/U09Y3guYu
         SkzDtkxo7I1ZSifa0Des17zJslFkqvJPc7RQkcKkDYxia66smDlf7b1N9c3jgHhQrw3b
         PyGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7LcVEa2rhcMQNEr0noWO68RFGcGU3m9H/Jx/6LhwEl0=;
        b=bCA3NxM4ssnT3yO6Eq1etZAMGBL8Yn53Ne1v8W3dgnvMEuCuuiCcwBufWeAeDaogVW
         h1dGQFIIbIlqKY4YNgN7Nvpj/VB+UV9NA6yEaf1CK9X2xe6J3AcBlx5mZ9PFjHDurlZ2
         YykauFvm6ZNNORGfcKvrFqLuxs02p/nbkZPXDFzukHOamzI6WwiSQG2DROa6jobVbjxS
         TYqa6dCDBBYHoWdLzNQdY48M+x7dUhfRVoWYoHLo+goHB6bFerKVnqH2uVwYczeDQfUz
         GIRa1cSgXJdgaCMZK8mxmU2DcVERkLHXOq9FQwoTRG7db0ZTxHDpIcfV8CFPV6oGJDVJ
         lQGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OPMH+TFn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7LcVEa2rhcMQNEr0noWO68RFGcGU3m9H/Jx/6LhwEl0=;
        b=m2CNUgpN4vr2tpAQvaSOdVWtGlB4rwmKe6g8ObZL2rn4iykZj9aVRY4TmAYcjOOJNI
         k0w7X9GudVSjXrF5QyBsRXngNmpZAdxwyqCkvM5wmbhLsXQpDZ0z0JPI79y9uszNt29y
         yrgr2gmWcPh7cHSGTcSUEgGeatcMyW7HCtfZyyotHAvAMLyI1oLPOmAiDRe857laAjbV
         sl+NeIv83nryDIYz1c9Qa7lRahGuH/yRgkcfGV67vtWfFhlrHNa7/PdO/pXGyrOt00YW
         EooLnCTJjxOdO+WrVFtA8LJC2GNUCj3wAsGWEerkcXMjIj8olJivfoQGHkl9uVXosXIU
         EWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7LcVEa2rhcMQNEr0noWO68RFGcGU3m9H/Jx/6LhwEl0=;
        b=TA0/fUkl/INuHfmfGHr0QNTMNwmkZBctfx2IZv0tYzd8ntt75jR3QB5Ap3HcF+YxUo
         Wc/CQuqZB3xeIy15g6ppcIQ5pE6ZMcQNt4vSkOJ433RU9pjCUkrMCgw3f/rWzWQRpKrd
         DDffoyPctGmxc7PVMavc0td+2tVRbr7Y68zjBuPC3VxOECNcmx7PfHFgKqGRBETli8ig
         zbDNbBeW1gT5RmBTqQb2aDaQY/mdfBbuuo0llBxfYn4AcO2JpXiV/9rYzsMLxCDouS7p
         vhfLYAc5ft1jvaNs4hzc8Wl3gDzesG8ZgLKQkpzk5krwSuzRdRyzwq2QX1rXo2y5q8Fj
         1NrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RqKy9DvKHAfkaPCp7GvUYpfHWd6m9d9d4sPwhtYmAIgrUlVtm
	ugdOvngABOLwcRUEariBC+w=
X-Google-Smtp-Source: ABdhPJyOcbtkFMZGiO3EPUiVkEShHUlJcH2Hk+gb0iMf7jFe/ndJFrSanMuWB5/zS3VaJaJNcMoiQw==
X-Received: by 2002:a25:7e86:: with SMTP id z128mr33856768ybc.222.1627419553933;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:420f:: with SMTP id p15ls106897yba.6.gmail; Tue, 27 Jul
 2021 13:59:13 -0700 (PDT)
X-Received: by 2002:a25:5d02:: with SMTP id r2mr4282589ybb.82.1627419553474;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419553; cv=none;
        d=google.com; s=arc-20160816;
        b=Lwf3KF5YDdBTJIPR+kBqgXHdbCHdWKQzcdVyDH16YXZ1ZYxVa0mP4jHzakV67FDwio
         awtQgYc2X0KStjMMGjU2kv6Mkgk3xXveBcqtPbwRYnz98brCFW5dM+ZR5a4iUozjC2Zl
         FHO/8ly9jD5yEDkxK7Qkt/3iU84+PrKOx/q8I9YtgXhvab3tM3Sc5/d9IDvciat+Xdqo
         1hChzzuH3CqfH8S3rYhJgx6xiKiMDnzAeBJpu6dJujQEl04DfUya9N/MgmDfy8Ykkrd9
         GMOnPiWC7+3iIEew4g+zv5qrwKExN0DH9CTHxlsFk32k7cY5AH34Y02q8u/UPcA26cNT
         juXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TnnuakIxzSbl2ekndF+mmNRk5JCUFYLmPq03TYEYi4k=;
        b=QbEUy2ncu0M5UD6y2FlXZpW6DZQso8/OBKJ0SxdlxeUNum68MFt07G3lme/Opl8ODC
         pMjhTDxK/pUkqSTsrkQFkBjiZokHIhbbgjS2/fxJBDjxIiIVAtXsO9RQC6y9JMOh6iGw
         p2xbULwO7vTx/qQkdWlSvKqPo3LjZ4dVyKNHvlb8zH8qDLgSYkR1KgmAno73CPOeIhZg
         iuzYVZPHcSpLxPzw43TcX9OJh+Z7vTobsjO4cMSBGZOTGi0vuOYDM/YXfp4Lqet7r/C3
         wHtWdS7f4BByxCcVvc//s+XWkvhI9GPAVfgc+t7HVWVaKuJ+906xqimeqEAUgWvPY3wF
         VHlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OPMH+TFn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id r3si520106ybc.1.2021.07.27.13.59.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id l19so1888012pjz.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-Received: by 2002:a63:b1b:: with SMTP id 27mr25335957pgl.318.1627419553151;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id lt15sm3666524pjb.1.2021.07.27.13.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
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
Subject: [PATCH 32/64] fortify: Add compile-time FORTIFY_SOURCE tests
Date: Tue, 27 Jul 2021 13:58:23 -0700
Message-Id: <20210727205855.411487-33-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=12511; h=from:subject; bh=Q4J+PNNQ0x2FrnExd2GwHSl8ygCKro8mVNuGZaaMvEE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOHi5BjqcFBl+fVaoddPaT/CE3HLMX7Qazay1gP NE/qbu+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhwAKCRCJcvTf3G3AJiyCD/ 9585sT5/jANaceXo2dTbZNeExRTl60qzKyEptgQLDcqJQ/pFIiRSjR2+0L80/dIxqvN5/+ihCjDW7J lCJ6ZsCZXv68CLtTcWBldSTv3eUDI8StzDBDmDQRIWL/5FDUdyvXJWtPZdHNPE10asiv2l1CioXDoa NfhxbbrcVflJPgsM9GpqDGrQHMGANihgjnDGVmBgneVTW68KFFA9dc+ODfnE6zUPCMKiNjug/NMt+j 2GDoP40kDMm6VjUIA6Etvh0hcwV/L/hTOviNjwpvg9b3BibQqis1vPgggUETTlXn2EJQG2/D1SrJ30 5bAqoZ8n8T0ks/jqZXvHezrwBiCeNNoFoBARqEoPfErTigvKiUHaTT4wBMahrHizIRM155dGK/CHA6 h8aUk8QrQSwuaCcsl3nEpQLXQyW61FmXan4g40zpFcplT9dGLj4VGnSlyf13yXSnpxRcSVeSxTBSpq wUXKjf5LXgnkdMI6ru9eQ5DJ7By6AUd9RV69Pvvlym3hu7RafAgWQ0qqse7fG4DGRpBy3pLQI1oOsg Ju7VWB2w35RPMmODBa0sm1rh+eCuJcTk9nRvubxdoneCtG/2x1UVD4TYGBmVA80FM2ncZBrZJH9dWw V+iaOomJvPwMsKIPgbG0fjB3jlcHySCUo55X9f/zVnXGuGS6BPqDRnpXWYGQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OPMH+TFn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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
 lib/.gitignore                              |  2 +
 lib/Makefile                                | 30 ++++++++++
 lib/test_fortify/read_overflow-memchr.c     |  5 ++
 lib/test_fortify/read_overflow-memchr_inv.c |  5 ++
 lib/test_fortify/read_overflow-memcmp.c     |  5 ++
 lib/test_fortify/read_overflow-memscan.c    |  5 ++
 lib/test_fortify/read_overflow2-memcmp.c    |  5 ++
 lib/test_fortify/read_overflow2-memcpy.c    |  5 ++
 lib/test_fortify/read_overflow2-memmove.c   |  5 ++
 lib/test_fortify/test_fortify.h             | 31 ++++++++++
 lib/test_fortify/write_overflow-memcpy.c    |  5 ++
 lib/test_fortify/write_overflow-memmove.c   |  5 ++
 lib/test_fortify/write_overflow-memset.c    |  5 ++
 lib/test_fortify/write_overflow-strlcpy.c   |  5 ++
 lib/test_fortify/write_overflow-strncpy.c   |  5 ++
 lib/test_fortify/write_overflow-strscpy.c   |  5 ++
 scripts/test_fortify.sh                     | 64 +++++++++++++++++++++
 17 files changed, 192 insertions(+)
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
 create mode 100644 lib/test_fortify/write_overflow-strlcpy.c
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
index 5efd1b435a37..40b4bf0bc847 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -360,3 +360,33 @@ obj-$(CONFIG_CMDLINE_KUNIT_TEST) += cmdline_kunit.o
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
+$(obj)/test_fortify/%.log: $(src)/test_fortify/%.c $(srctree)/scripts/test_fortify.sh \
+			   $(srctree)/include/linux/fortify-string.h FORCE
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
index 000000000000..125f5c585e4f
--- /dev/null
+++ b/lib/test_fortify/test_fortify.h
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+
+void do_fortify_tests(void);
+
+# define __BUF_SMALL	16
+# define __BUF_LARGE	32
+struct fortify_object {
+	int a;
+	char buf[__BUF_SMALL];
+	int c;
+};
+const char small_src[__BUF_SMALL] = "AAAAAAAAAAAAAAA";
+const char large_src[__BUF_LARGE] = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
+
+char small[__BUF_SMALL];
+char large[__BUF_LARGE];
+struct fortify_object instance;
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
index 000000000000..59b362eed2ac
--- /dev/null
+++ b/scripts/test_fortify.sh
@@ -0,0 +1,64 @@
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
+FUNC="${FILE##*-}"
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
+# Skip this test, it is currently failing on all compilers.
+if [ "$WANT $FUNC" = "__write_overflow strlcpy" ] ; then
+	echo "skip: unsafe ${FUNC}() usage not checked for '$WANT' in $IN" > "$OUT"
+	exit 0
+fi
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-33-keescook%40chromium.org.
