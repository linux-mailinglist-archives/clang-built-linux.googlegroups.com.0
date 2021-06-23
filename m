Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2G5ZWDAMGQEZZ57G7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DF43B1F66
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 19:27:05 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id o189-20020a378cc60000b02903b2ccd94ea1sf3289271qkd.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 10:27:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624469225; cv=pass;
        d=google.com; s=arc-20160816;
        b=qIKSfwhvTmUXE7+HbJRjgs5v+uEy9nL1TvBGyDlvmZthESMCEDeXd2rcVdILWTGa+f
         ztucM6dJr4QmU/HUWgwhgE35AvHs+n/bXOuOmSlY72WhO4NtuapGDdvstBI/R8v1lIUR
         UIAWSMhidrWrxJmLVEX2zyeZRePQIchEFqNyG27k8/Zd/DnwBVZA30xs1zflvGnOsqJX
         hnywgv/YRpOOFnXHJwEdI2UWZIxlrBEpRPUEV5KvH3faKZ8k5tEpwaHJBsYsA/ZLeOW4
         0qNSmNRvHYX16fLsxoXRExUcfI2SteWBNLk9UNY4dm24lmucYNgahjCO9oioz/fb9REN
         Xmyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=59bIQqS4uJQXZ9F5iW9YpI0Rf2Zcb9W23HyB4Hp4sgM=;
        b=DNjEuTedTjipZv4gdoYpuWtaLjqVka6uMpg8vLqTV2E6+BlbWK2QsgWMzQ1noJ1OJ5
         I1o0Q/XORzDPuEO6BnB0ajVHIEp6xInzSX7glbS04vNs+rlzJsRmq6mgHidVDDDH1vll
         MnoMYKWEzxuDHdGxGbG6eKuZuwZTS+SV60KuYJGWLE3Bq2Ro5p9Npjj2y+QzmrnfwdCJ
         1xhwRYxzbriwg065TGNta91eOTIcHYsQetvvv1tkaBDPQc0Ifsn/+K6T7ZHl/1XRozVa
         pdg2wgw8W8eUl4CQdm/oBTttHhu9Zxq1f8rUK3K358IxTlc1MQySAbxXhI+l2TpPvVV2
         I36A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AIqTW3DG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=59bIQqS4uJQXZ9F5iW9YpI0Rf2Zcb9W23HyB4Hp4sgM=;
        b=hbLOMr9H/lgZRiRfXZ9l8HFbe8qdzQnOtua7O588I7IyYWiYSP/VzUOy2GnrhbtoGY
         r6cV/zglbCMPyRC/hc61F3pMxRUCVmD6N8Dm2akMe++bCtsgfXL12D3jobfjYSHoppmc
         2SkMJFDyHxymbE4SVRnqcFqbZ0M3FgIjVMb4UeTXrHzVorft9hu4BM4+SWoenUdP5vPI
         SkZ6lFAgbxjDM341yx28jmBa+cnZwsIdBbrQqvKuiUJQKeqwdYENOiwrXGNUTBL3JBxl
         772V2mPw0w1SHXZEmdGiXhz1k2OrEbfgw22mGU5ufUBXt0+opFwlLQ/LVcffvCaMsXs+
         eiZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=59bIQqS4uJQXZ9F5iW9YpI0Rf2Zcb9W23HyB4Hp4sgM=;
        b=uPDe1UT3GsNPHUjwVq8Vzfh7luMMqLQ5uHTXVLNRQ4tIRqP7xyJlvCfmGFsBLJ3y64
         Qa99yCFnoDQ3E+OO5Jo2Wjqs5J3bq7f4BWYJWaYboq9396T0hSyh+JCRnzAR4exbnbNf
         VPvccqlP05gHotli/1U3ESg2V4FKuxPcXw+9P9Z53WIjqzOHWr72h0oJ4BJ77e1zSnw9
         EojYJ+YD/jkPPzGU5grBRAHQ6avmbgnmyRjs6snbpDtEMDsgmzVEjXjkO2ruideEWTwA
         obwwsNYnJ8EUMR2/RoKWQnzmKNZ0iohpUlB22Bda3T6Fk7tmRZFWR7s9FL72hikMygn5
         1ulw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TEyl9CjPB/rVyq4CJ+LNv2m1WSDQBFna1dUlyTaw6M88wlVKu
	iJt4HXbaljp5qj7Jh1ymcXc=
X-Google-Smtp-Source: ABdhPJw+Nl1zTS7XmJ3jLpAugTWZ5KAmNWh1GjIPlSakwLFzAUfgKn0CovwwhrkIvGuOv4hUNuQ65w==
X-Received: by 2002:ac8:4c8c:: with SMTP id j12mr954371qtv.390.1624469225066;
        Wed, 23 Jun 2021 10:27:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c985:: with SMTP id b5ls1085931qvk.8.gmail; Wed, 23 Jun
 2021 10:27:04 -0700 (PDT)
X-Received: by 2002:a0c:e481:: with SMTP id n1mr1025077qvl.49.1624469224615;
        Wed, 23 Jun 2021 10:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624469224; cv=none;
        d=google.com; s=arc-20160816;
        b=g+6+w22UthMAUUuVD12g1ptF8xCO077F65Usdkyan2/hfc863fY/V5yvUXZLPngVsN
         HAQVUzlkD09Zb5A0KDkuee+NbiBjuvN9XicmUuViGnyA8gVZw9KLB1lUUbbTpIMJqNYy
         SyCVjIPx85BOT+SR2R2svefSXuRF/PWFlG+dYyvkbupRbQ6eIoWI3veroPqAkETPCTtu
         b0qqQC/Mp3FvrN60V7/hcqdFWLAj/TH1WDNjEwteqEYsMrv7Xl/DjQYZhsMT+CAHACWp
         S2gvc/7W3+aPAIiDArwAO1U2Xx7CzNWiN/EmIIiKandCYDfY6UDB3CHMbkOkcfP60zOV
         Lb+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UMbyz7LTxv/I9yU0PgFRK7lcUBw5ETdaZgQUr4pR4iU=;
        b=DTDFNw5HKvtlEOfS+21R9lBQxHoszYl7aQ6yooCNTkTJrZH9bdNjHP3wtqPiNaBA55
         iq0pnYYXC57EIkr9Sg9k6Ac5Cpix5Ob7hsqy6jzG5w7AaQ1rNrxG8c2TaTCaG/X2enEq
         LMqdLi3u/sUYGwCEZw8WNuAV/c13r/cOb/APvcAS6vi1e1BfhE7zGf7BTVcGPFOvvYrI
         4gGMTtuPt9bvSQuW0OQvonnDeoDUMtVw9wMFVLRDcPUt4EaRTIfnAKTOMYslCkMhMOWG
         gFbgODMl4JyQJRXbEyVJTfRp6P8I5tEd6WRs4YW8jA/sjpnn3mHZO80+lH7UT8h4E088
         063w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AIqTW3DG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si91237qko.1.2021.06.23.10.27.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 10:27:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54EA660FEA;
	Wed, 23 Jun 2021 17:27:02 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 4.4 to 4.19] Makefile: Move -Wno-unused-but-set-variable out of GCC only block
Date: Wed, 23 Jun 2021 10:26:12 -0700
Message-Id: <20210623172610.3281050-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AIqTW3DG;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

commit 885480b084696331bea61a4f7eba10652999a9c1 upstream.

Currently, -Wunused-but-set-variable is only supported by GCC so it is
disabled unconditionally in a GCC only block (it is enabled with W=1).
clang currently has its implementation for this warning in review so
preemptively move this statement out of the GCC only block and wrap it
with cc-disable-warning so that both compilers function the same.

Cc: stable@vger.kernel.org
Link: https://reviews.llvm.org/D100581
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
[nc: Backport, workaround lack of e2079e93f562 in older branches]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 9ff7a4b7b8cb..cda7a18b925a 100644
--- a/Makefile
+++ b/Makefile
@@ -716,12 +716,11 @@ KBUILD_CFLAGS += $(call cc-disable-warning, tautological-compare)
 # See modpost pattern 2
 KBUILD_CFLAGS += $(call cc-option, -mno-global-merge,)
 KBUILD_CFLAGS += $(call cc-option, -fcatch-undefined-behavior)
-else
+endif
 
 # These warnings generated too much noise in a regular build.
 # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
-endif
 
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
 ifdef CONFIG_FRAME_POINTER

base-commit: eb575cd5d7f60241d016fdd13a9e86d962093c9b
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210623172610.3281050-1-nathan%40kernel.org.
