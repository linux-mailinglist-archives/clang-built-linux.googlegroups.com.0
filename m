Return-Path: <clang-built-linux+bncBC2ORX645YPRBGXPTL7AKGQECYUUL6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54C2CAE8F
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:32 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id e14sf2558710iow.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858651; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+CirPUf/5c/qQ8dciMp9nIMelbdQ9mVFX5GGN3LNzbPsYe+kWUpHe1Lhfr9T5psuS
         pePQ2fzIH5zYM4EthNtO0WNiiL6rPxBefKehwKepEUcQyQBYPKxmASdpP7zBaVRB4Pvz
         h/YQHY5hpICeiPv+m9r+TdHv+0RI014cdpdzoVUo01rzYGjhT0BlSZBOmRAU7nIuwMxT
         f3yvxoeZ/5fu4iWVg5BMIEKU3s+RK5tDEc5ZUplpoPxym8HfkyGtuoYmi4Pw483SFH1S
         u+9a+6YyUvg8O5hmFfShD3XjevFraCZgVO8gAELvJLLu25qEKMpLrSnZrgBo2ISJCqb2
         46fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=t8S7VUqRO2fiqwarBA49IFNh4I/1nK/ZF4ZVm6taPco=;
        b=dzz0TjEDNs8LdI3+OJck6rWQXB6tQPQL7F8EDrgoBsrlBnCknBs0uCmRqmtMpbkOgO
         5BtbbVZE1W7S2SEAKxcbeFRtNBbqk0j4dCNORMYjBxrmo9/ORklH+IiOxiy3tXbfnkHE
         /12C17aYcl8aErSdmMfVVlMmJmy0iO+i+284ohsTlxkOAwQE53HXKZf/sGDmnD+r99m3
         VEFSzZR60DoJ9/SZMpc8h21xhhC7FGJ+iez6qU5YbjVUCCouDEqPY1Bhdz89Rvd1Bgkk
         gzxWgdxloGyAYSPteRwJrw71HrO5iE18Yyxcx/ycsv2xMvQ1uMzxHa75lRi+3iDsXSYA
         C44g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZHmcfGNp;
       spf=pass (google.com: domain of 3mrfgxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mrfGXwwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t8S7VUqRO2fiqwarBA49IFNh4I/1nK/ZF4ZVm6taPco=;
        b=jxeT15wUEajZPylM3ynTd5C7OsX5BFyh+XhTR7mF4f1FltlVjGBRdMGYPL2wOefm5Y
         IN1AVjYhFJHPOCaPRqsc0faYHpAQC3B1YoZjndLx8uXUxX+TNR7LNGDnHY8vW9jQnKBU
         GLtwGDhZa2yYPDfO5nhzbfcZ4Z4P2xOIPEwfFcTuaR5RnOKFxsQ76vrKVq8NEvThBh5t
         M9uymuhlAr0D35PyJNDUKMu6fFnOeln7bfF6DS7TeWKIpTL8H4EV17wJ8j+2TGCyaMrv
         f/fBDfXgI9laI7yoIfUSKqfHVjifYbtZA74M0sTStAosmtolVgKHOquowQfDZyMpZabj
         ZrhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8S7VUqRO2fiqwarBA49IFNh4I/1nK/ZF4ZVm6taPco=;
        b=HA3jkH2JKILHSkchCM+F6ez0M5YLxENbk4rjjPglBAm2Mhfgn9LD5KrNmXMHmBJuJz
         sxp2dp4CMcqnkwQlKdOuWibWF710cF8CX0wk0EvQQQMnREeSgQ9YQehO8jpRiWOVOkF1
         1OjKbJK6c9mVh7lriOZ/aEPMHpSC5er9JpOwmcy+c+hLsZiG5NBBqxhhi8+KJRXM3rs0
         Hf6t7Ljso9jYEfzcBQYnO3m2PpnC9CNqQdEk8N9aZVM3v8zgxGIB2L7EHcxkRlR4CVc8
         jU/QPwIQHymgPW+iL8MOIPy+WMtfkRQodlMx6fOwWfBzFkVuxtiSZ5sQh0WnCVqADAP5
         IbJQ==
X-Gm-Message-State: AOAM533HJLe90OfNLLvQRI6fFFAoH/v2SMA1YdXWTrnbLAfxs2YO8ruX
	MCfuHJDljuB0pCxi2jluRpM=
X-Google-Smtp-Source: ABdhPJwX4SNliL/VoXr/i9I6bbMGtTqRCXHDr8reDKO6wH4ZkXWiZR3tNmy6ulPnglxayzaia00cMw==
X-Received: by 2002:a92:ca48:: with SMTP id q8mr4605283ilo.87.1606858651025;
        Tue, 01 Dec 2020 13:37:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:dd0b:: with SMTP id n11ls4989ilm.6.gmail; Tue, 01 Dec
 2020 13:37:30 -0800 (PST)
X-Received: by 2002:a92:c6d1:: with SMTP id v17mr4401266ilm.156.1606858650556;
        Tue, 01 Dec 2020 13:37:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858650; cv=none;
        d=google.com; s=arc-20160816;
        b=cA0k0xOXtcadYLrtJxROnCynTeKco7g/OvPbD5Gn5dYdiJml/LjRKkugmJuiY03FVm
         GoEZmKPCGcQtBftpyQbuM9x1Y/FoaZqhjXKKrTfXdA/++qSGp1YpalJmSsdWTGqfY2wN
         RTzbiAxENW+Ba6VrbZHjIlWKtbIqu5AoD64zL+2rGeL8CP/UgXpgC6I9w2goh4zRIJfE
         k4R55fLS7I0bVnq/SazN9/Hf7/vXe2NlSI8S/RBOURLjCjY2zMWfSQgAg1Ka7gGwc9yc
         1InCWamXc6MvN2dz0Ul0jpJVFnka0jpYQuRhJB3nVA8kQ2MKT7lZ7WAqPT4xSXsTVP9Q
         rYQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=9TLfWaf58UYL7wICLMCVVnhaOCpYf+H5DpQSRdiy6Cc=;
        b=fER8eblhGht7L44OZFBM3AiY0dwGAePyDU/kx6Srj6ylqedX5cnlZ8ZR6MjE2O+qN1
         umpXL18L27uLq+ipK2vhYQw/oqcr8lIb2vGT7j/xJdDC3LkDlnwSeRUQ+rX0xymGUNK1
         NrD/ZVsLLhOzZ6sbgRBLd1SEQZISVVzS4caD2+csgsxP3kyJ4PrX4kWL5hZo3NnHLept
         6AkoHBaaasWjww5mIXyhyVgZNjNQ6tuop/59TXaxiRuwfdiyFuCTKAa/N62wMuRKw7aD
         PrK4uOvChJzzb0gVjGN5Z/6OSJXHBrGfPyubIzE4wn/C9iYGvrCAQghmmkiyOhKypu4F
         hr9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZHmcfGNp;
       spf=pass (google.com: domain of 3mrfgxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mrfGXwwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id y11si69223ily.1.2020.12.01.13.37.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:30 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mrfgxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id z3so4053989ybc.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:30 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:cf0a:: with SMTP id
 f10mr7383764ybg.353.1606858650073; Tue, 01 Dec 2020 13:37:30 -0800 (PST)
Date: Tue,  1 Dec 2020 13:36:59 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 08/16] init: lto: fix PREL32 relocations
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
 header.i=@google.com header.s=20161025 header.b=ZHmcfGNp;       spf=pass
 (google.com: domain of 3mrfgxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mrfGXwwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-9-samitolvanen%40google.com.
