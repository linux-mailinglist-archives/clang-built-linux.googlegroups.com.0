Return-Path: <clang-built-linux+bncBCSPFHXUVMKBB2VT634QKGQEHU3QE4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E02124A882
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 23:30:19 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id a19sf84589oic.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 14:30:19 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1597872618; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hg5nv2M6AQSr7TN6v4IQQSzp110EhZeEqiZ9dldD3q6B5tPE0TI6xiStK8UYM4oQUP
         a4JBI/LJ513peLpvuzHM+2y47T9SqusTPnzSHVa1kLW2r87Y5oRjKevL29MODHgQ1SOX
         RXTKLYTy+dRuvYcUTTNwp4txWaaQrbRnWGeLQPWuXYV9kdEPCIeX/d0TQafIvY3PRMTA
         vUJxB4yKpfWLAiD5keL19NeXd2KbB/ZTPpGE0yB8OmXc463oMtuMu0piD/rMgwk1rNxT
         XR+VAWl+UfYbTAQBW1hP2sHn+m86pcxeJ0Aqbq7MIyPCYLxGTYpfxjCJedZiC3a+i6UW
         CMKw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=qLsU45orVXGcPJ4g4M3uBi01l3D5gKo2aTJMrT26j3M=;
        b=0T62JlsHrKubQVh+208hnx417vjow8M93T0BpxLKaZiGVLckFwgWQUFBiCTJYqZGvk
         mhuIjigGbkLD0iiTI5ijjTHNuadESI9Yfz4teqFEoxj6uIRoa5UUlKZV4/sBeSZ2y3Aw
         fXLUXueLIzc8kStYjuljrJ3xuplWUHN5/uq554aNLOWInvCZI69inhS/FETOdDFxObbP
         OuEyOYT5MjOPGdnbUixgWZyAkQ0PnOVh57bNLnB6FIZjexl3Sm4UsCrCqsJkELl/NbQN
         9TW4NJH6LJlvWZKpmt8uD0SWCp8OcISTdJXdqkbn2+rCMZA+C8mdNvybkNi01vYBRUvu
         t4SQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=DciGzgVV;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=aHVN8rjQ;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5500d1b7d0=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=5500d1b7d0=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qLsU45orVXGcPJ4g4M3uBi01l3D5gKo2aTJMrT26j3M=;
        b=L0BcGYJ3PUoKCNBP85reD6HJEukK8et3IwdcFDSi5fc1V1yzcFiiiQfurcsixDfupC
         cHA5eIkx8AbqXTpNdlpiSF9FdaTLgWoTOXAIrdMk5eLw+JoO6fOQiQUq401fVjJFT7Pf
         8AmK+OWq3zvfrVd7Lq0RCoy/gwG4AVmk/5Jr/YZMf23wT6mbMP9EovBoHu8q+eiIYRMn
         VLAWyAkpAdFzaw3HP/hi21+QNNuigVwEwjsjrOLN/VNECp6aCmQQV+5arSJiccP9gGeA
         IaOU9+Lgmbou8fg1MAdyOD+1VezwOM4XvEj8ssl6Hh4LLM0q61xRFWhTGqrBLnmzg4LL
         1OJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qLsU45orVXGcPJ4g4M3uBi01l3D5gKo2aTJMrT26j3M=;
        b=JMfdWJnI9V/OUBkigpJbmC/ebg2o3twQhTScaziL+6h/M84sszqlL/JMAE5q3wK3WN
         zyzPWObraISjYSjDGjxG3dKEoqVWGQx+xdc9NXbZsK9TPI7koqeIOfmWi+wX8978ckUm
         vK5Kt43DpzdlNssrvEjjLLjR8+6s4AGBSFb9m89DTEiee2DXBVBfcLOPkU/AbmdxcbGN
         Av53NNFbTMiOtHXjghDGm04dbPspYmJpBqDVCZ5EwYcxzU03twXo5dyPiZC+qlJy/elA
         cmIGe0Rem/zvmm7nuWxz1P6nCJPVaXivf37fEDoxHWskPeZ9UnLRZ4BEYvjF0C3CfdZI
         NMrw==
X-Gm-Message-State: AOAM532CYF+i7ZsnFpsH9vttbhsfSdKgWPeZaggjKeI27jlEGyA41JeA
	A0mTvx3MCiY7/qP0xlzmXB4=
X-Google-Smtp-Source: ABdhPJxSCu1GsZAuZE3FmCIkRqeXzUzyoUft66IrNtWSwiuDyZJAlF2n4EFVU4WX8UE9GQ6/d50L0Q==
X-Received: by 2002:a9d:5a8e:: with SMTP id w14mr18976691oth.214.1597872618299;
        Wed, 19 Aug 2020 14:30:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c78:: with SMTP id s24ls31361otg.9.gmail; Wed, 19
 Aug 2020 14:30:17 -0700 (PDT)
X-Received: by 2002:a9d:ae9:: with SMTP id 96mr19478099otq.241.1597872617852;
        Wed, 19 Aug 2020 14:30:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597872617; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+n/JIIV9DXscs1eVkfeYCMTzaFGvTygMMdoOA9KgkZ0+eXNR5Nke/mLcbrwdsM3bJ
         Jmn54NSoAs7jLmzjNRenntqIPhiSBzg5UaowwV/URSEIondOD4qYMq2RbVcBlx7SQTWK
         //gTxo9QLE2fK8Msl90DYIJeC7Qt5zfQoAncVPOVM0hVRJfXQQFkJ8rHzmvNOR9rfVqp
         3XZqeOEMZB9x1Q8XtugKoAWZnJWgbceh/FX9FjnBbfSE17P15IPfvzxqSvfuW2Hn9C7Z
         7dCmAMw8cSiXL9HxDtHUjBl8RujYPWQkkoJCg4sjw1XsRjvs4AdyAnqd/KmzAfaIUOHx
         y36w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=OKP7Wz9dK2Shyjy7Z7tCxDhFzz8sqHrD6hHfNbTAMJ8=;
        b=t8qXSVCRopLL6ew7+fWD64A845moY7ZFfSnGDN9MnsBIbUImQkxVI1s+BCt/qQRVqX
         SK1FgVhDI8tf2YwIdZO4f8En4r/Er0umoU4DY8bRKOY5GjOnwJ5BKxSGOQ+pLUAdFJcC
         f2DE6AJjpoDQ8UsCwbkf1xlqlGCabBjQ4JUYd5pELRFNpaxyVq/hz3uvNIsJPb8ersmo
         1r1vJx3ydcFuURc4Cx5bHExnqUOsUUmbnSKDgicCn7BIpG+MasDkDl1+1Rk+STlne1NJ
         QG/gl5vqtp8uYY6YloeYF1/jb9ImtwaiBweI7zlXuEI7Gc3hzuqfYzLyyFGd0/QTLplu
         4g9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=DciGzgVV;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=aHVN8rjQ;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5500d1b7d0=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=5500d1b7d0=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id 22si4598oiy.5.2020.08.19.14.30.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 14:30:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=5500d1b7d0=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.42/8.16.0.42) with SMTP id 07JLIBnM032495;
	Wed, 19 Aug 2020 14:30:15 -0700
Received: from mail.thefacebook.com ([163.114.132.120])
	by m0001303.ppops.net with ESMTP id 3304jjasxd-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 19 Aug 2020 14:30:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.229) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 19 Aug 2020 14:30:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzofWKIp4zkz028vgW+BLtaFj0hychNt0Dlz670l3EzGqj9N1D51K4609h5msxaIzAaNFdsYabWK/TN9FG00Z+Hzv7Q8E5ppFV0ADCq/Rh/nGhiNwxdZibXDgJP2BYU7a7OFTQ/Jbst0Nlqarh2+/EhptAIBBMeGKCyjCFvdZhi2iZ8bfPFXv33x6DWSC8WWXGLqqNKlIUQf8cJRCOKU29O5b0xbVHyo/IRMfGDfPRzuLbtHEg2kOsfEjOzFPGAJczQyHDIefKvcoKPT+OOojJkPy4UjL5zON9SzhUseViYqeFTaMW8gIeP5oeb0A0rHAT4jWaJnH2cRzWi1c+OItQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKP7Wz9dK2Shyjy7Z7tCxDhFzz8sqHrD6hHfNbTAMJ8=;
 b=LhFqV3o+HhkVNiynn70lCEBG+aHP2OIdgstzak/KGfDHvsR7Z5Iqdz2GGUVxUvt4WoyeSBZ2Cgdm+43azg4vU1iHnlb2ul7EJbi1Qmx79nb3EUf6763U5ghdVPQxXV7qEVz2xgI/X7dos7sWWdL4cyV/ErZ8rxyy3o2b6Ake29AJD31GAUn+pJ/jZfg5J4Y2pVnjzctqF/h9EnzxD1Gdb3zk+q0GNo/aTe3UplMdm0XmuJFoEtaa7j+5iOOuOv2peloqcrDxjic0o8oC9T1MpKs+uU2s2/WTGj6RtWXbTukPVx2KpWSgqHmUX3Ohtcuaop8886/DmDbfM8GEQuM3JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2376.namprd15.prod.outlook.com (2603:10b6:a02:8c::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Wed, 19 Aug
 2020 21:30:11 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80%7]) with mapi id 15.20.3283.028; Wed, 19 Aug 2020
 21:30:11 +0000
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong
 alignment
To: Nick Desaulniers <ndesaulniers@google.com>, Jiri Olsa <jolsa@kernel.org>
CC: Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann
	<daniel@iogearbox.net>,
        Mark Wielaard <mjw@redhat.com>, Nick Clifton
	<nickc@redhat.com>,
        Jesper Dangaard Brouer <brouer@redhat.com>,
        Network
 Development <netdev@vger.kernel.org>,
        bpf <bpf@vger.kernel.org>, Martin KaFai
 Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>, Andrii Nakryiko
	<andriin@fb.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh
	<kpsingh@chromium.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>
References: <20200819092342.259004-1-jolsa@kernel.org>
 <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com> <20200819173618.GH177896@krava>
 <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
Date: Wed, 19 Aug 2020 14:30:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
In-Reply-To: <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: MN2PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:208:c0::43) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c0a8:11e8::10d3] (2620:10d:c091:480::1:d29f) by MN2PR05CA0030.namprd05.prod.outlook.com (2603:10b6:208:c0::43) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.14 via Frontend Transport; Wed, 19 Aug 2020 21:30:08 +0000
X-Originating-IP: [2620:10d:c091:480::1:d29f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d315f79-624b-4346-d193-08d844870d9e
X-MS-TrafficTypeDiagnostic: BYAPR15MB2376:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB2376A3EACE89B6A7DE1D497FD35D0@BYAPR15MB2376.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:1013;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jj0s5J6k48fD00Ulz5T8gCsnSWfEH5BLFMWr80kEfUBhFNb78XMWikAgggtz2uZZwkdUoFgbbW7lEfhyF0T3zaParOf7+J501pT4BaN6eXG+mwCxmyL6u/9P7Hpwbvr8F+yVx+wY8x2hgfxmuYcuAA7nEj29rUXDu30HnQoCGXoy9huE9QbuXqoE3zllwJawle0nnI5ZfYmQR/viZ+ITwHfPL6b+g3+9b5i6hnTr3py6JQphx0BaaHO6piQ+eBq7VakKB3Kwqrc2VCxcd5agPfvfYEuBH6PvoZYiZ+AKWuMASczMSOhk6SshBu9Qtb4HZarGesQkWxT5aNAtmEE6pkc1Td25Rxkpm/v2IebwLPW/uHehmUxYyQpQ991fYR4g
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(39860400002)(366004)(376002)(346002)(186003)(5660300002)(316002)(86362001)(31696002)(6666004)(8936002)(66946007)(53546011)(478600001)(2906002)(66476007)(66556008)(8676002)(83380400001)(16526019)(6486002)(36756003)(4326008)(110136005)(2616005)(54906003)(31686004)(52116002)(7416002)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: KkdKJuAmPe/7L8xh8lSX8i/gda3CfnBPFzX2CgHG/g+N9XLRQW1lOgbakg87i+tGyTv3OunqbqUjoO1qYig/VdLeDpCYyTWQmEzVLpVh9krYWWtFYSav7ymirW/8lTeS734Xne6Nzie52L/uHoQnRJaNg/WvsTVgG5TuVYhoFXO4GlIllH/yx/NhbdGpffU/dHo5N52ljh8UAbZ2KO+NPWbrrsNr2S8Jug2SQ4hhbIoJlnSgCFDQtNJV+4k7Z86QuxWTymW/wqq8ZFcOnerCMwDN9PZuVxcxL9hExneJipV7hRnqv7JqTUNnaLLpqm2lm9Ga/rFpqTiKTDGr9MpDvFGgJa6LV8/zKB7DC1lJIJ6pPPH8pJEbNwraCbe9kiwfzf3LvsKlNGGYfSFXqv/K1X84Bz7Q3OBK4yKLZ3XDvEHfKL8vWXfzqZaTvFpiohU+oXxsW8BJ8V+sN4EsM/MkO2+bFrZ6Iw3Ve0ot3VH7dMU9hmKMBRP+gNhGSh1uLtKo4yI/Twi8SLmWE2g4V9PkapT7V56NCLtCmSsYvIjDLpPOOFeQxcfwb3dnpsTp3W+xu8zhb4gJqnfa6nfqVpQLC4amAuSeaBVCCjm0pOvZ1Q/fbZgMl4ilLcXwBxTf7D4VLN7DxKAzxL8UjLRttwPnM8KQy8lw4W7T/AIsDrqWfDxMkV+Pl1D6+rAjAT8CdvhU
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d315f79-624b-4346-d193-08d844870d9e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2020 21:30:11.4360
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kzQA1+eJuJN/1FEILrfHouVm4kDVuRYziPxNKzObMxtXVZBlzSAdVWejcTSbWMlk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2376
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-19_13:2020-08-19,2020-08-19 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 impostorscore=0 bulkscore=0 mlxlogscore=999 phishscore=0 mlxscore=0
 clxscore=1011 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008190174
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=DciGzgVV;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=aHVN8rjQ;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=5500d1b7d0=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=5500d1b7d0=yhs@fb.com";       dmarc=pass
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



On 8/19/20 11:16 AM, Nick Desaulniers wrote:
> On Wed, Aug 19, 2020 at 10:36 AM Jiri Olsa <jolsa@redhat.com> wrote:
>>
>> On Wed, Aug 19, 2020 at 08:31:51AM -0700, Yonghong Song wrote:
>>>
>>>
>>> On 8/19/20 2:23 AM, Jiri Olsa wrote:
>>>> The data of compressed section should be aligned to 4
>>>> (for 32bit) or 8 (for 64 bit) bytes.
>>>>
>>>> The binutils ld sets sh_addralign to 1, which makes libelf
>>>> fail with misaligned section error during the update as
>>>> reported by Jesper:
>>>>
>>>>      FAILED elf_update(WRITE): invalid section alignment
>>>>
>>>> While waiting for ld fix, we can fix compressed sections
>>>> sh_addralign value manually.
> 
> Is there a bug filed against GNU ld? Link?
> 
>>>>
>>>> Adding warning in -vv mode when the fix is triggered:
>>>>
>>>>     $ ./tools/bpf/resolve_btfids/resolve_btfids -vv vmlinux
>>>>     ...
>>>>     section(36) .comment, size 44, link 0, flags 30, type=1
>>>>     section(37) .debug_aranges, size 45684, link 0, flags 800, type=1
>>>>      - fixing wrong alignment sh_addralign 16, expected 8
>>>>     section(38) .debug_info, size 129104957, link 0, flags 800, type=1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(39) .debug_abbrev, size 1152583, link 0, flags 800, type=1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(40) .debug_line, size 7374522, link 0, flags 800, type=1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(41) .debug_frame, size 702463, link 0, flags 800, type=1
>>>>     section(42) .debug_str, size 1017571, link 0, flags 830, type=1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(43) .debug_loc, size 3019453, link 0, flags 800, type=1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(44) .debug_ranges, size 1744583, link 0, flags 800, type=1
>>>>      - fixing wrong alignment sh_addralign 16, expected 8
>>>>     section(45) .symtab, size 2955888, link 46, flags 0, type=2
>>>>     section(46) .strtab, size 2613072, link 0, flags 0, type=3
>>>>     ...
>>>>     update ok for vmlinux
>>>>
>>>> Another workaround is to disable compressed debug info data
>>>> CONFIG_DEBUG_INFO_COMPRESSED kernel option.
>>>
>>> So CONFIG_DEBUG_INFO_COMPRESSED is required to reproduce the bug, right?
>>
>> correct
>>
>>>
>>> I turned on CONFIG_DEBUG_INFO_COMPRESSED in my config and got a bunch of
>>> build failures.
>>>
>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>> decompress status for section .debug_info
>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>> decompress status for section .debug_info
>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>> decompress status for section .debug_info
>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>> decompress status for section .debug_info
>>> drivers/crypto/virtio/virtio_crypto_algs.o: file not recognized: File format
>>> not recognized
>>>
>>> ld: net/llc/llc_core.o: unable to initialize decompress status for section
>>> .debug_info
>>> ld: net/llc/llc_core.o: unable to initialize decompress status for section
>>> .debug_info
>>> ld: net/llc/llc_core.o: unable to initialize decompress status for section
>>> .debug_info
>>> ld: net/llc/llc_core.o: unable to initialize decompress status for section
>>> .debug_info
>>> net/llc/llc_core.o: file not recognized: File format not recognized
>>>
>>> ...
>>>
>>> The 'ld' in my system:
>>>
>>> $ ld -V
>>> GNU ld version 2.30-74.el8
>>>    Supported emulations:
>>>     elf_x86_64
>>>     elf32_x86_64
>>>     elf_i386
>>>     elf_iamcu
>>>     i386linux
>>>     elf_l1om
>>>     elf_k1om
>>>     i386pep
>>>     i386pe
> 
> According to Documentation/process/changes.rst, the minimum supported
> version of GNU binutils for the kernels is 2.23.  Can you upgrade to
> that and confirm that you still observe the issue?  I don't want to
> spend time chasing bugs in old, unsupported versions of GNU binutils,
> especially as Jiri notes, 2.26 is required for
> CONFIG_DEBUG_INFO_COMPRESSED.  We can always strengthen the Kconfig
> check for it.  Otherwise, I'm not familiar with the observed error
> message.

I built a "ld" with latest binutils-gdb repo and I can reproduced
the issue. Indeed applying the patch here fixed the issue. So
I think there is no need to investigate since upstream exhibits
the exact issue described here.

> 
>>> $
>>>
>>> Do you know what is the issue here?
>>
>> mine's: GNU ld version 2.32-31.fc31
>>
>> there's version info in commit:
>>    10e68b02c861 Makefile: support compressed debug info
>>
>>    Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
>>    5.0+, binutils 2.26+, and zlib.
>>
>> cc-ing Nick Desaulniers, author of that patch.. any idea about the error above?
>>
>> thanks,
>> jirka
>>
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2e35cf9e-d815-5cd7-9106-7947e5b9fe3f%40fb.com.
