Return-Path: <clang-built-linux+bncBC2ORX645YPRBC5FYX5AKGQEIIRVZAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EA625CA48
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:09 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id a84sf3979615ybb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165068; cv=pass;
        d=google.com; s=arc-20160816;
        b=HRkK8Y8ROGoeLKd1NLOk+35g3+Ec9Hj1jcUCqkKxxEHE0yLY44cbRIFunUxlr2dmQQ
         U9mHbV53ZwUsHNlBsPa9jSfQ5qCtVFltrmoOSWNPs2o75AFzSiYVu8H2687LQQVXxHDm
         ZUaaZoXt7iPG3e46eLx8Ubb0obZChg/hzZ7LfsS3VlpBe2SzwdzHVo6NHRMphYknOzQw
         PbkZaxGBrYRgoe59/oZ1LUqu3zuIBi2MIPjGkqrfCwNgTFoDMeH6jdX8/r7FeAAf43DL
         AqHFavwrobYDDDFOpdXKH2hmE/GJSNmQcWaN1yMt9AoxN85dbYP034ysI5gpynFK8mr8
         DHlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=ZLqvwVr3UqgfnLPOv6fhKLtFQGDZpshSW6/j3ygNdcg=;
        b=umBPCwM35NR6mfd1i9Vyyze/aVnnSZEnQ9zLNfG1h4SxLzULHJhuprK/qV5UPsqOhn
         NYu+dfXT7iVuCq3cyHDEq8fn7E+48kVWIYC37I6ux2I5IUlwY2WmY+zWjkdEvA+ypyJC
         r2ojZF023MPPFGKfP4SxL7H0fmdoCpcsIzErKP+ek7HZRsr/QGyTHtP53mnxGGWpPupD
         okitLtFpYnvT8HCAvxkkYA0Hk3X7FDlsES/oVbDdBOga8AuPpUzWmfe6oi2xWwDekMjQ
         /zzXiuS5jxP8Zt10Oc5Qpyh2YObBpAF6YO6/me1MuJIemVL0nNMbmGsIH5FDdgVWxjeC
         4Ngg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b5tk49KK;
       spf=pass (google.com: domain of 3i1jrxwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3i1JRXwwKAHYmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZLqvwVr3UqgfnLPOv6fhKLtFQGDZpshSW6/j3ygNdcg=;
        b=n7tLfG9Nd/BoXV4GHxyNodt3dzrlB4LrTdW7gPdRQYERNR1KvYarVOX8smM27L9a+2
         efoj/7IAPwwE0ECJs3PQDtGJv1eGdgrlvjQf6KU5ClAaQ8Vq82+dYQ2RERcLnlgOgZgB
         r0WOiVRonKz10M0jF7rp2rB+Da7OgZrTDv9+Wh1nnBO6HsjMED+SWcvmtvHU0H8HamyI
         tGOl1Om27+OR9pJj3nbgAOgXe+yjpGJb3gtvqf4cGhUKIkDXWTCJLIyG+9ypahq6ZJcz
         bqKG9BF84jcIs59BUMlJHag5nsMcctCRnvsEOnBoBWei7yt5lVOvgQnPjL68D8MbGsMH
         /FGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZLqvwVr3UqgfnLPOv6fhKLtFQGDZpshSW6/j3ygNdcg=;
        b=gJ9mtZNTfKHZE3+rtSqzvOF8zJY+IHvCBZE5n7gtrWoWBVvYPR+1I0ID+QUPW4dXEs
         vZimPmSubLO5xG1/nu+1YP224ycReQ1hmvd8M8LyGnaDVnpDFGQN/v29wxAQlC2EnMu7
         OFY/LRFVKYRl1pK3TP5a/bWxF2iv/Sh/YrEwhidxuNtdWXaXvvbWipaCUFLWtymBmP+7
         d/vsG+0j6MKjSjWQw7eGsqh66fMPV/C2oINJUNhoTwPDu+X5S30iNPh2m8tbfZT0LKs3
         UEqaYZAwVhPNICo2Z/XpUQBW0Kn7gA+D7srJHreOuU3k5nP3T0Vw7eZDMF/ih4RfGtKE
         xU/Q==
X-Gm-Message-State: AOAM532izEWyaOmgYmhbyFrhikAbF2dVpraqLFWHnWAD47GyJlC+UrZA
	J+IDJcHpAgUUVjAIN/Dv77A=
X-Google-Smtp-Source: ABdhPJwEXMywknOKcevCac2/ylgG6hlp/L1sMNk6JTI9DUrAQ2+m79y6qtQ+ZfHRjdsthK2ZwCA+1g==
X-Received: by 2002:a25:fc0e:: with SMTP id v14mr5614643ybd.195.1599165068045;
        Thu, 03 Sep 2020 13:31:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:68c4:: with SMTP id d187ls3337391ybc.1.gmail; Thu, 03
 Sep 2020 13:31:07 -0700 (PDT)
X-Received: by 2002:a25:3b53:: with SMTP id i80mr5300773yba.465.1599165067645;
        Thu, 03 Sep 2020 13:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165067; cv=none;
        d=google.com; s=arc-20160816;
        b=0L8UcM7rSe9gDwqBxFYCmE9z5OF4+9m8LCryg6bVc0KDcNiqG7qJUPN8WgDaMrcAY2
         VtOqMJAjMpZnAhF96woq4yYusc5TQ7ekTuitWao+HM04DGgu8VG4R6ZOIDNlV5GPFoTq
         pIx1CR8oKerZn9/QKY6aIiIkfKTOpYSYX5AYB1EhJLSv8Pa+qHIVupBb4BW7OEiYyQDg
         jOotxl8u/y4j8jbUkT/HsuCuVgYf79EBTAfxVoJevflKVeqGUPYYFTB5WsRwM+4t8fB9
         uewANM7taJPmJY2rQmFs94M+RoKBhy5Iu5UY76wZ4J3Xz5npkfCjFgxj1QanxJSQTQW7
         dV+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=wK1JwNZBEF40N5fcic2drFAc7pvy5JBQESDnmBr5608=;
        b=LbgcREx8hswNeJxMnl4gIPCT0ozYG62yQUDhI9yaYRBfZesm3ke8+v+x5jjLa331YQ
         4ZjYwzqa6U0ifFlDQqDVcRg9NyttB8K+TxsJYfGjF2hv78TFuNsmuK7OEehQ6rO/OXZN
         sNSQBOCV6xWoLnsWd+kZ+MUIgyp5buloUi5Kn2uabxCGyD0cozoGTKtc6mRhwF7le3Pu
         eqKlLk3OylI/fV6ZEqg8wiYBHO6pM/AmStZ00vQArFQTiNzekd+wRomaAPW1QUKnRtVP
         RlUQ9DuTLLBUkJkwJ5Vxn6+9LFmudJnbbNJ52LvZBeH8l3+xb4RmEwEHAgtk1WkjIXda
         kkTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b5tk49KK;
       spf=pass (google.com: domain of 3i1jrxwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3i1JRXwwKAHYmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id r7si326456ybk.5.2020.09.03.13.31.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3i1jrxwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id y12so2505426qva.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:07 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:f982:: with SMTP id
 t2mr3575617qvn.5.1599165067207; Thu, 03 Sep 2020 13:31:07 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:31 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 06/28] objtool: Don't autodetect vmlinux.o
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
 header.i=@google.com header.s=20161025 header.b=b5tk49KK;       spf=pass
 (google.com: domain of 3i1jrxwwkahymugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3i1JRXwwKAHYmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-7-samitolvanen%40google.com.
