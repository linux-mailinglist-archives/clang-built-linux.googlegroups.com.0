Return-Path: <clang-built-linux+bncBAABBCN25T6QKGQE3SQBJWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D47A2BFE23
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 03:23:06 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id z7sf11730727iom.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 18:23:06 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1606098185; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkaoaIv851eEa37BNg+VMXSJsh7/F/9AHUjQP3N1P0wicFeobcXpIPjjMEdxElu1kB
         svKQWEl7cfrNr0pcQSiBxZ1/JNmCrURNTNcKrLBKbauJOZdZlf+lTwpxd4tOqu1lmlWr
         pyDFDhxmPkX9BCVSMwcgOLkrZbyXIFvbzDCDPqG4Lk/PsOvR8xhoX98dKgr0lS+QK+01
         bQf8nxb5SOTXcOagNF6KVwcNET+FACvGK8bC5ZewfVfqQ4Nmb4hIr4jO1MMFe9VzfWvt
         7C70UzaKVu5pWxdzpB5Z2uIjDW5nkmVhQWr5LVTc5qmAxB4wK5re/hu3SLmTEcG3mJBh
         LxhQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=0m+YnkbrXp2vuczAa+jh3M1rQ3X/0TSOmxNfmDNYCxY=;
        b=eLcpq1JM0ak/t8b95A4z8tFOsyUWNbmo/Uk04BeuPduXrxuOEUip781rnz+OlA3HMk
         Z21CABaqH9YZ42gXqi801wE8etxMO0qCXOHbahRulHofzJsi5cH8+KSy0oqMK/rPRuZw
         ltBHHYYByZnRJxJCEPfdm/amroEYG3y87mOgV/LGIv50uTx0f5g7Aka7UaQNyWcWaB22
         3p6S1k0pEoe49+Ofg+PhcEA5040Bw80AgzMM+k5sPozooxjKBi89Yao+LMNUTHxQ2dZy
         6f2UttfYljz547vTBW2dJVGwc4Lt5MLyIHcdZVNNMEZC+rmiYiKV4BTut/2Ps+CyYW7B
         51tQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=vJfa3OD0;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of guchun.chen@amd.com designates 2a01:111:f400:7eae::623 as permitted sender) smtp.mailfrom=Guchun.Chen@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0m+YnkbrXp2vuczAa+jh3M1rQ3X/0TSOmxNfmDNYCxY=;
        b=lHdPHjwc/uu9VkhQhExcuHUpavrN545Tk0rqujZZf1USHUbtOn8HDy9eMHboxOfef1
         g2GDAdiDf4NOedhhy9yKqwieuZPyApbT9Lvmx/3iyQXDAK/KAeF3HkbjRAQLIJhkP/fN
         TqHmykKjC4qEYCqsxAd1VjmkVPgmg1bg3kfWYNnPCGXwBtxy1aIwBqYv2MNbuJff8nZ2
         8Y1ulxxnLIhvg3ZaiWV4P87hX0oCq2fBWlcN4hnwNoWUa2j5mDbs9Thp4OxK0z0jgyvN
         0A8C6ZDVoZv+Wap0py0eVJlaKvZbRi3v2pp230lW7u5ZVsldGTPhQqTUyRlTZSXPgjit
         f5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0m+YnkbrXp2vuczAa+jh3M1rQ3X/0TSOmxNfmDNYCxY=;
        b=JAwrGasYDhjkGLn4+vT02o89O2ct/cr4e/R7vlU4CJR7iVWm5h9acKDAefkbzAWBvx
         zI8Y+SNE9HU2uSBdEYefNYwALD5osN4Ztq1CmwGOkrKbDzqiIcrVZCbAeOmvUxpDou0k
         ByX1z3rccR2Z/HlBIWKtR3+NIhpmm4lS2Z/jpMAgEWyRN6pI1JbPoiEWLTXnHMIPpVxc
         y7+4tuBfhJpAleyYyYOPd70tXFjroAHEhT4MV8GxSCrpQo9X0A9Z2zm2FYWsQDNFfxsO
         y+U7NxcIeAL42ikPCZ2LRYA4yyNvs4rFuwUEtVDvJpa/97aULuzBLw43iioPJQXRMgr9
         BhRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309EcVlcOliCTdxu3j7nMQmZufpjWz/fYrasPffDS5uBx2WrGS0
	LXqY/Q7dQux14yxpWqgrrH4=
X-Google-Smtp-Source: ABdhPJxac1C5bqG9XF9avKpdk+mLs7dEF0HoPtwG/oEjmcItReaFavhQyJodp9seUJjo4Z1JLUHJgw==
X-Received: by 2002:a5e:c741:: with SMTP id g1mr23022233iop.90.1606098185203;
        Sun, 22 Nov 2020 18:23:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d586:: with SMTP id a6ls171623iln.10.gmail; Sun, 22 Nov
 2020 18:23:04 -0800 (PST)
X-Received: by 2002:a92:999c:: with SMTP id t28mr35031984ilk.236.1606098184796;
        Sun, 22 Nov 2020 18:23:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606098184; cv=pass;
        d=google.com; s=arc-20160816;
        b=blxnarW9YVk/mjRD4KJyoxzxpktKr/PGEaJmcH7090tCF/rJagnj6yZWpQaO63mjyJ
         XoQFts76RczokwuJMRUNnHBjQbbPN+9aiJ50pfLGEZw6DLEIeEialL/GpEA1/UfV28ez
         2SRRXrWdxtdZdLW2xD+eoCG2zSRVwutQ+hAO1Oa8MLEoo1hIH3ofcLJe7G1WOa+wKfGs
         sT+VMXKAPVRk6NHNBpaGwGAGFYerbl6Tn+NdhSs16YLgaeSiesD0IPNSVUUgIB4bydzl
         bT35/H+/F/63pmaEmpIPrF557/MmlB3cbC1rFFdYw+rScM0ZNX6mnPonpKnO0OgX5dBp
         iF2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=F5tVZxgxS/rgwcuRs003loEm/Jf3J5M6PXqZEl+kJHs=;
        b=Y50PsmmSesdpUri8hhcu3lKbLUVCq7t/uydFsGE9wqQA9srVEby+zsBGjzmPZlQ67F
         YN6uAFAXMn7u2dMCSRDTLQXnanNQAg6d5SFrr+yG015U2ELNr5HTvbF1RAalLB7iQ7BN
         IgqEjybnwJDbkTAkA2QR263jCoQUddnWjFm8C1T8pazlGO62JB1aTy9/jmkS9K3NNs0f
         UG0tEBdcGdipnvrflnkhGTTP+QO10E1A46JZQBZTLQQCuqxKzOQCFCynNmkBuKB+u5mx
         7LarSgtH0iYDifdBI6VzcopxuD7tmL6RwN/g11Xalf997JWS4yaWc0HAOyslf7Ao+vMx
         tu5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=vJfa3OD0;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of guchun.chen@amd.com designates 2a01:111:f400:7eae::623 as permitted sender) smtp.mailfrom=Guchun.Chen@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on20623.outbound.protection.outlook.com. [2a01:111:f400:7eae::623])
        by gmr-mx.google.com with ESMTPS id h8si544805iog.4.2020.11.22.18.23.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 18:23:04 -0800 (PST)
Received-SPF: pass (google.com: domain of guchun.chen@amd.com designates 2a01:111:f400:7eae::623 as permitted sender) client-ip=2a01:111:f400:7eae::623;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AlzsQxdBGl8GWTegj9Rr81/v2dfopTYnsbVRdawIJPok76KBneXPG2hmP3O4Cgbdv5tPcHoIpKBeNmJlRd6qL/WM7oeAug9ihnuw8ARYnHLCz4v6rT345e+D5PCPJjYiYv5EdqJQs1WkQEl3gpvxQmsIZCaT6wGn+dNk8AIPquQJHWmfv5WZfA1PDlhT7Bkl9q3BmwEl6/RyxhDry60KZ7vuf60JSHgHBWZyxPx2lyzu+2gBWYbts6R32+WFu+6zPEc0p8vjJkVGuNGgESyEcdnfx3HU/yS6luRq6LD37JDpXGfSzvTVthDjcrC+4GLDYB6kYyxft4uJGPXWHI0PPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F5tVZxgxS/rgwcuRs003loEm/Jf3J5M6PXqZEl+kJHs=;
 b=Biuraa525vOk7pYOS4Eq3vQWN7QtQy4wwYfK4mAI/dVj6ZB+e9j9fkG9MWvxAKJTvkdATTR4exwO2sl2E+Vmfh77mblyg1m25cgCay4044ZAUQTV2ufS3vyGZDwTM13rcCoJDYmdQYTQm7Qe+pmWrScK9OksmJYIedq9BdoT4gaki4CJUaLE+kb5vM8y6DWXO3ApQlAKmVj3maH4natNELVP27X18i9RIl8K/kZ38pBe34DUuFcBbQZ2JPiE1Btdh0xcVpqsI1IknPhU/LybAIrs0w5aTAKpUhEZG8llIzO6fySncJEzCq+nww5aK38l6bUWqwlAxuq0S0VgpdPG9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from CY4PR12MB1287.namprd12.prod.outlook.com (2603:10b6:903:40::8)
 by CY4PR12MB1912.namprd12.prod.outlook.com (2603:10b6:903:11c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.29; Mon, 23 Nov
 2020 02:23:00 +0000
Received: from CY4PR12MB1287.namprd12.prod.outlook.com
 ([fe80::ad96:acee:5c1c:d92c]) by CY4PR12MB1287.namprd12.prod.outlook.com
 ([fe80::ad96:acee:5c1c:d92c%4]) with mapi id 15.20.3589.030; Mon, 23 Nov 2020
 02:23:00 +0000
From: "Chen, Guchun" <Guchun.Chen@amd.com>
To: kernel test robot <lkp@intel.com>, "Deucher, Alexander"
	<Alexander.Deucher@amd.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Li,
 Dennis" <Dennis.Li@amd.com>
Subject: RE: [radeon-alex:amd-20.45 2387/2417]
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1284:2: warning: ignoring return
 value of function declared with 'warn_unused_result' attribute
Thread-Topic: [radeon-alex:amd-20.45 2387/2417]
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1284:2: warning: ignoring return
 value of function declared with 'warn_unused_result' attribute
Thread-Index: AQHWv8ySarkcVobqskGBncYjbn+o1qnU/wsQ
Date: Mon, 23 Nov 2020 02:23:00 +0000
Message-ID: <CY4PR12MB12879F5FFCC7C7D8D7D99617F1FC0@CY4PR12MB1287.namprd12.prod.outlook.com>
References: <202011211424.DlcgbXMe-lkp@intel.com>
In-Reply-To: <202011211424.DlcgbXMe-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Enabled=true;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SetDate=2020-11-23T02:22:53Z;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Method=Privileged;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Name=Public_0;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_ActionId=b273ef5d-eb37-4fd9-9969-000034c741f4;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_ContentBits=1
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled: true
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate: 2020-11-23T02:22:58Z
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method: Privileged
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name: Public_0
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid: 51c97351-08e5-4fe9-bb72-0000d6460020
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits: 0
x-originating-ip: [180.158.166.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 495be33d-e78f-4814-e684-08d88f56b303
x-ms-traffictypediagnostic: CY4PR12MB1912:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR12MB19124D6F49B8BEAEB64C83CDF1FC0@CY4PR12MB1912.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:48;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HeJBW+C/w8n3WTG/EuIdxIdX7BNiE/qKkW+OIz4z6ofUadkZxgOJhV3y3fmda+exacuI0XCnfNg7U0RYiuVBr1MNb3UeQB03T+JhcXR/AF9oFj44afpb2obla5zmMvDmvVxxcZvfl3fVT6/9d33U9h0mmb4Vax3mMniASo20lnBbCvPz6PUz65/m5VcQAJG1qUZHqqRl22rkjcxw711Yc0ehLEeGR/aVEU/pziXqddbIgiPP5URSPpGS1L04neYvyy2gFOrIMwKcxd6u6X9wDWeD57BKmX28Y4pqO6Dxgzu0oj2QHdR+oQJ+5T2UFtGxb8TJ2s1MrZV+J4qLiC+yT4Wb7SlbRovt69bfjQh5UarZi0brJdeZx1QWaKZUW3FYCm+8hoCzfd1J8TnItwgxZw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR12MB1287.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(366004)(376002)(396003)(136003)(6506007)(966005)(316002)(83380400001)(86362001)(53546011)(45080400002)(26005)(186003)(7696005)(9686003)(110136005)(54906003)(478600001)(55016002)(33656002)(76116006)(71200400001)(2906002)(5660300002)(66476007)(4326008)(66556008)(66446008)(66946007)(64756008)(52536014)(8676002)(6636002)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: nIM3ubzl1cDPrJdIIX6kGt68LhigjNm72vrjsf8nVZbs0bvEAhBR5V99q8iytbegPlL0fXihP+5+tyINSUaGGYl/GOn8CktOzMixGpxLTNhX+Soojx/uqwZ1EdVvWOiCIUOZTbu8RG1ww4wBiafXI/LHRbQAA3nA2seNJqHEC4usatZEJ3PfpFqcoeU371y/KAaYC87O85uGWo7tabtyZE9gzGkAdNItsoy0D7D+vidi/yEr34TbQ4/mg4u5bFoIM0cZNPK3nLZk4h8qM7+7Q9H0q7KL+1bDBiTHwRWMZjJS9M02Uja/n3MuRcfn9H1eRJVkKQF//WDLhRk4Sgy+zYzznKW82Fx82j6Kb6cPkPWaOUNJhHJry5wBO1CwgmxtKavYXt2LltjWngowa1E5bd9lpNfgTkN6sDXJzz78lZlO3jnxWq78KZ2hdWXCwID9+bXcjgoc4jkKRxacyiewfH4+QMAkpwGy6vUflBbnKFDHEB2XvmuQI9a77/R6DZTCXX5VT3qB1gwXZPbDl7IBX28E4x2DmmV0ahJYGKhK3nUMEkuSX3FJ5mEsmaNFawvVpNMz1LBnCbrfgst4D1OXeGdek6kYe5DbleP/RaqdFKmO2nD3lZnZ+uosvqmHK4P8m6C8vRoARsaEDneb6HTlrbQVSGDnajFq4eGvZUETbmOk3v3RgUHV4l8P/StZ6fLLKea7NtFqMwe1vcpyF69xLR3olSQxpbx4DlE560PznHgVkgjUhMn8nvAKFdgOSyjXt9133HTVQfzeZ6p0m/XrK02ICbshRGhGosUYy8h++qZyxIkkjzwvKp33BS9yjjVubNZclpNnFoTMEnOnAi2n0Gjxr4uJpkN1vFJ+ehbFgs4S+ZwJRvr8FD3nA95IL9PFjVeRylwB+FIYHf+Kep7utQ==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR12MB1287.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 495be33d-e78f-4814-e684-08d88f56b303
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2020 02:23:00.5482
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xro56NjoXGvBDfcfxIvKaJHuynNK+vQr6Wz0qYKtXo248tBtjdHFC/lnJu+pzTNLwMG9LRZBFuFnVQk/BpFZYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1912
X-Original-Sender: guchun.chen@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=vJfa3OD0;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=pass (google.com:
 domain of guchun.chen@amd.com designates 2a01:111:f400:7eae::623 as permitted
 sender) smtp.mailfrom=Guchun.Chen@amd.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=amd.com
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

[AMD Public Use]

+Alex.

We have one following patch to fix this. Please check.

a069a9eb73f8 drm/amdgpu: fix a warning in amdgpu_ras.c (v2)

Regards,
Guchun

-----Original Message-----
From: kernel test robot <lkp@intel.com>=20
Sent: Saturday, November 21, 2020 2:02 PM
To: Chen, Guchun <Guchun.Chen@amd.com>
Cc: kbuild-all@lists.01.org; clang-built-linux@googlegroups.com; dri-devel@=
lists.freedesktop.org; Li, Dennis <Dennis.Li@amd.com>
Subject: [radeon-alex:amd-20.45 2387/2417] drivers/gpu/drm/amd/amdgpu/amdgp=
u_ras.c:1284:2: warning: ignoring return value of function declared with 'w=
arn_unused_result' attribute

tree:   git://people.freedesktop.org/~agd5f/linux.git amd-20.45
head:   1807abbb3a7f17fc931a15d7fd4365ea148c6bb1
commit: cf13e50dea28cde351fa32767e36135afb30386d [2387/2417] drm/amdgpu: cl=
ean up ras sysfs creation (v2)
config: x86_64-randconfig-a011-20201120 (attached as .config)
compiler: clang version 12.0.0 (https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;data=3D04%7C0=
1%7Cguchun.chen%40amd.com%7C5d30079af0d54041642608d88de31a49%7C3dd8961fe488=
4e608e11a82d994e183d%7C0%7C0%7C637415356400664955%7CUnknown%7CTWFpbGZsb3d8e=
yJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&am=
p;sdata=3DaEjIu7Q%2FtIwvVsp%2BV28FUwW74QJCsFQ7g3Qak6%2FrazU%3D&amp;reserved=
=3D0 3ded927cf80ac519f9f9c4664fef08787f7c537d)
reproduce (this is a W=3D1 build):
        wget https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.=
cross&amp;data=3D04%7C01%7Cguchun.chen%40amd.com%7C5d30079af0d54041642608d8=
8de31a49%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637415356400664955%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C1000&amp;sdata=3DNphWy5Ztnf61zx9D%2FBrH%2FP64Yr5tecsLo2FecW=
TQNpE%3D&amp;reserved=3D0 -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add radeon-alex git://people.freedesktop.org/~agd5f/linu=
x.git
        git fetch --no-tags radeon-alex amd-20.45
        git checkout cf13e50dea28cde351fa32767e36135afb30386d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:906:5: warning: no previous prot=
otype for function 'amdgpu_ras_error_cure' [-Wmissing-prototypes]
   int amdgpu_ras_error_cure(struct amdgpu_device *adev,
       ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:906:1: note: declare 'static' if=
 the function is not intended to be used outside of this translation unit
   int amdgpu_ras_error_cure(struct amdgpu_device *adev,
   ^
   static=20
>> drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1284:2: warning: ignoring return=
 value of function declared with 'warn_unused_result' attribute [-Wunused-r=
esult]
           sysfs_create_group(&adev->dev->kobj, &group);
           ^~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~
   2 warnings generated.

vim +/warn_unused_result +1284 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c

  1249=09
  1250	/* ras fs */
  1251	static BIN_ATTR(gpu_vram_bad_pages, S_IRUGO,
  1252			amdgpu_ras_sysfs_badpages_read, NULL, 0);
  1253	static DEVICE_ATTR(features, S_IRUGO,
  1254			amdgpu_ras_sysfs_features_read, NULL);
  1255	static int amdgpu_ras_fs_init(struct amdgpu_device *adev)
  1256	{
  1257		struct amdgpu_ras *con =3D amdgpu_ras_get_context(adev);
  1258		struct attribute_group group =3D {
  1259			.name =3D RAS_FS_NAME,
  1260		};
  1261		struct attribute *attrs[] =3D {
  1262			&con->features_attr.attr,
  1263			NULL
  1264		};
  1265		struct bin_attribute *bin_attrs[] =3D {
  1266			NULL,
  1267			NULL,
  1268		};
  1269=09
  1270		/* add features entry */
  1271		con->features_attr =3D dev_attr_features;
  1272		group.attrs =3D attrs;
  1273		sysfs_attr_init(attrs[0]);
  1274=09
  1275		if (amdgpu_bad_page_threshold !=3D 0) {
  1276			/* add bad_page_features entry */
  1277			bin_attr_gpu_vram_bad_pages.private =3D NULL;
  1278			con->badpages_attr =3D bin_attr_gpu_vram_bad_pages;
  1279			bin_attrs[0] =3D &con->badpages_attr;
  1280			group.bin_attrs =3D bin_attrs;
  1281			sysfs_bin_attr_init(bin_attrs[0]);
  1282		}
  1283=09
> 1284		sysfs_create_group(&adev->dev->kobj, &group);
  1285=09
  1286		return 0;
  1287	}
  1288=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.0=
1.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=3D04%7C01%7C=
guchun.chen%40amd.com%7C5d30079af0d54041642608d88de31a49%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637415356400664955%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sd=
ata=3Dt65EPRNLSzRefqgSIvcqTFVYdVk6RuVZxAd2vcC9ybI%3D&amp;reserved=3D0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CY4PR12MB12879F5FFCC7C7D8D7D99617F1FC0%40CY4PR12MB1287.na=
mprd12.prod.outlook.com.
