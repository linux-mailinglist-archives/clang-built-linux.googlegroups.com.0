Return-Path: <clang-built-linux+bncBC2ORX645YPRBHP5Z37AKGQEXT4FE4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id E26952D7E58
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:54 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id 189sf3758224qko.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712414; cv=pass;
        d=google.com; s=arc-20160816;
        b=kjDS0g1lKrdFS01WddWXc3nU1Xi2haDm4/w1PGZE4RByKPSCtaB6FdCa5f69sbFLqf
         VhWfw+Dz83ZzK1yg5iVoUAQ8kARdvqMcavcUwYCyFU7AO0agVePR2QrtQQBWpuZkSQme
         KS8oO5YPIygafHwBin4RmTm6ItI+FCJxPHWqq8Z2MZHuObChDT+nTt0/X+xOp7tUrBZi
         YMYRQML14cQwH6M0HNTUR7KKsYCKTlcSY84vnuf5KXjKicjb2DRaTFDWORLOx0qf9j5C
         DzHvEPwe46IRVNihY5yO/cuWSaq8Pr+bTIalufvL9IRx57QwiP4BBd6BQdZfkrOHswzD
         bNrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=pXTzqj2W13Yc/BGoFGrDxDrgF1EpNREC5F2FgxkYONU=;
        b=z5NzBriD8xfp63jgE5xfSgV4PhWVTyzZ2KsrN6dmxg/faf74uQW5ORK0uO7kdJLA5u
         ziUtuedxgZ62z07AmtJhV8wxriK5WcT4TvFY6PxpyJUVAub1sCXOucbcRtk9FACfuAZp
         VOJHQyzrcpTlVYjmWGx65z87erFMq/1TEhRYAw2m+yW6NVgWNHw2Wk3GAU3Tju20BGCj
         QAGreL63fva8q2K4zZNbqFg3Wu5UJQ+hc4AzR3Gm7AcZHwP/0cBIbyrR4DJKdxeNK/pd
         aY0JhFrBhu+V8GwgTZ5GZbHJObTZ+7BDJ4Yk28nocoZqQ478EmrAY3o9zK1RncfPCs4p
         WsVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CI1Z1ksr;
       spf=pass (google.com: domain of 3nb7txwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3nb7TXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pXTzqj2W13Yc/BGoFGrDxDrgF1EpNREC5F2FgxkYONU=;
        b=YbYVbwgMXNZlyEVH2pPf9r0zhh3BFflsX3UDAZgQ3qszMOWHxVAyyHiUayMweeg/oa
         5i6f17nOwn7V7DM/WJU265AwfXtJJqYOtMBVyPbjZG6CQG+rN5YZhFVNk9Ifr+abuIUh
         z3eGvZCDt5SnNQEi+Pii2iJMcVGs2421PAITHlFZcrFBJogqybTaDC+P8Viv1e1LXU0s
         zXhOE0SYhvv65Hkur7q0E7cfSMm2HyiX+EPpFbtMUV0Y4xdUBb9ptB0STmfOkBxApIyM
         iZ/txs+e1vdP6FLdJGXjg8/uXzHgluwsetkQn/oJ9Q84xtc7FHrGwEFYbf4ADDx//JBH
         xzDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pXTzqj2W13Yc/BGoFGrDxDrgF1EpNREC5F2FgxkYONU=;
        b=R/9eScbSkYjfy0f8n4GmVFpiEhh4ychjoZAI7EehlXBi1AKF3wsYqng8yxKIiIIhAA
         2iyaJEceEVl/ojgflJhyLJQuF62J0X/aziK/J5vqAJsiPo2w5XWbw25RGMtxL08DoN84
         vIYaIMxgBb3dd78LuolFmyrRUrNLwy+LNktBQTFYiX3MHvwS3t0cH9rd+NnPLUeqmeX7
         qcjpPgdd+vZLm//3jE+5uLfz/pek7qvmRiMUrO3b3yJa5frZICh/3GARRfQSXh87isSu
         FDboQiAloCfzq78ew3jZ4Ogf7u9yXVhbTyW9oVekblodVBozm5CITt7cLCaysVN5Rtdo
         PYtw==
X-Gm-Message-State: AOAM533SWeNsjx9Iu4f/Wfb0b9gVRpzs4YhQ3xUkAtumAHM96R4zdwkZ
	1Sh/E2RpscWq3E0Fg4Plsv8=
X-Google-Smtp-Source: ABdhPJyWUm/8OD2lVoIZZgSGPcD0PBjBAHsi2/qyyl/plXedFAaRUBV9+/3JA/zHNT/42+vBf/9pAw==
X-Received: by 2002:a37:2d04:: with SMTP id t4mr17175661qkh.183.1607712413998;
        Fri, 11 Dec 2020 10:46:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls4594328qkn.9.gmail; Fri, 11
 Dec 2020 10:46:53 -0800 (PST)
X-Received: by 2002:a37:8e47:: with SMTP id q68mr17233778qkd.240.1607712413616;
        Fri, 11 Dec 2020 10:46:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712413; cv=none;
        d=google.com; s=arc-20160816;
        b=bjDdgmqLdcQ7eVxWckdqNgCFqNrC2xVlUfo+885F3GvC/fGpTqgXlqRLX5dwEwHFOJ
         +EKJi33kOBPgBPw2snsj4x5tuajNnfEZeqhtvCX/3WqjiyhVKvPuORURi2g4uRUFILEU
         7FfP0slPYfHnlqN92Bmh6Vs+V9v+3ey9Y0WuwNTpXh2zo7n86AOzIGcp4hLmSxjcch0T
         TKdms9Jx0pJ7gUMuyQEDAg8eJ0WeQDCg7GXFNgCodVGM8DWRbLy45Hh9d3JMtekuVHyu
         YWXHo2FfR4KIkxCmlI+h8BC6X6NygjwKpkiKlg5yxfzk84K1zqqQvLJHY4o+WOwWqm8I
         ixLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=B5HJdqCXUeL43UIVLVZJnxtwrYZ/thw26FrV4EWKXXk=;
        b=rBb2agL06iRPajpJRMo4oZi3ryU02JKmgKEKb49zvsJ4SkpAnSHlHS0/m4CXIJss/n
         ZXQvH7F57QywU6qh8fAVHB3A+CXXSBSS3J9Jy1+pZiOXMuDnqw7LE4QAsqISdIDvH9Dw
         PLhxMzPnCnkccCgmZ+tp81W8A/0gRiVL8u6nGOSzDFGFEvG7u6kEIZAdt6tKrpaviB14
         A8PIYedOwlQ8tdqTragjSIx5rx6Nq9Uqq/wFNz9I5fpfE/T3OC7DE/k+I/hGjIa+Yz8V
         lTzhD6h+myojsKksGzDvzGcfdJcHkpuMxG6nd5yLfuadVzRzN0GiD3WrLd9k7bUsEVMr
         FzRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CI1Z1ksr;
       spf=pass (google.com: domain of 3nb7txwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3nb7TXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id s190si784437qkf.4.2020.12.11.10.46.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nb7txwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id j24so7052180qvg.8
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:53 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e312:: with SMTP id
 s18mr17700151qvl.60.1607712413271; Fri, 11 Dec 2020 10:46:53 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:26 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 09/16] PCI: Fix PREL32 relocations for LTO
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
 header.i=@google.com header.s=20161025 header.b=CI1Z1ksr;       spf=pass
 (google.com: domain of 3nb7txwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3nb7TXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/pci.h | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 22207a79762c..5b8505a5ca5f 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1912,19 +1912,28 @@ enum pci_fixup_pass {
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
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-10-samitolvanen%40google.com.
