Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ4ST2DQMGQEDVLHEEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8247A3C1C03
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 01:25:28 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id w2-20020a0568081402b029023e9cab7ab8sf5452974oiv.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 16:25:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625786727; cv=pass;
        d=google.com; s=arc-20160816;
        b=si+zBNjtqPCzTilzQuV8Nr4yAtYmp4CBn6ghrJm5GBPF554EW4v2Y7qq9iRdLUst33
         sB9EJ+3VGNQfQAQ1IePLRN6QGJ/yh48eChErgUTubPTvv/utaMKQTBKOEpPzNFm2DJE4
         qNcnDCjqUrFdlhkhuWmYjV9ch5fXb5Qaqc7WtXPQpP/pJQ9XaOMWp2BB/f/Xw2+N1Hic
         cN98mzEVgwXwTqj1uKt/XljMWFxc/3EuDv85z3DnqcLdG8yKoD2poDlRaqSROfHW1RXn
         2mtX4t64RNc58F4k3SB0RJh+dSPe7WF9Ffl+IINngZiVog/nfX9vLnEEjHCEoSqZVAjL
         5EWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=bWsNkO/seZau2ZHrRffCrGZg8+dX9WoZ5LlG4iTdvFI=;
        b=vG3WsR5shVIJwFD6X2jUYzhlVCOeg2IAPaGom4/cD4avxoXTDYL8hTKJm5JzHimdEb
         /CnwBIHEzs9W6/CTzia8+jmCwigCfvIl0U5dF9dvnMOPloNSytFIalCEghQHOJ92n8Ra
         7itKRxZMirm6iQ4eJs4drdyI02wkELa7aUWBVv1mTcSuXgZRyzqF0YSUG2MXcnDJ39R8
         LLJCtiFn87L+VwFmR8jTkUKvEJbpUyamBJKAG5HDNkdsCVbqQSBUXe9V44TyMuxg4DUX
         G/ojDWgmI08BVXaaSmd3vLM8hyxJzJdmiLLHMARV1H1Q+lbhDctUAjIgm3xrzFRRNEMg
         b5Sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v+itpwtN;
       spf=pass (google.com: domain of 3zonnyawkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZonnYAwKACUOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bWsNkO/seZau2ZHrRffCrGZg8+dX9WoZ5LlG4iTdvFI=;
        b=A5qwScqmwKypA5vw7mUzL9IRO2vON2UIIGiwM/5jiAemDfPJbd7hcLNMC1+91qPNyv
         TQiTk8UFadZIF5GJbbf3RPW+C6JXyKbbnTw9LB0hgj7DJbDyK8rhhYUe8uNtPZ6FM+PV
         h6VrsWIRG73sx9qAgSbm/HvyQXWwq9IjSmpVoSmvpKmC2fl4VY2+U0jifVLJ2lyMyby+
         dN8voG0eYZfnFW3+T3OTl8HsllS8XNYYccKsUOsN4WmhsANw5u0LTyfB8bE9p69+al/J
         S+s+o5CcBGisMBkom6uvS0Ro0rGGfqR6iBjeJ1PIUdPu9CR53TAxMNqmSzTxZKt5Dg8P
         WuKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bWsNkO/seZau2ZHrRffCrGZg8+dX9WoZ5LlG4iTdvFI=;
        b=Cc8EWGSFC5Z4w6wQSxdr4nALIVzFchlO2bKoZd9ToygoiksTD1AOBs48aJYDqjIppj
         +4J/d7NW5U1RnRWYKJ22DzTTlOqOGlIXPuGjWp4TTkUhzxqD0DOUeZR3Ikp0LLpiOxuk
         npbbQwwXDchp12MJDSStVFljNHapTZfp0SwmGtkrhe9K0O7CWhMM/MH6PIiupDcWVkvD
         R/zAWtwP32RracLMFCvmLZcjDdvS+gLScW3EpPKgRMJ1dCNHGeZf4BsuVKRDJdbHGUlV
         jB2Ml/RHFU2Zc+Dx7qSBRPoIq4sxpxztYiHH9TpLvBEFcXytFJPPb4dwy2C4pJqG1bhL
         lzdA==
X-Gm-Message-State: AOAM532bma0xUM6W5TQt9+teB93BHc3MIlHvyOi2sYz5kkwrupcU8nO0
	vUn+bW5J4tfrjg02K4DMJKk=
X-Google-Smtp-Source: ABdhPJwC8q3Jpxx4lXQOy+7xgWw901XvRtsLXItpeZtCNBoB4VCMBittP0L+bDyukRfbixPC26KeWw==
X-Received: by 2002:a9d:5545:: with SMTP id h5mr21361381oti.333.1625786727307;
        Thu, 08 Jul 2021 16:25:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5a83:: with SMTP id o125ls1551216oib.7.gmail; Thu, 08
 Jul 2021 16:25:27 -0700 (PDT)
X-Received: by 2002:a05:6808:d8:: with SMTP id t24mr10995394oic.105.1625786726970;
        Thu, 08 Jul 2021 16:25:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625786726; cv=none;
        d=google.com; s=arc-20160816;
        b=CDCGZXtdxrM6jYAppn3kePvi5E8HhrbebtHbaEXg80nCRsQ8G3UpclXvXRB5AO/ypO
         O7UBLZw+1r+VCGX6IjsQsUHJ/93eT93yC7zyVXkuHhmfEAmPQ7lLcrT3DV0+5LNyzVJy
         90nT7E/GEH1VlEHUFIn7qGsSGJ8/zG/tSQCZEuomW3UMYcCI7IfMyPyEAxe4UF60BEfH
         gssIm6VoEu50OmLDv3f7B6KMZthevbnpAIg2asg2NwLF3fpWtRgWTPWrSA5tXFinaWdk
         j7L9d6qSQ7Hyn58UdAXzQVGqEfTSYjKvT8xNvlSKJX22pfhN/xtA6Y0S5KM8+tf0KFiE
         uOSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=3UNGNWby+JwNaCoHIhHyVIJsq6+YeBmss1XfIpN9rvI=;
        b=znB8FDm3FPtRWQjgU18RpVMGk09eZinDKI2GKuylx5lTFzQdZAxNRLmNpwswDdfmgH
         UVDBOsfTU8xjZ0IPswAMoopJZAH2SfggX82yWDwA6O8N4YINiJeZiKfo4M2hUqJjcZFl
         dw6BjD6Hy2Bj8YZwVtXp+OtrcSEkF72+ZgL9RNTf4wTV27C/+oI0h1G8FxVeU18HLTYC
         TKZH1fxkiieVJ/CyZGoSRq1gA+2atO8ckcoOhmqL2+bBgewUYb7eZMS/M6g81cURRa6D
         ecXhv0B5mkvWNmcn/yMSuLyQXG+8y4FA5Jmz/t9B4Dhy8sxNmqb31zig8X4r5m/6+Gzr
         m/gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v+itpwtN;
       spf=pass (google.com: domain of 3zonnyawkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZonnYAwKACUOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h21si188411oof.2.2021.07.08.16.25.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 16:25:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zonnyawkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id h7-20020a5b0a870000b029054c59edf217so9038809ybq.3
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 16:25:26 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:9fd:98a9:be3a:391d])
 (user=ndesaulniers job=sendgmr) by 2002:a25:81c5:: with SMTP id
 n5mr43225237ybm.323.1625786726476; Thu, 08 Jul 2021 16:25:26 -0700 (PDT)
Date: Thu,  8 Jul 2021 16:25:20 -0700
Message-Id: <20210708232522.3118208-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH v2 0/2] infer CROSS_COMPILE from SRCARCH for LLVM=1 LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v+itpwtN;       spf=pass
 (google.com: domain of 3zonnyawkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZonnYAwKACUOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
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

We get constant feedback that the command line invocation of make is too
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given ARCH.

Instead, let's infer it from SRCARCH, and move some flag handling into a
new file included from the top level Makefile.

Changes v1 -> v2:
* patch 1/2 untouched.
* Fix typos in commit message as per Geert and Masahiro.
* Use SRCARCH instead of ARCH, simplifying x86 handling, as per
  Masahiro. Add his sugguested by tag.
* change commit oneline from 'drop' to 'infer.'
* Add detail about explicit host --target and relationship of ARCH to
  SRCARCH, as per Masahiro.

Nick Desaulniers (2):
  Makefile: move initial clang flag handling into scripts/Makefile.clang
  Makefile: infer CROSS_COMPILE from SRCARCH for LLVM=1 LLVM_IAS=1

 Documentation/kbuild/llvm.rst |  5 ++++
 MAINTAINERS                   |  1 +
 Makefile                      | 15 +-----------
 scripts/Makefile.clang        | 44 +++++++++++++++++++++++++++++++++++
 4 files changed, 51 insertions(+), 14 deletions(-)
 create mode 100644 scripts/Makefile.clang


base-commit: a0e781a2a35a8dd4e6a38571998d59c6b0e32cd8
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708232522.3118208-1-ndesaulniers%40google.com.
