Return-Path: <clang-built-linux+bncBAABBGWOTPZAKGQEHHPUZ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B315F4F9
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 19:29:47 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id 206sf7101106ywt.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 10:29:47 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1581704986; cv=pass;
        d=google.com; s=arc-20160816;
        b=UI16I49eOCjfEmHhEVbNgobvyyaTQ7qSdXJ/0R+KQZLMDw+rKhp8+MAKBUGfLX8ssO
         PNRrq3cunOWlfUA5JilKqHwCqQnBS1EJt/BSTegh5Wm3Llzc5yN+/IU/ZgQu9yYMOl6Z
         Bb5ExhNdiBYnCEFAr/iLSP0vKGgHXO8S9DqMaZRlDjX3xVluP0fLWYw9V0ffYxIkXEsp
         00zlfFAhBapxtqd4W7lWSV3l8p3os3r58UtDlne2E/lKJnxApao79o2AXbhahP+oyrye
         29AhwhwNdH0IRnQPjUoLspZTFXxDkvzdNhStTDCsX/66sAOc6PuezAmlMfirziSsfRKr
         3vjw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=0P8GnsONFkPXS0XD1VeUcVQumEhxfLb9dAAwPJH+9gM=;
        b=u1h/koG2Yt/z28zWO+yPnGsYU3ZFnvUqfM0FehWTb98DZLYhM+E6lyRYtIk/LhN5OL
         EtYug4CpKq5YT/wRAd3bGQR/womKjHhVZ8+71maNn7P2aNKvW/io6TD7gTeOv4hHO3yp
         jvq/vj3MRZ4LZUWzCwIcSZjbG9/R+ffbpFUn0DArdsD0V4qRNxxPjYc5ubCtbzsTajHH
         vHPuK/IJ5Ua4FMz2bqpet2q4gqwCaQC8VIrISEwKngqUo5n2A4ykZJkD9miDiuw6liqa
         7WhR+9ZaC1AmKIioaLuW0eCJbbxIW50KzpPZMkY61zw39hMGMQdr30jdwNbTBjDCtLfX
         tbqw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=diFxGgnV;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.86 is neither permitted nor denied by best guess record for domain of zhan.liu@amd.com) smtp.mailfrom=Zhan.Liu@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0P8GnsONFkPXS0XD1VeUcVQumEhxfLb9dAAwPJH+9gM=;
        b=bplDJdXkdXwEnwdK90iGSBh/+vtLR52KF0UAs4kxbHOhV6KiM6m5kIYaXXtEEQpxkS
         yZaS+55LFDf6Db6miC2z6JS9q+U7PSxzYXRODyL7K+3PI0HcVCet7WEQTe+1uOTK4yyj
         R+BFM4Fo4kCl2mRf0zGkRYewGm/ZC6ExnbqpzQwdeEVhaiPLYChi0ZuXTO8WQHqLKyni
         eoiGVlreZSrPz20GECnW+uH4xJFvf9AY18fEF3TkWRJlzdbxNce+WTVlWLkb/8+mOdyF
         3ufnIds4Q96Fh67IaTNGPmHwDvSlFfgvXF2Lxhz4UiAj2x9WZeQAZbFXqRZwDZtNDcz9
         nL0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0P8GnsONFkPXS0XD1VeUcVQumEhxfLb9dAAwPJH+9gM=;
        b=V26TLUYln/xj6vP0yTv0UZoga/hNWqje+IWdMK6sRkwcqoeMotLPa09c2Q1m9gWp9s
         8U370tP4ucPE9FkjABCnz9FsBDzlRyfcR8uAsDwRq/vLk85PktDaVUV035oyC8xk4vT6
         3hoZQEBDn9CjuGYYuOHLqV3gu2M4N1jv2DW3ZLf9T5c7IGjFet3dXRGJJfzm7cIy/rFm
         2fCbnrsaW7XR7dAw5BuAYcxTbZWP0LSxSDEcYhAP0NqEjj1mLL+Z72FAXjc65qR/eiMZ
         YzTss5WY0qjjztPb46f3qYZ6S/sqDjfU0IhkYBLZlNz+pZ8cLM8ePMCrZYZnXAqKIC7Y
         TyQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2mzA//agu5QSmm7apX/uxlK7tU29ikfyGvhAy0rsckmrv9NM+
	lUuXAByQ2ton3ptE9zi2wtw=
X-Google-Smtp-Source: APXvYqztCKdBwT7WcM1Yzx1KdDQepWUgCWuzn3aFbvEhH2indAiZiyuNxygGehjH0d/rfHeQQd5oqw==
X-Received: by 2002:a25:b212:: with SMTP id i18mr4256647ybj.267.1581704986105;
        Fri, 14 Feb 2020 10:29:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4ed5:: with SMTP id c204ls582226ywb.6.gmail; Fri, 14 Feb
 2020 10:29:45 -0800 (PST)
X-Received: by 2002:a81:9902:: with SMTP id q2mr3737302ywg.358.1581704985765;
        Fri, 14 Feb 2020 10:29:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581704985; cv=pass;
        d=google.com; s=arc-20160816;
        b=VbSOMiMD842Y1G+5EqlqY6ZG1qRSqYZC+a4Dn4V/IXbiFB3d1Is/cZpzp7sGmRONoh
         0GHM2KF5KgA7F2LwA/pArckA9Yv1bLKmsumGL2m7KT4Tz8/E61rq5dQglGqUOQoxOSAe
         XWOURoRSKUbFwbJV2+ytnp7K9drt4ijmrLr3L3NYT9oYW1RnGkwDIrRltKyiJ0ug7WLE
         JmpeRQpQWakDuEj+uJiRumTYZrA3zvLoPMBCRvx8tFI07AqDFQAupdlGPRYwCw9ClfB3
         hoZXJtZcoReZUTTrY3+bERxB6N6N98X4Wn/XKnOK7r31Rzi4qUl7cxrzgTPDJ4ly0l4h
         VdzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=Orn0aJH5F+MQm92Avsdy56sOSPhcSt+laqHLN6njMk4=;
        b=kpqzzjdZ+MAU9o1CdMacbhbTDDDTQ65tBv54rFHUd+tczC799vesQPmZrsmkwGHjF7
         6wmF9AmS1tPbjvf+7P2DWZx/tXHyNDGFd6cB/NC1RojLVfLAdYjCjrDk1y6nDZeCfUI2
         nducFOwAusCKeXFqXTihxOblpJT2SrV8t+NY7xCboez13vrKF8EeHta2RuBQYkl6iwmJ
         kAxggkNve2ykwLtkkLmp+it5FgMzu871j/r8KPPIaiMVmCfvKW5irkXKJDd7YhKO/V+/
         HHFpJ4sx2n4q/5iqhtxZTfcDlmMH59tSjbYvbg7IXYbckcLxxsQLYdQCdoKLxbt52oA9
         ubYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=diFxGgnV;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.86 is neither permitted nor denied by best guess record for domain of zhan.liu@amd.com) smtp.mailfrom=Zhan.Liu@amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2086.outbound.protection.outlook.com. [40.107.93.86])
        by gmr-mx.google.com with ESMTPS id i200si263931ywa.3.2020.02.14.10.29.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 10:29:45 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.93.86 is neither permitted nor denied by best guess record for domain of zhan.liu@amd.com) client-ip=40.107.93.86;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZIStkgm7+NSeZD1UbJ8Ks/Ylg1v+yxAa9m5171s/A19vwzxZUM0gOsdPgQO5mAdHAZLCgAdCOEHdTwIMZtltRHFmTudY4A31NNr+QXuY/5H62VyA+HcCu1Lj33mFFHN4ueLzhR2NFBWAVpYcUz0sTpouHpkojvg19nKWRmhIq146R3Fu+QFSaHAAmClmOm7lxWDfCoju1vueHNYWcGaxXa0ASTmz0edO/g+qdGq5EaMczSMDT1VQkeFL22rV+dhUcPlJ0ICdSF2BJcT0xQNTI3Qb4ZKZT0tL7fVRUWM6sn5b82YK8/ChvmHYfpOkm3EV2FjXu7Yb8n+x1titQN31A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Orn0aJH5F+MQm92Avsdy56sOSPhcSt+laqHLN6njMk4=;
 b=og0tHHzi/94+9Q2n+6LUvCGaMRseJfHzc2DxTAQVEg24H/CxBzTSYRszSVdNXmv9vpscwZdzVQD6y4RP1ybjg3zmdphPPTpwV4oBdKgyQVowml6puNaeXnYCQwzj4m+WO3MoKvDNCqFU+1lXs8saHsNC0h24vqMgL8ttTM8TuYK0+h0/+tGF/pNIsNOHLZg/PgH40KkMFXvJLQNITCsBEjuWP6pWD4zchK+jOa/UV9kvdyh1Qz3oZY+sYEXWZYaHdUmkbM1Zy/NgJpCh70MskuhNOfkUh/+Hri9FvqdKIJEKdcFbLIhd6jIu0Jc35WfXL21ylqveN38jeZk7AotEoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR1201MB2554.namprd12.prod.outlook.com (10.172.92.14) by
 DM5PR1201MB0201.namprd12.prod.outlook.com (10.174.109.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Fri, 14 Feb 2020 18:29:44 +0000
Received: from DM5PR1201MB2554.namprd12.prod.outlook.com
 ([fe80::c4c:bafd:5833:2b51]) by DM5PR1201MB2554.namprd12.prod.outlook.com
 ([fe80::c4c:bafd:5833:2b51%5]) with mapi id 15.20.2729.025; Fri, 14 Feb 2020
 18:29:44 +0000
From: "Liu, Zhan" <Zhan.Liu@amd.com>
To: 'Nathan Chancellor' <natechancellor@gmail.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, "Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>,
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian"
	<Christian.Koenig@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>
CC: "'clang-built-linux@googlegroups.com'"
	<clang-built-linux@googlegroups.com>, "'dri-devel@lists.freedesktop.org'"
	<dri-devel@lists.freedesktop.org>, "'amd-gfx@lists.freedesktop.org'"
	<amd-gfx@lists.freedesktop.org>, "'linux-kernel@vger.kernel.org'"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] drm/amd/display: Don't take the address of
 skip_scdc_overwrite in dc_link_detect_helper
Thread-Topic: [PATCH] drm/amd/display: Don't take the address of
 skip_scdc_overwrite in dc_link_detect_helper
Thread-Index: AQHV4w3nrdEjDXoM7k+tBRh46kQ/F6ga2T+AgAAp02A=
Date: Fri, 14 Feb 2020 18:29:44 +0000
Message-ID: <DM5PR1201MB255472E9CD12B906CD5BAD9F9E150@DM5PR1201MB2554.namprd12.prod.outlook.com>
References: <20200214062950.14151-1-natechancellor@gmail.com>
 <DM5PR1201MB2554F94D7E206B7690C208109E150@DM5PR1201MB2554.namprd12.prod.outlook.com>
In-Reply-To: <DM5PR1201MB2554F94D7E206B7690C208109E150@DM5PR1201MB2554.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bd2e77cf-6706-4148-79cd-08d7b17bdd35
x-ms-traffictypediagnostic: DM5PR1201MB0201:|DM5PR1201MB0201:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1201MB0201A933AA28C5C6FBFC85859E150@DM5PR1201MB0201.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(199004)(189003)(8676002)(8936002)(55016002)(2940100002)(64756008)(966005)(4326008)(9686003)(478600001)(66946007)(66556008)(66446008)(66476007)(316002)(6506007)(53546011)(54906003)(110136005)(76116006)(186003)(2906002)(33656002)(71200400001)(81166006)(81156014)(86362001)(52536014)(6636002)(26005)(7696005)(5660300002)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:DM5PR1201MB0201;H:DM5PR1201MB2554.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7sDVZ02PuuwGX7aDgZlZ6B3poXoAnL2A14wCY7T+dSIzNw4Df4O63+f0Rrkml7jtB+8pOjMZMUQ1McwwinUyEljytviiUwZQrqWxPxXhhTOGuFb50Y8ef9nTZ4O3KGyeGglw8lSg2/aTfMBo0aPnDovS7U7XxxiTxZ1F15HJ2396q8Brz1eZRST2YCtb5sRNcrfaMkTTnMdOFiC5n/2GY3Rkx2gmsZFEtkcJr62Z4yOUC2k7J8mXoIjMxc5GzFmJ0hTWoveiYA4skdRA95pHfe88wfseirFzULJrCDdzKi8DXwgyhPRWH9FuoyGZvcH0izPj0BqAhdPdcdsa2OUYUf9eqfjO7lzgUxDBT2KZ2sIIxxVZLRVstahlXwcRqvZGfJb7gmz45RvYGCIlgnb539Zkgh8UE/ClXzHJ2sbwe9ZZH3w2yK+gq5MVa0Uu3AflhBW/72UXYW/MIhIgVU43JuodRRWXvMx+OpvUDaRRQKQnnQQ3UvRRxXO4CNcDbX63t5GbQOBfHsJmQtf4MBoUo/F4H2HbzfKm9E8WojyI+H1i37ZJrUTWNPn5x5XfP8cg8MTdo2CZPJSQw4FKctecsw==
x-ms-exchange-antispam-messagedata: xjn0WItcHzZnTMEHH+KN4VkzSZBflH0PcBTm36VFQo0/lY9s3ql+MZtVEGNAuTJR7bUNxX9nPkfZZPi5wKFO+f3vwyoQmtkrVOCyZeRFQ95SdxEwtc+ugjp5frMZsUb6qbitgijyIROz0JY/e6WLQw==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd2e77cf-6706-4148-79cd-08d7b17bdd35
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 18:29:44.5518
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4AHzmMHNeUNwGeuPi6MIDpnW4J9PRsX4FpGoGvpQHu628TPj+hfd+c5UZoEyi5YU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0201
X-Original-Sender: zhan.liu@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=diFxGgnV;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.93.86 is neither permitted nor denied by best guess
 record for domain of zhan.liu@amd.com) smtp.mailfrom=Zhan.Liu@amd.com
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


> -----Original Message-----
> From: Liu, Zhan
> Sent: 2020/February/14, Friday 11:01 AM
> To: Nathan Chancellor <natechancellor@gmail.com>; Wentland, Harry
> <Harry.Wentland@amd.com>; Li, Sun peng (Leo) <Sunpeng.Li@amd.com>;
> Deucher, Alexander <Alexander.Deucher@amd.com>; Koenig, Christian
> <Christian.Koenig@amd.com>; Zhou, David(ChunMing)
> <David1.Zhou@amd.com>
> Cc: clang-built-linux@googlegroups.com; dri-devel@lists.freedesktop.org;
> amd-gfx@lists.freedesktop.org; linux-kernel@vger.kernel.org
> Subject: RE: [PATCH] drm/amd/display: Don't take the address of
> skip_scdc_overwrite in dc_link_detect_helper
> 
> 
> 
> > -----Original Message-----
> > From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of
> > Nathan Chancellor
> > Sent: 2020/February/14, Friday 1:30 AM
> > To: Wentland, Harry <Harry.Wentland@amd.com>; Li, Sun peng (Leo)
> > <Sunpeng.Li@amd.com>; Deucher, Alexander
> <Alexander.Deucher@amd.com>;
> > Koenig, Christian <Christian.Koenig@amd.com>; Zhou, David(ChunMing)
> > <David1.Zhou@amd.com>
> > Cc: clang-built-linux@googlegroups.com; Nathan Chancellor
> > <natechancellor@gmail.com>; dri-devel@lists.freedesktop.org; amd-
> > gfx@lists.freedesktop.org; linux-kernel@vger.kernel.org
> > Subject: [PATCH] drm/amd/display: Don't take the address of
> > skip_scdc_overwrite in dc_link_detect_helper
> >
> > Clang warns:
> >
> > ../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:980:36:
> > warning: address of 'sink->edid_caps.panel_patch.skip_scdc_overwrite'
> > will always evaluate to 'true' [-Wpointer-bool-conversion]
> >                 if (&sink->edid_caps.panel_patch.skip_scdc_overwrite)
> >                 ~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > 1 warning generated.
> >
> > This is probably not what was intended so remove the address of
> > operator, which matches how skip_scdc_overwrite is handled in the rest of
> the driver.
> >
> > While we're here, drop an extra newline after this if block.
> >
> > Fixes: a760fc1bff03 ("drm/amd/display: add monitor patch to disable
> > SCDC
> > read/write")
> > Link:
> > https://github.com/ClangBuiltLinux/linux/issues/879
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thank you!
> Reviewed-by: Zhan Liu <zhan.liu@amd.com>

Also applied, thanks!

Zhan

> 
> > ---
> >
> > As an aside, I don't see skip_scdc_overwrite assigned a value
> > anywhere, is this working as intended?
> >
> >  drivers/gpu/drm/amd/display/dc/core/dc_link.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> > b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> > index 24d99849be5e..a3bfa05c545e 100644
> > --- a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> > +++ b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> > @@ -977,10 +977,9 @@ static bool dc_link_detect_helper(struct dc_link
> > *link,
> >  		if ((prev_sink != NULL) && ((edid_status == EDID_THE_SAME)
> > || (edid_status == EDID_OK)))
> >  			same_edid = is_same_edid(&prev_sink->dc_edid,
> &sink->dc_edid);
> >
> > -		if (&sink->edid_caps.panel_patch.skip_scdc_overwrite)
> > +		if (sink->edid_caps.panel_patch.skip_scdc_overwrite)
> >  			link->ctx->dc->debug.hdmi20_disable = true;
> >
> > -
> >  		if (link->connector_signal == SIGNAL_TYPE_DISPLAY_PORT
> &&
> >  			sink_caps.transaction_type ==
> > DDC_TRANSACTION_TYPE_I2C_OVER_AUX) {
> >  			/*
> > --
> > 2.25.0
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DM5PR1201MB255472E9CD12B906CD5BAD9F9E150%40DM5PR1201MB2554.namprd12.prod.outlook.com.
