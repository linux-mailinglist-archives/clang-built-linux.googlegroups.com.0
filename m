Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBL6EVXXAKGQEXWFIP5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF4EFA0E6
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:53:52 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id p2sf369633iof.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:53:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610031; cv=pass;
        d=google.com; s=arc-20160816;
        b=SbVhHcvIsfQX7+XQDdMSVBxOL/AI4UbfpFDuA9Re46z1eg6imWk6ypvace1GixmVbt
         239CTftVN7948//qBA2oCpBrGlIP2R06ZhQvyJJ150jckmLQAnDqaLGA4F56A6ISu6Ud
         mZlcXZzd3ny9ShF6ZIQlF4b5u0xsEpqA8I1fLFKA1ucsXx/Egaea7+yQq61NCnLzZSOo
         +OMe0a7u4qOQZh7vBKryArcBfzs4BXKYtlDa4PeDTg1ns2f09Fwu3b9GPrzNXwQrD8Xi
         f4hUKr7ypcsv7bzvlxzZ0CDKuxA+jxZJ/VUypuE1fC1dRUAZK0ESRFiMkdz0MVPdnAyu
         4RMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=e1XOD+PIRaId2RbiQ5PUW6KGDZxyT8ccWqUNcsX3d6E=;
        b=oq+j4arAta15MADsky5bz9gbPVEdPreJZrjRhNSKekZhoLeElaBBNL34DpBjSMpqDc
         BgItymm1CvjmN9z0/y6x+Ti1/A1I5MO/KcdFEtFIImg2aJ19fAerOWgoLlSPm+Pdt0Z4
         DGgv7PUXM0/z7c0Q0tdtg7JkYM2R6MecdX2B5eEvh+AmPimJjWmyRDpneygy9KG6o88F
         XhW0G/V6xsL6qIjG1iRTx0ouk5INTh5ofheqGmFAtustKbHF4dU8HW6L2kaK9Y8WAqBp
         PKvB2TkDDCnC6J14NbvSk1US69cKKexuB9AXXh0y82SvDTuIbVMRdehl5DAIBBezn1YR
         FgHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="azWy3I/g";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1XOD+PIRaId2RbiQ5PUW6KGDZxyT8ccWqUNcsX3d6E=;
        b=lUYoXr2L6gV31fNIOG9OX0ct6YEsfHqywuS+B6whPTZRbUTtkiIfnERh/dh9qLBoMI
         4Z3OC7FILkJm6o7Yv1TQJvX1jXsXFdDLWkRyjrlx0GZE5jk9eUbAw9YJcfZAp1LS9mu9
         ysDULLTl9MxheHJnkG6vk9gkzrigQiaQQZKkGbsrFL+4Ys0ml11/71Ix9MLXSxi2xKjy
         5ghwQ43y0qZUJOyM+A8X7lCYeTnvPOqYJeNxXAoc41laJwf5u0v7hGSihGk/Di+K0vls
         QOvTdr+z84iRCXo/J2oJ6A6F9V7vu7Wlg1KxHn9Rw4cFDLtgihRcVQkIwr5DdIJ7pilv
         pkiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1XOD+PIRaId2RbiQ5PUW6KGDZxyT8ccWqUNcsX3d6E=;
        b=rdOrbUCDq6EAmMGe9YKb6dC6nxyP+LMjnkCaw54hHDuLHEenZYtSZkcwH3vUFDnHgQ
         2/uxwie9cnvRe6uy4awpMxlIYpJ9bhB7VqBe7dlgYZqve6pFZr2v6UZ0yHYemsvqgYjQ
         jOvltNe5dz4tqvGNizVL/1qfux7IyFugEFXp6JyG9uyzMKejkg6wUag6tNSJx0u/DmU8
         NlvGDYgmehTtVmVAGKqlZi++HqXX+hXT5KupDOK/Lwrbokrce4cFxqoD8PETrTnj/TUd
         lqcdnZiaw4ShNnUc4a5mkolCo44fbQSGys6HuhKWP6GcEEy+aAmX7PnUrHFLOzNKOmii
         b0tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUca0c6l6VicPxiK/s5weqfAcXSQjjGkBXhA14ITE1vf679bc0
	y9xtKsLaKVyHE7Chvj++CFU=
X-Google-Smtp-Source: APXvYqxfLlpQ8qCy1KrwjJSZiHx9s8qG2WgbSW+tLJ2JIm7MngJ28nxbKynLtD5a7hZSQoHv0vB2mQ==
X-Received: by 2002:a92:60b:: with SMTP id x11mr1071220ilg.69.1573610031635;
        Tue, 12 Nov 2019 17:53:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:730f:: with SMTP id e15ls90794ioh.8.gmail; Tue, 12 Nov
 2019 17:53:51 -0800 (PST)
X-Received: by 2002:a6b:f914:: with SMTP id j20mr1007520iog.223.1573610031303;
        Tue, 12 Nov 2019 17:53:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610031; cv=none;
        d=google.com; s=arc-20160816;
        b=CusOYOcCv+P8jjqPbAQkdiRJTVGWiLc073UpgLc6ynmWpwPKPe7f1zLNQO/5K9X0/W
         OcmG8JNnL4dr5FtwBZBPDfx7XguOHMNMHM4HNxiFMA1CzWfF2iVqQeJyAMEunBllX6vb
         V3i/vjD9xW7CBJGOfIoRwwpVSedXn+1RD2+lMQ+iQv5zPaYLVVBGdZjkEM8I1eXMc5/v
         6WmqwRvTRdId1tpihPH0nxxI0NBPAnebivxDAdwIETgYA/CzVv9xzOsWnqKslpT80PiG
         2WCxlM9fMYZO0FWABl8FJstEJql+oTHDfIjlspA7PzKBgFHaHPBq64O0IXiCA7wXKUw9
         qEcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=x1JKoC9MjMp0vdM5a4kSAGzlI8xrUGJjtqp82rG1jjA=;
        b=izshFKKWDzlV0Wm6u8+dBtNp6bzrSTqDJaJgac/5Syuf7hhVAoVMbLPd/Q4QHVcFZt
         rVHp0UTkyLi3k8gnJ5NwNXtmzl3SZqQDsCQhvT/5yKe8Vd+iAgjagRyqxJy2gzY6ObcN
         +CNPPIdhC/PRkelLcs5PcoXbhItyAIZEZh/nSABxXsytfm5XG7Q1kcHsKYyMOAB+afZC
         Pupysh8E87mexL0CwFVL+6eLfkaozn66F1wl1qy76mW/z+Qsqdr9bJ+SVUldTdAp27e1
         MRSYVcysNPAitHGZKonYvllaRM28U55LflyY7XQHiPZDQ391s7bRV1D6m2mvyOgonfXQ
         axPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="azWy3I/g";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z130si31186iof.5.2019.11.12.17.53.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:53:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0F67222CD;
	Wed, 13 Nov 2019 01:53:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Davide Caratti <dcaratti@redhat.com>,
	Lucas Bates <lucasb@mojatatu.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 124/209] tc-testing: fix build of eBPF programs
Date: Tue, 12 Nov 2019 20:49:00 -0500
Message-Id: <20191113015025.9685-124-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="azWy3I/g";       spf=pass
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

From: Davide Caratti <dcaratti@redhat.com>

[ Upstream commit cf5eafbfa586d030f9321cee516b91d089e38280 ]

rely on uAPI headers in the current kernel tree, rather than requiring the
correct version installed on the test system. While at it, group all
sections in a single binary and test the 'section' parameter.

Reported-by: Lucas Bates <lucasb@mojatatu.com>
Signed-off-by: Davide Caratti <dcaratti@redhat.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../testing/selftests/tc-testing/bpf/Makefile | 29 +++++++++++++++++++
 .../testing/selftests/tc-testing/bpf/action.c | 23 +++++++++++++++
 .../tc-testing/tc-tests/actions/bpf.json      | 16 +++++-----
 .../selftests/tc-testing/tdc_config.py        |  4 ++-
 4 files changed, 63 insertions(+), 9 deletions(-)
 create mode 100644 tools/testing/selftests/tc-testing/bpf/Makefile
 create mode 100644 tools/testing/selftests/tc-testing/bpf/action.c

diff --git a/tools/testing/selftests/tc-testing/bpf/Makefile b/tools/testing/selftests/tc-testing/bpf/Makefile
new file mode 100644
index 0000000000000..dc92eb271d9a1
--- /dev/null
+++ b/tools/testing/selftests/tc-testing/bpf/Makefile
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0
+
+APIDIR := ../../../../include/uapi
+TEST_GEN_FILES = action.o
+
+top_srcdir = ../../../../..
+include ../../lib.mk
+
+CLANG ?= clang
+LLC   ?= llc
+PROBE := $(shell $(LLC) -march=bpf -mcpu=probe -filetype=null /dev/null 2>&1)
+
+ifeq ($(PROBE),)
+  CPU ?= probe
+else
+  CPU ?= generic
+endif
+
+CLANG_SYS_INCLUDES := $(shell $(CLANG) -v -E - </dev/null 2>&1 \
+	| sed -n '/<...> search starts here:/,/End of search list./{ s| \(/.*\)|-idirafter \1|p }')
+
+CLANG_FLAGS = -I. -I$(APIDIR) \
+	      $(CLANG_SYS_INCLUDES) \
+	      -Wno-compare-distinct-pointer-types
+
+$(OUTPUT)/%.o: %.c
+	$(CLANG) $(CLANG_FLAGS) \
+		 -O2 -target bpf -emit-llvm -c $< -o - |      \
+	$(LLC) -march=bpf -mcpu=$(CPU) $(LLC_FLAGS) -filetype=obj -o $@
diff --git a/tools/testing/selftests/tc-testing/bpf/action.c b/tools/testing/selftests/tc-testing/bpf/action.c
new file mode 100644
index 0000000000000..c32b99b80e19e
--- /dev/null
+++ b/tools/testing/selftests/tc-testing/bpf/action.c
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0
+ * Copyright (c) 2018 Davide Caratti, Red Hat inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of version 2 of the GNU General Public
+ * License as published by the Free Software Foundation.
+ */
+
+#include <linux/bpf.h>
+#include <linux/pkt_cls.h>
+
+__attribute__((section("action-ok"),used)) int action_ok(struct __sk_buff *s)
+{
+	return TC_ACT_OK;
+}
+
+__attribute__((section("action-ko"),used)) int action_ko(struct __sk_buff *s)
+{
+	s->data = 0x0;
+	return TC_ACT_OK;
+}
+
+char _license[] __attribute__((section("license"),used)) = "GPL";
diff --git a/tools/testing/selftests/tc-testing/tc-tests/actions/bpf.json b/tools/testing/selftests/tc-testing/tc-tests/actions/bpf.json
index 6f289a49e5ecf..1a9b282dd0be2 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/actions/bpf.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/actions/bpf.json
@@ -55,7 +55,7 @@
             "bpf"
         ],
         "setup": [
-            "printf '#include <linux/bpf.h>\nchar l[] __attribute__((section(\"license\"),used))=\"GPL\"; __attribute__((section(\"action\"),used)) int m(struct __sk_buff *s) { return 2; }' | clang -O2 -x c -c - -target bpf -o _b.o",
+            "make -C bpf",
             [
                 "$TC action flush action bpf",
                 0,
@@ -63,14 +63,14 @@
                 255
             ]
         ],
-        "cmdUnderTest": "$TC action add action bpf object-file _b.o index 667",
+        "cmdUnderTest": "$TC action add action bpf object-file $EBPFDIR/action.o section action-ok index 667",
         "expExitCode": "0",
         "verifyCmd": "$TC action get action bpf index 667",
-        "matchPattern": "action order [0-9]*: bpf _b.o:\\[action\\] id [0-9]* tag 3b185187f1855c4c( jited)? default-action pipe.*index 667 ref",
+        "matchPattern": "action order [0-9]*: bpf action.o:\\[action-ok\\] id [0-9]* tag [0-9a-f]{16}( jited)? default-action pipe.*index 667 ref",
         "matchCount": "1",
         "teardown": [
             "$TC action flush action bpf",
-            "rm -f _b.o"
+            "make -C bpf clean"
         ]
     },
     {
@@ -81,7 +81,7 @@
             "bpf"
         ],
         "setup": [
-            "printf '#include <linux/bpf.h>\nchar l[] __attribute__((section(\"license\"),used))=\"GPL\"; __attribute__((section(\"action\"),used)) int m(struct __sk_buff *s) { s->data = 0x0; return 2; }' | clang -O2 -x c -c - -target bpf -o _c.o",
+            "make -C bpf",
             [
                 "$TC action flush action bpf",
                 0,
@@ -89,10 +89,10 @@
                 255
             ]
         ],
-        "cmdUnderTest": "$TC action add action bpf object-file _c.o index 667",
+        "cmdUnderTest": "$TC action add action bpf object-file $EBPFDIR/action.o section action-ko index 667",
         "expExitCode": "255",
         "verifyCmd": "$TC action get action bpf index 667",
-        "matchPattern": "action order [0-9]*: bpf _c.o:\\[action\\] id [0-9].*index 667 ref",
+        "matchPattern": "action order [0-9]*: bpf action.o:\\[action-ko\\] id [0-9].*index 667 ref",
         "matchCount": "0",
         "teardown": [
             [
@@ -101,7 +101,7 @@
                 1,
                 255
             ],
-            "rm -f _c.o"
+            "make -C bpf clean"
         ]
     },
     {
diff --git a/tools/testing/selftests/tc-testing/tdc_config.py b/tools/testing/selftests/tc-testing/tdc_config.py
index a023d0d62b25c..d651bc1501bdb 100644
--- a/tools/testing/selftests/tc-testing/tdc_config.py
+++ b/tools/testing/selftests/tc-testing/tdc_config.py
@@ -16,7 +16,9 @@ NAMES = {
           'DEV2': '',
           'BATCH_FILE': './batch.txt',
           # Name of the namespace to use
-          'NS': 'tcut'
+          'NS': 'tcut',
+          # Directory containing eBPF test programs
+          'EBPFDIR': './bpf'
         }
 
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-124-sashal%40kernel.org.
