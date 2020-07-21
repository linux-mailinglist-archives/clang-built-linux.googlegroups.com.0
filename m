Return-Path: <clang-built-linux+bncBCS7XUWOUULBB6GM3T4AKGQE3QDFWSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F9122875F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 19:31:37 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id k188sf9860193oih.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 10:31:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595352696; cv=pass;
        d=google.com; s=arc-20160816;
        b=BsIbiKhnnA5GBZe3QwT8y/uqWJ49YriORTr1kmaik4kiC5718ZMU4rJuCC1BuuZE2N
         mUn6BN+TKOBn8EiJfEhZWS+YEOEy3yW75AGJPA6l5TsQAzi9NxpF7OTZBxPPyNJR9mGK
         J8rrM2sQ7sVXr85BNcz0joFQQhfEs5ny3lw7z0qyFXdr7zfXKrPUf7Yh8dfuEtXuikHd
         4zd7gCoYyYTwicftCIho2lTlhxQSN4awHMJecRc4KcudSCjvxSK7dceMCXZf1tGJID3p
         QJIL/srwRAoj1khr+TEcy3SjDkj/lbo1OOBEgZOwGrcCrODxhHqHvUS7Qt//8DPt5p9K
         La5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=rDyYx8RFZuIJeZIT/av2VkC4afPWfD4ES73JHVMjNbw=;
        b=aXO49HfKjKED0m5GcLJ3dJrqLvqmG+4xAK+Dg1ENJl1WmIX4pFNxYnDFGXjmoaYSDb
         gUTzYNl50f5rZ0EzC5BKYG2eGokxWfPhZkTqas+JeYa3pbEyIwiQRVZVBCWz26ZVQ0tR
         +eCywj9QshqY481EI/c+URcg4QPkjF8um/da6/eUvsREiQVO287tJdsTx66ta9vofz5A
         ZtpB6+SUz4MPjB8vpN2wriXnt6E4iF64shs2FzIAXvssoxzphWQgzP+SIdE4J2WkAjKV
         pTP3clrRy00ClWsGkyw3TBZlWlpNodANCWkJI3cgDFK1Al0G0YMvTaQzYi09oWC9JnBn
         S6Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ndyjrJMi;
       spf=pass (google.com: domain of 3dyyxxwckesai6ogn6uckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3dyYXXwcKESAI6OGN6UCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rDyYx8RFZuIJeZIT/av2VkC4afPWfD4ES73JHVMjNbw=;
        b=KZfIkmYR1g0mxcBvMWDtt6sXsRefyxS9ACpDnLQ5H5FRWi/cr8QyaiGrSH9I16+0Vp
         Fc94+cyzrsAotZhTq0BwxZicVeOEjMSeQwg516zkwjXqHOdvwq/Qd8URJqFEwsLF+R6U
         8JUrXZ7Ys2GTFkxErK7G59rTAwM/4g9yLFSegSOTqQe2cnC4aLbFtIsQJLY4j/Y8eKzI
         OEtdIxYYO6OX4aIHBphOXOmoKQgwe7ZVdZE88/TT7gMCzuOniJIf9AGpl6kakDsxVXqf
         0M2XmOvaERi5exogF+lgRcmfcdW+jv9vVq8HSLyVecd/aaVVMxbC+bJ4yRzvrt28f9dH
         IKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rDyYx8RFZuIJeZIT/av2VkC4afPWfD4ES73JHVMjNbw=;
        b=XOaQCmKjsWUvLXd7yA2ryBlYR7xJBzyhLSjOwXoFxCbe5H7dht/BOjF+v7gq+pGyrN
         KfxXIvnkoSn6ijZG4862lbJY7bLNkvK3kO7wRatnPkeXrXf1YfRBGDZrqk4riNq40ZLK
         T9wDF1GVVp8ubBmiJeUB4hZIdOQgc1zkAu3vfRXr4Cp8SzxtBOiDMGXCYc11gPESJ1sB
         DdrVGXuccpqkXIg6BUgNIZwBDV0SaCz05Ul1I4z3TA2pzPv/D60cTWY533oJx1w28KIo
         geTuOLniHNJmzasjuJf2BDqbbrYDGqBlm+YEq5Kuf6SMYv5Ib7DkrhWmI3bgPrd5e9VK
         4VTA==
X-Gm-Message-State: AOAM532nz6N7hOGqBbBtS7l8FqX0QUhAVDLsaBGGBUPJD6W8VAltFf/e
	NvWCI9Bf08YG1Bi4zsMeBao=
X-Google-Smtp-Source: ABdhPJys4zPqTAfC1ZsaPs+sVkd0eIkR2ncHmNQbveZljrXu6zROV2OPW5VqeNZYO5grMjZi5EZXgQ==
X-Received: by 2002:aca:c543:: with SMTP id v64mr3791674oif.144.1595352696767;
        Tue, 21 Jul 2020 10:31:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls4078572otp.8.gmail; Tue, 21
 Jul 2020 10:31:36 -0700 (PDT)
X-Received: by 2002:a05:6830:1258:: with SMTP id s24mr25542388otp.293.1595352696476;
        Tue, 21 Jul 2020 10:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595352696; cv=none;
        d=google.com; s=arc-20160816;
        b=x3CJpXhHTxJVQMnQ3Y/rHPh6qmaYTp1ypbpoC2ZyXFzprzzBDWLkD3J3SHBRYUYPxb
         TR2ROSLMbVuwiAGQXy5FjmJR06xOiDZEkhAhkywErz4yrF4dLJJ+35gO5q3V/LkCGoGO
         5gJkwSlgMrfodtawP6EBph8aEbUVvfCyja+aSGmVMPfV/bcil20Cm4UuovzTtuj5jIX4
         S292DDp3dDcKo0qEdZYCI1X59e18SjR0RSKCAW/obIhbfXHslvRF3d6BYHpUkJEACci3
         QlIt07YOTWMb94ixtoxlv1s8LdDf7xkBCj62GqaceODhdXl7hUepHMQh5XUxQjNvbCXM
         ZjrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=3P1vHvrPLTxN1NHkXs2uZZPKcTk+Bw2pv9V8iB8AxW0=;
        b=rA8/CEdJMxmJTKsm1JoDgaBXQBA/J7uyVxRV06p4A0XrJHgN28LoG9/1BKkaelBhju
         DLftayGdzXAx9DAw3WwCgg0sGeplA/buQVhw/meqxfG0zgBzoF103ZfiuZ2LeH/yyyvN
         ySWK51bGU024os2geEgxeOYZ0fe0+L2N02GPB0EiHutvLHCfCedquNsxOBr2vcrwoxnF
         YpcRJlDQaDasspbNbW3qwJ6xRvmcjEFj3bPVUttg0bqxnrjszOuN/NZA059T6rkOg5uL
         jGrhCM8W0ENcrkFSH2+8DytTybZLXKRjrU5rgvoiZp9MgLi/x2tiQgiIZVUFgsra3Nrt
         zstg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ndyjrJMi;
       spf=pass (google.com: domain of 3dyyxxwckesai6ogn6uckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3dyYXXwcKESAI6OGN6UCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id h25si130180otk.4.2020.07.21.10.31.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 10:31:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dyyxxwckesai6ogn6uckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n141so15836703yba.13
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 10:31:36 -0700 (PDT)
X-Received: by 2002:a25:9302:: with SMTP id f2mr43552634ybo.238.1595352695977;
 Tue, 21 Jul 2020 10:31:35 -0700 (PDT)
Date: Tue, 21 Jul 2020 10:31:23 -0700
Message-Id: <20200721173125.1273884-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Fangrui Song <maskray@google.com>, stable@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ndyjrJMi;       spf=pass
 (google.com: domain of 3dyyxxwckesai6ogn6uckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3dyYXXwcKESAI6OGN6UCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
$(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
/usr/bin/ and Clang as of 11 will search for both
$(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.

GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
$(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
$(prefix)aarch64-linux-gnu/$needle rarely contains executables.

To better model how GCC's -B/--prefix takes in effect in practice, newer
Clang (since
https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
only searches for $(prefix)$needle. Currently it will find /usr/bin/as
instead of /usr/bin/aarch64-linux-gnu-as.

Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
(/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
appropriate cross compiling GNU as (when -no-integrated-as is in
effect).

Cc: stable@vger.kernel.org
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1099
---
Changes in v2:
* Updated description to add tags and the llvm-project commit link.
* Fixed a typo.

Changes in v3:
* Add Cc: stable@vger.kernel.org
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 0b5f8538bde5..3ac83e375b61 100644
--- a/Makefile
+++ b/Makefile
@@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
-CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)
+CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
 GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
 endif
 ifneq ($(GCC_TOOLCHAIN),)
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721173125.1273884-1-maskray%40google.com.
