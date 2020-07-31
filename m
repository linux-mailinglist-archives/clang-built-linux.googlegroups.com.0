Return-Path: <clang-built-linux+bncBDJJN2O66QEBB7WJSH4QKGQEG67BWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7DE234B2E
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 20:37:51 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id m1sf9568541vkl.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 11:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596220670; cv=pass;
        d=google.com; s=arc-20160816;
        b=mfLmNn/EySNW6wFBN3zaD9NiDCuDjfPSFA9klhm23E/tLHGZf9Iq+0PFnrgO/+SInX
         t9L8wlkBd4MktWH2Jzmj1crD1sFSUoieVieaOk3yqlPfQlAeTLE+jDeRezm+3qB+PTgc
         f5B0nKq2lqrKOO/w/RuTdcZgxTvuMl8JF1n0L8lpFIANgtWuK88fo3LteUrbXsnpiFg1
         qdOBf0GWyYAkfAhIwFaElPcovV9+VkCeaIMDRtElJlfDnnlbJt4JSIIZNC4SYlUDy92F
         9DePI4pUG7nWHYk5YkvVUgH+9/PhoaWOqwRTzAVdWwnFdSoPmfy4t3frBlTgS0lT04c/
         va/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=UhFbK/WexmHDfKFbJQQ9d/GULMCCpNoxyCdiXjGVbFc=;
        b=U89CqUYFsuNSh+qIq4yym/VTQq363P4USGvsC3tM+ON9nCa9ckLJbLBW7D719ZmhXl
         NDGKZeXeM0p/jN/RaqxIXsT+74Td4wYKA4N8k1FPfA+p+iIEb2ES+nJydhg30OORzhrN
         t8WZ6rxtdhQaPv9qcsB9U7kz/5L0c6Ds0zSKeN8W8Sj3k+bFYv3Ku4LOMSxulDQbGe6e
         N+GOpAO/u3W2rBw4QiJl/xlEAabnrBa6++y3oDvAh0ym0uzEk17XxgElrO8AvYhUluOy
         wDdGPRMHuOD15MwN8K1bNJEjNackM1oB992rmFjv3Siq3P1sp7lVShFW0BWP9hUNENgA
         jyAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kSNBHuhv;
       spf=pass (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_WQkXwkKAFg2A4DD4BBO6EE6B4.2EC@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UhFbK/WexmHDfKFbJQQ9d/GULMCCpNoxyCdiXjGVbFc=;
        b=qxUIce71CCaugd0XFpadS9q/s4ltg+3z0S4KIedl0QZg4Oo6xou9nTie/AwGHHPiEd
         oEXvZDalXVQbotyBsjhDy83TmO4D8/AB2iZmcu9gCIHILtPjRU4J9jJBb65Fw2aknoz6
         vnfpJXrGBE2Py6ckVt0m0EaQvwsWrxRjL+AllmJQDZ9oACeG0Rq4wx7yj183+BxReDBM
         jyg7Tw+q6u6gJEC/jsG91oArFZ0dS1x3rH3Ik9rFu/kwOtwvghgBITVsZNhJEzYBTgg8
         z00uEK8Mx6BpqyG5HGMk2/QGM1ls2KpPSX98gczJ0jSWMZ8lzmGq38EscNBrE02CgyUJ
         Zfyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UhFbK/WexmHDfKFbJQQ9d/GULMCCpNoxyCdiXjGVbFc=;
        b=oGxo0nj7IqP+/IT8CIBqfGtxHhp1nCHMFZvvsro9B78r0iLoiSBGLx8xaXtZfdOdNV
         1uJA99XFqUbZDdihGx5j/9eo8R7H5Oc3vKwDlbKLTJYzkCW/E39oDZtOVs+eQRjSoVhM
         u0EeLTE9OaUwUovF/DM8vuIkyaTND0odpyYOjYPJRUtvG0PYCAsaC0GVQPZt4UQnv3M8
         pLgAoHGyq1JTzths0AVsmEXXv2EGEZPoQyWnZFoLdeoBrp6NdAWiZgDud0XDQAVKBWv6
         aX/qywRgAGD7frfshtLgF+piXdUU0ijfcAAr730fuI4AxdRjtobSc5WQhJNVhM9Le+ic
         KOXg==
X-Gm-Message-State: AOAM531hzBng6tT20fzl1in6MKY1g1rPS/ELqa1XNtJWU5+/4RpwI6+U
	9hLxFEzSk153P0PnzLZjWaY=
X-Google-Smtp-Source: ABdhPJxNH/HcDz4JuC3hib2PNz/I+mUR3SAvjtVDgUWcjz2k9X56rjXP/yz70mOexJwRoVzcJ5A1Pg==
X-Received: by 2002:a05:6102:21b4:: with SMTP id i20mr4646071vsb.164.1596220670640;
        Fri, 31 Jul 2020 11:37:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf4a:: with SMTP id f10ls576853vsm.3.gmail; Fri, 31 Jul
 2020 11:37:50 -0700 (PDT)
X-Received: by 2002:a05:6102:839:: with SMTP id k25mr3986651vsb.109.1596220670245;
        Fri, 31 Jul 2020 11:37:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596220670; cv=none;
        d=google.com; s=arc-20160816;
        b=radBSMROyq5vyUmTOF2Lv9twncT+meb8wVpPCLOiCUloRXE0NoeJNX2W7umQWemZgU
         uqRrBGz1/XyJ2aQo68CbtHYElpkpiy9NzndliFvqU5P4NY/OJPrNBTMJEkmLock7xASi
         BxFiDoWKP80MfcscGxZcB/Rxg99DpMt9/V3ByTZIYClsE0KFkw9FYDEtC0vAocmxq71b
         Ec30f/BGPnNUS8gpDHNew/3SK2BoW6VdKLfEzmwDjaIiIUTDWY3at5eJpj89JFHqib1f
         tjS2rPUbvEWg52YB/R27CfMIs6xcq4patBNhl6VEWF/7XRR3BkWd3iYWeI1kI3IYnWjk
         lDWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5v86mhTzM4SZYwpUDzMMNrk+SN/FmVXE8SoMYa53F6Y=;
        b=OE/bynoQJuMo8KBK2bGeMHZMoJQsRjq0mMteTtdyMxlRWRRpI8Vz19dCyinmZP1Rcc
         gEku7jetZ3WsKMHfrz3fhL/eZvih4wLe0AgUCxn9tq5f2LG/BYoCeDZgmKv9bGF7lihq
         piyBocMaCmyNKCszTsEy4DgziEOr6Mw7fG4owe4NQFaFgoUw3ygn5CtmVmaG9yOtHCEF
         489nEwtGmG+0/c5FNDSKIn+qZoa16m5mFQ+oYE9+oHVSgMF7wEMRSeZsotCKCRzoc+rT
         L2MYZMsrqvbrsxVubNWV6g785appCH7Kx+WxVIEtdX20hJKGeHSkY/NCNssPDJ2UU4/8
         jdRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kSNBHuhv;
       spf=pass (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_WQkXwkKAFg2A4DD4BBO6EE6B4.2EC@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id g19si482142uab.1.2020.07.31.11.37.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 11:37:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id l10so10670538qvw.22
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 11:37:50 -0700 (PDT)
X-Received: by 2002:a0c:ec86:: with SMTP id u6mr5351729qvo.58.1596220669859;
 Fri, 31 Jul 2020 11:37:49 -0700 (PDT)
Date: Fri, 31 Jul 2020 14:37:44 -0400
In-Reply-To: <20200731183745.1669355-1-ckennelly@google.com>
Message-Id: <20200731183745.1669355-3-ckennelly@google.com>
Mime-Version: 1.0
References: <20200731183745.1669355-1-ckennelly@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 2/2 v2] Add self-test for verifying load alignment.
From: "'Chris Kennelly' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Song Liu <songliubraving@fb.com>
Cc: David Rientjes <rientjes@google.com>, Ian Rogers <irogers@google.com>, 
	Hugh Dickens <hughd@google.com>, Andrew Morton <akpm@google.com>, 
	Suren Baghdasaryan <surenb@google.com>, Sandeep Patil <sspatil@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Kennelly <ckennelly@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ckennelly@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kSNBHuhv;       spf=pass
 (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3_WQkXwkKAFg2A4DD4BBO6EE6B4.2EC@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Chris Kennelly <ckennelly@google.com>
Reply-To: Chris Kennelly <ckennelly@google.com>
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

This produces a PIE binary with a variety of p_align requirements,
suitable for verifying that the load address meets that alignment
requirement.

Signed-off-by: Chris Kennelly <ckennelly@google.com>
---
 tools/testing/selftests/exec/.gitignore     |  1 +
 tools/testing/selftests/exec/Makefile       |  9 ++-
 tools/testing/selftests/exec/load_address.c | 68 +++++++++++++++++++++
 3 files changed, 76 insertions(+), 2 deletions(-)
 create mode 100644 tools/testing/selftests/exec/load_address.c

diff --git a/tools/testing/selftests/exec/.gitignore b/tools/testing/selftests/exec/.gitignore
index 94b02a18f230b..80f57881e9146 100644
--- a/tools/testing/selftests/exec/.gitignore
+++ b/tools/testing/selftests/exec/.gitignore
@@ -7,6 +7,7 @@ execveat.moved
 execveat.path.ephemeral
 execveat.ephemeral
 execveat.denatured
+/load_address_*
 /recursion-depth
 xxxxxxxx*
 pipe
diff --git a/tools/testing/selftests/exec/Makefile b/tools/testing/selftests/exec/Makefile
index 4453b8f8def37..81cd5d9860629 100644
--- a/tools/testing/selftests/exec/Makefile
+++ b/tools/testing/selftests/exec/Makefile
@@ -4,7 +4,7 @@ CFLAGS += -Wno-nonnull
 CFLAGS += -D_GNU_SOURCE
 
 TEST_PROGS := binfmt_script
-TEST_GEN_PROGS := execveat
+TEST_GEN_PROGS := execveat load_address_4096 load_address_2097152 load_address_16777216
 TEST_GEN_FILES := execveat.symlink execveat.denatured script subdir pipe
 # Makefile is a run-time dependency, since it's accessed by the execveat test
 TEST_FILES := Makefile
@@ -26,4 +26,9 @@ $(OUTPUT)/execveat.symlink: $(OUTPUT)/execveat
 $(OUTPUT)/execveat.denatured: $(OUTPUT)/execveat
 	cp $< $@
 	chmod -x $@
-
+$(OUTPUT)/load_address_4096: load_address.c
+	$(CC) $(CFLAGS) $(LDFLAGS) -Wl,-z,max-page-size=0x1000 -pie $< -o $@
+$(OUTPUT)/load_address_2097152: load_address.c
+	$(CC) $(CFLAGS) $(LDFLAGS) -Wl,-z,max-page-size=0x200000 -pie $< -o $@
+$(OUTPUT)/load_address_16777216: load_address.c
+	$(CC) $(CFLAGS) $(LDFLAGS) -Wl,-z,max-page-size=0x1000000 -pie $< -o $@
diff --git a/tools/testing/selftests/exec/load_address.c b/tools/testing/selftests/exec/load_address.c
new file mode 100644
index 0000000000000..d487c2f6a6150
--- /dev/null
+++ b/tools/testing/selftests/exec/load_address.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#ifndef _GNU_SOURCE
+#define _GNU_SOURCE
+#endif
+#include <link.h>
+#include <stdio.h>
+#include <stdlib.h>
+
+struct Statistics {
+	unsigned long long load_address;
+	unsigned long long alignment;
+};
+
+int ExtractStatistics(struct dl_phdr_info *info, size_t size, void *data)
+{
+	struct Statistics *stats = (struct Statistics *) data;
+	int i;
+
+	if (info->dlpi_name != NULL && info->dlpi_name[0] != '\0') {
+		// Ignore headers from other than the executable.
+		return 2;
+	}
+
+	stats->load_address = (unsigned long long) info->dlpi_addr;
+	stats->alignment = 0;
+
+	for (i = 0; i < info->dlpi_phnum; i++) {
+		if (info->dlpi_phdr[i].p_type != PT_LOAD)
+			continue;
+
+		if (info->dlpi_phdr[i].p_align > stats->alignment)
+			stats->alignment = info->dlpi_phdr[i].p_align;
+	}
+
+	return 1;  // Terminate dl_iterate_phdr.
+}
+
+int main(int argc, char **argv)
+{
+	struct Statistics extracted;
+	unsigned long long misalign;
+	int ret;
+
+	ret = dl_iterate_phdr(ExtractStatistics, &extracted);
+	if (ret != 1) {
+		fprintf(stderr, "FAILED\n");
+		return 1;
+	}
+
+	if (extracted.alignment == 0) {
+		fprintf(stderr, "No alignment found\n");
+		return 1;
+	} else if (extracted.alignment & (extracted.alignment - 1)) {
+		fprintf(stderr, "Alignment is not a power of 2\n");
+		return 1;
+	}
+
+	misalign = extracted.load_address & (extracted.alignment - 1);
+	if (misalign) {
+		printf("alignment = %llu, load_address = %llu\n",
+			extracted.alignment, extracted.load_address);
+		fprintf(stderr, "FAILED\n");
+		return 1;
+	}
+
+	fprintf(stderr, "PASS\n");
+	return 0;
+}
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731183745.1669355-3-ckennelly%40google.com.
