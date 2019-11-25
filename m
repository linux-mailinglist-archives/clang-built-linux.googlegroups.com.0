Return-Path: <clang-built-linux+bncBDY4DWN3WYHRBBFT6DXAKGQEMDER4EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7CA109350
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 19:12:21 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id r5sf3212564ljj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 10:12:21 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574705541; cv=pass;
        d=google.com; s=arc-20160816;
        b=PPJynh/XqROkdkzuG3YCAB727tfn1QJ94bVvnLwTeTgW/8Y55KBn7XyjJ+ykaxBsWm
         Iql5qv2PtIVNy5JetTn2bbxuGGgU+s1x5Brxj1XTSg2TNkzAVsMwb5SE6liictYYCPN3
         KSXD2GF1ZuYBTYhHWBCQg+HXeKUXf81n8jTtsMB3ww/yi5BoMyaOahwEzQfau5yPpnB7
         O9+zJPtqKa/uRFAiGMnfimrCaGm5z0Ql9B+rEfxsCHJS+8+DBlk1AH4FJTOLEdgCKGvS
         Lk0BoF26E4oiVEO7A1LQQjHFh+OQYqueAGIJwf19fzF/OfZ/V9gk6ZcWSACKFLc/HwOC
         ZnEg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :wdcipoutbound:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:ironport-sdr:sender:dkim-signature;
        bh=e6seRjsJuaB8sCt0nsab6qsmB8ST2LuFhrVItYgfc1o=;
        b=GA2a9h8zSjbI9lxvu6I6bfdCvfL3PhR+6JH98/5cagLD/YglsENm5Ie8WAsmXU2ITF
         YHx72CRkzSRdklOsoB7w2kjzTLbIgh/iW5HhD7jRZISSyL9zU83pPiEO3K34sZe4/d/n
         swxyEHLZQmHaD3jD4i4YC8R9VQE/gd8UoLo2Xn+UHSctQqk+Q4z045SKbRvQE9wOhxzs
         iLqEQaXFhC/xum743t7zCIF1yRv5y0krMsFBixXmLAJR2UI+e1k3d3s2o4yd7rz5l97A
         G/PImsa+kE5CguPBb/AGe3sQXTxDRHyNB5w+XwtikMs9Y9SnkHvQiIeAJXUiaUdsyVQb
         sodw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=QNTMn1QJ;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=hjiJgr3O;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=225b447ab=atish.patra@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=225b447ab=Atish.Patra@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:wdcipoutbound:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e6seRjsJuaB8sCt0nsab6qsmB8ST2LuFhrVItYgfc1o=;
        b=f5X8YJvcAFhVv0iGInJNJtlygJLmQxXNuBkKLg7eIA+YECrxqtfWxmHbcmjLKUqj4S
         B8a026kEV/LHziQgTKXQnZ1wjzshcic+BEKYsovqup7xy3Q1VqUQ/H6T6NYUB4ajVV0b
         lok41qDwFWMPvKq9XAR5SvbqoaJaA/Hho6ttBd46/h/103Cc2HgQOUbJvige8qmDwvm0
         /DpbUCCyDKgDJ+qITNkDIEXeXU14CRpvQqcfekLqeAcQlUjXdy95EQIqdcxdHRYOFVao
         94z1bthC4jSSr4eQp+naBOufQ3wBUMC8rFOUYiMCV3seviQduD3UgR1PWFwJP8sVgtFH
         wRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:wdcipoutbound:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e6seRjsJuaB8sCt0nsab6qsmB8ST2LuFhrVItYgfc1o=;
        b=tujaTFyenFwlo3A3lMhkU+w42WF217OYgD7LDBN1UEjnstn08q/CukpKI1tp048dZ3
         sGumY379qPitrfPBlel8Go07OIG0rz6Wk2J7SaHl74zchYO272h80rkEYKGlLf9pr8bN
         1YAuCU0VG+jXAQ7lTrnziWpSVZ9OgBmakGAp/Z17wPXpW41vLzZVRNRS2VAekYPqOtdx
         V9h4eRuru2oPydXvUiMRiEfUv+D6M3Q3Sx2IpD3laBbaQePCleqJyB1WabAHriT/mEga
         iAasmREphCEruJUcDLuVAbydRpeFW4KonEZTNDb+0qyr7kK0gVvVaLSjAziRMLSY4Fc7
         u+GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsq6el9J0bUfJNRdzuiFHrPBZ1W+uno5zvhaxzt77nU78eU0Bq
	Z8w9mlNk6LQS11kvHnSo1SI=
X-Google-Smtp-Source: APXvYqzg7IcfvOiVWOoFYk7gsiAlCAoWUpIfEMfUnoRofUIiQQEfHe1cULM1yd/vwHHnS3glA/Cp/A==
X-Received: by 2002:a2e:9699:: with SMTP id q25mr23469897lji.251.1574705540955;
        Mon, 25 Nov 2019 10:12:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4acf:: with SMTP id m15ls1186620lfp.13.gmail; Mon, 25
 Nov 2019 10:12:20 -0800 (PST)
X-Received: by 2002:ac2:5499:: with SMTP id t25mr21429727lfk.157.1574705540205;
        Mon, 25 Nov 2019 10:12:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574705540; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZInfvmfha1UNu9UL9/85bfD8qyGYqfMgiIqjFD1hAxmtKTZmWdhXxK6gy0QAvyDTS5
         C/ra80Nf4cX7yRzQ10Re2VKgs2E4s9ya7TkwpSCFci8IS/Bd2nJiXmMi4TZiyoRuj2rr
         s3jaf8Vg6d466S5EtGbnpTZm54yVZ4P5iaLw7rIShhjVEH1BnVH6SEGf9akQUGUUCB1o
         dwkP6RRDbe81+pf+8pMgwLIPJNo3L+8cST7hutsD9VO+l4gE4LNvRm1i8Y/4zStBFL3E
         LoeKEf7/wL3LeLxgUTo4s0J1LWe0o2PmQMJb2bEJvQrQx3zDpTl1VERI/eHDIitNNXhB
         w4VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=bUBjKmW3ml3ygp97KyOmFVKzUmquPN9j/x9vZzwDV/U=;
        b=RtqcY+xHTf5AwUtz4fIMTM0O/BwcNHaQ6flBgyGmr/H4tVxDkXZmC9NLINVdpwf3AF
         ylXHZKTqtgtr/Mtwh+fb6uqkSZtO65zQOi05+uC8XAB0M3ARqNHRlsupMkZi8o2UNZz7
         Oyguis4dAtrdgwMOjhNOyFPw/uQhIzjjkv+RXiVrYefQN2yPeV1jkQpFpz5d9GLkH+tD
         GzzqLB723r1oFNL6WLZF9owRLCUITzxHh56/dwtJUgdu6N+eCM+XwbFsvP41SLCRMmVS
         KrFmr9EkiNYHaAAtFufO+/3Bh241dECaN0icuG0NkmSt2zYBAIUaljOPuag/oPwipVvH
         WNow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=QNTMn1QJ;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=hjiJgr3O;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=225b447ab=atish.patra@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=225b447ab=Atish.Patra@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by gmr-mx.google.com with ESMTPS id f1si415609ljg.2.2019.11.25.10.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Nov 2019 10:12:18 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=225b447ab=atish.patra@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
IronPort-SDR: yzWU9JVZJ5HJV/t4Fv6sLLV9I8vincrJtYeJX2ucXVkgvQzzaxlWdQ7krLk79T5nQ8cMlONjT2
 j4MYRnTxy4BV4/PFRnKFi3nItK2KsW+gzO98MVVmyH2W3q+oC83lmkJd1UqCSzTUZuUUUBrz0v
 lAUjDR5dtSmciaRsBTtyUAUqAa4764uej5VJir0Rq0pjX9X1FqpK7f/jGBADY+u8RlpgPd4V5/
 /F0u4PaWJJshNS5P6L40aL2CxMD7Tn8PQpMdvzZdmCRkSgR1FuOkg2x1CndQMOP17bicfUjtBW
 fWU=
X-IronPort-AV: E=Sophos;i="5.69,242,1571673600"; 
   d="scan'208";a="225355390"
Received: from mail-co1nam05lp2059.outbound.protection.outlook.com (HELO NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.59])
  by ob1.hgst.iphmx.com with ESMTP; 26 Nov 2019 02:12:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnWRZMh3i/Jn2JuTBxu8YNtjzJCGgq1ZHycjsMx7mI6x5HmjI3WnzPuzXSFXBJSGP9qZdH4Bm2kPvqjD5XWJ3i/iJSRBCaRUtx/JkXBkFXMO+rGSvW8UMm6NZBN5rbqf8xsJLuBCrqH7lLrfuVFaQqr8wXDTCtDaoof1BiLsVRwMqflXAcQTfUbTBmwH2gyMK4SBCHlAOROFeTLxlkaVLypnHYz2wqE4o6B/GThM/o9NC2npb58fMZDYDATYnaNoU83N6n1pS4ke67G5GnYnMDuc0DhdMD0Y5dKcu3WiDbzELaDpZaL4BFnJxo6qK9Yt8KX3aglD29y4dTlTxdeFeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bUBjKmW3ml3ygp97KyOmFVKzUmquPN9j/x9vZzwDV/U=;
 b=OeFEbZ/r8KpX/H0a/Ld4CFaThI62xMLhZzK0xJ0fSx62l5YDaeMZDGu/9Xn5d03LuMZsWM5d3lEuGW+ck02he89j7tOyZHJsWDAZN2H2s3chQ0HTCHEcfk9bceOxmT0kVTJChyAlwdi/3Y1IOiiVhiLcm+E1v+mheHsR2ELKAaGTP39SEEgxShdHzYeuj2wAU3VwvFXsDtG4clJcCIwckAL0kdhEafhbzwYoiwii75MpHOeEVYEnHAhe0MZl1uV8G7TXjMM5tYPRkt4KzZeJelQ6sBkhzfa09erxeglDGwZzx47oBWKyOwyWT/rmhREPePAcykhKdthBNl6cn8TDSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5383.namprd04.prod.outlook.com (20.178.50.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.21; Mon, 25 Nov 2019 18:12:14 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 18:12:14 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "rong.a.chen@intel.com" <rong.a.chen@intel.com>, "philip.li@intel.com"
	<philip.li@intel.com>, "ndesaulniers@google.com" <ndesaulniers@google.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"kbuild@lists.01.org" <kbuild@lists.01.org>, "lkp@intel.com" <lkp@intel.com>
Subject: Re: [atishp04:efi_stub 1/1]
 drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable
 'secure_boot' is uninitialized when used here
Thread-Topic: [atishp04:efi_stub 1/1]
 drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable
 'secure_boot' is uninitialized when used here
Thread-Index: AQHVnqQlGtYIvl6adEKJRMlC8/LPYaeUq0iAgAFWMwCABZD6gIAAp/uA
Date: Mon, 25 Nov 2019 18:12:14 +0000
Message-ID: <bbd453fccb644c6822ea09a325f86942c4d32d94.camel@wdc.com>
References: <201911191421.oOPAr13c%lkp@intel.com>
	 <CAKwvOd=2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj+AYQ@mail.gmail.com>
	 <dfbc952f478c57bcc2b8ec41ef0542119785444b.camel@wdc.com>
	 <CAKwvOdkntuMELqccE2UT9p0878OWnGLDWfqaxeB7wHSJNRXETw@mail.gmail.com>
	 <07bd7e95-c28e-6890-96e6-1a1c3b97dbcd@intel.com>
In-Reply-To: <07bd7e95-c28e-6890-96e6-1a1c3b97dbcd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b989667e-2092-4783-ddfb-08d771d2ff99
x-ms-traffictypediagnostic: BYAPR04MB5383:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <BYAPR04MB53831A10CA2AD1DE4E07CCB8FA4A0@BYAPR04MB5383.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(189003)(199004)(51914003)(110136005)(76176011)(2501003)(99286004)(66946007)(64756008)(66556008)(66476007)(86362001)(66446008)(4001150100001)(229853002)(30864003)(4326008)(2201001)(5024004)(14444005)(256004)(76116006)(5660300002)(71190400001)(71200400001)(102836004)(6306002)(6246003)(6506007)(66066001)(6486002)(6512007)(53546011)(2616005)(186003)(478600001)(14454004)(36756003)(316002)(25786009)(7736002)(966005)(305945005)(118296001)(6116002)(2906002)(81156014)(8676002)(81166006)(3846002)(8936002)(54906003)(6436002)(11346002)(446003)(26005)(569006);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB5383;H:BYAPR04MB3990.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cAziPNxv9NYd7wkFlQaBDmtaAqOWIAQjLy07gBELdAjpjKV+cUORjNVqB6FQEknIK+4vd7xghZT3Gr3lAKwy83NweUKSolteLXQ4DL/t56Id6uBmn6tQSopcYBCMQvDTI7RnP0L4V8K/Q8vBVNy+Jj0BpowzIIQrgN3+QsLXq9AskDBz+ByEOQv9RoBPHaCsig+VKFUTN0Y24LZdgNLnOrR4mYnMammjv8bPQ3fkZpht2f8IyQI8g5p8TeWLinrW0EgWrR2hwhMu4xiDeXNnFUdkEYRKhxbQoAc/03MuE1DebdgvAO/TbrhCXPy8tMRJB/M/UP/OVMc+A4eR+A7z8ZLIT1k7iYrbLQaabKXiFDI9ivYADgi2ssab23PoECLfHqsQ1jPse0pGEfvD5eNhtzeUihhLHYhmCW/MhqNs3+c0kHx2ba5VlIJw2sML8J130cyKbHaMRjRKSv6zeXhUZwonXrEsUYXrS0NvzlcyrY8=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <E5362F2F2D097F44B245DB4B099745DB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b989667e-2092-4783-ddfb-08d771d2ff99
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 18:12:14.0369
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DNYy15BhC9jNmritLXWEsrpGogtYv61L2D1Uz30zb80ZTZuvGTXFWsvc2HyviKKe9HIzB8LSlX5dxCwzZE5I3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5383
X-Original-Sender: atish.patra@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=QNTMn1QJ;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=hjiJgr3O;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=225b447ab=atish.patra@wdc.com designates 68.232.143.124 as
 permitted sender) smtp.mailfrom="prvs=225b447ab=Atish.Patra@wdc.com";
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

On Mon, 2019-11-25 at 16:10 +0800, Rong Chen wrote:
> Hi Nick,
> 
> On 11/22/19 3:10 AM, Nick Desaulniers wrote:
> > On Wed, Nov 20, 2019 at 2:46 PM Atish Patra <Atish.Patra@wdc.com>
> > wrote:
> > > On Mon, 2019-11-18 at 22:39 -0800, Nick Desaulniers wrote:
> > > > Atish, below is a report from 0day bot from a build with Clang.
> > > > The
> > > > warning looks legit, can you please take a look?
> > > > 
> > > Hi Nick,
> > > Thanks for the email. This is a work in progress branch. Is there
> > > way
> > > not to trigger kbuild tests on this branch ?
> > That's a common question that Rong or Philip can answer (I forgot
> > what
> > the answer has been in the past).  Rong/Philip, it may be good to
> > have
> > a URL/link that I can point people to in the future, since it's a
> > FAQ.
> 
> We have blacklisted "efi_stub" and "wip_.*" branches for Atish. In 
> general, branches named as ".*experimental.*" or ".*dont-build"
> won't be tested by default. and we have a doc to introduce basic 
> configurations: https://github.com/intel/lkp-tests/wiki/Repo-Spec
> 

Thanks!! I will follow the repo-spec for future branches.

> Best Regards,
> Rong Chen
> 
> > > --
> > > Regards,
> > > Atish
> > > 
> > > 
> > > > On Mon, Nov 18, 2019 at 10:17 PM kbuild test robot <
> > > > lkp@intel.com>
> > > > wrote:
> > > > > CC: kbuild-all@lists.01.org
> > > > > TO: Atish Patra <atish.patra@wdc.com>
> > > > > 
> > > > > tree:   https://github.com/atishp04/linux efi_stub
> > > > > head:   7dbf2060ab3115d2edcfba8f0f677a321a1611f1
> > > > > commit: 7dbf2060ab3115d2edcfba8f0f677a321a1611f1 [1/1] Add
> > > > > efi stub
> > > > > config: arm64-defconfig (attached as .config)
> > > > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> > > > > 0213adde218530bc31e5c4e50b49704c6bb2f2e9)
> > > > > reproduce:
> > > > >          wget
> > > > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > > > > -O ~/bin/make.cross
> > > > >          chmod +x ~/bin/make.cross
> > > > >          git checkout
> > > > > 7dbf2060ab3115d2edcfba8f0f677a321a1611f1
> > > > >          # save the attached .config to linux build tree
> > > > >          make.cross ARCH=arm64
> > > > > 
> > > > > If you fix the issue, kindly add following tag
> > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > > 
> > > > > All warnings (new ones prefixed by >>):
> > > > > 
> > > > >     drivers/firmware/efi/libstub/arm-stub.c:132:22: warning:
> > > > > unused
> > > > > variable 'si' [-Wunused-variable]
> > > > >             struct screen_info *si;
> > > > >                                 ^
> > > > > > > drivers/firmware/efi/libstub/arm-stub.c:203:7: warning:
> > > > > > > variable 'secure_boot' is uninitialized when used here [-
> > > > > > > Wuninitialized]
> > > > >                  secure_boot != efi_secureboot_mode_disabled)
> > > > > {
> > > > >                  ^~~~~~~~~~~
> > > > >     drivers/firmware/efi/libstub/arm-stub.c:131:2: note:
> > > > > variable
> > > > > 'secure_boot' is declared here
> > > > >             enum efi_secureboot_mode secure_boot;
> > > > >             ^
> > > > >     2 warnings generated.
> > > > > 
> > > > > vim +/secure_boot +203 drivers/firmware/efi/libstub/arm-
> > > > > stub.c
> > > > > 
> > > > > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2018-09-21   92
> > > > > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2018-09-21   93
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15   94  /*
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15   95   * This function handles the
> > > > > architcture specific differences between arm and
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15   96   * arm64 regarding where the
> > > > > kernel
> > > > > image must be loaded and any memory that
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15   97   * must be reserved. On failure
> > > > > it is
> > > > > required to free all
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15   98   * all allocations it has made.
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15   99   */
> > > > > bd669475d14e32 drivers/firmware/efi/arm-stub.c         Ard
> > > > > Biesheuvel  2014-07-02  100  efi_status_t
> > > > > handle_kernel_image(efi_system_table_t *sys_table,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  101                                   unsigned long
> > > > > *image_addr,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  102                                   unsigned long
> > > > > *image_size,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  103                                   unsigned long
> > > > > *reserve_addr,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  104                                   unsigned long
> > > > > *reserve_size,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  105                                   unsigned long
> > > > > dram_base,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  106                                   efi_loaded_image_t
> > > > > *image);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  107  /*
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  108   * EFI entry point for the
> > > > > arm/arm64
> > > > > EFI stubs.  This is the entrypoint
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  109   * that is described in the
> > > > > PE/COFF
> > > > > header.  Most of the code is the same
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  110   * for both archictectures, with
> > > > > the
> > > > > arch-specific code provided in the
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  111   * handle_kernel_image()
> > > > > function.
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  112   */
> > > > > ddeeefe2dfbe1f drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2015-01-12  113  unsigned long efi_entry(void
> > > > > *handle,
> > > > > efi_system_table_t *sys_table,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  114                                 unsigned
> > > > > long *image_addr)
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  115  {
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  116          efi_loaded_image_t
> > > > > *image;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  117          efi_status_t status;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  118          unsigned long image_size
> > > > > = 0;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  119          unsigned long dram_base;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  120          /* addr/point and size
> > > > > pairs
> > > > > for memory management*/
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  121          unsigned long
> > > > > initrd_addr;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  122          u64 initrd_size = 0;
> > > > > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > > > > Biesheuvel  2014-04-03  123          unsigned long fdt_addr =
> > > > > 0;  /* Original DTB */
> > > > > a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2015-03-04  124          unsigned long fdt_size =
> > > > > 0;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  125          char *cmdline_ptr = NULL;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  126          int cmdline_size = 0;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  127          unsigned long
> > > > > new_fdt_addr;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  128          efi_guid_t
> > > > > loaded_image_proto =
> > > > > LOADED_IMAGE_PROTOCOL_GUID;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  129          unsigned long
> > > > > reserve_addr = 0;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  130          unsigned long
> > > > > reserve_size = 0;
> > > > > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > > > > Howells   2017-02-06  131          enum efi_secureboot_mode
> > > > > secure_boot;
> > > > > f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-04-25 @132          struct screen_info *si;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  133
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  134          /* Check if we were
> > > > > booted by
> > > > > the EFI firmware */
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  135          if (sys_table-
> > > > > >hdr.signature !=
> > > > > EFI_SYSTEM_TABLE_SIGNATURE)
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  136                  goto fail;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  137
> > > > > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-02-17  138          status =
> > > > > check_platform_features(sys_table);
> > > > > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-02-17  139          if (status !=
> > > > > EFI_SUCCESS)
> > > > > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-02-17  140                  goto fail;
> > > > > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-02-17  141
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  142          /*
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  143           * Get a handle to the
> > > > > loaded
> > > > > image protocol.  This is used to get
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  144           * information about the
> > > > > running image, such as size and the command
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  145           * line.
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  146           */
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  147          status = sys_table-
> > > > > >boottime-
> > > > > > handle_protocol(handle,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  148                                          &loaded_imag
> > > > > e_prot
> > > > > o, (void *)&image);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  149          if (status !=
> > > > > EFI_SUCCESS) {
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  150                  pr_efi_err(sys_table,
> > > > > "Failed to get loaded image protocol\n");
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  151                  goto fail;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  152          }
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  153
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  154          dram_base =
> > > > > get_dram_base(sys_table);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  155          if (dram_base ==
> > > > > EFI_ERROR) {
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  156                  pr_efi_err(sys_table,
> > > > > "Failed to find DRAM base\n");
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  157                  goto fail;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  158          }
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  159
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  160          /*
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  161           * Get the command line
> > > > > from
> > > > > EFI, using the LOADED_IMAGE
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  162           * protocol. We are going
> > > > > to
> > > > > copy the command line into the
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  163           * device tree, so this
> > > > > can be
> > > > > allocated anywhere.
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  164           */
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  165          cmdline_ptr =
> > > > > efi_convert_cmdline(sys_table, image, &cmdline_size);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  166          if (!cmdline_ptr) {
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  167                  pr_efi_err(sys_table,
> > > > > "getting command line via LOADED_IMAGE_PROTOCOL\n");
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  168                  goto fail;
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  169          }
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  170
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  171          if
> > > > > (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  172              IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  173              cmdline_size == 0)
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  174                  efi_parse_options(CONFIG_CMDLINE);
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  175
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  176          if
> > > > > (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  177                  efi_parse_options(cmdline_ptr);
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  178
> > > > > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  179          pr_efi(sys_table,
> > > > > "Booting
> > > > > Linux Kernel...\n");
> > > > > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > > > > Patra     2019-11-18  180  #if 0
> > > > > f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-04-25  181          si =
> > > > > setup_graphics(sys_table);
> > > > > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > > > > Patra     2019-11-18  182  #endif
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  183          status =
> > > > > handle_kernel_image(sys_table, image_addr, &image_size,
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-
> > > > > 26  184                                       &reserve_addr,
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-
> > > > > 26  185                                       &reserve_size,
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-
> > > > > 26  186                                       dram_base,
> > > > > image);
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  187          if (status !=
> > > > > EFI_SUCCESS) {
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-
> > > > > 26  188                  pr_efi_err(sys_table,
> > > > > "Failed to relocate kernel\n");
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  189                  goto
> > > > > fail_free_cmdline;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  190          }
> > > > > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > > > > Patra     2019-11-18  191  #if 0
> > > > > ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c
> > > > > Matthew
> > > > > Garrett 2017-08-25  192          /* Ask the firmware to clear
> > > > > memory on unclean shutdown */
> > > > > ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c
> > > > > Matthew
> > > > > Garrett 2017-08-
> > > > > 25  193          efi_enable_reset_attack_mitigation(sys_table
> > > > > );
> > > > > ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c
> > > > > Matthew
> > > > > Garrett 2017-08-25  194
> > > > > 73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn
> > > > > Crosetto   2016-04-25  195          secure_boot =
> > > > > efi_get_secureboot(sys_table);
> > > > > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > > > > Patra     2019-11-18  196  #endif
> > > > > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > > > > Biesheuvel  2014-04-03  197          /*
> > > > > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > > > > Howells   2017-02-06  198           * Unauthenticated device
> > > > > tree
> > > > > data is a security hazard, so ignore
> > > > > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > > > > Howells   2017-02-06  199           * 'dtb=' unless UEFI
> > > > > Secure
> > > > > Boot is disabled.  We assume that secure
> > > > > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > > > > Howells   2017-02-06  200           * boot is enabled if we
> > > > > can't
> > > > > determine its state.
> > > > > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > > > > Biesheuvel  2014-04-03  201           */
> > > > > 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2018-07-11  202          if
> > > > > (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
> > > > > 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2018-07-11 @203               secure_boot !=
> > > > > efi_secureboot_mode_disabled) {
> > > > > 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2018-07-11  204                  if
> > > > > (strstr(cmdline_ptr, "dtb="))
> > > > > 73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn
> > > > > Crosetto   2016-04-
> > > > > 25  205                          pr_efi(sys_table, "Ignoring
> > > > > DTB
> > > > > from command line.\n");
> > > > > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > > > > Biesheuvel  2014-04-03  206          } else {
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  207                  status =
> > > > > handle_cmdline_files(sys_table, image, cmdline_ptr,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  208                                                "dtb="
> > > > > ,
> > > > > a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2015-03-
> > > > > 04  209                                                ~0UL,
> > > > > &fdt_addr, &fdt_size);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  210
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  211                  if (status !=
> > > > > EFI_SUCCESS) {
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  212                          pr_efi_err(sys_table,
> > > > > "Failed to
> > > > > load device tree!\n");
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  213                          goto
> > > > > fail_free_image;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  214                  }
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  215          }
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  216
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  217          if (fdt_addr) {
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  218                  pr_efi(sys_table,
> > > > > "Using DTB from command line\n");
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  219          } else {
> > > > > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > > > > Biesheuvel  2014-04-03  220                  /* Look for a
> > > > > device
> > > > > tree configuration table entry. */
> > > > > a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2015-03-04  221                  fdt_addr =
> > > > > (uintptr_t)get_fdt(sys_table, &fdt_size);
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  222                  if (fdt_addr)
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-
> > > > > 23  223                          pr_efi(sys_table, "Using DTB
> > > > > from
> > > > > configuration table\n");
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  224          }
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  225
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  226          if (!fdt_addr)
> > > > > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > > > > Rutland    2014-10-23  227                  pr_efi(sys_table,
> > > > > "Generating empty DTB\n");
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  228
> > > > > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  229          status =
> > > > > handle_cmdline_files(sys_table, image, cmdline_ptr,
> > > > > "initrd=",
> > > > > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  230                                        efi_get_max_in
> > > > > itrd_a
> > > > > ddr(dram_base,
> > > > > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  231
> > > > >      *image_addr),
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  232                                        (unsigned long
> > > > > *)&initrd_addr,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  233                                        (unsigned long
> > > > > *)&initrd_size);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  234          if (status !=
> > > > > EFI_SUCCESS)
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  235                  pr_efi_err(sys_table,
> > > > > "Failed initrd from command line!\n");
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  236
> > > > > 568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-11-
> > > > > 12  237          efi_random_get_seed(sys_table);
> > > > > 568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-11-12  238
> > > > > 38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-10-25  239          /* hibernation expects
> > > > > the
> > > > > runtime regions to stay in the same place */
> > > > > 38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-10-25  240          if
> > > > > (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr()) {
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  241                  /*
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  242                   * Randomize the
> > > > > base
> > > > > of the UEFI runtime services region.
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  243                   * Preserve the
> > > > > 2 MB
> > > > > alignment of the region by taking a
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  244                   * shift of 21
> > > > > bit
> > > > > positions into account when scaling
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  245                   * the headroom
> > > > > value
> > > > > using a 32-bit random value.
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  246                   */
> > > > > 197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-17  247                  static const u64
> > > > > headroom = EFI_RT_VIRTUAL_LIMIT -
> > > > > 197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 17  248                                              EFI_RT_V
> > > > > IRTUAL
> > > > > _BASE -
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  249                                              EFI_RT_V
> > > > > IRTUAL
> > > > > _SIZE;
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  250                  u32 rnd;
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  251
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  252                  status =
> > > > > efi_get_random_bytes(sys_table, sizeof(rnd),
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  253                                                (u8
> > > > > *)&rnd);
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  254                  if (status ==
> > > > > EFI_SUCCESS) {
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  255                          virtmap_base =
> > > > > EFI_RT_VIRTUAL_BASE +
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  256                                         (((headroom
> > > > > >> 21)
> > > > > * rnd) >> (32 - 21));
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  257                  }
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  258          }
> > > > > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-04  259
> > > > > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2018-09-
> > > > > 21  260          install_memreserve_table(sys_table);
> > > > > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2018-09-21  261
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  262          new_fdt_addr = fdt_addr;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  263          status =
> > > > > allocate_new_fdt_and_exit_boot(sys_table, handle,
> > > > > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2017-04-
> > > > > 04  264                                  &new_fdt_addr,
> > > > > efi_get_max_fdt_addr(dram_base),
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  265                                  initrd_addr,
> > > > > initrd_size,
> > > > > cmdline_ptr,
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-
> > > > > 15  266                                  fdt_addr, fdt_size);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  267
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  268          /*
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  269           * If all went well, we
> > > > > need to
> > > > > return the FDT address to the
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  270           * calling function so it
> > > > > can
> > > > > be passed to kernel as part of
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  271           * the kernel boot
> > > > > protocol.
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  272           */
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  273          if (status ==
> > > > > EFI_SUCCESS)
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  274                  return
> > > > > new_fdt_addr;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  275
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  276          pr_efi_err(sys_table,
> > > > > "Failed
> > > > > to update FDT and exit boot services\n");
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  277
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  278          efi_free(sys_table,
> > > > > initrd_size, initrd_addr);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  279          efi_free(sys_table,
> > > > > fdt_size,
> > > > > fdt_addr);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  280
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  281  fail_free_image:
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  282          efi_free(sys_table,
> > > > > image_size,
> > > > > *image_addr);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  283          efi_free(sys_table,
> > > > > reserve_size, reserve_addr);
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  284  fail_free_cmdline:
> > > > > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > > > > Patra     2019-11-
> > > > > 18  285          //free_screen_info(sys_table,
> > > > > si);
> > > > > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2016-01-26  286          efi_free(sys_table,
> > > > > cmdline_size, (unsigned long)cmdline_ptr);
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  287  fail:
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  288          return EFI_ERROR;
> > > > > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > > > > Salter     2014-04-15  289  }
> > > > > f3cdfd239da56a drivers/firmware/efi/libstub/arm-stub.c Ard
> > > > > Biesheuvel  2014-10-20  290
> > > > > 
> > > > > :::::: The code at line 203 was first introduced by commit
> > > > > :::::: 3d7ee348aa4127a7893c11261da9b76371a970e6
> > > > > efi/libstub/arm:
> > > > > Add opt-in Kconfig option for the DTB loader
> > > > > 
> > > > > :::::: TO: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > > > :::::: CC: Ingo Molnar <mingo@kernel.org>
> > > > > 
> > > > > ---
> > > > > 0-DAY kernel test infrastructure                 Open Source
> > > > > Technology Center
> > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > > > Intel
> > > > > Corporation

-- 
Regards,
Atish

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bbd453fccb644c6822ea09a325f86942c4d32d94.camel%40wdc.com.
