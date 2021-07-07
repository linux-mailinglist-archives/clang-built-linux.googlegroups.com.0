Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2W7S6DQMGQEKPFYNQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A523BEE36
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 20:18:20 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id j25-20020a0561220919b0290257e6b206f6sf755435vka.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 11:18:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625681899; cv=pass;
        d=google.com; s=arc-20160816;
        b=H0jaXMJhDAqtEKHZV9zO029bYmKACSxWADN0YobtnRpKxKvE4b5L4ON/gJhUII5mig
         AgZR3z+kMrwri0GgIO7ZjtELsmVp2isAhce1FT6D7sx+jsEdsUKadXrqP4cNv0ewcoMB
         6B80lN/+eIZ8ZGOtJVsIjI55cEjw1Hhy4gchfB73sF2dBium2cYlnRZPDqCGKHXexsho
         9rVyvjFTbTYpvDGae1dc/aupFFMV+xJ/csM2ilvH1tnNhZItCU1ayTlz8FVV1NvG5qTa
         ygNeIUxlwcj5/1XTiv+BxcrTIpwzvrKMfKpfAhzXUpU2fRBzIxQY3+UpmUaDgrcTXGFv
         mTOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qnhvVHGTlcNYBf0cNoO7KNbouammahtd+XT1M9IUGBY=;
        b=aUfSbj2TGt2x/pEHWdVIO2xvTkeFUDwKm9Tcgqofb/IqvKoKgbLBDn7EUizX0BUEJY
         7YRejv7zQCUADMhO/CbnBHWu6OfeKE0UiIXsTA/MYjKiRavXP0k1NlppuA5DlTF4F57L
         gHDBObhatQ3uKZ3A2T6UfR8kjyBBG6vvTHmv4KA4jEq7ziqtPQfdztqfNbzrpUoTav8u
         Mr13VhqX0jDbS4hfgJB1Udy1g5sNoYbe810yt+Jgg5Wy/PkqDWYnoXiMEEmHvcy+jT67
         8R+wi8o4nj0khZqG/Oe5NoZJHATKYWnykqwIUyvXE6KIdJwmiqX4mhSO2Udjexg4XIjv
         Zzng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J6D8M2wJ;
       spf=pass (google.com: domain of 36u_lyawkag8aqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36u_lYAwKAG8aQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qnhvVHGTlcNYBf0cNoO7KNbouammahtd+XT1M9IUGBY=;
        b=iLk8umSzWUdTPMxEjXQzz4VVC/k6+X/o9A6XA4jYCSmNCcLfwuJraxQkwMetxvTt2+
         MLfdDYhBHlzzPhl+CQPg/VE0J6Mb7PpcQ/i0rsEEQVH6O1vjsC850To6PcXsmylVDi1f
         LNyzbRplB/v8oO4OuxSRq+jqJc8IaQ7r7smgQrFJkpygI3mpbbYYqq+ZxBJs7tlJoGiD
         KmGo3xo+DarD7kq8ln6Mysf/qbqZAw8hRrQ6oUufjvhGzRuMh2U1NutVjLbe0BqH/Hf2
         8YU678q/Z4pda64irzEavSDhfHXbd7Zwlij3KyCl5blEffuo03JqtHCKy6tyjqZyxPEa
         t12g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qnhvVHGTlcNYBf0cNoO7KNbouammahtd+XT1M9IUGBY=;
        b=c560+GRcQtKeJX0M3eEgFs2vwYV0zkvO2qpXzkSk7wcnSFtfHdfbcgwUkqGNxQ3I0M
         Bs8eEX9D3EFQue2GXSWPQuCMwFQZAaYqawg2NxrQzYeUV2BB46Pb8DFpLgTTMy+63Ofp
         kW0MP670PIjnfxLjj2h/8unk5/jZLv6zriXw6eDctd7hs0QbeMA4N6IIOG0fWOtgONhq
         5dgskqrEdgNwKk5m3bmRtJLMOvNW7LpX1Z9//qafTLvAHm8gp7+o8r5rsNtDdEP2DZiN
         /n/5ivwkONCoMDQzFNoEOLKvjOO9UHQxT8VgAuPoquv87cnJz+IedFOCLnfZxFRYL9Rj
         BIyQ==
X-Gm-Message-State: AOAM532UnVyP0wXOEVAo0TOnJznAz4mv/7AN2ZrfjVG9g1qUe4hgS8xL
	9Hm1EBEUNYvHUdrTK+8eKkg=
X-Google-Smtp-Source: ABdhPJyqFDXiokDliAfV1C7aMLbawz90I71VNaMSbjWLCxqhCzXSk4cXt3MhHmYa/sI4K+CoBMK8Xw==
X-Received: by 2002:a05:6102:2147:: with SMTP id h7mr3598428vsg.25.1625681899115;
        Wed, 07 Jul 2021 11:18:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5cc4:: with SMTP id z4ls4425730uaf.11.gmail; Wed, 07 Jul
 2021 11:18:18 -0700 (PDT)
X-Received: by 2002:ab0:7c58:: with SMTP id d24mr24093227uaw.95.1625681898588;
        Wed, 07 Jul 2021 11:18:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625681898; cv=none;
        d=google.com; s=arc-20160816;
        b=M75iXgxu9F4yC67Z6DpNu9VSV09Uu4eG6EKTsgEHrKhhA8nvYnydo77MVzlv7B/SbE
         jPcdjH8720LbafxF/l2KxsxZc1N47CdAswIUPfmcAZFUT9TFZKweFKtqt8VNrO6Gz09L
         Rm1RM7R4yMgoRsUdlnuHVRuAxpBY/CcJdgNiZa1Lc4R43RVsu+ogEhRAdaK68sCUd9n/
         pfYlCfGhWnKCiWI+MV7h6rLBIPHBvUwh2AjrBNdX7le2OO7EizCJe0cIMDjNBIu6GmAB
         MiuBAxeXD96SZdEGb4P/SAF+ms8mmMWKbL2gDJChgAG7AFcdepC12OsQQPt5x6mcNen0
         k6Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mga0Rd0lQM3GUSKkdzD/AR1AZUen0HMS0SXtDj3bF9w=;
        b=PYE+DA8sfQ8Y6AMWsaNS9/6WLM5sHEsbPwPSuN+nOJlQUoC9PFVFIGV3ljnaYvjwh+
         UEqqZA+IfrcJZqX5+4kt/kwe0mOwd4FPpmTdGbVVEKkI4gin+GSzplUvGk3yalbg6U7/
         a/unGMKuzUW4p3BkbQVcWXtR7polKS1iE8kQ1W1P5MJDzvNLPDA8oKSkEEiOYifRDqio
         ikOotKHBF3bH5EZbIvB8rKswewS5v1IlToCvi6iLcq9FUQYo4jOvnaZSgIQbwjk+oStj
         9eynaXuEo7MwByc2BJa3jhtVlIjQEdt9+O0lN8llcfTCcRFDtUDD80oph1bFFVsVN8EC
         XdJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J6D8M2wJ;
       spf=pass (google.com: domain of 36u_lyawkag8aqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36u_lYAwKAG8aQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z137si1694783vsz.1.2021.07.07.11.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 11:18:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36u_lyawkag8aqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id o12-20020a5b050c0000b02904f4a117bd74so3615290ybp.17
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 11:18:18 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:d417:6e24:4a54:1792])
 (user=ndesaulniers job=sendgmr) by 2002:a25:a2d0:: with SMTP id
 c16mr17939317ybn.18.1625681898165; Wed, 07 Jul 2021 11:18:18 -0700 (PDT)
Date: Wed,  7 Jul 2021 11:18:11 -0700
In-Reply-To: <08a2e179-3f5f-639e-946f-54cd07ae12fa@kernel.org>
Message-Id: <20210707181814.365496-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <08a2e179-3f5f-639e-946f-54cd07ae12fa@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH v4] kallsyms: strip LTO suffixes from static functions
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"KE . LI" <like1@oppo.com>, Nathan Chancellor <nathan@kernel.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Andrew Morton <akpm@linux-foundation.org>, 
	Miroslav Benes <mbenes@suse.cz>, Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>, 
	Stephen Boyd <swboyd@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J6D8M2wJ;       spf=pass
 (google.com: domain of 36u_lyawkag8aqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36u_lYAwKAG8aQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
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
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v3 -> v4:
* Convert this function to use IS_ENABLED rather than provide multiple
  definitions based on preprocessor checks.
* Add Nathan's suggested-by.

Changes v2 -> v3:
* Un-nest preprocessor checks, as per Nathan.

Changes v1 -> v2:
* Both mangling schemes can occur for thinLTO + CFI, this new scheme can
  also occur for thinLTO without CFI. Split cleanup_symbol_name() into
  two function calls.
* Drop KE.LI's tested by tag.
* Do not carry Fangrui's Reviewed by tag.
* Drop the inline keyword; it is meaningless.

 kernel/kallsyms.c | 43 ++++++++++++++++++++++++++++++-------------
 1 file changed, 30 insertions(+), 13 deletions(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 4067564ec59f..a10dab216f4f 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -171,26 +171,43 @@ static unsigned long kallsyms_sym_address(int idx)
 	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
 }
 
-#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
-/*
- * LLVM appends a hash to static function names when ThinLTO and CFI are
- * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
- * This causes confusion and potentially breaks user space tools, so we
- * strip the suffix from expanded symbol names.
- */
-static inline bool cleanup_symbol_name(char *s)
+static bool cleanup_symbol_name(char *s)
 {
 	char *res;
 
+	/*
+	 * LLVM appends a suffix for local variables that must be promoted to
+	 * global scope as part of ThinLTO. foo() becomes
+	 * foo.llvm.974640843467629774. This can break hooking of static
+	 * functions with kprobes.
+	 */
+	if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
+		return false;
+
+	res = strstr(s, ".llvm.");
+	if (res) {
+		*res = '\0';
+		return true;
+	}
+
+	/*
+	 * LLVM appends a hash to static function names when ThinLTO and CFI
+	 * are both enabled, i.e. foo() becomes
+	 * foo$707af9a22804d33c81801f27dcfe489b. This causes confusion and
+	 * potentially breaks user space tools, so we strip the suffix from
+	 * expanded symbol names.
+	 */
+	if (!IS_ENABLED(CONFIG_CFI_CLANG))
+		return false;
+
 	res = strrchr(s, '$');
-	if (res)
+	if (res) {
 		*res = '\0';
+		return true;
+	}
 
-	return res != NULL;
+	return false;
 }
-#else
-static inline bool cleanup_symbol_name(char *s) { return false; }
-#endif
 
 /* Lookup the address for this symbol. Returns 0 if not found. */
 unsigned long kallsyms_lookup_name(const char *name)
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707181814.365496-1-ndesaulniers%40google.com.
