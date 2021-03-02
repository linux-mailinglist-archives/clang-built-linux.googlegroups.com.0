Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB66R7KAQMGQE6MEGDGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5310C32AC0A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 22:07:08 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id b4sf15715668ilj.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 13:07:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614719227; cv=pass;
        d=google.com; s=arc-20160816;
        b=ttT26KYzmU7czT/wti/8mBSphoJmxhdvekIv6kpuwiwJVdvN9E+5JR4AWlzrBmzv+j
         Cn188mTl7odNRzDUpGl1dd5nvBOBil0TbSNdNRqiw1ZnoppN6HsDh+jZ4fZkuEYUgBck
         MLiBUNAwkJQAhEa3SvppJgP3MMr7cwG7yTmDXBguTjvsN9vxET2A7xq0B8sEWS1RRiIH
         mZ2KFuzswSrw3kHwiWTrAvHTAuV/ZU8FT8R85FLrx4IGQFkM7ULGUwfcLXgfVNo+qEEC
         47a61SU1FjefiH+b8gOzr/GUNmcz9iZeD9ywTQkbsBY97Kgx6EYz7fs1fpOYqj6WWgsH
         9ung==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3p72O4T+fLD9nCoHzgE2Vb3nQ9SLwwB4zROodSonlwQ=;
        b=CRmlOwu1j+h7viO5Nnm3UXVAiPta7K3YSu9/t38UoGT6yMKOotRhKoQk8rR0XndCfJ
         KFOr3pduoPRAEtioc3OR4XcBj40FHycyQbRSvyzGz3Rwv47UguZYZ74iXPq3XfBc8Ryu
         TSoEjhDaOYtODQJrBobDwDG/NEm1Ee20+FOCMhp4YTZRgSTX1vSE9BTsx99A7as/ky9q
         jaO7m1AH6k0suBq6as/7efyHXmfqt1/dDwDSSGLXd3nSX5/sAkRYtc/8KzfJ6N8dm6xU
         rzftpTKLCtsAO1K1nF0iWMtjW7GdL+L8oF6J0jODAuNOHFfGHISPrhTnz/iMNCl49T1z
         8bfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i+BkJxO3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3p72O4T+fLD9nCoHzgE2Vb3nQ9SLwwB4zROodSonlwQ=;
        b=AlnRdzkzzuQqog2wNYxXsLVu73T2BomZi6SeLZ865vl23mKwevByBFSv/PyZCJefM/
         Av9PPbnpFrnDqWsv27hyJZOQ7ilJe+VELEyTPprdHZeDcDyZRetgsMq3U1RvOTN3N4MT
         LPq0nd1o/JzAQnFP37lBBIjiR1vBaOYo3ssrs1azZ/La8vHJH8baD+BB085MTy2/Hg/D
         xA4ZDW6/xURY/6Jbm4mc+DV8uSSXjdsBk9DcbMB6OPlVMx0MUnM2a7GDgybmjkComxMX
         ugHNOQ6jk2ab3oZEdY77eGkCvjj/7u8vO6stPexH4zqC92liHNIvR7xp+mxO+fYzulZ+
         KQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3p72O4T+fLD9nCoHzgE2Vb3nQ9SLwwB4zROodSonlwQ=;
        b=MHcO50LgL7AUBQZaLEi9MhTDUfG0RX3BWmfXj5NpRbICJBBcMA7SCBxb6ZkkRhfnVt
         5ZVVv7SJEQiizkF4XWWf2RZKm1BrTCPSTRJqvtAfV+BhWB3dMSNSW5+JNLhPlp/xLP6u
         ReGr4THKETK4JJyDe5JBGeiqZafbH5cheZazVWjyN1F/2xsFmRKrG97bW1IVI0cBEl6K
         esfYwa8JseySmZAvysUV3NgPYDYlAeUvbOEWMmImTxTbtE5sifG34tiHDNf70F72+qmw
         fGbz9ow4Zvx6LiJCIiYuylPO7B2ku47d5Qy49R7O1QiisJgRTBsDZz51DGN/zNL6sA+u
         DDjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cTmk50NBt0+QBROxIU26OPpFGIToSGvLCq6rE3djBv9Lfjoba
	rkA9+wITdh+CrMauK+CCgus=
X-Google-Smtp-Source: ABdhPJxoO/iqOtcs5hIKzmlnrO7X2jNYXOY2EJ9A8w1++b49kPp1LdNm0LeAFqIhAb4XoMQpGDHt9w==
X-Received: by 2002:a02:2944:: with SMTP id p65mr22753109jap.91.1614719227212;
        Tue, 02 Mar 2021 13:07:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1032:: with SMTP id o18ls25474ilj.5.gmail; Tue, 02
 Mar 2021 13:07:06 -0800 (PST)
X-Received: by 2002:a92:c567:: with SMTP id b7mr19840251ilj.25.1614719226700;
        Tue, 02 Mar 2021 13:07:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614719226; cv=none;
        d=google.com; s=arc-20160816;
        b=kMOApiOcCtxmChpi4biuSou/lPYjTaar3XQeiQ4X7Nikmmgd6vK2x62ZdTGJVhYl+X
         yolSPLRlGtoBhYKsUd6mlxP+6GR5OotTPy8i9N1qi/rx6TnHZdXkM3WBG4eFvxjL4Ek5
         FVDBdwDuzOosoVi80/WV0m210p/GcK4vQSD6qu96QNPa6dpmhhoDRGdsnTEmTwb7R/qO
         iUjL6vHPZDZJQjELv0T0k6/ogXaE/8MkLD5ZzuuSP/qikaageVFVCTiCqgIotGXMl8xn
         72EDHKj3p2gs2iT5PEl7jiMLFOkO5X9Augf907tCbNwPeE2BxQruIBRHmytzG6RXGMhx
         PxYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vo2J44iFKVpnse0aOlpLByiHo9ULd/yOy/Rb2ly8egg=;
        b=xI8wJ2BCAzRJu3yrkkfwCW1fOIQBmhQ6uWoNCtwdLD6ZTk00UvE6Si1+bMA1E9juH4
         frQB9PH50+GynDE0TBsa5/mMT4QnISq7h/qGD8jfuziSW4OeoOtWM3HshxOY/995Jg+s
         uWzVZZ/+9hVsCyljoyecmtMmBtY8P8QO5FJ6h2SxDjjXX6ky8LXLQY7aAh3BvpOm/hc5
         6d13r0Iq8RlPVRzuOiENsyOt+mOBDfldlPHi8PywkBwU7tg0UaVXCpMJPxREpOwMj911
         xsWFjMWsdVXRZN/dwcrPRe9cNptopcbdELCRRg3qg2sjKdjViXBtWVH+Lo3HzWFsNhA5
         HRag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i+BkJxO3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r2si1050888ilb.3.2021.03.02.13.07.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 13:07:06 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 34B22614A7;
	Tue,  2 Mar 2021 21:07:03 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
Date: Tue,  2 Mar 2021 14:06:45 -0700
Message-Id: <20210302210646.3044738-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0.rc0.75.gec125d1bc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i+BkJxO3;       spf=pass
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

This is not necessary anymore now that we specify '--prefix=', which
tells clang exactly where to find the GNU cross tools. This has been
verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
distribution version of LLVM 11.1.0 without binutils in the LLVM
toolchain locations.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Makefile b/Makefile
index f9b54da2fca0..c20f0ad8be73 100644
--- a/Makefile
+++ b/Makefile
@@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
-GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
-endif
-ifneq ($(GCC_TOOLCHAIN),)
-CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
 ifneq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -no-integrated-as

base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
-- 
2.31.0.rc0.75.gec125d1bc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-1-nathan%40kernel.org.
