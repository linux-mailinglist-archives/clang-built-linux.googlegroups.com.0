Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEGIVXXAKGQEBVSVTLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C36DCFA204
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:01:53 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id x15sf219784oif.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:01:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610512; cv=pass;
        d=google.com; s=arc-20160816;
        b=qK++cu/gUpxFI4rrfWpDzMmASPDMmsXZt1Uw5edEkVxmmuONEgjuT/oCBusYEzWb1x
         3tGwBKo05WFebClwIrLNU8FsgWCft7siReKiOOSPh3Aw80ARBkA1hc1XIdQ1d6z1GeC7
         MRU/lL/XBnFuZp/8Dl2juGmZjY5ZLOWN1SqznetcCFP2JLtbdf8VH/TB4X7Y35iR3NAQ
         RbajozUdBKo2TAia7T8W16UNKrFkqYmD3/h9f/YMrHlYZowIWWk3FPvBuI57muk8lfYP
         YtVYhu3NL8gZjg/B2RfMqrSxzVvusZJInfv1PyXlwTvH41oU7GTLy6REF15nOOs7y5/1
         2ZeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pZiYThsCNZg2ZQO/GcgBm3IJqkUtwyeyuFQ2fxsqutc=;
        b=ca0t71zbPFjcobteGjba4xcGpiHBOrWXuaLNrIZQXyVFgxZ3MWO7/T5wiRVl3T0IPH
         NaUAXXhBAOghJJJTBfBmWjYymDlqlZTXcBtR65bFA9W0Y+0wmdHB9wJgoyb+SwA2fGQh
         3yene4k8B29yw0UB0yQplRFGORt79ot0MU3vvSAxq0Lvj6TgthMTUfefxX0I+qz/KVUa
         1lxy8im0sVuxPpIkUujVDdbSfon7NpaNh2+1u4pE9dbzzzF8qAR5sfhAkQM6NgmiZwdK
         kH6EM97eXtH7LRh5+GhixkbimGItxhXkCHZ7SEsFiXsYodplphNdfkkt6AgawIOIRXsN
         i0hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2CYoAIfx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pZiYThsCNZg2ZQO/GcgBm3IJqkUtwyeyuFQ2fxsqutc=;
        b=gm+5rin4p5FbP3In4H/f5qF3xt32P1HVOVSsRhG93GNISX1sTcqsIHjchch3W3Jo36
         mO/ZuDJjuI+gh0LZR75F2XMwCGvl9zY0qLfN0qHs3V0XueIzEH2Mj6KKU+cXh6G3CVzB
         kutvq91hhpGVKh902SOPfsejz2dxz5mxyTonhhl/R7Q36hNo3wIc3zqcgg6Ac3ocRRAL
         iTKnbv9Wy4cT4x4a3wL0FHsg+QtY4mt0azq3vl/ZDZrNblWRcnKZxCgIYpNOAKsvVYSE
         p7gsOXWzwXhkCv6oHOaXaL9DaGEi4P/eHczXUoKL31yhtTgxyklg2fkR1WkwTAd5db4s
         1+yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pZiYThsCNZg2ZQO/GcgBm3IJqkUtwyeyuFQ2fxsqutc=;
        b=aoYAZCXyoMcF3E9LgQumSTvrtFgylM80iiy1LJHCFF1d9ioFD5FdQNRkwEPW16uDe9
         7smesswzTGZwHeaJFBy0eef7lvLyn95RwTFzvDyfAucihzH/cZ0+6EWMfnOcHFPWfVJo
         DmWNaQKbE7IJtehKBevGUFXRCE+tQE8PVE0A5PHOkpUNhiCo3E6ZJJ7h56y6fu1PLaXm
         pRA59Z4zO0IpCKfGG+xnzR9qk3OATKkXmFdEo5zS1If1EuPikNNqCjadDp4Qh/GxkrIi
         8jlq8U+VxDwDY3pNs6zpAQnurFmYCXOshYQaoW49WzWs1lM4FxnDtF+KVXLbFODV/D0M
         QUnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvqW6SjW+ZFTiyFDc65NB/5PmnoPmKi1e1OINQNTwyjOizCxay
	FTv5itjXcayVBBAe2qvQDF4=
X-Google-Smtp-Source: APXvYqy+iICkHZHbSzTyBFpl6SJ4W/uhkW57SfJlOtbhjw/49b0C8qYrqqKJyst2kCebmweZfjoJZQ==
X-Received: by 2002:aca:a8d4:: with SMTP id r203mr597023oie.12.1573610512504;
        Tue, 12 Nov 2019 18:01:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:49a:: with SMTP id z26ls242281oid.1.gmail; Tue, 12
 Nov 2019 18:01:52 -0800 (PST)
X-Received: by 2002:aca:d606:: with SMTP id n6mr591500oig.36.1573610512181;
        Tue, 12 Nov 2019 18:01:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610512; cv=none;
        d=google.com; s=arc-20160816;
        b=UAV2zrKBj9LXFUNcYorJVegudjZ42inWlha0aW15/WEFR2NvGNJEYJCt1num/NeOzn
         YB58qgl1UDr4xDM1OuufXKnmt+5fdb7HUGtsVLcY/pt/R0ufuujcY1XQ8N6Y2TUCZmdx
         9uD2EKrjOYjXdWfOBYNAqYCuwmF38lwfB4eoY6I7EOaptAPWO/dNx9254uhWNxQL7UPE
         sFnIerDksuBGlXOf+bji9x5F8uY8dXYUzfnfgAeTOElGLGbCGu8KOiCDpvwu4UdapRc9
         YZXE5mnIYQHM9Kn78BIHrqZk73ZUEPTDNA25wEHjVHwEIwR/lKNP8lC4tCLpu8SWu9Za
         GS0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SHswYgakd4cmvmhrHJU76B0qFxA1jD05+R70Da1SU40=;
        b=yw1MxkMpolh0bN7upq5YcNeTt8Gv8T8EU4mtZfXtk51lUzArPYRJcN+BXWWoW5LiIe
         7eK3auR5ifamO75dblOUkFaoe2QAi2h1YZDzT7s2GZNWf9bWjEphdiCP86ZnTBkfgbLd
         Vz+p9ixE3GBMwxvgG73a5r11x+tvs0vJNOtn3t66mR2nQAmqYtNK21L+3v/D5PW4g6/q
         +kdhdUo5STPV3tv+XbGEpeH5P9QcDd+IPfLSALm6NqcnDZw1LdXSBksHgmO/M10Mr1eu
         gY44MjS16lm8I1U/h49bMZ7JYYNq2dvps/ud1wEjZDbiDmdXw+9pTsUGm9sziEBumhq/
         Lbyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2CYoAIfx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 144si31941oii.2.2019.11.12.18.01.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:01:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 94C8F20674;
	Wed, 13 Nov 2019 02:01:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 13/48] cxgb4: Use proper enum in IEEE_FAUX_SYNC
Date: Tue, 12 Nov 2019 21:00:56 -0500
Message-Id: <20191113020131.13356-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113020131.13356-1-sashal@kernel.org>
References: <20191113020131.13356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2CYoAIfx;       spf=pass
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

[ Upstream commit 258b6d141878530ba1f8fc44db683822389de914 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:390:4: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                        IEEE_FAUX_SYNC(dev, dcb);
                        ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h:70:10: note: expanded
from macro 'IEEE_FAUX_SYNC'
                                            CXGB4_DCB_STATE_FW_ALLSYNCED);
                                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use the equivalent value of the expected type to silence Clang while
resulting in no functional change.

CXGB4_DCB_STATE_FW_ALLSYNCED = CXGB4_DCB_INPUT_FW_ALLSYNCED = 3

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
index ccf24d3dc9824..2c418c405c508 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
@@ -67,7 +67,7 @@
 	do { \
 		if ((__dcb)->dcb_version == FW_PORT_DCB_VER_IEEE) \
 			cxgb4_dcb_state_fsm((__dev), \
-					    CXGB4_DCB_STATE_FW_ALLSYNCED); \
+					    CXGB4_DCB_INPUT_FW_ALLSYNCED); \
 	} while (0)
 
 /* States we can be in for a port's Data Center Bridging.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113020131.13356-13-sashal%40kernel.org.
