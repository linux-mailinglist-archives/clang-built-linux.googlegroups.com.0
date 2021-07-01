Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBSMR62DAMGQEESUT6PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 699343B8FAE
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 11:20:10 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id b125-20020a6367830000b0290227fc6e43a5sf3731012pgc.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 02:20:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625131209; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAk0UoFpk84YFmnnruKoLPWvAe4FShx48vqhpOwEILo3EISbM5u6nJKa+AuqR8JwSD
         y9ddabGMitGr1ei20SNtGlViLoRe4TjzVL/2FRLjxA1RSImlQXaD13m8lKTAozuGDXW6
         W6aSid6msktL2jUk+6mpArgG65/dtulopD6enxZTnLePTpMVHgCQwWeXL2GlOF/++ua0
         a9dcnl4YMJNTCNRIdUU0IKRgKNyepvtQ22QyVxP+VbJmzuOXvlwVYTcSV7vIvdDHZu1m
         qNCyBWfw3Ql3O4ZZSe1vqfnWhpi+yLjWu7eJ6v/X+KCnBs1/bSF06w3QHTz9cxqiv997
         KcWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=31yzyG/Y0QAAXge7mbIp5VKdEKEQAtbb9E5i00/ITvg=;
        b=UDqMxp0LcNVGQfgV47fl3+xchwMCxFIssrXrZcszBtoskycyTusmaRct4Ij0WoGPb9
         Zepyya/92JtaDO/LEEFKN3Ios1vdtYXAJPGVZyto47ogov8/9owK/MNvG61dJMg/Yt3a
         FtJ3i5z9K+AWmMF8kAGUDVpaqmATDhss+/EIXxQJImllkl9Vezr5mqHmJrfRXDOqkh+6
         CNIHfTDvBwA40PQ2X2GsWHeEH67ux5W9sjAdLNow8N/TDCMDV6F7r2mwz1I7HRYq1ouv
         mwxUulYHChBtEoUyEo0mEw2hi/YiG0gs54l1miXrVMo5ZHKWrCu6fJMQZFdX9vwxm+Md
         K2Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=31yzyG/Y0QAAXge7mbIp5VKdEKEQAtbb9E5i00/ITvg=;
        b=bq2quMw49LQrTc/r0vnMeJcLP/PCEWtzlJ+VWxZcuvv+xq8m2/8NvlF6tqaP+BjGrZ
         9ibJgYFSNLmw3qcNcv5oBqj7FReuHa1UXs4+7SrzO0nOLDZh3aYKAeVtxnHt5xfAHO6J
         eMnwEkaG0AxNGt3xkjUjsBALcUR3vdQsjnbkr6DlixXtGtGWyU5O+tFcY1cNOYc8wA9x
         xq5GMA9Y4diQLN8joteLXoojNY0V+NDjBHx26Z5uG8POSFBxXM0ZjOxKWTrpwj2OG6GU
         QZEh4ZPKJMDW6hgNG7APfzx6qCS3vQzI/o5vmZDweGi4F2j5x854YCoix1RdFyAfHdHi
         2BBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=31yzyG/Y0QAAXge7mbIp5VKdEKEQAtbb9E5i00/ITvg=;
        b=J0XETm4H03jI0l5lQM6cW4gfrwMWNzICkEdkc05G2dBgtdf6eTj37eCFbJQ2M51Uw6
         naVd1dfn0/u61a4tyaA+m7Xl2RQxVvi6epijtG7zclEIa6s4gHohv3uphP4wkOEmRMTY
         j4nWFsRQh6n0GCkQVjl/6j82YM87ZyVU5lwSRix3J3INeDlEak0nLyNdFLXsjIesi6Aw
         IWQwbAHrXnrtJWdKmFJ2K9jVYM+7/EvDx9x5+DTAX0vyx2yVP5pXlmSMLqjByNePCXBp
         2c+uPsdYMdJyM3tORaQhqSyJguMoNdmXhvrWn3bL758p9GLG8o09UGpiIGXz2aCvKJwV
         Dbiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531V/08LIwwUmGcTnT5o0M8io25QgORwdkFgFdgZnx2inazA0jEO
	lEIX7OVzKiX1vsKYs79J8lA=
X-Google-Smtp-Source: ABdhPJwPRyEqh3MWvQLyn877zxXlqvhPXY5p+sY33M3pkhJN30FTPRhioO5AsoCRsXNHHDyZjnOZHQ==
X-Received: by 2002:a63:d5e:: with SMTP id 30mr26365066pgn.38.1625131209209;
        Thu, 01 Jul 2021 02:20:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7104:: with SMTP id a4ls2981525pll.10.gmail; Thu, 01
 Jul 2021 02:20:08 -0700 (PDT)
X-Received: by 2002:a17:90a:4093:: with SMTP id l19mr44220661pjg.118.1625131208634;
        Thu, 01 Jul 2021 02:20:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625131208; cv=none;
        d=google.com; s=arc-20160816;
        b=piLI38nEYyHfhHy35+vsq/F8OTBjrAmyM2MVN+7nyPYJ4wg1lI7tozW+blqD+zrzkq
         aZFGlrT9x3+Y/Lw/XDCLpZn8FinMFmxR5VQXNmM2y2Obv1sV4+yLbifSwKaGO7tYWXVW
         M/sjBUj9JHW6iBbGRl329J8sttvkZ68JX/odB5uGoc+d6DZMLG3Tcbk2cmE7zdjsV7o1
         RU/5BB5MpJ/k3f7UG/zPYzK5SrRGhlgtXEYsGnNgJahV4vzUA4pFTE4kFj3ZF7ITIIQ1
         tO/v77KU23my4V7sSB3YKkgf4tk1xMAcpBZtW0mkq/aJyixY6bxDlAqAwh5NcVhow3Jd
         hblQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=fXORVYkcDLHNEAm0RShm5ax3jfzp9tvR8LVTAury0n4=;
        b=t7FPHqp4EPiSuvRMFqBvnoRoh1gLiR1DBZNUN0w63ZlVNfnxfMUjtEUkgM1D2+J+lk
         bTwFnfa1TskPGBlJBWerBXB1nzJehwaK8Zz4cF0iRI5csEP6d6Voh3SIzCBuWVn2mhPd
         70ejrO/usk/JgFLbQjCjEvRCoFP/A3hhm/n79ApFuP7xUFIcRn2Lqk73vIymxqfNoY64
         FE1hv33u6PkG8xO+xfq4Q/yA10pPFhGoiKa2u7oL/KX8CdXqoQ9lMShfKb4EjY80y2zt
         Hygf2n5RUV7eMF3G7AJ+q6bLNwxx9N13EWGVhyAD8BUD/CF23UY6Xv6mbfA57cDq3nxW
         uR4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id b15si366041pfl.6.2021.07.01.02.20.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 02:20:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 4c2df932aa41473face25a63beb0cd60-20210701
X-UUID: 4c2df932aa41473face25a63beb0cd60-20210701
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 469874837; Thu, 01 Jul 2021 17:19:32 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 17:19:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 17:19:30 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>, <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH v2 2/2] Kbuild: lto: add make version checking
Date: Thu, 1 Jul 2021 17:19:22 +0800
Message-ID: <20210701091922.572-3-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210701091922.572-1-lecopzer.chen@mediatek.com>
References: <20210701091922.572-1-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138
 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

LTO with MODVERSIONS will fail in generating correct CRC because
the makefile rule doesn't work for make with version 3.8X.[1]

Thus we need to check make version during selecting on LTO Kconfig.
and the suitable version should be 4.2(40200) which released in 2016[2].

[1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
[2] https://ftp.gnu.org/gnu/make/
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 129df498a8e1..beee68149da8 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -639,6 +639,7 @@ config HAS_LTO_CLANG
 	def_bool y
 	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
 	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
+	depends on !MODVERSIONS || MAKE_VERSION >= 40200
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701091922.572-3-lecopzer.chen%40mediatek.com.
