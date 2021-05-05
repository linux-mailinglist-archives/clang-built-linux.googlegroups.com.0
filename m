Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBTMRZOCAMGQE5HA4XYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 664C5374000
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:33:18 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id 70-20020a1f16490000b02901eb8c9eab17sf315222vkw.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:33:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232397; cv=pass;
        d=google.com; s=arc-20160816;
        b=lqEI5n0mkCixq5a1Kk4EVJy0k+/s03p7aA9FniseuEFNZgJp6L2HxrI5c9rWwdiIwH
         UxWxWZYV8hGr6MN6uv5tyC5MbSCpsPk7jRuK+AfWQxO9E2poRnbyDoUsEmazg5wBhJFl
         HtZ6PX/9iEqgEsc+AZ0VQ4egXTn/fauR5lco226ZFaEcvBIzjgHvGG/ZoflqCJbXiwwI
         TAcp4jkn7Xtgb9rIUKQSTDZ8jhBRfaIjad88RhKoFaVEddo+64/8yfa5KJcsnjjDbldB
         G0YgoN7aK9AuVo0LtDIoaVd4c0kO2gpyB1xn8JTqJl59DEvPLGnoNRf66DJ1puFHXo5t
         6yxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cHoD2Znr8USzcgg2Efdo+cBBOdelS7x2szoeDWaqGrg=;
        b=KJKUMSPMUNYy4A8ee8+8nu+Ob4r+sU5vxfTEgILfoL4u5DKEkGf0rd9Vr8DwFYR3Vg
         ns774Ujyfr7aEGyApToFurIqmLWpSVa81zoAYMFeBchdAc5dkCHGIJxdO2OtpXtMadc7
         fw3MDEPBcJK2sYzOD6BMsE6L7WK9tUhUdvJUp9v1M1EvcwSIJ/cF4YgYu768jA7tL82R
         l7mfkCvh4QiKAluDOE1yD8taj9PbfNIxgwi3eFW0dMW/rjct6kCT17/N49Jd3SbMmkxt
         FEvTcB9ohYSem5H+OqshHhP5MwDDnnkIcOOpAJOhphSFvIs6gsBeyM5td4gXukXGfvRy
         kOew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Um4iOvoz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cHoD2Znr8USzcgg2Efdo+cBBOdelS7x2szoeDWaqGrg=;
        b=Y+jFuU2zfjcOXydXVCnbsqOWTTSR/Sq13ki/ksaCaRIjhoHmqnAaLgPAIJ2TnVFLPX
         NQ26nz0V5prcoo2cfCQWhZSeJDu8l10iqpIWo38b3HuLwpYes1bcB/J8VYtwfJuxtnQm
         IUP+9oxyWntkq7Ju7ovxW4K2+LtJAWSM4Dk8Ju6iiif/QsNB0E+5Uczc8GAo3Et19XKx
         +z4umOpBw17hTmwPCwQmTqh8r+6JqoG3blICV8mVY6Gp3S1RMYNX8svIEDrHZGkbQlas
         3rWyNOneQqPcwJjelAcit25WZG1rODeSITmD7yPAYza8+3WZ3rMwZWrFr5Le342Eqiae
         JfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cHoD2Znr8USzcgg2Efdo+cBBOdelS7x2szoeDWaqGrg=;
        b=JwRBSY/zNy0qxEswwPmJeSKaRuPByBT7EbvAQKXJoNBW3Xx09F+E6ywWQ6rDsTnuqZ
         faPN+SwM+QIimUtUGkmD9mPQvu1jL7dMjZ7txY9YYHsDRuc/EX3pVbxJYg+erfJbdriN
         pV8GZcuc+HCAzksP2TUQ61KSSjW3a+yC4T1aff9+KZ2MJttyHqbOKxGFlIVOOXKl/oSM
         IenlcVuzPEwHUswyVKmdUqAq02wcKg6k7hsM2djJqAKGlsmTID9qkIhZYIk1Z1ItkiHz
         LRfu4pG5/r4ZK9q0OCjlh4V5+m+qFcmky38eMNI3MQ/8oSoXhFaMrrppB2WJhqtQRtMD
         5xhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o7m3gX/NmQc+FwkB7RaJ2W+hBTuUWeJk4tI7VvrBicF5oVfwZ
	MA3gmaUBhbYSLUNjbJUbWK8=
X-Google-Smtp-Source: ABdhPJz+kJbXBsYn73dfjEdWXJmFgsYiTmEFaTGPDzqqCjIWO7yjyRUb8EggHW+E6d24Plq9EoIoRQ==
X-Received: by 2002:a67:fb92:: with SMTP id n18mr17311926vsr.15.1620232397477;
        Wed, 05 May 2021 09:33:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7550:: with SMTP id k16ls2382411uaq.11.gmail; Wed, 05
 May 2021 09:33:16 -0700 (PDT)
X-Received: by 2002:a9f:3852:: with SMTP id q18mr26258853uad.58.1620232396910;
        Wed, 05 May 2021 09:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232396; cv=none;
        d=google.com; s=arc-20160816;
        b=RcvuKqJkIxdSp25wB0bROjRS7j/Lt3XcFy+xtt8YFoycbrgptJ9/KO69Yo75Ir7p32
         8dLNb5uj4MPm5tW/L1yY6Zl8f2APNmZyA+6k9+LT0RAM0k1FM6iM5cYkN8bsM1nc8rdu
         Fp3oy91BGANry1eINyhGwHo0QZ+4W38WLBaRLHcva3H04QZCTVW2ZBjHy9VfutuWQ9pK
         3QJusPXZjihIopbfbrgUC27LY6/HmpsGdGcDL7heWcTturfcj0Gu1/BbeyNM8X5BA3+R
         7xT1XbFxkez6kQ0gMH5abAtSth+pT6Eyo4wO90yEb6IwY2WtC69GfTYhRq2se2rVuqdV
         gu6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XVALSjjb8paAUeOpUlTAKOs3lfsmHmoPL20R+TyQ2EA=;
        b=yOAI95PQ+/jFnX7zk/tQ7ZDLYkbXJeylHBvHP9gB74h3V0Zyo0b/ddXQAs0uJ5pbtt
         XcDzD9V5aFBztgZBOQrsw44ay8dkkE2O80RiLLnXtTlJ+3Qyitns6EgKqc3JP2tbnoX8
         fn/vdbu2FbM89HskahBHcak/rgXO4E93OgXseB1v35v8efhcCdnCSkstqCWtuNYDeXGs
         mYyn/hvkNUk5XSbMkDVnTR3DqyvpEpTKn/RtrBGjl+WmTWOmTZlO9VUqSVLoc27nIlNY
         hIvynMC/+UZU4uXeRrk9lPp62BgEbSWpQsEXQZwtEwUqxR9OtWCEgDuDdjT0ceMbIJDm
         Tqfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Um4iOvoz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x190si478341vkf.1.2021.05.05.09.33.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9636D6144A;
	Wed,  5 May 2021 16:33:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 078/116] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:30:46 -0400
Message-Id: <20210505163125.3460440-78-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505163125.3460440-1-sashal@kernel.org>
References: <20210505163125.3460440-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Um4iOvoz;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Yonghong Song <yhs@fb.com>

[ Upstream commit 26e6dd1072763cd5696b75994c03982dde952ad9 ]

selftests/bpf/Makefile includes lib.mk. With the following command
  make -j60 LLVM=1 LLVM_IAS=1  <=== compile kernel
  make -j60 -C tools/testing/selftests/bpf LLVM=1 LLVM_IAS=1 V=1
some files are still compiled with gcc. This patch
fixed lib.mk issue which sets CC to gcc in all cases.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20210413153413.3027426-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/lib.mk | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/lib.mk b/tools/testing/selftests/lib.mk
index a5ce26d548e4..9a41d8bb9ff1 100644
--- a/tools/testing/selftests/lib.mk
+++ b/tools/testing/selftests/lib.mk
@@ -1,6 +1,10 @@
 # This mimics the top-level Makefile. We do it explicitly here so that this
 # Makefile can operate with or without the kbuild infrastructure.
+ifneq ($(LLVM),)
+CC := clang
+else
 CC := $(CROSS_COMPILE)gcc
+endif
 
 ifeq (0,$(MAKELEVEL))
     ifeq ($(OUTPUT),)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505163125.3460440-78-sashal%40kernel.org.
