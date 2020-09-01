Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBFJW35AKGQEDDIRNHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 822E62584C0
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:33 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id 1sf5197195oob.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919812; cv=pass;
        d=google.com; s=arc-20160816;
        b=CXLr9V351zI5bPtZRLMs/8Sv+ekCMH+1m0lBdsQ7SaQgcvOHf0LKLHqctmqst3Ssa6
         DKJlCqpRqYQXrH2f+WnH5FeYo96TjsgSktuxPQeTf48cEEDiNXVfv61pQXYH1f89ItWT
         cBoH/4EMQSIY70N/QokhFRkan4u3ns1wC2GzQOYFrZtFg8OuGE0//Do798EZuyL7q2oM
         cuWqME/fUyNWxValtO0BmXif83+AbF2qhyud0c9Hsmlad3shoRPF63Wi5C0IMj4zgzeV
         ckvqcGfnvNsbz+xWT5LScwjgK5AGGqcXcrk1dAHV3wIPGCM2eFYlglV9SKI05dMmghxJ
         bYMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=46HGWCJMk4K7IErt5U2G9mmcvx53c9v0QYXc0d9bJ5k=;
        b=japhlaBniOQLsSg0+GAg5Vz1OP007UsrhnM5Rg3+blMWm2NMsF2mRxhYsZRRRRjQdM
         Zg2RWJkcw7Did2ZXWYwLQE2nwu4OhmwsCQbbPUEelJ+tPFLWeZX8rMrT0nir8rqFLhUs
         e8/zaYyhrqOgI+Waje/LpiezF+tIsHNkOR7FM4RKNDsrXTNeufWLSv1BaPZwZmC3ycRI
         wKr3xqmQTJY4l4G5pMTs2k6Mi5pYVaHEO6zM+hwX4hA1KZFczZoKu8RkL42y0dtD/juP
         fbX4WHv32QlQtc0XRa2khM9aqMhLRzR4t81qs0500C8+ZgcAU9KJcnhEJT9S1LF32c/m
         ygPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rVVSYY3/";
       spf=pass (google.com: domain of 3g5rnxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3g5RNXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46HGWCJMk4K7IErt5U2G9mmcvx53c9v0QYXc0d9bJ5k=;
        b=Xv4C1rueMr2zhMGwlpCbCh3VY03sivR2f9mse7WcbUsNQLU9a/U2ugloxi0l/ZJgIv
         RS2F0MFXUCF6JxdIFMG3fNE7UXwBQ2b0FuSXM78umthqqOMJs9Atav9IsZkwOEQSp3Iv
         fXopjM6psSdx1ZLXYJsdW1tIlr+AZaGfYUGGfw8pw26xrp6hRCALj9laEJIQGK7U1b/y
         V5cJiE56GRRfMQG9asPR1l87Z1uUU4EunjWLcaw9K7CzhHCm+ghpHkMqvT04qUaReXP6
         izS27O7Sh8aDYaBocdXIiQu7pZjbQIrBFxBfCoRmP8K+Qh+ZUInEddsSL+BTHlz5PRxy
         guXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=46HGWCJMk4K7IErt5U2G9mmcvx53c9v0QYXc0d9bJ5k=;
        b=bCgVVtDVqgGjjef3WBYIy0I2o9ZJAslrTLpJdcRAGiLW27s+JMSXSSQMBYNR0Dy170
         E08kLo2Z2bVbM3nantAR8mLt0fJjMQ9Bg+q96Zi1ge7lZTx1J/cVQUXcnX4OcEHtUO1b
         guZK+qIXrCPbRAdqxa2b+VN6SNSrd3y3rYkgHrX4wThHlZyog35O09mKhtgADpEgLMBg
         uVIBJxizdn8oa148/TIOPL4f7YSp2nb+1rETQq68cs7NT4JwVXFkgog9vwwHcQwAlTPb
         giOFnGNx3xYmEKsPpcc4IJLnMShw1+RZO+L+WlHHR8WZbgW8MWHkCDBi+xkNpcoUOWhY
         yt0g==
X-Gm-Message-State: AOAM532jc2vtBT/CFTEND1n1im+WfZvUV/0PUvdqC5GNWO1ZXrpenlgv
	rxwrHEdEnaiyd9U/3l3tQfA=
X-Google-Smtp-Source: ABdhPJyLff+qnyrZ6ASW7qJMf8JWWFFHs/NaaeN71rJNT3bTBiAok6s+9w4XUOLZnGsV+T2TExaZJQ==
X-Received: by 2002:a05:6830:12c3:: with SMTP id a3mr2706364otq.74.1598919812425;
        Mon, 31 Aug 2020 17:23:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d9d4:: with SMTP id q203ls666846oig.4.gmail; Mon, 31 Aug
 2020 17:23:32 -0700 (PDT)
X-Received: by 2002:a05:6808:b03:: with SMTP id s3mr1206129oij.19.1598919812002;
        Mon, 31 Aug 2020 17:23:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919811; cv=none;
        d=google.com; s=arc-20160816;
        b=QrMhacxUxrSYqn5X8yoJ0aOGEUhTVEzxzPZmtvgHA7pxMD6KdlNP38QX1EZ3C/ng8U
         fh639aKjFG3/bAA6B+h+Zxu8BMFG/EqDWW+eByX1albhf0naxZIyGz+Wt3oIfXewIb/i
         abqax3W5CIF3zBJk79i1dgy3oCEqU9Jtp3EDGDK/ht3e6gXdCT9f0Fk7FveEH9Pcp4wI
         J8dGktxUNFEYw9N0Y46KpWbl2osMo798ARayJeUGNLh37YylgZUR+tvL3Zzvw+NBJJ8G
         EHTJuHpKGMkbKWXNrMpHjrV67N+r997rsB1i5KrBZskvjW5uGj30JFxySqDaY7U99CIK
         c3Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=NEi5SY5avnbdRDKWM6EkMbB9CYf2qgLLnorTM1MWHus=;
        b=vYbewSaDq9BbVMgFDhLJpTyKy6FMgyzqrwQzJ3MZ4g7dDuz6C8ytTun6pEeW/Cekye
         QqhksneQgdA99LGhkwwkOGjjQjCulbW8QWOrkoPi7ia5IKwmXmDdxmlZuvtXsVz4dRi3
         L40V7qi+q2XNy25rxe0yczdkLCXqkyabgKkdA/jJp5nUhrnkeTNaW2H5pnkAmi3mev6V
         lneoNTy8+cr14c7zWR/aPiH1QbHFNPBHSL6TehVoQ3OeGdydS+bGgor9uMuVDLHqt2ml
         sM9hqs9TVxkXDWsJ2GxBEhDMGEWKlNpD4hxJw9U0/xPCpdD7vkt+bWbggqB5vkpsH3I2
         MYuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rVVSYY3/";
       spf=pass (google.com: domain of 3g5rnxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3g5RNXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l19si253038oih.2.2020.08.31.17.23.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3g5rnxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id g127so11042477ybf.11
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:31 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:32c7:: with SMTP id
 y190mr6412975yby.441.1598919811518; Mon, 31 Aug 2020 17:23:31 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:19 -0700
Message-Id: <20200901002326.1137289-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 0/7] set clang minimum version to 10.0.1
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
 header.i=@google.com header.s=20161025 header.b="rVVSYY3/";       spf=pass
 (google.com: domain of 3g5rnxwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3g5RNXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
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

Marco Elver (1):
  kasan: Remove mentions of unsupported Clang versions

Nick Desaulniers (6):
  compiler-clang: add build check for clang 10.0.1
  Revert "kbuild: disable clang's default use of -fmerge-all-constants"
  Revert "arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support"
  Revert "arm64: vdso: Fix compilation with clang older than 8"
  Partial revert "ARM: 8905/1: Emit __gnu_mcount_nc when using Clang
    10.0.0 or newer"
  compiler-gcc: improve version warning

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-1-ndesaulniers%40google.com.
