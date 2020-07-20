Return-Path: <clang-built-linux+bncBCS7XUWOUULBBHV5274AKGQENVBVFDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 29428226E0A
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 20:12:48 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id 34sf1010771uat.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 11:12:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595268767; cv=pass;
        d=google.com; s=arc-20160816;
        b=ytvDIrcdG8xUSMaD1s5ijiFQSs/D/7GA/Swg7PS0TupzrA4r+A2MJpKyAtNpQNNZRy
         FnGYNhdAQcOna2Yo2D2mEyAJmFwXevfPej88VNxAAytO+wXxYfkrlD87dg7Y8EiKXchy
         Wwupq6tieqROHMPpaIbfA0pc1bNYQ2KRt04QdqDlXO6u1RpYWjlQcK/vkSdCoODLKSB0
         yR06ZbMM1lqymUeNHsuxM4t+poq//CnwhTwCc2bfy2181/pDdWXUmFn/RaN3fcPzNAir
         TqsEZMpU2zPTbjBGN2KjW4wgFBzK6+78tb4IYWba2GZ5lNbLSXJqmwaOf4ljcLlcWYx/
         8D8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Tg1stll2JmH0bPrZoCCT2QTL+EqXfI4sDWlECw3wxa8=;
        b=DUlQlVk/CCPvSSnc+yFbs+VrTDYw5olJ0ZSIqI++WDpmMh3BHRZxMPokV0q/YfIy9h
         hxQtW7fJWbENzkI89r+003a7cT/CCjUd4XoGXZevcYy2ypb1cQV4y2MJmmhg1RDyYw2t
         r25pXf/Ld9wvK/rPDNULbG9ieiyCwi34K9sPhtCoq9gwSXKL+VaC5OwlTH6aEI/TLPEz
         XK1bJ42Wlu4IVznfdE4nmISHLOdqJ46hrLVYMEs4e8UOZet3mTp7CVM7SdQ2WuyWS8JB
         jq/XbHYwwMtG5Bddn1/tdG4h5PMppJYA3/f6Olh9MaFnArfH0o9GImTe+0saL+UjVADn
         i77w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ks6dk1mR;
       spf=pass (google.com: domain of 3nd4vxwckebacqiahqoweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nd4VXwcKEbAcQiahQoWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Tg1stll2JmH0bPrZoCCT2QTL+EqXfI4sDWlECw3wxa8=;
        b=lJFzN30WwMweV7SAJnWv+tgPsygwTRr2ynv7Ua4ng6pRhw7TUXzMeRKft2mxJdYKDA
         jehckYz/FqOsVF480W524SmmeqYb+5JJ2dwRbQhAIQBjRQZNS1CMO3Lk3+8z0p+cV4Yo
         tBXyqDbGQMMNJxBdoeTaqiXjgLOi7yTbLONn5ey/gi6EeQl6Bh8M+Ue8SygF0pbXoEHX
         9GdNK0ZT5FJbpH3t9tyRB5b6AfO1z+e8cUNf9k6Ct4NG53aWcNPtg180G00e48kS3TSn
         boYJtltyuuAluwhze+MHPdTLBwbzyqLfC27uWiisp0n7a6zeK72XCIoSMKILlJvZ08Ca
         5sEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tg1stll2JmH0bPrZoCCT2QTL+EqXfI4sDWlECw3wxa8=;
        b=qbr1wTqsRbLAP0KG+QmzFO2QBau/XRXLKT+IcKY6+z4n33GO6GHr3ji7kc+b41i7g6
         06bGVokUqBPWeIZXNo0M5roECagdP9oc6f39Omff3H6YSb5gw8211bk08+OQX2tjj0c+
         fcC8GqFEKHfJKUFXYYs6f6xGZ6uCvMQLNllYkqkoILmOGPj3cufO9DCggVdW+6LHpi8P
         TLTuoCHEp1OXFu9L/Eu9Guohws78MD2G2/a0xujdwsPNSV/L1UB8asNcDnulWZhbnZjQ
         ZLD6edf1D3H/HI4LnDe2oHuDb0OfXWLHqo2ZOjcvhIV0HJ86SoaQiq62le1jrGrY6tqY
         bMEg==
X-Gm-Message-State: AOAM533/T0FN636Rkpaw2hhVbSV1dYYt3eLfxUDiCU6S7iU4luiQLHUK
	lR4FzBeeVLtFvrL1Y2TmCoU=
X-Google-Smtp-Source: ABdhPJxFOp7dUn7/6lWKeN5nPHW7h1ihopPLda6Ek947wIE/OXpc9QWrctaTCzf6TD/GAcdw9iI4rA==
X-Received: by 2002:a67:fd59:: with SMTP id g25mr16247055vsr.217.1595268766821;
        Mon, 20 Jul 2020 11:12:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:12cf:: with SMTP id d15ls340731vkp.9.gmail; Mon, 20
 Jul 2020 11:12:46 -0700 (PDT)
X-Received: by 2002:a1f:a616:: with SMTP id p22mr17566676vke.96.1595268766176;
        Mon, 20 Jul 2020 11:12:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595268766; cv=none;
        d=google.com; s=arc-20160816;
        b=amTvc4q0Q40WL0o4R0C9xm4arEOm6KnRuiVAf/B42+c4ljbK3BZvmXgesotpFFCWtZ
         Q49sRWwBIXlYtO8PPqs2xXvRyCzEwa96f9gsp/kMX1DnOsgtn28+EurvmC+JRmhVo8TA
         fJYd36amzOkcqmYAkwnMsZoRwGW65q6SwLTGGxHqxrhXtE7xK/bQLw0J+fNz5n8xkoCh
         YGO3f+A9XoUX40w/39lL/+E050mlaTQdN8jueqgoAL0UbwjW1naXRe1ETixaM3S80GEo
         WBYrFgYZX2WMUylxBsCB0DxzjUhKTQA25SWPO1HeeAA1qZbP98yAl9ow1snTFq5GgKp9
         uZlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=foQP01o+jLLxWyYMddt7wMxz9LiizEHjChmq39E8dvQ=;
        b=HX6j6J6Yqu3mh0hOj2esI89HKqPpOHIr+xG1/MFAQjBugs3+q/K0EaiE8imjAilUd5
         AnwMhDdHRRn/nAdVxZHhilVO+66Pdst2efPx3dcbnAUHf8w3OJLBHnTSfGS55cjnihym
         k09X+dkpnx7RsomGx8Ao0lgMEteeJZh/4XDrkjdi8atcOaQ6tOO6MeC9d+p2HMtUuWTX
         8ODUhHirFk+pGjwSYma5TDL181bc6nIoXp+QYgoiw+6AMFMV/vzCl44ouNovwFE/saxe
         /CUWEsTL9HzDD5I4xRkUpmRPBota2n+E/vKLLjrF0bYLidblu27W+V/4gLruH4i8oVg9
         9+qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ks6dk1mR;
       spf=pass (google.com: domain of 3nd4vxwckebacqiahqoweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nd4VXwcKEbAcQiahQoWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id l129si1201602vkg.2.2020.07.20.11.12.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 11:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nd4vxwckebacqiahqoweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id a127so22907135ybb.14
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 11:12:46 -0700 (PDT)
X-Received: by 2002:a25:fc04:: with SMTP id v4mr37291336ybd.164.1595268765617;
 Mon, 20 Jul 2020 11:12:45 -0700 (PDT)
Date: Mon, 20 Jul 2020 11:12:22 -0700
Message-Id: <20200720181237.3015826-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Fangrui Song <maskray@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ks6dk1mR;       spf=pass
 (google.com: domain of 3nd4vxwckebacqiahqoweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nd4VXwcKEbAcQiahQoWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--maskray.bounces.google.com;
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
$(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-,
GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
/usr/bin/ and Clang as of 11 will search for both
$(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.

GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
$(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
$(prefix)aarch64-linux-gnu/$needle rarely contains executables.

To better model how GCC's -B/--prefix takes in effect in practice, newer
Clang only searches for $(prefix)$needle and for example it will find
/usr/bin/as instead of /usr/bin/aarch64-linux-gnu-as.

Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
(/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
appropriate cross compiling GNU as (when -no-integrated-as is in
effect).

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1099
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720181237.3015826-1-maskray%40google.com.
