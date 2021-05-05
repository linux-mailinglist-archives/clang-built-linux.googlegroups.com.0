Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBLEVZOCAMGQEAWOXUYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 023EC3740F8
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:41:17 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id t9-20020a0cde090000b02901c4c7ae0ccesf2088308qvk.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:41:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232876; cv=pass;
        d=google.com; s=arc-20160816;
        b=udx6Hqudh6uXzoMODslR8z8/P0KqYR212B+aQlRHDh//i4F8ei4FGkqG57kNjUtNYH
         tVI5oYwy+aG8/YlHbcxwNdE++UDNrcWgd+TtoznyNB2x9G8wo0oIeQ/Zcz7vw2DSWEgC
         RlPbsx4jWeQx3KRSUNNTeFwxVLVrMERniqpyqUrAPnLhp7ogQt02CUlMQi44CptPt/T3
         elFuTok5jofB5B7/JlPdTOQDQ3OVDNnOz+rDex3qDUF6PEKDi0bc3fG06Ho/Mlh8XevZ
         H0k5Ohnum7t/jqtD+ERmeL7VQtYvHszc297vz9aJwt5n0j8to1wcOZc5NcOggqCd4+Gn
         BR0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NuuXKgZJYH67cScshdMO/D1xFKfg1grW0ewmohwLX2s=;
        b=IEXNIMP+9z/ZFjW1O1LBQ4fX2iAgQi/gQRtosk+59kWrNZ2SX406Gy3EX7mUH/sAY0
         p58pXpF0uAHr2yXxeJmms7QjTCsUKFEZXQlrSsNM63p5OJQ34K4I86QjI4pqQ8kvxDex
         ydrVIDt7u2Hum8INrzAnMDYArcdkAuB//iykAruOIcrZav7f/PvdpZvI9K9xy9X7JBak
         UIAMesnfpUWIgASfhG1QH+2VVShaEsFPEt+f56zySeRWYWjwINrGTOQIYwY76EvadqVX
         Oy/r3AJwXMzqNV46F1q0jtk9Nnkc6Wc3RZrdYZfIWN81IK2TJCiCUDe6LQN3hlAd2HTN
         u+Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dVC23T9Y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NuuXKgZJYH67cScshdMO/D1xFKfg1grW0ewmohwLX2s=;
        b=sArrn8uafEdIv5F9T2OztZeZiQmXGtwhYZawU4YO4zlWqgvmvz2slBQ1Q4EAPnqz6v
         vxYS0UcQIiu6ymziRLzGujjWX9azoKaoHC+iyXPYhubs9ti0u7Ph+XPqPB8gkGKkFF8n
         4oOPPYKWOirrdV96zT4BLNQxk+SIdJ4dB4yxkZs05avBNlxSeTWsR2zwcce0tNlhmhre
         WfF5yLy5btgfZZzx9p7ascwd+TsN4XbjOm2Buei0NvAjMzcm1biXCMJEX20YlgVbk0/s
         wGTlByFS2mlulzV5tD3isxsJHPUSGtRt5GPvLTiJEtorBbv7o3cvbJk8uvIaEBsz+By9
         Gy0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NuuXKgZJYH67cScshdMO/D1xFKfg1grW0ewmohwLX2s=;
        b=UXDVc9mmIv3lLVJF6Rg41l7d2HZicP/a1WV6ynvxJqtKKTBmpsrNjNvCswKUUyuxtx
         L4SkZ8xLdZNDHs0SafJB3WisW9kUbCz/tszyOdDvJEskB3g8COteWS0B6BPmg+UwDqoU
         EyC2/1EGAiOG5vVQvGvzxcMhWBrGn7/52B+M9dZWdseCLkPHy2cy/hQpxAWq/u6v0yGo
         InBHWAG9psdH0jv7K9zZz5uLYHLvqyHaUKF/y3CjFlOgY2OuaZoT6Uz7E1y4FaaDJXTp
         vv6zq1SwqD3fiU1nKY3kmnD7vFba+dz3C5mh635xYf0o0OlwuTJAf24Qc6RmCNpuBsFJ
         lkdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53368FDECywnSHLdPbBLDl7vnYKqeChvuN1ZiZwKcgICPEn3xrZp
	gze7seZE2mAXmGDGRmO4z/U=
X-Google-Smtp-Source: ABdhPJxq3QYjv2+KE6Fyo5h/S/6LYspTwgah+y7Q2QSHQJSL6seAGo6tGDTwlHjEE9Cj9dFhnEBoNg==
X-Received: by 2002:a37:8703:: with SMTP id j3mr30389647qkd.308.1620232876112;
        Wed, 05 May 2021 09:41:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3d51:: with SMTP id u17ls9356767qtf.10.gmail; Wed, 05
 May 2021 09:41:15 -0700 (PDT)
X-Received: by 2002:ac8:5e90:: with SMTP id r16mr20667842qtx.77.1620232875650;
        Wed, 05 May 2021 09:41:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232875; cv=none;
        d=google.com; s=arc-20160816;
        b=TU4IexmnYCHTSx3Umaczf+zmUgJ6OxnxIBcfTCDHY6tGzQ0HAcSghUgvRvL4lULni2
         CsTiJ7TO+ef7/hnaGfgH7CYdeONV3MvJ7vA1ybGqVKSVjseUhsJPp4pnmYYIzOTd8ekh
         +9REUq5REAjp//mXWAKlloJWM6c06awAUQJOdCi+QDTyjXqkZB1oYjnNXmvp2ag6nb3k
         G6YAg61IFyAWrFC4kL7Q4r85OABT3Ez6v65L5jcsSBqFgtphsFgnhRxHC7WBDufKCzU3
         df8d1FyAMHSCyMkhK1jvbBqp+9arMx8pqfZHAP4sZDIpvI7g6lcwe7SGP2C4j1Ib8kS3
         ej7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=myjPHz1cIIAPLYU7kDpSVEjeLyTq60chzhAJ3DxkU6o=;
        b=xuUUBrYSX+4Aiua1j9qCcjxWh4jeJxA1hjFg2esXyrYrLJdltjQLrIEXLhkrBifQzE
         DFuXhziAs4d9UGrp7L4tzFK0yPrAymMacHGsFGtp4CElsKE/y47yhb1Eh0WFTfJwLHos
         emt+yvuAOSqTY6l7prdNy8ofIwY0TUfvsgrhrknVmVZqK/Olng+vwqfRME3X4PLk2zUf
         wY/EyF3YHNLK5a+LpFoBZJgBbY8Lsv5yGhveRIaIo3ni9clIrvCQr3krVWVphvfWCZNM
         9f9EJZyVEbmZviFzfGHdFF9JqZ2OulhXLazAhGYWQGi5BR1JcJsyF7Gsl7yASGzr2N/B
         qZxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dVC23T9Y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t4si636831qkf.1.2021.05.05.09.41.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:41:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A55F56141D;
	Wed,  5 May 2021 16:41:13 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 15/25] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:40:41 -0400
Message-Id: <20210505164051.3464020-15-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505164051.3464020-1-sashal@kernel.org>
References: <20210505164051.3464020-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dVC23T9Y;       spf=pass
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
index c9be64dc681d..cd3034602ea5 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505164051.3464020-15-sashal%40kernel.org.
