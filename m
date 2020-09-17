Return-Path: <clang-built-linux+bncBCD4PZ7MGEIKVC4N7MCRUBBIENDYS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 4675626D9EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 13:16:59 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id b17sf818337ljp.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 04:16:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1600341419; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cie9bGPkA6Rfp5c0X+35bD658r/DdVQw8bdOFEnow++lx8QNHq06Tx+x2eUpqgiTV0
         kwQ235nzW3b2MZYIkRM/qGhtb3je7gTDg9w034Em4gh7BIM6nmigOiB//IXeu1ZVeOh0
         DFYb8NGOu/2rCHj2MQ2eQr7ooxO/rCGn1BVvGxjCawAWJwWKt+TOfPQ2KD+HHbJWXUP6
         M4gufoWi5BKRYtwmGP2C6gAltJjl9elG+ULT9pSuYYloR9e90O88jWS0XGPX70x+aeDM
         7tXBnef4ZztpQMsPDEuvC2r4sTGW5TQPKu50Mc3mj0rZNXl/N/ObGT6qnq2zgE2P7DXr
         lZCw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:content-id:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=+LMYHStECqjPF36iDQTC0cRRnYNs1kYRhjT4BksvFBc=;
        b=aOK24eoeiFaHGVNaPSqFI7PqgocqDP6aRUtYXiydK5hArBdKkBsQhSUI0chqc6jA6n
         23Tyvxw0CKW/CGdOpUYBdQFxCoW3uXmbPuCDjZkTvOrzs0eJco+ZxP65OVqp3my0u1SJ
         AhuUpT1mkpS64JbK0C/c7Vz/2N/lGeabFteY1uyNHt138iZ2Oro2RZZvxP43cYMcRBBT
         haCB6wOfAdXiQ393jqdjSMqow6igfUxADnmnejJdZ3PEpk2IZv/0ajq/h6ZdaEgm3yU5
         cyAd0WB+jyDzYfMZj9/yzGUdAUkrdKIRPezHvqYJpVCmfyXlA1TnEasvcv2p79eCd7bd
         jfyg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Xa+4SFf2;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Xa+4SFf2;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-id:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+LMYHStECqjPF36iDQTC0cRRnYNs1kYRhjT4BksvFBc=;
        b=iA++sCpi1a3hYsJ3fes66f7luP0M8Y7E0ASJnCedCvrZlPJAs/RwVk0k+IRwwrlm+t
         ACDFZa+6zYfYeDoUmaVFNfm8XccjVKOCoQH5Yo3/ggFG969EhzKsRAZHGPIJ4euDoG76
         Un2n9D0zwQOeiIbzjMEBeAS69BHfEwN0ZUGUdRwWEezQmYQRWOwB91BTjp4QLKpahWce
         1HCgtHY79/6xwcOS+gzAfrvwGdZofUdaZpicPCPQcw4Znwmo3EWmWPqDzKEANBaq0fz5
         wmCZmHTHHQI5q0deEWP/rQdQL9kYSPI2f7OoRRwImZfXXYrZquygxiCTXKTTKKpfwSZW
         YGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-id:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+LMYHStECqjPF36iDQTC0cRRnYNs1kYRhjT4BksvFBc=;
        b=adVs5+RXQLuG4Zg0W6A+wujyjSSWBygK/cbelw1HoxnYtO+5RyHRshWN+8Tj0jpI3N
         O353ouMoP1mjh8GGk84zFopOg5iRrXzTBOgdK9j1RtknuuJNz+7zvIEnFTi1I3VQUJ9P
         EMbRxsO9DFU8W8FBVtL0q/j01tpvmPqXB9l35buSP8JJD4ZNz1JIGdMIhuWzGS6sWguo
         SvH8zIcsaCN9GsKFX1ULiLU2xrvvWkROaY0UGpj0LGvOYylfSZxgidh5T6RVkKMkXitl
         ZtYOu8JLkpaGRn+/VmrfeLCZA5SN6TKd9Jb1i7eTPSKdVl96359vhlE4X2FEeKOSYunv
         XCyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WBkHeqQIjnMVM7eWXECgZBm7MGh/n4//bQcV0c4pclqLCsCsz
	afsTX7t57LKbst+vlmKuYQk=
X-Google-Smtp-Source: ABdhPJwMOZdRrrFmtuHxmh0NITBr3LDeDs6PMUiCLxRBp3inYEBjjohSpxn8EhJ092yec6ExyeP54g==
X-Received: by 2002:ac2:5103:: with SMTP id q3mr8739018lfb.120.1600341418813;
        Thu, 17 Sep 2020 04:16:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0e9:: with SMTP id h9ls263265ljl.5.gmail; Thu, 17 Sep
 2020 04:16:57 -0700 (PDT)
X-Received: by 2002:a2e:2ac3:: with SMTP id q186mr10450408ljq.419.1600341417674;
        Thu, 17 Sep 2020 04:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600341417; cv=pass;
        d=google.com; s=arc-20160816;
        b=bWh0/CVQ1MAgEGTO7AVfyHjrBhMO9ZuUFQrR/N941uXGmFTNRbt0E+WGB5CKPBYPCe
         XcbvyH9IE+6hgnY6S+XxLkt/iHb62yvgQvab/2MKB7m4SDYbHKoOvMxB0mXCj4Wso6jD
         if7airA7vo00o1iCx1X0SjRQSyJuQds6+EeM7VNPtt2U34jzm/tOI+n5DIpcnd9Yo9r8
         USWql908TTGv2BdT8QEPz0q0EXSr2wlI/DTGDIBzrUKLHwSLN+KfRRn8L5ftsTpG0KGd
         T0KU4G/EdP1o6q4TOL3jTHqOCv72bw78H7nb/gtXaurtHaFyjGbcZ32QagZc7n+YGI2v
         FsEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:content-id:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=NGoqMuX9hF3Osq5W+7+NlQFlMQgVInOAaZs9fhEBySs=;
        b=k6AMjRx6OToMkW+e+HNs9ntF9yvYg5TYaxvGm2UHZqpA/dV9kZ6nA7sBKvbyIuPDyl
         Hoy6fciaXlxbZhOXxT9urqmERY7sFDVzRSergGOnU/xOsEVRE0A9MpJvlUAO+LqpQQQI
         r0tJnHHZpQW75OTZs1ye698xcj6EQyGfPBmTkPt3XHPAhqfxvkurDbMWD+9PGPcW+nWk
         NFRqu0W17+olmpqHiVG37rXHy78mjNeHmga3GW1EwLq3rXCZK1N8ZF50p9kXvzrAv4am
         mTP1c0XHXX4zcbt9bY4S/qeO7M5MVrX0Se5p1jG4lUGsk5h2HutVvJ+H4G3G+GF28hUH
         WOog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Xa+4SFf2;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Xa+4SFf2;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30086.outbound.protection.outlook.com. [40.107.3.86])
        by gmr-mx.google.com with ESMTPS id b5si514431lfa.0.2020.09.17.04.16.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 04:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) client-ip=40.107.3.86;
Received: from AM6PR0202CA0050.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::27) by VI1PR08MB4622.eurprd08.prod.outlook.com
 (2603:10a6:803:bc::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Thu, 17 Sep
 2020 11:16:55 +0000
Received: from VE1EUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:3a:cafe::de) by AM6PR0202CA0050.outlook.office365.com
 (2603:10a6:20b:3a::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14 via Frontend
 Transport; Thu, 17 Sep 2020 11:16:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT051.mail.protection.outlook.com (10.152.19.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15 via Frontend Transport; Thu, 17 Sep 2020 11:16:54 +0000
Received: ("Tessian outbound e8cdb8c6f386:v64"); Thu, 17 Sep 2020 11:16:54 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6cd95a61369cd2fc
X-CR-MTA-TID: 64aa7808
Received: from 3fce3f0f65bc.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 64B55ECE-E23A-429A-94D5-495FA21D3811.1;
	Thu, 17 Sep 2020 11:16:34 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3fce3f0f65bc.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 17 Sep 2020 11:16:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EwKYdmriHXkzT4QdxLMkSXxk7WC5NoNbGuGSPD7kr/7jdqxfmpgfYuguc3SGXihTBP/Y/MHR1vh2BzvOUml01Do024aw++bcbEdVo0woYgEbXsy4DnrQ5fgmZeS1SAl7VQWu5LgcDmle3cc+5DQtvfJ0knQCUjVaeHVAl+esIr7B9i/PCvm+ZLD+0RKUV6AMguVB64bXLdJP7fj7RTa2e8nI/BRxxacgj9D5GWDbJbjg5wtYfsQqPjFammpGBr4DPNpPwaU2kLWLpbf1JxPdFQwen6cacMvBE5BZKFRiLzUh++DqgUQhMH9Jg/G5snfWNJpYq3aEjgOViw3Zd3phSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NGoqMuX9hF3Osq5W+7+NlQFlMQgVInOAaZs9fhEBySs=;
 b=ENAoWyzO1d6F3yv70Al6BKD4C0Cqo7zlDS0rRfHMU85HdXqVvv3W08p6OPVjhiGs8o49mRf2rRNsYEZBPti1iNJy+PZjYkMuZi2b8OZI7Dqn1KWU+RFeHvmFcO8IWVFUobiv6XlKvW/FgnQhU2jkZ23s9Q3DHEXQz8g+wMWz3kfq3rbwmcQ28yNi97vy/Qe1pZgva+qSFsT+u30Quffl406lTKytBezVLZpjylaZTI4xTeulzzVjrfEEcVyPxXNWVpVSN/vxIJpRSI41Pt2waNVi9089Pe+sX65q3vI95XM/hQcWNbHbuqIVLVVSqfu03WqLWBL0NZ3QO7hCNJvAjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM7PR08MB5382.eurprd08.prod.outlook.com (2603:10a6:20b:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13; Thu, 17 Sep
 2020 11:16:32 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::edd3:6ed9:f739:d26]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::edd3:6ed9:f739:d26%6]) with mapi id 15.20.3370.019; Thu, 17 Sep 2020
 11:16:32 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
CC: Marco Elver <elver@google.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>, Josh
 Poimboeuf <jpoimboe@redhat.com>, Borislav Petkov <bp@alien8.de>, Rong Chen
	<rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, "Li, Philip"
	<philip.li@intel.com>, x86-ml <x86@kernel.org>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Andrew Morton
	<akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, Masahiro
 Yamada <masahiroy@kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
	Momchil Velikov <Momchil.Velikov@arm.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Thread-Topic: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Thread-Index: AQHWjFZWUnFC6JY89kqBV7Fktz5UKqlrnB8AgAAsdYCAAONdgIAAA2AA
Date: Thu, 17 Sep 2020 11:16:32 +0000
Message-ID: <B5C0B917-BB17-460B-9CC3-51E7D49F04A7@arm.com>
References: <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net>
 <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
 <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
 <CANpmjNPGZnwJVN6ZuBiRUocGPp8c3rnx1v7iGfYna9t8c3ty0w@mail.gmail.com>
 <333D40A0-4550-4309-9693-1ABA4AC75399@arm.com>
 <20200917110427.GA98505@C02TD0UTHF1T.local>
In-Reply-To: <20200917110427.GA98505@C02TD0UTHF1T.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.1)
x-originating-ip: [2001:4c4c:1b2a:1000:d4e4:4f65:8128:3c2d]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a4f86554-204d-4a39-32e0-08d85afb2f0b
x-ms-traffictypediagnostic: AM7PR08MB5382:|VI1PR08MB4622:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB4622F12BF659D3DF5F6F213AEC3E0@VI1PR08MB4622.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: v6cIxiwvF/kJaolrDxottEIcQfsgFvNX/0Sx4ra5c4AHIqjOudtNN0TJYn49vyRrUsMvL+LcbC30YggTN4a5RBm1pWfzfni3EInDrYYmBon3zt7UrglVDv/OmZUNrs7fVrSPTOF18iZZNkwkgxqLPyV7vsSQv9caS8CTWALqzR7l1wtyKg6pAP9/JgVmGY9BlGj7SoBQAA8onQNwv1NDGAMX+WlONAcEMgOCFzbaULP4omLpXHYcxi82ldXlihJykzW2gFiC8H4hEg727wh4jFksH3A56nbx90ofwvIpvbAytwi5G0rnADnvsoZ10gEd+dGKHczqoMw1PlV0RYuXgVwpFI1ShzQuC5s2QLZW4x9fk1Gu5SqPUzcxhDB+4VBzl1SPQgQLrzsjeXbV79Y2OA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB5256.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(64756008)(2906002)(71200400001)(66946007)(76116006)(66446008)(6636002)(6512007)(6862004)(91956017)(86362001)(7416002)(66556008)(6486002)(4326008)(66476007)(83380400001)(6506007)(8676002)(33656002)(5660300002)(36756003)(53546011)(37006003)(316002)(186003)(2616005)(478600001)(8936002)(54906003)(966005)(19627235002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 0kyAiZxT8uOYoII5W89V4x3mEJEJH0OXTpvIeJe0j/UQFwky4stCAhOosCxzSopvGxqVENJg6CBDmCrg4o/g6fhAjsURN8gM30xWzuinXNNY1cpyc/cmJnDcTQR0UPTuP/p9Sxs/CuK8IZDTBe2ujGoF9NbD6qBYySdlubg1foYymMDOCeIjWBrTJ6zhCXO27u3nkXq1uXvtB596Aq4XJ4wDlsGxWacfHL5eB8tzYmxgsAisDFzssA10TRYcvcBQ2xsvTkjx48Jw7reKjxJqukRpPV9EfxY+c5Le8ifOfEJ5cujUnacGnOVtCjehtyNUN0MVYeuZDwdkDgQkzjthb+mcVN7xmhvpFpLjltPwgQCqdgLqbYOdBIaWYR7oxJKpj1IbJkn932o48SikE1E9Zjo4zDwzM6fMiRT6Ib4vGnJz+L+wZzbPvf3G6iuGgRxtEIQPCA9Wva2XyduIIDIzkCMjTEWgTF2XeuyMZuZO2XUU07DrMayyIdZnjkQve2KWV2zPP3hun5mc12rgCpopTnJXf6/QQ7p3qhSjTfLkKQePpKQ8NxF6dZRsd7Z72SodClzkBVxgQjSwUBxIm5/5+D56oMxA/XRjGpZbSb10bjTaDxHiC/vy7cmJ2qRWHq4Dj5ipjzNK1wzU/trj50VhushUD7QsVQ6jZTuMrGRs/Qkpk5Yd5delHZr94JRjfcSpKgYWVzj0OQmr2bnCdKs/zA==
Content-Type: text/plain; charset="UTF-8"
Content-ID: <560C916938909848A6791F1DCDD4F782@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5382
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: d74b1380-45f0-4669-acc9-08d85afb2227
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IqjXlpCqFJjPADrVNKHb6Hlgd4CHzb4OeKNZycMH3gYS3Pxup6SeWRbNOCkkRBEwiitA8aijEz00SG2ggorOiLajJrVm1ayoDQ9YSv3u+Rpej6TM/5+XBpMvBBI0kaXu6KbqImOW8N/zSH6sIfzdK0e6Y4iFr3lWXiW4i+erLc4vhepNO6/NxNV7Kfq46TCdwItOLpUyx6SvK44+ZeEJZdSNJtj8/wNTQNko3SHH44AWjxm4ZMxLvETbVcIzbFprcAq1UDhBiRl+/JXfxfSJYkSoAOgZQ54gkqkhdYquZ7y6h+tgDqaKBbjtam/8R44QUnxE81PSe+eRtGUw6IBLMW9bmJyEUSJlp3dfN5O0BvrEXE2qMrmMWKT0FuWsIx9bJ0YosfZM5FJJ7Gjk/ru9+QnZrD8U7x8lWYc/eiEMY3bsR1owhnbDGb/Xdcwn4Zcho6hlqM2t4MQoNyqecpid63/BZr+5ODGJR63lXFsJNbqbJ7IDRRJYRp2QEgGdlAlvs1VjakfyUdAfSwSqG4BYNQ==
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(39860400002)(376002)(136003)(396003)(346002)(46966005)(186003)(81166007)(70206006)(6636002)(2616005)(6862004)(83380400001)(82310400003)(356005)(4326008)(53546011)(966005)(70586007)(6506007)(450100002)(2906002)(47076004)(5660300002)(8676002)(86362001)(8936002)(336012)(82740400003)(6512007)(26005)(316002)(33656002)(478600001)(19627235002)(6486002)(54906003)(37006003)(36756003)(36906005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2020 11:16:54.3930
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a4f86554-204d-4a39-32e0-08d85afb2f0b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4622
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=Xa+4SFf2;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=Xa+4SFf2;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
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



> On 17 Sep 2020, at 13:04, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Sep 16, 2020 at 10:30:42PM +0100, Daniel Kiss wrote:
>>
>>    Thanks for the summary -- yeah, that was my suspicion, that some
>>    attribute was being lost somewhere. And I think if we generalize this=
,
>>    and don't just try to attach "frame-pointer" attr to the function, we
>>    probably also solve the BTI issue that Mark still pointed out with
>>    these module_ctor/dtors.
>>
>>    I was trying to see if there was a generic way to attach all the
>>    common attributes to the function generated here:
>>    https://github.com/llvm/llvm-project/blob/master/llvm/lib/Transforms/=
Utils/
>>    ModuleUtils.cpp#L122
>>    -- but we probably can't attach all attributes, and need to remove a
>>    bunch of them again like the sanitizers (or alternatively just select
>>    the ones we need). But, I'm still digging for the function that
>>    attaches all the common attributes=E2=80=A6
>>
>>
>> We had the problem with not just the sanitisers.  Same problem pops with
>> functions
>> that created elsewhere in clang (e.g _clang_call_terminate ) or llvm.
>>
>> In case of BTI the flag even controllable by function attributes which m=
akes it
>> more trickier so
>> the module flags found the only reliable way to pass this information do=
wn.
>> Scanning existing functions is fragile for data only compilation units f=
or
>> example.
>>
>> Our solution, not generic enough but might help.
>> https://reviews.llvm.org/D85649
>
> Thanks for the pointer -- I've subscribed to that now.
>
> Just to check my understanding, is the issue that generated functions
> don't implicitly get function attributes like
> "branch-target-enforcement", and so the BTI insertion pass skips those?
Yes, that is correct.

>
> I'm guessing that it's unlikely this'll be fixed for an LLVM 11 release?
> On the kernel side I guess we'll have to guard affected features as
> being incompatible with BTI until there's a viable fix on the compiler
> side. :/
I don=E2=80=99t know but I have motivation to backport all PAC/BTI fixes to=
 LLVM11.0.1.

>
> Thanks,
> Mark.

IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/B5C0B917-BB17-460B-9CC3-51E7D49F04A7%40arm.com.
