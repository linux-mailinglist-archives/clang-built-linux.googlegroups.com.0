Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVOHYD5AKGQE65EOSKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAE325B6DC
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:35 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id c190sf522292pfa.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087573; cv=pass;
        d=google.com; s=arc-20160816;
        b=OnlLkDE2H07TzFnYpeQIvFTzUJKqtuklF9298bHl2EOeDZBmVkhxeswZE+PYWPdOtM
         JIL+SKMAhOSl7UWn3GBCSH24Mn0oiF4b9ELv4MUH4Dep0N7Edg+nfb0vTYT/18JApv1v
         j6zVinVKrtzLwShyBrzssqVnr2jVmYRYLO8QcS0w4VWKZy+++GKknRqZ3B23ic+fwd1Z
         8y6JisdLbQbJ25yRW2d9GoHC5hBT3tUiGw3RJfwiNgGjong06wvuKslUb1nd6DpAUihw
         Tf466aZJKJhxs9h5DY23dE7eGBVKl7FXLBdMIwy+BHWCq2JddSqlnm8jS3Tk6b2WJkv6
         YwmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=GfpkS6Ccy8bvzveVuEZI9FzrSL2KDfpZw24emGqFntM=;
        b=KaOfiaA/VFfhEK+b685eSXIr4l26sSiFK0j/yUD+TJ+es+sdU1tPv0n9jc6uV8Jrmf
         PGCk8/TuN0yvCc2mq5t+at4r68rFk9c1jDY/mY+fsUqMvOR/27D5xmVB4RGtRJpDdVg0
         jZhKjsRY7DYnaMfiEyZ3veKJYs7jCz5Hwx47n+8/2GoxAHEWYYtGLprGxMJ5VrsDeGu5
         a/LtiC1OX/xDDig6NqEVG9PLlyCAZTE1LJw1tPEFU6p8DRWsmWqmeA5d8MtAmgo/62Bf
         3nf56kQVnUqaQ4qLRjs6m4RQKMSpwFyGeWjvCrzg6ARg/M6TzBPUSAGWu7iPV7QCSTVG
         Zzng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uFhC7/P6";
       spf=pass (google.com: domain of 31cnqxwwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31CNQXwwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GfpkS6Ccy8bvzveVuEZI9FzrSL2KDfpZw24emGqFntM=;
        b=S5SpiFmDljKMoZ8yNxpwpuIfzrOG4j/jvr8WgGCwd51DDf7KnqpRvHqY2wzVc438jf
         RVOwBl6LL9tNuO6tAH/6c5oShEN9Wt3KyjrEZcCsMCxgY25PCrPpHWk0it1PkY6kJBOG
         kJA8UX+yTnRG4K2QzUyt0bngqKwPvoKrBGcmbZ2RvPtQ6K8NGLfeUFTRexSvTn4pws8Z
         BlL11S2MtYh0Vj+vBpMG1On86a+/2lma+sWSJ5sqriaspQ3+WZB9ecc5hU0TXufBZMGx
         iam7Adm3CGUhVpiUFrkQxiyCOYYqXFRoYrrpXxMf65HMBjInb2d+S7LC7vIf9fnhPysD
         JJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GfpkS6Ccy8bvzveVuEZI9FzrSL2KDfpZw24emGqFntM=;
        b=f55mvX+Jhc/5u4+ybUiIlgp5U/u1AFBmDmKqjUSnTXIsleGshEwVS01dhc167ssQQh
         tcwTi7JAUC6Kpkm+ghz1KT+2kj2OwifHmLAu9HC8x81sEGVDRMZ5mGyubw0L0oFhnm63
         HJe6rmA/23kikeqHyB4MdDcooKSllkejdg2lXULj1He+vAKhzQuv9NFM7gpyuHeg8Cbv
         6zkLW1mfkAaDLoMjmQFqihQjm4VeGWt7cq/6zi21uJhvz+VesY+p6/0Mi3wyzOkpyFiW
         oN2Zl4Oo24bFo0aQe5P2R96A3hhQrpDzNNwpRQ7NhG1+FLux/Es7CDItpVCYtSoRyYo6
         Oy7A==
X-Gm-Message-State: AOAM532Aill6dx7ov0yp6f22JWUKQsXlKFRBKyI/dhfv1wcfOQtCCw0V
	bCj/T/ZKzY2u3pE9xi9CGdo=
X-Google-Smtp-Source: ABdhPJy7Szii8QKDFAquNzmpBBcTvczTYAoEgZD4QKvoY/QtKVA10sjOhh4FQxH6Owe2vW4RvDP4iA==
X-Received: by 2002:a17:902:b18e:: with SMTP id s14mr610820plr.160.1599087573501;
        Wed, 02 Sep 2020 15:59:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls1505126pfc.11.gmail; Wed, 02
 Sep 2020 15:59:33 -0700 (PDT)
X-Received: by 2002:a62:7bc7:0:b029:138:9430:544e with SMTP id w190-20020a627bc70000b02901389430544emr666480pfc.1.1599087573041;
        Wed, 02 Sep 2020 15:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087573; cv=none;
        d=google.com; s=arc-20160816;
        b=w66BTT/SCzQXDr2Bxzv+e2s0QP9t4uddf1oa5TCqIamnPDCazGIzkCuxYDfp2UHFbH
         HwXdDD+HzSVeBfgRju2LOsvWRTDA3YvDwelJ7JRWtNJHO0XNsAtWeSxAxtPDDgK7UO2n
         7/nhTmj0v66GBbP373/e5bsXs4NDBe3075YN6vr0CT6sa4Ld1744IzeIImkbAX8yAoN0
         68Gjr+lHyi66eqhE+2SrCF5boBiEGlThCZ00UUJvdnqWu4iWbCN+HdfgjIXMyUcckxRE
         xeQlTtKZ/uW+KYgGcGhzIYalsQoxvPnub8mw9kmVqiYd/vaM28tQa8iXWkeB4ym2AoY4
         HDvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=CrNKe5KWPc/suSiYgVvR/F8geruMqmj8gEkhvmIMPd0=;
        b=SXuhc7sFaAZI2SJOmH1ctVlOQLS7NeOX6s6Bp0ZgcgnOds0zn+ITTgjZ9PnpARy1uF
         03YdhNp3Ams1YLqs6kBvHR3LykMWU0VpGvWru+Bn17QnJQb/HMAQvucuFWz1o/UlHSZD
         9dPv+yCzAvl/zga0x2jzFKsIkGufLLZRsnfZkMlYmlfcpJfikQvAXtCRPdDopzKvY07w
         4h5SuCyvtqznWIqq0VWVTWrdYEp/ZRupFmGE6D11+3PW+o37aiWIkSMXTItSU9wug5ax
         +E4DE2BkeOhi33pbr4M8FnTFlmIH2EoO+1zwFMvh4ivHd6nA6RwjW0v1KUQvZP6uCaJ+
         rwSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uFhC7/P6";
       spf=pass (google.com: domain of 31cnqxwwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31CNQXwwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id s2si56837pgh.4.2020.09.02.15.59.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31cnqxwwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id u128so826317ybg.17
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:32 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:b5cc:: with SMTP id
 d12mr51918ybg.190.1599087572185; Wed, 02 Sep 2020 15:59:32 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:10 -0700
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Message-Id: <20200902225911.209899-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 6/7] kasan: Remove mentions of unsupported Clang versions
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
 header.i=@google.com header.s=20161025 header.b="uFhC7/P6";       spf=pass
 (google.com: domain of 31cnqxwwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31CNQXwwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
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

From: Marco Elver <elver@google.com>

Since the kernel now requires at least Clang 10.0.1, remove any mention
of old Clang versions and simplify the documentation.

Signed-off-by: Marco Elver <elver@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Andrey Konovalov <andreyknvl@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Documentation/dev-tools/kasan.rst | 4 ++--
 lib/Kconfig.kasan                 | 9 ++++-----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index 38fd5681fade..4abc84b1798c 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -13,10 +13,10 @@ KASAN uses compile-time instrumentation to insert validity checks before every
 memory access, and therefore requires a compiler version that supports that.
 
 Generic KASAN is supported in both GCC and Clang. With GCC it requires version
-8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
+8.3.0 or later. Any supported Clang version is compatible, but detection of
 out-of-bounds accesses for global variables is only supported since Clang 11.
 
-Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
+Tag-based KASAN is only supported in Clang.
 
 Currently generic KASAN is supported for the x86_64, arm64, xtensa, s390 and
 riscv architectures, and tag-based KASAN is supported only for arm64.
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 047b53dbfd58..033a5bc67ac4 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -54,9 +54,9 @@ config KASAN_GENERIC
 	  Enables generic KASAN mode.
 
 	  This mode is supported in both GCC and Clang. With GCC it requires
-	  version 8.3.0 or later. With Clang it requires version 7.0.0 or
-	  later, but detection of out-of-bounds accesses for global variables
-	  is supported only since Clang 11.
+	  version 8.3.0 or later. Any supported Clang version is compatible,
+	  but detection of out-of-bounds accesses for global variables is
+	  supported only since Clang 11.
 
 	  This mode consumes about 1/8th of available memory at kernel start
 	  and introduces an overhead of ~x1.5 for the rest of the allocations.
@@ -78,8 +78,7 @@ config KASAN_SW_TAGS
 	  Enables software tag-based KASAN mode.
 
 	  This mode requires Top Byte Ignore support by the CPU and therefore
-	  is only supported for arm64. This mode requires Clang version 7.0.0
-	  or later.
+	  is only supported for arm64. This mode requires Clang.
 
 	  This mode consumes about 1/16th of available memory at kernel start
 	  and introduces an overhead of ~20% for the rest of the allocations.
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-7-ndesaulniers%40google.com.
