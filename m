Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBK6DVXXAKGQESYN4KYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D3FFA0A3
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:51:41 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id p2sf346895plr.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:51:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609899; cv=pass;
        d=google.com; s=arc-20160816;
        b=N3oA217OgZ0CytPQJGuyMCwYlPZ72pxAclNzet1oTeXUNxbRmAbARnWhWAaDV57xGS
         0z8Ln/8dVx1iKaD9QVMKh7qWhXUoNUJC9NhzX9Hfwbowa4/XXyQV50tCWFkp/elQh+dt
         Fpz80fTwCbZ8uY5oPYFP4B8JhcRqBPD4KY56Acx2d4MSJWxwFio6vUBxrEgBhbionN1T
         JZg7nR8liwMMTtwMlGY1BtR7ja+dU5Io640P3NQOWjrRYtUuvB3lIrP+G5pa7jgaUdBx
         BnwBld1PCOTZ/ouOFxk7BcHN3q7sLLqzOM2hyfPjprNn/fXpORlE1G7jFg7bSt0lQVRi
         4D8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qCE7j6/LvXXujnhQ86upvXGjcltYlo+b8P9ZtsKjumQ=;
        b=yy67VL68sjJcjFAqktC1V0A8bmYrcLy7NEJsknmA6RFZhwc9P0sh9mzRfGi5uAs28J
         n1Z4QUcg1+Y0dQ03REGt7gO21WlHY7MxfO9YEzgLJ2/L1QT9IoeMW7MMiApXONo7uWL9
         oshqyenj7UqKZ65grd8RzznfRgYZKduAvuu2vpau3/2iKbRub2lb8oPwq6Qa4Bahv6wq
         JOwNDIm8/U0peb3J5i7vKfTg9YIVJSdjQrq/LhKmwaMnRBw4PSmvOe4x6fIoNK/IMFAh
         bMP1a5bkQe7hrniFJX3Yk0YxSt9r7SqxIWwasPT7FNU9PiWGwPCk4FZd49SSDG0thP/w
         fxBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j0WON8iw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qCE7j6/LvXXujnhQ86upvXGjcltYlo+b8P9ZtsKjumQ=;
        b=Fp+wq5HXviydHCfJFy9DT9pM52tR93EpMl/tVd4fx2yZmMBJ199OV2MEejYPeDjUoq
         kRNEc2b6gDiVfEfbYW4CLXeHhoGtQGVdwEfcf8U4gVDfgOaFkHxd1ZDEBmKc6sEio8fq
         Ho1LQ5B/iSqNLf5NSCRnCLksHza53UdRxUjflUEIjgolgdEai2Kb3LKBhu2bK/Mjfdcu
         9loefsRZpF6xDzgViq/J+hvR0Iqi1JibHvodhCtn/6w5JJBADD1GiEvrcDOfU8EEwQgc
         NmCjQfONcprH2wyYG5cpQe2T19tnW7Rfk8YcWpqkhhdzY5lOB7BJxvsufy6LYjALS+9S
         SKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qCE7j6/LvXXujnhQ86upvXGjcltYlo+b8P9ZtsKjumQ=;
        b=Fcb1N8B+glTPHhfABke/GSmIPScJUipJpnNWEWhYdSfBNgOSU4w5EjZFS/EiKQZVdR
         D+2u44ZOM3WBWdGxzjyzrMsaCcAGSI6G9gALsMN1O1gMP+BRROuj0jK4wMfCYt8W47KC
         zP1vNmIZu39O97314+TbLfFNr7sj1xxeDWHPyNVFzn3aiIiLPSn+fVGSSadBBJ1K2Moy
         mjjgLvwC1GQzeWSTRQ572CFB3u6aIj8SsaFtEl4bRWZ0yZEg1pih1LADCc9DSpuqd7X1
         Z1+qCbc9rsZXJuhZtIcWCpnCYQtDqtQ1kxkjU55Z6dC0IpsAEodBWb4prqcw20NNMK+D
         F8gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWq137i66R+ntPD/7yrSyJ8fYrGCrjSGiNj6BW6gk3RBD9bXwQ3
	sHJTKPDqm6BMWGqHBHjTnpQ=
X-Google-Smtp-Source: APXvYqxS228f4KOSDm7HGoc0WzBi+/RZxg1s5vGq0COXic0GOw6fW7PnYzq5KRhnyayDoT5oo7G+eA==
X-Received: by 2002:a17:902:6ac9:: with SMTP id i9mr987917plt.218.1573609899666;
        Tue, 12 Nov 2019 17:51:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e517:: with SMTP id n23ls144514pff.5.gmail; Tue, 12 Nov
 2019 17:51:39 -0800 (PST)
X-Received: by 2002:a62:20e:: with SMTP id 14mr1193460pfc.153.1573609899311;
        Tue, 12 Nov 2019 17:51:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609899; cv=none;
        d=google.com; s=arc-20160816;
        b=oPyTIhiu86pPU3HfQLKIgjx/ETt16hf+MoRyQwipUXSClde1nu7xe5hfNL47dyI5NK
         vT1LtILqwArbCzxvk738LO5pViu79torefN2A0XUgAfSSp+ohS+zVSeujzAPG9S7Oo+6
         uA4U2OsLhzmcrVBzi+//WPdK6CY7PeolhwNUQblitXj3Lra83Tt1JLZSNhcst2JvxG/+
         JpSDxc5CyUsYeGxV2iu+UYYrTWqwqsMtYQgCO4LQFsCOLmmNuU65aMO4SK56zOCXY4jt
         lSr20fcPAklgpldsf/7VKcnioHICKaYV0LZd0IofjQ41pZwcLLMUjgLFfJfZFL0rcfoE
         rBxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NbCpr4q7+UgesteQr2BP3iYx3GiaJnDRU4MWMVTv3Ho=;
        b=QcsEug0UIYb+txyZ4G5FFKDD2CpbbzrideP4NQ7IXvdOTi9bsPD4EdsY3FrDZlJ+r+
         zIz+FRxvUow0n4uwT1yI+kV5AeTjWtba46Kcg0jrFcA7ojBsyXpA0r2U6l2zSLBDWsij
         WKW7lRyRlRycFrZ2GASC1wuInAjOCHZPesemTltkkHt2mnS1mC9MmX21B2VPfxT+NMqc
         A3ySRH1Sj18jNgfDHePGnApuP/x0oflHcCIrz1OL4ntx2CD5j7dTPVZq9Rib168X55/Y
         EygbvN0qEMJr+odcUnuE1ZbjcbaPaDPfst8gqjNFjsa59k/EUhvH9lsog2w4PCYYM2K0
         PepA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j0WON8iw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r20si26075pfc.3.2019.11.12.17.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:51:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3C681222CE;
	Wed, 13 Nov 2019 01:51:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 054/209] cxgb4: Use proper enum in IEEE_FAUX_SYNC
Date: Tue, 12 Nov 2019 20:47:50 -0500
Message-Id: <20191113015025.9685-54-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=j0WON8iw;       spf=pass
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
index 02040b99c78a0..484ee82900903 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-54-sashal%40kernel.org.
