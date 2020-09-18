Return-Path: <clang-built-linux+bncBC2ORX645YPRBQFKST5QKGQERSVLPTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F557270622
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:57 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id x13sf4014831plm.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460096; cv=pass;
        d=google.com; s=arc-20160816;
        b=af7iG+eVTyOU4lRLJp5RyxZ/joXXRFcimYFY1nAyOc0vDqN07GQ1mh389m6sJtvWSz
         ZwZPsE+TD72UyGAfeKp5VpTj99pcNC3K/EKelAgNZvs/6D9zYN12f5nJ9g2QQsuddcYk
         TUx65fkht15E1CFdWM+I32mLcsbw6mHIzG60ocVnbApBXa89v76m42Y8G6aZjnX8FQH+
         jGf0I+kmtAH8ehVp10+ByrJhI9YUo4BQkiXDkUncgNTd0B0raFfb6D4ECLUbwzlBLGIb
         Fnszo36q6NOHESdlhmsrD9lJbecls07ro0XISy8x2cg0WO/2Lm1zmPyAlp8qiTkm986b
         TxGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=RrWbQ/FUk1oK5WcPOHrR9pRxgBBc7Gvo0SH/yG6P804=;
        b=JAEtYkxCFsiPeUv/ANr+omCXtHmVGlTImpxjz26TN6y4OoXy24dMhA1Q5l27J4YCH7
         3lpAytSgwixgbMcnoeizebtp6YqcLWOHuAIwQat4wcl4UdmVhmeQeynb6Er5FgRwGgBx
         zQ3gOUkrfz92dOW2WIA7RkKGFGkYhmDLBfyfuWE4fHxlW2vOCRm0Yc8nF4GMF6TFNv7H
         0rHbNi0RBIycnAnkmcCdEuENAp0VC0yTRb8m5+3fQ5otSAWFM70YjgR9uE+M1jMuDuhU
         xUB7pAjph7w521I1zgugz2dCMtIIZqGlfQVVN83BbObn+9W1eZOko7T19kyl1czZwXjl
         RRcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kOFoCTd2;
       spf=pass (google.com: domain of 3phvlxwwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PhVlXwwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RrWbQ/FUk1oK5WcPOHrR9pRxgBBc7Gvo0SH/yG6P804=;
        b=rPobZrE/FCcbRsSu16P8uHZcCaxmCfVlETvZb4WIMMJzFVXF+NztpYK4/NkNfItRt/
         0B9c5/qs51QSnLZttADxq2Rm94BmhdhSqcbqTaUMZQnQBSW6Gum5OZkmqvYn9NwMHklC
         OlocLbe1BTnlMf8/+0c9wMXHyrmWlEyW0M5U5K5SrB0hmNKPz1xeLWcOiwE1Y36r2YtV
         uISYwCVuGtVG6Kw/nWGW6UcYjEeARnhdEx+wJ3fO8TfwbtBcTJZQ359Gf+UtjeFuAOrc
         v62oARC/OqKlOf4ebAojWiqSpVQZn/6LdoIHWjLpYreS2JhANyPblsPVXpwfep31bZqY
         vd9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RrWbQ/FUk1oK5WcPOHrR9pRxgBBc7Gvo0SH/yG6P804=;
        b=FFWiDHIcqCFIMDgaXMt70qti+a7dhkzE1AJDB1iwkbgk3bkmcO3DNrH6Cg3knHzi78
         YxrVfNF7++ZekNYuQ2jGdy1yXTdnfCjKKcuSrI4sKDo2TuvYpuoVJI/R3QbkmoN6ixNG
         TGllwke6+o7WnYZM466br4KcwVjgJ/WfQN4QZayC+v5/+xQSz+2KZis/eJDS/gB0yDh1
         qJs3cDvoZMbj+R2PKsrrIZLbaKy7cFPkDFQvS/LRZNUVHIyUaKKs4eIcBpGBDJgoOhXv
         u5E7ZVE98B+tgn33H3o8wa3zKVL+htDXIV35p96q9THO1Sh06YXEmlRirI7g942yb6my
         +3hg==
X-Gm-Message-State: AOAM531C/M3ZVlv9NzNDmep+qiQA/1balzQb+khrLTF771G9LnbADDro
	+hu7oDGbeWgtFqxexHC/Xgg=
X-Google-Smtp-Source: ABdhPJy8mErJ4U0YH77lAvH+LwqcZ3+aoFtEBESQh2PGqfUZnJe7pdwDfRayiLAFwFSaiwQIVA9igw==
X-Received: by 2002:a17:902:7684:b029:d1:f2e1:e207 with SMTP id m4-20020a1709027684b02900d1f2e1e207mr12395844pll.74.1600460096349;
        Fri, 18 Sep 2020 13:14:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7c90:: with SMTP id y16ls3169455pll.6.gmail; Fri, 18
 Sep 2020 13:14:55 -0700 (PDT)
X-Received: by 2002:a17:90b:3409:: with SMTP id kg9mr15088094pjb.122.1600460095732;
        Fri, 18 Sep 2020 13:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460095; cv=none;
        d=google.com; s=arc-20160816;
        b=lMJzqYcRK70OfbeffOMow6UJsZxY9RlNATHcyxJzHYhJpExMW5aLY4xeH/nPZ2ktsn
         fslE3eII497UfjNfiK1plbZ1bcirOOpG2AuqeT++UwedccFWeIHawDgjzIvJ1mwdHLcs
         vlXASZL/c9ly4vMhqWuuOHSgRXyD/lM62kiRDTwkjdA/GR+qLzPCM+XRZ6QEYBWJ9LRt
         dH4AXmiI3r+soijzmcF5CL90y1ncadNlk5hjnSVdUqz90Ga7YZ5pSPBp+RjPes6cSxcr
         VkXbLNfmPBylJ6kVKj7JZeoo9DNbzHamiPfcipXoNf4kYXxAUlBWw1PO3upsldUa5awi
         A+1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=TOBnIZLn7hTmqm3x2JBReVnrcc+31akc4aFm1uMW9E4=;
        b=F6tIfjtZmzIlj4cf5feF2L1rlY+QFMn6ZtdgyxlnVbF49DkoeLHKIiR3ljcz0uoeW8
         UCTqRrMObqL2KhvcVN4Qrl5xS2DLWJr2f+681imdBbQtdQByOb0UQNqA4P189VvSiaWR
         K9v1A8WPVznarBIr3tP0hzGbTh6qNtcxSLUUi3lY22n6WinrGKHYcqJ09IEpFuxu6NQh
         rwyOQ3ezg4HHiyLmJWpGxZJaaaom/d1jsVdYLyksr4TlaEGZoDZ/dYSMeGsVp8iFjwwV
         Ls2Cy5vLnRmfWULMeD+6z4V1wwznQbpfUFpo/x4pOqH7o0fRo5ycq3gTX4qOx0a0ZfYT
         U1yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kOFoCTd2;
       spf=pass (google.com: domain of 3phvlxwwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PhVlXwwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id iq17si236971pjb.3.2020.09.18.13.14.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3phvlxwwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id i199so6606934ybg.22
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:55 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:be13:: with SMTP id
 h19mr55802534ybk.50.1600460094899; Fri, 18 Sep 2020 13:14:54 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:13 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 07/30] objtool: Don't autodetect vmlinux.o
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
 header.i=@google.com header.s=20161025 header.b=kOFoCTd2;       spf=pass
 (google.com: domain of 3phvlxwwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PhVlXwwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

With LTO, we run objtool on vmlinux.o, but don't want noinstr
validation. This change requires --vmlinux to be passed to objtool
explicitly.

Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh       |  2 +-
 tools/objtool/builtin-check.c | 10 +---------
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index e6e2d9e5ff48..372c3719f94c 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -64,7 +64,7 @@ objtool_link()
 	local objtoolopt;
 
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check"
+		objtoolopt="check --vmlinux"
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index 71595cf4946d..eaa06eb18690 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -41,18 +41,10 @@ const struct option check_options[] = {
 
 int cmd_check(int argc, const char **argv)
 {
-	const char *objname, *s;
-
 	argc = parse_options(argc, argv, check_options, check_usage, 0);
 
 	if (argc != 1)
 		usage_with_options(check_usage, check_options);
 
-	objname = argv[0];
-
-	s = strstr(objname, "vmlinux.o");
-	if (s && !s[9])
-		vmlinux = true;
-
-	return check(objname, false);
+	return check(argv[0], false);
 }
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-8-samitolvanen%40google.com.
