Return-Path: <clang-built-linux+bncBAABB7UHVSCQMGQE6SNMLJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B279F38DEF2
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 03:40:15 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id u13-20020a25f80d0000b029051d7fee31cfsf8064234ybd.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 18:40:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621820414; cv=pass;
        d=google.com; s=arc-20160816;
        b=AOaMqF2T4Hzla9CjEmHxqRtGsLDJo+cXGaZ2IPk4D4CB5L80IW+KJPBpfn8SIA8r1V
         r4Jp1VMWs6/XGD1Bhg3zl+drLCyGm9/frVPkLTX795CqYKj16w0zCjVNICMfUoaF4lYG
         gxsMjrO1JSfjRprWwMGiSC3WLrQvccTy5Wx1p23wcFRAoteReJl/jheMUKZVRRn3ntX0
         i+qG8VsOPDFJKLYututVwjRh7Qgq0eFgDVYfOSzi2ruNjgHOfzN/YyVFBJlm1trCC9Ry
         fG8VYuOUKkXYcf+QYgau9/R5bdSXQnBb+6Yb1kmoKSrmrF/dfRE0kluatRr5IXgHuiU7
         4u3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=t+s87k4h2jDntUbxFDyLZYWg6gihKgsJzcPiotIG4zw=;
        b=NEkkE4bO4BPk4hHM+HVvgzj8+dYiOv7MJOncOLTKMy0i1nMlYLVlBXd1NmogPbUnvr
         j7bAE5ym/LNGrace3qlRONrpkhWHFriZJWDyNlGe88UYQ22hIOur4LtYod58xrBLsUo0
         +djcY2VivS2P2KxHcu+lo1D2tAUom77wXc1urm10LmQeBizLHCSZ6Gqu/85LJeD5G/ga
         D4+YxXX1IpzPM150sQpeco/4EdwgvvNAVrXMEoeFQFKadDykz9kwnDZd4N5l7sid2Lld
         m8gJLGuMc0Vq4YyBuEvlUPzEphBE8MS7+1w2qKbxX/NuBzB9Nq8GQzFlwqbnubPayOHd
         swPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217 as permitted sender) smtp.mailfrom=huan.feng@starfivetech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t+s87k4h2jDntUbxFDyLZYWg6gihKgsJzcPiotIG4zw=;
        b=apJUxgxRXRE4xHF0qWoTV4Y4jlBBQwt0z/mOBG7zUENDwDw+2bYxue5YTES8Mqz4Pv
         rNlj7nqyEzFN6e8N5VoB/ASX5K8eZl+9hj16r/FUnk0+ebOWXUO6bSJZID2fxUqiDOZ4
         8exDdr5zbPuG5zsJGsP4g9KhNHPET7EbuigqdpAaRmVmRtDLkb/mlayn3pWf20XfnNX/
         TP2eIrVtwMj1hGww/kFKppVlZljlnZksQgXD4bhET13C9Qjwi9Ev2hZbSg0slhzv/lmo
         9OJI6wZUi7oZeU5fAdrVDLI3FoCVT7nW6jCoE/jBwk6LBZ0nXFmG5Av92g4BgTGFTIIu
         IJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t+s87k4h2jDntUbxFDyLZYWg6gihKgsJzcPiotIG4zw=;
        b=emYF+gj8cEVBwV19y1aoW6IW3jd7TXcSxV+5Mc0sluvo/yaVpc8gXqPfxHhsKB0Fz/
         HXmmCrP92Dw4JDUbcoQznHPpF0A68tIxJT7gVj6s8ERZbzG5WkcsyCopkEmsuIAdndY4
         XyE1gvoL9VyxH6AbzsoXp8tGLzX0A/4CJW8ao8yZn8jl8sfmHRcDVYVsC7sGE8+2U91P
         +TkOL8TW7Z91pvMthfBbQhkfdVcpGt/xkthNqsi24fazydm74I5a7FVyGIFqRdPbz2FZ
         Cdm8QA3wb+hYTqLNTP04m3gDsGOfny9QCGjsbPeYaJCG7MinQQyNVUfPFdlw9JQw1/ZD
         BhjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ECPXdHbJzTqJeTpVYa1fthGT08iKWxa5XQRDnU6uW+rJKNPYa
	wC5/xQdDjINNYY8K2ItNWXU=
X-Google-Smtp-Source: ABdhPJydI818zuJ3eID02kmq2lQFTyjsuHUM/4eKkfCiOSvRKEjhFvICdWePbQiAAJczSfK9RHfsEQ==
X-Received: by 2002:a25:a067:: with SMTP id x94mr33379708ybh.42.1621820414752;
        Sun, 23 May 2021 18:40:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls6356631ybo.10.gmail; Sun, 23 May
 2021 18:40:13 -0700 (PDT)
X-Received: by 2002:a25:d902:: with SMTP id q2mr25817994ybg.316.1621820413555;
        Sun, 23 May 2021 18:40:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621820413; cv=none;
        d=google.com; s=arc-20160816;
        b=zdgUZaqVQ5DgxUhs5r5OKY9981rBLP+PeUlYJdunrZ/vR0dhdj0p6uaiy5SHmEw9Wm
         9gpeXst3WQGzNpZ4FRPmmlj3702+ZAcaWzyvakdof5SdBDILcUI8BotUbgdsJxgRRF48
         Aa0tJ3ewXanGqxwB1sPwNYJeyo1dr+TGB0tQDv21uq+m1pUKA+lJd7FRGg5FTzcch4HX
         5bK51nGj7couJNCcRO9fW7aEXGMvA24CK9WBaP244geeUFS39gCvSrbcDPVI0um48nGp
         Uez0ybcqBS+p2DGM8tMHE1/Nll3IK6qrAf8wBrK+JyoftdXGLeuQHL4qDIMrLjlXqA+M
         mksg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from;
        bh=6BxBrGd9j4qW4Wurshugl3se66xeZqPpVu+Z0/uDDp0=;
        b=AB5bjxLNK1lJdTKJShsXgybvST44j/hoCt0OdiprmfyOLlmc/eoaAfGigkp3sgO2eE
         oFpW8UWmLlIjff5DG9Spbcj/RQ1awf25k9fB+z+23IEMeTRzCkMuhx3Re5WD6forGo+B
         ExI2xMQtX7nLHKWa/23XS445YWkstR93dH5VD4TlS6EQ7oK+H6mKotp7uBATC/Ne5l3A
         g6+ULcELK9Xmzl4fikpanLnJg5esit0L6LdmaICEY9QlE3TughEei15nAqYHNcfqU4P4
         e2hzPBr26Kz6Q3GO59p8Wg+l3Cr076+KCdG/xk+yM0vBiSrkLckHpjyvLCISjoFYWxBD
         8UkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217 as permitted sender) smtp.mailfrom=huan.feng@starfivetech.com
Received: from Mid217.euchost.com (static-ip-217-151-66-202.rev.dyxnet.com. [202.66.151.217])
        by gmr-mx.google.com with ESMTPS id q11si1152950ybu.0.2021.05.23.18.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 May 2021 18:40:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217 as permitted sender) client-ip=202.66.151.217;
Received: from ex01.ufhost.com (unknown [61.152.239.75])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by Mid217.euchost.com (Postfix) with ESMTPS id 1E09C21390
	for <clang-built-linux@googlegroups.com>; Mon, 24 May 2021 09:39:39 +0800 (CST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 7747324E1FF;
	Mon, 24 May 2021 09:40:08 +0800 (CST)
Received: from EXMBX064.cuchost.com (172.16.6.64) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Mon, 24 May
 2021 09:40:05 +0800
Received: from EXMBX166.cuchost.com (172.16.6.76) by EXMBX064.cuchost.com
 (172.16.6.64) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Mon, 24 May
 2021 09:40:05 +0800
Received: from EXMBX166.cuchost.com ([fe80::2dd5:9cd8:37df:1738]) by
 EXMBX166.cuchost.com ([fe80::2dd5:9cd8:37df:1738%16]) with mapi id
 15.00.1497.018; Mon, 24 May 2021 09:40:05 +0800
From: Huan Feng <huan.feng@starfivetech.com>
To: kernel test robot <rong.a.chen@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Emil Renner Berthing <kernel@esmil.dk>
Subject: Re: [stffrdhrn:starfive-bad-dcache-flush 4/39]
 drivers/char/hw_random/starfive-vic-rng.c:238:34: warning: unused variable
 'vic_rng_dt_ids'
Thread-Topic: [stffrdhrn:starfive-bad-dcache-flush 4/39]
 drivers/char/hw_random/starfive-vic-rng.c:238:34: warning: unused variable
 'vic_rng_dt_ids'
Thread-Index: AQHXUDg1AbA3um7+2Eq9hBSq0TEqLqrx2wCA
Date: Mon, 24 May 2021 01:40:05 +0000
Message-ID: <F687C5AA-DBE1-4892-A041-F1C6A3524B65@starfivetech.com>
References: <20210524005335.GL2687475@shao2-debian>
In-Reply-To: <20210524005335.GL2687475@shao2-debian>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.6.231]
x-yovoleruleagent: yovoleflag
Content-Type: multipart/mixed;
	boundary="_002_F687C5AADBE14892A041F1C6A3524B65starfivetechcom_"
MIME-Version: 1.0
X-Original-Sender: huan.feng@starfivetech.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217
 as permitted sender) smtp.mailfrom=huan.feng@starfivetech.com
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

--_002_F687C5AADBE14892A041F1C6A3524B65starfivetechcom_
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5D30735BC0C9454AA0398B2F901CF668@cuchost.com>
Content-Transfer-Encoding: quoted-printable

Hi:
	I can not get the source code from github.=20
	Starfive vic gpio and rng hardware is on Starfive vic7100 Soc, which is RI=
SCV ARCH. So maybe they are not used on other Soc or ARCH.
=09
	May be the attach patch file is usefull.

--=20

Best Regards,
=20
Huan Feng
E-mail: huan.feng@starfivetch.com
Mobile.: 18111603721
Address: ChengDu China

=EF=BB=BFOn 2021/5/24, 9:00 AM, "kernel test robot" <rong.a.chen@intel.com>=
 wrote:

    tree:   https://github.com/stffrdhrn/linux.git starfive-bad-dcache-flus=
h
    head:   a5c948a9cc2b8944f00056c067fb7bde19b34843
    commit: c9f02856ce72f3de501b56484ecdc71e261fdaa5 [4/39] drivers/hw_rand=
om: Add Starfive VIC Random Number Generator driver
    config: x86_64-randconfig-b001-20210522 (attached as .config)
    compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e8=
4a9b9bb3051c35dea993cdad7b3d2575638f85)
    reproduce (this is a W=3D1 build):
            wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
            chmod +x ~/bin/make.cross
            # install x86_64 cross compiling tool for clang build
            # apt-get install binutils-x86-64-linux-gnu
            # https://github.com/stffrdhrn/linux/commit/c9f02856ce72f3de501=
b56484ecdc71e261fdaa5
            git remote add stffrdhrn https://github.com/stffrdhrn/linux.git
            git fetch --no-tags stffrdhrn starfive-bad-dcache-flush
            git checkout c9f02856ce72f3de501b56484ecdc71e261fdaa5
            # save the attached .config to linux build tree
            COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64=20

    If you fix the issue, kindly add following tag as appropriate
    Reported-by: kernel test robot <lkp@intel.com>

    All warnings (new ones prefixed by >>):

    >> drivers/char/hw_random/starfive-vic-rng.c:238:34: warning: unused va=
riable 'vic_rng_dt_ids' [-Wunused-const-variable]
       static const struct of_device_id vic_rng_dt_ids[] =3D {
                                        ^
       1 warning generated.


    vim +/vic_rng_dt_ids +238 drivers/char/hw_random/starfive-vic-rng.c

    c9f02856ce72f3 Huan Feng 2021-01-08  237 =20
    c9f02856ce72f3 Huan Feng 2021-01-08 @238  static const struct of_device=
_id vic_rng_dt_ids[] =3D {
    c9f02856ce72f3 Huan Feng 2021-01-08  239  	{ .compatible =3D "starfive,=
vic-rng" },
    c9f02856ce72f3 Huan Feng 2021-01-08  240  	{ }
    c9f02856ce72f3 Huan Feng 2021-01-08  241  };
    c9f02856ce72f3 Huan Feng 2021-01-08  242  MODULE_DEVICE_TABLE(of, vic_r=
ng_dt_ids);
    c9f02856ce72f3 Huan Feng 2021-01-08  243 =20

    ---
    0-DAY CI Kernel Test Service, Intel Corporation
    https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/F687C5AA-DBE1-4892-A041-F1C6A3524B65%40starfivetech.com.

--_002_F687C5AADBE14892A041F1C6A3524B65starfivetechcom_
Content-Type: application/octet-stream; name="github_starfive.patch"
Content-Description: github_starfive.patch
Content-Disposition: attachment; filename="github_starfive.patch"; size=965;
	creation-date="Mon, 24 May 2021 01:40:05 GMT";
	modification-date="Mon, 24 May 2021 01:40:05 GMT"
Content-ID: <68D3950B8453DA46916FA49E58B11537@cuchost.com>
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9od19yYW5kb20vS2NvbmZpZyBiL2RyaXZlcnMvY2hh
ci9od19yYW5kb20vS2NvbmZpZwppbmRleCBlNTE3YTJmLi4wMzAzNmY2IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2NoYXIvaHdfcmFuZG9tL0tjb25maWcKKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRv
bS9LY29uZmlnCkBAIC0zMzcsOCArMzM3LDggQEAgY29uZmlnIEhXX1JBTkRPTV9QT1dFUk5WCgog
Y29uZmlnIEhXX1JBTkRPTV9TVEFSRklWRV9WSUMKIAl0cmlzdGF0ZSAiU3RhcmZpdmUgVklDIFJh
bmRvbSBOdW1iZXIgR2VuZXJhdG9yIHN1cHBvcnQiCisJZGVwZW5kcyBvbiBTT0NfU1RBUkZJVkVf
VklDNzEwMAogCWRlcGVuZHMgb24gSFdfUkFORE9NCi0JZGVmYXVsdCB5IGlmIFNPQ19TVEFSRklW
RV9WSUM3MTAwCiAJaGVscAogCSAgVGhpcyBkcml2ZXIgcHJvdmlkZXMga2VybmVsLXNpZGUgc3Vw
cG9ydCBmb3IgdGhlIFJhbmRvbSBOdW1iZXIKIAkgIEdlbmVyYXRvciBoYXJkd2FyZSBmb3VuZCBv
biBTdGFyZml2ZSBWSUMgU29DLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL0tjb25maWcgYi9k
cml2ZXJzL2dwaW8vS2NvbmZpZwppbmRleCAyMWM2MTFhLi5kZGFmMTU0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwaW8vS2NvbmZpZworKysgYi9kcml2ZXJzL2dwaW8vS2NvbmZpZwpAQCAtNTE3LDkg
KzUxNyw5IEBAIGNvbmZpZyBHUElPX1NJRklWRQoKIGNvbmZpZyBHUElPX1NUQVJGSVZFX1ZJQwog
CWJvb2wgIlN0YXJmaXZlIFZJQyBHUElPIHN1cHBvcnQiCisJZGVwZW5kcyBvbiBTT0NfU1RBUkZJ
VkVfVklDNzEwMAogCWRlcGVuZHMgb24gT0ZfR1BJTwogCXNlbGVjdCBHUElPTElCX0lSUUNISVAK
LQlkZWZhdWx0IHkgaWYgU09DX1NUQVJGSVZFX1ZJQzcxMDAKIAloZWxwCiAJICBTYXkgeWVzIGhl
cmUgdG8gc3VwcG9ydCB0aGUgR1BJTyBkZXZpY2Ugb24gU3RhcmZpdmUgVklDIFNvQ3MuCgo=

--_002_F687C5AADBE14892A041F1C6A3524B65starfivetechcom_--
