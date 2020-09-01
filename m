Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBVJW35AKGQENSQTQBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CD12584C1
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:36 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id 196sf1664987pfx.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919815; cv=pass;
        d=google.com; s=arc-20160816;
        b=qMHLxLiENZjcJfhkmTMJ3xxb3lCFLA4chw4JTu7l15/sj8CVoeqiHAZCKBQJ5MwUK7
         LBF6js47sAcmVmMZHQlF2okDnzNsOeMlmPUp6et1y54VOphQKBRSXTscYF5ANRIIZ8ZG
         qjfeQ2et2HFcacfcvIzLDCmu/jRfFufMX+ON+vh7g86tdr4p50p9PJfePt5gOuQYqlHO
         0JpF5SLrIAL9tu4G/usS8pwt/Qtnh0EvbMGNNcvQvTcWSufVu2STdiIyBOEor9L1wqKS
         Jj2Bb9T6W2B4SpvKP2rQjZx5Lx0HViOvpyOW4QmTEXwb9T+LrR4nMyitzPitSYS598xT
         ynTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=PzY+U/pZSa4qjqaiZiVqMiA/8JJmvEkq61zGPnfHL7E=;
        b=FzebKPMCIAYTZiG6DH8GyAzOLEpBZDYN8sfxACF3i3fjBbq9OjsXnzktmKQpB1ngUl
         37OxVdTAQXDV6WW2FHMqDmVhlW0Bx+iO6nJS6oxcRH3Gqmb0vo0Xf3rDvR2mNijCOfjN
         5wEqh/KEIH71YypKXnOCo0SSUqAmyyXmSDom1I+w5ry/Nav9rs4vf1dpZ6KSFRQtfy27
         8xqS4Ya+ge8GYuBtk9UajvSgKl6HvipQsZVR0ZpZVoCB86CSSM/Lqz5N+QMDnZ+FaOnZ
         jSSGMq4rvCtoOxB9VxLvXCbyj3g2IC+svSycI4ueEd9y3WQZgPkTtJSRoOaZg6dY0VYl
         rmaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S3eFnG8+;
       spf=pass (google.com: domain of 3hzrnxwwkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3hZRNXwwKAOQTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PzY+U/pZSa4qjqaiZiVqMiA/8JJmvEkq61zGPnfHL7E=;
        b=QcnCicXzQaeGMoPj7Xo4cMbyvla+ikTSAOxHqOe2yeVU6md3ABo9dKteFVrTlPVJhs
         AI7n2vX8BTBPWGXvcl0V5J8WTZhzfgwbLQXsKZ/wA7EYQlXutNIsXOLSX8qkjuKdEyf6
         NLyCtOrLqM2NXYtsUIcsMZTD+lbLCxOBRIHUUzA/ojE89JFHGCwnzQm0ZRPaY8KsxKXl
         ZVG6TqRLcumWyoBgU9xbja5w8o/ACakmixyJFY9wTw39mBal9PsECA3Tpg19VpTXs09e
         PJ4JzJKjenXV81L/w3Qj79+LSQl5SDo1rm5cib7AwIqmeZ+ArvJYcbAXwx5MdKVCJIoi
         /ZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzY+U/pZSa4qjqaiZiVqMiA/8JJmvEkq61zGPnfHL7E=;
        b=GuC4rldeao78wEo5vkeqeGTbLBQYr68lbEolJarANIiapgJ2A0vccvxCokE8oRkK8p
         G3h7wvKaebT2hLZ6MzZAzxX1q1VUtf6C7zCmyzxkMuoSR/pH4X2xH01SnWOXEkeidbsm
         9+Qc0N0FhGJ8rjFOCaWNACh3PTOG/DLV6IfJRLTnpcqIdtYoZIV2dnBo33y9wi2/IXzt
         mqc9ZGpkHQbjx/ftHY1660mttLLLmO9EDaqcqujvFjer0fQ4rF286Yg4SRSGdjNR91bM
         bjoZj+bxEvKIsgIgESWO8zL/v2KoNT+9IgTWLdS0I4iuB5wu+QfSEj0bLoa3+oxNKTJG
         qbsQ==
X-Gm-Message-State: AOAM533evlIaZC2GLUW1ZK15tEv6LzWwkhe0KtAG8Ejh+N735u8djD4/
	2tdd9YAes28vx9MZARSAlRg=
X-Google-Smtp-Source: ABdhPJxgp9zVMNYSo/VHzo3Pf/6GjFc9DGn6keZaBcPfHDf7Gr/Rodd8jjllc3tAdcKWltYGx0Exow==
X-Received: by 2002:a17:902:9f96:: with SMTP id g22mr3062782plq.13.1598919814866;
        Mon, 31 Aug 2020 17:23:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls4219167plb.9.gmail; Mon, 31
 Aug 2020 17:23:34 -0700 (PDT)
X-Received: by 2002:a17:902:8a8e:: with SMTP id p14mr3136117plo.42.1598919814384;
        Mon, 31 Aug 2020 17:23:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919814; cv=none;
        d=google.com; s=arc-20160816;
        b=hwD+IIx5J2igiqcd8hbXIV7MMT3+A/Jy8ICwthZpS189NEapwZeLVUnkbmcORH/7Mu
         Pvr3coxBUqgoqPgzi9K7b+L/ML8nWZh94V+hM2vYA5/pmiCH4XTeCVbweEqVkO1BtH7U
         DKXf4gHrE83tZk0nwtVYEATZ2GoEifoj3J+skrVM6+Sz2ma7Ote7fvItvOm8mgeXlRH8
         +dkqhhpw509NF3TzluuhHk3lwninKvaFmM34GaKxRZTxSaRt0KI32/II7kTHu1WQ/5t7
         koGiwqpPKJWjmbehm/AgX9FZz8XYPrKtr5X94oS8azIVNentmrukYU2q/es0asF9yYdP
         1WbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=3f6P4/29utvTQL2GbGI3HgjsLcJrX6x4YOwPd3tFDyY=;
        b=VjZmbLNU7G3Q/Hq4Gf6fjamIw9+hHslnEkWm5cPN0SUndMt8U3siFGsHYEt81hvOnn
         JPxQP6nVWHNkZFUPtTHOu/47XEcOCLKGX5zItFzZOfVVAvS12QF6FG+9yIouxbzN6v7M
         8SrnU9RF5DZ1V+BIAmPFfVJ+IIK1F6F6VGUM+IOZBK5tRbV67GQnBksdxWGv/n8RmqaC
         82mxlzpc9HFCGuhB84YJ9nQky9HrzDmkFYr3daLy2gQ8BVJgUR3ax7Y+eJMegTb5q8Dg
         qTR8Q3wJw1lGlucg5/g9w43qx5dsP91LepEZf+xLPw0ICZM8IzL9Ap13y9m1Q9q6j9ih
         ycfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S3eFnG8+;
       spf=pass (google.com: domain of 3hzrnxwwkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3hZRNXwwKAOQTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id k5si49668pjl.1.2020.08.31.17.23.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hzrnxwwkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id j13so6557288qvi.17
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:34 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:b89b:: with SMTP id
 y27mr3706168qvf.215.1598919813459; Mon, 31 Aug 2020 17:23:33 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:20 -0700
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Message-Id: <20200901002326.1137289-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 1/7] compiler-clang: add build check for clang 10.0.1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=S3eFnG8+;       spf=pass
 (google.com: domain of 3hzrnxwwkaoqtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3hZRNXwwKAOQTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
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

During Plumbers 2020, we voted to just support the latest release of
Clang for now.  Add a compile time check for this.

We plan to remove workarounds for older versions now, which will break
in subtle and not so subtle ways.

Link: https://github.com/ClangBuiltLinux/linux/issues/9
Link: https://github.com/ClangBuiltLinux/linux/issues/941
Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Acked-by: Marco Elver <elver@google.com>
Acked-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* use a more informational error, as per Kees.
* collect tags.

 include/linux/compiler-clang.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index cee0c728d39a..230604e7f057 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -3,6 +3,14 @@
 #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
 #endif
 
+#define CLANG_VERSION (__clang_major__ * 10000	\
+		     + __clang_minor__ * 100	\
+		     + __clang_patchlevel__)
+
+#if CLANG_VERSION < 100001
+# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
+#endif
+
 /* Compiler specific definitions for Clang compiler */
 
 /* same as gcc, this was present in clang-2.6 so we can assume it works
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-2-ndesaulniers%40google.com.
