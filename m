Return-Path: <clang-built-linux+bncBAABBMOQ2TVAKGQETCJ4YJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4988E86F
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 11:38:58 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id k5sf1549653qke.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 02:38:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1565861937; cv=pass;
        d=google.com; s=arc-20160816;
        b=UZY74NWFKRd1h1cBKFBU4FRXQzEpYLE9L2ssk7rHYn1PGJ2fI3gpdVyE0/Do/ySfJU
         18+qXQJ4yGkRJjykjx5eGiDV/J9gKQGhcIGhWDluG6issCJvRrGg6YGous5JS0EA0YCK
         4jP1XRYOinPK1qTI0YErN/gB+bacQrqKuipZ7zdPMs0H+HrIcrIkRjhNHuGw8KhsOT2+
         aTIX4JkHYOViiYe83UbOBN8TVS2bN7mrahBzFxK/FHu5lxxWzHKty7fwWpbpsFRO5E94
         TQwttU1A67cx4BjByRVyyeyOO1/avdH2XqAhVsH6KLKdQnELTXb/CQaJ7rMOWu3Jt0bz
         sh+A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=FRSPB5pEe/90Floflmx7/Ml3/Bvsi3QijO3AwRrndaw=;
        b=wmkAmB4+nIvQouJTIf4ZtYg8c5ZK8r5bLDkkF63ApO1qQERBN3uWHvwDWfgz/2K9bU
         0PqEfWRu9AwGpFyPgq1YJglJVPHId5LhSU6uiAar2hKOa7PC5EyAaZ2e4EmwQoVaRlgj
         iQZzHAEJUcrC6EU37XTWM9uvwPpLhjMkl6XuwZgp++OKh2n34BiAAPQ60aJwUUDWJ52X
         lYFexHHpYQ9laYfObqqucrUdT8nD7Dd6OJ9ovaKL6vYS6H0uqn5gNsNeMZxCvCGXbanw
         nrlOhAaAYBvUMQ+gXsnCZuK6yrX01Q2C8ha6peNwTlbnZJjmutB8y9F20oMpkj/Yq8QZ
         avkQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=jBzxjXO9;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.77.109 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FRSPB5pEe/90Floflmx7/Ml3/Bvsi3QijO3AwRrndaw=;
        b=ER2/TUMNKhxnKVoQtGEhbKlHcw6fExbLon+0R9aCSPljrW+h4BObVsOlAddDs4Sdqv
         3MaPFnv1a5kYSZQgDYxliDDqEpCOQBpl2FbwcyzOSGtsTtco2ANe1HS1IcQN58YSwCse
         5dbhuYElrDF1f8RZ/MjDwIhbh/a//4emCq5AUPE9OfxMIkpg0b2nHEMi3Fh+UPS5l1FC
         Swv0kcGJTkpnEXSdt8W6/KAdvMijtvq+/hQ06btVZgtN8c3oUAGoR2YCQZ3qrSfN0rR0
         /HLJjY2UiizmtBBo3gZPpCl+z8MQCuekuclcvood6kEo6c018+wFF9ZrhUN0PTBig9zB
         c8ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FRSPB5pEe/90Floflmx7/Ml3/Bvsi3QijO3AwRrndaw=;
        b=QxJ9Ozvpg4A2tnuFnjAVH83M6P7EoGX9BFORJ0kNA29peQ0xYnuFstKPRWGTdA5HGr
         aJCJr0zUL3sUukRPOiSM+f+I04wJfBobQPNsEzZ8Qn+djyKjnj4ITN7C95F7+odgamCR
         2rGT6PPfa4mBIAxKxQ/9E76KdXGOOGMdVyHUQDEDT7NkuFMYs+waZn1MMLakTSGL6NUD
         D7WxfGkqhUjJVyQez0HJ90KupQlds7+j6HkWs2pwD6oiU8OnUqQN/X/rpvZ3EDEaH18x
         eHblJSgJhXZC5m8SsTQgad4ZKrisfsvQAwA0SCpr7NlE6/fxDgGLej8UTtBXWTqsojMB
         oxUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXi8lcTniJoeJW7UqHHExMHk7ZUjRKh2lMbl8fU9nY3gprtG0UT
	tH6OYIURAObZH4vFnkoBUSg=
X-Google-Smtp-Source: APXvYqzbLGLLcYeqARz3ZUsHuNiT8FWKUyzlrasKjWfrY/xJH9PZaDhMeBktIoesjYNx60BVmw9Nig==
X-Received: by 2002:ae9:efc6:: with SMTP id d189mr3111785qkg.323.1565861937073;
        Thu, 15 Aug 2019 02:38:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b846:: with SMTP id i67ls159556qkf.2.gmail; Thu, 15 Aug
 2019 02:38:56 -0700 (PDT)
X-Received: by 2002:a37:9185:: with SMTP id t127mr3241419qkd.482.1565861936905;
        Thu, 15 Aug 2019 02:38:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565861936; cv=pass;
        d=google.com; s=arc-20160816;
        b=SAR95pluT4n1gThMs6DI0ru5mBnuFPzvAGGJMONQZQEVqfO+oHl+V+K8OEDG3o//OO
         fyuDYppm/zn0un8JhYGkE8G1P6kP2uHy8/AB+sMR+HTAw3e+MOREcLyXfqzN0Y1Vt2Hx
         cTeJsLoH2XWNNEsfVUwJB+/0w6YEi+tHPR+vxQ+D2EsmxVbBJ2c6yLxHOkjpwl1CvXjm
         Uygewx2nFe+SV3WIM52Mw2gOqLFqedZobjhFXFKNxTaIaWRq97nnv073TRu7/hUy2GC1
         zX0GBfUNJOrbL5gXzw+zq78OgCM6tNu17X4V64G6GB371DlZCXVL9B1k5zZJiLltM2wH
         ba0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=K9PoXqHtp0Kpdy3U9XMa0oxY1rMTU4wvyjRjsyM10OU=;
        b=UjLPe3PIc1LY4kFhryTRVAF/yZxGYtE/vpodVyd5qWmyJNEBNxZ82cjmthxtxcxqqX
         XnrK0X7VQCgXqGjmYg3oexyBTasRGFybK3AsTpBeyyDbPAG/h3WZZgoGQ88mKz24Wu+w
         Kb6pGpmyTng2yfxfczaAUzsJA5K6PyIokGJlyy6QSchdPBhQWcDRZu3oAJa8O9J9S5dh
         PIIef58MRSnrrha0i7/fE3OlmZyCy09xBWHA/m65fSDxqRFIDGa7WmIlNCjjchrS64q1
         uxV+ndiNk6tcedjEA6sadOG/YN0rm7+bIhvCdoCG7+UzV/MCxRtn/jaLx+N6HiuMuWwM
         oB4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=jBzxjXO9;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.77.109 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770109.outbound.protection.outlook.com. [40.107.77.109])
        by gmr-mx.google.com with ESMTPS id p24si161132qtq.5.2019.08.15.02.38.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Aug 2019 02:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of pburton@wavecomp.com designates 40.107.77.109 as permitted sender) client-ip=40.107.77.109;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UxhqGsLwI7df5YtyeVhWiMnamH0T3N779R6wtHuwjYfeuY/72pdzsyzz7HgbHJNIoTFaYnswbp/5Kw0lmxquRaYPDWF7u8UPpBmqBuzWmM2VdRiyLaOmqlXC5bjCZZ0TJ9I1/LDIuNi1cmWcgIWAOq8S0gJdyGM/RQfzL5WCqohN+c6H4cyKRMIedtBldD9jOKrreoarDk2QnqohkeJipYXGlFMq30F/VaBqpXb8Tr6I/ui0gNvQ4zgr22FpbVMMECNzMv/mJp2uEYYoBuByCSDbll4qIgdtnWdb8Ook+p5x2xILnefvsqGBFhN0q3GXwa18xOwf/2bdXSXh+GcmhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K9PoXqHtp0Kpdy3U9XMa0oxY1rMTU4wvyjRjsyM10OU=;
 b=n40wxfIJmzfg4o/9lYQUVBJrAUuCgSddgWVzGQFNRoDgDcK2fUoNooM8Ch4jOG1pldi7TRacGZprqad6j/MpkGlhltOsMWdLOdy26WcfIFK3czTkznlNz0HVgSikYECPvZNS4iCtewKMIHOW1zwgCnCD78/OHj9T7zqSx8ZFQS0UCho47GlA6DPuEY9fM9WQDAoIo4d1EXLj47J0o0KJmKx0YHSHbRoY16++/YBBH4mZ9r/4vFY1jyZQN8B108KnCYq8o3bkurdHPRlNypd4pQamsYElPLo1LU2AJrlWjB8kKxg8njpVrcV54B2+FRzy9WPS376q9OwmXt/MHPgFbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1327.namprd22.prod.outlook.com (10.172.62.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 15 Aug 2019 09:38:55 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c%10]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 09:38:55 +0000
From: Paul Burton <paul.burton@mips.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"sedat.dilek@gmail.com" <sedat.dilek@gmail.com>, "jpoimboe@redhat.com"
	<jpoimboe@redhat.com>, "yhs@fb.com" <yhs@fb.com>,
	"miguel.ojeda.sandonis@gmail.com" <miguel.ojeda.sandonis@gmail.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin
 KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org"
	<bpf@vger.kernel.org>
Subject: Re: [PATCH 08/16] mips: prefer __section from compiler_attributes.h
Thread-Topic: [PATCH 08/16] mips: prefer __section from compiler_attributes.h
Thread-Index: AQHVU01ByaP1AV05REaF4uuS4im7OQ==
Date: Thu, 15 Aug 2019 09:38:54 +0000
Message-ID: <20190815093848.tremcmaftzspuzzj@pburton-laptop>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-8-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-8-ndesaulniers@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0077.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::17) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:5e65:9900:4e8f:fd55:165f:4d31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ed70961-ed87-4089-25a7-08d72164638e
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR2201MB1327;
x-ms-traffictypediagnostic: MWHPR2201MB1327:
x-microsoft-antispam-prvs: <MWHPR2201MB13272BD527981FF6608AA35BC1AC0@MWHPR2201MB1327.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(7916004)(136003)(346002)(39850400004)(376002)(366004)(396003)(199004)(189003)(14444005)(71190400001)(71200400001)(14454004)(54906003)(58126008)(256004)(76176011)(6246003)(53936002)(52116002)(4326008)(99286004)(8936002)(478600001)(316002)(25786009)(81166006)(81156014)(8676002)(33716001)(6916009)(305945005)(7736002)(7416002)(6436002)(9686003)(6512007)(6486002)(3716004)(6116002)(2906002)(5660300002)(229853002)(64756008)(66446008)(66946007)(66476007)(66556008)(42882007)(46003)(102836004)(6506007)(386003)(186003)(11346002)(44832011)(486006)(476003)(1076003)(446003);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR2201MB1327;H:MWHPR2201MB1277.namprd22.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SAu1mhQkxjxv1NLJhEf1dcfUEMopaiEUp0eEhEnX1MW1FNAAE6IEvSF5fQ+PQe8Jp0FOLQEyVz0VPFO0lOY+5DofBMmGWMMdp9Q212vunQxp17klqvnWv5qPzmYoZkdvJdt7iha7UCDJfVOebZQqJ2xj/tiQEeLWxAz1Yo6C0W9nZj2pDoY9Z/7je8uLs1yMwg6tuSF0CkkKpzwtwk20r3llG0/M2z7Ap/OYcSCSQ1cBB7C9fLGfPp+3XhzkMcJO0qoZfQPVruSo8OWa8SyUlWLpkaVlC+6XmRMC5OXGTtDE8uADtmrLH1E+rqeStXvk40WJdpi51M1h3KPHD8jR2XTqXSiWRyl1Ym7DqvEsKUdhvZZW90jtDLL9KRLKhKCwIat5ztsVzE5PIM2kyxZDc/0t6Ne74j8Sdt3uREW7KC8=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A55F7F2516A3ED47888C59738C16F661@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ed70961-ed87-4089-25a7-08d72164638e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 09:38:54.9129
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /fXB8XM2ZVQ4VJIQuZ9fq7ko798Chgbx5r2vgQwkZOkbkgg1sGtZDxpxDrW49hRkivlJGXSPxJwBHyNs96cVZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1327
X-Original-Sender: paul.burton@mips.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wavecomp.com header.s=selector2 header.b=jBzxjXO9;       arc=pass
 (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass
 fromdomain=mips.com);       spf=pass (google.com: domain of
 pburton@wavecomp.com designates 40.107.77.109 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
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

Hi Nick,

On Mon, Aug 12, 2019 at 02:50:41PM -0700, Nick Desaulniers wrote:
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

It would be good to add a commit message, even if it's just a line
repeating the subject & preferably describing the motivation.

> ---
>  arch/mips/include/asm/cache.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
> index 8b14c2706aa5..af2d943580ee 100644
> --- a/arch/mips/include/asm/cache.h
> +++ b/arch/mips/include/asm/cache.h
> @@ -14,6 +14,6 @@
>  #define L1_CACHE_SHIFT		CONFIG_MIPS_L1_CACHE_SHIFT
>  #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
>  
> -#define __read_mostly __attribute__((__section__(".data..read_mostly")))
> +#define __read_mostly __section(.data..read_mostly)
>  
>  #endif /* _ASM_CACHE_H */
> -- 
> 2.23.0.rc1.153.gdeed80330f-goog

I'm not copied on the rest of the series so I'm not sure what your
expectations are about where this should be applied. Let me know if
you'd prefer this to go through mips-next, otherwise:

    Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815093848.tremcmaftzspuzzj%40pburton-laptop.
