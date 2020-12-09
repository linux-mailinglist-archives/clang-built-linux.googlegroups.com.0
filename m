Return-Path: <clang-built-linux+bncBAABBWEWYP7AKGQEOBR4G2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id B918E2D429C
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:25 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id y10sf731345pll.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519064; cv=pass;
        d=google.com; s=arc-20160816;
        b=cpUpVSxqm+7RARWTpZ/tAP7fcJpSoxbzu99tr6Pd3LXy8gRd9hUPR5Q+si/oG+yPNC
         gaFWne5rYhFNiI8gETgfwgNiq/oVoSRmClb4UUNU1R5qqdjblpm9LRKNjTz5KMGq06r1
         lSIGlOUbGvJfWCxeo2HgePhAT8x2xOJbpGnjo/lyStkSKb4Z6MteNHX8Ye3OrVeyHlhA
         +5J6faIBOPF+D31djtMVDoAFryku93mEVej/53BTEBdSOljBeBykG/z3nejS++t1WBpp
         vPdASzSHCaaOuX5J72EcqwTGGNnfgs6P9G1nNpjLo6Eq2OeShuuShqPOKzAmafa6QOhe
         kQVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=4EiKpUc98X3csEY0OVRBJYFiEYUfK6uXI5rOMUkznEE=;
        b=EkzPa0vlhY0G0DJTsRMYWJ7mFlKj+4jmuGigAOEgXbwS9DU5dSZeLUvIBKVa3DVeP+
         epp4+Yn69ChBxXecxIwYgZUPYBt0mxIO234JacWx8mNd02gyL92qLmn8kXQQ9NkIpgKz
         ZJIiVvYVKrShjG7BEla2DE8eJg2jLX4MK0Qbcx5Zl7hmAmZ95/OE40VikWcDT7orY215
         rbfUmTQSqVgp18dslIN+usjXwUOQBvncD1vMShD26PWx49dD2++oHDKn0HxpD4YfIOBR
         x50x/NS0wcCGsnqewepH7TAwwMtIAH43hyHmHGnSs51tkP96P1wS2r4XWJxSncM3vLgj
         XVQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b="p/DtoWLi";
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4EiKpUc98X3csEY0OVRBJYFiEYUfK6uXI5rOMUkznEE=;
        b=SMnKogMO9w2QILJsesub+PW0aNHt+efwNOpf6eJYk8twVnOipDam547Ob2XNpNq0U5
         LGUliRDngBzpNtfzW6reejLwZtkipayHckE8b1L1U5dKxj1K7Ud0XXarDx0rmQDynPe8
         gRPrwr6uYQQu3a0IHuVXP5/4eTxzC1b+2PDz13rKgV7XW+zXXxZNDwH7YF37rh9XcqqV
         hV5AtbuU4wGspPOC8+5gyGac0KNYlP0Gwi918zlxHcDgk9vajKFt57OVW6hlSPkiP2pb
         RE3cCw+QnP3yjjk4H5CrQtneSYjdVCO5T/wcvVCVBTgSwyQ+TCoi60UmjZqrtqTpdhX5
         86mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4EiKpUc98X3csEY0OVRBJYFiEYUfK6uXI5rOMUkznEE=;
        b=mQzh+uHwtc2O8pbAemrtGT7drXYVEGEnDEwJoYIBElQzP/AEYJms/sl4bp/+WsQ1xZ
         kEVJcWAan9WkusMttXkgsFannW14AbwzeWtGbkdnbyt0ykncrCJ+EHUhjYxZ/KdihbcF
         8WbDiIS42ZjH8Ki3Ulm83G3lX5qYgubWbHZy91Ib+cGkTVcX0K8cK62D32jZF5ZFcA+M
         cfCU59i+v9/U50ULZjHoINFfQRqq6JFWyGdoolWRJmpG/6TxUTtKZLFOX6FrXwa4MOaR
         s1aJ1fCcX/3PkDATzaxWWKZ+/wmynG9CgKJH0CD4Q4ku0OJs0hcZDtLbRVtLN0o+IR1V
         xFPQ==
X-Gm-Message-State: AOAM532yy+z2aG6uR2nQG2oTp5BB0TBkAmgOHlBXoFL1S1xj9NDgi32h
	IqWcGOLjxrjD81pOodvRe/8=
X-Google-Smtp-Source: ABdhPJyxqVWNRZ+vbpHsmPlLX7NpznIfT+2Zc0sFauhwkVddFuEDWWS4ro1qpPuufEtdhkPKAatWog==
X-Received: by 2002:a17:90a:4b07:: with SMTP id g7mr865503pjh.0.1607519064268;
        Wed, 09 Dec 2020 05:04:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9550:: with SMTP id w16ls650033pfq.0.gmail; Wed, 09 Dec
 2020 05:04:23 -0800 (PST)
X-Received: by 2002:a63:1d60:: with SMTP id d32mr1852097pgm.343.1607519063698;
        Wed, 09 Dec 2020 05:04:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519063; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXjIXhDUXJK9DkSlwGIYKjsRvtq4WIVyCjJkrI9U/i1PtkvYIw51lfZpfYol752x46
         hONKPTO3Ng91XoXOTYAFxgC6t5spWhmhYwiwBWpQaJ7VcWeBW4085qYc77gWBAM9K8Pq
         Q/7W1QpYesZnu3AA/hmMc3M9t8/4ocsvM9Y58rkdSyfFsVl8l5M/60duioM5SjL+BljX
         AMPUTtYF5HsPw6Og3BDTEiFMdQp9ayyFL02eBjUuB90OR5ucRjfC0/W6x1Sbi+zRFBrf
         4xyIKo1k6l5A9kPl+CvctvwnRsCtY0qXFI44QhTc7cVTvRhqBTFht5Zh4VCzq8TvhTo4
         8gsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=kLviCq4IBx9dzCDSHoLCGT/b4pj8bs9R5R+krzMrIxY=;
        b=ZRSDuL2ll+rvux7aXsAtyc3dElaRifVYSZMp8CLObHbeSqObrYUSuF0fYVv1vDyfKS
         1Hzpa8VUQYSMuy6XMmpkwvSy/7+PDXyAEPQe5ToTMiv5od/mjRImfd21Or4/tfGmCjm4
         2HGvPT7ZUykE4zDAvBYGBYZrEE5HIT5gvgkBm9VhaOEJ6vkwW4j3L8aaijvmZVrcXipA
         u2Nv+RZ7c2GJXD3m2rs5GfI18jcLNBEdi9EmlE5+kxY1AatsmvB7tGTXZ5K83rCBTfjr
         vf6gMYRjY/BQFby8YUSay5cyp/Vse9dJOAyTwOcqBmCkizHZUTdPVNuxxJmKiFHyDlif
         IBPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b="p/DtoWLi";
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.153.233])
        by gmr-mx.google.com with ESMTPS id t126si136811pgc.0.2020.12.09.05.04.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:23 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) client-ip=68.232.153.233;
IronPort-SDR: D85279wlbtKwsgMbnckM6EJMxob2UCJPsIBQCPI5//ojOFlbb4sQCrmNjkCCY07+E+qqJy6EUZ
 SjgOZoZ6MqsB7d6RN1X5fYMtLhCbkhOjlyXV21hfmjE1+JFu5WJgtK+0D6SwJVwhHmHbPEE/qF
 WNhzlIsztmGHXQpIUKJx7OyX5Bus+3gG2q0kKFAaBZJF7kvsyw2m415BurTRR1wNnUFC/eJGLW
 7f3xShAP/9I0SbqLTxr6NHr5pdRw7LaYyhWslmfVCNYJXhYcM8FkUIIVlPs5gbmpIoCd7XVahn
 Sdc=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="102102705"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:04:22 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:04:16 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 6/8] dt-bindings: add documentation for sama7g5 gigabit ethernet interface
Date: Wed, 9 Dec 2020 15:03:37 +0200
Message-ID: <1607519019-19103-7-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b="p/DtoWLi";       spf=fail
 (google.com: domain of claudiu.beznea@microchip.com does not designate
 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: Claudiu Beznea <claudiu.beznea@microchip.com>
Reply-To: Claudiu Beznea <claudiu.beznea@microchip.com>
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

Add documentation for SAMA7G5 gigabit ethernet interface.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 Documentation/devicetree/bindings/net/macb.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
index 26543a4e15d5..e08c5a9d53da 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -17,6 +17,7 @@ Required properties:
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
   Use "sifive,fu540-c000-gem" for SiFive FU540-C000 SoC.
   Use "microchip,sama7g5-emac" for Microchip SAMA7G5 ethernet interface.
+  Use "microchip,sama7g5-gem" for Microchip SAMA7G5 gigabit ethernet interface.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
 	For "sifive,fu540-c000-gem", second range is required to specify the
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-7-git-send-email-claudiu.beznea%40microchip.com.
