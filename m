Return-Path: <clang-built-linux+bncBC2ORX645YPRBVNKST5QKGQEQ25DE2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id F182E270644
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:18 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id r3sf2442917pgm.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460117; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJaKXnF390sokbGq9xjMLivW3ymzy933cIs6jRY9/QGf485gCkEF+tdCWhPVSRnE9e
         BlbfjbY2HkN5jE5n9jwm6Ato4yGSL5RoAKwoejNzfyxFXPs9O9lShwAPT5vYkFSMdykQ
         Y1sLVeDTbnjN7lX6yx4QIRIVmFBEMooU4V/xcUcWzCUykTypdq49fFomppsRMsDYdmPU
         vzVZOo3/uTprYgbVCv2ULjJwzT6/E+9Krqda49FluTi4rJA5mIWS1A4IWxF7En4k4Zfu
         QMcNq8SeIm99Xby1hgo5lgoBReVSWGHczECocWx0R3g1I+slrehXypASQI5tY0prjHb7
         IuEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=sNg3abC/vehF/5HXKHd8TDo19uIclBb4zPgLMN/Z5Wc=;
        b=tk0JrU6vbWeWEoHphwdmvn5G0U4PfshWxFYkTw5vrzk5pMQgyU6nFnhStXOI18Oaav
         JFAOvw1WGg2y4k7l8mrWa0xeBT/Qm92Nasyfp6EM1Vh0HjmxdDwjkJJ68NLHltKC/AW8
         M+64oqv2b4pCN83qV8zGj89rTMCtBvzzr9F2W5LD1MoVbptiM5WUf+wgltW5Ir8wjkpO
         A2tFvDbkp2/NJm6nZ7rKraoClPIAVdqLYkEDq2ccSaON+RtUOyFV2RwgdaUF2iGiyXwc
         8aZIcmZQJyJXRe500FtJJcJhdRmdoPTWwvzf9Xbri17JI2JqDrhFEOHYzrb8PcRnTVfM
         D7Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mPsAHQEX;
       spf=pass (google.com: domain of 3vbvlxwwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3VBVlXwwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sNg3abC/vehF/5HXKHd8TDo19uIclBb4zPgLMN/Z5Wc=;
        b=aqo+1paMk3c0LV2u70EemNoHYZdUw9U0+HXaLKqCGZSdU29NhNm3bkwIIyyOq8jR25
         iWODoTRrbXBXzRs76tX8vFwVmUwuX8idr70EKRxojN+UIDmESsZO78QkIAwbUvy9iT8q
         QU4D7qs6bd3jyz5iV5WEyyHPOsbCJ9XXjNnEOJzLpz+SHGjU/t8vphdXxeX877Iv/x6V
         Dy5vlrkeoYIHKbSWC4ISa/AT0iRcAPZTo4zY1u6VGXIECi8UI1Okd+GOiQY7mcFWcTLx
         WAUN34AwyFqQahVny8URoI2pHFryAHQXM9IxEa4N1O7Yhyiv5ZZSUcy7sqnTVAlokkrx
         ecBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sNg3abC/vehF/5HXKHd8TDo19uIclBb4zPgLMN/Z5Wc=;
        b=SxeGtcBslvruLGeFHJi+7Z/rzn6/bOVN8Y+029IbMIP5FVNc6UI7lACTAvGvUjHJDz
         e31GfbIg3Djvnx74V62MqkAuSibTIPRnhd3nDZOLXN+wAgMzjSnM3Ot0eshR7QgT2njj
         4IagXxj3MiZwvJktbTxIO0+zWYBQbSnvp0JXIed5ExPck0PSiKaIbbc2wjBS7GGqZlpJ
         bj65II3s7ds5Flxh/uYy04B2dBeHtupQWnQrqCiJMhTqXzCrG3Ql9wC8y5jooqpsMC5i
         xvEwHUX53fjnyYhFCMyKQvTmTdwP+0i3d6bvdiEhR2oW78gI8G9tzxvRu3co9m+wQDmB
         1VQA==
X-Gm-Message-State: AOAM530BNYedsO3RIfxONQlpPR/2kOLEH+o5llguaKzElBcZeR8V+/KS
	52n5e4QMa/1p0qk8Vgee0ps=
X-Google-Smtp-Source: ABdhPJwPsFBREphV2nq2+dcXYGW3YTFycnW+9nD8mBQrFl8PKxmpq2ZL9AgKYj6/DzoJAUoI9tu+ug==
X-Received: by 2002:a17:902:b70e:b029:d1:e5e7:be58 with SMTP id d14-20020a170902b70eb02900d1e5e7be58mr16826033pls.50.1600460117685;
        Fri, 18 Sep 2020 13:15:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:79c6:: with SMTP id u189ls2379986pgc.9.gmail; Fri, 18
 Sep 2020 13:15:17 -0700 (PDT)
X-Received: by 2002:a05:6a00:1702:b029:142:2501:34d7 with SMTP id h2-20020a056a001702b0290142250134d7mr17752561pfc.48.1600460116990;
        Fri, 18 Sep 2020 13:15:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460116; cv=none;
        d=google.com; s=arc-20160816;
        b=l6cL9xUJy4oMRZ/o+22fmaa1klpzFcxzF3e45kJAWcUD1GhXShtWSYy2WP8FKAbF5t
         qswFtvHTjGx+g+ReQWoFLeG5jHCWi/o3csXc/Vf66FlIgu+rEvySrPjaDWFC8Ju00v8j
         uhzNMcDMHwTGR1wRvaEganCrTux+8r6XYO2u/7ko3/p7dWDpzkkYTdMnC0iAq9u838gt
         9dP9avkYLPCKKr8Q4f8dH4WR1d7ZViKpWNCTYaYZ0OvvS5lB0283/FocAk+WhiTL5vAI
         5hWXIliuxRWiE+62CBMmkw6kZxMKF/CmDrU9EdCJN65ev3a5jKMkXqSq778Kd5WwDKMx
         yKpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=H5U0Hz5E6z5ldjvQ4xJDZFkCK4qV/McKETGlhtu7sL8=;
        b=Rw4OHw1/P/brg6EYBU5f5RUGCsrnFTvxMMgPSGH2yIE+gCPGCVEhxct7A5L5qSD76f
         lphlpGHMwOpHNpTT/o992OBs2ZBmyJmrRCe52dH8YyDDsgIdSmh/TEirycypMmDpa7WW
         u2MylSEUWPVSSRUJb85DHagFibcZfsSxFB07ILCaLXpHklMNWoeH1jMlin2IPs0rKmHn
         fnGejBR8VEEj39d3NChUF76goOzLf95vshAup4oopYZF++d2eijDrgJyOTBixNXJ/fW8
         blTzJNLbijQUUp/Y3s+mQVW+WxZ6yst3eXpkjRK1xJQFm1c/8WflL0jk2QdcSMaJ08+Y
         SUiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mPsAHQEX;
       spf=pass (google.com: domain of 3vbvlxwwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3VBVlXwwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id y1si271388pjv.0.2020.09.18.13.15.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vbvlxwwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id w64so5582682qkc.14
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:16 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:47cc:: with SMTP id
 p12mr34218336qvw.25.1600460116095; Fri, 18 Sep 2020 13:15:16 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:22 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 16/30] kbuild: lto: remove duplicate dependencies from .mod files
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
 header.i=@google.com header.s=20161025 header.b=mPsAHQEX;       spf=pass
 (google.com: domain of 3vbvlxwwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3VBVlXwwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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
index 541dbe791743..b417c697536e 100644
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-17-samitolvanen%40google.com.
