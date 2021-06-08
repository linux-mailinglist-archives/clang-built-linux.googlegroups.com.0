Return-Path: <clang-built-linux+bncBD36VNNTQEDRBC4C7SCQMGQE5C5VK3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0D839EE26
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 07:33:00 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id i8-20020a9f3b080000b029023c932e01b8sf6740419uah.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 22:33:00 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623130379; cv=pass;
        d=google.com; s=arc-20160816;
        b=B7S+VoQ/INtM5vV1ku8VWzRvHfB053HjGuGb585wiQM48mfkPdoxlAArz3J84ZsACc
         /QQ4z0bm6Ac1UnAUy1KWBnYkoPIVZI53f3783xgd5Aq3cESEjLbRBbat6hPEOGBv8H64
         KLsyM0LGoFGo3PnKnqFYX/cIfZ9zIYwgg5W7UwQu3bP35S93xZEDMnfBL23PURzg2OcY
         H9sCpnnamM9/sRFlaEG0kEN+IiTNTN0dogJC+r1nfW3+xAXvin9vsM2RGsRouKtk/n5L
         VDpJ3SskpxFr7eCWvNO8c4DO7x5l4SVa7zAoScmiak25KhAlZYc9N9T8LxBNIxyCtEvZ
         B1uA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=jIPSrVsU/CIFlKm/JagzfTWWtvseuM2b1LvNFIwJBYk=;
        b=1EXOacl+IVqfj7xLb6+C6EJfwd+EgVg/IcUsli+20ihm4AqwAP6x0TVDfuA332KPAV
         M4Zqx5PdWJ/vjo6jrwEilPMJbjsCPKpOFJZou8SjXX3mth31erZaJrooRyg8DLwDqXiS
         Q6IEfX+hdV5INgGqrCHIqjT3+thlTAbyyioTndlGbFJYVF2QJveP8Pkuaghl2x5qCX3n
         mdAnryjfS+2lFSMCIaqtDy8MONi0MTeTYR/1NuYVysGrdi9lcS54TpTi6QmJsc9L/k58
         tJ0mdclOjcy+k0dyVVEcjdTN4o8KOED3nXbF0xo7piS7OlJZXmALBZ4PI9llbwwmSCJI
         IyPQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=MOIjcmZE;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of parav@nvidia.com designates 40.107.223.86 as permitted sender) smtp.mailfrom=parav@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIPSrVsU/CIFlKm/JagzfTWWtvseuM2b1LvNFIwJBYk=;
        b=gb1adFhHAzVT8q4HAbueIBqEEGNwozlxHwIibMc9JVDIQ8/N/vHkVTTkER/IojtFwF
         7qZpMa2EatnmCD49ZPbtO5+cvwyKUAdtiUomCKfEqpjoYChs9rHQjfAgVA2xm5Dpd6QB
         vKDP+ZG1/CNUh8TTgXF1q/AZBBPcgXVXRbMgQZTPwRHfqaO7Etz1/VELY1BjQxpnNx8G
         rbSEBmnf2oJirSgCSu5Iwh/5DidqjM3giN4NRxIbKoCRFq5b3InOqrbuIjZhbq1/rEoe
         3IjdC1ol1XqivlQpyWHUsVvdALbtz6yhQ4fk1oIxONH4t1YjdShoHxpv7dP94lX5KSLL
         VKiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIPSrVsU/CIFlKm/JagzfTWWtvseuM2b1LvNFIwJBYk=;
        b=JmkB1grfmHqpgIXd3Zn2Xth/I/b2fGJWn5K1QSPZnuenPogYE2fI2b0HTAatDfsA7w
         ijAog6na+KN0Dwpar0DSBbcLn7NUdR86cOBeEYZsaG+RZRFT+1nw7AqO3M29WYfwqn1s
         KYQWpZGOMtTrN1hraXwWsYv0BWLE62CTwNeFwJ8PzGfsE44FtYnSO0Zb/yzlnB0JCY4j
         BiCkDBjuXt7sQSLWslgpqa/sW3Wu9Xm4ZkXK+xQIzGS6+cGeUyDStxMyTGNYn4YW0RkD
         iwDE8XRf3N0q/Hcp3kL21rD621RPuYybSNV3kWHq0eof6CT1wRShOPvxLS6YryHhTNAB
         W1Kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531REdmKPc9wgg/bUMJ1DRXH91MWcn4DdRVKdKJlAjZ7S2FU2xNb
	jSvJLYnZ2TG3PDcnEY8DegA=
X-Google-Smtp-Source: ABdhPJzXTu1EBPsO0S5UdMC0PTE67gMXKJ6NPvk8udBLl8Te61+w1tKszH8LNS9RNrD1D7KUSDS8vg==
X-Received: by 2002:a67:fc0a:: with SMTP id o10mr7661462vsq.45.1623130379175;
        Mon, 07 Jun 2021 22:32:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5f41:: with SMTP id t62ls565885vkb.2.gmail; Mon, 07 Jun
 2021 22:32:58 -0700 (PDT)
X-Received: by 2002:a1f:4312:: with SMTP id q18mr10884209vka.1.1623130378597;
        Mon, 07 Jun 2021 22:32:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623130378; cv=pass;
        d=google.com; s=arc-20160816;
        b=lqAPqUFswNI8c6hmuvoyvC9PQwVHbSjDS8wvJeZDRlxscal134Kn1BAZ3Q/LQKHR/J
         FngF+8neJKVDqijvV7j4zTsa3c9hi2YEP529jvaQ+4I2D9kacIm9JfwJZsD8LFe4afaR
         9QGiWPQkjIIRlgxXs2JrNAjBtbscJgnCayP1WLohxo2HpLWq+GvIpKNuvtDhSIqgC3zb
         HDjFvncHD/MmT1VmBe6lT20uYmuw4ZyGttxpDgdgBg1PczdApcLUjFz/fjGFAaWKN1ua
         WNZ+d/zUpc9pwyVvs7xip+z84U0HYGuBORonuB9NuU1Wfja5vgBcaURZNj7yTxnof6KU
         EqxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=OaQsNOlJkspsYc+HawUSC5/4JjaX4ozLXu5BI920sYc=;
        b=0sTA74s6BL2yyo3epEwkv7ArGkoIj5cSNdJp8Q4YmO3ogtyYvYJfzQ5n6eTu07s4kf
         yf806wLkC/IufiI2dk54YGiLfmBOGrqLTXs6AZzvvwmr7qhsAl2xGaleFSdV5yl9vCmy
         FDG+P+bpOS2j2a5SS1lB0z1VZ9MdjbhmOjF3B6lygVWZ/SfwXfwdwvwxpndgCb9a9nJE
         dEh3G2PUPUmycDinVdBwZqGqPgdhckff/THF93cMve0oGujQiLk793pNfqi/GKxpC0hn
         WD3dzu8JtnYREW4ssHye2LGWf4aMyuBxV8B9yNDD04vrKeQjZFiFTupsfAm7hJAr3dsz
         +ZMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=MOIjcmZE;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of parav@nvidia.com designates 40.107.223.86 as permitted sender) smtp.mailfrom=parav@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2086.outbound.protection.outlook.com. [40.107.223.86])
        by gmr-mx.google.com with ESMTPS id n15si156572uaw.1.2021.06.07.22.32.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 22:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of parav@nvidia.com designates 40.107.223.86 as permitted sender) client-ip=40.107.223.86;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=geDKltNmqeeEBJaX6VsdWaEgJljByqeao+htQbTtDQm+rCuzS3O0FSy5Phs+thQZx0TySetKmK2AShGHJxCUsJ/8geJBFf7C3hcw5sJc+TrFsOb0M2X5lHEyL77oXps9m9emvb1qipYia4a1httn+hqqahi+qgkmSBvvGMs2c0h20Fwheviqng7HVp5YAJucNwwB5mXguVKDx9josnQF4+ZSN3WPtToSoqIv6W0YRl3tLJcadjoeIJUvc1hh+pBNag3CZzW0xuEZvCiTooiFqdArEdrac2iUSb/v3SO1kQ1QqFTK0D6abvWJEJHRaSg/BX77Y2X3hz+TeBHWsp94Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaQsNOlJkspsYc+HawUSC5/4JjaX4ozLXu5BI920sYc=;
 b=WDYtbElGXaLWGTxqInKRX9Lsq0TXu2S24/eJgK989JvKZsFaJLXl7PO1irCoM+4aRMjl73AIaDb306yECbJ2oHKwHODj3AuxT5W1Zkwq9gKLAEqUBBeLIMrlk5PEMmdjRJxGy++4WISiF/vU7zSTfy9ORLYIb8R8/zUnE5Y/+huni0FnxTbmyHK+yjHI7P/MRRRfEstWcnFQ16uERMVTryV0Ke8MSGgBf366L6s6dkY3yOctw36JwcPbYriyLrtbXfJnh3YlBCFLKyLMJuX/IdqVdga0u0EM4RidrUtHmSaOj650La/eUfghZBPhCJsqRVINzMnh58ZrblviUkihcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB5481.namprd12.prod.outlook.com (2603:10b6:510:d4::15)
 by PH0PR12MB5433.namprd12.prod.outlook.com (2603:10b6:510:e1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Tue, 8 Jun
 2021 05:32:56 +0000
Received: from PH0PR12MB5481.namprd12.prod.outlook.com
 ([fe80::b0d9:bff5:2fbf:b344]) by PH0PR12MB5481.namprd12.prod.outlook.com
 ([fe80::b0d9:bff5:2fbf:b344%6]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 05:32:56 +0000
From: Parav Pandit <parav@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>
CC: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Greg
 KH <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>, Nathan
 Chancellor <nathan@kernel.org>, Adit Ranadive <aditr@vmware.com>, Ariel Elior
	<aelior@marvell.com>, Christian Benvenuti <benve@cisco.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>, Devesh Sharma
	<devesh.sharma@broadcom.com>, Gal Pressman <galpress@amazon.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, Michal Kalderon
	<mkalderon@marvell.com>, Mike Marciniszyn
	<mike.marciniszyn@cornelisnetworks.com>, Mustafa Ismail
	<mustafa.ismail@intel.com>, Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Potnuri Bharat Teja <bharat@chelsio.com>, Selvin
 Xavier <selvin.xavier@broadcom.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>, Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: RE: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Thread-Topic: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Thread-Index: AQHXW3XTgmUrShoLP0aSfA0ttnjNH6sIiqTAgAEDVgCAAAmnwA==
Date: Tue, 8 Jun 2021 05:32:56 +0000
Message-ID: <PH0PR12MB548195F3EC7E96C1ED2789ABDC379@PH0PR12MB5481.namprd12.prod.outlook.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
 <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
 <YL74KtkVOxVDT5u6@unreal>
In-Reply-To: <YL74KtkVOxVDT5u6@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [49.207.202.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 958506f9-367d-4618-0577-08d92a3edebf
x-ms-traffictypediagnostic: PH0PR12MB5433:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR12MB5433833434F3C6850B25CEFFDC379@PH0PR12MB5433.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5zBbBUy5n8GT2oXF/uerbLuYoJSiPME/GBgS9SqiRFqgw/rVJe5uILZp0jpk60/t7ab4A2B0lH1+qidjD2c/d/hwmb7VNa3s5wenJb3hi1N+Hx83/nBB/xSWxNPEH1aDhqVIBEPXjqPDUn9aZq86pnESim4QGC1BMYaBTWaGQC61PDC2nHtMBf46mzq39/M2CcW5uaaDg8pHuLf7LoaYiuuYv9VeFz1GwZac7l6e1bc3Hs4mo4FObkp/+Vrtz/wgvPgLoJakUVu9v8bhVlRtqIlFsWGTu+A2xHdCNOAtKkVh8V32+ZhL19kyp+A7b4VVtvTNTUPyq2UiWl1C2BdN8Rg7mzMrc1/4DtDDtAWxCqQ6gpjh4SPTqMsydlyDxI1U9l+CAQQD7ihAUImyCRGxZQG+V6y7L9lbd3QRIkA2OqnURVeAQNC4nq9btC+fRMzPaZvVorUZoW/2KFdbxIma65tdQCroWEJ3540NW7hWq01DYgx2Wdg4/Gr0MvEQALqzzsmyAVcQ+aqogzoiKa8OTkvwIYlUOO0wHyYlOEnwTGmR+odlVs7ljRqG+YyB1KWWLx4fr7MdB/yIxsn/JiDTwUwWKX7eKucAvfD7Ue5e08U=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5481.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(83380400001)(71200400001)(66446008)(478600001)(66946007)(55236004)(66556008)(33656002)(86362001)(64756008)(52536014)(7696005)(76116006)(66476007)(55016002)(9686003)(38100700002)(122000001)(6916009)(7416002)(8676002)(8936002)(5660300002)(2906002)(4326008)(316002)(54906003)(6506007)(26005)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sFknw02CO9m06EJDtLOJ2pFTSuvqO0NuHY+fwk3wXsjFUGbQ6qpAyw6j+Z/U?=
 =?us-ascii?Q?sMuF48rHrgklYGLCttcb3E6zv8svQCYQ1EEvhPrraKgWrW4oO2a/6Tr7Un9t?=
 =?us-ascii?Q?iqxLUq0BENeekNX8olfU63/ht+Qgpk0o6+/3eG8PGb/xT8pM1i9fTUTiISDM?=
 =?us-ascii?Q?w8xEphacAu0bW/7a/wpzt0sUJ8+3maLHo/99onU0pvu2MgI2GrsdajXgRLnP?=
 =?us-ascii?Q?O8jq/bwP93ERc/T2REYfVMMX7tdvzFWlFkqhHs2AA1/tpie2yi+oylFzvZQn?=
 =?us-ascii?Q?UDPU8esfu32KsQtjd4ULCgIuZPZR+/FJwRHtFm6pgPuIZqHxMsIA2uYETxCt?=
 =?us-ascii?Q?WwmFIuWa8K3Ew2+1e467vK5+3BKnX1trwtMoQcciHIRLkyN4rpkXZkqsK0Lc?=
 =?us-ascii?Q?N9T+AvddKA1fAGXH70JeOGxkFpK1ZdSv0IccxWr5hWNVk+HFZ9+057M87akF?=
 =?us-ascii?Q?GGqpZ6gui6nK6CrJkzQXvvGKNDX1/L8nRRHYAaVOFzHzUm6wRIjxkKOX8adL?=
 =?us-ascii?Q?uGF/4jt4aLG46uy0D1xE/JvSOmRZfhOIEbeJuCKDZwPz/ynBCvBQaqpUHeic?=
 =?us-ascii?Q?JAczoOUeZsO3pp+VXztHNRHnEl00SOTpX442Evey4+euj6a8sOFsrPVrL83k?=
 =?us-ascii?Q?Or9eXQhJOVi7MfHMqCIYEx6tJZyCeFAePe8IoKAARQYZRFgHtn1NEGz2AK7+?=
 =?us-ascii?Q?dijKNYmcEqXmJMYZRo4u/W6UltFPv7oPG83fKO62DPtqXEGW6uZj2r4FOxgA?=
 =?us-ascii?Q?oI+6QDeMlKFW+6g+Fn4Hi9neSlprAYI2A9cT5GUybUSEQh7ZxAeSHRBJo9i5?=
 =?us-ascii?Q?mmG/LxCB1sKgFLkEzmX5J0oHuLQknCq6eceCZWExYzz5tciPIu7UXxMwBZjy?=
 =?us-ascii?Q?Qp42+OlLuCMRkgtspdDY9NTnX7zQePhzrFvx75ebITF9f7sREvDLcV2uxVHR?=
 =?us-ascii?Q?poy9Itj4cxmrtpz1v7N2Z7k/Ghtr7RLzWMdeL0sRR7OdisHD+QmC1BZO4Bbp?=
 =?us-ascii?Q?VheRMWRhUC0fMahQDWAsS5UAcTX/WKS2P3g9VYQNc6+Sj7wobrkM7t8E+9E/?=
 =?us-ascii?Q?x4oZUJOoAQ6pfxDvO2vWWVBpSW05q0r65edcmQy78cVnAn1cfUN0UgAj/Ute?=
 =?us-ascii?Q?lNw+6eTD3tDld7r6HAlGEtZ52A93vjl9uodUuGJ03lYrujRzAeVLxG6NgQfJ?=
 =?us-ascii?Q?u3gwdXgPAT/GSy2iC+M4GMy5cQQyB5GKsijMj9bsO5Di2BpUEEw2QIbCLWh/?=
 =?us-ascii?Q?4345jomSRSlmyY+kX3w2Gs3d9WMOGWjk7q3ELU2Fy9Y6R/Or9oRSOTbHArwH?=
 =?us-ascii?Q?xFlq8Hj8tBclQlF+GxjIGB2q?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5481.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 958506f9-367d-4618-0577-08d92a3edebf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 05:32:56.1681
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0HzbOMrncOSKDsuOrWk8sHKp9sFs9PHfy3mv30XhlfL8ezluK8fS9omH1ugSF3pNLRTLqXU+lT4nTX/JQpbR3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5433
X-Original-Sender: parav@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=MOIjcmZE;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of
 parav@nvidia.com designates 40.107.223.86 as permitted sender)
 smtp.mailfrom=parav@nvidia.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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



> From: Leon Romanovsky <leon@kernel.org>
> Sent: Tuesday, June 8, 2021 10:25 AM
> 
> On Mon, Jun 07, 2021 at 01:29:58PM +0000, Parav Pandit wrote:
> >
> >
> > > From: Leon Romanovsky <leon@kernel.org>
> > > Sent: Monday, June 7, 2021 1:48 PM
> > >
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > >
> > > Now that the port_groups data is being destroyed and managed by the
> > > core code this restriction is no longer needed. All the
> > > ib_port_attrs are compatible with the core's sysfs lifecycle.
> > >
> > > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > ---
> > >  drivers/infiniband/core/device.c | 10 ++++------
> > > drivers/infiniband/core/sysfs.c  | 17 ++++++-----------
> > >  2 files changed, 10 insertions(+), 17 deletions(-)
> 
> <...>
> 
> > > diff --git a/drivers/infiniband/core/sysfs.c
> > > b/drivers/infiniband/core/sysfs.c index 09a2e1066df0..f42034fcf3d9
> > > 100644
> > > --- a/drivers/infiniband/core/sysfs.c
> > > +++ b/drivers/infiniband/core/sysfs.c
> > > @@ -1236,11 +1236,9 @@ static struct ib_port *setup_port(struct
> > > ib_core_device *coredev, int port_num,
> > >  	ret = sysfs_create_groups(&p->kobj, p->groups_list);
> > >  	if (ret)
> > >  		goto err_del;
> > > -	if (is_full_dev) {
> > > -		ret = sysfs_create_groups(&p->kobj, device-
> > > >ops.port_groups);
> > > -		if (ret)
> > > -			goto err_groups;
> > > -	}
> > > +	ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
> > > +	if (ret)
> > > +		goto err_groups;
> > >
> > This will expose counters in all net namespaces in shared mode (default
> case).
> > Application running in one net namespace will be able to monitor counters
> of other net namespace.
> > This should be avoided.
> 
> In shared mode, we are sharing sysfs anyway and have two options to deal
> with the port properties (counters):
> 1. Show them in all namespaces as being global to port which is shared
> anyway.
> 2. Show them in init_net namespace only and applications that were left in
> this namespace will see not their counters anyway.
> 
> Why should we avoid "item 1"?
Because it is incorrect to show port counters updated by application running in net ns 1, to show to application running in net ns 2.
Once/if there is per netns counters exist, than those counters can be shown using more modern rdma stats command.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/PH0PR12MB548195F3EC7E96C1ED2789ABDC379%40PH0PR12MB5481.namprd12.prod.outlook.com.
