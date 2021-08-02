Return-Path: <clang-built-linux+bncBAABBKNXT6EAMGQE744V42I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3C63DD4E9
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 13:48:59 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id a133-20020a1f988b0000b029028407337128sf128176vke.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 04:48:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627904938; cv=pass;
        d=google.com; s=arc-20160816;
        b=O3PaZiovPUX4HxO3NGywtEoQYMejIM0kDoUIyDvC/hhwp8fZWFJ35y9E8+btpSK3XE
         AwBlg2Y4Sn8nIAHq051NaoGT36uY82Z08xum5MwaTahXe0gGwwka9pc/5bYznvLoQWRT
         YgnyKM2NdgOHg6MR+D/NgcYaMVC7t347NAA8jUpb037OWdHpY+b/+GJ0scMiArFjqdYu
         BsbJ5AWR47xkgeOMa5Wcs4LcW2VuiIXf/tQ/sKe4rmL0yduKHoNQMEyr4YoJi/vc9LNb
         Qo1MwsUvQGCPDyULLyB0uS5a0r302RKSvEY3KQ331pYgVM8Mm+yLZqkweFqr3oEAQj+j
         9Sqw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:sender:dkim-signature;
        bh=QTbxjd3gBqGqO4lbyaojuP9rJwarXychghFWP51jmHg=;
        b=f5E6v5NF+hYZkOkYWhAopHNOllKg5AhrQ8Iz1RnSzMyfXYSOpv72T8+hY/N1xUPZHD
         aigPKchZoTdXw4d1XJWXVBserQOw56zJBmrnoVfGsAvCf/K/SOb8/J9IV2huyRKU8OIq
         Jt55QsGKX+ITEooT839isSGaFUIVRVD6H7EtE6nPmhT4cC/8TWI+P6u21KAoH9EnxbnE
         ilRTrFsQjNfFdLEzsSskKc3zKTxyXNzLiOqc0Efk+BuWpmpjIoFkDoIAtVdMR0ZhHllO
         1V348dknKD16PG6650laEYVL3xaAoCXegUa4DT6TGAsjiq6P829zyWdnEqW3QNU6NoDc
         vBlg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com header.b=Hc8T5Nco;
       arc=pass (i=1 spf=pass spfdomain=marvell.com dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of pkushwaha@marvell.com designates 67.231.156.173 as permitted sender) smtp.mailfrom=pkushwaha@marvell.com;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=marvell.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QTbxjd3gBqGqO4lbyaojuP9rJwarXychghFWP51jmHg=;
        b=jw4F7tX39xv+zxmVDTHYPiZbpDErSEOrqeHcwos6sNtP9n8Y3SrFGfB6gQ2QnpWLr9
         3SGxuUOWjv8ZbRLhg2ptCKKCbdwF2CkliwpTVyKl4SkyGDDYlX7qagiZ14MZRKBCGPzA
         rCOlJx6lpEcXZkac8z+w59dguuxumVSDnS1ryauVpsMDq3sXOembwbKPgN3sP52+Oj1N
         ZX6+xoZHvcoRsrbaPkhstQTFTwLYovCzyBxurvIhT9xiXucfHhsauIaqMFDgjVhZA6RJ
         IhWiZ2iD3MESkjijCG1Cb/xwijwVzg0ZY+WLUwnJ04MoEU63vtwUFOtelLcSuEXib7WS
         z5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QTbxjd3gBqGqO4lbyaojuP9rJwarXychghFWP51jmHg=;
        b=emzxT9ko3RpwlI6WTgX2IFrKgq5O86XoodMuH3jS03hQE4ZrRRPM6Zrm/HYMMoA3u8
         FpUVxwVk6T9fybnXTm6VZbFglGvsPGOJvd2YI5rLOoksueFSIlhFbOZdkcMCx1OrHfiG
         55PanRrVQt4Le5hLJ8tFwTNjrohcTplWVzHIijHOOdcIkhYXHH+hn13Mt/AJQrysCfeA
         oWUN0NCZUK+9HGC/hKSwE9bHNjgCJK3XG8T+xlampbkw6TcE7ATdpaweLS/IW11l5PLc
         loBXILgd63PLcYkDbJ30kdfwnCIxii8GLtsaQbjPWH0uV6KYD7TR5w4hsWMnNTsjYuzV
         rTzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PqDJgaeqrbeWjVOuDSphjygJPuXhEGaAt+BgwJngH8NvTHjVe
	ZW4gQc5W6Gay4JAdwS57BXc=
X-Google-Smtp-Source: ABdhPJy+yw8Aw0DnoT842q21Tp2+ih9JJfYBbIZ1h3OUdC41qrJBRMWx1cjwvGq5iDCUHm7Iuu5kAQ==
X-Received: by 2002:a1f:72ce:: with SMTP id n197mr7470605vkc.13.1627904938037;
        Mon, 02 Aug 2021 04:48:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2183:: with SMTP id 3ls917958uac.9.gmail; Mon, 02 Aug
 2021 04:48:57 -0700 (PDT)
X-Received: by 2002:ab0:2814:: with SMTP id w20mr9271547uap.140.1627904937439;
        Mon, 02 Aug 2021 04:48:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627904937; cv=pass;
        d=google.com; s=arc-20160816;
        b=0OpufHH3Un5YVjXhGKkybDTzzNsjeUlXXSxYNAmdzvKb9gPAtKoSoeEv/Bv/ZXloLo
         qsEVEeK1hnmGxh4Gbtt7udzXf+A013dZr2Jmii1EUG5qy85ONeMLAnp1DR27jOKkwOUB
         T0wFVZ69UPSHDTuL7T/68UUMvYErte5IGW/Clj921MkT8bF8/7vGdXMuWKIFX2WOIXfW
         aTBWhp/aQm4SEe4zFM0T0WEeCZ8jLDjPv4q8iqn9OEj6c0SV1ySCbRNCe108YDqa8TJ4
         fIP0DJ5aR+cC6K4IdqmBC/+xEkvRkKjN6ulFbHPlvJakAV3jri3pwUzItkSOtt947StP
         6Gkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:dkim-signature;
        bh=LSY5kV2pM1wA0CFUouuMOl/c8ixRoKUO9T2iC3tpX/I=;
        b=fmCkq2yQpo1P36kVhSDkVjB0nK6Dn60eVAHF/amM8YmMnjquqFZXPL+46hS5lodL1f
         mP+sNzx7/sqtc0I27Zh0gnuMrlgauq3wFkJWrl35vN1cVZKty1xCNPbkypUFaaOAHG64
         RBFyPK2UC9VOitwP/1PuJG8Aq6MKS9xhhaT8YvE2KIElEuy2BP2/8H/t+qzmXVIQZoV/
         b37rRFunnwU9ITxf/XfrU8/G1asGuoxLwED0Buw8+Z6iv+/fkbds4yNnd8AQRjNsXDVO
         14qlrHOuJM7KrSwTQCd7c8JTxD2x9PNzv2vpqrtafqW29vYj7kFYMZKKcVgTZBoiEPGh
         lkKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com header.b=Hc8T5Nco;
       arc=pass (i=1 spf=pass spfdomain=marvell.com dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of pkushwaha@marvell.com designates 67.231.156.173 as permitted sender) smtp.mailfrom=pkushwaha@marvell.com;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=marvell.com
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com. [67.231.156.173])
        by gmr-mx.google.com with ESMTPS id y3si351691vkn.3.2021.08.02.04.48.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 04:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of pkushwaha@marvell.com designates 67.231.156.173 as permitted sender) client-ip=67.231.156.173;
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 172BhEVf012380;
	Mon, 2 Aug 2021 04:48:53 -0700
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-0016f401.pphosted.com with ESMTP id 3a6b46rvxp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Aug 2021 04:48:53 -0700
Received: from m0045851.ppops.net (m0045851.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 172BjD3K016005;
	Mon, 2 Aug 2021 04:48:52 -0700
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1anam02lp2048.outbound.protection.outlook.com [104.47.57.48])
	by mx0b-0016f401.pphosted.com with ESMTP id 3a6b46rvxm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Aug 2021 04:48:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtPL3lWrRFHluaBQXpneORp22o0kEidmq84dzrIwpehm9WHt7w8AKwyHEBPwjCwF3EbrBThtiFxq4FvVPYmD0fuit+M2Xf9P6isPKc3JYGg+C27JFp6CaDXkyJoirc5MW/yMKEer2qxY4NndSAjKXGew0L2VvijocJjlPXP4nKPyQ2dyP3DiiEoqJ1FraTPg4ntqHtO8VdaOweQoJUoClaXT/+qI+ZCYJlS0Z29+gCr8REBRHRXuR//5VxDLv0Y1Zi7qDNyt6VqxxCSWjWeT8Pc7TiJX9xaANMhbhfLxjPD06jM16RRztJ2RVWqoJUlfmvou2IKhXSWVdUIKrxABPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LSY5kV2pM1wA0CFUouuMOl/c8ixRoKUO9T2iC3tpX/I=;
 b=TJOeUx1omIm/mPYfqPAwH5W4oGoRehobtulKTY3iqj7gfqbIgBmlEIr8RWec3CXmDTaZRfpyd2I1ikhb9NEmVCLJ/YSSqZFyBh9EOauhlDfMhFAaADB8yxqKWU86apd07RtesZy2PMqH87fag5W1de2De34MMCHZCrErUAgLO6rH79Cc1/V/lvK/07iQuVbSvXW7ZYRrpyv4yudzY183DvYXVgrJxVVLYF/TOo/aOEqbqeM5/6/iL+uSGm0Ff7YPf7srst5+if7lHlJM/qeJQmUXk4/lvWHi8hHHzZYRxZ1q7h2alLL7JNI1u9BKPQS8YiQ7Ya1yrAQN00wIn6RAXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from DM5PR18MB2229.namprd18.prod.outlook.com (2603:10b6:4:b9::24) by
 DM6PR18MB3051.namprd18.prod.outlook.com (2603:10b6:5:162::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.18; Mon, 2 Aug 2021 11:48:49 +0000
Received: from DM5PR18MB2229.namprd18.prod.outlook.com
 ([fe80::a9c9:dccf:5e59:fdec]) by DM5PR18MB2229.namprd18.prod.outlook.com
 ([fe80::a9c9:dccf:5e59:fdec%2]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 11:48:49 +0000
From: Prabhakar Kushwaha <pkushwaha@marvell.com>
To: Bill Wendling <morbo@google.com>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>,
        "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Ariel Elior <aelior@marvell.com>,
        Sudarsana Reddy Kalluru <skalluru@marvell.com>,
        GR-everest-linux-l2
	<GR-everest-linux-l2@marvell.com>,
        "David S . Miller" <davem@davemloft.net>,
        Nilesh Javali <njavali@marvell.com>,
        GR-QLogic-Storage-Upstream
	<GR-QLogic-Storage-Upstream@marvell.com>,
        "James E . J . Bottomley"
	<jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Shai Malin <smalin@marvell.com>
Subject: RE: [PATCH v2 2/3] bnx2x: remove unused variable 'cur_data_offset'
Thread-Topic: [PATCH v2 2/3] bnx2x: remove unused variable 'cur_data_offset'
Thread-Index: AdeHk9R53B01xuamRI2ZzYfxiphUDA==
Date: Mon, 2 Aug 2021 11:48:49 +0000
Message-ID: <DM5PR18MB22293BEFF6CF18BC2B9700C6B2EF9@DM5PR18MB2229.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ea9d8f0-8dc2-4803-5c27-08d955ab7e71
x-ms-traffictypediagnostic: DM6PR18MB3051:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR18MB3051AEE1BF50BD3A1BEB851FB2EF9@DM6PR18MB3051.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: opCjAkGi85iHrqgL6WHuv3yFccy7maPPBfH3zKQ+iT8VVFtiL6pFgyJnAF0Tj3aV0GeIbkB9tSOAbdfeBchP/ykbqxEiXaNrflH1zlGAEDUnBSSDXsHnj9Naj6xOqsnRZwxM1VA2pisM692mM8px7nWdZwYlHbpwb+wJO9PKDv9t/UOvjGDI/OP+sZqmLEMGpYjASs+3zEWzCmlnSpbfSM+ZEeQnv35RF8CoVBogLkErehbFFXHR6697AA+XDQQZTOC0IRnMDACWfCab4KVaGiApsYrvMK1z2IZ3uyt6Xjh1g2UNSVketezGCkFG8Oa8q1lY7eZBDeEMAOVi9aU8ZiGIfGQWzZs8kgP5w1SfHfOUJGhDyyfyw7vwNqEtt8dSiarJfTUWB6ak8+frWq6wx5M2xEP3B1Ag59V1NWmqrfBQDKQVK54Ko5EcIOo4otAwJcBT8+2BU+2Kw3fcrFteTVorlfNi1SEllsWMPJ+v2HfzwYbwKisPzZLvrmpFtuiFuu/gNsafk/V9flzeBpAlx27r/A0LNKtKZ3oMB8/+lQwplvO3IKyDwU14aJJ1taUdxhwh0NZrM6bgP9x1lEBDTOUdbUwNnZIRv/MRRao5WrVsQBqBgexE/37kGdjg7UJUWI+q8PNlCZFvjaJl7czk4infB52w58FhRdwblfv+eibAfSyiosKYKZ34IE50E42c4HFu37F2EfCn2joLWJJVW9pZN1P6DyJicQZOJDj3lLw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR18MB2229.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(366004)(396003)(39860400002)(136003)(38100700002)(6506007)(26005)(66946007)(76116006)(55016002)(86362001)(110136005)(316002)(186003)(122000001)(53546011)(83380400001)(5660300002)(52536014)(4744005)(2906002)(921005)(64756008)(71200400001)(33656002)(8676002)(6636002)(7696005)(66476007)(38070700005)(7416002)(66556008)(478600001)(8936002)(66446008)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGxaMzFoSVJrUlA5Zm5MbDRNMXU2TjBrMXVOdEgrNm1SaGpEa2NLVXdGZXdN?=
 =?utf-8?B?cFFhK2ZiMFpaY2RMckZldmhRdnhOVTdvUCtkZlF2RHM0TENXdWRaejIrL3pQ?=
 =?utf-8?B?SnN1d0tTa2dEeTN6b2NRTkpZQkN0eEUwRnZUYVNrbTRGSDQrS2QyMWM0OFIz?=
 =?utf-8?B?SjNraHN4M3Z2NHh6eXluZ0wwbFpjeHFWd29xU3dTaVhwaW1BcDNLQmxMU0Jn?=
 =?utf-8?B?Q0xaRWRDK2hOeDd2OTROL0MyL1MzbXN1b0hNYnZWWHZ0SnV4Y1FXVHI0cXJa?=
 =?utf-8?B?b0FPNVptNjNHZ05pOFhqb0I3QXBWYWNNb0xsT0p6anZtUnpmWlpuZ0REd0NI?=
 =?utf-8?B?V2dOVCtOdXlmTFpscG12dnlOdS8vN0p5SmlsY2xiVWR6SU54YTFpRkdqV25p?=
 =?utf-8?B?T0s4cWdPTXV4Y3Z5eGlJT2I0dkdsNk1KN1dNSUdLYVlpZU5MYkgvUnNjVS95?=
 =?utf-8?B?S3lzSHRoQUJNN1dXa1paRngxeHlWM2Y0UWg1SnJTMEVOQ3dqbnUrTzczaDZE?=
 =?utf-8?B?VVFpNzJjQnNVZTY5SUVQczBMTEt6TGhHb1JhTTArbHFITVk5VnRlN285NW8z?=
 =?utf-8?B?WTJ4aHpubVlIL2RRS1paVnV1RHZMMUNDSjQ1SmdGZzIyQUJwUHh3eGk5ZGZr?=
 =?utf-8?B?Y2VwMi9RbXdxTnB6SFR5bVdEWEQxaEYvUHdUaVVmUk1LZ25IZEFGZm9EVkN2?=
 =?utf-8?B?ZjBMWC92cityQlBKN1hoWjd1ejdMTk9sYVpHQmRLcm1odTdwQ0N6eDM0a0Mz?=
 =?utf-8?B?aUp3NDEybitPMWE0UnFSRHNOc0syMllmRi81R3g1VVpOYnRZdGxuU0h0bjd0?=
 =?utf-8?B?T0FMeFlHbm4wNnh3WmErQWwvOUIwN1pJOUFSeXZWenBxVnBKSTMyM21rMjR4?=
 =?utf-8?B?N0J4Mno3STdRSCs2ZnVxeHFiNVN3cE5IaWxIbllxL05MTjZCZHcyY0txd1FG?=
 =?utf-8?B?MVYrdit0UDJwS21VNnMrV2FlSEltbDFVZXBkc2U1Q1JyTklGUUdqMnl0aFkx?=
 =?utf-8?B?R1lpcnk0MDR6ZExaOC9MdWp2eXdERzdYR0plYUlXc2h3RDRqU0NQWk4yTUFQ?=
 =?utf-8?B?RFk5OXYrdzhoYXhORVRLSW5ZU2QyUWx6aU1yUjV3NTFSQmFZZUxFemIvNFdF?=
 =?utf-8?B?MEZXQTVCWEZOU1VCRmxuNzY3NFh0Z3pTdndockRBcDRQM3lEZnFZb2o2TVNH?=
 =?utf-8?B?Q2ZRTHlZNXZGU0l4Z2pWanVueElvcWswSnVjK0xGaGFHV0JsY2luUDZhVnpp?=
 =?utf-8?B?VWFNWlJ1MXhqSkt3UHJoS3JINzdpVURQSHVMYjhHRHM5Q2pGeXY4NUwySHFu?=
 =?utf-8?B?Mk50eEhFcHVDMnhiRE83R3FWbk1ZbkxseTdrSXJoU0ErMzhKY2w4WkhIM29h?=
 =?utf-8?B?RUFndW9DcHZvd2QvMzRDejBzWDJSOGJ5R3RBalRUL1lDTDhZeng1VUg1WWpB?=
 =?utf-8?B?K2VCUmttNUxvVVpxTDFJME82OUp2YmVGQVdDUVN3MUNNR1BlREVzcFVqNW5v?=
 =?utf-8?B?OGsza0owMFlIdkNDMjFKT0VlcmJ3UkJtcDlvUlp1dTM3c2MrUjdKQVpwV3BH?=
 =?utf-8?B?MXBlZXByZVBLTFdlZjN6RXhxTEU5RUZsdStIUDJDODg2dENqdk13WlVWRFp6?=
 =?utf-8?B?UzJHWWZIZ0NvQ0htRit5RWhHbG9BVmt2WHhOVWhtaGY1OW5scnFxRlkyc281?=
 =?utf-8?B?bHhienlYLzRHdHI2RWlNdGZqelVvaUNTVTRFK0FzWkI5SFhUZnc4SlJyRXgw?=
 =?utf-8?Q?IK1B9+/Mu9hhvAvNzCTQ4i4FkQNX0qoDtYMCmrb?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR18MB2229.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ea9d8f0-8dc2-4803-5c27-08d955ab7e71
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 11:48:49.6783
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xh+CnQuAw+NWVxThFfspU8pJqt61ZgK8kaqMWa3tJAQ45fANE/cEpFTPpDuqaONvnmEI2CU8ZJvKEYhnwMIrjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB3051
X-Proofpoint-GUID: yN7tE8EKp8z8Yd619oRit2rBj8VJbANq
X-Proofpoint-ORIG-GUID: eY7z8WtprD-qoU_wbMFvil-engEn-YNN
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-08-02_05:2021-08-02,2021-08-02 signatures=0
X-Original-Sender: pkushwaha@marvell.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com
 header.b=Hc8T5Nco;       arc=pass (i=1 spf=pass spfdomain=marvell.com
 dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of pkushwaha@marvell.com designates
 67.231.156.173 as permitted sender) smtp.mailfrom=pkushwaha@marvell.com;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=marvell.com
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
> From: Bill Wendling <morbo@google.com>
> Sent: Tuesday, July 27, 2021 1:49 AM
> To: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; linux-
> scsi@vger.kernel.org; clang-built-linux@googlegroups.com; Nathan Chancellor
> <nathan@kernel.org>; Nick Desaulniers <ndesaulniers@google.com>; Ariel Elior
> <aelior@marvell.com>; Sudarsana Reddy Kalluru <skalluru@marvell.com>; GR-
> everest-linux-l2 <GR-everest-linux-l2@marvell.com>; David S . Miller
> <davem@davemloft.net>; Nilesh Javali <njavali@marvell.com>; GR-QLogic-
> Storage-Upstream <GR-QLogic-Storage-Upstream@marvell.com>; James E . J .
> Bottomley <jejb@linux.ibm.com>; Martin K . Petersen
> <martin.petersen@oracle.com>
> Cc: Bill Wendling <morbo@google.com>
> Subject: [EXT] [PATCH v2 2/3] bnx2x: remove unused variable 'cur_data_offset'
> 
> Fix the clang build warning:
> 
>   drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c:1862:13: error: variable
> 'cur_data_offset' set but not used [-Werror,-Wunused-but-set-variable]
>         dma_addr_t cur_data_offset;
> 
> Signed-off-by: Bill Wendling <morbo@google.com>
> ---

Acked-by: Prabhakar Kushwaha <pkushwaha@marvell.com>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DM5PR18MB22293BEFF6CF18BC2B9700C6B2EF9%40DM5PR18MB2229.namprd18.prod.outlook.com.
