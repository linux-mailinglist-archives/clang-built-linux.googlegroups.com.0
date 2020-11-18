Return-Path: <clang-built-linux+bncBC2ORX645YPRBMVW236QKGQEIAAKBRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7EF2B8729
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:48 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id f3sf2060946plb.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737267; cv=pass;
        d=google.com; s=arc-20160816;
        b=FwgnX7fWVdidyMNT7koj3OUWZEkQ2+DNn1ataHuflBbUu7WJfz0ARKRibt3QhBiFom
         u6wLmh66+2/4P2zY/2bOJIoVWC/0TeikUhHJlfFj9+TKNofQbhMfiD/K6Q8mtrksVNYT
         zMy0bT2H8nvN8GJkFbi/QefXwXGQrQPlF+pcJO1xquZstWijOl1y8qKVQ8xQN76GSgEY
         BvsI+XbPGDryHX5EtmBox9YQ4otiDzyvr8OBMlbtx08/dHZ9oDfn3uQs+FaCH6mMhrwb
         19S29v7IdwbPQw7vESFUsfavx4Yn4esmG46OapeF3oiGyl60JfnmtjdrCYSVpDtPXmpP
         bFDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=rjcMEMKu5HQ0RZKo55HXdGgu0zLAGl+OEd7lPffhiCo=;
        b=NOETpEMQyY6YrPnTBztN/Ipl8aeMZbH4P/7dCPJlaunRQB5hgFdj1N0dmOl17vIfrx
         23B6tqp7MYLEr0KmA934FvinP69DiH3vn7NRU7DpVrat72s3AaM3ZorcqS1GGQQi+k2s
         u37Oy7DUhtUlZe5cIjTSg1LG9CpMp19B+4DiyYxUGI7jSu6aVvaoq7ltwptKjryWir2c
         LlBN0bXkDLNJheEcKS1nNh65kt+HSsXQK42I4Qegn/gwoIxnnpe5+OQM2SmCNE1Ao181
         dAQOdGIBUHO/lv1pikCawucFKwFl+2WO5+6rqAzZEfqy9LniPe+RonMexU5JTW5cYbbf
         3Q9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tgB3HeaM;
       spf=pass (google.com: domain of 3mzu1xwwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3MZu1XwwKAEIweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rjcMEMKu5HQ0RZKo55HXdGgu0zLAGl+OEd7lPffhiCo=;
        b=gKNiMwF1uQaPlTJr7QoIAtOmztibW94e+5EIHEwzkhinQpNHIN20Z3aF+B2+fcKbfC
         G7tOnORow49fxLSJgH0xJtJHnlQOJZPnCr/dHCkGPWPEmNoFjIn3JpHDcZPcYOGhoPCE
         0S2MLaAVNpvF5x5+fcYarLaYNc6WnCXDOEFiZUSzvZWNfzCG/7kry/sy6L6NlNo7Papb
         J1pYa7kxtZWFDaUfw3QlYH4wjyxLscVrdb+uMRo9cK3nBGD6/vJabhfocS1Z+pDGzfaH
         gJe6YvntAQyUeCt14PEhqxOhG24k5bDaYI3N431a1dSJbaR8IRlx7hFscEZBbS/Ecv6n
         tpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rjcMEMKu5HQ0RZKo55HXdGgu0zLAGl+OEd7lPffhiCo=;
        b=AQABS99Mm7NlzRFJJ8PPTnVgM4x7MNfeyjdW0pe2RvINRHt1exiT9Qy5Hno49u/zMv
         pH5uB2WvD1qJOOS0G8I4Pzl7ISbVuM3CVF7v8wVbDx4IMlsjuwVrELNvp2TqyWB+/iQA
         +d5i39lmfgEG0dhUZjJ1tB5JG5PQfT1yJVdU5PpqWScP8PkUni1MD082nWAco587IpoA
         uP5jAkwTbZcT6vi1zu1iPU0ZH3VEcG7hekV7oUOvfZJBRpngbPadP3YRpFeS41aK2M+u
         7GZ1D4FDNjDi7FNTayD5YsmVEE5Hx2cIDffC91ThWmRDKotbbWSvE7NoktJKOrUwjloJ
         Rrvg==
X-Gm-Message-State: AOAM532m6fBjfEDitRm6CQHdUis3cnPfnX1Ij0IocG6SamvWj7hPf7/E
	jAygizWgrYAaJ0hghQxwme4=
X-Google-Smtp-Source: ABdhPJyQfTeVBYh4h6ZfxrDr70CceCYEUo0BYSu2L+P6shmwxEEaYxask4QpHCe142VVljIKP2DyrA==
X-Received: by 2002:a17:902:ead2:b029:d7:ed4b:5624 with SMTP id p18-20020a170902ead2b02900d7ed4b5624mr6385713pld.27.1605737267092;
        Wed, 18 Nov 2020 14:07:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls254152pgh.8.gmail; Wed, 18 Nov
 2020 14:07:46 -0800 (PST)
X-Received: by 2002:a62:2ac2:0:b029:18c:25ff:d68 with SMTP id q185-20020a622ac20000b029018c25ff0d68mr6502752pfq.64.1605737266376;
        Wed, 18 Nov 2020 14:07:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737266; cv=none;
        d=google.com; s=arc-20160816;
        b=ngNM9obZFRAh2TimJBBCmUTXXhBmiF3+okm42hY/Qnd1/JTW3vkV9hvx3NMO29RymK
         8BBbY92EJjbLwHOeGD2VB/vRqgginItiSmXydbyU6UNT4ZhL7AJQw/+CEYlptjpOApBD
         CH7ni2lpl76q+ZthYtBBYqcPH+OyHI+1jGquYwKbwt7BeLM7yNCpqMRwTyhaiCTvt/Li
         js48HF5ovOkXsk5LVfA/XWB9R4sww1IxCAWvzCGkAcMkACycGdAqG8m63L54Yh9v6oHY
         XwzsCfPArGdPusRVSRdZD8M310xTqoKz7G2r49OXdSM0Erdsn/y/x94zMCdWuj3B7ayr
         tYlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=tITgh0Ssflf3KIdl9iLTasR/nuysgEKXGj2aGzu0djg=;
        b=F+1fgDB8xTdq2qW4vGHgE3YHdoX6MXFryZzaVuBCj2y3HGlWIsSXaYYhjahcR4urwa
         7oycdE8ft6QPzoBwEDccGX85DOlsnVeyhKY81hYUBeUFQo8Szdsu0+cuxMVNSC9bDY82
         VUdq51sJpQK1Dqa5mhlbZ+1mCS+DlXUQCqkj033uIMZ77IKI57X9RqZjw+GzLHycJp08
         sfR89S175+aM4g5ZrUhoE5EfuFqy41LDMYgDbv65VKZnki9FvDFnCTwqLmL4QOuSEZ5H
         1XQTJm2jAW3xpHZsHW4sfFKPY+NF/ftcxK8wvOTnTDQDHAKDEHsGR02pJTcssokc8cHp
         GtiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tgB3HeaM;
       spf=pass (google.com: domain of 3mzu1xwwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3MZu1XwwKAEIweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id l8si241110pjt.1.2020.11.18.14.07.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mzu1xwwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w8so4542002ybj.14
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:46 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a5b:c0e:: with SMTP id
 f14mr12957716ybq.83.1605737265629; Wed, 18 Nov 2020 14:07:45 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:20 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 06/17] kbuild: lto: remove duplicate dependencies from .mod files
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tgB3HeaM;       spf=pass
 (google.com: domain of 3mzu1xwwkaeiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3MZu1XwwKAEIweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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
index eae2f5386a03..f80ada58271d 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -281,7 +281,7 @@ endef
 
 # List module undefined symbols (or empty line if not enabled)
 ifdef CONFIG_TRIM_UNUSED_KSYMS
-cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
+cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
 else
 cmd_undef_syms = echo
 endif
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-7-samitolvanen%40google.com.
