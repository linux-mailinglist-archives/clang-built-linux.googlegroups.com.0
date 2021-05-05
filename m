Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBA4VZOCAMGQEPKXC3HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 442703740F2
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:40:36 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id p20-20020a0ce1940000b02901be3272e620sf2086483qvl.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:40:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232835; cv=pass;
        d=google.com; s=arc-20160816;
        b=V1JBcMbIJplYXWD0i7ZBdYz4pSvy9Vp/1dgyIXGIRKz+CYyRzva+EBQ9fkgvqdYHaT
         oaDN6LPlPlM5j4HiF2AVkR7HHqqB8H8FdqE+o1SbXrxiVJG5gcz/0dhfHGjwTZLUAQWY
         sXCaQqWj13wKFsiLJal2DLGUE/kw7PNPX+VYtDPYkmR+IA8d6wtNGHNKTZhyW/TGWd9b
         wjrNzZP74Ss3tZgOKzez3Ezr2GJlGrD9GUadgPN5WdgnugUVyF7FCIIYki3dUVVKYu0S
         NMC2WgOeW7Oa3Hgwn+XhIZDTtnyQ52p/RknmYiFu/yPONcLY1l3hDtmdUb1idr5YHNyg
         nAmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1g1ETPDTq7Sii3EZzusprcj4SRfKcxwBBlTqYjiCu0o=;
        b=qoXJImZd1hdqOanLadwML1wFe7VvU7NvW2da3gyt3J+KYAaHuSFZN0P8vMC7ztbY+U
         fM8v/G+BtRzVRXGySX6SNXy/Fed0CtZWdEnKsTebrePXG01kyHJBMrqdEaHB52BjGh19
         aa3QnwVfp/84q6yL9mez7jWqdGbDlAsgnDxzC6ssYz4ZgNheIwju1vTbXsDWmz/P0BiT
         yIQwGOySs1ensY8z28LHZg/S1kMvfUeFgCU3i0ap5VGEU8s5Xlkab+7LwvRHC+6rtAMY
         A8t1ksEdIYPKRNTdZBBggXywflKvL4EXxQrFFxoEt5M8A53RhtTrTzrbVX6AMUcn38sE
         OU6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QOQmoaUo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1g1ETPDTq7Sii3EZzusprcj4SRfKcxwBBlTqYjiCu0o=;
        b=KqXKFOxmX1vd9YSkWf3PQC0ScZDqSz2J5Rum9r7anvTw7M/BCdih5ZRd5zJ1sW+Hz6
         EYDSzjBivMsMfywXjvNma4Y/lGaHHVA6uN5mpZ0iEicWvcZMD9O8tEgzJqjWcexnLZJH
         Wrf4oqGuMIH4BlwixzLcHEEwuef9o+68cOycMaCNBvR/WnzLugZGJxtHk8IxiXcprsYJ
         VlroPM+S7wtjBobODN98BB1A64c85OA8Dub2vOMawm2whb+A0QjgIZezk5hUqAIpFo/S
         xYBhhAPlo5Mu8AUPycqxE9W11Ztx6uk+lYnzJz0xsvUvjDNYh9d6LrlPzs3965KsbCNK
         1yqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1g1ETPDTq7Sii3EZzusprcj4SRfKcxwBBlTqYjiCu0o=;
        b=n0azFGQn+oKfd1qshD+y+ht3yclQTqqEo3B2wKfRLSG5txmywGhHs9lxh/9dOPDhDN
         dMuCKvvJBG7lhCqUF4pPFAb/Ga4QiljH+xLMyuG9pnUlVyi/cuNmVMtZyA81Eq4nNQvU
         6xYrNbHxl6UnR4e1u/74upiQ8sDBzivgpJbmc5tFUCwFDblH6XSPjYhH5lGsfbqZDeRv
         K+1+ycTkxd5/ISnLuJxSr5SPgw1iW2kEyup6cyd9GlposThZxJzwTzLy49EJ4rR68Iq5
         ajfPxmFiXOXEYLD6iTYRkVlaD2hR4GmkvEOmocbuRgCmicP+mb4Ggu51PZGKGWI4FDQY
         1TSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Z7/Tp8YYZy8oEJ30hnO7BuGcXQLH+9Opu/rd6wrFIeBhzulK3
	uq/qfxw1rP/aHZNVJ5xZD5c=
X-Google-Smtp-Source: ABdhPJwD1uM2pH4zPNRY7Q5GERq+dRWa2HqZdxWP9fpHAZAFZP8JRcRcHzlZzgZhQnzqFpPgLklWQA==
X-Received: by 2002:a05:620a:4143:: with SMTP id k3mr30142253qko.497.1620232835352;
        Wed, 05 May 2021 09:40:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ec17:: with SMTP id h23ls12757040qkg.2.gmail; Wed, 05
 May 2021 09:40:34 -0700 (PDT)
X-Received: by 2002:a37:d205:: with SMTP id f5mr13807860qkj.244.1620232834929;
        Wed, 05 May 2021 09:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232834; cv=none;
        d=google.com; s=arc-20160816;
        b=mIGLaP6CbvfTLX1VTZajsnaAyS52yZHSX9sPqMKwAQ+dJjYgloW9KGxfZl1XXdb6gt
         9qFdpgv7vVx3ujDHfOM/d3R+t0MLekkjM8QL5rwDKz/fClzEYwaM4BxWyY2jvS3ow+Iq
         hIi51ZM3m40UCe100M6cwoa2AOiOW3fftfx9h0NIChTZaiiQzBgifLXPAKn1lF+2IYL4
         frZGU5FNUl0v9UzE32OhL1XnwkrSn0TSVIQsc5cD4hujot21BhMTHd4OmtNUzjDtxaip
         Vmd4C7QuPHbN3EVONEAMnYa7wOqZJ/55f3hRJENTgiIi/BFJ3iYopXcsmiu3yz4K/DyY
         klSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=52RctxZfmzFV/onGb8v7q3zy7hZZa9oNOaxO4RDdunE=;
        b=swwIiGU9G/NbkxfL2jCLoYDzU0Ngj+xZvqRasMKSOZFszYHAqLUBOrbCUMcTOa3xRi
         vJQVv8OLGbHulNHSO/uMqWyUD92qCa5ZWvdsVpjbbHqAZsowVowCWXzRd4jkNkqGbsEb
         +yglukLUvjznEC35qgYYvmnzStmj85ya1Kur6AdtKUJtguIzT4YD0R5ty+YVPCqaIl9c
         r2dniTLcUS6vZZfKbb0kIDEStE4QnRvPy9wEIWrgeQYzBgMlRkdTYAagWYtsC8k2h5ba
         kcqhRVzjZweS76Vj3ugpaOy3w5WaT7bPE75mfM8ZLwk8TPiCwFyNFlrycbYYK8Nm/l6s
         e0Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QOQmoaUo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s65si574964qkc.2.2021.05.05.09.40.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A58F7619D4;
	Wed,  5 May 2021 16:40:32 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 20/32] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:39:52 -0400
Message-Id: <20210505164004.3463707-20-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505164004.3463707-1-sashal@kernel.org>
References: <20210505164004.3463707-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QOQmoaUo;       spf=pass
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
index 0ef203ec59fd..a5d40653a921 100644
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
 OUTPUT := $(shell pwd)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505164004.3463707-20-sashal%40kernel.org.
