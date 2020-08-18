Return-Path: <clang-built-linux+bncBCIO53XE7YHBBDWP6H4QKGQEFEIRRNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 459D6249186
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 01:43:12 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id x3sf13051056pga.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 16:43:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597794191; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTd7qExwS7/5sMG49C0D0RucUPWjseb3VoS30/X8Ax+YQJrGCKO0fFNMhG9sDD5cpq
         BFHUykcoP85xdY6B6ueduiGFysz/AkEYOlBkamt+Lho63Z731t1yVDlxZ48vqZ7qbdzm
         MeJfdkUXQrkTVdT1vw0+Fem79FEdI53MKZNRv9ksaSolkRiDK9tVTWGA1MQwjJgg5wqr
         8FQMDRTLD3N+BGeGZgeQhgqVhsVMXki5UOOAnYdFwZF2rOgAWFJKE6SiepaePqZ477Yh
         OjsORqpebio1A1SN8W4CXswWu9UtXMd/IH/ZCG+EaBvraE29shXWEFuqkJcpn0b6aaJX
         2iyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=VcSfSdv3UWYbBqjz4eJhRVYaKre8fbLgzg66M6obgcM=;
        b=p57kRXxbq5ivwyVo9VdE6E3BRE2mFOdQ6/jjolLQcBYA6gRzOZA4lj3wMHQZ//lIUL
         LEBHr0Wxfiv13sBgcFMQAvTNNEYfyiQh+BGvK8cuYMYSq7Uw8Gys7mL10FRdC1Odfxu/
         Oc51D5OaWertP/F+oaLGfZdgkX0AhbkH2zLq+OAIAf/oWHj+MrmrRMAQZSRvj30Wct5u
         9we2BRx3ma0ZK4csygwS6NZ5grzA7btE4PcmHp5LUfd5gFPKrj5h4Pjc6vDYWB37LhfR
         AX8A5dhYljdOehpz7IKzAgGhJztHutvyDp3pFxlorLFRXUHRoQi0zxWMMZ7mr1DoRtFv
         fjvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VcSfSdv3UWYbBqjz4eJhRVYaKre8fbLgzg66M6obgcM=;
        b=Hzmq35xkPNBXKPbuoAV6dAW5BbguQ1RjqP0dvh2lbMO3fZhSlNdzJ2eV5W2nSUEuhp
         SoJVEPbh3dzwvy2UvOyHS34kHkcEeoYVPuFtIINnVF1fpA1espuMkmUSMWmfPH4D/bFN
         PjdoDdNF1eigrjm+2KQW0KWNUpdfKAe+ACwRoNDaz/TFInSEuS6K3Hu4k+FGxFom3bIH
         cmcjQJUyRk/H1cUOpzWQwvLe2VtEILYIwAALyl9gcjgBkrbY7s0oAJLhYo9Ygdvg4unA
         a05Ks1zS5y6IboU0d3ObMX7kIsx+qYEeCvA7ei/9Uzh3vjJREcLTHCLqIAVvnKCKlsZ1
         9YHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VcSfSdv3UWYbBqjz4eJhRVYaKre8fbLgzg66M6obgcM=;
        b=Ra5I9z9+uLpQaDw8vXE9JrwG54virqv+JU+QL9TIgk7tGpdsPeIEMwJyRSkxvcwUA2
         n48fDzVdfwyB4r4rQef49Xai6ePhOhnBMYTtXvx7BzGlNmgSN2/tti4bjb5ShquWnelt
         szn295+juMvi8HpR/29ML7Ylxr88zbySOwlei4qDS7K8WK5NIBIm9AAWc6bJ8VdH5EhM
         ZzixiK47l7gOSN98sIBCAFNOVSmMihQpSTNfBCsKoXpgMxvwTX1Aokgnz8CFpae+JsHK
         cPTkWzYYZzcrEECC9CmJ9sYipoj0TvhZscWTQTN96GBbbhacOdHBLQ2uV++qUsIXPn4r
         ZanA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QpySV2ixKmq36DhonT2vtOMurY8BDnaAOgky4a+aduQhr8hfd
	eDFfWlQyleMcwA32ejvyA7U=
X-Google-Smtp-Source: ABdhPJztSC65S/4xYczEDWj7wOQy208M18m5GrOxdKl4H3R/urOSfONlwyboWksfUAtd3pu+j5DdZg==
X-Received: by 2002:a17:90a:fa11:: with SMTP id cm17mr1859727pjb.153.1597794190783;
        Tue, 18 Aug 2020 16:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bf04:: with SMTP id c4ls642568pjs.3.gmail; Tue, 18
 Aug 2020 16:43:10 -0700 (PDT)
X-Received: by 2002:a17:90a:3948:: with SMTP id n8mr1969101pjf.156.1597794190249;
        Tue, 18 Aug 2020 16:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597794190; cv=none;
        d=google.com; s=arc-20160816;
        b=Nc/e7mo+p408PaHasv8pDhdAqo+FOx0DKX0VXFYD5Bp3orT6tDjtD/9bX2HnTE+03G
         wiL5ejbSVs29nabkXH9tz8ZnsFa3iTyamPO2fOVP6A5LTqqVQh2spGM1teck2s3mnU6K
         tEStQmBKjPiESfHCGQ5VdYUE2ZxPHG2RygEab61e9DORTh6HULuLHu3uE4bbw5kCpbyx
         9xT7dTre82e9WICHZ2pdt1omQYiRQ+1nJP8/AeU4l10LRNF0DpWEgB1WdxtXxqbCGvCu
         qJZRzfFRQZMLg1YhEqvWy5qRkgFVXXu6+arQ2Dp/YIoIiNgr191XJFEBzI8ySAr3Iulr
         294A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=bsP3WAK1pfI5NZ2U1r3gXjZrG4nRfJP8f387+vY6AgY=;
        b=m041ji/KSziGOs6gaKkGLLjpUK2XYOvQ9sD9T7WYr7G5Mr24aBzvOqF5L3YHNOoWy8
         qXn12Ki8KdDSKnLOOlyoi2fpZsnicOZZXSy/l8H5NNbRPdVi20+Xp3r6rVGIu5oLv9p+
         LO85R3f1ND5+phCzPRuTUXQFI7VUobKDxKh9aJmVQuauLcMX/ir6oH+lAYFaWSvxjUlZ
         FWOfG/OtOt9dGx+o5tZJuBXbPI/LgT/J++/ehRAjRtcEN/gATz8uTw/444azCXjnolDi
         n6VSciBQ1f7WGWRhjrdqZcJTgMh01QRGSVDMkKHNWgKvw7eLQdrv6wayegQfAFJDWGQt
         cM8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com. [209.85.219.65])
        by gmr-mx.google.com with ESMTPS id t13si1183602plr.0.2020.08.18.16.43.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 16:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) client-ip=209.85.219.65;
Received: by mail-qv1-f65.google.com with SMTP id s15so10459937qvv.7
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 16:43:10 -0700 (PDT)
X-Received: by 2002:a05:6214:1086:: with SMTP id o6mr20534054qvr.41.1597794189388;
        Tue, 18 Aug 2020 16:43:09 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 84sm21793627qkl.11.2020.08.18.16.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 16:43:08 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] lib/string.c: Disable tree-loop-distribute-patterns
Date: Tue, 18 Aug 2020 19:43:07 -0400
Message-Id: <20200818234307.3382306-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

gcc can transform the loop in a naive implementation of memset/memcpy
etc into a call to the function itself. This optimization is enabled by
-ftree-loop-distribute-patterns.

This has been the case for a while (see eg [0]), but gcc-10.x enables
this option at -O2 rather than -O3 as in previous versions.

Add -ffreestanding, which implicitly disables this optimization with
gcc. It is unclear whether clang performs such optimizations, but
hopefully it will also not do so in a freestanding environment.

This by itself is insufficient for gcc if the optimization was
explicitly enabled by CFLAGS, so also add a flag to explicitly disable
it.

[0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56888

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 lib/Makefile | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/lib/Makefile b/lib/Makefile
index e290fc5707ea..80edea49613f 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -15,11 +15,18 @@ KCOV_INSTRUMENT_debugobjects.o := n
 KCOV_INSTRUMENT_dynamic_debug.o := n
 KCOV_INSTRUMENT_fault-inject.o := n
 
+# string.o implements standard library functions like memset/memcpy etc.
+# Use -ffreestanding to ensure that the compiler does not try to "optimize"
+# them into calls to themselves.
+# The optimization pass that does such transformations in gcc is
+# tree-loop-distribute-patterns. Explicitly disable it just in case.
+CFLAGS_string.o := -ffreestanding $(call cc-option,-fno-tree-loop-distribute-patterns)
+
 # Early boot use of cmdline, don't instrument it
 ifdef CONFIG_AMD_MEM_ENCRYPT
 KASAN_SANITIZE_string.o := n
 
-CFLAGS_string.o := -fno-stack-protector
+CFLAGS_string.o += -fno-stack-protector
 endif
 
 # Used by KCSAN while enabled, avoid recursion.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818234307.3382306-1-nivedita%40alum.mit.edu.
