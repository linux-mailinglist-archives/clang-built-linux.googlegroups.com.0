Return-Path: <clang-built-linux+bncBC2ORX645YPRB2WWZ35QKGQEXX7EBOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FFD27DA92
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:23 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id p6sf2758086ooo.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416042; cv=pass;
        d=google.com; s=arc-20160816;
        b=bIsM7Sr1hreLRgtNDJu5IO7JFxOxRp9j8Bd95Wi63fWes39nex9DrdsiSsvKbMHF49
         miPpN770zXNAf+8UUZuQFtmK4TBe3ifIwH4BN3TPyQVzXOkezLEnSM5T6G2REpTewzeU
         i3rN6N0JhknL3WOdETXC6PcNqFbsqnfYafYNSeWo4s8Rp410T6EOvmbCoWfFSIRXd6W0
         R6cjiheknAXP43nAnnVFMptZbmx0pYe/F16WRsESTUHYz5XAwdmPl6HZUK1r7E9Ejq6Q
         9hUzVsKZqPrLSgh2RFnp0/DniCjCxg/D5365sZVM0z0SyFmS8fO+ekDGA9rXnD3I2Bjp
         WdRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=9uwEwYoQc7QpYErBOndbgd1D8VxtswoYZcVHdSNnHkg=;
        b=VkUHLbjD+Xoq45QCz2BhzvmfpzPwtTGFn1smrkVmxL8hHFrS/v6IVRDBRhnktphu4C
         lVf4lGDPaSqcVGrYnzgKFOK6HwZYM50tN/SClOQ1IkUGFj/CcuRH3eTUfcT1kiQFrVR6
         vGfh8Hbmwf9GfOgUeHQ7pOs/LTO0nA4MVS8yw3fByn1j2L9oNQrjc/Fn0h4HDkHBGO9d
         C/YAEV07+urYSMF/j1D7ULWodacNzlQB66IJjFV7k2ZR17fLVd1A7JZ6gEiy3udV2gvY
         3FUgBFWRzuA7tvA0NVpZ5L28xzoQvqnb6CYbGWcJcuJVVW9nwhYUwsya7p4VfdHtBfYJ
         5kNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gdAEDDvL;
       spf=pass (google.com: domain of 3aatzxwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3aatzXwwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9uwEwYoQc7QpYErBOndbgd1D8VxtswoYZcVHdSNnHkg=;
        b=aLf4P34VCTCFuv4ntABTrTzPFX7sTW7fsZ71VNP6wkqTeBEpWPHAgKYKFl1PxGFf0G
         EF85NCkDxsWtULMeKZtU/UfsVMNe7h1eIfTDn1AjAfVuoVbP0fNPx5d2N4QF6XsAJrA6
         nbiK9Gg+PYj/3SWmsXl/TVedGxVdwpNvB8yCp3LFWDBwxTyJqsGknUHIXW6vVEa/bFUR
         xHtEmXY2OKzplX0j+fXQzx/g8/iJLZLrp/j7oqvMI/96J0XOAteFeJvJ/zOKsOQzKMUC
         sHuYFiVOtUNJJDnB6wLQeTE2/UOdTBBXLf9t9fyvB79LzdRSOJjCf80Rd0SUEHQvV3c2
         7qyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9uwEwYoQc7QpYErBOndbgd1D8VxtswoYZcVHdSNnHkg=;
        b=S1xU9dxOV7B/XaetS2CrplbkCwaTGY2RaYTID75uI4wV6ycByIBQbiEF4b+eZv7oN8
         7byrXYImhiqHkaiH6Wiy4/Eo0PrcMc6/94vYQz2CZPYQKNxnAjxM7M0eInZn5n1POL5Z
         IWI/6e4ghBhaLwxZoYclyhA70mi+q+vV4M2XrEAnKwuu57604H+8uNzEvAYoqYTyzChM
         54zDCEqzSnsvY31JCQ8By9smvwO8sI0d1hV7UYlsGbQ31UirdttTdAbtD0iyvI+kHR2R
         gQbbJSfZgRm1AFEbd6rmbDAnBnEMFuHZJM56xyvEbCEu7uZ5a/7r1kZSYFG6sSYQOaPQ
         xGNQ==
X-Gm-Message-State: AOAM532TD98NgD/rQ/1I+f5g9rC6Wf0Dqv3XhGCWgIl9BoMqZajLeNA3
	PCOk/0CThv8DQm2THQgytCo=
X-Google-Smtp-Source: ABdhPJzZnFykWw1qiPGhLh3gcc5aNVJ9gLpaNjzBZ/IpFZe24nIs9dAUzZvmdZnhmRl2piLmgh4Yiw==
X-Received: by 2002:a9d:128d:: with SMTP id g13mr3972385otg.245.1601416042215;
        Tue, 29 Sep 2020 14:47:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad8:: with SMTP id m24ls1488784otn.8.gmail; Tue, 29 Sep
 2020 14:47:21 -0700 (PDT)
X-Received: by 2002:a9d:600a:: with SMTP id h10mr4390572otj.170.1601416041868;
        Tue, 29 Sep 2020 14:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416041; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfXxBk8+QM5TjPVimGLHk6O6iQgLxH9Qod/CUEZVvjD8dX+PhKl/P6YHwO4gsKM4v4
         dNEddWOpJWT2Nicbj8pIoZ9umGNDhUzNJW6EhI6AVNoCEZQIpmK34cSj5iI2ztnv4GLi
         l4lQQjQvtMX6eL4X4xjaiYBeV/bU/MhK6Q3chV3MZWJ74oFMDV92sgB4YMz1dwFVtqpk
         k0X7qvDqzxhbiX6sjY2PPsReLuLVFvLAq0ZrdtWzHcoLmXNe/H6NZTl91czkAzDzFcnB
         MFrrrd3zrr8tfBhqN8RhhZh11HPiVBAbpOhYD//1KZR0AG+9/w82rvPXhm4KwC+V4ygA
         SYGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=M/tCJ87SKQnbyhBQptnFDCNgoy9D1scy1+3ph9ahS3g=;
        b=ZkWlZHpBMP9E5urJHzUbgFV42aGKt67bVAQJJ3QY7ZB5EuyCrUyYDpFRLZ1+ZFnZDv
         FkI/TlDdzeRJcHxwCUqatwA005ciGFSiLO4qhlE0amjE7KSOx4VsdrGI+T3BSzyDxxUr
         1eKgX0qtR4ooYG6RvrTI0O41/wOvXLGKkizkm4TapS2wKc4ZJUHhqK3Q7DtjMLk1liSv
         0fyfe4rFDs8EdtvIRR3e/az9Vgq47Wcwo7DKOkmul9swiOeWuVqN/cr5CiMtQitKWzsc
         O+OIdcmyHfzBMdStzDuQVtmULApmJbwuDKwIp0nyLzS+Y1ClbhpXFcIqo0XmnrXtTnk/
         K8cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gdAEDDvL;
       spf=pass (google.com: domain of 3aatzxwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3aatzXwwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id l18si372784otj.1.2020.09.29.14.47.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3aatzxwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id u6so4066649qte.8
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:21 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:58c7:: with SMTP id
 dh7mr6716936qvb.20.1601416041280; Tue, 29 Sep 2020 14:47:21 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:23 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-22-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 21/29] scripts/mod: disable LTO for empty.c
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
 header.i=@google.com header.s=20161025 header.b=gdAEDDvL;       spf=pass
 (google.com: domain of 3aatzxwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3aatzXwwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
files. As empty.o is used for probing target properties, disable LTO
for it to produce an object file instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/mod/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 78071681d924..c9e38ad937fd 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 OBJECT_FILES_NON_STANDARD := y
+CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
 
 hostprogs-always-y	+= modpost mk_elfconfig
 always-y		+= empty.o
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-22-samitolvanen%40google.com.
