Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHUVZLZQKGQEQO7ZYBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7840918A486
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:54:55 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id c7sf18075737iog.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:54:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584564894; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2LIR0vwJI14n7BpXuqTS1qpzparyr7m3UXU+Em4SXTPygIh5+RcwSazVeWlkYWUv2
         IoWrzXwkQF2Sn38os4RgogTSPuCqPgyH9N1ufE73eAokp8mulEhNhMrhHwQ4CBae2+xq
         zqsvz8eaIIRwcJbMvchJF+3q5AT2ucpi2TSHBKQD99AzK6gZ8wyC+mCmbWgSy9X443o2
         /EU9AJ+emQBcpgLWB8qmPrvjzYqpFlU0hAcFP+QYa74v57Ef/wY2L3IoTXhiLV0PhXsa
         d6TBP+AJwlhrFH3+jpsmanBCje47Z69SpDAxR8m444oaEDdK8X+ax7RhsRbYg65q+JR0
         dA1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zSOx/sIm8vjpWnFS7+Jvzy/5ajQRYoPaG3z/cOTteOk=;
        b=zIFSxN+ywVLqMAA5M8pgEdbtheWtxUi23w/qatJGrmQeozgOya0/Ui9ulMYsywsf4b
         KcnlP9AJurHB53JFwBlsTLhdZwZd0jkf5BhtMYn5ZytAkrD2aKQNRt1Ps8zeGy1JOBtv
         x5SKuuWhejbCzeYLkKn3pc1NqGB9b/+TtjCoDSzDBOsatYs4V241TNtb/jCP42XWo7Ds
         zmt1r21mRAGbsazUIXvVe88m/Sk9JBqh7yrhkcTcp5xYugKiTfn4aKJBQ1LDV+pVQM1d
         f2xC6yUsAdXyUb2udC2St0JrIxA8lI4hLg31PMNYBJFAapjnRcQW0lbThVpIW3HPCAiG
         uytg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gjuQmWbM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zSOx/sIm8vjpWnFS7+Jvzy/5ajQRYoPaG3z/cOTteOk=;
        b=i7rxv4CwSbjOImjcMorNQtav/fYapgdRswEjfjqe3X6A6JuvdoQ/kh7q5DHdUEUNPi
         8wTBR2DhlWebsugnxEZcqZfNJCwHuycIj2igEJcg5h5yz4YMkv8b2ySLE74OxIg2touv
         bRs4wprwJTDUi2ODDWjYcZD9LvZWQqa19/xI+esYmCyPAVsRoSI3O5IHuN8D+HTyF3DW
         foMYYd7syYogH/2Mels14w5d3C5LJuDG+KS+K+RkQbdA49VOliyKAZo0dpFN1Wq+ub0u
         b7I9P0qGPrNxeDxRWT5KSNL7BjhS/7V9nbC3Riz+PLrson7y0LyYF/T9A2xWhgxnfPN7
         tN7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zSOx/sIm8vjpWnFS7+Jvzy/5ajQRYoPaG3z/cOTteOk=;
        b=X+vjF5cNNnlWfdVTLGHy8txOIfdqYb9YvbUi7C+b2vBmux2tTmSQ11i2c1e9JqMjFa
         MYDg7ZsPTPcXtxYbMtcgtzqYuYAA35E6EKlrdkYz+V7nUPUywNIRxf+sujiId6sLakSC
         9v13/NmQgyKU1Dr0wOmS91OBxwrLA42RZXz7C98WGkvTPhgPDE4Tm8XGtX9QjYNFB+PC
         U6qMp8O4BlS/Eos9dor/r5wOfJtE1bAdSPels7iBu9ndA5ToovSNmoqqzjbKkGHPgp8m
         r7wv+nrh5xWRn/iwwmPpoKRA+po/gKdafGRJuQXBT/1Nnns4LM0jQo1XiPvd3X07WYcr
         bPUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0mYDr94davA90QeTDzyRgqNf6+jh3JZaUYFrYEu+mcApyiy5x0
	SoXZQ4xYILxIWxmhR1JPK3k=
X-Google-Smtp-Source: ADFU+vtbz2XlSpOG0O4zH0Jv9keO4LTYPdprkX16YwMCesDAVcDXDhit9/4vC7QTWGrYZp88QtHg/g==
X-Received: by 2002:a92:280f:: with SMTP id l15mr5651208ilf.188.1584564894473;
        Wed, 18 Mar 2020 13:54:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cb08:: with SMTP id j8ls3339578jap.4.gmail; Wed, 18 Mar
 2020 13:54:54 -0700 (PDT)
X-Received: by 2002:a02:cc6f:: with SMTP id j15mr6450577jaq.80.1584564894098;
        Wed, 18 Mar 2020 13:54:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584564894; cv=none;
        d=google.com; s=arc-20160816;
        b=vppW8BnnZi767q9vr3qPD4d9lWakgo9buofqO/Y7FWrxk0Gq05yjJuQok8tp/zv12T
         hIS88xUtd6+QYMlDmjhsoz3lYzYVzuyMy57h6GMQzcDzwgqFFEjrtx8kfpkPiX3hzma2
         J63OF7AHigKhwjYahf8JqTMHnHIkF08e6QHKNEIsgMcuUkRUIiWTHBeq/RYMgbodrypl
         FwuwHva7ti/8DAPpPrR4TpRCijRi/GloYxqTVy4rz99U0pwo6bC2bC2cV4aN+az4KFnp
         AbivaidetACAtPFCFtPlVLAyT51aAyDGRPAgNUuXyklAiH09E1Hb50kh8denMcvH3oky
         DEPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qAsn/QlQsmpTic22sxC6ksdpZEe0o0rlwKNYR9ZN9MY=;
        b=v8aBx7QH5YYyYwsPg0TnT90ptcxwqHZf6CL0yfw3OPqW7BTOBuSI7TPHfmgl0VXCeP
         TogNccQ/xTHAk2ZAb7+HneIoLhoEcPrFCf3nIz4etfG4qsC8nwxJ7+vD0Zye+5lYzLo6
         /0mANzZRfPSXh47iGHj3AvvLN3eTk3/AJxGC1+8gWeBMAx0ffOs4u/D2eaFfXkXXM77Y
         WDea4qhNlfQtp0L5DuYVJ+hO4T2NDBqto02cnWUdR9bGpplhZvE56+LU9Pqd32LT7Ju9
         2HZQXePOZrZ/ZBf3ira4s++xUPwki1lOxkCvl86kolNAK3BYwXN5e4XdtL20sVVJh7lq
         6Tvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gjuQmWbM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s201si6019ilc.0.2020.03.18.13.54.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 87EF221707;
	Wed, 18 Mar 2020 20:54:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Madalin Bucur <madalin.bucur@oss.nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 61/73] dpaa_eth: Remove unnecessary boolean expression in dpaa_get_headroom
Date: Wed, 18 Mar 2020 16:53:25 -0400
Message-Id: <20200318205337.16279-61-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205337.16279-1-sashal@kernel.org>
References: <20200318205337.16279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gjuQmWbM;       spf=pass
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
index e130233b50853..00c4beb760c35 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -2770,9 +2770,7 @@ static inline u16 dpaa_get_headroom(struct dpaa_buffer_layout *bl)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318205337.16279-61-sashal%40kernel.org.
