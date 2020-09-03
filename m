Return-Path: <clang-built-linux+bncBC2ORX645YPRBCFFYX5AKGQEDZ22OOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id D38E225CA46
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:05 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id r8sf952365pgh.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165064; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNkwYpGP+GSpds8CDgnEJr1NkJ2sKVdd7OBtE7wSn6q6jTT37Z0Fc4gUnwIn9hiM9k
         YOqXFNp/Rk9nW+waPbwmIL09A8R+lbsjp+xDKNG1FvaaT3qysX7EFCAq6mbYYDe5cthR
         /IzCf338vyuK+N5yD+3mxwCp6iYjNB3Jni5k8VZXeCdBl2QKPwESm3XRZoH9fnjLVkBc
         usLh8pkMOctyBZs/iDZgJUFMMld73PE4EK0GnUyvve2VkW6dunpEHEeqDuxYLaVbxeyi
         hCG8CPRH3td4M/6D/tzMfbbYTeUtpaglnTFC6X1PjBbH3ofin6a41tf/yd1BwtsEItb8
         cQzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=y5Wecom+uACm/kWqBnr2nI8UsnVQHPunQThVrfqJorg=;
        b=WgsB9h8gB5F3dxcJ65eZ+yfwEfXbdtssv4fA1//EfeFLuBsaDE/8DqBIwuZNJ9Iabm
         WLUAixBoa/QEz2wKQH9AtckiTdo/Br0sYdmMl4IRilDFdq9etbHryZrzs38hjxB5uUvJ
         G+1bUi2QCXW9/GTsxTJ0Lou5bD0Mw/P0Fxj8D3ys47OyR26uHXgi9zdvgc6bb/YFFUJm
         dt4SCDNCtBJNeSvQY6NuOCBnbTo2NPScHQSHCMtnIYBOEoLGEFP9eJju2fBVN1VEOQ+u
         cSYWou9L/ZFWdHQieUP1j2wixVDtnZEmVG7FhcXERwgZfNm+okH3JDmNuUHMC8HjI2s8
         cAnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ppe0VpEZ;
       spf=pass (google.com: domain of 3hljrxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3hlJRXwwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y5Wecom+uACm/kWqBnr2nI8UsnVQHPunQThVrfqJorg=;
        b=EwqDgN3Rxw90Tlf8PTQ5e8ouzFfvFqV5eoj2eO1G6h6pbt8cJ9Rfs6tNNvuKWPdGZ3
         I30nHmbBSvEdr5x1OFXkrq5OEVdfduKDlDkpDBXeycgz7iVnLCb4c8CNLaZF03t6fDAK
         7Pkmj2+vzdv1DI0ynOlgPxWX641xMYB0845d/SKtOflHcTJq1bZ0iF8ZreZF3pa4lBOi
         anXh9Pq46B99meoH98L2KnxOWLO2fO16nZylFfKk+izfsykEN9TdOB25xj2DL37dJlg9
         sIX4vUwyY6YlPBnaIPlH+wWty6kbW8UeGYZjfLrF6cS/I5FehNAPLPrFcNR7ilS37RXf
         CF9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y5Wecom+uACm/kWqBnr2nI8UsnVQHPunQThVrfqJorg=;
        b=h7lf5ryW8dOLobzo5mlyLVKZA87yByekCouBM01PCw4pudy9MxoUTFBNz8DBJlY0HJ
         gy3JRRDaD4duwoqBPMbRjwDPHpoCe1AJn3PZdf06RTVDLLKrcxGwjaQbm95J9iPLDWes
         zukF7oGb776X+CtkSWRee52ZI7b3GDj/7wBhdMUtO5+lI21PDFA2Y/1JXUa/tVNPAVC7
         nqPRL2y8f8sbxTYZzegUXr8kkVO/P8buHimAmofB/ObPG4ZcyKHUDRQyyexhAQmC8dK6
         D5JEHBo+QcnZUYhn8CyRvSvw16hav02nfSQLugJqPvgvznieUuOAl5J7BIXsSejHUg14
         frkQ==
X-Gm-Message-State: AOAM533lgj+BLNHwJU2tWejQya9yymZ6K6IskHAiLxVpWQGnCo5wjCLl
	Ve37KAXSr6Z1OtkLqE0CVis=
X-Google-Smtp-Source: ABdhPJypKXz5p6dlF8bWcW1XyWJgIyJVIfO7wVaJETSUnejyqWBNOx6laJBZ5uta83n1Tf7jD/OYNQ==
X-Received: by 2002:a17:90a:2e0f:: with SMTP id q15mr4901736pjd.49.1599165064378;
        Thu, 03 Sep 2020 13:31:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9d01:: with SMTP id i1ls2159516pgd.5.gmail; Thu, 03 Sep
 2020 13:31:03 -0700 (PDT)
X-Received: by 2002:a62:3886:: with SMTP id f128mr5402044pfa.136.1599165063851;
        Thu, 03 Sep 2020 13:31:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165063; cv=none;
        d=google.com; s=arc-20160816;
        b=A/XowlQW9xdUrLAxYzLDhbVNUfofRF1CQOpHbMCuLo7TIGYbNQTVGnBDi4VOeMWzCz
         nvb6RDW09Eq8fgghPWAbx9WgO4pnkKrJJvvXjoU+gYlOvtU4Eo204rR9tbnFq7AsrVaw
         pF6MVD6d7qjxqKRY0kbfweYvT8twtCIN2sEQWTfgO1gJqaW03q5EbFr0hRPiEXvkakem
         YN76neU6e9m/M+wm4B4MTa7X6ZhYNUr7dT1RQ2Sz1OGnFxCpDAVLyiiAkBUrdtPEbL4w
         57WcJXP+PSv4St30RNhXGxeyCIjnbCMLhYYBMSX75ZJyTIxh/vhLRRFHpaCMb/jkaEtl
         8rQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=wTbIhLiuyTm+XoSeGxmt2GAAo+IvKYWaIE8cYk7ZU44=;
        b=z6XGOWMmOeLEtileIae1XSnPSeStehIbO7rFkCJFTegZmqlt8jLfrpGPkqv4djv3/t
         0AvaybL/3GywRUEIe0LrlsGJ7hlPwuFw888e907JfXri1c3eopp2SdCQUSnOHb1fH8f5
         DengZyx/GAsm6AT4m01uvl34HO3URmk6kjyfvJwb4e9qZ7RTHB6UBoOk9mgYDQq99Iqi
         u2x8FZwgoOpsaRly8pK2jBOPjCaee9BOiq72A0jMNIm+3Qi9ipxl2IZztk1bT5KGbVXh
         /RVtWREcP0nlifFCV/HxovF9W/NcGVQBMMZ3lIW7oAYgQ7MnmVbNlue3szyCnbKgp0Ql
         c63g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ppe0VpEZ;
       spf=pass (google.com: domain of 3hljrxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3hlJRXwwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id kr1si351693pjb.2.2020.09.03.13.31.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hljrxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id x10so2903739qtp.18
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:03 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:a342:: with SMTP id
 u60mr3554884qvu.2.1599165062979; Thu, 03 Sep 2020 13:31:02 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:29 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 04/28] RAS/CEC: Fix cec_init() prototype
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
 header.i=@google.com header.s=20161025 header.b=ppe0VpEZ;       spf=pass
 (google.com: domain of 3hljrxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3hlJRXwwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-5-samitolvanen%40google.com.
