Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQFKS3VQKGQE2RW3LAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DEF9F441
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:33 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id x1sf310954qkn.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938432; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwTJavKod/+A3t1Wa8yRt2doLQEN4JsVgSFpyKE92Yul0up7TVg2KjEMMNZn2B1Jhf
         EWNI4s0OOXxKl2ohyBSgLf21bIkaWK751OEU4Oi74HIBcPUXdJLNgqc/LsSA8Aqy736f
         Jt7F20IZgjnzj9G5uGPniFbn8DvAOANvexuORn125L105ba8SI+BdcpoMe5SgKNScpyw
         ixIbKUx9fo07Ow8N4+GLmB2DxOZNFJvN5lAdFLwlN+um4jO41mTcfHdqYzpBkcaa/VHx
         82RLomA51IXcmFUERBJyU3D1q4nZ+SUp5yv1PYmKfPmHRnfmP43hb5uvNatirzLUFZ5q
         5oRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wODTcczZabUNATPVma3MfKyMf6lPcynLksYfRP9f6X4=;
        b=nIBs8FUT+iAtPqCJtPwW9WjkeyXTaJrwQdELlt8HnWSDxIjRX4iKYe7wgtYD9oMwZ7
         S8zav3lBUUIzteMoucHbEj1ztepdsAPML2uItoNskZsZaUZlq7gkAHnA4ocziDVrZEMY
         b3apJAoM3vU2Fl+Qg6TYKA9g2x0dvFYA6qSNjY4cQGZmk5fkYTed0yY8Z4k6SnJQ6E2b
         aDq6QZ6P/uMCj8CPSKPbXZfLuSzg9lxX88Te8HRJLEuvzo7dFpWyDaTaz2QSsdB/0d8v
         PqrM/9gVEfZsqot2MxfvPquP8sD7iWgYnaOkaPZzFFh4DT4jf1ColJdAzrhA2ep+8105
         JjDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cr6sZbnx;
       spf=pass (google.com: domain of 3p5vlxqwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3P5VlXQwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wODTcczZabUNATPVma3MfKyMf6lPcynLksYfRP9f6X4=;
        b=LweP0gwy1FJkebsNfdB5VGMq3vWS3A1x1LSUfGqLp3EodDgSisXuJ15RxWksUvSoua
         FG9NabDtgRx7YCYwwwlPjuiy/Jgrapi5wjZGDfboD8IoGMQeG9HHTXXPu7WJVk7hOw1F
         xm385ymJrCVvSePlgOIiUkkVpd0LuTsdse6xj2K6uHgXrEjhyl9B2bEnk3gbnbXpQ+qU
         9s+3/mmeGjaDj9eNpavW4DEiyO5VdeqcThOj4FLBLwpZf95/PptV4uqTwHSqLdt1UFGA
         AsQE8XEm31hdGhqwhFn1I04acnF+pC9cB9lrJuy1c/9zcwI4EmYPHJInx92vFgGupkqO
         YQJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wODTcczZabUNATPVma3MfKyMf6lPcynLksYfRP9f6X4=;
        b=C2Nv0n2XYtDdSd1c9WlxElTIG0Wmbxg3c7/v/HK883hGUnXHpDl/Bfk1IACHIuo44h
         iovwen9Q1hYwuBmO7hF61GGgG0P4Oj6Q8CHPoKkhRDN9RXiWzz7FVUdpdLveNLP1OH4N
         b6sqYJggeaiMsYs33jhieL109GKrec9vWtZ655F8ZpX18YyUlrYPOKF7vseHBO0c1CEg
         2b3DWEK9augXPiko+i7WdkL44Rvn3WzJZdCmNluQCdzCrb5ejrPUC+YZtur3Pzlku+tP
         9E3v8ZJ4izWyEa8bY9to+vkwYee0KmukCz82YS2ZiH7gMUFcs/w5gknzqP+CzjkkvprN
         8HUA==
X-Gm-Message-State: APjAAAX79U8kFKG7epkhbyUENXL+Y0wDb7AU+3gPSbBtKDeEqnQ8L2pm
	TSu93hlj7V9E+2LtzbbDQQo=
X-Google-Smtp-Source: APXvYqyZ6Kikp0cLGiU+qdkBUHpmsardw3Dlm/UI+FIi+QQ/FkiOqYRvlpsMigsZITiiRGJsGb1IjA==
X-Received: by 2002:a05:6214:1447:: with SMTP id b7mr430884qvy.89.1566938432525;
        Tue, 27 Aug 2019 13:40:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1e83:: with SMTP id c3ls77343qtm.1.gmail; Tue, 27 Aug
 2019 13:40:32 -0700 (PDT)
X-Received: by 2002:ac8:355d:: with SMTP id z29mr832122qtb.366.1566938432278;
        Tue, 27 Aug 2019 13:40:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938432; cv=none;
        d=google.com; s=arc-20160816;
        b=QfN1X/964TrsesbsmY7SbuUup9HjoWyFDlwik+VG6EiLDDAW7/ikhv3tqbUWJq3HfF
         REJbvgqrXt3mpHyH1/1n3qMkKbFVxEmtk7h1X5VQiuKfBEY2XrtQj6cN6+6IcaKMitiH
         ONt846S7CJwPBAQUB0mWEpPUdVRuHc7cwbtCX+DG8u3JKcSnMzPXnlya/oTBcSQ2WXZD
         z96TWdQnRyYLSFOWOSFqzQ+Mwle23+tiDWQet14AskeY+W7AfKZMs0MDTKIUkyMOCfXd
         1BCJ8my7a5M3TSWgn8PjUEwJ2ImDPHWs+8AjWsvg55FXIY5Ag6962rp7KO38n7ItggyB
         VhtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xQrOvf6S08H+KmBAkcZg6Qy0/dGwEEfJY69WYmdUssY=;
        b=ri58JOIomNesmJIdoZUlqwJiNu9dgthNmwAKBFn/JTQdiXOCaKs31fzJmqTaY6mduN
         8/dNvryB4fRlQECNmdUSQmzvq+xt/G6xheZAC+9buruagLrTMWQpWIvEof9wxW2kVRmP
         IQExjuvHEXspvVbnRYCF+sZN8Np2Osvjm63EX9JYhA6KPbPHRxGhq2SzRGH1nynls7mz
         qekrH7R86OnGcGkphH5xQANdWOwUtHIN6qMFBffEchYlsjnIo/zv49Y/vObk3HO8TjUb
         EIapxXc2PiKNdPvJSHCysP4r3p7SxTuE3bET56CZcAfRBERDAp/VzJCbkLZqaIOjVV7f
         MblA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cr6sZbnx;
       spf=pass (google.com: domain of 3p5vlxqwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3P5VlXQwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id j23si30396qkg.2.2019.08.27.13.40.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3p5vlxqwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id s72so131907vss.22
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:32 -0700 (PDT)
X-Received: by 2002:ab0:634d:: with SMTP id f13mr120429uap.58.1566938431654;
 Tue, 27 Aug 2019 13:40:31 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:55 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 02/14] include/linux/compiler.h: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cr6sZbnx;       spf=pass
 (google.com: domain of 3p5vlxqwkapafvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3P5VlXQwKAPAfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
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
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: Link: https://github.com/ClangBuiltLinux/linux/issues/619
Cc: <stable@vger.kernel.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-3-ndesaulniers%40google.com.
