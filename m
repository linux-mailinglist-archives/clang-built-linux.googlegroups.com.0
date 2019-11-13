Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBH6HVXXAKGQE6LUSWUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A6FFA1AD
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:00:00 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id j2sf352154pfa.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:00:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610399; cv=pass;
        d=google.com; s=arc-20160816;
        b=IRseYOOHGGqprsLLd6NoUNv/p8DjOLYrZQ7WTkRK5Np9SuIFDeGJpvbGcH07ymhAKI
         PCdWZqdbJAJstj45q0zGyvMgLwU2yxA7NgyJWFjmOyO+/ozwSA17Fq0KFXHHWRZRiFHV
         4HLHdsGvmNkCEgFHFNpK8JnV8igJa5CN4+h49sLuYtPctDbW4wpbZ177wT7RkmeGBjRJ
         JVg/uihDkeJUP5+tD3B9KNVloaS1jRehn6qk1crrImqUpBGax8W9DaX9cJlfK1hmMyNK
         0vYQPuJjetfSYndylLYhuVh+Vlrucfxhkq4Ck2ifptG+Vhd3/ct0iOnaRNmb5AkvZSXE
         WjwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SJmzRUBAFdNWgjhPkOH7If4CoLRgoihElFKOPqlsC3k=;
        b=QSgG8cQ1pmIoSVkTpYrvrumPqykHLRA+vrLdIRrko3ECfnOPi5QjNFNk3a0bwplZbp
         UbJSZzNthQsKkP0j69K5PgP82v0mjc06/0zr7Nl4i3Gaz6eg5b6RxLDDwjuo2poAmlnY
         ePGeDjUPO1XmXRlW2lq6wZVZ5wEWJMxxdUJSeCwj/A0RMuKV7cJ74UMoxZh0UZ24wamT
         Khw8btK0S/7lvCLUHXpyVjIgXlRIPR6o9oxXn/JRCQZ7m7d3IFUxYEzPnoZlPOQATSH/
         cDWZprnDetQdSbjlNM/riflnsEanjLqMoNa1XD1pvzLUY2ryC/Ebu+qHvfdfI1ih9Xl+
         ffXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mjIxNxDt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJmzRUBAFdNWgjhPkOH7If4CoLRgoihElFKOPqlsC3k=;
        b=F3sknf0wc/Zd3Bz7JsFVXtf6BesxYI1M7GD/1L8VgiS+eqMjNNO0i7zLfZylWGGxbt
         aTG5tTNuN6fNE6SCktO0XKMHjM3dmcupssjoJCej05Z8F2LliAQC6T6MeYDiGMdtq8J6
         8up9NBVrBujhhdQa2AoI10z7Ue0rF56Z8mWedgxO3nexKNVGpC5mOSnZX42S+pFNuppU
         pS+pS/2fpJzBYudRv8g+BsN34IuTDrF4bY+BKTJTB94xUN2mZjqhlk2X8XmfzCYCMN0h
         ilhEx9k/14RZsDvY2P8jHsY0ieigXDGbj6Wyem7WRHmxsFgAi4fPhVmChpjLKnwrDHjb
         bvUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJmzRUBAFdNWgjhPkOH7If4CoLRgoihElFKOPqlsC3k=;
        b=MBNh9DW5G74y/waMP8DzC+ZdRJqz8Y3kU2LTC5/o1xjKAhGJZEamU2NPNhNjMoaisT
         esNF9gFijjb6hVj5Dsi7xZH/nOObivz4vIITZN+QoZsfzMsd2dxY2zvU4bPk/llk9rsA
         mjUywvCInF8ENAY1VMwTXrrLzlmJ6LPbcICS/fz/pK3AXXHlGw8L8KFgDOqU7NQYPwVD
         ta4hrNo/hCYrJc0CMIU/MLoTE0egAhxxbfU18PtNq2Kai/XLN9Gbvgi0UFJefXMIn+Jx
         9FsVxMASSbAB46NLJw77l7ZU/hLLYY3qLL8SDkLTvIJhoEIpphletrAFw9i93qlch9/I
         PQUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8h+ndWAIOF9pf/77NgOSxZlDne5M9ZTW/ScgXVt3uKWOSdGEq
	RALwsk1JYRhhmYH0fFDvQIA=
X-Google-Smtp-Source: APXvYqyHsWqY0STGSQYWoG8L7yKy7UgajIIP6eRijMx3hdzGOAYgQtFt04jNo47lsO/VbwLdte+h/A==
X-Received: by 2002:a63:4553:: with SMTP id u19mr731400pgk.436.1573610399397;
        Tue, 12 Nov 2019 17:59:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8d:: with SMTP id t13ls163196plo.7.gmail; Tue, 12
 Nov 2019 17:59:59 -0800 (PST)
X-Received: by 2002:a17:90a:2662:: with SMTP id l89mr1340509pje.72.1573610399064;
        Tue, 12 Nov 2019 17:59:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610399; cv=none;
        d=google.com; s=arc-20160816;
        b=t6NILxCz8GO+Gi2HAXOGChE7D7j2gDaUo1pnOFWsAU52pkqpax1BL4u8cEKYX+B5/G
         piXz5Ahd1Gy8RnFwRqbwkcgq/Sx/2zTitKivG+cIg6kMKbjFj9YFxgWUnHMg9P7UdBJI
         I8RPhM9miTNsSgCf43B3lzcEgNO8ZTfwXgDlJvozICadUOQYUFncviNrQUyTltvXf2El
         qD3XvvuZy08vCXo1uIx3sX5w2SnLemJspPUu+H9Wt+i5W+18rLM0gXz1ihhJeLpE12mL
         ngYFS5eQnUmtMN7LDmu/TdLn4jlKVzdlN4BRNBtO+WSe0z73vo3wYI5I8y7hce4tib5B
         Ya6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3FWRZb/z9ofyStc4x6whXN0jdz4+3/yawDtsXj8dJ4g=;
        b=oQ5Zwv5TEpaEU/S2az/6mwjl11iQb4Ab6Zx3c7wbtqmpCZUke3vISvh+aSbY1VxM/k
         4wQFSocqdJIoc1h7YighC73Q57jbY/UyPW6F1ZI8z3cIUDNzRTb3bWaKdbmDDmVAsMdQ
         7bMKnOYeFOaICEEf3R8SiHRtJkASv0YMSzJwiP+pWdLwKmdO2Q7F2vI3eRpG1FOWtr22
         YN+m5Mf5OfBfCkLrNbGcHuiIrlfkjrSiXU6T4jOE0RrNkciEH5QTz+iJG8tFKbgDpXBX
         Bl/Vsk8vUI/4wzboyCumxZ4grcDg1jgnKZyOELvewwf9IcEf2Njc/YOWkRoBcbL7FoBl
         3RSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mjIxNxDt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c101si16867pje.1.2019.11.12.17.59.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:59:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 067A52246D;
	Wed, 13 Nov 2019 01:59:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 17/68] cxgb4: Use proper enum in cxgb4_dcb_handle_fw_update
Date: Tue, 12 Nov 2019 20:58:41 -0500
Message-Id: <20191113015932.12655-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mjIxNxDt;       spf=pass
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
index 6ee2ed30626bf..306b4b3206168 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
@@ -266,8 +266,8 @@ void cxgb4_dcb_handle_fw_update(struct adapter *adap,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-17-sashal%40kernel.org.
