Return-Path: <clang-built-linux+bncBC2ORX645YPRBXOWZ35QKGQE2OMITQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D3E27DA8B
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:10 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id z12sf3348130qvp.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416030; cv=pass;
        d=google.com; s=arc-20160816;
        b=yBcJUDkL5ur1Na5fsD2pAtQg/Mu1LIIWbz7XPETMjwkFFLu7X1LzP+M9XNKU1bE+d/
         kUcCNXUIzv/SGvh+YEjbtIk2TrzIRZEQ0lrcGRftMvhfHB//M/54anHJ+i/HdAruw+sF
         6E1I4cTLQEaYeAUOkmnwsoGBe2YyVcuMINjsbELzu3rxBdqMf4DmRRIYfzpAi9fp4sdi
         xknsNzf6t5TbMDfKsgRBbs06dg64pDSkOjqYEFAtRr4CkatgC6N0HE4Rp1UKAuahyDLO
         0FSbjjQc6k5mCcOx/9uBRK6oTey3AGSkG8ca+q6oRLMGgXnw9oosFMKLj5HwHxOSyEsM
         SzDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=LIhugjgW9kTfscZsmJJAw4LMfHhqJxvskuHgNcFrMDo=;
        b=PqWUm8onIn9864OfsVBNs0J52Wy6+FsmTfoN3V7MBrJczURm+8xcrT6ZFzZJCzpgQk
         nTsxajmfegCczwWdvw+6FGQZdmws6QpN0exic72S70JAuIGvMVDSGLWuihYwIpOPD/TC
         DDJR2UWb3i+BOuOo6j8aVeXQyCeW6ocKNjS4laOTTTYKbzmWc2u7GX7BxLnWZgvBLXsc
         XwkMq+SuPbhIcpJ6afJF3QctLHK97RkskmpfUz5AxRFQYr+wYOgjX8G5CxfSeA5ly1uP
         rCjbyd1rr6hjmjiXMfaSLTp7esHLWBJFm7/7GJIhNbAD/bSn+7mAsXQ8wm3uToeta/Jm
         KQ1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J0iZkzh/";
       spf=pass (google.com: domain of 3xatzxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3XatzXwwKAIQ0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LIhugjgW9kTfscZsmJJAw4LMfHhqJxvskuHgNcFrMDo=;
        b=XxoA0j3Cz5/upquJCV2PaW3XATKnRSwMskELL+7ttwPJppy05IYzozAw7aP7MS/ESH
         wTl/vkFU8fHt8pI/nQ6u/jqxeTB17L2zQFy1cUAZpK0fwUMrgQiK279dTTO/bK4xz4Dc
         6aKphs8tXP1fdt/u/7ZQrM6xENdW3TNdXOf0pvVwLdLrRpOWVzC7tjItAGk7oUIWWVbi
         I6oCjeqtXOmV/44zfBF9HEN3HlvWnFjBUXbUwn8dKCfT5goQeBoffgJYNMk+j1S3PDFx
         Cjqh3SVPxZ5ax1IE4VREDB0g7hsSubt1Uw+ynfWE0W6ZXv38HxgMcIzKc+/+Z2VA4mfq
         Gwjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LIhugjgW9kTfscZsmJJAw4LMfHhqJxvskuHgNcFrMDo=;
        b=CDYS97om36n/dSteBDmVbzs32A/v1B8hyMxygfDV97iSG4O5JePOj16cQt5LlrWMv6
         m5CKMZ7C9uOlBq21L6ez32E4GrKgy+OGkAz9M5PowBLSwsH652PR7Hxq7sqJKDSNCj2k
         a8QeBc/DKBvX9WHCYljEMV1BHL+/rtTrzRUtVXpzAqqoaF9e0PWUnQSR+uKRcdlzwXYV
         pnPR7bA4hGkzruFnkrle1H74c01+KbettGRw6KPX59EgjaGilKOpiuQK3+TpCj5aMdAL
         sHLnZjHdzqKpGz+MQJ0lPx0p2KFvZkNIv6oAAlZf2cMUe07WDdltxu0V+mg/qn15356M
         SKnA==
X-Gm-Message-State: AOAM53091WiM3vuJeO6UloxAS4xVBXY2MARFUxlgdXTf+sMORyMM6tuK
	WMhpZJvdlSWnZ0T7ZT1xgAI=
X-Google-Smtp-Source: ABdhPJzFM5jy1nIyC8UNeSDbhnLPIZiQoCQt6u17baTWDPmCkc5WD6lGaMVSWxoySvrhGj9qetFfMA==
X-Received: by 2002:ac8:1ab3:: with SMTP id x48mr5381819qtj.153.1601416029862;
        Tue, 29 Sep 2020 14:47:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:728e:: with SMTP id v14ls124547qto.4.gmail; Tue, 29 Sep
 2020 14:47:09 -0700 (PDT)
X-Received: by 2002:ac8:4c8e:: with SMTP id j14mr5741708qtv.340.1601416029393;
        Tue, 29 Sep 2020 14:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416029; cv=none;
        d=google.com; s=arc-20160816;
        b=uIMvDGWv9uZmqzpX/JbbUU3dOFaPcuNq1SHLfieWWJwpGYjtzZHd/KjXNXU9wRKLWX
         c8GL8vzGksbEsKD8c/kMgQFkvZ5Ubo3sXMIu7x/Sz6H7PODsHLgCPJMO9UOEg8H2ZIq1
         c7Frbb1wtsEjLAhu9JfDUfiut40/n+JBQQyFjcAy049/Ct7LzOn1XSIVq2mI9rvMyrOv
         OXccOjVls49a75JTh4+JIE6Y/kXRfWxZwHd8I2TysHKxkhv8vAeQ6Cimu8S6tCaEknQ+
         rltx655AqySYBFYHvfHWUCsK++2MF+EF7GzLB0ueocf4DNG/aF8tXqcryBFhl9ryLPPk
         5ipA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=SD1yF5YD1LCllhQ+wHxnWDGScJRWPVuGZBuH/1UV7E0=;
        b=yOBWnt2evsaHlEOjUZs7XjNlM3bcvGSHY/4GRVi4PQMP81FwfqhiYLmskP6SqAoVuM
         D/IPY8FajrVp9mNV1n4xj2EoCv5D12TV49JQRzcD9qb7a6oaJHxTPnPB84dXo7zScc7o
         qT/Ngjt4vks4UW8u2yyuinmTbjRzdLPqIIzXWwAZi065L/PLiK7bEuZ/hsS30Wx7iXJi
         NNlbO6dEvN96EuPTxwNMuUhgL4Swq+UX+bAXi/MomNNkH2iO4x4MQSPE9y5fIqh8P+F5
         rro4ayWAZ5w/ssna7maQqxWK3a6TJqNkq0L/aZwRESr76VobP/lfzenUFd9NQNwjoE/P
         7DFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J0iZkzh/";
       spf=pass (google.com: domain of 3xatzxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3XatzXwwKAIQ0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id h18si331558qkg.3.2020.09.29.14.47.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xatzxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id t7so3368526qvz.5
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:09 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:55ce:: with SMTP id
 bt14mr6729584qvb.2.1601416029039; Tue, 29 Sep 2020 14:47:09 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:18 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 16/29] kbuild: lto: remove duplicate dependencies from .mod files
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="J0iZkzh/";       spf=pass
 (google.com: domain of 3xatzxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3XatzXwwKAIQ0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-17-samitolvanen%40google.com.
