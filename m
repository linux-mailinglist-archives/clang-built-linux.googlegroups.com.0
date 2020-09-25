Return-Path: <clang-built-linux+bncBCH67JWTV4DBB6UVXD5QKGQEH4LGM4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB29278C6B
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 17:21:31 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id e4sf2204792pjd.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 08:21:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601047290; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1yuS/Vp4lc/MeRYcmfoBbaPJ+fnbUTF91y6mw443OFMwcbvPpN6G+WacwLQI3nS+S
         aTiIzcdUx/FoiBTfzb0zhpcUI1ZZs5ytyBJ41NTfCEGu5PUozSxLFaaXIyWmqSo/nbbw
         kwv6/R71EhuEO4K1MeE7RU6zlIidgyjRqAT5hxjxCZhl+7uYX6zPWaewVpL/NLKkkAYE
         Zaz2u3itwR/X4VY7LvmTiw6/eEQYvxP4AhXIyMK8cDNWs/AwmiU0G1iEB8rsmPUpzOoj
         Zij/yGBEYsHXYKEzDiB1wCVdb7utG89wAo0k4RqM3ABKSx/79Rea7Jo6P96sLYS6vXtm
         7lQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=rpqItcyobSdx6rp/jgqkd1oRUraR0S7QLO5ZkY3sa1Q=;
        b=IUoYE1JHlfbgi14cKWLyRDVBZZD5CFPoVWU8J0gOwHI0R6bm8KjuBwSlbKOyR3DoIW
         SSJ8aV5VIvCQC2w7swbBZ8tF8fh14GqDVaCMLX4GZQ3zeYjslJhWZZ5Fqv7qoi1hN6vz
         dO9soYAKMU1riRRQA8R2Evcdp6wwSDoJ7zpSqCi1HZDnGVhy3+JKZQqKy5GHC5vgOAPM
         8ogNTnzSIDy3A/mJ/2RodasLP0fMAvHLRVqsgsCczwNuYHoGoBivmGmt8qF1B3PnGevz
         4Xql6Q/nYsCiXap3UiS/2Eu+QbmWUfQedajfutXc/J1uByYL103d5rLyUunlT4MBJPON
         nAaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oxe8hyB3;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rpqItcyobSdx6rp/jgqkd1oRUraR0S7QLO5ZkY3sa1Q=;
        b=RW8ZRuwU6sIPmznXLhQRb2jbhy99mDNLsaUU3YUj50Z2Yh+pqNJwQOIlqo/UeaBAGw
         IFmlkyey4jPj7MC+eZ1fweh9ojyzcE6Lt3HUQLeV+Yg+wjiP+fHYg46PVHRsA84Gw2H8
         TmejKh/vCFMld1AVTKVLvFC+Ky8V3OxEMF7fRk9Qa6id2rUzOAfAyHvPBNySGgw7aU0u
         os6q0rG7r5AtaMn48w8L6rcBIBpFn/0Mk6UqB2pwN11TiMG6SeTtkc0plz+twzgcz/RI
         g6mbI/1JguafS4MVksE/BLUVBvS+x9gFYWc2amWvnz8wN++3zTiCkTpjI6qjmrIkauMq
         SF2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rpqItcyobSdx6rp/jgqkd1oRUraR0S7QLO5ZkY3sa1Q=;
        b=sDLTiYnkUsybQJ3ZcpX3aPe36GihXgOEeZ+Vvgja6NycBVIZI1NLuBWXv5cIBXU7mn
         PJT6uYBgnDKvRjbTIZQrPyDr1YjATBXFSMtDc1cMgQ1ll2LS+ASMlDJD2cuHG+TPAYU6
         aRfB1mkCIFaO9eRfFg5yUEMW7pm7moTDQGA999CbDuaBnba5HLPEpvGBe3vetgRFcR4g
         4sd15X7pTrDMnqpVXY6/SJMLDvrdsFH5UE6cO4okKmdoxCxH3aqLz4K+9rnln/rapHqZ
         56I/D3buVZoG6BPL4EQztd7BxvXcon/ZkD3NorzBKVBws5ALcB/vkh9wxRsKzoCqmjYg
         pDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rpqItcyobSdx6rp/jgqkd1oRUraR0S7QLO5ZkY3sa1Q=;
        b=kEArPqNLa8TATOiUOtpkI+U4yBV1uAub7IjhEdbo/O9ZUdKvglRXL00MrZuuFgkYBm
         mkulDm4+9bIZnFecTsQPTPZO85USZ+swG2ifw2FLq59W2TKZG76OQqO41lZJok5hloih
         bOkRBGWBrUoXLfAHZ0+kFRhSfYZLPQZ7rFAgWA3OuE36C5B0gU+aj+Ey05uQVka14IX/
         3KC0pqaz1gJY3nz+vuWXCHUE55yafUVXkpo/TtK0Edz1z9yDPMaXXuYiZ0bMZB/qpGT4
         v+2YWT70G2/uAKUpkxgtTl1V8ZRXI5rG2Lw63Vl5tUs9evGfWJPaTgX6kGI85bsFgHjq
         ncqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532B38R4N+jO7fnnMyzAqdZ262wPFvYEbpDp7XGOEEK7fC/L/P/E
	OpqKLE4tNmbQGnYcpTMjFIM=
X-Google-Smtp-Source: ABdhPJzWa2wTRHVUtpn/OI0LjoaHezIIzwix9EslPT0sSLjT5lOcGckykdpelJbMK2AGr+/c7fFMGA==
X-Received: by 2002:a17:90a:ea08:: with SMTP id w8mr143737pjy.124.1601047290709;
        Fri, 25 Sep 2020 08:21:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8514:: with SMTP id v20ls1189939pfn.2.gmail; Fri, 25 Sep
 2020 08:21:30 -0700 (PDT)
X-Received: by 2002:a63:d841:: with SMTP id k1mr469471pgj.59.1601047290088;
        Fri, 25 Sep 2020 08:21:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601047290; cv=none;
        d=google.com; s=arc-20160816;
        b=j7+FpQNiLh5n9xbnXMtuuVb91yJgTX+/NytljkP8AFYm6ZhuXo38kQcdDyfrjZNzhl
         +mFr6Fv4fZpuANaI1xBL2JxS5UxEcCPqVypMe1UQ8Xj4h18nPlJHd7PGPTyyzaxyJGIp
         rSJdXM3G5bVbES80DjGNPPnpQQt7HqrVNKPNOiaxBkkq4IPnNze4A556O0PfMYV+CFJ7
         vINn6QMkQ3JXdlZ4vV3EXxNiYY3Zjcoqie/HZadr+KqElRZHUhv7mAGmHlHcssOHGzU1
         dqyBLixn857Z6QD0daPqk5yCBQnYgR95DW1i3aN9y2pNLLoa9THg4Tukoo7ETpfQLLQW
         Vc+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HfdKNxFN//fHQRteZ3ano4yEULisk9Ub6ql9G5B3xNA=;
        b=YUVhhxAavKn32YtyB0kdUHjcjz/FJmjDBdVFlUk1lNd0v5rqRf16hNK9Fae3ovmdBR
         OQESzB9980U9We5C/lEyrdZShmPdKLkELg0nhehrXQ5SbDkb1Ce81HwmU4tDxfWQNp+G
         dUM7ACBdA9zQdWr8MT2RHhPZkve5Z7/++IQPpFwTdPshR1PFgr0Z/AWyrm8cbn/WXCUl
         hhahROJv1cCMxvOaZF5vGxd33cwJvzupEeflnIaivZnUC7wbJEgNt4OYkmkhEM7EJx23
         YC9PBM5IFrmFwLlBV+5cvKCcev2wOfTEv/0jGW224T7Sb+TC7xyalewai5VfYfrHkvlp
         Bs/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oxe8hyB3;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w136si277111pff.3.2020.09.25.08.21.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 34so2841816pgo.13
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 08:21:30 -0700 (PDT)
X-Received: by 2002:a17:902:9698:b029:d1:9492:745b with SMTP id n24-20020a1709029698b02900d19492745bmr5152587plp.26.1601047289728;
        Fri, 25 Sep 2020 08:21:29 -0700 (PDT)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
        by smtp.gmail.com with ESMTPSA id gf12sm2323324pjb.16.2020.09.25.08.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 08:21:28 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>,
	Kees Cook <keescook@chromium.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	linux-doc@vger.kernel.org (open list:DOCUMENTATION)
Subject: [PATCH] Documentation/llvm: Fix clang target examples
Date: Fri, 25 Sep 2020 08:21:14 -0700
Message-Id: <20200925152121.20527-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oxe8hyB3;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

clang --target=<triple> is how we can specify a particular toolchain
triple to be use, fix the two occurences in the documentation.

Fixes: fcf1b6a35c16 ("Documentation/llvm: add documentation on building w/ Clang/LLVM")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/kbuild/llvm.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index 334df758dce3..dae90c21aed3 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -39,10 +39,10 @@ which can help simplify cross compiling. ::
 	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
 
 ``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
-``CROSS_COMPILE`` is used to set a command line flag: ``--target <triple>``. For
+``CROSS_COMPILE`` is used to set a command line flag: ``--target=<triple>``. For
 example: ::
 
-	clang --target aarch64-linux-gnu foo.c
+	clang --target=aarch64-linux-gnu foo.c
 
 LLVM Utilities
 --------------
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200925152121.20527-1-f.fainelli%40gmail.com.
