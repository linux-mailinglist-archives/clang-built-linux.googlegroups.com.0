Return-Path: <clang-built-linux+bncBC2ORX645YPRBGVFYX5AKGQEOONXXGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6D25CA55
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:23 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id l6sf1348150oia.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165082; cv=pass;
        d=google.com; s=arc-20160816;
        b=QdandpMhPEXXyLvnlgJjYSh/p3+Il1YQZhGmMJxVnjeQehuF74c6HIKXNa1VSTvkNB
         pyTKqOEWli46OVPgF0L6lHx7pMoPo/99GhbGb0b141y3jH/0aTI0FGE38M03m3Rd5TOu
         Kib6nXloxvym1KkfchRDW5BzMcnw/CK9EGtR9xnmHkDSPNVbfcKdVbHL92hX6NGgi3Eo
         ZUS85zLcASfpjlhwO4aSVe53L2TaYODz2KZsnQ12diXhcKlB9SL4BtdQuV7qWWqnYtly
         Y97AW+loZEG5XW5ZlI3TsObAyyE9twqyMbq8RcCwNz3CIAArhMXEfiCrB4sOBXCHpl5Q
         JLgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=na7JAKY1DnQzpUEYnbQ04MmT6ZWzfVPK3SjRYeD94tA=;
        b=Jwio1hccyRKnq/4Yvg3ty6yUVU8K9mP7fE7i+wACyNPPHeOZ65oZ3v98VMMjGfg1kv
         aXMmdcJbIIi8nu28xB90n7gYA4kFZnfLKUmIURaFmBPthCAR2YQGNp8UfQb8KU42ilp1
         M4EmYLljZebomWdm5heVhaLAQgjcWHeNdBubsOkjJQjqYZw0nYmBgXccJuk7O31Bh5QE
         35itS/CrED2Jo5iXTWMgYUDtL45wGAZkGgjW0iGjbmgRytDCpOlIwLqz5o+0WaRmaKMr
         DPgsQKBgH18/SiSQm3eHW0MlAnKC7BJyNFHFTMtjrZfRB5GmykPhXrfc6+azMe8Gkz2D
         2pAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="l6ts1jl/";
       spf=pass (google.com: domain of 3mvjrxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3mVJRXwwKAIQ0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=na7JAKY1DnQzpUEYnbQ04MmT6ZWzfVPK3SjRYeD94tA=;
        b=PjzpyVN20QhoU9K/nCbJh13PimSwDRXkoEDswbTodfh1O8/5eEuSzZazVylBemM7DR
         ARCzCcETpNZsbnaprvUsZoKA532bdNfWwGF3uo0TnuGIUvUdgRMKDSRg5YKBJ7KR9nyM
         IPEkc5vAx/Umxy5Zd8SQPWFy4g+QDXGiu01IQS2TgvlnBIKMk/hBWY2DhIQIHzvkru2N
         RTnfGEaSu15EpqfMeBpma4nGDqW/YQkGL39EIdRQ3Y3JPdl/qT9IZ41NliMtMfjf52AU
         lPybVKpRYNOQLvor4HTtUi1AZsldkZnYp1W8PXDFPARoR28ht76NIj5s3swmUYLoYdBw
         Hi7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=na7JAKY1DnQzpUEYnbQ04MmT6ZWzfVPK3SjRYeD94tA=;
        b=LGEL9zuishHh/7z3XFyazrIvEI81rNb8H/QDCT1Br1so5kWfELD/dbJZKIaJ7RLiSY
         yyrb0sARRlurf0bNS6+y8vzM6U3Pq65NxVT5eebu7NwQQJgbnHd9/HV1zIEphu6xFm/P
         5t2XoPo8U97ECruAzrsZPF4442dxJ419a7+nJCdMLQVdFAwxk6UuBqMcBI+zpFvcNJx9
         goASV7pPLrrBNh7J8kMJBQECf0pFm8nTdhzK3Pi/O5JA/kCPWcr/BpZHBJ2ROfuAX6xo
         KgZvl9uabBUiOkLcEwa5J7JTtcDyKV8NPVXBH1NkpG3FzGvYzmqoioMolb3LmERISWa4
         Ke7A==
X-Gm-Message-State: AOAM531tb7CwK09+at3tm3X8LopvlZ/f3mRsp1s9ceO+ZS3s5MGuU2cl
	66SfhVI2rwpT87kKp/lDXxQ=
X-Google-Smtp-Source: ABdhPJzdpzsWkSglD/aZHHpho/wQ+9YcAXPeZlQ8M/05cp/WzuxEFuYJSuX5G/rBAmTCUvkP+VWnEA==
X-Received: by 2002:aca:c451:: with SMTP id u78mr3135991oif.154.1599165082329;
        Thu, 03 Sep 2020 13:31:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d555:: with SMTP id q21ls501675oos.11.gmail; Thu, 03 Sep
 2020 13:31:22 -0700 (PDT)
X-Received: by 2002:a4a:aec3:: with SMTP id v3mr3247621oon.69.1599165082003;
        Thu, 03 Sep 2020 13:31:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165082; cv=none;
        d=google.com; s=arc-20160816;
        b=jfnVBnhZR6tFbTPmYKsSlpDUHCFd3ACc+AB/XWkj5bulMZdqcZMwhEQBwj4ur0jPZd
         +CWW3uIttTQxxaDyGYqdGaHpf0nDqRw5plbR+dPo75NLgsrFF0IMxQVtfGqjBkvV+2gK
         HE531xSkgTansF0Poi+zEbhY+5tnbxBg/5k+nEoMMGW80848don+gofi3Sa+beTjf33i
         OLznGk/WbMdQ+JNCkRunD6oOPlyQ+mYmr0TgrNRbCnr0Ghh+dnAHNUHzM/eO57M1IdRp
         ecJbmFxpVezEOjR4prnhdlCjB1sDIHCrY87PejvPrjtDYV4dk/hHqRqwW+R87d+6NYz1
         2sDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=qzws6VAVgyA/bHAW4bIM+1/PEs3H7Fw9+snejeFUOZY=;
        b=IGfuwcl7rTcsn62HS6qszHZW0mLQtoz+UHD/mZO9p8TLeEeNYwvbARrLHr+GqnLTxN
         3eOkVl2xoALyFzJJCYMSULzMBF5gJJc54cT7W9OXQhI9vkhdt/HHulcYyJAw0tydUiNY
         CumNDUH/50KqJ268WVNl7s6hc0NXN00Jv3P3Kv/Co2iXZsBM+HQy5/f3skRDTFWSDDfJ
         FDfLtC+nlXcA6muarJPOmEIzvpP4WMLRu5LrLUPz+93o45PRQik+WK2dDE3/FHTWbk9+
         zNZOgDr7yOJjG2wSxkGciq/rFqiXwOgZ0muPfwg7YVk+Ljvc0c2NUTKgm6H4L+iGMLKw
         DZ6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="l6ts1jl/";
       spf=pass (google.com: domain of 3mvjrxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3mVJRXwwKAIQ0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id t74si237457oot.1.2020.09.03.13.31.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mvjrxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 129so2704400pfv.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:21 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:3948:: with SMTP id
 n8mr5186825pjf.156.1599165081221; Thu, 03 Sep 2020 13:31:21 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:38 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 13/28] kbuild: lto: merge module sections
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
 header.i=@google.com header.s=20161025 header.b="l6ts1jl/";       spf=pass
 (google.com: domain of 3mvjrxwwkaiq0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3mVJRXwwKAIQ0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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

LLD always splits sections with LTO, which increases module sizes. This
change adds a linker script that merges the split sections in the final
module.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile               |  2 ++
 scripts/module-lto.lds | 26 ++++++++++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 scripts/module-lto.lds

diff --git a/Makefile b/Makefile
index c69e07bd506a..bb82a4323f1d 100644
--- a/Makefile
+++ b/Makefile
@@ -921,6 +921,8 @@ CC_FLAGS_LTO_CLANG += -fvisibility=default
 # Limit inlining across translation units to reduce binary size
 LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
 KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
+
+KBUILD_LDS_MODULE += $(srctree)/scripts/module-lto.lds
 endif
 
 ifdef CONFIG_LTO
diff --git a/scripts/module-lto.lds b/scripts/module-lto.lds
new file mode 100644
index 000000000000..cbb11dc3639a
--- /dev/null
+++ b/scripts/module-lto.lds
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+ * -ffunction-sections, which increases the size of the final module.
+ * Merge the split sections in the final binary.
+ */
+SECTIONS {
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
+	.bss : {
+		*(.bss .bss.[0-9a-zA-Z_]*)
+		*(.bss..L*)
+	}
+
+	.data : {
+		*(.data .data.[0-9a-zA-Z_]*)
+		*(.data..L*)
+	}
+
+	.rodata : {
+		*(.rodata .rodata.[0-9a-zA-Z_]*)
+		*(.rodata..L*)
+	}
+
+	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+}
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-14-samitolvanen%40google.com.
