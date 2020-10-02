Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBGN335QKGQEGGPJM6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 63855281E12
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 00:15:33 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id f8sf2014588iow.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601676932; cv=pass;
        d=google.com; s=arc-20160816;
        b=OgAtdc5g7nB2SG33XQ2u/+WlMVWnNT48NQbQd2SLk8Cv0zvsMIO/zv7ImwmU8m1KDR
         V4q1s/2n3G7DVwlmgDt4BI9BvcvLUEpGK9xlOun6TFxtUefJOWDq3qd1ewYFNxuVAEZb
         UXDYEbulzHkomlt2GNEiTFMoslcUc43GBP+tOnM3g9d0/TRkRCD/8RnxseOwZXu12wjL
         hc5L48wv/uEoI22YF0z1AEe9xs5G/soBcXW6Ji9Ua7KozBNfNUaRWfr5br4WGzmuhn9l
         UUY9yNHHpm+Ocraf3ip3glN3nO7XRTEFXdQcAN0rjGdKzJlY8Iw54Sk3XdghAGfe5ehk
         0JTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8uIrP3r2+okJKh+pbmTa7IZUBb3ETTQBGrcU/4IeHsY=;
        b=wZT+UWq+gY8fru0xUlVBdz3v0xwOB9whHY3NUYZRbgifE41VcquNpsfS/G0yUVztpw
         WjFeduvNpw8ITU9gunZOR8KWu5qjvknYJVXLhYMwTTxGAAt3YqJtUCKu1qwg0ffigURN
         3z4AIb6SGJ132rS8B8H7s4OsJ0CClAgiMXTBxhxYwm0jpdzxSxXD94uoRidMlbsPRc4n
         IPbvUXDpBv4n38ayZ8WmHoMyljoTEBJHuyXAafg1K3EAiTwfSL7U4ixv2tj1qvq8AnZc
         gRoNTbCrGQ4g/UDgdyAtzQuk3JuJzfw8XGaZd/wW/Kquw2gaCGPLHepV//C7h4HnaHH2
         FcaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P86qJ26z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8uIrP3r2+okJKh+pbmTa7IZUBb3ETTQBGrcU/4IeHsY=;
        b=R3gq8ZxgcjqP92HFXowvSeHA/oeH0nbQYLVKYs8H3n0RNLhu/rD6gDcw8+Y/pj/wFD
         Ukx+N6Dl9xwoLUW6wT4Z6E4IpxkCJC2zUlO40VDEY4QOEei+WA5vv3ztNypQWyE4Qt+L
         r3x01gxf36KkoTX190GhoC/gPRAu7b27avJx75GgdVZEjmBEu1uSrF65bDTPCfIytI+/
         etfBStIGBn2CnV3It3wBxKejDq3aBxwCuZwaXnYfaOoVbdfoWNmyRi5wqZSBsZcNzguR
         3lA3WxciBzOi5DSvGmBJ+Nl7/PmfRSM4hQrRKHG+eGOsXE24WObcXhg5vyi0Em8QLO3l
         LjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8uIrP3r2+okJKh+pbmTa7IZUBb3ETTQBGrcU/4IeHsY=;
        b=CNB+7dIbHsyjwAGB9KwNNBr6/TNPSS6SQx5xQJgUcEj/BocJYek+VX2+ZMXgq/OPrR
         vGWPpiLCMesim8rVrZ9QIy3zxiU9rpy9XwHu+7gevktknr+Ks8605yLUuO2BoPWuP6xO
         FkONA9OpkdCkWji80UaWDv4T8ilb3hBLSO9nGwMkDlDYygXT2hZpQWXPpJcv0KT0Xi7c
         6sKkxx7UNzpnfaLHN/vlPyjQiokm/2arxY2bUWe+iuL3La2BLS/y0q8uXXoFP9VAA0pX
         YuVXWNayqcEplRoNGOw0psrWyizpX8In0gQudiYy5/HQGYGy3k7JIkcsb4wuSn3HL+Qj
         29bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/F6xI0JV1n1iQDs2cxzrusp7mjj0640Vs6oHJeVc0agjYSQEP
	9Sbv5o7G70kVF9Loyi1U4uE=
X-Google-Smtp-Source: ABdhPJwFovGt01kcTToWt2m/1mJRpyZag85/aJ+ekZqv+ScOlOKWnl18Vv8UIm5UF7sFpLRgoWAzEA==
X-Received: by 2002:a05:6638:168c:: with SMTP id f12mr4168355jat.16.1601676932128;
        Fri, 02 Oct 2020 15:15:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3989:: with SMTP id g131ls469294ioa.2.gmail; Fri, 02 Oct
 2020 15:15:31 -0700 (PDT)
X-Received: by 2002:a6b:311a:: with SMTP id j26mr3368971ioa.87.1601676931779;
        Fri, 02 Oct 2020 15:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601676931; cv=none;
        d=google.com; s=arc-20160816;
        b=aks6IvVRXaojDFsKlk1OGoXO3lVpH4REsTk9WC0w07pSTz4vicW2JoXnGmD/nMxOz8
         jnN4qt0vAyCdgVPCX0Eku+6cZ5jSgs42eBgpAczjWTvKjqH66+uU8bxtlrMT/6s6ckXU
         71zuvmABzWg6l3aER2//4p81z4fIbR9pHo+0EnKJQf865femSUBDShcIACahdGXU55ok
         24GzJ8g0Rt8Vu+zfdKwIGclo8/YHHdPaebZsvtj0a0kSarpaCvngfbl9hOC2hIrTu4zh
         eK9DQpXg9U0ZaeV6vkf/Jc5Q4+SepNem6RZjriWI0GC/MujcIgrKAaUbABGaMIig1Vx8
         491A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=W38dVAPuerCLRPng7jlZI5vlQvHBD4rfwSORzTtYXKQ=;
        b=WGN03kznCGngdk6XxDHr3tUFVQ9rif2wN0MbBEdJkf6wZySUG0d62OvdCEyhgw9HJQ
         kQUMCjtn1ZlfFH1veO+rCttf8UdhCsySEf19INV2bEnHiwQvRHUytFCklf9JNB7S7Vvh
         yytsqFXhrrHPspLIeeH9tZJtT60oUM5BZbU7w/3PrRrrU0rEKtz/Y/YTCvz/BVmKfH2I
         UIO8G9Pg6/Gh6BZREvvAqzMn1Oi4YoBNafrVon3DK6X4v+HFE87HRrHKior7ISVYq7Wy
         7i7cTP7pVApsQIixVFIXTKDAT+CnHUdzTSElvnnU72tjluuS6X7G57j1IVoRhrWkNqA0
         Dhjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P86qJ26z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id y1si273874ilj.2.2020.10.02.15.15.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id 7so1721152pgm.11
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 15:15:31 -0700 (PDT)
X-Received: by 2002:a63:511d:: with SMTP id f29mr4133234pgb.11.1601676930990;
        Fri, 02 Oct 2020 15:15:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q16sm3210133pfj.117.2020.10.02.15.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 15:15:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Clean up UBSAN Makefile
Date: Fri,  2 Oct 2020 15:15:23 -0700
Message-Id: <20201002221527.177500-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=P86qJ26z;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

Hi,

This series attempts to address the issues seen with UBSAN's object-size
sanitizer causing problems under GCC. In the process, the Kconfig and
Makefile are refactored to do all the cc-option calls in the Kconfig.
Additionally start to detangle -Wno-maybe-uninitialized, and disable
UBSAN_TRAP under COMPILE_TEST for wider build coverage.

Thanks!

-Kees

Kees Cook (4):
  ubsan: Move cc-option tests into Kconfig
  ubsan: Disable object-size sanitizer under GCC
  ubsan: Force -Wno-maybe-uninitialized only for GCC
  ubsan: Disable UBSAN_TRAP for all*config

 lib/Kconfig.ubsan      | 58 +++++++++++++++++++++++++++++++++++++++++-
 scripts/Makefile.ubsan | 50 +++++++++++++-----------------------
 2 files changed, 74 insertions(+), 34 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002221527.177500-1-keescook%40chromium.org.
