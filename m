Return-Path: <clang-built-linux+bncBC2ORX645YPRBIVFYX5AKGQEG54MQ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EBF25CA5A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:32 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id c197sf2674292pfb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165091; cv=pass;
        d=google.com; s=arc-20160816;
        b=uhqcKT2nWgQ8z8zvqIjsOjRZoaS8r09ebZd0g0mewPeCD/ebizFqxZ/HuSytj07G3S
         ThtGiNDktQCjC3Qp9LDczoWHJ7LSQjBZ8H94k/GAKksDG4UfQeI8U7cnpOeNq6IuMdee
         cEN1zOI+f158jU7LKNtltNlrMLkdsJE1na6TyiOpBdYawRWSXTGxy74OqPz9/hwF1JlN
         bCGauU7aDrQO8bkxIlFvJ0D6s1rZHQcuPxDiyYapplD097T0MIvix6kwi1u7I80TGUfk
         WHnMen0YPfuaN1yFsb4b1RQnikGq7aW6wdNB07RFB8h9c2D0lQpkK2Aa1IwWcvx073RZ
         Hn5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=OmWe3yeHGvfOAa+D2wfxlG5wjrT9iop33Dbk0hIL4UU=;
        b=CeOK0ZveM3Exrt6zdDgpAwp3II7FX0N7cOGnpZX8BWKNXXkAJHl2alKYumL7vYRORk
         iDFVo4D027fpeLqRCb3r8xVlnz1zjj4x+oDEwqAOdUT6OR4k2qjePry472WXOzKy6QGc
         IEcqq/uuS8BWvM/WLP31O6B2o0ruhnDtfqZRddFWJBopBGtA6AraXe/0PeTEwWnzldMR
         hdb/63eh2LpdSZo4ZNlOXvjR/+qbIB1SAS6QBMsoJN5QXYRo7bLXl4Srs2q/l7RgFulD
         sKEhhsux5I2SC0sMp349tUVVpPBkTllgBtyl74dArgOmRU1KWtmxoi2aaaxgm467jRdL
         pe7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bl8y7IQF;
       spf=pass (google.com: domain of 3oljrxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3olJRXwwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OmWe3yeHGvfOAa+D2wfxlG5wjrT9iop33Dbk0hIL4UU=;
        b=VSF+ib6YcigRbYDshO3QI84u+1Dj4FETothneimRQBUUWA6i6efyPN2iyet0DYOrwI
         yzUDBQNHZQbnv0QNP8+ZoCB90O06xTzxhTTBqcypS/ksN5e9v/bvqR5IeQWVLA/PEkYi
         SB5AdfSCW/omRK+yaMArfXGDeSlE1ZNbtrpcZeFzRkyl1F+yeq1JhwaHPoXyy739GEDD
         w3TgJTbssM7RfkogpF6fauttJYzSnL4KrR2u981cUr0ptjrOv94K59NWcAlFDSseKk1j
         K4M3LzLmDyX8GjAAs7TIb+BMUTgZtDKeV7XXWCgztksRZytGriXvtEODwxUtjxJ1InWB
         ufvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OmWe3yeHGvfOAa+D2wfxlG5wjrT9iop33Dbk0hIL4UU=;
        b=PS5t/vU7aH41VBmMozASPQdkJa1Fs4L50vE0lB45fEHqOqW0TBbkTQLq92UfDZdjaQ
         uIyvnJXYr/WeKVx4OXpmG6CBX2MzJtHglPR3zija5RcqDKnBDUPSaEwg36gLqFRF7ztq
         oyTSZcaQUm0DRpZaArw4+81QxSa52IPxh+dKpgYyVR4v8t9Z5TCoperBjBTyQv8dwc2q
         y2B7DrwXUP5e8OwaGcTIJoI8rNMuOL9f3u8p7Y+gndTl/MHdjujQLSEPUmlrlTSNs7Fi
         RvK62mKz2XBcDX+/xn/kwwAr6NXfCcx/q9iHe3VILD4fPcHfdE+7cfUBjP2LMN9uLgef
         i1cA==
X-Gm-Message-State: AOAM530Zmx2Byi3PiM2JuDgo1PNwJPynIJHLaO48ubA+lHIJesBiJSNF
	0OyQEGT97GFqrVkHtawW9Xg=
X-Google-Smtp-Source: ABdhPJzTWahnqaouqQk+WUbuQd7rgJvrh4NUAuKAA3tf3Tlr3XkoCzTzI/BPfJ0zNOlR47j+jn77bQ==
X-Received: by 2002:a65:6706:: with SMTP id u6mr4287136pgf.404.1599165091038;
        Thu, 03 Sep 2020 13:31:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8cc7:: with SMTP id m190ls2846468pfd.2.gmail; Thu, 03
 Sep 2020 13:31:30 -0700 (PDT)
X-Received: by 2002:a63:4c:: with SMTP id 73mr4500604pga.286.1599165090547;
        Thu, 03 Sep 2020 13:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165090; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4Fr1dDudo5qcA3b667uxih+lOVzUGOjaEaG0JTSgniy6VVHXNdDOu/iMEHAIa5z37
         FnXmI4FJ/QUFlD+m2yDyjr9mCR9Oxo96TvKU4NnbCGChpIKs0t1HdVPkKfduC/tLshKI
         8nEFMWkj/Xg84BqB9bWTGEQzW/N7WnYMSbWqAa1nEadT0s5TJ7gnPf/e+hI4cN90y6xn
         9+9O7f5RSSmJ0vA1FYuX1Qd71P8szXFs4gNVo8cG9bxYj6zyuzfNr/BxzFJMiks0ICuM
         JJrrIuR9YoYhaWBXUJ96U7Z3lCmn6JvvPfX4XH1/4tmlOu+jfmvubvMNz1D4U159pCY6
         82GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=eXyK7J9+wEoy6n93pGjsemhSapgcmFl0BX/NaB/p9Jk=;
        b=maO0Kwr4wLYMEWXW8ELiZlFaZA0uagCLcFoDphGjiWTaHs6X1P3KK1BDrBFJHpBLeS
         /7UO+nGqJdsYez6qVgLN0GEtjUxqmTZoOJ5ndQ8tlH/FSNIZHUG6FoH0v7gOU9q+W17M
         +ydKEN1paNVAS1rAMNuCkfuiNhuKE/3EatqYPceHCvDWYzAaMv2N3dt6i3nCKckD3Kn3
         D7gUy6s72uENBGxu9MwQPZZQaDdOMgvPkLTFbokybwRSqqHskNdDksROJAmJd992vjSg
         KF0ELbxJBFm3YmRluJWWcqGk197sF0pDK4ePctjiX0JW5BU8f2rAFQxqvkm9aIXb7uu4
         LY0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bl8y7IQF;
       spf=pass (google.com: domain of 3oljrxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3olJRXwwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p1si228573pgf.1.2020.09.03.13.31.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oljrxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k74so3980439ybf.23
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:30 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:aab1:: with SMTP id
 t46mr4799689ybi.249.1599165090093; Thu, 03 Sep 2020 13:31:30 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:42 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 17/28] PCI: Fix PREL32 relocations for LTO
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
 header.i=@google.com header.s=20161025 header.b=bl8y7IQF;       spf=pass
 (google.com: domain of 3oljrxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3olJRXwwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
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

With Clang's Link Time Optimization (LTO), the compiler can rename
static functions to avoid global naming collisions. As PCI fixup
functions are typically static, renaming can break references
to them in inline assembly. This change adds a global stub to
DECLARE_PCI_FIXUP_SECTION to fix the issue when PREL32 relocations
are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
---
 include/linux/pci.h | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 835530605c0d..4e64421981c7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1909,19 +1909,28 @@ enum pci_fixup_pass {
 };
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				    class_shift, hook)			\
-	__ADDRESSABLE(hook)						\
+#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				    class_shift, hook, stub)		\
+	void stub(struct pci_dev *dev);					\
+	void stub(struct pci_dev *dev)					\
+	{ 								\
+		hook(dev); 						\
+	}								\
 	asm(".section "	#sec ", \"a\"				\n"	\
 	    ".balign	16					\n"	\
 	    ".short "	#vendor ", " #device "			\n"	\
 	    ".long "	#class ", " #class_shift "		\n"	\
-	    ".long "	#hook " - .				\n"	\
+	    ".long "	#stub " - .				\n"	\
 	    ".previous						\n");
+
+#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)		\
+	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)
 #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
 				  class_shift, hook)			\
 	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				  class_shift, hook)
+				  class_shift, hook, __UNIQUE_ID(hook))
 #else
 /* Anonymous variables would be nice... */
 #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-18-samitolvanen%40google.com.
