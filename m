Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ6WZ35QKGQETWYMD7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id B079427DA6C
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:44 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id b39sf4098436qta.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416003; cv=pass;
        d=google.com; s=arc-20160816;
        b=w+/vJtz77Kkd11OPWvU6bfRcuKuluITq0twwbnsEIvKpacduLv5FW7+QW7WDYe4rXb
         uEhSEzZwegQ6FqUiU9+pWxFjWorHxE/6isVOmNkCXYw+573YEzE0naJ6Ea/0/ueLE47o
         9U3Y7pLkLGOaDFlgvigQSZVEpjRCLcn62NhN4lsYqypb72QqUqQiMeIxXrP2069hhV2J
         RHzspmZ83UsTySGRmSuqDbjCkpxt4irfCmFTkU62sNWng16K1Ud1d3/c78QiLlGSMIEh
         bZSFzPMJoWE8apMcSYURrK5BUGTHQqeR07BcfV+7YsiY8Fa7bB9ZBs/Rsu3bSdv6N4eh
         vWTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=NCzM+mnfcn+rcN10VAvbK33vivHnGziWtKWDQ1sG9qg=;
        b=lM8C5fodtJWqRPb8ivM2JJ3Mxt1Dix4wJaAlEQAI0qpOwBNW4kyByzXN0q6hCbjNgK
         Hdh4HUGiMq1Y5Qs/5XTJSosZc0SK+1ZvCm141bnLPi8FprAoe+J4efCm/dwPaQ0GT2T0
         yDyVlWaTRVuzNzGqXruWLcsMJq2XHPKSE+rVO+tdSw7Wp33/tp3M6KV14xbbQz2djk6Q
         D3PY7+uADa668B33RvJGFaYSy+Xj3ZCIESX1V/4cutF2gKNi4YVbLVbf52EQifBfKAl9
         aTV4hUF9E5BLtr4aeluOCW4KNsY1WFXJp6t7xs2+r1ZHNOR7UgKhQI1L/26QFzyWvgml
         rJCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IBbDoPst;
       spf=pass (google.com: domain of 3qqtzxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3QqtzXwwKAGkZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NCzM+mnfcn+rcN10VAvbK33vivHnGziWtKWDQ1sG9qg=;
        b=X5RA2cL4390PW1Hy13eOhb51qxd4LLytGoI6fUb6r7lmh6Qo6clFlOw6vXPMK0G/Li
         8QvbcaG7lya+8KlQXnjplAjF43Y9ibWb5GzM7LFOVY9WypNV59fSeZrJ5b/9CuvNEeyC
         4dV3Cnc0kCOpufs+mkPNljKHpVPkeBtygkqm3Jrnu7sGMZCET6944qtu02iSBQYNS3Vh
         BudMhH1o2EctcLl1rEcZQyMuwMaGc5RsZhlntUmbrhJ5tI+WL3z3K/GFQ6xmHWEzODuW
         xE2gfp3WBiUz50yObw56gqgj6ZtpNIwMqIzI28tXZxkHhcqvBRaEuScBxo+vgkZ+msFs
         pPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NCzM+mnfcn+rcN10VAvbK33vivHnGziWtKWDQ1sG9qg=;
        b=MKXtWNf9uRU2jWOehHKpt43yK5UEFNvz0IPn0DErzA88BqXtP2MMbG0qmH50Qbqtjo
         /12XSyNBKziC7KJdkDdZa1emxSK84ye48y2OkVZpk75QAEF29MzU2GV8Rie55r3iXl4A
         PvaTRne6iqhEH85wzIW0SH/gMhlg2uPdG2Y2vY9lkAS0+D2bHbRUbxekFyd1mb2mK1mh
         xmnerVK4A+qs5/rtB+S9zxcrfJ+XSDnHb4SkHALHzkNzxFA0xNsotPQnY1leaBoDmzNP
         1I0P/uV9s2mfr02sSJccVGgueTEjUqHO9MHMi61/gT3NtEU1psrHa3a4kC5mh3P0GHNP
         T3fA==
X-Gm-Message-State: AOAM532nDGOUB0jeuFKCBxSgXiJjj+t9ctm7Wx07eaproZ1AQq88v91p
	erxigUTd7F+i1KWN/7EYZd4=
X-Google-Smtp-Source: ABdhPJyOTA1yVu8x1U1vCEcZ1qUf0gx+it1+e9dpdM5OUdCh1vIwjiAdoZh/CXDwrdUUZNwoGfoxMA==
X-Received: by 2002:ac8:1a08:: with SMTP id v8mr5625737qtj.353.1601416003669;
        Tue, 29 Sep 2020 14:46:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1112:: with SMTP id o18ls5402165qkk.2.gmail; Tue,
 29 Sep 2020 14:46:43 -0700 (PDT)
X-Received: by 2002:a37:d95:: with SMTP id 143mr6884214qkn.224.1601416003123;
        Tue, 29 Sep 2020 14:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416003; cv=none;
        d=google.com; s=arc-20160816;
        b=RppJFwYPQULvfsmj0rUBNgvg6ww50+En06nvqlYGIEuLezJLl9C1w33U1KOafH1Gya
         3yQR3k7t8hoToTP9BzkBiT/11i6rE5/n1aSzXIG47HqMYWLyLbMY/abAfxm8HqufI9AX
         JSntH1aHL5JVluK/zrKQDf3w+Xs3pNrfcdz0OMiHjxK/YwG2d+7c+r/2xFBO/fZxItJj
         9+JaGLc+Ack2xGy5BrhenVdqsdKb3vHDgGoBRwGlj7JWYJWkATHqXdkB9/LTQAbsW/Jd
         yExFngV0VE3RoowCbHzEj3dg7x0HjoqKHSZ3lTyxRJxmteptyO3WXtS9jkBj+ESwR695
         7u+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=l2+v7INMYKuznv8xFN02uATUaYPeLt4QVP2a2KYnEdY=;
        b=mtzNIJJzBao9lcKrOgtu7sP+uZ+2rDN412nzbP7UF8T8qa/3SwjIn7DJHe3WWshTXH
         QLNCfd9xEiC+9vEqfOeEcxol0Xew2LGqe2gWjRhdqYN3RkfcbKKmyWs9bfGrCr+75hB+
         FzTaISrxJyJQJSYjnlwPruiyXzoAbA8xtQPP+YB4ELr/ZAeR7JlSHqx8ZpoSwMRmxm6/
         6adwPR3+2TUXpod9n31ivsGG8qKM9KEj3hC3WhaSY8OKK3yLlSBlYdycMWAHHoq/B5vk
         H0LmeACjQ3ubIngQLPkdoN4tiBweH6h/RP5tdA43DbFX3NwV2Dbd3PdU4xyPIuFmXiUK
         0b4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IBbDoPst;
       spf=pass (google.com: domain of 3qqtzxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3QqtzXwwKAGkZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id q5si336810qkc.2.2020.09.29.14.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qqtzxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id 16so3665884qky.8
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:43 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:1767:: with SMTP id
 et7mr6378060qvb.43.1601416002753; Tue, 29 Sep 2020 14:46:42 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:07 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 05/29] objtool: Don't autodetect vmlinux.o
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
 header.i=@google.com header.s=20161025 header.b=IBbDoPst;       spf=pass
 (google.com: domain of 3qqtzxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3QqtzXwwKAGkZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-6-samitolvanen%40google.com.
