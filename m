Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBTOFRCEAMGQEVXPEF6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA933D9C49
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 05:38:55 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id r13-20020a17090a4dcdb0290176dc35536asf4956983pjl.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:38:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627529934; cv=pass;
        d=google.com; s=arc-20160816;
        b=tJreZTQocytnhAm1s7dAPtqr+HGV4ocSA0OUF6i7IRSUuVZ2+W8ysAay6U8HRIAc1o
         Fvvb2/vqi0JxPY+Dsw5sxnlM9p+AxpjC8J7wo+4Wo9ikAXua/BcALuatDi4ug+PKpa6S
         jMawydh1Ku45uXTWqpzT0DewLN8vdDnOXVF7OBrM662ImlbsFt+IwhlRqF9m/qAlpmge
         JuDvRbLKUIcDDNhHqEcVmNqCUoyWxwR4XEwX/QH5IeCndP70Xe9QgqII6JGBK7gNwLYi
         9xWjpBCiJIgE2nJp7e6QdP65zjWgsj67D8x1fdMVEFObdVqgk+sxbfeFIliVf5M68Wro
         NZwQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ae6Sq8W9l6Yhx17DM+FLbfyA4jeIFY0KAgf/oxxfsGI=;
        b=HYQFVxCWsLHVoFZJcrbd3BJX93GY/rd7j9TuSWmE5/EEorbQM7wiDDmY8/vfNnldyb
         S/B4FhHqxQBhawtYFQlxme6v5tmBMq/gMZurAyG+ltULcrL1a+X+3724YLSVDxziX7CI
         IZTUpQaP8YsRVDOxB/IeCaDhqKZLON5r02BcFBDR7fEdQ4CUasiQwj6d76OlrjUW28uY
         kQW4h33gk6Q7xtEteXZE9/K78hjs7BZwI5RTw7HYqir8raugHY30q4YZqYvOQMM35K/l
         PB1EKC6dn9V9cAXpQjEWo4FjtVlYfD9SiUUbX75UtuPsQiZZoGtNKfqPJqczI07tzoMW
         nuTA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=gCW1qmeD;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=lWDrXVMr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=DwJrs6Xx;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ae6Sq8W9l6Yhx17DM+FLbfyA4jeIFY0KAgf/oxxfsGI=;
        b=rsZLH7d7Gx8lXQQRe3kXdOjWQ1Hhs0LAx9PvsZ3mOSqAbf0enHwLB9cpjjPk7cRq0w
         6GtDP3pWQk/WPnoP9s5KJvYmq316OV0JMRWs3cQfnQpl2Zy39hCi2JVmov76Vwq2tFjw
         4YcwZp9JejFADdQjvvaUUcoFPPvSwgW9RMV6Z18noFYc6Nvm5qU0qiyMiX4Lk7HUzutC
         wkualLf50atASnA8kQWjn1T0jLBu4RT/MrPo5cQQPyPHh8bnueTzAyxOLop4V78G5soH
         p1hc/XfwChubixvibcN4DMQgXoDLW6mYeC5Aho0KFW/ZCUCuG15LFRUl1Ot0rwCgmc7l
         P6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ae6Sq8W9l6Yhx17DM+FLbfyA4jeIFY0KAgf/oxxfsGI=;
        b=cuxIvNxPvrFLkDnkQBPk9La/P63ghE+gc7HAo3KqyymMEklnQ0CZXkkcd1MGeS89Ey
         6HOy39uKUlXXLXC0+FeI1SHlBo9R7aKJSN9rBiUkypCLhUEei8SK8D7c706KhYN6ZhEt
         IEomarqRecD65eMz5uPwcslplZrsyCONtisMXqQdoQGj98EjBKSiX+ivjHrLC5o4qc9D
         jVySKNAHwgCCK0h3NAbfA+CqBfXb1DWOGu5oTx3LYf64weS6kBPk6lFHdvKV6l5NUkdD
         wBEoKZpzBh0mxpwGcKLxKOCckKnv4Pzbb/q9OLhd/ecqfZVysGjcbe79tetZNhMjglT4
         NsHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U5ytYmR/+HOIKyLXKZ51cCkTxIxu1++YA9NCozUBcwuCdZpb8
	NdSAPulU8l5mqkWBhOCqoJ0=
X-Google-Smtp-Source: ABdhPJzWK4616tskvCu75H+5De28jtxqm4m1ZUuuSfmqtZdkj0FZPycz9fjsM8+QGvW1mI6OkEVDpg==
X-Received: by 2002:a17:903:2445:b029:12b:9d0e:6b97 with SMTP id l5-20020a1709032445b029012b9d0e6b97mr2824364pls.84.1627529933983;
        Wed, 28 Jul 2021 20:38:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f96:: with SMTP id z22ls2289466plo.1.gmail; Wed, 28
 Jul 2021 20:38:53 -0700 (PDT)
X-Received: by 2002:a17:90a:4884:: with SMTP id b4mr3125944pjh.193.1627529933419;
        Wed, 28 Jul 2021 20:38:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627529933; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZtI5Qbnp0ZN9Bn6xyX6sBid42WiylNrDf7wQbt05HUaAUgHU+Q9qDfy8dRE6xcdix
         X57ZT4ijNpb/G6MTBZCejJ9pymiZYN0YgekUTgR+uo2XjIe0ePt/3L+s/M1VfQovbY6P
         QLkqN4D4F0UkkUbHb4gDMHRzubYEaV1TO+bd5NdrDC+rDlkdayzaIjElAorROUFOaE0Z
         WVrKq/l1lUNcNCCB1iGBRzMrNtvSfnuyULlI7aZJHwKYFaYjrGCjeztWuEjiGyi0PzcZ
         3gO8/FpqJ4yAWsoUBipTKcOnqGL29cZ92x/oSdmGBZs/jsQyqXEXszkRDqJDBgd8vQAK
         QT+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :dkim-signature;
        bh=KQnxzvTM+ytO7rkFlMSy7u0zaB8Y+yn2yM4yfx5usto=;
        b=DYcygpMKmzcRVqfLkQbFp5TbAteDG3kpyaVP/jp0jwAWJhlnRUk5268flnrJ8owJ8B
         EYA9opG+Fr9nVIMQAQQ64cMhF11SFLiCUrXZO6LkEPTNynCu+kErrkXpsq5IZZjPL1fv
         vpYepwxD0aU6n19N2Z2vXMXzWT6z5UbLgW/yZ6FzWCn1nUBRQqjeTEE2yfyfjtX+3fCu
         wJ/NJHM7jC9mpyZKt+V0xRq+Cmr05sR09HDAjooVTvuaCGvhqtPE3KpvV/zfaLsuH4o7
         eGjr4JsyEV/esfUauTeA/m8PpJHrqYHgmrjTT9E5T+pV/k+TydrV6AvfxRW8agX6WGfu
         k6kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=gCW1qmeD;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=lWDrXVMr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=DwJrs6Xx;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id f16si144117plj.1.2021.07.28.20.38.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 20:38:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16T3apt0005970;
	Thu, 29 Jul 2021 03:38:40 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a2353e20k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 29 Jul 2021 03:38:40 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16T3UqoR071132;
	Thu, 29 Jul 2021 03:38:39 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2045.outbound.protection.outlook.com [104.47.74.45])
	by userp3020.oracle.com with ESMTP id 3a23501y1t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 29 Jul 2021 03:38:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CMbIBYbZORs+/V/B1b9hPL2WdUha4vt2gKVliqaR+y8XlAu8rQOfluogU75M2QU09yE+Cf5UqebG4ROoFYkKRKr4ab+EyWLg46xxrM1cqKbBYWx4k3M3+1KV8RdGe4RyLrP6eHftaWxrLEWyrDK+u6Bz0HDebWwdFGb/+GYyOZ0qqGIT61c+UQXN7u9aX1A5IZ+fuP/OfEL4j9A/5jM/yZcoLizSIb6KfcZq0VUscSrM1MnQYu6ndN+PffxlHtktcDvvqABBTh/hqJfhuEHLrQq0oi0hRzLfD6uVTebGW/m3WGLAoi3LWsNff+uS8SSLASLJnrf+ki/BUcXvpPbXSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQnxzvTM+ytO7rkFlMSy7u0zaB8Y+yn2yM4yfx5usto=;
 b=i5VkHQVggtc7POMK6A3AFVw+2QXDDFn4LnjoNy2GlBUrOS1e68dn4nbLRPdp/sIN9Qt1V0ZqZ+n64A48/hE/+OxJ7WjQbAugrTcDEoEl8Pux0WlOHrqtMuGp63oMlprVe66Z7A+dLcVH6jOPAwpfv/17OUluaihRaW+mP7zfiCnPe3OABJ8lZH9clUPEiH5mswpqyIthXDC9coYqNufIkE3w3TpZEaQ6ZojIsqha/EZQQWlPwLTScNWTjUMauc9aOumNTubYIgjIcbFechZU82+AJqEo9vl7NXJpEZML8/F8YwYLiIsG7h1F+NHNZvDGEW7xUe+tY0mcH5V7csxH+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CO1PR10MB4754.namprd10.prod.outlook.com (2603:10b6:303:91::24)
 by MWHPR10MB1549.namprd10.prod.outlook.com (2603:10b6:300:26::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19; Thu, 29 Jul
 2021 03:38:36 +0000
Received: from CO1PR10MB4754.namprd10.prod.outlook.com
 ([fe80::79e6:7162:c46f:35b7]) by CO1PR10MB4754.namprd10.prod.outlook.com
 ([fe80::79e6:7162:c46f:35b7%5]) with mapi id 15.20.4373.021; Thu, 29 Jul 2021
 03:38:36 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, Sudarsana Kalluru <skalluru@marvell.com>,
        Nathan Chancellor <nathan@kernel.org>,
        GR-QLogic-Storage-Upstream@marvell.com, linux-kernel@vger.kernel.org,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        Ariel Elior <aelior@marvell.com>, Nilesh Javali <njavali@marvell.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        "David S . Miller" <davem@davemloft.net>,
        GR-everest-linux-l2@marvell.com, netdev@vger.kernel.org,
        Bill Wendling <morbo@google.com>, clang-built-linux@googlegroups.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH v2 0/3] Fix clang -Wunused-but-set-variable warnings
Date: Wed, 28 Jul 2021 23:38:25 -0400
Message-Id: <162752985699.3150.5117188041980420877.b4-ty@oracle.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210726201924.3202278-1-morbo@google.com>
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:a03:332::12) To CO1PR10MB4754.namprd10.prod.outlook.com
 (2603:10b6:303:91::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.mkp.ca.oracle.com (138.3.201.9) by SJ0PR05CA0067.namprd05.prod.outlook.com (2603:10b6:a03:332::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.11 via Frontend Transport; Thu, 29 Jul 2021 03:38:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f7243d6-3da5-4b2f-0c01-08d952425910
X-MS-TrafficTypeDiagnostic: MWHPR10MB1549:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB1549E3032A238FA629D69FE88EEB9@MWHPR10MB1549.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IaVmGUI9u0nlGCStvP4QXL7cSWMYIBt8ixelahiPWpqJJGxSTWUgaYiY8B7lDgsRxSHdWr5qHHkBwvWPS4eScmKWx4GnINDxt8egbDpIlmiWdLvpn0OY4qNGc/c2OWxO8kFAQhSMOOIvKjgMHI3kua8cQJ2xAMO09TcTgZVodVVVhTX51dfufbDkp2JORTDhsM5rOaI/bS1H+PA0qRWzL+LvfiP6gFhB5xtLP+qL5yqhjzMfaj0QC0mawAl7WNwvBHI82NkIezKzm8C6+p3Hkv/hQX3Y1GKgAxUt4oUcFzFNjE2FLoRYaepGorISSC1hksz4u2MeTy5a+zqoTj6t2TwCHPRaUIdCAnCEBHs295edQvhDUGlprmQy26RGoGTzy9buGgnqcE9BV4p1/Z2eXWOU7Hbq7S5emmzZsho8HHdHKGUo31hvjcGQw39a3ZWr+BLWXXSV2HFMXTizZAhkygDNQT396xX/ZDf/Tj3++buQ39n3M/xx2NkePR5hIXGaLGmqsJ8vImQpqvm3eZRimusvjJ2FhMKMZWlbjjkiaRfpwO883qZlePeJI+zsS+RLEIFpdRNwRUcjySghoT2U8bd9+6jB1BSKo3r65laMvGqCXZTFMFkmNECJOJkHDRbytuUa7/C7/z/A1oepJGq8KGTZeA2/39cJd/ULo5bOolLFRyIxQxQyA9rNsRgw+hYbH9wegwqBZWSKNPnc8Wd5d++F3TsOL6BqBCjv/ihAZIVsn6+RoKSHwxmU/RDvTRTNilemQnQVJi5Ig3TuMFU87Z6Bu0qOC0sNYFOYx27HnaE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4754.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(52116002)(7696005)(921005)(107886003)(966005)(8676002)(508600001)(86362001)(110136005)(8936002)(83380400001)(2616005)(956004)(7416002)(26005)(2906002)(66556008)(66476007)(6486002)(66946007)(38350700002)(38100700002)(4744005)(4326008)(36756003)(5660300002)(316002)(103116003)(186003)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eU9lTEZoMW4wYVhEZDRlTmYvMGY0S3V2ckdBUGk2Z1NnVlJYVHdHQ3BSV1RO?=
 =?utf-8?B?OXYrL1RiQ2hKMExwem9BRHhiWHNZdE1Vd00yT2JDVzI1eXBkalZ6RXRrVEZa?=
 =?utf-8?B?cHRtaG9EdlZuQWpWSTFIOUJRWGczL3Y2dmc2YlZFYWpaNDJrYjkxcVdvSWFQ?=
 =?utf-8?B?L253S3VFUDM1OFNSeE9FNUV6SE1KZWVYNElmK3JSNUZlMkJNV2NERFJSWWtn?=
 =?utf-8?B?Y0tBTlRLeE1sQVNZTVkydzV6UmRMUkRSVE93NG5hTVQ1UWJiWWZaUU5ZTVQ3?=
 =?utf-8?B?SlVNRVc2SFMvRStlTEdOcDE4SllTNzhkQSsrYml3NCtKNTRrQ0VUVWFpOTli?=
 =?utf-8?B?QmJJd2YwSEtLTGlPSjNueTBKM01Ib1Fic1JSRXY5bk53QkQrb2hhR0ZSYVdr?=
 =?utf-8?B?cC8xSnVHMTN4V1dNNHZGSHp2U01lWmdMRzhGOFhqUUg1dldvbXduaHJmVU9J?=
 =?utf-8?B?bFJ3K0RmVWNONlJPMW5YNGNQQzJJTTlHNGtzazEyK2N6MjIwTmRjYnJnVmNG?=
 =?utf-8?B?eG1xMFp6NWhJUHNlZlAzbTUyU3JpL0NuQmpTcEUrMkpCcHNSUnhHTHlOUkUz?=
 =?utf-8?B?bkpjdjRvSld6eS82RzlZZWUxWmNyWTM5TWY1UHF2R1B6NEdmK2RHSFlIeFlT?=
 =?utf-8?B?Mjh6Nlk5NGVPVkM0Tlg1RjNWQy9BN285UVhvUlpjVXU3VU0zeEtxZWFhb1Vz?=
 =?utf-8?B?bXpKYWdsbk1DZGQ3OGRDcnFYUVFJTnQ4WUpsUXpiNFlEeXJaMWY0R1luUUpI?=
 =?utf-8?B?dk9hN2NiM2E4a0g2aVc0VktOcHBlS2dxNkR1MTRBMGQvcFFkcG5Fa2pkZmM1?=
 =?utf-8?B?UytISitXcjc2d1g1QmlucVhKdnAxYkdwb0ljanF6UGdJUmU0dnp6RXczVW1J?=
 =?utf-8?B?d3Q0OWZCV2lscGZmSVdjbFhPcWY2Y2xpVWV5V0RSNWY1bktLcGhwbU84aEpo?=
 =?utf-8?B?TVZ2RHhmQkFvS1R4UjF3UTNsdjVoTG9DNU92T1FOTkcwZVVvMmN3T05qSS9G?=
 =?utf-8?B?VnZvaDQrQ1VtOE1HRWNOU2tVeUxBT0NSVWlyZ2w5S0R1b0tUSnY2WERxU2FL?=
 =?utf-8?B?MmIvaUowZ2tNVlJmMGNUcmhKTDl6eDZlaGsyNHozZDR6d3l5L0tPVjNmRktv?=
 =?utf-8?B?aWQzSGlzdU9Sb3dQejAyVTE2K2huT2NBcVBBV0p4UzdBYXkzUTNsdnlzeTFz?=
 =?utf-8?B?eFZJYVNrSURiWjEvRlpFZVpPUXo1cVBZQkExVzBOVnUyN2hySHBON3RNa0Nq?=
 =?utf-8?B?N2lGRllxeFN0OVI2eFl3VFErMHJLQjhMNjZ3Y09IWWI1bFg1QzY4elg2VTVC?=
 =?utf-8?B?WTdCUlV3cWtJajBEUEphNzZtaG95SGFlaFJKenRibGhCRkpTRWRRaU0yMGRj?=
 =?utf-8?B?UVhKemdKc3YxRVlkcE5hdGUyemhuakpNR2RyY1JKbEFDY1Q4djFQWlJSQVFy?=
 =?utf-8?B?SnlkazFUaklCL1UrQVJJSU9qM1FJODdpTnl1K3JDZkFGc3plb0RCbWk5MkFz?=
 =?utf-8?B?MFNiRVYrbUhZSmZmWDh0RnlZUHlDU25zcHY0SHFBS0JyQUNGODk2VlVuU1d6?=
 =?utf-8?B?VTFDdFlGSnZzaVlKM1JrZGxNV3lwVFMrS2ZwZm5pNVVuSjFOMEhYMHRpSmRk?=
 =?utf-8?B?OWJOempiT0g2VDBNRzNkb1FlemRJNTNHc3luKzBSRGVsTE1VQUZJYlZEUGV1?=
 =?utf-8?B?UHpqaU1meUs4MzBvNC9GVmZxeExIT2MzQ0tRVFVIK0hpR0ZFQnlBdFBKTzVJ?=
 =?utf-8?Q?ah8+6F+YLdzFzZit/qMGAEaKbykO9FsdIOABQHi?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f7243d6-3da5-4b2f-0c01-08d952425910
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4754.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 03:38:36.7827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: okwWKd2c4WySu/5T7Q06H4V74uhDKURzDkuPXu9j4YBZl37bc79KtLeK0Es0J3zn+gnh8ovev4FHtHL3G+y613UeaYNSgTEwrITK/kdi8J4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1549
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10059 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 phishscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107290020
X-Proofpoint-GUID: RQxVxFAU7sks0o2EkjPwMNtCcyDJ3oJS
X-Proofpoint-ORIG-GUID: RQxVxFAU7sks0o2EkjPwMNtCcyDJ3oJS
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=gCW1qmeD;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=lWDrXVMr;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=DwJrs6Xx;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 martin.petersen@oracle.com designates 205.220.177.32 as permitted sender)
 smtp.mailfrom=martin.petersen@oracle.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=oracle.com
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

On Mon, 26 Jul 2021 13:19:21 -0700, Bill Wendling wrote:

> These patches clean up warnings from clang's '-Wunused-but-set-variable' flag.
> 
> Changes for v2:
> - Mark "no_warn" as "__maybe_unused" to avoid separate warning.
> 
> Bill Wendling (3):
>   base: mark 'no_warn' as unused
>   bnx2x: remove unused variable 'cur_data_offset'
>   scsi: qla2xxx: remove unused variable 'status'
> 
> [...]

Applied to 5.15/scsi-queue, thanks!

[3/3] scsi: qla2xxx: remove unused variable 'status'
      https://git.kernel.org/mkp/scsi/c/cb51bcd5c34b

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162752985699.3150.5117188041980420877.b4-ty%40oracle.com.
