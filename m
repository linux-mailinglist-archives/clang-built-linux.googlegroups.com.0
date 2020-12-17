Return-Path: <clang-built-linux+bncBAABBYO65T7AKGQEAIDHZ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E012DCF44
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 11:13:54 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id r1sf2902443wmn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 02:13:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608200034; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLLvHvRJuzDFKZS/8PqHOTX6JkKpVoBpFw0m4rKX2A2rDigNUt76CwOU4sL8uHrN5A
         5uZ5NifQVEV4Jvr2sLoN2PMgy1ptKQRINwUvAjB56FkMXrSpfb6pr0bBqnlHsKrwcd2m
         0PJujjlwwyTEZ3o9o/P28Uuqt5Y4J21hpb1J5cHhvbDIVoYSC3Ln7Boz5UYTNFAuPzAU
         Fo92GhVt6mhGpNtw9xAV9VJebPV5+4gK10lnQl75ipX1BB9f0OYc0bjt9UzL0QDtKG4s
         Ewggb2WYykxbPsMaA/wBu9oVzGAU6q82j42X2rCN/sliB0jXGnHoH9s6ROv6B43Mltjm
         3RVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:organization
         :from:references:cc:to:subject:ironport-sdr:dkim-signature;
        bh=US5D7t5T4Iht2QnwjD9B86EYTstNO7xgBZaB48nmILQ=;
        b=y3cQvAnYtXgt0QTHhjwBjLqTcf3Qt25J+ix9d5oVrCmWbvgDTJHIfVBZv/E9y7JY+1
         j3+e77E3umxYY/wPbLRSoB3VzfV7j16Fh0skPCMDvrxvDbEoaLoU1+GCdrSdYppEKXl7
         otgi4776mF3lZnsi3pcovmcZQVFfvba+1b2XvwVpCj8mExmGmYoF+Ntln4kWWRyhuqGw
         TiP0Beeg4yYc9EGx8iPFG1QlgbwnxZwxTLpJros/Olq5bNX+s5Idk9+2bY+8AZokEqjK
         PV2//96UzX/ZX5T9K07gR2Sl688CFGvcdRnlOSpSH1CoQKnyXhs5bkihTkwN84gEcGyq
         FGag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=kPqRC1g5;
       spf=pass (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Nicolas.Ferre@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:organization:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=US5D7t5T4Iht2QnwjD9B86EYTstNO7xgBZaB48nmILQ=;
        b=o2GZnqnp4JadnJkGvxBjk/ngbyDjzHtlFkdLyJZ9wGpD+lYjYX0690wUWheLJq8T3i
         oEIN6SHAjx3pMZnDNzm39Q4DxC9D/Zf+/7IykoFwljnHX1mgHCylddzsLqKV08JTEbPq
         M5QqJmTS3vEBlqPCKDnGjmesHrBUrmac4Cs7q+qoYvzaJab2FYExbsySa1EoWY12FLHO
         CzvOiQY25S4WFgIjvhxA+2V7Xvu/MfsMoyHmi+AMkyx/oku11pfhYTlmAXRcoBWu/Gso
         M/BS4RGMt5l5xhXXg7Mo3a85n8S8FR/KwKr701mGs2kzVsRPAn+f5KSlekpjOiDHVm9o
         8m6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=US5D7t5T4Iht2QnwjD9B86EYTstNO7xgBZaB48nmILQ=;
        b=Ve4M6x91csYsK2r/rFyvSEARm5ERX4OtwQI/lOlZTXBdFJrvuFQTuTsToPH/tkzAHr
         t+ye9DrLsj464HjbAkMNQvwRcqd9AoIZzF3LkvLopCUiP+IL2csAK2YXDL16ihDCptMp
         j3p4oFraoiIOclJzX5ucgW9uGGryyMgJeZ0b/ZQY3hTtfMZ+ufTcry93QCyGNbALETBG
         yDAXa6F991rbQMV9kXFZ/ptTTRn7o8O73dJUh7h6fL/uTf2SzCO67QsUnlZQ16ZNYAJt
         dnYBMJhmyA68c71BVSy0VmkA9WpnCZk7r9q+UryDYIujQ0OtHLjSSEt0pwMgaM8XcnKx
         Z4jA==
X-Gm-Message-State: AOAM530V0WaqB5KkI+ifYZwhAaijSjidWP1gIW0/zMDBD4CwD7+LQr+x
	GKdE6AZOQNctRmCw7NrhPik=
X-Google-Smtp-Source: ABdhPJyfRT/vTy5FPp57W2hsn7vJUWAWzOMWkf7AdXDgUJ0EPOJgQgnR2hkaG+Do0gWgc1rjwkeZSg==
X-Received: by 2002:adf:c589:: with SMTP id m9mr42439989wrg.370.1608200034150;
        Thu, 17 Dec 2020 02:13:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls2753189wrn.2.gmail; Thu, 17 Dec
 2020 02:13:53 -0800 (PST)
X-Received: by 2002:a5d:4242:: with SMTP id s2mr42885038wrr.187.1608200033543;
        Thu, 17 Dec 2020 02:13:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608200033; cv=none;
        d=google.com; s=arc-20160816;
        b=YbYiGsa5j2WCc/OPsWuZ21QtHF5OeBVWKJAHDCmR5jeS5f987TL+qB0tVlM3h4wPNt
         hZSxFYGxCIwY0tYrvY4oHV3Chvmc0PkcxRlQzgHYGzV724y/Il4hMVMEpGeQqKV0m8xr
         J9aPpXlTznSIPgX7VwlZNlJc3wFvnKUo/BuLiu1z1+d4dQuf6X1VeaKPdKnmRodHUJwF
         oK0fdkj74JhmqrIQ0StclOlr5bp+GIOscrvVYLD1ESsCsDZ05dMXLAG+buvCDR3Sjzzc
         Oj7BClWMs73SnoJ30F4EJHdX1R7kJLnfMbw8HKpfCHU1PsTKjen7rf1JaNegocBFfrs8
         lxpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:ironport-sdr:dkim-signature;
        bh=ZV/3aUdszy+7sblwzWIVnjB+Sg69i539lhSC7ykPAZs=;
        b=P+16NboTKvS++WpM+R+oTo+UwBLpeyYw/1rM/7sPW92cFyF+oWKDOU8QjXZb0KC4xN
         ztmdJ5QqE3ZiIuNuSMAGSRQDNTae0Sdy/JgP6wdmfK0oUTe1LYwSXyyVjEjEzjORdvl7
         v2rYXed1llMCM8VWpezk9LNnVImW1GIdMoaBYA/+lmZZk9Ym8YS/g4QYTWZ4vJZQXomf
         vdFOemIlHiF07W8INo7gOmJb1OP6Al0oQXufkTojj0qc6+2HJwd1hf4gVZc3yXTX7a/0
         WKw4BjimO/zGQhLND+ymIqhyhz8xQ0Xp0Er+sPM2Yr9RydofbbFK3m8ClgmLzWkw6xT1
         VTbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=kPqRC1g5;
       spf=pass (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Nicolas.Ferre@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id 18si203209wmg.2.2020.12.17.02.13.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Dec 2020 02:13:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: XEIhSz+1243SkrqAaquvhpaycDwjiYjytgf/0ojV8Ra+XGEh7Ub5SegTOh9PrYmkwiHPh9KbLn
 Pl790Ke1EUiS7vYmW3T9r81Eicw8r5rDDCK3xUTlaTjtHmW507fFjDS4WVjSvjas3p4LEpVUOh
 0Mjngbi1OqJbQkCcJgIPAmdYP3EQFre5wvdcTbEVE0zBzLA8GmtkGyvcxPbhCWJ0eI/LQYnuHV
 m9uYSCejclBipVOKhyxrDIW6kI2bbsPp13sNQI+b+9plwmnNJ5dh4/XqCtQdxDxDUPPMUCVhbO
 vyE=
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; 
   d="scan'208";a="97439396"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Dec 2020 03:13:51 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 17 Dec 2020 03:13:50 -0700
Received: from [10.171.246.74] (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 17 Dec 2020 03:13:46 -0700
Subject: Re: [PATCH v3 0/8] net: macb: add support for sama7g5
To: Claudiu Beznea <claudiu.beznea@microchip.com>, <davem@davemloft.net>,
	<kuba@kernel.org>, <robh+dt@kernel.org>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
From: "'Nicolas Ferre' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Organization: microchip
Message-ID: <419c402d-b214-410d-24c4-45c1d2ba388d@microchip.com>
Date: Thu, 17 Dec 2020 11:13:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nicolas.ferre@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=kPqRC1g5;       spf=pass
 (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123
 as permitted sender) smtp.mailfrom=Nicolas.Ferre@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: Nicolas Ferre <nicolas.ferre@microchip.com>
Reply-To: Nicolas Ferre <nicolas.ferre@microchip.com>
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

On 09/12/2020 at 14:03, Claudiu Beznea wrote:
> Hi,
> 
> This series adds support for SAMA7G5 Ethernet interfaces: one 10/100Mbps
> and one 1Gbps interfaces.
> 
> Along with it I also included a fix to disable clocks for SiFive FU540-C000
> on failure path of fu540_c000_clk_init().
> 
> Thank you,
> Claudiu Beznea
> 
> Changed in v3:
> - use clk_bulk_disable_unprepare in patch 3/8
> - corrected clang compilation warning in patch 3/8
> - revert changes in macb_clk_init() in patch 3/8
> 
> Changes in v2:
> - introduced patch "net: macb: add function to disable all macb clocks" and
>    update patch "net: macb: unprepare clocks in case of failure" accordingly
> - collected tags
> 
> Claudiu Beznea (8):
>    net: macb: add userio bits as platform configuration
>    net: macb: add capability to not set the clock rate
>    net: macb: add function to disable all macb clocks
>    net: macb: unprepare clocks in case of failure
>    dt-bindings: add documentation for sama7g5 ethernet interface
>    dt-bindings: add documentation for sama7g5 gigabit ethernet interface
>    net: macb: add support for sama7g5 gem interface
>    net: macb: add support for sama7g5 emac interface

For the whole series:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks Claudiu, best regards,
   Nicolas

>   Documentation/devicetree/bindings/net/macb.txt |   2 +
>   drivers/net/ethernet/cadence/macb.h            |  11 ++
>   drivers/net/ethernet/cadence/macb_main.c       | 134 ++++++++++++++++++-------
>   3 files changed, 111 insertions(+), 36 deletions(-)
> 


-- 
Nicolas Ferre

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/419c402d-b214-410d-24c4-45c1d2ba388d%40microchip.com.
