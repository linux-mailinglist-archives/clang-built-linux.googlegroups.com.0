Return-Path: <clang-built-linux+bncBAABBUGDYL3QKGQETEQNPEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5240C20369A
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 14:19:29 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id e1sf2841561vsk.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 05:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592828368; cv=pass;
        d=google.com; s=arc-20160816;
        b=MUuAHeVEW7Zg/Xn7Ve96c2vsSzdqxC2zLbR483/ycrdBYXnYSfi9pZPKniOT9EYd66
         xhe8IY8Jx1LqDrx8XQs7Rb9JNMxmAlYbCX9EMu4/A9Tr22Qxnqac0TSIbkItA8u4HT4D
         pHz/gONmmUQ/QQL2KPAnFYKe9Sv+OAq0yurRweCcITpiEkzxePqI3TBNCZpFYt9FN8qE
         28E9MdoZWkP6pgfAWzI2AYY8XcZbvBXbGJDXQ6k9mQuICFB4zkR9rsxp0TcvgHC/FuGL
         8uDZtYIEeGcBIN5wVCTMX6A5gPxjZWaiIJ+ui1GkCjsY6RvpqHN1X384H2QnsOztGcPh
         Becw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=X9GwHxF0dqHFXZ328NOJaHQ5BuUsCZrJ7e2fdjdKJEk=;
        b=OSeB5m6gTkWVerOQNhu558woiPI4QYLO0TKlAbLd+CIJwTIANB3LURVZdhnZocDVnZ
         4UgWy80Q9lHG2tV0p4bItJdTdXGDmZMrRa4VEhq585PM/nXUTmWy+8yAvoaf7n3ZXfZU
         FIwkavc75B3QXswrLTXssVDHEZTLg2vmnFIY4RFoIDTlCS7xw+gYKFukx8SyIoaaZCPw
         HAnIq6INZ/pa8Pu7Azf4wn79ruT6BFMoKpeoyS2+gsUMCAdNacbtNXs2/yO9hEwi5AOr
         dKZJ6H5WS7AbYUHBji4mb0ksud6CZeZP5kbNWtX2q+ABfYsGff5tEReC/GYql8jGGVVY
         q5aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xSJtdwv9;
       spf=pass (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pali@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X9GwHxF0dqHFXZ328NOJaHQ5BuUsCZrJ7e2fdjdKJEk=;
        b=iTT046mevDt8vb2ii5F6tj7vxoqjKaYVOSek0XWKkaoM2JCSCNnNDGxWFR+87rh6gw
         zHvpBpqc/lMF8+ECBSx18CrA+jXsYc+26sG7tpmOVSOU0v5NbDUh1pbLBQtNBUDsmv3Q
         0EOpXEtvagU7kue+70UtIdcnNK3muNXClg8fIr/miyRjeq3CSD7fLBrby+V5ZjOv9+dM
         QpO1AHFEZP1gEQojq5dgOmSGVjRjOZZXVGByIVPn/oxbKJAR85YOfrydiN9IciH6RFW8
         WPihu2oW1UyWBKeU4Oh2Ac1iv/tKL6mT0Z6DYET5pb4IPY4EPeDE3cG9kdZqKcTycmYg
         0dqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X9GwHxF0dqHFXZ328NOJaHQ5BuUsCZrJ7e2fdjdKJEk=;
        b=FyuE2g4QvdlowtrwLo540htJNbfbdDTV1okh3pzgI4rytmBTEC1cfwziWD5zWnyw+7
         hc5AJmusvNhbBW79Dk4N46QhAf/EOaiCGKgaFagO6T0oQba2wg/4yhoucWqMgSWisoZ0
         Dmje8dGiJph71QonKzE+aarwSlO4mGrrC8Y4VzG1OlOpB9FYj3V9Ksz1BV8NQE0Z0j+T
         XSBeyd+DuOQUXVBUufl7W237D1kmBk+YIrjjtPjyky4FQCsvbyopmskoilEegK9M7l6+
         ZMCJyGStLv9DE+FWy0OO3Za0JL5miUaTrF2K3Mi0cjv27rA2RR7CpS9U6hgsp/zju4KS
         H1EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ImIPAnJAgSvlLDJGxP+U9t0MOyaZ+XAOUM6XVvFxuk+26ISXd
	FGWxCe8ZLBAOH+n9O8q6XEw=
X-Google-Smtp-Source: ABdhPJyVb+JK7PvjdbpmeQZteLg4EbGrC2rpahockl0FSJiHciClpUdhCul0WCPe+0pyqRsZj7WKcQ==
X-Received: by 2002:a67:e994:: with SMTP id b20mr15696170vso.115.1592828368273;
        Mon, 22 Jun 2020 05:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc91:: with SMTP id x17ls1887899vsp.10.gmail; Mon, 22
 Jun 2020 05:19:28 -0700 (PDT)
X-Received: by 2002:a05:6102:509:: with SMTP id l9mr16777974vsa.174.1592828367957;
        Mon, 22 Jun 2020 05:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592828367; cv=none;
        d=google.com; s=arc-20160816;
        b=LgkjRTo3WKZPUrUf05peNLD3+3fNnbKv83TMY6v7fkHGcNRO6KaYpjgq2qrifwgC6s
         k4jrp/ywmv9AS6c4QkgZIamIFE/l5NiuZoiOPNA60t4lFltjLQpC0PzR9ShfeJH2cyp1
         rN9L6B5BMvWJtYIpFdSb5mMrMkJo2U55mEUH//fIDpMFENZWsM7NbZlH1mIJsISpukeX
         viyaX6mx+JUKFxhKv6jaB6n21M9sGt96aRtOU+kOyBAbyBwKsLfNe2Y0i/oOaJ3h+XtC
         HfYP2dTZ+53nj2hrdGTmCIcrvdX73EtGSYH/9BdRhyj4W9kOuroPz9AaUuPgWZsR630y
         uHIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TBFwSw0OytzzRZARrCcQkv5N3eLW525Y8vCXwxT0SBI=;
        b=taV3z1U/IV8XkW5nh/8reLpKy4mvANhxuA2xroELDoAk+EqrvYnwVv1xabKSHkDKY7
         t4+JW2nFCpHYuc31MIHhEd0lstPvYoV64mkrPt2NQUIk+P7oEVfpXn2YkPZAdKvfSxCz
         Wquh1bjP4AYtCv7w+kNKzgOueI9MKeNHXRfAALHow2uI0U21DEvOUd9WTJZElI3CCDOp
         +kzZ/8PYST+Z3FqOHdrSOQtB0AKlSRu3paaEL+eDdNFCEvVuRXJ/EQcxtM6W/Rb9rKba
         syp1hsm5KoAI0R3DzpL85h9BeWJ5YFP5PJWaDMQca4uf6BCh/LT1sBrzZapqeZhedqyp
         eLbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xSJtdwv9;
       spf=pass (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pali@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i11si1089407vkk.2.2020.06.22.05.19.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 05:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from pali.im (pali.im [31.31.79.79])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BE86E206FA;
	Mon, 22 Jun 2020 12:19:26 +0000 (UTC)
Received: by pali.im (Postfix)
	id 6B1A27CD; Mon, 22 Jun 2020 14:19:24 +0200 (CEST)
Date: Mon, 22 Jun 2020 14:19:24 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: drivers/pci/controller/pci-aardvark.c:350:2: error: implicit
 declaration of function 'gpiod_set_value_cansleep'
Message-ID: <20200622121924.7u3t6b5ffzlryqhm@pali>
References: <202006211118.LxtENQfl%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006211118.LxtENQfl%lkp@intel.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: pali@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xSJtdwv9;       spf=pass
 (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=pali@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sunday 21 June 2020 11:05:22 kernel test robot wrote:
> >> drivers/pci/controller/pci-aardvark.c:350:2: error: implicit declaration of function 'gpiod_set_value_cansleep' [-Werror,-Wimplicit-function-declaration]
>            gpiod_set_value_cansleep(pcie->reset_gpio, 1);
>            ^
>    drivers/pci/controller/pci-aardvark.c:350:2: note: did you mean 'gpio_set_value_cansleep'?
>    include/linux/gpio.h:188:20: note: 'gpio_set_value_cansleep' declared here
>    static inline void gpio_set_value_cansleep(unsigned gpio, int value)
>                       ^
> >> drivers/pci/controller/pci-aardvark.c:1074:21: error: implicit declaration of function 'devm_gpiod_get_from_of_node' [-Werror,-Wimplicit-function-declaration]
>            pcie->reset_gpio = devm_gpiod_get_from_of_node(dev, dev->of_node,
>                               ^
> >> drivers/pci/controller/pci-aardvark.c:1076:14: error: use of undeclared identifier 'GPIOD_OUT_LOW'
>                                                           GPIOD_OUT_LOW,
>                                                           ^
>    20 warnings and 3 errors generated.
> 
> vim +/gpiod_set_value_cansleep +350 drivers/pci/controller/pci-aardvark.c
> 
>    335	
>    336	static void advk_pcie_issue_perst(struct advk_pcie *pcie)
>    337	{
>    338		u32 reg;
>    339	
>    340		if (!pcie->reset_gpio)
>    341			return;
>    342	
>    343		/* PERST does not work for some cards when link training is enabled */
>    344		reg = advk_readl(pcie, PCIE_CORE_CTRL0_REG);
>    345		reg &= ~LINK_TRAINING_EN;
>    346		advk_writel(pcie, reg, PCIE_CORE_CTRL0_REG);
>    347	
>    348		/* 10ms delay is needed for some cards */
>    349		dev_info(&pcie->pdev->dev, "issuing PERST via reset GPIO for 10ms\n");
>  > 350		gpiod_set_value_cansleep(pcie->reset_gpio, 1);
>    351		usleep_range(10000, 11000);
>    352		gpiod_set_value_cansleep(pcie->reset_gpio, 0);
>    353	}
>    354	

Hello!

Could you try to test following patch if it fixes above problems?

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index 90ff291c24f0..01f1fcbb8770 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -10,6 +10,7 @@
 
 #include <linux/delay.h>
 #include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/irqdomain.h>

Both GPIOD_OUT_LOW and gpiod_set_value_cansleep() are defined in
linux/gpio/consumer.h header file.

I do not have s390 box nor s390 cross compiler to do verification.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622121924.7u3t6b5ffzlryqhm%40pali.
