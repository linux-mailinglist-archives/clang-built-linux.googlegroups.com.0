Return-Path: <clang-built-linux+bncBAABBOOMWP6AKGQEBZYJI5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7370A2920D4
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 03:04:59 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id x24sf4739295pfi.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 18:04:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1603069498; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjn/vkOBocCkLrg30Zk+QRjuElL7+NDfUMvx9pSa8S+NDISKo+a6hsskv5MDJooi+c
         aMQbU2jHGne7JQPPSZ/P3R6gk/yM7ntDXyZ9ks/7q4DNqR6nX9K0XrU+ISzF1YS7huse
         qLM+neErMeZyEE9L8dvXpOPBdvwcEtwOo9ieIh7kEqReORbJW3bYCK72OYTkWvK4N9XV
         NK3knHPR34QKcRL7vhwRw2MUQTxrZdWPv8mR+z1J+UevHiJJQppsl07ecoHXI/eAit02
         +3p2hdbjFTCPmkrh6R7qMyrorHy76/rpOH/37xbYyzMCBfEOzBJ45/4AqejIP3nMWuQT
         QWXQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:sender:dkim-signature;
        bh=B36QqTPGoPv7LIIhsn1q/x1T9x3JUnZ0muq99SMXTGo=;
        b=qNVinTNNHw1rTgGA/Q3356PzXkQbQsxhtK5Li/6vm+bFMsJ+ZW0WD3jAp2+TgDHdHL
         dShETLb9B0VZ4Oy23yE0N+7l99SFqk8sEurzC0ENUP/8TtvwkgIH5VGqmu7FLHjkm8eX
         SBzrUg0MN8TG75QYTvYHi9FhJgjKdNdxDrwtDmtIfulbFyq4bUcjQIAEEwJoghhG0Kyw
         9xA6kxOmjqz+9qKZmC5qUeRJ4293wR9MyZZOvpiRcKlRnp0l2QmJzJqG1mi8JvrgdkXj
         9mgjV2qFcBj5kz8ywOpiU0ml0+VTuNgpLxBWX2dejCXDEYaDLhVATQduf+Cps2h1JzZq
         7QaQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@eafit.edu.co header.s=selector1 header.b=GiVsIRBO;
       arc=pass (i=1 spf=pass spfdomain=eafit.edu.co dkim=pass dkdomain=eafit.edu.co dmarc=pass fromdomain=eafit.edu.co);
       spf=pass (google.com: domain of agoncalv@eafit.edu.co designates 40.107.243.125 as permitted sender) smtp.mailfrom=agoncalv@eafit.edu.co
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B36QqTPGoPv7LIIhsn1q/x1T9x3JUnZ0muq99SMXTGo=;
        b=QYjQH2md7DL5N5kKYOm+nkAb0ek0iHO9JfGsMi4/OtMLURIcSQkmIQmJkdzvKaQ0ao
         10dAtcHGnapeHFZdolylpKP6hMSNdHIovUuNbt6/B4/smHsW6GrquK6d9AstUVVuijwu
         3XySbBmO8yjQDNx4TMhxNkwv7zd3/kYtjm+FCliFvuHJT2c+KwZgqhZQl6H8Yz4aFjLL
         pwOtCMkLxHoBkkoWU7btR3Wg0cN4scgJYHdhM3A6nIgLZboJI01n9nsAbOfyKmJOXUE9
         E29mrT9ny2lPguyqLUtGvWtoXPiV8frRS7zfYH/y/D6TpuaUksvstE58QeYUbR83eCQN
         2gNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B36QqTPGoPv7LIIhsn1q/x1T9x3JUnZ0muq99SMXTGo=;
        b=eWOo7GfFiWCAZUy2eYlO8ECQUY6sCYdxhHx1DcRKyttdSWBjKrqLRcPcp8/RdfS08n
         7Q2rk/G6A1i/VgLhEO8EFLv4AvIHnCmiSwvYv9TQhSf4mlAVY6zYS59yldGgCTY8Cuwv
         BNp7zhIPwxFJMd0r3F87UcWem43yuiSX5bkHZrHU6k7J5jolgiFW6JpOOwOp48a+zZBw
         m8Ypg5Cwn65d+eYgxqpEqmqOfWXbeLTrqjc1Iku3FvBVoyy4eEL/odncj/WPp948FrfV
         Sh2buWxBFGCvtOoJGsDjOLgs35apEV5HXn1xvvTZoMxPt2ZAZuKsblz4H8Ay6QuXcKuL
         II+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XurAUTyZTJSySSSPZugX1aVMto1yKz+l/dP/4lVZpVCQre2uX
	wGvliGynPOjolJ+4Mlq19co=
X-Google-Smtp-Source: ABdhPJxX/S6wjuAd/kkp81dn7n/J0M7LhfnQM7Afwa11IySfEVEujwxVXjhvNtdaVEhzPJ9CqXeDdw==
X-Received: by 2002:a17:90b:891:: with SMTP id bj17mr14792023pjb.44.1603069498106;
        Sun, 18 Oct 2020 18:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe0d:: with SMTP id g13ls3809871plj.10.gmail; Sun,
 18 Oct 2020 18:04:57 -0700 (PDT)
X-Received: by 2002:a17:902:c14a:b029:d3:f494:e709 with SMTP id 10-20020a170902c14ab02900d3f494e709mr14879406plj.3.1603069497621;
        Sun, 18 Oct 2020 18:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603069497; cv=pass;
        d=google.com; s=arc-20160816;
        b=ceWG7QBreSjOYIVCp8kjPEAQ01PwtZO9JIDoY910g05kpXwUyVBBWMXCWMPkjjkF5M
         WcT0XaTFA304uZSElNMupdmLnKaVpAvVGiF5I9IEjrHm5aJBub7Tfsyl91BIrmMfJhif
         kEHbZr3XK2UZZEv9vb25P0BnLphfjlOTYw7sOamhCTkWInhYs6qdvgoL+Ve9QqlCCK6X
         Vtj4vjExNT18tjjVxCAiz+LLGAIaqc3JJVUlfaEOoq58tLuHyeiO3NKYZqAL/14kwxwh
         Dc8fBvZIV+2itjQ8yr7YcuDvJJYNPV+IdfBDMgfkb50qlWlfv8tK17FPHB/5CKzTLvVo
         adsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:to:from:dkim-signature;
        bh=ouP+v+WjjNlG6y3A5qzMbplQ87kAzBhMds8+OG6pSNo=;
        b=XDd2Zc2h8macpy67MUEURmgu1OHLWvigN8mqEtztbqy57BslLZkOtW2nKGqm8mkvy7
         iPwg5hI2ANmXeZVbTd3LtIjd31ZAemqTtgH1u4hxVNqRdUZW6yMNNb41izippP/CiobW
         thQXNv5HTqY5sBXEtdkpaSFzvqHYxsMtm8TEF+9vhgDqzhgaC4EalzrvHkCG2TGvaX+m
         2N2SuYAc1OCmi4NK+K5nxCGGHverr4YRyQAhh6AVUzT1h29KvjukUy4Qrjglp2TYtnJR
         +FmWaNzSNSfSVND6SfgqvRuznpq4lhYyjDhWYcihnuCvk8kMgfTuT4DiOEtmkAQCIl+u
         gPfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@eafit.edu.co header.s=selector1 header.b=GiVsIRBO;
       arc=pass (i=1 spf=pass spfdomain=eafit.edu.co dkim=pass dkdomain=eafit.edu.co dmarc=pass fromdomain=eafit.edu.co);
       spf=pass (google.com: domain of agoncalv@eafit.edu.co designates 40.107.243.125 as permitted sender) smtp.mailfrom=agoncalv@eafit.edu.co
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2125.outbound.protection.outlook.com. [40.107.243.125])
        by gmr-mx.google.com with ESMTPS id h24si127743plr.0.2020.10.18.18.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2020 18:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of agoncalv@eafit.edu.co designates 40.107.243.125 as permitted sender) client-ip=40.107.243.125;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6T2dpb5my/KeDoMJNj7HnuzXC4xKmBIng5tJJFfbaBIM0a4bq1scitl2XHpWbqcj4OffVa9eXQXa5+fwaZ6bYHJRoa5dyILIILUuN4YvlnrhQU6/Pb1qgXMpOqksGxt/he0dVlXoaQNtDPeFJ9h4+EdRR9KwViQSPxbwmg74yZh0QsaulZuq9yuS2EhvcuJgMCdALlS/8vmPkYzIcL9IZId9Sj6KzEdgIQjIhF9SRLrl9Dx7BTjAINqxVX92yK4e1KwvEdYSTrR33EuWuawQHSLRvOQSOqVErnq0zQQM+bXDDuw3h6R+KpLJ2StWCFoq/Wey/NWAmu1S2CpqwQgtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ouP+v+WjjNlG6y3A5qzMbplQ87kAzBhMds8+OG6pSNo=;
 b=L0qybkJdf6i17eYPWf+Peq6H/eGvENN1gFVkO7fHiR2RMmnEjhQOUUxMoc0ecOvvZafFfnwaxOqPDTAk6UgOn74lEIj5u+m6WOg3RFGDIeqZUb1ijbbNrKa0kgZSOYogkLZYioYecq4VeYHJz7fimEp8ePFV+CqHY3K+YzFp8/D0s8y80xCmR2jj9XQVBEcN1kyEQoWfNA2SAMHJlUolIt/FaWdDx6XHpsU2dy8BPc8QrqKuoSwwFIiJi6wWv2o5LVj3VCGTkwCDp6PZlUMliYlxsKB7/br3ONRmXcH58N4zLFfX2mkco0rRTVUnzuLLe3z607h6JwQOnpulJ0W0YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eafit.edu.co; dmarc=pass action=none header.from=eafit.edu.co;
 dkim=pass header.d=eafit.edu.co; arc=none
Received: from BN6PR07MB3411.namprd07.prod.outlook.com (2603:10b6:405:66::22)
 by BN7PR07MB5204.namprd07.prod.outlook.com (2603:10b6:408:32::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Mon, 19 Oct
 2020 01:04:55 +0000
Received: from BN6PR07MB3411.namprd07.prod.outlook.com
 ([fe80::397e:1f98:c9e0:97d4]) by BN6PR07MB3411.namprd07.prod.outlook.com
 ([fe80::397e:1f98:c9e0:97d4%7]) with mapi id 15.20.3477.027; Mon, 19 Oct 2020
 01:04:55 +0000
From: Augusto Goncalves Ferreira <agoncalv@eafit.edu.co>
To: Augusto Goncalves Ferreira <agoncalv@eafit.edu.co>
Subject: Let Talk
Thread-Topic: Let Talk
Thread-Index: AdalstDhywy7JDbATtypYVvwFChKhQAAFPVgAAAAEzAAAAAXkAAAABLwAAAAFSAAAAAT4AAAABawAAAAFuAAAAAWoAAAABUAAAAAFzAAAAAYkAAAABbAAAAAF1AAAAAZ4AAAABpwAAAAGAAAAAAbwAAAABiQAAAAHrAAAAAbEAAAABwQAAAAHUAAAAAaMAAAABvAAAAAHiAAAAAdgAAAABvgAAAAHaAAAAAgYAAAABswAAAAHoAAAAAesAAAAB2wAAAAH0AAAAAjAAAAACAgAAAAJuAAAAAkEAAAACMAAAAAIzAAAAAiIAAAACIgAAAAJBAAAAAi0AAAACMAAAAAJGAAAAAksAAAACJAAAAAKXA=
Date: Mon, 19 Oct 2020 01:04:51 +0000
Message-ID: <BN6PR07MB3411C37F30E9F08D27FD6E36E21E0@BN6PR07MB3411.namprd07.prod.outlook.com>
Accept-Language: pt-BR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [154.160.6.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9de4fd52-9610-4f11-71c9-08d873cafe14
x-ms-traffictypediagnostic: BN7PR07MB5204:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR07MB520461327C2EC1751FF52399E21E0@BN7PR07MB5204.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ysj7DSOnN+RvJ0W3E1Q2DRjwfT2hkQQxLZ585QX4Ip1GDhY8SJoOjfqz9+65aFxZWGXXNfhn/DL7T7oooWlbiYuyQBHuxKHf8Hb9f/drYIhTdijg9N9iEqvOZh0dEvQ8wemea3rmxq6kZqN4cVZCnZZKloy+se6tX88G9q3z5HIGnDQuZ6iejokshq1u+kQD
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:pt;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR07MB3411.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(7276002)(6862004)(7406005)(55016002)(7416002)(66556008)(64756008)(66446008)(7366002)(66946007)(86362001)(76116006)(6666004)(6506007)(52536014)(7116003)(9686003)(7336002)(8936002)(66476007)(7696005)(26005)(5660300002)(186003)(8676002)(786003)(65686005)(71200400001)(89122003)(478600001)(316002)(88732003)(6200100001)(76576003)(2906002)(4270600006)(33656002)(3480700007)(73894004)(4743002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: qytgrzyYiElrTnEPUEryiKqKVlEL9/HAFYvCfzTX4cmU0NtmQFI+7WtLJU6SjhfumPxjUjY0vMyDvF1LfK/23PXvoPyMH1dW2x579xpALFTBDUECMXUNKoqDEtuIwARb/6ULAENH01eaQxo/Vr1Cw3BJX0/pKksJvd2L69JoNdStkskOKANz46xCEwWsjKo2Etn0o/iuAnvwAnNl/+icnrISPLJB10PyeOFKHIlRpuYi9FMIuvqBFESm2K7oc8vyLwTEwNy4uz32ZRMsLtlseaLCOaciT+ZWgPg+bdew2Z3BXl2SMn/Bv+ww48JgKth6axQ3U/RWj3HfjEvl0+CZG/Jf+aVL7Rwb/inpqPi6E8gnCE3ek0J1Kc+pb4dOxdxtf/6k4Bwm8EPUSxJeGX+vCKFflKunlXsH7/ZgBFzmUAbqr584yoKa6KZbbwivDw3L4KJFE7ybpOCpgDu2CMT2cXAojbuq9CgVDqxSu1meJHEBY2Z0REigMiH1EoCfZQbApWl8/Tf5bIruPWvOKHLwuAaIaFTEwu9js0I3AaZfA/bMkwrkpt9Un04tzbD6g8UgvWI/mWLY+gpw//gDDvjxAc6UNVbVDp8GLxWpQu9xZm5y77Es/1XHSFeEFMLpAqJ1ixa3Fwg7Co75LAbZs4Aa7Q==
Content-Type: multipart/alternative;
	boundary="_000_BN6PR07MB3411C37F30E9F08D27FD6E36E21E0BN6PR07MB3411namp_"
MIME-Version: 1.0
X-OriginatorOrg: eafit.edu.co
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR07MB3411.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9de4fd52-9610-4f11-71c9-08d873cafe14
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2020 01:04:51.9485
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 99f7b55e-9cbe-467b-8143-919782918afb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/EKdO5AEF6ACZxYaUBVhWMjUhTdSqZUu9JykuE3tomk/L85H3nodhVmS6PnnAKLZAtnzgKmdThjsreXZqSIDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR07MB5204
X-Original-Sender: agoncalv@eafit.edu.co
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@eafit.edu.co header.s=selector1 header.b=GiVsIRBO;       arc=pass
 (i=1 spf=pass spfdomain=eafit.edu.co dkim=pass dkdomain=eafit.edu.co
 dmarc=pass fromdomain=eafit.edu.co);       spf=pass (google.com: domain of
 agoncalv@eafit.edu.co designates 40.107.243.125 as permitted sender) smtp.mailfrom=agoncalv@eafit.edu.co
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

--_000_BN6PR07MB3411C37F30E9F08D27FD6E36E21E0BN6PR07MB3411namp_
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR07MB3411C37F30E9F08D27FD6E36E21E0%40BN6PR07MB3411.namprd07.prod.outlook.com.

--_000_BN6PR07MB3411C37F30E9F08D27FD6E36E21E0BN6PR07MB3411namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
om/d/msgid/clang-built-linux/BN6PR07MB3411C37F30E9F08D27FD6E36E21E0%40BN6PR=
07MB3411.namprd07.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/BN6PR07MB3411C37F30E9F0=
8D27FD6E36E21E0%40BN6PR07MB3411.namprd07.prod.outlook.com</a>.<br />

--_000_BN6PR07MB3411C37F30E9F08D27FD6E36E21E0BN6PR07MB3411namp_--
