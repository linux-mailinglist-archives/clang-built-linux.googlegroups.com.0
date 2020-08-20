Return-Path: <clang-built-linux+bncBDJJN2O66QEBB4W27L4QKGQEIJHIXUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B039624C40F
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 19:05:55 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id b127sf2945555ybh.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 10:05:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597943154; cv=pass;
        d=google.com; s=arc-20160816;
        b=0psFuHFf2zCEkdRavq/CFVjubmhS6j/e7/+E97L/si3w9iVIbVgJT96QRNTM6NZMSv
         3L5bc0qV9nEVORDCwLVTxmwXF/N1a8sBskXu35IIJToeUPqwF+o+Nng41ZhWndP7gabv
         2KiL7Tp0IlT4gGhu89U/nZe95en5riM2hRguEtXtKAddOeE8cyPZ3im2g1M+YtBg9ENi
         zE9i4nmd0YJjhCpewieg22pRebVT96EB3Ysln+/JPhfdQWHSeOjna74eTR22+tkSf+UQ
         l+DBzlBAV11GCYT28CYngM4eyhDe6bq2k29RkaXv4nYK8yGizsjCfahAn316RvI/9V6o
         NVJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=636rFdnqGIkVgYKI1LmmUNzZlcOVtbHtxPrJb4TeAMw=;
        b=0qFO+faJNuM4m2eoIlAslTba8map8tbVj7T3ZZasWsCt1WAN5gZu8APa7UoCn5B1QH
         oS2T5sE4GVYhY441/lWd9nCT42kocAXIhG+jXUdpVUwVZv8XciYHyZNrj6FPlZeMg5iK
         78EwB0URv9azlk9OSfvwQmfNuN0NVgDzlW4K/Z5YYtvrQJwuNm6lp/kcMmHhgK81r39j
         juzBYqUDNO5G72PgRZFy+RZWZenskkABy1yA6ozK3ufc3Rarujy5/Vd4YtbNaGsw8PCo
         T8fqIt51xxi/+cNAD85BGPGu63NvEXaX0Dn0QYy20wjCnBOygoZcfy1rgSysJ4M/KVnB
         8M2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IQxhLKQz;
       spf=pass (google.com: domain of 3ca0-xwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ca0-XwkKAMYowqzzqxxAs00sxq.o0y@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=636rFdnqGIkVgYKI1LmmUNzZlcOVtbHtxPrJb4TeAMw=;
        b=DRtEllBJzWmcQONGeEu0r7j8AGWB3o/5Nn2yuTSFe1ncCjvSezrb/ASracSHbrfun9
         JNGZmXGolbtydXI3n+TRq5bh4Aooa9kOWkTKmDXRnoI6sZHuNvafAn5RX2KLIw5l20Np
         gnLj2rNGi1Eu5HVxY16Irv8H/uims3lCs0wswLM5qJwCWOU4biXvcOrJAagjH1PZjxky
         R9ips/Xfzct8GY9QvIbDgBuJx06aXcKHMw1PaiMxjQtb2oe5h2w03a01gq6sUaS9EVkA
         50Q61S9rrKOHOB9WgJldJqGulUkw9O421P6MHcitc4qEKYz4YL3LwHhZHi0NgplfQnCw
         zweQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=636rFdnqGIkVgYKI1LmmUNzZlcOVtbHtxPrJb4TeAMw=;
        b=i2Yi1V9d/7kjKZFH5bJ7aD/LjxgkEbaefvFCUH8kKgfchF5G1CsQtuf1xAuqzxqfQB
         jNEguRq9PKiQoJf+Rnf+M/zkpr73TdU5gACUfKM4OVUPh6A4eJl73s8dHLgFamnPPsq7
         32wSQqJ9xjzMIM7pO8i2pW8lHkFBMdpZW/KYNoomrXwIPjvNMwz/nKAaNeK2stc+9cAu
         bqsBNrGV9C85KxqCU2+EpSjsYR3VcUmL5/+8Q5oX399t+W6+Q+MpSNsYXzW57yJBn42n
         ELUk9DreZxZFzueW24/fJmb+IgNTibo+OmFTu6BY8Ue0axvuZZHdOdNcMfsaXoW4SUY6
         h6tg==
X-Gm-Message-State: AOAM532Ii4lV7q6ODYrg9BbdJlLcYnyKRVSsMY0ZDz3sEKxA5h9+iksR
	CKh9HvQQXivZlhwjc+b1Jdk=
X-Google-Smtp-Source: ABdhPJwjERif8fFLkFpRPNi2kkqRfB8TGC6JQQzSXbwQ8q4zNVqwcOZrB2XyVXJFA+q+A9n+sIKChw==
X-Received: by 2002:a25:d84a:: with SMTP id p71mr6447107ybg.347.1597943154722;
        Thu, 20 Aug 2020 10:05:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6cc1:: with SMTP id h184ls1254015ybc.4.gmail; Thu, 20
 Aug 2020 10:05:54 -0700 (PDT)
X-Received: by 2002:a25:680e:: with SMTP id d14mr6084351ybc.15.1597943154280;
        Thu, 20 Aug 2020 10:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597943154; cv=none;
        d=google.com; s=arc-20160816;
        b=A/oX6cPnDDwa7MD8ejfzpCa5bkVAcgsXig0drwq5Td2H2mEFlNRysJtBXnY1pLn94w
         kwI5jbNDORqu4FooyVQBO/Xde193D0ffiwFyTkdfglb3tPfgqHyifZXCiEvycnu8OYtn
         hCj86KWoLSU6pWEBNfmW7rm9Ysnv41+NRmmjD+ZiZScnUV9dLinJl8mTuTfndw62nEQj
         9PPT8hMEK0kzuiwvU8HX94OvfzgVm3dVjOLg4MppGT+PRIiclW5wfLwmM3xp/+AiPXxX
         m0ysp4DmYqvhUHagggSnofYViS9cVTKhKh1dbCO3b6GYz+eJUseYP0kJjFqJ+K0Py151
         WLTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=TSLmEPwlFccaRVuUrhKv3FaWDdmO/JVWcm6IHHbjArg=;
        b=w5l6OrMjasXv859TavmhiNwU3tjyS/hfQPxjlSmFFOInY1McVU9iqh0Xyc52JlE1r7
         8OIagcU4QO1aVe5V3Wp5wCCe4v5pWYwGDmcqV1f7dAo/goj4LLl6GrwQi2oFszeZX+IU
         QipTxRDr2HLj/adzzHvCcvBw6+dmsFzFmYmDsRA3XehVsYQ1grZNkWGdXbuMOOvNOS29
         eRRudQKaT2a0F4NbDOPEL3u+4FjLXH/amZMXnowMXG46NIO3CUh8hl/KLJef0ojvR4sN
         pG52hVjKeJilcizotEzt8w9jdMqtoi0qZ8KR2rCTyXk3Dy4zEuQQsw/WzdU2L5VEm9hT
         3Tew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IQxhLKQz;
       spf=pass (google.com: domain of 3ca0-xwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ca0-XwkKAMYowqzzqxxAs00sxq.o0y@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id i144si128401yba.4.2020.08.20.10.05.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 10:05:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ca0-xwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id c4so1794029qvq.15
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 10:05:54 -0700 (PDT)
Sender: "ckennelly via sendgmr" <ckennelly@ckennelly28.nyc.corp.google.com>
X-Received: from ckennelly28.nyc.corp.google.com ([2620:0:1003:1003:3e52:82ff:fe5a:a91a])
 (user=ckennelly job=sendgmr) by 2002:a05:6214:108a:: with SMTP id
 o10mr3962299qvr.239.1597943153890; Thu, 20 Aug 2020 10:05:53 -0700 (PDT)
Date: Thu, 20 Aug 2020 13:05:41 -0400
In-Reply-To: <20200820170541.1132271-1-ckennelly@google.com>
Message-Id: <20200820170541.1132271-3-ckennelly@google.com>
Mime-Version: 1.0
References: <20200820170541.1132271-1-ckennelly@google.com>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v3 2/2] Add self-test for verifying load alignment.
From: "'Chris Kennelly' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Song Liu <songliubraving@fb.com>
Cc: David Rientjes <rientjes@google.com>, Ian Rogers <irogers@google.com>, 
	Hugh Dickens <hughd@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Suren Baghdasaryan <surenb@google.com>, Sandeep Patil <sspatil@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Kennelly <ckennelly@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ckennelly@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IQxhLKQz;       spf=pass
 (google.com: domain of 3ca0-xwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ca0-XwkKAMYowqzzqxxAs00sxq.o0y@flex--ckennelly.bounces.google.com;
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
index 344a99c6da1b7..9e2f00343f15f 100644
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
index 0a13b110c1e66..cf69b2fcce59e 100644
--- a/tools/testing/selftests/exec/Makefile
+++ b/tools/testing/selftests/exec/Makefile
@@ -4,7 +4,7 @@ CFLAGS += -Wno-nonnull
 CFLAGS += -D_GNU_SOURCE
 
 TEST_PROGS := binfmt_script non-regular
-TEST_GEN_PROGS := execveat
+TEST_GEN_PROGS := execveat load_address_4096 load_address_2097152 load_address_16777216
 TEST_GEN_FILES := execveat.symlink execveat.denatured script subdir pipe
 # Makefile is a run-time dependency, since it's accessed by the execveat test
 TEST_FILES := Makefile
@@ -27,4 +27,9 @@ $(OUTPUT)/execveat.symlink: $(OUTPUT)/execveat
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
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820170541.1132271-3-ckennelly%40google.com.
