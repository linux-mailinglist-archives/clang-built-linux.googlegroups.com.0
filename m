Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCEUW2EAMGQE5GRMBGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 456F23E2FB7
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 21:14:17 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id c18-20020a0566023352b0290523c137a6a4sf6546183ioz.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 12:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628277256; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aw7T1WoB6qd4Uz74dcOhcMGr/+2TJJv3fjnY0Up5a+id8LBUDgREhZXcjAGZrCz4rZ
         5x1UPCIPcVWEPjYn98+Oc3q6M87ZwjpMotNUKvZDvLpb8LOH4lBz1+aqj43r/AKzqa/0
         hiVJpyDSjlaX9g/9gBSHhR3eRBGLl2XrxlZFSawin1IO7WFJrOFmtHMe72APZEF00hUG
         LzswoMHyhJ/ccbJvcPiOSvLwZCXhMWMkNiTpZPkKR1JgPjMB7cFxnd/GDS100g2mmTTN
         88Rt1hkCAEk8cazzm2HwSSpNOoOZ4Nmhm/wPutamfMEPc7zN5MWM68j7yz2ms1G8eieO
         obgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=oWTKY2EzFAai2Xr0b4bGJOFVLNaOXlL63N8vZlAtd5s=;
        b=l42IYQtwzr3cYr+ee/vviX1dIYDrsdrM9dcVrae/NQo5cF3tPzo7zluxwWlt/Xu0gJ
         j6b9ok4JXJKOZGKBUpqmQTblTgT/WyiudwsWgZ5NgzmQ52pJdElUYcrPi9VxvW6SM+nI
         +qjbYkyObASxXZHmCv2cHvLU2TELpE32C8GG9yjqFL10BGO3YxbO665ivMVco70njIxX
         na/1SOKad6/HkYpyHXJHSrYbZ3lsXamchF3w73P7cKLw0lP7gWUzuB3Mz9+3iBzTC4o/
         erKyuekzifW5g72iqn9yztuXWvdMImOOUqcOGWWtijOgsIYAPTqYM2z24Rwwa52dAm4f
         665A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Qk58ppSt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oWTKY2EzFAai2Xr0b4bGJOFVLNaOXlL63N8vZlAtd5s=;
        b=aVzeZFTOv7P+r/pV47SwNJbI9BWk/zmxrzg5JOc+MX5dATfJjKUl6Fipc1Pjf9fZZs
         qoFDGOVo6dRaprJhQvJGvZO7VQCKVsjIqwubDX6GSlYCNoIxudSAQfFSrdc6P8wUuJxa
         i4q6y7sqQvZ+L5wiivy1nd5/z7zIYFNm+mBOM9c9oUtYGn5+Yc0DT/6FRLjl4hp21+Jc
         k0g5b7ILb839tQSSJPhymliRdiOmpM9X0uExGG1ygDe8zp/AVsSECeVvRDgIS4k7dMdn
         Ok5KW/Q7s/k7BRy26X7k9IX0opkSHNL5lnwiJWy6nQnVPpbSjQ/WFVJjf/9vqdCaKtpo
         lLOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oWTKY2EzFAai2Xr0b4bGJOFVLNaOXlL63N8vZlAtd5s=;
        b=msGizA9WAv6e0fQkKEXhjxaW2mYI/PRON+VDBQtzn5jJBST7cnH2eb/91ZBaMjOLqS
         +VYtKtsbkbswR6CuvO5XLTv+nXiCwzacCxz4+odu0Jg6vk/ozQqi7QIYGR6GquBReVkg
         3bAwXFSCUjAPCtR76cpZqtdKMQSMcC0isaFhLoe6TPZS+lWrVLejlaURuYR00O4x9xEl
         PVcZWJTH3EZEXRx4Jkk7gcyWFC9mB17WIw3b8ks2jez0OqKerFuban6GjzJxq47fFki+
         B3dI+gsjdfsnoebI7LBjAXm7SVIXbvj/F5kk4tO+k6P+Iix4BlZEvu1+vM6VRZz1pd/N
         5HoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ozxqQigHPjCgX4u4VYHBQ6vZixXehjHsdB8nhdSYas3pgS78v
	VvbqmYNk7iXXoPIV+wuMnkc=
X-Google-Smtp-Source: ABdhPJw09frUHcHJubID8AYBFjeZLN2cpMpwyWUs2v+A32GpOBsushoSGlXXsM3G3Li3IeHDQZmR/Q==
X-Received: by 2002:a05:6e02:4d2:: with SMTP id f18mr614781ils.21.1628277256307;
        Fri, 06 Aug 2021 12:14:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9e12:: with SMTP id h18ls1656366ioh.3.gmail; Fri, 06 Aug
 2021 12:14:16 -0700 (PDT)
X-Received: by 2002:a5e:d80e:: with SMTP id l14mr8366iok.79.1628277255954;
        Fri, 06 Aug 2021 12:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628277255; cv=none;
        d=google.com; s=arc-20160816;
        b=nVShof7xhW49b7JPCKCtWsoiVj8DvGjOOCML3VXK87AncOo32ESb+mKuNVlFE2096P
         B2i3PXuvjGFQ2kB4pM2lWNhMTZKDTricxQ5tSMhg7GqHPCqOGxRn9npbDA+zc+RuznX6
         fw3F6rSHTDD8A+Jr2Eli3XvOLJflQvQiPSmgH63b19dI1OR5J6ZenoAEr+eVE8i0JXJF
         dNbM5X7XWfiJB5S7IjusRExxtjvMKqaWXLfHFJKupuPI+yQWf3wsaR6nH43Mtye4uPH+
         JRKN1fc0GO8MiMzMtwsjEc2tnwhLancKK4YNITOtinoutoa2B4OrkzxDHjAnqqqTu4Nr
         Ix8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GkzPhyV2U5yhmyboWO9oMFPOxrDwVf+fRR5pjmmezkI=;
        b=UYzF+vIzgI5GwaQukCjog3QVQ/Y5A+KCc2TA1pYPhBOihlQeQ+kE25P75mZ0h1Imal
         +PeOmmohI79yYbKJwO6dbRpNgapODLtkALPaY8mutYjHZvGDRBwsBMkN3gOT1Mo9mXZc
         El08HbggRDc0bMY6Mis2dWAyyCtuwc/FbWvrN6BR87Qo2vQJxeR4NJ+6os9HXG9YCiGM
         F4YScviuHYl94CuJguoXPHxF7s1IRUj5ps+uMhJmhMkijDb0BwtaFo13dNKnw9vxIBvN
         iZ2RH/vdjSaDKaxQAs76U3gAVe8jGaF8V6i2CZ/b3BgQ9j/2aBYW1Pwd2ajYLDE5BL4D
         z2Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Qk58ppSt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k10si348355iow.3.2021.08.06.12.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Aug 2021 12:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95D5C60FE7;
	Fri,  6 Aug 2021 19:14:12 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: [PATCH] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Fri,  6 Aug 2021 12:13:40 -0700
Message-Id: <20210806191339.576318-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Qk58ppSt;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

When compiling with clang in certain configurations, an objtool warning
appears:

drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.o: warning: objtool:
ipq806x_gmac_probe() falls through to next function phy_modes()

This happens because the unreachable annotation in the third switch
statement is not eliminated. The compiler should know that the first
default case would prevent the second and third from being reached as
the comment notes but sanitizer options can make it harder for the
compiler to reason this out.

Help the compiler out by eliminating the unreachable() annotation and
unifying the default case error handling so that there is no objtool
warning, the meaning of the code stays the same, and there is less
duplication.

Reported-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 .../ethernet/stmicro/stmmac/dwmac-ipq806x.c    | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
index 28dd0ed85a82..f7dc8458cde8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
@@ -289,10 +289,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 		val &= ~NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL;
 		break;
 	default:
-		dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
-			phy_modes(gmac->phy_mode));
-		err = -EINVAL;
-		goto err_remove_config_dt;
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_GMAC_CTL(gmac->id), val);
 
@@ -309,10 +306,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 			NSS_COMMON_CLK_SRC_CTRL_OFFSET(gmac->id);
 		break;
 	default:
-		dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
-			phy_modes(gmac->phy_mode));
-		err = -EINVAL;
-		goto err_remove_config_dt;
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_CLK_SRC_CTRL, val);
 
@@ -329,8 +323,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 				NSS_COMMON_CLK_GATE_GMII_TX_EN(gmac->id);
 		break;
 	default:
-		/* We don't get here; the switch above will have errored out */
-		unreachable();
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_CLK_GATE, val);
 
@@ -361,6 +354,11 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_unsupported_phy:
+	dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
+		phy_modes(gmac->phy_mode));
+	err = -EINVAL;
+
 err_remove_config_dt:
 	stmmac_remove_config_dt(pdev, plat_dat);
 

base-commit: 8fbebef80107d779b8e356cf60323454a4099d76
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210806191339.576318-1-nathan%40kernel.org.
