Return-Path: <clang-built-linux+bncBCH7325XY4FRBRX5TCDAMGQEXH26DOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC883A59D8
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 19:22:16 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id on11-20020a17090b1d0bb029016bba777f5fsf9936505pjb.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 10:22:16 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623604935; cv=pass;
        d=google.com; s=arc-20160816;
        b=jndMIfdBkgUW87Q1Xnkbaf3hdqeEn+ogmA2fWvycNfTLe6a+RUd+rKlfaj6FIKHATR
         aD91OF922kGC2Q0W9i/sJPhldFQGn/YD+ma8bcai8vkBpvF9gmHEziVLZXNh203PCUnU
         udLl1nplBSxOXl/zO6fg84cqjIgxJWuIeT7f1BW7NwpE1qVHsUF1zCVkuFcWW+8HUMOf
         Wilei5BSUcS7Glv32Gvgm1Rh/mV0URmWFBa3tSeyTN7hz2HpXtdMEtebTgW+9q1stQ0A
         5PGo4B9ha6cHq0XTaRv/JrUb++u7Uf6N5upKmKoU8L+ak/chcNGNmbSYMd5X8cnzjpgF
         IvAw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=+JxFQEEME1H/RGsBi0Cwbw5VpWwkbqJCe/tutaKqitk=;
        b=p1ICXDF8LwpqeDMS9k6CwC/+nI20DaB8R6A2h0Snx3etvaw/eXBIMeVGQHx0szimQf
         uDF2SN0ngUqTFjuIm2qGVVCClEw08rNxJt8FdPetj3Bv6934KEPUDD3B/NNBOHOS4hjX
         /ZF89QS15Gnq/iW/z+pGJ5vKsjgCpfZy7S8Xjx2hhZqspgYuJ4egVk1mWlNbrztPNYhJ
         +ePIKn8Kr1uUYRH80zM9DnWwfVyWWiV6mY0FI4wiWaFbN23405PJy2l4mTg49GGtD2m/
         IefuuUd6D/6h+9mj8/o/Pf5BV8qIA/JADJySf617WjsGBTH92CyLkbjErf5h52KwGOb5
         XTHw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@cornelisnetworks.com header.s=selector1 header.b=lJjCVH77;
       arc=pass (i=1 spf=pass spfdomain=cornelisnetworks.com dkim=pass dkdomain=cornelisnetworks.com dmarc=pass fromdomain=cornelisnetworks.com);
       spf=pass (google.com: domain of mike.marciniszyn@cornelisnetworks.com designates 40.107.212.137 as permitted sender) smtp.mailfrom=mike.marciniszyn@cornelisnetworks.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+JxFQEEME1H/RGsBi0Cwbw5VpWwkbqJCe/tutaKqitk=;
        b=q16Ew/jkxFTbHFkcK3P69nAT8xpm654gQ3lmwYZosKstWEMMW0rmEsvHEMFPXXZhdO
         s7eTuZ6unRTvBZOANYVVQWXsla23xDyWBC+5Mgof4HEWbFQtW6t3DkL/73UIxtII11Vw
         6HO6ep9lwo1umvXOgLx6ZiOp57DujZpwOpVU2YxQMQ2BoXymDVauhPA01DErpmhAlQgI
         sSxaVzWzG+CcYyvEzMI1agHcooYKLhIJz731xch/gmSyZ6NNqbfRFK6chVFuiKiOlTGZ
         5lomL6SmqLPNKEb+znLgXP7EmOqDU0QT90hdellrt4qlOU8cg6iTrOVvPMKZGgqn0hrT
         PX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+JxFQEEME1H/RGsBi0Cwbw5VpWwkbqJCe/tutaKqitk=;
        b=Gyho3250CKbzcVUwEj+0HKNJoDC3KY7xMOaNt03vvGwmAPxDMZxf1cgIKmEfHybjYd
         wwE2C2BRlj91Abiqyb5XAEKhbXNy2NNstYJTzoullxh0yx+GjNh+GRVtap2BwHOCLke6
         l85MF7J0dgy2muFFB4P16H2HxgmFx0JDCEmlaZRV47pWdRyAvNmoC/r56c4zYbrHv0Hx
         8SzcFi7R7wM7DmXN+/9G7cMzqH4UXfwutZRXraGwtNHotLPz74DogbRfoM2P4YWJPM6I
         v5DmwtFkndPs2VXP0fZf+n07uAyt1XCb7yFu2DLXX/pf0/myKOho6jqmXu/WmZCv3p3S
         8N5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RnR2S1DufAslKscFtts0rkjgcj0TlZABOofM2FVj9JEv4TuEu
	iYMhB7yF/6jIYiNjawieTKk=
X-Google-Smtp-Source: ABdhPJxAXMRqPotfhlhn/QAr2cbyOPjmjOk5dv413Vb/ziyKK+tG+AFNuvqbawwIR+aGJbtkmjY+ig==
X-Received: by 2002:a17:90a:950c:: with SMTP id t12mr18635907pjo.135.1623604934756;
        Sun, 13 Jun 2021 10:22:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1a88:: with SMTP id ng8ls12154437pjb.3.canary-gmail;
 Sun, 13 Jun 2021 10:22:14 -0700 (PDT)
X-Received: by 2002:a17:90a:d590:: with SMTP id v16mr14502470pju.205.1623604934212;
        Sun, 13 Jun 2021 10:22:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623604934; cv=pass;
        d=google.com; s=arc-20160816;
        b=jJBHUWUlqXDkgdt57ZShp7fp5XG0HCfiVH6t6y/gWHqyl10u8ByL8qI6dalLhJnl82
         rQiqRiIjWElWjGofMDrOaC3wmDYZgJEQJbroVAFlDq3hSLC72m+207OOtFRR4dpotXp+
         MQf2QVORPmEpoiPLv3xTNOz7OrVrN4AJrG7RLZOs1fEtOZAQTGtG/ZrgEvZyABEzQbsj
         dygnoXUhg88z41ZHKuXOip0nG2of4cWzawtWwzCN2JUswCYHuWsCpHMQd5ZcJD8UyY7T
         qd4ySmxaZphNPyl4VqbixxfY5nnjJd0OzXuv+ng4SWj+8TdRkM74zem3NJMHls5RqnhH
         Louw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=slAGYeicS0LHhupXv4tVby7yKQQrWIyZUeYc8ksPOU8=;
        b=vOESNqi941tvEV8AwZoewX/yoHLlvdcsxv8gxhSAWnaDVI1TdK7IXsgNvUMBC/K/R4
         tP3e39WY+7ls9J68+zaMWAYqE/z4UaduKZmbpYF55+tW8mZcvxO1IIs5s7owdsLaZZRm
         1grKBjgcLGaH4G0KRyjne3ARETeyyXm9GlYSBN4Qi67nUfxN7G+Zmp+U9uGr2BTQ+PaF
         dVY8WR2rARIqxQdgQY43ucx/ZyutEqxdWUyVAEsQoMI4qjgSSlt6Nm3jKim7Wqy3YRxk
         JB22jiaF4Rzf/JQr8OuNhkJDgJlAzJNvb6+x9phP2Octhkwyp0WC7EFH3seViB5Z8G70
         UXjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cornelisnetworks.com header.s=selector1 header.b=lJjCVH77;
       arc=pass (i=1 spf=pass spfdomain=cornelisnetworks.com dkim=pass dkdomain=cornelisnetworks.com dmarc=pass fromdomain=cornelisnetworks.com);
       spf=pass (google.com: domain of mike.marciniszyn@cornelisnetworks.com designates 40.107.212.137 as permitted sender) smtp.mailfrom=mike.marciniszyn@cornelisnetworks.com
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2137.outbound.protection.outlook.com. [40.107.212.137])
        by gmr-mx.google.com with ESMTPS id d123si1081887pfa.2.2021.06.13.10.22.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Jun 2021 10:22:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.marciniszyn@cornelisnetworks.com designates 40.107.212.137 as permitted sender) client-ip=40.107.212.137;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbEZRrP5isJITAJd/LcDdGdl5F+arZQ7ej1TH9tfykhSoPRES8uzFOr351jljSTYNkTHtCp74HGhzX6KIYN7aS42naJPYyaXjLyremQ33JEO4Dw6+JxRLjVXP8fFQyRraCyPTdncq9qvZdBjRhvsKLaHoyhNWAugzYXRG1h48tts/agOeUret7NI1mXOv81FqKhfmCmx308+sG3f+44yUXbfttt1dbI2tEgZmpg9itiUbcP54XuJxTKkLaPL+3M5hy1HYX84G+DPiJ/lOvOkAOBKJbbzuCOsyy3Gbu7VDXJpIpucLROrUn168Wvf1N0mnoWJ3nxBmBCdUQ5pJabRpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=slAGYeicS0LHhupXv4tVby7yKQQrWIyZUeYc8ksPOU8=;
 b=Rfp24H4WgLvOv2byfuHZ5C/4X1VXrCB8WbbhfkF6zYWyFyMZhhqPibIrRZn2WnjFym+5uJP+VVMtGKe4xiDx5QUImiK6GTYVvUw86mtxGV16vL7m33obgaBV0PTaunRztY57vOIVsrsexW2/JAd9j/YLUlv0DGKl0/8LOdBCTMCwg1MkTvRQgr29obz7LoB93S0+yCaPGp0rkOPz5Nf1VRhPJgj9ByMKwesDDlhgajzQzUK98wSKb6EvRmkT8kvDHwkaPwuq0nVSCMHf85baBqC5fd9mzrB6JRDswukZoSqPRg8n9C1kOrXJAhloZLR6Sy5KrCGG6LGcMbWgVnhtcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cornelisnetworks.com; dmarc=pass action=none
 header.from=cornelisnetworks.com; dkim=pass header.d=cornelisnetworks.com;
 arc=none
Received: from CH0PR01MB7153.prod.exchangelabs.com (2603:10b6:610:ea::7) by
 CH0PR01MB7091.prod.exchangelabs.com (2603:10b6:610:f1::8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4219.23; Sun, 13 Jun 2021 17:22:11 +0000
Received: from CH0PR01MB7153.prod.exchangelabs.com
 ([fe80::81f3:3a8:e00f:92ec]) by CH0PR01MB7153.prod.exchangelabs.com
 ([fe80::81f3:3a8:e00f:92ec%7]) with mapi id 15.20.4219.025; Sun, 13 Jun 2021
 17:22:11 +0000
From: "Marciniszyn, Mike" <mike.marciniszyn@cornelisnetworks.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
	"Dalessandro, Dennis" <dennis.dalessandro@cornelisnetworks.com>
CC: Doug Ledford <dledford@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
	Greg KH <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>, Adit Ranadive <aditr@vmware.com>,
	Ariel Elior <aelior@marvell.com>, Christian Benvenuti <benve@cisco.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>, Gal Pressman
	<galpress@amazon.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-rdma@vger.kernel.org"
	<linux-rdma@vger.kernel.org>, Michal Kalderon <mkalderon@marvell.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>, Naresh Kumar PBS
	<nareshkumar.pbs@broadcom.com>, Nelson Escobar <neescoba@cisco.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Potnuri Bharat Teja
	<bharat@chelsio.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Shiraz
 Saleem <shiraz.saleem@intel.com>, VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>, Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: RE: [PATCH rdma-next v2 00/15] Reorganize sysfs file creation for
 struct ib_devices
Thread-Topic: [PATCH rdma-next v2 00/15] Reorganize sysfs file creation for
 struct ib_devices
Thread-Index: AQHXXtruz2O6BBpwCE2mTJm4jI2k06sPGHQAgAMa1FA=
Date: Sun, 13 Jun 2021 17:22:10 +0000
Message-ID: <CH0PR01MB7153B2E8B70E84CB551FA951F2329@CH0PR01MB7153.prod.exchangelabs.com>
References: <cover.1623427137.git.leonro@nvidia.com>
 <20210611175620.GY1002214@nvidia.com>
In-Reply-To: <20210611175620.GY1002214@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.15.25.19]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d82547d6-3add-4376-d3c4-08d92e8fc776
x-ms-traffictypediagnostic: CH0PR01MB7091:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH0PR01MB70910AAAF7088C2DC0240114F2329@CH0PR01MB7091.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:446;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b8+XmwJLU6nRMi9njHQ+Ky/fGlTtgxgMMW77iHEUQueCaZDXmBDALTJxKRQvl6zrOv/6z41eFiVh2NhuiOcGilxE4XWrNP3MM0117ZlvBykREIt+7PA4njThfxrt+yVDZnqwx8ndWR3C8MBOLjloPNpOl8UdokFloh+TmhgoNpRBZI3gapgYA14N9j9zi8Y9DXM0kt0A0Kqi9Dd4HI4MKfEf79FSx9pGUPLu+QUmzcdv8FKxOoQvFCasf0Cqt+As8wcFaAZ9pXQps2WTRQjf8fJnlYln3AS8gMOzxVFlNX8B5IHQ3zafzE9WrfwDOyA+Cr9IS6+Vq/+6+QDj8xZuxrf9TNEck6wqoNJG4TOq5asyrQt33xn83lTcyUbCNCP3QJKObO/QFtFAiJTOGL4Jv2vNZagy7wvrlQ5OtHBB5CpIv23Vionsy0iC/+IICBVYeqUcY8cD2fC9DJZ4J0SydwWX2zeexA3ji6kpmOfTUM7WBPkwQB8glPCTxRrnDI1S+emvOUx+1e1hvfyJwb0fvYiWo4hZS094020oTz0X5sinEUKaW3BauVit/FnqWxX1zuIFyHBi4/6jujyYNCLHdwAugNeybXSBnBg4JuM49YM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR01MB7153.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(39830400003)(136003)(346002)(366004)(5660300002)(558084003)(66946007)(9686003)(76116006)(55016002)(86362001)(66476007)(26005)(4326008)(52536014)(186003)(71200400001)(6506007)(8936002)(2906002)(66556008)(64756008)(38100700002)(122000001)(8676002)(7696005)(478600001)(316002)(110136005)(54906003)(6636002)(33656002)(66446008)(7416002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AK0SKcQhhG6zg2JbcXQjYuvSsqgCk1jXv1AJgrJuvthokSayIYfeR3olf2AP?=
 =?us-ascii?Q?DFRWI2wQeJXd9oiIZjGgtVJ7cvSlKFLMwmusTpUkoGnVkmoNkwJ4QGbRcG7g?=
 =?us-ascii?Q?MokJarrylv+I2jNjbn5u/Y09b5LuhVIsTMWppSywggfTIhmfA6vZ2b23Thja?=
 =?us-ascii?Q?0pHsgaEcLZvVvzqF7ZJB0JmwQLlaDXZWZBiXw6N5q6WXuuF0cWTuYTPpvz5p?=
 =?us-ascii?Q?4FoAYTjNJiAeofudXlm8X7C7W3941R6YE++EFSKwiUJf2rqOwAUpMxCPuJfp?=
 =?us-ascii?Q?mR1EAcXR/MMre3OnSm6J11SQcJC8+M5eeYdt+5nG4AVZ0jZY1mTCoW+fcDx9?=
 =?us-ascii?Q?VI23YvmtKCJtjrNyXyVrLr02bISvv0ucrKkgdL/iDtx8SDcng7yuZw23No5z?=
 =?us-ascii?Q?+kQ8muELZk5toa1tQSxc2WSI4DAbKuqNArMpQUku0pDltsWlUhn16im1RX26?=
 =?us-ascii?Q?rFWEM/mUxHX19bbJentJHVvyw1Q5VJc9Ud6acQDSDhHzzvcO2D5iTCvKgtKC?=
 =?us-ascii?Q?KOwPXkJsgK4fTCuI6mXQb7GlqXWfHGXXTrB7FkqNFTiJSw5ST/I3OEZgVjKm?=
 =?us-ascii?Q?0B0Uf+xcwkcD9iLKyhhazax2mtdbnOpNzQ+nmEFDnaY3DrBoF83CSRExmQY6?=
 =?us-ascii?Q?Xu6RR8V6JRwiYLjfNHYXUFaxFy3r3Iym2ZfbWSig3y/oMVFanzPzxBhV8t1B?=
 =?us-ascii?Q?+qQlgve1UhSQsf1++18LlZDJFNTZOybhsP0igWEC2cXjPLhUE6OsVZnXEa2L?=
 =?us-ascii?Q?UmWj+LUxuoO0qH+Is1krH+gIYkEHzM7XwRpdjmLCtURemMBiUN70jCcI4N5E?=
 =?us-ascii?Q?1dxftI3IRN2txtOXZACFP9h71mH/FKXN7JApCbN1HOvhlIJ/BwTniiK/asXP?=
 =?us-ascii?Q?8TRYl0ub9qC2BpsIys18abCwVt3nOITmeKwUi6ts5D81n9QNUZyaP9KL+YGq?=
 =?us-ascii?Q?wQce3bbkh0/X+Enzc2gYnMvLsr38wCCmDXbb7WDPcC+OmMsmZU0lb08h6/fe?=
 =?us-ascii?Q?aGYvfz3P5OQ3sQt3n8HbnE/yoSwWbvHkEqmJH1mntQGaZmXhshOf6se0O9Wf?=
 =?us-ascii?Q?8cuQg2srhMU+CfwagE6LL+ij+tXHpKibb49lkFJX53vqnOX7IRLbhSiUNJti?=
 =?us-ascii?Q?iNGUUttJj7HSdBsLqS4aapptSHEl58SptfvIRiJIGazUUrcM7pfQXqy88TIr?=
 =?us-ascii?Q?x9fWNtbMDysRzS9r1U6yJ6Ae7MgvBhZHP1fL7MBF/oV6ryiB8k3cSFxRzdcj?=
 =?us-ascii?Q?ihz3eKwPoGOyAB5XkpPONYXMEGR32dSCqIYunzzDvznm/8F16ucY37JBf+A9?=
 =?us-ascii?Q?mDk=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: cornelisnetworks.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR01MB7153.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d82547d6-3add-4376-d3c4-08d92e8fc776
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2021 17:22:10.8950
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4dbdb7da-74ee-4b45-8747-ef5ce5ebe68a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mMWJuPuILVnHV7X7WlMcleCc2ag1k7zMfSlKiwUEEQhNMAFirPrpdknwiPVwwlVQ+RHvMzTp55Pfj+tYCr78OJiFuqDCGaNU85X69Ci9+sVu5QjE3tEKmrWOzz+JwuQD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR01MB7091
X-Original-Sender: mike.marciniszyn@cornelisnetworks.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cornelisnetworks.com header.s=selector1 header.b=lJjCVH77;
       arc=pass (i=1 spf=pass spfdomain=cornelisnetworks.com dkim=pass
 dkdomain=cornelisnetworks.com dmarc=pass fromdomain=cornelisnetworks.com);
       spf=pass (google.com: domain of mike.marciniszyn@cornelisnetworks.com
 designates 40.107.212.137 as permitted sender) smtp.mailfrom=mike.marciniszyn@cornelisnetworks.com
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

> 
> Dennis, are you OK with these changes?
> 
> Jason

Yes.

Tested-by: Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CH0PR01MB7153B2E8B70E84CB551FA951F2329%40CH0PR01MB7153.prod.exchangelabs.com.
