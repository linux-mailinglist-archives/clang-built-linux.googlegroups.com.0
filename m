Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB4ETZOCAMGQECJGBZAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F733740CA
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:38:09 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id p20-20020a0ce1940000b02901be3272e620sf2081945qvl.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:38:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232688; cv=pass;
        d=google.com; s=arc-20160816;
        b=rF8dHiHtu8VzQWv+2i2jSwSBKZP/j7OM6weqJDseBeTmX1xpJ6xsWRqrP4kAC7+9wI
         Bjv1ZxLjUnFkK1eMMSV3546+3k1NvA33A3Y/fsO1F/Xp4zvWQVTo1XIaucj6EVaUha9m
         2k0Tlva6rj/QUe83K3gAOhN+aTFu7JZaRkwJj2hvVRyJQIyz5fqdjIHKnxLqOPxLB9PL
         gQ8vEX0B+iGpZv3N0Qf6KlVxQaSwXQ7YIOxngX0XugGI0A3FjI/cGdu2t7TxpCy2jQ/P
         dyu1oWkePoSJxVPOYvaItfec3d+BsB7ym9g293K6A3RQew/TC7PUsqJV8jLxJBUpLoId
         MDmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0flevzUGcMPd+fd0BFhlU0dgMTa2cyKpnfxy7Aq4tBI=;
        b=niiyshV5ghBk+/639vHDZDbZ61fzsTPvfGffxTf/Eb0nnkwd51LKjAyzZ53ftIv+lZ
         +pAphv3I1eJImH/LKkLzMOalm+J0BtSJjzZBUjjemca1+bmV1/yhZDODtaP//2ixHnAD
         T9KVqX+DPsCeFLVdyD68ZvSzg73IP3ns7kd6DzEipamn20VXTuOTQJREOCYzMcGffxuO
         vtlMdHHw3YeiTOdtqK1MPo902FGd/pgLM1cUsfPpBuN28/fzaeKYGQ8qfNkL+2y3XeC1
         V3KCTEoeHBBFGvLoEHid2kxrTtCVVvM0TKqv4TFxW8dybBhrmk5AzZI1UA9jInkETZ4e
         5CLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="m/QRNR5b";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0flevzUGcMPd+fd0BFhlU0dgMTa2cyKpnfxy7Aq4tBI=;
        b=FIpRbrBBJPYGRbXxtgbOM6ArJiFkwMsR9/n7kfbv68eLg7z8lpcr58bl3oZkdC/7xw
         rMikoxJfrPbPOACi4lsZkZMBGaO+9DERTVs8keDzc+pQu6/dNN6x+0nEfhR+0UnQVj+n
         8nzLbBSplDuFKN0W/Atka9WFrN5P83hDRcuHHRWNnL52U51WAXYvw0aSNNNKY1ZlhzQ8
         7BJ4MLHP9D2nySv2NuJmj+QHpMR+X6uVrIAvQ/oTk0YlgMGpizG5gFvZ3Eylc9ny0t2d
         eW943mC1XvU6JREDpml3H/K0u/BcQGxmy2lzZ/m4of/0S9s03fHlhlpFLZk/fr/82g+n
         Zhsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0flevzUGcMPd+fd0BFhlU0dgMTa2cyKpnfxy7Aq4tBI=;
        b=O7y/fdHpAwuN+sGD00ItBsqBqj+H2KnKOX6rHe5jMq7THa2CCF5O5hDPZHdaRFgnC7
         Strr7+Ga+SqjLdvmDDHiBLPoGBsQaGOuLHF5oMjZS3FjJ2MUfxENtjpB79x2Hhe/NLjZ
         qPgqDSDbmM+8F08DpdPO+/+cJMTGRj0PkbW+NY+o1VazuGzv8GnIZfDpSgZaZCywpC84
         mhpYn0iQclviULcSfPc4BE4ELrwDA6vhh7zsBGfYRUdKhZbxzHGW7a57DlQtbmHvne42
         s13Nm9uHNImDwXwG+EDi26gHgOO5rQWNpH57crCwZiNJ+8vdaKOYNe1QakyQPLLVxFw1
         DUPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kbr7nzBpyVqQUVcCYZRERtSAcsP6KdVplglIuMPUPzhG9oxEj
	s9jiVfJPZSCv5fZiZeJY3z4=
X-Google-Smtp-Source: ABdhPJwb40Efh0lR7BvqrGHCaLeSC6aWoqxJb0nqsoHSXeNJ2DOq1Hok1O75G1WNwhO+Yf+hvVoS6Q==
X-Received: by 2002:ac8:7f53:: with SMTP id g19mr28700171qtk.249.1620232688480;
        Wed, 05 May 2021 09:38:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a801:: with SMTP id r1ls3833575qke.11.gmail; Wed, 05 May
 2021 09:38:08 -0700 (PDT)
X-Received: by 2002:a37:5f41:: with SMTP id t62mr30868455qkb.458.1620232688040;
        Wed, 05 May 2021 09:38:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232688; cv=none;
        d=google.com; s=arc-20160816;
        b=jbcfE3KurWBhWjL3VQLjTlpVO3hNI2Vje6pFSbkYx3TchADMx+M60b6vT6flhC0BWN
         SBvcDHGhkU8p4Y02HwtbMH/VSi2a2uBHXj+oNxsjLqI0TFuv5oahD1AwlI4D3BYCWW2Y
         VDbeen7t9wdKzc0YMqdgvrafvqigNy/NxIzNzwEYWHvTm0Q/WjdnSeO9OELg7cbhp6tT
         XJR2/vclmgvwWPmKrjvAPujyuJtGf7I2tWkw7c0+pDuuYK3QQYK/h3cSlQzDtyCiyG/M
         exIVCxLO2KhBJxc1YfBMzfELvnVnnmjjZbD2COOCLDUtKJiQa/bUglgMrv9+bNoP2PaM
         zpMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XVALSjjb8paAUeOpUlTAKOs3lfsmHmoPL20R+TyQ2EA=;
        b=dqo0pqBaHHI5nrM4ZWfoIZhkN7Mjt0igQVJBvVcn8VVp4/9aa0oos4p8/egSoKhXa7
         e2cxPtLXLedkF/ixvCQsgo2HN0aafwxwA1Sv/lqHmC2lR+ubJ/FbxNZJigaLnT4C3GbU
         5kX7lZj8XZZgdF6sSMDfby5WmrenbKdBStkJky6+2tWT7L+UcDQBvZScGEBC7gx5Nxyh
         ZuEu+LcTQWVFo0qtP8lNdsybQMGSH1xhaxtnE23s951llL1i4rf97h4YwxxiwF6fHb0r
         kzB6STBvKz5uGkF/cyBehBaGFYSQvfSWM2sHiUEvpUsWEU9Cm++4E1tqNgG4qkihKCFG
         P8pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="m/QRNR5b";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h62si628690qkc.3.2021.05.05.09.38.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:38:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE62B6197C;
	Wed,  5 May 2021 16:38:05 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 53/85] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:36:16 -0400
Message-Id: <20210505163648.3462507-53-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505163648.3462507-1-sashal@kernel.org>
References: <20210505163648.3462507-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="m/QRNR5b";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505163648.3462507-53-sashal%40kernel.org.
