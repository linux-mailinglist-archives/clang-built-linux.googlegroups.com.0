Return-Path: <clang-built-linux+bncBDCPJMFX2IOBB4XHY2CQMGQEVIAIB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3BB394A1E
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 05:24:35 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id r6-20020ab066060000b02902424254f3fbsf1608306uam.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 20:24:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622258674; cv=pass;
        d=google.com; s=arc-20160816;
        b=hkolmiYulyZXm9UXnf1jJI2J4K9O0aq2goOTAD7GvxZ3ai9hN42SLRaOYYnyL0fMj9
         vu1cAomh2uI0AvTjt/X/oNM8PEJwtpJQOW+MDhuwSFfynjvaEtNsTdGL/s6eBTeniWgc
         4ScOYdRrPsPie53RlOnBJw9zKw1eX59h5drES2GNOBTHn3cbN8hn2eCsPbimXjAJuflY
         VXM1Ne3Is2Z62ZXIBdyLDVOm7r9+FUhlHd66cF0GoYdwdfa9lDdxkrq9248cnj7DElSk
         QXPZwXMjd4dS8QpinJg3Xkz8tUUjOLi6byZDplSJ2gA04py09E7b1vkkNJV4boVOpibX
         696A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=E0TyWUGZsjnh230JSHY57DOJUQcaXFE5fLtGDukIQQE=;
        b=NDRWSXRxh2cIzfO9CIONTFR+xagDkTaD5YOTpiUVTimyMRGrj3QJGH4QNvo2oIKPvV
         Mul8p5UaE5ocWMGfo/1BHp8Jp4XfCDJkkXjUeicAnqLRbkZjNi/nY4lx+MYlfJ4pAusJ
         teYEdDwxjOHNPpipDqpQ+6PrznY+FpUrjNVChBMHG1PyYDPDLmy7PO51SQUcfK1WGAz4
         5T2muQWQ4nCqPvcmo4Sm9aXBo4YiZar6XR2TyAZ0cLG352tboYLVIckvss3oGv6oBGfc
         VMDdoXeQ7JVIs50Qlc0bBuX9UGHHVBbcfpdkbu53PcqVBjQ10z6V5chEwq6w34uaCugc
         ycBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E0TyWUGZsjnh230JSHY57DOJUQcaXFE5fLtGDukIQQE=;
        b=O8cF9vMg9jy09t6R8WBnTWyshv0yJWWBtdU113lDIk5nhHNff8nZdeeH+NGJyhc8ZR
         PbapWYxbZ6JrR+YKtOZTiMwpRzmO0R7msy32He6w42xn9JlFr6ttu0cQq7gBF5YuR1Jd
         Y7Waq+LHHBEW33X/MgxsO/6osRiKmaGof2sGO4gG3K7mbdrjP3dyEjc6JxwWeqFifnvG
         OfJwMhwoNvfskUbBq4cSwZNN056sfjA4q9o3zvErg+5byQ1MRq9bsiraSbVCF7r/CcyJ
         w5PAZ9/CoqbP8m9XJt3T3UlXAVeGi6H1//pxLsYea9ti6WL46qAAqUAdJBc1mi1KhgAT
         NJ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0TyWUGZsjnh230JSHY57DOJUQcaXFE5fLtGDukIQQE=;
        b=eV5jjWSKhgazjQU7MuxVm9xCx1VZ9cZB5S9FITBNgUJVLm6NmX7pQOMTiJ5wsIN6Nq
         mO3JKst4bHBtGked9dM7mH13edAbOHG06X3O3FGlzPLsvKNIELbswki+avP9/i0CNIIu
         TGYWCrQw/1nCVKN4EtmCsDWVs8aDJAurKHDTSYNSrm2emsjnU3NyTpKL9gQlxjWQ2xD5
         ilBG9k0XEVV3WHaclQlrntZAMeW7cTbeHRWxFG0ikEXFCkrUWcFiTbqM+zWIMZdtj+pZ
         3rkLEo3bR21oYP2aHlsyiQEVu8vLoGdtoInalTwlFvQxfkIo3xcJXSi/f38hb496xaYy
         P8jA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ptSnns2JSPTRbB1Sa1bxixwr5El0J610S4acFR2kqTE6RP5yf
	KaOzgMnQeaeHtuIybSV5gIg=
X-Google-Smtp-Source: ABdhPJzEO2QvughLpniGxCXaH4hNXPyXxXLnW7JDk1R8FzVkrYseVi2ep91Dst/oF6SXDGaderISJw==
X-Received: by 2002:ab0:4042:: with SMTP id h60mr5723668uad.133.1622258674518;
        Fri, 28 May 2021 20:24:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7050:: with SMTP id v16ls50347ual.10.gmail; Fri, 28 May
 2021 20:24:34 -0700 (PDT)
X-Received: by 2002:ab0:3a9:: with SMTP id 38mr4986758uau.67.1622258674029;
        Fri, 28 May 2021 20:24:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622258674; cv=none;
        d=google.com; s=arc-20160816;
        b=x32kecdo0NZzzKc7ItyhY/6Kv6LuSLjFJPqtM1j36wOndYbG90Ko1QISAQnkfn6FCC
         WfPnVkXJPikiZyotg0l6vckipV1QrZkzc+FBSOXTZ2tw6Dohpm7MPKrztBPO8nGKDmy2
         UyHlMV0uDJ+HEyllJN0VPc9KQwO6LxYqER3soIUvMtFMI5FpHNfOZlGRGZwFpNT5eboY
         Idirn0UiMz9APIgqFuINiYQa8XZqkuyrKwf1vIbfnBhE7T8W29g8WI3gTZKHn4qlcEQd
         NIKi4JMup8+X9Saic9bIyTjhnjvkxKmNG4xMTJ/g4RC9pbo7j4XEeSzMcD4pGFBxrBAT
         7kDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from;
        bh=l3jNtzTnkvpenFwge8FVZkCPh2wR+f9MulSJZrxShhY=;
        b=QDK+TTHp8o6WdHP2GO3ZHlM4202AtN1laYDUHH4PSGBY1r/8ML3KhEFTS6pktejrnC
         gcvGJnRBlo5eVoKN2xBK/KiKxr/t+aryy119swxWf7TEWZrOPe3DW1wvuqGc42C0zxWL
         xI03jb2GeOxzoyNyeroKUR7dnUEmaOfbdqR8RAvKmq78pufWKxU7LuvyJhwmTgTacdm/
         8w6wXdBvmj/orm8x2H7vSlQML+jBGIwN8OVj2rVigChNf74E3ASxWLywv7ACBOgeG0KP
         8oT1vWWCfU8iw6xM6rFRvdiemufVv/S7e5rJBD135ruFRYyKp3RVUDfUQVPb7jYpZrsg
         1K8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id y4si492770vsl.1.2021.05.28.20.24.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 May 2021 20:24:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4FsRg14XgSzYnVt;
	Sat, 29 May 2021 11:21:49 +0800 (CST)
Received: from dggpeml500006.china.huawei.com (7.185.36.76) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Sat, 29 May 2021 11:24:13 +0800
Received: from code-website.localdomain (10.175.127.227) by
 dggpeml500006.china.huawei.com (7.185.36.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Sat, 29 May 2021 11:24:12 +0800
From: Luo Meng <luomeng12@huawei.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <clang-built-linux@googlegroups.com>,
	<luomeng12@huawei.com>
Subject: [PATCH] clocksource/drivers/pistachio: remove unused variable
Date: Sat, 29 May 2021 11:33:35 +0800
Message-ID: <20210529033335.1962230-1-luomeng12@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500006.china.huawei.com (7.185.36.76)
X-CFilter-Loop: Reflected
X-Original-Sender: luomeng12@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=luomeng12@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

Fix the following clang warning:
drivers/clocksource/timer-pistachio.c:74:15:
warning: variable =E2=80=98overflow=E2=80=99 set but not used [-Wunused-but=
-set-variable]

Signed-off-by: Luo Meng <luomeng12@huawei.com>
---
 drivers/clocksource/timer-pistachio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-pistachio.c b/drivers/clocksource/ti=
mer-pistachio.c
index 6f37181a8c63..42b4cacd2fd5 100644
--- a/drivers/clocksource/timer-pistachio.c
+++ b/drivers/clocksource/timer-pistachio.c
@@ -71,7 +71,7 @@ static u64 notrace
 pistachio_clocksource_read_cycles(struct clocksource *cs)
 {
 	struct pistachio_clocksource *pcs =3D to_pistachio_clocksource(cs);
-	u32 counter, overflow;
+	u32 counter;
 	unsigned long flags;
=20
 	/*
@@ -80,7 +80,7 @@ pistachio_clocksource_read_cycles(struct clocksource *cs)
 	 */
=20
 	raw_spin_lock_irqsave(&pcs->lock, flags);
-	overflow =3D gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);
+	gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);
 	counter =3D gpt_readl(pcs->base, TIMER_CURRENT_VALUE, 0);
 	raw_spin_unlock_irqrestore(&pcs->lock, flags);
=20
--=20
2.25.4

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210529033335.1962230-1-luomeng12%40huawei.com.
