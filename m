Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVUVZLZQKGQEOXXMTIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 995DD18A4A9
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:55:51 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id g63sf32366otb.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:55:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584564950; cv=pass;
        d=google.com; s=arc-20160816;
        b=bWzw7hoOAj6PYo9RFsQMsdA9GtBtbOvLqcwUwaGzQqexsobr9vVntbul0YHXOva7QY
         OPoOyh4po0cDmyorTdtiqt5UFhu3Sp17Fgt/0CbrJyM2GjqU8l4SguJ1TCIdCFyj+WP1
         lDg2Me1emkrY1Uzy0FcGCbc7eaINuD1R0Q3DPhwpPQJKGZ0ZMswtfEuo3pGXFDx3eI03
         7qTzs5/MY4zCuyjt+i3VMAO15lPbnKAp73FHDP7juKCiHe1FZX2t3SRselIUJ59YWnex
         4l7di1o2/4PXIil7xmsZlWEjsLVO0Vl4vHmTmXpKyVWZohnnUcX08yusqMMfVdaOBiJn
         4uLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gLNSB/XgrBLP8sV/31USRem6VHhnkjL0SasoyyZ4RXA=;
        b=JIWotqeM6SYb8p85k/qA6Oy0kzQFlz3p4GI9iCGfisRtXjyn6p6yIKalPO8KiBY+cl
         VYoz3t2OWddGDTvqPIwNxF2Dr8t/uj5Ya4nmplh+hWB6dXuTZv+Gv4SCN0S7H/eumPB5
         NPxRX0MUCKYwQQDHaHaQsDb3tc0mt4p5Fa57uv/Sgw82/dlFdnUxQWCtoqELkM0RKQHg
         /gZJUOC1DrXfdAG0t6XUGRnvZE2u/3VXF4G14UgyXsHKdFsZWeFX/vuk2fhYuCdrTRxq
         aSgK1jqkMKWVA11KTskEVwx1ov6VX2+0DsSQBkwMmiii6ZSqBf0t6P6oTxjMTpxwZLAD
         0GDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cJ9jcOzz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gLNSB/XgrBLP8sV/31USRem6VHhnkjL0SasoyyZ4RXA=;
        b=teLKVnGweFouoOpWufuZw+sMmCw5WZ5R4sq/+I/k9zGlwrJANTXMRYTFJHGA43o+sT
         O9MBb0fk3WHDTIsR5ZXoazC8Oj4ETJp3uBA7enjje4yR5wEzznQc7efrUW+UqqUlPsvM
         8odPLzwiPtQE0C1xxJtFQIOs0jz/VkJpOWwcmHGu28+z/PSjHoJ92wftoh2X0vMafKN8
         gvj4p2XX1nbZVGZwnFODGcMfCBAP9b9SriN9t3MNTz2vF3dxsx8vxu8f6mQbexacPAya
         PAYZxDLKTU2c2ykrnQ/so1XT4hqiRv+oB4pi83a1bk+dq+HEgY47yLd7Oe2UtRFuaxYv
         L3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gLNSB/XgrBLP8sV/31USRem6VHhnkjL0SasoyyZ4RXA=;
        b=CfJlIMEghPQ/4Vgt4mdEtEYNOLm1YRpzackfG7oGD1kJRbW41brSTy7yp+Dbi2EEpV
         Vn3hYkqa8tvDPVQ06yz+/akiipb0byLQmCRTZu04OUmw+Vo4Z9BV4wWHLl4iqyFwW5VA
         0pg5szq6lxi09V5ya8TBE4MYQakddDgPf5ufamsBppJ7gy7n88x94x0+CmC95iOWwUNE
         je6aGs75FQX23KiKOKyxW4LH1CzGVoEV9ovAEk9RkCPFqFOvUOfyFuVtoQ48qTKVE/xM
         iqaQxeb0lmT56D/D5l5Y9rP9SpseUYuFimWVwtaPuLvYwTdREzAnxTtDs/D1GHlJsmsm
         YWRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3yk/xfscU6j4dAhrTDYXLwTugdhvKIx+WyZtdfDYCm8+4sR+46
	0I3TssMPCe1Iiz2hBpNHUHQ=
X-Google-Smtp-Source: ADFU+vska1lXOJK4QMHRYeaZX0out6ASi7Kv5h06232kiNuefLc2PPLiQBom+Mwg0dh3UlrHxWXdDA==
X-Received: by 2002:aca:4cd8:: with SMTP id z207mr4599491oia.155.1584564950181;
        Wed, 18 Mar 2020 13:55:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls183oih.8.gmail; Wed, 18 Mar
 2020 13:55:49 -0700 (PDT)
X-Received: by 2002:a05:6808:16:: with SMTP id u22mr4850479oic.127.1584564949826;
        Wed, 18 Mar 2020 13:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584564949; cv=none;
        d=google.com; s=arc-20160816;
        b=lVy/33EAZlTi5/K3l+njoCZe6OTzsl60w04M/CTcvL0ZxqzGsAMwIShE9x/PQwfqoM
         PDJb0libAIx+BMES7tmDy10uq8g3+xCt6EIC0uG5R4nH7cg7n4CnaspM1w+px0Bmnjje
         gybXsRfmFdAN9+shTaqYzInOY4x7diJhgbyDwb+S7d0IPEIY/J3LD77veUGApN+rXmIr
         6M4FSgJMw00FN9S8UmQEBoIMW4mQMtsAUWZEvCNF1IPgxym3N6gQGHdutqDU63MSXGbt
         SSU21STiBlYpL25krTNnsRkxthKY+zP/WZh2bQPdejYBLkP8Pd9NDA2IFfOjVfNxDq48
         e7FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QeE01Zrq/dHyri+whJCFUDBgYi5mS8Oe1vC9OCJ6p7c=;
        b=FSXyywnwzyBchVBbxCWbIkUtWgK9nM575bOtLPGrg0bOODdA94UT2gJjheZ4rzLY/V
         XbKOhr1GurJqyh4U+bcsPn4rJRk9Cne0SO+v9hgh3nQwDW5Ze7SSgsKen4I3u/Hb3zxL
         +5eSjOWLTC4daUt/9aO47vpO2VeEizWhZcbNcjPU2II34BBbVi9zDapVkQB9Dyh1+kkj
         OV1XW5t42kPCRf45ndVWTivfmn674B5Zs/0DucYgb2RMLNO4Ks1jiYiy6VCTMoTpVaxT
         9GLo8hmtnC2eoTBrfI/mI1MJyA6rda18aOvD66o+1kDwnUwn155dr65hEnkMutqFbHPP
         qQfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cJ9jcOzz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v19si12495oth.1.2020.03.18.13.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:55:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3D1F520A8B;
	Wed, 18 Mar 2020 20:55:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Madalin Bucur <madalin.bucur@oss.nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 33/37] dpaa_eth: Remove unnecessary boolean expression in dpaa_get_headroom
Date: Wed, 18 Mar 2020 16:55:05 -0400
Message-Id: <20200318205509.17053-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205509.17053-1-sashal@kernel.org>
References: <20200318205509.17053-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cJ9jcOzz;       spf=pass
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

[ Upstream commit 7395f62d95aafacdb9bd4996ec2f95b4a655d7e6 ]

Clang warns:

drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:2860:9: warning:
converting the result of '?:' with integer constants to a boolean always
evaluates to 'true' [-Wtautological-constant-compare]
        return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
               ^
drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:131:34: note: expanded
from macro 'DPAA_FD_DATA_ALIGNMENT'
\#define DPAA_FD_DATA_ALIGNMENT  (fman_has_errata_a050385() ? 64 : 16)
                                 ^
1 warning generated.

This was exposed by commit 3c68b8fffb48 ("dpaa_eth: FMan erratum A050385
workaround") even though it appears to have been an issue since the
introductory commit 9ad1a3749333 ("dpaa_eth: add support for DPAA
Ethernet") since DPAA_FD_DATA_ALIGNMENT has never been able to be zero.

Just replace the whole boolean expression with the true branch, as it is
always been true.

Link: https://github.com/ClangBuiltLinux/linux/issues/928
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Madalin Bucur <madalin.bucur@oss.nxp.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
index d7736c9c6339a..4b21ae27a9fde 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -2764,9 +2764,7 @@ static inline u16 dpaa_get_headroom(struct dpaa_buffer_layout *bl)
 	headroom = (u16)(bl->priv_data_size + DPAA_PARSE_RESULTS_SIZE +
 		DPAA_TIME_STAMP_SIZE + DPAA_HASH_RESULTS_SIZE);
 
-	return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
-					      DPAA_FD_DATA_ALIGNMENT) :
-					headroom;
+	return ALIGN(headroom, DPAA_FD_DATA_ALIGNMENT);
 }
 
 static int dpaa_eth_probe(struct platform_device *pdev)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318205509.17053-33-sashal%40kernel.org.
