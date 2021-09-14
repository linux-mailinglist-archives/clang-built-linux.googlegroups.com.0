Return-Path: <clang-built-linux+bncBC2ORX645YPRBPXHQOFAMGQE5LYS5LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F68640B785
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:10:56 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id j23-20020ac86657000000b0029cb70967ebsf61437694qtp.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:10:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646655; cv=pass;
        d=google.com; s=arc-20160816;
        b=lYYIizxPP6v4A99sKD3+FdCd/Zbwfq6EPUWV7oWls2vsksUzqEs1sd49NR78X9SB/r
         YSouT7AtU9QGA02fKXv7JXGASLG0f9M+Ah2s+guoV4M4Xo7z2/tu8m6yFxeF23fR6XIg
         AamQRNnHA9cMG/0QbP67KyVWNo9fWb3CaxH35+Ku4/pZG045NJDZlp1ld10cq7Mrq4zs
         eRd9+s3NKixKXN1Em1srpwtfBfmouy4dVe5R1n5JJOc8w0t5wcoGNoxNuxi0/CvJtTzd
         NKDibRwKbzVPg6Ru0qQXXndM8xqSFrrV+NFWBLtGucchnIgfC5t8E5OiqhzFK0ZGGCBs
         4cwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=yCvaQsL/efHOQlo+RfcC4XGntoykYXDLdHYgI1DFaWk=;
        b=SgjVl4k5W8F++fjE7fc+bIMcOYtQE9ElIyxSWWG0/NSOxOwNoDVvYYVY5Z1kZ19VOw
         S9DuGvOe+7qjKceHJV3RU1PEqUt2dk1jgFUl5lmYrr08+T17s/d51LT1iKbmoxldLd7z
         hgrtpVFqqMBnyQCucLJZWO7X3o35Wf0HazTuywF8D6Bd57HqDC2Da8DH/kMS6wrU0UpS
         y7UQPnmojsYh/B6/3sFNIIjin2aPsp9zsA/HqBOP/WrlB+e5dIFMPFMQWv8pL8g5axZn
         YTa1lfh+aOF8BCu8jAaxwr44i4Bo+DGHeTuDTNl/ve1dVK7S+fYIZ/llXWIXM7xLNjNc
         zKBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=aT2jrjML;
       spf=pass (google.com: domain of 3vfnayqwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vfNAYQwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yCvaQsL/efHOQlo+RfcC4XGntoykYXDLdHYgI1DFaWk=;
        b=YMwDsXnPGR+f47Xi5DdXHxUcVkye4PmXGjZwB7iljrtDf78J2rHQTGSf+i9rw+Xh+c
         YvAYP9iyNAk6rreK20wSTUZRgUYNxwT8JsscylojQq2HBPio71Kc2TbvvXhX1u5HbvNx
         8UqO+CJUaNxNZuhRzuxqjERZT9vA2NC9AXUnEhJ4KV+O7Dddlf9hQkE12GZHbVg6Eguw
         83bcktUwSXrS1gCeG/5cj+deQre2Cx47+uXtQOswsBeican0hYkRGmMLsMs2maM4scqw
         cm+CJN2C6aJcWRh8jfVvsb3Fy9iChrJxGuRek7k5z6L/wxmoEuXIXXWRwIUsPG+FBWwG
         7O2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yCvaQsL/efHOQlo+RfcC4XGntoykYXDLdHYgI1DFaWk=;
        b=7BL3UHwgCY792AAyOKqeZH/ZO3j6GoHlrkDwNh8O0ptbtD+09Txyooc8r3ys3GSloS
         745sUJGHGpNjmwto7zHbGxawkf0wJiwLordygPOskO0h+USKAc9KEHIwzwwcFTZAArf3
         hfOSKgAZxgKE6tLSt408w1gu0rr2eiQH6702nXv09iaX89VJIPkoVAjsRDUY1UDjKaG3
         3cI7P5lVYPL9d5iTYQPIFle5oAtNpdpztjmM0rw8qCGebBEaeofQ4EhTG15LZgvWuTfJ
         GugnedUE7p2SjPghWaNS3RA2wTMm945l5MoQ5xA9r4a5reNUDAWpZnj4OfcDW83midxi
         f1Rw==
X-Gm-Message-State: AOAM532+XrjGNjk3tqA8PrCAH/Fjr+qySX9SiPcBL11zVB7pkJbMsua9
	Pf541d3DLFwV8QwiR7iT5OY=
X-Google-Smtp-Source: ABdhPJxeSwJqLF7VAYcwul+FZ9MEhta5a0GvjInUR0l0uSHCTx9t9/CGz6ENTFTnQfCOk1qa0B3UcQ==
X-Received: by 2002:a05:622a:5d1:: with SMTP id d17mr6443220qtb.216.1631646654117;
        Tue, 14 Sep 2021 12:10:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:444c:: with SMTP id r73ls7948689qka.10.gmail; Tue, 14
 Sep 2021 12:10:53 -0700 (PDT)
X-Received: by 2002:a05:620a:1aa7:: with SMTP id bl39mr6628345qkb.304.1631646653682;
        Tue, 14 Sep 2021 12:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646653; cv=none;
        d=google.com; s=arc-20160816;
        b=xEBWQjW+T9RzPImDn0wjoJOZIPc/JrIEOxpO83YXj8WQIBloBycxEuObN4beMEbjDi
         PydaWWNgvg5VAMnCQqGEbi3UgDk9iwPac0ZFAbCazuszZFTfjqM/DFRU+EJ6/DzelYmD
         P5eZJNfO5IIjlCe94eyqoKnveiHifOBeidbOylYE4uqTjoFswZcQ0NzlHi2aBEOJymuy
         Vl/AiCOCYEM0ycXmThkGnmbKphzOF3lv3JacXw3FhhMlW9ZMzEb4g0puJ6ONGmpC1+9V
         /p8ZRyFzOqVH9LX0Rhj/4Y+In68trls4X/Rzm6498dshy7JAeT4XOQ80xZM+YIjs30P1
         rYMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=GntyULKYdaSgQ4FSc94xW8hjeJrETKXOJriN4s54uWw=;
        b=RungObi9Es0pelephQTKnE7klpSB+BB+gcgQDOFoHrWzBO9Gezua6bU6UZaWpjR73V
         P2bW7a/jOwL4c250BC1/5g/7ZdM5KE++te99VGSYk+EB/uuzxyPqCs/N5B2T/29xIKwc
         1lXCBDob31ILlaHEVw0pVHvqz67z15kYF8Z8XPDmJWCPoqe/yeS/LhxMct+X8O/XSUpH
         5pwafufX9xS1YT8iUK+sjOpgBqFgJWQPLKi+9myxvvW/hIEFqFAjuiKpliC4QmBFajhO
         +oqN+WB7Cl1njC/uW3boBmf1SW+YqT5Imd8rgzZZrluG6c4b6blak9LaNEROwbZT4sDI
         fkOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=aT2jrjML;
       spf=pass (google.com: domain of 3vfnayqwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vfNAYQwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id t12si1001229qtn.4.2021.09.14.12.10.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:10:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vfnayqwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 63-20020a250d42000000b0059dc43162c9so108724ybn.23
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:10:53 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a25:c446:: with SMTP id
 u67mr972641ybf.269.1631646653326; Tue, 14 Sep 2021 12:10:53 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:31 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 02/16] objtool: Add ASM_STACK_FRAME_NON_STANDARD
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=aT2jrjML;       spf=pass
 (google.com: domain of 3vfnayqwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vfNAYQwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

To use the STACK_FRAME_NON_STANDARD macro for a static symbol
defined in inline assembly, we need a C declaration that implies
global visibility. This type mismatch confuses the compiler with
CONFIG_CFI_CLANG. This change adds an inline assembly version of
the macro to avoid the issue.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/objtool.h       | 6 ++++++
 tools/include/linux/objtool.h | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/include/linux/objtool.h b/include/linux/objtool.h
index 7e72d975cb76..080e95174536 100644
--- a/include/linux/objtool.h
+++ b/include/linux/objtool.h
@@ -66,6 +66,11 @@ struct unwind_hint {
 	static void __used __section(".discard.func_stack_frame_non_standard") \
 		*__func_stack_frame_non_standard_##func = func
 
+#define ASM_STACK_FRAME_NON_STANDARD(func)				\
+	".pushsection .discard.func_stack_frame_non_standard, \"aw\"\n"	\
+	".long " __stringify(func) " - .\n"				\
+	".popsection\n"
+
 #else /* __ASSEMBLY__ */
 
 /*
@@ -127,6 +132,7 @@ struct unwind_hint {
 #define UNWIND_HINT(sp_reg, sp_offset, type, end)	\
 	"\n\t"
 #define STACK_FRAME_NON_STANDARD(func)
+#define ASM_STACK_FRAME_NON_STANDARD(func)
 #else
 #define ANNOTATE_INTRA_FUNCTION_CALL
 .macro UNWIND_HINT sp_reg:req sp_offset=0 type:req end=0
diff --git a/tools/include/linux/objtool.h b/tools/include/linux/objtool.h
index 7e72d975cb76..080e95174536 100644
--- a/tools/include/linux/objtool.h
+++ b/tools/include/linux/objtool.h
@@ -66,6 +66,11 @@ struct unwind_hint {
 	static void __used __section(".discard.func_stack_frame_non_standard") \
 		*__func_stack_frame_non_standard_##func = func
 
+#define ASM_STACK_FRAME_NON_STANDARD(func)				\
+	".pushsection .discard.func_stack_frame_non_standard, \"aw\"\n"	\
+	".long " __stringify(func) " - .\n"				\
+	".popsection\n"
+
 #else /* __ASSEMBLY__ */
 
 /*
@@ -127,6 +132,7 @@ struct unwind_hint {
 #define UNWIND_HINT(sp_reg, sp_offset, type, end)	\
 	"\n\t"
 #define STACK_FRAME_NON_STANDARD(func)
+#define ASM_STACK_FRAME_NON_STANDARD(func)
 #else
 #define ANNOTATE_INTRA_FUNCTION_CALL
 .macro UNWIND_HINT sp_reg:req sp_offset=0 type:req end=0
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-3-samitolvanen%40google.com.
