Return-Path: <clang-built-linux+bncBC2ORX645YPRBJHLSP6AKGQET3XB2LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC20528C5DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:37 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id f4sf13748710qta.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549157; cv=pass;
        d=google.com; s=arc-20160816;
        b=pihLx7O0sWX5KC02QEetMT/nGFDAVR20QkPji+QJXiFiJvHy2MIYe6pTepffqfcqgp
         bbMdI20b54OK8/Dth4U8zvR27hn7L+m7zVqG9dqUKcH/F8mC/ieOlpe2q86hBWa6Jcix
         dmkaeM0wdEDfyVZK0h8p547yKovF010CerIfPX2G0eIni/kGKoFyUkCBHZgfuv68D92i
         IUboMuPccjvKQ9+tT+RGa2Hz4zAkbQPWP0Xia/AiH4BOw2wSLyrKgr6AIR5rB39jTk1W
         c03xiCJwxysm3WX0bc2t7/izECw/6LCE4EyjK1oFthknuGdoASvUJuh0+AVeQOa8thcQ
         W5QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=1cTEGV8M+A4njCeVu164i3WQqPGXPFCsz/HtFb8HMuA=;
        b=aMPpM152wFz+2/48X/dUYK1n2nBP6HbrUsoVp6GpXQkaNdjX8DMsdNpO2EQSXGk7i7
         1WTTWW6m8ITvf5k7dRsnhG5Vwzr4GU3Yr7tJ8EBdeldq+0GQn3uQO0u68oByniWQthyC
         PWxz2P9Xw1YISbfSiCCHyCUi4aHJ7Ke6717O+OvGciUGJN0faeyPQndbaFw9g0xs2oPQ
         1Ncwn9l8MWB/OtwjSHFzR8H3Qi+wEKsZzhFR+7E30/nUhfdB5CXJVGPhd2Tc2AxHXEvq
         XilfVsvgLQ+TbrVDmDWTwqVjeBzwrATP6MFNGYXg5brOmbhDaSvQeh5HHX1sYFbJrQBV
         NZxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CfMw3Lf2;
       spf=pass (google.com: domain of 3o_wexwwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3o_WEXwwKAKQWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1cTEGV8M+A4njCeVu164i3WQqPGXPFCsz/HtFb8HMuA=;
        b=l2gPOVdES6nISMwD6g/6pp4BobgdkDb2cIUiIG49UKPL6MmD3BcAnUTWBGceCP3vuh
         L8kYSfQ+GU402C4ZshaTIi5pwOFI+sKjxrQocMCwbLlqLIOFynEZKOnn32L/aG7p1qBE
         w2X57gHu9V+NyuDkS4a1CF7vPbd3LD7WFvadmdAaKvrrEIHJtYgz1zAmW2Vfi7McGjtA
         TIWTKTkiJaav+Mp68Udj4Pc48DvnVlCQxR7/M+H7wY7qU2gZhOxPgFCmrtYKBe2P8cxS
         m88qJMJNUJeo7Xn0vdgjKj3M23jNnYJ3PmEAgph9KdER212vsbjged9uy2XahfMVhh7W
         xrtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1cTEGV8M+A4njCeVu164i3WQqPGXPFCsz/HtFb8HMuA=;
        b=ACyjbJqMP0mdlgsjS2aLquQoggLw5ULaG8YCNsy5TUMD+BKZ+s3DB75vgsZHd0BXS9
         liCy8H+U7mmg1QEskOT/yvO7DH2Jj4YZdemFnnypZ8tWDPNxpTiVqUWFmjk3CMOBzzMw
         IgJ4XhSD3OHVKI7hKCnTBSsRCQGMYkOfsnYrsRb/Pw6PD4LRMio07ORnIyoBNb0yqeoG
         zQWmcO6EYDM1muomsRmnhOrSitlgYIQBx72ooA2hy4nEGpYJrHDFSu/a0EX4aAB8HmYj
         YGF/CJt+4Yww/+l8WQJ7xqySOGSmVai3N5OpraW6NFn9kOmL5YUw2Kx9fypqOg1v0Ejs
         gGEQ==
X-Gm-Message-State: AOAM531KdYnxmnI1KHH7RCmKQgsiPmX7MoMtSarldhzKy5eRWRYHULt7
	ycU/wYtNos8Rb1CchtLDYSM=
X-Google-Smtp-Source: ABdhPJx1cmjCNzCgyPjsdIHzZylrL3v+UKYfZ65T0Ebu2VVqHHQy+uwQDH6wR2i+l1Ofr55pCeMgZw==
X-Received: by 2002:a37:a117:: with SMTP id k23mr1804832qke.178.1602549157054;
        Mon, 12 Oct 2020 17:32:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2f51:: with SMTP id k17ls3562938qta.1.gmail; Mon, 12 Oct
 2020 17:32:36 -0700 (PDT)
X-Received: by 2002:ac8:3975:: with SMTP id t50mr12671369qtb.53.1602549156536;
        Mon, 12 Oct 2020 17:32:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549156; cv=none;
        d=google.com; s=arc-20160816;
        b=um6EsYJl2kYNuzEM42Aj3gig0LDIEHMHGG89Tr0MAVV3HUCcDzYd6e6Zl0g91mhrJ8
         v1wBvH+qa3J/8dT8Zfj3D+mHPAf3HcDp3ryenXNZ0zna+BbJZurMrGgCwTiz38fe0c13
         VE8KIJQvBSivkNgMUKoFvFxYoFwTlTdieYEiiO576Ox9Aax+1bX0fJNfYBrI1JMyo3nv
         tvrlv1LUnA59MZB/CAipgmqHm4DLgDxB6MMUW4EJzYV8yjs8zgOhxODlYO0jNo0amYm/
         MYlnes77wMIVC5FOCK5D7WSWYsWgl0yl+wG/RNjaiAA+bvQwMw3N7Lc7tp69xmkCJTqQ
         rZpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=s6lKkOY6jDvHdKU5rddxnOybuTgb4UG6S62YgATiqsw=;
        b=B0YrLjsDc79dlY+KkqX+E4E3VL0F+KUnGwtXP0eAAhv5p/lEScf7QPopHiePromW/d
         RH29A3HSiy7q4AaODq9uCx1ynkrPtXzhy5oUd/Q/M3dUDeqOL39mJ1hNSGeS4YedWCLU
         9EfUDACuq7kLN1K/76SRSD8+22/QoJd+t/gtb+qougO3zV7x1nAOp9rcvjwVBbNx2yQo
         dtiXJr3MIVZz1yeEzIbcF6Lr1NCQHxtJLJeObpTdkZ/4ZbKBevNSblxbTzoRvS8SuNrY
         UhKBxBPS3oZekXnwTPgPGsGCfDo11MG7YGHUDYcC5FCl5eNMrKtUIwdGyXt4zrGh+cxu
         O1xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CfMw3Lf2;
       spf=pass (google.com: domain of 3o_wexwwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3o_WEXwwKAKQWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id m40si1195495qtm.4.2020.10.12.17.32.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3o_wexwwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id 31so1519426pgt.14
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:36 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:aa7:8492:0:b029:155:79b1:437a with
 SMTP id u18-20020aa784920000b029015579b1437amr18970192pfn.26.1602549155518;
 Mon, 12 Oct 2020 17:32:35 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:52 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 14/25] kbuild: lto: remove duplicate dependencies from .mod files
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=CfMw3Lf2;       spf=pass
 (google.com: domain of 3o_wexwwkakqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3o_WEXwwKAKQWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
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

With LTO, llvm-nm prints out symbols for each archive member
separately, which results in a lot of duplicate dependencies in the
.mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
consists of several compilation units, the output can exceed the
default xargs command size limit and split the dependency list to
multiple lines, which results in used symbols getting trimmed.

This change removes duplicate dependencies, which will reduce the
probability of this happening and makes .mod files smaller and
easier to read.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index ab0ddf4884fd..96d6c9e18901 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -266,7 +266,7 @@ endef
 
 # List module undefined symbols (or empty line if not enabled)
 ifdef CONFIG_TRIM_UNUSED_KSYMS
-cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
+cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
 else
 cmd_undef_syms = echo
 endif
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-15-samitolvanen%40google.com.
