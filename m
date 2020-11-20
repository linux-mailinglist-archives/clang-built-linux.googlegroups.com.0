Return-Path: <clang-built-linux+bncBAABBUXH3T6QKGQEYX7DPRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 537332BA0E4
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 04:11:15 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id cu18sf6100300qvb.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 19:11:15 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605841874; cv=pass;
        d=google.com; s=arc-20160816;
        b=TshXIV/si/uvE3E5LrZnGajgOETOXhcboqJWxU3UwkZYqHTPE1uMYznLBudFC/GfJ1
         aJUf4bEZsqe9VNz9kViLpT4uTfanzWNQ1JA5NiHpBDtQr/dh9x2o8RuIbAi6Y146yL7Q
         X3k1b6B83B+gKpKWYQoZw4v24NLqRBSWed8ABOw6VR+lCbUHP+4EcR5OLMYaDIrxG5Q9
         E50ZgIwLNIg45LqrDRePMzB7j9A10zI0bDKP90kc3OtKwjztwnF0bsYPOo8+nWh+t3aj
         hTY44v2U/itxqwtqyxAcIay7oPAUYKyIVEOSW3T7448ArB+fDLIsCa9hSnDVnww7MJYF
         GwWQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=uUPkiik9wsV4cPiHAqnhNJPF7C32ehrf2TmS/E9kfrg=;
        b=apkiHMDByAJ17j2clcrscFK0qlTCtwpagHrLjvssNDWu0Ttt8GsSnDI7I2d28glQU9
         gwxTSGWLuXrZQ7/cDLgaLIaUq8/vYenB8r460PpZ2tux71N6eTWiESk6Iisa01F32WNL
         RJnaE5511Emq3Ps0dFTvkMpovuSs+yx3X8ldL0ZXDH3lwLT+Yc25so6UAL/+AdeH6jl6
         2tAgOgzM8H3CYVAa1DnO5+YglzDLf1sIt3LModvslQ0/19Xc+2YfGSHPzFi7twCSbHyb
         L2lJrt4m0fRQ01b3p9Bbn5fIBE9Zpe+PCL1MFiBnWGQQvTp5Izb9rjVWiTnFJWSCAORD
         QQdw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=kxtz9UlS;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.243.42 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uUPkiik9wsV4cPiHAqnhNJPF7C32ehrf2TmS/E9kfrg=;
        b=V2DAUHyvcOYTErSPgoS2v/5gaHEPyERA+dM740qXgu4aIrb7mi98zsADtV8BDiO5bE
         g8+WLuCcXG4IdRUY3Aqpy+CPUsicZwpp+NkCV5EFp5aRKNAGZwfliIGxYS8pLx0hahpg
         sVRISCpNLY7l10fVuvVwj6RfWVEz7vYuR2p7KfD2JbIZ+Yk2MGZFI65JgzBoUmEgHRY2
         KGbNyqGYc826ufn2HGw2RVH+IBcV+6LTOP2zZ5/v4SuVjLfks3CAPul0APAke+S0CZ7C
         bVm2khI7opCxdvnw4E5hfsug1WWaRwh8bjGJdtGLT1gcmB7aZ/kLgWQiCqNiPgS70i99
         AtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uUPkiik9wsV4cPiHAqnhNJPF7C32ehrf2TmS/E9kfrg=;
        b=fOJoaD1x+0rkPE16wMpHfnkFBfC5XNHunuQ9PRncgQOIUV5b1zlC4+sgUQ+6OtwCfg
         lmcb/NtLqHrX0q5usUqx8/CPqXWZV79qPJRx+/Cy5ZUQMo+oLF3lxuvG4/oCKz3mTcCz
         xEPJya5ZAN8VpL7qTSok0IInJp7KKoMEc/0LWKDe8MJcBOWwLrVtOxa1aT4Lk0Pe/Soq
         MjreOmoP+nO4b3aEg6myeXumxxeFRZkw85psRYW08Vm0ybBuNktPkDZ1N7sLR6XW11uV
         pRD0lKMKCCJC+rCFR+XVzCoP8InHQK3bbDRrZmjaDqnffYONcXYzQM7rUXGm5NJNbzAQ
         5aEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pN3Go6p3cuUiJNuFngFgW7QkzHFTVSJYSDUL2UXSpHuGGufYT
	x/dMO4YIzRqEIdmxgAZ5TbQ=
X-Google-Smtp-Source: ABdhPJwf2RA2FrzlfnBelI12qc0Hoswh3DYNAO25uFGBmFqvv+vWutNE43Rn2EjVQAdzvVeLAfBc1A==
X-Received: by 2002:a0c:fbac:: with SMTP id m12mr14559790qvp.52.1605841874235;
        Thu, 19 Nov 2020 19:11:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a493:: with SMTP id n141ls2315653qke.8.gmail; Thu, 19
 Nov 2020 19:11:13 -0800 (PST)
X-Received: by 2002:a05:620a:a90:: with SMTP id v16mr14149324qkg.479.1605841873798;
        Thu, 19 Nov 2020 19:11:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605841873; cv=pass;
        d=google.com; s=arc-20160816;
        b=SPaIPheNFtcpXn2pYRJHJUsUaqHiyPdr/4yoEiokmG2ml/Qv5qG97zuvRbFBp75SAF
         eGYDcEZpzff40e1+S+V9QRROYMKI8XKyMxoDLQIwmLfHkC+5NUjRjK+5PDjSQR4kg7EF
         DuaHfSodWZKpZh6XYeWqBoL7cyGvZT/F0mDWU6sPpER9KQLot2ZSvoZKBHoN0XEANmVl
         1uH830B24lVJfFkoSTcYJHfjSRPNsp+5HF4478JFldaKHQOCrYkoRTTrTlqscK7If/Lj
         Cn6dBVQUyTRBA18LA6pU2G5JxQY+Uu15LOZb3mdoLMf4Z7K4svXIjjZaXdojPqxAovty
         Gayg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=qI87c9l7JM346FRT8pYFB/mB8eCRs2m1FWXDwPwhoYI=;
        b=0AjKBX+ZZYBedSwHjngqaSTgU/CRUjWrXtrcV0cUIUVQkcy1yls6/5YPHv8jJirs4D
         JrUDKoJFk3JJVNVmYLIbgCKwlyn6intCrfSA0xpRQyUMSXQ+opxximtbULOEcR05Ghr3
         d+OqYTShyEemY2BRWTFV1JCr35dqZ+ubckHlevm/rI9z3f15nCC9Ccjz+J42H+eIgZ5b
         goO2P0ZCUsU0Zncf32e2q167fIUh4ce6rLh/NL4xxTMnJhfSeHagEM7MWBqWF9AyoY8K
         JaLkDzuuwv0CI4rEIw4kmSopcrkeHZ4/C+D8DBCgt5CSAMfGDmCa5rLQM2n+l6ngDv2R
         1mXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=kxtz9UlS;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.243.42 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2042.outbound.protection.outlook.com. [40.107.243.42])
        by gmr-mx.google.com with ESMTPS id o11si96763qke.2.2020.11.19.19.11.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2020 19:11:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gopakumarr@vmware.com designates 40.107.243.42 as permitted sender) client-ip=40.107.243.42;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LyVxaCmO8chVbNtPWlNkMmNtV49FtsMbMQs7fmmRpXFHxkCOjxMw8tuflSpl+Isu33JRVyvXRDdeoUVx5ME8Xq5TRPSttqBRzLD/KGtIOtixfZu9fWcyDVR51d761BDiGC9yCDiRBz8Hc8yE3EAHGVl7IJzYbD+2gigTqvIn9tL0LcC2ikB1r0gmU76lOdWuf1kqVtpmW4jJwfRDdmgYA8oZU2YODxBfAfzKpUxGIC+z7iYXNYCKXZM5BW79KlifJT5ag3ZHmZlW5pa3uFQWSDkoZoL0EAp+IFUEfwEtauWKdksk7NTABp5hgG78Obyzu04oN42jacgh5+6A+hdrcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qI87c9l7JM346FRT8pYFB/mB8eCRs2m1FWXDwPwhoYI=;
 b=EsmxDceZdoyKoxtIZF8DQXIztA8Y2lxWHkyfEmdoKPm5JPxU0+RoIy3bIOQiwjvFjLKcMIBiJEeug9Mvd/ef3njbiDITQkqxDDqPbpWQcFH7G398uo9OIJtWPSeZFCNgoh/UlEHx52tRt4NDWgYPM912ihuTGIi2JdHsa86kRRDKsm0Q+y/H+gb0k8HuRexxZVwcEVWOd/qlBM0rz/siakTXcNoiN87InZ+2dvSmqsk8TwPtg8HwJiHVQ7isZh3xW5Y5UVlTcMcpORVOHLw2JKA3MxIIFKppy01+Bdqj8mY/84uU+hlMMN89YcnRHjoD1iEknSyL7wRKPy+Xf+KP5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from DM6PR05MB5292.namprd05.prod.outlook.com (2603:10b6:5:5a::30) by
 DM5PR0501MB3719.namprd05.prod.outlook.com (2603:10b6:4:77::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3589.15; Fri, 20 Nov 2020 03:11:12 +0000
Received: from DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146]) by DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146%7]) with mapi id 15.20.3589.016; Fri, 20 Nov 2020
 03:11:12 +0000
From: Rahul Gopakumar <gopakumarr@vmware.com>
To: "bhe@redhat.com" <bhe@redhat.com>
CC: "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "akpm@linux-foundation.org"
	<akpm@linux-foundation.org>, "natechancellor@gmail.com"
	<natechancellor@gmail.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "rostedt@goodmis.org"
	<rostedt@goodmis.org>, Rajender M <manir@vmware.com>, Yiu Cho Lau
	<lauyiuch@vmware.com>, Peter Jonasson <pjonasson@vmware.com>, Venkatesh
 Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Topic: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Index: AQHWnjk5ihPzOwsVE02I7/jG5KTBz6mQW+kAgAPEkzyAAWl/gIALAETTgAAhwwCAAAD7T4ACZ34AgADZzMiAEREnqIAADZOAgAFrvxuADlGAgIALzC/8
Date: Fri, 20 Nov 2020 03:11:11 +0000
Message-ID: <DM6PR05MB52920B2D4267AD7D073D3C36A4FF0@DM6PR05MB5292.namprd05.prod.outlook.com>
References: <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201102143035.GA3177@MiWiFi-R3L-srv>
 <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>,<20201112145149.GN8486@MiWiFi-R3L-srv>
In-Reply-To: <20201112145149.GN8486@MiWiFi-R3L-srv>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [103.224.32.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c97b079-e3cf-4b54-4346-08d88d01ef41
x-ms-traffictypediagnostic: DM5PR0501MB3719:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR0501MB3719BDDA16C4F5BB7E1ACAEBA4FF0@DM5PR0501MB3719.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XLDStVZ3wUHn5HwmP5YqnAzffHiFQQxiYEC25LPhD1nnsPdunfaXdzPfPDbDY6/KzuTRpAmseoxmjuSOE65Yz/IK6CufvzpKAv1t5fNEfrVD59rFSTnGT3nyi4j6MBH1iK25Ssm1IhKxPwU7CGoPWYZH62QrDz8nfBlKRNOl02L5jRYvtcEqWb19VSL1S5iajHrs9tQzKuYrQ9ok1Z2VUKAcWpZDkOhQMBzdE5nsBtTk3K3joEsFNPflSJ22ny0ILe4QUDJgvUlxQvxYNgHnydUzifE4n/oNl+ulwcH0dgrRAyNNtYA1+MyYBKX43wbYADhf9OL5lKLh9kYeqdpCtA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR05MB5292.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(39860400002)(396003)(376002)(136003)(316002)(8676002)(55016002)(26005)(186003)(66476007)(9686003)(2906002)(4326008)(71200400001)(66446008)(76116006)(86362001)(478600001)(64756008)(66556008)(107886003)(53546011)(54906003)(52536014)(8936002)(6916009)(91956017)(6506007)(66946007)(7696005)(5660300002)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: bRM8Et18YwVNMgQvEX3bNS6dOjM5mnROR69E+zZLDG9keucwmGVGLuLB8+R7ve5trKfeB2I4XnqFIDjIxNptSsTYyk+oKRbKGNTrp9iZ2GpO6uVQXvumubBgf7iXXEWL9FUnb8blSYtasDL52tBPQ9ex0upq426Tm7bIvFoif8YfsVOKU47ibXmHHCWIXUu+u0NGilE4Gm/gsNjNh5TWvQxuh95blprz+oWC2jEZBATkPqW3Tam7OJxZ6pZmZLpy04IneuIoCCO3+FCgdnDgLkZg7tMo5a943btbFHBnVjygmouYj7w6wnDB3gyf/EDD88bgmesW6fZfxnIZ0TsBriXnvup0aQd9Sr8I3SSgBGC65jiWO7WTT6rIxG012ySilkut3G8c0cVC3L7oNqekVSnVhz7NomHgosfbXOYEaWQxUps57a6QPaVpr+FkBo65HCZAYZ9Phx/TXs/HWuFjcaNU8vVjM6HkfdY1ZhEch6M7dlOszi0Gda+5qzFgmcdscnDhsv1/E6BsdgyK8FWGVLguygqPWxRQ0SnV9u3LdaY0TaQk0lTfw5W/iZaMu9fS6MQP+oNHL2xwXKpu2+SUUT19NCogvwJhzoXGdt0N2XntCzYrqRkC+wUkxz3KsY1B713f2MK8pznbHZCNOrQh1A==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR05MB5292.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c97b079-e3cf-4b54-4346-08d88d01ef41
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2020 03:11:12.0511
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2dL3vSEbpmZKiZV7CdtO3dd72ejHkwc4OZjyapq6+AJHQvtSMFDaCojAw9OnvhPT6HbweYp2d52YKPsBMTTDrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0501MB3719
X-Original-Sender: gopakumarr@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=kxtz9UlS;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 gopakumarr@vmware.com designates 40.107.243.42 as permitted sender)
 smtp.mailfrom=gopakumarr@vmware.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=vmware.com
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

Hi Baoquan,

To which commit should we apply the draft patch. We tried applying
the patch to the commit 3e4fb4346c781068610d03c12b16c0cfb0fd24a3
(the one we used for applying the previous patch) but it fails.


From: bhe@redhat.com <bhe@redhat.com>
Sent: 12 November 2020 8:21 PM
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: linux-mm@kvack.org <linux-mm@kvack.org>; linux-kernel@vger.kernel.org <=
linux-kernel@vger.kernel.org>; akpm@linux-foundation.org <akpm@linux-founda=
tion.org>; natechancellor@gmail.com <natechancellor@gmail.com>; ndesaulnier=
s@google.com <ndesaulniers@google.com>; clang-built-linux@googlegroups.com =
<clang-built-linux@googlegroups.com>; rostedt@goodmis.org <rostedt@goodmis.=
org>; Rajender M <manir@vmware.com>; Yiu Cho Lau <lauyiuch@vmware.com>; Pet=
er Jonasson <pjonasson@vmware.com>; Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kern=
el=20
=C2=A0
On 11/03/20 at 12:34pm, Rahul Gopakumar wrote:
> >> So, you mean with the draft patch applied, the initial performance
> regression goes away, just many page corruption errors with call trace
> are seen, right?
>=20
> Yes, that's right.
>=20
> >> And the performance regression is about 2sec delay in
> your system?
>=20
> The delay due to this new page corruption issue is about
> 3 secs.
>=20
> Here is the summary
>=20
> * Initial problem - 2 secs
> * Draft patch - Fixes initial problem (recovers 2 secs) but
> brings in new page corruption issue (3 secs)
>=20
> >> Could you tell how you setup vmware VM so that I can ask our QA for
> help to create a vmware VM for me to test?
>=20
> * Use vSphere ESXi 6.7 or 7.0 GA.
> * Create VM using vSphere Web Client and specify 1TB VM Memory.
> * Install RHEL 8.1, that's the guest used in this test.

Can you try the attached draft patch?

>=20
> With draft patch, you should be able to reproduce the issue.
> Let me know if you need more details.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM6PR05MB52920B2D4267AD7D073D3C36A4FF0%40DM6PR05MB5292.na=
mprd05.prod.outlook.com.
