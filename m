Return-Path: <clang-built-linux+bncBC2ORX645YPRBGXLSP6AKGQEDELK52A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 9285A28C5D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:27 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id z20sf7066317otk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549146; cv=pass;
        d=google.com; s=arc-20160816;
        b=jkMomQo4skay0wrm9VdnQ6F46Cwxn/sE6Yp+0gAqSHn3njtB9EcSg3Kxti87pN2OFT
         M0e6ho/1jq9NMRGLSIZAAhz4YY9JkYEnaav2LBh+pMF6juL+2y4wJkdGlDtY9rhcFts7
         LPyZQVqzwZzlqlY7btuBW0xdg1RkajN+wnXPxf8twye8x7zchYNgGxGXcsFALgKak+Fm
         +PqW4sisb4n6KFWswVrvKBnzPxVLTKL/0tZ/VmTOH4OV4JnJvoZbtYU0A07CfdnatZP5
         RZZHMTgzChpXVYwzi2Nqpl4lWmJ8ILg18d3KoaLKQxFhqJLnoF70T52S8hmYpCArW+pZ
         0CGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=7EVwU2OsZ6O2SjQH9172uiUGFzSm5sq6dFBguVzmGX4=;
        b=GZk++GLqqSpcdhYiHgwCh6RyiAcRC5uB9+JubQbTNbj2y4bGmTviGKqUNlquzAXAgD
         KrwmGr5i+Xp+uJro4kNRHyeMG0z/khEnqMiBL2YPBZKFahX3QzfaVA2No91qSY8KiADa
         NmhY7SzqzssUOmoFSKuE+QbH8uhWaV7HRvUAx+TvwGmUwRQO0hEgfHtW45MyIOHT+XAD
         vGC7M15A02k1rV7eKK+Y3zgtLVoNaXVLuD0brxUaourn1mzoGfb0zuuHxevHyptm56Ac
         blM/FhB7wGfAUlHW0l3jEOrRhIezIjPkR3xrT8wRiaAgM3kttpO4r890xnYR6Be/T6tX
         Xn3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UJ5mCWL1;
       spf=pass (google.com: domain of 3mfwexwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mfWEXwwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7EVwU2OsZ6O2SjQH9172uiUGFzSm5sq6dFBguVzmGX4=;
        b=OWI9aDGQkorPI3MIzdyJWD6SQgAJAY+LyGpghOsevTuz1adlkFiQuSC/oEB7D1yTsS
         AXyg37ntSwGq2Eyi7vNt2frxlgu8fKIJTZ+2SXwBNTYz2XB5AvOUIs0RpprwPHNLrqvY
         hJGnuf/CRbrhYE86faSvLfiyUy8ZtYzIhPeulRmaDHfdW44oeX5ZQs8EzBqq7UW1KvLa
         nKmWL36556wlupVs6aCOBPvkaxY6c3qZmtu1ukvQz50vNsu6iMWxnx0gHJHvdtsSTTTu
         NVbLcgo2z3I0bMe3swwfgVSDyurNAZkYe4M2763fD4eTrGvepj/61EoNEqNxbEqCH0Y9
         yQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7EVwU2OsZ6O2SjQH9172uiUGFzSm5sq6dFBguVzmGX4=;
        b=L0ddhh2PuYdFaJ4k3sHob+31eJ4v4hr+/ZJ043bKhrEcYCrshbo+17wPd/z3uWLMqh
         vhek/FG2xPhwxrdH83N5S6eqvWgErce9lPzxfgWhnnoKkyMNrwKYVYrvjplrAjsgIgdA
         vfsqrzX0YOf799ZigBbh/eHRBxLak50Wu4hYsZXJyzd8QQvVSmQ36FCZsJQLGXmlp27n
         Jr7UyAtW6a1bCxSFxA0iL1faMoie1LKjoQEBljFcb/b18GOo+1iOxeLeAxi99Bni4khe
         N1ETEQ7eeELCjXRWYYG0516xdB0+mIxP3WT0dwi9atxmejMypVyIahLr4aNXfY/sYKAH
         Xz2g==
X-Gm-Message-State: AOAM530xYioALdN5C08h175HMV/U12iIWQ+3WmHVRL36R+l7DDSugLOj
	ozrgWf9VZWODWGkAoksCwjw=
X-Google-Smtp-Source: ABdhPJy4ShmXRv5ckVGYCFJVbp+dNFGBSSd2Fh6PZpke8bAXO/xl9vSgf8WE/OVrTjRUNNRBlq3zmA==
X-Received: by 2002:a9d:68da:: with SMTP id i26mr5325203oto.200.1602549146570;
        Mon, 12 Oct 2020 17:32:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a586:: with SMTP id d6ls1106235oom.4.gmail; Mon, 12 Oct
 2020 17:32:26 -0700 (PDT)
X-Received: by 2002:a4a:da53:: with SMTP id f19mr20175079oou.38.1602549146165;
        Mon, 12 Oct 2020 17:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549146; cv=none;
        d=google.com; s=arc-20160816;
        b=TXtRCzRKGrbTe23s2Wgje1k4MNGJeWf8ErSj4EPvEbq/EZTF+dV6nimdkSxMpOdFAv
         gppSIUANTMwiltN4BBT5xw8ihW150PX3VvD9LwKZ9SENZJhaWX2hdw9UtLaLV52rPW1Q
         0D/dporln9HFSOYnIcev19x3jfsHg9nmn3tfJEaNELiE/ChKETe0AOoWeMbX8GKaFWKd
         rzAIwSFJ633vMrbksEKfib3yb9XxvsOnDbC5pYUjkmYe8AD+wdnNfIOA9yr66TRzOztx
         R5gJubVL6hxpvUih8/Lh9rj4T9YxLhVQypPnpGVpmPiZqo61k7bvQd5/GeoHb/b00Px+
         u5Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=8bp3PQ/7kK50N/SyZEDvRd1Vp9NoLqhW+sLCA5D6N8E=;
        b=w1uD9luAx/cNJvOhVaCIIchPqp2fI86P+/otY6oxLowzxMGPFJFG7b/IdaKPDaVYdw
         DXQswVG+GUVtbQWdQVoTU85s/109QRw4teCpnbOMcmkRBg2JLhnfsRPYB2AwGbtAOpD0
         ssl1RadT0ivjNcBHSOl8Qfi9mL7AllcBj8slYeq4rKt4Fiwp1hXtB0XFQzpTgKHtw6JA
         VZJV9G0weOYwwvgx/fH8pyC7IPuazVHsz0+Dhv0uTmk9JrSDff5SL+pRpcqA9WKBZPQK
         dEdAGi28NTQJrd4/+f82fat+gNikAkZYVQN6xCaJxBjuy6etJwy3Ey7gEQhmie1DJJTG
         JwbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UJ5mCWL1;
       spf=pass (google.com: domain of 3mfwexwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mfWEXwwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id n7si1343438oij.0.2020.10.12.17.32.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mfwexwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v4so19220509ybk.5
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:26 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:5f4f:: with SMTP id
 h15mr34686955ybm.407.1602549145672; Mon, 12 Oct 2020 17:32:25 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:48 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 10/25] objtool: Split noinstr validation from --vmlinux
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=UJ5mCWL1;       spf=pass
 (google.com: domain of 3mfwexwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mfWEXwwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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
 scripts/link-vmlinux.sh       | 2 +-
 tools/objtool/builtin-check.c | 3 ++-
 tools/objtool/builtin.h       | 2 +-
 tools/objtool/check.c         | 2 +-
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
index facfc10bc5dc..b84cdc72b51f 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -18,7 +18,7 @@
 #include "builtin.h"
 #include "objtool.h"
 
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
diff --git a/tools/objtool/builtin.h b/tools/objtool/builtin.h
index 94565a72b701..2502bb27de17 100644
--- a/tools/objtool/builtin.h
+++ b/tools/objtool/builtin.h
@@ -8,7 +8,7 @@
 #include <subcmd/parse-options.h>
 
 extern const struct option check_options[];
-extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
+extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount, noinstr;
 
 extern int cmd_check(int argc, const char **argv);
 extern int cmd_orc(int argc, const char **argv);
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index c39c4d2b432a..c216dd4d662c 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -244,7 +244,7 @@ static void init_insn_state(struct insn_state *state, struct section *sec)
 	 * not correctly determine insn->call_dest->sec (external symbols do
 	 * not have a section).
 	 */
-	if (vmlinux && sec)
+	if (vmlinux && noinstr && sec)
 		state->noinstr = sec->noinstr;
 }
 
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-11-samitolvanen%40google.com.
