Return-Path: <clang-built-linux+bncBC2ORX645YPRBYVKST5QKGQEFMMJS4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id EE30327064A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:31 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id r1sf3996088pls.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460130; cv=pass;
        d=google.com; s=arc-20160816;
        b=QiJfM0kUqzN3ZA+yLVE8Yf4mY+/HY7GnA4Mtub5lyZALAJz+I3hEUtN+ssSvtYMdxC
         OQ/LJjyf9MMErGTsmxK/m5lhwsmezH9gHSvy0iliju7FoXSWRq0JDZaGpANXAitJqzsW
         DIwkmnSN+4iWasESaQkOxNQlHWsujir+qLLtqJOtn4FY14WczNCSRqbG1jaVcEAibSk0
         liOPKMH1pqwY3zXib4+Yk388Vlt7irCy6gT0KCRoSfxhOmfqEmdQHGGvIOjSG7VthU+i
         DTu1KupzrxQQsA+4E9YZWZ5T5909s1ZpNaBQF5CwJAx5gn5T80ewix3bH+yHyNJhsnR7
         FTVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=kqo2VXtqEwPPx4fu010cYIlGaipgYGVrGVZ3GIFcAUU=;
        b=WoRRRf4KL5gKjQeESCWn7eRm1qiGrwIF9YHdsNL2kr5fiP5gxxA2GOOygiCNigdlPb
         lSTywW8bTNjKFQNXNlO6Gn5d1CNZ0grdUPkPK0tRydfzq4Bn8epS8LbGW0jRe37f+m8O
         gUvLPqwzei01mdvUuiE7frZ+g3eQJUhwkGi7IOWIry1/sMadpSpmKpLeBbfVDXyHAwgL
         rAI3c2zs1j1YkQkU0u4h4FqqHA0bdtHTeVaJ87Crik4IwMgMC1QgS81vOS7xq6N6Q3j3
         RHC1t4q+FxNY4v7QN7VVqG+RBd1BE2tcr+epSgB7J5x9JQy3r9NTX3j6JamUPXHfRDa2
         dWog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m59NkH3j;
       spf=pass (google.com: domain of 3yrvlxwwkaciq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3YRVlXwwKACIQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kqo2VXtqEwPPx4fu010cYIlGaipgYGVrGVZ3GIFcAUU=;
        b=DXtHue9+QdOHZs5OyjW+JUAPf4Aq8Naxfbt31TBcoOBNfwg4tSsM6MAZ0vGfEvG80B
         xZfLEOheMdyEFYt+2B25Q+JNASyc8NUc1+aOZrBSVyoPCLcs2ubl/lLa4BB8b0idpHOz
         BTxAl2Vr3jw4o6suB5B700JhRDB72yQTqd+Q/5DvyeJzqEsLCZPSpCsViMtKHflKpw5s
         Bad2a7jfRrnsU9jvZNuKn2zEDzWXvAcP8EoSScyWbUUJ80KqSSyE6BDSlTuTTvsoOq0S
         9ofhsRhLIw2o4zuuuuPD1QwMr0UwpwreYP3v0eDdwKGecfV5NxOLELFNrEU39vfF3wQp
         i6VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kqo2VXtqEwPPx4fu010cYIlGaipgYGVrGVZ3GIFcAUU=;
        b=EHRVbLS9OeEjJZIp216ZnT4nVave9QRil19Q5GIsl+rs8+IspfbcAi7382LCjXR4in
         HG4qxH8Pm9v+rKuRavvSGMbQYbsWBaTDLiso29xwscJIRxn3AT9FxIa5e7lKTirk54KR
         AHj/JEw1zHyJg4p/JmiMUFaKLQdLGhwfnjrEdXLl4dhUdqVcu1gXa+/arFufmvHpIvD6
         ElQrLJy2OHJxODZSq1x9XcFB173xXfsVzMLo6uF1qqLaJE0uthcbRDf0rPXoLedbnmFd
         FZqnyt46wYnaycXI2Qf9f7vWvLovGbfNY+da7pA5ZL7MzfYSnriDaTwCVOP2VpKfUaHb
         x9YQ==
X-Gm-Message-State: AOAM5329X8NKLTA+h3W7eK2eV0bS08V97rgfhOVEw1Q7BP8ZuaXDUh2U
	UA9rLZ4CaIU0QPUQrKT7mSg=
X-Google-Smtp-Source: ABdhPJxUmKGbxWAzEJy2TZ7mzszLA4LbIi9Klx6JVOSy2cxg1SnTnW1fjeEAVUNVy8r9G4j9QICKOg==
X-Received: by 2002:a17:90a:bd8b:: with SMTP id z11mr14990906pjr.2.1600460130664;
        Fri, 18 Sep 2020 13:15:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:551b:: with SMTP id j27ls2385298pgb.2.gmail; Fri, 18 Sep
 2020 13:15:30 -0700 (PDT)
X-Received: by 2002:aa7:9583:0:b029:142:2501:35cd with SMTP id z3-20020aa795830000b0290142250135cdmr17641254pfj.45.1600460130036;
        Fri, 18 Sep 2020 13:15:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460130; cv=none;
        d=google.com; s=arc-20160816;
        b=yol0jtQwrTountjF1n4R+QK65M/cGVPQeLiS9LTd4oiOD0MsKYM64FoHXoet9s5XLH
         Y+XJmeL4A1n8/oHGcIqjFSaffSBlY7m1YvB4ltY2xCZH0VH4/n+gDdyBhXh/ukpEUACS
         /p4alr2dpLH9QhbQdx8lCvMY6R3xDHtTtF0t6TSx2dBWZ+3gn22Jbd00IRr8XIP8+8E9
         WHPkA6jaUs4Wy0j/tU88fkhHgB0sbEq7LDm31ERUWSEzKWSzHlWWMqZ2pNFgqZ0cG3Ik
         aGFbCx5uNps6nVGCYmxzjfdg7yHGjet4vzMjMZ6r0H2JFY3nBUJJOwRndocg6DP39HDi
         piEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=6wkvNORTwM39S5uL0TTc53qeLnDmqjDSKMDvKwEqUnA=;
        b=V/wbYMyrWjAw+8yBGr07I24Iqsih0cjDjnY7Byr02juWdaadjR/tCaFwpFVRhbOhfr
         W3Sk3MnQQCFwG1O4UcsFGX5Jo7+8YDFNUtiCWJh/dosADSbcSvSWinSg12XfKcK8iX0c
         mzHC1ye/TbVRqOiQeGJNgcTUARJMVy4cHSaMCr0/wpR5bB3KomIZdR+qliFslkZh3ryp
         mmQrYEtwiuCM2az50FwdXLYR05C8gcbSJIAVDG3QMrxDAP5Y2pgDuq+Ts5R+P4HcgC+m
         93+c1C3O+6DmbR4XbKMxISqhwYHTXnl9RoJ/DxmCADpxDCc4M8scz+ztH6cESPohNrVX
         ay+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m59NkH3j;
       spf=pass (google.com: domain of 3yrvlxwwkaciq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3YRVlXwwKACIQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id b9si267658plx.0.2020.09.18.13.15.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yrvlxwwkaciq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id i17so4661927qvj.22
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:29 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:57cc:: with SMTP id
 y12mr19090228qvx.48.1600460129171; Fri, 18 Sep 2020 13:15:29 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:27 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-22-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 21/30] scripts/mod: disable LTO for empty.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m59NkH3j;       spf=pass
 (google.com: domain of 3yrvlxwwkaciq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3YRVlXwwKACIQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
files. As empty.o is used for probing target properties, disable LTO
for it to produce an object file instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/mod/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 78071681d924..c9e38ad937fd 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 OBJECT_FILES_NON_STANDARD := y
+CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
 
 hostprogs-always-y	+= modpost mk_elfconfig
 always-y		+= empty.o
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-22-samitolvanen%40google.com.
