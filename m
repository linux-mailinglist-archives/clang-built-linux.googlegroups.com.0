Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQWDVXXAKGQEAGICOLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9797CFA0B4
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:52:04 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id i32sf432458qvi.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:52:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609923; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ur3h6UJpVDHkMa27M8kroAqWp4neeFpgUXPf1COPO97c5I7CQt5OI5OJq0FY1XQDeC
         RMANvgU2ObHbIHy6oGtmpqpHi7yBV3ftNX6BO+LktjqklMmHA3n4WGj5/eNCRuKgYYzZ
         ujlORAvUg8kW8210bMiK1JrXy4ol+UKJ6PzJUtNA7nI/RVymjEcMNrtdXzb+3XU+VyQg
         5YhL1a2ffpFgSVgoSPP3krUBuia4gL2ZYFKgYCZ5a2FUyEjQfekb7GbPUBdwATSHO1Tg
         2YSnm+6N1dV97xM8pY2gTRo7pkwONja1KDATqduOfmBQBu598Wd5xyQvBo9sfoOM4hOf
         zOJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=I/WLLwKj2ItkIKR+o8ix8m96q3HMNJeWhYD93tnYcl0=;
        b=m7M5E2ZbburIcJnx7ZtNfeetiQMDTMEqbXiC/3HDEUzDHClN43rVVzyaw1AGsO+rXi
         fKpDMz/gP4x7i+TrPtIE4VKBcpBidMNLR1H2b6bErT1yJCAkYGdycxHGroCxnVkgjr1S
         Hqn1pgEVTxqd+CILC1hfdAhZNmqeQ27f6RzKNegPiL2cCsWAiqSlSGOgMdjFzg5lcJB2
         FkEVgjZOcWiPK8XIajH0Vi6mNt7MOy2oNcONecXKc3M0pnxtqhJYQFf0//cgW22uRdmS
         c6VIFmOCLoeH3DjrlY/yBtCow7JKRx99dOIe4k+ZKKOWwauXkj5R38FMZmAAqBezhL+N
         hNuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qH5Op5Wz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/WLLwKj2ItkIKR+o8ix8m96q3HMNJeWhYD93tnYcl0=;
        b=i0182dhrY6k7BoGI/04EYZPlFXgAWFbtxy4KbJAGvIKbgCRdUhLFuWWOMMhjTClJxS
         98VAAaUQWLSEsVH+R2436Q9x1XQOlIVkcmvPvFAz0nAL2JpNDO+ovtHLiw1DO9bY7O/3
         ALSg1A1RsWbsw2L4akqkn+AItzwjB5Y9TKjBmC602FCop6p0X05Nz/s9iqcYcMOZz5RR
         HcdG3uDrAJ/ed+dgcY3TY4BgvynheHpHRv7OdFiyTRcyDPpSvrdMlReP9+VF+SJF+hVQ
         XagpK/IUVYVgB5UxjkqiHA3eClzQD+4w8/9c1aQ+aZuuJ5I4dUg7biVNG+qeR3ydl6vk
         FD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/WLLwKj2ItkIKR+o8ix8m96q3HMNJeWhYD93tnYcl0=;
        b=Qgu8acf6p2aazzAKbKe5L0CK32O1ZVK/pPTx5AxoQaQ2e8ANduGFLt8ik7l4HcvxZ7
         GoyI9WhhbxuLpsj8yGngZEUibdqIT62EzbdLhEEliPCOZ58gY+LgClp7rhIw5RrDeoOk
         ZoGZS1CMdBsai5ceduDgdBxmVgp0O7XAA5BVPOAC+6eKX/ZMVjlyGQu97t0Dxwds+3hV
         uobh40OpQWE7z55sSElzU3NuIQ+pFDgbr9OxlLTbfdfnMgaMMnRfM13KTTJ+6L1Ni3AL
         797FfLPyhKQWZJ0nk4UR2XI3xH90Yc8XsuUoNMh5sF24DGs0WcDh6ejWEgdtLPfC9c6Z
         1c3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUD33XmwgMBA1TQ0eCO00yXEomYNJyyqFn2Zp2kvTAb0hegylrl
	i+gizqIT2UHYrbOtgXqSgk8=
X-Google-Smtp-Source: APXvYqyxNXQE6mQWkI1NXlszwsh5hx3Ebn4xeMAZzECKrjWsDwb2CeY/P6gke0xIkqVd9UcJGXV5ug==
X-Received: by 2002:ac8:89c:: with SMTP id v28mr412156qth.156.1573609923037;
        Tue, 12 Nov 2019 17:52:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:21d2:: with SMTP id m18ls228985qtc.10.gmail; Tue, 12 Nov
 2019 17:52:02 -0800 (PST)
X-Received: by 2002:aed:2572:: with SMTP id w47mr427559qtc.36.1573609922733;
        Tue, 12 Nov 2019 17:52:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609922; cv=none;
        d=google.com; s=arc-20160816;
        b=e4G6wxa3tmU7LumR+Df6JxDkObsxnvgJV6qGJDFJpsVbXd9Z18u+1PEcebHZb9xYL5
         new7cxE6K+YxUrXfVwj3fQnrHuIHaBHz0U099YeQZ4KZdqWedNipxuifjtoufxVRBwpw
         Mvh7mgXCYqTECljN1nxO1PB+qesUWqUolpDMALMTwnNK99X0vfePqQH0nwVafLSDDYPn
         U8Y3XkRwCwHNhxfzVZT/24avM+W29sptyaMCr4BP/wJZNF8ZJZ3qrZIRXwildHZ2kll/
         j27bNGkfBZHUI0MjipmuFGWL1uPdQMBmZtbEjhot0AAVHACfFY7UIvIV/MvfTMSF43wh
         wSFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EWEHl1RC6v0GBAosRznWGxv5CelmPBu+6JbWeFrWQM0=;
        b=geOzRdSfELmpla1xzxRQKHLHb/waeZUNLUxnK4nwG5wME01FBoKve/RPZNhC8ss6KL
         JwT4rdLy24Y9hpcrcnc/Rei1YxOYkfJ8IkAU0JuOysmkC2p6djXsy+yVk1flwQtTdCfh
         rmL2GZ/sv/3vH8lJqsnXff9vRIe6iPyUQGogtou/epte7TINaA+2MBKLzv9CFmUlNIgg
         rKqIBJO3zVbuF+oetid03c+b41LTQQeQA9MtAlegdF3hcod1J+mM2GWLVGktHimYHHxS
         quKFokVdIXMLeVKhrnPsLhx2Ci7Kg4uDEgxL3fAb5ZEe2aR37Zt2A4FjnQQhiyGtUehM
         Owcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qH5Op5Wz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w140si41672qka.6.2019.11.12.17.52.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:52:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C07D6204EC;
	Wed, 13 Nov 2019 01:52:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Bowers <andrewx.bowers@intel.com>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 069/209] i40e: Use proper enum in i40e_ndo_set_vf_link_state
Date: Tue, 12 Nov 2019 20:48:05 -0500
Message-Id: <20191113015025.9685-69-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qH5Op5Wz;       spf=pass
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

[ Upstream commit 43ade6ad18416b8fd5bb3c9e9789faa666527eec ]

Clang warns when one enumerated type is converted implicitly to another.

drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:4214:42: warning:
implicit conversion from enumeration type 'enum i40e_aq_link_speed' to
different enumeration type 'enum virtchnl_link_speed'
      [-Wenum-conversion]
                pfe.event_data.link_event.link_speed = I40E_LINK_SPEED_40GB;
                                                     ~ ^~~~~~~~~~~~~~~~~~~~
1 warning generated.

Use the proper enum from virtchnl_link_speed, which has the same value
as I40E_LINK_SPEED_40GB, VIRTCHNL_LINK_SPEED_40GB. This appears to be
missed by commit ff3f4cc267f6 ("virtchnl: finish conversion to virtchnl
interface").

Link: https://github.com/ClangBuiltLinux/linux/issues/81
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index d86f3fa7aa6a4..cf4614b7ef85c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4201,7 +4201,7 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 		vf->link_forced = true;
 		vf->link_up = true;
 		pfe.event_data.link_event.link_status = true;
-		pfe.event_data.link_event.link_speed = I40E_LINK_SPEED_40GB;
+		pfe.event_data.link_event.link_speed = VIRTCHNL_LINK_SPEED_40GB;
 		break;
 	case IFLA_VF_LINK_STATE_DISABLE:
 		vf->link_forced = true;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-69-sashal%40kernel.org.
