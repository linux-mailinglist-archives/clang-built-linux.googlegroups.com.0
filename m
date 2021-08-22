Return-Path: <clang-built-linux+bncBAABBEHHQ2EQMGQEPIS6M2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A015D3F3D15
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 04:16:49 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id 83-20020a251956000000b0059948f541cbsf509404ybz.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 19:16:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629598608; cv=pass;
        d=google.com; s=arc-20160816;
        b=pYRshDBCQ0NnQnWTngdPx/mEVvQFhxqpFGb8ISgBYr79yXtf9YnznKQQbAzVkqDRHt
         PYAPls7Vqjok6yNmOjsFDHQ1u20krufjzA4xp8Qw4c3SOUq2M4h46zL0je5WJW9SdyR6
         7z+PTzvXDMvvK5OSo4MkyAwXnWVf7OF5hggZgj8HzGTZU9Ud6p+pj49nTEpGycPSIfie
         Hsf7R9VZ1KG9ef4geZA/bN+WVUwd9DHe362u4nxhS9C2TrNWlnkR3+yoXIPBF3OWnm0N
         RqvvKTIGdBK/a3RrWSytb9Xik1+Qh6csBBU8fb2xBbqpM93QXwOQQeHGb2AxZj6bNr/U
         7Imw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=AzRfjj4QoB+TZN5wO3lR1SLjtX53A46dqritwJH409c=;
        b=HXviAVrvZi1ySeqywhfILzLjAYyErn83nIGjgxJAQwWVGWB8kPGjWLNyt4dnTsyIWx
         w1mMYlDmiETrslCaoopfYHQp3u3UMHbUqics2U0r+D66qfj+gm3vF7FvWakCUYVzJ7ok
         552DgeRJQBsZqCHmO+u8CSWFClV6k2vjv4bPor4Pqtcq/JKRz4/BRwZM0DcSij0Snv7M
         McavpCrp4X4SGwu9GM5/eYjukyuj6QRT6zJrTRuCUfwdCWZzy/Tf8/Il6Dxs2xoMEq59
         IM4UEFvCCEtBaxaaoBupqWTxEW09vgfPLky7YRbm5Z0QVeM3KOczW714pjhqJ/Xi1+60
         Ob/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of caihuoqing@baidu.com designates 220.181.3.85 as permitted sender) smtp.mailfrom=caihuoqing@baidu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AzRfjj4QoB+TZN5wO3lR1SLjtX53A46dqritwJH409c=;
        b=oNzj0buyvyq+IXV//OfJ2KWw0OcAtdxr7aY+lM+uSwOZh4M8PSm4U/yYzUYom5HuH2
         A9GZML1W3EDbKzgAsDVjyBDo52W36c6cZq04lKpLZMamLO0l5GBxar5r1pxOdENQkJ0d
         6cGRVb6vN0DvcHRE8GL3vWWxOcL2TD4nxTgi/GJpfiWqTNXlDCzYO2Rz6KLRaaRHmsmb
         UdslzICMKhfTabmDXEcaFrgTQP3y0IQyt6NXt4RGKCR0QyTOmVCKKbYyTfGHR8MSbk0J
         D8eLhothdNHRXqRRC4/3Cdyt8mUvUSeZglgNOeTNZ2TfA85a13tPXrNnUyWBRv3jVk1k
         sGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AzRfjj4QoB+TZN5wO3lR1SLjtX53A46dqritwJH409c=;
        b=KvKPcvNkdKBEQIhg5us46M/xIGkIisamDacskVFp2rldC6ZdrDQROO34RcuzsSqklX
         hK9u7nvNChyWgtysyqAsPkdNApXeLmgfNdknxhOMpHU6c9SzeGtECS3tSGtsPUwiKWmj
         AThDeCV5/DuCohhWXLp6pi9P8fumTdXONVNHDy9hhvPh6+AaB9xTgRIk2JGu7QH/5yWg
         u5EFy9PbJ0Y4Q/LXUtNWyDoecbB0j87IaPYsEPtQ6JlsNxxiQu0yQKPjT0q15uuUVI6U
         u6+r8lBECmf7BJsKfabeoOjhD50RF4PWc+QK2fbUUXz1JLIV8IB1Hp4ZUaRpt4KCNXWG
         U3Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533u0UBZppDwomDOXbPIMwgMHKv0wCEoK1uFGjgTjjqDMD6+wCYx
	Dd1cbJBkOD0ejOb5AqFBi3o=
X-Google-Smtp-Source: ABdhPJy800ubvC5jOv7v/iM51bOc9Pt/y4SFDg0kJf+gA+NHyC+DtK6KOTC44BFQQcjzfEno2lnCfQ==
X-Received: by 2002:a25:7ac6:: with SMTP id v189mr34426104ybc.485.1629598608494;
        Sat, 21 Aug 2021 19:16:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac8b:: with SMTP id x11ls2318720ybi.1.gmail; Sat, 21 Aug
 2021 19:16:47 -0700 (PDT)
X-Received: by 2002:a5b:108:: with SMTP id 8mr35569372ybx.174.1629598607760;
        Sat, 21 Aug 2021 19:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629598607; cv=none;
        d=google.com; s=arc-20160816;
        b=C3c5ckHTEsYZ4SKYzdGEKSKno3HWmNEL10CmLcL2jUt50LmMWSzERej+CFB5rc1Jk1
         lPdEiqxIsNk9f2bSg1uXpjYmUumi9LzYER36FXmoIHsn31llUFR46E8SuA0KQY5ObaXh
         nZ+LQNjjELsKTrJd0A1I3vxW8BHJDU0z1miTuoO1M8VS72ZrsqgXa1IBIhY+hXH40Q1I
         1b1CEBO9fpDQPVU4HbWrp2DAh4oYnvVbiyU28TJSqN8ofirwWQrLi5FZDDO7A51wSSSI
         2qzkUi+0CjsUblbUQ3vbxEnBMyQSkTIJXO2Acss3J2DURYy1NbvDX7+fRE3pz3zx7DEt
         J+ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ZucFAV7bqTtdZauTm43RinqmwtWbtEACBfSMzhBGINo=;
        b=EUTLaEg7mDuBw/3q+5g63XazVJil2jjvEZOd874O2wuadIGtqNqaQz21US/CwM7Vf1
         LuWM3lzJs4fSWkHxb2sHSkE3AyTOhf0QXLcHscy5bt/Bb+CJAvHq30CAF7si8qyAa6JR
         69D5XpBtoqpa/XRZDE5vP2vEqDNMBYCohJpzcLio58FzZ1HQDI82XQENm/DW5oIOx67O
         0mWScNTSz2O7D1Nk18CjcJGM1bZH+TiXh52Ya5T0bT3rt1ta0gz8fi5tjOC9BUFIBShO
         0/1ayKNBSQb7NvTvb7SoTOU7O+8ATEDzSB31RZr1PwbOKeD3360XJoPkABY1RvrlKJAw
         kK9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of caihuoqing@baidu.com designates 220.181.3.85 as permitted sender) smtp.mailfrom=caihuoqing@baidu.com
Received: from baidu.com (mx21.baidu.com. [220.181.3.85])
        by gmr-mx.google.com with ESMTP id q62si745339ybc.4.2021.08.21.19.16.47
        for <clang-built-linux@googlegroups.com>;
        Sat, 21 Aug 2021 19:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of caihuoqing@baidu.com designates 220.181.3.85 as permitted sender) client-ip=220.181.3.85;
Received: from BC-Mail-HQEX01.internal.baidu.com (unknown [172.31.51.57])
	by Forcepoint Email with ESMTPS id EF249EA66DA391539996;
	Sun, 22 Aug 2021 10:16:10 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BC-Mail-HQEX01.internal.baidu.com (172.31.51.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Sun, 22 Aug 2021 10:16:10 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.62.20) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Sun, 22 Aug 2021 10:16:10 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <oberpar@linux.ibm.com>, <nathan@kernel.org>, <ndesaulniers@google.com>
CC: <linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>, "Cai
 Huoqing" <caihuoqing@baidu.com>
Subject: [PATCH] gcov: clang: Remove repeated verbose license text
Date: Sun, 22 Aug 2021 10:15:42 +0800
Message-ID: <20210822021542.2-1-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.32.0.windows.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.31.62.20]
X-ClientProxiedBy: BC-Mail-Ex17.internal.baidu.com (172.31.51.11) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-Original-Sender: caihuoqing@baidu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of caihuoqing@baidu.com designates 220.181.3.85 as
 permitted sender) smtp.mailfrom=caihuoqing@baidu.com
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

remove it because SPDX-License-Identifier is already used

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
 kernel/gcov/clang.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index cbb0bed958ab..b97a922b36b7 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -3,16 +3,6 @@
  * Copyright (C) 2019 Google, Inc.
  * modified from kernel/gcov/gcc_4_7.c
  *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
  * LLVM uses profiling data that's deliberately similar to GCC, but has a
  * very different way of exporting that data.  LLVM calls llvm_gcov_init() once
  * per module, and provides a couple of callbacks that we can use to ask for
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822021542.2-1-caihuoqing%40baidu.com.
