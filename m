Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBBFMTH5QKGQEZQUHKNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A3C271018
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 21:03:34 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id x15sf1674669lfn.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 12:03:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600542214; cv=pass;
        d=google.com; s=arc-20160816;
        b=LL3kbIHAqzUGHGhio3T47+XZzv2oQCxWv4Cy4omQq7/5aeN3bge2qwLyG6HjmCNrBw
         w7+7d8k/Z1NEFSKeJTPp/NCGMPkHFN0eFHre4ArKKCK9jpDvEoWOJkXXSTdH+0+5oHZx
         h9WLaJXTKz7HO1jEnSnuTGO8F8dryTws0UgBe9cijKN6Kvqz3Djef4s65MZfuvszxDzR
         kqYvAYb4mbYTB35Ggm1wcRVTR6g0+RpXQNNs/W0xJw+VKOhmldfueUx8Ny7POgQJR6wJ
         I3YuBaGJ/rNqGRb68bE6Q8MmhezeRGZMnWKTcX7VrwicU+rp24UFOTjU7b7OaLj+ZGuD
         QvnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nQ1BaEU7NXJv63yDKJQJktafEP5hwcD86CiTarkjqE8=;
        b=XYkRroVbc57hhxz4SwXfxPBbjm3wsyFKqTaiUm0E8X/+kS+h9eGYYmKKgqowfjFVao
         33+ji2e5zItQmSOs4ly+lRu1UTJeMexIGHbkZa08jTBApdyVCRF69wDkYCIRt7RZdOq/
         7Gzthva+L+P7nAjWuuwtGEB1S/NhBSDyk3My+Dmr1DI4vMgsRzBLe/foM8XM9q97H/Ch
         96vYZCd4/WdCd/Cy2n34V6znaU2Taf1lnH+tGCJqYtTxyhMRdmUMvwOz/0kf6BAUM7fS
         dLGH1PfFvIlihkEgj5CA7TuI4tJfyUYn6zoDTO4MkIhz03dUgn/xEcjkTz02asTmJ3yY
         WPPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQ1BaEU7NXJv63yDKJQJktafEP5hwcD86CiTarkjqE8=;
        b=WMCOFfi5N6JAW6nBKHFYXtBqKqLokbE6xLSOCEw7KL93bQ7EsOlHdqEPrENaK9pUfH
         QfO8uioEU1ubZvPCKd9Wuiy5EN1ZvIlP7oft8xEYy/4HpYnp1E1UXN+qYum3GqN4mVDT
         S2Tl38qV8s4M66oS44Wk0xai3BHKep6nb6cEi3FpKAVox2r4jYGvcwzIyn4G/FtTMjJt
         INfFGbo68fdW32yxUhD65Ohu7i8jgyT1lDJPTnu3tlTjsSqtmbzh56wjD888OD//kcPI
         1L4h/PIbpr93rVtV3JDuwcQil4sGByOhMnpsXb5uzT9TnIsKN9AaVimv02AcIpN65Rfb
         hgqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQ1BaEU7NXJv63yDKJQJktafEP5hwcD86CiTarkjqE8=;
        b=XX1p/Z7ir0sJjIpgNwlWxrltgLcnozG1DGaa8Dnc2YG7eJeqLHPu/qy3V0Ia8AHUYL
         F66wLzyQQ6fz2PBSQ9gPuJs9q+7e3phHNDTxsFmzHG6K8LqkdWrE7QHgMWYPefXFK6Px
         S/YNREYKso/si6CeKAxDiFa1OT8nZQLLvH1f7B+IjgwnPMKvMYynrlDl9KoQHVW7syCP
         pN2yoHoTzL8cubjz7+/qsgFodutMJaOgk4ltmeAPGPDNkcf/Wuq1ch8uwkX5INMzjThb
         PX+XBQ1ZM6hAsNXxpvgydKhqVdIQigRjvatM99/55AsCDQwfy8viC9DGpeC2TeqHAWz8
         +qNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PtK9kB8j0P/bgFRzzSSPL4ZtNQRlpjMYK4ldnwis5HFyqJL/8
	ZojOiHpha6TxagSxiwSOiVg=
X-Google-Smtp-Source: ABdhPJw+bY2i9nCUIjkYo/fPO2v3xJjOKtTDhMaLaSKvc3+2cfhxbDDJb3xDGQwKBwygkkvvB3PWtA==
X-Received: by 2002:a2e:3312:: with SMTP id d18mr12925632ljc.328.1600542214108;
        Sat, 19 Sep 2020 12:03:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9151:: with SMTP id q17ls1205363ljg.8.gmail; Sat, 19 Sep
 2020 12:03:31 -0700 (PDT)
X-Received: by 2002:a2e:e1a:: with SMTP id 26mr12295091ljo.377.1600542211624;
        Sat, 19 Sep 2020 12:03:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600542211; cv=none;
        d=google.com; s=arc-20160816;
        b=O8FeuAQD9zbF8GaqzBAt1JbzMxQTYPQCjlqZbL2O5PSICCi30jvha+qPKIk0Akwwqr
         7UfAtpW8eTSWA37B4sCpeAcf9tRoO7bCYS/pFPcruQwlRWaOx+di/611jZXhRERHoUMj
         euL14vWKEa3+DP/xPGxW284astFSAhgDn31dLYuLD1poDQIwy8Yz/N5pXc4/+zfWmvRs
         5FRDn8dvb7zHe8OGfGL64YjEuXIKjjN5VT+464c+FlZgKkgAMdXQQgaexET9n1OvqWcA
         fYwC0UC+qawNuIr2kfUKsV/bZYaueij7y51GYEI8Gb75N2MhfpmiCVXX+oIQ3tnj8O+T
         wtUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=6510f9VCZeOC75jb3+DnIRMsKvg/ls5ErsD8DzCYuXQ=;
        b=avVSygPBQQrGbV4rbGCduekMUPmd7Q/KLb33l3OfXe0wU6kIf8ai28m22JhOgjnozD
         FPCHS5vcD+OLPZ5FmtirQgoI7Ls4kNv3t46ZkhVdC9d0dSug4F51KanP0F3fl/9ST99B
         Ar2CuaoEBnrZ9Xn6BJHyStFL4aPC53Cs4IM8DmyRWIMM23Fo4v+wHbtO23Tg0/m7JUol
         Bm6URwrJ2rCYlU+q0qIpj7iztOI2r1uhJ2wYT8Bh+ZnOLNEzIiUr1nlGxkI13dy97HAT
         W6OHRc7sJyp8yuOtRRMm7j6CJj+i9E3Axf48TFtPYf22e7cR0CmNx63OGqwGpc9rduQ1
         Brww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id z6si186477lfe.8.2020.09.19.12.03.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 12:03:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kJi8j-00FPak-Ny; Sat, 19 Sep 2020 21:03:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: netdev <netdev@vger.kernel.org>
Cc: David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH RFC/RFT 2/2] net: phylib: Enable W=1 by default
Date: Sat, 19 Sep 2020 21:02:58 +0200
Message-Id: <20200919190258.3673246-3-andrew@lunn.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200919190258.3673246-1-andrew@lunn.ch>
References: <20200919190258.3673246-1-andrew@lunn.ch>
MIME-Version: 1.0
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

Add to the subdirectory ccflags variable the additional compiler
warnings which W=1 adds at the top level when enabled.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/mdio/Makefile | 3 +++
 drivers/net/pcs/Makefile  | 3 +++
 drivers/net/phy/Makefile  | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/drivers/net/mdio/Makefile b/drivers/net/mdio/Makefile
index 14d1beb633c9..14600552eb8b 100644
--- a/drivers/net/mdio/Makefile
+++ b/drivers/net/mdio/Makefile
@@ -1,6 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for Linux MDIO bus drivers
 
+# Enable W=1 by default
+subdir-ccflags-y := $(KBUILD_CFLAGS_WARN1)
+
 obj-$(CONFIG_MDIO_ASPEED)		+= mdio-aspeed.o
 obj-$(CONFIG_MDIO_BCM_IPROC)		+= mdio-bcm-iproc.o
 obj-$(CONFIG_MDIO_BCM_UNIMAC)		+= mdio-bcm-unimac.o
diff --git a/drivers/net/pcs/Makefile b/drivers/net/pcs/Makefile
index c23146755972..385b5765e390 100644
--- a/drivers/net/pcs/Makefile
+++ b/drivers/net/pcs/Makefile
@@ -1,5 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for Linux PCS drivers
 
+# Enable W=1 by default
+subdir-ccflags-y := $(KBUILD_CFLAGS_WARN1)
+
 obj-$(CONFIG_PCS_XPCS)		+= pcs-xpcs.o
 obj-$(CONFIG_PCS_LYNX)		+= pcs-lynx.o
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index a13e402074cf..c49d40dfb6ec 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,6 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for Linux PHY drivers
 
+# Enable W=1 by default
+subdir-ccflags-y := $(KBUILD_CFLAGS_WARN1)
+
 libphy-y			:= phy.o phy-c45.o phy-core.o phy_device.o \
 				   linkmode.o
 mdio-bus-y			+= mdio_bus.o mdio_device.o
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200919190258.3673246-3-andrew%40lunn.ch.
