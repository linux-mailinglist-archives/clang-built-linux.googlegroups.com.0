Return-Path: <clang-built-linux+bncBC2ORX645YPRBM5KST5QKGQETROUMDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B2227061A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:44 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id a2sf5555279qkg.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460084; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZjMQ5XL+ES4JE4Q/on12TFKOirNCL1xE+Z3hnkdGf5HHDmIQo9X0RVCEGZvhtTZmu
         3bJ9++y66mCnnkSsWUQaFYZ+bPE243doNrXPmAcQGFXoSjssZyzzKiU7YNYmfNHtQF5k
         i3uEGz9dztVYQsB8nLSidQxIAfgES5ve6P7MQP5PbbZt1tvBMpWaehjHFj0H4lpKrScI
         UpR6eHJYm4CuNLiTzw6/y6bS8FLik0PaLNxeT7zlRQeVAUnCMGEZOdCgWu6c5tUdYLXB
         yHBrwl8GtCnhjceVj9TST/n+Jtw/9F2fh1OoXTxZfT3AqGiiVCSZEV7Q4yuh/CeKPXA9
         +olQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=xvdL1cIWdp8+h7alFkTqbDZnJjEY7x3quigyNMTxk0M=;
        b=UZvgmOh8svs741HWf8vSyakaCQOXXROn7Cn11CKa7hpbIsBKBcrpdzplnyLhTuADsR
         VQ0DGQxs/ms8WNbgmMfXfg8O6deHnIIeWIYX/hPOE5n3AuBh7DWsofUNmbBlb/ZSqczw
         OroAoaq+4iBaBG4+b0WwEoYhpJPFmvIrrArqh+LmNoAJmg3myjzqjYzMiN9nMR3KBzbH
         eFEYrzGAq2LqcG72dltDLGBZ7CCPtgOXwCNGaAwa+UM40+xv4SOnW/ZX9RJ0f/2urwiW
         QTTddMEfQ6VORT0fk30ywEt7LEETPTo6dByqTCO7px4lepLjwtPM3aI7LzSiQmQcDb0x
         Ovew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SAoKEt/G";
       spf=pass (google.com: domain of 3mxvlxwwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3MxVlXwwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xvdL1cIWdp8+h7alFkTqbDZnJjEY7x3quigyNMTxk0M=;
        b=KJWFAcsECVfneRMvgP+IN1unOw4ogR6Oz2x+0VlqNvJDNhS94ocUkJTwtB1z+x7eiy
         NgO6rD+mcUnErUaOAe4Meg+7aSD37rKBdPEVBPrgX0nMfIYonx94j7gowP02sjtQ8SEu
         gt86tUVCHikOxGFU6FIu8fp+y76BJ3jlsDhigaaOeHSRH8QrvJPkg0IjzzKqodZUICSV
         OQujei+2mOn7OWmKsJc3ajLGue61zi/0LXRRX1SpjYH2x2ERsfsWsXW0r39HBaNouol6
         VhWvCirKw4pEe5T7B5yfqf4+ZLyezY3cmGqo+avVoMqH6hZB7a0b+Tp+bC4rA3xP3tJU
         ju0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xvdL1cIWdp8+h7alFkTqbDZnJjEY7x3quigyNMTxk0M=;
        b=nx/LF3GzdvqQvtVUmKXkhR/fZ9MxFthZTmewQxDqEcpksXmLnhXteIrNPLU5GGvrIU
         wwZhe1eZlLNpKENVNRXYGfZHAocUn9sjpurfkyo3l0DQU0CLkHVGsNkUJGeCq90DqwB9
         xsWCWpZd9rZfIHKUgRutp/WuvNeeNNnjYmHjAQqWLpHYh2rF3FSVa93KarZj49d0DmVH
         gp/rnEceWaF4FfXM7gObI6Sq78gWHuF1B340IXMQ5iXpRIzyciOf2T4U+aYa6C+l3M9e
         3urMb8gjGMZNI+YKB94j3ds0UaPNoDFCYQDOAgPhuhqgP1Ka71X6wu2cCx4azvhb+PqJ
         iABg==
X-Gm-Message-State: AOAM530WYDwu6d8F2KYyLxdr/TVr0huHKTGLMmV0aV06nvbnXsKFwfT4
	LL2kuRr70kmuPf0nJh4LBvE=
X-Google-Smtp-Source: ABdhPJwxV9XDCHLam0RyfCbUqsSumoSsvnwG/SaoIUMMFBngudR/Z6Cv1RBDEi4hAC1y+V8l9pV+fw==
X-Received: by 2002:a37:9b88:: with SMTP id d130mr35424931qke.66.1600460084070;
        Fri, 18 Sep 2020 13:14:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:228d:: with SMTP id o13ls3389677qkh.9.gmail; Fri,
 18 Sep 2020 13:14:43 -0700 (PDT)
X-Received: by 2002:a05:620a:cd7:: with SMTP id b23mr35525243qkj.192.1600460083621;
        Fri, 18 Sep 2020 13:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460083; cv=none;
        d=google.com; s=arc-20160816;
        b=YxBqFlXKDWLlBYxcZY/ID2nmHhcn4Bo3T/y/qVd9qFdHogOMzA828xyukpyXoBErSL
         r/ogcL95daM/v0XYy9QSzJrJWrxRga6efSPWlv7LaxDteT4tcW+o5pegf5qm7h0fZMd1
         IWw3ZiQzYcGs+9CiSJ+xongpfjLd7A/Zim4WSgbR4/VFEjwNno1M5By+hk4SDeMY2lE5
         CUy8LS3YB4x0lW1aRxuadll4HhwOUHzopOuloHnNrABI/MsVY4LrHbTTg+QLyUFNUdCn
         f5ebGIODSe38ekkc8JLwkWKPlgCbrv5a/bVtP+OOOMcCtlSK/qdfux+TQHnUZiRUmoGS
         eUMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=TqwpwA2qY0+meoCfIpHLXgNZtzIUgg9/FYqaJr/lHNY=;
        b=fZzD3I8RrG6HZUesn2dHHu2So9ntXsWQDIYkdUCdMiIVfjQKJlrMGMYsMp1LlviE/d
         2RnvZoeRjJOVZ0bC+sOqDMswK4qnVhMjrFsYmTNSpnIunhqmsSyDneinBBrBZlW+ELKO
         8q40v3cwFuid6a+1aLArJDskpPxe9NgqCZNOWz+hmJr8N66yEkYG+gyds+fPMA9ytuX2
         ESr1IRV9GZkBntGSYrAAdovgUrwHifKvJfkjAwn32qWfSkywWZSpSZgzcwP5VnlpVs/e
         eVkp6dw5ELVU9/FRYnjo4/nJR5pP8OZVrD7OVDw6TG3rWqMyl//l3STsCBmrP+NbSxYS
         CZTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SAoKEt/G";
       spf=pass (google.com: domain of 3mxvlxwwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3MxVlXwwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id q5si184014qkc.2.2020.09.18.13.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mxvlxwwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k3so6723340ybp.1
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:43 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:73ca:: with SMTP id
 o193mr30862020ybc.224.1600460083214; Fri, 18 Sep 2020 13:14:43 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:08 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 02/30] RAS/CEC: Fix cec_init() prototype
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Luca Stefani <luca.stefani.ge1@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="SAoKEt/G";       spf=pass
 (google.com: domain of 3mxvlxwwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3MxVlXwwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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

From: Luca Stefani <luca.stefani.ge1@gmail.com>

late_initcall() expects a function that returns an integer. Update the
function signature to match.

 [ bp: Massage commit message into proper sentences. ]

Fixes: 9554bfe403nd ("x86/mce: Convert the CEC to use the MCE notifier")
Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Sami Tolvanen <samitolvanen@google.com>
Link: https://lkml.kernel.org/r/20200805095708.83939-1-luca.stefani.ge1@gmail.com
---
 drivers/ras/cec.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/ras/cec.c b/drivers/ras/cec.c
index 569d9ad2c594..6939aa5b3dc7 100644
--- a/drivers/ras/cec.c
+++ b/drivers/ras/cec.c
@@ -553,20 +553,20 @@ static struct notifier_block cec_nb = {
 	.priority	= MCE_PRIO_CEC,
 };
 
-static void __init cec_init(void)
+static int __init cec_init(void)
 {
 	if (ce_arr.disabled)
-		return;
+		return -ENODEV;
 
 	ce_arr.array = (void *)get_zeroed_page(GFP_KERNEL);
 	if (!ce_arr.array) {
 		pr_err("Error allocating CE array page!\n");
-		return;
+		return -ENOMEM;
 	}
 
 	if (create_debugfs_nodes()) {
 		free_page((unsigned long)ce_arr.array);
-		return;
+		return -ENOMEM;
 	}
 
 	INIT_DELAYED_WORK(&cec_work, cec_work_fn);
@@ -575,6 +575,7 @@ static void __init cec_init(void)
 	mce_register_decode_chain(&cec_nb);
 
 	pr_info("Correctable Errors collector initialized.\n");
+	return 0;
 }
 late_initcall(cec_init);
 
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-3-samitolvanen%40google.com.
