Return-Path: <clang-built-linux+bncBCZLRWEX3ECRBAWHYWDQMGQERLGAHBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 527303CB640
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 12:46:27 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id l3-20020a1c79030000b029021ecdaeeafasf1200867wme.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 03:46:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1626432387; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wil209L93GyzLpA5Z+OdahKUKk4Qcy4KuUGbyAjz1GhJKnU3SyQDPcZ6TgaAlrmMG4
         fNy4MEKrZ4RsS+xpZvKjMSRCR1Mh2TQCjDSA/pPRrbJpwXTUGWl9maA6whsYurCG2mOT
         MH9RpAYu5ubnDup60KYkBDK9hvZ/i3U/lvozcIIKZjD/T/RVi54Cq5DhJCrnPrA1II7q
         mOGpow7voU50EwXSFDZtU9UeqK7mKn9aiPI5OA19e8rQmcfuy4q3kh+nQOwyyjNlZYuC
         zmd4hW4u5lRTyyYn6oEYgWQ/dMBTLGusvTDa9j1/qgGMIStXXA4vWkk0wZMJQQZZDLP/
         PGxQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=BBka/N0B5oubf1aLu2dpsHcgDe3Z/z9rMI4ct8utb/U=;
        b=vup27oBG69EQBB0arEniJURbXeeHn/ztjnmejHoSyUTlNhgnruys5lGFfCLY+Zk+hq
         SK22LbdbQAq7VBYs9vzD36H/abN/DuZpTcHk9twLq5PvB/6wCOp+cpTbhqa185hLJ/Y+
         BvUz2hKIg4uANmVkIUdIVAnn29wVq/Zc5iK7MvOmTHuLlUhYs4NwcuJqozbEPk+qt2lc
         rsJgBHgurpUH/+ssQqoP1f6rbGv0MoX9HH1hns6V+0suIEp9r+KhK8hMKeI4HhGvtt6i
         8m2/8pTkJtfcqecroK6IebW5GY11IWatNZVzsRU2TSI2B4rCtCOmVTlH0qw0YsJwB6EB
         5ubA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=PmFA9Avm;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 40.107.223.69 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BBka/N0B5oubf1aLu2dpsHcgDe3Z/z9rMI4ct8utb/U=;
        b=Q3L7nCs9MrLTo2kWUoWd0Iokxk2CkSfU85mgTbAkbWfJYYWnYKghFmLV1tb5fdPfDs
         NqlCHfrjGVPSDgKq2ovef4QhwcbmABS+252z5J2qy8SneT0krdLTp0tkGvuuDJJ9Exnp
         oU3IaAjhKx8J+2PevXs6lhmRYP5fn5MwZP48t0HugEmqaaVUlmXmgUOJzMGZ5SFCcw6w
         beFjHRk8eJBr1p3GWLP+gLj9dZ563VQQE16nrK1qv0Q/NjSDtaFOuLJ/gsCWc8ZmWlWn
         5EkXVeKHnZQsnZWo4rKdtLi0ZZGteP0Qb7QgF1hjbGpMtgaZCxyxggH6eszQYLqo6PpR
         bpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BBka/N0B5oubf1aLu2dpsHcgDe3Z/z9rMI4ct8utb/U=;
        b=iudVGuK5357vUuDSV5RLYTeN2ggbH3HF65B50XEp6rqMC6PxKno3lU6QYOp8oixnRw
         VngnPoOekDSFxXZBvVN9+7iGPDAiaj7IZvxUW+bOEbk9NH/Q3l4yrHDLi1yLr6XtwJm0
         HislNOFAVS9dj4PSgEV3xNk+8bvhZmWKkU44cFiOkC5Ys8+/pCmyVrKUfrwlaq+gncku
         cA0OBxbwC/Wg8gZwzXQy0P+0NMAkfO8UZdmYDK/CYdqsIk8jM0hd2ATtFrr6wY5o26dM
         1rY7+NMl6h/4JwsJ7k1nLCc83V4xoh20hYGIWUjlIpBFz3XtVkhs+yVTufLIbfGd1JYw
         mSuA==
X-Gm-Message-State: AOAM533C6PbowWwlMgLkLPWidG+ze/6Hk+P62qe+aIE2RKY1T2HTnbQD
	7xNNsWlilrUXkErRUxB7FZU=
X-Google-Smtp-Source: ABdhPJy6pMJJQL8pjurwNGY28fNqkzd18/WgGe+5dBNoz2utyIyl0DqfCn02MmrmoFvrPL+TAjDdXg==
X-Received: by 2002:a5d:4ccb:: with SMTP id c11mr11321210wrt.331.1626432387046;
        Fri, 16 Jul 2021 03:46:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:511e:: with SMTP id o30ls5567021wms.2.canary-gmail;
 Fri, 16 Jul 2021 03:46:26 -0700 (PDT)
X-Received: by 2002:a7b:c452:: with SMTP id l18mr15705078wmi.164.1626432386154;
        Fri, 16 Jul 2021 03:46:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626432386; cv=pass;
        d=google.com; s=arc-20160816;
        b=Drwy/80n6oeWupdUatNUEowgdR/Dq+PX+uhSykM0dhelJExAaUc8BxrWgSj6sgm4bh
         mOz41Gt62oQ7FoRyQRb0g4YgBF3NYnWHGItaMHfZSTHNMBiMe3XEDk6cWjgIVIuxbkam
         oe6CQYJVmHm4TZGTLIfXPt0mzViPOeK34YSemM4AAjeDMUpWe74L9NPCmQehCfn4YRK/
         rFvm7FgkZwzB/tKDZFLUGpFuE7n6lIa+Fdb3aIIlCzxzyB0BgOJT/lQVHSNrWkvrb0Rx
         brSXHmcKCQWlpCXaSvWf+N2Gf8Uray8Mt4RsY2MSwShiXqQXCqpAjAq05UJ4CQo8BRBr
         EAdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fFfoIV0QzJ2CqNL6jGd0YeUCDEWHpfwKHhHKrnpri70=;
        b=Butfndhvg7FZ3uYuk6Vh0w3nxUux+KGULEk9JF35pV393cAfxrJxweGn4JVt7VtGQT
         5xxqcsulxEBJhvbakOdAwtK6PsqzSYHD5LH5DrQea5tX79ueRETnC942AGc//Rz33cy6
         hClxJIYNRfTKfHKWVOy53XrWUMMv49xtNeKytctZXSxVE22Z/yoQyCgPZUhpKMMFhieg
         IOue0UZL9iePQgyyIy+hJH5uuwWFCK7W4KDgv9qsHuWmNfWfBKhOQYo2cXpgv8bqH/TN
         /q+hsZUbT0A+7Tm9gOi42Blem2Nr8w6KOEPRJBjgZKNKf4V4ts+SREuRcYgroRTR3kRx
         5G5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=PmFA9Avm;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 40.107.223.69 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2069.outbound.protection.outlook.com. [40.107.223.69])
        by gmr-mx.google.com with ESMTPS id v4si332385wrg.2.2021.07.16.03.46.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 03:46:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jonathanh@nvidia.com designates 40.107.223.69 as permitted sender) client-ip=40.107.223.69;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnyheKwUAXt8fpB7C+end9N6O1EDc3qA5/4WypGj3qxZkJlu7vH1CG5qrqpjbTYyIpaV5HUSEeOS3Q3KekOhM7WRXZDoAav2t+Jq+NCqcFLnxLZLxalWW/yMTaNnjkZ2rfnDiMokvpaXXbUaTO73zwlF9g4stFQIquWU34M1embF5fsXXXkyMSP7kWbx1XFV+72mFLGd6MkRyO7twucY/oVmc0TtyfNiksKtqqsT7+mA1grtR/0dvJPbzuQX3ec5hngat1IgvbTxqBDeCeghy9r8ShoNvwnLlLugmKreOKqhO0dd1AZziV9/HJSGFMAXpXanK8qE8D4cqK9Hnk4Rmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fFfoIV0QzJ2CqNL6jGd0YeUCDEWHpfwKHhHKrnpri70=;
 b=WpuMWZlZbiUnoelB790/1f7/SO+VZ2Vu6Nq6Hc7yB1WZ9p+NXofdTWQAxWjYxERkqgLWZa4WXRBfZs3dTnKKHtWD0K0BP5OBH8M9yYzb7SnsDimuJviMp7fNTmOncftGmMNqG86BQdDJt7rMCrz5en6y1uX/pbRmFrSp8Fpn4B7LcDGhQNCGrsm6aa39Hm0D7u0NlIGmKyU9KemHp3pFmv09hepLb6E1FqIN8OfE6hZYXEeCKhUtyKteMZV3oAXNEhFn7K2Kb5xF1M+ZnaAB0igtopdj+1b1k99j+WeaLnUlkMax7tvpQ2kyrQyMTt7UaNYvsGKpUFDcRKRpfQZNnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from BN6PR16CA0048.namprd16.prod.outlook.com (2603:10b6:405:14::34)
 by MN2PR12MB3568.namprd12.prod.outlook.com (2603:10b6:208:c3::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.21; Fri, 16 Jul
 2021 10:46:23 +0000
Received: from BN8NAM11FT039.eop-nam11.prod.protection.outlook.com
 (2603:10b6:405:14:cafe::86) by BN6PR16CA0048.outlook.office365.com
 (2603:10b6:405:14::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Fri, 16 Jul 2021 10:46:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=pass action=none
 header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 BN8NAM11FT039.mail.protection.outlook.com (10.13.177.169) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4331.21 via Frontend Transport; Fri, 16 Jul 2021 10:46:23 +0000
Received: from [10.26.49.10] (172.20.187.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 16 Jul
 2021 10:46:20 +0000
Subject: Re: submit.c:27:17: error: expected ')' before '__VA_OPT__'
 current->comm __VA_OPT__(,) __VA_ARGS__)
To: Naresh Kamboju <naresh.kamboju@linaro.org>, Linux-Next Mailing List
	<linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
	<lkft-triage@lists.linaro.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
CC: Stephen Rothwell <sfr@canb.auug.org.au>, Mikko Perttunen
	<mperttunen@nvidia.com>, Thierry Reding <treding@nvidia.com>, linux-tegra
	<linux-tegra@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie
	<airlied@linux.ie>, Nathan Chancellor <natechancellor@gmail.com>
References: <CA+G9fYshrRFN=Qa62eLKPbKHpRt0L-FuRrp0ebc29gdBqFMxeA@mail.gmail.com>
From: "'Jon Hunter' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <f889adb9-dc01-79e3-12fb-1e66485246df@nvidia.com>
Date: Fri, 16 Jul 2021 11:46:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CA+G9fYshrRFN=Qa62eLKPbKHpRt0L-FuRrp0ebc29gdBqFMxeA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [172.20.187.6]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e118498-bcc3-4860-ff22-08d94846f480
X-MS-TrafficTypeDiagnostic: MN2PR12MB3568:
X-Microsoft-Antispam-PRVS: <MN2PR12MB35682DE06834B4C6494E62B8D9119@MN2PR12MB3568.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GkCXnlYnCKb1kjMOCyrgJDSr80vAJL+jSG73PCydUOK/0OY7F0IzYbVeXjI394NGG5cX3zZgeYIVfXHtPjLFktkjlAQ9AQUDuBtO5Iu6gcaItQF8g/6rXoGXhLPH1gG6l96SHEP8nejd+IgiZqXaWK8nn5BEk+Lyv5MhRIKxQ0/Qm2QXdRJ68MzhonzGkqF/kWnLuiDz41bCAK8+jVVUhJONn+48M3pOzLW9SqIltT1yRz4XAHspTn5Mx38qUjN0z8hd/htozTdXG5wQxUvd0FfT7T9KLxZPn1KFZxlfn8cX3eRgxE9rjXeBShZn4ZmzmC/5K3E1Vc11NY6lKzHZaZ/Lv2EhJjaEfBC655MXiFP1dts/yGlaef6rvfrDpbH/scz3zvQWAnyDtZ6lCbwcybE8re3LrHMmwY/dGiddORgyFvCAcwVxJoUVZXLyx4afK/OZ+VHh7ElJo1gMHpFVbNro1bZTESJ7sbJlCgUPoXCPjOmGFoRhvYSPQFAeEgWAIY7W0C7MtR8gr19QxTRiQ41HMv9A/GREXbfZU59+cbntT3yaPHliLNv0R0gdbZ5eKyv2sPfguWe3lunrZnZSaljWy6XiuaVYOi1gYA1jOwHueNxKr2pFciVx2Js2JRJzQ6ygCQ1TijLjl3vMA7r642aweHsyRWnSV8XpX/nZoexUX1nt4k6eXFPtVBTzBM143YVMSC70eQHekjxR8SKaHrkS0eeemKCtrz0xPklSLNG5qPNmZTS0Rp4JMMvHwQhRP+IhoYpt3SgdveZFg1R663y9/9xJik60rx5m2wLNeO2+6mhGQoL99f0itJH0Yg6LY2sWMESMM+vhlKieWtjL3qo3ujLxI/+i0mvMpGR3nOknMG+hDqx0jm9LVqgdsL5d
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(346002)(136003)(396003)(376002)(39860400002)(36840700001)(46966006)(316002)(8936002)(70206006)(82740400003)(36906005)(2906002)(16526019)(186003)(36756003)(26005)(2616005)(54906003)(70586007)(478600001)(4326008)(31686004)(110136005)(31696002)(336012)(426003)(8676002)(7416002)(16576012)(53546011)(34020700004)(47076005)(7636003)(82310400003)(966005)(86362001)(356005)(36860700001)(83380400001)(5660300002)(43740500002)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2021 10:46:23.3862
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e118498-bcc3-4860-ff22-08d94846f480
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT039.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3568
X-Original-Sender: jonathanh@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=PmFA9Avm;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jonathanh@nvidia.com designates
 40.107.223.69 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
X-Original-From: Jon Hunter <jonathanh@nvidia.com>
Reply-To: Jon Hunter <jonathanh@nvidia.com>
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


On 15/07/2021 19:36, Naresh Kamboju wrote:
> Regression detected on  Linux next tag 20210715 for arm64 due to the
> following patch with
>  - gcc-7 - FAILED
>  -  clang-10 - FAILED
>  -  clang-11- FAILED
> But PASS with gcc-11 and clang-12
> 
> drm/tegra: Implement job submission part of new UAPI
> Implement the job submission IOCTL with a minimum feature set.
> 
> Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
> 
> Build error:
> ------------
>   CC [M]  drivers/gpu/drm/tegra/submit.o
> In file included include/linux/device.h:15:0,
>                  include/linux/host1x.h:9,
>                  drivers/gpu/drm/tegra/submit.c:6:
> drivers/gpu/drm/tegra/submit.c: In function 'submit_copy_gather_data':
> drivers/gpu/drm/tegra/submit.c:27:17: error: expected ')' before '__VA_OPT__'
>    current->comm __VA_OPT__(,) __VA_ARGS__)
>                  ^
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> 
> ref:
> https://gitlab.com/Linaro/lkft/mirrors/next/linux-next/-/jobs/1425953551#L197
> 
> https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/1068/consoleText


Thanks, yes I am seeing the same. The following fixes this and I will
send a patch to get this corrected.

diff --git a/drivers/gpu/drm/tegra/submit.c b/drivers/gpu/drm/tegra/submit.c
index c53b7207c478..e49630089149 100644
--- a/drivers/gpu/drm/tegra/submit.c
+++ b/drivers/gpu/drm/tegra/submit.c
@@ -24,7 +24,7 @@
 #define SUBMIT_ERR(context, fmt, ...) \
        dev_err_ratelimited(context->client->base.dev, \
                "%s: job submission failed: " fmt "\n", \
-               current->comm __VA_OPT__(,) __VA_ARGS__)
+               current->comm, ##__VA_ARGS__)

 static struct tegra_drm_mapping *
 tegra_drm_mapping_get(struct tegra_drm_context *context, u32 id)


Cheers
Jon

-- 
nvpublic

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f889adb9-dc01-79e3-12fb-1e66485246df%40nvidia.com.
