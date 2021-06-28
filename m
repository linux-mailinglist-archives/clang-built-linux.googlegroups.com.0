Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEXD5CDAMGQEX2KYUNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1771A3B69A9
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 22:31:16 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id c25-20020a4a8f990000b029024c6d57447asf5255736ooj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 13:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624912274; cv=pass;
        d=google.com; s=arc-20160816;
        b=s030tsAydD+cv1hEUtVCZUbItjtrdC4I8tDM/zIUO57laBNzxHFtp+nQhY2QdNSbyX
         PkbSYH2sxP9zZcTO2BljDeAtEXcUYGrIPsOJFAYS0nn4J/e4u8jwwwt0ViwayNx4dzv3
         bX20FgehaCwkdRiggkrnKXWxlOQk8t7AVHegI99Otsqqn3Hftsb9nyKn6BEHkvzRueDe
         rioMSaigcZfKKgsSTrkUDN+99UTXrIF7zxtK8ncwVKt0QefRZpTSqX0h0YVgy5qNnefc
         Megfkjqzjrzs/Y5UV6WoMaCPDMUOHQswqWq1g8L5XvLzsnlTl7/Q43Ox/zxahjmqrgDw
         +ySg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ipb3WpZnFRmahrQ0arqRD/Q4+qRxtg9NgAmYS5Ig0is=;
        b=DmJERblaMNMsHzwcKXpC2+DcYeif135bSoOeFSYLp5QEN+MZflWaX/WFvKnQGjrw8x
         ZAPykbOw+rZiDgRNc1oQY6LeJcywIguLKPceVnxwjEjxme38EkceAqCFZC0sgmZ+ZWhN
         YVQPu1lapS/gcLpUXjqBb6tx0wJFHCC7jhe7aqfzkytSaoHmeD074gXd1ch9VuI8GijZ
         3xBCG5yWu2GEpxLBdzzfiKU+RB3lm7e1A6h1zBrZGl20pkmXkCmJD1ADZacT+9yVVf3c
         VZ3slV9KwGPjnM+Eb+1ITQGqvS2Bqwxq9GsuyxIhIPjZN/mm6omdszAOoYmJsklChpyf
         1GcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vz/oIBoe";
       spf=pass (google.com: domain of 3kthayawkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kTHaYAwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ipb3WpZnFRmahrQ0arqRD/Q4+qRxtg9NgAmYS5Ig0is=;
        b=Ha3Ojm2hMoDaIwkSTOce7BbA0zIw62FldGAnPMN1M0ii3q4vU7uw4/Go0FJOU+fNJx
         XrXeKi5uK7vS8F7YCszXZbBf76olZneamqHrZNtcy/dItz3YsaEHNOC/XcQfNPMCcBMa
         y/fA+c4BKiCgzGbVhkxb8mV1Hy3Kg0IzmPJMLnGM9/pRJh5riud2pEHE6rS7EkUfEP2a
         uPIT9kYS1vxHPSodoPcfGwv1HjxkLiiBCjfoRRNfcmZO7+ikmqD9+JF/ELVLVSXD53LW
         AvfFpb1/7FRJs4hZjgUQP4wn8PyQsas5y2BG6e0sNTEpWZTzK1qwRTWJzq0JsqWPuZWA
         MLvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ipb3WpZnFRmahrQ0arqRD/Q4+qRxtg9NgAmYS5Ig0is=;
        b=bt81VL7+p8+Ge+fTLl9nr1iPt+1huuJnKAqek6obf8IYaWsiP8DL1YqsBx7VrsX5/0
         IFcj+6DqpCoGMCx2mDIHDwKI3UEg5EaCNitiWD20NxtMpKrmEjT/6gcD6bexUymrz1IP
         RSbiaS4eOhWlKpd5dG9C9Q9pcvr3gfr3p/dL9RQ9n3QzVE8qnRJvEO2/3vtCnOMSNCKK
         UvksJ3LzT/iIbd6Mf1NixxlNE/7WYWL/xZJ8lyK7H4MwtmttvopiQFcgFlpgl+1WSEBc
         mGKBv/dzKfmfbhsjQZDApPDbyfaF1vS9+TLAwLWTChC7GhOWSSpjzbNXqeJJB4J/p6a6
         6+vQ==
X-Gm-Message-State: AOAM530goPb4yiHqE6JJgKihW8PxMkXGerXWGn+HM/nkO+Y2Ifu9TnWD
	ZDEwaFD96xDcif7J2d9Z/Cs=
X-Google-Smtp-Source: ABdhPJxkA1yAvQPgrwCxNNitTJ29bRvailZnH5scboazPS5uVvfSf7nDUXeyjVNK0sYxNWZsMNWvIQ==
X-Received: by 2002:aca:43c6:: with SMTP id q189mr21223825oia.81.1624912274730;
        Mon, 28 Jun 2021 13:31:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5a83:: with SMTP id o125ls7018491oib.7.gmail; Mon, 28
 Jun 2021 13:31:14 -0700 (PDT)
X-Received: by 2002:aca:2114:: with SMTP id 20mr13610813oiz.13.1624912273918;
        Mon, 28 Jun 2021 13:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624912273; cv=none;
        d=google.com; s=arc-20160816;
        b=HfF1wS9a93eUh1v7XYXKkb6tp0HuJ/rC5JuxXIu80A37CHOKGwrX43ZyZ5FO737X2u
         UsAIktIFP2hEUUesUNaU/hBPZ2G3MUVmkdm/G31P9XeYMYbQBGnBIgjpIY5Y5wm7X+70
         6je44Tlp8FhWB5arjCEuGLQhNurFh6eviavsVZGJDI06OVeMXv7jylrbXNuuPoNUANIX
         FbTEaFaOYNNIBB5srwjesNGrcUz8gUo9/uO9Uwj/LP1Osl5dC7qyFbm8re1FeaznIi98
         QkT6k+atMAA6YTE0oPFt7VxjDd4DqW6t2m0bAU+lSbP9Cx192tdVnmGWR2wa6iORx2cj
         xVTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6T6NsHzWWvCAH0u6x7ev+GFXhfHMd6xAAjEggw6hDHk=;
        b=DfQrK2VpP5LEd0kgLMp2iOhzBbBwY8bxJGOLmjK0IeEnwLdZb2ajzIihmQ8zznUOWl
         qCoLpcWwwfjxgum8EXa+vhHmKf7Gg4wBjCp4TRuOXVAm1xc4tgQuAbjvZI9TTAk+thXB
         cRE1bmMxhpq1uMZu3CiKYL66tuep8Fza7V5DAaIw1Vv3Fg2KkESgtB7EMR9PjzaG4TLx
         J299/WkRdZrcmCjJytShZXHOMryEDDKvPsmDiNyUQIlD3dwyjf31GyKINbNFZIyNDK8q
         8KnNcHqiR9Kn/4ZGV0579eXn0onabJad9blS45QdK77KCnEpKQPnB9sOLJKQb9eLEzJz
         2QGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vz/oIBoe";
       spf=pass (google.com: domain of 3kthayawkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kTHaYAwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id k18si2104734otj.1.2021.06.28.13.31.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 13:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kthayawkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id n195-20020a3740cc0000b02903b2ccb7bbe6so18872140qka.20
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 13:31:13 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:6f7:d09:f550:3380])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:2a88:: with SMTP id
 jr8mr27049614qvb.6.1624912273427; Mon, 28 Jun 2021 13:31:13 -0700 (PDT)
Date: Mon, 28 Jun 2021 13:31:06 -0700
In-Reply-To: <a970613b-014f-be76-e342-4a51e792b56d@kernel.org>
Message-Id: <20210628203109.2501792-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <a970613b-014f-be76-e342-4a51e792b56d@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH v3] kallsyms: strip LTO suffixes from static functions
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"KE . LI" <like1@oppo.com>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="vz/oIBoe";       spf=pass
 (google.com: domain of 3kthayawkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kTHaYAwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Similar to:
commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
functions")

It's very common for compilers to modify the symbol name for static
functions as part of optimizing transformations. That makes hooking
static functions (that weren't inlined or DCE'd) with kprobes difficult.

LLVM has yet another name mangling scheme used by thin LTO.  Strip off
these suffixes so that we can continue to hook such static functions.

Reported-by: KE.LI(Lieke) <like1@oppo.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v2 -> V3:
* Un-nest preprocessor checks, as per Nathan.

Changes v1 -> v2:
* Both mangling schemes can occur for thinLTO + CFI, this new scheme can
  also occur for thinLTO without CFI. Split cleanup_symbol_name() into
  two function calls.
* Drop KE.LI's tested by tag.
* Do not carry Fangrui's Reviewed by tag.
* Drop the inline keyword; it is meaningless.
 kernel/kallsyms.c | 32 +++++++++++++++++++++++++++++---
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 4067564ec59f..143c69e7e75d 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -171,6 +171,26 @@ static unsigned long kallsyms_sym_address(int idx)
 	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
 }
 
+#ifdef CONFIG_LTO_CLANG_THIN
+/*
+ * LLVM appends a suffix for local variables that must be promoted to global
+ * scope as part of thin LTO. foo() becomes foo.llvm.974640843467629774. This
+ * can break hooking of static functions with kprobes.
+ */
+static bool cleanup_symbol_name_thinlto(char *s)
+{
+	char *res;
+
+	res = strstr(s, ".llvm.");
+	if (res)
+		*res = '\0';
+
+	return res != NULL;
+}
+#else
+static bool cleanup_symbol_name_thinlto(char *s) { return false; }
+#endif /* CONFIG_LTO_CLANG_THIN */
+
 #if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
 /*
  * LLVM appends a hash to static function names when ThinLTO and CFI are
@@ -178,7 +198,7 @@ static unsigned long kallsyms_sym_address(int idx)
  * This causes confusion and potentially breaks user space tools, so we
  * strip the suffix from expanded symbol names.
  */
-static inline bool cleanup_symbol_name(char *s)
+static bool cleanup_symbol_name_thinlto_cfi(char *s)
 {
 	char *res;
 
@@ -189,8 +209,14 @@ static inline bool cleanup_symbol_name(char *s)
 	return res != NULL;
 }
 #else
-static inline bool cleanup_symbol_name(char *s) { return false; }
-#endif
+static bool cleanup_symbol_name_thinlto_cfi(char *s) { return false; }
+#endif /* CONFIG_CFI_CLANG && CONFIG_LTO_CLANG_THIN */
+
+static bool cleanup_symbol_name(char *s)
+{
+	return cleanup_symbol_name_thinlto(s) &&
+		cleanup_symbol_name_thinlto_cfi(s);
+}
 
 /* Lookup the address for this symbol. Returns 0 if not found. */
 unsigned long kallsyms_lookup_name(const char *name)
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210628203109.2501792-1-ndesaulniers%40google.com.
