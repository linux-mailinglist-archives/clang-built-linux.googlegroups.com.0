Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBK6DVXXAKGQESYN4KYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A26FA0A2
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:51:40 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id c72sf585776ywb.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:51:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609899; cv=pass;
        d=google.com; s=arc-20160816;
        b=Llmrh8VasONIWuUV9XrsJa4ySwZl9MmVbFWvoX5UGV+bDgyc762HGgVQpXy8LuwBls
         GHNUdbCpNz5ls09BWLiqDxidQmPxy4E3T2n79v0yymO9l9PY58nAp1WEF2jLvbd1Io/r
         O4higOxcegwDtUuGDlv9jaQhym0SYRE6cLJFGbDCaWK+41UnSlfxLCOK7vkS1mBj39Zu
         UeiS8NK1TCWLu7wAvq63GMUyukeiKNbYydqYB4m6v6Yd5XikS08nCIe5XtWjIP9uPt5j
         TSln24kJMN7H4sy83ymmZlYMZ4H5jgZZ29UNz6SOC0jVm4wyH1FcFcRNYSp/Zaeg3YNT
         RjEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fR0NEeymZCXYzX97X8H9XMXh3l5OKNTnmBCdUDBlhcw=;
        b=mknsssXjM43TvKlSSQxuuKVF20+p0pjJmav2fe9vpKhsJCOxCVGFu1+bSYv6FvnYNh
         xb9FwqGXcd9vrsV6usPSvUi1FPuxL3scdME6+Q8nSYXySoiAS8Q6tx1S+CAXoH6e0+Vy
         Fw4ikkZnTWWXShxR1g1RfIxMugjVBlZaMFDgWY1X5W7IeEXQMptQGa7vq4aUxKmUMgzj
         Y1212NCMz103cwQTh2q3KVgoQk7ZxQxdMWj2zklKAxBDnzXSuHv4zLuPQpySBK1Xwd/6
         LKy3IR0jk2qsXCpCX596hdmODf+fCDYBiqtNWZcXOQqnY3FTAGUXpvUe/sppnSaO+AHt
         nBxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="EL+Oo/Lg";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fR0NEeymZCXYzX97X8H9XMXh3l5OKNTnmBCdUDBlhcw=;
        b=nCOLj3Jaa/e2mIXFMg1dOd30B1MRsWyCLWgBpV6RPR3XkKYnKS8OBMvoVN1mUFWoiF
         1UeinVG8eLCEtwhODxvoz7POqTufe995SMOpZ2nJhMMcmYa2JxvxSYXIYvgSTmzqwDI5
         geG6/aegtXsqS4Vr8xvsAWiex3PdAoL9wE4Uq8Xrh2maLoYUfmDwHLY+ms1iz7n6wmTe
         PpGlFd75z+NHcBAQl+tCeLaWNaHnt2aCLCBNa0bf66vWvAzIeVXPjnjkAJSzyuo4Ai+a
         EnKX28iNvuFDCIEcrgYuONhIS+7AjnuF4WHVOuTszNiqiHsyc+rCedLzO7jY0vqz4T4T
         IhWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fR0NEeymZCXYzX97X8H9XMXh3l5OKNTnmBCdUDBlhcw=;
        b=F0czC+r9/8PkZ6lRCkt73vs1hx/rKrGzTYlZuKGbbsge/VrrHxCoVP0BgKrwDTPw+U
         g+6ss86h3oYtSJFX2czNHMd3TBCPZPBB2rxcZPivZeel2ZgBWUGhnMzWCgem0ncM7YXo
         oUqgrokImVsOpHfmHRdy2jDPIw2XxwIq7yQws1Wi5EOTLjdpVS+S0bZw7AH2ZFPCdWhG
         NuyLKlDmQvEahHk48osXDC4djicV5QB5u9l194N2ddbForjRU66ldErv530OpgeH4yPX
         9OpGtn0I6ty1PWBRBnVEZKdAL+YkfdZOPJMi2TgxNtXEbQGls9duGD+BrhLRBsZrsZuQ
         JpRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3RKt69mXeXEQntI1rfvbMFA1O++kAeM9gzqzX3uvfqk7ntikc
	6ydMH6OvsviMwlepM8j0gbA=
X-Google-Smtp-Source: APXvYqx4kV6o1/5lqgFUzo7Ij74JjF4mzOtf3mxTY/dEkV4OeY4M5tioxL0m791CEiwLR7zGM3UzHA==
X-Received: by 2002:a25:3087:: with SMTP id w129mr785984ybw.511.1573609899172;
        Tue, 12 Nov 2019 17:51:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2388:: with SMTP id j130ls199650ybj.7.gmail; Tue, 12 Nov
 2019 17:51:38 -0800 (PST)
X-Received: by 2002:a25:cc91:: with SMTP id l139mr851600ybf.271.1573609898820;
        Tue, 12 Nov 2019 17:51:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609898; cv=none;
        d=google.com; s=arc-20160816;
        b=s3FlY2USYV1sbC1AvvriElM7GDhTQuwB79vrqswcjGdjiCaGJZgImi69wxlb20gIfM
         2pJ73J8kOkZ2VRPr+vDcjoksJ2kpj50P2RFKhRotDEaX1oSQUHbp/cawhSVsd03ZUsqd
         GEMhfUxOb8za2pVCdleW7yfkrN7s0M6Q16sjG9z1adWOSiaul6jjJXBH3bO5fWr1JYuW
         MygjMsexUhCQ3hCAtmNnN8apJXSRPuzuMh3+red67cdMq0jeX4gtvLdPtzuRnrFJIiAW
         cJtC8QIH/g+Q7MDQxBlmuXsD/SiflR+YZioQN9rpSxNRsgRgmHXfj70YbRpgXxA46oiF
         R7aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PlxZ8sLz77kUhbjALIEziuqOTdhWBDq1BSjzlMyhZUs=;
        b=k7hZbylH5Gj0GuzoHiEQBMVfs5GyylOoDcRTkoEvIHKtFwKy/GeLKX0eViec0lSKTV
         qqFWI19TPPrsfYNOeVWhlhrDAHSblwPFTRfNLnYfvaRMooiLWVhIIj3QUFnwZjk5lTWa
         2YFhn9ORHK8Q1UcGlQgRnLHztqZw8AexyKXaZ53GT9y9uErQvdxGpaa0/msTaEt/vako
         fFNHnvi6Tp9wqd0Vf2KO1gTKZDkauNaFryBr8sS7/8QTZZJjM5v1nNfu33PrtiBX8kk9
         JXe/WGBFY+h6l9cVvSuUPlEFUZRlU+czA6HxQoo37npvTxzR439R/Ecg339TzXe4/F4X
         hVtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="EL+Oo/Lg";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x9si47561ybd.0.2019.11.12.17.51.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:51:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 066F7222D3;
	Wed, 13 Nov 2019 01:51:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 053/209] cxgb4: Use proper enum in cxgb4_dcb_handle_fw_update
Date: Tue, 12 Nov 2019 20:47:49 -0500
Message-Id: <20191113015025.9685-53-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="EL+Oo/Lg";       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 3b0b8f0d9a259f6a428af63e7a77547325f8e081 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:303:7: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                         ? CXGB4_DCB_STATE_FW_ALLSYNCED
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:304:7: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                         : CXGB4_DCB_STATE_FW_INCOMPLETE);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
2 warnings generated.

Use the equivalent value of the expected type to silence Clang while
resulting in no functional change.

CXGB4_DCB_STATE_FW_INCOMPLETE = CXGB4_DCB_INPUT_FW_INCOMPLETE = 2
CXGB4_DCB_STATE_FW_ALLSYNCED = CXGB4_DCB_INPUT_FW_ALLSYNCED = 3

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
index b34f0f077a310..838692948c0b2 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
@@ -273,8 +273,8 @@ void cxgb4_dcb_handle_fw_update(struct adapter *adap,
 		enum cxgb4_dcb_state_input input =
 			((pcmd->u.dcb.control.all_syncd_pkd &
 			  FW_PORT_CMD_ALL_SYNCD_F)
-			 ? CXGB4_DCB_STATE_FW_ALLSYNCED
-			 : CXGB4_DCB_STATE_FW_INCOMPLETE);
+			 ? CXGB4_DCB_INPUT_FW_ALLSYNCED
+			 : CXGB4_DCB_INPUT_FW_INCOMPLETE);
 
 		if (dcb->dcb_version != FW_PORT_DCB_VER_UNKNOWN) {
 			dcb_running_version = FW_PORT_CMD_DCB_VERSION_G(
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-53-sashal%40kernel.org.
