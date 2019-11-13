Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBGGVXXAKGQE5KXP43I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 111CDFA169
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:57:26 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 32sf641919pgy.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:57:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610244; cv=pass;
        d=google.com; s=arc-20160816;
        b=Znjq5TKvsOINlp5vFJTRonhUlMfpgeaaJOWEhostx8M6v/+W1+JouMqym8fkHLR6Lp
         A0+9y+4BdrHlcxsEWANIGzBUgpwCxO/UVCv6Qxn4s7vUIg5nW6m12XBSwsdH+hzqUdyx
         nzJAC7xPAFK3neT0Y66Bm+ZFxtjlOGupEbUyU0Um0kvuTWboYnLfkjNevfGKJ2EKlojR
         D1cMyHXd8hCUPNpzRHf3Qfje4xIiR9qP4+lVaL252PRZ0DMIWiXgbweHeBBg3CugYOxO
         6EdMzToVZu1EpwLqEqkm3PL3l0VaVchuXylJGV3uzRDiLgaGWbqQWRvwb4N2xpU3aPZ+
         3w2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8SxIy8XdeLCKrrvz7gWRPAY0h8qZXy5sLgob/jNPjus=;
        b=JBNh3Su9ekBO5NZdzGwxqUNKL3Xq3uxPJ2Pqqc0oYwA0mxJ0Izc9kDHMkQ1RpFSukw
         oGabrB9am02U3rk1RPSi2/pIZinhRLUigss4QCBI4jd9AHwbHsSvtKWlfdcE+CHmAaCh
         fJXwIfUpB0GogzcnDzktNQxpgF39YuzbWZKaQ4HaRnImcwgCQp/jzK+zvtV5pjV9yu4j
         sTTF2o1vHOpBeLC0fMvE/2LXIOB0zqHbMg5mUaj4gjbdo3CrW1eark+/+GMuYMSU3q3V
         fAyIDXCSJsI76V6n5M54+YbSRYZ+uXG/t34lZCkVeWhdmxdL778lR7ln2+2nfo782n3u
         1Q9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m4bJMZED;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8SxIy8XdeLCKrrvz7gWRPAY0h8qZXy5sLgob/jNPjus=;
        b=jLF164LD9ffeRMlZ0HTvd3M+rE/UjxeGe3RX1WPiBjKyOm9nhh8qB8KZatS9Z1Xg5V
         MbXPxBHduDOxg62ewg3hmfS76k7g55vw97DNO0koctBX8xaHagb8ZtJuhD+ED5qqaU43
         GjmAyh5uk7Pvmtj4ZdLaiAZxfVcBafiumZPPTjLvpTl4HRbK/2aPectu+4v8iHdtLfGr
         Z94wwN3KJOTrY/P3qwDfYAPK6Xlq0DiF4VSCXAoWtiKVwnfT9EKv5HAblW3N1ky2WHmP
         5qcOWJ1z+G6FrIs6Dz3u4aL7/h1qxT4ShEU5ZVJH5zNzaxA5vjvRo5fsvuLXQ27orNw2
         DNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8SxIy8XdeLCKrrvz7gWRPAY0h8qZXy5sLgob/jNPjus=;
        b=CGXG+ZOpX202GRYlh04XlkWkrM1inhM9BTsJL0L2sJZemssy6LYs7LkeOYMfGSbLmv
         bnxrolbn/yAm9aCosE7CDZcgAMYDqYUiOgkeAglWKoMXwn95eCMIb9Q5YAYBwRNmDVUd
         8uioNi7PS1u3rZOwkebKS5lekjjn2RX3OCL/uJIs9W/OrLX1S+R7eDKAFTr3HAC6RrxR
         6HB1OhbULKUo6OO2E9LMzD4Fx2wdIpbAc1hjm5mBmaD5n+9BXS7N06t9Way1WA8GVmHF
         y9ppFPU3DXgUWGjccsEBgzOSZRIL5bFtj+l1aG0MLQqoOxOGs+ngrpPu8PB3hhDOdLYj
         y3Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUy33Xk+vUNm0CsCTUz8Pomh1NHUgEZpAulFXdCJnbmicFQE2Ye
	rT/XBKJC9ATklTlcIWNZFFc=
X-Google-Smtp-Source: APXvYqwYPwNRJzHbUStW8TzEd3LziBhFdN0ABhJIg1+gEW1P9t2tdRVrf1cYyuvxbOL/p7Hc+SMwUQ==
X-Received: by 2002:a62:545:: with SMTP id 66mr1229072pff.1.1573610244754;
        Tue, 12 Nov 2019 17:57:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2cc3:: with SMTP id s186ls122642pgs.13.gmail; Tue, 12
 Nov 2019 17:57:24 -0800 (PST)
X-Received: by 2002:a63:25c7:: with SMTP id l190mr691345pgl.429.1573610244386;
        Tue, 12 Nov 2019 17:57:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610244; cv=none;
        d=google.com; s=arc-20160816;
        b=YAeyWwxRaMb2W0oWLurRabuddRlDSJGXsuph92bqS/B+U4Ac9savdRhCEjkaPwzSdM
         HhWBbXTFnFZvE3W5rX2p8fpB6+egHQw0waEcw1YOzq8PEQSVtv8iuLyd6aXcwLZ2Qi6B
         XDzJ9vmfEPZClw/DaypTIJHpRPbQz+G49GiN48oqVxX2KDCY3MdQFaMr0nin43FjuNZZ
         riQtaWIz3MnQ2fjGItuDeGHexCnkeXJjivTfy2BPi1ft5c9nqsLQhMbcWdAmZMGMLgkS
         sJ6+8vpmkMi41m9jKwaK/lY4Gktvi6tW4VCgmJTtBRNPb7QxVzWPhbtk14pCkG7I/LdE
         vuSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ytRL59DHo10afR4g0JNxyqyNKWLXvIMbgvfJ1xw7cNY=;
        b=JYUvCJG9WZkNbJutTayEUg/S75q0GrZ/rLp9PRwcJGFViExYA7HkMTA6YHiL5/Mt2v
         5saLpUXa3+9yLyPqHa7/0C7iT5NGEyjk0xWo+NotogNwIR6R9u8LdfUJSReBEcSZmVfx
         03MTqja+NpDXGMOyIXt93XTFZCbVKbHPMqUnE0VhXnB9R9NSQh6ld9n97jxcTO98hKjK
         EvpCqiHnpwHUxjmMv1dXD+HqUzzMZFdtjP+3IXkGraZPnEC97hJ2tKyq2pbqsV+JZtdg
         7DH0P11aPXZx5jJMV3UEfRZqrH/7MgDdnzQ2AkMipJWjbJzKbixP2Ihj6UjN9Myob+EB
         Vnqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m4bJMZED;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w2si20577pjv.2.2019.11.12.17.57.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:57:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E738222D3;
	Wed, 13 Nov 2019 01:57:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Bowers <andrewx.bowers@intel.com>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 043/115] i40e: Use proper enum in i40e_ndo_set_vf_link_state
Date: Tue, 12 Nov 2019 20:55:10 -0500
Message-Id: <20191113015622.11592-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=m4bJMZED;       spf=pass
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
index bdb7523216000..ea42240ddace7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3191,7 +3191,7 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-43-sashal%40kernel.org.
