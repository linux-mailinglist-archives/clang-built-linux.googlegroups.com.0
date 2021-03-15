Return-Path: <clang-built-linux+bncBDF7X5HH4UNBBV4WXSBAMGQE7QHJ62Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91633AC23
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 08:23:03 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id 74sf12029371ljj.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 00:23:03 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1615792983; cv=pass;
        d=google.com; s=arc-20160816;
        b=pqS1hEXP7gq8roi4V5SayO7b4yTo3LhqMvK1/YWIZpy8x05KxgJrTipP0zP27wD2Tm
         XFSrYVJS6OcpdKItaqqSzvB1kqy7GIqsAbXbna+Bfv/O3o69SY4FAhxbh04t0jQ29kmm
         Tcvwd5oQh+qPehxnM347L/XgDvUjZRrALu6NBNaTAASmryGfYkKsdgEW2sjerJk8t5tx
         RJqhn5TmvBWVf4GiZRRdLSy/1j3ofXt2mxDCv5GQPCmVhMuF+uw0QWOMIxJA3u7h0QZ2
         u/unQuiNVRopueUum1ZesVcQNm/CAFujciIcL7J/j+1f7RnFUUSxqDdRJRxc7g05S3s/
         UVxA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=3KjZWL57QHqQ+yfGKRLFlwspUFTp073t3zqhoFTtpkw=;
        b=KyUZ1isMgobxqA45vb4M1TjtlnNYoS/25oSJj7DXdWL4GpjiKdQsoRmpBkeJwy4eTU
         OIUHuUeOJS/R8h8zCKo8B45JVugiK572cx4ydCJTLIwzGMCVFi6uRrjDcy7UB+x7fE58
         ad4dgP72nwYAYsayGo8Wn88l82S/TfwJHjVIRKfnKGpDFDxX7ZIYA6lNwh6ONu/7yGrF
         F6589XdqiraWeA0JtdDcgkZsaGP4N4z/Ym27Lbdu/UmP/jHluRfl5WjrllIp8Z8fEWrX
         wZzGgueFqg0cfIsuHgs74upmsuLRMSth8aGyydpRAO+Qi7sQu71E5ko9Tkl1pQHjDeFy
         d3DA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ACg68TD+;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=lF2yxznI;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=70165fb69=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=70165fb69=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3KjZWL57QHqQ+yfGKRLFlwspUFTp073t3zqhoFTtpkw=;
        b=LYhJH2rAPrOGo+dtCRHbGISmnLRy22k2U6zssb5GL/Lk5OYjiIy16YRx6eMNMA+ERr
         lY+hh3HYjCKLOlV1VX8RGuNEnhMve+r9hvIO3Edak/0bHx7DvggMAfHtb0k0P7WNIUiW
         USD69E1MmRZAOyJuF18wlVR290uiPdRHbxav0nNivxSFKfNouOPzpFRXnkZZOV4lI5G0
         vMrCCugXAcAHQsICzjcDHMTtVS8OK4HGrcE1CyQcHDRMKLYrALo+JZY5oz+xv0y+EKaB
         pTGNsCs5rWrJfEHH8dFtsIEJ2VyDHtmE+zwnULQXv6rfZM5OU0BJ0sWwE2wKMEGE5kP4
         Z9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3KjZWL57QHqQ+yfGKRLFlwspUFTp073t3zqhoFTtpkw=;
        b=kL9leDclawtd/vVY9foYIN8o3XEjeU96YLauvb40zBqJ2OJE+Ugl76vlrnIJebma37
         ivOPQ4QMFX19XCF6YKAfxfj6WXp6szx/Cot+XKZESOyi8ggZGZ0t/tMDVFLdLe04rqIR
         5OMnXjX6fMnc9OKNFmZLc8ae7uIk5QLKKhFOtfOu5EP+Yy0/DXyDt1b4CYYsbvE8g77f
         FwakSrq3P0r/rQ2vS5c/8q/p0tJImkbojQwgGaCTPnPjva7TkZ7RSo53iVlC4FeFXTv2
         kW3stgGK/SryeyglE0oa2pJlYwny1LjP2zFTNoj3LSaaWIlacRgxsnkUbBuJb5GRFac/
         /cDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vCxe8SeH/70KgNXWhbDerIE6OJZAj8Ce8Q5QeqngY8u4R5Ydo
	E17KmwfMONWpwKzL6w5KfSo=
X-Google-Smtp-Source: ABdhPJwaiO7CGZSFCFAGFr4onKl8YB+yJRi/ANUIng6QHRgYReMTJ6Z2yzUKu5ozuNNM2I7ywQq4Xg==
X-Received: by 2002:a2e:7007:: with SMTP id l7mr9891922ljc.436.1615792983437;
        Mon, 15 Mar 2021 00:23:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls247802lfu.3.gmail; Mon, 15
 Mar 2021 00:23:02 -0700 (PDT)
X-Received: by 2002:ac2:4ac1:: with SMTP id m1mr7125699lfp.446.1615792982456;
        Mon, 15 Mar 2021 00:23:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615792982; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7iDT5utpZ7S9NMUqZk99A95IZBvgP7KkFOTxy+zhsyddBseZ/NnzcAUacdQsgasP6
         FfTAwgPq26eypfXC9qzlDdwqW0Rwa2X/YeLERvUajgLJlTOaAQg9sKdffY0fzc/a2aTm
         WkE/L/RqcSzPI3HmfcUJMrH8HpubPydPaccTpghYX7ur+taxtpb/sLxAosSApCYQjNqn
         l5eAnn3EeBJFrG115Shf61kLWGf3bkE7zTUebqFcemk36rNvYlZoAF66H0MtfdCqbF28
         M0LhRW85ltyorAhXmESr26Xz2ez7bTU/Qjt9lkxLv1T8mi0qtfKokufr/tlk77RZKmJZ
         scRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=puSUvKm26429sO+Kc+9FHDgRnz/D3atdwRnE3cKgXsE=;
        b=HQE2+xaK+wyFUNEquMOuwl9OJYTHKJz+kaWtwfq0RETQtQr3+RXQ+CNy8gftqR7Ht/
         6rgPKLHBWgsmZYYyEebooSamMb4QUWg70vsJJLMlDD8hLv0VBfx5mPQYJgKRZkjsMSM5
         Z92OFnkNt0AqFSAK66s7tF+cTVwDRrVeEMJlMySIV2KtaiUjNhxRyCTTp7NoQ+Q/6uCd
         f2CuO4+PypdjOg1g2XD5RGsi5tNjEjcvAbDfZL+kl+yN0Q0J+qTc9G3Rwyx85pnzRYNS
         v5i+tfHpOeM7MPWqe1c06Y1+JW1p98BBSW2D7uV75umV/o3KVFq8SjqzPpBkShoEk22p
         KEhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=ACg68TD+;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=lF2yxznI;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=70165fb69=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=70165fb69=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by gmr-mx.google.com with ESMTPS id j12si414990lfg.8.2021.03.15.00.23.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 00:23:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=70165fb69=damien.lemoal@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
IronPort-SDR: N8Cbkvfn2wSpiFIOKoPJtgzanCrU5Eofj1mZA4YRzmbXTMnthUAue03x17MF2hnb6f4FhE67uj
 gzvF92Nm232BmaxWB+FmddkawmGUZANUzktzxV3nHp2BbB4BpInMb6Wp7UO/Rn9i6nthIQDY63
 +8lpXRsuWjcw5kp/Mzzx2VE51RRFFgBAdmTxP9fPvJZH7ZUx+AufeNYER2F6yKgw7urzjsH5kq
 tIDAkWuwnrOZhMwdQGjBbMQ977NFAkLGsMQfxDBJmbIU9glMyuhw3MTAgpAqY1Pc7v+XrFWKXS
 a1k=
X-IronPort-AV: E=Sophos;i="5.81,249,1610380800"; 
   d="scan'208";a="163295813"
Received: from mail-dm6nam12lp2170.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.170])
  by ob1.hgst.iphmx.com with ESMTP; 15 Mar 2021 15:23:00 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HWRckHelwtrmae1zqj67AvFAVAcpFip4Rna+3ZWFqFb50qJhCqWv7HH5TySQoTckiF+0Vjd0/QEwSCRODJu029CF6+QFKKWnm2HE46V/TQowBv3Og4NBKuwKtDFYSoryK3LQRL1U0QpbZMOAQgGZ0yMY0m1ppe372l1adn7g2Z57sgO/8fRF83zpX0GGoVf2GneESlLDvWdZFILkWhTi+/E/cyoI2xTx4M6FbqssKHzqaMDwX8IjzKc87TEcXWJbjYjwBILB1HAjOHBn5rBNnLk8SwmPIShijsgkRUGePBt493Iou1Zt0QMOux2zwHnCkA+3+X178nAIBpZUUPATOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=puSUvKm26429sO+Kc+9FHDgRnz/D3atdwRnE3cKgXsE=;
 b=ceI7l8SXwVqMsyCm47jUXNnEPNabE1hcudSTcDX6AhQ/cTBRUb2MeIjDnWXcx2nlcifnY1bVRQvmO0hklnR8v7Glgpa2LaEv0eU5tR9vqRWKAY5r78FoBV/APh2TqRHuYNgEWaM/vocPcHPGUpnEp88YtHBUtBFnq23LgKxi+BkPdR5BXpbXyrQemoG/6ISSWfL25YbUiFRcvJGcR/IrSPMAAkt+I6dxXsDOOjmSNQbxEYQS11Qo3swIG8QtfcrdkOkmXS5HvQVAntBCIwhA+GoBeLIkfvG2Tc/DaYxtcuAR6aJZYNwzb7KV2iODgQWCHspv8YX3xWhfW479vp+iXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by BL0PR04MB6595.namprd04.prod.outlook.com (2603:10b6:208:1c5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 07:22:56 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::e9c5:588:89e:6887]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::e9c5:588:89e:6887%3]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 07:22:56 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>, kernel test robot
	<lkp@intel.com>, "linux-fsdevel@vger.kernel.org"
	<linux-fsdevel@vger.kernel.org>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 2/2] zonefs: Fix O_APPEND async write handling
Thread-Topic: [PATCH 2/2] zonefs: Fix O_APPEND async write handling
Thread-Index: AQHXGU5UzgIQSOxcCkmbmdVM+KAasA==
Date: Mon, 15 Mar 2021 07:22:56 +0000
Message-ID: <BL0PR04MB6514205221C23615549ED67DE76C9@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210315034919.87980-3-damien.lemoal@wdc.com>
 <202103151548.W9MG3wiF-lkp@intel.com>
 <PH0PR04MB741614B0DED04C088E0B075E9B6C9@PH0PR04MB7416.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2400:2411:43c0:6000:85a2:35e9:2c43:32e2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7aff04bd-7a2b-42e8-b3fc-08d8e78327a4
x-ms-traffictypediagnostic: BL0PR04MB6595:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR04MB65950FC9603BDD8533B89E8AE76C9@BL0PR04MB6595.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2cgymLJ4uqrBtLjNdiQjxnzwLJjb1is+HCih4d0+ob3LBwnPrsy3AHAUjRNjpHJpncd7B4/MIvapDWwmRT4JKYk86h5h69RdrqW9bn7sOrMHpMa7jt3OZvwiRu1syioqFAxI+7AQmuCerSaHxenyqzTwWEoUtE8DLw3XTTqR14ob+ysDUcPSU4f3K6w8Kq4PG01RKG7cM9syD/irEMkcKbOXw8SDgbetJbF4nxg1T96CFdb2toYQ4a2tHFjzOw1fNTwSJiEwifqBJGZd+9i5nz/smkWYbSDGbd/rqEC7MTWBbCIZ9jAPuOCT0aw2pAkA97qAb0Oji/bm1SRoDCqpy6+S3jfHvOD1Ao6aXlMFVPtp8iun9+CK7IwG6Bij/LbrvQOLy96e4HfOSHhpDgh+AWP6E7E4RpfVk9FQFE6x7DmCqiuXloYJn83uoeN3fFhGOEgDxJxIMTBgBXNF+IkC49QZf5HEWchzovhRo++vbdYxaQUz2y13tJLpvT9HVL+rcWVuUHLNUZOWJEevVY8b2SavCaAuTTxpsXqDPrQnRuHUMNHAr0XvJgesjFybU22e
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(9686003)(52536014)(76116006)(54906003)(110136005)(8676002)(8936002)(5660300002)(55016002)(66556008)(7696005)(66446008)(91956017)(64756008)(66946007)(66476007)(33656002)(86362001)(6506007)(186003)(83380400001)(316002)(4326008)(4744005)(478600001)(71200400001)(2906002)(53546011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?PVVjlPxpte7/dntMU3+SL2vzp1ClF+s4lwyYKghXGuc9ebu6nevA76ygi8r/?=
 =?us-ascii?Q?419IWYEqCJCKGY7LWdPQbQUFMjTgviXCv3PPdj+JM7QTJrA04TNwioQV/Za3?=
 =?us-ascii?Q?AWzFQguWDaOmNX+tK3yj7/yR9F6ZudVwSvWIqsqL/HCAcDYIcFirSh0brHg3?=
 =?us-ascii?Q?ikvTMOrm9/XWWMxKHDujBe2Q7GvX0dOFu+WiB8Qpu1IPDr/SDh6fW+/VzzgG?=
 =?us-ascii?Q?MLTcAux2lh9/fFquwebH9/EDzPr1EROjCIETwNOeNiNK9s2b9eCmuLLVmMiO?=
 =?us-ascii?Q?g8YxWo06bmZFXsh7F1iG7IRnWnR9zYfrkOdlkQqW+VQSd+uIxmuI+UedL0/R?=
 =?us-ascii?Q?RLqf+xdceJuy9BzOaExgDQ10C7VMGygChvvLRDjRFfC2Veu0PffT3Wa68MKR?=
 =?us-ascii?Q?zL1Z08hUxhYn/S2gaVxJCjTjAd8CMhw3ND/7rsQsVJho9dJ2Fw98Wvl5ZY0P?=
 =?us-ascii?Q?CuDKz2J84NNsnUuebPH2y1lWW6lVgrQ31wbi/FAr6ERWGa/l6BHNdPmwvVzh?=
 =?us-ascii?Q?DYspDTf1E8WU4lMPfdOLcR4lNCghFTGLRv1d9HRqfYjL0pjYGNNDXwGCMINd?=
 =?us-ascii?Q?F2qfBnYR/aE73FTVmR75KIt3l2d7BJDFh44tl1vBwTjJkOv7P0fFF33uUljX?=
 =?us-ascii?Q?si3MhpqFQZJjAo3zuqrJdkeBEveVhSbcweEu7Vp+dr87x0tnu58tnnT8DtU5?=
 =?us-ascii?Q?+9df/xlH0vzU+mLyzXnHlKTYdVQrW8I/4UxIZS+0LwZPlrvLLBOVoUElNLUs?=
 =?us-ascii?Q?eWExPqnr4oEOPzi1ZCmx7R9ayGrgN2ArjsyJPNJ0R4CLTNEA3BxcNqk8IHcO?=
 =?us-ascii?Q?SMwTnCk1aEAkJBJv0Ion9g0tbw8n+WnLcnvEMMgwP8ovMQUUEmdyB/wQNfqp?=
 =?us-ascii?Q?LSFp8ZnSvfgL9B69YeUP2NAfwU2Y4XwqEyKbJ0uurpvUd/EZX1d/csH5WCB2?=
 =?us-ascii?Q?3J9pw+3myqRI2dVTHE5oeETZj5puZ7rm+pkkE2g5F/jlPFMP1X1JWk/4WORx?=
 =?us-ascii?Q?FJIOy71Sxs7INgGHxwxzGYEAmjKX8/Wg/NtmG3Kn0urp0mS57h9lvbM/oFzH?=
 =?us-ascii?Q?ukSFJkue1cVTMpFMRyz4XbNZgxlRfHygMk643bIacXKNUh5wEQuon8XYC2Cx?=
 =?us-ascii?Q?OpzAKpuiHepJ9QM1LDaGCxi6/EMBgRhcYOn3qlC5Czf4teRE3YyPkVzOCvEI?=
 =?us-ascii?Q?Cwg0eRrYC3q1xiokn4b5TegVnd+1kPXR1c8/aRL5XNFM6mKOSkKkvh5WBU7i?=
 =?us-ascii?Q?MDN4HvkFrZjIE2m39VO0eeLSJJbcVjHkxTukGiGgxwqwezTioBo/LJxQHFX1?=
 =?us-ascii?Q?7+hr+m5GgLyju8rfE7UgHH1UE/6USosW6wfdpU3qjz4XneaU2262hr1hV7Gd?=
 =?us-ascii?Q?+vQfgoy3VEO3gi2z+qLsYjbv1gJEAwNehh0l9jnXzLPco1628A=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aff04bd-7a2b-42e8-b3fc-08d8e78327a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 07:22:56.3239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o3uyXRDXm4cMYX51NJ/YbZ43jii/+bIIymgelUoD03B2tiiDXOpyeNDSbZRgSkRi0vP8Iidtz37KcDiVbCHj1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB6595
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=ACg68TD+;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=lF2yxznI;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=70165fb69=damien.lemoal@wdc.com designates 216.71.154.45 as
 permitted sender) smtp.mailfrom="prvs=70165fb69=Damien.LeMoal@wdc.com";
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

On 2021/03/15 16:21, Johannes Thumshirn wrote:
> On 15/03/2021 08:16, kernel test robot wrote:
>> 818	static ssize_t zonefs_file_dio_write(struct kiocb *iocb, struct iov_iter *from)
>>    819	{
>>    820		struct inode *inode = file_inode(iocb->ki_filp);
>>    821		struct zonefs_inode_info *zi = ZONEFS_I(inode);
>>    822		struct super_block *sb = inode->i_sb;
>>    823		bool sync = is_sync_kiocb(iocb);
>>    824		bool append = false;
>>    825		ssize_t ret, count;
> 
>>    843		count = zonefs_write_checks(iocb, from);
>>  > 844		if (count <= 0)
>>    845			goto inode_unlock;
> 
> Args that needs to be:
> 			if (count <= 0) {
> 				ret = count;
> 				goto inode_unlock;
> 			}
> 
> Sorry for not spotting it.

Yep. Sending v2. Weird that gcc does not complain on my local compile...

> 
>>    878	inode_unlock:
>>    879		inode_unlock(inode);
>>    880	
>>    881		return ret;
>>    882	}
>>    883	
> 

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BL0PR04MB6514205221C23615549ED67DE76C9%40BL0PR04MB6514.namprd04.prod.outlook.com.
