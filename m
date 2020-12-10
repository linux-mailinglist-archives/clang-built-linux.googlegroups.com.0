Return-Path: <clang-built-linux+bncBAABB75OZD7AKGQEF6NN5KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E562D5AB8
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 13:41:35 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id g5sf1942484lfr.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 04:41:35 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607604095; cv=pass;
        d=google.com; s=arc-20160816;
        b=BfF9eIB8eadmSpNEK5Zj0RaAOqRj5tUPtjeEKYu2hK2bVgYjNYl9x0hK9DrDHZxY00
         EeMdBAjiWDqRTCYmpPL5Jac2ZxxHC1qPx1WOlJ5EZx/oQAjqFRJbIxTgycfwUpGoKqb/
         570zXZxDZZNvk6WlygqP5qoNoe43bdG1a1GL0uiZ4+JAyDscP7LG7P/cROd0Tmo/7ezi
         VBwh1SgcKsj2ZtOjYSahJKGc+c5dPo+tyGcNIEIjoDCLmf6CSCSyMyvHYan6xk6etJAu
         Er9ivzlqTDJfpfiHjtSe9TzlmoPnEB0PGmG9dZsSqUrow0RwTls8RtYKlBzBAXacYcbG
         S2dQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :document_confidentiality:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=26vbzTJQhxmGuxZpnRqakR5FxJN0E0HFnKZ/+eNXiRM=;
        b=OXAmCzOJzl8kwZzeTV3+qKOWoT68SifDa6Mw2ELGj0pHT/2vGTYCgGsTD8gRV3A5+Y
         V54jgBCnAATWNvVngnNztJ1uBbUdvNNx/Z/mzWB3GknyrtZ3o2N8v4j2OoPjVz9BH1gr
         Oj/lyrgP/rlTlvD/zfaK2d6o4K3IUjWF7NrLiZpZmz8KNpNvUXoniR7hqIX9uo7JBk7v
         fWiqlwbeogT1YXnClH2DjpHU5Kk+pTZBoWZqsF9lBvf7wpilP1Vim2lXR2X1Fa4J+4QK
         soBvFlhRJW2ZVcUdHUBHugizu2d5Ig4Sfk3r0onijqesdBenb76mX0awsMOUNr5UUDmT
         hgOg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@siemens.onmicrosoft.com header.s=selector1-siemens-onmicrosoft-com header.b=l7dcy41L;
       arc=pass (i=1 spf=pass spfdomain=siemens.com dkim=pass dkdomain=siemens.com dmarc=pass fromdomain=siemens.com);
       spf=pass (google.com: domain of erez.geva.ext@siemens.com designates 40.107.1.78 as permitted sender) smtp.mailfrom=erez.geva.ext@siemens.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=siemens.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :document_confidentiality:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=26vbzTJQhxmGuxZpnRqakR5FxJN0E0HFnKZ/+eNXiRM=;
        b=YeB6FZsbAr1rk9xFfUXpYWVHVO6CiqMBibhKLn0uu0BwJnszYlKaf6g6FT5PPzsXId
         H1iOthfvkpvFfc1h3zXpyDaw/FiI8B9fiYDZwR4+yTQwiVjujp+QhL+6xZS+MJ/PvZaa
         K7IbHTwP1JQhbqQ3f7PO2P6C2DK8qzSDdxcZp0QFT5pr2XpwTNjTC2I8fa86kGniBkQt
         nS5KZ1ZKTF7y3b4/Ui5lqVYdlJ6hdGEQzHtvf0dUr6w5Ou6cEWQ8asOtIJuMppIH7cOD
         RCfwl0fYR5m9k7ueyYbcskYG/Oh+46AdddHvH1o8aF5sYL1vpj7or7hWZv24gNxvbVXC
         pHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:document_confidentiality:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=26vbzTJQhxmGuxZpnRqakR5FxJN0E0HFnKZ/+eNXiRM=;
        b=tPjnmYxXGE5PYT8bYwJtHd8+cw+gSVrD+yBAMFq77VN/9ZRqs1nbwBJ0UOQ0GSTiOx
         vPmXywP6XpzzXJX0E/ByYrDIbl0W0yrUmo90VzaA7ghWjP3bSgDeo6SZW7qkiE9S3r05
         xTI0B7MZ8Tzd/zv7RWj5l5zsB5zutxtma/T74cCzsAiWK49B/ONmHNUHrzsevRj2gmwN
         mv+CnJtLyNt0RsULIawtT2VIo2nY0JufXH3gKtoYAb9SkZ1SZOgtAQBuMldmnWRSJ0/7
         4TcAgR2XxLoc4u/cov9t0Hh8RY+eGce4bggDGhMsANlHUwhZRZSPegnYNJ1QO7oz/ESY
         4apA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pric/68kSd/umvqsnwewamxpfIdGfbfsNkRtCDHtT82VBItQx
	1xsyR16UMxQBJkBbre9YzL8=
X-Google-Smtp-Source: ABdhPJwlUII2CHhXy7PEz8ESg/6O3W0fTUNp6KNCB2wtn8K7041pK/xjATmjTzdQrG5YFnCtj4hThQ==
X-Received: by 2002:a2e:8507:: with SMTP id j7mr3143654lji.193.1607604095258;
        Thu, 10 Dec 2020 04:41:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls163898lff.0.gmail; Thu, 10 Dec
 2020 04:41:34 -0800 (PST)
X-Received: by 2002:a19:a415:: with SMTP id q21mr2661944lfc.59.1607604094395;
        Thu, 10 Dec 2020 04:41:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607604094; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKR142NHVsJsSY49cGiWrkfTg2eYReW1rdqxCz9Oe+53c6b4CmCTV7bqDqyiOP1R+W
         9yWARxfa/0Z81Q1WEzmXLM6L6DYRn0Vo0WxnOMmHdzrr7RNvfw0Q3XiTmHa/+khboIr6
         whnud0FbCmIK5D5qK/t+oSFEmM/Jy8fnuEJRBOjoW3cL36e9zhaBtD9oyKN1xNvhEEJE
         XmKREpFs3o5JddNQ4VDiHc8zoJd4zkudVDMSlZf9SxmEvgpnZN3GblPVi/FhdD5NlUbM
         RYB05x3K6W8+ofwD7lqD889zV4xeEAba+lmY3IQIB156FTaGrOf7jUbiwbawwlPHZJnS
         cxDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id
         :document_confidentiality:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=ue0L9VaofB+cB2aTw/+J8AifybhrEU09XUfNf72Sos4=;
        b=lY2aWr8SPHBhM445vNB+WM5D3Rul8Qj9vRnobQPhlNez/cvKgxTpAS0Ok1lNIrar1b
         ioixNGPMn2iVmIRmrJiGrSEgouKhI5HuFrjCEtS4moe9ctQmACu3aFkyNCJ5S6/t6YBw
         q6ge4+mI5FlD1tddxZtaRug7vLCLET22+MuEYHs2EXb2VgMskQPvbQiFUsSbpJcZsyw+
         yRIlKhjxAUfGVSV48ZccmZOW4j2Kb64YE/al+ZK/P7GlZuog9zocopioIzcah3YQ9gFT
         RQDDNm145RBoF5+3z45SLnexLZRthKz8fjx0XsCEqu1C9Q+31cMDBlHqlOHRlUCoFTef
         g0OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@siemens.onmicrosoft.com header.s=selector1-siemens-onmicrosoft-com header.b=l7dcy41L;
       arc=pass (i=1 spf=pass spfdomain=siemens.com dkim=pass dkdomain=siemens.com dmarc=pass fromdomain=siemens.com);
       spf=pass (google.com: domain of erez.geva.ext@siemens.com designates 40.107.1.78 as permitted sender) smtp.mailfrom=erez.geva.ext@siemens.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=siemens.com
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (mail-eopbgr10078.outbound.protection.outlook.com. [40.107.1.78])
        by gmr-mx.google.com with ESMTPS id h21si217075ljj.6.2020.12.10.04.41.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 04:41:34 -0800 (PST)
Received-SPF: pass (google.com: domain of erez.geva.ext@siemens.com designates 40.107.1.78 as permitted sender) client-ip=40.107.1.78;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BgYJAs8M0R9I4AeWQhX3qXli6DTf2YzNEdbIXnt320xAx6okhgbgjOC+FqaapgdWV+3eIRyTgBewNONuh+4Ji9TH7fi5n0qRkEySCZMtKIT82oSt+BIO+hjg8oI0UeFJYQSCccAcQFbnIf+IayXu7Kfm9qVDPOixyZJcpkpETAUbTyb9hpXco2qhRId2fPyxlllWIMdzqZWkE+PORFqcAtUu6NyJI7usoc3FXRgf/HjwP7oRYynPMjKQJ8e6653LURSVcHvAE8ke04fIQsGwLmqdTRW2RaaOEVvr725noUGiY5y8zaT8vKn5jvx8SZpgLBiV52Sm0Ez4+e0OeOtHdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ue0L9VaofB+cB2aTw/+J8AifybhrEU09XUfNf72Sos4=;
 b=dPmqIknfI1fzWgpBonI03RxRBfQZhBr3VlWfHq527MsLjYo0u6BeHv53+vW/zdfFOa2XCdlO2VVWog84XNpoYCztjiufKu2yucLdythGn3iegG3yO8/Uz3yxZHQrxf5IEjLELGaQGtLGUToF3hQAzJbtwVvABXPU+Qm3zMwXU/l9RNeFxZcRnORvwSKK56X7WKA+hNfsEd43ZW/h7QwlL3/Qc0RyXnVSUcoXjheDUzkFfoNhhbQXDJeGn5b2oc0D8lyQXV17M1xILpmGfzxZVK5MmiP1gxyJOGpNk/T+EJHdPxi4iHONmZJTP0H7h4U7SWII59ZGN38LbLLR3Q2PqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:803:7c::28)
 by VI1PR1001MB1184.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:71::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Thu, 10 Dec
 2020 12:41:32 +0000
Received: from VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c4f9:99d0:c75:bc2f]) by VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c4f9:99d0:c75:bc2f%7]) with mapi id 15.20.3654.013; Thu, 10 Dec 2020
 12:41:32 +0000
From: "Geva, Erez" <erez.geva.ext@siemens.com>
To: kernel test robot <lkp@intel.com>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
CC: Jamal Hadi Salim <jhs@mojatatu.com>, Jakub Kicinski <kuba@kernel.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, "David S . Miller"
	<davem@davemloft.net>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "linux-arch@vger.kernel.org"
	<linux-arch@vger.kernel.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Arnd
 Bergmann <arnd@arndb.de>, Cong Wang <xiyou.wangcong@gmail.com>, "Sudler,
 Simon" <simon.sudler@siemens.com>, "Meisinger, Andreas"
	<andreas.meisinger@siemens.com>, "jan.kiszka@siemens.com"
	<jan.kiszka@siemens.com>, "henning.schild@siemens.com"
	<henning.schild@siemens.com>
Subject: Re: [PATCH 1/3] Add TX sending hardware timestamp.
Thread-Topic: [PATCH 1/3] Add TX sending hardware timestamp.
Thread-Index: AQHWzjjS+JtwwiLyJkKEw3ObDmZ1g6nvp7+AgACdOQA=
Date: Thu, 10 Dec 2020 12:41:32 +0000
Message-ID: <VI1PR10MB244664932EF569D492539DB8ABCB0@VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM>
References: <20201209143707.13503-2-erez.geva.ext@siemens.com>
 <202012101050.lTUKkbvy-lkp@intel.com>
In-Reply-To: <202012101050.lTUKkbvy-lkp@intel.com>
Accept-Language: en-GB, en-DE, he-IL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_Enabled=true;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_SetDate=2020-12-10T12:41:28Z;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_Method=Standard;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_Name=restricted-default;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_ActionId=36be2cc0-ccad-4f02-9e4c-38a075a14bdc;
 MSIP_Label_a59b6cd5-d141-4a33-8bf1-0ca04484304f_ContentBits=0
document_confidentiality: Restricted
x-originating-ip: [165.225.26.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6b9f8b81-e587-4c26-63f7-08d89d08ec9a
x-ms-traffictypediagnostic: VI1PR1001MB1184:
x-ld-processed: 38ae3bcd-9579-4fd4-adda-b42e1495d55a,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR1001MB11842B28BA14B3653C78C14BABCB0@VI1PR1001MB1184.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jh6mTUlDDPDO/Wu5qjJwL1KNyBwm/kiAPae21Skkh0dvI89N/4uqCFpV7IOcQmtF8m821n3Lb2YrHG6TSY7MRi33kbM80/vNdY8Z+M105C5Pghi5A8bUFHWw5YDxP1otigHz0McaOYwG3PcHguPFsa3s9hBLN855oZN+9pIGLPEZQ7/mLuX5KrglOwROT/NTzU9jYgIj8dM3MxOppfCirSO9iSVq150wyRmGIifW3YjkH0ssmi8FYUfnDlYyZZK1TyCcJEftDwH9mo2hnUpEpQP4Co0gBfD9dCiPbTpuxGkqGhZC+166WdQMmxeMYp/9mpu1kWsW48EJmLYZjbMr6dYwj//Rdd9KxmJj3zLqyh9GmqtnL6oQRjiyfFPAOsoWuVSqqZl9k0uis1wKCRNZ3w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(39860400002)(396003)(376002)(86362001)(7696005)(8676002)(316002)(4326008)(966005)(9686003)(71200400001)(66446008)(110136005)(76116006)(54906003)(55016002)(52536014)(83380400001)(7416002)(107886003)(8936002)(66946007)(33656002)(64756008)(66556008)(55236004)(53546011)(186003)(6506007)(66476007)(26005)(478600001)(5660300002)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?VH6wREcpsF2hNCZcL/qAzxfyuUOQR+VmmhAW8uuBiWfOm8gbuo46ihlf679a?=
 =?us-ascii?Q?BY3qFeF+9BVyVhoT2IZ6uXKkYyoXwRD+wwVo2RWvKmBYt6bz6dHw85fr2j3n?=
 =?us-ascii?Q?r0DFJ3GY8BSkevcWg/J0c9WqHpw3G7cG83tYuQ/MXULmvo+aSaT1NhMK6FcQ?=
 =?us-ascii?Q?KfSLJYNg4K1yaxVm+QdV1XQNL+Ju7oB4l4Y8MpOikmbZv3oH6L5J4O8PvPib?=
 =?us-ascii?Q?lBLTjdk/9GUw6MOpkOrzT79tPt/gFufCkL/tyzq90ktKloHcaas10j5aLcxd?=
 =?us-ascii?Q?+amdkB7EoUbm6gEzqPNmpsK5Z4F5gSVk1RLctZtTiTuQWl2VDA09J3bftkS2?=
 =?us-ascii?Q?eq1TrDRIS20anKL0r3aOpF28lZGUgnOY3+4rrUL8I4GvS62Kdd5S6P/zgMdQ?=
 =?us-ascii?Q?k/53XN2CirMqoKtK4UctL/YU7MQjapWB40ouM+Vgy1+Tk1L8BgO2ENwHESLV?=
 =?us-ascii?Q?1LzT3csmxDCVU3Q79lLBSLLyi9ByIxR243ZD21VtvEfkwzqaTOzPBM/p4m4m?=
 =?us-ascii?Q?lXB9waBRTDiUh9T1JFKE7QPJbwOasM+Ur2qkkFND3FFLK/JpJg1TlrRMdvLB?=
 =?us-ascii?Q?h3c0TuqJEDOj3tyrWK/3sDSsR4mq6fsR3UmXoD87yrgbQf5bAvGYLTmgOhLW?=
 =?us-ascii?Q?BZs6lf/+P260Uoax0zYes8mMn5YFXIbAqlzTGadaeq7kY8Rhietz628coagb?=
 =?us-ascii?Q?MFrHzYSP/p7kmm6WGLbMROZzercDASuquHixBXyhsyEzxGuFgAUPE5ReXT7X?=
 =?us-ascii?Q?VQCUpdHvnSVJoJURJVggObSJlc72HJs8xbFdSsnrXO4AQOFILIaSoygybTdF?=
 =?us-ascii?Q?2B0uNEXo9U2ZT9QvUKzyEiJ5zXTWRmIgPXHr0f0qXHbKTscECk7aS4rmmaX9?=
 =?us-ascii?Q?NmdfNrIn+VX66kFFZ7q5xUuduUPh9hV+6ZY1D7TNwYVyM2OrBkWeAE/i4I9X?=
 =?us-ascii?Q?HaQeDyIBDRgoBrI8MFrJzM33UCFHyrwe+GXrW3WI0ps=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <6D4AB493AEBD924FB0CFB7E02EAF8799@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b9f8b81-e587-4c26-63f7-08d89d08ec9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2020 12:41:32.7015
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sRzkujigBFpC6VPCL9dYmx8/PIL38BicDBe0DaFwlntT5VycUsYEB7yQ16mPbtpeAmr4paKxr6oeimLF06jiR7sHsRZ0Qh33vie6tlqkEbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR1001MB1184
X-Original-Sender: erez.geva.ext@siemens.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@siemens.onmicrosoft.com header.s=selector1-siemens-onmicrosoft-com
 header.b=l7dcy41L;       arc=pass (i=1 spf=pass spfdomain=siemens.com
 dkim=pass dkdomain=siemens.com dmarc=pass fromdomain=siemens.com);
       spf=pass (google.com: domain of erez.geva.ext@siemens.com designates
 40.107.1.78 as permitted sender) smtp.mailfrom=erez.geva.ext@siemens.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=siemens.com
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


On 10/12/2020 04:11, kernel test robot wrote:
> Hi Erez,
> 
> Thank you for the patch! Yet something to improve:
> 
Thanks for the robot,
as we rarely use clang for kernel. It is very helpful.

> [auto build test ERROR on b65054597872ce3aefbc6a666385eabdf9e288da]
> 
> url:    https://github.com/0day-ci/linux/commits/Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
I can not find this commit

> base:    b65054597872ce3aefbc6a666385eabdf9e288da
> config: mips-randconfig-r026-20201209 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
However the clang in 
https://download.01.org/0day-ci/cross-package/clang-latest/clang.tar.xz  is version 11

> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
Your make cross script tries to download the clang every time.
Please separate the download (which is ~400 MB and 2 GB after open) from the compilation.

Please use "wget" follow your own instructions in this email.

>          chmod +x ~/bin/make.cross
>          # install mips cross compiling tool for clang build
>          # apt-get install binutils-mips-linux-gnu
>          # https://github.com/0day-ci/linux/commit/8a8f634bc74db16dc551cfcf3b63c1183f98eaac
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
This branch is absent

>          git checkout 8a8f634bc74db16dc551cfcf3b63c1183f98eaac
This commit as well

>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> 
I use Debian 10.7.
I usually compile with GCC. I have not see any errors.

When I use clang 11 from download.01.org I get a crash right away.
Please add a proper instructions how to use clang on Debian or provide 
a Docker container with updated clang for testing.

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> net/core/sock.c:2383:7: error: use of undeclared identifier 'SCM_HW_TXTIME'; did you mean 'SOCK_HW_TXTIME'?
>             case SCM_HW_TXTIME:
>                  ^~~~~~~~~~~~~
>                  SOCK_HW_TXTIME
>     include/net/sock.h:862:2: note: 'SOCK_HW_TXTIME' declared here
>             SOCK_HW_TXTIME,
>             ^
>     1 error generated.
> 
> vim +2383 net/core/sock.c
> 
>    2351	
>    2352	int __sock_cmsg_send(struct sock *sk, struct msghdr *msg, struct cmsghdr *cmsg,
>    2353			     struct sockcm_cookie *sockc)
>    2354	{
>    2355		u32 tsflags;
>    2356	
>    2357		switch (cmsg->cmsg_type) {
>    2358		case SO_MARK:
>    2359			if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
>    2360				return -EPERM;
>    2361			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
>    2362				return -EINVAL;
>    2363			sockc->mark = *(u32 *)CMSG_DATA(cmsg);
>    2364			break;
>    2365		case SO_TIMESTAMPING_OLD:
>    2366			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
>    2367				return -EINVAL;
>    2368	
>    2369			tsflags = *(u32 *)CMSG_DATA(cmsg);
>    2370			if (tsflags & ~SOF_TIMESTAMPING_TX_RECORD_MASK)
>    2371				return -EINVAL;
>    2372	
>    2373			sockc->tsflags &= ~SOF_TIMESTAMPING_TX_RECORD_MASK;
>    2374			sockc->tsflags |= tsflags;
>    2375			break;
>    2376		case SCM_TXTIME:
>    2377			if (!sock_flag(sk, SOCK_TXTIME))
>    2378				return -EINVAL;
>    2379			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
>    2380				return -EINVAL;
>    2381			sockc->transmit_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
>    2382			break;
>> 2383		case SCM_HW_TXTIME:
>    2384			if (!sock_flag(sk, SOCK_HW_TXTIME))
>    2385				return -EINVAL;
>    2386			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
>    2387				return -EINVAL;
>    2388			sockc->transmit_hw_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
>    2389			break;
>    2390		/* SCM_RIGHTS and SCM_CREDENTIALS are semantically in SOL_UNIX. */
>    2391		case SCM_RIGHTS:
>    2392		case SCM_CREDENTIALS:
>    2393			break;
>    2394		default:
>    2395			return -EINVAL;
>    2396		}
>    2397		return 0;
>    2398	}
>    2399	EXPORT_SYMBOL(__sock_cmsg_send);
>    2400	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Please improve the robot, so we can comply and properly support clang compilation.

Thanks
   Erez

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/VI1PR10MB244664932EF569D492539DB8ABCB0%40VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM.
