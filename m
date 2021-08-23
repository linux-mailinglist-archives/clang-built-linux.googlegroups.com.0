Return-Path: <clang-built-linux+bncBC2ORX645YPRBNVOR6EQMGQE7RRFGLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C153F4F0A
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:30 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id f2-20020a4a2202000000b0028c8a8074desf7390584ooa.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738807; cv=pass;
        d=google.com; s=arc-20160816;
        b=I20PoW0/FKtxrCKndzGM+EZMIw0FKJPwfGs6cpqxwWikcwYQiBFxUMvHXm5zJIwCps
         McVGa3jGBKfM5MFRjWWET1UA6W0caBMF0FTm0gU5JJOx2pM83QTYjnf86mmr4FJaYB9z
         e+WUc4DOIWrzYLazUWyBK7C0aWoyjan7a03OOMKzPdAZIkPXKO2X5sNLZjNetbtefmhD
         p3mYsrGzhC5US80tvKPuCYB1N5yzFNulxY++8HL9Y2Aoy7UtsRJHLt70Q09Lprzl75tf
         EoT/wA78Zk9kLgA4/3Q3u5DT5OGrr1TslpZF5SvWs4fAd3PamhU4LA//yrygXh/40zeo
         Joyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=u4Znhig/rJ1xWZ1+CqleVvk76VmE+06zAqmBOIAWnPY=;
        b=D4mHA2HmZq1eZVVjLk4uUWutEzm5jZPnR1KT1VOkjHqAYufpoQ0b06RS2O3mnWnc7y
         SKTDfFkhVkboG5CAj2KVPTHfxfSvaQL6yVdWE/nIxRN9ePecGBkD34JA8kBFRdgFeft3
         ujQs6TKKbkrolnae+D0kRbyxGKuK0nbs9iQZNbSrmuiCPUzgch1BKh3CoXMbxpnHZwKO
         R9lINGWcfgT2TXMGO/jGYgdz88nRmEe+tW3lBBld+zLLxjCXS4m/I5NAaiFRp3Z2be5r
         a4Z+A93IlZM9x47lbCsBV+ifdcG3M74C1DCn/LSFJ/JqYc5+kOoLPBjKwFqhJ3kYQJ3h
         XJSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clXBTTvW;
       spf=pass (google.com: domain of 3ntcjyqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NtcjYQwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u4Znhig/rJ1xWZ1+CqleVvk76VmE+06zAqmBOIAWnPY=;
        b=plRk/OTaR59UJ4sBxea9ZN7tvmBKCnzHVHj34PsWazYuyF2gCWwSxdfembBH+O7B0D
         mN235UmJmTN/B3kDP5/bKrYNfTjAndyNeSfIfkpi/s5dFVO0+vAfRXVak4A88nDkkD69
         9W6hP8JvNEgtXbPunpT44RnzOOnx4x/Jd2cq7gucJqLCK2prYYxB7x2OlGxuVvXHpESM
         hslUTzVy3guAFlkbMycdvr8+fE9OL7RwD8u5pdyLviquc5NqlOVoDSDuI+PIPQkjU4Rd
         hHzJQNozcZXwJDXu5eWIU/rAd7DZdsqcIhSlNxyUQTKU9Sl595T/9K6HybGyAHO086U7
         NgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u4Znhig/rJ1xWZ1+CqleVvk76VmE+06zAqmBOIAWnPY=;
        b=i8Qb0KH5w2riVMHwquM0C7neaPSK/j4iS2IfZYhWAfML8mx7ib2LiswKbdVkfikCk9
         PlBtsPOBQ9SM5a+Pu2q0jj8ruso58NQBLg+RUCq2Au1rMu9FtHbQ+s0xYaZLU1TH0Pw3
         cvLG2oUMEq3eVkwGVk2eaqWhmFml8b08gWZ0QMjqcrXY0FimVtFNYZb19ZhfH3DEmgkR
         ZLPIcIAXTvfo1GKoMB7HwDpMtsYhOpFa77A+0G9Ea35exLEartgogjqJj31IlX/laOaU
         ZqR2RT7RZKMiY0zQP9/eVVH7hz2EDKp1S7KLSUjnY0gaGJn8K1Dw2SuKuJvbsnSgPM4z
         2LdA==
X-Gm-Message-State: AOAM531SgZ09ikmegK662IG+bPdiw90guu5jEnTKO0iBSr9V/8tpsmEn
	PcIKtExvVxSMZfwmnDWH1Lk=
X-Google-Smtp-Source: ABdhPJwqdZ9xlb1Y3z6V1LfzNIo5UDSNcdH0k121d2cD78K0W5vxtCuSTwvKJviU6eIHpyaykHOIhw==
X-Received: by 2002:a05:6808:1304:: with SMTP id y4mr12620206oiv.40.1629738806893;
        Mon, 23 Aug 2021 10:13:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:15d9:: with SMTP id j25ls2420260otr.6.gmail; Mon,
 23 Aug 2021 10:13:26 -0700 (PDT)
X-Received: by 2002:a9d:287:: with SMTP id 7mr7365404otl.15.1629738806504;
        Mon, 23 Aug 2021 10:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738806; cv=none;
        d=google.com; s=arc-20160816;
        b=aEebZ+7qx5K4WZXr90dYgeCigdkczKyUL3gjTfAoktiQNbBYINu0KG2qSIC8CZ1Ook
         Q6+LWUh1VnIl2xkk00+hDBwr+nw7yXlv3Vw88bjxye2tm/W0U7zfxVjbNOJED1PqFzRA
         moLE2xXVAc87xnpMmU161F7ekSJMRtatMMn93GeKfCr5agLVdvWjR8nHRraukfxjqob/
         bfecArKAACBlUDVoXOgu4Us214Rg/4+xyCEwNJPuAxs8DIEnQ1KXxo/CSrCmjccHIlbL
         gby4+AnYYETNRS6vWM8nQVsfZtgR9VaIH2Zgo7E0BgFg4ie0yMjsvfp96yYxB2uByb+T
         L/cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=lxH2THwhI3Qe5Ttkn8lFxBN9sgkFppCXnD9o+HEQt4c=;
        b=YKcY5E6XAae5adNaHxqnUkzyc4W3c/uT7Erh7PBxvOW2ypFHAAyJ+3YzmXs4q9QTKZ
         cTiaXh5/wXXEbXVwdpryzBWMBa5rk2fltM7rHKPlZ9TH9l2L7loUjKca1Bmnt2/hhAhE
         rS8w+BXzFgXBUYNhVmgkpR7tjGFlRXMsWOLtM7dDPBo6qDYPRhHk7EGOJL6yqLgu5nVd
         Yz9EwY1dlEyPIXnkq/jmNL9yEB4KDIawuObVdZTyHxNWJAzNVApfjvKilIkn1fDoqvhi
         6Yhyjt5zdJyx3uIGuRUxS0epoozAYsm9TquWRbZk6csc1DZeFZUFONNfWP7ggaMoeAeo
         ThuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clXBTTvW;
       spf=pass (google.com: domain of 3ntcjyqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NtcjYQwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id n25si709491otq.2.2021.08.23.10.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ntcjyqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j9-20020a2581490000b02905897d81c63fso17009304ybm.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:26 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a25:74ca:: with SMTP id
 p193mr6595783ybc.28.1629738806054; Mon, 23 Aug 2021 10:13:26 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:06 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 02/14] objtool: Add ASM_STACK_FRAME_NON_STANDARD
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
 header.i=@google.com header.s=20161025 header.b=clXBTTvW;       spf=pass
 (google.com: domain of 3ntcjyqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NtcjYQwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-3-samitolvanen%40google.com.
