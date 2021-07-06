Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBKX2SCDQMGQEWN3VFTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA863BCE1E
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:23:24 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id y12-20020a92d0cc0000b02901f63a682f89sf6828378ila.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:23:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570603; cv=pass;
        d=google.com; s=arc-20160816;
        b=jP844Qab5pxqZHZ/QTFHkaR09QsjUzhrFT/KdAQz8kUzDUx3BklZM8bIH/bybR9ziP
         VYUxoLIKnC7b2Lc3z5jUvCj/I0VlB55FOHFvPCoXa6UY/mFUX6VwK7FSfJtDUToCXztH
         7EJJUEk6/SM2tug2V/61S7qd6B9p4shlQByPMvA/X5HyGI/SDyYZIEd8Lnk6ZXh5mbab
         aniFwXqxBV2r9c/uYNQDvyidkDva0ngLkqrXtBDKMGsMywWYKZc63yqG+VcQbITrM5m6
         WZ1Vbs2ZbW00yr//lo88wkkzSjiESqGZaURWYXBNLSh5jnluJ3Ulu4nxC6qzBhSeVvJv
         mCqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=J53doAg2mNwdoflOXP/IKIE9skM8Sq4gGkK34DHSD4A=;
        b=Xvn5Nq9gRDZACQEmJSASOi/VO3B8gaxO5TY8sIguShOgjWuOv9iq3G5Ecshutay08L
         Jsrbl8d5piXeRKYjInNw+8QlMAaDumLUxN58uFyRzX7iDpPJ+JwNLdlEk4UOPW3LTyrk
         vz4MXuoZmyVw9aYTXg39C565EAwzdT6KtlRSMa3IdldRMYz5gP6LmvaAU6GEOGwpNwdB
         3iFH+xbRj4GyAuHNWK1vJ7TF8DH6zFp9AT/7AlVPbsXH7DVH8Gdl0f6JDcz4mgZtNbpH
         re2cg003jRIsK5knnI5MWPLN93sJ33MP98dJOcifEr4Prv220Yd2jEH51TU0PNlnFRTl
         dDAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W5EjakNu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J53doAg2mNwdoflOXP/IKIE9skM8Sq4gGkK34DHSD4A=;
        b=pgPIGIEKUli0jRBFqhl0g546Rm2KhvqNxWupdgmH84HeDS+EvOB0CBiUNupnFlmVPl
         1ZQoI28RTTGX2mWiqCxVfbYQvfUfKzwrREwK5t+wm9KqxH2vKd1/WWn3qc/szTWJMoiI
         WeTYiWTpUSOcIHhf1VvyPY5TyHJUU8rM9VmoKx7ZBR5M/VuT5MXdOVWbtrfWeHtHevoZ
         HWEQk6y0W18JV1oK9JxBN1wo6HHffMp6ACphnhGnr6ysHsCxTo1ZzdAanp+Y+iCQ8dCa
         X2R1E4AMo3YqfZ7mtpGqoWv79yWYwCqhdzQjm1ovSeEjqoE11lhpz3lYLj2TM2xGRinp
         Cbpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J53doAg2mNwdoflOXP/IKIE9skM8Sq4gGkK34DHSD4A=;
        b=NYUHK4mQrAvcTazgRMp7jbrftecdZMYnRJIztLoqGLQjtSGmoP5SfO4H7EHxOn7Gpf
         k5DAxU2zqPQNtRv6v37ANsk8NOr6HzKqAtizhfYirrAWJl9ZOTZa/PQvMW8W5gz0ZEQ8
         EwdpU9hBG2UVc3rPlsiq6XsMhAKWs9DLoXnKedXWqkp6m6tPvQXHyVd4u8hHTGzIao7v
         Izmgc1OxkqaZTY/XPwIpQmKXVDB+707BVAW+JdZJkX6i74di5wdkxRJtmRUxEbQW9Kjy
         BjifWrjpASYqsXJ9AlNz7tlW8vasVR+tAkFPtMa404b9N7CUOoJN+xCE/x41RTz4NEdN
         dHew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UPDfsHdffQ2r/NwuK/kx46me9HnDXW5ddjeqdYl0O+qXJl8uW
	Zh1BbfqRaagff2sE8uf61kE=
X-Google-Smtp-Source: ABdhPJydl4D1hdjBaVb3zjFGSeT3t531zs2PLS6YNaeiNQ16S+adncX8kI7ffsJGJrXaEEClukr+Tw==
X-Received: by 2002:a92:6610:: with SMTP id a16mr13851308ilc.124.1625570602132;
        Tue, 06 Jul 2021 04:23:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9bd2:: with SMTP id d18ls4037816ion.10.gmail; Tue, 06
 Jul 2021 04:23:21 -0700 (PDT)
X-Received: by 2002:a05:6602:1501:: with SMTP id g1mr716658iow.189.1625570601751;
        Tue, 06 Jul 2021 04:23:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570601; cv=none;
        d=google.com; s=arc-20160816;
        b=Cw8UC9/VEp7YYWUtGgKKZVJ1oDvQZwM6s4BrqcRn8f6L86kMRKxEH8kZZF9eEkkvhN
         HrXfqftTJHkKQgMHjH2H1ckXjIZ7q4B329MeaSSQPU6DIQnWM8ELGQcCL+I21+kj7VYB
         0d31PUpG/OhJI0e6MUMXR4WhnPHbZEXeT6vXjqPljblR+iiiUaHCS0MtFNag84z4igC9
         jbbXdv8qNmZR6gC6nFLvll/+inzivFEAL6eExQjhujRNhTZsqioBmLidXD5397qrBR4p
         9G+idGhxflCuDWPmAwbwyMPEx2xTF03l7TtzUAILLuobGEC0Q45EdxvCnAKa1h2oe2DQ
         tT+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Tj2cmnj7Tq4I5EeqBLa+6Qruh/pE2y6YzQ0mu+LNd/s=;
        b=H2C+mR352GueYNitditNgCOdG3Q/FC3Fe6t5WQvU6sYKyBCS9AT5k1phKiX5ZWDhTN
         qNF7drOtmIHMoROhWaLLhc0G3kHdH3jKkHIqKDpuw8/mYXhomDk1zgItZPzbYVJVhQOx
         OhoSkj+qNoOGQTkO1M+m3q5VsaJzS9Clt8F7krmwUskHm1VMwJuDWx+jp58z7U2BzqE4
         LsqyGuxh3vxS4OTIHkBl7zfiLiJ/VtyvZpksC0Tx9T0Lekh+o72g0ZV5vbse+BOj7s9K
         2ZC4CgYie2NOlaWmNiiMTTANk4Vl8EwCr2/SgzXaekJQ7/mhGQbUtq9O4iuBTjw6Fufy
         vVVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W5EjakNu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j13si979879ila.0.2021.07.06.04.23.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:23:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B72661E1E;
	Tue,  6 Jul 2021 11:23:20 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 060/137] ice: fix clang warning regarding deadcode.DeadStores
Date: Tue,  6 Jul 2021 07:20:46 -0400
Message-Id: <20210706112203.2062605-60-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706112203.2062605-1-sashal@kernel.org>
References: <20210706112203.2062605-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=W5EjakNu;       spf=pass
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
index a7975afecf70..14eba9bc174d 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706112203.2062605-60-sashal%40kernel.org.
