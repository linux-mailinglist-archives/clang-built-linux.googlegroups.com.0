Return-Path: <clang-built-linux+bncBC2ORX645YPRBSUYQL6AKGQECX55MPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF35288DF1
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:03 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id bi5sf6589150plb.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260042; cv=pass;
        d=google.com; s=arc-20160816;
        b=maaDVMyYhyw8VLObfZo5MesSlgKR9ZgpXGtkfLZHahOIhK9LriYtwGrA7N3vFcROZA
         UN812JzYPRc5IflorfrBgDvhCo+bOprh1awYjMWCe36M5Z+moBI1tNP8UtLJeYX/8ohh
         rWrRqzbDvyxHyPHq81WEK0sTgSVqvZZO6Q6e025bYY15l6EPHZCAGrYn1SALMhuHSbQr
         TDXnzTRTmpYTCf/ccTF4SIcq3W0ciZa1V6p8p27S9a+NNsQKFkgKg8TfdMHWK9ZMyzvI
         uygQbkbCou1VHCgO21ZEtpyBH3Fm1j7G/I3ZSnhIeQ49HVtBVj+7FyAEIGTvsJseJmmE
         1dog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=seBbj/qZS7EWq3anXrq+qkB/yuaXHXdv8A4IMXiXaV8=;
        b=W98bMsqwMPcRG4y97EWINxzRGRiI104c6Y7whFS7l5SXZEtKXqmuLqzduhZk+eVJPp
         QHxAOhmYhvrRikBiyuv/0TXd+E4jCle0N9m/Li4d966G+PZ05xweEfWkwVElwUX8HyYa
         xy+4P2zKPdYykxgSJP4vb8W+5duzhUtM2Gqhb4SRoUt36SZZNecAsZKruApyN8guwhqm
         e+aa7UyYGxGFvogMV9ry7mfpueoGEnqSCpAXqMRw+TRPiPndBQ7NDcoatOJoPYT/ng1z
         HnHl/rQLWf0NZIz3SCnTkmu6MAyZVEtNThMCePiJKXS8L2cIXveWmIUb/t+Q9vTOJljb
         RUcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vT+mTaGZ;
       spf=pass (google.com: domain of 3syyaxwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3SYyAXwwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=seBbj/qZS7EWq3anXrq+qkB/yuaXHXdv8A4IMXiXaV8=;
        b=gYlhiRFTkmvWZYHeC/gZ6rCyV4DaRRCG/nNVOOL8BrofpXbB6U2fTgq+ZiB0/+ADqD
         y9CfnVlqiIaEwfMKwzuGNEJ0sxxNZf+6orsJ9IDUI8+GWJevgtIqa7e2f3qI1brk7pf9
         SI63ZNIg1FXXpP4iJnpJur4qRUMbFe8WpYW8mUZYc5rI2D0FCsDCpkYnBBTAHeuaLsrw
         X+D03ZS7Lmy52BnoW0nxkCgCyKPtvKIOEt7vaJLt3LBf1pjHPqSF6tZ3V10iUmoRDuyC
         khI48dZkxaPtbqJZP68f5tWtSwHZOMsVEMu+5sqAKDIxTrm7o3hz5oy15/38VyiPATgp
         vKyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=seBbj/qZS7EWq3anXrq+qkB/yuaXHXdv8A4IMXiXaV8=;
        b=QictwO0JrUoYwCgxFUiHqEpoW+Oy3sal6SbWtqenCRlFcqKgD/uf6PzRUZY1MN/AsP
         Kl+EkizFZU6heUnqkAGEtAiv0q6jjlF3/LBRiBhnnF1tMgFa+6d4Lo6BmkksqLsKOwht
         WlCrL6QQi9FPhZP6Szg3rP1A1uDQAfrXN7fZLHlrfK3QRwNmO/yAG2bMeimbXEdL8xmf
         BFdtjp3yKoE+/U4OgcnOYauZmPEtntdOFhf0a/90430AYEsHw3mjTfbEIeMv4VLLiH0a
         /k4XjBv2vrAWuguBaKfuIRWedFf/pnOK1b9oeXCY6w4sDFhHlcTxwmtPn8nD0mVXkSkb
         2MrQ==
X-Gm-Message-State: AOAM5317jrAI+d6qn8VI9dp/mD64ZY5+o8mYRkimPJkeFNoBv/YNnGiM
	1fXZD2cH8ZNipP05+9G0HFE=
X-Google-Smtp-Source: ABdhPJxYIbQ/kXgtscbGrfuUVV7IvZNcnS64FkLk8dI8k8+Rv/FbnuZWMOwzjoLDVQ1VuSvSfm6nsA==
X-Received: by 2002:a63:1849:: with SMTP id 9mr3904963pgy.393.1602260042631;
        Fri, 09 Oct 2020 09:14:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d4f:: with SMTP id 15ls3527386pgn.3.gmail; Fri, 09 Oct
 2020 09:14:02 -0700 (PDT)
X-Received: by 2002:aa7:8216:0:b029:142:2501:3968 with SMTP id k22-20020aa782160000b029014225013968mr12741703pfi.45.1602260042053;
        Fri, 09 Oct 2020 09:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260042; cv=none;
        d=google.com; s=arc-20160816;
        b=it3t1cxyTPS3AHpxS3eIpAz8OZXm53USdhiLCAqx321DMSV0yrfFFmOH2B52VpgWBk
         ZBSDIIKI716Cc4SMgJN1zgZb3DN57vyGjQwKaVLjoankaPoDZoXG4s5iRnZc7xn7LefA
         TNKFNxxcqOOOih2JBxszgupzbaLk9sAah80iZsGkkVTMSQRSRpEY/suMuJYikGIZU5HH
         L5fYYkkSIDaSplVkQt4WvbPL2aAR1FYglWWv+uIW8b8o7pQTMYOidgJjO7urlIYjXOSU
         eSCjkHxmPN3ItFeWis7dMINOGXWqy/Q2ksGyJ/hEIGJTmxhbYBvop9NNxWE7sPEEbkgg
         z5Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ztcBj6t8pjAS3LbObumIb/+V5CA4S8dHRhfv01gqym4=;
        b=MOOWZyR3NrkzJFxSB6MJ95UvHaAwgPzk5ywm/pDfqUMztTekM9lqcrn3k9yqd3AOCG
         H63WqtPXvXzmfdpA0Oh9XbQlBJkeCjJahyRrdkfk1nkH8z7wGq5undTawWFtKmyaZOSb
         wqLTON6vlGUe0HwlOdbzwqIHXGg6lQ3K7W7zfghhlBXbSoQ3/sZ8ZjiCXXzMRWbKMzsG
         BwOEQ2VjcaHNTRgmjS1qx6CdVJ/z/HUqU6ZLISlfm1ymD0bIA+tDjRG+9WKKKfC5f8LH
         Vs8GXH1qXeMyf/oGcOaCshQw1sPaX4WQWzPar+mxa9Euy6qfY88KTJw06eqqAiDWfF2d
         HT+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vT+mTaGZ;
       spf=pass (google.com: domain of 3syyaxwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3SYyAXwwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m62si687969pgm.2.2020.10.09.09.14.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3syyaxwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id x1so9537286ybi.4
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:02 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a5b:cce:: with SMTP id
 e14mr18878394ybr.37.1602260041271; Fri, 09 Oct 2020 09:14:01 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:19 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 10/29] objtool: Split noinstr validation from --vmlinux
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
 header.i=@google.com header.s=20161025 header.b=vT+mTaGZ;       spf=pass
 (google.com: domain of 3syyaxwwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3SYyAXwwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
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

This change adds a --noinstr flag to objtool to allow us to specify
that we're processing vmlinux.o without also enabling noinstr
validation. This is needed to avoid false positives with LTO when we
run objtool on vmlinux.o without CONFIG_DEBUG_ENTRY.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 scripts/link-vmlinux.sh                 | 2 +-
 tools/objtool/builtin-check.c           | 3 ++-
 tools/objtool/check.c                   | 2 +-
 tools/objtool/include/objtool/builtin.h | 2 +-
 4 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 1a48ef525f46..5ace1dc43993 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -92,7 +92,7 @@ objtool_link()
 	local objtoolopt;
 
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check --vmlinux"
+		objtoolopt="check --vmlinux --noinstr"
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index ff4d7f5c0e80..c3a85d8f6c5c 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -18,7 +18,7 @@
 #include <objtool/builtin.h>
 #include <objtool/objtool.h>
 
-bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
+bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount, noinstr;
 
 static const char * const check_usage[] = {
 	"objtool check [<options>] file.o",
@@ -34,6 +34,7 @@ const struct option check_options[] = {
 	OPT_BOOLEAN('a', "uaccess", &uaccess, "enable uaccess checking"),
 	OPT_BOOLEAN('s', "stats", &stats, "print statistics"),
 	OPT_BOOLEAN('d', "duplicate", &validate_dup, "duplicate validation for vmlinux.o"),
+	OPT_BOOLEAN('n', "noinstr", &noinstr, "noinstr validation for vmlinux.o"),
 	OPT_BOOLEAN('l', "vmlinux", &vmlinux, "vmlinux.o validation"),
 	OPT_BOOLEAN('M', "mcount", &mcount, "generate __mcount_loc"),
 	OPT_END(),
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 61dcd80feec5..0c05d58608b0 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -245,7 +245,7 @@ static void init_insn_state(struct insn_state *state, struct section *sec)
 	 * not correctly determine insn->call_dest->sec (external symbols do
 	 * not have a section).
 	 */
-	if (vmlinux && sec)
+	if (vmlinux && noinstr && sec)
 		state->noinstr = sec->noinstr;
 }
 
diff --git a/tools/objtool/include/objtool/builtin.h b/tools/objtool/include/objtool/builtin.h
index 94565a72b701..2502bb27de17 100644
--- a/tools/objtool/include/objtool/builtin.h
+++ b/tools/objtool/include/objtool/builtin.h
@@ -8,7 +8,7 @@
 #include <subcmd/parse-options.h>
 
 extern const struct option check_options[];
-extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
+extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount, noinstr;
 
 extern int cmd_check(int argc, const char **argv);
 extern int cmd_orc(int argc, const char **argv);
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-11-samitolvanen%40google.com.
