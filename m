Return-Path: <clang-built-linux+bncBCS2ZOPPSEBBBCUG43WQKGQECHH2LNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC84E9B93
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 13:33:15 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id 202sf1461084ywf.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 05:33:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1572438794; cv=pass;
        d=google.com; s=arc-20160816;
        b=pDfE6rSTI/fX2UKqARH4/V7E47wbMBIQtrFf2vdXLJ7hmDbocUs8aSKjfcUPazGuiJ
         0SMAemeBCHuoOVvFuSK9nKfm21RWCHG5V8X6yH6EFdheClJ+sbmxMnXJ18d4zFRRb3Fy
         T4hmPSX9SctcqerdcI5VwQUAB3r3uMh3e0Yht9IKFmeIh8fgcikxQron5Mgt+RknT9s9
         8y4PezJsTG3G+1g495wTheUAbJDmlmr7YQ0cBZjWuA+MZ1P6zgQi2LfT2WTSqyiYgbeP
         CHqA/xX4B16ej2eX8OAeYdMGnwb/TBSP8EISnfR293e07Ot+7R9XJ8Ri3x9sE/orDzAE
         cHww==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=5vOBNUw+Faft8E2b0Sb0J3q2g3IVFfPC0tQpqHm0H+8=;
        b=nwEeYzN3++SwafWaGpKGSYEjud9wzDBaWkohxk8I9fXaEEMcsB36Z260ua+v5Lj8Ym
         QQKf13uag4CCNMqwUKf6Yq+yar8tw88mSVi1FUoqISFen5b7gsDlikCgKARCKzb7y3Q6
         AeBnhpo0jXtVfrlRJ3JGw5Y1KVsiHJENfJHJvMTKaI0pvPMyya//J9Z53K2sXFHqe6iL
         dfVKWU3YU2a82I985cRXxYE5V4jSBLCg0mmlcJ+4exZX88731LXFjqYoaG+I6OkTYT4W
         +/TgajVqi4P01hLYfxZzG3iArjxBjtNsDwRRBimzzdxTnC9k1Ps6JOmXqVSgUzoUUtuG
         ycNA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=g7KOJ1NM;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.72.70 is neither permitted nor denied by best guess record for domain of nicholas.kazlauskas@amd.com) smtp.mailfrom=Nicholas.Kazlauskas@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vOBNUw+Faft8E2b0Sb0J3q2g3IVFfPC0tQpqHm0H+8=;
        b=q4NNuYe/PGXRIoMnIsNB8YEgh/Lx1AUN6ITESnTbuTvr8KikPbziraYXdLb4cXcSiZ
         VKOG3J1iXcNVGeKjQakBCkU7wkVzyqmenaoX6TDDMd9hi41aG9i5BSb3+eLk5DNdYPZ+
         nFcBn6uWiTVTdFPQRbMTioqsRSLh/CXkYhMhLm3ZOJ+4UCvl+1BsN3yNizfcmB44dRgZ
         IXheaCeSXjmx1tmRVU1A6D0rlSoaaAFgntxTrwHiAW0av3YmRwk9t+QtPTzU3mYzbiub
         aEF4W7CavFUhzD1XBotNH3YMVb+ots2YMa/6NRqLTOd+CiDdj7JJtguVqJOsLI6Nl7Qd
         EaLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vOBNUw+Faft8E2b0Sb0J3q2g3IVFfPC0tQpqHm0H+8=;
        b=D8vM5HAEKrv8BHHo4JDgZQ8pruk8tWodL/XlmFS32GccHRfrzOdJjUUznJpmuN2Wed
         +I9bez51L8ofPg3Ukgl3QV6DLpKk+K6ue2Aq6ssO2KEJfwSAOiVzrjN46prbPTjSme5e
         RE4qAfJobSoPr0ju0uXtNCd7FOBtGmBdPJYaNMsT3AibT6mNhfOtmwqxTBS1xOofeQdu
         TajNHrEMqJcBkcNhYnuHkSFc7bd2ORvEApjMxs4OcZdRRiiL6oKjZPyF5HlAxWPr+Kib
         fW2Hmw1JrDlnbaQXxkLCRtimUX9H5d0Z25GXIW9I3ZFMKyuVrSzEi3TovLKt0KmK3nGE
         gGBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnYNBfiELvuIQjSvf9bofsT8AXCp6+RE6NE7Och8duwzOUt8Ap
	8qKnQr3d0COywCJdopcK7pU=
X-Google-Smtp-Source: APXvYqyF03nEzGA7Q0kXcQ3ve7ss6bTri+A6vqeSSOeRJ07R77tiL6+J/ScIR8dPdeSgC9Vyr4hxtw==
X-Received: by 2002:a81:a042:: with SMTP id x63mr21835105ywg.301.1572438794279;
        Wed, 30 Oct 2019 05:33:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7496:: with SMTP id p144ls3885252ybc.1.gmail; Wed, 30
 Oct 2019 05:33:13 -0700 (PDT)
X-Received: by 2002:a25:e64f:: with SMTP id d76mr3327739ybh.277.1572438793709;
        Wed, 30 Oct 2019 05:33:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572438793; cv=pass;
        d=google.com; s=arc-20160816;
        b=iP+TcrPyAT2SdWvStBc015pzE5pQpB8MzI2EVhTyf5V9qufD+V2ThvQEB7u7Ys3nqf
         jhlNFDaf/sNVte0Zz78915awujG4A8Ibn2IJsFX8qAgcKA1mTxmxBJSMPK+hVjjIpLna
         JcJtRjn4IRlyQrCdl3I5F0q5ZXAEj90CGDnLYWbm23RugR8CwtcI3VXLa+srJGbgxnns
         ld3Jh2PuXW8mrl9sxqfMaVM/FfW2uT5NA1rGZ/TFicRTqOExsMrAzBWLXOOGRmBe3tIF
         xICaWYvAA6a1mO25l8zrTXwMuinC8mbq/hf6Zp1wn/TUJ6LtKrybqwT6FeKo0u7lYIja
         5Vqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=RyCASmsmlHb3b2+IFdVg1ifMpBpMMhfkaATEpR5uK3c=;
        b=NTBM5VYspGkUJKtgznNuO8BbldB9POLmJkswF7D3eL9G0nlr8pQ26dfaOeedJ/F/jU
         sJPzcumma9WuCu3wTfrrnKRR8hOnnE0H6DQvJ+Y92tDJ4dGB6xKa7xlJOkRe2gj+ytT1
         hpcs4AEdRJSwATUCNj1m400Fl2MiQNiIA0VpOoQEl4VU5x0DT3K6NqLJAiOAwePW3PDQ
         Ct6Ds9ag6ofFwnTSbjsH3twFOQ4L0mGMPv49B6Yp1l4uKvLpjh0+AEBcUyfeU/Px5Ad8
         evWoqZbHOZ7jy4GDlKhfe/Lz8FVZM/bbX10wqeUImeiKvZnYdaq5FgSPus+OeNCDGDhz
         Az/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=g7KOJ1NM;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.72.70 is neither permitted nor denied by best guess record for domain of nicholas.kazlauskas@amd.com) smtp.mailfrom=Nicholas.Kazlauskas@amd.com
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (mail-eopbgr720070.outbound.protection.outlook.com. [40.107.72.70])
        by gmr-mx.google.com with ESMTPS id a1si156247ywh.3.2019.10.30.05.33.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 05:33:13 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.72.70 is neither permitted nor denied by best guess record for domain of nicholas.kazlauskas@amd.com) client-ip=40.107.72.70;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHAY7breFizVbxY/xiAmTGNA/f9xlkBJzFj4swz1gnfH0OMCKxJeFz8CzuaWYuie4NDxROi8IVkuJRDPjhvfkNWrrdXrMIA8dqOPjnvcZ51AmKEYlQaMWuQTsukZSaFpl/tt/gWYjyWrih+3g2TakA7qN3yqh29ZM1F6yTUxpSZtTcvyz+LWq4BA0M6I2PTqirmLUQ9cV0WGvlItkEaM89MeeqPiF9Nio5Kg85CvBl5M5GXbZ9nAJVMAaPH8ffD2eWufwGAV7aP2i0JC2CLMvMDqc9CsGa/dC124KrJPVVrtIVVUURVUnswU0UvL4/FwTUM2Rk8Auciu4v9e8oUKaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyCASmsmlHb3b2+IFdVg1ifMpBpMMhfkaATEpR5uK3c=;
 b=UTjMKwqsAaA4H6v5NRPKZJNXZi07HNS1ANU5wsPac1rqjsjEGDfPsrKdKmcSKgTGZlctIOrQ5oh1v45gtfEJ9eg5R5OY0Zzj0ZyT8QImX81ZlvlEphlaVz/0ir8cSrP1wsUqEQ8a36zm9r74DoR7GZf2cMASto8oqxD0+zSfVywZ9XSP7GfNVjBkf6ZS5hiBgYGGOwrU0lIH8gTXE2WZCYYDUnJLbg6UlK1M9nsw/A/bq1dh7lhnO5beevmQzJ7ao4+tjHiwq0XLhT7lVtXcq2rJPUMzfssJkpVXidzRzPBGJCe5rfuj5IVTwff6nH91yiElE66wUeHavoOkgVk/Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from BYAPR12MB3560.namprd12.prod.outlook.com (20.178.197.10) by
 BYAPR12MB3173.namprd12.prod.outlook.com (20.179.94.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.23; Wed, 30 Oct 2019 12:33:12 +0000
Received: from BYAPR12MB3560.namprd12.prod.outlook.com
 ([fe80::f950:f7be:9139:7c26]) by BYAPR12MB3560.namprd12.prod.outlook.com
 ([fe80::f950:f7be:9139:7c26%7]) with mapi id 15.20.2408.018; Wed, 30 Oct 2019
 12:33:12 +0000
From: "Kazlauskas, Nicholas" <Nicholas.Kazlauskas@amd.com>
To: Nathan Chancellor <natechancellor@gmail.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, "Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>,
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian"
	<Christian.Koenig@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>
CC: "Li, Roman" <Roman.Li@amd.com>, "amd-gfx@lists.freedesktop.org"
	<amd-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH -next] drm/amd/display: Add a conversion function for
 transmitter and phy_id enums
Thread-Topic: [PATCH -next] drm/amd/display: Add a conversion function for
 transmitter and phy_id enums
Thread-Index: AQHVjufqOqphme+ZcUWQhKhHM4f606dzHo4A
Date: Wed, 30 Oct 2019 12:33:11 +0000
Message-ID: <b8a9f49e-b788-82b8-ead3-0ae6fba7e8fa@amd.com>
References: <20191030060411.21168-1-natechancellor@gmail.com>
In-Reply-To: <20191030060411.21168-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YT1PR01CA0013.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::26)
 To BYAPR12MB3560.namprd12.prod.outlook.com (2603:10b6:a03:ae::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 03e27e70-34e0-4e69-26a6-08d75d3553c6
x-ms-traffictypediagnostic: BYAPR12MB3173:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB31734B2EC1A0AC147EC7CC83EC600@BYAPR12MB3173.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(199004)(189003)(229853002)(316002)(6506007)(386003)(102836004)(71190400001)(2906002)(36756003)(71200400001)(26005)(5660300002)(4001150100001)(4326008)(53546011)(6636002)(14444005)(6246003)(256004)(76176011)(110136005)(186003)(6116002)(6306002)(6512007)(52116002)(6436002)(6486002)(54906003)(99286004)(3846002)(66476007)(25786009)(81156014)(446003)(81166006)(66946007)(64756008)(66446008)(66556008)(8676002)(966005)(86362001)(31696002)(486006)(478600001)(2616005)(7736002)(66066001)(31686004)(8936002)(305945005)(11346002)(476003)(14454004)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR12MB3173;H:BYAPR12MB3560.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tPyQI4EcVgJitIJYXaKdPnGO86ps6beD1+ZNc00rh8+jnqGV85gXUlWs2p3rHkKt2ZnCXc93GB48E6xla34mCDULlkzvSxxURnFU9VcIXsvVJ1UkSqy4WKzV7+EYqkV0f8nWuLulXQCy5c7LIR09QhYtJDV0eMUNZP2i+ZCaEaNwUot8GCEUjQXuLI3pyEjSWrekDANIo2GqhNGk4z9q96EVd2GMu5o6rnwH5uEHyTd/RIYLL+DyyCULhV+G3HTFy9xEGSfYo6I4vs/OOr2XDQCieFOQJFqWWIYiY1j6p9oqid8WB8psI9SMC9ags1ZSeC3E+72rlhAqdBQHH+Cusm3AFXmZDrpOhV65HTJunIeXTo2lDWLCF5t1z3SbkMY2JLwOwXgwvcY9CG19g/GbyFXfgEV9BKhIIy8VeFIW1BnCmCibIbXSA5kGBmGhb4IJ34irxuLMXY5wJAd4fHzbVLM8gIjUUx9M4GIluqa4B/I=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5C94A34E747B3348870EDD8EC50ECBB8@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e27e70-34e0-4e69-26a6-08d75d3553c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 12:33:11.9397
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zl4n7EuSeM5mR9q3UO0EoCn8zSZHWzq/HLhlYN/IbGvglB8v26EQSSkdbQa3wzxvtixw1aIvpCWhR9qFQhoSJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3173
X-Original-Sender: nicholas.kazlauskas@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=g7KOJ1NM;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.72.70 is neither permitted nor denied by best guess
 record for domain of nicholas.kazlauskas@amd.com) smtp.mailfrom=Nicholas.Kazlauskas@amd.com
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

On 2019-10-30 2:04 a.m., Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:2520:42:
> error: implicit conversion from enumeration type 'enum transmitter' to
> different enumeration type 'enum physical_phy_id'
> [-Werror,-Wenum-conversion]
>          psr_context->smuPhyId = link->link_enc->transmitter;
>                                ~ ~~~~~~~~~~~~~~~~^~~~~~~~~~~
> 1 error generated.
> 
> As the comment above this assignment states, this is intentional. To
> match previous warnings of this nature, add a conversion function that
> explicitly converts between the enums and warns when there is a
> mismatch.
> 
> See commit 828cfa29093f ("drm/amdgpu: Fix amdgpu ras to ta enums
> conversion") and commit d9ec5cfd5a2e ("drm/amd/display: Use switch table
> for dc_to_smu_clock_type") for previous examples of this.
> 
> Fixes: e0d08a40a63b ("drm/amd/display: Add debugfs entry for reading psr state")
> Link: https://github.com/ClangBuiltLinux/linux/issues/758
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>

With the small nitpick that maybe the default case should be 
PHYLD_UNKNOWN, but well get the warning if that happens anyway.

Nicholas Kazlauskas

> ---
>   drivers/gpu/drm/amd/display/dc/core/dc_link.c | 38 ++++++++++++++++++-
>   1 file changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link.c b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> index 7b18087be585..38dfe460e13b 100644
> --- a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> +++ b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> @@ -2447,6 +2447,41 @@ bool dc_link_get_psr_state(const struct dc_link *link, uint32_t *psr_state)
>   	return true;
>   }
>   
> +static inline enum physical_phy_id
> +transmitter_to_phy_id(enum transmitter transmitter_value)
> +{
> +	switch (transmitter_value) {
> +	case TRANSMITTER_UNIPHY_A:
> +		return PHYLD_0;
> +	case TRANSMITTER_UNIPHY_B:
> +		return PHYLD_1;
> +	case TRANSMITTER_UNIPHY_C:
> +		return PHYLD_2;
> +	case TRANSMITTER_UNIPHY_D:
> +		return PHYLD_3;
> +	case TRANSMITTER_UNIPHY_E:
> +		return PHYLD_4;
> +	case TRANSMITTER_UNIPHY_F:
> +		return PHYLD_5;
> +	case TRANSMITTER_NUTMEG_CRT:
> +		return PHYLD_6;
> +	case TRANSMITTER_TRAVIS_CRT:
> +		return PHYLD_7;
> +	case TRANSMITTER_TRAVIS_LCD:
> +		return PHYLD_8;
> +	case TRANSMITTER_UNIPHY_G:
> +		return PHYLD_9;
> +	case TRANSMITTER_COUNT:
> +		return PHYLD_COUNT;
> +	case TRANSMITTER_UNKNOWN:
> +		return PHYLD_UNKNOWN;
> +	default:
> +		WARN_ONCE(1, "Unknown transmitter value %d\n",
> +			  transmitter_value);
> +		return PHYLD_0;
> +	}
> +}
> +
>   bool dc_link_setup_psr(struct dc_link *link,
>   		const struct dc_stream_state *stream, struct psr_config *psr_config,
>   		struct psr_context *psr_context)
> @@ -2517,7 +2552,8 @@ bool dc_link_setup_psr(struct dc_link *link,
>   	/* Hardcoded for now.  Can be Pcie or Uniphy (or Unknown)*/
>   	psr_context->phyType = PHY_TYPE_UNIPHY;
>   	/*PhyId is associated with the transmitter id*/
> -	psr_context->smuPhyId = link->link_enc->transmitter;
> +	psr_context->smuPhyId =
> +		transmitter_to_phy_id(link->link_enc->transmitter);
>   
>   	psr_context->crtcTimingVerticalTotal = stream->timing.v_total;
>   	psr_context->vsyncRateHz = div64_u64(div64_u64((stream->
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b8a9f49e-b788-82b8-ead3-0ae6fba7e8fa%40amd.com.
