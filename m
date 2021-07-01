Return-Path: <clang-built-linux+bncBCJZ5QGEQAFBBSH462DAMGQEPYJSHIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A5D3B9201
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 15:08:26 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id 199-20020a6b01d00000b02904ed600252a1sf4401182iob.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 06:08:26 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1625144905; cv=pass;
        d=google.com; s=arc-20160816;
        b=OREEL/7q/vad4txptFQNe8xlSq24I2573msQAJ7a7fbH9Eblj8juuBG36qw3Xi8hfA
         Bg85D9AbEF5RRCxwrc/6sz6eiOyDpvAIi2iMC7Qx+rX8yzmqVPGhaI54YiQxVRS3sFLQ
         O34DXSDQWoUAZ9aY6yJCXCVMoT6EMsN1I1FSgKEvmw1lA963duGS9UWcslq6K1GtJZ6O
         WWvz2wPM8OQOdR1lYPpbX3dtIHCJjWOClTZsieSNjNXiTijPhaEo33ZgYroSZhzeHpUs
         pe4dQJ3bwbPuo+ug7hu1ymV4MMGqr1N80TShO9SZLKVrOvjN+VZ0suY9AL+KhC4pibV0
         aNvQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xqDHEcc9uNvjwH2eMQegGDisK6vAjCzjgxFbCfRCSlo=;
        b=ZDXrhktOciJpVUiPSUNnR5mPcpH+AjGEnnInXMPTNNxLr/hES/GoTTKQf0uRrOd7I5
         H8aU11U7HG1aQiXYSrKc6NHh2POSOubbPL2h2ssKSpuLqWsQkCm2wDLemLmCq2dGDEhB
         o9bLR/xNlQ33T033C1KNyOkQGvwB8GSWzNiN5Reu04j8Tw2dHG2nbnyJXnhhhIaIUvLV
         WPWtdPtNJXr2RjUoNZHvuf/R64TDSdWVw4GOK47lx6VbZq6MROe+lf72U/XpQ0fChZ4d
         iRL22btDxbuV+XKTcJAkWKVjPjvxtA5M6FRgqdg2SGvcsyymDl+itxNp8ozk7zgc/Ghr
         drbg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nokia.onmicrosoft.com header.s=selector1-nokia-onmicrosoft-com header.b=cIA7C7AD;
       arc=pass (i=1 spf=pass spfdomain=nokia.com dkim=pass dkdomain=nokia.com dmarc=pass fromdomain=nokia.com);
       spf=pass (google.com: domain of alexander.sverdlin@nokia.com designates 40.107.22.133 as permitted sender) smtp.mailfrom=alexander.sverdlin@nokia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nokia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xqDHEcc9uNvjwH2eMQegGDisK6vAjCzjgxFbCfRCSlo=;
        b=A0bt5X+TckI2HwkcCMYc6JU7NZ/kxz/ZKGneMLVYyQqsWEmFc4HXmJhqAyy6wZxzqN
         VqIuE+4c9AKLorUw1zpvm8yzAPC1dbDCqQx2kPAjcWPOU9YdToK9uLxx5FqcQ1j9lXI6
         1tUg7hS72ClR3I8TvoCp39ZCM7MjFnYM3o+DETNS9ANXsr48CgPhdAziXGLBbE99vsbk
         7FfD4UmcDS9kNvqIq1cYhyAn1ne/ziXPEByL0ImQC2gw00gIlXGrANxtW0NSIsusOUmZ
         yrazdDqr8F7rS7Hjtkg0b7l3tuohzHns3rVwZl1YfLbA7xlpHinFqY6PBQpXMiE9lzHX
         iwsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xqDHEcc9uNvjwH2eMQegGDisK6vAjCzjgxFbCfRCSlo=;
        b=kZ1xwAxRxO0a+AxKtJQOXAwxHHB0v9sI+UqHMyI01JKPuFtckK1tDIlBdnQSNjAbKx
         rvdOH6GJ3wa/c7TGYu5nlU8c/lt5Ob8BUAcGtladq11yhFNnxYBlmVsVzKJytEa2/GKj
         fcZQzUqJvvUCfkm4I8287McEZXUz6YjMckepxUXoFU7AEuktcG23nV9ubZHz2cVAptlF
         AdFh7uxAo1n0x4JO6rE7rKW3E+d81bULn1gZHRvauyiMU5YX1bvKmMX+UcP07thcqpFM
         fKbWbS1W0uv8hfuvTFlBI1tE5kWAjKF9EXgPnlEU0Il5wXLXjTSHCa67JnFD3NQV/CE9
         juuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Uxxh9Yf4Sp66hUeW5hajhJoYk1CXBppHGCy8oAQKL8sWyztEd
	A+Iv3VTOE7+jk3JYyuwVn9Q=
X-Google-Smtp-Source: ABdhPJz/9vVIgJ6I4vycmoeIdY/j80s0KhHc+YeXhqzn/++88W2/Q7DmmM6NkP8824mx69Se4IXQ8A==
X-Received: by 2002:a05:6e02:13cf:: with SMTP id v15mr6454646ilj.134.1625144905055;
        Thu, 01 Jul 2021 06:08:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:33a6:: with SMTP id h38ls921863jav.11.gmail; Thu,
 01 Jul 2021 06:08:24 -0700 (PDT)
X-Received: by 2002:a02:c00c:: with SMTP id y12mr563559jai.99.1625144904469;
        Thu, 01 Jul 2021 06:08:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625144904; cv=pass;
        d=google.com; s=arc-20160816;
        b=hl49mNZqlsuS6xuEL56wO6/BqLhMMDVQkfBV9dJ6xPadeXXyDglYOwr6dSs2zpbHWm
         Z+7sV7XWR6uVNMPdDncPmFBKuizEIv0PDV56ML8Vh+6qVhgJAV3md9aS/jYGks8aYhFb
         PWX4TEwiu+bN8Ol3+eGB5TV1m9/hvfMTn/bEPqGfp8GUqoOjiDIO9MkNRfFRAEA9zRAL
         C6LaJB38mUt/YvDCiQRs0e632wxGBN1Rdq9331wu+1R5xVHgPrAcQ7utt96JTuybNmRZ
         R4U0KxY8JmYVYRNptmjnEI9RtE6RoTDuCD6ygGnTj63bFOHmoYGfgN/B52rkrwEg/ceC
         ehZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QIS8P6LDGzabIPmd3iuEfvDdzKn+KwadQL86e40PfyQ=;
        b=o93HGsY78KTw0LB19ZupDJbTKcR/tl8sP1mrQqbtfYT8Pm2jyNqMSUZ80o5sI1GiuQ
         27LDbTJ9PLHKWWAS4lz4nonPffCZ1ywsct4xaql290QUl79FRrR1aZ1VTkJHRgivykO1
         ZDVkjsp1Nldzr68TbxHqamJ9jp5Ov1YKJ/LC4AdVUDgK8PCxdE7bVaAgyc1XiTQrEXLt
         0Cic9ugu1A2GrJzr6gAogpZhnMOG+fraeIl0ic5FVd/4ICrcJzBm6mBn1zQVed+o/eqQ
         I9Pn4AcPPmXcIfTmREmKgmQLfY//cA+E6fSgqIOxTGXX55eWrY/DJP/MEekDOpCkTcBm
         2JLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nokia.onmicrosoft.com header.s=selector1-nokia-onmicrosoft-com header.b=cIA7C7AD;
       arc=pass (i=1 spf=pass spfdomain=nokia.com dkim=pass dkdomain=nokia.com dmarc=pass fromdomain=nokia.com);
       spf=pass (google.com: domain of alexander.sverdlin@nokia.com designates 40.107.22.133 as permitted sender) smtp.mailfrom=alexander.sverdlin@nokia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nokia.com
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2133.outbound.protection.outlook.com. [40.107.22.133])
        by gmr-mx.google.com with ESMTPS id x4si2635394iof.3.2021.07.01.06.08.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 06:08:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexander.sverdlin@nokia.com designates 40.107.22.133 as permitted sender) client-ip=40.107.22.133;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IEaCsQJeW6IUquR/5Jf6G06ScMaawTEnRKEglNbFaKbjX3Txml36Kt95PkBSbpzV4mR6YtjbPAYu2QK8cdX41uSUu1DveaBeIIqqlmuvD4x1onTUH0yUNaqHAiFR05DY4I30vtDryD4Pqsj2owjZZXeT0gEW4GRCl/bKxzvEWG1NnzPUXI4fpuUO2k+HcEE/vqZOy4vVRLtTXoPnd82eN86Gj5Hql5cxwtDy21Zs9SUwzVwPSTVnnH0wWogCpr2/nD2xrrcr4BmeUIR8PLZrjjgtKyXXbFVgMsGaIg03RT+fpFdNaJ0sfFvO+uizn4IuVSB527X37UIZscDMNttoHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QIS8P6LDGzabIPmd3iuEfvDdzKn+KwadQL86e40PfyQ=;
 b=eC/r1OJi6Ih79L6Gr7mKqxLUw7+cLEp1GpWoksV09ASZ1oO6al5y9x92OIXUVYLEo+8rh1E2KD1O7ASt/f5tixcLUxwFjpuv35Ikew7NqcZwS4t2Ny8XOYzZ7JavZI49O8v461C+RTvEPFpuhe25K8WE/t5QlpGB1gpGpLVnegv/QCmbuQ95LhkbCwycjGGxUh2SOBlet/OqrVrOZi44k5b29NRm4mSULJDAs5xilmihwZ0jNpDf8WWuDSbHAoTRX7QhmCCuLVvR/tM1uM+nbow00QMCKekDCkb+PkMd1iz6DmOp5wrmrHoUP/oJH4uakOyU3JkSy2grvTzSajCSzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
Received: from AM0PR07MB4531.eurprd07.prod.outlook.com (2603:10a6:208:6e::15)
 by AM0PR07MB4356.eurprd07.prod.outlook.com (2603:10a6:208:b6::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.7; Thu, 1 Jul
 2021 13:08:22 +0000
Received: from AM0PR07MB4531.eurprd07.prod.outlook.com
 ([fe80::35f1:5a41:1ad:2ca1]) by AM0PR07MB4531.eurprd07.prod.outlook.com
 ([fe80::35f1:5a41:1ad:2ca1%4]) with mapi id 15.20.4287.022; Thu, 1 Jul 2021
 13:08:22 +0000
Subject: Re: [linux-next:master 6560/14009]
 arch/arm/kernel/module-plts.c:26:2: error: use of undeclared identifier
 'FTRACE_ADDR'
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 kernel test robot <lkp@intel.com>
References: <202107011205.9FEDdb2T-lkp@intel.com>
From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
Message-ID: <35d12988-6d26-bd7c-c236-ff78e0cfef01@nokia.com>
Date: Thu, 1 Jul 2021 15:08:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <202107011205.9FEDdb2T-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: VI1PR09CA0184.eurprd09.prod.outlook.com
 (2603:10a6:800:120::38) To AM0PR07MB4531.eurprd07.prod.outlook.com
 (2603:10a6:208:6e::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ulegcpsvhp1.emea.nsn-net.net (131.228.32.168) by VI1PR09CA0184.eurprd09.prod.outlook.com (2603:10a6:800:120::38) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend Transport; Thu, 1 Jul 2021 13:08:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f78d6a90-3267-4145-50ce-08d93c914ddc
X-MS-TrafficTypeDiagnostic: AM0PR07MB4356:
X-Microsoft-Antispam-PRVS: <AM0PR07MB4356DE3C4273B4406BE51CF788009@AM0PR07MB4356.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:345;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gKslYpq+IWe2XW3JuMlxrbLXXEoPm+YvcS69E/WNPr/uKTIPqXvWEeKbrByPJGDnXw85PN9t0jrK1PiqU97oXo0B6qKhoqs5hmMyDw/Fm415R+cPHDPnRZxxB0Kq4jeujkHIZWSM+g1RijrW4tGe6/DE1BwTr6iJvda63fikkYMH9RVR+KDS3YOhDgoBZEcqKbCdT1d3DMMXv3Q/ZO8waBBP+NFxJ7ywE5AWpuJygXNocnTyuaPUXMX1s6ygMFgWxZUSnAcr1Yckl3emlglskDmLUutfgYlLOVi6rpXrBCTvcOSiDHLMcLG+CyobkznI+MEPBkBVGxKw3zE5WX0gUKwNyLhk4Nem4cowJnEycpog+TW9SH8zpsdmmXVmADB8TRG0J7pS4dWbF9EF689l5QO7/2RD34x1ZQ+rpleR8e3SqWxpVAunGuJmHNLEorB8tY+quRwLXy7nJZX1nwPbTS2Lux/jeDGv9i8aeh9arR00hp3049EbcyRqnQ2Q6fjo6zU5V3Ejb6eMDHiOIFjGpEu8Ar4jHwVly1MPiCEdESXhk2RltXvKpWQhsRoR62dMt1J8ASyiJxPDSBrvQUz6DEafI+E6/RpwaEKZCEIVMsmTmHKFBthVA21KBK6W/HQf8GCjFrTkS8FI+hYADV5nv9ftAqOPUN9ZCtYNrHFJ3/D/rh8ilBq3ciBWbrCZIDxzootycExI6AmE8UJcHrMyW4pJ8QC7qTqdrm88AqxQb/NzEOCPag/YGLv+giUZF+iHgffMDu8DwugtlMYzaVTC1CcqL1oBL62uL2k2fvMpr0jIlgZXCrXFSgcfIqyFBDTrvkXc4Czy0uwb6WlQ0GF8LdVFo3sQhsmsnvNmH37QiLzT3t8JQfJTVgMG2/r6vNkDKAUhNVaLtzurWSjhGBj13jseRgOMH0WDLE/6BQHCmR0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR07MB4531.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(346002)(396003)(39860400002)(366004)(4326008)(6512007)(956004)(6486002)(2906002)(44832011)(2616005)(54906003)(6506007)(5660300002)(316002)(38350700002)(8676002)(86362001)(6666004)(8936002)(26005)(52116002)(36756003)(66556008)(38100700002)(966005)(53546011)(31696002)(31686004)(478600001)(66476007)(186003)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEMwYkgzRnREZ3c2TUF4aWp4OHRoQnk2Y3pkdGpRVjRYczkzOCtqbjhTRFVl?=
 =?utf-8?B?aSt3dlErT0RmRFFGREY0dldzVEhaeXdjRWRCZk9zOEdjY2dHbnNuRkRGMm1D?=
 =?utf-8?B?SitoT0t5QmhkWHh2NVVudW1RcHdrRGdDMDVZb29BNS9EL3g2cU4vck1QSDZM?=
 =?utf-8?B?Mys4bElWU2gvVWdkYmtHTkhSdHQvTjJyK1ZUTTc1ajNZaFUxK0ZRUm10aHM1?=
 =?utf-8?B?T2dwWStTc2VOcmNpM1dkbUJLemdEcWg2SFBtaHFRMjdGOU1uWm55M1pxckJY?=
 =?utf-8?B?SGdYUzE4Zm1PQnV6OHBlQ2E5c1pNOXFyNm45cmVWaEgwTUljK3ZOMzhrdkZM?=
 =?utf-8?B?eFhwVTRORlNNRUdMVHdjcisvSk04SWZYOWl3UXN2a0NpcTE4UGNhd3FkdjZl?=
 =?utf-8?B?eDN0RnpDamhSSngvbGREVWIwc1dCMWNSM0dBcmFab0xtRmJqZU9tdmJ2cktl?=
 =?utf-8?B?cTZrYTVmVFVwMnk0VXpmanFJVGcvTDF6RlU1a1pqVHRqZ0N2NGpvR3BGRk5X?=
 =?utf-8?B?aEtMdWVDOFVRajdnNUZsbUhZeXFQZ0JwcVZFenpkWmZvREoyTEJPemJsREtT?=
 =?utf-8?B?NURQZlIrcXNrVTI3bGJYSjE5SkJHMGsrNHU4MTM4aUMzMTRoMVY0MHIrcmcz?=
 =?utf-8?B?c095RlIvRVUyVzVvTzlOVExBNDRXRnNUY0JsOGgzZW41ZWorcHBiSHBYSDNT?=
 =?utf-8?B?RzVzL1hMcjB4M3Z0NVljUzlhOFMrS3YvbkZtcDRVRURiNUtaY1BhS04zQkhx?=
 =?utf-8?B?VC9lTlkxVlBHTjdsd25NeXVJdmMxb3J6SHFwN3JDYUtoT1h1eEJ6S1FvcFBX?=
 =?utf-8?B?a0RpOXBsNys2ZFo0WHRRTkpOQTM3bWdiZkx6cDJFSi8xNEpPNStRNlIvSW9E?=
 =?utf-8?B?TjJPdW1ucjVVS2kxaWFIaGFnbWxWRVA5L2pweDhzUXBuOXZkSnlXT282UHlG?=
 =?utf-8?B?UEJVR21VdkRvY096MnJNZHpzbWl1VktnSXZ3aGM5bFV1MnZmOFJjMUxxU0ph?=
 =?utf-8?B?Y3F2TUxlS00yTTgzM2loV05xM3o5THlNS2xPQWJUaTh2eXZaYk5LRzVNYXRC?=
 =?utf-8?B?bWZ4YXBOckNhYmlrRGkyKzQzaEpzdkZYZFBZZ2h1alMydzc2a0hjaUNxQlF6?=
 =?utf-8?B?dml3SkcxcTAybHBHNmpjbEU2dFJRTTBSVS9KbmphREYxL1hnVDN4M2tJYitJ?=
 =?utf-8?B?dmlENjhBbVpTKzkwY3ZqK1VITWZCOWVGa01rekZCWmNkTndSSXJVb3pieTY4?=
 =?utf-8?B?bEtQck9MemVGUjZ0Z09GRHhqdkQzeTRTM0VKTjF5S3lRbEQxVlJHVVcrYXNS?=
 =?utf-8?B?c0pzL2Z1eURFb3JWcUNURWFFL1B3SzVNV3ZSbFo4cnB3ejJxaVVpRlV4bWd1?=
 =?utf-8?B?MnpWakFLRWpYeUt2QUZ5aE1DOUxxRnZ3TUVGSFJmTERHS25CS2hGUXlIRUo0?=
 =?utf-8?B?WEV1NDl3SjNGM3Q3NkdkUm5iV1NEdzNvd0FYdm5BSXc2Z1pSTDBKYlF6SXBz?=
 =?utf-8?B?UlFGU2xpWE9wbTBIQUkyUGxIL2FZd0dlakVUWkFhOHdLc2c1OHQ4RHQ4bU5V?=
 =?utf-8?B?Rjk1U1NnRXMrcnhPQm1EbFpGYTBVYTVmcm5IbXl1L2dPdWZELzlWNVRQY2xx?=
 =?utf-8?B?bk96dmk4R1E3UC9ueFRhYnY1MC82bDdFVGxJRU85dW1Qc3M3SUI0WGNrOEo3?=
 =?utf-8?B?c1RQcGFMZ3dKL3lLVGtKZExQR3Q1SEtRbmxUQ1hXeFFNcVVQV1crUWpjWjgw?=
 =?utf-8?Q?ZZRi8H/JZy1ZfwEBD0Uy+jqtLY6JiHAIZaH1Qqi?=
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f78d6a90-3267-4145-50ce-08d93c914ddc
X-MS-Exchange-CrossTenant-AuthSource: AM0PR07MB4531.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2021 13:08:22.5223
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GOrcp07xILy3+5NfcIgTo2EBMJ3qIXzCZgCnQjwbwAMgaL1JzP/jkUhjMQ/uUQZFhnAQILQ2OvJ28r5pW7VYSFM6/9cLg1aSekZoI7gYOi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4356
X-Original-Sender: alexander.sverdlin@nokia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nokia.onmicrosoft.com header.s=selector1-nokia-onmicrosoft-com
 header.b=cIA7C7AD;       arc=pass (i=1 spf=pass spfdomain=nokia.com dkim=pass
 dkdomain=nokia.com dmarc=pass fromdomain=nokia.com);       spf=pass
 (google.com: domain of alexander.sverdlin@nokia.com designates 40.107.22.133
 as permitted sender) smtp.mailfrom=alexander.sverdlin@nokia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nokia.com
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

Hello Russel,

this is a second report on the same problem, shall I add
https://www.spinics.net/lists/kernel/msg3968916.html

to your patch system?

On 01/07/2021 06:36, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   2e0046650f0f192a84a1793f0dc2f0991ed9a3e4
> commit: 79f32b221b18c15a98507b101ef4beb52444cc6f [6560/14009] ARM: 9079/1: ftrace: Add MODULE_PLTS support
> config: arm-randconfig-r003-20210630 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d21d5472501460933e78aead04cf59579025ba4)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=79f32b221b18c15a98507b101ef4beb52444cc6f
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 79f32b221b18c15a98507b101ef4beb52444cc6f
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> arch/arm/kernel/module-plts.c:26:2: error: use of undeclared identifier 'FTRACE_ADDR'
>            FTRACE_ADDR,
>            ^
>>> arch/arm/kernel/module-plts.c:40:7: error: invalid application of 'sizeof' to an incomplete type 'const u32 []'
>            if (!ARRAY_SIZE(fixed_plts) || pltsec->plt_count)
>                 ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
>    #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>                                   ^~~~~
>    arch/arm/kernel/module-plts.c:42:22: error: invalid application of 'sizeof' to an incomplete type 'const u32 []'
>            pltsec->plt_count = ARRAY_SIZE(fixed_plts);
>                                ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
>    #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>                                   ^~~~~
>    arch/arm/kernel/module-plts.c:47:21: error: invalid application of 'sizeof' to an incomplete type 'const u32 []'
>            BUILD_BUG_ON(sizeof(fixed_plts) > sizeof(plt->lit));
>                               ^~~~~~~~~~~~
>    include/linux/build_bug.h:50:19: note: expanded from macro 'BUILD_BUG_ON'
>            BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>                             ^~~~~~~~~
>    include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
>    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                                             ^~~~
>    include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                ^~~~~~~~~
>    include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>                                 ^~~~~~~~~
>    include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
>                    if (!(condition))                                       \
>                          ^~~~~~~~~
>    arch/arm/kernel/module-plts.c:48:37: error: invalid application of 'sizeof' to an incomplete type 'const u32 []'
>            memcpy(plt->lit, fixed_plts, sizeof(fixed_plts));
>                                               ^~~~~~~~~~~~
>    arch/arm/kernel/module-plts.c:65:22: error: invalid application of 'sizeof' to an incomplete type 'const u32 []'
>            for (idx = 0; idx < ARRAY_SIZE(fixed_plts); ++idx)
>                                ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
>    #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>                                   ^~~~~
>    arch/arm/kernel/module-plts.c:217:28: error: invalid application of 'sizeof' to an incomplete type 'const u32 []'
>            unsigned long core_plts = ARRAY_SIZE(fixed_plts);
>                                      ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
>    #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>                                   ^~~~~
>    arch/arm/kernel/module-plts.c:218:28: error: invalid application of 'sizeof' to an incomplete type 'const u32 []'
>            unsigned long init_plts = ARRAY_SIZE(fixed_plts);
>                                      ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
>    #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>                                   ^~~~~
>    8 errors generated.
> 
> 
> vim +/FTRACE_ADDR +26 arch/arm/kernel/module-plts.c
> 
>     23	
>     24	static const u32 fixed_plts[] = {
>     25	#ifdef CONFIG_FUNCTION_TRACER
>   > 26		FTRACE_ADDR,
>     27		MCOUNT_ADDR,
>     28	#endif
>     29	};
>     30	
>     31	static bool in_init(const struct module *mod, unsigned long loc)
>     32	{
>     33		return loc - (u32)mod->init_layout.base < mod->init_layout.size;
>     34	}
>     35	
>     36	static void prealloc_fixed(struct mod_plt_sec *pltsec, struct plt_entries *plt)
>     37	{
>     38		int i;
>     39	
>   > 40		if (!ARRAY_SIZE(fixed_plts) || pltsec->plt_count)
>     41			return;
>     42		pltsec->plt_count = ARRAY_SIZE(fixed_plts);
>     43	
>     44		for (i = 0; i < ARRAY_SIZE(plt->ldr); ++i)
>     45			plt->ldr[i] = PLT_ENT_LDR;
>     46	
>     47		BUILD_BUG_ON(sizeof(fixed_plts) > sizeof(plt->lit));
>     48		memcpy(plt->lit, fixed_plts, sizeof(fixed_plts));
>     49	}
>     50	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
Best regards,
Alexander Sverdlin.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/35d12988-6d26-bd7c-c236-ff78e0cfef01%40nokia.com.
