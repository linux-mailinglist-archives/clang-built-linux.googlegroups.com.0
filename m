Return-Path: <clang-built-linux+bncBDD5ZFHSSQARBEP47D3QKGQEXESCBPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AA8212D95
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 22:05:37 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id d16sf16502770eje.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 13:05:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593720337; cv=pass;
        d=google.com; s=arc-20160816;
        b=NEK5iS1k9d87DpCWHP54QUWyhcZnGCiaovclyLo2y2XyNxuR0RJEP78f/NuW2C0nI/
         hGRVUcWYyMuVgz5Nyd8jaVmt2uoy4iFjLUURS52fqQIlz7AiJDRqWm3VdDSHGqRTy1Ux
         1iVWa98hZ1U8bt51KGGWb8ldtwDjPQxVTAiiIxZUh9eBdp+Z7H3QJzLnRkD9YoP3duSG
         dsnKECFFd/mD9d35yick8m/ga5OBszdXXL+Fhb/GUPUEPrF8EyIkn7xh6IshxAFWV3WX
         f6Go4l7CA8TLzkmdnMNTaONFUrBfjKwTOC70HmzRzh1k3Vg+OzM77UTf6HMh66lNOHCI
         gL+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Ix4bzPnv7gnjqLS3M/bEoFc7FsAGhvRGSAm7xLqhBD4=;
        b=FdkbW+2qS38BEQ8dimqDIPZGS4yIZD4THZdZ2AO+ZniS6FCkwB6cO2fHsPkC+7vepc
         v9m23H71PVJvoZBWaMOa66wK+c+djROWMjr4JUlPUbPLB4XSMfO2lySiwI2qWd8HDYEf
         0T6xO/CHz5KktnHKA6A70Ak67MGKuECetAJDcXzsbPXXb6Q5KVwCICBjO4KCR6j9IBXt
         RexzHOyo8QA2O2Bw1H86Zv7ZDjNcrLAB8oIoy6eLfDWWiTEdAtVQ3yvVeukZ4vibJFkC
         +RPt0i+PEGvOzen/8weJPXaGUREat5umpIk4Zc3bZz4delecen4zM3ol8qjEBl7l76LI
         U1cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ix4bzPnv7gnjqLS3M/bEoFc7FsAGhvRGSAm7xLqhBD4=;
        b=r/O8mKIPNhmjlbnX5/GHUUEu+wfmxQ6YM/26C9280P+DiG+AtUTWVs8nOxKk0IVpS9
         fjfLQi6B80e75+wH2YXVUOeR8PR/pY2VyluQMDvC630k7jszCT6gqY85uOXbAu9hB3+s
         EOS90sbLqavHPDdVf/uk00EPJXLUVKtAADG3OkQ6ond3zIDgj91x1qQQLR+e0Q6vS59a
         tKadwh3io/e1dYXkgHM6lHcCPFVbrhTRvGRCTC0yb0bRy7iIg+XsRnOCCFMWYkP/0qLs
         gA+BInk0JqwAB/pCAtPXnaoSYseRmjbvGkB9pxb2Uj6QNxEtN1Gr7BOXwCu/gf9aFwQw
         cSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ix4bzPnv7gnjqLS3M/bEoFc7FsAGhvRGSAm7xLqhBD4=;
        b=H+g+Zlc3g8y/B1mxejGReE6C4RtCtZhwTvc5K9oSycpN91TmaNZArykWFHz4nSM1A4
         oUtb4IghgpYY18bvVnXZ1X5RTf9qgdacE4kT+ljVzIIkDzNXhqF6GOhXvBx11QgLGEB8
         9pxrx7qWutWksjHYDBs9hMZT+omqH1ooY5lXMqNHDHYQJgXBRqtIgbG48AbwZVDRa+uc
         uwtAzHS7J6+ksSVii+vK9Q0Sb1yIr7tOvkJ/pmpDalxegZ/cD31+8yhM0S4ZHcSD1HQc
         mfELZmDPNr7tcgL2oVO2rAb0XvK+1p6qMd2Pe08AmJ0cB7dWvuiyd3SAwkABPWou4Tg3
         z4/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mEj9bNedC0IC+Dgqjf5uK782DWAvk/LBH4hpbOymiL46djkZ6
	3OXIkYZo7A+InS3w7qEH/pg=
X-Google-Smtp-Source: ABdhPJxd9Yqv/GdwxpXrDcK9uByKX9aR89G2en/2ihUd3VxaOHEnF/SWZaeFXK76r/KX+rP1zvNICQ==
X-Received: by 2002:a17:906:4dd4:: with SMTP id f20mr30545878ejw.170.1593720337491;
        Thu, 02 Jul 2020 13:05:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11d1:: with SMTP id va17ls3238306ejb.0.gmail; Thu,
 02 Jul 2020 13:05:36 -0700 (PDT)
X-Received: by 2002:a17:906:4942:: with SMTP id f2mr30394683ejt.125.1593720336892;
        Thu, 02 Jul 2020 13:05:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593720336; cv=none;
        d=google.com; s=arc-20160816;
        b=m5eOPNKwdzUnwFVREX+/o1HD02A47H8Z20FymKivWmtE7CcWW1qjW5/WzH39lPE5Dx
         gzOLZQIP5s+89AXyw5F6eZRNn8vRkwEuiFnhmQkMJ9P+c1Y96J+gJWuipPzEu7FhSH4M
         waBuaWIeaXT2zvDZtdBYjLKVAPMmwp61BgeFjnsT4+grNaZtNiZ+qH7Sd6GWe2tqxK5O
         9cq9Kqd04Xx3DfsIVxbrY++HPLK5wNdzgyWPq75mhy1LyeyT8qQDMKizlDB7HbD98GbN
         jrX6pAkmxzIEB6W/AolB+awMGzUVF16HXI4RFq0X/xEjV/6UYUeANkicOqG97Kv8ugl0
         3nww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Yy2i3T55xcEBpOxWTiffia+uV8XHd1rGkd/4Cp7nNS4=;
        b=SxNHAmYwqyZ5GwC1ci6OLfdee9XC/GnoUiJnM19XTARPKeqL/JnOHrLEYaZjuUuZS0
         mXGy+Gjs8rNoo5MW9p+WXywtdzWSLmtPx59bMYYWE0dZjD3QeBN2UnIDPCWSssM2zdwp
         Fp8St5yeaBp6WiukltfyFEyarZFyGrpWi/5+yQ3TN079/9bIceh6xkcIHSQLwAxIxXNk
         xIAydI3ZH9cr6bauI2ZkYTX23XJ0ucXzyuAto5OW7bWsXNNsppwlRlF9c1ey19nyxqEy
         NZ2G04WbToewxFfUB7u2cG/1amRACAvnZ39C2sAWuEFH8ENLKY9VrCeBIdLjwoNBvQXS
         qkqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [78.46.175.9])
        by gmr-mx.google.com with ESMTPS id v16si589335eda.5.2020.07.02.13.05.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 13:05:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) client-ip=78.46.175.9;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id E7A52BC078;
	Thu,  2 Jul 2020 20:05:28 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: corbet@lwn.net,
	ast@kernel.org,
	daniel@iogearbox.net,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	andriin@fb.com,
	john.fastabend@gmail.com,
	kpsingh@chromium.org,
	davem@davemloft.net,
	kuba@kernel.org,
	hawk@kernel.org,
	kuznet@ms2.inr.ac.ru,
	yoshfuji@linux-ipv6.org,
	tglx@linutronix.de,
	mingo@redhat.com,
	bp@alien8.de,
	x86@kernel.org,
	hpa@zytor.com,
	rostedt@goodmis.org,
	shuah@kernel.org,
	sdf@google.com,
	quentin@isovalent.com,
	rdna@fb.com,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: [PATCH] Replace HTTP links with HTTPS ones: BPF (Safe dynamic programs and tools)
Date: Thu,  2 Jul 2020 22:05:16 +0200
Message-Id: <20200702200516.13324-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Spam: Yes
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
          If both the HTTP and HTTPS versions
          return 200 OK and serve the same content:
            Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.

 If there are any URLs to be removed completely or at least not HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See https://lkml.org/lkml/2020/6/26/837

 Documentation/bpf/bpf_devel_QA.rst          | 4 ++--
 Documentation/bpf/index.rst                 | 2 +-
 Documentation/networking/af_xdp.rst         | 2 +-
 Documentation/networking/filter.rst         | 2 +-
 arch/x86/net/bpf_jit_comp.c                 | 2 +-
 include/linux/bpf.h                         | 2 +-
 include/linux/bpf_verifier.h                | 2 +-
 include/uapi/linux/bpf.h                    | 2 +-
 kernel/bpf/arraymap.c                       | 2 +-
 kernel/bpf/core.c                           | 2 +-
 kernel/bpf/disasm.c                         | 2 +-
 kernel/bpf/disasm.h                         | 2 +-
 kernel/bpf/hashtab.c                        | 2 +-
 kernel/bpf/helpers.c                        | 2 +-
 kernel/bpf/syscall.c                        | 2 +-
 kernel/bpf/verifier.c                       | 2 +-
 kernel/trace/bpf_trace.c                    | 2 +-
 lib/test_bpf.c                              | 2 +-
 net/core/filter.c                           | 2 +-
 samples/bpf/lathist_kern.c                  | 2 +-
 samples/bpf/lathist_user.c                  | 2 +-
 samples/bpf/sockex3_kern.c                  | 2 +-
 samples/bpf/tracex1_kern.c                  | 2 +-
 samples/bpf/tracex2_kern.c                  | 2 +-
 samples/bpf/tracex3_kern.c                  | 2 +-
 samples/bpf/tracex3_user.c                  | 2 +-
 samples/bpf/tracex4_kern.c                  | 2 +-
 samples/bpf/tracex4_user.c                  | 2 +-
 samples/bpf/tracex5_kern.c                  | 2 +-
 tools/include/uapi/linux/bpf.h              | 2 +-
 tools/lib/bpf/bpf.c                         | 2 +-
 tools/lib/bpf/bpf.h                         | 2 +-
 tools/testing/selftests/bpf/test_maps.c     | 2 +-
 tools/testing/selftests/bpf/test_verifier.c | 2 +-
 34 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
index 0b3db91dc100..fffb832d27d6 100644
--- a/Documentation/bpf/bpf_devel_QA.rst
+++ b/Documentation/bpf/bpf_devel_QA.rst
@@ -478,7 +478,7 @@ LLVM's static compiler lists the supported targets through
 ``llc --version``, make sure BPF targets are listed. Example::
 
      $ llc --version
-     LLVM (http://llvm.org/):
+     LLVM (https://llvm.org/):
        LLVM version 6.0.0svn
        Optimized build.
        Default target: x86_64-unknown-linux-gnu
@@ -496,7 +496,7 @@ BPF back end, it is advisable to run the latest LLVM releases. Support
 for new BPF kernel features such as additions to the BPF instruction
 set are often developed together.
 
-All LLVM releases can be found at: http://releases.llvm.org/
+All LLVM releases can be found at: https://releases.llvm.org/
 
 Q: Got it, so how do I build LLVM manually anyway?
 --------------------------------------------------
diff --git a/Documentation/bpf/index.rst b/Documentation/bpf/index.rst
index 38b4db8be7a2..576ccfe5d560 100644
--- a/Documentation/bpf/index.rst
+++ b/Documentation/bpf/index.rst
@@ -62,4 +62,4 @@ Testing and debugging BPF
 .. _Documentation/networking/filter.rst: ../networking/filter.txt
 .. _man-pages: https://www.kernel.org/doc/man-pages/
 .. _bpf(2): http://man7.org/linux/man-pages/man2/bpf.2.html
-.. _BPF and XDP Reference Guide: http://cilium.readthedocs.io/en/latest/bpf/
+.. _BPF and XDP Reference Guide: https://cilium.readthedocs.io/en/latest/bpf/
diff --git a/Documentation/networking/af_xdp.rst b/Documentation/networking/af_xdp.rst
index 5bc55a4e3bce..8c0e27e151f0 100644
--- a/Documentation/networking/af_xdp.rst
+++ b/Documentation/networking/af_xdp.rst
@@ -12,7 +12,7 @@ packet processing.
 
 This document assumes that the reader is familiar with BPF and XDP. If
 not, the Cilium project has an excellent reference guide at
-http://cilium.readthedocs.io/en/latest/bpf/.
+https://cilium.readthedocs.io/en/latest/bpf/.
 
 Using the XDP_REDIRECT action from an XDP program, the program can
 redirect ingress frames to other XDP enabled netdevs, using the
diff --git a/Documentation/networking/filter.rst b/Documentation/networking/filter.rst
index a1d3e192b9fa..c203a2d58a6f 100644
--- a/Documentation/networking/filter.rst
+++ b/Documentation/networking/filter.rst
@@ -56,7 +56,7 @@ Steven McCanne and Van Jacobson. 1993. The BSD packet filter: a new
 architecture for user-level packet capture. In Proceedings of the
 USENIX Winter 1993 Conference Proceedings on USENIX Winter 1993
 Conference Proceedings (USENIX'93). USENIX Association, Berkeley,
-CA, USA, 2-2. [http://www.tcpdump.org/papers/bpf-usenix93.pdf]
+CA, USA, 2-2. [https://www.tcpdump.org/papers/bpf-usenix93.pdf]
 
 Structure
 ---------
diff --git a/arch/x86/net/bpf_jit_comp.c b/arch/x86/net/bpf_jit_comp.c
index 42b6709e6dc7..41bd7725f503 100644
--- a/arch/x86/net/bpf_jit_comp.c
+++ b/arch/x86/net/bpf_jit_comp.c
@@ -3,7 +3,7 @@
  * bpf_jit_comp.c: BPF JIT compiler
  *
  * Copyright (C) 2011-2013 Eric Dumazet (eric.dumazet@gmail.com)
- * Internal BPF Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+ * Internal BPF Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  */
 #include <linux/netdevice.h>
 #include <linux/filter.h>
diff --git a/include/linux/bpf.h b/include/linux/bpf.h
index 07052d44bca1..94b9ee4495ed 100644
--- a/include/linux/bpf.h
+++ b/include/linux/bpf.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  */
 #ifndef _LINUX_BPF_H
 #define _LINUX_BPF_H 1
diff --git a/include/linux/bpf_verifier.h b/include/linux/bpf_verifier.h
index ca08db4ffb5f..52e2aeedc3de 100644
--- a/include/linux/bpf_verifier.h
+++ b/include/linux/bpf_verifier.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  */
 #ifndef _LINUX_BPF_VERIFIER_H
 #define _LINUX_BPF_VERIFIER_H 1
diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index 974a71342aea..40af03e740aa 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/kernel/bpf/arraymap.c b/kernel/bpf/arraymap.c
index 11584618e861..43781c13f303 100644
--- a/kernel/bpf/arraymap.c
+++ b/kernel/bpf/arraymap.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2016,2017 Facebook
  */
 #include <linux/bpf.h>
diff --git a/kernel/bpf/core.c b/kernel/bpf/core.c
index 9df4cc9a2907..10698be9d633 100644
--- a/kernel/bpf/core.c
+++ b/kernel/bpf/core.c
@@ -5,7 +5,7 @@
  * Based on the design of the Berkeley Packet Filter. The new
  * internal format has been designed by PLUMgrid:
  *
- *	Copyright (c) 2011 - 2014 PLUMgrid, http://plumgrid.com
+ *	Copyright (c) 2011 - 2014 PLUMgrid, https://plumgrid.com
  *
  * Authors:
  *
diff --git a/kernel/bpf/disasm.c b/kernel/bpf/disasm.c
index b44d8c447afd..6953c6a3b6fe 100644
--- a/kernel/bpf/disasm.c
+++ b/kernel/bpf/disasm.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2016 Facebook
  */
 
diff --git a/kernel/bpf/disasm.h b/kernel/bpf/disasm.h
index e546b18d27da..cbac62e32f62 100644
--- a/kernel/bpf/disasm.h
+++ b/kernel/bpf/disasm.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2016 Facebook
  */
 
diff --git a/kernel/bpf/hashtab.c b/kernel/bpf/hashtab.c
index b4b288a3c3c9..eeaa94cffa44 100644
--- a/kernel/bpf/hashtab.c
+++ b/kernel/bpf/hashtab.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2016 Facebook
  */
 #include <linux/bpf.h>
diff --git a/kernel/bpf/helpers.c b/kernel/bpf/helpers.c
index be43ab3e619f..ce20177f4801 100644
--- a/kernel/bpf/helpers.c
+++ b/kernel/bpf/helpers.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  */
 #include <linux/bpf.h>
 #include <linux/rcupdate.h>
diff --git a/kernel/bpf/syscall.c b/kernel/bpf/syscall.c
index 8da159936bab..922d899940fc 100644
--- a/kernel/bpf/syscall.c
+++ b/kernel/bpf/syscall.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  */
 #include <linux/bpf.h>
 #include <linux/bpf_trace.h>
diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index 34cde841ab68..987e0a91b123 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2016 Facebook
  * Copyright (c) 2018 Covalent IO, Inc. http://covalent.io
  */
diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index 7bc3d6175868..26dd5f2fea9f 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (c) 2011-2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2015 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2016 Facebook
  */
 #include <linux/kernel.h>
diff --git a/lib/test_bpf.c b/lib/test_bpf.c
index a5fddf9ebcb7..17eb6fb13c90 100644
--- a/lib/test_bpf.c
+++ b/lib/test_bpf.c
@@ -2,7 +2,7 @@
 /*
  * Testsuite for BPF interpreter and BPF JIT compiler
  *
- * Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+ * Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
diff --git a/net/core/filter.c b/net/core/filter.c
index 73395384afe2..211612018b75 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -5,7 +5,7 @@
  * Based on the design of the Berkeley Packet Filter. The new
  * internal format has been designed by PLUMgrid:
  *
- *	Copyright (c) 2011 - 2014 PLUMgrid, http://plumgrid.com
+ *	Copyright (c) 2011 - 2014 PLUMgrid, https://plumgrid.com
  *
  * Authors:
  *
diff --git a/samples/bpf/lathist_kern.c b/samples/bpf/lathist_kern.c
index ca9c2e4e69aa..56dbce51b47f 100644
--- a/samples/bpf/lathist_kern.c
+++ b/samples/bpf/lathist_kern.c
@@ -1,4 +1,4 @@
-/* Copyright (c) 2013-2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2013-2015 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2015 BMW Car IT GmbH
  *
  * This program is free software; you can redistribute it and/or
diff --git a/samples/bpf/lathist_user.c b/samples/bpf/lathist_user.c
index 2ff2839a52d5..500cec2f81c2 100644
--- a/samples/bpf/lathist_user.c
+++ b/samples/bpf/lathist_user.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2013-2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2013-2015 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2015 BMW Car IT GmbH
  */
 #include <stdio.h>
diff --git a/samples/bpf/sockex3_kern.c b/samples/bpf/sockex3_kern.c
index cab9cca0b8eb..6908f30617f5 100644
--- a/samples/bpf/sockex3_kern.c
+++ b/samples/bpf/sockex3_kern.c
@@ -1,4 +1,4 @@
-/* Copyright (c) 2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2015 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/samples/bpf/tracex1_kern.c b/samples/bpf/tracex1_kern.c
index 8e2610e14475..28f86724ff2e 100644
--- a/samples/bpf/tracex1_kern.c
+++ b/samples/bpf/tracex1_kern.c
@@ -1,4 +1,4 @@
-/* Copyright (c) 2013-2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2013-2015 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/samples/bpf/tracex2_kern.c b/samples/bpf/tracex2_kern.c
index 5bc696bac27d..9f764ead80a3 100644
--- a/samples/bpf/tracex2_kern.c
+++ b/samples/bpf/tracex2_kern.c
@@ -1,4 +1,4 @@
-/* Copyright (c) 2013-2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2013-2015 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/samples/bpf/tracex3_kern.c b/samples/bpf/tracex3_kern.c
index 659613c19a82..19a6a2a8eb03 100644
--- a/samples/bpf/tracex3_kern.c
+++ b/samples/bpf/tracex3_kern.c
@@ -1,4 +1,4 @@
-/* Copyright (c) 2013-2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2013-2015 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/samples/bpf/tracex3_user.c b/samples/bpf/tracex3_user.c
index 70e987775c15..873c959cc07d 100644
--- a/samples/bpf/tracex3_user.c
+++ b/samples/bpf/tracex3_user.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2013-2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2013-2015 PLUMgrid, https://plumgrid.com
  */
 #include <stdio.h>
 #include <stdlib.h>
diff --git a/samples/bpf/tracex4_kern.c b/samples/bpf/tracex4_kern.c
index eb0f8fdd14bf..0be7ed2ad74a 100644
--- a/samples/bpf/tracex4_kern.c
+++ b/samples/bpf/tracex4_kern.c
@@ -1,4 +1,4 @@
-/* Copyright (c) 2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2015 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/samples/bpf/tracex4_user.c b/samples/bpf/tracex4_user.c
index e8faf8f184ae..e819692b23d7 100644
--- a/samples/bpf/tracex4_user.c
+++ b/samples/bpf/tracex4_user.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (c) 2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2015 PLUMgrid, https://plumgrid.com
  */
 #include <stdio.h>
 #include <stdlib.h>
diff --git a/samples/bpf/tracex5_kern.c b/samples/bpf/tracex5_kern.c
index 32b49e8ab6bd..92fa02e2194d 100644
--- a/samples/bpf/tracex5_kern.c
+++ b/samples/bpf/tracex5_kern.c
@@ -1,4 +1,4 @@
-/* Copyright (c) 2015 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2015 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
index 974a71342aea..40af03e740aa 100644
--- a/tools/include/uapi/linux/bpf.h
+++ b/tools/include/uapi/linux/bpf.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
-/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
+/* Copyright (c) 2011-2014 PLUMgrid, https://plumgrid.com
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of version 2 of the GNU General Public
diff --git a/tools/lib/bpf/bpf.c b/tools/lib/bpf/bpf.c
index a7329b671c41..bdd4a32c6f2a 100644
--- a/tools/lib/bpf/bpf.c
+++ b/tools/lib/bpf/bpf.c
@@ -18,7 +18,7 @@
  * GNU Lesser General Public License for more details.
  *
  * You should have received a copy of the GNU Lesser General Public
- * License along with this program; if not,  see <http://www.gnu.org/licenses>
+ * License along with this program; if not,  see <https://www.gnu.org/licenses>
  */
 
 #include <stdlib.h>
diff --git a/tools/lib/bpf/bpf.h b/tools/lib/bpf/bpf.h
index 1b6015b21ba8..da4c8b1f2bbf 100644
--- a/tools/lib/bpf/bpf.h
+++ b/tools/lib/bpf/bpf.h
@@ -18,7 +18,7 @@
  * GNU Lesser General Public License for more details.
  *
  * You should have received a copy of the GNU Lesser General Public
- * License along with this program; if not,  see <http://www.gnu.org/licenses>
+ * License along with this program; if not,  see <https://www.gnu.org/licenses>
  */
 #ifndef __LIBBPF_BPF_H
 #define __LIBBPF_BPF_H
diff --git a/tools/testing/selftests/bpf/test_maps.c b/tools/testing/selftests/bpf/test_maps.c
index 6a12a0e01e07..694021bddba4 100644
--- a/tools/testing/selftests/bpf/test_maps.c
+++ b/tools/testing/selftests/bpf/test_maps.c
@@ -2,7 +2,7 @@
 /*
  * Testsuite for eBPF maps
  *
- * Copyright (c) 2014 PLUMgrid, http://plumgrid.com
+ * Copyright (c) 2014 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2016 Facebook
  */
 
diff --git a/tools/testing/selftests/bpf/test_verifier.c b/tools/testing/selftests/bpf/test_verifier.c
index 78a6bae56ea6..18027c373763 100644
--- a/tools/testing/selftests/bpf/test_verifier.c
+++ b/tools/testing/selftests/bpf/test_verifier.c
@@ -2,7 +2,7 @@
 /*
  * Testsuite for eBPF verifier
  *
- * Copyright (c) 2014 PLUMgrid, http://plumgrid.com
+ * Copyright (c) 2014 PLUMgrid, https://plumgrid.com
  * Copyright (c) 2017 Facebook
  * Copyright (c) 2018 Covalent IO, Inc. http://covalent.io
  */
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702200516.13324-1-grandmaster%40al2klimov.de.
