Return-Path: <clang-built-linux+bncBCZYJHU2YIPBBOV5TLWAKGQEKZ5KHXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E35B9FD7
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Sep 2019 00:05:47 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id z8sf3500903wrs.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Sep 2019 15:05:47 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1569103547; cv=pass;
        d=google.com; s=arc-20160816;
        b=pDyaPQt9ainMI6w9sy9lJEnglM9wQR3agXgeP74Qg33HfZrUbIRIRG+AJXq6gB+N2D
         fMaQRGqkDQP/It5l0CKVL8D1IHIqEVhPN4stMBB6zrjqoyWrJWFDD/rpwtGllxVqgPdV
         o5Rsi7wGLuKU8VDry27YxrfP5OGVzJJ0w1wCph4hxHlpyhK45Iriq67j3jQ3VIhjlvAH
         jdpLxxDQIg3cWkMPZcFoGj6DoakTrR0bhlEsv3sBhp383zXbPuvDrrjexEWpfPvx5PEA
         ofu9wd5Mn7CtmLwF3MEpo8mU8ay8eZkcGXpDbTulkYnPsRX9+ygnkXrrDy8Myf35+aPw
         dsOg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=HXPii6mZQk+49GUV5GaHf5kH+42XtX8EDbWmXRs4fE8=;
        b=NuuVj2sAduwyjN2sfHhf2MXALDLbdgWgPGZdcN5h18IeYpCt0EdBJ4B+AxCl1cJuaY
         BmW+SDJ5ks1FYJZZu48tY8wiF6vbNe5a/mj8J9Y+IZ62y0s0bLv3ovdhiN6kiEqgsK7t
         ZcHmnILT3RNhpUcXm9d3LVPO/v4BxocNJxcZgFIeEOuHaoOMlzVPCzctSNw23ccW19kU
         7vqnjX1Cts3JKtq+FLiX6P56X7FWEodwFGIH0Je82krGXoiaKmpo0Btr9QpkAkZdiRw+
         SI70xZC2ziYrTGf1K7FMGF8607v7wlyRTb1SI75ji5nwVedrNjPomT1pYh3P4ySRZX1T
         LN/Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector2 header.b="gc91O/ON";
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of maxg@mellanox.com designates 40.107.6.84 as permitted sender) smtp.mailfrom=maxg@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HXPii6mZQk+49GUV5GaHf5kH+42XtX8EDbWmXRs4fE8=;
        b=AtSqbqrybYpu/V4ZtXSeRZo4kxEsA09ZFsMd+Evmf5tDTf+UShiAwPRNQiDrD+7Z0d
         CjVgc10rvTY5s04AYZShsgGj0Bpuo79xbKhAmo798qCqEw4nhb6OxJA/zlL5vmKWm6ie
         Z+Uu5TduOWqpxDRFDLKI+c572oD0bCCx2wMe7/jU98sHXoopHAxQGCHfAtGh2teICz8x
         CaGJWUMJGZAfp8R+34KUSk8yk596m6G7Af1WGc1Xe1PKHeeWV9YakXU7WMK8c3FDQ7bb
         FPNVMEOj7QvsrTqhP/UR1MJmgyARvwFxiyo1sotwzcq0vyTFdWb7qwDW9JnHRAIIfW8B
         l6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HXPii6mZQk+49GUV5GaHf5kH+42XtX8EDbWmXRs4fE8=;
        b=KvUEhvvoIQPXqwoUQPrq06KnLVJv3HG+ZdtnV5wKvbL+Fy2jaueJ4m3JJxrNB1J2/G
         vHXcaTuUmsAkT/PyeQmTrm12q/Jjq1h9CTmZVIE3E7BwQIk81vbkwh2rzOryy3WxNsZn
         XYSb1HB/tWTwNuhKt7vusxuMGju4dX/dG08OBNXps1ZR1TkzYsm1qNureoJJ2CGyExNp
         ZtLRMd6r99//EIISM6lKR0/Ly9YWTl1NB0t+5H94A+T0OQ0cLtsbLeFQsTengDXm3lPA
         qyaPXi6RoTZ4xihIuDScVLd7Ymqlg+sEVfwv29EZJolMSYKt4a3FwRTvrNjavKQMuzAm
         /EAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKwPMQVahpA7ub9wkHlN0BjEwYnay6VocM4O5vakqRDgrsgTXX
	cQkEVtN1hD03XH4kFPPnUNk=
X-Google-Smtp-Source: APXvYqwJ7GaQ9Olo2+4dybS0dh+5SmGnHtnyLTMqPhcBewcFwc7z81HtJffBVZbN3IoR8gzCzQ6DuQ==
X-Received: by 2002:a1c:3803:: with SMTP id f3mr8809136wma.161.1569103547176;
        Sat, 21 Sep 2019 15:05:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbda:: with SMTP id n26ls2385595wmi.0.gmail; Sat, 21 Sep
 2019 15:05:46 -0700 (PDT)
X-Received: by 2002:a1c:a984:: with SMTP id s126mr8622697wme.26.1569103546585;
        Sat, 21 Sep 2019 15:05:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569103546; cv=pass;
        d=google.com; s=arc-20160816;
        b=j3165e+r7ydRF4W5oYcam3OcOJ+DleEawLZWeY29JNqNw7NWPH6iCaFuKLb3p8GPRO
         hMYydo+E/OfInYtNU5CkAkznIYfPP7z5rfbTVjFLhb+A36YFExw481Qjr5gFpuH4EKoi
         UCWR+b3kkBvo/E+SkKX5/ewqIxa4zWxEAu+tTB0L9V1pTLnvuPSpyO8S92iSNBDj3kof
         QV6XIXmfV2W9MLCXmegD62QlnPdTSD3y5LA0pztxmaOx77UP5rx1LG2eGXlW/0z8rUnE
         VBKlRYb7VcldMFWq0vxYkP4OEJxaCOtJxn94dGFTQHOq60oqWcTsCv7WOQAVkm+vWwsb
         2jbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=o7G+CY4v2Tsx5+2zlWHgZFrzxFPhktBpYM3MXGImCgM=;
        b=rggxU/5kzwTGhq5iyelbsAKV/2RysqgqWpnaYfQXvyDqrLmFOLzjXhoFxqsUJFcWTQ
         nU7hu3fXfMFVkJ5dSR8cjNGHP6g3BF/1wnRwkKhW/cpjSmGfU+IZV2SzAB2oMP2Kz10X
         ufkDWoTDV0IuQZJ8ZcQQQbBlX8fR35woLt0CJU1yhwgw/Uv3L98hpQE4zS4gRD0Mt7RD
         PmybuCGhWbu2A3aNd+mfwyOnW045xRXCZ7cubP1RwdFMBSc/zc5foa1fShNWscXHqb9I
         E1XQSSPiCCKKKuYPEQrfY1MDdEWMRxyMf4FBFab8g240EqiCeOU+HoXP4NC8A0/n9DO6
         GTlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector2 header.b="gc91O/ON";
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of maxg@mellanox.com designates 40.107.6.84 as permitted sender) smtp.mailfrom=maxg@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60084.outbound.protection.outlook.com. [40.107.6.84])
        by gmr-mx.google.com with ESMTPS id x8si476764wmk.2.2019.09.21.15.05.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Sep 2019 15:05:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of maxg@mellanox.com designates 40.107.6.84 as permitted sender) client-ip=40.107.6.84;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AjWH1X0k+pweDWM18ze3EuxAQmn9m5jLtC+diboRzjSxgoEDyyMvFfQB6o+d/tQYcZu7qGQsN38EkV7kYEYIyiupqvx6uDl/jRZN20JsbgKW7TY/XidQUh0i3XDJxkAuM78Xtet6lyBgdwQv1xDwxStvNZrJFwifXyPPw53La32CBr8fD+0YzoS30RuoOanU4bvDKNr2zkoLzVrmRZNZ+IRhkn6ZydZGL7rlBSYLf6wJSMnO/JjLfd5CH1yDsUBwCRs2shl8sETcy9ukmPL6xAHB006H3lF6iiX9w4e0JCdbeDlHlKXjEJKNKl1XpRNMuaoboR/beFAQF4d3XkKJmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7G+CY4v2Tsx5+2zlWHgZFrzxFPhktBpYM3MXGImCgM=;
 b=kuBsXJmXejTeVzznywuQ88dYyWpVZiNdpl8US1P9lwvXpCRLrbys9DxyxoZcditTDQ4E2YMx3GSSy+246qb3EmjcmXcwwvQcWaHGBoxBKrWiC6QtxbupTOV1aXdvcJZWd6RP2Vcy1Cwgnuvk+Ti3ch0TQ+h3qJcFLGs14M3QdqLaPcdDJTIMPEGzG816V7vToq2o9OrDIliFZaXx/vgEFTZTJcv0RMJobbxSwfi1UuAYSNKnUJ1u7g1aN5xX/3z+czZlKRjikOIR7Wf9NsoLQ8eVqJ1vN3tPtNxcuvZMOyVCL5AMiCQSHT/b+WSpdBz9CH7k6fNFEk1YCMxYAKQMAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=googlegroups.com
 smtp.mailfrom=mellanox.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=mellanox.com; dkim=none (message not signed); arc=none
Received: from AM6PR0502CA0029.eurprd05.prod.outlook.com (2603:10a6:209:1::42)
 by VI1PR0502MB3805.eurprd05.prod.outlook.com (2603:10a6:803:12::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Sat, 21 Sep
 2019 22:05:45 +0000
Received: from AM5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by AM6PR0502CA0029.outlook.office365.com
 (2603:10a6:209:1::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.21 via Frontend
 Transport; Sat, 21 Sep 2019 22:05:45 +0000
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 AM5EUR03FT062.mail.protection.outlook.com (10.152.17.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2284.20 via Frontend Transport; Sat, 21 Sep 2019 22:05:45 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sun, 22 Sep 2019 01:05:44
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sun,
 22 Sep 2019 01:05:44 +0300
Received: from [172.16.0.37] (172.16.0.37) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Sun, 22 Sep 2019 01:05:42
 +0300
Subject: Re: [PATCH] block: t10-pi: fix -Wswitch warning
To: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
	<arnd@arndb.de>
CC: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, "Martin K.
 Petersen" <martin.petersen@oracle.com>, Chaitanya Kulkarni
	<chaitanya.kulkarni@wdc.com>, <linux-block@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20190919135725.1287963-1-arnd@arndb.de>
 <20190920060503.GA130425@archlinux-threadripper>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <f279edcb-1d54-2333-8aa1-1af8c91bbc95@mellanox.com>
Date: Sun, 22 Sep 2019 01:05:42 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190920060503.GA130425@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [172.16.0.37]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251;IPV:NLI;CTRY:IL;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(376002)(136003)(39850400004)(396003)(346002)(199004)(189003)(36756003)(70206006)(2906002)(26005)(53546011)(186003)(229853002)(31686004)(8936002)(16526019)(336012)(70586007)(478600001)(50466002)(6246003)(476003)(16576012)(126002)(486006)(86362001)(58126008)(316002)(4326008)(65806001)(36906005)(76176011)(65956001)(8676002)(2616005)(106002)(47776003)(81156014)(110136005)(446003)(11346002)(2486003)(3846002)(23676004)(7736002)(356004)(81166006)(5660300002)(305945005)(14444005)(54906003)(230700001)(31696002)(6116002)(3940600001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR0502MB3805;H:mtlcas13.mtl.com;FPR:;SPF:Pass;LANG:en;PTR:InfoDomainNonexistent;A:1;MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7d71de84-fbbd-4c2a-d365-08d73edfd9ff
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328)(7193020);SRVR:VI1PR0502MB3805;
X-MS-TrafficTypeDiagnostic: VI1PR0502MB3805:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB38050C80216817798EB2CF4EB68B0@VI1PR0502MB3805.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0167DB5752
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: wYFzLXpJcVmKWS7QLcBftKvLWiAi/pgzYVEty14MeHXSJvltqWs/aP5Pg7Y5gHRsAXrnOj4UmSVbjpsyHcVbTrMgaZ9YtMb3IC28NvppeCuB4SH7QIqxLdUw4/9kwYxL3Uw+n1NPqkxH/s/ygkkD1kwwZQsln5JpsLoqbBkDHth6WdU1rpV1SmKAMeDGfqDs1tcLwr50F0ZekIqfLpWHsb16N6bXjNRGiy9C4ptndvRotTqXz9vJIcWZ+qThKB1seCjmXCkIEa5ZDpGLDh6rZYimn+1lMbvmzRJHcKmbDH6hok7lMBZw5ZoWQzrLO+T/nyfa2d77T6hfsrHQFFsJ8RWm0wwNX0dtYm1iONGJ9sGEtKfY2J9sC5l0LLdvSa1Q5AyTpkQZ4scNqmSHqEQ9akHCTNXD5v05mERoA07Cizs=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2019 22:05:45.0383
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d71de84-fbbd-4c2a-d365-08d73edfd9ff
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b;Ip=[193.47.165.251];Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3805
X-Original-Sender: maxg@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector2 header.b="gc91O/ON";       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of maxg@mellanox.com designates
 40.107.6.84 as permitted sender) smtp.mailfrom=maxg@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
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


On 9/20/2019 9:05 AM, Nathan Chancellor wrote:
> On Thu, Sep 19, 2019 at 03:57:19PM +0200, Arnd Bergmann wrote:
>> Changing the switch() statement to symbolic constants made
>> the compiler (at least clang-9, did not check gcc) notice that
>> there is one enum value that is not handled here:
>>
>> block/t10-pi.c:62:11: error: enumeration value 'T10_PI_TYPE0_PROTECTION' not handled in switch [-Werror,-Wswitch]
>>
>> Add another case for the missing value and do nothing there
>> based on the assumption that the code was working correctly
>> already.
>>
>> Fixes: 9b2061b1a262 ("block: use symbolic constants for t10_pi type")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>>   block/t10-pi.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/block/t10-pi.c b/block/t10-pi.c
>> index 0c0120a672f9..055fac923946 100644
>> --- a/block/t10-pi.c
>> +++ b/block/t10-pi.c
>> @@ -60,6 +60,8 @@ static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
>>   		__be16 csum;
>>   
>>   		switch (type) {
>> +		case T10_PI_TYPE0_PROTECTION:
>> +			break;
>>   		case T10_PI_TYPE1_PROTECTION:
>>   		case T10_PI_TYPE2_PROTECTION:
>>   			if (pi->app_tag == T10_PI_APP_ESCAPE)
>> -- 
>> 2.20.0
> I didn't have the break in my local patch but I think this is more
> correct based on the description of the enums. Like Nick pointed out,
> there is no functional change because this value is not used in this
> file.
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Hi,

we had a thread with Martin regarding this issue and we decided to set a 
default clause and add a BUG() in case we get there.

I've sent a patch with this fix.

-Max.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f279edcb-1d54-2333-8aa1-1af8c91bbc95%40mellanox.com.
