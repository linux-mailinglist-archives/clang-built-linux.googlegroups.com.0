Return-Path: <clang-built-linux+bncBDX4F3XH2MMRBZHKYX2QKGQERCTGODA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1D71C58A8
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:17:10 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id l3sf2762083pjk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:17:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588688228; cv=pass;
        d=google.com; s=arc-20160816;
        b=ew6cqKvuFQegeV38quvmwsuXkTXJI4gLHyO7ES+Zv6CvepR8vrmnSgmdN25WEMRGQA
         VgNz402WifO7sMAoaAsMMC7Nevxho+QwjZgM1x38+ZQfbcZ9jcGtf/Kh4Q4pvXXc37Et
         lTg2/8BMS/gJm4VMC87WHIu8NbQdF/85tPxvs0e1Z1PtCyTNku5hB5R/DXjX+YT2ouGI
         QTIrEo9vY42ierktgMFQ0V7inA7jOAFd1pywp9r9u0xir7c3vM8K6e8slPMZN9IQO2wf
         sKYKBAuZDeGu/FKw0yvkLklZwXEum2dleKB0avyLYb1fbx7FQNY06IVeC5UTdD9wT1M7
         7chg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :content-transfer-encoding:in-reply-to:user-agent:date:message-id
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=7l3j0LdvEsfJC8saukYaSu+Abzg4yvSNqZziMT9JC64=;
        b=QMmcER1CgPQ7xRJ0XhSg6H8xM7mhV69LDiVnO5yL0wVf9iP+etKaihfARF1S17zLJh
         815D52YNHpedygJQ15rC0JQDQAnnNkoQSKPBCe70KWZyQu78l7XhQZY2utjhZ6Sl9agU
         MFTjZSSK9oxgG+1cgjBRaLNMNvO7J3QtwnduGRiimbu/AZPCi7P/V0pssm/+ftZoIk8Y
         YHqDmwntE9IsMXhOK40S0L8t4MWUDuU94TuwmIoQwRIXrBWROHr9FuERxdXGaANn7dtQ
         1P6Jd0PmmmA0yY1UKQgEGAYOBL9vVFLWh7fv6J9q2xWwLIs3hamWqoPQH3xRPUxiWqRy
         IQbA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=NkZP1v5S;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.71 is neither permitted nor denied by best guess record for domain of christian.koenig@amd.com) smtp.mailfrom=Christian.Koenig@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7l3j0LdvEsfJC8saukYaSu+Abzg4yvSNqZziMT9JC64=;
        b=gMMRh+cIfdRXrc+76eC2on5h02+hV9grWrjDDFjUQ9+ZI9Iw7GBcFl0XLmq2I/YOXS
         sC4+zHWdpC4Wr51cmnhMVNQ7g9zud4A3vH/lSCYR36CHQlHmOAgssBGQeHxv0qH5qeQU
         EzIroMNXmTKIkVfKe90v8jAbEJlNYIyk19gZrcbG1r9sK5/V2Q2pKuisFLXcPa4ku+Rg
         i3ol1UkhaVGkXoWYWURKgTrHeLbObDE0x98bH/GtCNbjuSf1l4mnRkrwozDDJB0Zl9NQ
         4PYMkdJZBv1Y9Xdsh+bMmX8FXywzi7S8rZNhM1pAjKfVUVY22mDUmgqqSPjYfV/+yjvH
         ERiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7l3j0LdvEsfJC8saukYaSu+Abzg4yvSNqZziMT9JC64=;
        b=EVqmV4LJYAeFhYPNpmOqk6a/JMtrcmUB17hgFkCUUEdOUEsvQVFchMM8a25T5rZCHx
         orucm29jnlty+m24NgHCCc7P6mpBdI6HAHJG8EjsEZwIuS2bDD9af94GHty/OMOov5WX
         EtpdeaKH/e5eOTlk+28omEXQjYYvcVGoLV75b/RkUulYVtomPXKiIg6zdCtCgrccyepn
         M8W0IKlWoc0ZiBt4IUqQEorYbvWcCl5kfpNeE2NSivJr7lis3B1PfA9vb7I+3ke8dUlF
         pVNsiJ3Y6lGsXMTR2OlP7I80HdB/LPNiaebZqU2/04LtHDQL3Tb/DnQRg+rEluvjcp3a
         txfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYpgUR9Dx5GyuBlySstuKA/4yzRuEf4efPYuIAA+0ZFvWS6f0OA
	Ozk6XDKY0WziF1+em7mZQKE=
X-Google-Smtp-Source: APiQypIwH2Z/mgpJ4z+vDKmMGxkhVHEUmlYMQaIioFV7YJJnocvhKqLR2Q1uMrmLYUcE0ue2z04+TA==
X-Received: by 2002:a63:e809:: with SMTP id s9mr3097666pgh.191.1588688228463;
        Tue, 05 May 2020 07:17:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1b0a:: with SMTP id b10ls1753311pgb.1.gmail; Tue, 05 May
 2020 07:17:07 -0700 (PDT)
X-Received: by 2002:a62:b618:: with SMTP id j24mr3431982pff.16.1588688227785;
        Tue, 05 May 2020 07:17:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688227; cv=pass;
        d=google.com; s=arc-20160816;
        b=dmhi7E/T3ahPZ14zNr+kUFJpLpC805MFn4Ad3OPCXBYilOfn6KxFiiGpP7Ahdjj5aq
         v5KTkrQ0+VyoXUKW4ruvYEcQCE03fvZuwu9ghB4JKV1sg8zS0F/J44urGtl5G3asRywv
         N0AvUSeUoUo+gNCVc9cTr8EGInznGnZk6Ugeb36yViGzjznpuSh3Hjrc2uemmskoGWYO
         95saDDjYCGQ+UGd+C3Ih6vV7gF8g5MyxPTQa4Su/12qPGJwcMoexJN/8t8QsKgMAVlhc
         L6N7JUlNtL9qAlBqlZfNg+5swNYSdtwRswGJrr/Heub03+GDOMcKcMhQYtPl+x1rLJgC
         8CKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=sSX4ilqrJ63bGDLmAyA/63T2YgBZrcYZjNEIh/Oqjg8=;
        b=g3487wsklkBRoLB8BeNvCYDl/bP2HBFt/PtDziILM1S2P3BHvBb247TZ2auWFa9ezl
         ttdRwQICIiEbTsWMKTlJTA4TOpZ+2IMMFHl7Fuo6XG1/IaOs/PdpDURcOFkrmLxpXfPQ
         s2x4m+q/2lfMjQMJwLAt5Yds9+bBN9ie4BgPyDiYpIFLebp1StWMZTI+Ru+G85PB6ACj
         2YfEx5OTttZe2JVuBBVv08MkrfBxsFCTYU2vZ2Lh949fkyDZX0EDsN5ErOmmBs5TiQ8Z
         sxPA8boKzDhmp/ymiXEl8WDFIGhvF78bl87mO/ZvNFvCePR7apjpp4h59gi4JR872snK
         ANGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=NkZP1v5S;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.71 is neither permitted nor denied by best guess record for domain of christian.koenig@amd.com) smtp.mailfrom=Christian.Koenig@amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2071.outbound.protection.outlook.com. [40.107.93.71])
        by gmr-mx.google.com with ESMTPS id x5si219660pjo.0.2020.05.05.07.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:17:07 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.93.71 is neither permitted nor denied by best guess record for domain of christian.koenig@amd.com) client-ip=40.107.93.71;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTwMMdSXk86f9sU25Er2ZrmP+IAXOtBmRH6lV6K/C9uEYotthNLSpeixGHFQp/sBN/+Ux4vQzNr/RXkDiRwIZf26EPk5/PMBWt0c/HNLVuE0+BCmdJTHwVPjPy9XhJW2szIoKb5sJd93FEcR6xU6yRQjx0hsoMOY/FjFxN6trgf2Gc+aVfOrAidH+lPgX01q3PZU8Bi4gI8AWA6fcMC3mW+2uGZGlQ/mgz8R5neSNdnhttZlyAuPNJbHYgpWLFswT4JIfXdJ9E1jgTd26IqGggNhhM/54WBjTLAybCHCiqfNIwAscRIsWgKspUoC5Edm0Ys2HOvJ9MtO1fpfHIWssg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sSX4ilqrJ63bGDLmAyA/63T2YgBZrcYZjNEIh/Oqjg8=;
 b=b1TPWpzqEzEr47DJZdyvorA6ChnxXlaKGKZq3ukAf6g5zNU5qCwMF+IbBF2lRW+3FCNHMVlt3OU09M9kdAvzAMUg++0w2TjRyT6vSby08Ck+Dy8yHVto4T/uqkLzy72ZenBK/JgY6hu3MiCXbZh7WoiH4hkNowsedkfyWEc65Ig9okjAWWjWREWdDLmbCensMci/4j+wmmSwGhdCIASTOra3tNGEnYUDf7FqCVoooJQX6moEyxjLiK4vTIgezccAN9hHY85ApXwta6KLKmL9vT5/b9rnV6lVQ7BRsCu3DHUcgPiPb73zo+N3XtSnB15616zX7hifI7Q4jJamRadE7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB4401.namprd12.prod.outlook.com (2603:10b6:5:2a9::15)
 by DM6PR12MB3596.namprd12.prod.outlook.com (2603:10b6:5:3e::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Tue, 5 May
 2020 14:17:06 +0000
Received: from DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766]) by DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766%3]) with mapi id 15.20.2979.027; Tue, 5 May 2020
 14:17:06 +0000
Subject: Re: [PATCH] amdgpu: fix integer overflow on 32-bit architectures
To: Arnd Bergmann <arnd@arndb.de>, Alex Deucher <alexander.deucher@amd.com>,
 "David (ChunMing) Zhou" <David1.Zhou@amd.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Evan Quan <evan.quan@amd.com>
Cc: Hawking Zhang <Hawking.Zhang@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>, Monk Liu <Monk.Liu@amd.com>,
 Kent Russell <kent.russell@amd.com>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200505141606.837164-1-arnd@arndb.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <e4a852b2-807b-bc73-7328-bcc399341085@amd.com>
Date: Tue, 5 May 2020 16:16:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200505141606.837164-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0116.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::21) To DM6PR12MB4401.namprd12.prod.outlook.com
 (2603:10b6:5:2a9::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7] (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by AM0PR01CA0116.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26 via Frontend Transport; Tue, 5 May 2020 14:17:02 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 26815344-3fc2-4d2e-e3db-08d7f0fefd64
X-MS-TrafficTypeDiagnostic: DM6PR12MB3596:|DM6PR12MB3596:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB3596F390893E330D97A4F0B183A70@DM6PR12MB3596.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0394259C80
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KaQgGPXlPqwW268N5DGaLZ9UqH2nezz7ZC1jnmahY4OSqUjpJiDYV4F9xq2xE3FFdqGUmD1d16jK887A1MIKz/6OEMWOSFfn0IKqIEg0nT3qhTOUghIwqEdDnAqJjrBcpubl9pKgE2KzdjaSFJPeQM0AJt4eoYVPsVNJtwT+R/theJsGCQHJXaAUGyh6QTRrZJb87eNRmhrAlcc2ycECyMAKUWc776kykoL+DX3d7Y9oJffDMzO4HGI5lxWmA2HAcShxZ8F6crzcS2d6Rymm2B4h2yQWVERSyQdqWY/4TL+nsa6xgfddugFs2HuLr3FdY7xq/QlZ7YsnA8snPi+eBZuQ66iuAvuXrKY1AYwmKmIiMw4qIcfRKL2mz5zffX+ZzyOiQZng2kBI6yAj+ONhp2AHMMiBWVnYQrA/hNc9AXio89iw+sxE2cjj/yoeUmYcYh+GMqkmBodhhcJdcTFH6ufxuZzQhZ+4q22DPIJjAfCz+OS0ClRisE0ZVUK+d7S3PCVwi/PsLVVxHNJwc4GvXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB4401.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(33430700001)(478600001)(31686004)(4326008)(6636002)(6486002)(31696002)(33440700001)(16526019)(186003)(86362001)(6666004)(36756003)(54906003)(2616005)(110136005)(66574012)(66476007)(66946007)(2906002)(52116002)(8676002)(5660300002)(66556008)(8936002)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 1vNBnmUD2Ca9zDw1mF4DDeu80iMi3ZbEwYIHARuvVgXRNBu0WT48imymAY2XK5DjQGRjfMKUBugkT75R7aVEXltQADdbvk+sVvOAvEn9+f0NEf0OvEIP+BYa8xQJFQuIO6N9aKl2UYO6RmBjUsJ/jLfINQ9/reALOPr2W7g0+L2Y0LBLJW7IRbMNOiLD/EIQMI+sR0zog3UBqSeBQOpb9xxOxyerByU9Udj4Go4/ndkBmzp8QJmdXAmAQJcY2lEW0OIUV9R+Z8olroB9JCJrIZp9pIy9xUf3TfB/0hzxYsRNJ9z9uRvs8CWEpxNf04e58cimG9t0B5SulAlwgTkAUX5v5Cv9RQ5g8xk0gi4tSItxeCDXYC86z+vFo71pIlDHHKpge5ADYAxPuBkrtrtQIZ5sFIKgRvHG2RG4A9iZg83Kz8ApcpcrkYZ3e6tFtjVb8NF/wYClyD+Cdf9wN5lMK1ybzO3kqUn2lYzTTLqee4BCoiaAfw3jPTM/Ngc0dN7OjwqJ1Mktf42ToutUz/8dgDZk1adLuqwJGO1bV/NM20x9NpzMqAzt9NigybVFtig1EY3CAXnxDF0WtuUtkT1hTHkv/2Y8anf4qv4lNP8fz/3yJRzK2f70755lCVVeXlMZ+pq1owVQKueWdYJOJjQDnwTiYaShcOrzUyKrUZVymsqFM3T16UNXyTBDlTb6qR7ju4gmUlBKiNBzS5ddq3f0mrVuhzPwWsV5eRKLahpdD2x+rTDbclFWmxXQ6FcpvOyrp2Z28oFnk8j48GpoXgI6CxZwATp2NlyqYCtxLyIeftxajHZ5vrLAK0ys6LPH1bKLP4A81W8/7XIkz3UnBXjT4AKmSf96AjGheyoaLk12GP0=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26815344-3fc2-4d2e-e3db-08d7f0fefd64
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 14:17:06.2987
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IAKBi0sO6PGJCWXmaXaixuWoyWAe6aijK6n5Fp3zqDjNtPz03EK1eWmX04FXsG+M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3596
X-Original-Sender: christian.koenig@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=NkZP1v5S;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.93.71 is neither permitted nor denied by best guess
 record for domain of christian.koenig@amd.com) smtp.mailfrom=Christian.Koenig@amd.com
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

Am 05.05.20 um 16:15 schrieb Arnd Bergmann:
> Multiplying 1000000000 by four overruns a 'long' variable, as clang
> points out:
>
> drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4160:53: error: overflow in ex=
pression; result is -294967296 with type 'long' [-Werror,-Winteger-overflow=
]
>                  expires =3D ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L=
;
>                                                                    ^
> Make this a 'long long' constant instead.
>
> Fixes: 3f12acc8d6d4 ("drm/amdgpu: put the audio codec into suspend state =
before gpu reset V3")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>

> ---
> I'm not sure the ktime_get_mono_fast_ns() call is necessary here
> either. Is it intentional because ktime_get_ns() doesn't work
> during a driver suspend, or just a mistake?
> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm=
/amd/amdgpu/amdgpu_device.c
> index 6f93af972b0a..2e07e3e6b036 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -4157,7 +4157,7 @@ static int amdgpu_device_suspend_display_audio(stru=
ct amdgpu_device *adev)
>   		 * the audio controller default autosuspend delay setting.
>   		 * 4S used here is guaranteed to cover that.
>   		 */
> -		expires =3D ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
> +		expires =3D ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4LL;
>  =20
>   	while (!pm_runtime_status_suspended(&(p->dev))) {
>   		if (!pm_runtime_suspend(&(p->dev)))

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e4a852b2-807b-bc73-7328-bcc399341085%40amd.com.
