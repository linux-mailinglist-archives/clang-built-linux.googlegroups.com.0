Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB2HFUHVQKGQEEXXGFLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E52A2BB6
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:49 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id f3sf3194127edx.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126248; cv=pass;
        d=google.com; s=arc-20160816;
        b=yvYq+HpdQbCMT9uVX5//m/44cVsxsZ9q3qAT/RT0u3WaRSGZvi5/nnD48niUN+3/IO
         xdGUZXwOxwtfS8L4puv0pywMUVLRPkuypbZxp+8p58rnxKahI62HcGKns13xsFZaIUM8
         e3btLoYiwzopvaMniwemzfuy0m5qhd1jwJUKNVQX6O3nmfPrLk8wyOIs7PLPIf0gflCX
         lBlEiYTiCeZfLUO0QG7ZR9PSI2a3N6WXC9kYzgEhtcmAYPqivA2lGneXaJHiRVB51GoD
         G7Uvhcf72FY1CG2/AwRkwo8piPHS6XrcvJ24bxxQtMoF1i6WGNv92KJXMLPuOK7IzrHd
         mQHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=oEu6BvH+YJm4ViDHSXqAL8L8RsL+mCq3tPrD/NL6uD0=;
        b=bLZZQ5brOp77uqYI9ienZF/hQ7thh90uzIAGm3OVd8c07aj2xUJ6Bs4K2BLVuLxvtD
         O62IBcWYFA8sA4Je+TpbmGc1jP4IBOW3bIW5P0NgtjlKWoxx3uOON1YbfflmFXJzmLqk
         1l89Eszm8I/sCG4s3zdmkEeestdXiBtIASzsVOSzi3aylSYbDzeWuPlPUR0BLuhn96pK
         kyC/6le7cR3C5fWnnqX06+iIpiyXrlmkeN+sW80QdBAJclauHTJi6G4VLuaFJ95VPmiz
         kgf5aIhIMmrmxyLmw1rqDEIMKq+2pcnHvN3UJ1n4F6IyE1kHr/tsLqRYXBWeBqULeApT
         JVVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OmaVkDBx;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oEu6BvH+YJm4ViDHSXqAL8L8RsL+mCq3tPrD/NL6uD0=;
        b=qFSVj3UPIYQVmnL2mfF2FVz6bEYnwJxFDHW98WpKc6ASzlnhp+XKNwiirt4MVwT0sX
         jgm8Fv+L6CEqY7TI1/sk1LETSuNO5fCY94p1s3GFOCPnoCdLbziMVXLqf1HlCzPzbStl
         Mt+E1bxkkxZrpAdRe+vQhfll9UQ82l3oN4FvMKDg58wghmqUiAKfIehZgB673D/zsspZ
         oFSDXmPF1GOikmhTBhhGgVRrLi2ZbDrHNGMEyZeerhSq94ZLw99m6khZaF9EOutgROGf
         fnVV/b1UluF+0OMXHYI+N6Kahp7KG8OdQdKGgzxL4m6d0TdW0gwrRcVeJRTMRdtyAnkA
         LOpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oEu6BvH+YJm4ViDHSXqAL8L8RsL+mCq3tPrD/NL6uD0=;
        b=lnmCsyQLWaIGu+96qgRQXktHa/1XurRfo2M/YqUY+cJ3TxVMbArLk0RwoSErNN5gR2
         V5av57/oj56iHDui7PvvGQIc0jJTTkd/e0l5hT+zJSKr7NsbS6IhL4SPc9b9D6cq6g/K
         v3UMDd4OXrFs0RoxH5PA25xT6Es1JtYmcbN9vG0T2uSoWE+YB7JpmPyOYcvAnvbmra6W
         VHT+iNj8AGZ00ChrhtPft+DJAkg1aPKK3qo8FFj0muzWmDFupYFE2mxdLmV7S9Yd/EDO
         LgqPS8T+lwxKuw+pqZBwzr85SjTZ1rVlksUX0/vH1lfnnqoWatKB28Mqkz34Wpqm701o
         mo3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV7Jc9TOwLF3k089RBHaskkwzUa3moRqtoY8X0vrWgIMpazxmmT
	UdhW89eQ+STHqtZjYuqNw6Y=
X-Google-Smtp-Source: APXvYqzxcU4FGvkm8bzk10Ta3RHMjN3RSY5H93ZgRlKAnUb7n+ZRRGJVL1vnYNKJtKAm4+Bve/3ZKw==
X-Received: by 2002:a17:906:ad82:: with SMTP id la2mr10975713ejb.123.1567126248890;
        Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f189:: with SMTP id gs9ls1269386ejb.0.gmail; Thu, 29
 Aug 2019 17:50:48 -0700 (PDT)
X-Received: by 2002:a17:906:f289:: with SMTP id gu9mr10852929ejb.257.1567126248658;
        Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126248; cv=none;
        d=google.com; s=arc-20160816;
        b=go8u7Af9D9VKkSWGlCC53IjN2828yQWCL3AIxOQRN/KeHkhP4B5mww8Q2c59U39De9
         shO3uAnfBcndZjoVc5FY6/vn4+sXt2xpRq/qgEix4unulD7DS1TKh7EzuU8H5XtLRGxk
         6vkhrUXx0Eafq9GE1wCU0Elyq9rGhwWhGoFf+QqtC8Zkv6SMyD+1LwaikwaFGTEcwGKX
         L+8CCXjC3ksVy9JEeAnu4PHiVsk2HmAgejQ1YHJRkj24khJ0zgnpKyKCpr8H/ypPkmb5
         LQJgQoruSFIm8x8wq8SBkf1EY6PkE3PofvyI3GUZqotLL35DcopRAdmN4xiUMHfAdBNu
         uUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=XM+El1wyypVfaXfQc7FxTfECR5DYv9zUGiXmgC/VC5g=;
        b=007oVnbgRIOqek59XkcckIdIYhxCtfKesBcX7M4Eq/KFVp3C60HEg6gTHr71EqVTmE
         KfhYxmoeHYnwwzvWf1CX50bW0xVfd4YrTkm0IR1KLUBC8lH3jru0HFbuHlp7phR3dW58
         7Us2XlM2ShnOH4Bu5Gs9MVdhUXhoo/+CIzh9NRh4GecbcW7XUu97zj2DdsWkE9ATqZCg
         AVv53jpiACHftXSk6BWI9o6wXFY+2a1G3wEHpCjeI6pYCfrEClgDQMKiIsC0z0BOs0F9
         IegQ6cEGRTM15KNDf/xk23hIOk9BB6odgwsfdQpMEStb4XwId6oi1rqwWmSb1gRS5hoW
         p1iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OmaVkDBx;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q18si198019ejp.0.2019.08.29.17.50.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id f9so4756481ljc.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
X-Received: by 2002:a2e:85d4:: with SMTP id h20mr7058874ljj.134.1567126248121;
        Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:47 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 05/10] samples: bpf: Makefile: use vars from KBUILD_CFLAGS to handle linux headers
Date: Fri, 30 Aug 2019 03:50:32 +0300
Message-Id: <20190830005037.24004-6-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=OmaVkDBx;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

The kernel headers are reused from samples bpf, and autoconf.h is not
enough to reflect complete configuration for clang. One of such
configurations is __LINUX_ARM_ARCH__ min version used as instruction
set selector. In another case an error like "SMP is not
supported" for arm and others errors are issued and final object is
not correct.
---
 samples/bpf/Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index cdd742c05200..9232efa2b1b3 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -186,6 +186,13 @@ HOSTLDLIBS_map_perf_test	+= -lrt
 HOSTLDLIBS_test_overhead	+= -lrt
 HOSTLDLIBS_xdpsock		+= -pthread
 
+# Strip all expet -D options needed to handle linux headers
+# for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
+D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
+	sed '/^-D/!d' | tr '\n' ' ')
+
+CLANG_EXTRA_CFLAGS += $(D_OPTIONS)
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-6-ivan.khoronzhuk%40linaro.org.
