Return-Path: <clang-built-linux+bncBDJJN2O66QEBBEFWQH5AKGQEEQBZIIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E49524E3EF
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:38:58 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id gl22sf1837990pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:38:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598053137; cv=pass;
        d=google.com; s=arc-20160816;
        b=DK6Y9TLj46pUuW/AS5xDHRRCHPy4BdO5FIS4dQZ6DCrzx1R7lZbi3Qlz6YHyI3q6kM
         Yi7uiK35nt0L8u6DUKrtYBinPCk/kBqeUvT6D9MBc5ZQrDyR/otF8H4xz3t/i2DyXAf6
         +LMcev/VyL166t4HpJMsNT/ZRyyq0uwEnUyXv+Nsb52oCK8cMojJElvHS9yFj9oW5LrZ
         KS+0y3I51H9Lv4kwebXEPLeX09u6h06q/O/O11k/Ydu6GjjPZmokoueqxJmkFPW/Mun+
         HNaRshk2LS9rTrUGZE7DKkEXRgh55IPTknj3jHDnpKqQFCVlOII5FyiPMVewvMn4rolf
         Kl8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=QEMuq4ossSjNhJg0o4IgMTCGmkBaObCQnsfvasTCUcQ=;
        b=UO8aT8uNskISwnT5TQuvq4Y0flt/uTQuyZmJcAvTLnRUDqhP0Rzm7ThNR83/I71skh
         CChiKfV82H64iJKSKUEv7p/QOn61RLR5S4Lj5YW0t2vw8bVBJuIN8nb5AjWk3Zejwc7g
         fYUJzQeP1mUh0AyGlW9xE5rFq/1Ji+7Z4hK6+WiKYl9JVMGcHja1Z0KT5BN8gmaYg6zB
         jviZftHjDas5n2MKLwAfLvqXvx0/XGmPjLDU0G/FPwlb14H6JZtyPxBdzekK9c12DhFi
         G8Z0Y+DXbNBDGS+jAy8PGrg/VkQtNY/TjiRBulNzDPvHbbNvAU9wTY1OfoB5mOytYMAe
         vBQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=julErzN+;
       spf=pass (google.com: domain of 3d1taxwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3D1tAXwkKAMYowqzzqxxAs00sxq.o0y@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QEMuq4ossSjNhJg0o4IgMTCGmkBaObCQnsfvasTCUcQ=;
        b=f/ljdTOte1CsC6JYdi9PwcNnR1/EVFlWrL+AQrNNi/5z/cnDWr/HIsxNZWq4P9zBG6
         8oXldswNonQIdeFm+vb1s2eowNJffpk9VOYkerRsGMa96Q4mD+z0sSjKCCLdS/Tl21EE
         BtpX+njNp4dgFi54I/w8k+AVjZTi7enlzh3PRs5DeqceYp/+XcT6bwTNyLZ9zJi2zQ08
         TbqW1rX131Nt/X/f6YvPu2yOdVRY+KzBMgUyM8fiHe1QpnK6pYUimhUczOIQMIGOZMW9
         BXvYrDky2LRQEx2yM8IE1jz+A24qD3n1oHWvn/8IvTd/bSPLyPBlnBqgfv7+1TGHFQIg
         EXDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QEMuq4ossSjNhJg0o4IgMTCGmkBaObCQnsfvasTCUcQ=;
        b=IMsjE1R9+sP5UyirVDN6x5ODL8OM5GYcu4ZmftZsn1ZLsfFy1fwHHgWI0KvbFjvJSI
         8zr7UKWzj8yleZjvHMaLiST3+h2EHGofFdIyS7HRnVfIjop/fro0/YlfCGdQeuKGhaN7
         /iJrFo8ste5SYXJZvykdcLOFSx9aK+ccfRIWRU6Lzq+qh0SUtpCnaopoEAgi/kP/UZyY
         VeBnDB93KO98POrXpMef7vh0j9GWYUZqDRDB2iGAGfqGLAT9ZVZ/U5Wop8vNmoMKXA0I
         xBOYh5appCuqBomxTZSaD8/c6ainGnXe65kUuvzn9cbLj3J8Q9m95ZkqmOnr5/iHZyYY
         0YRw==
X-Gm-Message-State: AOAM532rqkoHNrGQbI1ijW6KqbAEG+ktkE8YnUpmf53Mynte9DQgzvfp
	0tYYH16GhoG6FzcRcv344Yc=
X-Google-Smtp-Source: ABdhPJxPvWjq2oLcyzDA96syBJm37mWeNLPfQcKpjyWFTptS7FO6VRF8a4M23SXA2L5n9IP//Y9Amg==
X-Received: by 2002:a17:902:9307:: with SMTP id bc7mr4352338plb.213.1598053136966;
        Fri, 21 Aug 2020 16:38:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d04b:: with SMTP id s11ls1104606pgi.1.gmail; Fri, 21 Aug
 2020 16:38:56 -0700 (PDT)
X-Received: by 2002:a05:6a00:14c4:: with SMTP id w4mr4509999pfu.20.1598053136495;
        Fri, 21 Aug 2020 16:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598053136; cv=none;
        d=google.com; s=arc-20160816;
        b=IpWcrKgQR5OI7E0NKlZ71b8ju8+hmU/cosTw3BycWxLRaRc/wLWVsACRmmSU1aLKlh
         T05wTYWAasSS4X4Vx39BFfALBd1hjtj/fnobhc48Sv15Dbs7AjBNV18Zjc7C7Negec20
         nchG/9oy/EItdOZIXKR0U4m88SuqPrLxYZgdWVKbXhAXIe0u+RYLRHDUNTSqyN04c1iT
         kVrGRkWZvpH6XOIAkfN7oS6+U1atNXqa0e3EHCF3zYHDh19bcOKoxkNn9if0SjYG66tZ
         X/bjhGYlVm5Klg1q+QUfpMOi1NQxcYpchp4d4TwR+7xf1uRr8s+d1+jXbdjF9hOngQZi
         gAqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=TSLmEPwlFccaRVuUrhKv3FaWDdmO/JVWcm6IHHbjArg=;
        b=HCi/xfeROp5Kq4lGhi7nlipgQ9R5fLKyZft3/U6pbpCzLxLTa4bnYZkSIJ5mg4xF/6
         MYPDPZzxX+cm16JhfkYUc6NO/dhASc93Tzv/n8nAA5GeAxRxJCuZD9Ij7F3J3aTxWYnJ
         cBxS+sdW/36Y/ecEB9DuOMkPtFxCNCBzqRBsJn3e+LOml0Q7ow56Q4qrFpj8kTMqfi5z
         rt6h35BNt5+57XVZpQAzx//CV0J1Tb7U0C6m/3Rbm4jyLHgowDmF3D1I3UrgzieiFWOX
         melH9w8SyP/NeCTexcUr16qMGEpR0YKLIVJTKEWcR6xk0+X0JGs8Hw9fLl21HiTuTa2C
         JlFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=julErzN+;
       spf=pass (google.com: domain of 3d1taxwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3D1tAXwkKAMYowqzzqxxAs00sxq.o0y@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id 91si133645pjz.1.2020.08.21.16.38.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 16:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3d1taxwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id d131so2450289qke.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 16:38:56 -0700 (PDT)
Sender: "ckennelly via sendgmr" <ckennelly@ckennelly28.nyc.corp.google.com>
X-Received: from ckennelly28.nyc.corp.google.com ([2620:0:1003:1003:3e52:82ff:fe5a:a91a])
 (user=ckennelly job=sendgmr) by 2002:a05:6214:d6c:: with SMTP id
 12mr4515046qvs.208.1598053135628; Fri, 21 Aug 2020 16:38:55 -0700 (PDT)
Date: Fri, 21 Aug 2020 19:38:48 -0400
In-Reply-To: <20200821233848.3904680-1-ckennelly@google.com>
Message-Id: <20200821233848.3904680-3-ckennelly@google.com>
Mime-Version: 1.0
References: <20200821233848.3904680-1-ckennelly@google.com>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v4 2/2] Add self-test for verifying load alignment.
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
 header.i=@google.com header.s=20161025 header.b=julErzN+;       spf=pass
 (google.com: domain of 3d1taxwkkamyowqzzqxxas00sxq.o0y@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3D1tAXwkKAMYowqzzqxxAs00sxq.o0y@flex--ckennelly.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821233848.3904680-3-ckennelly%40google.com.
