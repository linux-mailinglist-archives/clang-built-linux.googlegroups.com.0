Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA4NTTVQKGQEXO5JGQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD79A0DD6
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:05 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id g185sf853366pfb.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032964; cv=pass;
        d=google.com; s=arc-20160816;
        b=tpny8a4r/w//sQyX9K39/QjBPdGqG8BfnfFRhVeNqS750/y+TDge3wrohdXHBPck+g
         dOmJnA4jS2cmW2Z+eX03d+xjm2n7YKXdNBFIjI/2j/2f1FoKr+ebbmo0ouaxkPvLyQ0P
         ELscvbM4+oeM2Dlx5b0SG6AKhdXxJtxn0AqpdRm/dujHO9KRLfueNwE6EDS+EuTvblr/
         aMDpJkLSmQ8ZHOiXUksFEyGz7UXUFlJ+xUngeHQYqaE1QO8wfT2t01aAyeshfxYeE7hB
         Xk6LBpPxunLiTzzmU3exWfQx5+ZYfhMkJ4zDnyl1oJaXS10j3kXnOP0JTLYZG0FfZg/u
         Krkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7A6kkYMiK+troQhegEeN5Hu2b7pa33DEDVTf/Khq3S4=;
        b=egKhU2RB3fGwNBoQHBExubrLfursf/PZYGPJ13qya1flArE+U7t6lT4e4fBl+IlS6s
         tZLOKMRlFgrR4VU6/Mp6W9t8tU1zCfUe3rPwV+jBz7M6zrLhng8Dx1m1Z/7RsuVUiM2g
         b+fGKuqSS2wNcUnC/3+AucCg5Lsbik+1rbg+RFyqCoPw4WXTFMxQ2VI57lCjkMq3E0Sh
         mMFx6eO9pf5WUEgmlRUX7e8j58ElNQC76Y82RCRTPu2tKfIyWUWtWs/IEYD5WyO5zKmA
         m+5XV94l/UKKlB6mP8a7PbxkTMKJrkG6zM7YjEtQ/vdOS5C68w+5Z0K5+e1/+p8caASE
         2kpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="j/b3RioC";
       spf=pass (google.com: domain of 3ggznxqwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3ggZnXQwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7A6kkYMiK+troQhegEeN5Hu2b7pa33DEDVTf/Khq3S4=;
        b=fBfJFayKazkQmZpuG7OZDaJgO0gtB8JCovYXgAaZSQafUtlBp2RDLrU3IZ0rSD7rAk
         TNoiuEiWaetszJMQPZn+MaJ75xWg6RZALZbiSQfholvuj9dRHtVXsnjBzwvRZUCmCGnT
         eNBIRauM2vGpvNsIsBsJqWsOpfNVOmqqY32SgBgraaa1j8t2qGhCl+5Oxi8MTGbpkp12
         ioXfv8XQBcTJf5PjCDyLW/mEKqXr2nPR7bcbo8Vj2Yax/aej+UyIq2/9LWur0sZuyY4t
         ZOLRMMgHNe/ycjLCUP4h7HpZvMHRUYBEULGKC0Z3IEhAU3ZeVqCdCuLbkffRJybYws0E
         muRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7A6kkYMiK+troQhegEeN5Hu2b7pa33DEDVTf/Khq3S4=;
        b=aF2sTSEnnHXHvaam0slllbLqmXu2TGyoKaeVVXxkA1d45r/XZNBbMQLrs7dS3rd9mF
         kFrTUGmL4vQlLQVq/tU85lMjBChJNXl7n98WAskBc5KF6TmOfKptx/TwXvkJUGJsMKb7
         gCyTb1zEm6gdhOGv7fkrtimpD2C41bo7xxknozPKsTLsTILIf8h0JOeMT/hSHmqErD9e
         m97UG9wonupYsTXYF1ZaG856Bl9zbUyfSTE7CCWW1+SE4MlwoJm9KlFVwPdweWoRWfCX
         hG32lAst+7P3OuKgIKOZoq7wEdSaVBtJLTnVQPhiRpFMAe1kwz/z1iljAUwgUdk2ZaSJ
         S3Yg==
X-Gm-Message-State: APjAAAWUantxKt7vjnbNKd1fmUliFhT6IJNnenURChck1bRR/WcMQoHD
	0/hpWSf19i49Re0e7eDo0OI=
X-Google-Smtp-Source: APXvYqy6rSW/10bIFmRr5uGZ+meVwHmcATzlKS6FQHMh1AEmS4PdQBLCUDzJvMK8bUGF1SyDE7CEqA==
X-Received: by 2002:a63:2784:: with SMTP id n126mr5387139pgn.92.1567032964017;
        Wed, 28 Aug 2019 15:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce4e:: with SMTP id y75ls152319pfg.11.gmail; Wed, 28 Aug
 2019 15:56:03 -0700 (PDT)
X-Received: by 2002:a62:1a45:: with SMTP id a66mr7778381pfa.142.1567032963722;
        Wed, 28 Aug 2019 15:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032963; cv=none;
        d=google.com; s=arc-20160816;
        b=BK0Ez3GMWujF6ZvDjiskDpfVsbYenrq8NLfxXbJuy77kKgwhKdR/kNw94cwWjS43BF
         vxqplWhxRh9JQX+VUEAlnu3UQ6KZjajW1f/wRtlPDQhtUOTvgQp8g8RfJH1M3gRNATRE
         SAtc+FGzX0QrRfbpzJC/DRS1fIEYA0wOJmzF/Mj6nByCf+L+NhA8DNDXkoj5ibRfazUS
         xDpQ53BZF4UwjyU6wXSgCVMWWFJX9383XXz3PAlEuv4GuNi1fFegWa6vOA2+VICbi8+m
         RZqGK+E5O/n2Yr7z7X0Ux3UCuLfhVSRgUqip4iJY5YX3MRm3//o3HO8UXxB47Vj0jpkZ
         F1og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ni9Z15V4bpyiJCDFN/QunD1NK4akeOXTvBvWzMWvbaw=;
        b=yPyWaO9KPC7btTmT+S/UfDrAWwqDsMWcU6553QYoJm+J6Rdwb8vFbboHEbr2O5wy6O
         CWaN2+Sp8ZMwGNOVU9yXO1iu2LljjkixZJrrDRHbsxQQ81pRFbO6I7dQsQOoryUaygeJ
         vD49nXhAWQRM1cQvcupHovlFLBWDqvRJFk5eciZAyJ5yFcPcPZ8/75yrxSq4H45r6ZBD
         GRnV0adQDtxcFRjLjOYgJ2tNh54mbnbJigbShnvKTLTtB162KFm2GUNvEcV8OqBWAc73
         jCv6SAHkFgabX2kFa9atquvtKg2UV45ZYEpbysPUI7UpBHulx8FNWfKbNS7hiht/uh8c
         zukQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="j/b3RioC";
       spf=pass (google.com: domain of 3ggznxqwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3ggZnXQwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id c11si364706pjo.1.2019.08.28.15.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ggznxqwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id r17so72255vsp.4
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:03 -0700 (PDT)
X-Received: by 2002:a1f:880c:: with SMTP id k12mr3650843vkd.71.1567032962908;
 Wed, 28 Aug 2019 15:56:02 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:23 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 02/14] include/linux/compiler.h: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="j/b3RioC";       spf=pass
 (google.com: domain of 3ggznxqwkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3ggZnXQwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
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

This fixes an Oops observed in distro's that use systemd and not
net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.

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
Acked-by: Will Deacon <will@kernel.org>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index f0fd5636fddb..5e88e7e33abe 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -24,7 +24,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 			long ______r;					\
 			static struct ftrace_likely_data		\
 				__aligned(4)				\
-				__section("_ftrace_annotated_branch")	\
+				__section(_ftrace_annotated_branch)	\
 				______f = {				\
 				.data.func = __func__,			\
 				.data.file = __FILE__,			\
@@ -60,7 +60,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 #define __trace_if_value(cond) ({			\
 	static struct ftrace_branch_data		\
 		__aligned(4)				\
-		__section("_ftrace_branch")		\
+		__section(_ftrace_branch)		\
 		__if_trace = {				\
 			.func = __func__,		\
 			.file = __FILE__,		\
@@ -118,7 +118,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 	".popsection\n\t"
 
 /* Annotate a C jump table to allow objtool to follow the code flow */
-#define __annotate_jump_table __section(".rodata..c_jump_table")
+#define __annotate_jump_table __section(.rodata..c_jump_table)
 
 #else
 #define annotate_reachable()
@@ -298,7 +298,7 @@ unsigned long read_word_at_a_time(const void *addr)
  * visible to the compiler.
  */
 #define __ADDRESSABLE(sym) \
-	static void * __section(".discard.addressable") __used \
+	static void * __section(.discard.addressable) __used \
 		__PASTE(__addressable_##sym, __LINE__) = (void *)&sym;
 
 /**
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-3-ndesaulniers%40google.com.
