Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWVKS3VQKGQEO7Y4CZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A619F44B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:41:00 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id l12sf224074pgt.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938458; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZJa4RqUp2ue1SXeuzdTSmXB4np6un0nxSe42KJZOuNfaMeXLc5cVdTi3le/AnxWXW
         GzGDXOKO4W2KQ0MPv/pStO9MeyQjeTMBXxrxYDu8U4G5FH7qIcyDvoQcBhMYwXKnwB10
         yK2ELN9EFoeNKzzrm+2plLNTwvLKPiK7240mjqFJ6pGW93qXmY7W5L4L8gxYmda5DXcn
         LWDalWKZ2v26/UPDYb9WVgjsMcbOHffktGxU667AfZT+pIGDKOt7E2T2NRKbfhvscgZJ
         Ueb9r/JFrnpgfUVYi58XKEs2rtgug6uct1ARYqSurspI+dIcMBmnq3s136muCmwyzkk8
         nyZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=pxATTsFyNWcPhbc9lreDfHk/+/FkLxFuuGmUQugp1e4=;
        b=Jj/4gReqyE41FEmBpoK9JQtEvl5VQkLd62BwyDYvx8CD2JcldMHoaBkP2NwdHDmXY4
         yD7OYELMsxZuGg5buM0GwcFTM4wVZppGCt8alB9gEXB63UaMaYYl0leh3U4yBPhXvmoA
         hos+57Sr5JRxl+3ail4C08w/Ra6jgZLunCa4L2NQ++1a1z7D8zMPVZ9dEmEfuhS1kfST
         4JBYRXiR7Of8EKityUnLA+B2etqd2a/g7toZWskIEeQmIaJQIul+Ut6RSRn3PwnrMNao
         zuw2lrocQaiHHLvSyai9GnabL5s8e6G38M5d2HC0QedR7vJdUlO9RW9BMic5EbI42hLe
         rcVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c21KIJW5;
       spf=pass (google.com: domain of 3wzvlxqwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3WZVlXQwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pxATTsFyNWcPhbc9lreDfHk/+/FkLxFuuGmUQugp1e4=;
        b=Wyq/rax3IXH/Fgtu0PwlX/UReiB8x3oZNAM3E07FnjgKg2bknpNnqHqkhoV9/lC6hK
         IUC2nI3/gplqSlCWxy8FhtlQRoxhJgFhgU+AhDbzqB8RQ+BH/0jun4qY+UjvRw3mACEE
         RckONsXz+srQc932n/LQUP8gxhQnHukxjIWZEVuCN0twndTDXSbJ7G92MYdffI2lKPk2
         sfgIjgtGFHSPKoBxWjpuW7yPlsxJ+uvpO4YOChZcqEo6iEskYcnYv0wd+9E+cUcLa0aj
         bkVW+jEKQtuE2RfWuOozeMTT/ROuwI0bEWhKtgU4rxe1FBlAVFGfJFUwRxk7NxGVD3+A
         Yq3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pxATTsFyNWcPhbc9lreDfHk/+/FkLxFuuGmUQugp1e4=;
        b=XQBKiEjhOQW3TAkF9hU3SZ3YDdlPITinWRDUg3J4ahN9fIObLqRRgVVMjb47Yo+3jg
         Meet2p4kDlAAoQ/stEiJsbchMJ7yg8bw2zUkIHs8tp3RpYDxajF0OxJ/rP10cVKqbVUu
         +HNLiwiM8ZgGZOLVw9aBjbC5O3gTMZK8BRq4StYawxDJk+yv0cDje+9lKFm2I3/YNFxg
         4lIWChL35CrSxfNvvI/SuvptfCrOg9NGVVO9R8jOGxtYjTrevcf3IiqrfjPnv9NrX16/
         K5fJwWwIwU00J1iAA9qWEYyIyHQK1ZTUX2KbDs9ZWwhvQ54bRlWizZxdOtueWDiaWJ4f
         6Z+A==
X-Gm-Message-State: APjAAAX3002cuc8nUeIpiCZMuCJNVycht9ApAReS1txLl3IaX5dQ+9wV
	Kd7x8PD4VXIUR7YK83jF04M=
X-Google-Smtp-Source: APXvYqwbb8CXsoOpPe/Zw4Zsf4ypkx9WuHFxWftQD/hQlSERKYC4KSwgR6/7ePSbllEnbstXyFkQ2g==
X-Received: by 2002:aa7:9799:: with SMTP id o25mr445310pfp.74.1566938458711;
        Tue, 27 Aug 2019 13:40:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:c105:: with SMTP id i5ls57075pfg.5.gmail; Tue, 27 Aug
 2019 13:40:58 -0700 (PDT)
X-Received: by 2002:a62:e707:: with SMTP id s7mr438697pfh.136.1566938458432;
        Tue, 27 Aug 2019 13:40:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938458; cv=none;
        d=google.com; s=arc-20160816;
        b=LVp01vMRNJOcRw8qdG/dwDFn6bvvv5/xkk4oQc4iAoV28J20ozZljIcZcfD84tKd3j
         2RWMoQOPS24WF3VYvNOGxezZhzKesoUrZ+ePOgS85BmmScSn+4mqCrNbIJdJ3hf/XiAH
         i1/2R9Y3vklQAA1/IKto5Bu+Jo1MetFWf7/3LEqkOX6Jij1uRNEBhsSyz/F9Lfqdya2O
         XSLaoLCvBiSGjg9Do0d5hEirTkyrYDCpaF+xTxFksf0X0Oi5GTRySewzkdKFhOOMYmbT
         7nouEh8F/Qz9mAXLeXYrdxOhRf5oGsUDgea3XLwIvgcSZo+UMK5x/jKBFoUYp2l1Lqsl
         VoMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/29bjCjTbbl+cLbTxIw0tiWmYrpTAoAKv+ZcK1v+ox8=;
        b=onMihqEaQ6TwbsgcA62z3nI2NqR3cy+RrRCgug2pWEiC3MCyzAcLD1FV22+QGt8t10
         YG7Xm5ivimR93UjTCIsIWQDs4QYwqn30vvC0L3NkY6+H1trAXbg7UpCch/a0zOcfjWqH
         DOt9dyB+sWtQbWgNJR5YZxdU7rppaQXy9buY1ePIBtv6OjSD7edazhN5Mf150Y5j4bNj
         zKXFl5XXS8QmCurISjOtQF/aMhPSGgcWpdSbJBbCy5MGNLKZJXtHrwzXiwjGhQC9nKD7
         UPKxsaiTdCslCxaNr+UcC5vgiur6LxFuhrYvI2tTpSP+omk0VJHrcRDtWHJyrITIAWje
         9Ojg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c21KIJW5;
       spf=pass (google.com: domain of 3wzvlxqwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3WZVlXQwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id z5si20639plo.3.2019.08.27.13.40.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wzvlxqwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id y5so207155plt.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:58 -0700 (PDT)
X-Received: by 2002:a63:a346:: with SMTP id v6mr281349pgn.57.1566938457832;
 Tue, 27 Aug 2019 13:40:57 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:04 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-12-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 11/14] include/asm-generic: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c21KIJW5;       spf=pass
 (google.com: domain of 3wzvlxqwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3WZVlXQwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
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
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-12-ndesaulniers%40google.com.
