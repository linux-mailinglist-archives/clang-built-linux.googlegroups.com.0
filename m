Return-Path: <clang-built-linux+bncBC2ORX645YPRBN5W236QKGQEBXCKN4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id E35412B872B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:52 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id v8sf2086768ply.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737271; cv=pass;
        d=google.com; s=arc-20160816;
        b=waKyVG0X7D/f1uCbD4hr6wAiGSAUwf6dvPqMcohYuzldiZWHljtg6yIU/5qxXzACSu
         ucDwXsXbrXLHDBFAuuq2pmRueAHGcAdb0v9NpeC6rj4Jb8Wyw/7T3YqgqPtDJ0fSr+sA
         fl7q3BMx9qkaXkjh9Ek0V8YuI14PUntpRMw6Nl+5IjLO0lNjUKKiLMy7/7VighnQMDrm
         yfkAPRc9QSUATObLRQnMsOm9UJIGL2b86oa4rT2jWIw1HkJG68bYqdGL9x72BvCdd60J
         kPM7wLKKXaJa6w36YZ5YWeYWcW9XT54/PBersHNJ00Lq8Bt0IQsn/gYSDBCoQrddCjFK
         lwGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=P04H+YsKABPfy9iIcuN7rtC2/DejhG+l9Uu40gI5ROI=;
        b=z0LJZ9Urv3SNp4V/a7/+BVyLGJBq633dz7WjQqFAE4r+OwGFMAkYVQUXChoSyMPmy0
         usQcRO52om+86WBHgaTRrL0iXraopP0kDeAE+3xvC0aFInxBMNv5HT5bnDoh+iUELpnV
         M/vpwWELxR/GYIPsOPxVC8Kn1Ct2Az5v2Yve8uhIGBwOlY4SGFZMPwOS3JdN/xDEfQXj
         0qkpQTMAzoQbmI/CrSSN6rmCG/cm7/JmCW9XX+bashX6POabQ0tZOg98tmP7w8+UzRPl
         kFBewT6ME2lXeoUoN5i8yS/KcADDlVEnxqeFKTAH6yoakXEnc8HEnYef09lIrHu6mxb9
         yG0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GNMm1MAV;
       spf=pass (google.com: domain of 3npu1xwwkaec1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Npu1XwwKAEc1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P04H+YsKABPfy9iIcuN7rtC2/DejhG+l9Uu40gI5ROI=;
        b=IT2MxbvRiHMmo2NgqykJzr79fWi0T0ZSaUaE72MF1Z8I0Hl8c/ENFmyX2Y3MphU1zs
         Pgs6nxWJvwzzdhTBir80gMdi30Kame/7Won9TbdKR4g/aGSwixdXzScX8leEldUrUlRl
         vWOtxlo0XfMTeHfzqcygO2ITVxaMLyR5Boz4dJWNSPRG6dQvT9Em5CCe/n7IGcHQDrc5
         17yeZcC94BeAUSGgXtJEyOz/kwsbdW754HxvJ31deZTkOM3taqm/Icz1XplAEzRiTp6R
         1nN2dsk7sD24ZizKqp0ugV4laRyEfJyNXLD0kf3Ekhq0i3dOHHRB61PzprZ69V2CgXcR
         8etw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P04H+YsKABPfy9iIcuN7rtC2/DejhG+l9Uu40gI5ROI=;
        b=e0YZHxNVBQxCRlXjCQxhhnhcU6oUv9c0tCvkyx/P2oDmmhe3pUuEcMSrPg51tEkW1y
         ayEtrrGonfJ/vd0zIJgBTb9Qb9o3ZVuCT2Hq9P54EMykC0VBuTHYpo/pTmcPZCk4dnEI
         cmf093zzUNlXJomM/jEERSBJjF8CrKYLRTtR1h7oBClEzVp3wZpcGWDSF2s3mszmeiCf
         nr/YT7aP1aOkmvx19NiXgPkD7UNAYQo2DrIwP6Dquk6MabQs/lsKdHBqroWvkIJ8vaGO
         itzq9EMOF0AKVcDEEDPo8VUYOktrxy14GfmtWcwIZVLl74jp137xvMEXqEVyHmlRVuco
         Jz/w==
X-Gm-Message-State: AOAM533OyIlGB+FqJ3d08Jtz0ttNB0IDo3C9jp2MMCqqxmzjiY6IJgLV
	7FKTMlcH9CFGI9WjG7TAjMw=
X-Google-Smtp-Source: ABdhPJzCQPvF0Q2ESZeHkSevP/ueQHCkzQWtHsHd4goJd6vwcPqyUTnRmM5jJx8g+WSJXsAA0Rt5wQ==
X-Received: by 2002:a17:90b:88b:: with SMTP id bj11mr1079012pjb.229.1605737271657;
        Wed, 18 Nov 2020 14:07:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls266037pjs.3.canary-gmail;
 Wed, 18 Nov 2020 14:07:51 -0800 (PST)
X-Received: by 2002:a17:90a:8c8d:: with SMTP id b13mr1164385pjo.2.1605737270893;
        Wed, 18 Nov 2020 14:07:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737270; cv=none;
        d=google.com; s=arc-20160816;
        b=amWN2yioGTa1nL8DdlLERakBCjhrXncmh55GazeUgdnqUCY9rwI9Dv/s9MeJbTJBtC
         qH9DHaL6TtZahNoDmE5//1TsMZpKRRAJF9dhZL28fbyDLatvdNQd0MLoWMTCAQVinQ4d
         4kcbx7gTeUpL/RfsX90iES8bSlAWJau67FLfooY5Dyu7GYs65Yl0qFRXh243I+9FZ3BU
         TRzu8ncR1uI6UFA/ha0VghmuGbZI2Z1NKOib58YCI3vj81SKjDOq+ivySfGsuF5flKR0
         FtCqWWJ/QgWKVbpFL8AGfSjA/1fG/aSMC2TrFW7QKGjVt5xpcobns/rMKHtixPAhOJJR
         9w6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=JUh1T9Q0UpH1P/k5MG3eyMCJDiIsKr/ZhdG3k4jEA2o=;
        b=bI+exVBHDt/HQSWA28rMKwm+Gh+rTVyeuw/bo8TSrCwHf/oaSRNarxX/XleG+rTKpe
         v6WxF9/5XA4A2HSb7GK/hB+GRh5kchm/Bsq8CMAfEwI9EBl0VKn/zTuPuulyL1ZrUolP
         6ZP2PttQh38aUNIOHZiD1FozCnvYviv/16KMMXvqvJbj023sUYQWKCXaFSkI//SxD0zR
         LcBG7iF3mEiydGT2hXJkB9ztZr6yQ8eoJIh5HfL+pfytvYf8HwzqeFyDKoWrgNbaWO5N
         Ul2Hyz/ZuqHtm+/eyBvJgu79bMMXVYblIl+awwhOAgjqdUhAUYeO72LfK/eRV7nuNN48
         P5nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GNMm1MAV;
       spf=pass (google.com: domain of 3npu1xwwkaec1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Npu1XwwKAEc1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id 80si1675933pga.5.2020.11.18.14.07.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:50 -0800 (PST)
Received-SPF: pass (google.com: domain of 3npu1xwwkaec1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id c20so2064603pls.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:50 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:fb54:: with SMTP id
 iq20mr1047953pjb.111.1605737270583; Wed, 18 Nov 2020 14:07:50 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:22 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 08/17] init: lto: fix PREL32 relocations
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
 header.i=@google.com header.s=20161025 header.b=GNMm1MAV;       spf=pass
 (google.com: domain of 3npu1xwwkaec1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Npu1XwwKAEc1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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
index d466bea7ecba..27b9478dcdef 100644
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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-9-samitolvanen%40google.com.
