Return-Path: <clang-built-linux+bncBC2ORX645YPRBDHRZ33QKGQEO3STYXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A1A207D11
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:18 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id m67sf1291506qkb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030797; cv=pass;
        d=google.com; s=arc-20160816;
        b=F9YxgdMlPnZ7+H89NM70pyptVQJ/RZv/vllMTHkdxn0vRw5AeUosp8QB76Y4KoSeTB
         df/nTQ1zNPBFWIGKYCTJlk5qXkh+7OjIx4Jt6AkXNAYvm44lMEFSb9eK0JhyguKEWHhq
         tPibi85JNWMqCQLwBxA3hm9bOPjLLCZUPNSaxonfO643Vm6O2p0KXzCCmqbZMRuSrEBk
         YBBZFCL9JylWw+RRK2AtITJFjxCs19AIPfggQ4USxJKMZkYPMCU8E4g7Y2Wkpsanxpch
         5RLXR7aMe1yiCesp21BrtVGrF6y6YIAab0ZJRaCDuLXmDXPnrpbDaVVf9qj+6rIwPzid
         J6nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=icutIKD7pOUB815Hk3elmWAWMIGPpsMBIC9m/AX966w=;
        b=K10Xi6JPcMs76FRYdGC2WMYysEnC0vhhh8vJBcR3GAdhBDJF2027B8ls4ZmsJSS5gT
         Db/Vw4QfRO2TyJNk2lyfeEa6j85wSeEK0WzZ6K7YCQwIEfcNTS+5XaCt5RRlx1HXNqUG
         gVpuGrxNVUEZG0jzCS26wcsftDhA9LPSjeOf3ut9zlk/lmF6u8XMRZYEoHFsh4Z6/j2O
         f/20fdWEDiElyXPuAxu4BW2NAaB0/Zbl7Ciw0IzruKMZNr2SJAMWFMPg3Rzb/fpp5+RT
         num7zOa7f5v+ZqhZTp4KJaOotMZGbLdVISNE+5aNrMbZziIjfSFQesTXlSsk4Tl/zmmK
         pKeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=egWHIaow;
       spf=pass (google.com: domain of 3jljzxgwkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jLjzXgwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=icutIKD7pOUB815Hk3elmWAWMIGPpsMBIC9m/AX966w=;
        b=PR7Id83BhAoZr0GVzA2+qzrkxQGgq87UQgu6Zv2oyWx50NIKQ8Fvngox7JoJw0eHqR
         ktia5l/fNxZ90P7Yol9oZZYxvmpXDAhdpvQANLK/vFbLW0iq5lZqZyD7Jg2W3vznPo8P
         /KzitFMyPcfg6+1W/7Nd1ySb3PTIBOLRvz7lGDnuRcVtH5Mrxx0vjr3rxWy8x5u8ndO0
         KNP1hWqnCrgTZxVh6kgB87N15bpwLMaHVZ/Ml8qu/KeCwuGQOLlegcPWEUo1OJK+SR5Y
         PD3SDkTamZc54e9eiDK9RpeyIrViCho75kl4/wohLMn3nIf8DIBe/04fZYskOu+U/0Bm
         jLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=icutIKD7pOUB815Hk3elmWAWMIGPpsMBIC9m/AX966w=;
        b=ToPCPCA3+RNWGavWHTde38jDyBkgvS7qq4y0IwcOdQ+kMamHf9SIJXojANFFGUbr3W
         Yr590HMUE4SsEd9nG5BtuqQtVGAhiq7p86Vr3EZI39Lj/pP02NgAMGtg65rc+qzXhGwZ
         nuoVeVV6Cy2ArdyAUaC3gCLgN7oyM1mCJh3IHkoXQTxPUZTnEUmYN8gDI1uJ0IlfRkGm
         /NQN0PDoMkaDvzQmOk8ZYKKIWZBp3Tfzzsqkl2uRYvzn7o1OiqcZCyhc0deaQHPGbfdh
         lliqfuP7dsn5aABbtW7IqO96k/GojXss/5cWJuihIgtfgY81l3iMx8U+QFr4w9f+TiRa
         HxAA==
X-Gm-Message-State: AOAM531yuHatMwA8RWHAGoZG1i9IdFDeVAXxTA1iqPbYMdQ3UOmR19fP
	rft9G7Lr2kqf1iXurrM7Azw=
X-Google-Smtp-Source: ABdhPJypXqwZW0nscC3/N7TwBd/YJPpqw8VX/NdXUSpT2Per5kZIaNJaARcn+DZ/AqR5QlktzK6F8w==
X-Received: by 2002:a37:2f43:: with SMTP id v64mr20965774qkh.312.1593030797035;
        Wed, 24 Jun 2020 13:33:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9ece:: with SMTP id h197ls1643058qke.7.gmail; Wed, 24
 Jun 2020 13:33:16 -0700 (PDT)
X-Received: by 2002:a37:6642:: with SMTP id a63mr27887513qkc.5.1593030796698;
        Wed, 24 Jun 2020 13:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030796; cv=none;
        d=google.com; s=arc-20160816;
        b=TLdSD0K23s8VjCvZ2zaBBe/TV3nM26jawwBCTDO0W4rwTriRo+coRyJ5fZejLPp2Gj
         vmmwJ4geZWMBuOpcz1ncGdAQpAObWDzRhcIIGWWuor0H797FU2Gn0X9gwyov1yba5g1d
         55PSCsZHR/LurkNuTPrqstINojlxJcjmYfhDLtyYYBG3ksqCVrYuQvar7JNMERvXcoVD
         z3Pr2R8bK7ouuxbBXCFRCu29X/OFevIzThjDdSEoJNpD31HgrifstPpFeCpOkV1P3aq+
         wxyxgp2crVbyWWMzzIavZG72Xmh9LwGMmgnv8FfoC5YTamO4xwR4ducMr+KjPUb2WY6e
         9jAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=edIkT6p07lpLePHQP+aYqsXpIzZ2+6woe9Vgp5gIJI4=;
        b=tWEzM4gjgyoCk8+45sB8yUnIrk5z7jC/U9pcD67znreNOjmIr0+UHZ9Bila7VH2QSx
         hksQfZ4IQVySVf6u/YfZ3DeG9t6Rnhf7aHMSOIQPYrZxRbZOiELp7V2Ss2X40GYH5XZI
         GnKBrUDG6Ewmd/9B5ioPP2Ou2cEd0pUe07NGGVktsLpv8Qe+lw1iFFWyZVA+fRbAWgAl
         8C0YFEMngwJ4QP4D8ymHoNkaoTE8xJVjzyzPSoeJ7702H4i8ygMXTRbWJnpC3ZIRbsfF
         x1J8VuQf4aLKcxSIXFn2MjmuE2zFMhVxxit/tgLTAGGL9OvHeK+S1GSlTe3uAkxSwduN
         jElA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=egWHIaow;
       spf=pass (google.com: domain of 3jljzxgwkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jLjzXgwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y21si1579723qka.2.2020.06.24.13.33.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jljzxgwkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e192so3479332ybf.17
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:16 -0700 (PDT)
X-Received: by 2002:a25:2fc5:: with SMTP id v188mr45630243ybv.130.1593030796295;
 Wed, 24 Jun 2020 13:33:16 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:48 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 10/22] init: lto: fix PREL32 relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=egWHIaow;       spf=pass
 (google.com: domain of 3jljzxgwkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jLjzXgwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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
---
 include/linux/init.h | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/include/linux/init.h b/include/linux/init.h
index af638cd6dd52..5b4bdc5a8399 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -209,26 +209,48 @@ extern bool initcall_debug;
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
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-11-samitolvanen%40google.com.
