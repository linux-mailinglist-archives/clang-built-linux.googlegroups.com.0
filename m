Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBHNOS6AAMGQEI2CER7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D52E72FA920
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 19:44:46 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id x37sf14026428ooi.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 10:44:46 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610995485; cv=pass;
        d=google.com; s=arc-20160816;
        b=FYKnOC5u8qUAKXvlGC2CJ15DGVXm8dBZrjRhU0+PNG96x1oBcUCn4fSerU2bRgjoo6
         a0Ape/ZwGtuDXIH8PdiacnJnsYKxRMc+1yMtnLlemZZtbWCT2yZ7tPbsd634HbOLzoId
         l3MA4rYkkKouVl96MNhdCC4uOpI1pf/TU7rwJN52S+WEVSqCWOziAaODmPjiKY+mePs5
         bahhaV0OpBMEbDqYxmkdTmnKOhzOOmU1l21F0nLCJ+EXILMGz/91rIw/rcEXJCCVrtKL
         BRvNUW3L77TQkU3r5VGLTDoErbg0x5nrOEwcAHkES7mJp9g05u9qilbb+ZG9T0/QZHCy
         eFrw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:in-reply-to:user-agent
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=Pkjy+mzaWZc42eLcwL0qOYRgi5sAPoxhA6Gwbh5fJZE=;
        b=Rc6sZl4usvzO32fEexwt5sNn25J1vHiSpCoPzKe8O0kcm8AbpjzN/blEC6Y5aC1+ma
         GnQTgu5BRi5idrLTN4L7WiffljswpYmnBmaxOehKbwRvbjDf801NACUjwm8c5RFFIhzG
         0+wcMrW4XU248vKJCjqwEkt8FpDnqQaOXN0CnEbln4Exem6R1SuJdtEWsHYxIC0W/+P9
         9Y2cGWFgFrBvpI9h1c5tszebUsE3/PKbOU4fj8oU0UyFb+ynOxJQCwY2qruaJpmhf9F1
         gbzf31OJLmmwwOcdoYOwHpQ8l3EH/V3iRYNGA7ol0iFiKr9Vxzpo1rd7oJFnkUTrUnbT
         LeaQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=d32WlKOs;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=BgaS+yAd;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06529282b4=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=06529282b4=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pkjy+mzaWZc42eLcwL0qOYRgi5sAPoxhA6Gwbh5fJZE=;
        b=ASdB+oJ7KzLL273+Mwyx1BVzbitEM9NEEWvK5ZkH6rLHaH+J1C3iX0CHNwK2HqxapO
         5ZKHxvNnoI6SkHq/xEBEDg3NQNoJf5OZCVfWjOInovHQChOO1QQ0qQgyEgo5DaJVlHFE
         Rh4o8kgnormNwbMBeL4cCl5Gq5xnIwFZ8ngzuDoSyUJ3ctCkMAaVZH0bRT5YR+YuQi8K
         mSP2kU/ukQy9qATNL+acBIc9z6klAFrej4jGISql/Q/ANVPKxw+QK4/qXcUQoSEA+0an
         HTcqxbdpYTeeo6qBnLSu7QvfoXqKyCG+amxHZk6lBDyOTLyMUkwbdGRn68OI7dFA4tZF
         XAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pkjy+mzaWZc42eLcwL0qOYRgi5sAPoxhA6Gwbh5fJZE=;
        b=Y1Lxp4wC9YYVbvOunWzzInodPu1SNyYczye7viLBKWzXPI8ZNy1ExbgxBOG//3bMaG
         FEva7dBLWFfv36s8eaoYBznvgyaroibaqav8MK5vOpL+e8oLh/xtzgVY6mV8MtmeuKVa
         HTeU1yBeDc6R4D243BhsWV/C6b48LI5GOd+vYxEzA8hIywqxZ9NQN2F3Z4GHjnPhCO4p
         X95u2f/zZ0NpDKbVLEL1axhSHy1sc6aYstGSq9wr/ZvifE8Q9lP7cMOK4tox5pU8ofxj
         l7B4JOzp9QwcBqLvBKXC+Id/ql3f0/WEyV+qVCQrHkb0Q/Bmas+NiVmJAcRTun0u+t+v
         Vu8g==
X-Gm-Message-State: AOAM530BqBNXOnJx0tncck40usQqQGfydoJ+/h6kovU10CBoDCWrncPi
	ZnA64Q06Nac6WXijZEKF0E4=
X-Google-Smtp-Source: ABdhPJzKbXOXZvpaul60Ed09Aw/vMqFDurUL+ruCjI0suN38kx73AWX2SI2nSQA5tTFHoIq+nSHNCQ==
X-Received: by 2002:a9d:1b29:: with SMTP id l38mr648724otl.159.1610995485722;
        Mon, 18 Jan 2021 10:44:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66da:: with SMTP id t26ls4873115otm.5.gmail; Mon, 18 Jan
 2021 10:44:45 -0800 (PST)
X-Received: by 2002:a05:6830:10d1:: with SMTP id z17mr688557oto.156.1610995485290;
        Mon, 18 Jan 2021 10:44:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610995485; cv=pass;
        d=google.com; s=arc-20160816;
        b=CzlkRUC2FwblnWposowyBRCq36sfOUeWYivu0+wu+fsAxdUYDApHHxeH7Xbe3wpGPD
         j4VHE+FUzxhD8Wnseh1vsHjKfvqh76Cczk/RVi9q7RVrjRbVAJsPNeMdA8VJASlWkq71
         aDaXzaU+GbqmhT1id1C94z+xCor4moN0KmFLibpC+TOXMr0KHbwtwEyAlY2vNNJJhkth
         tpOcueJfsxF7OUpfQnmcNx964DmrsnpxRdLz4Ey/1lHjSx94hWsHnyVQ0l2qg59L7Bk5
         xYRbpSUfLDWbQcFAs3WHWlS08H7hYrpEacY4MYy9YriNfl80z3NHrS7EjRzJrD+F2+9G
         adYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=zdcXkMI0brlHzakV3N18fHNxl2tGDD54ZYNpfJP0ZP8=;
        b=O71Rt5Rq8jwAKJ/swSAPlrCaEIWOmqTZOyd8SSTIxuXK0CtIVds6l6vASooE0x5YPD
         SIFl4WsuopOdS+YhIOHqYK5NoXB+478A2rMfGkF32ex08Ix8jbqRBqqP+lMz58O+Q8LG
         6yVlG/nHKXehKPWzKPWjixQkgIlsf/zwLvDPYSsmM/CVurGNPkFcclUM6SgV3bqkRGZ5
         gShBpaalW2i2cjGooOphgeUWEkFeWY2vdCdU+YAHbumNd+pN0LuZnPM6MTxGs1BSVHcE
         sdh64xH1YnzD8XDMzwrGGwf06hNJjy6ANKsCDdh5swwvQE+T0wVSCFyCdksZ30mO3iQC
         LfTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=d32WlKOs;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=BgaS+yAd;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06529282b4=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=06529282b4=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id x20si2087297oot.1.2021.01.18.10.44.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 10:44:45 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=06529282b4=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.43/8.16.0.43) with SMTP id 10IIbxR4001071;
	Mon, 18 Jan 2021 10:44:43 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by m0001303.ppops.net with ESMTP id 363vps0bqm-12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 18 Jan 2021 10:44:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 18 Jan 2021 10:44:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DiLGroO7cIx0nn5hocMssgKegjTjBJwvMBqd4kVbIxQpmSEcpDdMlTlFobjpDcnDK0dFoZ+I5qqb5xr2CvPFlKw2Y54SMNJaizxce0KccCwyT5x/onSFAv6fOACyYEzWKwi7QfaXAjsVoxE8HZ+O5dLE8cOFGOkBWwvgKlNtyTKW/ysS/N0W71anes10DNROXzek2di2nic8x9l6pjW2F0eu6B6YxFlSxfBe3rVbB73BuBkA94ch8gZAxoeZJZV9oKukBa4GUS9BWOLrGaeH3O9h+uGOGnLsrNTqhw7e0pXiyTBb9cekzo0eul7x8mIv5PbE2IxdVbfItjwiOZgd6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zdcXkMI0brlHzakV3N18fHNxl2tGDD54ZYNpfJP0ZP8=;
 b=dQcetQFuva/2WO3UlfkElMV6LwI4hHdeWa2t91t2m8XdpGQm3aAsOmU8rNBJO3Zp7cC/Hr4GGdGf5rEf/jmn58xlfQeuQPE/o54jmIM8tb9ftsCAfpd7U/Jb+l5x0TktwiKLK+sMO0Fc0piZmeaAFbqFgZTZzuP/TfSDoMfVU+YReScqUBMKSbpGXNdajvldaNzOBrUYgUHIgUNx2u+exAJ3SM+8Ct9OmG8RPho5TcRBZ09SNeHSHb5ynQxPiQ+ZcCA1HcMWUebuXTYDMaCRjpQHbe7C/Zq8kZOLKjruw/j5OPg5WXM6fiJ3gsTu3/sBlhuwDpr0qPkUjkJl2ySchA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2888.namprd15.prod.outlook.com (2603:10b6:a03:b5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Mon, 18 Jan
 2021 18:44:36 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 18:44:36 +0000
Subject: Re: [PATCH bpf 1/2] samples/bpf: Set flag __SANE_USERSPACE_TYPES__
 for MIPS to fix build warnings
To: Tiezhu Yang <yangtiezhu@loongson.cn>,
        Luc Van Oostenryck
	<luc.vanoostenryck@gmail.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel
 Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin
 KaFai Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>,
        Nathan Chancellor
	<natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>
CC: <linux-sparse@vger.kernel.org>, <netdev@vger.kernel.org>,
        <bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>,
        <linux-mips@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Xuefeng Li
	<lixuefeng@loongson.cn>
References: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
 <1610535453-2352-2-git-send-email-yangtiezhu@loongson.cn>
 <e3eb5919-4573-4576-e6aa-bd8ff56409ed@fb.com>
 <f077bcae-97be-fc7f-c3fa-c6026bfe25d2@loongson.cn>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <313a7ed5-a34d-5eed-4715-06fed4a75c40@fb.com>
Date: Mon, 18 Jan 2021 10:44:34 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <f077bcae-97be-fc7f-c3fa-c6026bfe25d2@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [2620:10d:c090:400::5:4199]
X-ClientProxiedBy: SJ0PR13CA0006.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::11) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21d6::10cf] (2620:10d:c090:400::5:4199) by SJ0PR13CA0006.namprd13.prod.outlook.com (2603:10b6:a03:2c0::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.7 via Frontend Transport; Mon, 18 Jan 2021 18:44:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 052e3727-a8fd-4fa0-a296-08d8bbe11a8f
X-MS-TrafficTypeDiagnostic: BYAPR15MB2888:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB28880DCF9FAB63F478618247D3A40@BYAPR15MB2888.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dT2+a9PcL+sp77zMLyZgZkySxD6KGeh/9ZRZGxOHYyiWRFHNJO4TN5O595yhLDFqoWx/PXRdgc6e9NEMbWlrLa0MsFu+9vVsABSNTh/3MEqMs6nfajY0azjX3iF3lfVeoEHQ6ZIhi/0fqnbnNyKxJc/PA8KuuJvsmjiEira3Tmn8rIW/QecDAoPVaZoxMboGTdC9919yHdrqie1slSso7mZL6q258j6AKcuYZMHGRIjm7Vw/U6Q0/vi0KCx1V8R2EU6Rgn6ZBOXwNDHJaCJz454REj9I0t+xUy2Jg3iwmy6Qeab5QZwIuRHajwKn13TnlaEDvo5fGBjtE/DL2H5Nx19177PlXXdeiE9/7DJOohlqJy9tx3gWv/QZo0AYlNS38EdWfgEedX0uQSzLSd2b4yNEqz/R6zBN2RFuP97LW+tjIG8t5ddrx2vlfEEVduNMsIHVRMPgQCVqus1QR7HX9VOgpC7edkj1dx9FscLjW6jZT0rcCOoqtZxdglnQIx8tcETZUuWGI5m73innRRyFTA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(346002)(366004)(136003)(39860400002)(396003)(8676002)(66556008)(8936002)(31696002)(86362001)(66946007)(66476007)(2906002)(5660300002)(36756003)(921005)(31686004)(110136005)(478600001)(2616005)(52116002)(7416002)(316002)(186003)(83380400001)(6486002)(16526019)(4326008)(53546011)(3714002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?cnhzNTNkSnY2VzFuKzc5cjFISHV3c29TczZyU05BN3lZaEpkUEx0S2xaNUVW?=
 =?utf-8?B?RDZXV0hWQ0U5eDUvQmNMSGRnTTZ2djE2cEloQkhCdFcvMW11UzNqcTdpV1E2?=
 =?utf-8?B?QU1XRjF2cW1oWDRJRUNqRFh1bjRQWnY5UTgzalc2SXVpMGt6Z1dlM3d1NW84?=
 =?utf-8?B?NnRqWi90U3FuSVhnQ0ljZkhhdDlzRDNVekhMVnhKc1c5dEk1aXAwT0ZsaXBt?=
 =?utf-8?B?ZHBQOE9sU3VZUVlEejNTS2VoUXNNVHVvSEw4OFU2QTJPYzBkV284SmY1RDAy?=
 =?utf-8?B?ZWM3Tm5RUCtnZ0sxV1Voa1p1NC9YcG5zOVorbWlmT3lHb0REUUlJeEVsdGF1?=
 =?utf-8?B?aHRFZVdVRUFZd05jMHROUC9qd05kRUhGZnpuV3lFcnJ3TXlRbnpsZzBUZTM2?=
 =?utf-8?B?TldZWWZINGlZcTYvKzdFVzZ1NFhQRXI5R2QyQ2MrT2xDWGZkRDY2OE15QTg3?=
 =?utf-8?B?VE1TZE1tU0ZuaUtqQXkzVlM0Q0hRQmN4c1MwcUtPTjlZcGNKamlvcThEOVJ5?=
 =?utf-8?B?Z1RRZFVTZ1paaWpLY2hqT0FsT2NQSWIwYWI0blVXSnk0aUVENjFxUCtSSWpY?=
 =?utf-8?B?VTU2a0taTXcrT1ZsUjVXa1Y0dHN0TzBuZVIxNi9Wa240NTI4djV1Zlk5cldL?=
 =?utf-8?B?WWFqMW1iTWhIY3hBV0NCSWtyUktnNnF4NmdFU1N5amw4bW43ZzhNNGMwOWxI?=
 =?utf-8?B?UWZHaHZIemREVmhHeUhsRExnLzUyT3drS3JoRVFxb0tFbk9TanVjUjlxVE1T?=
 =?utf-8?B?K1BacFBlZmVUUStFeWhnMmRWbzVLNjh2aDJ2TlRNNTdBdmZMWnozZnRFcERO?=
 =?utf-8?B?MEdiSVN0V2QvNk94MXZmQldSV1dGVld1b1ZxYnRvVFZOK3BPSWZ0S29TL0Js?=
 =?utf-8?B?ZXNGVlh3RDhjOG9BZW1JMUZNMFpvcGZaQ1c1bVNLTjBsd0VxZFVZUWlnRGtD?=
 =?utf-8?B?NmlNbFB6a1lKUEhZY2VRZCtRbWFFZmVkblc3WVZaZFdvNnZKRmJRRlZkWmpG?=
 =?utf-8?B?ZFY1dVhEOUlVdGJudHVGbGl2bE9qV2tzVDVZMkk5UytYT3Y0UDBaUzRPNm5R?=
 =?utf-8?B?UWh4eVdLUnFzandEOTcrUjA4ZUxCaUpyVzVTMHJJOFR4aDdaRyt5L3FYTU95?=
 =?utf-8?B?cjNLMHhNdWdVVEE2OWYvaEJpMGZ3Z2FRSnpDMXBEQXprZStrU0NicTRWcENo?=
 =?utf-8?B?MEdpRTJHNHlKQ0M3UUJGRUJGM3NxTjlCeExyTndxdTl6cnIrc0llbFVQN2N6?=
 =?utf-8?B?VkFyajZ4cmVBamFjQ0xCSitpejVLQ3NVdzhLY0JkRzFNdmt3NDRNKzFWeVR3?=
 =?utf-8?B?TlZUK2pKVG0wdWZzNGcvRXZ2Yk9IbjhtRXI1a3JwS3QxYjBJb2VVcjRNYnFs?=
 =?utf-8?B?cE5JMzlqU3JLRVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 052e3727-a8fd-4fa0-a296-08d8bbe11a8f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2021 18:44:36.2630
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0xuFn0UPomPSW5O/AmOkE8oykEtuhU9TZlTyAhjLWrwVvUOajGSKI3ApvlSOWCdK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2888
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-18_14:2021-01-18,2021-01-18 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 mlxlogscore=999
 spamscore=0 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101180112
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=d32WlKOs;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=BgaS+yAd;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=06529282b4=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=06529282b4=yhs@fb.com";       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
X-Original-From: Yonghong Song <yhs@fb.com>
Reply-To: Yonghong Song <yhs@fb.com>
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



On 1/17/21 7:22 PM, Tiezhu Yang wrote:
> On 01/14/2021 01:12 AM, Yonghong Song wrote:
>>
>>
>> On 1/13/21 2:57 AM, Tiezhu Yang wrote:
>>> MIPS needs __SANE_USERSPACE_TYPES__ before <linux/types.h> to select
>>> 'int-ll64.h' in arch/mips/include/uapi/asm/types.h and avoid compile
>>> warnings when printing __u64 with %llu, %llx or %lld.
>>
>> could you mention which command produces the following warning?
>=20
> make M=3Dsamples/bpf
>=20
>>
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0 printf("0x%02x : %llu\n", key, value);
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~^=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %lu
>>> =C2=A0=C2=A0=C2=A0 printf("%s/%llx;", sym->name, addr);
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ~~~^=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 %lx
>>> =C2=A0=C2=A0 printf(";%s %lld\n", key->waker, count);
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ~~~^=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 %ld
>>>
>>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>>> ---
>>> =C2=A0 samples/bpf/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
 4 ++++
>>> =C2=A0 tools/include/linux/types.h | 3 +++
>>> =C2=A0 2 files changed, 7 insertions(+)
>>>
>>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>>> index 26fc96c..27de306 100644
>>> --- a/samples/bpf/Makefile
>>> +++ b/samples/bpf/Makefile
>>> @@ -183,6 +183,10 @@ BPF_EXTRA_CFLAGS :=3D $(ARM_ARCH_SELECTOR)
>>> =C2=A0 TPROGS_CFLAGS +=3D $(ARM_ARCH_SELECTOR)
>>> =C2=A0 endif
>>> =C2=A0 +ifeq ($(ARCH), mips)
>>> +TPROGS_CFLAGS +=3D -D__SANE_USERSPACE_TYPES__
>>> +endif
>>> +
>>
>> This change looks okay based on description in
>> arch/mips/include/uapi/asm/types.h
>>
>> '''
>> /*
>> =C2=A0* We don't use int-l64.h for the kernel anymore but still use it f=
or
>> =C2=A0* userspace to avoid code changes.
>> =C2=A0*
>> =C2=A0* However, some user programs (e.g. perf) may not want this. They =
can
>> =C2=A0* flag __SANE_USERSPACE_TYPES__ to get int-ll64.h here.
>> =C2=A0*/
>> '''
>>
>>> =C2=A0 TPROGS_CFLAGS +=3D -Wall -O2
>>> =C2=A0 TPROGS_CFLAGS +=3D -Wmissing-prototypes
>>> =C2=A0 TPROGS_CFLAGS +=3D -Wstrict-prototypes
>>> diff --git a/tools/include/linux/types.h b/tools/include/linux/types.h
>>> index 154eb4e..e9c5a21 100644
>>> --- a/tools/include/linux/types.h
>>> +++ b/tools/include/linux/types.h
>>> @@ -6,7 +6,10 @@
>>> =C2=A0 #include <stddef.h>
>>> =C2=A0 #include <stdint.h>
>>> =C2=A0 +#ifndef __SANE_USERSPACE_TYPES__
>>> =C2=A0 #define __SANE_USERSPACE_TYPES__=C2=A0=C2=A0=C2=A0 /* For PPC64,=
 to get LL64 types */
>>> +#endif
>>
>> What problem this patch fixed?
>=20
> If add "TPROGS_CFLAGS +=3D -D__SANE_USERSPACE_TYPES__" in
> samples/bpf/Makefile, it appears the following error:
>=20
> Auto-detecting system features:
> ...=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libel=
f: [ on=C2=A0 ]
> ...=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 zlib: [ on=C2=A0 ]
> ...=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 bpf: [ OFF ]
>=20
> BPF API too old
> make[3]: *** [Makefile:293: bpfdep] Error 1
> make[2]: *** [Makefile:156: all] Error 2
>=20
> With #ifndef __SANE_USERSPACE_TYPES__=C2=A0 in tools/include/linux/types.=
h,
> the above error has gone.
>=20
>> If this header is used, you can just
>> change comment from "PPC64" to "PPC64/MIPS", right?
>=20
> If include <linux/types.h> in the source files which have compile warning=
s
> when printing __u64 with %llu, %llx or %lld, it has no effect due to=20
> actually
> it includes usr/include/linux/types.h instead of=20
> tools/include/linux/types.h,
> this is because the include-directories in samples/bpf/Makefile are=20
> searched
> in the order, -I./usr/include is in the front of -I./tools/include.
>=20
> So I think define __SANE_USERSPACE_TYPES__ for MIPS in samples/bpf/Makefi=
le
> is proper, at the same time, add #ifndef __SANE_USERSPACE_TYPES__ in
> tools/include/linux/types.h can avoid build error and have no side effect=
.
>=20
> I will send v2 later with mention in the commit message that this is
> mips related.

It would be good if you can add the above information to the commit
message so people will know what the root cause of the issue.

If I understand correctly, if we could have include path
"tools/include" earlier than "usr/include", we might not have this=20
issue. The problem is that "usr/include" is preferred first (uapi)
than "tools/include" (including kernel dev headers).

I am wondering whether we could avoid changes in=20
tools/include/linux/types.h, e.g., by undef __SANE_USER_SPACE_TYPES=20
right before include
path tools/include. But that sounds like a ugly hack and actually
the change in tools/include/linux/types.h does not hurt other
compilations.

So your current change looks good to me, but please have better
explanation of the problem and why for each change in the commit
message.

>=20
> Thanks,
> Tiezhu
>=20
>>
>>> +
>>> =C2=A0 #include <asm/types.h>
>>> =C2=A0 #include <asm/posix_types.h>
>>>
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/313a7ed5-a34d-5eed-4715-06fed4a75c40%40fb.com.
