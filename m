Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBVEV62DAMGQE7LF6NXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 973803B8FC7
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 11:28:53 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id g14-20020ad4510e0000b02902890eb69b5asf3389752qvp.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 02:28:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625131732; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQAmXU/vPyuiaTTWFtRIyFpZhgck/M6Jt6Bc2YqADTbfjSzdtRgZKoTI1TYd3VEEze
         MXqkTnleDOzMO8TEdLjmCmi7P8jD8cYsbCfW+BULHMu6YLJl+51TAKvdcl7dcBqnAGMv
         uOiQkgZTB9UBZPMDGDCCoYO9O3lU//VeL4Z2gw2eA7piuNvCdZQtiDRj+StfXEnZ4u5n
         XZkn2x3OHUoZcDSSoYqydFfuxQz2jbdsdKEPSrJluwu9I+eWE6lPytDZLQ0lLDDqo6v8
         RKJrPPAE4klUKUgOgLbd1Q3iQ8o8VdAZeR1hbBUB19BMjh+zuFmqIkDLLUE6FyNQAKgB
         qO0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Usd2tMmSQDm0zRE3jRSEzOXLr3SoVpUALiwSzQbQ/RM=;
        b=mbTgpWIAg2ndnxlnaRvBivsG0krS+4ibWm9V2Jpj5SF9BjTSc5I9EMnLePrhhthqqJ
         FWSqW4TCxKhFLOXwk4xJoxFq+NnfaOzk10uIqtnA7SzFNeXLwFhcNn+lGXceyhqAGT3B
         Mn+Hn2/2wOYHeVAnA2orGRNn7S/9TVYnsR3rGNt3Bu1Xi4UXe65C1GaWrtGpO5waWboK
         HQxB+cGqHX2T4YsmylEmrB5nmsH3lqrn9LtLmbtG7K6C/4b/gz+AcFuTd+rzYUDVILZr
         pjbOwd2LNsO1UsmapURTrJdgk5B/TOaxHrHESsHdK05gdKVUrWddPquXJqc1Mmjw2EzG
         zLag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Usd2tMmSQDm0zRE3jRSEzOXLr3SoVpUALiwSzQbQ/RM=;
        b=fxsLNyTKuwREGxxyJu/wlgAgQMFDGU8xwS9SbgWmPBK8dOBrG2b3r29p93SV1ROPeb
         cRvZBmM85ENxh+QaL47xP+TVOe0LtZU0/7peFO0++R5JPWaWyVrG3/sOS3m7wcNDYzjk
         MNKFk+FWEJuxapwH5zre9d5l7ePYdUs+wgIi+BOQE4aZ9119MG4AWdqTKGDiiF9ptSCI
         7DdUE5v6W9TIHw4eQ3O6Y2vbAkAx+hgQQonzDZJemCuK2W1a7dXa9V4oUDbMKNobdAuD
         7TnzusHdrXskgqGc1fTSrR2QOrpwWn63E/E03jExPmpOvX6a9pyNCYEeqc0+ndTjoipm
         2TDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Usd2tMmSQDm0zRE3jRSEzOXLr3SoVpUALiwSzQbQ/RM=;
        b=IVl3WVJbTJoST+zHXzr6xabTAa64e6/L8YqPHox2+BLbxdO6wNIGXoTlebMjd9PCbG
         lnTYyFKpQEkq2QkZvumZyrGhE2Xj66jZ5L+xB0LqX/6zdwdcX96s0jf94982apsvkkrL
         1XSjenNZeygyVJuTruDIm2UQq/p7y/jeefQDYFjVz1+qaCR4pgNUim/QUdPmm095gDx+
         QwrY0riHp9irRs5pCbO5Fn0aPrm7t976UVgqVhsR7Q3wje+hZJjlul5dcM3U8R1hSSDe
         YmwWEpW5LBG2WF2orgtx5WLSActuaAcxD/5PJDzhrBQbEXMAUpAoBEBhqYeyhuup5EJL
         0Q/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318lhPghPabkBpG5s/BkCvG2nOaQd5vIncnT7X/CmL6wCAhSRBa
	FKvSfDf/x3R/sNdjaHgaEQ4=
X-Google-Smtp-Source: ABdhPJzW1HLJM2UlKzNRLxwKeR/qY9+UIY7HRHTH5OGqaRR3U2jeSPtnZLGcDKmOECD5AZpVIC+OWg==
X-Received: by 2002:a05:6214:a46:: with SMTP id ee6mr41620820qvb.42.1625131732566;
        Thu, 01 Jul 2021 02:28:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b3cc:: with SMTP id b12ls1869205qvf.9.gmail; Thu, 01 Jul
 2021 02:28:52 -0700 (PDT)
X-Received: by 2002:a0c:f850:: with SMTP id g16mr5060984qvo.5.1625131732095;
        Thu, 01 Jul 2021 02:28:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625131732; cv=none;
        d=google.com; s=arc-20160816;
        b=D4LDu7OFdgiT2GRrmLCPDR+5slfgPeK7XOmyj4OEPlCs5MPqAVgwzOt3HQOZJU7ITn
         BSFHSA97M/YCuGJ0OfDoGc1WMWYowPaDC4S5m9NIUlc2Wx5s4d4eegAOIQVDucaJ2fgj
         bQrgRk756SHnVw9B0/pPt41/hseo+8Ef216ihEEDYbnf+nTWNjBKEBSN40+zZYUoD2Yy
         REKcHM0/oRtp+lX1ztdtzZck+8ERdet8PDI5HqRbM7kQLPS5B6wqqfj7NGX/h/Um4Sfz
         d95GRkhakl3aCJIBKh9x1cc98xwqgvetgfnXYehNkmduXvsVnqlGqQ+Kn+DYVEiaj+Qw
         qKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=fXORVYkcDLHNEAm0RShm5ax3jfzp9tvR8LVTAury0n4=;
        b=CzaU9dw6JQ0oQyBvcgF0BTGojx7xjVPFFSYA47pJaIOHJMUlFbwHMzynVzFXf0XRON
         dERLDoD+2u0MZEcavGxjhzDOkq+DQDRasfSx1iQitZAP+QfZGwJWyENubwLOFXi7Y9I7
         NLv6TvhzrxnHMlPPA17LhreZ9xXhzuw05e8Z7HM2pNINNOWCvrjoxhp68dNueFtp/LN7
         WmoAoo6VXC8iuGnQI0VtaSVplbzSn2C1kwpZK8cCWMJrOt83Q2BUIlH0kS5AQQBflCEh
         AkEGA2y6oRv+CjpN6+qPvn8emXglCp49o3+JpLxFrYcGX/5+2Y0/9J+4NwwjLywsUm8R
         ktwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id v14si1637877qtp.2.2021.07.01.02.28.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 02:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: b615a9f6a19c41179839e914740b7e93-20210701
X-UUID: b615a9f6a19c41179839e914740b7e93-20210701
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 955993408; Thu, 01 Jul 2021 17:28:45 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 17:28:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 17:28:43 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>, <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [RESEND PATCH v2 2/2] Kbuild: lto: add make version checking
Date: Thu, 1 Jul 2021 17:28:40 +0800
Message-ID: <20210701092841.1419-3-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210701092841.1419-1-lecopzer.chen@mediatek.com>
References: <20210701092841.1419-1-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701092841.1419-3-lecopzer.chen%40mediatek.com.
