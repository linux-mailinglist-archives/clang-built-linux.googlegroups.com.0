Return-Path: <clang-built-linux+bncBD763O5S5UARBLMGTCDAMGQEKDXSTOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A55953A58A3
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 15:07:58 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id j2-20020a2e6e020000b02900f2f75a122asf3456499ljc.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 06:07:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623589678; cv=pass;
        d=google.com; s=arc-20160816;
        b=d1zwIvH7/vQJe+FR5uBZ2xjx2QvVFKJqL0i5UHpffEezw85C2Dd+yfBFqT9BxF15My
         /dtTX9IJPj2qiLK80C6FrKDZ/V203o5OZxrY4Zoej0rlhSbTbKN7omRfLQwCTW0LEo5V
         h5qexEAMo9F3UOctOQVMGgoGqARyoJdQ9CftLU5bxsBfxT7TCX5Rl7Pn4sbjCG2E7Jl3
         tBq1X13SG/MPb+aEphWYAPQm6UBEzgzhXYb7XVl8aLsPdgStEYdtJD4sXJo7Z9qUumpY
         iOzwx859oMnQePxox6fvOPR1rtqGsMqlqneMxePGLEBsgdSr6ggGxl4EvCgMrN1KPVDO
         WcYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :mime-version:date:message-id:cc:to:subject:from:dkim-signature;
        bh=mCQtGybEfYtDXFbNl97M5CK+t/RxAkLx0hpKeyq6WsI=;
        b=y/FVvSB7r3Ps0GsKaZHVSk0pgzOL4HTYu8vYRokmQF8tHZ/2yGlzzf8avzXnHJdYnX
         zA8qKJ+g1N0PujgjB+PxLa83lktf8FiYqYlUyvZp+3xRTt3uMys1zC/lK6iD6jv9D+7L
         NnSvkxrIgqLqd0QRP2hqNfYkTVjP+5Bal6BmmBJQZUSl4F56Vk3izzJqF+I5J8uaS2cU
         Elm4+F9OFUL7sTNyWBQY5ZTotSH8QbqHl6064ejYv78m+tOVtVbQbaLABUwMUk57OxOL
         f9y5gMY0V4jCwDeEUbAmg9WHiE+M/5UE+rLkvzMcFpfyNGtWeAc5lE80EA//Jh9IXB/I
         T+uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=cJzY7je4;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=fa4jZnl3;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:subject:to:cc:message-id:date:mime-version:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mCQtGybEfYtDXFbNl97M5CK+t/RxAkLx0hpKeyq6WsI=;
        b=orEdzrG+/qSWekb9IukxjYSRiciNMQfe4qy29mu145caTY3EAiniHGaNa2fTUEoPwi
         B3Rkw2vQ/KBwcc28QgO7a9Z5lrnNvwJc5JCjUYyRt9QS6wxb94MsDC4n1R3EBHEKXMq8
         /yWKehJ5M+/E+1Xxv9Wg7NdACzR81Kf+xG7URQy/IhyjDjtvVd+jQhqjE2GXnAk9W9WQ
         5L97TdUVukV27wLBd7RLYhzZVpuBBfJavFEZEsIt+0xHBu6+H94m8Pzut7l6BZmJ+QLC
         4RKoYcb/qYmk4Lfey6uAG0Eyp1D53Z7Dpw9SlhMQ67GhU+E8gbRqofWD9Fh5nU+Y0dZ5
         eI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mCQtGybEfYtDXFbNl97M5CK+t/RxAkLx0hpKeyq6WsI=;
        b=bT8nVKObAOYVYGTJWbpFnKtTsxCMjt4J+jXmOTBNymHlyPUg2sighRn768JltFFD61
         m8MIHhjvB0SXHWp4LDuzpKqQkYNcbCB8HeznD/WaTJ8s4Op4Ecu9vlf6DBttt8cTLOrr
         PnnqXMMcgdZQD2fv0c2n6XjbKm5LPBw7oA///FuByvDcIFcYe3nfIT4t5RFZEPO98QII
         85l+0LN7V841HcHbJFyTanlmhE4OtiplAPWzSbUjTV3ckl/a1DSIbW8RzR3jxDQ/CBMK
         d+ukJdmA4H05DKyBA71siRDWzOVvHerOWC8I1p85vyyhjKF7Ftt4oaNHZ5s+sKMCJRGF
         IagQ==
X-Gm-Message-State: AOAM532qWJvcPAWLmLZYbtqclUjSqp44RFyQynlwYtAoh51ImwtiB0qq
	rOz2vSbOb3hIO2TykdNUn34=
X-Google-Smtp-Source: ABdhPJyaOze3QfN+5tkjXPpDeSLygY7YMk+sQteGXi6c4SSrnndEcW367sLGBa0Heolw77jMhR+Apw==
X-Received: by 2002:a2e:2e0d:: with SMTP id u13mr10482132lju.351.1623589678147;
        Sun, 13 Jun 2021 06:07:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6a03:: with SMTP id u3ls815797lfu.1.gmail; Sun, 13 Jun
 2021 06:07:57 -0700 (PDT)
X-Received: by 2002:ac2:5237:: with SMTP id i23mr9214277lfl.22.1623589677090;
        Sun, 13 Jun 2021 06:07:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623589677; cv=none;
        d=google.com; s=arc-20160816;
        b=SlUInqUx0vUmkNqiCgneEA2/abTYP8RIVbYxuPIlQm/ghy2NqWnuGmd0DlfwZQgTjg
         f+zSMLUEMK8digY/gGgUAmKpGivnBRgnIvAryn7fzO9PyERCRqmfYFL5rE8uRLNWt7S9
         aDzhBcka93TnLuS1jYeWPgCPU3oAWV3iYsHSv+fnLfWum9SAt4KB8FQ8xfIUYSbxVm5A
         pymoWfQ/UGCyJMhgravdPYFCdsPBcH6sGZ+Rmu+XP4qIH4n+O4wTngb+26uMyrJrRXw3
         vboz85OAWi+zMXQeekbNCdyR1pUbbwNUX2S+y8jkyUmLVsvqrk1tuJbdTvMJ6v+1ZYZ9
         px5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:date
         :message-id:cc:to:subject:from:dkim-signature:dkim-signature;
        bh=5ePQnm+3HJZeWjTq3ey819ji536NrzATHln8V3feSI8=;
        b=CJ+IhTbufJcfvebeeae6XHRNsdUO2ZMnuOK4imvsLbmCBZObmX8fA1JSLfaF0KEdr0
         Tq1dOepB9Z6Kl4rMohi9KPlvNdddeAxy9Q0mlhOhsQAuLinhtNXz6Z2B17j5S44qCP7i
         czsFfTUAbsLbl4QYaEbf2iYWfZ+AP5azSSh3QsLfNKnKnvmYlivajn5xetZj9xlcu72t
         GI1Bn1rj+/AlvwaMDI2PhXW2IfOpJRfr/xRpoL0wOYvIXyKyMniLKlB4G/WQokUVtd5X
         KIIt/8QvoKigw8xW5dcXsnmCDOKwRg1zelK2CEeOxuwMARNhGhtHawcG5cgj0sRhdgkF
         YRIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=cJzY7je4;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=fa4jZnl3;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org. [80.241.56.151])
        by gmr-mx.google.com with ESMTPS id d7si477514lfn.7.2021.06.13.06.07.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jun 2021 06:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) client-ip=80.241.56.151;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4G2vyN3cWPzQjld;
	Sun, 13 Jun 2021 15:07:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122]) (amavisd-new, port 10030)
	with ESMTP id vnV9vcHeMag1; Sun, 13 Jun 2021 15:07:50 +0200 (CEST)
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: [PATCH 1/1] Makefile: Pass -warn-stack-size only on LLD < 13.0.0
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 masahiroy@kernel.org, Nathan Chancellor <nathan@kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>, keescook@chromium.org
Cc: "clang-built-linux@googlegroups.com"
 <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org
Message-ID: <7631bab7-a8ab-f884-ab54-f4198976125c@mailbox.org>
Date: Sun, 13 Jun 2021 13:07:49 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -1.31 / 15.00 / 15.00
X-Rspamd-Queue-Id: 3E50C1890
X-Rspamd-UID: d27c46
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=cJzY7je4;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=fa4jZnl3;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 80.241.56.151 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
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

Since LLVM commit fc018eb, the '-warn-stack-size' flag has been dropped
[1], leading to the following error message when building with Clang-13
and LLD-13:

    ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
    '-warn-stack-size=2048'.  Try: 'ld.lld --help'
    ld.lld: Did you mean '--asan-stack=2048'?

In the same way as with commit 2398ce80152a ("x86, lto: Pass
-stack-alignment only on LLD < 13.0.0") , make '-warn-stack-size'
conditional on LLD < 13.0.0.

[1] https://reviews.llvm.org/D103928

Fixes: 24845dcb170e ("Makefile: LTO: have linker check -Wframe-larger-than")
Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1377
Signed-off-by: Tor Vic <torvic9@mailbox.org>
---
 Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 144d4f8b7eb3..51a1b6b2c2ab 100644
--- a/Makefile
+++ b/Makefile
@@ -929,11 +929,14 @@ CC_FLAGS_LTO	+= -fvisibility=hidden
 # Limit inlining across translation units to reduce binary size
 KBUILD_LDFLAGS += -mllvm -import-instr-limit=5

-# Check for frame size exceeding threshold during prolog/epilog insertion.
+# Check for frame size exceeding threshold during prolog/epilog insertion
+# when using lld < 13.0.0.
 ifneq ($(CONFIG_FRAME_WARN),0)
+ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
 KBUILD_LDFLAGS	+= -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
 endif
 endif
+endif

 ifdef CONFIG_LTO
 KBUILD_CFLAGS	+= -fno-lto $(CC_FLAGS_LTO)
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7631bab7-a8ab-f884-ab54-f4198976125c%40mailbox.org.
