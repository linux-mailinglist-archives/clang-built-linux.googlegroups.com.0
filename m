Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT64ZCDAMGQEHFJ2JCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 993B23B0D15
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 20:39:12 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id 142-20020a370d940000b02903b12767b75asf15446982qkn.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:39:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624387151; cv=pass;
        d=google.com; s=arc-20160816;
        b=kWdmJ9LPZwXPAY1WjQQ6mPQCYMYrykpeRkFsi2hlabvkp7S/+GFRfzofSy2PNug3jo
         xk6zRIsfZw1sT8pkLMnEbY+fpOhUrg8P2OrazbzAx9n2PpPlNexe48VOK17Sa7l2fTGo
         V13W/b8XsQ1CXdvRDk3LViJoHlApm55xiMurp27jmDSsqWYAWAAWP8mNqkzk8cCo5QuI
         vQMCAD5bxzHBhOfO8xokQCAojyBrMuYxHRmEFg0dkZmM1X16cjVtbbUUrF1+c7bUUEp9
         dR4URORFYGRNWzt1wITOPrdPBLIsfgTQyDujKEQkivrLpGFe1d6vulBUSv2L2ev13ZdH
         +N3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=gRgapEHHTRzLEXFynDvwK6VFogzl5wpBiEEOc9f+To8=;
        b=eBL6MOvxfN24nyb4H6JvX4Eq4m1l5j0u7L5x0fVFL+jM5T087xtKwfcw7beyNcA6Ac
         yBTxgUfMW+Mb2ingg8nv87VHN6w7HbqSUW2hb3n/8hoj3Y4FmaXtDmglrYQI+8ZCmoWF
         ZIOR4D0fh/3S7AyzSBXqOMkW1/K+hwZxg8z7MUO/XxNjou2QqcaoyH67a/kJWbssouLb
         R+Qkd73RWjTLDifh2hhXB8RNQYVCn2u8AIisBZDRHkmaT3qCOSy3QB8pS5nrnI2CVxlH
         G0WC5E3vkKCA98LDU6Foh+R61grwNp74gMLFSAfgtZIiyG7b4SfGUJj3LlGqwkAkWjng
         6/qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BL/JIjBK";
       spf=pass (google.com: domain of 3ti7syawkaaeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3Ti7SYAwKAAEoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gRgapEHHTRzLEXFynDvwK6VFogzl5wpBiEEOc9f+To8=;
        b=VhlwPyRRDYmbW3sBO2id4AoN9ipiCXsyvROM8JnZSOTPIArvXhPiEqDa9/0lGJzkAU
         ErE+W0Mk1TpZu/IeVE1p7l0P73nxQjyHMIE4op4DGjx1JEEmnJrc0TWDlaJo178l8Wam
         8X/5gr88GIc7OCe7mTW8IQgLz17gslhKM71kW0F8vp5wCeyUCtMs/EGr91OZlSsJAzbo
         TloNjIOkayUckXywiypqa3JOW4ntZpGExfiVnWXw569D/56/EQNtYaD2MWgwUy0YVOCe
         C/m585UJeTOS5eLgZZDz9O5aVw2L/QXbwARHcjqHUabILlY4bMko9NR8YktqOZaHb8ad
         b8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gRgapEHHTRzLEXFynDvwK6VFogzl5wpBiEEOc9f+To8=;
        b=OjZ4uWviNfbwySwZl4EjAS/AG1lxSpbr2JVtHIWZGQKhy3GoJUC8j5U8V3VZZLNwbG
         G0vwB8HQHkIrxs0e6IUrE0eBAtIoV2AF5AJo9nISNiZlmtIxg5VYGiJWOf/NUKGY714L
         AQKNZTOcPVG1JJUsjH3gi7JN+OV/CQ6R0fM8cTUwKggsXQVaUq9gYQeHwVi9K39mfrre
         1X9n6ANdHlc8WuWMABTwOHRqM8Z3rVeKNLYh9rzKrpPa4Ll7hHcocS22guo/eiOwTI3Q
         Afc6WaPF/+TgZYTCxRzJuhBvUYpZ7kgbGUScct1EAtGlkWbWU7HyKoRZumIUix24HHNh
         1+3Q==
X-Gm-Message-State: AOAM5306keDWOGXEwu+VnXApJ5R5Iw+AZ3/ubHzg1pgragdJwHsYDqwv
	IEzmH8ibHOh281yF9H4tBqk=
X-Google-Smtp-Source: ABdhPJwv0m8oRUQCk2T9BqV0eIL8A71Aax3yPHzU+D/WdSVUFPVXFVrFDDbrktwX+Dx6uL2LxDcP1w==
X-Received: by 2002:a0c:e802:: with SMTP id y2mr188616qvn.2.1624387151419;
        Tue, 22 Jun 2021 11:39:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:80d:: with SMTP id 13ls14788121qki.4.gmail; Tue, 22 Jun
 2021 11:39:11 -0700 (PDT)
X-Received: by 2002:a05:620a:13e9:: with SMTP id h9mr5869812qkl.53.1624387150970;
        Tue, 22 Jun 2021 11:39:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624387150; cv=none;
        d=google.com; s=arc-20160816;
        b=D7QmlrXIQhAzEff+ygwf03qAXeHI/CracWV1Yjky0YM5faWc68wFR6W7kuXDThMSld
         AL9X6nvLIlknNkSVI+tIp2xFNfrvO/hVz1NM2JmIC3tYLmzSfcfAFZv/IbewLIhaCul8
         CvglqDcQ4HL4RnqQKoXPb34RLGDk0iZ2sA3dBc4S+kRnFckPn69cxYBeLYCehgTaN1FS
         CHvPLrxFciLsKk/07f/4G91y6tYyZY7bl/V6GryGbWagdbFI70Aws+LSUMaZ92itDn0G
         CW1R+7efdvub6qMlM5UpvXo0oeZBNJMa47QrV2HNbYJ4XuRjgFnZjIskKf6oeDlqGNMy
         xfEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=OJShChp+OEm8CUCDXn9YjfihOBAeGQp03SAnCK0JAGI=;
        b=gF6xPqw1B5rKarev4mbp+lf8kQ/5ct6lT0JQC8OrTNmyNsRLAWAQvnJZhT9bxFtRIl
         EaQCxsSglKhW20V8tZ0oHUijrRKh52MZq8oNqi55szjUdUhQwTQnZFq9r4miajsi1knA
         9mpWUz0c1buzGNRhQv/dicpoui/6M36NN17mEOMFY9baOY4SgjKMtcjFKVPCxAY78UH5
         tpr3OE2FPen1XAd73VHUTiQhGUw3+rh6ody2rfjyWqByfBkHANON1ogpcmZ+5/9P9Z8G
         R8v8dtu29p/AygItT5rVJ3s/ajcOUdnwA0ngyq+JBbX7g01s8cUVYrEe1qJDP0rC3+xD
         eK2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BL/JIjBK";
       spf=pass (google.com: domain of 3ti7syawkaaeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3Ti7SYAwKAAEoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id x10si237625qkn.7.2021.06.22.11.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 11:39:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ti7syawkaaeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id t131-20020a37aa890000b02903a9f6c1e8bfso19157067qke.10
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 11:39:10 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:48c8:6911:c7bd:5211])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:4772:: with SMTP id
 d18mr143757qvx.35.1624387150618; Tue, 22 Jun 2021 11:39:10 -0700 (PDT)
Date: Tue, 22 Jun 2021 11:38:55 -0700
Message-Id: <20210622183858.2962637-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH] kallsyms: strip LTO suffixes from static functions
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, "KE . LI" <like1@oppo.com>, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Miroslav Benes <mbenes@suse.cz>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="BL/JIjBK";       spf=pass
 (google.com: domain of 3ti7syawkaaeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3Ti7SYAwKAAEoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
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

Full LTO uses a different mangling scheme than thin LTO; full LTO
imports all code into effectively one big translation unit. It must
rename static functions to prevent collisions. Strip off these suffixes
so that we can continue to hook such static functions.

Reported-by: KE.LI(Lieke) <like1@oppo.com>
Tested-by: KE.LI(Lieke) <like1@oppo.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 kernel/kallsyms.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 4067564ec59f..14cf3a6474de 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -188,6 +188,24 @@ static inline bool cleanup_symbol_name(char *s)
 
 	return res != NULL;
 }
+#elif defined(CONFIG_LTO_CLANG_FULL)
+/*
+ * LLVM mangles static functions for full LTO so that two static functions with
+ * the same identifier do not collide when all code is combined into one
+ * module. The scheme used converts references to foo into
+ * foo.llvm.974640843467629774, for example. This can break hooking of static
+ * functions with kprobes.
+ */
+static inline bool cleanup_symbol_name(char *s)
+{
+	char *res;
+
+	res = strstr(s, ".llvm.");
+	if (res)
+		*res = '\0';
+
+	return res != NULL;
+}
 #else
 static inline bool cleanup_symbol_name(char *s) { return false; }
 #endif
-- 
2.32.0.288.g62a8d224e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622183858.2962637-1-ndesaulniers%40google.com.
