Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB4PWSCDQMGQEYLKJ3DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF483BCC13
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:16:02 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id c129-20020a6235870000b0290316088e2a39sf8707285pfa.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:16:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570161; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZZXG/e6MlemtWUMLi0poVjyvmgMxSLxb0dySLTrzinVa++ue+j/waIC4KYeAaJv9YR
         h15Qs1VoEEtL57rCxtepCwD0v0C39/wJL/qmt+YV0MYlBMGUEYMPAtQkJ1KDmyKmC91w
         Veac8A0UBCs/9mEbTdVVuVnbT0j6g5zjHc7rVp6ZVm7XjM0yw7L1onUriTObPnBCV2cA
         C25QrcWxeHYRl1mtzxq3Fnn1/XivgIHhfhqQfhd89xYuBYa3HJ8m3s+vA9sXCzaP/ELn
         v9VPsn+pqsCVTzg7VOEqE474PHL8SzDQQIqZJSIhFAK5YizQPXBARsqg0Ud9AWGNOYh2
         LsLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=z+OA8rie02EgDCS/emJ+d3advDDhAQywHluug4jrA3A=;
        b=kFOOnNMFxxyeko5/YVr7It3rQs3DPI6esx+SU3q3g3YbNDEcFltoojELDGn/Tl/bBi
         3c/g5xmxe4iSQkdjmVPfA96SfzXRQYlpxFXZFDNL6pFefDczTLxlEOFukfHgNbFOjPFZ
         nQGj9beyR5YM86PlgtzWQ5jr80oP2goVcrOANbRqqrYxiePg9lsuGJyDTZOZeuSYyzjm
         hl8NcgLu+uqaSOioOjHt0bL30/LLStI4EfLRMaRXml69FaYV16d9VgIIefAvFY823pOw
         YbJieXED2tBgTW260DIRj2bIiOmGfUSCvFTNkaW6JIltKPjh1g2MBbsicPUIRpG2vzbI
         7i2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hM765qP4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+OA8rie02EgDCS/emJ+d3advDDhAQywHluug4jrA3A=;
        b=hdJeM3RpHIrl3xKj8L69uzp1PL33zrx6U75ksYuHbXASFPgnh1BNDoia8DoQ/fFDHm
         tEh/Klmklo+j3uuqFtb6wQr5ssIQmeukoY7PPJ0PMXzmjUqGyv68SBBSpKeFCdBS5D/Z
         gWNmY/OuZcS7ux7RSultrzkPQ0kwFjh9CrP+ChAGO8HFB+ae1aSNVCTnpeKWtf4QdLj0
         pdGHLx73qfL5i3reZpLd1yPqCNvq1nT2HZI48nlgv7q1vSq7ogNZ4DNoJx+z7pWtHl4+
         KYsjdOxWmD8x+z4ac9sNagdfw7b9HsuBZC6myIK2vI6DSEAlVhf0mcnEbLmdMq/Tm1jX
         BChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+OA8rie02EgDCS/emJ+d3advDDhAQywHluug4jrA3A=;
        b=SPx9XdJSXAhnzD0w9lOs7PrG/ZK5Mayn7/iroLgiFVy1JJ3I+b1QDb8vVJ1sTAr2Wf
         7b8kppnJ3pr0BPVx6PEuqtt7VMmhIH5lhcmnAvsofIL97rKBNc+f5UoPkjK3XYA92ymZ
         pcXhsrxD3s/mDLKiQOMkvv4rBkAOZVEaMe8/RVV7IgKYsGs/Yv+f8j+d6vMXYvC9PAzp
         x+rsVU2AOkfQAKRreH4VEolKuvKNrYm/hKaycWCcnSypvvGFXnnYptjV3yVQUbkAIZxG
         fo40bay+qb59MKM7/u3y85F8vThaDW1iyMgvxd1EFT3GTkjVnu9XGwztZdbasgapZGr3
         zTTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RuzH44pyllVBcvZV+W3ubKJHDsl7C6xuWBidje+chiXUftwzO
	2n+UXzkaufRG6GB55r4oDdU=
X-Google-Smtp-Source: ABdhPJzAV8522xmzcysfHPn70mhlt4XuHbW5zzMJEOJvuoCfl/WoFoKhZvX6vgxbtGGZAZsu+SOjtw==
X-Received: by 2002:a17:90a:4490:: with SMTP id t16mr3831484pjg.183.1625570161310;
        Tue, 06 Jul 2021 04:16:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:141:: with SMTP id em1ls12522273pjb.3.gmail; Tue, 06
 Jul 2021 04:16:00 -0700 (PDT)
X-Received: by 2002:a17:90a:588b:: with SMTP id j11mr19616354pji.114.1625570160671;
        Tue, 06 Jul 2021 04:16:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570160; cv=none;
        d=google.com; s=arc-20160816;
        b=D2XCHb6tXKHCw4W2A3mSzTFf/YKpBBn/CFSU8A+azN6algj+4OBUWsHWy4VBasDkbW
         JhcRxkwog9sRHKWBL9v0Qmfnhffc0ZAFalZywTBJxdujNFCHGWuwWm2xVofjx4yxzU9q
         wovUitSUgd3B/lmEAO28TFOFPd3wuKM2LlCJ48C9N2h3kH9iSuS+fChtUOYh7409nTdG
         fy49tE+uTD0KZ1R5IKtMVKYTgOA6mEhjFoXmhuQlefZnmCiOEj3lszet5wI5/nxKraye
         NkKe3oRvC3BI60AX9/ulwQR0WckQ4CG/vgUdg6ekw+DcZZb1Ls0WMzYBu7Y575JHwEnd
         ILGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nDPbwr/DfUeg2J9jPiwFzIvWkax/qHtWh6SRKMm/JLM=;
        b=J6+srD+oo6dj3eAqcsFHiDfAM6Ne5YoyxVAxIDhRWKKFmSRL6u2+Hy6A6EmypdcNTf
         4dx81PebpZqB+COKKyD5JbQiKLqDq+qyGhOhTnPtP4kL35g/+ZjOWsON68N7NyImteOO
         FLebeMQR6T9rHsUpwJs/OU42UwkBVbRUNvsCaCL5GPmHzne4dDOZvcwAJwX7FU1FwM03
         tNjfSEX3/VQdxxC3v7WbrJNEvGKiXpY/1kIL7aZhBD7tmJ+UG+RwZxrd9160iako93VA
         0tY3y+xENeP+JGRxEhiicGsNg/9gL9zq0qPZ7pRKIEMkjGp6me5SUrvBXvKz60q7X9fd
         jTyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hM765qP4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q7si1908013pgf.3.2021.07.06.04.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:16:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7591661C78;
	Tue,  6 Jul 2021 11:15:59 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.13 081/189] ice: fix clang warning regarding deadcode.DeadStores
Date: Tue,  6 Jul 2021 07:12:21 -0400
Message-Id: <20210706111409.2058071-81-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111409.2058071-1-sashal@kernel.org>
References: <20210706111409.2058071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hM765qP4;       spf=pass
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
index 99301ad95290..1f30f24648d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3462,13 +3462,9 @@ static int
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
 		ec->use_adaptive_rx_coalesce = ITR_IS_DYNAMIC(rc);
@@ -3480,7 +3476,7 @@ ice_get_rc_coalesce(struct ethtool_coalesce *ec, enum ice_container_type c_type,
 		ec->tx_coalesce_usecs = rc->itr_setting;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706111409.2058071-81-sashal%40kernel.org.
