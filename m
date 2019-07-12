Return-Path: <clang-built-linux+bncBC3ZF2VMQQKRB4XMULUQKGQEWBOPYNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id BD71267353
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 18:33:55 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id x17sf7375701qkf.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 09:33:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562949235; cv=pass;
        d=google.com; s=arc-20160816;
        b=rDZQcqXKt2hlDD/xrUHfz/DOj65jKgJb8uZ0PTy7+SyUIxUW1Av6wGHquBzPqkPhyH
         YDVV3fvQPrzNKVkgILZg3npyWY20cJfcN0Pv4uqrCdp7O/ZpRpj7R69zWmaGrYl3jgje
         26gcCW8rxVOXMBc0CsKJaTH5vKvyEZgnflvotAf4b7ndNlYVOVhDOhGd3hCU/FT0+SQP
         iGEu2+Cu6PS6Qxaf1mbBAcSFh/IMY233TngbRZcKsBqAAglTG6w/+qGatUrGo/JMs88s
         XoLsIQ0at2rSReCd1iH8rUg96PLTYM3akw+9zmw5XJY7IQZyQaR0dnzcG9FCCzPfTaaJ
         I56A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :mail-followup-to:user-agent:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=jgtToNe4ej49aS5qJu/vsAdqW3P16Xl72tb8r7mqRb4=;
        b=CwtwM6ToYEaKvCoALF6NXjjp7hVlTn6/+MvxRjEbCPdN16Xfb8b6zylT2Bk0pagLkg
         57u4Vm0UdvajQ356GOWNKBBHzwb5t2qTYeDmNAQ2NPUlrhKDhyBb/V3qqADfhjl8Xz9S
         faC1CBxf7XhtevsQIKXSl84M05G64eBscjDYrUzWr5dI+jEnzUMXDDor/DKTlv8ixHNw
         APJXhmmHuGGtZYKr6BgVnSIxS2x9niBeJ47QvRvEK0Y6lFBN04o7SVpzcbi2XZM4aQ4n
         BNQnbPTP4xiuthgA5cbyjCSqQHs2gmNnt9zNMOFYxIsCMeVGc/wY+XspsLPOscjshMg5
         4BLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@virtuozzo.com header.s=selector1 header.b=Asnie40Y;
       spf=pass (google.com: domain of rkagan@virtuozzo.com designates 52.101.140.244 as permitted sender) smtp.mailfrom=rkagan@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :mail-followup-to:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jgtToNe4ej49aS5qJu/vsAdqW3P16Xl72tb8r7mqRb4=;
        b=ZBOqBUPDnsEmiHMVOy+4UimK3n2Y/SdzRBX1od6XOqCsTCG5xq9eKht6xG4BRExG/8
         bB37IRljmj6TBlHhxt1Eq4GYKSB3EaKM5641i2F2kYVzH+u1kj0JQVdhqVKoU14Plnh0
         SvPyc+a2gJPlzDFV9IKL9OdTvkRWQEkXs3JTTLv9lAeGdxcv8b9Lb38feyoizSk6VHlZ
         Hj/dB/TmG0pNTKmn0KjNTLxvWXmpyFkNwpzX78HraqUZIbRzY1B0+QiO3c4hPSM7lhSr
         xSRJoj5aOK+De0iqJ/RW2HYjSjDASO63KZx39douOm09zKWc2Tu6ZZ/1KQXcf/dwZ/fM
         sm9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:mail-followup-to:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jgtToNe4ej49aS5qJu/vsAdqW3P16Xl72tb8r7mqRb4=;
        b=p+jziHmJkrnbdpNrvhyZeglyUUUML5/JHwpySQiWhfqdFkFllL5zk+xMwvBKn+Fiqf
         HnaJn2v//dVY06P+Z9nKjHjVW9wITfR364AtkMV4AGhS0hQFpn37Zsy7GO2F7LHH5m24
         tFglsp7JkJwl38AHDm9ayv8kUyDT0bJWXyoPLPq8yFkiwaaCaGnAYyamo5Vp3Ttex0RN
         XNDAk9fyVp8hWqV4o6OL7mijzM2bMwZRYsyYvN8cgpyoP6WfsdNdDY+30/FdThKu45G8
         pLwcOyrLUf7w15tUuzdJ6kW1tlQgET8X9/P+r3pWwXEY+kybXvaOUa1MDDLS3iIIf2T4
         l1EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWwH/w9U0lo9bzbnNDHhVUOPBRq7WWtcLlrvTuFJTW2X5L9cskb
	b3Y8p+bZYHwfrbcA0Gy+n/E=
X-Google-Smtp-Source: APXvYqznra/C95aLYTQPjoCICDQvq4saTcb4/py6XaZ8+E2CVG7Yz/HGQdqEU6A7JHL9lS8wqXg55g==
X-Received: by 2002:a37:be85:: with SMTP id o127mr7128566qkf.194.1562949234877;
        Fri, 12 Jul 2019 09:33:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:3d2:: with SMTP id 201ls2948932qkd.7.gmail; Fri, 12 Jul
 2019 09:33:54 -0700 (PDT)
X-Received: by 2002:a37:aa88:: with SMTP id t130mr7398972qke.12.1562949234681;
        Fri, 12 Jul 2019 09:33:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562949234; cv=none;
        d=google.com; s=arc-20160816;
        b=Gxgpzy83+Qpb1/kLz1ypVMaTrAQAa7wBmKA6z3eY3ydBR9jlAR+A+RMhm8lc3geHOq
         vjMBIIKzWd5I5nkp4gs037Zo/5gcFmYF947qCW07CdkOz7/7cV2n+GgoRiXnlXxNql0S
         CngO08bXV/ffMy4BAP74Vawh4RdenNIHSIyPb9sEYriK9jSzniYf0Pm1YbIhuX1ka1XU
         nJWdQYNsN+LgbGkB6rpsT3u1Ul3r5Hx6yRJjP54zES7VHn17y1QOZJQsV8iGGpWRJ3DJ
         i6qDcPQv75HGl0xDAkPU96WvvNj+RpD9IKBx+2VTl2RSb289E4G8FgEFoPGNJAs7HwN7
         KLGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:mail-followup-to
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature;
        bh=H9afiulhk4NdHMDr6pW/IAgLc4n6/zkN0sBRnhhRkqA=;
        b=Rl4V48xR385uebYmDS4LgE/K5Ln9kDliAlXfi1fDe0nG04s8dAhVDQ1xrVStQHZRve
         gKxEYI4z0eRr0tpX1Kt90JatJMzr5trWIkWh9xWhwj5ZgPVvl7vFgwVygSP+s9rBegUL
         eg6grK9ms3vQHpdO4c8UWVlMz9O8VpMMTyBW7slKuAU75LFIdvOtL31tqf0WXNdz0hxM
         UonIegOW1gk7nni+MksnwzGihWDrMOfbZ9ZlYlVqj1T2+ko2ipWf3zn5uC09hpsd/IOQ
         TBDnHzCK+13UWMyZTXY9rpvYQVl9kyvWX0ut39qy9R4y+RWebcR1g18AdXxr17qvVrKw
         YPMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@virtuozzo.com header.s=selector1 header.b=Asnie40Y;
       spf=pass (google.com: domain of rkagan@virtuozzo.com designates 52.101.140.244 as permitted sender) smtp.mailfrom=rkagan@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
Received: from FRA01-MR2-obe.outbound.protection.outlook.com (mail-mr2fra01hn0244.outbound.protection.outlook.com. [52.101.140.244])
        by gmr-mx.google.com with ESMTPS id y53si575618qtj.1.2019.07.12.09.33.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 09:33:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rkagan@virtuozzo.com designates 52.101.140.244 as permitted sender) client-ip=52.101.140.244;
Received: from PR2PR08MB4649.eurprd08.prod.outlook.com (52.133.107.81) by
 PR2PR08MB4858.eurprd08.prod.outlook.com (52.133.109.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Fri, 12 Jul 2019 16:33:41 +0000
Received: from PR2PR08MB4649.eurprd08.prod.outlook.com
 ([fe80::bd59:a723:4d09:9e88]) by PR2PR08MB4649.eurprd08.prod.outlook.com
 ([fe80::bd59:a723:4d09:9e88%7]) with mapi id 15.20.2052.020; Fri, 12 Jul 2019
 16:33:41 +0000
From: Roman Kagan <rkagan@virtuozzo.com>
To: Arnd Bergmann <arnd@arndb.de>
CC: Paolo Bonzini <pbonzini@redhat.com>, =?iso-8859-2?Q?Radim_Kr=E8m=E1=F8?=
	<rkrcmar@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar
	<mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "x86@kernel.org"
	<x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Vitaly Kuznetsov
	<vkuznets@redhat.com>, Liran Alon <liran.alon@oracle.com>,
	"kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] [v3] x86: kvm: avoid -Wsometimes-uninitized warning
Thread-Topic: [PATCH] [v3] x86: kvm: avoid -Wsometimes-uninitized warning
Thread-Index: AQHVOLv8OwY0NkKxKECiO39u9XcS9abHLaSA
Date: Fri, 12 Jul 2019 16:33:40 +0000
Message-ID: <20190712163337.GC27820@rkaganb.sw.ru>
References: <20190712141322.1073650-1-arnd@arndb.de>
In-Reply-To: <20190712141322.1073650-1-arnd@arndb.de>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.12.0 (2019-05-25)
mail-followup-to: =?iso-8859-2?Q?Roman_Kagan_<rkagan@virtuozzo.com>,=09Arnd_Bergmann_<arnd@?=
 =?iso-8859-2?Q?arndb.de>,_Paolo_Bonzini_<pbonzini@redhat.com>,=09Radim_Kr?=
 =?iso-8859-2?Q?=E8m=E1=F8_<rkrcmar@redhat.com>,=09Thomas_Gleixner_<tglx@l?=
 =?iso-8859-2?Q?inutronix.de>,=09Ingo_Molnar_<mingo@redhat.com>,_Borislav_?=
 =?iso-8859-2?Q?Petkov_<bp@alien8.de>,=09x86@kernel.org,_"H._Peter_Anvin"_?=
 =?iso-8859-2?Q?<hpa@zytor.com>,=09Vitaly_Kuznetsov_<vkuznets@redhat.com>,?=
 =?iso-8859-2?Q?=09Liran_Alon_<liran.alon@oracle.com>,_kvm@vger.kernel.org?=
 =?iso-8859-2?Q?,=09linux-kernel@vger.kernel.org,_clang-built-linux@google?=
 =?iso-8859-2?Q?groups.com?=
x-originating-ip: [185.231.240.5]
x-clientproxiedby: HE1PR0902CA0035.eurprd09.prod.outlook.com
 (2603:10a6:7:15::24) To PR2PR08MB4649.eurprd08.prod.outlook.com
 (2603:10a6:101:18::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b52511f6-026a-44a8-9d68-08d706e6b2bd
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:PR2PR08MB4858;
x-ms-traffictypediagnostic: PR2PR08MB4858:|PR2PR08MB4858:
x-microsoft-antispam-prvs: <PR2PR08MB48581818FA56A2AC67EA1015C9F20@PR2PR08MB4858.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:SPM;SFS:(10019020)(396003)(39850400004)(366004)(376002)(346002)(136003)(199004)(189003)(9686003)(486006)(71190400001)(54906003)(86362001)(52116002)(229853002)(66476007)(11346002)(71200400001)(446003)(4326008)(476003)(66556008)(66946007)(66446008)(102836004)(6116002)(99286004)(64756008)(5660300002)(76176011)(1076003)(2906002)(66066001)(6246003)(3846002)(386003)(6506007)(7416002)(256004)(14444005)(6486002)(7736002)(33656002)(186003)(305945005)(25786009)(8936002)(8676002)(58126008)(81166006)(6436002)(6512007)(81156014)(36756003)(478600001)(14454004)(316002)(26005)(6916009)(68736007)(53936002)(30126002);DIR:OUT;SFP:1501;SCL:5;SRVR:PR2PR08MB4858;H:PR2PR08MB4649.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: virtuozzo.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DUHjzF8xn6KxWkFEtJ5fcjsBq87O+7SjGXhR071X24NjHdnOZnmEn1PML0JGZsfSGVR+1bficd/V85xq77HSpIpRF6TTre2IYwAqNS2r2bdlky8/nwNI1c1MPu2FLeBOwR9Vg3QXXVERUcGHnDg5CXO7HbpPrKd0S0yQjSdllJlaB7WX8fqXiMHt1m95/IVKCYYiI3KSpPu2tjxrM0duCmFsLfYmC0DXkVwX/ntBexctyPaMy8J8xBk6EsoyE6NDQoyPGmEoz8f0MaJR10CdSuDJVkRmFzw0yNhfIzAM7RT3Se+bT4S1IevcAZ93VTvjWxTZmGu/5+h0BzjkI9JV8i1buRIFz2aCNA4ky8XqokW6/SY5ibmPAE+keDWXkdvwLNf2O7hho2ZYC644Vic2C4XQ1ALPzEUry0kZuIP//WbxmuUMpySyzhXOIbHdYRAsBPJIIuL2h0HZl9Kf0vJ+bCqfcolHNZ6Adz8CqnPyX8OqK1F+ek0+XDv1MGdd87ya
Content-Type: text/plain; charset="UTF-8"
Content-ID: <2C580450432E7049A59CD5C781C455B1@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: virtuozzo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b52511f6-026a-44a8-9d68-08d706e6b2bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 16:33:40.9239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0bc7f26d-0264-416e-a6fc-8352af79c58f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rkagan@virtuozzo.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4858
X-Original-Sender: rkagan@virtuozzo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@virtuozzo.com header.s=selector1 header.b=Asnie40Y;       spf=pass
 (google.com: domain of rkagan@virtuozzo.com designates 52.101.140.244 as
 permitted sender) smtp.mailfrom=rkagan@virtuozzo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
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

On Fri, Jul 12, 2019 at 04:13:09PM +0200, Arnd Bergmann wrote:
> Clang notices a code path in which some variables are never
> initialized, but fails to figure out that this can never happen
> on i386 because is_64_bit_mode() always returns false.
> 
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'ingpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (!longmode) {
>             ^~~~~~~~~
> arch/x86/kvm/hyperv.c:1632:55: note: uninitialized use occurs here
>         trace_kvm_hv_hypercall(code, fast, rep_cnt, rep_idx, ingpa, outgpa);
>                                                              ^~~~~
> arch/x86/kvm/hyperv.c:1610:2: note: remove the 'if' if its condition is always true
>         if (!longmode) {
>         ^~~~~~~~~~~~~~~
> arch/x86/kvm/hyperv.c:1595:18: note: initialize the variable 'ingpa' to silence this warning
>         u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
>                         ^
>                          = 0
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'outgpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'param' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> 
> Flip the condition around to avoid the conditional execution on i386.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v3: reword commit log, simplify patch again
> v2: make the change inside of is_64_bit_mode().
> ---
>  arch/x86/kvm/hyperv.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)

Reviewed-by: Roman Kagan <rkagan@virtuozzo.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712163337.GC27820%40rkaganb.sw.ru.
