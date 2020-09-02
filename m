Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRWHYD5AKGQES6A7SVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D2525B6D4
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:20 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id u190sf368309oif.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087559; cv=pass;
        d=google.com; s=arc-20160816;
        b=HkuIj/6MliQtSMAVP9IMHEenGE6k4iz3oLirbL1CicEM44tFPlKkGE8hBZZlWxCauP
         zBxU7O+XSFGQPycrNrQYkTaF0lJJm3KGqozJThNfV1Qd8sKqg/dAhLCnOByNG3Vov+hb
         s4kimedrMzAvc/tp2tkyofXFm73n9SxYR+AnUOh+4w4gFDPoW+wGFsVpkx5ewXaeS/R8
         DAa0d6BSCqJRKPb9c1HiLNHyuxIL290+3YL2cBDvNWGLsp1pXigdgo0YRWftDtH0Ibff
         mayGyPfbWbgIds6G4TEgRMVoYA2LsBara7EQ0KR2kuMpstCGj1mrxoWoO9gN9b5mZfTb
         Zd8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=UmEOLpTAOhJ19UAOQ29ISjk2IG5GM8WZEjTxjmafWQk=;
        b=KQ+6tyvJAhyaEVjJreA9fc4QE/o3sWUKBIDSbkhFRAdZ1+/4onHZkcfHcTlTusSbR4
         AwxS853TluriXaUVABhznRx60AUc3PoytWegaN45TCBHrnuFdi24n1QB92riQwzcdE+a
         xKPD3c5s/m3Fg1z5LQZv4qzf5ZqFp0FTiCwu4yKOMEGdX5RRvjbEPLUlBnTmBPf+CzZm
         zh0C4+25DWF81qTMigK7eL0J1Y79UEvZv2rkjPQ/xvlHdM1viru2EeRUEvo8tJZCbeTR
         U9sbS7I704JtXiUw+nUp4YE4LfY0gx6VOOM40hf7qr25QiHQSTduqqPUN9GRAfzfNXaB
         d8rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B3bpWMEq;
       spf=pass (google.com: domain of 3xsnqxwwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3xSNQXwwKAE43tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UmEOLpTAOhJ19UAOQ29ISjk2IG5GM8WZEjTxjmafWQk=;
        b=Dqhezsg1wOq1u0JaEWgV7eMG3nSiGDZSDcmXkH32HRlXFlp2qoNhpqSNI3QhiY8Wh6
         iT7OnwanN3r6hmp8nc44pNf444jsHOB8ahk1kUIND6bpyOBTzu5RyZxqtFtNPHhLZopp
         3M+k3aYBGji9w4rmd8thseRvvrU5Dx0oPmNNjKxaEfxIz7Acvva0ZTYHKBE8QCCX5Qs4
         y+4Go6KA5HygGuJQiye3WDczxSF1pDt5V2dizLppeX9HQbujbBCylov73T8LDGZ1mlaf
         AnyuC9qJT/I677MIkqEC+7yWVND+eHaTmGZZx5J2xufrNdWVAcpi9iWB8Ths5a+5kcPw
         M+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UmEOLpTAOhJ19UAOQ29ISjk2IG5GM8WZEjTxjmafWQk=;
        b=eQshcGJRbk7QRz5RE3woqHvZMjUTqAShojsoi12OtT1w8DkwwMulVRdhVidaer1eoV
         4HmFx2mZByAAhJAMQUgkb6nFDZTd8FTA7L756n6ToEBZSLfbcN6bX37GYnGGFGIf3ELI
         vq3gpOn2H2nYVioIywYprI11t7oyk4IiOe74aiK2uYWFEWY3uXS+P1oDp2AUlNRdf3Ph
         /4q1jtg4SuP/bo49gGvPw+eER+XlHKi7YX8nCofC6W7vPTKv+3MfoqoX37iiXVPV9FNI
         TgtyhexpbDWtW7NO57FMdtrX9XQ2eUY6nXKJDLif15yJ/RNEhPiFFfcQ1AgEDvjPpsvN
         SBjw==
X-Gm-Message-State: AOAM530qULiUlqCKZ8nRsJAlKYYE7BbV+TnNm7vEpZzN1aqrIedG7nzE
	SQU6e9a7w3utBaQPpZZxjUY=
X-Google-Smtp-Source: ABdhPJzRtLGeMjQPrj+lORtmWmuqBgqPQq9mXPKuMg1p/jYp96RceiK4Qv0PQ4gltp8955eQqndFBA==
X-Received: by 2002:aca:60d4:: with SMTP id u203mr251895oib.115.1599087558884;
        Wed, 02 Sep 2020 15:59:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b154:: with SMTP id a81ls826353oif.8.gmail; Wed, 02 Sep
 2020 15:59:18 -0700 (PDT)
X-Received: by 2002:aca:cd55:: with SMTP id d82mr252281oig.163.1599087558537;
        Wed, 02 Sep 2020 15:59:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087558; cv=none;
        d=google.com; s=arc-20160816;
        b=NPNkq1r5KVHy3VMw9crFdKHgEwUGHSBTL3Xv+Ajja+p9jRhXUOko6Z8MDBisdTxlD9
         9/HxUOSQr1a+wLwUXwfiL8J4bqsnI04pwx56kDTSUGiwrKp2DWWZqasbmxuaAJq1jniX
         kPlVFWg19Ddo1ZNYvpSNjEP3FlAx5CsgQ501WGTHY/VH3+oYX76N086G/qhylorxjO+Z
         02qqaCOQlHrDQ2syvLKpedoFiapWHxxwCGSPlNiIjHvziqm4dKlF3vrClt33Ts9qqK0F
         8/BUwe8YrDMj+b140hOQGsbOIEVU4ekgi4HbE1HcyADy4gWe2YY+zaVN65wOzr7Qf0pj
         OsYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=4LNAUj+9lqh7okdpB7PIcXz5pRABwVJmB1BY1jfRsMQ=;
        b=P0BMkmPqwZ/tHiDyoAqPVN5VMudrGP9PTyonesTr/gJ7iE/cCP2TBEWHXgefWVFGBs
         16AJItV2dHCMUoqZCpbAEL+lGIuF4ZPqtzKQextr2+bXQ1bG2HP27piiMsCZJnBUtzKG
         /FzOh2F4UTn4TxcQ0E5u/nTWvP8F75fCTRcPybhRlwz9d8rxcVGBhNi5PqLIsUZO0+Po
         hjx2vkiS0BaRKAecHOHzrRB6BqvspCXhJGdqm8QEMonQ3rUMtaIxPGBcIMykOfcOIT1U
         yiqO3IHvxiPtbnBYCub4U9+40Bd92/M2isNV6UuCQAsM+Q72a03FgEagatgmV/75YYjE
         1lqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B3bpWMEq;
       spf=pass (google.com: domain of 3xsnqxwwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3xSNQXwwKAE43tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id 22si53461oiy.5.2020.09.02.15.59.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xsnqxwwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id j35so876313qtk.14
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:18 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:55ce:: with SMTP id
 bt14mr741179qvb.2.1599087557977; Wed, 02 Sep 2020 15:59:17 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:04 -0700
Message-Id: <20200902225911.209899-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 0/7] set clang minimum version to 10.0.1
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
 header.i=@google.com header.s=20161025 header.b=B3bpWMEq;       spf=pass
 (google.com: domain of 3xsnqxwwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3xSNQXwwKAE43tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
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

Adds a compile time #error to compiler-clang.h setting the effective
minimum supported version to clang 10.0.1. A separate patch has already
been picked up into the Documentation/ tree also confirming the version.

Next are a series of reverts. One for 32b arm is a partial revert.

Then Marco suggested fixes to KASAN docs.

Finally, improve the warning for GCC too as per Kees.

Patches after 001 are new for v2.

v3 just collects tags and fixes typos in a few commit messages.

Marco Elver (1):
  kasan: Remove mentions of unsupported Clang versions

Nick Desaulniers (6):
  compiler-clang: add build check for clang 10.0.1
  Revert "kbuild: disable clang's default use of -fmerge-all-constants"
  Revert "arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support"
  Revert "arm64: vdso: Fix compilation with clang older than 8"
  Partially revert "ARM: 8905/1: Emit __gnu_mcount_nc when using Clang
    10.0.0 or newer"
  compiler-gcc: improve version error

 Documentation/dev-tools/kasan.rst | 4 ++--
 Makefile                          | 9 ---------
 arch/arm/Kconfig                  | 2 +-
 arch/arm64/Kconfig                | 2 --
 arch/arm64/kernel/vdso/Makefile   | 7 -------
 include/linux/compiler-clang.h    | 8 ++++++++
 include/linux/compiler-gcc.h      | 2 +-
 lib/Kconfig.kasan                 | 9 ++++-----
 8 files changed, 16 insertions(+), 27 deletions(-)

-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-1-ndesaulniers%40google.com.
