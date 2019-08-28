Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGUNTTVQKGQEGYDCC3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEBEA0DE3
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:28 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id l12sf769724pgt.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032987; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkjiNYqhMBH+vhamYFyPevPNaaW37U2lvLqK0ZNhl6/MoIM6NL+NszEy7LjkWbZsMm
         R/3YwQRIHpNeh1l0KyjPgJk2jJIZZIyIjWe4wKqmtlKqJ7vQ/7SFMyBWQvMoygl2M+wq
         dBYJWXWOg2iUEz2quAKW4oq5GgAuPp1bagEo2ujLIgDVGyzfcqwLlX3uRybhUqimlBaQ
         mfIBDS+RcL9AIQZwX9Rbs8H1vKqvb/qjmoR3fROakbuNP/g01jJqr3ODgwKhN5z8HmKR
         xJvlNDz1u5GbiTYPcU3hGJs1LtZ7Z74/rB9A6g5/keeFBbcLScKUX6iu45hDGmaHxgKT
         Rkbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=pQhxUxpgzIMIJakSc6mA/XaupQWBFKVqnVXgzjA5xGs=;
        b=RP01qxwESBNAX153usPDyZsz5TVXIqhvQigge/3UiG7eKqD/TJQm/dkNJtnzzxs3pv
         BzehvfdEyTiKmkLUkJDRHc37E8jB3YlRLf0DR8/P+3BEnCeonR/4lls8mC06WE202pig
         ZsW7Eu2nAa7U2E5vKu7j/b6B6U2jqg8KrFAuJwFSK13GZHXt+ozzNLWIgaqVW+4n9dJP
         N65Sc1hKTMrOAjNGJw3x7pfdPFzVDhhVMAmn6sC+grndbn0e/HZ+xZsnqWbMQ6TdIzm4
         hrDF7vFgHcMwPq442vJuSpxoZqyp15UOkVLwD5zlNomlihlbzq5QpJlDjM9P1IFpMeb8
         HjBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R04ttarl;
       spf=pass (google.com: domain of 3mgznxqwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3mgZnXQwKADUeUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pQhxUxpgzIMIJakSc6mA/XaupQWBFKVqnVXgzjA5xGs=;
        b=Y3sJXZKK3NAPoplDCjGBgZ1cgycUDLZtysOai/t4m0p5CHRcpup29fg2EodxuQEGxV
         BxDdsce4bUXTMcgsZUmBIhHZqC8NYUZ6yoOFsIQ97ZCsPCkhEPoCfq2VgLzYkx1TrJaH
         tw/mZokn9IYNGKFu6DjbxrEd571k9wUZ500P1vCSQsb5Oz4B2uBljl3n+dQMZhAr4y5N
         7ZEKCmGnyGQR7dwCsvtNWesJjvMgvUJMdKlQtoMCP6oXlCYgyUv7xCl6c56oy1nRp6Ng
         DAGHSfUONvR1uyBPNNVU+IWn/qHSTmzfJRgCywILbcYuYoYRH5e/7sOi6NNB7p2TbW2f
         7CkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pQhxUxpgzIMIJakSc6mA/XaupQWBFKVqnVXgzjA5xGs=;
        b=tU36HcOeBP3TN+d2Db1RBrUJIMiJ33nzCbmpbwQlVTxl9DP1L+sHODcXfD8k0RzKMU
         Div+hBpvEf96MSkuzrrKxZ3lzyIzvioETqKtPPDQdzqqhCvVXzamWeJvOnkGf4t6v8RU
         pjIhU1TCqZRR6S2DWyClc3gpyp54p6VYuVEl06MS0fMQBvepTQLEz3KOIYf5zf14CdkU
         /3IgpoDyjXEhD/seaf59Bf2BNK3DD17igN9lgpQQil1+cVp8efPveq9IyxePL1K7A+Lr
         D1bxH+fKuFFmRonrD0a8FtEHKt74bONAmbdDTnH8o6i7qe47bdKld2PNR2yyLp/lRjQa
         bekg==
X-Gm-Message-State: APjAAAW19Ao9kTffpEOU140PogZozn5L9IqqupLtUqGGgpYLqb6BOZ2s
	ioxC57v1yQ9TaghB6ws7M0E=
X-Google-Smtp-Source: APXvYqxitylrLSB4NXRv7BGRVe/wCI0EFTQ4sRaRmnEcxZr7AG+JyL/jrJfWKkuWZpVfsKKEJWVK8Q==
X-Received: by 2002:aa7:9dcd:: with SMTP id g13mr7753196pfq.204.1567032987037;
        Wed, 28 Aug 2019 15:56:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3886:: with SMTP id f128ls153717pfa.8.gmail; Wed, 28 Aug
 2019 15:56:26 -0700 (PDT)
X-Received: by 2002:a62:3145:: with SMTP id x66mr7655729pfx.186.1567032986748;
        Wed, 28 Aug 2019 15:56:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032986; cv=none;
        d=google.com; s=arc-20160816;
        b=n2r53laovQ9yN+SG8jo46f7jmLBEl7PKJ/up0chl1jXXEfvL5qEdZPaSOj2NLk8/oT
         SFLnNEeZ78+NMO5TYYWJaLLX7HnKMbFNHmTEumxR4GQ6lA/j499qyIKl/8tVkVfV1Rly
         tQkhrHu1hMwq7Bggx0MWQ+84gyqtENPTfJQWSrg1SDb95lRoSw6fT4wC9jZtAlGDKYOy
         qE8KkY4et88+guQ3NAQ4lKne25pDjxHYT5hXuCONxIzX58Aw9J/MstTLX9bZ6eAFMnB+
         YAK5CNHJdqgOAgDs9/HJERp1fdN1Dtb5wxb2Xl5uFnndfT9MyoB+kb+1JK6kFn4NiCfH
         VKmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=WH4YcJNGldw8lGialETJ/aKYammbyIUszQaJj27lQ9U=;
        b=xfg+ykAxT3xRkDUB7hU88FoAv2qMQTZ35yg7zhMmqJWUTCoHu/vqDVXwpB24e7ETq2
         RrBDOUO6AcQI4ujZ8Gsv8qlo/ouBPVSdx6v02WZ1gw1h7Vb9Nu1GMoatIKGr6oCaL1Hr
         pfNqGX9rEZAULf2UwbgxMuAAnC2jtFmRSxAxKK9bimlrf4oq2y+dL24wWGdqXh8mYQae
         xwlYOZ96SfOA7GFSfBIha1/Aw5Pp/SbFdDN8pWis/w9KjMdOTBfK7CThMis3thsfmVC+
         qadW8p0geFkMb0MWRs6ihHMKcVgMtWWxW5+Cj2Razo/jysGodwWMM58Y0TtTF5eVHETg
         ulpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R04ttarl;
       spf=pass (google.com: domain of 3mgznxqwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3mgZnXQwKADUeUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id i11si42600pju.1.2019.08.28.15.56.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mgznxqwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id q1so781662pgt.2
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:26 -0700 (PDT)
X-Received: by 2002:a63:3dcd:: with SMTP id k196mr5589110pga.45.1567032986002;
 Wed, 28 Aug 2019 15:56:26 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:32 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-12-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 11/14] include/asm-generic: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R04ttarl;       spf=pass
 (google.com: domain of 3mgznxqwkadueuvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3mgZnXQwKADUeUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Acked-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/asm-generic/error-injection.h | 2 +-
 include/asm-generic/kprobes.h         | 5 ++---
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/error-injection.h b/include/asm-generic/error-injection.h
index 95a159a4137f..a593a50b33e3 100644
--- a/include/asm-generic/error-injection.h
+++ b/include/asm-generic/error-injection.h
@@ -23,7 +23,7 @@ struct error_injection_entry {
  */
 #define ALLOW_ERROR_INJECTION(fname, _etype)				\
 static struct error_injection_entry __used				\
-	__attribute__((__section__("_error_injection_whitelist")))	\
+	__section(_error_injection_whitelist)				\
 	_eil_addr_##fname = {						\
 		.addr = (unsigned long)fname,				\
 		.etype = EI_ETYPE_##_etype,				\
diff --git a/include/asm-generic/kprobes.h b/include/asm-generic/kprobes.h
index 4a982089c95c..20d69719270f 100644
--- a/include/asm-generic/kprobes.h
+++ b/include/asm-generic/kprobes.h
@@ -9,12 +9,11 @@
  * by using this macro.
  */
 # define __NOKPROBE_SYMBOL(fname)				\
-static unsigned long __used					\
-	__attribute__((__section__("_kprobe_blacklist")))	\
+static unsigned long __used __section(_kprobe_blacklist)	\
 	_kbl_addr_##fname = (unsigned long)fname;
 # define NOKPROBE_SYMBOL(fname)	__NOKPROBE_SYMBOL(fname)
 /* Use this to forbid a kprobes attach on very low level functions */
-# define __kprobes	__attribute__((__section__(".kprobes.text")))
+# define __kprobes	__section(.kprobes.text)
 # define nokprobe_inline	__always_inline
 #else
 # define NOKPROBE_SYMBOL(fname)
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-12-ndesaulniers%40google.com.
