Return-Path: <clang-built-linux+bncBAABBQEITPZAKGQE7Q6SCBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A3915DDB1
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:01:05 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id m18sf6339128pgn.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:01:05 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1581696064; cv=pass;
        d=google.com; s=arc-20160816;
        b=B0JWf+tl+w6sYAreiXKuBD5GZ02ei3iTEEzTz6Jc54bUwleYHdS/Wbviv6G3yFONMw
         1WXv0Os8KTS/WFy9rgGzGCvkQYXkcTvMKWi5wN8QeLixhCFhIQ0T1l6I/YiEdhY2uTas
         Hpa+9E982cyPuCdLQ3EBnX0qXCRIBXGFuXzR1q96ZDv851XJUD2OgQ1xRF577g/8pIG/
         gfgG7PVVWlaR3n+Q+IpE0hEWTwPNYEbbw8ovGLGPfVI+epl6H30rKJRSa98pXQZ3MwxZ
         rN2f4D6lgeI8BqBw/si1c/u2rZRdOxM5xwI/PS9gDxQWQhshssaKPyVMI3NlraQ68bIy
         5kyQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ZAiI9GR95vnqJspIvlKjOil4x0/T8ZjtDJdoYi/1Qr0=;
        b=sdr1tmORaDy+oo9e1efrcyHVjHJppmm6IgCYNCEKTJGYjTiPNhMl+3ZBoscIUOQfsZ
         CAnNeAEzTIyBsnxOlKOAlEeNYkno9HbGwsdABFrZi8Tcyuwj0W+CrN/slWQ9CMqw0LTh
         IProatjLdkY2mrXkPrQCTqmKdgMH/T5K7K8cz4CbP9We7q9qM/ygHy8LKM0d7Fsl5OL5
         e9/TzB6b5395sQASD7iwREQYFxs/Ly9unTHEmZ13qEwxYAcd4UtiJg3wxmSjLVKCAYkt
         bBkMhyljONtjii19JcbyNZ4cKgKKS+0cS6D576d0gaEXvFVAggqGIibwJ0fQNiTYJ8bL
         JYcg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=L4ToET56;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.220.86 is neither permitted nor denied by best guess record for domain of zhan.liu@amd.com) smtp.mailfrom=Zhan.Liu@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZAiI9GR95vnqJspIvlKjOil4x0/T8ZjtDJdoYi/1Qr0=;
        b=bsDq746EQCIeky0kVq1huI6F5xnXJK+Cmhuz7nUCnb24U2cMqeoNUYvpZodofGSTWe
         y3IpgIneSPisal6ytMScf090r3Ecipyl6BIzPpesl5y3MuHxwV0ZAQFxnJrg7XYSeNui
         H9uul57sWf/iZ/b6vwsBzfqni1hXLgylIEdS8I3a6cDSGhUn/C77Rsm+cRbw7DDxcZhQ
         gNTvMXVn84NWPk7XQTeUhgyfjkdq+EXtnNdn3gRfR87/YTkO0aoj/FboirurNndrzY1g
         wHGfULp20VFyiIewBAYZLJ/3kMogGTm7HXoQDHEJfghT3vW4gimufK5UppAdWlNsyoWz
         tXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZAiI9GR95vnqJspIvlKjOil4x0/T8ZjtDJdoYi/1Qr0=;
        b=AnYAs+JKPqADKuzcUf8OnCtG15/nYW5VbSimVV9Xh/3YHIKjd8liohNZ8Sr0c2sWbX
         d8C2qLoF1qfLBsMEjsPq+IgfBa8ZtpNBvCZMBjO8w/9C+iwn0/9qQjo67v5HrwFpAZv7
         dj+0XA50k2AORk18gaQZC24Mdj8ctN8nSIiZZhfrVaiRY1aMGuHs+j1i6LkhFwQ01EpE
         U1lEXEb0K5UWGZonxOAI3quwdS4W4jmudrJyTtJV6RBbVbTtWkebI/cDLdFAQNz7dibi
         v7QoWNMC3OZyvWRvtcPftGcl1RL/MMQ9nRVZWV5rW54KA+PXZlkmu/1aAO/gRF2P9Vsd
         c/1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXHbbTDa8xUE/BLdPf23xgKhkGWfh4TmzwWdDif/PVvcocmeAM6
	+tz4roy7O2BxyYqk1mZp9TA=
X-Google-Smtp-Source: APXvYqwJCJHNnZ7DO/EehSex4uIz/sdSsgoTj43rUH0bN+BqeP9HmZAEsT44wVr/5twob/u+9k/A2Q==
X-Received: by 2002:a63:214e:: with SMTP id s14mr4170768pgm.428.1581696064163;
        Fri, 14 Feb 2020 08:01:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d70b:: with SMTP id w11ls1620080ply.11.gmail; Fri,
 14 Feb 2020 08:01:03 -0800 (PST)
X-Received: by 2002:a17:90b:110d:: with SMTP id gi13mr4450584pjb.123.1581696063729;
        Fri, 14 Feb 2020 08:01:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696063; cv=pass;
        d=google.com; s=arc-20160816;
        b=sUBJ3lS08xY5WNb6kAxK3B5L/mBKyVBHebmY+04ZWRGFm0PaEq8ifpRc5xHPOav1Iu
         pj6FDtTHroCfzE1gR2BUIWdXuMGAM3aZkQHif4NH1qDCXgop6nuax+Ez7gZK1JwilAx/
         9kE+JEYpWw3o6lbef2xt/NL9Ee1Pwnf39jehrZ7y/w181FN5J8U3MzBJfPE9TkAai12R
         rWKb4JO9lf0wDfxiUPT4pHOYxWbXZaXONQe8IWEkF/ymOcDkN+/4GpdAOx1QUbOCf7Po
         gpgRqa8Qw5N01El1iBvRSK4WcLXUq2dxohSdne4bNtiXu5WYAD5O9dOOdSIXw2dOOO4F
         lOyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=x1NmVgVHJPBjz5DDw59G4emVWseGWn1aWJozqn0khA0=;
        b=0HJAp/Xa66wnGt7rXDkqbOO7wzEoK19P2Yadhb/16kuOXvOYgMsWlFzBrYm7W/w/+v
         7PaVskkryWkcOMZ7PWKFRRj3FF6HQ/bZ2iJPGAmaiFuTTTgMgxHX9u9V+7yMto+F6NX+
         PxlGGQWLQ8qCPdUjuj8mljpfV/EfBCTM4UPq5i9edxZroIsAeZngkWEYSyneGRKtqmZ/
         MqDmAV8uVo1vu4cKcN7wKMG1Acyomp1+MlbJFW58eT4n5dyogCy6tFar3rJ65PLJSCoE
         srGuBDsi4bFE1xgUmxJu/hSk+4JLCtfDtHJ2ZSRP12oHdFGcSA5h7xCVcDLWUm4EOdGU
         S/Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=L4ToET56;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.220.86 is neither permitted nor denied by best guess record for domain of zhan.liu@amd.com) smtp.mailfrom=Zhan.Liu@amd.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2086.outbound.protection.outlook.com. [40.107.220.86])
        by gmr-mx.google.com with ESMTPS id m11si162640pjb.0.2020.02.14.08.01.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:01:03 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.220.86 is neither permitted nor denied by best guess record for domain of zhan.liu@amd.com) client-ip=40.107.220.86;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqxPY6eTeSGI/N/1Gh4F7aLmbhABKSSXWTlAnGBWkM9zJ7wKTG0ZAxgFvyc1fxdwXDZik7lxR81TDTxqUoxctNt20kuxT28vrqMyipH49B2NYsKZIrnvziS0lbvLZkJ6R1x42TF4Y2qvGaSls/KDKKF0JmGJZ9C+huEFCeNpLRMEvayNmBDHG2wTQ9PsLEx7qFlpPTb3Idl+hwOmcn6EdpMfjtlEET/BuuflUpflrlotQUcQqkvzwM24yOxLE1EFeB+0Oh08FsDzPWgplCOPC8j+QYVrr/ZW4fo4cwZAn50mGr5RjUBEMlBgMAoFJO+6/too94McPXUWoWgy8h6d2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1NmVgVHJPBjz5DDw59G4emVWseGWn1aWJozqn0khA0=;
 b=MDrYQnvaK4KiUXHm+jje0bbb8jTu98IxEXgvEAg/ZE61el0g34iqbgVGluaklHz7pgyG+aBqwXKziHMkZTBVSgW9XYBGargpBUuPmLbETOEBOeTgNS8xJ3JF/u2HSgW60deBCPTKfva56ZBUo83ub41QHHXDep0Q1flN0QGgZsExTcSuEhLnrfvRLEttqAHWhJXqgFu7/z6fxCm0asaNzsdNJRSCW8SrIMD1nAmsjoXiNJIBWBhZBPTUYUU1iKrA7tjpYjuLjMWW53+C9rC5l7EruhHRD91qsUPCIz4+0lqNc7fDqZrEGFb/2ENKdOuEpmDyFnCMan1xW91u+tCr7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR1201MB2554.namprd12.prod.outlook.com (10.172.92.14) by
 DM5PR1201MB0012.namprd12.prod.outlook.com (10.172.89.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Fri, 14 Feb 2020 16:01:02 +0000
Received: from DM5PR1201MB2554.namprd12.prod.outlook.com
 ([fe80::c4c:bafd:5833:2b51]) by DM5PR1201MB2554.namprd12.prod.outlook.com
 ([fe80::c4c:bafd:5833:2b51%5]) with mapi id 15.20.2729.025; Fri, 14 Feb 2020
 16:01:02 +0000
From: "Liu, Zhan" <Zhan.Liu@amd.com>
To: Nathan Chancellor <natechancellor@gmail.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, "Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>,
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian"
	<Christian.Koenig@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] drm/amd/display: Don't take the address of
 skip_scdc_overwrite in dc_link_detect_helper
Thread-Topic: [PATCH] drm/amd/display: Don't take the address of
 skip_scdc_overwrite in dc_link_detect_helper
Thread-Index: AQHV4w3nrdEjDXoM7k+tBRh46kQ/F6ga2T+A
Date: Fri, 14 Feb 2020 16:01:01 +0000
Message-ID: <DM5PR1201MB2554F94D7E206B7690C208109E150@DM5PR1201MB2554.namprd12.prod.outlook.com>
References: <20200214062950.14151-1-natechancellor@gmail.com>
In-Reply-To: <20200214062950.14151-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6ffdb09a-7ea3-4819-cc1f-08d7b16716e7
x-ms-traffictypediagnostic: DM5PR1201MB0012:|DM5PR1201MB0012:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1201MB0012E5CB2FC3BA1759E6B0A79E150@DM5PR1201MB0012.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;SFS:(10001)(10009020)(4636009)(136003)(366004)(376002)(396003)(39860400002)(346002)(189003)(199004)(26005)(186003)(33656002)(4326008)(2906002)(52536014)(5660300002)(66476007)(9686003)(8936002)(316002)(81156014)(86362001)(81166006)(66556008)(7696005)(54906003)(110136005)(64756008)(76116006)(45080400002)(55016002)(6636002)(966005)(66446008)(53546011)(66946007)(8676002)(6506007)(71200400001)(478600001)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:DM5PR1201MB0012;H:DM5PR1201MB2554.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BawvpbGpghwUyTJwki8NC9In2ZKQuSMjrRh1hGnQAn+ehswAwnP3bidg7Jy8EuabQiLWrBDv1LmCcfZzNUq7UWno0APNlGd0CkGqyZ9rRgGccjYnMAvWZdtMupt25EmeZ2Pflm2hSPPcZ9N/V9Af2e7v6/4Ctwd+EPM+PSlq5nZcdJNRH+PAqk/Ao0LuXZQG5ajMKECEY2XXSUen8q8SBiizdPCISNxdpK8+LCvWJisLZD6c1tcVHkwxW9+RyaLbhsU8vAqX/n4EJRKD0DnFSOF5rhw1rtAtiUjYOaxTjYg3UdF+bGL0vJDsxWnoYgSAfQ1AR00lePKu/J4iXuJmjUosztMq//Y44Oz+EsR8d/BKEHrnzjhjpR0xJ0XLdp+Yj5cS0utw0rguIXcS3Uxj1bAfAvnmTuxNln9hfYpYn+yDd6m2IqZlVS9iijfjAE5zH7XD+QYdD8jH8VYR9xxYtfmcoBmwUnbhBZ1zgflIiQa/paZFaxOpE5D3dwvoibL7qaT6i0GEGuln8uQsdJoHm7DBo7w8LdhCMYSDfo9AK9BodqgYvylIyRAKqg5BJBKbZdeKoO39jGV23ruc7g1Z5dj/qm0Ym7eUO3wqh2L/BQ5tB7qrVQZOoHnVMG6AVdHYE/CHSC5QobuLTOY3u3n9aqS8Rc9mDpn0MLkrRlqKM8uIXnL7XqgPR4J3O+aMrgaa
x-ms-exchange-antispam-messagedata: +NKeL3LmO+gO5ICcSbVdEER6hv0xG4uGHk9/PD/1idLzkm+hGZZTj/vA9jmE/DyZqAnO5Gdx4I4tAgKrSvQvpBvgbQX2CqXfOuw4OJ+zvJlGynL9W7IAwK5B1E4uIkcgAQXpSDn6dlYeIWHmbKP8/A==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ffdb09a-7ea3-4819-cc1f-08d7b16716e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 16:01:01.9322
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cF2EsSxkd+6UbYflf8L0J5ouH4wmgWLWJfKs+OM+11vYp3rBQc/4Ito1P8SS26Rt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0012
X-Original-Sender: zhan.liu@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=L4ToET56;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.220.86 is neither permitted nor denied by best guess
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
> From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of
> Nathan Chancellor
> Sent: 2020/February/14, Friday 1:30 AM
> To: Wentland, Harry <Harry.Wentland@amd.com>; Li, Sun peng (Leo)
> <Sunpeng.Li@amd.com>; Deucher, Alexander
> <Alexander.Deucher@amd.com>; Koenig, Christian
> <Christian.Koenig@amd.com>; Zhou, David(ChunMing)
> <David1.Zhou@amd.com>
> Cc: clang-built-linux@googlegroups.com; Nathan Chancellor
> <natechancellor@gmail.com>; dri-devel@lists.freedesktop.org; amd-
> gfx@lists.freedesktop.org; linux-kernel@vger.kernel.org
> Subject: [PATCH] drm/amd/display: Don't take the address of
> skip_scdc_overwrite in dc_link_detect_helper
> 
> Clang warns:
> 
> ../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:980:36:
> warning: address of 'sink->edid_caps.panel_patch.skip_scdc_overwrite'
> will always evaluate to 'true' [-Wpointer-bool-conversion]
>                 if (&sink->edid_caps.panel_patch.skip_scdc_overwrite)
>                 ~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> This is probably not what was intended so remove the address of operator,
> which matches how skip_scdc_overwrite is handled in the rest of the driver.
> 
> While we're here, drop an extra newline after this if block.
> 
> Fixes: a760fc1bff03 ("drm/amd/display: add monitor patch to disable SCDC
> read/write")
> Link:
> https://github.com/ClangBuiltLinux/linux/issues/879
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thank you!
Reviewed-by: Zhan Liu <zhan.liu@amd.com>

> ---
> 
> As an aside, I don't see skip_scdc_overwrite assigned a value anywhere, is
> this working as intended?
> 
>  drivers/gpu/drm/amd/display/dc/core/dc_link.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> index 24d99849be5e..a3bfa05c545e 100644
> --- a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> +++ b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> @@ -977,10 +977,9 @@ static bool dc_link_detect_helper(struct dc_link
> *link,
>  		if ((prev_sink != NULL) && ((edid_status == EDID_THE_SAME)
> || (edid_status == EDID_OK)))
>  			same_edid = is_same_edid(&prev_sink->dc_edid,
> &sink->dc_edid);
> 
> -		if (&sink->edid_caps.panel_patch.skip_scdc_overwrite)
> +		if (sink->edid_caps.panel_patch.skip_scdc_overwrite)
>  			link->ctx->dc->debug.hdmi20_disable = true;
> 
> -
>  		if (link->connector_signal == SIGNAL_TYPE_DISPLAY_PORT
> &&
>  			sink_caps.transaction_type ==
> DDC_TRANSACTION_TYPE_I2C_OVER_AUX) {
>  			/*
> --
> 2.25.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.
> freedesktop.org%2Fmailman%2Flistinfo%2Fdri-
> devel&amp;data=02%7C01%7Czhan.liu%40amd.com%7Cb0b05e8e1c944b85
> 0cc108d7b12508b4%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7
> C637172644928182374&amp;sdata=OfX%2BPBPCkFt8Elo12VfVBg6Ecnui7Vh
> hZwQFaKy5eyM%3D&amp;reserved=0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DM5PR1201MB2554F94D7E206B7690C208109E150%40DM5PR1201MB2554.namprd12.prod.outlook.com.
