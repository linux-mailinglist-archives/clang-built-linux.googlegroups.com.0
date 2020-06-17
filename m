Return-Path: <clang-built-linux+bncBD3M5JPEVAFRBW4ZU73QKGQELUCOXQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D3C1FC7F3
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 09:57:16 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id k126sf166707vsk.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 00:57:16 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592380635; cv=pass;
        d=google.com; s=arc-20160816;
        b=ca0dOv4KdAZtuConEv9gWTlHts8vwrmY2ov5yoGpp//kxu53MtImq0c3cTpGaUqZf9
         cs+oUtflJMu0PWd3OdAphm6UNSKL0x9+neOUtNEN+rQRGo9jIDuDbbnMmBqkhYpmoRIA
         M8C5+u3bZjaiIJuvoxQcI4OykLrDjjjWfHVK8T0Aj3DlIdKSU3WlQVg+JMWMxyBdEkXU
         Ak5Aeybqt7siMyEsTMHad66IaQ7g+JnUSsF1HvmGjOYrDnR1hOMH9dJeMpZ0taFYrdeu
         O/PV00qvPsTtUj13q2sqxTHotjDnZIr6EqrjLF0enPY1OBV0mFDJHqbMeAlxeHMaiv/T
         kWWw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=F3i6DGRWcowDeM+p78ucnsP1SSBs034RaE9mugcE/xk=;
        b=WZ0DWuAOMdTm16BuTrcw6X0uyDk3OHeYXaPfgdP4T7sFliExKk1u0AehLd1vV29sGh
         RipGSyuyXOde7166K9RUmVorjbXVYz88D29VWPCvp17p3y43S1FFOL2/qMxXonsRxrKd
         +9yfqubgt8rSn1f+ZahMpRJG7KtSuekw/S1T5WfaA+KKsKgSFPhPzj3DDjn/7Pgy64iv
         555sqfwWe4DRRB2KZoZJTxoTLf1C9NZwUfmFS5EjZmnGd8H8SoDUNx9DRUZ0dtZHjSEY
         eIA+eKFmJQNYqpy9jVzuMBRrp+Y0O84ShINRHt1ck0MnJcz89WfiLpTtDQvKDD2S6FuF
         AJxg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=N75RpeLJ;
       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates 40.107.236.89 as permitted sender) smtp.mailfrom=michals@xilinx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3i6DGRWcowDeM+p78ucnsP1SSBs034RaE9mugcE/xk=;
        b=HuCzcTvo8D9qb3TUOBCzbONb1p7FKFiUl6S8Hwsh4sbrsV/WBpubPsFQPF1YbyddXt
         +HxoK6HQydimvaJTVm4f7T8UP+Nswkbp/MM1Amx75RiILrFXR+jXgxxpmh6pFflxIT3Z
         OBiBQqHaSef8cPFokUp2gGGy8k2Kz+hQs5xdCEqyaq5t/2NrPIcYjRhdzLvCe5orLw3O
         tv3yaPH/N+m/gh42AiOszNILCni9+KyWwMYe/eo2HrEsgF0LhC0eUqhPzQZ97RTsQqRJ
         jx+bFVOTJXEaTCuP4uW1XFAXvR8IaFDg89L9Cg2webNGYil/C1jLAVZPHVdDTmTJHhQX
         7Hcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3i6DGRWcowDeM+p78ucnsP1SSBs034RaE9mugcE/xk=;
        b=fxsEN5DOr/RNETKAwwBj30ir73OppNPa/EJ5JUANbWwxw8jMZWKkitPFGu10mSTLF0
         zVzi1HFtgyj15Jxqm60D8vHoi+7q2nfC30HQTMeRxF8Z2LpoceLVRV+IdP8WG90v1iGj
         ptNxkORWxwoGnbyfROefiyZqnVC7gmB4/dchQwI+jHHH79GdB8Vb0mjZpYuVCktLgHlT
         RQZ0ETgoro+XMOVA6ZaGNuY9izJMWHUAihtq2nnMYIdHUW+b6xwOwdDKap+ajQCn91zz
         UkJ3Gqu6ctDCGoyYK/a89p9DDBtgCXvSu2jsQpzEwGbubrW0/SzCergBxpRET8hze21z
         JuWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533a1q7V9sg4RhQsgmEDZRWX3njOQQ2wyaa8Ypm50GstI/zCvdEs
	qYkC45AEy9z+uk0IPx1VJnA=
X-Google-Smtp-Source: ABdhPJyUyJFmWtN7SfQJcsqvqef/LS9POPU7V02qJLT1fUN+EwESEFYkJYLMueaBIvViF+JgcLhwgw==
X-Received: by 2002:ab0:a81:: with SMTP id d1mr5191356uak.67.1592380635153;
        Wed, 17 Jun 2020 00:57:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bfcc:: with SMTP id p195ls55978vkf.6.gmail; Wed, 17 Jun
 2020 00:57:14 -0700 (PDT)
X-Received: by 2002:a1f:284a:: with SMTP id o71mr381731vko.18.1592380634722;
        Wed, 17 Jun 2020 00:57:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592380634; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJZTwy7efmOA/vmrlp9mS4iS+oTZoRDjM3ZCQQut/SQhvLovjzT2mMF8RCzOOCoOOJ
         4KcrZ2aP8xC+ESt18HLtfYmM001wo/5s9ZVLhbH3GQ2KWn4gaiHOo9noiY74uy9tBsQA
         4cEFWadxvtUUESvmk4m76mBYdZ3kh69vdNF5jHlgj2K30O4654/7XOSncx2IdVddhq/j
         hGmm5F05/TozxFh9Jn84Iu9aSZabZaitkMm73wlwqMQVnRNjHGd43caK8h/7i0Kl/YGB
         c3t9cRQqjARmghUuhGjNGWwDrPOYQJORwM7qk6fzqr6IqpoHXel6XZl20mW6Ya3IGsJT
         gEvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=5kk1yaCfAM2oEeLb3pUjQ5O0x1J5/pi3mDPVcQ3iUaU=;
        b=O8Ew5OMtHC9W0R/uhwUEYsrP+zXGDwrObi8FkehMQlTVLz7er4phPMtnP7Y1/e0ue5
         k00W2NKAnMxaDA41EgNQUu1mcfJSFmS+gs0ootb03Fb6H1W2W3yTIP+48dgLs0JE3pRF
         eT0/tSjJsVr+hujPgiRaqfcDtMZcRETvWyBMwtotnYYQ9yVgz2JHPRLVtUpxumQ8gpV4
         gEbr3zr1ZHqpM5ih9VR0ckvz2+3LIIIXc+2ghEADBS2lKk6W9vjRHH7SxoG5Bf22ws3R
         kOTVkD4J1opaln1CnxK3Jsv1jyV7e/qUrDiQP1BXeJDSFEdd2Zm6eyS1VD3WoOwLUopb
         plDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=N75RpeLJ;
       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates 40.107.236.89 as permitted sender) smtp.mailfrom=michals@xilinx.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2089.outbound.protection.outlook.com. [40.107.236.89])
        by gmr-mx.google.com with ESMTPS id o18si1028029vke.0.2020.06.17.00.57.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 00:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of michals@xilinx.com designates 40.107.236.89 as permitted sender) client-ip=40.107.236.89;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P6/sw0PzSRXbmJgkTyQj0ViVSAWFSf5M00HK84li9vCo2oF/AhXvBC0e+PZ1rgh4Frp65YmlWT1Jrh3UU3vTlR4EjSxIAMTCL+GSKZtKpRsD2wPJVpd9QMnrzA9iivJydoafqSIfoJnFePEBCno1DY0vGxgiyCbPlOd8y3HvpATEW5/xhmkBaQg162sfmYMfyu15e/mFVph6B/tYVspJcJUFMo7iDyQnroMENXAoxwF4nW1Q1Jyzka4xmX3lkmnnXqcefDe9Ko4g28Mnnf+2G2sjrxQQCH2aH/txkCqi+vgTqub/kEau57krX6nCRGQfp9ZlFnyaNjbYEuoC3pAW3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5kk1yaCfAM2oEeLb3pUjQ5O0x1J5/pi3mDPVcQ3iUaU=;
 b=FaAQLcS/7St7U3PvFdizuDl69w5ifQz5X8aK5wM4H9HWztBYX/1ZWOg2mCMuV8NGJH0C5naV8M6ID9cD/P9Eu3/kp+N6TiCVRHwfNaasQrMEwb7TrzaSf4omD3HcDNiibvC6fkhgzjcURkwsutU5hSpcWdByC8LnOPlaBCP2telrpLUZMNMxEmpNFwFBP3lqhVIFz+bXxfbkKuJTUJNeOBCJBYwixpYm9xIgF9qa93hcXm3AIV7eS6O7DukvVNFKhrKyMUSN2fiEzNm69T6h4DULz99hMEFx770q226yg9m4rdXAwSvmg64L2AqUygH4r4h76rUSt/+JI4KnjbtLTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=googlegroups.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
Received: from SN4PR0701CA0001.namprd07.prod.outlook.com
 (2603:10b6:803:28::11) by DM5PR0201MB3592.namprd02.prod.outlook.com
 (2603:10b6:4:7f::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Wed, 17 Jun
 2020 07:57:12 +0000
Received: from SN1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:28:cafe::bb) by SN4PR0701CA0001.outlook.office365.com
 (2603:10b6:803:28::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22 via Frontend
 Transport; Wed, 17 Jun 2020 07:57:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; googlegroups.com; dkim=none (message not signed)
 header.d=none;googlegroups.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT062.mail.protection.outlook.com (10.152.72.208) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Wed, 17 Jun 2020 07:57:12
 +0000
Received: from [149.199.38.66] (port=47149 helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
	(envelope-from <michal.simek@xilinx.com>)
	id 1jlSvX-0002Gi-Lg; Wed, 17 Jun 2020 00:56:07 -0700
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <michal.simek@xilinx.com>)
	id 1jlSwZ-000307-PA; Wed, 17 Jun 2020 00:57:11 -0700
Received: from [172.30.17.109]
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <michals@xilinx.com>)
	id 1jlSwQ-0002nv-EH; Wed, 17 Jun 2020 00:57:02 -0700
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
To: Nathan Chancellor <natechancellor@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 arnd@arndb.de, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86>
 <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
 <20200616181630.GA3403678@ubuntu-n2-xlarge-x86>
From: Michal Simek <michal.simek@xilinx.com>
Autocrypt: addr=michals@xilinx.com; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
Date: Wed, 17 Jun 2020 09:56:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616181630.GA3403678@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapsmtpgw01;PTR:unknown-60-83.xilinx.com;CAT:NONE;SFTY:;SFS:(346002)(376002)(136003)(39850400004)(396003)(46966005)(26005)(83380400001)(47076004)(4326008)(478600001)(8936002)(82310400002)(82740400003)(316002)(54906003)(356005)(81166007)(110136005)(426003)(8676002)(336012)(70586007)(6666004)(70206006)(44832011)(5660300002)(31696002)(31686004)(9786002)(2906002)(36756003)(186003)(2616005)(43740500002);DIR:OUT;SFP:1101;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b37d58da-5760-4faf-5dad-08d812940afb
X-MS-TrafficTypeDiagnostic: DM5PR0201MB3592:
X-Microsoft-Antispam-PRVS: <DM5PR0201MB35920EFB7874A02864F6DBCEC69A0@DM5PR0201MB3592.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tRy17HWizfhN4zVlBtd/MgBWmEYjOWgZLEF8xNOfbOIZmmy4vsqi3AUnB2Xe31N98ZcXLvaU/3ZOKIy96z/LIDhnCGdE8r5kL22ZvxXfRY57FhMWg+nHgj4/GFaZc5C7gf8jLlNBQORIAjs8d3mrvnQTOXyQvH0sJ++/8vd8s+NJI/0B6neVBXFoFjECk69iafu21fv9beB8X8BFu8O5/PLpl1TkLR0NRY9bjx2ZWCqugjdMVx4ikEPaCBv3QVjjCE09QM7mgIrrRZKU9M+SIVai/+9tuPkzZibA2z6MhJuiNpQWT6KrUREFre3tmI19doaZE8qgxURQB5uNVV6LDUWedYzx/oHs7UEMAu+8I6EL4NTnDwi0c/MgkLaoNm6gO41/N8Ko7IMeZ1mqlEDzWWbjFrIl5TpjgAkKgreNA07AtQkj/F6Ujvd5M+hMtyVP
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 07:57:12.1490
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b37d58da-5760-4faf-5dad-08d812940afb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.60.83];Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3592
X-Original-Sender: michal.simek@xilinx.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com
 header.b=N75RpeLJ;       arc=pass (i=1 spf=pass spfdomain=xilinx.com);
       spf=pass (google.com: domain of michals@xilinx.com designates
 40.107.236.89 as permitted sender) smtp.mailfrom=michals@xilinx.com
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

Hi Nathan,


On 16. 06. 20 20:16, Nathan Chancellor wrote:
> Hi Michal,
> 
> On Tue, Jun 16, 2020 at 04:45:20PM +0200, Michal Simek wrote:
>>
>>
>> On 16. 06. 20 2:27, Nathan Chancellor wrote:
>>> On Thu, May 21, 2020 at 04:55:52PM +0000, Christophe Leroy wrote:
>>>> From: Michal Simek <michal.simek@xilinx.com>
>>>>
>>>> The latest Xilinx design tools called ISE and EDK has been released in
>>>> October 2013. New tool doesn't support any PPC405/PPC440 new designs.
>>>> These platforms are no longer supported and tested.
>>>>
>>>> PowerPC 405/440 port is orphan from 2013 by
>>>> commit cdeb89943bfc ("MAINTAINERS: Fix incorrect status tag") and
>>>> commit 19624236cce1 ("MAINTAINERS: Update Grant's email address and maintainership")
>>>> that's why it is time to remove the support fot these platforms.
>>>>
>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>> Acked-by: Arnd Bergmann <arnd@arndb.de>
>>>> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>>>
>>> This patch causes qemu-system-ppc to fail to load ppc44x_defconfig:
>>>
>>> $ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux- O=out/ppc distclean ppc44x_defconfig zImage
>>>
>>> $ timeout --foreground 30s unbuffer \
>>> qemu-system-ppc \
>>> -machine bamboo \
>>
>> Did you bisect it that you found that this patch is causing problem for
>> you on any bamboo machine?
>>
>> Or this was caused by the whole series?
>>
>> Thanks,
>> Michal
> 
> Yes, this conclusion was the result of the following bisect:
> 
> $ cat test.sh
> #!/usr/bin/env bash
> 
> cd "${HOME}"/src/linux || exit 125
> 
> set -x
> 
> PATH=${HOME}/toolchains/gcc/10.1.0/bin:${PATH} \
> make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux- O=out/ppc32 distclean ppc44x_defconfig zImage || exit 125
> 
> "${HOME}"/cbl/github/boot-utils/boot-qemu.sh -a ppc32 -k out/ppc32 -t 30s
> 
> $ git bisect start v5.8-rc1 v5.7
> ...
> 
> $ git bisect run test.sh
> ...
> 
> $ git bisect log
> # bad: [b3a9e3b9622ae10064826dccb4f7a52bd88c7407] Linux 5.8-rc1
> # good: [3d77e6a8804abcc0504c904bd6e5cdf3a5cf8162] Linux 5.7
> git bisect start 'v5.8-rc1' 'v5.7'
> # good: [ee01c4d72adffb7d424535adf630f2955748fa8b] Merge branch 'akpm' (patches from Andrew)
> git bisect good ee01c4d72adffb7d424535adf630f2955748fa8b
> # bad: [6f2dc3d335457d9c815be9f4fd3dc8eff92fcef7] Merge tag 'dma-mapping-5.8-2' of git://git.infradead.org/users/hch/dma-mapping
> git bisect bad 6f2dc3d335457d9c815be9f4fd3dc8eff92fcef7
> # skip: [828f3e18e1cb98c68fc6db4d5113513d4a267775] Merge tag 'arm-drivers-5.8' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
> git bisect skip 828f3e18e1cb98c68fc6db4d5113513d4a267775
> # good: [c46241a370a61f0f264791abb9fc869016e749ce] powerpc/pkeys: Check vma before returning key fault error to the user
> git bisect good c46241a370a61f0f264791abb9fc869016e749ce
> # good: [3f0be4df50a7854a831c80a74d7cf2cfd61f2fde] Merge tag 'versatile-dts-v5.8-1' of git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator into arm/dt
> git bisect good 3f0be4df50a7854a831c80a74d7cf2cfd61f2fde
> # bad: [bd55e792de0844631d34487d43eaf3f13294ebfe] powerpc/module_64: Use special stub for _mcount() with -mprofile-kernel
> git bisect bad bd55e792de0844631d34487d43eaf3f13294ebfe
> # good: [303e6a9ddcdc168e92253c78cdb4bbe1e10d78b3] powerpc/watchpoint: Convert thread_struct->hw_brk to an array
> git bisect good 303e6a9ddcdc168e92253c78cdb4bbe1e10d78b3
> # good: [0755e85570a4615ca674ad6489d44d63916f1f3e] powerpc/xive: Do not expose a debugfs file when XIVE is disabled
> git bisect good 0755e85570a4615ca674ad6489d44d63916f1f3e
> # bad: [b4ac18eead28611ff470d0f47a35c4e0ac080d9c] powerpc/perf/hv-24x7: Fix inconsistent output values incase multiple hv-24x7 events run
> git bisect bad b4ac18eead28611ff470d0f47a35c4e0ac080d9c
> # bad: [3aacaa719b7bf135551cabde2480e8f7bfdf7c7d] powerpc/40x: Don't save CR in SPRN_SPRG_SCRATCH6
> git bisect bad 3aacaa719b7bf135551cabde2480e8f7bfdf7c7d
> # bad: [1b5c0967ab8aa9424cdd5108de4e055d8aeaa9d0] powerpc/40x: Remove support for IBM 403GCX
> git bisect bad 1b5c0967ab8aa9424cdd5108de4e055d8aeaa9d0
> # good: [0bdad33d6bd7b80722e2f9e588d3d7c6d6e34978] powerpc/64: Refactor interrupt exit irq disabling sequence
> git bisect good 0bdad33d6bd7b80722e2f9e588d3d7c6d6e34978
> # bad: [2c74e2586bb96012ffc05f1c819b05d9cad86d6e] powerpc/40x: Rework 40x PTE access and TLB miss
> git bisect bad 2c74e2586bb96012ffc05f1c819b05d9cad86d6e
> # bad: [7ade8495dcfd788a76e6877c9ea86f5207369ea4] powerpc: Remove Xilinx PPC405/PPC440 support
> git bisect bad 7ade8495dcfd788a76e6877c9ea86f5207369ea4
> # first bad commit: [7ade8495dcfd788a76e6877c9ea86f5207369ea4] powerpc: Remove Xilinx PPC405/PPC440 support
> 

I have took a look at it and was able to run qemu and also saw your
issue. What happened is that when xilinx platforms were removed zImage
is generated but it is not u-boot legacy image.
Don't know details about zImage/uImage in ppc world but if you dump
zImage you should see this.

Before this patch:
[qemu](master)$ hexdump -C /mnt/disk/linux/arch/powerpc/boot/zImage |
head -n 20
00000000  27 05 19 56 bc 4d 17 ce  5e e9 cb 0f 00 2c 8d 98
|'..V.M..^....,..|
00000010  00 00 00 00 00 00 00 00  69 04 b6 eb 05 07 02 01
|........i.......|
00000020  4c 69 6e 75 78 2d 35 2e  37 2e 30 2d 72 63 32 2d
|Linux-5.7.0-rc2-|
00000030  30 30 32 34 39 2d 67 32  38 31 65 65 36 66 36 38
|00249-g281ee6f68|
00000040  1f 8b 08 00 00 00 00 00  02 03 ec 5a 7b 70 54 65
|...........Z{pTe|
00000050  96 3f b7 bb d3 34 49 30  8d b6 1a 16 d4 ce 43 4c
|.?...4I0......CL|
00000060  42 84 b8 cb ec de 9e 3c  b8 21 c0 dc 24 ac 26 63
|B......<.!..$.&c|
00000070  32 04 74 9c ce 36 28 49  b4 16 04 6a db f5 5e fa
|2.t..6(I...j..^.|
00000080  36 dd b8 49 00 ab 33 60  15 28 8f 46 42 17 a0 56
|6..I..3`.(.FB..V|
00000090  65 5c 58 99 42 a0 2d 20  15 02 6c 31 2b ce 04 70  |e\X.B.-
..l1+..p|


After this patch:
[qemu](master)$ hexdump -C /mnt/disk/linux/arch/powerpc/boot/zImage |
head -n 20
00000000  00 52 50 4f 00 60 00 00  00 00 17 73 00 00 00 00
|.RPO.`.....s....|
00000010  00 60 00 70 a8 22 53 af  00 00 00 00 00 00 00 00
|.`.p."S.........|
00000020  00 01 7e a4 94 21 ff f0  3c 80 08 00 7c 08 02 a6
|..~..!..<...|...|
00000030  42 9f 00 05 38 a0 00 20  38 c0 00 40 93 c1 00 08  |B...8..
8..@....|
00000040  90 01 00 14 7f c8 02 a6  80 1e ff ec 7f c0 f2 14
|................|
00000050  80 7e 80 00 7c 83 20 50  48 00 1b 8d 80 01 00 14  |.~..|.
PH.......|


It means only Xilinx platforms have been asking for uImage format and
bamboo doesn't require it. It also looks like that qemu expect uImage
format.

You should know what format qemu expects.
Anyway if you build it by make uImage and then pass it to qemu you
should boot just fine.

Or if bamboo requires uImage to be built by default you can do it via
Kconfig.

diff --git a/arch/powerpc/platforms/44x/Kconfig
b/arch/powerpc/platforms/44x/Kconfig
index 39e93d23fb38..300864d7b8c9 100644
--- a/arch/powerpc/platforms/44x/Kconfig
+++ b/arch/powerpc/platforms/44x/Kconfig
@@ -13,6 +13,7 @@ config BAMBOO
        select PPC44x_SIMPLE
        select 440EP
        select FORCE_PCI
+       select DEFAULT_UIMAGE
        help
          This option enables support for the IBM PPC440EP evaluation board.

Hope that this help with resolving your issue.

Thanks,
Michal



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/50fb2dd6-4e8f-a550-6eda-073beb86f2ff%40xilinx.com.
