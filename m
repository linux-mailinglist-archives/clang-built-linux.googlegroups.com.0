Return-Path: <clang-built-linux+bncBC2ORX645YPRBVMYQL6AKGQECP43KWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 32955288E01
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:15 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id r4sf6860231qta.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260054; cv=pass;
        d=google.com; s=arc-20160816;
        b=WlKu2e5l2NV5u3d9uP9qLvUF6VkJO+0746ua9IDMhUdT2p5GUyR08/9tdPTt5ikW7G
         USjEF1DDrRVMdSzE26vn4CJf3nVzlxa5eg47nDqYs0zuN/YGeyH3vMbzp1C8Jhbql0gB
         m+GEubb9kvu8cRtmP5Ss5yhSKfp/WgvXV+tqOIRvt7dhyixcA4oQpRc2peBNjGKntM6V
         kPxYqtcTMBiQPsKbwb1/jjtKpC/yMJdlhv34HBtOGErwxNCBrotAWCBcwtLkZXU2SUIJ
         pqs+pSxde0lkc/fbVS9X6Ghgm5u9y/NlqwbltMRwC8nEHHcH56W2bLhfL8r4a+eahL1l
         U9bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=/dh/fb3ujiVv3WzqQcwqTgq7dYh9/FJxzN8X8FkPnPc=;
        b=JeFNh3KQn8UygyuBDidCuHvpe3dNRRVZR8LPFOiSjTfvbbMm2iWPEqgAUUAnB/J9ea
         YxQsqY2S8/aGDCd4pTo1zPRq+FDyQvNl6GXbNFtR9tn54dONC3JUcp6KGvApc0Hj29p9
         93wOVpvaC5FFtJJmnLIV7XpvkcJqbbW4W6WvV8AnQ78o0mvvCHnKpC/fXl0xfVamKY6r
         opjyNXMNjEEtwCKzoywFl8NI7TowQHTsH/PFoWV+3414hwa/iI8SRM/XSRxHGDY7STTI
         MiOMezJ/hNxmQN02GdE2pDlqeM0QOnyuW4Gy7Fi936dZHfT7JiVuim7SSA9odsbqLnQy
         aB7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rDHTl2DO;
       spf=pass (google.com: domain of 3viyaxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VIyAXwwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/dh/fb3ujiVv3WzqQcwqTgq7dYh9/FJxzN8X8FkPnPc=;
        b=C4fjxkqm2LVmH//ui1OOWDPCDXCsiIs8gXeEqROBxYdbPZAuBQTFvuLVWsMG1Ksjy3
         fyufW8yVxdPWol9JjWp65fDiOrqcHuPejVRysPYNSdoVgQ1QUw9yvD3LbEeeWzaxI/jW
         aZxbsrrXgOmyKGJ7Q6jWN/GHNty9EcuhLPl0EPGH+8coM3U6rMGqLr7fkCHC/E7pjqbN
         ZY2kh4NmdAnzxWTQxL8jLMWZXUWqhWLtEmajl8Q3HAk5kP18x/UnmDRcgZMEZ8w8Stg/
         TAZqfiYB+hbyfH26deoO6TE30WVupYOvr8sC216eR2rvWoboku8nvtr9Dsqr7utLv/u3
         rpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/dh/fb3ujiVv3WzqQcwqTgq7dYh9/FJxzN8X8FkPnPc=;
        b=BsTiLEknH7iXRbfsvS2Y/h5ezrJU17xKjYWHkwQxj5F3lNypN10sEe5gKz8Nbnc8LV
         nkgjJESIcHEjlqiql41Ckm0gvE31JpPlvh4YKcbatvvH3/GbrlKy3LIRyp43KpjfSMsw
         NgekIUR3QC+vzwZN/yDn8sGWhyhJnwTSHHhDI7WbEzMZoFc5O2ud2Ik03S5H/dlwOH18
         anZj3dXNW8JAC89/CzgS/1DdL8olwpTso79ZbaoBwX/rKKPQrcD4L1DcLRezSRzlv5Vo
         HFKKL9gdwZjZl+ikXe/J5CLmWAWdpJyqBnyjEdwht+FAbl/JlaMeI11GPzN5utG+u1KP
         jkRg==
X-Gm-Message-State: AOAM531dxUtMBQ5bUUv7+qWDG/q3D54zRNET8UMF8OX2khhJZ/gS4UwE
	SaQgO5BeHHijF0e2Qhsp0wE=
X-Google-Smtp-Source: ABdhPJx9hcqMKp8gjJhkG37jKyHt6OTCT8OpvuIbWKYRuTwQrT9EVVJB64mOuoGiMEK+KefrK7D/Aw==
X-Received: by 2002:a37:58c3:: with SMTP id m186mr12270465qkb.25.1602260053828;
        Fri, 09 Oct 2020 09:14:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e00e:: with SMTP id m14ls4928593qkk.3.gmail; Fri, 09 Oct
 2020 09:14:13 -0700 (PDT)
X-Received: by 2002:a05:620a:98a:: with SMTP id x10mr6813480qkx.328.1602260053360;
        Fri, 09 Oct 2020 09:14:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260053; cv=none;
        d=google.com; s=arc-20160816;
        b=MhEaxDTCLBR99JGNWKyNQqe5KzlTkyKTQ2vzOjKovuenwFLENZWxnT1AVw5er4G1UZ
         x49yxxjAUe5Bs3oe+xQOILuC49FrLD4Rd0wQ2Mr8VqAn4SiwGPjU4IDQIfFriiEDoVGF
         pwsMsFX4tSQswfWQfEeXb6XQAbngcw5X+y1GnxAIdwsXdxcxf5++4iSvxZvJ+dPZkHOH
         49VNqvKz9k43qW6glDlkfug5hV8Q1XaMaZxpiZc7rRkOY5tnZjSAWEewEzBEsHMbcPtp
         a5YUlWbgRQia7BxgBER2YJxZ0y675DIUyY3560HgmlryWPjWG3bgZtxV9g43kRtfjhqY
         6DIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ljsItlz/aE0P1FDke8OIPGTsfsgvR6SCQ5aAaAr+FuY=;
        b=rvfrjZcab8JsQRhQLIPcG5GoHICTDPARpF+HVsHhoNXmiwaiwz7K3Bu+ypn8sNIpfR
         OY4buJrt4bh+DUE4+1q21/5D2qOGze4xCtEsC8/aidA7LFGKWomeoYXfEbFgqJLZ0umT
         DuXlflR1YzudwbFkxyLL+9Jpc+ZaWv/Gw3uysAD46MzfJdIS034h4loBZPKNM+YJ/gvQ
         c9ZXOXggfhI/sPuUAxjoshBizkeXSxbRnc+1x2jOhZAy/Grpvx5TY1XkD0rSB333w41h
         b3E7zHvHtbjHlLOF25jX+mePHoVJQMmhsn9PbFfLlQJF5NxSFWhZOntlyJ6HV2xJzkGs
         Rvsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rDHTl2DO;
       spf=pass (google.com: domain of 3viyaxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VIyAXwwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v189si426749qka.7.2020.10.09.09.14.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3viyaxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id h64so9482296ybc.1
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:13 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:aaae:: with SMTP id
 t43mr18851419ybi.404.1602260052989; Fri, 09 Oct 2020 09:14:12 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:25 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 16/29] init: lto: fix PREL32 relocations
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
 header.i=@google.com header.s=20161025 header.b=rDHTl2DO;       spf=pass
 (google.com: domain of 3viyaxwwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VIyAXwwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-17-samitolvanen%40google.com.
