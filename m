Return-Path: <clang-built-linux+bncBCU737MMZYPBBMVNQTWAKGQECYLZDQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 723DEB540D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 19:24:03 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id a18sf3173540ybm.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 10:24:03 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568741042; cv=pass;
        d=google.com; s=arc-20160816;
        b=dr37BK7dIiiNp99r2gRtsxCWHDQSthdVkabkjpke5gBiMTvMl5BUAhxOVhXjLtrDGw
         PB2X3NbbXK4EiZRTepqbQ9IInv+o0biLTT6wvCdA7Q5aU9p1dtNSyxHeNP5APsqAROq2
         uAq9vEqh0betS44zTQurfT4RrwOMInL9mZQSmzXI+2G+hyzqfkxWT0xnAQLWtLCuqnjy
         b6rINRTbpwnoKiAG5qRhZQ5xKVinh1Ptykd+ZhxoyeOznAVWskDWOHlOvbYGcmDpo0CG
         xZ1+Ddg9yisCs3yz+7/reLT5kkc5LYlC2JE0XhkNu+XmKghLa1q6eD2e5y1GGzXttHsK
         bg7g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=yj05ooogyYi4oHqw8aGt+wV8G04vLVtPXtxztGouwQI=;
        b=FNVrFSvN8f+sHZ0mW9xI+7kRL9uemHhbcEyiim/I9nuF2QW+DxFTvsxsAt841qYwJe
         P4eLc2OXdGSQjRVnILOxPgO1VcWKawWPv+31HstplZ13Ff6ZeaT/pmiTwjbZovGlwflV
         mmPYoLfqZNAWyKJuMvpQ/IQyebQdEHP46NgAvsiyhKfs8t+V6q+xoI+ULXi60Z3WeCf1
         eytUaD5DNrg9zGmmvz6y7Re0Ld6pxmj/kCwCq1Yrx/8HJRgifosQzMev9bZQ77PoXUlV
         l55VkP+UGvQbMQsRXUYS/nkY4zXTnBGVFuzW6D7+/tKNziA6EqyPPDl+CXaZRZN2MdSZ
         9TrA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=3pRvxA0Z;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.70.53 is neither permitted nor denied by best guess record for domain of thomas.lendacky@amd.com) smtp.mailfrom=Thomas.Lendacky@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yj05ooogyYi4oHqw8aGt+wV8G04vLVtPXtxztGouwQI=;
        b=AZn3F20sWAvYNTyRh3MFRx2MFUBIbG1Ywk8T1VjT1CziThwC04UenYWO0aomW/FuhG
         X5UHokmmrLHempadC4AIYCVTERkouXnsdZZvhhHDigCp82MJWdLXUHQFjpO+sT8qi0Kl
         F6NDUjNAYvRi345UDJ2eTc0eFtwRsHwkE/399mEB65+HhWmCYvu5ML6IaaAWBkRFvL00
         yEVIefCMIjb8l1z3q7wdkN5quAZWqNluNx286QCDCDcb3WJgHBtDrTecxq/GcFsjGb2I
         oGC+vI+/PEWpUwurRpc1HD5CPjIooTR+T5+cV7SdL8EoGell92LFkVJJi+Gvdj3fe9AO
         jhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yj05ooogyYi4oHqw8aGt+wV8G04vLVtPXtxztGouwQI=;
        b=R6Zwbga6/M7dOuZI/CWsZd9O50jd6COmSZgJ3R7wV46LPENaZ3ZvNTKv6KDc28E6xi
         Ed5S5nLEp1l9iOnRPGDYyLWb3w2YezOQxHOIWNitPa7WhtQxf5L85V4ewI9fnVawyS1R
         UlQU4mdp+XfFY5zjEythRsxPIzt9NErteJMhOWrIc1vXYkm5I0WdnLZ3fwW1Xp0JMVuh
         wgNpdVpSXUzflB/Tb6kYgj/+MolvqZHhzPqdM87AE8/hMJbC1o7l3BoiEKXR45dZ7Eqc
         2bYdY1Ol67GO1pHq42Sfpt/O5ttfHXmycZIsR0QzV78nta/eSJme7mX3v7IbDgZ52GRQ
         qjwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUN32lLZc1deUBVhWov1YhwcPZ4bJw2k2br9JTcJyY/lB1CE6Qy
	BZqGo4BAiWxbB+55ddNIb88=
X-Google-Smtp-Source: APXvYqzE9+SqT02L0xNSqehajgGGeCKczpfiPzmitWzk+ZdLdxUjLZa07Au8nf6fREZQDTosXJyK1Q==
X-Received: by 2002:a81:6c57:: with SMTP id h84mr3041064ywc.282.1568741042280;
        Tue, 17 Sep 2019 10:24:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:148a:: with SMTP id 132ls711819ywu.16.gmail; Tue, 17 Sep
 2019 10:24:02 -0700 (PDT)
X-Received: by 2002:a81:83ce:: with SMTP id t197mr3588977ywf.6.1568741042012;
        Tue, 17 Sep 2019 10:24:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568741042; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5aprEFpSKYiv1cs+pUjQj0hD9AESLnDvKoDIY8wt7uFp3LHw5e6sNPQW+X3Q12Tf9
         iCqpnpJX48KQ8njZloqzMQQbSP7pugILLVMsmqq0TdNHc28ySZaa7z6A7ZhP5XiYsKFx
         a40IdO1hY0w4EIngLuDGFVDdIQbc/Y7gtJV54RIQeFqq5hJFUut/p+2dawRLPIlDBnf+
         xWrmlYvWsjOtVL9cyVRVdsTQnWxUY29RAQEfZNzqesF8ywU9DRV6QwYLtmW/BTVey7gd
         CWuULI0OVTMJzFXdwAB/FN65RH2TKirr8mWR4kxBbChusfNLKiceamRdYScl3l7Cc4OH
         x4Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=s8079Pa78PHSBv4iJTQldTkyNFS/lZ3NzF0DQ5aWr5w=;
        b=PQG83wSS5xXB7LK9Uk/uY8FA/VexLg3rGJ5ldv0Fbzsqf7BDPirlLM/rEdNTrW4EJc
         dCRnzT8n1o9VuY1iYiDspbVY/B+gO/tUilH/WhRff8JLjSKLTAsu3eutTnC+a8YeNN64
         DZHrDj0DEjV+hs+2Ffh8o3FDjGriQGExskBTn3V+FwiThY9tILX1d5n9ztM8b3GKGPlK
         nTnrYxgE5xHsHf46rRrMvBuIBHT/TyF9cwsfafbgUI9gscxLXVkUbJFEo+0cNGNYBbpm
         VXA2tp97AkJh/yMnAbaA7O/QTbbXfbKa5QH1Ta7mQ5QMJB800HvB9kEIlDXqz7DZgsDH
         hTsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=3pRvxA0Z;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.70.53 is neither permitted nor denied by best guess record for domain of thomas.lendacky@amd.com) smtp.mailfrom=Thomas.Lendacky@amd.com
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (mail-eopbgr700053.outbound.protection.outlook.com. [40.107.70.53])
        by gmr-mx.google.com with ESMTPS id i140si215794ybg.4.2019.09.17.10.24.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 10:24:01 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.70.53 is neither permitted nor denied by best guess record for domain of thomas.lendacky@amd.com) client-ip=40.107.70.53;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIw18SnzgscAeDOPwQcrAvenDZO/+d/oUhbHFNDFdVmszNBRj6xH+FcI1d7Fq0GIsBDEvu5hgQjqEM0N2kfj5AbpTbkasf3s5NMO1Ibc4X5BQowjRtH68CAA28LMPhZKraTqzqNaqmJKchiun4q7kDkKdRqPPxVIxfqrFmp8QoGpcUZ/Vox3NLAdF804u26evz37lKFPX2OZfVaOdKeFzBZ7Pbnw0R20mBTjnvYrA6Rkb1X7xLFvg+7S87+OGffWavFV6TOAQXXLiyuVUSPIKuUmbJTZ4jWY4k+BZlTeX8BG8diOBkYQJ+Qbf2dsTYhNvpoPkf9iJKP8nKMVgu03FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s8079Pa78PHSBv4iJTQldTkyNFS/lZ3NzF0DQ5aWr5w=;
 b=hXhnj7KfF9lwH2oBZ5qSmSK8KDh9rGgvBmfedjC3EdB6xojy9dQlOzjtZ/K5nE4eXEl20xkKdDwyUesAQCSUPpSNgrEfgg0Zz1F8lwjhucnXvASN4FB0svpY1y0Eg78JspzgGSutSTQeKB21tvrsTFzFp9LzsxPW6Fwlu8h+SMVMlfHqO0N9qMJ4Mv/hOa+NSXjsoDfF3oAxFjEqGtlJvvihbCgAf8arxVDuiYdDZRsEZMJXJxmbFRTLRUJqy+8XoF+OF0YLlq3qxItpe3lMqXVAEv2DnV01izGaFH2oGuvkRecTFWgAd04fzy5hIt0Za4+voDaWioqrsUfZUwfVbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB3628.namprd12.prod.outlook.com (20.178.199.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Tue, 17 Sep 2019 17:24:00 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::585:2d27:6e06:f9b0]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::585:2d27:6e06:f9b0%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 17:23:58 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Giuseppe Cavallaro
	<peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, Jose
 Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>
CC: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip
	<ilie.halip@gmail.com>, David Bolvansky <david.bolvansky@gmail.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: -Wsizeof-array-div warnings in ethernet drivers
Thread-Topic: -Wsizeof-array-div warnings in ethernet drivers
Thread-Index: AQHVbSoUswguwnQmjEqavzG+PPlsbqcwHwoA
Date: Tue, 17 Sep 2019 17:23:58 +0000
Message-ID: <c5028a69-38eb-6390-9db6-aa9e58f9b8e8@amd.com>
References: <20190917073232.GA14291@archlinux-threadripper>
In-Reply-To: <20190917073232.GA14291@archlinux-threadripper>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0074.namprd05.prod.outlook.com
 (2603:10b6:803:22::12) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.78.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 250a8052-ffd6-436d-5570-08d73b93d2e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:DM6PR12MB3628;
x-ms-traffictypediagnostic: DM6PR12MB3628:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR12MB362883BA2C894BE1B954B0F7EC8F0@DM6PR12MB3628.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:58;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(53754006)(199004)(189003)(6486002)(102836004)(478600001)(5660300002)(305945005)(186003)(7736002)(31686004)(31696002)(86362001)(6512007)(6306002)(476003)(6246003)(11346002)(36756003)(14444005)(4326008)(486006)(256004)(54906003)(2616005)(446003)(26005)(110136005)(53546011)(966005)(386003)(6436002)(14454004)(229853002)(6116002)(76176011)(7416002)(8936002)(99286004)(3846002)(64756008)(66556008)(66476007)(66946007)(52116002)(6506007)(66066001)(316002)(71190400001)(2906002)(81166006)(66446008)(71200400001)(8676002)(81156014)(25786009);DIR:OUT;SFP:1101;SCL:1;SRVR:DM6PR12MB3628;H:DM6PR12MB3163.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QvNfNIb35OrNrhRxSlwc6fcwQR+dl99L/PQCHH2DICDGebVAfcpG+QCyrBFvT6hXZdc83UV4K015g/1qTbjDNkufhBsDtghx7Ao2UlKJR6A4wcAuZPBbulMUcB9wqURbpV1B3yyQ9QVUsIBED8YME31JBW5RRwyPG+EBGxYpp+8hUHmReYgh0mppdhegNPUXWvuvrKX930fDMFdpIhZ+vGqTH4gNxA4v3wC+c5qiwtzuMXNTkTUutgWGP1XJzfXZshqj1fuoy97EKwj6D+otvHnyyF7+1Otj3flsqh3MMOT9c8yPpSrCyEStD02b25hcEMrCO+/PvjXzIFJ81ed1TUYxIwu1Ek9m7L0ua07Pdqz6aaM6wsqWErK12Xv70VyNsBouD8umyFnVmBqJ+U67OPCGBoDHUdeDPwlYd6rFOZM=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <E3E614633159794AA0A212A132120257@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 250a8052-ffd6-436d-5570-08d73b93d2e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 17:23:58.4850
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WNVXOqIDvVjTY+HcLGJwCMmnUPUcQlAsgmoCRtsQl0KsqNFlxifmOs0cDuFnr1hK1ppyX8Sf2OYZxbbDCwXDgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3628
X-Original-Sender: thomas.lendacky@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=3pRvxA0Z;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.70.53 is neither permitted nor denied by best guess
 record for domain of thomas.lendacky@amd.com) smtp.mailfrom=Thomas.Lendacky@amd.com
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

On 9/17/19 2:32 AM, Nathan Chancellor wrote:
> Hi all,
> 
> Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
> that tries to warn when sizeof(X) / sizeof(Y) does not compute the
> number of elements in an array X (i.e., sizeof(Y) is wrong). See that
> commit for more details:
> 
> https://github.com/llvm/llvm-project/commit/3240ad4ced0d3223149b72a4fc2a4d9b67589427
> 
> Some ethernet drivers have an instance of this warning due to receive
> side scaling support:
> 
> 
> ../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: warning: expression
> does not compute the number of elements in this array; element type is
> 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
> [-Wsizeof-array-div]
>         unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
>                                        ~~~~~~~~~~~~~~  ^
> ../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: note: place
> parentheses around the 'sizeof(u32)' expression to silence this warning
> 
> 
> ../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:537:36: warning:
> expression does not compute the number of elements in this array;
> element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned
> int') [-Wsizeof-array-div]
>         for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
>                                 ~~~~~~~~  ^
> ../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:537:36: note:
> place parentheses around the 'sizeof(u32)' expression to silence this
> warning
> 
> 
> ../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c:2329:49: warning:
> expression does not compute the number of elements in this array;
> element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned
> int') [-Wsizeof-array-div]
>         unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
>                                        ~~~~~~~~~~~~~~  ^
> ../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c:2329:49: note: place
> parentheses around the 'sizeof(u32)' expression to silence this warning
> 
> 
> What is the reasoning behind having the key being an array of u8s but
> seemlingly converting it into an array of u32s? It's not immediately

Probably because the ethtool functions that get and set the RSS key passes
the key buffer in as a u8 pointer.  Having said that, there's no reason
that any casting can't be done in the ethtool callback functions, if
needed (which I don't think it is, since the key buffer is used in
memcpy() calls), instead.

Thanks,
Tom

> apparent from reading over the code but I am not familiar with it so I
> might be making a mistake. I assume this is intentional? If so, the
> warning can be silenced and we'll send patches to do so but we want to
> make sure we aren't actually papering over a mistake.>
> Cheers!
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c5028a69-38eb-6390-9db6-aa9e58f9b8e8%40amd.com.
