Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBXXYSCDQMGQEKKPJ3UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7B93BCCEA
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:19:59 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id 3-20020a4a03030000b029024950bdb69dsf10249537ooi.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:19:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570399; cv=pass;
        d=google.com; s=arc-20160816;
        b=VTuGXVXvX61SrYkHDVdHCAnJ1kIc3AbSSzhcEG9RWNFwKughcwTjfjr0RtqofAPrti
         4HJcgc289ItstAMiGprGNASOu4mm8jgiin9JHY7cBHL9CVXuJ1T+GNV8ATcVs/6VCfdK
         aeCbVKFL0QMAij1K7m+lTQhc9ehZpnp8bfTpX6BRfsWwKlGEViEH334KOSKljVbqXOrO
         HtMEtqXDyM7cr4rk1d3a6DzeR2y3SCFZvhM42d2FEgZUoSbQYunvxB3rL0ASEcYMOnPz
         5UtrHD9sQY4s+CH6fl159vjkGJQEsgQ7pchBI2n5euc3/7f9sLWxI0VYzdIMVqwruP3c
         j3Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=65IvX/qIiGYEXgHKaDfGUrhzfugKw0vmMi0Usl7ZUSk=;
        b=PCszYTCdheTV5nBW0gEKJleexENQ6CAlQXyPlBTJXuoNfyonZCdkgU8/h4n2qHlCUQ
         Wtxu7ElOObV4Tu5zgpjVwDqC6G5OAJ2fOSnC3/sZMruAKBBim39W1klia8Z6BkJJ8nTu
         qyrEgs1sYb0VIc+UeY5iDSP3ZNtK2dwiJYNSaiD2UZ0VyIb11P1HogQQo7/TYb+mXbEM
         0n33cpUP1tJE02NKTwrMo4WiPhCYM4bEOC4rFupCPbewlaRG0U2jdnggyUjG+L+piT1+
         +hgjezROQInaxfCok0mspaP7+LhtFopiJCW7yjsa/LaxBLiOP2Uf5Ppkfs1cxFpWlQLa
         XyjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tCzJbeL5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=65IvX/qIiGYEXgHKaDfGUrhzfugKw0vmMi0Usl7ZUSk=;
        b=oYpjDD0NGHsKTrZ7qELnHKozNBRT59eLdQY0al0Z5eBquRQIbIq+n03K+USMjnhshS
         CST7gvSMTcWasVxN8Dk4ofIqwJB7FYaNBXR9Oy7jg79vZfxeNK8Di6DaNB4r4t7NA8HD
         jS+ULSjTB5//7e/cdKxYYI6Kx1KF56jsJ3c9IlGnXCrggaEb9EN5b1EFEXfsgQd3j+hm
         I7cjYVe2Glfvvx39prUsVutH6pHiSaPy17VId8rFPin5QLPN/d23oss9db42I2GM00Zq
         fuEOzMOSrr73zfHtqifnYewhjp7pmUJu9rKXNhQfsEIWrtdGQScnByQ3VKe5oKkl54r2
         aIoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=65IvX/qIiGYEXgHKaDfGUrhzfugKw0vmMi0Usl7ZUSk=;
        b=HXC47/K6HDlxWYWQThPq5yPGffFhoBNGHzJ9IxKtdX/TsytfPyo+mWIFKIsHAvH6c0
         awjxbp1xJ5Ak6Mw6w6lVemsj5U1fJLxWk04ukCqH2aBYt4K2whDe1Wzs2i4YreE2TZbe
         wauEd38SLL5qoz43r2s/VjLWfBC7Qou26aryxBPgl/m7pepaXLnE1jtm202EvIXshBvc
         cbPRGxgeZogMf+kmFw/XL2XmnlH4h7p3U2gDTKranAXpda2+33FKD7Ajc74bm7eymN2Z
         TrcuWdi1M7AV2vbebnzXxsxsTmPagL3yfJM/9HOVBuALAACykAMFtOA++IdtyAystyl9
         Ik7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KjhLnElOL9pk75ANlruF/6sZyEcrtqNJiwWy/n7bAoJM1fXqF
	TOsMPpR7FBzf+vhgp9OK/eY=
X-Google-Smtp-Source: ABdhPJx2J4JZirDohYEVT1VPFjaG4xacDYC/RYa8iunoaIuLNcorxSl/9euvGRr+Wx2dIOEoVm9dBw==
X-Received: by 2002:a05:6830:911:: with SMTP id v17mr14300525ott.182.1625570398966;
        Tue, 06 Jul 2021 04:19:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3d9:: with SMTP id o25ls2741126oie.11.gmail; Tue,
 06 Jul 2021 04:19:58 -0700 (PDT)
X-Received: by 2002:aca:b7c1:: with SMTP id h184mr5155136oif.17.1625570398631;
        Tue, 06 Jul 2021 04:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570398; cv=none;
        d=google.com; s=arc-20160816;
        b=i3ew8Hum+BUE6dCUvNC35GX63i87/4NC11voovuFRpsYrBf5Ls4bL56LQCkrBE0+VH
         PylY/L0nEzC5eDsqSfxwj5h1MN+zWQAVh1QY/sYQYkT/CuzX/6xJiE39vVzqCdXyf0zV
         gNuxXlCLG7jYsKwwdhH2t8woF678coRvRlpRU00RDzu4ewxKlujiPKL+fiVUacUzPcm9
         8xwOoZUExWAiu89VVocXcSEBwxPyH3mr/JRt1HRYHr07zDc7ygz+sKhq974u7M30imlu
         A8MvsKjF8HPjJAoocpLVPejMfGf/2XOmqQXTm0p+8YG2e7bplj8u2u851dU6cRAJoqiH
         5Rxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dYQXrceb8XE5/8X8RWAgGauA2/M5vXdlKKaHjNuwqgk=;
        b=NZxEvuCoOGvrIciVXsKTGk86diuiaYFhqKezhz6YaMh+xEuYx+1Zo+UizrQpYvsS2Q
         SaWquQx9zqQyPNs+wy9kq5iFs8CYkHwIsjBRkjzgVHjHGAky4SWIaJT5BQEM+h1ycQS8
         CUq/dZPAXzezJOsa1DjFkGr/H2Y/1KS52jvIVOYg01TNf0MS4atZZ7KirJXFCB+bKZoR
         dwQDrZyEckX2sVwXUFrPF/S6LJagoCZl6cBor/2saXEoIKGEJ/8ImwG2MI1YbkqiPqPU
         Z94Yx2mzjtaoDNqcm019nVO51BKPHbzAbwX0XFfExWkt30A0NUatWOgKuWTQTLjY79H0
         BLpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tCzJbeL5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si2200652ooq.1.2021.07.06.04.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ECCB261D5C;
	Tue,  6 Jul 2021 11:19:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
	Tony Brelinski <tonyx.brelinski@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 068/160] ice: fix clang warning regarding deadcode.DeadStores
Date: Tue,  6 Jul 2021 07:16:54 -0400
Message-Id: <20210706111827.2060499-68-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111827.2060499-1-sashal@kernel.org>
References: <20210706111827.2060499-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tCzJbeL5;       spf=pass
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

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

[ Upstream commit 7e94090ae13e1ae5fe8bd3a9cd08136260bb7039 ]

clang generates deadcode.DeadStores warnings when a variable
is used to read a value, but then that value isn't used later
in the code. Fix this warning.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Tested-by: Tony Brelinski <tonyx.brelinski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f80fff97d8dc..0d136708f960 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3492,13 +3492,9 @@ static int
 ice_get_rc_coalesce(struct ethtool_coalesce *ec, enum ice_container_type c_type,
 		    struct ice_ring_container *rc)
 {
-	struct ice_pf *pf;
-
 	if (!rc->ring)
 		return -EINVAL;
 
-	pf = rc->ring->vsi->back;
-
 	switch (c_type) {
 	case ICE_RX_CONTAINER:
 		ec->use_adaptive_rx_coalesce = ITR_IS_DYNAMIC(rc->itr_setting);
@@ -3510,7 +3506,7 @@ ice_get_rc_coalesce(struct ethtool_coalesce *ec, enum ice_container_type c_type,
 		ec->tx_coalesce_usecs = rc->itr_setting & ~ICE_ITR_DYNAMIC;
 		break;
 	default:
-		dev_dbg(ice_pf_to_dev(pf), "Invalid c_type %d\n", c_type);
+		dev_dbg(ice_pf_to_dev(rc->ring->vsi->back), "Invalid c_type %d\n", c_type);
 		return -EINVAL;
 	}
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706111827.2060499-68-sashal%40kernel.org.
