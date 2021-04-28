Return-Path: <clang-built-linux+bncBCI27E5CQECRBHPTU2CAMGQE2GGJWCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9D036DF9A
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:38:06 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id z2-20020a9d62c20000b02902a51ba083a5sf6070434otk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:38:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619638685; cv=pass;
        d=google.com; s=arc-20160816;
        b=fhVNa9sZZJLCTGGpyMelrRDNEKtFdtF9QQybXn0hHtaguvakXtd09xFEDy9QYfvK4A
         1062hjqWWTz3MyjFk15T7L/BHHoq/Mcfr1TSo21Vv1qH0OpnzPNtPrDn/XUmU5b9IkBu
         VHgEIqpsqcyQsty/TifWXMqjdy3C/wCvJBJPIhC+DUbDSz6zOdRdTsftiRwI8+RRx9xb
         1g2C85iFKHnTC0pNUf8olj44ehFGqc7/KI6P5qxg3NnfHIrawXvYW6dSg2atct9jQdjf
         sJMhmuvjGDtYD6ad/ATLua9LXeQSys3pgpIVr19FLu9Ia9OMPCc/dGXTvLbSXnyBae0F
         JUiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/2N9tHoAzKkIaiZJ1Bi1K8Riru6rUvUeA4+f/rEiwW8=;
        b=drjmtenB3ifAPpSS6KtT4m5BF1FeEjCszEbGIOxhcz2U4BTUzWqr6Rgrzw0+WojueQ
         /KV37jlEuvXYzxCU8rpGSzoGV/zoFCyPhydb1h7T5KquZg4olul3CT4xuqw0fSFBIvcl
         +7n1JMmXz2lio1OxuJ/WsFfUBEEsrpFC7E11trTYsUjcGBgID7Feq/NQJWdxsAjIhEuS
         qQ/zTZ/I7p3gH1jOS78fpNCMhGfAaoXz4Tqw8aUoAox9ieZydD0Ea1DI1mnwI+qqhvf6
         CI9P3CGGa3PIj9OuB6mAeshr/lEojVjBO6W94eGOOA7JryxkmGkpzFFImDrrxFZ4X0CI
         debw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qojwyUnM;
       spf=pass (google.com: domain of 3nlmjyagkeueulfdunrojrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3nLmJYAgKEUEulfdunrojrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/2N9tHoAzKkIaiZJ1Bi1K8Riru6rUvUeA4+f/rEiwW8=;
        b=D6O6d3DllnLEyyHA5Lv20m2KTWykEpRFySQkqyTz4JM3oNSIsf/728c9RIhpLGmiWs
         xZqhpRsTmFIlLFMlR5D+7gtVkiYBkDRiMX9flj/UonXeKFXh0TSOV0QiLid0l4XpkUWA
         go2fn10nWWp5l2K834I8NBS5F+tO/hjalW/I1Q4T4K0e0MvWWNkMju4Q+5rpqM7fjcI+
         cg0I2ukOPSuYgz4zO6L5dtpWeC5Q796jfhgOWYeNlNZHARv6ZyKS2ZT6jrzUsBVoUz+D
         W1xZb9C4Ui+Lf/aRcXq2M/Hii8DAAzBMHWBI9xWReubTT83n+qnJ0rMRtBXPN/gd3y01
         CArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/2N9tHoAzKkIaiZJ1Bi1K8Riru6rUvUeA4+f/rEiwW8=;
        b=nFMuhwjchrBw1v9dnd74lqrFaIXmkmgAD3dCBtYnNMeXk96vz+eLsixSJuY1sWnjH+
         cM9bQqR1LmzGezpdKL15yIX7rlZHaNWKEOdY5dzxd+I5XLwru9ifI1AGn1ncy57sXzmw
         bNAzDaUe6u8po9sXEJWotJ9Aw7UfHh6UNyJ5lYI49TGoLKmG4cp8eDGB9Nm086yXWuEH
         ht7bmqOFdbiCtl+gIwiofhBk54eO0r5XeMJzyOvXqCyBV4RS/vR0DgH4NAjJkvl6MctX
         QWikpfRiyBR9wyVfZXzbaiji8XzP/m2nZLBkr6Db4A+A4Tx3/QOiT405mGmeJSGb4qtX
         8ofw==
X-Gm-Message-State: AOAM530lpyd7zZax0Z8DN4Tqo1em2im6aOGKSteZ0wXzb6exj6UoPReK
	6Bias50egHU60MOtT6FYn7w=
X-Google-Smtp-Source: ABdhPJy63mnqkhQJyqbIBZWJyzfDxFyWjJFWE2RfMtFSwYhovxZ4jE7XRxkyFC2onxLhdVT77JZSrw==
X-Received: by 2002:a54:4d9b:: with SMTP id y27mr6849178oix.145.1619638685445;
        Wed, 28 Apr 2021 12:38:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10ce:: with SMTP id s14ls235986ois.0.gmail; Wed, 28
 Apr 2021 12:38:05 -0700 (PDT)
X-Received: by 2002:aca:488b:: with SMTP id v133mr3793331oia.19.1619638685108;
        Wed, 28 Apr 2021 12:38:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619638685; cv=none;
        d=google.com; s=arc-20160816;
        b=uzeLcQQGr5rOlWD+mfJmRNyEOQnElgh4x1lULIH3/Z+uIXB4sY7sZxofPufLhhi4RL
         kxfYqxJDdnthidcCJyTdXcLorZwjn90qnyiFHxMnSkqx05D1e4PHFA0F0/GXYYvK8Oqj
         2G9hgxsIvPeXO+4tm31+i8qJfnsDielCo9EUGxXKpX877nFhFER2WZvmpH+mmoFgFwI+
         Vb17XRFG3/YEYpsL+mlxhO9DyElz+WlPnVHOvCrV/6XAjVy2UAOrJWMGEtlYdgb3D6ue
         DczCKFXLSFlqjsZROlv0M9NZ8uqnvJGwKUFfFs0sUFz4eCdnR7l2eK7bABhLm4D1YciL
         GhEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3EmL6xt5jVjqc/fFRGG9Bp/HY5j+2f9o1zD7J8DnnPw=;
        b=gFacU3wn1BhrDpPqysE+izgHpaMgvNQgO9mvSK2Mb6rhpCCWc2IQM/+bxbE7LiOc5m
         7/0nLk/ml3W5KHYmSC9WcDwzF68QYAa7YWSypEXnwxN1Q83Ni+wocfBY9I0fPNCs09ar
         2xzy7Kl98Up81Rl7EnwAO0XlM6JZcRb4EUTdvISuw+mEaU65P9wXmQT0mZGGghGsiCv3
         sK8RSZ+ekI8Pe6uFnxoa+md8u88Bl1N5HL2p2g8J+ym7wMuZWvjab3lLXb2psWCmjnpK
         EhxmgBUL2VDWTxsDqJsLVCUNhPm1ajvxC38fqPMWZmSkK3FHrAqCjVEulasKmAT7po5r
         ZjQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qojwyUnM;
       spf=pass (google.com: domain of 3nlmjyagkeueulfdunrojrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3nLmJYAgKEUEulfdunrojrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id t78si68127oif.5.2021.04.28.12.38.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:38:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nlmjyagkeueulfdunrojrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id 70-20020a170902044cb02900ed8431f861so562792ple.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:38:05 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a17:902:8d8b:b029:ed:64bb:db81 with SMTP
 id v11-20020a1709028d8bb02900ed64bbdb81mr8252681plo.53.1619638684396; Wed, 28
 Apr 2021 12:38:04 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:37:51 -0700
In-Reply-To: <20210428193756.2110517-1-ricarkol@google.com>
Message-Id: <20210428193756.2110517-2-ricarkol@google.com>
Mime-Version: 1.0
References: <20210428193756.2110517-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
Subject: [PATCH v2 1/6] KVM: selftests: Add kernel headers sync check
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Sean Christopherson <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Ricardo Koller <ricarkol@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qojwyUnM;       spf=pass
 (google.com: domain of 3nlmjyagkeueulfdunrojrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3nLmJYAgKEUEulfdunrojrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

Add a script that checks if header files under /tools match their
original version in the kernel. Perform the check at the end of the
make, so warnings are shown after all tests are built.  Note that
the build is _not_ aborted if any diff check fails.

The list of header files to check was obtained from the union of the
output of these (at tools/testing/selftests/kvm):

  CFLAGS="-H" make ARCH=x86_64 2>&1 | grep '.h$' | grep 'tools'
  CFLAGS="-H" make ARCH=arm64 CC=aarch64-linux-gnu-gcc-10 2>&1 | grep '.h$' | grep 'tools'

and then by manually removing the header files that were updated on the
tools/ side but not on the kernel side. There is no point in checking
for these as their changes will not be synced back to the kernel. Here
are the removed headers and the first commit that made them drift apart
from their original copies:

  tools/include/linux/kernel.h
  d0761e37fe3 perf tools: Uninline scnprintf() and vscnprint()

  tools/include/linux/list.h
  5602ea09c19 tools include: Add compiler.h to list.h

  tools/include/linux/poison.h
  6ae8eefc6c8 tools include: Do not use poison with C++

  tools/include/linux/types.h
  70ba6b8f975 tools include: add __aligned_u64 to types.h

  tools/include/asm-generic/bitsperlong.h
  2a00f026a15 tools: Fix up BITS_PER_LONG setting

Based on tools/perf/check-headers.sh.

Signed-off-by: Ricardo Koller <ricarkol@google.com>
---
 tools/testing/selftests/kvm/Makefile         |  2 +
 tools/testing/selftests/kvm/check-headers.sh | 55 ++++++++++++++++++++
 2 files changed, 57 insertions(+)
 create mode 100755 tools/testing/selftests/kvm/check-headers.sh

diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests/kvm/Makefile
index ea5c42841307..69dc4f5e9ee3 100644
--- a/tools/testing/selftests/kvm/Makefile
+++ b/tools/testing/selftests/kvm/Makefile
@@ -147,6 +147,8 @@ $(OUTPUT)/libkvm.a: $(LIBKVM_OBJS)
 
 x := $(shell mkdir -p $(sort $(dir $(TEST_GEN_PROGS))))
 all: $(STATIC_LIBS)
+	@./check-headers.sh
+
 $(TEST_GEN_PROGS): $(STATIC_LIBS)
 
 cscope: include_paths = $(LINUX_TOOL_INCLUDE) $(LINUX_HDR_PATH) include lib ..
diff --git a/tools/testing/selftests/kvm/check-headers.sh b/tools/testing/selftests/kvm/check-headers.sh
new file mode 100755
index 000000000000..c21a69b52bcd
--- /dev/null
+++ b/tools/testing/selftests/kvm/check-headers.sh
@@ -0,0 +1,55 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Adapted from tools/perf/check-headers.sh
+
+FILES='
+arch/x86/include/asm/msr-index.h
+include/linux/bits.h
+include/linux/const.h
+include/uapi/asm-generic/bitsperlong.h
+include/uapi/linux/const.h
+include/vdso/bits.h
+include/vdso/const.h
+'
+
+check_2 () {
+  file1=$1
+  file2=$2
+
+  shift
+  shift
+
+  cmd="diff $* $file1 $file2 > /dev/null"
+
+  test -f $file2 && {
+    eval $cmd || {
+      echo "Warning: Kernel header at '$file1' differs from latest version at '$file2'" >&2
+      echo diff -u $file1 $file2
+    }
+  }
+}
+
+check () {
+  file=$1
+
+  shift
+
+  check_2 tools/$file $file $*
+}
+
+# Check if we are at the right place (we have the kernel headers)
+# (tools/testing/selftests/kvm/../../../../include)
+test -d ../../../../include || exit 0
+
+cd ../../../..
+
+# simple diff check
+for i in $FILES; do
+  check $i -B
+done
+
+# diff with extra ignore lines
+check include/linux/build_bug.h       '-I "^#\(ifndef\|endif\)\( \/\/\)* static_assert$"'
+
+cd tools/testing/selftests/kvm
-- 
2.31.1.498.g6c1eba8ee3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210428193756.2110517-2-ricarkol%40google.com.
