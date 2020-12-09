Return-Path: <clang-built-linux+bncBAABBVEWYP7AKGQEKX2ZSHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAE22D429B
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:21 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id e18sf413810vsh.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519060; cv=pass;
        d=google.com; s=arc-20160816;
        b=GptCvdE8KDxZuXAuY4icY6OPLaw0blP0xkW4HJDQu04jtEnRQcxsfEWaoBKdsaictD
         19pV4QR8rK9JOLA30foaatHG46a7JoJWpy1rBeEPzj3a4aZFR1O2GIw/vNClg1aeNns1
         ZZAGSNVhyWTHNTiNsvVauVGgEC3u7c/2bqA77uPcjsZ+hACKxKLoL1LxTLjfRf47DwhL
         vAuEWrnbskORzvDsjHZprqloKlDEBijSrKZN6CSME6kKsGfLNXetJ2NvepfTTt5BLWoM
         TpA6B9CT0zBYhqJ6A7lrmoBhkSo2SEM4YyAbg9QidH7rRrIiC5a2EOs/C/TQ2EwNK7J+
         wNcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=QY+qtsHtC8xSDUCreI2efN7n7OjQb/6qNgxuO6AB+nM=;
        b=Y5y4fNDml11ado3wUL7bOSRNywCBAPFWBTK2w6TRdwK8BCRekCXCSbGGuH91rNUtWi
         DWs/cxeVF7Y6bZAjxQNS7LPFNcz1K+JEt5qVVduCMwHlZQCP/rKng4kDOi62+y9ScOdE
         aKlB+2cZoGGGxqyo5m4A5geDmwTuYFnyDHQI3zCGq0N0JQCzS7WtFMZsOdsfW48SlVUO
         z64vlgFPytZ+zppA19BmySyYjY9tdZpKWHoCzGWfTSNXsS1wXgOK1/JJP2aYnHM3q0eA
         81M6EWE9RuVyNb1kpHA/hZ8twflV080zI3TQLGcU04dL/oRW6+nXTYG41ds96sa9ML7u
         DPZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=plQ6IRCO;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QY+qtsHtC8xSDUCreI2efN7n7OjQb/6qNgxuO6AB+nM=;
        b=tgFvMMH2COITIHQkHyPj9tKvlTRlU+fcSTIye55lzZl7cPI7g9/58ruMCcxZOrKgrl
         NIxhEa5ahRMpjJguhXrSNMGmzjx1f7CxAFXdIdDFzm1MO+Exht8Ucvs/ZShrP5luYSgt
         ZdRqJ8dmBU1wstf3S3WRAggKDtZ1iiX9BJxdVX5cQYVv58CWt/ZPBTW3EhRyPyG7wFv5
         OWYLiph+X5EtjQrXMQslkNJeLsAwkYKynVDWqevE1hIDoAiXAGbo6mvqmeCgE6leYMGX
         uwZrrXjHM+Mn1rLwZiYv/NAlC5WkLcwiGK9s1i36HNw3C2j8m5QzU3c7i4Ex9HhO89XT
         PSSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QY+qtsHtC8xSDUCreI2efN7n7OjQb/6qNgxuO6AB+nM=;
        b=DTb0nd3YpdZ/TG42A+osNqDAUlrMwpNM3Ow+AF0LL46ClDRq5XmyyrDxKXAATsFx3O
         751UBIVS2FVWcHIAfaoc7ar1nHuCfXgOTxmb7/BrEHhSRaFXyjjCjuFpZU/yytVm0vxl
         Hi92pBE0lgv35RYfy3GpBwkcYNd4Bo0bBCVpx+LRx/Fkny4vLUxY+oe+q3i8eOfhVUci
         1WG/p6mSMTOerfnLgANLsUCiGPHHS6zg5AVVqiUIbzueDF0fd53XWYhlq9zZaXM8ZG7i
         vfVG3gmoBcaQcAZVgmLB4ujZ+ZNcQnVFsSZIL0yOKJN8mkDwYC2teC73PzGqeffRV7dk
         h/xg==
X-Gm-Message-State: AOAM533PjpFyN2H6652TpmF1c0KPjoiiUIhTamOKUYNYMOgmxE4ruoCO
	qXKtqCYreTWL7UK+sWUR3Zc=
X-Google-Smtp-Source: ABdhPJyJNpmnkiPxufiG1J8NhEOPaASAelJR311y/rNEJ1oyj3TffeH8Ol2COFElbxTSEPiwu8EeIw==
X-Received: by 2002:ab0:ef:: with SMTP id 102mr1254922uaj.60.1607519060328;
        Wed, 09 Dec 2020 05:04:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2206:: with SMTP id 6ls101970uad.5.gmail; Wed, 09 Dec
 2020 05:04:19 -0800 (PST)
X-Received: by 2002:a9f:3648:: with SMTP id s8mr1220188uad.56.1607519059910;
        Wed, 09 Dec 2020 05:04:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519059; cv=none;
        d=google.com; s=arc-20160816;
        b=EE8CCkSxEoWam7/mmyzE0tQfVEBiOQhN8W5lCAqN+60XODxfzuk4ZjBC5/FF/80xfu
         Ab/CmSDlakY9CmF0VMOQ2e9R9qeB3PASs/CpSUTeAK4fbjZzgLABlIKJw6/KgCKtI5Ye
         cpjaPlZvZR1/5KJtmEWIh1Oj6vmiJE2kun5LvCOebyv5OKyZrj/mrqji6p0+MgLjDVPF
         SFLpN08PEelJJuVbfU5ShjqvpzRiyOqP3b3dZhDrtCXAfK90Twh1SuK/4UIx//utR4JT
         a81oVijqPyWnujXKZOZZhp7pMzx8e6/RNZGPpoU5M2PAUyCWHFi+Vb8KJtHoWpyQrShX
         ok/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=7/zwERAaLlGOREwJ7MpsSmAyVQy9QOB0tW0VbY7ASF4=;
        b=IH/nRsNoaIm+kjJhVEbhi4O6dbGZE631A/rJ4vHV527NFRsWzzWm4RBnXtKZe5LehK
         MvtjTQimEAIqvPGiamkxxKXGw2XZ9SzGHmTAuO/rP8AFfbCkhv7/9/iANQ7n71TXU/Fn
         aanALUoptCnZg5PR6m065BRhvptJusjK32kSXARG47xDc5/fNB8TAeTH+Wcwhvw4/uj9
         54gnqM5JjkR/QT9zc0gm7JRZ48Jq0iVxnf61ZnXMXbw1wpbHwy8IFwG+4z9xaoWpKo+d
         vslGOKC5LpLDFVPc9fu2wLjTGe+PYV8cVkL3e2hyZsi6KL46XXo1Tr1IEWjROHPMqz3D
         kKxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=plQ6IRCO;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.153.233])
        by gmr-mx.google.com with ESMTPS id q22si126821vsn.2.2020.12.09.05.04.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:19 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) client-ip=68.232.153.233;
IronPort-SDR: WnhyyC67VAqaMCBDpwz2vNsmDbtjfzkkqnGtk85N3D9h3jDYItoQ7C4Nnupdn/1sNsgHXOc+kL
 +ZhyWyra5UpPa/Q1iDXyyg0beKqDen8eBpbzgHrIYCQ92sFgThhCzmk6bxR5Wyode6wTY7TsSI
 AwxWeIEMBCK2AQq9QpTPJ/5SWq8yun4cV7tOWkm78T9TksbTZPRf0k2Ewy37Q5GjEs4TK4zeEA
 x+mgpY8Hs9oQMUoDITxKmCbfiVzsBvOCEX4PJPeWv5f8It7MbfLzf9POufURyhRXrgd9TNs3XN
 q+k=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="106862448"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:04:16 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:04:11 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 5/8] dt-bindings: add documentation for sama7g5 ethernet interface
Date: Wed, 9 Dec 2020 15:03:36 +0200
Message-ID: <1607519019-19103-6-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=plQ6IRCO;       spf=fail
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

Add documentation for SAMA7G5 ethernet interface.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 Documentation/devicetree/bindings/net/macb.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
index 0b61a90f1592..26543a4e15d5 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -16,6 +16,7 @@ Required properties:
   Use "cdns,zynq-gem" Xilinx Zynq-7xxx SoC.
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
   Use "sifive,fu540-c000-gem" for SiFive FU540-C000 SoC.
+  Use "microchip,sama7g5-emac" for Microchip SAMA7G5 ethernet interface.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
 	For "sifive,fu540-c000-gem", second range is required to specify the
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-6-git-send-email-claudiu.beznea%40microchip.com.
