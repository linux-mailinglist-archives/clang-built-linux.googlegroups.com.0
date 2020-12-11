Return-Path: <clang-built-linux+bncBC2ORX645YPRBHH5Z37AKGQEEMOPFLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 526962D7E57
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:53 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id l23sf4739160oii.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712412; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+NyZlCsK0MYlXBxVvBt7F5qUgcFj6gFbw4/DTrsH/Qdani0+ofEFJrth87CU1VSBc
         mK1sab+8OzSxsq9Kezl+xrrAanxl+9gF4QOPHLoNuuZwA/88u0nljPxFx4hHWk3HAthP
         jkwU1wo/sskWw+FCuz093KkTYuPmw3BaIobqWfOmyy+UbC90+VkwKpz6bRx9hDXrBIlI
         r7eq2Qkd06wJBFxNsip/p16fqVWmmhCWZGYcq2M/+Yk4R37eYP2V4hD6SSvd9uU4kcoX
         lWpv6NoP2X59H+JILFINg9Tw/cGretExfXO2hcPJOkvy3RfqjngMny5GaEADbgKwG+o/
         4BJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=8GYu3TDdM/6+7xzk8Aqr7YIZ4c5fgOjZ/EHvs7sN5BM=;
        b=1Kf9GA+FJcmBXQ8g9g7b1NfHcx9Gs3vKDGVeBkMHahplrLcsHXRoV/t1TuJLJ5Sf9j
         JyOldgZw5JyF48+cBIZ8r9PIPmrCVnQf/i46YgfAue3tn+78zfhTE7f5H/6wZDsuYUo5
         xtuL9dc6scNCvNvo+iFMw+Pr4DHT6AIRwNIHor73qkg0VivAi8zEz9m4gXbTDZ4/cx9J
         8MHF6kE2gnthpOVKwA8U9Abf//Sehe5vdKzmwjF2r3mRkqNe6u7Ca32+ptdHS53lwFCP
         XxJBBf8BcpGH8uJ3wUZ6/05V+jfau0d/KY1bze6AohylG9Tul7nRxNx05tptsTG5uk+3
         jBbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HYjrQ1sM;
       spf=pass (google.com: domain of 3m77txwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3m77TXwwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8GYu3TDdM/6+7xzk8Aqr7YIZ4c5fgOjZ/EHvs7sN5BM=;
        b=am5icQV9X4lJk2xBiBVfXZeqlFAbi0cUtwSmxaerEvjPp/ALohpSE9J8xgFN3+BUzm
         p3aVPyJ17isIQJCN9mAYtEMQ1cguHEJcxHpTsTN7ttby2ieSvMibs3MpOG2mj7RpYa5c
         rHsqmjMkH1XLP/pcU/Qn1AMvfpP7fWECqkZVMQVHrNawDlYYd/xqmfgxEahsNsS0AKI5
         PDy2Vx3mk1T+jYaelslHAu2xBe6lhwHvy1d7pqMNcknyze1+gexNy+Ej6mE/M7Yejp3u
         Si62VnO/04yrfl0OhbQ6ZNUViHewX+CvfDLj4ZMmojxA21u5DTjNlEvOiKkptQcGKYqC
         eBoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8GYu3TDdM/6+7xzk8Aqr7YIZ4c5fgOjZ/EHvs7sN5BM=;
        b=dybZJmXMUqW7ZgbF5tyu+hNPPE2YqXp/mkYnqjbxLthjyyGESpD6vPNOgZ/iZQm+c+
         nOf+wJuAOD72pWWvRgqEd3RF4JxuhGfJQIP/I46mHmCbaqAb7c51GJhFeU256BOncsPB
         nTu5OW7vr5y+gYn9rffK8TbIpe6FkOzOkP93Yya8AN5i/WyVNOF8ETqxnHDJeYExNAkA
         GZrZ3oqjWNSepoW9wdfuS+WfvVkRjdoDU4dACyCVxutaEBBzR7P0tEDkM5mPV9z+TTFd
         PBf4oHIt00aupv0IEdZxRC+xrQ1TZ1V4W2bRiS3RnyJgcHiwiOMtWMUe+bAdqJQNl7Bw
         0Ckw==
X-Gm-Message-State: AOAM5336CM+tlP/H4dWTidPB2vkyDWMAbe8RZ3DWP0i4xRvYcHOUejX7
	UMxqxLZRwWKvoFTrDNmUJ7s=
X-Google-Smtp-Source: ABdhPJzQkMZKHl2k5io/OQMx4g+MQxX9n6jvC5CnnxnnTRtVu6rtGN8rJKY3vpYDHVtrOjwuXSvNCg==
X-Received: by 2002:a9d:23e3:: with SMTP id t90mr10570087otb.51.1607712412281;
        Fri, 11 Dec 2020 10:46:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cdc1:: with SMTP id d184ls2482100oig.10.gmail; Fri, 11
 Dec 2020 10:46:51 -0800 (PST)
X-Received: by 2002:aca:2411:: with SMTP id n17mr10054733oic.43.1607712411848;
        Fri, 11 Dec 2020 10:46:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712411; cv=none;
        d=google.com; s=arc-20160816;
        b=JHI5rmCOYG643IfSz+esOHbE4YQLUJG4Ei6eZJ5R4soJ+mSccbtdoWREE6ENCJEjqT
         8LAmS8Y3FFpsZBEbSrn0xPNGYzm+5nb6iYZDu1jeM1CWMrdoG25IlfnWevkGRQm+h2TN
         pns0xrPLVwiQLpTLrkPLBXbABfHq9DGMCT7euwVwXTzLmg6fTY8NdcyEOl9k66w36zUi
         qip/AkWHQyRjWtgeAxCf2jrGknb0mpjCOMWN9kB64LKkOHGjDliW3pmCDPNPEwJaf82S
         5nG7gkr3QQO2Eu9aFMnDZJQXWrYmIweIbKoAwFG0vuTviCJvFNF0vNHrkFTpsyO6bPUv
         6muA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=9TLfWaf58UYL7wICLMCVVnhaOCpYf+H5DpQSRdiy6Cc=;
        b=oQ6qlRAjy4p92/GoFT5zYW61BYDKrmeFcyCkdPxGV0/ncGFhIxg7niw1MEts5zTEHW
         3p87HUXsP0aX8Jq8NTO0Nu+jjkbn/4d2TRNseWT2hF2yPnBlKGsr91rYo6RXqYVKZxZV
         ppgDrkeVSiaCYOeuYnGLUbOicTq2K3dbZV6/EQQbxzONSAXCjzmUV4y/7h8h6JdYPYrb
         HJL8PZrJkFb59u+xY5pFnxDYhJbxTk5zJKb6MZEId6vHH6qc8WAWNu5E62lCQ7TTshRN
         4pL9wknSYTedDffO/iwP03H4whboH00Tl1cTy7VY5eFX33+eolNLOEQZ6RekgMJvcXIE
         OthA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HYjrQ1sM;
       spf=pass (google.com: domain of 3m77txwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3m77TXwwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id c18si580690oib.5.2020.12.11.10.46.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:51 -0800 (PST)
Received-SPF: pass (google.com: domain of 3m77txwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id v18so7134153qta.22
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:51 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:302:: with SMTP id
 i2mr1391507qvu.14.1607712411329; Fri, 11 Dec 2020 10:46:51 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:25 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 08/16] init: lto: fix PREL32 relocations
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
 header.i=@google.com header.s=20161025 header.b=HYjrQ1sM;       spf=pass
 (google.com: domain of 3m77txwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3m77TXwwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
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
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-9-samitolvanen%40google.com.
