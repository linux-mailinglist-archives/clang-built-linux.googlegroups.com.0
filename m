Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBNUQ7KDAMGQEQBQ3Q3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D653B9B0E
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 05:29:59 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id i8-20020a9f3b080000b029023c932e01b8sf2075637uah.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 20:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625196598; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ct1SQjTzGlw+XnAXKCkkuA22lI/Ykc5w2tF2GVmbD1Svq4GI01Tm3PC+aFcRZQGlMo
         04CsdT102UTRbkDS5O10AfYY2UdY1yQzOp4mNvKNMl0LVmwxDmZEE6yNCGlR0symrJ7H
         AAbx14m6lOvoMDPBvyS4y/curuWBmnXmTmBnfnTvC5QV6wQfWsxgIv9OltlfTlP3G67a
         v4MCiOrzvkRrm1jVKvO7tmGyCw8e9qKeuvG80/hHCNm1BBiyRrmIH/598iLZUJLF2VWL
         mOqRuTl9XCPc7RjFhZb58VRkD8q5kzrjSYu+6IwDT3gCenHwmGjBn/GC45x/sBiKuH2I
         QLlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RXfWYZk4dH28xJyTKm7aItwfaDKJdyzzoaZeune37L8=;
        b=pEUo27PPfHFlGttmAOWtgMl+dcCAXU7QujjeVOTbXrNeNxsyyfu9k5NjBYOiyH4LC5
         qNNixisP8jzCfYzEtNdNmGbGOfaXKpuCHBmuVc6A1RM+7NR91zBZ85ICSfBk3lLewNr/
         SRzyrOJDCcFtOwLSRkVC8B4Nley7vU7H8/ntCnHQgGz/KIJ7WYO5I3v98iKpmhhiaBRq
         JmbBs1XFtJR8k3PNwCeMLoz1LTKQkKmZ5v5QQO4p9BWTc3QyM/J4UG5EvKqd+5AFrDIY
         Bh1pLgO7rVdWlXlKtFXUu05Zt8ld8KqTAr9zd+lCyKRkB+6NTlHe8HYh1lCAvCl/HQCK
         cf3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RXfWYZk4dH28xJyTKm7aItwfaDKJdyzzoaZeune37L8=;
        b=RDxrtyn5FkgN2MvkRMSHqWhZ31P38DRt2K79TAof+C/AAuUTvwtTqsjnUViVV7MP/H
         KkGHhaeFy8y/8yMwjTi3dop2kKq131h+qAwPHEUbkmO0DwWLCCkuOOwe7ZhR7ejHgzEK
         480cWhdtMLc5w9VsJ9oI1Bg8KgqiFmBaEEnDQbJsaBOTmFCEV2B0V67KyCTWgULcjHsE
         uuFLrW8qCi3PrYPR7ISKlDzOmt5tly1rOKlBjib+R2Pu9utKjrMGJO1KCPNTpjt1R+Zq
         66PgEUYPyLEpfwFi3D7JbZn/dxIqWrdD87ehc36proaGHvNYRB7xTTMIbrHShMfv97D/
         mdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RXfWYZk4dH28xJyTKm7aItwfaDKJdyzzoaZeune37L8=;
        b=VC3TjcrCo4rIm0+Hfhpj2K+06oLO1lDi+BITve52PUl3coul3Bf2LyyPybKSzXT892
         RuSd9PhIZPAPqGiEScOTZohvoee62fl+3UVIF4kmr7RZuXRmxJjAAtZJ2ulCRruwB5p0
         Eq8nGh1jJXAx2AzymffxTxKatjJVm5Dnhh21amIBFivZS24WvCl00vVlAMWP8mfmwzzf
         k8D0kfnx9OGaYNvJXPId4MQQ5yBNH3/pev3ma3pWnrDq8GLCkERld3gsJrytE0kxW/wJ
         5PgfnCexEk9YqdvlypWp1786/Xqxgf4CdIj7U79Jl82BGDVODQpKKdggUWCPI7dxCQwV
         XH/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JoBAnddTWiETWthErQMYHRyeLoAGHSUUOydbLvfPOe/8xsIeS
	MrQXmFGwm0FxoF0Aaw9hlTM=
X-Google-Smtp-Source: ABdhPJybdIAcybbIP5unnvctJZ/yQclcWJHcMH5hKJVRTRtITR6Qw83VgCfzthPx+yzZVWX5rHA+Rg==
X-Received: by 2002:ab0:2690:: with SMTP id t16mr4370626uao.9.1625196598487;
        Thu, 01 Jul 2021 20:29:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls1564434uak.4.gmail; Thu, 01 Jul
 2021 20:29:58 -0700 (PDT)
X-Received: by 2002:ab0:26c4:: with SMTP id b4mr4444780uap.10.1625196597953;
        Thu, 01 Jul 2021 20:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625196597; cv=none;
        d=google.com; s=arc-20160816;
        b=VsRv/yrrIAiQV2MFMctkCCO7dyk4t9gXRv1ir3+jLoAY1YmGWDnT30jTWOQYCpMG1z
         RiY+r4MFvLNQtCySptGEnNeHEEL6e0EFc9BtpRJDAoMNuZseXvz5y4bRNei5wiaicQOT
         qYMapksqhfyE0AnulIyXCRkNtqnYYqPUFs1d5Ua5bsG50j+RGUY0DWrui7WrPkJPQ6sX
         lpUnrmwNmqQK2NERyL9qKhRj8zYrIhmnxi9laZ7V2dVLVkErqpd2iK6A9Cn+rTACq5Tl
         plwD3yMbBmUoHMyiSj9o461X2WdqViOQBUXHlkareeSZ/nEaPDSamiR7AMNhkxsdLDON
         b1Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=fXORVYkcDLHNEAm0RShm5ax3jfzp9tvR8LVTAury0n4=;
        b=nOHXlTWRwXOaRC2jBL1/8SEEHtxGtKHQioKHkEyNvnzLtZr/lp77geOGjqdCNd2ymd
         Z/mKe+BcAddmBKC86YOACPcMWAK3hjERH9wkQVOgRxQOGHTnenvHGF2Bk3SfWK1WpfdD
         zGCikj94C4oOeJDhUCfstH/YhOLCnMkjjsXJ1tFne1lR02brGBobA8fdWNtbntxLrSGk
         g1R+KYqVm19afzDJARd2akOPXR5cFsNZ2CY8DLuJThKOrUtov0DZsSOBqm5vsp55rYBp
         GnAtOYFkehblnZO6aSQBg5AxHqbKLbsZf0KzXzYfkpdHEnCLK7c7bbGFomL41mKGvGSi
         xmeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id d66si277854vkg.3.2021.07.01.20.29.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 20:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 7d324bbd23d241958e61a76959ad5029-20210702
X-UUID: 7d324bbd23d241958e61a76959ad5029-20210702
Received: from mtkcas06.mediatek.inc [(172.21.101.30)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 746403066; Fri, 02 Jul 2021 11:29:48 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 2 Jul 2021 11:29:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 2 Jul 2021 11:29:46 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <ndesaulniers@google.com>, <keescook@chromium.org>,
	<samitolvanen@google.com>, <linux-kbuild@vger.kernel.org>,
	<nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH v3 2/2] Kbuild: lto: add make version checking
Date: Fri, 2 Jul 2021 11:29:43 +0800
Message-ID: <20210702032943.7865-3-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
References: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702032943.7865-3-lecopzer.chen%40mediatek.com.
