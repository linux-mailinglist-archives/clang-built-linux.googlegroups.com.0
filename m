Return-Path: <clang-built-linux+bncBDZ4XJHKWMERB6GLVD5QKGQEVJMISDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BBE2746A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 18:27:37 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id r3sf8884372ooq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 09:27:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1600792056; cv=pass;
        d=google.com; s=arc-20160816;
        b=KxQEuNg7dhoAiGvFBwVL4cakmaTml6AaDU4QKSJmJNzRyS14+LuSx/Py3FzmfGqh+J
         /g8ipGphR4iQ+Ky40C6qnspuElIMt7PBqpqw9ghEQXa87aCB5T5VJb6q4hLLxxpXPMCa
         /izP6pC72s8xb4d7W9kzmvcWtKOx4ztIeDGA337gS0Wden3V0UCMkl8y+5kUtKQdB5zy
         LU/4ki5+v0MJPSx3PzINR7g7lgxwA1Tq22ClM0+UMGOTn1sa7dz4bZH3Qr0kXpySZWzN
         qet7KOz93rI6x1UFwPrF55cGN492dpA2YmISY8FVlN2zx0pKieEVIkl8rapfze0UkFMk
         NRTg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=4bD7gqjGS7GjgJHTMpsmhpREFjJ+T1danQLm7yrXqbk=;
        b=C667xXWzI6lTyXf4eRmA142qhOhPlf3cP0XUtDLwYKXr2W0SCu1fMMeHzr9HMK5okj
         lmojHwORKm5kOsNe2TpuMM7qjxUypvb7qxvUDHr8wuK1zppNceFsaExu2GOuFdJIHg0p
         JLYsbqep4YMpP+nsX4tvWkTxgUPIZg4JGtNS+lj4I8iEa6N6/UANHMOgugijj+AoEcCy
         5T1v73MeX/tr573LIwcKt+ikE9+LpMrrvjI1TdxhCBrTWZNOK6+SN1rE6MEkGHyvlsFN
         NHAc9/fBTRdZopt62obvnrTju9GWFai4HAlUb/FU1pwjBtP3rHdzjKQd9vdM2oK81fHR
         AIRw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=BHr9MMhF;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of ian.bearman@microsoft.com designates 40.107.69.124 as permitted sender) smtp.mailfrom=Ian.Bearman@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4bD7gqjGS7GjgJHTMpsmhpREFjJ+T1danQLm7yrXqbk=;
        b=W8B8OZhN0a/z4ODBqeTjGGCJrPW0efdwmJXurmyyytUpqFuKgFlsZI4J+2hhwYO5Dg
         QYXyWhlq5VsjzJaqiFBimsi05V9v549rV+r/adx6lGyocp/SNZqk8Et/HJyKKeGMb/wm
         MYbYDSSI+pg3uDFFuUZGQlagrHHqih55+sTrDUr93ie+g8LAoAsXsnu6o5HacCCWEbkE
         8QxytSfVODUl7z6twQ6+77rpnuZPB49KYUSZqXQo/xOJoJhAuUS+2x8OP4nvdelQA2DQ
         csr2ch25t7TD+nAQETq/Q9D46/1sQI5VOZ5Ea5YLE8nO1hXINeHlCRYqJt0P5AKdDzP3
         uKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4bD7gqjGS7GjgJHTMpsmhpREFjJ+T1danQLm7yrXqbk=;
        b=fOsMZq/+4wxuqOw7YGbxlO92Uak8iCI/Lo07mYrwy0Tf/YiloSBzKNHAzFkuRQGlAw
         rFBZvPXlX73TWUoL0a3drgYh3/ekMR9kAAh1QzI+aeuEP1kPouYChM3P+392ecXpiGmd
         qmUN2eEUuooFJskRf7KCVTOrEG5Umi1gSTxWQG0vjNob2S19LusV46ljtMsQfm+GBmnD
         VKmx+bLywJAhtjL0ruWB7bvLUhLQF4HZHJQHI+JlW3o5KbvHX1yWLWXDCivi8PKmEC0K
         zeVcgx5PHS/8wChn+Pmi2jfEOmJjHgUR75T3BxFg9lTKEcIfwWb52CEds+6oRQWzFAx9
         DSlg==
X-Gm-Message-State: AOAM530yFsJQ2leC6aoWa/cWZOhkVxEV5LokP+fyCuBnvN8fngKwMU5P
	DvgyREs0hIxODjYGEi5NXvs=
X-Google-Smtp-Source: ABdhPJw3391GtD3hXRmk9a1uVqEicEQAGhaANIdiGxqmnYgi8+BVzH5kKe94y89CEazMsuG0tmn+Kw==
X-Received: by 2002:a9d:75d1:: with SMTP id c17mr3208235otl.59.1600792056492;
        Tue, 22 Sep 2020 09:27:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b88b:: with SMTP id i133ls3938067oif.10.gmail; Tue, 22
 Sep 2020 09:27:36 -0700 (PDT)
X-Received: by 2002:aca:388:: with SMTP id 130mr3137213oid.145.1600792055932;
        Tue, 22 Sep 2020 09:27:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600792055; cv=pass;
        d=google.com; s=arc-20160816;
        b=g5vheqJMQZG9QUr8Qz+mjcE5llqheS45h5y9cBKXot0KXngSe18420bzGp2vOp3KkH
         +j/4giTfoi8vNaa+styC1xJvOzIsBuwyB/kQO9OFmBLF1xvCt9SD9xVztsoM1mz448pf
         +hpl8D63Zh8NcIYOg8qKP6zqqIGwPPb/m1PldjvNdbld+YbacH6IX6PlJ1p+Kx4ZxXW+
         wp7hm2aHprAOAUtXaD7DCgqJ6naWhnzxBEp3rVAaTzyKNRdg7027bZMP/Y+1EkQh75zY
         I53aPOWs9cai2my5QEhs2lzauxcOdH6gKGYeT/RG0ho9JMR1ib2HpIqEM6CuDnSDpn4f
         9hGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=6MEJwKYStkpv4+IiRFTd6UH/ARIJZWV4jTSkP81EY/0=;
        b=dajEE4Mu/njIWxsI3DsOByJi4LGladqSJGqh/r8AXIsPqaRdErhuVVOatx1mbmyB3A
         29+oIbyL8B3pL+Borwqyapaq/UjXP8vi8ShQLQijcVvFEJ6tv7Uufad6rw1doHWuafo4
         ltL3l5ef6Ba0M/1bnGc8XMBFJ5ZDBlR4FVqDwiKP74nRc+estkfnuV4Z/DR2QViY3z9z
         ABx1vFdJXETbQHDyn8SZ4fNLodMTQLxRh8Nb6v7ZiCJmM68UbtfiaorRlVrGAl6w2SJ1
         WNMclXz3l4y2SfDwKdCEtHXvjzqngHG+1GtXONhvWdU/7pJBzXGQvCEwp4MTRNcexwdC
         nkag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=BHr9MMhF;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of ian.bearman@microsoft.com designates 40.107.69.124 as permitted sender) smtp.mailfrom=Ian.Bearman@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690124.outbound.protection.outlook.com. [40.107.69.124])
        by gmr-mx.google.com with ESMTPS id u27si1122193otg.5.2020.09.22.09.27.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Sep 2020 09:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ian.bearman@microsoft.com designates 40.107.69.124 as permitted sender) client-ip=40.107.69.124;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j0KXh5UEiMRkPOuIxEp2o3IIWz5IPlxzBAvEmKbUmsnnmi4KkI9qGusE0wTOhzQB4YJeJSKaD1tf0yMNicwbx55u23vjWa6N6SEhfO0mfgxQKOsjloG8yIe++29sPEBZ8H7VZLdd4DH7F6uHUpzyK7bbxGaTo6UYhesOIbJAoT645i/ZzjsDXKNyklODaTicQwDarBOAKoWBnThnPmER01LPRGSWhifpGin4cnb6LNMDHTaTw8YmFUN2ACB//HiMrlEHYdg3t77AyGKlIaJHvRYS+WcQKBzbf8iRMLJhTY4an5K9hz62qz4iEuOR66jFUjDIG24NLkkTeb/i2ISibA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6MEJwKYStkpv4+IiRFTd6UH/ARIJZWV4jTSkP81EY/0=;
 b=Pz3NfQsCp+CcFxzlPKTmg+cElquSZ4xjJmTmVqFzjER++uTg3DzC1DzPHT7LVPpyS1EuY4PpkB6KQwH8fKKGYrNIyBSCd9AjSQXifWKCn5om3mcr7CzfHQmSGe1fcLjYlXoR8DyEPW/7MlYDOIzw2h9Dd/W4JrLCbm1jNdlHdc9WVhpqUE+V4lY6VDHL4TNFLI5IC+FUwgbTw/1ONLPfDZjDuGAU2zc8Tow23F1KoTKLWMlwV8tJbrh3ufym6CwaaFNs3858lZPedo3hyI8l6QMJaYg2xcVbOcaOI+XkXlsyvqvTxqEm91XU1XNTyiAozVpSyLShiUuXbGn3sW/dkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
Received: from MW2PR2101MB1099.namprd21.prod.outlook.com (2603:10b6:302:a::28)
 by MW2PR2101MB0937.namprd21.prod.outlook.com (2603:10b6:302:4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.4; Tue, 22 Sep
 2020 16:27:33 +0000
Received: from MW2PR2101MB1099.namprd21.prod.outlook.com
 ([fe80::7cc8:ca4c:eb23:29e6]) by MW2PR2101MB1099.namprd21.prod.outlook.com
 ([fe80::7cc8:ca4c:eb23:29e6%9]) with mapi id 15.20.3412.009; Tue, 22 Sep 2020
 16:27:33 +0000
From: "'Ian Bearman' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Russell Hadley
	<rhadley@microsoft.com>
CC: clang-built-linux <clang-built-linux@googlegroups.com>, LKML
	<linux-kernel@vger.kernel.org>, Sami Tolvanen <samitolvanen@google.com>
Subject: RE: [EXTERNAL] Re: [PATCH v2 00/28] Add support for Clang LTO
Thread-Topic: [EXTERNAL] Re: [PATCH v2 00/28] Add support for Clang LTO
Thread-Index: AQHWh5pru5J053eG90yuBgxp8VqoxKl06XyA
Date: Tue, 22 Sep 2020 16:27:33 +0000
Message-ID: <MW2PR2101MB1099A1D58A9C062006E92569FF3B0@MW2PR2101MB1099.namprd21.prod.outlook.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <CAKwvOdkbkvXdfXLzTNOj8m8_YWjL6=bSn4-AbRyd-5oYGJVNSw@mail.gmail.com>
In-Reply-To: <CAKwvOdkbkvXdfXLzTNOj8m8_YWjL6=bSn4-AbRyd-5oYGJVNSw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: rhadley@microsoft.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=c83ab689-edbf-4819-9ff9-2f9c6a40c201;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-09-22T16:20:55Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
x-originating-ip: [67.185.20.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a28f9fea-8c35-41c7-96fb-08d85f1468ee
x-ms-traffictypediagnostic: MW2PR2101MB0937:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW2PR2101MB0937CC671F332374F81A9218FF3B0@MW2PR2101MB0937.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:556;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wU1p7xvGWBsmx0DsbVBJVSr0sQ5ejD7Yg1eLy4e0/XU/74u/iwRJUoU2W0C2hvc2gIg+wo7zBPjNQCYJEf1as1iF7ap6kdhbmsl1SawgQ6yodqxbOV0ffmfFTAZSe/n3tshNl2/LjUa4LkB/4JS5qODx/ssKkHX/wQiPl5hxlyIkA0qnxFzZBLB+ZDBSo7fOcPUrpauIPlaBPB+dWmnp7yMLg5ZZ9XZk/NVmxv11W0z9O01qfv//RXk8M9dYRPr439XpV689RBd27rO/F95x5PCwMUft019MLIxKqHEDwwNP/jSvg5KYoP9wQP67QaQyrHHR21RlW6+Gi4cG8R4k6TBBdEfTcudKDSu7dXIjPm2ECtjOJuq5ZpejTOFdmqS2b7nKqOZbs+eb1jBtTH2IqLgjN9MGSg5ap2+gC0E94M8APaJXG9svE2NdnU2oTdNkw1mZncbJDZw0RVCQG3KrxKW+LwD8MjtcZ8f5FpfCtqMeDDWp/jA2kmzBaae6C683
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW2PR2101MB1099.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(366004)(136003)(346002)(396003)(66556008)(64756008)(8936002)(52536014)(55016002)(10290500003)(5660300002)(33656002)(8676002)(8990500004)(2906002)(478600001)(83380400001)(82960400001)(71200400001)(66446008)(66476007)(66946007)(4326008)(6636002)(316002)(54906003)(6506007)(53546011)(82950400001)(7696005)(9686003)(966005)(110136005)(86362001)(26005)(76116006)(186003)(49910200004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: t39dqrisFnN+npJ4Yb5Bk4H0YN720I7IH8/h0C8NB/A39g1WmMm96O5k4vCicfimNkxF5k9PGAM5mySGPFdBl/6BaqL4CeB08wxGF6UZACfETQrodFGLvGD6w2r34g0Xw6mS54XJYehunJh4ypEnqYw+eLPJK19Nl/EnZ3+waJErGhxLeKRkZpFxcBp4rZsIdL4ZLnihTUStheKJJzA/onkpU6y5GMiMGbejZlFx7re76ZE/CZwPBDrNR06psYiciaO/aIQ18U2lVczGABnndyaARUPbPxi57t2pTBMvW0FS5j/nosCEFzwwE5FjcNoY9C+GqMRgMm4D4zkX96xmgRmrQB5auvs+nhPx3E9D7u6ssFpCCo6yLudW9gLOZpYVGf7Xx6y0y9sAwnVsHJBO5uoaCI2EWQ42tZhU+yq9wyBwiHPfNL+IzjU33ZVk9rI5JI6kaw5RqKFMCg0dFqw40Nr2e+Vb7GHAkwW8ktjavZ09SwbZ0pSphaPWXB17UgO0gcd2hl+lxaXr/8Z0EsZFov0XjOaOmOpmCaBt6ZuVKqcEFAAC/nImjcXaCUDUoID4Upri3N2Yqx2+408W5zIPg8YiY++m+yFjHDU0udfRrulwMlwO2RxPduMnO1sWH7jjnWiTDGujUUJpV1Fv6iKUkw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR2101MB1099.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a28f9fea-8c35-41c7-96fb-08d85f1468ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2020 16:27:33.6258
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u/7+M2oPGXSzm6muQcxEW0GdJmUeeB/kfmH0bryK8vxr7B0lo7c+lti5N6IIs9vGV4st+VbXo3l8RZm38k030g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB0937
X-Original-Sender: Ian.Bearman@microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microsoft.com header.s=selector2 header.b=BHr9MMhF;       arc=pass
 (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com
 dmarc=pass fromdomain=microsoft.com);       spf=pass (google.com: domain of
 ian.bearman@microsoft.com designates 40.107.69.124 as permitted sender)
 smtp.mailfrom=Ian.Bearman@microsoft.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=microsoft.com
X-Original-From: Ian Bearman <Ian.Bearman@microsoft.com>
Reply-To: Ian Bearman <Ian.Bearman@microsoft.com>
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

Hi, Nick. Thanks for reaching out again. I'm excited to see other groups ta=
king an interest in LTO and PGO for Linux. CFI for the kernel sounds like a=
 huge deal, nice!

I'd like to introduce you to @Russell Hadley. Russell wears a couple of hat=
s right now, he's both the group manager for the MSVC code generation team =
as well as the (interim) team for the Linux tools team that i built and lea=
d last year. He has inherited the various efforts my team was working on an=
d is the right contact going forward to collaborate on Linux compiler and t=
ools efforts.

ian Bearman
Principal Software Engineering Manager
Microsoft Visual C++ Team: ML Optimization & Code Generation
#BlackLivesMatter
/* Making your code faster, smaller, smarter! */

-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com>=20
Sent: Thursday, September 10, 2020 10:46 AM
To: Ian Bearman <Ian.Bearman@microsoft.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>; LKML <linux-ker=
nel@vger.kernel.org>; Sami Tolvanen <samitolvanen@google.com>
Subject: [EXTERNAL] Re: [PATCH v2 00/28] Add support for Clang LTO

Hey Ian,
It was nice to meet you at Linux plumbers.  You might want to take a look a=
t this series.  It implements builds of the Linux kernel with LTO.  It woul=
d be good to get eyes on it and help review it from folks working on this f=
rom the GCC angle.  The series has some configs that split where Clang spec=
ific changes need to be made; it might be of interest to think about what w=
ould the similar changes be needed for GCC.  Also, congrats on your LWN art=
icle!
https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flwn.net=
%2FArticles%2F830300%2F&amp;data=3D02%7C01%7Cian.bearman%40microsoft.com%7C=
9adc842104f640d3ebb308d855b17221%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0=
%7C637353568334933757&amp;sdata=3DuM6%2BGj5z0gNAuIravVWOeVeIVsRI5YaPIJqB8qY=
sZ94%3D&amp;reserved=3D0

On Thu, Sep 3, 2020 at 1:30 PM Sami Tolvanen <samitolvanen@google.com> wrot=
e:
>
> This patch series adds support for building x86_64 and arm64 kernels=20
> with Clang's Link Time Optimization (LTO).
>
> In addition to performance, the primary motivation for LTO is to allow=20
> Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google=20
> has shipped millions of Pixel devices running three major kernel=20
> versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM=20
> bitcode, which Clang produces with LTO instead of ELF object files,=20
> postponing ELF processing until a later stage, and ensuring initcall=20
> ordering.
>
> Note that patches 1-4 are not directly related to LTO, but are needed=20
> to compile LTO kernels with ToT Clang, so I'm including them in the=20
> series for your convenience:
>
>  - Patches 1-3 are required for building the kernel with ToT Clang,
>    and IAS, and patch 4 is needed to build allmodconfig with LTO.
>
>  - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.
>
> ---
> Changes in v2:
>
>   - Fixed -Wmissing-prototypes warnings with W=3D1.
>
>   - Dropped cc-option from -fsplit-lto-unit and added .thinlto-cache
>     scrubbing to make distclean.
>
>   - Added a comment about Clang >=3D11 being required.
>
>   - Added a patch to disable LTO for the arm64 KVM nVHE code.
>
>   - Disabled objtool's noinstr validation with LTO unless enabled.
>
>   - Included Peter's proposed objtool mcount patch in the series
>     and replaced recordmcount with the objtool pass to avoid
>     whitelisting relocations that are not calls.
>
>   - Updated several commit messages with better explanations.
>
>
> Arvind Sankar (2):
>   x86/boot/compressed: Disable relocation relaxation
>   x86/asm: Replace __force_order with memory clobber
>
> Luca Stefani (1):
>   RAS/CEC: Fix cec_init() prototype
>
> Nick Desaulniers (1):
>   lib/string.c: implement stpcpy
>
> Peter Zijlstra (1):
>   objtool: Add a pass for generating __mcount_loc
>
> Sami Tolvanen (23):
>   objtool: Don't autodetect vmlinux.o
>   kbuild: add support for objtool mcount
>   x86, build: use objtool mcount
>   kbuild: add support for Clang LTO
>   kbuild: lto: fix module versioning
>   kbuild: lto: postpone objtool
>   kbuild: lto: limit inlining
>   kbuild: lto: merge module sections
>   kbuild: lto: remove duplicate dependencies from .mod files
>   init: lto: ensure initcall ordering
>   init: lto: fix PREL32 relocations
>   PCI: Fix PREL32 relocations for LTO
>   modpost: lto: strip .lto from module names
>   scripts/mod: disable LTO for empty.c
>   efi/libstub: disable LTO
>   drivers/misc/lkdtm: disable LTO for rodata.o
>   arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
>   arm64: vdso: disable LTO
>   KVM: arm64: disable LTO for the nVHE directory
>   arm64: allow LTO_CLANG and THINLTO to be selected
>   x86, vdso: disable LTO only for vDSO
>   x86, relocs: Ignore L4_PAGE_OFFSET relocations
>   x86, build: allow LTO_CLANG and THINLTO to be selected
>
>  .gitignore                            |   1 +
>  Makefile                              |  65 ++++++-
>  arch/Kconfig                          |  67 +++++++
>  arch/arm64/Kconfig                    |   2 +
>  arch/arm64/Makefile                   |   1 +
>  arch/arm64/kernel/vdso/Makefile       |   4 +-
>  arch/arm64/kvm/hyp/nvhe/Makefile      |   4 +-
>  arch/x86/Kconfig                      |   3 +
>  arch/x86/Makefile                     |   5 +
>  arch/x86/boot/compressed/Makefile     |   2 +
>  arch/x86/boot/compressed/pgtable_64.c |   9 -
>  arch/x86/entry/vdso/Makefile          |   5 +-
>  arch/x86/include/asm/special_insns.h  |  28 +--
>  arch/x86/kernel/cpu/common.c          |   4 +-
>  arch/x86/tools/relocs.c               |   1 +
>  drivers/firmware/efi/libstub/Makefile |   2 +
>  drivers/misc/lkdtm/Makefile           |   1 +
>  drivers/ras/cec.c                     |   9 +-
>  include/asm-generic/vmlinux.lds.h     |  11 +-
>  include/linux/init.h                  |  79 +++++++-
>  include/linux/pci.h                   |  19 +-
>  kernel/trace/Kconfig                  |   5 +
>  lib/string.c                          |  24 +++
>  scripts/Makefile.build                |  55 +++++-
>  scripts/Makefile.lib                  |   6 +-
>  scripts/Makefile.modfinal             |  31 ++-
>  scripts/Makefile.modpost              |  26 ++-
>  scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
>  scripts/link-vmlinux.sh               |  94 ++++++++-
>  scripts/mod/Makefile                  |   1 +
>  scripts/mod/modpost.c                 |  16 +-
>  scripts/mod/modpost.h                 |   9 +
>  scripts/mod/sumversion.c              |   6 +-
>  scripts/module-lto.lds                |  26 +++
>  tools/objtool/builtin-check.c         |  13 +-
>  tools/objtool/builtin.h               |   2 +-
>  tools/objtool/check.c                 |  83 ++++++++
>  tools/objtool/check.h                 |   1 +
>  tools/objtool/objtool.h               |   1 +
>  39 files changed, 883 insertions(+), 108 deletions(-)  create mode=20
> 100755 scripts/generate_initcall_order.pl
>  create mode 100644 scripts/module-lto.lds
>
>
> base-commit: e28f0104343d0c132fa37f479870c9e43355fee4
> --
> 2.28.0.402.g5ffc5be6b7-goog
>


--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/MW2PR2101MB1099A1D58A9C062006E92569FF3B0%40MW2PR2101MB109=
9.namprd21.prod.outlook.com.
