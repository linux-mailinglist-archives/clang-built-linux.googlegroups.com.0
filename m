Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLPYQ76QKGQE2QLO7QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B04F52A5B58
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:56:14 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id a3sf1918248otf.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:56:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604451373; cv=pass;
        d=google.com; s=arc-20160816;
        b=WfeW1MPuHnaDOoX9OsWAk6TBtHrTN3xs5lHIj48zZGL56skLgerD9JLgfhYOdx/0Fh
         A2lrAkozDzyhfIeIree8owUEMN3L7ja+fLhBwICAzbp3m2wmw0925dlUBCDYidhPv8mC
         TKkZ6cd73HSff34jPQsyxJrpNPm683iS9/Niknhdz/PWKpg4c2f92Ex6XzzxWwhgDNxL
         G7MUGGRje5/rttNcYTw6CywZwNNMajZ0kdUUglhWVB3A0K2arTLchzbzivK2v6/3y9YW
         JVQmfrmLhmLCQRjRj5HpOl6V65+3xI8aPsi/gDefAYDpts+LV5Uej0uhBG7+5b6u1SFM
         SZzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=q/wLLOzN58qsJnK3gRHdTx+qae3kVMCiH/SbTf7I33Q=;
        b=pMd+wNIEuMOOdaPIYtKOneGcifHem7qc27b0igWS1BEYpP0yyYWQvQipNJM8zumwhl
         vEhlqUih0EMYONxt5xwkSEMUoitKC1GMf8UGVSoHmNMaIc4R6ZEOYEt4x/92NNVPmJg1
         lnBEn2xTJQCZDtFGLinHHmOuf8XC/wo/X5uLRnIC+Dr4PJMBvZf2b2kNK38wFshk/B0U
         9l0m4RnxtZhYO9uXLDTd+XnNkUQx2iOC8rEUP+AVpZ+criybkVe5sdI+RDrcW1JpnuXj
         12pUYTFUega1+Wib3B0R+aRlep0quDmxSt/ySjaZVJp1KXTNNshL/jpz7L+9IzbrnOF4
         wYWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FPor5ao+;
       spf=pass (google.com: domain of 3lpyhxwckea8bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3LPyhXwcKEa8bPhZgPnVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q/wLLOzN58qsJnK3gRHdTx+qae3kVMCiH/SbTf7I33Q=;
        b=kqAvrCjrPvSEuFawcPlitZjG+UNU+RPTsDMv0rJ/0InVFUsHh+b4vQgOXxati33J3e
         LrEVQmwT0jsT/DXkV9bpMAhYPseQBFaRSnYOubPSrPAPxMsjtPKQKzASyuNgCotdNFqA
         8UqWoTpUUPg2DKOfy1FN2l74gkCtWJu9H7RKERii3K3igvcUu0nt20shc48UZJcAOVM4
         Cg6QhF2KyDKj71kNHoK1VJDikrQmhr9S2vnj14HvjwyZccqYZeyRT19SnoGJWA0wZBzO
         1T9Yv1moCMxnVTuV8k3ppRyzIMRixJ9cgI8+46SwDzdRnWC7ivIqiDP9nyn141zNBdaY
         pmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q/wLLOzN58qsJnK3gRHdTx+qae3kVMCiH/SbTf7I33Q=;
        b=Q4L3FedzIqhNDvKrnZt3A6aOm31MeBlDVay8UW64OzSgWcB4ret6WRUCx08Ila8i/R
         AJLAA0TIRBQpsl+ApFIuWY4cWOao0vgyFiKJterQLdC1i5AF7OXhpaiBmXs6FplCFCVM
         hSUFf1tmOr0OcC0JCciRc22jrKWSsIV+ydcbknAc2mGEGzqb/rBu/Gbs4QuZu2K1/nw1
         j6mc1z6kdw+fLCgknZc9HOPehHaOr2c7XSKvzJTgOTYbpcqy9iY43695UoFLFAYrhWcs
         Ms/K74v2eVmnlrJCYbbzUSMEXTL8wRCYOaKN1YojSKOxeY7PydSP8RW5KnWLec+CxU7B
         Fckw==
X-Gm-Message-State: AOAM533eQ3z6ya/JrHxWKbRjff4TkoANRdIpznt08ZhaVUONqJ89wC/k
	etWNvXkkYhnTI05frQ+RMUE=
X-Google-Smtp-Source: ABdhPJzw3m3WIDxT+f+85CJli2wemfQjgWEH6OF0c7N/aufvJI7pI0SNv2ndDUjujOvya88hMWZheQ==
X-Received: by 2002:a05:6830:1411:: with SMTP id v17mr4217212otp.209.1604451373702;
        Tue, 03 Nov 2020 16:56:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls70046otk.3.gmail; Tue, 03 Nov
 2020 16:56:13 -0800 (PST)
X-Received: by 2002:a05:6830:1283:: with SMTP id z3mr7319867otp.323.1604451373374;
        Tue, 03 Nov 2020 16:56:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604451373; cv=none;
        d=google.com; s=arc-20160816;
        b=X3PgqKgkMbIJQZqkXTs7oUAH1sH8a+wdPtugl2UKCt82+qYwm1n/gkutw1cknjTCQN
         JQvGhiCXFLHWeSIg+N/2Rn3vn707OVcR+86DnQRFDR+lXHZ3kF7LORk45+qmW3sgnr90
         BFEjmpHsd966Le7NIXw8cU1N69QqchH0URSAzWyoDaOTuvNqyEHDnija56xT8oLCiFZf
         JF6RxP08/DmtQ1+udtofXaUniMR+vCa13EdjtWUFGSJ4hnzTp1/MPOFrVWrgEjJuBYA9
         K3kBIpnLdQA+fHbno6R+sCFcIGXFaevaNuyftFbDSxja5Qs2iCYH23VnC5XndQqaPjr6
         QItg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=fEgHoEwH/Qn4FmtMQAK1i8tQpW1NQPuJnI+u+2FH2KM=;
        b=za4yZdFepDZOY4hZytpPMgYzHi3gKLhjyEDmtV90vETQTNBkC6XE1ykwu37FhFQqfo
         9G/v/i+d0mMaGcPIekT0qC4tB8jpkTMnef9sItHQ4RuvzXyj4SBI2Mb0jgEnBgmIohSi
         XX5I/OZufbU3yqKkFHIOcul45PpxHkEUNBk9O2LgQL8urUVGVIc3F2vXlf1IgYgAKbxU
         1u0PJlf2CvgUy6gafGwSZgdlq4UH5b7RcoWERC/QvBgVg9o2jfYA0vSFCPNVtxSSP6xu
         Kra+2ybDxpXq+vMS//eiyYW+rbsRXQ3tDwaU//Fqp9amNKHe5La/uJSA0EwZcNx9717A
         GDTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FPor5ao+;
       spf=pass (google.com: domain of 3lpyhxwckea8bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3LPyhXwcKEa8bPhZgPnVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id n185si34662oih.3.2020.11.03.16.56.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:56:13 -0800 (PST)
Received-SPF: pass (google.com: domain of 3lpyhxwckea8bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id a126so17544718ybb.11
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:56:13 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a25:57d6:: with SMTP id
 l205mr31348808ybb.117.1604451372895; Tue, 03 Nov 2020 16:56:12 -0800 (PST)
Date: Tue,  3 Nov 2020 16:56:09 -0800
Message-Id: <20201104005609.1316230-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH] perf bench: Update arch/x86/lib/mem{cpy,set}_64.S
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Dan Williams <dan.j.williams@intel.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Ian Rogers <irogers@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FPor5ao+;       spf=pass
 (google.com: domain of 3lpyhxwckea8bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3LPyhXwcKEa8bPhZgPnVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

In memset_64.S, the macros expand to `.weak MEMSET ... .globl MEMSET`
which will produce a STB_WEAK MEMSET with GNU as but STB_GLOBAL MEMSET
with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
https://reviews.llvm.org/D90108) will error on such an overridden symbol
binding. memcpy_64.S is similar.

Port http://lore.kernel.org/r/20201103012358.168682-1-maskray@google.com
("x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S")
to fix the issue. Additionally, port SYM_L_WEAK and SYM_FUNC_START_WEAK
from include/linux/linkage.h to tools/perf/util/include/linux/linkage.h

Fixes: 7d7d1bf1d1da ("perf bench: Copy kernel files needed to build mem{cpy,set} x86_64 benchmarks")
Link: https://lore.kernel.org/r/20201103012358.168682-1-maskray@google.com
Signed-off-by: Fangrui Song <maskray@google.com>
---
 tools/arch/x86/lib/memcpy_64.S          | 4 +---
 tools/arch/x86/lib/memset_64.S          | 4 +---
 tools/perf/util/include/linux/linkage.h | 7 +++++++
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/tools/arch/x86/lib/memcpy_64.S b/tools/arch/x86/lib/memcpy_64.S
index 0b5b8ae56bd9..9428f251df0f 100644
--- a/tools/arch/x86/lib/memcpy_64.S
+++ b/tools/arch/x86/lib/memcpy_64.S
@@ -16,8 +16,6 @@
  * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
  */
 
-.weak memcpy
-
 /*
  * memcpy - Copy a memory block.
  *
@@ -30,7 +28,7 @@
  * rax original destination
  */
 SYM_FUNC_START_ALIAS(__memcpy)
-SYM_FUNC_START_LOCAL(memcpy)
+SYM_FUNC_START_WEAK(memcpy)
 	ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
 		      "jmp memcpy_erms", X86_FEATURE_ERMS
 
diff --git a/tools/arch/x86/lib/memset_64.S b/tools/arch/x86/lib/memset_64.S
index fd5d25a474b7..1f9b11f9244d 100644
--- a/tools/arch/x86/lib/memset_64.S
+++ b/tools/arch/x86/lib/memset_64.S
@@ -5,8 +5,6 @@
 #include <asm/cpufeatures.h>
 #include <asm/alternative-asm.h>
 
-.weak memset
-
 /*
  * ISO C memset - set a memory block to a byte value. This function uses fast
  * string to get better performance than the original function. The code is
@@ -18,7 +16,7 @@
  *
  * rax   original destination
  */
-SYM_FUNC_START_ALIAS(memset)
+SYM_FUNC_START_WEAK(memset)
 SYM_FUNC_START(__memset)
 	/*
 	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
diff --git a/tools/perf/util/include/linux/linkage.h b/tools/perf/util/include/linux/linkage.h
index b8a5159361b4..0e493bf3151b 100644
--- a/tools/perf/util/include/linux/linkage.h
+++ b/tools/perf/util/include/linux/linkage.h
@@ -25,6 +25,7 @@
 
 /* SYM_L_* -- linkage of symbols */
 #define SYM_L_GLOBAL(name)			.globl name
+#define SYM_L_WEAK(name)			.weak name
 #define SYM_L_LOCAL(name)			/* nothing */
 
 #define ALIGN __ALIGN
@@ -78,6 +79,12 @@
 	SYM_START(name, SYM_L_LOCAL, SYM_A_ALIGN)
 #endif
 
+/* SYM_FUNC_START_WEAK -- use for weak functions */
+#ifndef SYM_FUNC_START_WEAK
+#define SYM_FUNC_START_WEAK(name)			\
+	SYM_START(name, SYM_L_WEAK, SYM_A_ALIGN)
+#endif
+
 /* SYM_FUNC_END_ALIAS -- the end of LOCAL_ALIASed or ALIASed function */
 #ifndef SYM_FUNC_END_ALIAS
 #define SYM_FUNC_END_ALIAS(name)			\
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104005609.1316230-1-maskray%40google.com.
