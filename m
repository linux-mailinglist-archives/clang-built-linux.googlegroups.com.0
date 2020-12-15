Return-Path: <clang-built-linux+bncBC4YFF7K5EEBBRE44T7AKGQE4E24NAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2BC2DB474
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 20:28:06 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id a1sf4061629ios.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 11:28:06 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1608060485; cv=pass;
        d=google.com; s=arc-20160816;
        b=v2jThX0Z8cMoybwuog6ce213KpHZF1WvSXDgq5Wwcnve3SQDmT20AwGDvwBsp20fIV
         FtYS+Epc1gnJxDZBTJzIosP/1KEdPW2Ql6oIhNbvkHS8YsGYtror7vCYta6S1LbDB3Tt
         ux1GDARVwdb548QA1tmKOJYGyj9d96ctre1aSwlQA2Ax8Gbh/i9rcjCB8CAO376Ltxau
         /pK2K5oBgzrAW5/yFl+8oXO4qKWRHT1l7DQq3vIimUgEP/PQW2JNz/PcR3pRLfzlYTxi
         VDrLz92yBari5bdUhh8GyIUzHs4Xw5RDntMzecBjpI/UzMwItv6TcuYz+hV86T6GYNKS
         Er5g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=lehCM2G4NojeeOzVweSN2x2sZ8/vxw5WhH5b9rAkeD8=;
        b=Hl9FMTZU1ozxBrrhuoGUjGxHOAnWINrS3Li6JD+S7odjQ1DQ48OR7nZwu5dpxf2+xu
         Yxy1wsHa9GXxw8O/dz0e7PgGuAkLDTSUghdRDvNLR/rRyCAt8nzCWj/vefD1fp0rLl2V
         h7dD8PyGWCj3bN+JEVdZpmbnDbO3r6LwFW3qnlciv3ylV3NcgyqwbkM7oVyqSLtVMXEl
         +MEXTXEbfzk/mlchHB4xsBmzKgHcjuxHdYwOVowQjsM6hlrN5Ev9tMqr/dWqHZUajVRc
         KKlbNWKbHhQBXyeClE38Gjr3RKA9sTW9gOhQfuQ7bUTpnAJ6Jshi7bUI9yNrtLHQQLQX
         rCFw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="Y4/4DIdy";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of alexander.deucher@amd.com designates 40.107.243.70 as permitted sender) smtp.mailfrom=Alexander.Deucher@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lehCM2G4NojeeOzVweSN2x2sZ8/vxw5WhH5b9rAkeD8=;
        b=ADSC/BiEYzo1KV+GJCCWBu3kDzshplYKcBTJDJePa8acaNcQohNlHuZaz3Dznt+d8U
         TXWM364NhG/yi2f7l23I288LCaI07mDj7Qz3ZuRMrJDB9Lya9qWbzdm1OiZGayjDuX5v
         0Jz9fiyys+5gx62/fXFk3PPpL0TbNis0Y8e2jW8fIW3DQM12ZrVMfllqzH0/JLfgYSET
         diZh6PUaZswBxl/HoVOxx5y4We4pJV3xg4UfUKWJ97G1JC4xoCet6nmNVHecbK+F18JT
         NnziruhCmA/wETC88IoCNL8r6CzdLCu1lKes+z1l8W7//X09KfdTRwqQpsBe9bRLM0aG
         08Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lehCM2G4NojeeOzVweSN2x2sZ8/vxw5WhH5b9rAkeD8=;
        b=Ic8ovuBjNWAkH9yYXZJK/bxD0fyuOlV80NkKzGaUq1QhIE97lB5sQtgSLl4Wbi0qRe
         4JtbZXN3KTW/CmvuQOYUZdb9G2Ck4Q8Jwu80uz7yhZ8BRw8NFQNwZ53HuqYeAVYlweW1
         bsY1Wpct4Y4vA+kXC1pWlSAf4Clce5WP9sMszsmIdIJGWULLnVW88VTwA+BUwezlfzD6
         MhApHk5AXuElJVvdpobHCcNO8kzvlyuheG4SLY6sDWBRoNJLOzhziV2dBICpfHrHfO//
         fA4rJkVU73erGn3bl7AVvJTukDVEBpAuH0HFRGWGgeSSy4hssSNCWL5DmRnIltdsLasa
         TBSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332hnGFx6V+GcINGFYUBbzvJm5Y11f/L6VbFyJnO48fId1/z9J3
	6d8reVZw6fY4ABxN4+Vj+5Y=
X-Google-Smtp-Source: ABdhPJzGMIF3+JMgIKLWQeUVbl/+GyiJuF/um4P7ZmTo09IUs1mrXrmJwLrUnkSrxG8ikyakF63kZg==
X-Received: by 2002:a05:6602:5d9:: with SMTP id w25mr39816053iox.206.1608060484905;
        Tue, 15 Dec 2020 11:28:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls5485535ili.3.gmail; Tue, 15 Dec
 2020 11:28:04 -0800 (PST)
X-Received: by 2002:a92:d844:: with SMTP id h4mr44220475ilq.88.1608060484431;
        Tue, 15 Dec 2020 11:28:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608060484; cv=pass;
        d=google.com; s=arc-20160816;
        b=de0H7U+lFG4Zf4OUoudLPDKRxP4/YCZnFAnnRu1NLzRsmQrlFmTeNc8FCd2LcBMz1r
         DW7V36dk6foQe/+YXRcoQcdVneEgiFBUw9JKKnPd1Gny9eSiYEUnpiwAFE4Uh1eLhUje
         h0iZrEjpniuTNCct3ZGsj85/8EBbi9eb13gEztWbEZPa21QNBt2kIH7+PXDooOIV/3Cs
         kxXI106wcaKkcLqrdNX8ZKng2s3pFX2AHxN3D6Z5QHp+XxEsiit6VGf0DykFg+Jp6QIy
         QlnQ53vCKWQ74R9hi9JiovEBekyJP9CjpfO0H0XjdiIHhRs8vhHMCpT4uqBlaHR23KgS
         3D5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:msip_labels:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=02kY2zuQlZBhN6IaAcpdUR7P+1lKsltJU0JtidnY9NA=;
        b=QZhADTzTwOgkN17kF8vBghNScQZtt951lP8cx/sJJuCzP6dNd4c3f+24T5KNddapsv
         klIAd+RnR/g0eZzkKZkUJfvvdtQC3CqZrcNo2pCoVS9iDx8vGEkEpJ8B2O4fnPD6Ge58
         ekt04YfupaAr5XM5nh/7YYdakdU0zPXXuynW9f7ac71UT4vSaToNdEC6KkyzjIXQm49q
         P+x9lvVxWsUZqHCyUIDJLWzKbkMgn18Z4eFzyBDPLfTirCb5otuRKZVKBK9FkiIe0th4
         PadTRVyZI/vH0Xwxk/0klhqYtQELioyHZPHlx1mJiHTPGif3onmCNlEhpRa6wJ0zvATK
         ccRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="Y4/4DIdy";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of alexander.deucher@amd.com designates 40.107.243.70 as permitted sender) smtp.mailfrom=Alexander.Deucher@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2070.outbound.protection.outlook.com. [40.107.243.70])
        by gmr-mx.google.com with ESMTPS id r17si330759ilg.4.2020.12.15.11.28.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 11:28:04 -0800 (PST)
Received-SPF: pass (google.com: domain of alexander.deucher@amd.com designates 40.107.243.70 as permitted sender) client-ip=40.107.243.70;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mt8QMNwA4PVXrVQzURCJdYf4OEO85yKDSS5xLXkaagyQhfgqalL0AkljYssrGu+t2vI7Ds+2MUZAwaF3Diw3DcNrYJlE2xGKZRhd0EV6s1lmnLqLcZ09HA84aEgNq0gB1BxjwIZn8MdR1yp1t9XF3oO3Misyqlf3qRd4MBbO/ZkoxSLCiOJiLD8r/01z8wfpnyWunma50AgCIM2IOudqycrVI3paFMBVruIdb8Ed0xeS5pHOoo6DeXRQDsDqM2Ye+lb9DZFBqknFA+QPc14m0ijSnOd9YWA3+lBMwQ7CxeU2EGNCkkfa3WH1UiedlbpAjOiFlN3pAqudWGd8L3QZWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=02kY2zuQlZBhN6IaAcpdUR7P+1lKsltJU0JtidnY9NA=;
 b=LxuSnku9jbL9Ywb7bojlMzhFZK+wr4U516QQ5C+vU7haoKCZXQc04hMJfDz3Ed3XY99qAm5Y7gLddLoaBa5r4g5QH66vP69SDfgXAQgu8ZH7cS75OXPoNwT63i4J4wx+Eg37uyFzW93C4TAkKyIaC6xfu+dtduQuamkhWvdU2HEq5LlSvxMcss8WfgnUPHFdYxUtlypP/sfKPSaHmTkrFnHpOKTXcaMew0N7haMQG4fNM3l/saO/nMiic7YHO0PnPjOasiPhuUdEb4nCZPCOwa+XXNvgzgrjNN/pdD6Dp7WYC+zNEoz6lr8lNaTVFd5bKwHJHXIEj6ncqHdCr2s5Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB4488.namprd12.prod.outlook.com (2603:10b6:208:24e::19)
 by BL0PR12MB4721.namprd12.prod.outlook.com (2603:10b6:208:8e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Tue, 15 Dec
 2020 19:28:01 +0000
Received: from MN2PR12MB4488.namprd12.prod.outlook.com
 ([fe80::fca3:155c:bf43:94af]) by MN2PR12MB4488.namprd12.prod.outlook.com
 ([fe80::fca3:155c:bf43:94af%4]) with mapi id 15.20.3654.024; Tue, 15 Dec 2020
 19:28:01 +0000
From: "Deucher, Alexander" <Alexander.Deucher@amd.com>
To: Mauro Rossi <issor.oruam@gmail.com>, kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, ML
 dri-devel <dri-devel@lists.freedesktop.org>, "Xiong, Yang (Felix)"
	<Yang.Xiong@amd.com>
Subject: Re: [radeon-alex:amd-20.45 1953/2427]
 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:83:5:
 warning: no previous prototype for function 'dce60_get_dp_ref_freq_khz'
Thread-Topic: [radeon-alex:amd-20.45 1953/2427]
 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:83:5:
 warning: no previous prototype for function 'dce60_get_dp_ref_freq_khz'
Thread-Index: AQHW0s0PPgo1VMrkJUyq7uy9BWSaWan4hz6AgAADhgQ=
Date: Tue, 15 Dec 2020 19:28:01 +0000
Message-ID: <MN2PR12MB4488C8EC6F4ADD998754F504F7C60@MN2PR12MB4488.namprd12.prod.outlook.com>
References: <202012151818.lGhtGzd3-lkp@intel.com>,<CAEQFVGYAZLJd3b=P3j28s7gmzbXuPX4uGtLR2du5e95-N05yLA@mail.gmail.com>
In-Reply-To: <CAEQFVGYAZLJd3b=P3j28s7gmzbXuPX4uGtLR2du5e95-N05yLA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Enabled=True;MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SetDate=2020-12-15T19:28:00.457Z;MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Name=AMD
 Public;MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_ContentBits=0;MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Method=Privileged;
x-originating-ip: [192.161.78.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1fe7edb8-19cf-432f-1fae-08d8a12f8947
x-ms-traffictypediagnostic: BL0PR12MB4721:
x-ld-processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR12MB4721DC08BE84AB51E2D5307DF7C60@BL0PR12MB4721.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:27;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LQk7j9kMT9yUjG4an+kDQoUq2OXkUVhXJJ8qDLo7KD9/UfkFm+2TeNO6otMuJn9VxdVHZod2JUjbWom2gekHn/g4Z+mWH/gfWlSu5evOs+TudA3EkRvlahLN7vRIuUIjKo47LfCw0sO5czPakLoZPFeblMuE8YCCThoJuJ5cTEeJQwKASVNTM1AWsfwdaoktdZoebV41HyvNNq+uLvr/EB0M1EsPvIqx+ldbot1f8h13TZGHp2kn8u/bpq4e/toXBR/GnSQhN5ISdmno5FmRPTof2l+0pkaTAWwEbjYcJ1ZVh7B3EAyg8LLZPvb0n6TKHuNUdNx/DHJMt0ZDARC44KEgRpmL6I99s4SCJVqm2v8oPxeK78rocdCz6VSVacgFxlf3HOLcM1bNYk3dFIdRMA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4488.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(366004)(136003)(4326008)(5660300002)(66946007)(52536014)(55016002)(7696005)(26005)(64756008)(110136005)(66556008)(53546011)(966005)(54906003)(9686003)(66476007)(19627405001)(166002)(8936002)(71200400001)(6506007)(33656002)(186003)(508600001)(86362001)(83380400001)(2906002)(8676002)(66446008)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?mGcxhcoPwhk8sSGUefKWGv5GRA37l2ahuOQZFJP5bhMP+wVUYuW58Go2Va6T?=
 =?us-ascii?Q?Hx8T5VL5w1FqKpja9wTRmw9RCyghvpL0gJjSb0/Tms7grzXQSyTDg6B4Xges?=
 =?us-ascii?Q?cJ1nV7EeePmIUiedBz66Z0rHVAkCkiqf+PfQdicpLkiTRdzjEDcsLB865NR6?=
 =?us-ascii?Q?GZt+t+01noqI2kEum1v7c4X2VRn5GsuSIqgpmBumUYV7DndbS37+XdwQIMy7?=
 =?us-ascii?Q?ZHNaj0iSJQUPx0x1a52bOmpdhWkHFIIqH9Pp74SgbAmo2uehDbOgOmCE5T5D?=
 =?us-ascii?Q?EIaPecwQVLb90fy5B5yv4GUibgm4jbxMRnpPRlcYpsHEqY8WyUADxkydYNQm?=
 =?us-ascii?Q?Q8038OA69kGP81WEooYZA5w6aQRkyLDx/wMpg6PMmSseV2Xxb2q3YggEypNi?=
 =?us-ascii?Q?MsLgxFpcNHGyceW9O7GS3cTkldYRgZ9P71E41EBUl5si8wqz1Uw2d/0VmRYC?=
 =?us-ascii?Q?2aioaha/R7TrCpXjyOwxw4uI4mmVbLgxOaw/x8Y/OAoNqzyqNGvHiC3D4EQT?=
 =?us-ascii?Q?VdzvcYNaVaFVhHKCtqwWkPkfAwoDo7V8Nyq7ectMMCKZghTflCdHc5Q4r//3?=
 =?us-ascii?Q?AtlemgxYIg0bam14d3zSArgvtenPEOiYzY9w+7lGOM6AJq6rjfHJu2YSg3bq?=
 =?us-ascii?Q?Gjsotr2rh/BVs9N3FCJbyxXX0CjE033Cy0UrgNbB9kxxmv8TpWpnmao8ew+P?=
 =?us-ascii?Q?2BzuXrE6Ipm5ua6/OMEyIweXcxHo4uMzt4yV8/q2dJLcq60TzA3g8c0qlocZ?=
 =?us-ascii?Q?sFThNxljIqJliRoKQ/sxplOzvZpJQv6noMSMviPXM0IvLZZmJhS4gkj6JmLz?=
 =?us-ascii?Q?kz8U3SFvSXC3QyNyLE76KI1LhmgDQ6wNfQtdFKuTGtL80LFPU23zMePeJHAt?=
 =?us-ascii?Q?hrDLqGuPmeF3zpuJEBop4nDpLi1WCIZJnoOx5amU8aP6MszldQagsoQC8mkg?=
 =?us-ascii?Q?dMub68jY8Hjrs01UQleI0OCUd4aIqQLOqPrklMrJ1OE=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB4488C8EC6F4ADD998754F504F7C60MN2PR12MB4488namp_"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4488.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fe7edb8-19cf-432f-1fae-08d8a12f8947
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2020 19:28:01.0942
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ygJS6O59Yh6M1UQGmTG2YFk4+BvUdBlUfH+jiqc6cp7IcooFSE+FbJVgNjPCCr4W6oeTD3N4Fb+qanglisVjBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4721
X-Original-Sender: alexander.deucher@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b="Y4/4DIdy";       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=pass (google.com:
 domain of alexander.deucher@amd.com designates 40.107.243.70 as permitted
 sender) smtp.mailfrom=Alexander.Deucher@amd.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=amd.com
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

--_000_MN2PR12MB4488C8EC6F4ADD998754F504F7C60MN2PR12MB4488namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[AMD Public Use]

this branch should be ignored by test robots.  It's just a public mirror of=
 our packaged driver source code.  It contains kernel compatibility and dkm=
s support which is not going upstream.

Alex

________________________________
From: Mauro Rossi <issor.oruam@gmail.com>
Sent: Tuesday, December 15, 2020 2:13 PM
To: kernel test robot <lkp@intel.com>; Deucher, Alexander <Alexander.Deuche=
r@amd.com>
Cc: kbuild-all@lists.01.org <kbuild-all@lists.01.org>; clang-built-linux@go=
oglegroups.com <clang-built-linux@googlegroups.com>; ML dri-devel <dri-deve=
l@lists.freedesktop.org>; Xiong, Yang (Felix) <Yang.Xiong@amd.com>
Subject: Re: [radeon-alex:amd-20.45 1953/2427] drivers/gpu/drm/amd/amdgpu/.=
./display/dc/clk_mgr/dce60/dce60_clk_mgr.c:83:5: warning: no previous proto=
type for function 'dce60_get_dp_ref_freq_khz'

Hello,
the mentioned branch requires the following commit, but it is already appli=
ed in 5.10 released kernel,
so I really do not know what next step here.

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=
=3D8c4e4fd607b17973e54a7e9cc4c275b12ab7308e<https://nam11.safelinks.protect=
ion.outlook.com/?url=3Dhttps%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fk=
ernel%2Fgit%2Fstable%2Flinux.git%2Fcommit%2F%3Fid%3D8c4e4fd607b17973e54a7e9=
cc4c275b12ab7308e&data=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80b2=
194b87979e08d8a12d78e3%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6374365=
63973465049%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3D4s%2Br5bporx1FuRLkI%2FJbJug4qPqK=
aIxwu6DJCaCG01U%3D&reserved=3D0>

Mauro

On Tue, Dec 15, 2020 at 11:24 AM kernel test robot <lkp@intel.com<mailto:lk=
p@intel.com>> wrote:
tree:   git://people.freedesktop.org/~agd5f/linux.git<https://nam11.safelin=
ks.protection.outlook.com/?url=3Dhttp:%2F%2Fpeople.freedesktop.org%2F~agd5f=
%2Flinux.git&data=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80b2194b8=
7979e08d8a12d78e3%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637436563973=
475007%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6=
Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DAwRdBRY9CLM5kV4FvQeKFMR1t8R6uEU%2BOvV=
LkhqQmwQ%3D&reserved=3D0> amd-20.45
head:   a3950d94b046fb206e58fd3ec717f071c0203ba3
commit: e809646e73921328d66a2fbfddf067b9cdb30998 [1953/2427] drm/amd/displa=
y: enable SI support in the Kconfig (v2)
config: x86_64-randconfig-a001-20201214 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project<https:=
//nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2F=
llvm%2Fllvm-project&data=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80=
b2194b87979e08d8a12d78e3%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63743=
6563973475007%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DpR0HOEIksASstlWPFMR8Eq9e6v%2BT=
PBQ8lhfPVy%2Bu1iI%3D&reserved=3D0> a29ecca7819a6ed4250d3689b12b1f664bb790d7=
)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.cr=
oss&data=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80b2194b87979e08d8=
a12d78e3%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637436563973484960%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C1000&sdata=3DJ9LnzLuz5PGRhi4YFVdiTNq8sQUJ3igy%2FtJWq3BrsSE%=
3D&reserved=3D0> -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add radeon-alex git://people.freedesktop.org/~agd5f/linu=
x.git<https://nam11.safelinks.protection.outlook.com/?url=3Dhttp:%2F%2Fpeop=
le.freedesktop.org%2F~agd5f%2Flinux.git&data=3D04%7C01%7Calexander.deucher%=
40amd.com%7C2ccddb80b2194b87979e08d8a12d78e3%7C3dd8961fe4884e608e11a82d994e=
183d%7C0%7C0%7C637436563973484960%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM=
DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3Da%2FwjGAji=
R1C5wpjwPtmt%2BLkwVcix2gwFzsBvYB8PmDs%3D&reserved=3D0>
        git fetch --no-tags radeon-alex amd-20.45
        git checkout e809646e73921328d66a2fbfddf067b9cdb30998
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com<mailto:lkp@intel.com>>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:8=
3:5: warning: no previous prototype for function 'dce60_get_dp_ref_freq_khz=
' [-Wmissing-prototypes]
   int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)
       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:8=
3:1: note: declare 'static' if the function is not intended to be used outs=
ide of this translation unit
   int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)
   ^
   static
   1 warning generated.

vim +/dce60_get_dp_ref_freq_khz +83 drivers/gpu/drm/amd/amdgpu/../display/d=
c/clk_mgr/dce60/dce60_clk_mgr.c

2428ad5c6ece1a6 Mauro Rossi 2020-07-11   82
2428ad5c6ece1a6 Mauro Rossi 2020-07-11  @83  int dce60_get_dp_ref_freq_khz(=
struct clk_mgr *clk_mgr_base)
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   84  {
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   85     struct clk_mgr_internal *cl=
k_mgr =3D TO_CLK_MGR_INTERNAL(clk_mgr_base);
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   86     int dprefclk_wdivider;
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   87     int dp_ref_clk_khz;
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   88     int target_div;
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   89
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   90     /* DCE6 has no DPREFCLK_CNT=
L to read DP Reference Clock source */
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   91
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   92     /* Read the mmDENTIST_DISPC=
LK_CNTL to get the currently
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   93      * programmed DID DENTIST_D=
PREFCLK_WDIVIDER*/
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   94     REG_GET(DENTIST_DISPCLK_CNT=
L, DENTIST_DPREFCLK_WDIVIDER, &dprefclk_wdivider);
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   95
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   96     /* Convert DENTIST_DPREFCLK=
_WDIVIDERto actual divider*/
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   97     target_div =3D dentist_get_=
divider_from_did(dprefclk_wdivider);
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   98
2428ad5c6ece1a6 Mauro Rossi 2020-07-11   99     /* Calculate the current DF=
S clock, in kHz.*/
2428ad5c6ece1a6 Mauro Rossi 2020-07-11  100     dp_ref_clk_khz =3D (DENTIST=
_DIVIDER_RANGE_SCALE_FACTOR
2428ad5c6ece1a6 Mauro Rossi 2020-07-11  101             * clk_mgr->base.den=
tist_vco_freq_khz) / target_div;
2428ad5c6ece1a6 Mauro Rossi 2020-07-11  102
2428ad5c6ece1a6 Mauro Rossi 2020-07-11  103     return dce_adjust_dp_ref_fr=
eq_for_ss(clk_mgr, dp_ref_clk_khz);
2428ad5c6ece1a6 Mauro Rossi 2020-07-11  104  }
2428ad5c6ece1a6 Mauro Rossi 2020-07-11  105

:::::: The code at line 83 was first introduced by commit
:::::: 2428ad5c6ece1a6861278c01c5e71c8ea258f3d9 drm/amd/display: dc/clk_mgr=
: add support for SI parts (v2)

:::::: TO: Mauro Rossi <issor.oruam@gmail.com<mailto:issor.oruam@gmail.com>=
>
:::::: CC: Yang Xiong <Yang.Xiong@amd.com<mailto:Yang.Xiong@amd.com>>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org<https://nam11.=
safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.01.org%2Fhyperk=
itty%2Flist%2Fkbuild-all%40lists.01.org&data=3D04%7C01%7Calexander.deucher%=
40amd.com%7C2ccddb80b2194b87979e08d8a12d78e3%7C3dd8961fe4884e608e11a82d994e=
183d%7C0%7C0%7C637436563973494918%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM=
DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DByv0OS%2F6=
hHj3RDlt5qF7YxWIiNLvD91r%2Bd1APoUzDkE%3D&reserved=3D0>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/MN2PR12MB4488C8EC6F4ADD998754F504F7C60%40MN2PR12MB4488.na=
mprd12.prod.outlook.com.

--_000_MN2PR12MB4488C8EC6F4ADD998754F504F7C60MN2PR12MB4488namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<p style=3D"font-family:Arial;font-size:10pt;color:#317100;margin:15pt;" al=
ign=3D"Left">
[AMD Public Use]<br>
</p>
<br>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
this branch should be ignored by test robots.&nbsp; It's just a public mirr=
or of our packaged driver source code.&nbsp; It contains kernel compatibili=
ty and dkms support which is not going upstream.&nbsp;
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Alex</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mauro Rossi &lt;issor=
.oruam@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, December 15, 2020 2:13 PM<br>
<b>To:</b> kernel test robot &lt;lkp@intel.com&gt;; Deucher, Alexander &lt;=
Alexander.Deucher@amd.com&gt;<br>
<b>Cc:</b> kbuild-all@lists.01.org &lt;kbuild-all@lists.01.org&gt;; clang-b=
uilt-linux@googlegroups.com &lt;clang-built-linux@googlegroups.com&gt;; ML =
dri-devel &lt;dri-devel@lists.freedesktop.org&gt;; Xiong, Yang (Felix) &lt;=
Yang.Xiong@amd.com&gt;<br>
<b>Subject:</b> Re: [radeon-alex:amd-20.45 1953/2427] drivers/gpu/drm/amd/a=
mdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:83:5: warning: no previou=
s prototype for function 'dce60_get_dp_ref_freq_khz'</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hello,
<div>the mentioned branch requires the following commit, but it is already =
applied in 5.10 released kernel,</div>
<div>so I really do not know what next step here.</div>
<div><br>
</div>
<div><a href=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dhttps=
%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fstable%2Flinux=
.git%2Fcommit%2F%3Fid%3D8c4e4fd607b17973e54a7e9cc4c275b12ab7308e&amp;data=
=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80b2194b87979e08d8a12d78e3=
%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637436563973465049%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C1000&amp;sdata=3D4s%2Br5bporx1FuRLkI%2FJbJug4qPqKaIxwu6DJCaCG01U%3D=
&amp;reserved=3D0" originalsrc=3D"https://git.kernel.org/pub/scm/linux/kern=
el/git/stable/linux.git/commit/?id=3D8c4e4fd607b17973e54a7e9cc4c275b12ab730=
8e" shash=3D"b7/FCDnvPh/sOaJ4yyzqer0lptzPT/0bSQJSzA6OQEaScrfifui/N3l2keMi2N=
E0kdDbzUNmH3H6mkLOafjDFvYfi4OFTeo65F4Cf1u50uXxxWJjsxeahu7RCE1cv76u8OSBh8gDV=
AJIo+iguAEpblJCwKXmWZgjtABmTpCM2Fc=3D">https://git.kernel.org/pub/scm/linux=
/kernel/git/stable/linux.git/commit/?id=3D8c4e4fd607b17973e54a7e9cc4c275b12=
ab7308e</a><br>
</div>
<div><br>
</div>
<div>Mauro</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Dec 15, 2020 at 11:24 AM ke=
rnel test robot &lt;<a href=3D"mailto:lkp@intel.com">lkp@intel.com</a>&gt; =
wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
tree:&nbsp; &nbsp;git://<a href=3D"https://nam11.safelinks.protection.outlo=
ok.com/?url=3Dhttp:%2F%2Fpeople.freedesktop.org%2F~agd5f%2Flinux.git&amp;da=
ta=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80b2194b87979e08d8a12d78=
e3%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637436563973475007%7CUnknow=
n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI=
6Mn0%3D%7C1000&amp;sdata=3DAwRdBRY9CLM5kV4FvQeKFMR1t8R6uEU%2BOvVLkhqQmwQ%3D=
&amp;reserved=3D0" originalsrc=3D"http://people.freedesktop.org/~agd5f/linu=
x.git" shash=3D"Ok3cQXelRh3q4vwuE3hiLkzN7ZJy+UfBjEjpH6f0muuax+mFVlzm6lgugp5=
5w5dbnxeV4vMD3KMrzNtC2C7acabk6pKvczhmzAmaXwnrVhBEtnjF5BByRMFE5DUyDpE0caXSNd=
HroCgybGr1scwGlkmLnYhW7g2lvx4LinceTaY=3D" rel=3D"noreferrer" target=3D"_bla=
nk">people.freedesktop.org/~agd5f/linux.git</a>
 amd-20.45<br>
head:&nbsp; &nbsp;a3950d94b046fb206e58fd3ec717f071c0203ba3<br>
commit: e809646e73921328d66a2fbfddf067b9cdb30998 [1953/2427] drm/amd/displa=
y: enable SI support in the Kconfig (v2)<br>
config: x86_64-randconfig-a001-20201214 (attached as .config)<br>
compiler: clang version 12.0.0 (<a href=3D"https://nam11.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;da=
ta=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80b2194b87979e08d8a12d78=
e3%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637436563973475007%7CUnknow=
n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI=
6Mn0%3D%7C1000&amp;sdata=3DpR0HOEIksASstlWPFMR8Eq9e6v%2BTPBQ8lhfPVy%2Bu1iI%=
3D&amp;reserved=3D0" originalsrc=3D"https://github.com/llvm/llvm-project" s=
hash=3D"q87WDUGyKIyHfFb7mQZBUUsEtaNFDYfdKXUKwBhr0Bikn2PLhUP4xRgXrffe97v0ymt=
PXmn742FfEsmqi44lf4ovfPLk+TWw8dEq6qxD72qgemTNbW3t1fblehK4gb0qJJdwaG0+mWqi3w=
4JqYEYDncECo13i8C//IMNtdL/280=3D" rel=3D"noreferrer" target=3D"_blank">http=
s://github.com/llvm/llvm-project</a>
 a29ecca7819a6ed4250d3689b12b1f664bb790d7)<br>
reproduce (this is a W=3D1 build):<br>
&nbsp; &nbsp; &nbsp; &nbsp; wget <a href=3D"https://nam11.safelinks.protect=
ion.outlook.com/?url=3Dhttps%3A%2F%2Fraw.githubusercontent.com%2Fintel%2Flk=
p-tests%2Fmaster%2Fsbin%2Fmake.cross&amp;data=3D04%7C01%7Calexander.deucher=
%40amd.com%7C2ccddb80b2194b87979e08d8a12d78e3%7C3dd8961fe4884e608e11a82d994=
e183d%7C0%7C0%7C637436563973484960%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAw=
MDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DJ9Lnz=
Luz5PGRhi4YFVdiTNq8sQUJ3igy%2FtJWq3BrsSE%3D&amp;reserved=3D0" originalsrc=
=3D"https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cros=
s" shash=3D"jKxt3pWn74qNQEWsnVRP+QAfp4J+CeoNw5EovvDSZMzsQgYe1kFicBzvCzEbXyu=
0c8VpbCETjFEBPPAKZzhh22twvHRkyzPGVZXVX4TW0hfxJQZuIpWbIZPdC2diUr7KZv8wKl0rpa=
A8YEGsVepa1geQPmzWZkOs05a8aPvID8g=3D" rel=3D"noreferrer" target=3D"_blank">
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross</a=
> -O ~/bin/make.cross<br>
&nbsp; &nbsp; &nbsp; &nbsp; chmod +x ~/bin/make.cross<br>
&nbsp; &nbsp; &nbsp; &nbsp; # install x86_64 cross compiling tool for clang=
 build<br>
&nbsp; &nbsp; &nbsp; &nbsp; # apt-get install binutils-x86-64-linux-gnu<br>
&nbsp; &nbsp; &nbsp; &nbsp; git remote add radeon-alex git://<a href=3D"htt=
ps://nam11.safelinks.protection.outlook.com/?url=3Dhttp:%2F%2Fpeople.freede=
sktop.org%2F~agd5f%2Flinux.git&amp;data=3D04%7C01%7Calexander.deucher%40amd=
.com%7C2ccddb80b2194b87979e08d8a12d78e3%7C3dd8961fe4884e608e11a82d994e183d%=
7C0%7C0%7C637436563973484960%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLC=
JQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3Da%2FwjGAjiR=
1C5wpjwPtmt%2BLkwVcix2gwFzsBvYB8PmDs%3D&amp;reserved=3D0" originalsrc=3D"ht=
tp://people.freedesktop.org/~agd5f/linux.git" shash=3D"QxjKXUg0YY3Ixeo0cLyP=
gpwJ4UQumBmZOfS61jZRhFjVrShp2CxhhIjyPTKDrlKPm1ccwaP2a7JiiKisjI/wSPillPB5uki=
uT5yvCyJOY+DHOwaKgGq61jwRonZcr0/QUpfziqkMg8WSFHh4RWAoz2cFSq/9g9FxoU1/yJjhZp=
A=3D" rel=3D"noreferrer" target=3D"_blank">people.freedesktop.org/~agd5f/li=
nux.git</a><br>
&nbsp; &nbsp; &nbsp; &nbsp; git fetch --no-tags radeon-alex amd-20.45<br>
&nbsp; &nbsp; &nbsp; &nbsp; git checkout e809646e73921328d66a2fbfddf067b9cd=
b30998<br>
&nbsp; &nbsp; &nbsp; &nbsp; # save the attached .config to linux build tree=
<br>
&nbsp; &nbsp; &nbsp; &nbsp; COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dc=
lang make.cross ARCH=3Dx86_64 <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kernel test robot &lt;<a href=3D"mailto:lkp@intel.com" target=
=3D"_blank">lkp@intel.com</a>&gt;<br>
<br>
All warnings (new ones prefixed by &gt;&gt;):<br>
<br>
&gt;&gt; drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_m=
gr.c:83:5: warning: no previous prototype for function 'dce60_get_dp_ref_fr=
eq_khz' [-Wmissing-prototypes]<br>
&nbsp; &nbsp;int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)<br=
>
&nbsp; &nbsp; &nbsp; &nbsp;^<br>
&nbsp; &nbsp;drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_c=
lk_mgr.c:83:1: note: declare 'static' if the function is not intended to be=
 used outside of this translation unit<br>
&nbsp; &nbsp;int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)<br=
>
&nbsp; &nbsp;^<br>
&nbsp; &nbsp;static <br>
&nbsp; &nbsp;1 warning generated.<br>
<br>
vim +/dce60_get_dp_ref_freq_khz +83 drivers/gpu/drm/amd/amdgpu/../display/d=
c/clk_mgr/dce60/dce60_clk_mgr.c<br>
<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;82&nbsp; <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; @83&nbsp; int dce60_get_dp_ref=
_freq_khz(struct clk_mgr *clk_mgr_base)<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;84&nbsp; {<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;85&nbsp; &nbsp; &nbsp;st=
ruct clk_mgr_internal *clk_mgr =3D TO_CLK_MGR_INTERNAL(clk_mgr_base);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;86&nbsp; &nbsp; &nbsp;in=
t dprefclk_wdivider;<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;87&nbsp; &nbsp; &nbsp;in=
t dp_ref_clk_khz;<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;88&nbsp; &nbsp; &nbsp;in=
t target_div;<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;89&nbsp; <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;90&nbsp; &nbsp; &nbsp;/*=
 DCE6 has no DPREFCLK_CNTL to read DP Reference Clock source */<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;91&nbsp; <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;92&nbsp; &nbsp; &nbsp;/*=
 Read the mmDENTIST_DISPCLK_CNTL to get the currently<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;93&nbsp; &nbsp; &nbsp; *=
 programmed DID DENTIST_DPREFCLK_WDIVIDER*/<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;94&nbsp; &nbsp; &nbsp;RE=
G_GET(DENTIST_DISPCLK_CNTL, DENTIST_DPREFCLK_WDIVIDER, &amp;dprefclk_wdivid=
er);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;95&nbsp; <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;96&nbsp; &nbsp; &nbsp;/*=
 Convert DENTIST_DPREFCLK_WDIVIDERto actual divider*/<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;97&nbsp; &nbsp; &nbsp;ta=
rget_div =3D dentist_get_divider_from_did(dprefclk_wdivider);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;98&nbsp; <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; &nbsp;99&nbsp; &nbsp; &nbsp;/*=
 Calculate the current DFS clock, in kHz.*/<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; 100&nbsp; &nbsp; &nbsp;dp_ref_=
clk_khz =3D (DENTIST_DIVIDER_RANGE_SCALE_FACTOR<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; 101&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;* clk_mgr-&gt;base.dentist_vco_freq_khz) / target_div;=
<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; 102&nbsp; <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; 103&nbsp; &nbsp; &nbsp;return =
dce_adjust_dp_ref_freq_for_ss(clk_mgr, dp_ref_clk_khz);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; 104&nbsp; }<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11&nbsp; 105&nbsp; <br>
<br>
:::::: The code at line 83 was first introduced by commit<br>
:::::: 2428ad5c6ece1a6861278c01c5e71c8ea258f3d9 drm/amd/display: dc/clk_mgr=
: add support for SI parts (v2)<br>
<br>
:::::: TO: Mauro Rossi &lt;<a href=3D"mailto:issor.oruam@gmail.com" target=
=3D"_blank">issor.oruam@gmail.com</a>&gt;<br>
:::::: CC: Yang Xiong &lt;<a href=3D"mailto:Yang.Xiong@amd.com" target=3D"_=
blank">Yang.Xiong@amd.com</a>&gt;<br>
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=
=3D04%7C01%7Calexander.deucher%40amd.com%7C2ccddb80b2194b87979e08d8a12d78e3=
%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637436563973494918%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C1000&amp;sdata=3DByv0OS%2F6hHj3RDlt5qF7YxWIiNLvD91r%2Bd1APoUzDkE%3D=
&amp;reserved=3D0" originalsrc=3D"https://lists.01.org/hyperkitty/list/kbui=
ld-all@lists.01.org" shash=3D"U6EERVlu+0ZsZgZRkVXxwK0B3EpnyG6q2f+/1dBXj7SUn=
6nOVsGIgVVXej50Xmy7YvPRvBNa+RKWKYhBzCsli9TZ1UnuWVzMxinyEEFxh1NwRv+zQAfmrl7k=
PE2NX/MWxkTKOuYyv4+eFhHz4n3Vtp7UUUjl1qAMBX7di9w4+ek=3D" rel=3D"noreferrer" =
target=3D"_blank">https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.=
org</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/MN2PR12MB4488C8EC6F4ADD998754F504F7C60%40MN2PR=
12MB4488.namprd12.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/MN2PR12MB4488C8EC6F4ADD=
998754F504F7C60%40MN2PR12MB4488.namprd12.prod.outlook.com</a>.<br />

--_000_MN2PR12MB4488C8EC6F4ADD998754F504F7C60MN2PR12MB4488namp_--
