Return-Path: <clang-built-linux+bncBAABBAMBYGBAMGQELSONNQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D268D33CD12
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 06:22:10 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id y26sf18251834pga.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 22:22:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1615872129; cv=pass;
        d=google.com; s=arc-20160816;
        b=bL2OzLEOlIVhIY6Q6jOnn7DOdgrrTr2ugS7iElbAqQPm6nm+4nF2wWDkw5SLQKQ7Ix
         intut/rhC9GZ7f/7WFy24fCevYlKBirDPIxnWyBvEbuCPI4RL9RTs+kz+ubpB9rzHP1q
         jGeu7tQ6LtFOg7dmSu0Fu1LexBVGU9rpZYPHIdHV+n2AGSSFrNRW4xTA0q5NJnlyqNtl
         zC8Knp2A/fepvg4ZhAqND/UyHPKCkCDJutHt0MwTCyh9Zgj15YBji9k9GPezpZ5bHUuB
         ofFQ1JTWozh0CTPtOToxWXOT0LekYqoNbuTHmzeyoRbPLrfAZAqFOv3hLKB9NtnswTl2
         sbzQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ZyhwgBp+fQrErLjqoCzIABQZ4Vg7+jOgm+bbWqLgiFY=;
        b=xD/DBpYFpl/t9FvgfW0B0GflWVEZQmf76RawVkUqB0gyfJADccyqpgmbt7yBk47KJI
         aYCnuzqaZ2bO2wsfrwB+DODFdaJC6W0FDfIiQiBgIoxr/3e3+SoAN/H8bcgSvdiJ6x2A
         K+LQj91MNh9Ot9x0JR7c6fNZXmRNv1Phr7OiFE+PMZ6hBoCT2nJ8ZNVzVoev04sO8Wff
         7x/92PA9VAymvlSMmYTDLjQFho4Y1LSG8AAzbehVDhnSqX78hQ1mNo1qHeYWthaYduzR
         hz7aY3RbfeSqGFeUC5PtX9eQv5xMVyKENpfdaemeba9oU8OR6W9ptnSbK3KjPHxqodTX
         +hYw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b="pd7xHLJ/";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of jack.zhang1@amd.com designates 40.107.93.40 as permitted sender) smtp.mailfrom=Jack.Zhang1@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZyhwgBp+fQrErLjqoCzIABQZ4Vg7+jOgm+bbWqLgiFY=;
        b=dVMJEALbDo/kzoMZetgtnuqxorO0S/itrxVbmGrQz/x9gi0WSGKbYM7LCRXKz8yV43
         91Dnr89nddNrBZ3krdoBrYEPDkUjlYuqR+JAG7WiCduVm9Xz6dsvbmqGUU0+qeFebuRI
         wdY1cLBCN+GEK6CTmGFDSTD80uYkoF4h2uRu/rowN6x4IV11hy+HlrH2LBxLGKxvtOOO
         BfTzSK6C7tBwtGhN8frpZT37GVEQlL92I3cUjSHae5rSay1xk0ZEQ4ulrkjO8dOjNI3w
         ooijp3dDn0OYXIvC4OKmzqbOHk89i8RrgHlc1IDpNjF9uSVbqX4yUvnSq68hBVnLr/9H
         c8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZyhwgBp+fQrErLjqoCzIABQZ4Vg7+jOgm+bbWqLgiFY=;
        b=G6PYW1k0B9cKEnq7IvImrElgylPp7zzDB6o4I1kUy+tagWiEDXmnUrtWvxcX3LdGKU
         NnNdyizTkwcFUY0v41tSJhpI8jUIej4gU3QwLnaQ8in+Q5wh6iJtnMp3jWkAP2k2mlfG
         wsTNleFflSj3VNyIHd4RP4embAZr4J7JGuqgAgIHwhuEuC0i8azDKC/O97YPKYYzEylT
         x1+mxOR54RctvLFB2oyaCDNPdlyAUKNtn2mjGDMNsu9y2lkzOWGN07qmvL3ISVTi/fLO
         meL3Mjx13bZ13bFaFlVuoHaFuJKnZYe6ww04c4c8wyZOAy2ifRNZTlmG7EUjQbsTIU7T
         vx2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xV/c5QWd8jkKrT/fcjEspQi+CUO90YNyVWulwzPd6okrOicYU
	7azaNvIre8CIXCVya/x34tc=
X-Google-Smtp-Source: ABdhPJy5G5rE8UNhMtJUdLFX+HwOxqXI1ssp9HcTZrddaCssFxCKSK0y3irLvwyKj+NzGXYPVKkxkQ==
X-Received: by 2002:a17:90a:8b07:: with SMTP id y7mr2873909pjn.78.1615872129352;
        Mon, 15 Mar 2021 22:22:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6a11:: with SMTP id m17ls7048683pgu.6.gmail; Mon, 15 Mar
 2021 22:22:08 -0700 (PDT)
X-Received: by 2002:a63:3d2:: with SMTP id 201mr2236734pgd.359.1615872128756;
        Mon, 15 Mar 2021 22:22:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615872128; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXMT6pR9TrnQ4AFlTsHaJgXuWzrxuB9dNi+gOcxM6mF9ailR7yHse8s60Xnc6H6YpP
         vC/s4iWUMASrPtfuaJUrxzhjwH6tBtP6RrmrstHaLjoAgmNdIYltRYyufTMoffmBlUyI
         iOzjw20czqVsesXbDrd8OGmXQLdN4y1iFawBw2+FDdOA51lG6cHio/GMiuN3R1hRDK0g
         zLmz2KE7gLChssefwTvWBlFEgswlxx+4FQYmyhO1i3by3jGvKFC6s1VV2A+D0uBPxAYE
         ESDOZ4G3CCWAkMJDCFiHrlWQUAGmoPiY2SL8VQMEwfh/4sTsYnCxIEc7/tI8nHzzis92
         6cIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=hcKQV6+AGpe2kAtfoebKSesC61jwaeFgpsuwrAmTcHs=;
        b=XWVPiJngMjiqJwwsbM/oXDss/+Rie+YtIhKSmYAaRHxoGL2B4QU7LX/CHOuEbqLmvM
         3gJHSOcmW+s/hqvvnQH1540agPfLkaAgw2JRMGkUWMyJUvvBR1pX+fByKsoHD1OlYcbx
         XZFQ1D9OzPMOv5ALa4ai3h3U1c6H6+J8m/c0LV7N0OhOEeV/RBA/tWuf7XnTAmO2K3Tg
         isSPkVtTs7oiolb0lJIxqOlJSqrICxtlNAcVVn5T/FRBIUV8gON3UptUhmX95IZecBV2
         t9rTAcFWwQz0XmRf1UmNvLySSqIimYpN95ix40ozmbHEdkqgxQrh3/etsxL2XWGiHBKK
         vkHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b="pd7xHLJ/";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of jack.zhang1@amd.com designates 40.107.93.40 as permitted sender) smtp.mailfrom=Jack.Zhang1@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2040.outbound.protection.outlook.com. [40.107.93.40])
        by gmr-mx.google.com with ESMTPS id k3si142101pll.1.2021.03.15.22.22.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 22:22:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jack.zhang1@amd.com designates 40.107.93.40 as permitted sender) client-ip=40.107.93.40;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M7d3Tmn1d9hqP4NJX1Q2MwnMxBBxQTlWPJN/1lNbZ0ytDyYMvt0GjcwXbLvNaruUOdweTipTLuex/5cQqjPoJcYcYRKDKF7fd2cT1cBlOHviImyUqmZtc4BBVP8n6kkgY4mNzc3B9eDiNDlz0WHSB3JN7TAe7o/QY9fdy3au3/SSYd9qmSklXwpLgV+sC44+6fFNQo7/qWvwqeirucbDPNzkrd0ujDD03BVdD68I+xnHkYuA3oJ/F2Yy7kCElCWyKmc0tQeSqW+Xtduqm/v96KyiUljr5LxNREKaGaIg+aoUeeN9agX/y9csIW/QHwxFH6UT8I73pLzkW5NoM0h0fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hcKQV6+AGpe2kAtfoebKSesC61jwaeFgpsuwrAmTcHs=;
 b=Phz7o/Ck/yHT17ds2ZQPrWzoB4l3QuVuzN/IWVB4Zg0Pm9CpLwzCMzqt3dGn4scKQ2b7PgmjMUf7tarB3PMH7iJgpU2/vKFWro9KbO2jQxlVh2rd3QbdMW9UvvtRyH+aVVEY6h2KTyNpiblQulA4k31fCuK1SLa5qJCdV5rfWRchrkCDLdsG+C1mR8oUDbe+dtWWQ9iopigR9Dp4XrlCw5mim/jQsk5Ju98QlRp4gdjfDxgEOEe18P9+R1tpqiEvDWVtRavgUZDYqJ70zaPvIoYvbSr55hvRf1lkLsNJmVeIqog3GmJkPfbJZJ4ZaIYSvwJ8fbE5G8x+uehm3uK2iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR1201MB0204.namprd12.prod.outlook.com (2603:10b6:4:51::10)
 by DM6PR12MB3739.namprd12.prod.outlook.com (2603:10b6:5:1c4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Tue, 16 Mar
 2021 05:22:06 +0000
Received: from DM5PR1201MB0204.namprd12.prod.outlook.com
 ([fe80::28e0:5877:b4e6:6bdc]) by DM5PR1201MB0204.namprd12.prod.outlook.com
 ([fe80::28e0:5877:b4e6:6bdc%9]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 05:22:06 +0000
From: "Zhang, Jack (Jian)" <Jack.Zhang1@amd.com>
To: kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"Grodzovsky, Andrey" <Andrey.Grodzovsky@amd.com>
Subject: RE: [agd5f:amd-staging-drm-next 2019/2049]
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4677:6: warning: no previous
 prototype for function 'amdgpu_device_recheck_guilty_jobs'
Thread-Topic: [agd5f:amd-staging-drm-next 2019/2049]
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4677:6: warning: no previous
 prototype for function 'amdgpu_device_recheck_guilty_jobs'
Thread-Index: AQHXGhF4at41cmF48kODEO5DJI2DxaqGFAKQ
Date: Tue, 16 Mar 2021 05:22:05 +0000
Message-ID: <DM5PR1201MB0204772EB3C679404D01B10CBB6B9@DM5PR1201MB0204.namprd12.prod.outlook.com>
References: <202103161128.y4xUOHIx-lkp@intel.com>
In-Reply-To: <202103161128.y4xUOHIx-lkp@intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Enabled=true;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SetDate=2021-03-16T05:22:01Z;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Method=Privileged;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Name=Public_0;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_ActionId=394938ee-5e55-4cb4-96f9-d341208d8d1b;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_ContentBits=1
x-originating-ip: [180.167.199.189]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87d8e8b4-b850-4453-6f69-08d8e83b707c
x-ms-traffictypediagnostic: DM6PR12MB3739:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR12MB3739B63CA80A8880B3B23703BB6B9@DM6PR12MB3739.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 65qUX2VvAu+EF/4k3JzliWMO2twxHccqu51llDG3JHaTxbYmh9MWiq5qmCY6VMUMeh3TxtZVy06pyl+1VVAtKM8P9an1XNSJk5Bgx3vDZ+AsqTmyvPc8q1AuLETiJfADy/TquH6bpLuM+hEbpYCo21gHBOu+GQ3gNi25P4kWe1KCd8PysTjw65WZO55ND7y0P+ZPApNwPAMzCtq+S9sWHcRfD3n6u4w4nNI4jC/rcO75xIiWBrYPxHtdIEryDojM1+LVR50XtaSjpsVbhhy7mg7pv0i+E5Ll2fWBX/h3IYZ6r9uQad7kTdqwcEuKfPVP+O1CpzA4RxwbYzT2Kxqg2epuK5NJPoQQdP6tLGIeLDUCHykBCS3ZI5uGSQPNfUesEZzcwxtjOW3YyvSFIlsZGrCGNcDRoF3ARgteuu8RuLsWSR0pW1vyxDTyZNKSG4EvI4ad8Y8KeUVqfalSRuBk+mBA+ySQjMXXj1R1x3cnUqdrhdkwveCYrfNaqx3MDVkRz6WeXCsJQvyv05TRAtn0y5C8akoi2BfIkYUE1BYWv2SQA7DViXDZgeyb0A157plfNyoXW//amu+GdTZEi0rke95mQebZE0Sk1EC3fR5iB2WZUuXQZNfsXKxvsDpHyHt/asTK/lNfCQXYfWWVIKH1vw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1201MB0204.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(136003)(346002)(366004)(396003)(8936002)(5660300002)(66446008)(66476007)(26005)(4326008)(9686003)(52536014)(54906003)(76116006)(6506007)(8676002)(53546011)(66946007)(86362001)(6916009)(83380400001)(55016002)(33656002)(71200400001)(45080400002)(966005)(478600001)(186003)(66556008)(316002)(7696005)(64756008)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?NjMirx1q9fvzDBDLpDre4ImBVApQWShNGc3iYGzeOovThiIUNQaiUOOI8i2N?=
 =?us-ascii?Q?UezLyCYjnOBLlzWtpRjhgT7sV4Cy3M1OooPdQPWnkTsuvaq/1uWDYThDs8Xf?=
 =?us-ascii?Q?5Pzxjjc8svyyNazuSsCmEzeL6AetgXPn/NP8KlHKAuqTN8EcDzt48lH9zRO4?=
 =?us-ascii?Q?0FGqFGUyF/aNS5Wx6FIHbRgDh31J60b3CuuEd2aBfUJHhMR0V+zUiiIiS7WH?=
 =?us-ascii?Q?IrzhrMzvWXSs0WHKJ9ssQIFBHKwB5k8ZQeoV0gMZwcZqTCPc1GJ9tsS4ChRN?=
 =?us-ascii?Q?OYKcknSKk2F/c4mF8qVXfwOuKbcHQmp0vWBsanDaiHtwWhBINzXDVNZUtFY9?=
 =?us-ascii?Q?okuRfKcmfNyhJCBUJiNCzgo8ozUNi5Xs1SThCFIlIYjGy9DbnA0VoODeUSEE?=
 =?us-ascii?Q?CTMa4jtVBn8fUaHd6OWGi/ksJA1B8z04COBat/TJFM4peAKk5WjToGIrCB1A?=
 =?us-ascii?Q?uBqPwglLyBKSGKA9P/3sqD1dpxofir/UevhQGLA+TElWhzJfxS8/RjAvK5c4?=
 =?us-ascii?Q?EIp8SWd1lfZBxm2M0/wvilgvBJGHQbnzIJoE//dUmRk8t22yrITT7gjCZbOI?=
 =?us-ascii?Q?pH/UT64lSp7KrAp7EdWYZI4SEkfb0/QHpx9xuWiRFrsuaV0EARbxybWJfnkd?=
 =?us-ascii?Q?Zz95FV5k3nb5y3l+z2VsCtEz2Dr6Ju4ZVaBtTFDEF1BlNGKQxgX4J4kO5GBd?=
 =?us-ascii?Q?ya8s+JilsoBaGVObMVN4khXegMIDeRYtuxM6UFvibbMWvKSvY4SkVglaujrJ?=
 =?us-ascii?Q?N53y5HiLzUEeFjcbcSuDRxqAndHie8q1LaNuoil9vwh/mGpfClbOEoqg1nrW?=
 =?us-ascii?Q?QTxxym/rvNYDVpQY25DksKp/wJCSQo/GFdRox7b+Q2l9te+vlJmf92TZQ6b8?=
 =?us-ascii?Q?DIOSeWJC0HxH2Y4dyfCBuq8eW8j9bLeP35dJ35dgcmNn1eA7c0BeocmsdnuK?=
 =?us-ascii?Q?37tMlmQaNu49FnWvAXuZw4Mbt3anFFImY2HYiR76+Ra4Y0fbUaYUV0xR2/lV?=
 =?us-ascii?Q?+wKEQQF1JDO2JkW9lqONF/pfkR1qR1IMVhuss8hPgFxyyMWKI9HqNxq1U9Ee?=
 =?us-ascii?Q?RuyrEKR0+IRQbOTKNpmj+k5uPK7Jy7qu37s1/D3uEZ6wON9uCkmmYwX3LANu?=
 =?us-ascii?Q?afuJvn8CY2y6Kfo9OE2/IvELwLki0u6hK6MtaIa5FnzxqvcwtXH68r+dUeLO?=
 =?us-ascii?Q?zA6La/hALKjUCIRjjvZWTspXimowrAxLdOJEnihrRnpDtVVW7ec9Xbxsfiq2?=
 =?us-ascii?Q?BUQddkEGleh6yFn3nj4oRiWh8BFxIGv3hLG2J/ZQwpab3fBZlISSWOjPiKAO?=
 =?us-ascii?Q?QArHgpx96KzUJHHC75iT+eq2?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1201MB0204.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87d8e8b4-b850-4453-6f69-08d8e83b707c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 05:22:05.9103
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kYSHSYGw1gEHIhPqwwnwbcejmdINLyTwtj/w96OVItFbXmsKeyCWQEiGDoK486K0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3739
X-Original-Sender: jack.zhang1@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amd.com header.s=selector1 header.b="pd7xHLJ/";       arc=pass (i=1
 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass
 fromdomain=amd.com);       spf=pass (google.com: domain of
 jack.zhang1@amd.com designates 40.107.93.40 as permitted sender)
 smtp.mailfrom=Jack.Zhang1@amd.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
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

[AMD Public Use]

Hi,=20

the following patch has fixed the build error. I have submitted to drm-next=
. Thanks!

347639d drm/amd/amdgpu fix build error for undefined struct member

Thanks for your help!
Jack
-----Original Message-----
From: kernel test robot <lkp@intel.com>=20
Sent: Tuesday, March 16, 2021 11:03 AM
To: Zhang, Jack (Jian) <Jack.Zhang1@amd.com>
Cc: kbuild-all@lists.01.org; clang-built-linux@googlegroups.com; Grodzovsky=
, Andrey <Andrey.Grodzovsky@amd.com>
Subject: [agd5f:amd-staging-drm-next 2019/2049] drivers/gpu/drm/amd/amdgpu/=
amdgpu_device.c:4677:6: warning: no previous prototype for function 'amdgpu=
_device_recheck_guilty_jobs'

tree:   https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fgitlab.freedesktop.org%2Fagd5f%2Flinux.git&amp;data=3D04%7C01%7CJack.Zhang=
1%40amd.com%7Cf1e81599fd494279f74808d8e828027b%7C3dd8961fe4884e608e11a82d99=
4e183d%7C0%7C0%7C637514608372860156%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjA=
wMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DyChB=
1nvI8aSKok7J1OT6%2FvgOkd0dJQHg5%2FcKUvFyk48%3D&amp;reserved=3D0 amd-staging=
-drm-next
head:   b2987e229a0d616d97063b3b695e7c9483933c27
commit: c8a921d49443025e10794342d4433b3f29616409 [2019/2049] drm/amd/amdgpu=
 implement tdr advanced mode
config: x86_64-randconfig-r015-20210315 (attached as .config)
compiler: clang version 13.0.0 (https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;data=3D04%7C0=
1%7CJack.Zhang1%40amd.com%7Cf1e81599fd494279f74808d8e828027b%7C3dd8961fe488=
4e608e11a82d994e183d%7C0%7C0%7C637514608372860156%7CUnknown%7CTWFpbGZsb3d8e=
yJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&am=
p;sdata=3D8FZtRsN8lJa184rZnD1vvOi9JXVK2t5KgIgfHx4Ia98%3D&amp;reserved=3D0 a=
28facba1ccdc957f386b7753f4958307f1bfde8)
reproduce (this is a W=3D1 build):
        wget https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.=
cross&amp;data=3D04%7C01%7CJack.Zhang1%40amd.com%7Cf1e81599fd494279f74808d8=
e828027b%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637514608372860156%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C1000&amp;sdata=3D19sc9W0uuGkSMeWh1t9RFsiGxtl%2F8rMUtWTUK3H%=
2BhUw%3D&amp;reserved=3D0 -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add agd5f https://nam11.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fagd5f%2Flinux.git&amp;data=
=3D04%7C01%7CJack.Zhang1%40amd.com%7Cf1e81599fd494279f74808d8e828027b%7C3dd=
8961fe4884e608e11a82d994e183d%7C0%7C0%7C637514608372870152%7CUnknown%7CTWFp=
bGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%=
7C1000&amp;sdata=3D4LxasNdFr1LCO8A72SdfrnZVgwbOfOubczDjyn8lCDU%3D&amp;reser=
ved=3D0
        git fetch --no-tags agd5f amd-staging-drm-next
        git checkout c8a921d49443025e10794342d4433b3f29616409
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:39:
   include/linux/efi.h:1099:34: warning: passing 1-byte aligned argument to=
 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer=
 access [-Walign-mismatch]
           status =3D get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NUL=
L, &size,
                                           ^
   include/linux/efi.h:1107:24: warning: passing 1-byte aligned argument to=
 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer=
 access [-Walign-mismatch]
           get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &s=
etupmode);
                                 ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4731:27: error: no member nam=
ed 'num_jobs' in 'struct drm_gpu_scheduler'
                   atomic_dec(&ring->sched.num_jobs);
                               ~~~~~~~~~~~ ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4738:25: error: no member nam=
ed 'node' in 'struct drm_sched_job'
                   list_del_init(&s_job->node);
                                  ~~~~~  ^
>> drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4677:6: warning: no previous =
prototype for function 'amdgpu_device_recheck_guilty_jobs' [-Wmissing-proto=
types]
   void amdgpu_device_recheck_guilty_jobs(struct amdgpu_device *adev,
        ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4677:1: note: declare 'static=
' if the function is not intended to be used outside of this translation un=
it
   void amdgpu_device_recheck_guilty_jobs(struct amdgpu_device *adev,
   ^
   static=20
   3 warnings and 2 errors generated.


vim +/amdgpu_device_recheck_guilty_jobs +4677 drivers/gpu/drm/amd/amdgpu/am=
dgpu_device.c

  4676=09
> 4677	void amdgpu_device_recheck_guilty_jobs(struct amdgpu_device *adev,
  4678				       struct amdgpu_hive_info *hive,
  4679				       struct list_head *device_list_handle,
  4680				       bool *need_full_reset)
  4681	{
  4682		int i, r =3D 0;
  4683=09
  4684		for (i =3D 0; i < AMDGPU_MAX_RINGS; ++i) {
  4685			struct amdgpu_ring *ring =3D adev->rings[i];
  4686			int ret =3D 0;
  4687			struct drm_sched_job *s_job;
  4688=09
  4689			if (!ring || !ring->sched.thread)
  4690				continue;
  4691=09
  4692			s_job =3D list_first_entry_or_null(&ring->sched.pending_list,
  4693					struct drm_sched_job, list);
  4694			if (s_job =3D=3D NULL)
  4695				continue;
  4696=09
  4697			/* clear job's guilty and depend the folowing step to decide the r=
eal one */
  4698			drm_sched_reset_karma(s_job);
  4699			drm_sched_resubmit_jobs_ext(&ring->sched, 1);
  4700=09
  4701			ret =3D dma_fence_wait_timeout(s_job->s_fence->parent, false, ring=
->sched.timeout);
  4702			if (ret =3D=3D 0) { /* timeout */
  4703				DRM_ERROR("Found the real bad job! ring:%s, job_id:%llx\n",
  4704							ring->sched.name, s_job->id);
  4705=09
  4706				/* set guilty */
  4707				drm_sched_increase_karma(s_job);
  4708	retry:
  4709				/* do hw reset */
  4710				if (amdgpu_sriov_vf(adev)) {
  4711					amdgpu_virt_fini_data_exchange(adev);
  4712					r =3D amdgpu_device_reset_sriov(adev, false);
  4713					if (r)
  4714						adev->asic_reset_res =3D r;
  4715				} else {
  4716					r  =3D amdgpu_do_asic_reset(hive, device_list_handle,
  4717							need_full_reset, false);
  4718					if (r && r =3D=3D -EAGAIN)
  4719						goto retry;
  4720				}
  4721=09
  4722				/*
  4723				 * add reset counter so that the following
  4724				 * resubmitted job could flush vmid
  4725				 */
  4726				atomic_inc(&adev->gpu_reset_counter);
  4727				continue;
  4728			}
  4729=09
  4730			/* got the hw fence, signal finished fence */
  4731			atomic_dec(&ring->sched.num_jobs);
  4732			dma_fence_get(&s_job->s_fence->finished);
  4733			dma_fence_signal(&s_job->s_fence->finished);
  4734			dma_fence_put(&s_job->s_fence->finished);
  4735=09
  4736			/* remove node from list and free the job */
  4737			spin_lock(&ring->sched.job_list_lock);
  4738			list_del_init(&s_job->node);
  4739			spin_unlock(&ring->sched.job_list_lock);
  4740			ring->sched.ops->free_job(s_job);
  4741		}
  4742	}
  4743=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.0=
1.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=3D04%7C01%7C=
Jack.Zhang1%40amd.com%7Cf1e81599fd494279f74808d8e828027b%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637514608372870152%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sd=
ata=3DwVIYxDNwCXSocvkGiikoL18CpFouSGmG642YlC1AxFQ%3D&amp;reserved=3D0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM5PR1201MB0204772EB3C679404D01B10CBB6B9%40DM5PR1201MB020=
4.namprd12.prod.outlook.com.
