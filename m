Return-Path: <clang-built-linux+bncBAABBRHIXOAQMGQEWSS7ZJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF51531F2CF
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 00:12:05 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id n12sf2237225ili.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 15:12:05 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1613689924; cv=pass;
        d=google.com; s=arc-20160816;
        b=hSv5bBULzqrwaHBXnsRienax3RhXm6FjsjrZDyY9kfNIh81+D2rBVT8v4+Zv52VgVT
         HY9fFPVqO7ScHpPnBJnficIc2/PaR+xvlJbZtUjuvHfIkmVn7zshrftUJhrWIuSTH9s/
         cu8mlYV9CbMrcQdh1BwV5RMaHBu2lTpqa/mzT5+9BQQ9VsUJBqJI0m1LX+pB9a8HNEVz
         E7ulsqD/FKGodr0tvOdRrwT7LAjEjGWcZIyGKid4JYzCJjNquJp1quXeh6hAqEVUHHbJ
         YKj1K2WEf4nXCp8M3nIaC72GOuPimoRo7Qxmzap+CfQdlyE1qUNvlEvt5Bhlh2WfUqtM
         9h7w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=Y3mCJYqlhE53oWbOfCz7fvwbrydWwPpQXAzAkrXC/8w=;
        b=CQxZXaQIbSVOQh4CBh/bK01LSe9ZiDwdSnYPzz2C0ItJD8xEY/Lc8yo3Z7sUiaxSCJ
         1pVjixSd7ZhsPy4wv1Ol7b18A6ChMM1HdmE9Bfo1SxEcFBxGrEHdF5FlfI6FSZriHhGf
         EQNk/mV+gVToytIV8ussBVDqOaG1rHcHEVIsjp9RBCVoVvtv5/jePC/r7DxI+udh2B8+
         saDZj9NdNZwhoX0GX5uF0z39d+u23Cn/OxKa1UfRmANOKJYRUAlEiBsbwuIz6by0ILvn
         w0kaUuGD/m+tnzadJHss3MwaC8VJUzAFjvplP92qq+nrOf0opGo9Ms0hfFVkrtTA/OD3
         xdAw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=wo9F02Z8;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of kevin1.wang@amd.com designates 40.107.236.78 as permitted sender) smtp.mailfrom=Kevin1.Wang@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y3mCJYqlhE53oWbOfCz7fvwbrydWwPpQXAzAkrXC/8w=;
        b=boMx0rPH92wFwT+DVeuLFiWUv7DZ3F842ow0X0l2gMTu056hfXBVCESclzT+aPMQgu
         DKmRw1ZG/lac2AwgePHWWdYvT3CZsKIlm8PgWIceM0NSpyJIkhTmV+O7SPAHzg+9MwMn
         BKJ4V9aBCrumu35EdqMbnEB4rsryzx6wqspQ0TUrNqepNnEojc1JDosRd6e0dKOmsXd6
         geARJdcMWVxZgqFyEgMQrebZEPOB/fhrqcK+j0b/559K/ksw1QpP7/h3BSPVD5LKuhP2
         DufXPGmZa4WZcVEi3nV2wSpcZtYFJwCTyrGTrm30jGeeL1jJHrPXr6RBn+MZVbtUCJCL
         HYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y3mCJYqlhE53oWbOfCz7fvwbrydWwPpQXAzAkrXC/8w=;
        b=l3b28NPVmrjg/E9fNERZ8TbAYDOvgAoSyroCVyK45EUwDhPTZt45FJys6uMP5QytzG
         oivZdm8J1PNgUqsJTtBcrj3k3xW8a2BTv8K/z6z9U2vhIQqhNK/3LJidSumQi9OuLrFW
         1gC9635YYEp3U+SNaIrBQTDUE8Vjjeaqys5Wdmslz8fPj+ksbIKc/Pm9UuB/U8ejMUcP
         8RcxUT2+hA3lm+ge/X3CugBEAYhG6Yl57UxksVq9LbTKu46ORS8GKDgS01Flo0FqICCW
         ZllGA7BX7Rk4BDNCGSzcmxML5O7A3urh/EY9eCQbRw8WmyD/QGllAMwfEbhQjMGU/MIS
         FA4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sSPapM+Z7jmx/B1rhUu0gNZEVrRdRffl8ud22sqp4QvKkvED6
	7jjR+/cEJbpPTHE6jII9MNE=
X-Google-Smtp-Source: ABdhPJyNoXj4PkDTeFRySDtpXfjTLxe89G7BK2VtSRBdniBJRvjt20dYhyBevdO2xBSXh69h8xpryg==
X-Received: by 2002:a05:6e02:f4e:: with SMTP id y14mr1460793ilj.60.1613689924882;
        Thu, 18 Feb 2021 15:12:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1032:: with SMTP id o18ls1914649ilj.5.gmail; Thu,
 18 Feb 2021 15:12:04 -0800 (PST)
X-Received: by 2002:a92:c60d:: with SMTP id p13mr1389979ilm.118.1613689924461;
        Thu, 18 Feb 2021 15:12:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613689924; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y0Du2d4rKF5d4exO2UILewtFa/HiM6EgPS53RtJwjYw71ghrAqpXBmGMOLCeB5FYUg
         8o9ahu8c9bfexALy3knE8Pfk80NTH6DJGnbIzgWSin0fkdG27U1MVxyiE6/W0bWNiHta
         YKth+HwEobFUVr+fCU9REenhPxJ79kmLQsWw2ImvgcKWenrbPtgbgUwTxhAdVehfd6io
         xadL0JbCEtBkR7XpxhINETgHZQcZHQnN7qHewyK88zGLyDX2/cCw9ffHz8vpo+N8kRAG
         QZTtZXjnWjGVHq2xeNpXohVDvGHO0u3T38Zg62rrCww0sdZDA70YQZvCZtMt+O8hJeME
         MZBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=8wU2m5o1ywvoNW73am5AcPi/RC4gBpJxmwAf07oLheA=;
        b=SYBZEDFfiH6fMQrTa1YM9bBp36DrEqEl14XaoMuqGl8UklBNFL0esbW/MimmD8NNKV
         FU/8yIV5ej50eCGF8K/ZdrNf/iJ6OpmKavNTjGtsuqMo9i98lcfGpLcQeqiGAASSnr56
         A6xfkkNout6v6DXmKyIh4I6fbJEOHs47HBHtWqFljKmB3Itsa+4aeokGImPHi6fHZBC8
         Ih2GB2EGvzwUVGLeRJmCgWFLob1qPJZwV2D6np1rYKwswmiHuZQ0+Je1cUec/Whi8KkA
         fDCgmOyTlTXgKRt23V5YJRMFxLYgKQOvGn0fy0N1MdXH5vWbUjmgCxdCKjh84/9MN8b7
         9y/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=wo9F02Z8;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of kevin1.wang@amd.com designates 40.107.236.78 as permitted sender) smtp.mailfrom=Kevin1.Wang@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2078.outbound.protection.outlook.com. [40.107.236.78])
        by gmr-mx.google.com with ESMTPS id v81si316787iod.4.2021.02.18.15.12.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2021 15:12:04 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin1.wang@amd.com designates 40.107.236.78 as permitted sender) client-ip=40.107.236.78;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYYvUsxYwQzq2QzYDvrg5DWQsqfgP6g/bhpGSq00za+8Tjgu9T7mud7fF/7VTobC3VkDKrRLzuR+xkYaOZtJK1I/hJq/rzm4Aeyk777LFmYYn3JXwrZu/usudOmVwpu81tFUQ303JidCRemv5AZloJCRdVF4LiSzd5M0z6XMFqRcgDa9s1AdZmJ6+LE91tA9l5Wq/GP7LDw1gHDKD63VjCMFNVrfuMZH78EdnHcJtzE19mgp2lNmza0ZJKGI23DURZSExjUEcjcKVUIMEVl4378YotL2OmpVj0QcKOeuU3a9DDuAEHOj1+ZokMJPBGVjHDv1XcORK7Z5b6lY7CaMSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8wU2m5o1ywvoNW73am5AcPi/RC4gBpJxmwAf07oLheA=;
 b=UyukgOllkpvM91LLcfrgus53ZK71TjgIXhYp4Gwu4aPYdfic6vWXvzlcSGsgSoEUe0PvalMaw+1HysntYqBE1/nt1cE11J4l5XVRgRFUtui/LECwn/nNnBI+x4wG1MC+/aqGhkH08HxaVdAaere4NnSv8UzI54R0e8HLGsbmyBCZy9bi/9vFJFgoedz8FcdUfBak6MqLbRYHMxd3XHa/euCvfHqQm6MYATeHM6FrPgU4RXOVQXVUjjW+N5JiTqpyQ4wUPxVYk06NQ62wqiw9yPwuwXZ33CApruiGrNf590NWUZVrnsEykGBWNcpM5K94MN1wAtdxhq7/dEaoAb/5ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3022.namprd12.prod.outlook.com (2603:10b6:208:ce::32)
 by MN2PR12MB3101.namprd12.prod.outlook.com (2603:10b6:208:c4::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Thu, 18 Feb
 2021 23:12:02 +0000
Received: from MN2PR12MB3022.namprd12.prod.outlook.com
 ([fe80::49f7:4979:3a0a:4554]) by MN2PR12MB3022.namprd12.prod.outlook.com
 ([fe80::49f7:4979:3a0a:4554%6]) with mapi id 15.20.3868.027; Thu, 18 Feb 2021
 23:12:02 +0000
From: "Wang, Kevin(Yang)" <Kevin1.Wang@amd.com>
To: Nathan Chancellor <nathan@kernel.org>
CC: "Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian"
	<Christian.Koenig@amd.com>, Nick Desaulniers <ndesaulniers@google.com>,
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] drm/amd/pm/swsmu: Avoid using structure_size
 uninitialized in smu_cmn_init_soft_gpu_metrics
Thread-Topic: [PATCH] drm/amd/pm/swsmu: Avoid using structure_size
 uninitialized in smu_cmn_init_soft_gpu_metrics
Thread-Index: AQHXBkhFDJucxY3wQEGNwt0cVYduT6peil0M
Date: Thu, 18 Feb 2021 23:12:02 +0000
Message-ID: <DE2DF569-7545-41C2-AF18-400D6BD73215@amd.com>
References: <20210218224849.5591-1-nathan@kernel.org>
In-Reply-To: <20210218224849.5591-1-nathan@kernel.org>
Accept-Language: en-US, zh-CN
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [112.65.12.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7dc278be-6896-49db-c89f-08d8d46299b0
x-ms-traffictypediagnostic: MN2PR12MB3101:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB310134F44EE134F3A839E8BFA2859@MN2PR12MB3101.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:186;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gZVADYGbdWeTHtk5Y/UfVTByS7K2ADI8vKISIr/VLNGKpMcTitrGucktdsnYdl6g6jTxGfGe4r/dZK0ZPLCQOflTvx9plVuMwCSjrbDv1sMXnWgXmYQ8NNA85mlpkLW5kuR9Oqjl9HHsMPzw0wU5OeIgkbBZI0HwjJvF0jyCK55CvnUPp+ApLnL1KzOWCOv74D+ucGBaX4bb571M/zAx7K+UM1toSQF66qJQZuI1B3ekE6TAFE/gMWwee9kC4hDjXfo5hCD6cOlWTs8D/zGPCB+e31FKu8B1SH6Ow5ApKV4vNa1nuu9ZleAZ3iVK1nbiTZGbDO4J0oIi71DaGsz4vEtwXohd8ho95YoP+M0oBTl7QBuyRZk5ukDhcMO+PiHNEuZj4dnx/ch/CnAAchW8JoLlVp7V1ioJEuxo4y9azPlJ+PkWXPU4ypp9NGG86hBNPxFLJuhT7zglYYUnJ1mkjl97yAhyJNgo+yNbCB093mK6HaZRJfJ1pVEAoKHLGLKMQ7VQhnRrtINR/5tuvdkY1cZi2OSYJfHRFeTuIlJqU8MW9J3deT2q8/Xva7sMTvaAWvUzBbNkBpSs2IqmvTirYXLYrFBmYwJCLP6Gm6RxS/PtWIYDoctxk8tV78D2iNbOwLAMQAG1gE9HG7oL7cULSv9IQM8S3mZ8XpksvvRPiHs=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3022.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(136003)(346002)(39860400002)(366004)(64756008)(66556008)(66446008)(66946007)(966005)(186003)(66476007)(2906002)(83380400001)(6916009)(54906003)(6512007)(76116006)(91956017)(478600001)(8676002)(26005)(33656002)(36756003)(6486002)(5660300002)(8936002)(2616005)(4326008)(86362001)(71200400001)(316002)(6506007)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?aDR0RFE0MHBSbUJlUlhKY1dTRlNabEdveGk2QzM0czF6YUJrM253L3ZDZzU2?=
 =?utf-8?B?Q0NvUnNQOGp0bmc3ak1OMG9pQ0lGNGZNWFJnZW1tZCswZG5jRTBWNUY1L2hu?=
 =?utf-8?B?SE12SWs4MHBPZXNwVWllbG8zUDJqVUNsZHpydWdidkE5NnRDaW5LczdGWFU2?=
 =?utf-8?B?eFRvMTJleFpVbUppaUVMdm9iR3cramprMmUxc3h3d0hLZDc4RlRKdXdwaFdu?=
 =?utf-8?B?OFM3UmZ6dlVQcm1LL2tQZjFzRlpZNXUxeHdxV0ZWcExTUDBPSVJjSklsc3Nw?=
 =?utf-8?B?RUt4S0VoajJlTEpnSHprMHJWdDBpU2RiOU02LzJXeHJGbDhlQnREbERMZG5F?=
 =?utf-8?B?OUQrM3ovdExyVVFXZ2RPekhqN3g1c3VXa0NMZmV5NVdxZUt6ZS94bC9Md0ZH?=
 =?utf-8?B?SG1TTHFQM3dNZzFKd1J5Z01Qc2QwZFpFN1dXbzNFcjJmYWNpM3d3OFN0VVdK?=
 =?utf-8?B?aURvdlVHTmZTQnl3RXAvVFAxRDljRm5hSlV1YUZpTllheGd3R0ltZFZURlll?=
 =?utf-8?B?ckNPNFNBL2hDTnVKaUc3eCtlOFQ0TmVkc2U2STFsUTNFZnpkamJBckE1aGQx?=
 =?utf-8?B?bVlzZ1QyT0YzSmlHRXlFVDV6Zk5ld3d6WmRLUUNXbmNYQi9iNXgrcWE1YkJZ?=
 =?utf-8?B?YXFrZ0ZBOE9MTWJScWxGd1ZVTXp6eGNJM1plZUZJdTNDN0dEWXdJZFNxZ0pa?=
 =?utf-8?B?Qi9xVCt0MktVRjZaNm9UbkZxckwrcG82ZERmdXJ0ZmtJV1Jvem9FaGVMc2dH?=
 =?utf-8?B?bWlaZW1GU3ZyZ1NpU1dBQkRlaktFU2J4OGJpclI5NTJXa1d3U1V3cms0SVFR?=
 =?utf-8?B?bjc0dlVQOHRIWDc0U2RHdnVtbEM1Z0NXNW9jdFltRG82eEloOUVRQVU0K3FG?=
 =?utf-8?B?ZzBjeWpaWm1YdUM5aW51MUdUdlY3VjMxeVMrUWF2YXJBK0NpT3lvY3ByTGtS?=
 =?utf-8?B?cG1WWjE1QWZCczVyUjVZK2o3aUphWkF2RmxFM0ptZkhZSXhRSExEUmhldlVQ?=
 =?utf-8?B?RG5lTk9YWHhDMWYwR1p5VnNjU2s2V29aWk0wM3M2cmgyZFpBOVY1a2ZsOGVD?=
 =?utf-8?B?VkpqMmNnZFNkR3RVdzlQaDkwWkk4VFZpdlFNQXlxTG44ZFBuSGNpWitGRnpm?=
 =?utf-8?B?dkRxbzRmb3V4RW00bFFXZ24yYm1GTGVBZEw1V0FrSll4aWZUdHRhQkFHK0h6?=
 =?utf-8?B?bU1DdjhNOVhweHhlSWc4cC95N1F2aDNqRFliRE1DUmpaWXU5MEVGSFlrSDUw?=
 =?utf-8?B?N1BRaE9HbDVua3Y5dzQ2aVFPek5rVlpRanBibG8yWS9iMUJ0L2lPRWRvVWdr?=
 =?utf-8?B?Z1RpQzBpS0NmblozVC9WNVRUUkRSZjdVVC9yc1ZyZkNMZjFvNlMrM290a2tj?=
 =?utf-8?B?MExuWGpIblIxanJOUWU0NFRPdG9pMWNDWWNEZlJ3L0ZHdjVOeHlmS1VSRDZV?=
 =?utf-8?B?TXN4eTRWMmdDRndmNlJlOHFQNHcrSnAyZFBSUUF5RTZKYm1OM2RrUHZ5SGgz?=
 =?utf-8?B?bkw5NlZGOFV5WFhwc2tYcTZ5RHJzdEhsR1hXeWtNOU4zWjlGZGlOU0pjaU12?=
 =?utf-8?B?dUdUcmZ2bXRZdTR1RmkydWpqVExnNjZNQ1dVOW03dmQ3V3RwM1NLWmFJRkpm?=
 =?utf-8?B?Ti96YnRXd0ZtR2NJb2JuQ29yYi9pT0NkaDhabTlLNjNkL0J5NkZZdjZvVCtn?=
 =?utf-8?B?Q1NkU256MTRZQW5RbVFLbnUybWNSMGorcHVHY1lyR3ZHc1ZxZkRTbGZWS0hO?=
 =?utf-8?Q?a9N40JXmK5La02P3ug+3JGkOKgPsfv5tUkvE2Cq?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3022.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc278be-6896-49db-c89f-08d8d46299b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2021 23:12:02.2718
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WSXzk9jxwfxsvY1FlcQbh8jp0tsQhdGRWBBuZdKCQ5wT6VUXzRQo6tz+wDF4SKw/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3101
X-Original-Sender: kevin1.wang@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amd.com header.s=selector1 header.b=wo9F02Z8;       arc=pass (i=1
 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass
 fromdomain=amd.com);       spf=pass (google.com: domain of
 kevin1.wang@amd.com designates 40.107.236.78 as permitted sender)
 smtp.mailfrom=Kevin1.Wang@amd.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
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

thanks,

Reviewed-by: Kevin Wang <kevin1.wang@amd.com>

Regards,
Kevin

> =E5=9C=A8 2021=E5=B9=B42=E6=9C=8819=E6=97=A5=EF=BC=8C06:49=EF=BC=8CNathan=
 Chancellor <nathan@kernel.org> =E5=86=99=E9=81=93=EF=BC=9A
>=20
> =EF=BB=BFClang warns:
>=20
> drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning:
> variable 'structure_size' is used uninitialized whenever switch default
> is taken [-Wsometimes-uninitialized]
>        default:
>        ^~~~~~~
> drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:770:23: note:
> uninitialized use occurs here
>        memset(header, 0xFF, structure_size);
>                             ^~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note:
> initialize the variable 'structure_size' to silence this warning
>        uint16_t structure_size;
>                               ^
>                                =3D 0
> 1 warning generated.
>=20
> Return in the default case, as the size of the header will not be known.
>=20
> Fixes: de4b7cd8cb87 ("drm/amd/pm/swsmu: unify the init soft gpu metrics f=
unction")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1304
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c b/drivers/gpu/drm/amd=
/pm/swsmu/smu_cmn.c
> index bb620fdd4cd2..bcedd4d92e35 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
> @@ -762,7 +762,7 @@ void smu_cmn_init_soft_gpu_metrics(void *table, uint8=
_t frev, uint8_t crev)
>        structure_size =3D sizeof(struct gpu_metrics_v2_0);
>        break;
>    default:
> -        break;
> +        return;
>    }
>=20
> #undef METRICS_VERSION
> --=20
> 2.30.1
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DE2DF569-7545-41C2-AF18-400D6BD73215%40amd.com.
