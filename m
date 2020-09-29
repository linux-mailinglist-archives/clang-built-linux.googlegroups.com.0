Return-Path: <clang-built-linux+bncBC2ORX645YPRBO6WZ35QKGQEQRQNPGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 488C627DA63
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:37 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id a63sf3781188otb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601415996; cv=pass;
        d=google.com; s=arc-20160816;
        b=HMHAowDJqPH9CmNq51Znda7+kFFryJNw21ihH+Tsokc3Ak/M9MTOln2Judz1PbQnzg
         OdGxCE5hDiTfmQKBjBOo14Fyj3GhflcKOYmAgq14vBL9yX/kp08pUXDAa2CYoWeGOewG
         HG6LPU6eDdx8wDgpfAScgE1fx3FdTM+JsYe3hVnNvTSev/d0v0D0ABDEM6gaaz6IwyQJ
         HXm7UjTnNFJbUHBxuMgeBPk6jQInra/kNwq+emdmkibh3zZAswW+eQ2Xnf9L5DjQtAvP
         OcyB+kcCgeb5REwuFso1073g1GxuZVzjXgvAsv9bRLDkRhJj0stEO0+R2Fch6sG+7NHs
         QDPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=+dUku3LPt8fmSyl1vgOqaD39DiMB1oxn30U3ZiMHmTY=;
        b=EarJbKWUxnEWIohXdzCWqN+k49MXbDBj0PgesJtCCEDx4rnXA4ahq7+iOaR/JT7TGC
         7ohXu0T8t5nHApWkb89d2TW2NGCs3m7z0BTObmbxyKTpJ3wHgNglPOBMQHbAntN6eLrf
         p0AUL7Wy4J33LTeciui8tDmwjssUAC7aU88qV/n/+pXuFyps41gC+NgC66OU77plGLa3
         vlpfE+bzVK2/UoMoyKNDrP/Si/iZDHo7pQPey0zH0faOefWWeVe2+umMYBpF6ZMt6mug
         T+5cbpgSNwwgQ/mIyrqtUvhZYDgfNwtKmirTIURQj2rLcq2G6dbwP9hFJkxT0oEduH6/
         f9sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A+2S/PVg";
       spf=pass (google.com: domain of 3o6tzxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3O6tzXwwKAGISAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+dUku3LPt8fmSyl1vgOqaD39DiMB1oxn30U3ZiMHmTY=;
        b=GoOTDvQLVeCJgHxhMXE29a1y5zXBVez3PmeYTK/gSzHZzIz9p/8y2RNNWd+xnuRQKw
         MVUm4GEBicHQrDnn67BlH4DBGi8e3Q39E3lNy+DsgapZeSOcnjV386yEOUVIJNmFmBTN
         0KxsUNyJcdEa1+n4YJsy1SKNxZRH+9tBt7Fyf0lcldJsPgSeU9ODEqRbMGeHo1k3flfp
         KUUYKWrqRuUV8EzsXb9ryK/rVepyifB4DLiQmkSnPvA3X9jVeFaC07vpHn0WViergD6+
         9IETuDW2jBQdymGXWoUCOvgZAmaDE410iu1zADyfjeBzLPg0MAZCHpQxkxf3Ze7JGvy0
         dQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+dUku3LPt8fmSyl1vgOqaD39DiMB1oxn30U3ZiMHmTY=;
        b=RuxP3ZCEh8xBk04PM8xqudoUflskhMCI1B/6GCXDptKfd1JZeoX2e1TwSGQr1PqoYl
         xZSzLzeCYFiAP5ADGRQC2jkEZxguxTIEDjw0SMCnSmhtDXx7AmtlvhPYkAhECzS9XlRL
         H/SdlRK/Z9akGkcI6iKhX4K9gvJrzt39u9PHZ/7XwczO0KAvav448bEfH5gFnE0i5CAK
         bJum163mEvwLYsJ+kZV2vD4HHu2Be16zw4IXqMCn2cs0esZ/Ys1EjlrMP+X8L8Mh9Uif
         HqD/KJAzIlXk9LY/yTbxZ7PNprxNSZGz07MEYkJJ3QimpTa3f3f2YOUVOVibEJ/bigwc
         fcoQ==
X-Gm-Message-State: AOAM530GNOSoJbFLqSI0URs/sC9L/G7OZrVqxtJvwSnVZG0v7TT3KkxA
	j2hqvLg3ecwcAybU/6g+v6M=
X-Google-Smtp-Source: ABdhPJyYewOqZ+y0rGehAG+dRONcBDQr7rDbS51HHq9Jhi8WpouDO9DavnxmST/S9uemJCvv3mL58g==
X-Received: by 2002:a9d:4e1a:: with SMTP id p26mr4318401otf.197.1601415995960;
        Tue, 29 Sep 2020 14:46:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1634otk.2.gmail; Tue, 29 Sep
 2020 14:46:35 -0700 (PDT)
X-Received: by 2002:a05:6830:188:: with SMTP id q8mr4403828ota.278.1601415995567;
        Tue, 29 Sep 2020 14:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601415995; cv=none;
        d=google.com; s=arc-20160816;
        b=RAk3qEurn/djWTWnQB/cu+qfZfve+uNPeiIKj3RnRpwKdD7Fc+UpeMbm8WModd8Os2
         fi30IIGNTuIbssccQG+a6SGbILZAuZsPUexwz82apkqRei4pMUh7q7Ky4f9yj3Jt4upu
         1ffzsY1Wx+U+m1xOqCv/vZYrI0+kvR7yBR1+2nQMRgU7PGcaFH6bJzQtkMku/R2fT0Lt
         eUF2X8dDwfi5QoS/QM3l+IhTFddH34W+DZ4oLtOwG7gIgLyeyRRMkD7DEk+66UmM9rsc
         ThyWW45b0tGCAnVUMySqSq2DBQVaK+442XxM7jQWfonDZRMd98h2pByrHftKiaal+n42
         TRjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ldzGNGDZyBtUZ+HZEhFsle3HftCI7jj5VijuIes3XjE=;
        b=yH2TSIXmY1U7fEGpAuQSIIeCM1iYg7LjhuIMmsDEST/ftLqJi6lFp4v9cx2ZQFYq5S
         H/zwr0mknfqQBML/Js49FkRvSXtSoAdQJTxX5z6zZSGOTvH3WnqZrbyeTM9PmfdBsX5p
         EuDQjwep/fNrp3nAnwMrZVacJEBR/DvsYAD3TPwepbgYdyclzndccZR90SmZNfa7CKl2
         7lLN6biQhhD6BuKvakDbwTP1vNioN92TXrqFOySoV8wUhJlJZ2NFcoCBeqzvTVNY95yC
         Cf9Xqvala/qoNxZe6lDO+v/UkSpcYoXeDWHnaLoXq1hIRJcS2TDq1SiFkJ/oRrkaJ7OG
         bvOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A+2S/PVg";
       spf=pass (google.com: domain of 3o6tzxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3O6tzXwwKAGISAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l19si448632oih.2.2020.09.29.14.46.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3o6tzxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id p187so6462173ybg.14
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:35 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:ad43:: with SMTP id
 l3mr8526653ybe.157.1601415995012; Tue, 29 Sep 2020 14:46:35 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:03 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 01/29] RAS/CEC: Fix cec_init() prototype
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Luca Stefani <luca.stefani.ge1@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="A+2S/PVg";       spf=pass
 (google.com: domain of 3o6tzxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3O6tzXwwKAGISAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-2-samitolvanen%40google.com.
