Return-Path: <clang-built-linux+bncBAABBJHF3XYAKGQEDCNLFDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D66D13603E
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 19:36:22 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id m18sf4196639otp.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 10:36:22 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1578594981; cv=pass;
        d=google.com; s=arc-20160816;
        b=KnD/hQU7iiqa7KfjUETwG2GjMDn+NFxvWz73ZJQc88gzeEYNMqwFZ/Y8CqbEY1fp0/
         j1sRnh7K60AOQNOa5+7mpDAQq/T8o6Pd+IVF1+8ZgwxPySYWRYdU4U/k1lUj3AlpGEor
         MKPbI73soX4CTnHj3Fc1R3zyQCOEnQJmEgqImzPwrrcvqH4qGWmR1pbmLtNVyDUMG3HV
         J1yhEO6uJbz0jY7HkbB9gSI2fS5pfFmeoJWNNTvkFEXFljVBbPheoJXH8Hoz7OBcV+TC
         onqyMX+Dc9DKzDy8XjDbKVlvKy+EAt4UlvjoIz2fwZEJoeE5+sdZuVseXLHnyPbRsV9h
         ew0w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=JEp/gnGJpETNhBH73W6jROViLd6YmQqtvEUPgdxdlm4=;
        b=J93qh2U0ouzrmxU3V3VN2G86o0rhDdBkATWnGGWZCBZa+o5175F2yPrtLEeScI0UN8
         djqVe2BV+/9m5DRwHmni65Udstc4+OiDD84qkIsrLcBDlGenAT9h8BZeBS8kYhBkyIwW
         iGd3ltomFWE1vo8hHDUyMD3QM7rk5xHcLCMO1ZPy3zA6oFbuRk07c0insJseniL5+ARG
         Vubf+6udxdz/LFDsOG7Qof8/Piz7Zf4GneLS3u1kvKVxYJ5YDpHHpxDYABHtO79VwqPt
         I52ZkLGSflStMXn0Uvyo2zGyBNYoRw6Ch+KtAZvn3KPEN0xnvmMDloQ9BOeFAKOzy1uX
         FxfA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=bzyhZ8Bt;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.236.49 is neither permitted nor denied by best guess record for domain of bhawanpreet.lakha@amd.com) smtp.mailfrom=Bhawanpreet.Lakha@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEp/gnGJpETNhBH73W6jROViLd6YmQqtvEUPgdxdlm4=;
        b=Gw7F9Z/G7zWAbM7zGpMHOdlw8F6OoyoLMd0yHVqdGA7zhgILdR6wF9tHAMbhLJs2Uc
         fOB05ZO0XritQAYcKUquDW8QAoGr1ETml8GKtM0g6EZ43l2TeTbFns3l0tgwg4nsLjZp
         2ebLv1F+zbQNfQVsqi5PyMsdbh3ijejEofAYsuyiBWnZQITZWwc8zG0N8zSNE5IA5n62
         MfNL9S12BcC6y27fzOfTphd4m7va8gcq39gGpNS1ZqsQXT2zkvv4Y8+aMlQ4ycfJAfkn
         8h1TvuK/Qi/fbdHVvxwyxo0kPL3vHLkjcmYUFbS91OyaW1VmCaWKzJecKT/BjV2YuRqN
         Fl+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEp/gnGJpETNhBH73W6jROViLd6YmQqtvEUPgdxdlm4=;
        b=byQ2KN2bz1XnCuTprF+cL4H1bqFYHWwceuAPIMPeNECSkyR/6+9w+akw1qeksioaDl
         xZYCv+ToEC6fpSuZ48cQL88/YMy4JLpIVMquHAzXfesHjJnmu5k4JcQC+30qJoeMwVHm
         il+l3ZpFParvln4OMnUlsVfp/0ykwLbMFQEKOChlh1cjeUQHtSeKovvaAhqRr6JaYg4w
         R7cl4YOwox5g5xBo0bAkbf+MVeRfmFLf6PqFfP4lFUgsV0Uzf1XuBxIUqn2zXoOi3joT
         Q6vmLK3lyp3wSBz8cl9eIZCirThxHpA/GAHQhvSmDCqbqPtL/khz4+U3znaJ0ctYHT99
         HJ1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxjKd1mGA7EyvnLf/SKM82b9EsSz0MTkLTRDJdIKmP/HnJ1coi
	sfYAYmqmTENKb7LPRHDxiSk=
X-Google-Smtp-Source: APXvYqy8p+dU2BPBg/+d+dhOchJcriFDupyKcUXdLCzEvOL/O4H+GhZRwX0Vo+6JyBCC+nrwcWa5KA==
X-Received: by 2002:a05:6808:643:: with SMTP id z3mr4331223oih.19.1578594980795;
        Thu, 09 Jan 2020 10:36:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d615:: with SMTP id n21ls571048oig.5.gmail; Thu, 09 Jan
 2020 10:36:20 -0800 (PST)
X-Received: by 2002:aca:d6d2:: with SMTP id n201mr4475411oig.112.1578594980112;
        Thu, 09 Jan 2020 10:36:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578594980; cv=pass;
        d=google.com; s=arc-20160816;
        b=VL+HGwfp7pRNr2qnCAERZwq7ivirmq07YHJ7yf33FMjUgTZxomqSngfzoXhxev+tPx
         sDKfaQ/3LlZ0W+KCb0gjIogowGHF+Mq7rUqQUk281D1frC4pBTVcgji5Bf82PkOkqnBh
         WLPjGztQ+Lq0NR3nUugR6/YnsCjuyI0t2QYap4CFJ8Psyd4YaCNAXD7aY+asz3YsyYNa
         eu37jxCk/HJUxr96FZ4ra7WCKPusp8KbvqfxxIkKZP5d+Umajyccs98rDDyipQo+C72y
         7+pJZcoaaZ5Q36lavfzw/vykUar0typEPM8MG4npsF/x05cNlI16NVgnJNT/amMHrqms
         Js6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:msip_labels:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=is2pnpEWBrS1GmRuNENQf8gCYCxCM4Lz78rIPFvlzFY=;
        b=tEwYXwPbB0+eThGM/1Op3iHMBT2qyXTiapWWHOu3NPHWpz77svKMj54DfEyr8lv05N
         Vkd9hA7tXiefEdlxwt+rsgJ1sE5DXhSa3NbLCg3AHEh8lqhj3N0evHCzksyQfrQaWWgB
         i59qMglsNIPO0V1MonNXe2nCKMlyXbn1qgtaWx3cMCAxvdQRYZWu3/tC1uiMnX7BG9Si
         bl2sETM+8/WKW+5czm5UxfJElIZpdWozuYJeEKyiYucDQDwz7/lGvKUdtzH8WblcGGyl
         XIZalocTqZAmHDM12ynwivLuYbqJvBKNKe+R8l6hsXXtbdwRy7cfxr8EwMgRl5t9q+AW
         BDvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=bzyhZ8Bt;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.236.49 is neither permitted nor denied by best guess record for domain of bhawanpreet.lakha@amd.com) smtp.mailfrom=Bhawanpreet.Lakha@amd.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2049.outbound.protection.outlook.com. [40.107.236.49])
        by gmr-mx.google.com with ESMTPS id c23si492629oto.4.2020.01.09.10.36.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jan 2020 10:36:20 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.236.49 is neither permitted nor denied by best guess record for domain of bhawanpreet.lakha@amd.com) client-ip=40.107.236.49;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i4/3JBnss8vQ+YJeK10JVWZxKxcGgQ588JaDdy72Ix4pZo5JZo1gm84hkRzeJSCR6DtwBJ9mZgF1+MmGyKW+VYC4B37We8OGElBj5v/UAcjNxZK0pIyA7rbkaw53kaHSRd3S4sEikp5Hfe+YXhadwbkBY1wU+MXpbwGISBLJotbth7jQtqq75fRYMSOMib+n5ZmxCRm/yTBy5Bx8wEfqEurLGXETyGBU55sBJOUqskyT7M21V35h1qRjC3cQGRrYsl4P3EX4eWjqr3aQ8f+ZwEqE9KhIwNdiRODkf0UHrTw3bFtvRGD31pvE1TnLa9X9wMF+bJ5KJEuehdNctzKWBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=is2pnpEWBrS1GmRuNENQf8gCYCxCM4Lz78rIPFvlzFY=;
 b=Apbl8X+SLkfY29LMxiYk5TqxsWg5T7Aax/TR+nN26tIUEtBL6FzUx3jwhuaPSUqOT9nMJG1VxoILdw+oA35CtCMUmy/RXolY3FZEYCUErgi/ys/y/ErRZAF3Fp8nmlYnk35+jgiiNvLQbTdH8NhluKAHidM+AhpH4+bV/zNnf9UIBOcg5hz/sSJbix2XUt1hmhx9vaabZ7QewHgyvycvlhusCw4BUpQK5rel7ltWjKx9P6SiNJFJTLZVt3ntcMqYBjMCxiyxUn5ic2jCQHkDA33kg1k0ch+ESeAVEPkpWeeFB4c6/sStNH9n5tkdcDzGsJtoubbZC+AJ6PntH33tAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB4236.namprd12.prod.outlook.com (10.141.184.142) by
 DM6PR12MB3003.namprd12.prod.outlook.com (20.178.198.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Thu, 9 Jan 2020 18:36:18 +0000
Received: from DM6PR12MB4236.namprd12.prod.outlook.com
 ([fe80::91ac:1f2d:b4ca:c0a4]) by DM6PR12MB4236.namprd12.prod.outlook.com
 ([fe80::91ac:1f2d:b4ca:c0a4%6]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 18:36:18 +0000
From: "Lakha, Bhawanpreet" <Bhawanpreet.Lakha@amd.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann
	<arnd@linaro.org>, clang-built-linux <clang-built-linux@googlegroups.com>, CI
 Notify <ci_notify@linaro.org>
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 64 - Successful!
Thread-Topic: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 64 - Successful!
Thread-Index: AQHVxxPfDgAI/5mNA0iN7vQq68vOZafipi0t
Date: Thu, 9 Jan 2020 18:36:17 +0000
Message-ID: <DM6PR12MB42367F181F3371D1CC4495F9F9390@DM6PR12MB4236.namprd12.prod.outlook.com>
References: <1328215807.12067.1578548274951.JavaMail.javamailuser@localhost>,<CAKwvOdm3u6VO5+fw0rDxLQOjgk7U7tHJtPvhV9AEqF0ZTkqYiw@mail.gmail.com>
In-Reply-To: <CAKwvOdm3u6VO5+fw0rDxLQOjgk7U7tHJtPvhV9AEqF0ZTkqYiw@mail.gmail.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Enabled=True;MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SetDate=2020-01-09T18:36:17.598Z;MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Name=Internal
 Distribution
 Only;MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_ContentBits=0;MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Method=Standard;
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4c6d5419-7590-4f7b-d227-08d79532d0cb
x-ms-traffictypediagnostic: DM6PR12MB3003:
x-microsoft-antispam-prvs: <DM6PR12MB3003B981C641DD372A62FAA5F9390@DM6PR12MB3003.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(66476007)(6506007)(53546011)(2906002)(45080400002)(66556008)(64756008)(8936002)(66446008)(66946007)(71200400001)(9686003)(76116006)(91956017)(52536014)(7696005)(19627405001)(5660300002)(478600001)(966005)(81156014)(81166006)(86362001)(316002)(55016002)(186003)(8676002)(26005)(30864003)(54906003)(6916009)(33656002)(4326008)(569006);DIR:OUT;SFP:1101;SCL:1;SRVR:DM6PR12MB3003;H:DM6PR12MB4236.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Us4pYjYnA9D9XuSHpFLZza2ECZr1+8rgkgs8OFvafsh6z4xa8BFsgRG2mZyCyiyxegphJa0bWjTfr8or71z3evKPTzVLrg7pq6RHKCCc2vgX6Aj7fKL/B4OmOhrWUYYASraH6h+IqE8iw7mkdbUvmRjCqii3FRIR/56nmc9J+z9fUoYTDPDlklCyXQHesOoQqUkl0R8QI1G90r8ODNvyYwGsm+D8q+E882sjGeePSi1ksTQqisRCBTouFlZIpYKW2tIAOiTF4yM2NiHUmKKLeHfV12YfcV5vegU+Rl3j7jN7blpGtnyypAp002v6oPfiRkKzDNkkrPUt1krpPvQCxC+ylb+vDl3T3Zyy92kjxm8W8FFvpf2rvlNDVPF6VyWXeKJCTVjzAqfIyUO5EE9wKcBICn7goaJXXXNhCUXul0CyJxKrRMnAwUUVdgFULyGN4cfp4Gu+6L1kAedr7BqXvXZky5TbcyhYwMBzrfOsCyHsyDAcTFb9P1fAzjMpgA73J23blFyYmEowd2NY69ewX1/Xd/IxZCewGdXdeMsogvv0LVICVbcXN3f1jwp9yD2+
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB42367F181F3371D1CC4495F9F9390DM6PR12MB4236namp_"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c6d5419-7590-4f7b-d227-08d79532d0cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 18:36:17.9658
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eAltDPdspY8OnmqCfBxEjxYHCPhchWcQa7LMz98c2dTr2gV7yuGlDDAUu6myPIap
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3003
X-Original-Sender: bhawanpreet.lakha@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=bzyhZ8Bt;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.236.49 is neither permitted nor denied by best guess
 record for domain of bhawanpreet.lakha@amd.com) smtp.mailfrom=Bhawanpreet.Lakha@amd.com
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

--_000_DM6PR12MB42367F181F3371D1CC4495F9F9390DM6PR12MB4236namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[AMD Official Use Only - Internal Distribution Only]

Hi,

If this is regarding the udelay() for arm only allowing 2ms. A solution for=
 this would be to call udelay in a loop. Does that work?

udelay() is used here because we need the accuracy and cannot use msleep. P=
lease let me know thanks


Bhawan

________________________________
From: Nick Desaulniers <ndesaulniers@google.com>
Sent: January 9, 2020 12:40 PM
To: Lakha, Bhawanpreet <Bhawanpreet.Lakha@amd.com>
Cc: TCWG Validation <tcwg-validation@linaro.org>; Arnd Bergmann <arnd@linar=
o.org>; clang-built-linux <clang-built-linux@googlegroups.com>; CI Notify <=
ci_notify@linaro.org>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allm=
odconfig - Build # 64 - Successful!

+ Bhawanpreet.Lakha@amd.com

Why does this report look familiar?

On Wed, Jan 8, 2020 at 9:38 PM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_ke=
rnel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed =
CI configurations:
>  - tcwg_kernel/gnu-release-aarch64-next-allmodconfig
>  - tcwg_kernel/gnu-release-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
>  - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-master-arm-next-allmodconfig
>  - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
>  - tcwg_kernel/llvm-release-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-release-arm-next-allmodconfig
>
> Culprit:
> <cut>
> commit 51466b3fd2725bfb0de629f71c0854ff276d50ae
> Author: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
>
>     drm/amd/display: Add execution and transition states for HDCP2.2
> </cut>
>
> First few errors in logs of first_bad:
> 00:06:36 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_executi=
on.c:162:4: error: implicit declaration of function 'udelay' [-Werror,-Wimp=
licit-function-declaration]
> 00:06:36 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_executi=
on.c:472:3: error: implicit declaration of function 'udelay' [-Werror,-Wimp=
licit-function-declaration]
> 00:06:36 make[4]: *** [drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp=
/hdcp2_execution.o] Error 1
> 00:06:39 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
> 00:07:33 make[2]: *** [drivers/gpu/drm] Error 2
> 00:07:33 make[1]: *** [drivers/gpu] Error 2
> 00:08:55 make: *** [drivers] Error 2
> Configuration details:
> rr[llvm_url]=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project.git&amp;data=3D02%7C01%7CBhawan=
preet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;sdata=3DRNfsyBGar76j0yWVj=
SeH369B%2FqhZHKjD0nlAKy05l3Q%3D&amp;reserved=3D0"
> rr[linux_url]=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flinu=
x-next.git&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994=
c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371418842=
48254340&amp;sdata=3D%2F5%2FTu5HnIsbOgeVN30X2mZ%2FIpzs7KPgts5b4y0%2B5%2BHQ%=
3D&amp;reserved=3D0"
> rr[linux_branch]=3D"2646738520338211e74394857e36df7c455a8a91"
>
> Results regressed to (for first_bad =3D=3D 51466b3fd2725bfb0de629f71c0854=
ff276d50ae)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 19891
>
> from (for last_good =3D=3D eff682f83c9c2030761e7536c5d97e1b20f71c15)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 27178
> linux build successful:
> all
>
> Artifacts of first_bad build: https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-mast=
er-arm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Fbuild-51466b3fd2725b=
fb0de629f71c0854ff276d50ae%2F&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.=
com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7=
C0%7C0%7C637141884248254340&amp;sdata=3DuVVkJ4rPGBv%2BXKKkZexFkAqAiSnOVqKCT=
7gBQAqOzyc%3D&amp;reserved=3D0
> Artifacts of last_good build: https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-mast=
er-arm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Fbuild-eff682f83c9c20=
30761e7536c5d97e1b20f71c15%2F&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.=
com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7=
C0%7C0%7C637141884248254340&amp;sdata=3D%2FcvL9Gz7sY356nppr%2Bm3lBZXyEfjL4i=
8Scj9jl%2B4uko%3D&amp;reserved=3D0
> Build top page/logs: https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-n=
ext-allmodconfig%2F64%2F&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7=
C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C=
0%7C637141884248254340&amp;sdata=3DDb3qIJyrWtG0UbNBeTCTz%2B%2Fx5soebwHVDUH4=
4jaCkoQ%3D&amp;reserved=3D0
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae
> cd investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae
>
> git clone https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%=
2F%2Fgit.linaro.org%2Ftoolchain%2Fjenkins-scripts&amp;data=3D02%7C01%7CBhaw=
anpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;sdata=3DtiQjcHdqtq3D6MZ=
gY1%2FRic39eNlT%2Bs%2FsCwbUKnkStXc%3D&amp;reserved=3D0
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://nam11.safelinks.pro=
tection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-=
bisect-llvm-master-arm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Fmani=
fests%2Fbuild-baseline.sh&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%=
7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7=
C0%7C637141884248254340&amp;sdata=3DvODM1%2Foesmr1DsH9H3aXtHch6KvCKf%2FKUkF=
TWgXd9ww%3D&amp;reserved=3D0
> curl -o artifacts/manifests/build-parameters.sh https://nam11.safelinks.p=
rotection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kerne=
l-bisect-llvm-master-arm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Fma=
nifests%2Fbuild-parameters.sh&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.=
com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7=
C0%7C0%7C637141884248254340&amp;sdata=3DNLrQdL3NTQa5gt3GVCbG5qNGRrSVQ1iMVQQ=
HXSekA7E%3D&amp;reserved=3D0
> curl -o artifacts/test.sh https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-a=
rm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Ftest.sh&amp;data=3D02%7C=
01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd89=
61fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;sdata=3Dyxsqfo=
qZC%2FeCr3%2BB0y4hbPIlmkg0kcrZj0evuX2Dz64%3D&amp;reserved=3D0
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-basel=
ine.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach 51466b3fd2725bfb0de629f71c0854ff276d50ae
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach eff682f83c9c2030761e7536c5d97e1b20f71c15
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://nam11.safelinks.prote=
ction.outlook.com/?url=3Dhttps%3A%2F%2Fgit.linaro.org%2Ftoolchain%2Fci%2Fba=
se-artifacts.git%2Flog%2F%3Fh%3Dlinaro-local%2Fci%2Ftcwg_kernel%2Fllvm-mast=
er-arm-next-allmodconfig&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7=
C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C=
0%7C637141884248254340&amp;sdata=3DNv0jsDlPE1%2F%2BqNAloKmGuzOAvw8kBTGWp8cf=
XPUn7Tg%3D&amp;reserved=3D0
>
> Artifacts: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodc=
onfig%2F64%2Fartifact%2Fartifacts%2F&amp;data=3D02%7C01%7CBhawanpreet.Lakha=
%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994=
e183d%7C0%7C0%7C637141884248254340&amp;sdata=3DoMfd5m2yA78C%2BvVLB2v0PSpkMe=
M0Fi1vjroKzzTFLJg%3D&amp;reserved=3D0
> Build log: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodc=
onfig%2F64%2FconsoleText&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7=
C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C=
0%7C637141884248254340&amp;sdata=3DxB12meZh%2BXWiuJ7NNUDlwO1fIJ%2BMuRfQT1sd=
uw09YOk%3D&amp;reserved=3D0
>
> Full commit:
> <cut>
> commit 51466b3fd2725bfb0de629f71c0854ff276d50ae
> Author: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> Date:   Wed Sep 18 11:18:15 2019 -0400
>
>     drm/amd/display: Add execution and transition states for HDCP2.2
>
>     The module works like a state machine
>
>                                         +-------------+
>                                 ------> | Execution.c | ------
>                                 |       +-------------+       |
>                                 |                             V
>         +----+              +--------+                 +--------------+
>         | DM |    ----->    | Hdcp.c |  <------------  | Transition.c |
>         +----+    <-----    +--------+                 +--------------+
>
>     This patch adds the execution and transition files for 2.2
>
>     Signed-off-by: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
>     Reviewed-by: Harry Wentland <harry.wentland@amd.com>
>     Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
> ---
>  drivers/gpu/drm/amd/display/modules/hdcp/Makefile  |   3 +-
>  drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c    |  86 +-
>  drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h    | 127 +++
>  .../drm/amd/display/modules/hdcp/hdcp2_execution.c | 881 +++++++++++++++=
++++++
>  .../amd/display/modules/hdcp/hdcp2_transition.c    | 674 +++++++++++++++=
+
>  drivers/gpu/drm/amd/display/modules/inc/mod_hdcp.h |   2 +
>  6 files changed, 1764 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile b/drivers/=
gpu/drm/amd/display/modules/hdcp/Makefile
> index 1c3c6d47973a..904424da01b5 100644
> --- a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
> +++ b/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
> @@ -24,7 +24,8 @@
>  #
>
>  HDCP =3D hdcp_ddc.o hdcp_log.o hdcp_psp.o hdcp.o \
> -               hdcp1_execution.o hdcp1_transition.o
> +               hdcp1_execution.o hdcp1_transition.o \
> +               hdcp2_execution.o hdcp2_transition.o
>
>  AMD_DAL_HDCP =3D $(addprefix $(AMDDALPATH)/modules/hdcp/,$(HDCP))
>  #$(info ************  DAL-HDCP_MAKEFILE ************)
> diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c b/drivers/gp=
u/drm/amd/display/modules/hdcp/hdcp.c
> index d7ac445dec6f..a74812977963 100644
> --- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
> +++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
> @@ -37,24 +37,52 @@ static void push_error_status(struct mod_hdcp *hdcp,
>                 HDCP_ERROR_TRACE(hdcp, status);
>         }
>
> -       hdcp->connection.hdcp1_retry_count++;
> +       if (is_hdcp1(hdcp)) {
> +               hdcp->connection.hdcp1_retry_count++;
> +       } else if (is_hdcp2(hdcp)) {
> +               hdcp->connection.hdcp2_retry_count++;
> +       }
>  }
>
>  static uint8_t is_cp_desired_hdcp1(struct mod_hdcp *hdcp)
>  {
> -       int i, display_enabled =3D 0;
> +       int i, is_auth_needed =3D 0;
>
> -       /* if all displays on the link are disabled, hdcp is not desired =
*/
> +       /* if all displays on the link don't need authentication,
> +        * hdcp is not desired
> +        */
>         for (i =3D 0; i < MAX_NUM_OF_DISPLAYS; i++) {
>                 if (hdcp->connection.displays[i].state !=3D MOD_HDCP_DISP=
LAY_INACTIVE &&
>                                 !hdcp->connection.displays[i].adjust.disa=
ble) {
> -                       display_enabled =3D 1;
> +                       is_auth_needed =3D 1;
>                         break;
>                 }
>         }
>
>         return (hdcp->connection.hdcp1_retry_count < MAX_NUM_OF_ATTEMPTS)=
 &&
> -                       display_enabled && !hdcp->connection.link.adjust.=
hdcp1.disable;
> +                       is_auth_needed &&
> +                       !hdcp->connection.link.adjust.hdcp1.disable;
> +}
> +
> +static uint8_t is_cp_desired_hdcp2(struct mod_hdcp *hdcp)
> +{
> +       int i, is_auth_needed =3D 0;
> +
> +       /* if all displays on the link don't need authentication,
> +        * hdcp is not desired
> +        */
> +       for (i =3D 0; i < MAX_NUM_OF_DISPLAYS; i++) {
> +               if (hdcp->connection.displays[i].state !=3D MOD_HDCP_DISP=
LAY_INACTIVE &&
> +                               !hdcp->connection.displays[i].adjust.disa=
ble) {
> +                       is_auth_needed =3D 1;
> +                       break;
> +               }
> +       }
> +
> +       return (hdcp->connection.hdcp2_retry_count < MAX_NUM_OF_ATTEMPTS)=
 &&
> +                       is_auth_needed &&
> +                       !hdcp->connection.link.adjust.hdcp2.disable &&
> +                       !hdcp->connection.is_hdcp2_revoked;
>  }
>
>  static enum mod_hdcp_status execution(struct mod_hdcp *hdcp,
> @@ -82,6 +110,11 @@ static enum mod_hdcp_status execution(struct mod_hdcp=
 *hdcp,
>         } else if (is_in_hdcp1_dp_states(hdcp)) {
>                 status =3D mod_hdcp_hdcp1_dp_execution(hdcp,
>                                 event_ctx, &input->hdcp1);
> +       } else if (is_in_hdcp2_states(hdcp)) {
> +               status =3D mod_hdcp_hdcp2_execution(hdcp, event_ctx, &inp=
ut->hdcp2);
> +       } else if (is_in_hdcp2_dp_states(hdcp)) {
> +               status =3D mod_hdcp_hdcp2_dp_execution(hdcp,
> +                               event_ctx, &input->hdcp2);
>         }
>  out:
>         return status;
> @@ -99,7 +132,10 @@ static enum mod_hdcp_status transition(struct mod_hdc=
p *hdcp,
>
>         if (is_in_initialized_state(hdcp)) {
>                 if (is_dp_hdcp(hdcp))
> -                       if (is_cp_desired_hdcp1(hdcp)) {
> +                       if (is_cp_desired_hdcp2(hdcp)) {
> +                               callback_in_ms(0, output);
> +                               set_state_id(hdcp, output, D2_A0_DETERMIN=
E_RX_HDCP_CAPABLE);
> +                       } else if (is_cp_desired_hdcp1(hdcp)) {
>                                 callback_in_ms(0, output);
>                                 set_state_id(hdcp, output, D1_A0_DETERMIN=
E_RX_HDCP_CAPABLE);
>                         } else {
> @@ -107,7 +143,10 @@ static enum mod_hdcp_status transition(struct mod_hd=
cp *hdcp,
>                                 set_state_id(hdcp, output, HDCP_CP_NOT_DE=
SIRED);
>                         }
>                 else if (is_hdmi_dvi_sl_hdcp(hdcp))
> -                       if (is_cp_desired_hdcp1(hdcp)) {
> +                       if (is_cp_desired_hdcp2(hdcp)) {
> +                               callback_in_ms(0, output);
> +                               set_state_id(hdcp, output, H2_A0_KNOWN_HD=
CP2_CAPABLE_RX);
> +                       } else if (is_cp_desired_hdcp1(hdcp)) {
>                                 callback_in_ms(0, output);
>                                 set_state_id(hdcp, output, H1_A0_WAIT_FOR=
_ACTIVE_RX);
>                         } else {
> @@ -126,6 +165,12 @@ static enum mod_hdcp_status transition(struct mod_hd=
cp *hdcp,
>         } else if (is_in_hdcp1_dp_states(hdcp)) {
>                 status =3D mod_hdcp_hdcp1_dp_transition(hdcp,
>                                 event_ctx, &input->hdcp1, output);
> +       } else if (is_in_hdcp2_states(hdcp)) {
> +               status =3D mod_hdcp_hdcp2_transition(hdcp,
> +                               event_ctx, &input->hdcp2, output);
> +       } else if (is_in_hdcp2_dp_states(hdcp)) {
> +               status =3D mod_hdcp_hdcp2_dp_transition(hdcp,
> +                               event_ctx, &input->hdcp2, output);
>         } else {
>                 status =3D MOD_HDCP_STATUS_INVALID_STATE;
>         }
> @@ -139,9 +184,13 @@ static enum mod_hdcp_status reset_authentication(str=
uct mod_hdcp *hdcp,
>         enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
>
>         if (is_hdcp1(hdcp)) {
> -               if (hdcp->auth.trans_input.hdcp1.create_session !=3D UNKN=
OWN)
> +               if (hdcp->auth.trans_input.hdcp1.create_session !=3D UNKN=
OWN) {
> +                       /* TODO - update psp to unify create session fail=
ure
> +                        * recovery between hdcp1 and 2.
> +                        */
>                         mod_hdcp_hdcp1_destroy_session(hdcp);
>
> +               }
>                 if (hdcp->auth.trans_input.hdcp1.add_topology =3D=3D PASS=
) {
>                         status =3D mod_hdcp_remove_display_topology(hdcp)=
;
>                         if (status !=3D MOD_HDCP_STATUS_SUCCESS) {
> @@ -154,6 +203,27 @@ static enum mod_hdcp_status reset_authentication(str=
uct mod_hdcp *hdcp,
>                 memset(&hdcp->auth, 0, sizeof(struct mod_hdcp_authenticat=
ion));
>                 memset(&hdcp->state, 0, sizeof(struct mod_hdcp_state));
>                 set_state_id(hdcp, output, HDCP_INITIALIZED);
> +       } else if (is_hdcp2(hdcp)) {
> +               if (hdcp->auth.trans_input.hdcp2.create_session =3D=3D PA=
SS) {
> +                       status =3D mod_hdcp_hdcp2_destroy_session(hdcp);
> +                       if (status !=3D MOD_HDCP_STATUS_SUCCESS) {
> +                               output->callback_needed =3D 0;
> +                               output->watchdog_timer_needed =3D 0;
> +                               goto out;
> +                       }
> +               }
> +               if (hdcp->auth.trans_input.hdcp2.add_topology =3D=3D PASS=
) {
> +                       status =3D mod_hdcp_remove_display_topology(hdcp)=
;
> +                       if (status !=3D MOD_HDCP_STATUS_SUCCESS) {
> +                               output->callback_needed =3D 0;
> +                               output->watchdog_timer_needed =3D 0;
> +                               goto out;
> +                       }
> +               }
> +               HDCP_TOP_RESET_AUTH_TRACE(hdcp);
> +               memset(&hdcp->auth, 0, sizeof(struct mod_hdcp_authenticat=
ion));
> +               memset(&hdcp->state, 0, sizeof(struct mod_hdcp_state));
> +               set_state_id(hdcp, output, HDCP_INITIALIZED);
>         } else if (is_in_cp_not_desired_state(hdcp)) {
>                 status =3D mod_hdcp_remove_display_topology(hdcp);
>                 if (status !=3D MOD_HDCP_STATUS_SUCCESS) {
> diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h b/drivers/gp=
u/drm/amd/display/modules/hdcp/hdcp.h
> index d83f0ab1cadb..9887c5ea6d5f 100644
> --- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
> +++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
> @@ -44,11 +44,13 @@
>  #define BINFO_MAX_DEVS_EXCEEDED_MASK_DP                        0x0080
>  #define BINFO_MAX_CASCADE_EXCEEDED_MASK_DP             0x0800
>
> +#define VERSION_HDCP2_MASK                             0x04
>  #define RXSTATUS_MSG_SIZE_MASK                         0x03FF
>  #define RXSTATUS_READY_MASK                            0x0400
>  #define RXSTATUS_REAUTH_REQUEST_MASK                   0x0800
>  #define RXIDLIST_DEVICE_COUNT_LOWER_MASK               0xf0
>  #define RXIDLIST_DEVICE_COUNT_UPPER_MASK               0x01
> +#define RXCAPS_BYTE2_HDCP2_VERSION_DP                  0x02
>  #define RXCAPS_BYTE0_HDCP_CAPABLE_MASK_DP              0x02
>  #define RXSTATUS_READY_MASK_DP                         0x0001
>  #define RXSTATUS_H_P_AVAILABLE_MASK_DP                 0x0002
> @@ -92,8 +94,52 @@ struct mod_hdcp_transition_input_hdcp1 {
>         uint8_t stream_encryption_dp;
>  };
>
> +struct mod_hdcp_transition_input_hdcp2 {
> +       uint8_t hdcp2version_read;
> +       uint8_t hdcp2_capable_check;
> +       uint8_t add_topology;
> +       uint8_t create_session;
> +       uint8_t ake_init_prepare;
> +       uint8_t ake_init_write;
> +       uint8_t rxstatus_read;
> +       uint8_t ake_cert_available;
> +       uint8_t ake_cert_read;
> +       uint8_t ake_cert_validation;
> +       uint8_t stored_km_write;
> +       uint8_t no_stored_km_write;
> +       uint8_t h_prime_available;
> +       uint8_t h_prime_read;
> +       uint8_t pairing_available;
> +       uint8_t pairing_info_read;
> +       uint8_t h_prime_validation;
> +       uint8_t lc_init_prepare;
> +       uint8_t lc_init_write;
> +       uint8_t l_prime_available_poll;
> +       uint8_t l_prime_read;
> +       uint8_t l_prime_validation;
> +       uint8_t eks_prepare;
> +       uint8_t eks_write;
> +       uint8_t enable_encryption;
> +       uint8_t reauth_request_check;
> +       uint8_t rx_id_list_read;
> +       uint8_t device_count_check;
> +       uint8_t rx_id_list_validation;
> +       uint8_t repeater_auth_ack_write;
> +       uint8_t prepare_stream_manage;
> +       uint8_t stream_manage_write;
> +       uint8_t stream_ready_available;
> +       uint8_t stream_ready_read;
> +       uint8_t stream_ready_validation;
> +
> +       uint8_t rx_caps_read_dp;
> +       uint8_t content_stream_type_write;
> +       uint8_t link_integrity_check_dp;
> +       uint8_t stream_encryption_dp;
> +};
> +
>  union mod_hdcp_transition_input {
>         struct mod_hdcp_transition_input_hdcp1 hdcp1;
> +       struct mod_hdcp_transition_input_hdcp2 hdcp2;
>  };
>
>  struct mod_hdcp_message_hdcp1 {
> @@ -150,8 +196,10 @@ struct mod_hdcp_connection {
>         struct mod_hdcp_display displays[MAX_NUM_OF_DISPLAYS];
>         uint8_t is_repeater;
>         uint8_t is_km_stored;
> +       uint8_t is_hdcp2_revoked;
>         struct mod_hdcp_trace trace;
>         uint8_t hdcp1_retry_count;
> +       uint8_t hdcp2_retry_count;
>  };
>
>  /* contains values per authentication cycle */
> @@ -219,6 +267,50 @@ enum mod_hdcp_hdcp1_dp_state_id {
>         HDCP1_DP_STATE_END =3D D1_A7_READ_KSV_LIST,
>  };
>
> +enum mod_hdcp_hdcp2_state_id {
> +       HDCP2_STATE_START =3D HDCP1_DP_STATE_END,
> +       H2_A0_KNOWN_HDCP2_CAPABLE_RX,
> +       H2_A1_SEND_AKE_INIT,
> +       H2_A1_VALIDATE_AKE_CERT,
> +       H2_A1_SEND_NO_STORED_KM,
> +       H2_A1_READ_H_PRIME,
> +       H2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME,
> +       H2_A1_SEND_STORED_KM,
> +       H2_A1_VALIDATE_H_PRIME,
> +       H2_A2_LOCALITY_CHECK,
> +       H2_A3_EXCHANGE_KS_AND_TEST_FOR_REPEATER,
> +       H2_ENABLE_ENCRYPTION,
> +       H2_A5_AUTHENTICATED,
> +       H2_A6_WAIT_FOR_RX_ID_LIST,
> +       H2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK,
> +       H2_A9_SEND_STREAM_MANAGEMENT,
> +       H2_A9_VALIDATE_STREAM_READY,
> +       HDCP2_STATE_END =3D H2_A9_VALIDATE_STREAM_READY,
> +};
> +
> +enum mod_hdcp_hdcp2_dp_state_id {
> +       HDCP2_DP_STATE_START =3D HDCP2_STATE_END,
> +       D2_A0_DETERMINE_RX_HDCP_CAPABLE,
> +       D2_A1_SEND_AKE_INIT,
> +       D2_A1_VALIDATE_AKE_CERT,
> +       D2_A1_SEND_NO_STORED_KM,
> +       D2_A1_READ_H_PRIME,
> +       D2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME,
> +       D2_A1_SEND_STORED_KM,
> +       D2_A1_VALIDATE_H_PRIME,
> +       D2_A2_LOCALITY_CHECK,
> +       D2_A34_EXCHANGE_KS_AND_TEST_FOR_REPEATER,
> +       D2_SEND_CONTENT_STREAM_TYPE,
> +       D2_ENABLE_ENCRYPTION,
> +       D2_A5_AUTHENTICATED,
> +       D2_A6_WAIT_FOR_RX_ID_LIST,
> +       D2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK,
> +       D2_A9_SEND_STREAM_MANAGEMENT,
> +       D2_A9_VALIDATE_STREAM_READY,
> +       HDCP2_DP_STATE_END =3D D2_A9_VALIDATE_STREAM_READY,
> +       HDCP_STATE_END =3D HDCP2_DP_STATE_END,
> +};
> +
>  /* hdcp1 executions and transitions */
>  typedef enum mod_hdcp_status (*mod_hdcp_action)(struct mod_hdcp *hdcp);
>  uint8_t mod_hdcp_execute_and_set(
> @@ -239,6 +331,22 @@ enum mod_hdcp_status mod_hdcp_hdcp1_dp_transition(st=
ruct mod_hdcp *hdcp,
>         struct mod_hdcp_transition_input_hdcp1 *input,
>         struct mod_hdcp_output *output);
>
> +/* hdcp2 executions and transitions */
> +enum mod_hdcp_status mod_hdcp_hdcp2_execution(struct mod_hdcp *hdcp,
> +       struct mod_hdcp_event_context *event_ctx,
> +       struct mod_hdcp_transition_input_hdcp2 *input);
> +enum mod_hdcp_status mod_hdcp_hdcp2_dp_execution(struct mod_hdcp *hdcp,
> +       struct mod_hdcp_event_context *event_ctx,
> +       struct mod_hdcp_transition_input_hdcp2 *input);
> +enum mod_hdcp_status mod_hdcp_hdcp2_transition(struct mod_hdcp *hdcp,
> +       struct mod_hdcp_event_context *event_ctx,
> +       struct mod_hdcp_transition_input_hdcp2 *input,
> +       struct mod_hdcp_output *output);
> +enum mod_hdcp_status mod_hdcp_hdcp2_dp_transition(struct mod_hdcp *hdcp,
> +       struct mod_hdcp_event_context *event_ctx,
> +       struct mod_hdcp_transition_input_hdcp2 *input,
> +       struct mod_hdcp_output *output);
> +
>  /* log functions */
>  void mod_hdcp_dump_binary_message(uint8_t *msg, uint32_t msg_size,
>                 uint8_t *buf, uint32_t buf_size);
> @@ -289,6 +397,7 @@ enum mod_hdcp_status mod_hdcp_read_binfo(struct mod_h=
dcp *hdcp);
>  enum mod_hdcp_status mod_hdcp_write_aksv(struct mod_hdcp *hdcp);
>  enum mod_hdcp_status mod_hdcp_write_ainfo(struct mod_hdcp *hdcp);
>  enum mod_hdcp_status mod_hdcp_write_an(struct mod_hdcp *hdcp);
> +enum mod_hdcp_status mod_hdcp_read_hdcp2version(struct mod_hdcp *hdcp);
>  enum mod_hdcp_status mod_hdcp_read_rxcaps(struct mod_hdcp *hdcp);
>  enum mod_hdcp_status mod_hdcp_read_rxstatus(struct mod_hdcp *hdcp);
>  enum mod_hdcp_status mod_hdcp_read_ake_cert(struct mod_hdcp *hdcp);
> @@ -352,11 +461,28 @@ static inline uint8_t is_in_hdcp1_dp_states(struct =
mod_hdcp *hdcp)
>                         current_state(hdcp) <=3D HDCP1_DP_STATE_END);
>  }
>
> +static inline uint8_t is_in_hdcp2_states(struct mod_hdcp *hdcp)
> +{
> +       return (current_state(hdcp) > HDCP2_STATE_START &&
> +                       current_state(hdcp) <=3D HDCP2_STATE_END);
> +}
> +
> +static inline uint8_t is_in_hdcp2_dp_states(struct mod_hdcp *hdcp)
> +{
> +       return (current_state(hdcp) > HDCP2_DP_STATE_START &&
> +                       current_state(hdcp) <=3D HDCP2_DP_STATE_END);
> +}
> +
>  static inline uint8_t is_hdcp1(struct mod_hdcp *hdcp)
>  {
>         return (is_in_hdcp1_states(hdcp) || is_in_hdcp1_dp_states(hdcp));
>  }
>
> +static inline uint8_t is_hdcp2(struct mod_hdcp *hdcp)
> +{
> +       return (is_in_hdcp2_states(hdcp) || is_in_hdcp2_dp_states(hdcp));
> +}
> +
>  static inline uint8_t is_in_cp_not_desired_state(struct mod_hdcp *hdcp)
>  {
>         return current_state(hdcp) =3D=3D HDCP_CP_NOT_DESIRED;
> @@ -481,6 +607,7 @@ static inline struct mod_hdcp_display *get_empty_disp=
lay_container(
>  static inline void reset_retry_counts(struct mod_hdcp *hdcp)
>  {
>         hdcp->connection.hdcp1_retry_count =3D 0;
> +       hdcp->connection.hdcp2_retry_count =3D 0;
>  }
>
>  #endif /* HDCP_H_ */
> diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c b=
/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c
> new file mode 100644
> index 000000000000..c93c8098d972
> --- /dev/null
> +++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c
> @@ -0,0 +1,881 @@
> +/*
> + * Copyright 2018 Advanced Micro Devices, Inc.
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice shall be includ=
ed in
> + * all copies or substantial portions of the Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES=
 OR
> + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + * OTHER DEALINGS IN THE SOFTWARE.
> + *
> + * Authors: AMD
> + *
> + */
> +
> +#include "hdcp.h"
> +
> +static inline enum mod_hdcp_status check_receiver_id_list_ready(struct m=
od_hdcp *hdcp)
> +{
> +       uint8_t is_ready =3D 0;
> +
> +       if (is_dp_hdcp(hdcp))
> +               is_ready =3D (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_RE=
ADY_MASK_DP) ? 1 : 0;
> +       else
> +               is_ready =3D ((hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_R=
EADY_MASK) &&
> +                               (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS=
_MSG_SIZE_MASK)) ? 1 : 0;
> +       return is_ready ? MOD_HDCP_STATUS_SUCCESS :
> +                       MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY;
> +}
> +
> +static inline enum mod_hdcp_status check_hdcp2_capable(struct mod_hdcp *=
hdcp)
> +{
> +       enum mod_hdcp_status status;
> +
> +       if (is_dp_hdcp(hdcp))
> +               status =3D ((hdcp->auth.msg.hdcp2.rxcaps_dp[2] &
> +                                               RXCAPS_BYTE0_HDCP_CAPABLE=
_MASK_DP) &&
> +                               (hdcp->auth.msg.hdcp2.rxcaps_dp[0] =3D=3D
> +                                               RXCAPS_BYTE2_HDCP2_VERSIO=
N_DP)) ?
> +                               MOD_HDCP_STATUS_SUCCESS :
> +                               MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;
> +       else
> +               status =3D (hdcp->auth.msg.hdcp2.hdcp2version_hdmi & VERS=
ION_HDCP2_MASK) ?
> +                               MOD_HDCP_STATUS_SUCCESS :
> +                               MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;
> +       return status;
> +}
> +
> +static inline enum mod_hdcp_status check_reauthentication_request(
> +               struct mod_hdcp *hdcp)
> +{
> +       uint8_t ret =3D 0;
> +
> +       if (is_dp_hdcp(hdcp))
> +               ret =3D (hdcp->auth.msg.hdcp2.rxstatus &
> +                               RXSTATUS_REAUTH_REQUEST_MASK_DP) ?
> +                               MOD_HDCP_STATUS_HDCP2_REAUTH_REQUEST :
> +                               MOD_HDCP_STATUS_SUCCESS;
> +       else
> +               ret =3D (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_REAUTH_=
REQUEST_MASK) ?
> +                               MOD_HDCP_STATUS_HDCP2_REAUTH_REQUEST :
> +                               MOD_HDCP_STATUS_SUCCESS;
> +       return ret;
> +}
> +
> +static inline enum mod_hdcp_status check_link_integrity_failure_dp(
> +               struct mod_hdcp *hdcp)
> +{
> +       return (hdcp->auth.msg.hdcp2.rxstatus &
> +                       RXSTATUS_LINK_INTEGRITY_FAILURE_MASK_DP) ?
> +                       MOD_HDCP_STATUS_HDCP2_REAUTH_LINK_INTEGRITY_FAILU=
RE :
> +                       MOD_HDCP_STATUS_SUCCESS;
> +}
> +
> +static enum mod_hdcp_status check_ake_cert_available(struct mod_hdcp *hd=
cp)
> +{
> +       enum mod_hdcp_status status;
> +       uint16_t size;
> +
> +       if (is_dp_hdcp(hdcp)) {
> +               status =3D MOD_HDCP_STATUS_SUCCESS;
> +       } else {
> +               status =3D mod_hdcp_read_rxstatus(hdcp);
> +               if (status =3D=3D MOD_HDCP_STATUS_SUCCESS) {
> +                       size =3D hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS=
_MSG_SIZE_MASK;
> +                       status =3D (size =3D=3D sizeof(hdcp->auth.msg.hdc=
p2.ake_cert)) ?
> +                                       MOD_HDCP_STATUS_SUCCESS :
> +                                       MOD_HDCP_STATUS_HDCP2_AKE_CERT_PE=
NDING;
> +               }
> +       }
> +       return status;
> +}
> +
> +static enum mod_hdcp_status check_h_prime_available(struct mod_hdcp *hdc=
p)
> +{
> +       enum mod_hdcp_status status;
> +       uint8_t size;
> +
> +       status =3D mod_hdcp_read_rxstatus(hdcp);
> +       if (status !=3D MOD_HDCP_STATUS_SUCCESS)
> +               goto out;
> +
> +       if (is_dp_hdcp(hdcp)) {
> +               status =3D (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_H_P_=
AVAILABLE_MASK_DP) ?
> +                               MOD_HDCP_STATUS_SUCCESS :
> +                               MOD_HDCP_STATUS_HDCP2_H_PRIME_PENDING;
> +       } else {
> +               size =3D hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZ=
E_MASK;
> +               status =3D (size =3D=3D sizeof(hdcp->auth.msg.hdcp2.ake_h=
_prime)) ?
> +                               MOD_HDCP_STATUS_SUCCESS :
> +                               MOD_HDCP_STATUS_HDCP2_H_PRIME_PENDING;
> +       }
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status check_pairing_info_available(struct mod_hdcp=
 *hdcp)
> +{
> +       enum mod_hdcp_status status;
> +       uint8_t size;
> +
> +       status =3D mod_hdcp_read_rxstatus(hdcp);
> +       if (status !=3D MOD_HDCP_STATUS_SUCCESS)
> +               goto out;
> +
> +       if (is_dp_hdcp(hdcp)) {
> +               status =3D (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_PAIR=
ING_AVAILABLE_MASK_DP) ?
> +                               MOD_HDCP_STATUS_SUCCESS :
> +                               MOD_HDCP_STATUS_HDCP2_PAIRING_INFO_PENDIN=
G;
> +       } else {
> +               size =3D hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZ=
E_MASK;
> +               status =3D (size =3D=3D sizeof(hdcp->auth.msg.hdcp2.ake_p=
airing_info)) ?
> +                               MOD_HDCP_STATUS_SUCCESS :
> +                               MOD_HDCP_STATUS_HDCP2_PAIRING_INFO_PENDIN=
G;
> +       }
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status poll_l_prime_available(struct mod_hdcp *hdcp=
)
> +{
> +       enum mod_hdcp_status status;
> +       uint8_t size;
> +       uint16_t max_wait =3D 20000; // units of us
> +       uint16_t num_polls =3D 5;
> +       uint16_t wait_time =3D max_wait / num_polls;
> +
> +       if (is_dp_hdcp(hdcp))
> +               status =3D MOD_HDCP_STATUS_INVALID_OPERATION;
> +       else
> +               for (; num_polls; num_polls--) {
> +                       udelay(wait_time);
> +
> +                       status =3D mod_hdcp_read_rxstatus(hdcp);
> +                       if (status !=3D MOD_HDCP_STATUS_SUCCESS)
> +                               break;
> +
> +                       size =3D hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS=
_MSG_SIZE_MASK;
> +                       status =3D (size =3D=3D sizeof(hdcp->auth.msg.hdc=
p2.lc_l_prime)) ?
> +                                       MOD_HDCP_STATUS_SUCCESS :
> +                                       MOD_HDCP_STATUS_HDCP2_L_PRIME_PEN=
DING;
> +                       if (status =3D=3D MOD_HDCP_STATUS_SUCCESS)
> +                               break;
> +               }
> +       return status;
> +}
> +
> +static enum mod_hdcp_status check_stream_ready_available(struct mod_hdcp=
 *hdcp)
> +{
> +       enum mod_hdcp_status status;
> +       uint8_t size;
> +
> +       if (is_dp_hdcp(hdcp)) {
> +               status =3D MOD_HDCP_STATUS_INVALID_OPERATION;
> +       } else {
> +               status =3D mod_hdcp_read_rxstatus(hdcp);
> +               if (status !=3D MOD_HDCP_STATUS_SUCCESS)
> +                       goto out;
> +               size =3D hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZ=
E_MASK;
> +               status =3D (size =3D=3D sizeof(hdcp->auth.msg.hdcp2.repea=
ter_auth_stream_ready)) ?
> +                               MOD_HDCP_STATUS_SUCCESS :
> +                               MOD_HDCP_STATUS_HDCP2_STREAM_READY_PENDIN=
G;
> +       }
> +out:
> +       return status;
> +}
> +
> +static inline uint8_t get_device_count(struct mod_hdcp *hdcp)
> +{
> +       return ((hdcp->auth.msg.hdcp2.rx_id_list[2] & RXIDLIST_DEVICE_COU=
NT_LOWER_MASK) >> 4) +
> +               ((hdcp->auth.msg.hdcp2.rx_id_list[1] & RXIDLIST_DEVICE_CO=
UNT_UPPER_MASK) << 4);
> +}
> +
> +static enum mod_hdcp_status check_device_count(struct mod_hdcp *hdcp)
> +{
> +       /* device count must be greater than or equal to tracked hdcp dis=
plays */
> +       return (get_device_count(hdcp) < get_added_display_count(hdcp)) ?
> +                       MOD_HDCP_STATUS_HDCP2_DEVICE_COUNT_MISMATCH_FAILU=
RE :
> +                       MOD_HDCP_STATUS_SUCCESS;
> +}
> +
> +static uint8_t process_rxstatus(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input,
> +               enum mod_hdcp_status *status)
> +{
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_rxstatus,
> +                       &input->rxstatus_read, status,
> +                       hdcp, "rxstatus_read"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(check_reauthentication_request,
> +                       &input->reauth_request_check, status,
> +                       hdcp, "reauth_request_check"))
> +               goto out;
> +       if (is_dp_hdcp(hdcp)) {
> +               if (!mod_hdcp_execute_and_set(check_link_integrity_failur=
e_dp,
> +                               &input->link_integrity_check_dp, status,
> +                               hdcp, "link_integrity_check_dp"))
> +                       goto out;
> +       }
> +       if (hdcp->connection.is_repeater)
> +               if (check_receiver_id_list_ready(hdcp) =3D=3D
> +                               MOD_HDCP_STATUS_SUCCESS) {
> +                       HDCP_INPUT_PASS_TRACE(hdcp, "rx_id_list_ready");
> +                       event_ctx->rx_id_list_ready =3D 1;
> +                       if (is_dp_hdcp(hdcp))
> +                               hdcp->auth.msg.hdcp2.rx_id_list_size =3D
> +                                               sizeof(hdcp->auth.msg.hdc=
p2.rx_id_list);
> +                       else
> +                               hdcp->auth.msg.hdcp2.rx_id_list_size =3D
> +                                               hdcp->auth.msg.hdcp2.rxst=
atus & 0x3FF;
> +               }
> +out:
> +       return (*status =3D=3D MOD_HDCP_STATUS_SUCCESS);
> +}
> +
> +static enum mod_hdcp_status known_hdcp2_capable_rx(struct mod_hdcp *hdcp=
,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_hdcp2version,
> +                       &input->hdcp2version_read, &status,
> +                       hdcp, "hdcp2version_read"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(check_hdcp2_capable,
> +                       &input->hdcp2_capable_check, &status,
> +                       hdcp, "hdcp2_capable"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status send_ake_init(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_add_display_topology,
> +                       &input->add_topology, &status,
> +                       hdcp, "add_topology"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_create_session,
> +                       &input->create_session, &status,
> +                       hdcp, "create_session"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_ake_init,
> +                       &input->ake_init_prepare, &status,
> +                       hdcp, "ake_init_prepare"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_ake_init,
> +                       &input->ake_init_write, &status,
> +                       hdcp, "ake_init_write"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status validate_ake_cert(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_WATCHDOG_TIM=
EOUT) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (is_hdmi_dvi_sl_hdcp(hdcp))
> +               if (!mod_hdcp_execute_and_set(check_ake_cert_available,
> +                               &input->ake_cert_available, &status,
> +                               hdcp, "ake_cert_available"))
> +                       goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_ake_cert,
> +                       &input->ake_cert_read, &status,
> +                       hdcp, "ake_cert_read"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_ake_cert,
> +                       &input->ake_cert_validation, &status,
> +                       hdcp, "ake_cert_validation"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status send_no_stored_km(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_no_stored_km,
> +                       &input->no_stored_km_write, &status,
> +                       hdcp, "no_stored_km_write"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status read_h_prime(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_CPIRQ &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_WATCHDOG_TIM=
EOUT) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!mod_hdcp_execute_and_set(check_h_prime_available,
> +                       &input->h_prime_available, &status,
> +                       hdcp, "h_prime_available"))
> +               goto out;
> +
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_h_prime,
> +                       &input->h_prime_read, &status,
> +                       hdcp, "h_prime_read"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status read_pairing_info_and_validate_h_prime(
> +               struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_CPIRQ &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_WATCHDOG_TIM=
EOUT) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!mod_hdcp_execute_and_set(check_pairing_info_available,
> +                       &input->pairing_available, &status,
> +                       hdcp, "pairing_available"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_pairing_info,
> +                       &input->pairing_info_read, &status,
> +                       hdcp, "pairing_info_read"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_h_prime,
> +                       &input->h_prime_validation, &status,
> +                       hdcp, "h_prime_validation"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status send_stored_km(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_stored_km,
> +                       &input->stored_km_write, &status,
> +                       hdcp, "stored_km_write"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status validate_h_prime(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_CPIRQ &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_WATCHDOG_TIM=
EOUT) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!mod_hdcp_execute_and_set(check_h_prime_available,
> +                       &input->h_prime_available, &status,
> +                       hdcp, "h_prime_available"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_h_prime,
> +                       &input->h_prime_read, &status,
> +                       hdcp, "h_prime_read"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_h_prime,
> +                       &input->h_prime_validation, &status,
> +                       hdcp, "h_prime_validation"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status locality_check(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_lc_init,
> +                       &input->lc_init_prepare, &status,
> +                       hdcp, "lc_init_prepare"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_lc_init,
> +                       &input->lc_init_write, &status,
> +                        hdcp, "lc_init_write"))
> +               goto out;
> +       if (is_dp_hdcp(hdcp))
> +               udelay(16000);
> +       else
> +               if (!mod_hdcp_execute_and_set(poll_l_prime_available,
> +                               &input->l_prime_available_poll, &status,
> +                               hdcp, "l_prime_available_poll"))
> +                       goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_l_prime,
> +                       &input->l_prime_read, &status,
> +                       hdcp, "l_prime_read"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_l_prime,
> +                       &input->l_prime_validation, &status,
> +                       hdcp, "l_prime_validation"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status exchange_ks_and_test_for_repeater(struct mod=
_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_eks,
> +                       &input->eks_prepare, &status,
> +                       hdcp, "eks_prepare"))
> +               goto out;
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_eks,
> +                       &input->eks_write, &status,
> +                       hdcp, "eks_write"))
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status enable_encryption(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_CPIRQ) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +       if (event_ctx->event =3D=3D MOD_HDCP_EVENT_CPIRQ) {
> +               process_rxstatus(hdcp, event_ctx, input, &status);
> +               goto out;
> +       }
> +
> +       if (is_hdmi_dvi_sl_hdcp(hdcp)) {
> +               if (!process_rxstatus(hdcp, event_ctx, input, &status))
> +                       goto out;
> +               if (event_ctx->rx_id_list_ready)
> +                       goto out;
> +       }
> +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_enable_encryption,
> +                       &input->enable_encryption, &status,
> +                       hdcp, "enable_encryption"))
> +               goto out;
> +       if (is_dp_mst_hdcp(hdcp)) {
> +               if (!mod_hdcp_execute_and_set(
> +                               mod_hdcp_hdcp2_enable_dp_stream_encryptio=
n,
> +                               &input->stream_encryption_dp, &status,
> +                               hdcp, "stream_encryption_dp"))
> +                       goto out;
> +       }
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status authenticated(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_CPIRQ) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!process_rxstatus(hdcp, event_ctx, input, &status))
> +               goto out;
> +       if (event_ctx->rx_id_list_ready)
> +               goto out;
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status wait_for_rx_id_list(struct mod_hdcp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> +{
> +       enum mod_hdcp_status status =3D MOD_HDCP_STATUS_SUCCESS;
> +
> +       if (event_ctx->event !=3D MOD_HDCP_EVENT_CALLBACK &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_CPIRQ &&
> +                       event_ctx->event !=3D MOD_HDCP_EVENT_WATCHDOG_TIM=
EOUT) {
> +               event_ctx->unexpected_event =3D 1;
> +               goto out;
> +       }
> +
> +       if (!process_rxstatus(hdcp, event_ctx, input, &status))
> +               goto out;
> +       if (!event_ctx->rx_id_list_ready) {
> +               status =3D MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY;
> +               goto out;
> +       }
> +out:
> +       return status;
> +}
> +
> +static enum mod_hdcp_status verify_rx_id_list_and_send_ack(struct mod_hd=
cp *hdcp,
> +               struct mod_hdcp_event_context *event_ctx,
> +               struct mod_hdcp_transition_input_hdcp2 *input)
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://nam11.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fgroups.google.com%2Fd%2Fmsgid%2Fclang-b=
uilt-linux%2F1328215807.12067.1578548274951.JavaMail.javamailuser%2540local=
host&amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34=
708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371418842482543=
40&amp;sdata=3D%2FFpvRiR98XS%2FwXoJUAFScg64DrUzzzzPuYXss2SpKVU%3D&amp;reser=
ved=3D0.



--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM6PR12MB42367F181F3371D1CC4495F9F9390%40DM6PR12MB4236.na=
mprd12.prod.outlook.com.

--_000_DM6PR12MB42367F181F3371D1CC4495F9F9390DM6PR12MB4236namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<p style=3D"font-family:Arial;font-size:10pt;color:#0078D7;margin:15pt;" al=
ign=3D"Left">
[AMD Official Use Only - Internal Distribution Only]<br>
</p>
<br>
<div>
<div>Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If this is regarding the udelay() for arm only allowing 2ms. A solution for=
 this would be to call udelay in a loop. Does that work?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
udelay() is used here because we need the accuracy and cannot use msleep. P=
lease let me know thanks<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Bhawan<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Nick Desaulniers &lt;=
ndesaulniers@google.com&gt;<br>
<b>Sent:</b> January 9, 2020 12:40 PM<br>
<b>To:</b> Lakha, Bhawanpreet &lt;Bhawanpreet.Lakha@amd.com&gt;<br>
<b>Cc:</b> TCWG Validation &lt;tcwg-validation@linaro.org&gt;; Arnd Bergman=
n &lt;arnd@linaro.org&gt;; clang-built-linux &lt;clang-built-linux@googlegr=
oups.com&gt;; CI Notify &lt;ci_notify@linaro.org&gt;<br>
<b>Subject:</b> Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-ne=
xt-allmodconfig - Build # 64 - Successful!</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">&#43; Bhawanpreet.Lakha@amd.com<br>
<br>
Why does this report look familiar?<br>
<br>
On Wed, Jan 8, 2020 at 9:38 PM &lt;ci_notify@linaro.org&gt; wrote:<br>
&gt;<br>
&gt; Successfully identified regression in *linux* in CI configuration tcwg=
_kernel/llvm-master-arm-next-allmodconfig.&nbsp; So far, this commit has re=
gressed CI configurations:<br>
&gt;&nbsp; - tcwg_kernel/gnu-release-aarch64-next-allmodconfig<br>
&gt;&nbsp; - tcwg_kernel/gnu-release-aarch64-next-allyesconfig<br>
&gt;&nbsp; - tcwg_kernel/llvm-master-aarch64-next-allmodconfig<br>
&gt;&nbsp; - tcwg_kernel/llvm-master-aarch64-next-allyesconfig<br>
&gt;&nbsp; - tcwg_kernel/llvm-master-arm-next-allmodconfig<br>
&gt;&nbsp; - tcwg_kernel/llvm-release-aarch64-next-allmodconfig<br>
&gt;&nbsp; - tcwg_kernel/llvm-release-aarch64-next-allyesconfig<br>
&gt;&nbsp; - tcwg_kernel/llvm-release-arm-next-allmodconfig<br>
&gt;<br>
&gt; Culprit:<br>
&gt; &lt;cut&gt;<br>
&gt; commit 51466b3fd2725bfb0de629f71c0854ff276d50ae<br>
&gt; Author: Bhawanpreet Lakha &lt;Bhawanpreet.Lakha@amd.com&gt;<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; drm/amd/display: Add execution and transition =
states for HDCP2.2<br>
&gt; &lt;/cut&gt;<br>
&gt;<br>
&gt; First few errors in logs of first_bad:<br>
&gt; 00:06:36 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_exec=
ution.c:162:4: error: implicit declaration of function 'udelay' [-Werror,-W=
implicit-function-declaration]<br>
&gt; 00:06:36 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_exec=
ution.c:472:3: error: implicit declaration of function 'udelay' [-Werror,-W=
implicit-function-declaration]<br>
&gt; 00:06:36 make[4]: *** [drivers/gpu/drm/amd/amdgpu/../display/modules/h=
dcp/hdcp2_execution.o] Error 1<br>
&gt; 00:06:39 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2<br>
&gt; 00:07:33 make[2]: *** [drivers/gpu/drm] Error 2<br>
&gt; 00:07:33 make[1]: *** [drivers/gpu] Error 2<br>
&gt; 00:08:55 make: *** [drivers] Error 2<br>
&gt; Configuration details:<br>
&gt; rr[llvm_url]=3D&quot;https://nam11.safelinks.protection.outlook.com/?u=
rl=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project.git&amp;amp;data=3D02%7=
C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8=
961fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DR=
NfsyBGar76j0yWVjSeH369B%2FqhZHKjD0nlAKy05l3Q%3D&amp;amp;reserved=3D0&quot;<=
br>
&gt; rr[linux_url]=3D&quot;https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnex=
t%2Flinux-next.git&amp;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C7=
8bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%=
7C637141884248254340&amp;amp;sdata=3D%2F5%2FTu5HnIsbOgeVN30X2mZ%2FIpzs7KPgt=
s5b4y0%2B5%2BHQ%3D&amp;amp;reserved=3D0&quot;<br>
&gt; rr[linux_branch]=3D&quot;2646738520338211e74394857e36df7c455a8a91&quot=
;<br>
&gt;<br>
&gt; Results regressed to (for first_bad =3D=3D 51466b3fd2725bfb0de629f71c0=
854ff276d50ae)<br>
&gt; reset_artifacts:<br>
&gt; -10<br>
&gt; build_llvm:<br>
&gt; -1<br>
&gt; linux_n_obj:<br>
&gt; 19891<br>
&gt;<br>
&gt; from (for last_good =3D=3D eff682f83c9c2030761e7536c5d97e1b20f71c15)<b=
r>
&gt; reset_artifacts:<br>
&gt; -10<br>
&gt; build_llvm:<br>
&gt; -1<br>
&gt; linux_n_obj:<br>
&gt; 27178<br>
&gt; linux build successful:<br>
&gt; all<br>
&gt;<br>
&gt; Artifacts of first_bad build: <a href=3D"https://nam11.safelinks.prote=
ction.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bi=
sect-llvm-master-arm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Fbuild-=
51466b3fd2725bfb0de629f71c0854ff276d50ae%2F&amp;amp;data=3D02%7C01%7CBhawan=
preet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DuVVkJ4rPGBv%2=
BXKKkZexFkAqAiSnOVqKCT7gBQAqOzyc%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
artifact%2Fartifacts%2Fbuild-51466b3fd2725bfb0de629f71c0854ff276d50ae%2F&am=
p;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708=
d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&=
amp;amp;sdata=3DuVVkJ4rPGBv%2BXKKkZexFkAqAiSnOVqKCT7gBQAqOzyc%3D&amp;amp;re=
served=3D0</a><br>
&gt; Artifacts of last_good build: <a href=3D"https://nam11.safelinks.prote=
ction.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bi=
sect-llvm-master-arm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Fbuild-=
eff682f83c9c2030761e7536c5d97e1b20f71c15%2F&amp;amp;data=3D02%7C01%7CBhawan=
preet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3D%2FcvL9Gz7sY3=
56nppr%2Bm3lBZXyEfjL4i8Scj9jl%2B4uko%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
artifact%2Fartifacts%2Fbuild-eff682f83c9c2030761e7536c5d97e1b20f71c15%2F&am=
p;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708=
d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&=
amp;amp;sdata=3D%2FcvL9Gz7sY356nppr%2Bm3lBZXyEfjL4i8Scj9jl%2B4uko%3D&amp;am=
p;reserved=3D0</a><br>
&gt; Build top page/logs: <a href=3D"https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm=
-master-arm-next-allmodconfig%2F64%2F&amp;amp;data=3D02%7C01%7CBhawanpreet.=
Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a8=
2d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DDb3qIJyrWtG0UbNBeTC=
Tz%2B%2Fx5soebwHVDUH44jaCkoQ%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
&amp;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34=
708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371418842482543=
40&amp;amp;sdata=3DDb3qIJyrWtG0UbNBeTCTz%2B%2Fx5soebwHVDUH44jaCkoQ%3D&amp;a=
mp;reserved=3D0</a><br>
&gt;<br>
&gt; Reproduce builds:<br>
&gt; &lt;cut&gt;<br>
&gt; mkdir investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae<br>
&gt; cd investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae<br>
&gt;<br>
&gt; git clone <a href=3D"https://nam11.safelinks.protection.outlook.com/?u=
rl=3Dhttps%3A%2F%2Fgit.linaro.org%2Ftoolchain%2Fjenkins-scripts&amp;amp;dat=
a=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00c=
a%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;s=
data=3DtiQjcHdqtq3D6MZgY1%2FRic39eNlT%2Bs%2FsCwbUKnkStXc%3D&amp;amp;reserve=
d=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.lin=
aro.org%2Ftoolchain%2Fjenkins-scripts&amp;amp;data=3D02%7C01%7CBhawanpreet.=
Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a8=
2d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DtiQjcHdqtq3D6MZgY1%=
2FRic39eNlT%2Bs%2FsCwbUKnkStXc%3D&amp;amp;reserved=3D0</a><br>
&gt;<br>
&gt; mkdir -p artifacts/manifests<br>
&gt; curl -o artifacts/manifests/build-baseline.sh <a href=3D"https://nam11=
.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%=
2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2Fartifact%2Far=
tifacts%2Fmanifests%2Fbuild-baseline.sh&amp;amp;data=3D02%7C01%7CBhawanpree=
t.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11=
a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DvODM1%2Foesmr1DsH=
9H3aXtHch6KvCKf%2FKUkFTWgXd9ww%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
artifact%2Fartifacts%2Fmanifests%2Fbuild-baseline.sh&amp;amp;data=3D02%7C01=
%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961=
fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DvODM=
1%2Foesmr1DsH9H3aXtHch6KvCKf%2FKUkFTWgXd9ww%3D&amp;amp;reserved=3D0</a><br>
&gt; curl -o artifacts/manifests/build-parameters.sh <a href=3D"https://nam=
11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjo=
b%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2Fartifact%2F=
artifacts%2Fmanifests%2Fbuild-parameters.sh&amp;amp;data=3D02%7C01%7CBhawan=
preet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DNLrQdL3NTQa5g=
t3GVCbG5qNGRrSVQ1iMVQQHXSekA7E%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
artifact%2Fartifacts%2Fmanifests%2Fbuild-parameters.sh&amp;amp;data=3D02%7C=
01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd89=
61fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DNL=
rQdL3NTQa5gt3GVCbG5qNGRrSVQ1iMVQQHXSekA7E%3D&amp;amp;reserved=3D0</a><br>
&gt; curl -o artifacts/test.sh <a href=3D"https://nam11.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect=
-llvm-master-arm-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2Ftest.sh&am=
p;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708=
d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&=
amp;amp;sdata=3DyxsqfoqZC%2FeCr3%2BB0y4hbPIlmkg0kcrZj0evuX2Dz64%3D&amp;amp;=
reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
artifact%2Fartifacts%2Ftest.sh&amp;amp;data=3D02%7C01%7CBhawanpreet.Lakha%4=
0amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e1=
83d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DyxsqfoqZC%2FeCr3%2BB0y4hbP=
Ilmkg0kcrZj0evuX2Dz64%3D&amp;amp;reserved=3D0</a><br>
&gt; chmod &#43;x artifacts/test.sh<br>
&gt;<br>
&gt; # Reproduce the baseline build (build all pre-requisites)<br>
&gt; ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-ba=
seline.sh<br>
&gt;<br>
&gt; cd linux<br>
&gt;<br>
&gt; # Reproduce first_bad build<br>
&gt; git checkout --detach 51466b3fd2725bfb0de629f71c0854ff276d50ae<br>
&gt; ../artifacts/test.sh<br>
&gt;<br>
&gt; # Reproduce last_good build<br>
&gt; git checkout --detach eff682f83c9c2030761e7536c5d97e1b20f71c15<br>
&gt; ../artifacts/test.sh<br>
&gt;<br>
&gt; cd ..<br>
&gt; &lt;/cut&gt;<br>
&gt;<br>
&gt; History of pending regressions and results: <a href=3D"https://nam11.s=
afelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.linaro.org%2Ftoolc=
hain%2Fci%2Fbase-artifacts.git%2Flog%2F%3Fh%3Dlinaro-local%2Fci%2Ftcwg_kern=
el%2Fllvm-master-arm-next-allmodconfig&amp;amp;data=3D02%7C01%7CBhawanpreet=
.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a=
82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DNv0jsDlPE1%2F%2BqN=
AloKmGuzOAvw8kBTGWp8cfXPUn7Tg%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.lin=
aro.org%2Ftoolchain%2Fci%2Fbase-artifacts.git%2Flog%2F%3Fh%3Dlinaro-local%2=
Fci%2Ftcwg_kernel%2Fllvm-master-arm-next-allmodconfig&amp;amp;data=3D02%7C0=
1%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd896=
1fe4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DNv0=
jsDlPE1%2F%2BqNAloKmGuzOAvw8kBTGWp8cfXPUn7Tg%3D&amp;amp;reserved=3D0</a><br=
>
&gt;<br>
&gt; Artifacts: <a href=3D"https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-ar=
m-next-allmodconfig%2F64%2Fartifact%2Fartifacts%2F&amp;amp;data=3D02%7C01%7=
CBhawanpreet.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe=
4884e608e11a82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DoMfd5m=
2yA78C%2BvVLB2v0PSpkMeM0Fi1vjroKzzTFLJg%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
artifact%2Fartifacts%2F&amp;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.co=
m%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0=
%7C0%7C637141884248254340&amp;amp;sdata=3DoMfd5m2yA78C%2BvVLB2v0PSpkMeM0Fi1=
vjroKzzTFLJg%3D&amp;amp;reserved=3D0</a><br>
&gt; Build log: <a href=3D"https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-ar=
m-next-allmodconfig%2F64%2FconsoleText&amp;amp;data=3D02%7C01%7CBhawanpreet=
.Lakha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a=
82d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3DxB12meZh%2BXWiuJ7N=
NUDlwO1fIJ%2BMuRfQT1sduw09YOk%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.lina=
ro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-master-arm-next-allmodconfig%2F64%2F=
consoleText&amp;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C78bd01cd=
2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63714=
1884248254340&amp;amp;sdata=3DxB12meZh%2BXWiuJ7NNUDlwO1fIJ%2BMuRfQT1sduw09Y=
Ok%3D&amp;amp;reserved=3D0</a><br>
&gt;<br>
&gt; Full commit:<br>
&gt; &lt;cut&gt;<br>
&gt; commit 51466b3fd2725bfb0de629f71c0854ff276d50ae<br>
&gt; Author: Bhawanpreet Lakha &lt;Bhawanpreet.Lakha@amd.com&gt;<br>
&gt; Date:&nbsp;&nbsp; Wed Sep 18 11:18:15 2019 -0400<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; drm/amd/display: Add execution and transition =
states for HDCP2.2<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; The module works like a state machine<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &#43;-------------&#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ------&gt; | Execution.c | -=
-----<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; &#43;-------------&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;----&#43;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43=
;--------&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;--------------&#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | DM |&nbsp;&nbsp;&nbs=
p; -----&gt;&nbsp;&nbsp;&nbsp; | Hdcp.c |&nbsp; &lt;------------&nbsp; | Tr=
ansition.c |<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;----&#43;&nbsp;&n=
bsp;&nbsp; &lt;-----&nbsp;&nbsp;&nbsp; &#43;--------&#43;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; &#43;--------------&#43;<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; This patch adds the execution and transition f=
iles for 2.2<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; Signed-off-by: Bhawanpreet Lakha &lt;Bhawanpre=
et.Lakha@amd.com&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; Reviewed-by: Harry Wentland &lt;harry.wentland=
@amd.com&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; Signed-off-by: Alex Deucher &lt;alexander.deuc=
her@amd.com&gt;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/amd/display/modules/hdcp/Makefile&nbsp; |&nbsp;&=
nbsp; 3 &#43;-<br>
&gt;&nbsp; drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c&nbsp;&nbsp;&nbsp=
; |&nbsp; 86 &#43;-<br>
&gt;&nbsp; drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h&nbsp;&nbsp;&nbsp=
; | 127 &#43;&#43;&#43;<br>
&gt;&nbsp; .../drm/amd/display/modules/hdcp/hdcp2_execution.c | 881 &#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; .../amd/display/modules/hdcp/hdcp2_transition.c&nbsp;&nbsp;&nbsp=
; | 674 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;<br>
&gt;&nbsp; drivers/gpu/drm/amd/display/modules/inc/mod_hdcp.h |&nbsp;&nbsp;=
 2 &#43;<br>
&gt;&nbsp; 6 files changed, 1764 insertions(&#43;), 9 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile b/drive=
rs/gpu/drm/amd/display/modules/hdcp/Makefile<br>
&gt; index 1c3c6d47973a..904424da01b5 100644<br>
&gt; --- a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/amd/display/modules/hdcp/Makefile<br=
>
&gt; @@ -24,7 &#43;24,8 @@<br>
&gt;&nbsp; #<br>
&gt;<br>
&gt;&nbsp; HDCP =3D hdcp_ddc.o hdcp_log.o hdcp_psp.o hdcp.o \<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; hdcp1_execution.o hdcp1_transition.o<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; hdcp1_execution.o hdcp1_transition.o \<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; hdcp2_execution.o hdcp2_transition.o<br>
&gt;<br>
&gt;&nbsp; AMD_DAL_HDCP =3D $(addprefix $(AMDDALPATH)/modules/hdcp/,$(HDCP)=
)<br>
&gt;&nbsp; #$(info ************&nbsp; DAL-HDCP_MAKEFILE ************)<br>
&gt; diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c b/drivers=
/gpu/drm/amd/display/modules/hdcp/hdcp.c<br>
&gt; index d7ac445dec6f..a74812977963 100644<br>
&gt; --- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c<br>
&gt; @@ -37,24 &#43;37,52 @@ static void push_error_status(struct mod_hdcp =
*hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; HDCP_ERROR_TRACE(hdcp, status);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;connection.hdcp1_retry_=
count&#43;&#43;;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_hdcp1(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; hdcp-&gt;connection.hdcp1_retry_count&#43;&#43;;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_hdcp2(hdcp)) {=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; hdcp-&gt;connection.hdcp2_retry_count&#43;&#43;;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; }<br>
&gt;<br>
&gt;&nbsp; static uint8_t is_cp_desired_hdcp1(struct mod_hdcp *hdcp)<br>
&gt;&nbsp; {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, display_enabled =3D 0;<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, is_auth_needed =3D 0;=
<br>
&gt;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* if all displays on the link a=
re disabled, hdcp is not desired */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* if all displays on the li=
nk don't need authentication,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * hdcp is not desired<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; M=
AX_NUM_OF_DISPLAYS; i&#43;&#43;) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if (hdcp-&gt;connection.displays[i].state !=3D MO=
D_HDCP_DISPLAY_INACTIVE &amp;&amp;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !hdcp-&gt;connection.display=
s[i].adjust.disable) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display_ena=
bled =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; is_auth=
_needed =3D 1;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b=
reak;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (hdcp-&gt;conne=
ction.hdcp1_retry_count &lt; MAX_NUM_OF_ATTEMPTS) &amp;&amp;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display_ena=
bled &amp;&amp; !hdcp-&gt;connection.link.adjust.hdcp1.disable;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; is_auth=
_needed &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !hdcp-&=
gt;connection.link.adjust.hdcp1.disable;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static uint8_t is_cp_desired_hdcp2(struct mod_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, is_auth_needed =3D 0;=
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* if all displays on the li=
nk don't need authentication,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * hdcp is not desired<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; MAX_NUM=
_OF_DISPLAYS; i&#43;&#43;) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (hdcp-&gt;connection.displays[i].state !=3D MOD_HDCP=
_DISPLAY_INACTIVE &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !hdcp-&gt;connection.displays[i].a=
djust.disable) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; is_auth=
_needed =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (hdcp-&gt;connection.=
hdcp2_retry_count &lt; MAX_NUM_OF_ATTEMPTS) &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; is_auth=
_needed &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !hdcp-&=
gt;connection.link.adjust.hdcp2.disable &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !hdcp-&=
gt;connection.is_hdcp2_revoked;<br>
&gt;&nbsp; }<br>
&gt;<br>
&gt;&nbsp; static enum mod_hdcp_status execution(struct mod_hdcp *hdcp,<br>
&gt; @@ -82,6 &#43;110,11 @@ static enum mod_hdcp_status execution(struct m=
od_hdcp *hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_in_hdcp1=
_dp_states(hdcp)) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_hdcp1_dp_execution(hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_ctx, &amp;input-&gt;hd=
cp1);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_in_hdcp2_state=
s(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_hdcp2_execution(hdcp, event_ctx, &a=
mp;input-&gt;hdcp2);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_in_hdcp2_dp_st=
ates(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_hdcp2_dp_execution(hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_ctx, &amp;input-&gt;hdcp2);<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; out:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; @@ -99,7 &#43;132,10 @@ static enum mod_hdcp_status transition(struct =
mod_hdcp *hdcp,<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_in_initialized_=
state(hdcp)) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp))<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_cp_d=
esired_hdcp1(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_=
cp_desired_hdcp2(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; callback_in_ms(0, output);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set_state_id(hdcp, output, D2_A0_D=
ETERMINE_RX_HDCP_CAPABLE);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else =
if (is_cp_desired_hdcp1(hdcp)) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; callback_in_ms(0, output);<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set_state_id(hdcp, output, D=
1_A0_DETERMINE_RX_HDCP_CAPABLE);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }=
 else {<br>
&gt; @@ -107,7 &#43;143,10 @@ static enum mod_hdcp_status transition(struct=
 mod_hdcp *hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set_state_id(hdcp, output, H=
DCP_CP_NOT_DESIRED);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }=
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; else if (is_hdmi_dvi_sl_hdcp(hdcp))<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_cp_d=
esired_hdcp1(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_=
cp_desired_hdcp2(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; callback_in_ms(0, output);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set_state_id(hdcp, output, H2_A0_K=
NOWN_HDCP2_CAPABLE_RX);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else =
if (is_cp_desired_hdcp1(hdcp)) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; callback_in_ms(0, output);<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set_state_id(hdcp, output, H=
1_A0_WAIT_FOR_ACTIVE_RX);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }=
 else {<br>
&gt; @@ -126,6 &#43;165,12 @@ static enum mod_hdcp_status transition(struct=
 mod_hdcp *hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_in_hdcp1=
_dp_states(hdcp)) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_hdcp1_dp_transition(hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_ctx, &amp;input-&gt;hd=
cp1, output);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_in_hdcp2_state=
s(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_hdcp2_transition(hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_ctx, &amp;input-&gt;hdcp2, o=
utput);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_in_hdcp2_dp_st=
ates(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_hdcp2_dp_transition(hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_ctx, &amp;input-&gt;hdcp2, o=
utput);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; status =3D MOD_HDCP_STATUS_INVALID_STATE;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; @@ -139,9 &#43;184,13 @@ static enum mod_hdcp_status reset_authenticat=
ion(struct mod_hdcp *hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status s=
tatus =3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_hdcp1(hdcp)) {<=
br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; if (hdcp-&gt;auth.trans_input.hdcp1.create_session !=3D UNK=
NOWN)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (hdcp-&gt;auth.trans_input.hdcp1.create_session !=3D=
 UNKNOWN) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* TODO=
 - update psp to unify create session failure<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
 recovery between hdcp1 and 2.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
/<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m=
od_hdcp_hdcp1_destroy_session(hdcp);<br>
&gt;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if (hdcp-&gt;auth.trans_input.hdcp1.add_topology =
=3D=3D PASS) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s=
tatus =3D mod_hdcp_remove_display_topology(hdcp);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i=
f (status !=3D MOD_HDCP_STATUS_SUCCESS) {<br>
&gt; @@ -154,6 &#43;203,27 @@ static enum mod_hdcp_status reset_authenticat=
ion(struct mod_hdcp *hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;hdcp-&gt;auth, 0, sizeof(struct mod_h=
dcp_authentication));<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;hdcp-&gt;state, 0, sizeof(struct mod_=
hdcp_state));<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; set_state_id(hdcp, output, HDCP_INITIALIZED);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_hdcp2(hdcp)) {=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (hdcp-&gt;auth.trans_input.hdcp2.create_session =3D=
=3D PASS) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =
=3D mod_hdcp_hdcp2_destroy_session(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (sta=
tus !=3D MOD_HDCP_STATUS_SUCCESS) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; output-&gt;callback_needed =3D 0;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; output-&gt;watchdog_timer_needed =
=3D 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (hdcp-&gt;auth.trans_input.hdcp2.add_topology =3D=3D=
 PASS) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =
=3D mod_hdcp_remove_display_topology(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (sta=
tus !=3D MOD_HDCP_STATUS_SUCCESS) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; output-&gt;callback_needed =3D 0;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; output-&gt;watchdog_timer_needed =
=3D 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; HDCP_TOP_RESET_AUTH_TRACE(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; memset(&amp;hdcp-&gt;auth, 0, sizeof(struct mod_hdcp_au=
thentication));<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; memset(&amp;hdcp-&gt;state, 0, sizeof(struct mod_hdcp_s=
tate));<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; set_state_id(hdcp, output, HDCP_INITIALIZED);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (is_in_cp_no=
t_desired_state(hdcp)) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_remove_display_topology(hdcp)=
;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if (status !=3D MOD_HDCP_STATUS_SUCCESS) {<br>
&gt; diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h b/drivers=
/gpu/drm/amd/display/modules/hdcp/hdcp.h<br>
&gt; index d83f0ab1cadb..9887c5ea6d5f 100644<br>
&gt; --- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h<br>
&gt; @@ -44,11 &#43;44,13 @@<br>
&gt;&nbsp; #define BINFO_MAX_DEVS_EXCEEDED_MASK_DP&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0080<br>
&gt;&nbsp; #define BINFO_MAX_CASCADE_EXCEEDED_MASK_DP&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0800<br>
&gt;<br>
&gt; &#43;#define VERSION_HDCP2_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x04<br>
&gt;&nbsp; #define RXSTATUS_MSG_SIZE_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x03FF<br>
&gt;&nbsp; #define RXSTATUS_READY_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0400<br>
&gt;&nbsp; #define RXSTATUS_REAUTH_REQUEST_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0x0800<br>
&gt;&nbsp; #define RXIDLIST_DEVICE_COUNT_LOWER_MASK&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0xf0<br>
&gt;&nbsp; #define RXIDLIST_DEVICE_COUNT_UPPER_MASK&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x01<br>
&gt; &#43;#define RXCAPS_BYTE2_HDCP2_VERSION_DP&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0x02<br>
&gt;&nbsp; #define RXCAPS_BYTE0_HDCP_CAPABLE_MASK_DP&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x02<br>
&gt;&nbsp; #define RXSTATUS_READY_MASK_DP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0001<br>
&gt;&nbsp; #define RXSTATUS_H_P_AVAILABLE_MASK_DP&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x00=
02<br>
&gt; @@ -92,8 &#43;94,52 @@ struct mod_hdcp_transition_input_hdcp1 {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t stream_encrypt=
ion_dp;<br>
&gt;&nbsp; };<br>
&gt;<br>
&gt; &#43;struct mod_hdcp_transition_input_hdcp2 {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t hdcp2version_read;<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t hdcp2_capable_check;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t add_topology;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t create_session;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t ake_init_prepare;<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t ake_init_write;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t rxstatus_read;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t ake_cert_available;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t ake_cert_read;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t ake_cert_validation;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t stored_km_write;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t no_stored_km_write;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t h_prime_available;<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t h_prime_read;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t pairing_available;<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t pairing_info_read;<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t h_prime_validation;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t lc_init_prepare;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t lc_init_write;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t l_prime_available_po=
ll;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t l_prime_read;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t l_prime_validation;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t eks_prepare;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t eks_write;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t enable_encryption;<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t reauth_request_check=
;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t rx_id_list_read;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t device_count_check;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t rx_id_list_validatio=
n;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t repeater_auth_ack_wr=
ite;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t prepare_stream_manag=
e;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t stream_manage_write;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t stream_ready_availab=
le;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t stream_ready_read;<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t stream_ready_validat=
ion;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t rx_caps_read_dp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t content_stream_type_=
write;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t link_integrity_check=
_dp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t stream_encryption_dp=
;<br>
&gt; &#43;};<br>
&gt; &#43;<br>
&gt;&nbsp; union mod_hdcp_transition_input {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transi=
tion_input_hdcp1 hdcp1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_i=
nput_hdcp2 hdcp2;<br>
&gt;&nbsp; };<br>
&gt;<br>
&gt;&nbsp; struct mod_hdcp_message_hdcp1 {<br>
&gt; @@ -150,8 &#43;196,10 @@ struct mod_hdcp_connection {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_displa=
y displays[MAX_NUM_OF_DISPLAYS];<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t is_repeater;<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t is_km_stored;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t is_hdcp2_revoked;<br=
>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_trace =
trace;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t hdcp1_retry_co=
unt;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t hdcp2_retry_count;<b=
r>
&gt;&nbsp; };<br>
&gt;<br>
&gt;&nbsp; /* contains values per authentication cycle */<br>
&gt; @@ -219,6 &#43;267,50 @@ enum mod_hdcp_hdcp1_dp_state_id {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDCP1_DP_STATE_END =3D=
 D1_A7_READ_KSV_LIST,<br>
&gt;&nbsp; };<br>
&gt;<br>
&gt; &#43;enum mod_hdcp_hdcp2_state_id {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDCP2_STATE_START =3D HDCP1_=
DP_STATE_END,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A0_KNOWN_HDCP2_CAPABLE_RX=
,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A1_SEND_AKE_INIT,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A1_VALIDATE_AKE_CERT,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A1_SEND_NO_STORED_KM,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A1_READ_H_PRIME,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A1_READ_PAIRING_INFO_AND_=
VALIDATE_H_PRIME,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A1_SEND_STORED_KM,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A1_VALIDATE_H_PRIME,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A2_LOCALITY_CHECK,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A3_EXCHANGE_KS_AND_TEST_F=
OR_REPEATER,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_ENABLE_ENCRYPTION,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A5_AUTHENTICATED,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A6_WAIT_FOR_RX_ID_LIST,<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A78_VERIFY_RX_ID_LIST_AND=
_SEND_ACK,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A9_SEND_STREAM_MANAGEMENT=
,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H2_A9_VALIDATE_STREAM_READY,=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDCP2_STATE_END =3D H2_A9_VA=
LIDATE_STREAM_READY,<br>
&gt; &#43;};<br>
&gt; &#43;<br>
&gt; &#43;enum mod_hdcp_hdcp2_dp_state_id {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDCP2_DP_STATE_START =3D HDC=
P2_STATE_END,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A0_DETERMINE_RX_HDCP_CAPA=
BLE,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A1_SEND_AKE_INIT,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A1_VALIDATE_AKE_CERT,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A1_SEND_NO_STORED_KM,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A1_READ_H_PRIME,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A1_READ_PAIRING_INFO_AND_=
VALIDATE_H_PRIME,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A1_SEND_STORED_KM,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A1_VALIDATE_H_PRIME,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A2_LOCALITY_CHECK,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A34_EXCHANGE_KS_AND_TEST_=
FOR_REPEATER,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_SEND_CONTENT_STREAM_TYPE,=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_ENABLE_ENCRYPTION,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A5_AUTHENTICATED,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A6_WAIT_FOR_RX_ID_LIST,<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A78_VERIFY_RX_ID_LIST_AND=
_SEND_ACK,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A9_SEND_STREAM_MANAGEMENT=
,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D2_A9_VALIDATE_STREAM_READY,=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDCP2_DP_STATE_END =3D D2_A9=
_VALIDATE_STREAM_READY,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDCP_STATE_END =3D HDCP2_DP_=
STATE_END,<br>
&gt; &#43;};<br>
&gt; &#43;<br>
&gt;&nbsp; /* hdcp1 executions and transitions */<br>
&gt;&nbsp; typedef enum mod_hdcp_status (*mod_hdcp_action)(struct mod_hdcp =
*hdcp);<br>
&gt;&nbsp; uint8_t mod_hdcp_execute_and_set(<br>
&gt; @@ -239,6 &#43;331,22 @@ enum mod_hdcp_status mod_hdcp_hdcp1_dp_transi=
tion(struct mod_hdcp *hdcp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transi=
tion_input_hdcp1 *input,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_output=
 *output);<br>
&gt;<br>
&gt; &#43;/* hdcp2 executions and transitions */<br>
&gt; &#43;enum mod_hdcp_status mod_hdcp_hdcp2_execution(struct mod_hdcp *hd=
cp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_contex=
t *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_i=
nput_hdcp2 *input);<br>
&gt; &#43;enum mod_hdcp_status mod_hdcp_hdcp2_dp_execution(struct mod_hdcp =
*hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_contex=
t *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_i=
nput_hdcp2 *input);<br>
&gt; &#43;enum mod_hdcp_status mod_hdcp_hdcp2_transition(struct mod_hdcp *h=
dcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_contex=
t *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_i=
nput_hdcp2 *input,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_output *outp=
ut);<br>
&gt; &#43;enum mod_hdcp_status mod_hdcp_hdcp2_dp_transition(struct mod_hdcp=
 *hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_contex=
t *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_i=
nput_hdcp2 *input,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mod_hdcp_output *outp=
ut);<br>
&gt; &#43;<br>
&gt;&nbsp; /* log functions */<br>
&gt;&nbsp; void mod_hdcp_dump_binary_message(uint8_t *msg, uint32_t msg_siz=
e,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t *buf, uint32_t buf_size);<br>
&gt; @@ -289,6 &#43;397,7 @@ enum mod_hdcp_status mod_hdcp_read_binfo(struc=
t mod_hdcp *hdcp);<br>
&gt;&nbsp; enum mod_hdcp_status mod_hdcp_write_aksv(struct mod_hdcp *hdcp);=
<br>
&gt;&nbsp; enum mod_hdcp_status mod_hdcp_write_ainfo(struct mod_hdcp *hdcp)=
;<br>
&gt;&nbsp; enum mod_hdcp_status mod_hdcp_write_an(struct mod_hdcp *hdcp);<b=
r>
&gt; &#43;enum mod_hdcp_status mod_hdcp_read_hdcp2version(struct mod_hdcp *=
hdcp);<br>
&gt;&nbsp; enum mod_hdcp_status mod_hdcp_read_rxcaps(struct mod_hdcp *hdcp)=
;<br>
&gt;&nbsp; enum mod_hdcp_status mod_hdcp_read_rxstatus(struct mod_hdcp *hdc=
p);<br>
&gt;&nbsp; enum mod_hdcp_status mod_hdcp_read_ake_cert(struct mod_hdcp *hdc=
p);<br>
&gt; @@ -352,11 &#43;461,28 @@ static inline uint8_t is_in_hdcp1_dp_states(=
struct mod_hdcp *hdcp)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c=
urrent_state(hdcp) &lt;=3D HDCP1_DP_STATE_END);<br>
&gt;&nbsp; }<br>
&gt;<br>
&gt; &#43;static inline uint8_t is_in_hdcp2_states(struct mod_hdcp *hdcp)<b=
r>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (current_state(hdcp) =
&gt; HDCP2_STATE_START &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; current=
_state(hdcp) &lt;=3D HDCP2_STATE_END);<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static inline uint8_t is_in_hdcp2_dp_states(struct mod_hdcp *hdcp=
)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (current_state(hdcp) =
&gt; HDCP2_DP_STATE_START &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; current=
_state(hdcp) &lt;=3D HDCP2_DP_STATE_END);<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; static inline uint8_t is_hdcp1(struct mod_hdcp *hdcp)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (is_in_hdcp1_st=
ates(hdcp) || is_in_hdcp1_dp_states(hdcp));<br>
&gt;&nbsp; }<br>
&gt;<br>
&gt; &#43;static inline uint8_t is_hdcp2(struct mod_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (is_in_hdcp2_states(h=
dcp) || is_in_hdcp2_dp_states(hdcp));<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; static inline uint8_t is_in_cp_not_desired_state(struct mod_hdcp=
 *hdcp)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return current_state(h=
dcp) =3D=3D HDCP_CP_NOT_DESIRED;<br>
&gt; @@ -481,6 &#43;607,7 @@ static inline struct mod_hdcp_display *get_emp=
ty_display_container(<br>
&gt;&nbsp; static inline void reset_retry_counts(struct mod_hdcp *hdcp)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;connection.hd=
cp1_retry_count =3D 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;connection.hdcp2_re=
try_count =3D 0;<br>
&gt;&nbsp; }<br>
&gt;<br>
&gt;&nbsp; #endif /* HDCP_H_ */<br>
&gt; diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.=
c b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c<br>
&gt; new file mode 100644<br>
&gt; index 000000000000..c93c8098d972<br>
&gt; --- /dev/null<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execu=
tion.c<br>
&gt; @@ -0,0 &#43;1,881 @@<br>
&gt; &#43;/*<br>
&gt; &#43; * Copyright 2018 Advanced Micro Devices, Inc.<br>
&gt; &#43; *<br>
&gt; &#43; * Permission is hereby granted, free of charge, to any person ob=
taining a<br>
&gt; &#43; * copy of this software and associated documentation files (the =
&quot;Software&quot;),<br>
&gt; &#43; * to deal in the Software without restriction, including without=
 limitation<br>
&gt; &#43; * the rights to use, copy, modify, merge, publish, distribute, s=
ublicense,<br>
&gt; &#43; * and/or sell copies of the Software, and to permit persons to w=
hom the<br>
&gt; &#43; * Software is furnished to do so, subject to the following condi=
tions:<br>
&gt; &#43; *<br>
&gt; &#43; * The above copyright notice and this permission notice shall be=
 included in<br>
&gt; &#43; * all copies or substantial portions of the Software.<br>
&gt; &#43; *<br>
&gt; &#43; * THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY O=
F ANY KIND, EXPRESS OR<br>
&gt; &#43; * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHA=
NTABILITY,<br>
&gt; &#43; * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.&nbsp; IN=
 NO EVENT SHALL<br>
&gt; &#43; * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, =
DAMAGES OR<br>
&gt; &#43; * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTH=
ERWISE,<br>
&gt; &#43; * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE=
 USE OR<br>
&gt; &#43; * OTHER DEALINGS IN THE SOFTWARE.<br>
&gt; &#43; *<br>
&gt; &#43; * Authors: AMD<br>
&gt; &#43; *<br>
&gt; &#43; */<br>
&gt; &#43;<br>
&gt; &#43;#include &quot;hdcp.h&quot;<br>
&gt; &#43;<br>
&gt; &#43;static inline enum mod_hdcp_status check_receiver_id_list_ready(s=
truct mod_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t is_ready =3D 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; is_ready =3D (hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RX=
STATUS_READY_MASK_DP) ? 1 : 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; is_ready =3D ((hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; R=
XSTATUS_READY_MASK) &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (hdcp-&gt;auth.msg.hdcp2.rxstatus =
&amp; RXSTATUS_MSG_SIZE_MASK)) ? 1 : 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return is_ready ? MOD_HDCP_S=
TATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDC=
P_STATUS_HDCP2_RX_ID_LIST_NOT_READY;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static inline enum mod_hdcp_status check_hdcp2_capable(struct mod=
_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status;=
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D ((hdcp-&gt;auth.msg.hdcp2.rxcaps_dp[2] &amp;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RXCAPS_BYTE0_=
HDCP_CAPABLE_MASK_DP) &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (hdcp-&gt;auth.msg.hdcp2.rxcaps_dp=
[0] =3D=3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RXCAPS_BYTE2_=
HDCP2_VERSION_DP)) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D (hdcp-&gt;auth.msg.hdcp2.hdcp2version_hdmi &=
amp; VERSION_HDCP2_MASK) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static inline enum mod_hdcp_status check_reauthentication_request=
(<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t ret =3D 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ret =3D (hdcp-&gt;auth.msg.hdcp2.rxstatus &amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RXSTATUS_REAUTH_REQUEST_MASK_DP) ?=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_REAUTH_REQUE=
ST :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ret =3D (hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXSTATU=
S_REAUTH_REQUEST_MASK) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_REAUTH_REQUE=
ST :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static inline enum mod_hdcp_status check_link_integrity_failure_d=
p(<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (hdcp-&gt;auth.msg.hd=
cp2.rxstatus &amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RXSTATU=
S_LINK_INTEGRITY_FAILURE_MASK_DP) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDC=
P_STATUS_HDCP2_REAUTH_LINK_INTEGRITY_FAILURE :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDC=
P_STATUS_SUCCESS;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status check_ake_cert_available(struct mod_h=
dcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint16_t size;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_read_rxstatus(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (status =3D=3D MOD_HDCP_STATUS_SUCCESS) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =
=3D hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXSTATUS_MSG_SIZE_MASK;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =
=3D (size =3D=3D sizeof(hdcp-&gt;auth.msg.hdcp2.ake_cert)) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_AKE_CERT_PENDING;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status check_h_prime_available(struct mod_hd=
cp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t size;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_read_rxs=
tatus(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (status !=3D MOD_HDCP_STA=
TUS_SUCCESS)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D (hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXST=
ATUS_H_P_AVAILABLE_MASK_DP) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_H_PRIME_PEND=
ING;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; size =3D hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXSTATU=
S_MSG_SIZE_MASK;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D (size =3D=3D sizeof(hdcp-&gt;auth.msg.hdcp2.=
ake_h_prime)) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_H_PRIME_PEND=
ING;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status check_pairing_info_available(struct m=
od_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t size;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_read_rxs=
tatus(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (status !=3D MOD_HDCP_STA=
TUS_SUCCESS)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D (hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXST=
ATUS_PAIRING_AVAILABLE_MASK_DP) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_PAIRING_INFO=
_PENDING;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; size =3D hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXSTATU=
S_MSG_SIZE_MASK;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D (size =3D=3D sizeof(hdcp-&gt;auth.msg.hdcp2.=
ake_pairing_info)) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_PAIRING_INFO=
_PENDING;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status poll_l_prime_available(struct mod_hdc=
p *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t size;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint16_t max_wait =3D 20000;=
 // units of us<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint16_t num_polls =3D 5;<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint16_t wait_time =3D max_w=
ait / num_polls;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D MOD_HDCP_STATUS_INVALID_OPERATION;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; for (; num_polls; num_polls--) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; udelay(=
wait_time);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =
=3D mod_hdcp_read_rxstatus(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (sta=
tus !=3D MOD_HDCP_STATUS_SUCCESS)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =
=3D hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXSTATUS_MSG_SIZE_MASK;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =
=3D (size =3D=3D sizeof(hdcp-&gt;auth.msg.hdcp2.lc_l_prime)) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_L_PRIME_PENDING;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (sta=
tus =3D=3D MOD_HDCP_STATUS_SUCCESS)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status check_stream_ready_available(struct m=
od_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t size;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D MOD_HDCP_STATUS_INVALID_OPERATION;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D mod_hdcp_read_rxstatus(hdcp);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (status !=3D MOD_HDCP_STATUS_SUCCESS)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto ou=
t;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; size =3D hdcp-&gt;auth.msg.hdcp2.rxstatus &amp; RXSTATU=
S_MSG_SIZE_MASK;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D (size =3D=3D sizeof(hdcp-&gt;auth.msg.hdcp2.=
repeater_auth_stream_ready)) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_HDCP2_STREAM_READY=
_PENDING;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static inline uint8_t get_device_count(struct mod_hdcp *hdcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ((hdcp-&gt;auth.msg.h=
dcp2.rx_id_list[2] &amp; RXIDLIST_DEVICE_COUNT_LOWER_MASK) &gt;&gt; 4) &#43=
;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ((hdcp-&gt;auth.msg.hdcp2.rx_id_list[1] &amp; RXIDLIST_=
DEVICE_COUNT_UPPER_MASK) &lt;&lt; 4);<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status check_device_count(struct mod_hdcp *h=
dcp)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* device count must be grea=
ter than or equal to tracked hdcp displays */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (get_device_count(hdc=
p) &lt; get_added_display_count(hdcp)) ?<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDC=
P_STATUS_HDCP2_DEVICE_COUNT_MISMATCH_FAILURE :<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDC=
P_STATUS_SUCCESS;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static uint8_t process_rxstatus(struct mod_hdcp *hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status *status)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_read_rxstatus,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;rxstatus_read, status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;rxstatus_read&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(check_reauthentication_request,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;reauth_request_check, status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;reauth_request_check&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_set(check_link_integrity_fail=
ure_dp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;input-&gt;link_integrity_chec=
k_dp, status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &quot;link_integrity_check_d=
p&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto ou=
t;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (hdcp-&gt;connection.is_r=
epeater)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (check_receiver_id_list_ready(hdcp) =3D=3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MOD_HDCP_STATUS_SUCCESS) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDCP_IN=
PUT_PASS_TRACE(hdcp, &quot;rx_id_list_ready&quot;);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;rx_id_list_ready =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_=
dp_hdcp(hdcp))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;auth.msg.hdcp2.rx_id_list=
_size =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sizeof(hdcp-&=
gt;auth.msg.hdcp2.rx_id_list);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br=
>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;auth.msg.hdcp2.rx_id_list=
_size =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;auth=
.msg.hdcp2.rxstatus &amp; 0x3FF;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (*status =3D=3D MOD_H=
DCP_STATUS_SUCCESS);<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status known_hdcp2_capable_rx(struct mod_hdc=
p *hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_read_hdcp2version,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;hdcp2version_read, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;hdcp2version_read&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(check_hdcp2_capable,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;hdcp2_capable_check, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;hdcp2_capable&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status send_ake_init(struct mod_hdcp *hdcp,<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_add_display_topology,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;add_topology, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;add_topology&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_create_session,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;create_session, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;create_session&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_prepare_ake_init,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;ake_init_prepare, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;ake_init_prepare&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_write_ake_init,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;ake_init_write, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;ake_init_write&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status validate_ake_cert(struct mod_hdcp *hd=
cp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_hdmi_dvi_sl_hdcp(hdcp=
))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_set(check_ake_cert_available,=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;input-&gt;ake_cert_available,=
 &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &quot;ake_cert_available&quo=
t;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto ou=
t;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_read_ake_cert,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;ake_cert_read, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;ake_cert_read&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_validate_ake_cert,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;ake_cert_validation, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;ake_cert_validation&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status send_no_stored_km(struct mod_hdcp *hd=
cp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_write_no_stored_km,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;no_stored_km_write, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;no_stored_km_write&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status read_h_prime(struct mod_hdcp *hdcp,<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_CPIRQ &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(check_h_prime_available,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;h_prime_available, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;h_prime_available&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_read_h_prime,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;h_prime_read, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;h_prime_read&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status read_pairing_info_and_validate_h_prim=
e(<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp *hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_CPIRQ &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(check_pairing_info_available,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;pairing_available, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;pairing_available&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_read_pairing_info,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;pairing_info_read, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;pairing_info_read&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_validate_h_prime,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;h_prime_validation, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;h_prime_validation&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status send_stored_km(struct mod_hdcp *hdcp,=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_write_stored_km,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;stored_km_write, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;stored_km_write&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status validate_h_prime(struct mod_hdcp *hdc=
p,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_CPIRQ &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(check_h_prime_available,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;h_prime_available, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;h_prime_available&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_read_h_prime,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;h_prime_read, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;h_prime_read&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_validate_h_prime,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;h_prime_validation, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;h_prime_validation&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status locality_check(struct mod_hdcp *hdcp,=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_prepare_lc_init,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;lc_init_prepare, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;lc_init_prepare&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_write_lc_init,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;lc_init_write, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; h=
dcp, &quot;lc_init_write&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_hdcp(hdcp))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; udelay(16000);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_set(poll_l_prime_available,<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;input-&gt;l_prime_available_p=
oll, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &quot;l_prime_available_poll=
&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto ou=
t;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_read_l_prime,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;l_prime_read, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;l_prime_read&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_validate_l_prime,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;l_prime_validation, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;l_prime_validation&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status exchange_ks_and_test_for_repeater(str=
uct mod_hdcp *hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_prepare_eks,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;eks_prepare, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;eks_prepare&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_write_eks,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;eks_write, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;eks_write&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status enable_encryption(struct mod_hdcp *hd=
cp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_CPIRQ) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event =3D=
=3D MOD_HDCP_EVENT_CPIRQ) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; process_rxstatus(hdcp, event_ctx, input, &amp;status);<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_hdmi_dvi_sl_hdcp(hdcp=
)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (!process_rxstatus(hdcp, event_ctx, input, &amp;stat=
us))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto ou=
t;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;rx_id_list_ready)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto ou=
t;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_se=
t(mod_hdcp_hdcp2_enable_encryption,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;in=
put-&gt;enable_encryption, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &=
quot;enable_encryption&quot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (is_dp_mst_hdcp(hdcp)) {<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (!mod_hdcp_execute_and_set(<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mod_hdcp_hdcp2_enable_dp_stream_en=
cryption,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;input-&gt;stream_encryption_d=
p, &amp;status,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp, &quot;stream_encryption_dp&q=
uot;))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto ou=
t;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status authenticated(struct mod_hdcp *hdcp,<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_CPIRQ) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!process_rxstatus(hdcp, =
event_ctx, input, &amp;status))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;rx_id_list=
_ready)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status wait_for_rx_id_list(struct mod_hdcp *=
hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum mod_hdcp_status status =
=3D MOD_HDCP_STATUS_SUCCESS;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (event_ctx-&gt;event !=3D=
 MOD_HDCP_EVENT_CALLBACK &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_CPIRQ &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; event_c=
tx-&gt;event !=3D MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; event_ctx-&gt;unexpected_event =3D 1;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!process_rxstatus(hdcp, =
event_ctx, input, &amp;status))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!event_ctx-&gt;rx_id_lis=
t_ready) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; status =3D MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY;<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return status;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static enum mod_hdcp_status verify_rx_id_list_and_send_ack(struct=
 mod_hdcp *hdcp,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_event_context *event_ctx,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct mod_hdcp_transition_input_hdcp2 *input)<br>
&gt; &lt;/cut&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;Clang Built Linux&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to clang-built-linux&#43;unsubscribe@googlegroups.com.<br>
&gt; To view this discussion on the web visit <a href=3D"https://nam11.safe=
links.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgroups.google.com%2Fd%2Fm=
sgid%2Fclang-built-linux%2F1328215807.12067.1578548274951.JavaMail.javamail=
user%2540localhost&amp;amp;data=3D02%7C01%7CBhawanpreet.Lakha%40amd.com%7C7=
8bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%=
7C637141884248254340&amp;amp;sdata=3D%2FFpvRiR98XS%2FwXoJUAFScg64DrUzzzzPuY=
Xss2SpKVU%3D&amp;amp;reserved=3D0">
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgroups.=
google.com%2Fd%2Fmsgid%2Fclang-built-linux%2F1328215807.12067.1578548274951=
.JavaMail.javamailuser%2540localhost&amp;amp;data=3D02%7C01%7CBhawanpreet.L=
akha%40amd.com%7C78bd01cd2a994c38c34708d7952b00ca%7C3dd8961fe4884e608e11a82=
d994e183d%7C0%7C0%7C637141884248254340&amp;amp;sdata=3D%2FFpvRiR98XS%2FwXoJ=
UAFScg64DrUzzzzPuYXss2SpKVU%3D&amp;amp;reserved=3D0</a>.<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</div>
</span></font></div>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/DM6PR12MB42367F181F3371D1CC4495F9F9390%40DM6PR=
12MB4236.namprd12.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/DM6PR12MB42367F181F3371=
D1CC4495F9F9390%40DM6PR12MB4236.namprd12.prod.outlook.com</a>.<br />

--_000_DM6PR12MB42367F181F3371D1CC4495F9F9390DM6PR12MB4236namp_--
