Return-Path: <clang-built-linux+bncBC2ORX645YPRBY6WZ35QKGQEIZ3PSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DA527DA8D
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:16 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id g10sf4093160qto.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416035; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ti+yZUKFns9P1VMJVvGrB0X/rfPzVtUnOZJSIZ8YHDQ5ltmSKnoPKpKCaHZmQlzuYM
         bfssPBxlLwMkEoVRv6dJ5QxoHRHw2uCDuE/xZt9Y2AzR75j361DPcspet2o6DA+wMl9h
         gxuiyU6cv9Xaizn/3uJ/RyYMpc0Q63zqHuuaDIcT+xxjX9Z5UThiJKRSRjMchsSCw9Nm
         h8SFvzlR60C2Kt1Zyh0odCjDri2Dh8/jPYg3Xe7qe+RiM5fiJyagG42cgk49PisY5KoC
         AaXSg/yYwmQURgMeGHvlRWLQHQ6C768lvLb6I3PBabj9FKEql6RkpkIvQ6ZhYuKufC45
         E4zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=agoCTp8djaQ+IK83Dis7Exs4TsvL+9yfXt2ZqQHjh44=;
        b=VISoGkv0pJZg4Mt6ATiDq9PWqhPqp3h9CeZO3ozyZkgq+fEyLG2KFhrTtg5GziPS6S
         3+xkQalCHlGfqd6a6LovrVUqrDuJmX7VyEX9wN1j3WFNYcjNH8kL9q8TZEUUsHY9hVvr
         beWvYhaNWgJwkCHUsozUC94MMcFl7ctcQcrAM4a1ssnkav1UvgU22xuH2VmSnAt/0c4T
         n5tX8M/M1dGU5opJW/eWKsMXm6DZLWE5IXgn252Ivh67kLfP1/K3Lhez1U5rsWU+fQIE
         /uyh+pU4PKY9OOXNPEEOuPJmw3y0MlIiX1E145YG2LMmiubiQqULEcFEVgvP4E2f+cw0
         WhGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b55hwPid;
       spf=pass (google.com: domain of 3yatzxwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3YatzXwwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=agoCTp8djaQ+IK83Dis7Exs4TsvL+9yfXt2ZqQHjh44=;
        b=leeroGCaA3QTKz/oP3esIkCnnMjpAoDQE5jnFemzaORN1FWUcTa4wmK2lLwYia100W
         hRVzZom2neFZd+qbhRUJeeD+pqMKixvqqS6jA/Dwk+EiHxSFZDvnWzV37eF1kxQQUs8l
         x4b3TL/WVp8ZwnuKCrrjIwV/GowqAArRGwyiiKvA0qvkj4pO8YrMkAoAsbWunUjnQ6G1
         2jbxuLbjcZUgEamAadc131V/3i925lDX+MSFE4fRo5waSq4F+AuRGrAiabliRp1am7K6
         zv92Q7oxgnExBl7w9RiFnz8F+JLFleCZldsRFAbLoQoKyRaX0Zpeu575QX3ZLz3SZH3+
         lHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=agoCTp8djaQ+IK83Dis7Exs4TsvL+9yfXt2ZqQHjh44=;
        b=IXlfNekYsh+rbQpT93EKb8ITfsWfMPFOwcyhViqaeEjHTX+jWmYUkT0SvhMrs1AOAP
         ufb5fMfHq+oyhLzIATOPEd+Nj4+D2FtBBHnsXWAtAi6HNxfbonAlAfdm5GqYMGYaRcyD
         6qz4SBtl4DXqjRXdBcbbEQXYxqjYTNgiV/Tz3IEMwUHdNPosD38eqd+uEr7dgG5BZnPI
         RtGVt5y/edbguOdZhwdqSSTo3ENbz8ThNW11d5ixBHEaqNw8evi9jMPWnjR79r+zxQMA
         oa/juaROsOt4MHMcappSe1uUX4+zMLUfz3A/uW2BG0G1ZY1iN7jKiviSdKdIU+mVg1Rp
         c3BQ==
X-Gm-Message-State: AOAM533QmodUa39qcWNcsiSglRUgldDtdKkFovw530ZouIvClftvZgjE
	35ywByCs350dxBB54EB4/kI=
X-Google-Smtp-Source: ABdhPJzurhJUAYu2THJm7r/ixELCxqluW4pFUQHqpAgx7qsDKg/lni1nfE4wwYlm7flbfa9bjDysyw==
X-Received: by 2002:ae9:f80f:: with SMTP id x15mr6493229qkh.341.1601416035382;
        Tue, 29 Sep 2020 14:47:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7c93:: with SMTP id y19ls127135qtv.3.gmail; Tue, 29 Sep
 2020 14:47:14 -0700 (PDT)
X-Received: by 2002:ac8:4548:: with SMTP id z8mr5569881qtn.291.1601416034862;
        Tue, 29 Sep 2020 14:47:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416034; cv=none;
        d=google.com; s=arc-20160816;
        b=vLzP7zG8WDSUmKiFB51M+qgwa6ZitUjTsa4InM7RMumu4BuJ2SrMyJ1S+I6ODBYq3G
         1gCITarAMGV384vwxPYGCaoyk61eA+OFL5TBjAGIhSK2MQtyKMPYSGIJah7Mg+r2TIuh
         DFB04SuIYEIOhtl/qIEltdOTFIydLA44+vzQSlbk7gG2SEVmMtZQStOcfa0bQzMXJn+7
         opp5rn2V5y0BDpf70j32XBnHrT4xvhmSEiiyx3dleWQisJQF5LIYPo5e28PjyilMHnTu
         p7yOQO7xIou/DqKMwMDCG9goh1GZVImrWyw0MXfQL8n9SNuJhRPJgORvCGNE4A7af+LD
         1NaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=/vP7q5BBB0uTfRm2AgwdilGSRfsWzFPQ2WkTiyoFr6c=;
        b=Zufw0UdNJrhrwKJ1jtaCxN/X5736clBVZbFXMhK09XQPxk4Vkai705M7ftH63Glbvb
         abtya3Fq65/RmHIyX/+RXvdpCgXRCMNI6UWeNxmwVHaPzDQ5ve6Yg9TlOKD6xZfueQ4z
         MtOivFh43UEmkqqmF8lcvKXshluUdUWi2Ui1WlcGWe3JEo3SRkS71XJ97ILxr/idtB4d
         NnSq8jXNICb07kGxklh1bGhf1141b5CxSYvW+BgHqYXqGpLJThHh+4ziQmCJ8O1F94+V
         MJ4YtRhLckOntmMuwqOk/Z1d4sHdY2QZageI65J2jp06GKaLZuDYH/SCB7MLOdJiIJwL
         6oGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b55hwPid;
       spf=pass (google.com: domain of 3yatzxwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3YatzXwwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id k6si354865qkg.1.2020.09.29.14.47.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yatzxwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id mp10so2489623pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:14 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a63:e813:: with SMTP id
 s19mr4805529pgh.33.1601416033950; Tue, 29 Sep 2020 14:47:13 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:20 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 18/29] init: lto: fix PREL32 relocations
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
 header.i=@google.com header.s=20161025 header.b=b55hwPid;       spf=pass
 (google.com: domain of 3yatzxwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3YatzXwwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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

With LTO, the compiler can rename static functions to avoid global
naming collisions. As initcall functions are typically static,
renaming can break references to them in inline assembly. This
change adds a global stub with a stable name for each initcall to
fix the issue when PREL32 relocations are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/init.h | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/include/linux/init.h b/include/linux/init.h
index af638cd6dd52..cea63f7e7705 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -209,26 +209,49 @@ extern bool initcall_debug;
  */
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init.." #__iid
+
+/*
+ * With LTO, the compiler can rename static functions to avoid
+ * global naming collisions. We use a global stub function for
+ * initcalls to create a stable symbol name whose address can be
+ * taken in inline assembly when PREL32 relocations are used.
+ */
+#define __initcall_stub(fn, __iid, id)				\
+	__initcall_name(initstub, __iid, id)
+
+#define __define_initcall_stub(__stub, fn)			\
+	int __init __stub(void);				\
+	int __init __stub(void)					\
+	{ 							\
+		return fn();					\
+	}							\
+	__ADDRESSABLE(__stub)
 #else
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init"
+
+#define __initcall_stub(fn, __iid, id)	fn
+
+#define __define_initcall_stub(__stub, fn)			\
+	__ADDRESSABLE(fn)
 #endif
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define ____define_initcall(fn, __name, __sec)			\
-	__ADDRESSABLE(fn)					\
+#define ____define_initcall(fn, __stub, __name, __sec)		\
+	__define_initcall_stub(__stub, fn)			\
 	asm(".section	\"" __sec "\", \"a\"		\n"	\
 	    __stringify(__name) ":			\n"	\
-	    ".long	" #fn " - .			\n"	\
+	    ".long	" __stringify(__stub) " - .	\n"	\
 	    ".previous					\n");
 #else
-#define ____define_initcall(fn, __name, __sec)			\
+#define ____define_initcall(fn, __unused, __name, __sec)	\
 	static initcall_t __name __used 			\
 		__attribute__((__section__(__sec))) = fn;
 #endif
 
 #define __unique_initcall(fn, id, __sec, __iid)			\
 	____define_initcall(fn,					\
+		__initcall_stub(fn, __iid, id),			\
 		__initcall_name(initcall, __iid, id),		\
 		__initcall_section(__sec, __iid))
 
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-19-samitolvanen%40google.com.
