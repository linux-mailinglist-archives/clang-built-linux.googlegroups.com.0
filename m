Return-Path: <clang-built-linux+bncBDW5PLF2TMFBBCUWXSBAMGQEBRV5SPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF4E33AC1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 08:21:46 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id a22sf12106945ljq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 00:21:46 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1615792906; cv=pass;
        d=google.com; s=arc-20160816;
        b=FtabdrjC8PS7k/3j1ETUzqkM/vTeW/rOB+gR9MgjJiGLTSXD5DMTkatED24TVvMicx
         sLB/qctGv0MEWUGJtOGgW1/wB6TO3y3z7aG5fbgESOu526XKATTAN6kmRKKC5G6gGWxY
         yEAvNX8ht6QYivS91hb1lO8vAVL7m0q0wg9PPsekXb6axi69h6wRjZgbtlF9GjsreC1u
         STVvI4ubYKVV748FcJ/Bec8RmBVtas6Oem2id+EZwoQQ9jfNDTAPv21gdW3nRuLOVYId
         6cy9unQYuFjoQoahAwhzzsw7ZFNKIYqoXpECBBIC3rJUpOd/KxrJB/pbbQJv0hvEXok4
         PLgg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=LoWjWSqskyhKBdqQr22350H6UORfOxnUYyibBNeCox4=;
        b=psA4W9zRI8VN90lSLrjmvF0Fke1ZvmyjvOkqIM4KadDsyr81YcdwjF+oLBskrmRgb9
         Dx8U2GJrX823dkQCkKmuIhToH1m83p+e7uneQIrXRXB/T66XbmA+YNLm7VLrFVVVaRHk
         9Rr7hcz5bv1m3zB1iQi3X61cp3RJxBVLypIuJaCuz6l3BSyT0cw7iPZK8es0QF1cISAx
         IEBJIKz7ySqrJwQCRH4GCaYbP4jb9OFbmu96NzzJ/d09cEXVNxzzo5p+kTe81qJKDIa9
         gkeyOKrS45GmAZxkOFHwHKCYE6tNo0vp3LUx71Xoz3MUbz4Xa5PessysBMlEaNas+lyU
         PedA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ls21mbuV;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=rCe+NW+6;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=70146d10f=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=70146d10f=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LoWjWSqskyhKBdqQr22350H6UORfOxnUYyibBNeCox4=;
        b=IlED9kyGvwzg8PF8W2VGu1f4l8p3vJxXdwvq76lXc1FbVyXb5MqeI57EJjFnXT7iU+
         IqxK/XisBiw2NxQHz5sS/90NYJ4QTfNpvfIpyr0uF+VHptXg93cVxhu/dA4WMzu2fwm0
         5fXisFHYT038QeC1dWdglWRDAlFTIqOb4rayz/Z6Jaalm+/fqqwG+G7erLLIsC5kJdOI
         q/YoKTW9ZIwIVGLlR9BtVS3ubKVnE4Q6rGN6mgOvq8ffAUtAB0DDNRxHBvLY9jRnUnse
         ESKng0HJDK06oOiHZo7M4CTXKWwoslxsqBg5CndivKO2jVEgx6hZ0nA0hF6eQ5PjzSob
         z1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LoWjWSqskyhKBdqQr22350H6UORfOxnUYyibBNeCox4=;
        b=JHFFNXyNI/edbQoY+suSPaTRnlmoss/jPvgqTKeh0pUdjeSVrWhXOMG8O/NsbnVNvo
         gv/4sbxrA5jQMnmS58YpF413zeTzan+7x4NN2gsR38kk9+9hlIpHcdI+XECHxKyCnLi1
         IuHF8QzgCSfda0Cqk5zwa7QRK273C57RH8pU+ej9+LmtIyZw9KIeDF0EGcLcVnhjslxr
         QCpFijIQOl5phRXh/KQcf/5L3eFGkUPQ+NhC0zgrUs/e59H9T/D8lJcbkktNRDwVvlNO
         bpclcK6j2QVH1VkiizM6j+ycut6ID5NRYcCtAW82FHIMfU/CK/ixZ6nsxjYCI/MgPHuv
         qz9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g5AFALp4h/h8jKxCSuXex4yEA8mbnGLiQf0NVbm4M+M8+f+1K
	Ia/rMj70rOrY2r3EzChDRpg=
X-Google-Smtp-Source: ABdhPJxJf2YXW+rNENMyI9RluKszpTj1TIoyX2yEm5Wy9PU9MLEAk/0qefzHkVArBgR63fun3/377w==
X-Received: by 2002:a05:6512:a8b:: with SMTP id m11mr6958436lfu.112.1615792906240;
        Mon, 15 Mar 2021 00:21:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3c10:: with SMTP id j16ls3148611lja.2.gmail; Mon, 15 Mar
 2021 00:21:45 -0700 (PDT)
X-Received: by 2002:a2e:80c4:: with SMTP id r4mr9856986ljg.87.1615792905252;
        Mon, 15 Mar 2021 00:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615792905; cv=pass;
        d=google.com; s=arc-20160816;
        b=h8zonLeGAEzgxUquI72TMB462yC/iLZoAlCMmlo/IsW+3igEsDg1YWQBsM6zIz0ZHA
         5FVHlQVQeNFy10jkiZ2zDNPmJdjBCBtoB/O99PRah5kkcXH0GTyA9fgUpYI0isAmdpVZ
         9MSPXgoRLTiRHaArsThN1VAFiPBEqfB1VQreSsE/S+/qfsBoy7yMPbPWnrcXD0ovcO0D
         q0U90kAfNJIHHRpJxlkmwiSM9wz5FNlAmNRKBareCB+42D/V/rRV+XMEhmzEyk5izwGE
         ZepC2/pZiTTn3LBYkJ3Z37C6tswI4LGhaKMeDjbQAl9fdaAxCyU/jaxp5LNkbh8/gznm
         SHiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=wkgYLfuGoWmIjoVNWVbJadbNhPrWiSsF9feD7G8Z32U=;
        b=dlXSYE59QiAuZ3mXlM1C7FQbuxNrmqeHbTQOtPbKYZQo5IpoKVfUPBY7TIp7YeHaer
         RszSixvpoad/AdHrPsMfr4eeUQCSw2N+sL25IgfWfTsIgVmfNaA0kQn1/MKAidhrUO1r
         QuHGsWcAEO5qdsYnhn8Xd1nLENxIQ/T9paKAL7xzP6UAaTpQ08TgeL6LjgVc5aocTovW
         /2GaF6gxpi9UGIcpjes8D12zG16QBn/sOe5X96tAckIp+cW/4MuBPXjjm+qy2ZYsefU7
         4yb6qB0cSMTQIAfkEDWGaQBQhBpiivP/WBAqxYXV8Tw+0FFEPKGpJq7s9iwPqcfSAotT
         9zYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ls21mbuV;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=rCe+NW+6;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=70146d10f=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=70146d10f=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by gmr-mx.google.com with ESMTPS id h2si351516lja.3.2021.03.15.00.21.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 00:21:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=70146d10f=johannes.thumshirn@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
IronPort-SDR: 0kAOJ3GTDi+ISJ9a/0Yo6TglBeaidT2fMRz0F8G2rwsqHsry5oZLgwsdXzstfZ/yXtZV0nMWSn
 Wc2ODfP3B0vZdMyPFLovhiXugb9kdF/5pPgMiQ4vUv8+Be6TBg94jM0+HxR8SJYcNY5BggAXnh
 oOfCHQ7Dm47hA4rb6FBw+xh7c1cxLK9Rbe0GM7I92zojG6ITKQUtIvuXN99qLh8OdP117OH9PL
 5QwlV3g8N1N/xN/RwKDX34XSvVlQh/dM93AbvHlVp5ENhrsSlLOLkMXkzjjl73qF4ZwzDlx/AI
 BSw=
X-IronPort-AV: E=Sophos;i="5.81,249,1610380800"; 
   d="scan'208";a="266522693"
Received: from mail-bn7nam10lp2100.outbound.protection.outlook.com (HELO NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.100])
  by ob1.hgst.iphmx.com with ESMTP; 15 Mar 2021 15:21:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XFClbg6wlyPb/TuB9lTCiBimj194rbW0Rk5lRDA0bk7ognX+Ee1pYphy18mwE+pGyQGSg8EFShfncvB/VmYiwZ/SzPmFac/5dIshvpVsFfQ0Ic6y1a4MnMZrI7KEQMR/EZAcSf4PjHNPVIBV5P5KBou0PYclo8Z2IkzNBt4eBZABOfGmEcY7DLzVzmUAFAzwJOXtKCtNTm7BJ2QPCENOW0nABby4eS4jIoPRGNtp6skZDZRpa6mXZ1n1UkakZAhoGaUmtFNuDwgMfsUYuUZHLqMWV3jrdlbMN/hzXRKntanh+Jj1yKB2FlcuxEhN6gt+6/bepm+kxuekoBm/QvfVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wkgYLfuGoWmIjoVNWVbJadbNhPrWiSsF9feD7G8Z32U=;
 b=Xt8KFLUWdO2UKaKrMEVTq9HGCbC3Kkymji3AmO1oYX42aNCGMd+fGBH4sqHQi5dEbgatbop3Ic6xA+wA+uAHagE/A57EowfIyja1MKys/HnXe7kyL5lGk+8igewNwCc0txmxZj+imlxBRjqFzAh9HRpl1JmXpNtz5CLhFxYqqD9bgf9r8L/osZcDU1KSc8sQ5PGxHeDnnONMBpguaDLW+jKaBuP29sePxkpWERRmjAZoMtMZ89MF1EBCQ5R3Ap2neGKf+LLJn6XWac/ViBL1JFzxRZoIaXPWqc0D00vVzOE/GGoNnVP7xPCYGd7LuSJoXn/+9P1/88FhleVImmNKWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by PH0PR04MB7368.namprd04.prod.outlook.com (2603:10b6:510:1d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 07:21:39 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::3c7d:5381:1232:e725]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::3c7d:5381:1232:e725%7]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 07:21:39 +0000
From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
To: kernel test robot <lkp@intel.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
	"linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 2/2] zonefs: Fix O_APPEND async write handling
Thread-Topic: [PATCH 2/2] zonefs: Fix O_APPEND async write handling
Thread-Index: AQHXGU4zKEkqYN3HmkWOOzLkQ0PL4Q==
Date: Mon, 15 Mar 2021 07:21:39 +0000
Message-ID: <PH0PR04MB741614B0DED04C088E0B075E9B6C9@PH0PR04MB7416.namprd04.prod.outlook.com>
References: <20210315034919.87980-3-damien.lemoal@wdc.com>
 <202103151548.W9MG3wiF-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2001:a62:1542:e101:6d29:9a36:82c2:4644]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1e3ddcda-c03d-4a25-4897-08d8e782f9b2
x-ms-traffictypediagnostic: PH0PR04MB7368:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR04MB73680C0589EB632C7B5679069B6C9@PH0PR04MB7368.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: erxwBdf4OhPR0h0h3xtFIxcYHW8xsngsI7Fq2QKfYuu8ohMFVps/5aO8Mchi9hZQufqHJhHq8+Np9nawLxj1hxNcUMK5NSYctkARS0LR3tGaBK48Jp82yTOHXMuFo7xJ+2kESb/pvRDnqkAURvdwXZPbX8J0BI/3qv1n+jffaT9VGI9ZrOdXt5HDNPJNW4CAwVFscoTPVBOgROI29JGf5urU/O4GiKG8aGi5fsgedTCuJfZMAlhW9VKoc18mXwOVUP/LExatHy4SimWCnfnwxf/7txi1mN3pHgbtxCdVW90UO6D8KJ6YgJCwbZc/w2e3dkju3ycAORWunyo78W8DFJA+6jL8vUpWf5lMChF0trZlxQ4AF1cQb1xQOjvecWX+pJlVgTFJpwwaxhkQTc8sUIfDnfUVk7Zo6YYnMU0oTroAYanSyCirfTo4WP6QE3aIKUp3FUTkRC57gG2Pn2kn0vKlZQi67QN5QztNPgl/P8h0pokfrTuSYhjXipbL/S3vPOL1EOqJW/jRSPBHaseMgN8EMcF6iSmeTioF8ga3NnFeLclQ2GWdJ33QufZbz2Uc
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(136003)(39860400002)(366004)(396003)(8936002)(7696005)(4744005)(55016002)(6506007)(83380400001)(66946007)(66476007)(53546011)(66446008)(8676002)(9686003)(71200400001)(5660300002)(4326008)(33656002)(76116006)(86362001)(52536014)(186003)(478600001)(316002)(66556008)(64756008)(2906002)(110136005)(54906003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?r+n9zuFMEuhxVHP7gv0FR+4NzKjzqRuvUcU8Ui1n4bQyqLmOMBXwaL6XBL/T?=
 =?us-ascii?Q?jep+75gTjxuqkx79HfPCWHBtEqhX5FNrIMZbTYC0rsAY7YF69dZa7LiAIZvn?=
 =?us-ascii?Q?BUGy7OukH0eTXhVpPe7ZEzhjqoGbpkAuhr8MDKiTBan553HEYNYcgrpKrRUL?=
 =?us-ascii?Q?NrtDyAhdDc5SaUDRumtuZcHVzmcPL9MYV9IZEo46bJiEsryCtCbZpHi7cn6T?=
 =?us-ascii?Q?TB1GEvvPV3On0q6m3hYIevzNhq9HPsbPDcwH9XwxaL+W2TE6Y5kHElIW+tmu?=
 =?us-ascii?Q?i8oS8rUQfbce9oxca2rGxlBozQC2PEEiVdp+72eXDus8yEe5vxtXECaEWv/e?=
 =?us-ascii?Q?RPj5pngr10g5nkTcnjzauCM/3ATOAUd3q5JUdh9+GmdL7PoQ5UMV7C4leMUb?=
 =?us-ascii?Q?Yah4L/yjv3i+rWayLp+PTWGjD+hDKtv3IHJmZwPOHndj0465WpsI+ExVnw+U?=
 =?us-ascii?Q?VgmyvWKsmh1ZSjx0gh0zIugChyCthKoabuVV2rEumVqIpBBdghuj1uFSuv5H?=
 =?us-ascii?Q?6v8SR3EnK/lxK0rOMamDIz/2nAHEoyGx0yYN2WQsZgg7NQuWO2IZtiHZ9EeL?=
 =?us-ascii?Q?C8BBy9MiaL5JnhSFstSMt+AsANvPcDpadxRE1hQE5Q8uUEghIQX+UfJdwuno?=
 =?us-ascii?Q?fEQADjUrAxc9e2kaq3lXmlIJLk9AXtFM0FG5pXq9cBEQCc/LWQmTQaTwqgwT?=
 =?us-ascii?Q?S9ZVzJG+qVhAFgpWw8CLGxEXBLjjwPIVUybecQGeA9uG6eM1sxJcc6uEXjdf?=
 =?us-ascii?Q?v62uX3zdfBQYGFdyYuB9gdyU6mx4NeaZD/Xmf+O9CKeWHEqX38R0FN2/XtaE?=
 =?us-ascii?Q?lvcWAhCDQs1kIRJ9rAbj+gmTfBS2hAhVLSorPijT+nJdQPI4X98l6voAaNCr?=
 =?us-ascii?Q?/VWU47R9WVFKwg5OE2NOiD1kmTMUegsNHblwmOQu6LpYepInjzgucrIvTy7U?=
 =?us-ascii?Q?6PlH3B44+RQtrsZUGc+Ig/ejaUXcITD94sUX6bjar6lcKR8hGd7ERcdlb2Nk?=
 =?us-ascii?Q?OhPjYgORohpsAyNxbXWQCy1BrsJ+2VP4PJoC1uvLxZx/V8zFhD/y+tkpeKAz?=
 =?us-ascii?Q?KugEHN33muAVUrG2KpgU2bJBp7mSGvhITYkq1E066DsBOEKBIqXLkn/Iu/wm?=
 =?us-ascii?Q?wWUaYdEWpIq+3E+J4Z6MWI7rRExU5hk/SFDuV+fEYt5+EBShYsm6vNztjjVk?=
 =?us-ascii?Q?436ImNLU9NznCDvqy39C8mF6/q8Qan31t9JovqaEPrD0zdYhGUsKAI4twlk1?=
 =?us-ascii?Q?rHi6Xl44HhWAr+41PUkCI/YxifwI1/+AAbfEBq3yxfZv+Xccn9kzmhul96W9?=
 =?us-ascii?Q?n10hG4AC3h4F2+Byph394cDOyZ1LgGlbrLHUaZBXrQDoXEF/PDj4CtVbM/Jk?=
 =?us-ascii?Q?/1oZEYm/fEvJX86vkxH+YAgeOR5LN40yFvxr8sF91VSsNeK1fQ=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e3ddcda-c03d-4a25-4897-08d8e782f9b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 07:21:39.2686
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LHdQ4v7aMAsecOEKJvy5Zf6tJCe7UpPAqVI5+jbd9Z1OVA3yOZWiUWEmIfyGp2c2PhtRr0fjneJ/sdWh+IXuvLvOfJVFeninXxNW6UcomWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB7368
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=ls21mbuV;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=rCe+NW+6;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=70146d10f=johannes.thumshirn@wdc.com designates 68.232.143.124
 as permitted sender) smtp.mailfrom="prvs=70146d10f=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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

On 15/03/2021 08:16, kernel test robot wrote:
> 818	static ssize_t zonefs_file_dio_write(struct kiocb *iocb, struct iov_iter *from)
>    819	{
>    820		struct inode *inode = file_inode(iocb->ki_filp);
>    821		struct zonefs_inode_info *zi = ZONEFS_I(inode);
>    822		struct super_block *sb = inode->i_sb;
>    823		bool sync = is_sync_kiocb(iocb);
>    824		bool append = false;
>    825		ssize_t ret, count;

>    843		count = zonefs_write_checks(iocb, from);
>  > 844		if (count <= 0)
>    845			goto inode_unlock;

Args that needs to be:
			if (count <= 0) {
				ret = count;
				goto inode_unlock;
			}

Sorry for not spotting it.

>    878	inode_unlock:
>    879		inode_unlock(inode);
>    880	
>    881		return ret;
>    882	}
>    883	

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/PH0PR04MB741614B0DED04C088E0B075E9B6C9%40PH0PR04MB7416.namprd04.prod.outlook.com.
