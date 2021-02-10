Return-Path: <clang-built-linux+bncBCD4PZ7MGEIMVW4MQEDBUBD55SD74@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5878D315B9C
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 01:50:19 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id x10sf131752lfu.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 16:50:19 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1612918218; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tu8Dq/Rt5rJpNowNrPSZceKTQX/MgQwO9qESrQ93sc2aQnrP19ZuxrY892vIavu7lM
         CAU4WocwQl0xBIlQyCWnNbMFVgzpF+OGDyUQ88Z4UNWwjQeZpMQ8PjLCFI8JFihqL3hf
         6XX/hckD4YVUpsaIf65nUHbRR7CGRtt0He5Fyw48xMb2CKr1zfN+s+TjbRUDQ+DfV2Q8
         ZqAF8zhrJAvSwMBejOb+vDLJBpkrLfnjPduwsBEU8x79l6S7QUfpaeo4VdY5n4GrKrnA
         V81sLf2Le59bU4sN70d6wGDe+2n4wLL0CnFc4pL+R1axBZauLd6Pt5cARfHhJKkiWjhU
         nPQg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:content-id:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=M9B7LC/zkTYargEx8eW+doVrnubzG3jaYOq1Civmmic=;
        b=mks5qeU9a227Uia8/rqp5POiWSc12QMAc/xq9ZAm4uN7w0cXJnxSCCwRlayxAQZ+8k
         I8SevTggy0Slb0BXlGo/hoizQ3ttfB7BKjknbmSLOWeKGhXNjAacbderm7OhcqTxHlgW
         BGzs7lQQwW8QY+J2kdktmJ8g52pqZ+re2s1582M6BR//HELaTVNZcyjB09Djb8X1B+DY
         H2dvJQ9KUXsn1gf3PJJridrTfCWvGCMxsGtU9XUiL6Dzt1wYnriGUx4NmAwFiPVCqQ2N
         SGzO/7G2InUhso3nEb0/QK0NuGb5uiOPXoz/Fa4+Wu4tVUBHgd/Hfg4wgWG16qqXXFYS
         l2kQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=OWIl9Bgq;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=OWIl9Bgq;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 2a01:111:f400:fe0d::62c as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-id:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M9B7LC/zkTYargEx8eW+doVrnubzG3jaYOq1Civmmic=;
        b=Wnliknr1YTFyQ0949zup8M7XR44xwfLFret61kp2TgD3cJvyzS3b0Tkqz2dbJb1JDe
         Oh8PBj1nn1XBYE8EiRVVD694L6qMY7aW1Rv3trTUA1o+JuKQ0tTWNYt3+GoDKK5hwPfP
         wxOAJs8INUmT2BRP00hykBy8eM90+McpGEj+i5vpBUHFXn6vg77duv/7QuHFJ+bBNBhr
         Jag9Ychuq8fz3aTOIviLSe3ujZ4LN3+SKSS1wqpjOJ9irXcyOQJb9rpTUUTNJ/U5HToN
         e3yR+eAEYpFaFGJK36gNgzz2T3M5ZMtNBADHuewvacf5mN+0RPi4kNTAbTuchTksvraE
         XPRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-id:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M9B7LC/zkTYargEx8eW+doVrnubzG3jaYOq1Civmmic=;
        b=pOwPKSe1RqdDe8N74KZGgSrls5vvCltLnLmrrJJE9Jhu04crQ2pco02MIcRT8uehss
         PI1voBEjpgyr8yIx6PQjah/lPRQ+99HvSSuU+5ucR4GDJiU5JC3vazV/xleas8V8SfIP
         kJdrLb0FeH+oTFfelPp18Jy39oSMdFucJOJ8FGXVHja5dZTHqDaxzmoZxBc/6ySDzmMl
         vvh+h6Dtt81aHBq8A9W8bMlaHDUR3WwT7z7QIVNCZDWDuNuDU+cOwGQL+oNh8n5y+sW/
         NmoMsIWoSye8LKbSrvAnGTxUcvm76W7vWBa7JPdL2YvG6DiT/9D/siC4T9TMQPGNHqvt
         7Uaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dyo6u/BVjpa/yRgmOqFaEcq4ATV7jGifa4HJJTH6cP2YY7YvH
	zt0RN0fOqr8TzukhRGodSwY=
X-Google-Smtp-Source: ABdhPJzdNNRZEzw5fYAWFkKiBzqkgBCEzhQaQAnRuvZry9jKKrBDQVRywHFPX1IYp5PbcbQY9O24KQ==
X-Received: by 2002:a2e:3306:: with SMTP id d6mr291999ljc.371.1612918218861;
        Tue, 09 Feb 2021 16:50:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1314:: with SMTP id u20ls39399lja.9.gmail; Tue, 09
 Feb 2021 16:50:17 -0800 (PST)
X-Received: by 2002:a2e:b531:: with SMTP id z17mr277712ljm.405.1612918217781;
        Tue, 09 Feb 2021 16:50:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612918217; cv=pass;
        d=google.com; s=arc-20160816;
        b=WdugYNw9BXfMB+biNIh9rThovhknlE5VcyVH2LSqkQAzWCF5tFboJnBzPKycbi+HWt
         yI78l/NIfnqVwNqIGJcQ98+innV4aJOCoODZWH2pN9RxqbV1fwoN2grkRV5ZCcMTE5nM
         lYQ2Ag6E50EH6afj82kZ4txNw6RlbFWI+4Xv1VQ9GxvxySAr14eYyVc6YvXnAb08Xgzb
         qKf3Bg0bAhdHacB1m7jbe+5NyLUgEVl+x85vNdxejH3Eiu1lyjwbc76I5IcpfHeNjmvh
         mIPd5ZIm/yAMK7rjHvTHleD65/MxW6vU/riXbbTyBQyS7ondspaTHlDGoBpWhfPxF4G3
         asjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:content-id:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=UpqAS0EKjlYxZC3L8qA3QovLkZrgeBA4s1FRge0e2qY=;
        b=vXxAAaTfso6QIFIB4q8Pdwnpyuo4FafVXVdRxtk5CeNqeJkvFRUkGTAQUCgEhFbXex
         Pgog7nPR459g10VNTadS2meqUfvBMGpwbcynRoCiDmnwZNmw5iQj8mc28ZzKdSVUKl20
         jpZGNJSazAxX5LjlpN2AcDL62lZ5qmWCCkPHAXUsG8lS3AZRZfrV9xp0KcsB/aqqfOla
         DRDSThpcuxL8cgpWnqn7q6vkZbapm+wFdVSfQADYSNg+EgMvL3kd/NcYZ9e9s2kDaPvX
         NXFrNvbIFAClwA4rlz49cJNHVGU3sMgw69MXFAkPFs8L4ZtFXe5a4MQPqzKzrJnRwGwJ
         5yQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=OWIl9Bgq;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=OWIl9Bgq;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 2a01:111:f400:fe0d::62c as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on062c.outbound.protection.outlook.com. [2a01:111:f400:fe0d::62c])
        by gmr-mx.google.com with ESMTPS id d25si16979lji.8.2021.02.09.16.50.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 16:50:17 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 2a01:111:f400:fe0d::62c as permitted sender) client-ip=2a01:111:f400:fe0d::62c;
Received: from AM6PR01CA0063.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::40) by AM8PR08MB5587.eurprd08.prod.outlook.com
 (2603:10a6:20b:1dd::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.26; Wed, 10 Feb
 2021 00:50:00 +0000
Received: from AM5EUR03FT039.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:e0:cafe::8b) by AM6PR01CA0063.outlook.office365.com
 (2603:10a6:20b:e0::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20 via Frontend
 Transport; Wed, 10 Feb 2021 00:50:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT039.mail.protection.outlook.com (10.152.17.185) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.25 via Frontend Transport; Wed, 10 Feb 2021 00:49:59 +0000
Received: ("Tessian outbound e989e14f9207:v71"); Wed, 10 Feb 2021 00:49:59 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 0373bd5633dcef3e
X-CR-MTA-TID: 64aa7808
Received: from 75efda0022cb.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3135B719-BF4D-44DF-AEC9-41532641E056.1;
	Wed, 10 Feb 2021 00:49:54 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 75efda0022cb.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 10 Feb 2021 00:49:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oDqrjOwsc6JJ9lSm3Sj5AH+hwnq2HwXJ4eT+byq8PEQ62ULNTElcuiJg+Y6r3x4/p6OOYxmcIDkihdzWmWzqdG/dCWNUoeWghuA2GWpxDivoczKE0pjbwsC43v/yVYBdeg9vb0dxstics+vnceX0vHARIRrS9RLC6cXL8UqRiYIMitjqDXw8aQH5o6JTXa7gt+JQZPHnIkd38snkMwWjPMm647UDRtRksz5IKMKfA8ZJBBfVhLHbUZEIaNKrpsMO6jqdfeb0QtBz6pAjG8IkUs9MUgvh9MYWOFBXPBgBo16Mz3A9BQw9eWBBmK2cV8kO1h51vR60NA9FHFs35ZpVyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpqAS0EKjlYxZC3L8qA3QovLkZrgeBA4s1FRge0e2qY=;
 b=Ux04L9WKJKsd+e6e66E1GFnU31NvWVqIyqNp1Kfa6cCCnnG3/lrwY45DoDEXCCeyNX+ncuQCPazFx9FU4tBB77I4ScWFJilMsiR+cl5c0/bLx2RQ/xjJy0ic1TOhzvEGLa8wO9iY6A3U6EYOdGShH6selwEeHaRmfNtaWyK3z7YClgVbUJFlomMQazcj83YPN72krRR/9VOyemlpHnfY4LkvQss4Wju0bN1hytaF4Icf7KqCBfOzfs3ec5/mipecVRDYLQ2lb1XRYnputmbynrYPdKnlpbJUyWw1mDnF1z4K5z45ULA0rJYvhhacfrtA0h/EJSvC/U9NtTNgxdFFuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM0PR08MB3026.eurprd08.prod.outlook.com (2603:10a6:208:65::21)
 by AM0PR08MB4196.eurprd08.prod.outlook.com (2603:10a6:208:129::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Wed, 10 Feb
 2021 00:49:51 +0000
Received: from AM0PR08MB3026.eurprd08.prod.outlook.com
 ([fe80::c98b:a3ef:b40e:c8ae]) by AM0PR08MB3026.eurprd08.prod.outlook.com
 ([fe80::c98b:a3ef:b40e:c8ae%5]) with mapi id 15.20.3825.030; Wed, 10 Feb 2021
 00:49:51 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, Jiri Olsa <jolsa@redhat.com>
CC: Andrii Nakryiko <andrii.nakryiko@gmail.com>, Alexei Starovoitov
	<ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko
	<andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu
	<songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, John Fastabend
	<john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Networking
	<netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Veronika Kabatova
	<vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>, Arnaldo Carvalho de Melo
	<acme@redhat.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Thread-Topic: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Thread-Index: AQHW/x+srwtZ81CPcEC+4vtMWq6t8qpQge2AgAANGIA=
Date: Wed, 10 Feb 2021 00:49:51 +0000
Message-ID: <5F054B94-6CCC-49C8-887F-D4AD73989882@arm.com>
References: <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <YCKwxNDkS9rdr43W@krava> <YCLdJPPC+6QjUsR4@krava>
 <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
 <20210210000257.GA1683281@ubuntu-m3-large-x86>
In-Reply-To: <20210210000257.GA1683281@ubuntu-m3-large-x86>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3654.60.0.2.21)
x-originating-ip: [2001:4c4c:1b2a:1000:9c7d:1b80:7ac6:94b6]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: df737ea5-78fd-49f9-15da-08d8cd5dcb50
x-ms-traffictypediagnostic: AM0PR08MB4196:|AM8PR08MB5587:
X-Microsoft-Antispam-PRVS: <AM8PR08MB5587E497623AA171533C8DC0EC8D9@AM8PR08MB5587.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Kf1QcfE1XPpGkTWwtlp4+7oL16rlL4pMi2U7P/MVg0PjKY2qSfoisCPmvCXYa7wXKn1ApkCy4d4vYCEOxkqH4CxJRZgWAHgnD07gwN0GbwXzfZ5shrj9W8crV+vXSczQREcc1cKRtHwPclbNcUWoJzsYqjxx6QfQ8Tzw6DMti86rnAkKJF84u5+RpEMfaeNZwZYwC7IsUmJhMJKQa4aUS13np6QaYS5rP37r0gjCKhW/C6Pg4Yk7qWW4vtPDxq/uWl5VZ1mUNv37Hf64o6tikF4PAmBGw1rh2qRZIxH7xEgmnO4J6H96Csyamj4rtfM8/PvWeR70QkVDKDoZYufHHptxaPY9CN3q0450F2DN/EmJNkWOXjA+ftlUaiRsMQ2ZZpDtixx1kSWRqy3Bu+9FKYlBSce0NCg/nd+a+PvpAo3cPAAYSR/R/IXHRf2b+6BeeD2V97/doy5FVEDLGdYaWIWQ5DYLas7F1kPDSNF9mI2CN+76CWIvbqQW+YoEpEZ+/vucaj5wWFZ0djah+3EUKvL4miL+Q8DI2brwxPae+1MGq9mCADV1KLDSutKFiUbUD2B2qQSbKjAqGjUmVNrpyQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR08MB3026.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(396003)(346002)(366004)(376002)(136003)(64756008)(66446008)(66556008)(71200400001)(2616005)(76116006)(6506007)(110136005)(186003)(66946007)(6486002)(54906003)(66476007)(91956017)(53546011)(33656002)(83380400001)(8676002)(5660300002)(8936002)(316002)(6512007)(2906002)(478600001)(4326008)(86362001)(36756003)(7416002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?VTlyNVZ5emU1YStONUxWYWV2QUc5Rk83V2d2YkgzNm5qOWZIMG9IREZZOFdw?=
 =?utf-8?B?STEyTms3djVDcmJjM3UybERmdk9ydVNIcVF1UTFLRWxxd1VEdkZMeHRSWlVl?=
 =?utf-8?B?TzNsc3FCTEtwYjZlZml1RHlGWmZqTmhreVNWaSt0TWphREVqV0dVSjBIMFkv?=
 =?utf-8?B?cGtaUExFeFdGdWd6TUN3REZReXFiVnJwdDRqWStjN1l3VVEzaDNxOUJNVEtJ?=
 =?utf-8?B?Y3ltbEpUbXgxRlIxcm42UjQwQlhUWmxzSytTWkowbFhMNzVqVXc1WXUyQmt1?=
 =?utf-8?B?Mzh0RTdwMEo3MVZNREQ2U2xBQlhoa1JkeFpUdUlWQ1FRdGdhdU93bDVHWW1o?=
 =?utf-8?B?TEpyMU1TTWhvQWJhNXJ5eGJXT1RUWXRUUjdhWWpsbEZVR3lXZ3dpMXlxL2JY?=
 =?utf-8?B?YkZrNUNBdStSM01Jdnk3aTFKNDk3ZHNuamtEYnh4MHRZSGlyTGNiREd6WTcy?=
 =?utf-8?B?c1REZXhhYTZQdU1PV1VrTmFPR0pnNHYzS2FCb0VoYzJjU0hXcDVHNEpEZEtF?=
 =?utf-8?B?T2tTTGFneklEaVZYL0NYS3JyN2JPSXNjNzg3bVRRN3plWHkxQXVOYmJHcjcy?=
 =?utf-8?B?SXlVb0tmTGpmMXY1cC9qM01JR3hJOGVVa3dMQXBLTnE5eGY2Nk1hWGRoUjQ1?=
 =?utf-8?B?OTJhcFgxNjR0aUFBUHM4SUpBQUxSZnpFZzRuMzBaRXJmdWs5L3p5N3JobDND?=
 =?utf-8?B?Vm1wd0JrZE9qakdPc1M4clNqb2FNcitybHFWUVlpc0pGdUQ1UWZ4UGdmaHhq?=
 =?utf-8?B?ZjYzTG1xQ1VMVzVKVllvbGxFdFV2ekI0V3l4amJzUytyUmtwREJJRXZrRHdV?=
 =?utf-8?B?VnlUQU5PRHJaN3NWamEyYnYxOEZvc1hCYjFRY1djRVI2N2hwckljMldZZ1kv?=
 =?utf-8?B?RVFoeHdpeXUvSksxZTVVRmVOTWRsL2psMFBhVElWWUVXZHlDdWlKVHZFdjE4?=
 =?utf-8?B?eGRsS0V3ZExjUkpURFh2eVJRb2JxbzZDOXFla3JIZUlCL0VBS1dNc2JNSEpF?=
 =?utf-8?B?MUptUWhKTzdnWGZ4VGIvQmlCdXdaNXhBQkxvNVk5d0tnMXpmSjB2dmNiUXpW?=
 =?utf-8?B?dGpJbW8zbi9zQkFJV2hUQkdYREZvL081NVFVSytSUTcxbkJHaEFpU3BEb1pQ?=
 =?utf-8?B?L25KVWxFQ0c0QnVGLyt4Y05DWnEwVUM4VS8yUU82Y2h5bS9IaU9JeWc1MXdm?=
 =?utf-8?B?b0ltQUNtTExHWlAwZGgxdGJRRHlUcEQ0SUlUcHBDOGlRVExCWEhMcEtZYmI0?=
 =?utf-8?B?L1p2U1BXdmhYUnpMNktVZ2pzQWV0YTB4dWw4MXduSmQxYnd1S1ROaXA1a01V?=
 =?utf-8?B?eE9MZVd1K3d1bDZoK0IyQ0ZwNXcxV0pCcGVrU2owczJQT1NxbFBaU2VXOUhw?=
 =?utf-8?B?LzNQdDJjZ0pmZUwxQW42SkhPMTB6akp4WFkxZytjTCtaR0VMSFpUSlVZUTVB?=
 =?utf-8?B?TGhRRHVpaVlYSFM5akE0KzdmVzc1ekVtYjVDR2JJWHkyYmpGRWxnbU9vMHRT?=
 =?utf-8?B?YkR1YXlyTXVMM2FOT2w5ZGlrZ3M2NEVsNUh1VjZSM3pUWUJxVDMyTmo3RFND?=
 =?utf-8?B?MjgxSVdnYUVJc0FSa2g2Mkx6VlhzMjlpMnpxaE96T1RBWisvY1hXNW1pZVI0?=
 =?utf-8?B?a3kxNWNyVDFDWkk2UmFUanZGZFNYWjF4WXFCZm1qQUhqeG5rS3Iyc0ZrMjBW?=
 =?utf-8?B?VFNtWmZrTzA5aU9jbitsVnV1TmtiVktGbkNZYXF2NDlneFpkUU53OXkyd1Jw?=
 =?utf-8?B?cEl2Y01mQTBJL1lmbHVNbis1Y2pITXZmL1RKdzdob04yNU9wTFpmVjBtVEJB?=
 =?utf-8?B?YzNFTG4xZFc5Q0NFd3FEU2dDaU9PM1p1WWF2NmtldSs5dWlaWXMxdDBpMDBo?=
 =?utf-8?B?VTNYRmNrZ2hhWTNNUk4wSUI4eDBtWWZJVHhSWWE4N0ZlUWc9PQ==?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <929DE5CD643C4C46BAB890495FCDD5B8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4196
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT039.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: f5780b7e-610a-4c07-0c4c-08d8cd5dc62a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Uu/G3cnJFWvRZyuX2YCEBiJ5bbdTcMvvdklhraDZ0UUGXZFZ/nR3gcwfpRPgTV0v+w/bS8OsCNLYOrnsM6DLwuAPJ4k4hDp+kXfhqWyDwDqLA0AAFbLDwmaYVzXSDR2j+Wpu9OtsIKq8ivwO3l38GU44B75ZDyyVi10AqLs9vL0SEzkweE9S0DF+h1NmKMnsRv+5rrRDpOaWI66eVtDVKKTOQvAYjS3YwiBepLn95gi21A+V0tKvcqdo1OueSBft3fdxJR8J/iTe7pB1QBObhV7C56cgtcmWc6Z7H46NvIDjfE7Kvw3GCPGJufyiX8mGJJ4POLEnz1rfAIfIk3Tox5PQVGS547LrsAiFqWsWPzxc+sW0HQGvM8ZogCyQK6cinAvRxBAJCpmaNGuLq0YDfvBo4B/5fyPU+fHZmhZBqDABXTpUKBFom8LiqYMKJHXnkpvhSZsCevoXHAhSCsEjGods+cWPQ2jxJqWb1Myc5loVtE9QmdUopA20Yx5D2LHjYZRqQAmahmIFddzm+67QMXEQ/Z6zgSVZfHlmhLzdiTanj3mTvwxw/bk6TXHbCnuQoVyzN4sscKFweNKveKCEJ9ZfZTtaIcZ4d590fNLGSwc9IfXOhdb+5RjgqGAbjb9RE8vgdAPznZNQzjiwRSXl+Ke6sroy0EYvI5Fyaq3mG6o=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(396003)(136003)(346002)(39840400004)(376002)(36840700001)(46966006)(8936002)(82310400003)(6486002)(186003)(83380400001)(4326008)(107886003)(6512007)(26005)(6506007)(53546011)(316002)(70206006)(70586007)(110136005)(54906003)(478600001)(336012)(5660300002)(86362001)(81166007)(356005)(33656002)(2616005)(36860700001)(8676002)(47076005)(36756003)(2906002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2021 00:49:59.9081
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df737ea5-78fd-49f9-15da-08d8cd5dcb50
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT039.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5587
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=OWIl9Bgq;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=OWIl9Bgq;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 2a01:111:f400:fe0d::62c as permitted sender)
 smtp.mailfrom=Daniel.Kiss@arm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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



> On 10 Feb 2021, at 01:02, Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Tue, Feb 09, 2021 at 12:09:31PM -0800, Nick Desaulniers wrote:
>> On Tue, Feb 9, 2021 at 11:06 AM Jiri Olsa <jolsa@redhat.com> wrote:
>>>
>>> On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
>>>> On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
>>>>
>>>> SNIP
>>>>
>>>>>>>>>                DW_AT_prototyped        (true)
>>>>>>>>>                DW_AT_type      (0x01cfdfe4 "long int")
>>>>>>>>>                DW_AT_external  (true)
>>>>>>>>>
>>>>>>>>
>>>>>>>> Ok, the problem appears to be not in DWARF, but in mcount_loc data=
.
>>>>>>>> vfs_truncate's address is not recorded as ftrace-attachable, and t=
hus
>>>>>>>> pahole ignores it. I don't know why this happens and it's quite
>>>>>>>> strange, given vfs_truncate is just a normal global function.
>>>>>>
>>>>>> right, I can't see it in mcount adresses.. but it begins with instru=
ctions
>>>>>> that appears to be nops, which would suggest it's traceable
>>>>>>
>>>>>>  ffff80001031f430 <vfs_truncate>:
>>>>>>  ffff80001031f430: 5f 24 03 d5   hint    #34
>>>>>>  ffff80001031f434: 1f 20 03 d5   nop
>>>>>>  ffff80001031f438: 1f 20 03 d5   nop
>>>>>>  ffff80001031f43c: 3f 23 03 d5   hint    #25
>>>>>>
>>>>>>>>
>>>>>>>> I'd like to understand this issue before we try to fix it, but the=
re
>>>>>>>> is at least one improvement we can make: pahole should check ftrac=
e
>>>>>>>> addresses only for static functions, not the global ones (global o=
nes
>>>>>>>> should be always attachable, unless they are special, e.g., notrac=
e
>>>>>>>> and stuff). We can easily check that by looking at the correspondi=
ng
>>>>>>>> symbol. But I'd like to verify that vfs_truncate is ftrace-attacha=
ble
>>>>>
>>>>> I'm still trying to build the kernel.. however ;-)
>>>>
>>>> I finally reproduced.. however arm's not using mcount_loc
>>>> but some other special section.. so it's new mess for me
>>>
>>> so ftrace data actualy has vfs_truncate address but with extra 4 bytes:
>>>
>>>        ffff80001031f434
>>>
>>> real vfs_truncate address:
>>>
>>>        ffff80001031f430 g     F .text  0000000000000168 vfs_truncate
>>>
>>> vfs_truncate disasm:
>>>
>>>        ffff80001031f430 <vfs_truncate>:
>>>        ffff80001031f430: 5f 24 03 d5   hint    #34
>>>        ffff80001031f434: 1f 20 03 d5   nop
>>>        ffff80001031f438: 1f 20 03 d5   nop
>>>        ffff80001031f43c: 3f 23 03 d5   hint    #25
>>>
>>> thats why we don't match it in pahole.. I checked few other functions
>>> and some have the same problem and some match the function boundary
>>>
>>> those that match don't have that first hint instrucion, like:
>>>
>>>        ffff800010321e40 <do_faccessat>:
>>>        ffff800010321e40: 1f 20 03 d5   nop
>>>        ffff800010321e44: 1f 20 03 d5   nop
>>>        ffff800010321e48: 3f 23 03 d5   hint    #25
>>>
>>> any hints about hint instructions? ;-)
>>
>> aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
>> encoding space to make software backwards compatible on older hardware
>> that doesn't support such instructions.  Is this BTI, perhaps? (The
>> function is perhaps the destination of an indirect call?)
>
> It seems like it. The issue is not reproducible when
> CONFIG_ARM64_BTI_KERNEL is not set.
>
llvm-objdump --mattr=3Dpa =E2=80=94mattr=3Dbti -d =E2=80=A6 will print new =
mnemonic for the hint space instructions.

It is intentional to put a landing pad (BTI) at the very beginning for the =
patchable functions.
       ffff80001031f430 <vfs_truncate>:
       ffff80001031f430: 5f 24 03 d5   hint    #34 // BTI C <=E2=80=94 land=
ing pad for indirect calls.
       ffff80001031f434: 1f 20 03 d5   nop   // <=E2=80=94 the to be patche=
d area.
       ffff80001031f438: 1f 20 03 d5   nop
       ffff80001031f43c: 3f 23 03 d5   hint    #25 // paciasp <=E2=80=94 pr=
otecting the link register..
The ftrace data(ffff80001031f434) seems correct because it should point to =
the =E2=80=9Cnops".

HTH

Cheers,
Daniel

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
clang-built-linux/5F054B94-6CCC-49C8-887F-D4AD73989882%40arm.com.
