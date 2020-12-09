Return-Path: <clang-built-linux+bncBAABBOEWYP7AKGQEQV6HVHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 263CB2D4297
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:03:53 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id t10sf2200822ljj.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:03:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519032; cv=pass;
        d=google.com; s=arc-20160816;
        b=xItuOYt1BIR6ONPPwif5Cfw6K4FgtzpmC1Vni4C0Gi+xDWXRDJ31SVzB2K3+5TfyfO
         5HS0VbxuS1t0Aa4K6N2Xtvf0jQGE+4Nn97UsmG46fepFOyOdeCWeahnVA5PRhlOALRzI
         sfrEyj4pxZ9/kL2pgtJfs9srUAUgD9XKW7XOYaeE9AIAYyfbh0D6DWg1Kq9DCOZN4ZMn
         Ay8CFgM6CwsrG/NYx1TJaSVfLyElPpkRCSMdNGanoFvshchL7jtrU9v2UN6bXF7Op/E4
         uwBVo4Ab4v6RyohijUaMvwuCRINcpWPvFhqqr1cK0aJ/jkrxLLXyIiOpL30aTpIvnW3Y
         bBFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=RMdeQeDX3FxCDjA5QzU8ApcIFd5+6jgosWeT3u+1Si8=;
        b=U5896phVYWT8rUxs5sCZ01W3KWqA80X3ObBTqYwT53vV7Bjw9E7HRa3jAs5YP61Q3B
         gH7EbTlAWxwuge2f8C17AAkUQ0h84KC4RA4yygS0HykPIIMNfLt4GDyX0ZSaGbQuyoYl
         8hB/BntZt5eK5teaL9QYtzubAHMS1+FxevtTyH8MCmMKGLfOQeaksviarKar44cImlPY
         cUu8EtYdoYTGxZb+K+2s7lSJVMNbH5qybD7TWgRLp8ImuS3m5Loa0a+JO+yZBeU6ox69
         PckB819idcVXPI2hpXPEYs3+Ne8feUBKBXMcM5gKRtEIjiyT2/w4Wf3aYvmPn4pUXlp9
         5jrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=KDnCCc5M;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RMdeQeDX3FxCDjA5QzU8ApcIFd5+6jgosWeT3u+1Si8=;
        b=DG04F0vs2icyNs7Cad2ErwM1c9oUzPxeG9/EVzgggegFmzAsfLl8xvdBT3GoRcSNd+
         Ugr/+hUdoE6kgMCK6z+K99GeB9pEgN7zTiW6XIeggyGbCjxEvaf4k9QY5NJdVLoiMcp4
         iWgJu5mSz6BHeE4u0Od1x4GFNxrgFz1mF6Fd1iJsFVjKhJecdPq9bnZJVqsyCF6Vhyxm
         gUTXRAq2lLzTi7BiDZtuqAf+8XexL1VRRdzVhbiFlSfWo22Rv1RvrdJE2reknvzKm+PR
         ku4cqOjCmJ5Jn+DdLI5OICHQQEG582EhjMwzroxHaSExZy9/nx7kh+8BDUP4mj4dOwxS
         fPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RMdeQeDX3FxCDjA5QzU8ApcIFd5+6jgosWeT3u+1Si8=;
        b=UJW+1FDnYzStXJ2e2n2HTnRJGId5qpo18uqKboQcYGoEr66vVGqA1fOQsQFhC4M555
         qfRUpJn/BcdV2YNAGouEynCpejExeUAu9SC7lBxIa7/deLocQfNFX2+ZyjOPxvcnUCAH
         sgmFdqqKm4x0ZjuCFUe4ryUZjcrboOUOFG2CzV+JYXgAlMxzyqCT7bUNFAXoX1+hlXPi
         cSWA1N+40r8nYNjF1Iigl9PGKFd5g7dIeKdvsPHuXrwxxx4/asJbhDhM4pZxyPUy5hPu
         qE1J62h6vYeRVzg3KoZ1ic0VJW0ULen2xU+RTR+YAgkB0vfL+HPkEYf1xuBuGF+UwUAQ
         xGmA==
X-Gm-Message-State: AOAM533ZnqqmHgfsXQvQIDIM8PR4Hl/gACT/awlyoDtdIzwUYumPtjoN
	qnWsNgPv5hkJ+FZJqVcZxLE=
X-Google-Smtp-Source: ABdhPJzLc/WbQq7DH/WRoE8o4+xuELlEe29Ihm+JiGqiR0s3XtuUrAoII8fimcVD47dXAIrj4lyvKw==
X-Received: by 2002:ac2:5145:: with SMTP id q5mr902940lfd.626.1607519032699;
        Wed, 09 Dec 2020 05:03:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5816:: with SMTP id m22ls313530ljb.4.gmail; Wed, 09 Dec
 2020 05:03:51 -0800 (PST)
X-Received: by 2002:a2e:82d0:: with SMTP id n16mr1109008ljh.474.1607519031884;
        Wed, 09 Dec 2020 05:03:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519031; cv=none;
        d=google.com; s=arc-20160816;
        b=wN5XVgn3nByvo88GCy0zO/84QR4A1/dVOmC38cOn9tYor6bGOM+YdZnrUhWTpBeftL
         DQjuUYUW+YQHzucKslfBouf79uLiDSPZWB0n5BBGi6Jbm06yuRZdkoo9fFZ64tYOp19Q
         KdR+OYDwjhu2M04evKUMDiSSAFUXEYi5HuWctnmkThEMvUH9kHL9qfb04i36IXVp5yrR
         47fBp7NAzWcMGsSohuoJcd5myRCmnl5hcJiksg5XBh8xooLeBJvGSHCDXeU9jBCe/X+P
         vuFtyq29yErwmhLDU9EKa52IO8tuWrZGezh9BbWtWEAnjZupJ80UFY1+aai/p1jalhPp
         QF7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=X/SJbWXGqNHXHTWEvSLi5/UP9U/DwOoPYSMBzZPs81E=;
        b=FvRgQ9IxrGFX5YcP5Lyou6M+e+52mSKq3EGfSKHqPhJGj+4ZNeTPeTfCJVldgoE2vx
         6wC3gi27vxsLOC2fq4PiDx2OY7fh4bU/jRFAvOQMlZtPI+uPaU3DXb9XiKIvgzswkYb8
         UIXr9ezGJ0kjEud5nhpDWtCDcxyF1M10/ir9/WWSYhBYsjmRcwobUyvc7gxOhcI3gYN0
         J/x82DLJ9PYtjk9YyaKAET1A3YSAsy5Qfa3tlcMq8a7tidMVcjI5ZaZ/x4m9ME32PwHJ
         6T5a1/lbu9jIjS4fdKlXc4Gns6WTu3OlhFmtVENAIGgEFNyDfnhN8csbR7ExzZ+wxmYH
         FFJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=KDnCCc5M;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id v191si70857lfa.9.2020.12.09.05.03.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:03:50 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: Wb3mz58QsGLlyO+n8Tfn+3uH/qd/+27a1Wmk46njoyUg7qfNEHTuQExbcDBADE08JOAVYc1Fdh
 I5zunxGPGffVEd1DJR+u1iJRTwXNg2X1C9z26KUrhkMxVANvWwg2esPGkATW2RkiNb9luuK8eZ
 lqyxYjtvXohowwBHWcCyQgba9raXLYhzt1Jns/MMjDc7d+KSIh73AY3Tyq8TxSmQ034k4+rxWf
 YGNFefzji9rMOaIiJfbsaAPwkyymMjL4BSvyXbTnuRdPsqCIMjIXjb1zPL6YiieDFUGnCEYkTA
 2Go=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="96475062"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:03:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:03:47 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:03:41 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 0/8] net: macb: add support for sama7g5
Date: Wed, 9 Dec 2020 15:03:31 +0200
Message-ID: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=KDnCCc5M;       spf=fail
 (google.com: domain of claudiu.beznea@microchip.com does not designate
 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
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

Hi,

This series adds support for SAMA7G5 Ethernet interfaces: one 10/100Mbps
and one 1Gbps interfaces.

Along with it I also included a fix to disable clocks for SiFive FU540-C000
on failure path of fu540_c000_clk_init().

Thank you,
Claudiu Beznea

Changed in v3:
- use clk_bulk_disable_unprepare in patch 3/8
- corrected clang compilation warning in patch 3/8
- revert changes in macb_clk_init() in patch 3/8

Changes in v2:
- introduced patch "net: macb: add function to disable all macb clocks" and
  update patch "net: macb: unprepare clocks in case of failure" accordingly
- collected tags

Claudiu Beznea (8):
  net: macb: add userio bits as platform configuration
  net: macb: add capability to not set the clock rate
  net: macb: add function to disable all macb clocks
  net: macb: unprepare clocks in case of failure
  dt-bindings: add documentation for sama7g5 ethernet interface
  dt-bindings: add documentation for sama7g5 gigabit ethernet interface
  net: macb: add support for sama7g5 gem interface
  net: macb: add support for sama7g5 emac interface

 Documentation/devicetree/bindings/net/macb.txt |   2 +
 drivers/net/ethernet/cadence/macb.h            |  11 ++
 drivers/net/ethernet/cadence/macb_main.c       | 134 ++++++++++++++++++-------
 3 files changed, 111 insertions(+), 36 deletions(-)

-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-1-git-send-email-claudiu.beznea%40microchip.com.
