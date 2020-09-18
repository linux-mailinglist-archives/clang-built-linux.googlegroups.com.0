Return-Path: <clang-built-linux+bncBC2ORX645YPRBRVKST5QKGQETQWDWRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C3627062F
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:04 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id i16sf4408551pfk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460103; cv=pass;
        d=google.com; s=arc-20160816;
        b=fNVv+QhbLSz+Xv7QwzAWPzgBsgUEjeocBEwLzRAltqP8Ry+OM5kq/8YO8Q/w3b+kKb
         0xZCRx9JyAX1K3Qsl5GQWPpi99tHuEoGB64/K/jCS4RRhG/uGJjgvobUmabvYuIgqUxZ
         Hy/us8NB3oZ5mDuee4VEiroaJX/RI758PRuFCdJh9tM4H5hsHIOM0xTi00mzOzZvNMTn
         HBjWMLjEeYaLuzNJYzETosm3TCjzsdSE0KvXeJqlesTMq+E/EZMc2Udrotq4+yQVLXJb
         yEgTNQk2v40Xo8BiuyADzYmirDi9s7Gn5Xrlt//clTbPUcPxNeYSSOopbpQcPaLSmxBc
         HH4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=j1UdC5aBN4U9/pwQrW66kBttcU1WVmoA6ZYZrAMqQ9w=;
        b=nEX1ZGItDXqSgS6XEY6xD4Ysics0UVdqCdyrMOjpE/jkuOyvU1m6MDo+09Pd+UM5hD
         fHKqv8XLMNTRs6r/E2UdJmTKHGRLKsqfO+h5E7BCvgy+FDOdHm6Q9/QBnkCheIQ7GYRu
         9gE6KkBs189ZDRKFE0oWH35aKRS5DTeIx5iay7debblQ0zjYhIIDDbMIHJaI10buOUSV
         0UTjwx/jy3JGSG9QJ3k0PjBt9zHED4g6kSDJfywfRkMGcMh2WaQkJafwFRdk8HTFEH42
         6QBUfrbXs9ZnXjyKrS+XwCQkR+cg/ELCKzuoQbJEs8abLCGbJwMPyd5FYmUVZGKQr7Qu
         uaPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jYUGHI1s;
       spf=pass (google.com: domain of 3qxvlxwwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3QxVlXwwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j1UdC5aBN4U9/pwQrW66kBttcU1WVmoA6ZYZrAMqQ9w=;
        b=GvaUzXoiWvy8hxeOorpjy4UmCrW5lK/vh2IDSX/cZpvzv5ZA0xanKzQ8WdAWQpTSJX
         nfhDg15qmknhg6WPrD8J6goa65oTxfg3DmL9iSdqvzv3Dp3rmDgtFF3fAwVCwXH7+2DY
         q1s+ELLP+d5s1/9iwBDnx8Vvg/96vf4/KGn7LHjOxEusi4MfNpRQ8a4T03AGg2xRWpNE
         g0+Vi6XmMpwtzkYstEtNR2BFQp4DP13kvawv3mfCvkfFO0FndwpmDSgiTEu9w76e8OBk
         PPQ8SFCv7Qd8ne6zYt6SXLkHrLO8qJlP1vKkS9GHRqx1AyFcclxIH1UXHw+kz5lujFOr
         RpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1UdC5aBN4U9/pwQrW66kBttcU1WVmoA6ZYZrAMqQ9w=;
        b=kCZ+Fm9XnsWmkiEoYzPOmO1/6fQtl3y1bIuPRjcF5XKW0ErWRUZ9cJvtzmAH5ofF97
         TSIWPZpisHNAfc2dhkenf0Cp/qvTphZy8phR1zIVUf1FVmWpxES7tbGDnnQtkZ37dPir
         D8sYdWS2kjxqbXaGC+xyjVZwUIpV2KJV6QQ1yqn9qo8r5U5OpWpvU4cn457gnF8xKt65
         m8QGuLDXDCprs+csdo04mmS6WFQnyXF3ISBkPLjk76vFOzLYDnRQyEH0EkIp71PCDnum
         g/LE/QakANFIw+50jcDEsyiNBJtbrVQeyJyV+peQQsRgx5paSQNfUyBVIN3kJ2xh9ZBr
         Gf0w==
X-Gm-Message-State: AOAM533TAT7/fYJKph/RpYreUlLIhcp/gI1VZceUmXcD6G9YTUI4AgK6
	n4IgyUZ079P6BGqsl4QlRuk=
X-Google-Smtp-Source: ABdhPJxgP4oa+Nw3hlLyW1VQd6OfGy0nsnAjoPVzAz3Hp9TnWcHY5cQYO8HgDu5rMq3vXsUNtr9zWg==
X-Received: by 2002:a05:6a00:1585:b029:142:2501:35ed with SMTP id u5-20020a056a001585b0290142250135edmr17861110pfk.77.1600460103048;
        Fri, 18 Sep 2020 13:15:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:45:: with SMTP id 66ls2553701pfa.1.gmail; Fri, 18 Sep
 2020 13:15:02 -0700 (PDT)
X-Received: by 2002:a63:5d57:: with SMTP id o23mr12517240pgm.263.1600460102423;
        Fri, 18 Sep 2020 13:15:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460102; cv=none;
        d=google.com; s=arc-20160816;
        b=drbYyKHBRPTfoPPrjqN1t21Dxyj0Z/fkIb48cg1IuIvmGZ+I2sGOLVC/tvQuE/yAFF
         WTFjxiiDcTxz/uf5vCJo10lqeCcakWK1hfpQQ4siPRwD3AazpCjKhvPi6bXs1pbNfb43
         By3Gv5TU61tCOu7G2qd2NpKz+HoTQwYtUQlq0DicBn8ZXSFIS1g3GliaaPxkEWL5dyMl
         eUZj5HD4QyHOaeyauTcV0GP+893FMe4+nvxLtRGDtfO1kW+32ktg7bWDKjoI72pu/e7E
         LcdEc4e31AAguuDvHBWdeGyWvqDnwa96f4Oaxd0xEaPT/1zPzvWWNjXifb+J2Abhf/ZG
         KWpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=I0YLtwhWjc07CuFqeB5q66ZrbEvcoZ20B6+f9QGQIyM=;
        b=yC8w68uQSmG7L3ueeStLNinaYsaAPDg6/QlcpTZ1BTrmN1GdrBl+R3CKWOxFbcH6F3
         /1tcdk1nK1nd1Pujz0tY+C966Q2Ky5wU4IE8s7JsK22WJYoW+CzOe7MG+1wiuCKi420N
         bieV4mRWzXVa/pQhCshGnEodeNMy+4tCyHlxpmvudCX5/QJ1Anevs6qp/3QgrTawL9Zb
         Lbn9vozX3S9KWnF1JYKRnsxja+MMDmTSsVXDM8Qox2M6xUXHGMfBtecx9EqXVxQ73YWe
         wakCaq+/ROQhP9u5UCJo8fonrRUV6cCW7kYPnlZP+J48ZW8OYO1WBj7VGX14pbRth34B
         KYoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jYUGHI1s;
       spf=pass (google.com: domain of 3qxvlxwwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3QxVlXwwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id mj1si347727pjb.3.2020.09.18.13.15.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qxvlxwwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id c5so6082092qtd.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:02 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5a0e:: with SMTP id
 ei14mr20723233qvb.15.1600460099899; Fri, 18 Sep 2020 13:14:59 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:15 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 09/30] x86, build: use objtool mcount
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jYUGHI1s;       spf=pass
 (google.com: domain of 3qxvlxwwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3QxVlXwwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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

Select HAVE_OBJTOOL_MCOUNT if STACK_VALIDATION is selected to use
objtool to generate __mcount_loc sections for dynamic ftrace with
Clang and gcc <5 (later versions of gcc use -mrecord-mcount).

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 7101ac64bb20..6de2e5c0bdba 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -163,6 +163,7 @@ config X86
 	select HAVE_CMPXCHG_LOCAL
 	select HAVE_CONTEXT_TRACKING		if X86_64
 	select HAVE_C_RECORDMCOUNT
+	select HAVE_OBJTOOL_MCOUNT		if STACK_VALIDATION
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_DYNAMIC_FTRACE
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-10-samitolvanen%40google.com.
