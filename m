Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBMMX4T3AKGQEURQTCXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBEA1EE712
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:56:51 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id x132sf5190001pgx.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:56:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591282609; cv=pass;
        d=google.com; s=arc-20160816;
        b=sZiyL+pAaGDs12We4BEbCPgQ6By1WmlH6aiScFmQwid/awH879Xd/TDl8leFad+e4j
         ru+gYneLzRney1n3Y9LugnQgRowYg3rbEqdiFKJ7w5gchBQRL3vbzC0Z702MMX+nNvT9
         BfkxL+5IqFVK9EyMNl96zgs2qEfPosqIbbshP7nofsl164ZxUTnlibChjxJKLrsD0eSj
         JE4pVQVa/s+M+S9NVPKNZzM40mp5jirowyT0es+RbbwSq0wR4qTgTCl5z3SnvMHEBhmo
         Zj+NDnXds9wu6CfYeC1Vrrxp+NWyAs+6vRMNKCUb5OmdkK+swcTBnTO2UM1FH96mR96m
         9STQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TyEFAuN4PWqBjKWM5pxvC4saFEzGeyRUI5QxB4cwy0A=;
        b=IsApRYA/Oh4PS8NJtfR/r9eKxJUzTkto6kgjYNrnkLAge3k2TDv4M6blS1o96ACzh4
         SLCPxYS3KgaBJkMWwGLiJ7qmAJb4EqsP0924YHlE9N8iqJNdqDb0DRaOe/UiC3QqNFjF
         gARb+e/tu4vLqlmnY+pPrydD0slAu5tqss/v3/MYFcxAYbazaOIqHe/Z14CH11vbUygg
         hjo4xTM/rUKt62mujftzXH/Js0tAuyB+irZfVO//ALgxvxG9kojXgtGVa1VvnwQ2NIsZ
         XYoHnY5t/K5ENwHCm/siUMBQb0Wu4V6b+gv9LMmNSFGug+br+43QGM+Es/+aC+tzmXuI
         D1Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tFAsnU+f;
       spf=pass (google.com: domain of 3savzxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3sAvZXgUKESkJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TyEFAuN4PWqBjKWM5pxvC4saFEzGeyRUI5QxB4cwy0A=;
        b=GUCdg6Pe6wtHeR1Z7eC186CXWqs9stYgyfQtkkkBiEG6cVtEFIgm4bQTZEXia94NAC
         Zse72QuCIg8N5p9176aRluz072EfxJz1Es7NhL2OMoY8v9VbWZPl6GZmRwkPtu6eo6E7
         4Q+I6T85sxRkDTC4ZLlChzBgnNfAoz5dCAiSWOEsIXTSzU8tRoc11ejeI/5jtofT4Dj8
         YbWF35ZrqFE95zjc1QEISO9xGbtrLhA+dooo0xiTFM5bRad6THO2qfRyz4lsvm6Rw/xb
         N+vJkYUfI/ONeTsxkR/9vxEqb37PhrAFnlKv0IJDOf+HWhUes4AEGq3q3KWy6kMsSRT7
         zszQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TyEFAuN4PWqBjKWM5pxvC4saFEzGeyRUI5QxB4cwy0A=;
        b=m9oaJZANoxL5mBYJB3/oMtxORSLkTEL+qyBXTPX0ZBz2hzlWaPOYOHPgND9e9GaRej
         C1fLjA26C0CDOj16HItGsZ4uESV+US4nhxxsZ0vyZNeEiBRhyhAEnilk82aNsqAxfK2S
         l6udA6vo/kzO89xiSy7mSfHuC0+XeQp/870MZb3izF3ZiyIhk2YBIyGBqcoWwVej2UI9
         XtFU/vxO50gOIz1/T8HUwT5X49Je3d/zjrAGoBPF23lI0Sf9qBuf2vaEENK5ntLjtN/d
         kULnC5FFTk8GEtweyXjKjeuQIRALulM86IahO/QhDAFH6RaSx9OUTfE8eNr++RscHHsV
         r/cw==
X-Gm-Message-State: AOAM533/whQuZZI6PQIALT6Ew3tGoQ00DqM7tStEpNZ8j8V7rrU2L4fr
	N1KlfRHTCY6uIGbfjvpiwHM=
X-Google-Smtp-Source: ABdhPJzR7aqeowmS9R7zyfi8JOmSNbR7Hkc2CKKICdg8bw0TtmVqZ5jTb5llPjxqSNGVFqjbvJPOuw==
X-Received: by 2002:a62:7c09:: with SMTP id x9mr4844281pfc.287.1591282609611;
        Thu, 04 Jun 2020 07:56:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:718c:: with SMTP id i12ls3354169pjk.1.canary-gmail;
 Thu, 04 Jun 2020 07:56:49 -0700 (PDT)
X-Received: by 2002:a17:902:c3ca:: with SMTP id j10mr5317292plj.7.1591282609141;
        Thu, 04 Jun 2020 07:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591282609; cv=none;
        d=google.com; s=arc-20160816;
        b=ioW7EdjCcaKpPDtOINg5S1iWhMAXYw1XZMRJynQJhjArmv372bXetopkKgabXIkvKG
         SZGQzV5uRQUvVspk6DJlXDuxoMvnfVQdd/z+yALnDH+tN/WaU3rKAA6KTQ85qBwDKPBJ
         VVCuf3zoqWLs1OCDYJET2SftAFRG9FUXcGtYgeDeEk32lb/QAQlyj40lbtncYZQB1WWM
         b6Z50CVWCOnJwyjdPGE+nOXlKqlw/7vgBuVRSbD2iYkF31aWwEOQSH05GYAvi2DjSqlI
         GPZJFx/BELItQOEiKJ2Fs39vL6huGNycWQ0SknKObXwkeiWU/PBv5e+iT7hogdwEYm47
         E2iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=8zjrUygx4E8TnS8rYes620O5p8GaLeCkMw8lBo+Hhy8=;
        b=ls13BeyZpcWR/8FNQfiEkTBV4CCUslCOQJ57qE32uIh95oxjhvndZxZJKB5SkeGFXt
         PnIo/GObZZlQIRDFViQ1udwU/+1XHesUieeKy8sUF47O8olmXcKPCY2xcbQ8Iha+EZSG
         Qsk15BeBBS5BPM00IL1XSUbzW9/e/jthmi/+Y5B82Yudrq4g4gJqeHP/2dkccFigTpD2
         2iDjYYn0zX2yUzTZHwYTEVdqdwtisjYGlTEMzfuFootS/1IfBUx2+eAOUo2MwZ5HacZw
         9cxLJJHTQS+/6xFY0o1+PShnVabupARkPNeiyEXQ6Y4iu0WyP1qLxylkDmU8+phZ66e9
         2QmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tFAsnU+f;
       spf=pass (google.com: domain of 3savzxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3sAvZXgUKESkJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id x14si515162pjt.2.2020.06.04.07.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3savzxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e192so8126317ybf.17
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:56:49 -0700 (PDT)
X-Received: by 2002:a25:6f44:: with SMTP id k65mr9347038ybc.101.1591282608295;
 Thu, 04 Jun 2020 07:56:48 -0700 (PDT)
Date: Thu,  4 Jun 2020 16:56:35 +0200
In-Reply-To: <20200604145635.21565-1-elver@google.com>
Message-Id: <20200604145635.21565-2-elver@google.com>
Mime-Version: 1.0
References: <20200604145635.21565-1-elver@google.com>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH v2 2/2] kcov: Pass -fno-stack-protector with Clang
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, mingo@kernel.org, 
	clang-built-linux@googlegroups.com, paulmck@kernel.org, dvyukov@google.com, 
	glider@google.com, andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tFAsnU+f;       spf=pass
 (google.com: domain of 3savzxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3sAvZXgUKESkJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

For Clang, correctly pass -fno-stack-protector via a separate cc-option,
as -fno-conserve-stack does not exist with Clang.

Signed-off-by: Marco Elver <elver@google.com>
---
 kernel/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/Makefile b/kernel/Makefile
index ce8716a04d0e..82153c47d2a6 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -35,7 +35,7 @@ KCOV_INSTRUMENT_stacktrace.o := n
 KCOV_INSTRUMENT_kcov.o := n
 KASAN_SANITIZE_kcov.o := n
 KCSAN_SANITIZE_kcov.o := n
-CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
+CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack) $(call cc-option, -fno-stack-protector)
 
 # cond_syscall is currently not LTO compatible
 CFLAGS_sys_ni.o = $(DISABLE_LTO)
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604145635.21565-2-elver%40google.com.
