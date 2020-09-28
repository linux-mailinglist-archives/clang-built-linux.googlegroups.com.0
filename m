Return-Path: <clang-built-linux+bncBDFLHYPKYQGBB4NAY35QKGQEOHB5MUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF03727A88E
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 09:27:46 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id k18sf5139849oou.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 00:27:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601278065; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kt5H0BzIT5DLFBl+iBa6it9DwqqaexhorrtcJL7zfWNQo0Igefy9YlWW18GDRpzJL5
         EETgBKK21Zna/YqKs9cGgeF/rRpwTEUPOH9VMQ07defKOIH3KFSG//Vmpt2ZIysY8Snv
         O4DSPvT5/JoQK0JmJU79KXjBCV20aedipfCSp7p8Ad5sxUXUgpGIixG8CcHOqeibLKbD
         v8Ibci1nhfkE+p/voRdL/LtLo8zDoFwE/lKScIxvOZ0Qi9hE6sOAXbDq5jgr5ISPhtWX
         VnERCtUin/sCzicc1WYZRjw8jYQlnFlb652hUb3bzYvZRdsN11BUgDxD16lgDBTGOh3R
         Pn5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=mTyM54nF1OyHjcC8mjqISvqaPuDjgTHgzc/UCFQW33o=;
        b=DbZlDR3Xi4U89cdlFzl2SikOzjbk725gChsKx/PsOLnwuyUPn7t6em7sNJ1nfYf9rB
         i09AAD/d6onznoWvZ4D1tk5H4pt+fBJvieQZzn0XySNqK0H2Gr9YjoFQb5FRWc/peUul
         s/26sUeD8CnsqOkzhtoP65xvBwgxcZ6NYVG535sM8yh1S8e9Swok9c2p9y8LjroQB8jB
         wiquxV32Bql0GH1hLnCVoQmt/dIOv6K7MwPxlJ90UfXp+99p2Lza7DrgA6lF8Bm1Hu9+
         IG28J1EafjQcmjp4BRCm/iU9+vlkSxP59XJeDp3pdp2xZF4j9SVV6SnqI9SAy7gMU9Nz
         jOxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=e1qAVQdp;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mTyM54nF1OyHjcC8mjqISvqaPuDjgTHgzc/UCFQW33o=;
        b=P0kQC3JxU64ya9obeE79Q4Euja2mnVYbMpJ237KdR3Ar/OHt00qAAd8cZHcuKWsZsB
         ISCf7obDtXrsMp5T2baoHfU2FKS2pWQk+mT9Tp7ADpZFOmW4Ui9S6LLhM01Z+75gIO2s
         bhbim7dLR5aWQqg8lcFqEWSVXVVe8j0mRl1ySJjvZwNoVBXOl3DBpUEwmqDzO9uRIGjm
         cUHzGWurv24T8CW2FfiLhsPY6MG1p+0VP80lc/HAp4OL8zVG+KzpMgRcsYfzEwNIRg0I
         m8yTaemuDn3bTpt2X3atJ4peGrts1H/30O+V6N1OZcgeDtXt9uB8fUeDQlTTBFcXmOvr
         nJlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mTyM54nF1OyHjcC8mjqISvqaPuDjgTHgzc/UCFQW33o=;
        b=iO0CeDR1MEuHeMfkJ4TCdbuGhn6HLgKZO/gLqkmGGE0Qlf5ZrYoyj8KSP7i5tkDrFx
         vYmtxsWPEmvykt5fZqjy9jMeXaySNbvXx6WcwWv87Q+4gXYTsBX2/mTRHZ7tmW064Cvw
         5xcVtcoQJoO2LecJP3GGc/w/KmYC3D+GaqXTi88fRL8KNuGW3voFrPhBobNuFHQ1Sb/O
         DISJZLX53JL3NUUv39PQekCdB97ZcbRY3WGya2mI+DMxHp0ts9HiOlULuWlkytUcm5QL
         TXE3rxS4ZaGPmgFCvzQ62I6QA2pvQSlzEYelx/jxsThhc0SqUWKTFMYL5I0qBSHPHVP5
         o1GQ==
X-Gm-Message-State: AOAM533iOa7K/xRhcjghmGuQ3hUZ+GBbWlCHJ8E1dohVz3F6aCyZr6qG
	nX9p/GTAbCjEwEZDgggXq0Y=
X-Google-Smtp-Source: ABdhPJxIWdvMnmSIWSN0NskuG7pXrSQF13m+cpj4XU1s2MgFSiHK3Wbn7pina+3u3qUEwSyAmEAN2w==
X-Received: by 2002:a9d:4d0:: with SMTP id 74mr104533otm.119.1601278065434;
        Mon, 28 Sep 2020 00:27:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4d2:: with SMTP id s18ls37149otd.0.gmail; Mon, 28
 Sep 2020 00:27:45 -0700 (PDT)
X-Received: by 2002:a9d:241:: with SMTP id 59mr104860otb.151.1601278065074;
        Mon, 28 Sep 2020 00:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601278065; cv=none;
        d=google.com; s=arc-20160816;
        b=unJYJ0lc4Rv8kOFhkOnm3DTOHdCeng3wf0zMSqDFsE0sf7sfijCsbpBJei/n/sZFKs
         K7tOvL7Mgx1sgdwtiSpKjolvuzo10WpPwFdHfP2SlAtQIH/ZyAhtpMtBqxlBUp3Mjia1
         t+OK4Bygx7RhvoevbRC6ksjWd/w80B+zNRf691xkXkDqTWzL5z4PUf5299r1ce+qZEOk
         cUcFXxHDINn3ejiy/UI0KxsdMnBGCsBWHznW+AeHvAJXUArtSZ92OcMyuQ1F+y1gpTpe
         PEepMEA7BcqrqOEqk07hmWuzL3nPCkQGZSStE0Oia7WOGPejvW/PDBc0TrhbOCAzBDHY
         dEDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=t2xZIzE5nCl075Nnf08l0R3sMqtDPH99mtG1NhcRZU8=;
        b=ickkguRbV9EP648H9UoGFN9OE7Xq3JzWr4OMxypz6fs7A9xA3eIEWJE85abFIkJjTu
         9Apza6yOmZEExNh6lyOziR8dZYNVxFywfnicTdwo83ABMYsvAkrOn2+2bQtDvxQWPsGd
         Mrr3FLlwpqU7ZzZb8txOm09dX/rDQIMAI3yP6s9PXYrzWCwiiyeWLCVJSo8cUdhj5ZyU
         hm9iwaiSIysw3zq/suJpuAfNj9TA69MecNGl+7Pbgs5zDv7Md4wORKJDsFQsqbGySXow
         YpWJhyEhKmUhN1xNgeVd0l3uM8d3aydMx1ntQGFTYaVEIk/56XqhxFE7CXYYTewh5MdP
         mpgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=e1qAVQdp;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id k7si16861oif.3.2020.09.28.00.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 00:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08S7RiZ9025024;
	Mon, 28 Sep 2020 02:27:44 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08S7Rimn098755
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 28 Sep 2020 02:27:44 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 28
 Sep 2020 02:27:44 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 28 Sep 2020 02:27:44 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08S7RgSg036259;
	Mon, 28 Sep 2020 02:27:43 -0500
Subject: Re: sound/soc/ti/j721e-evm.c:528:34: warning: unused variable
 'j721e_audio_of_match'
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
        <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
References: <202009271553.4OjMpGkX%lkp@intel.com>
From: "'Peter Ujfalusi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-Pep-Version: 2.0
Message-ID: <76cae106-b643-57a9-e82e-48e46ebf1b70@ti.com>
Date: Mon, 28 Sep 2020 10:27:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <202009271553.4OjMpGkX%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: peter.ujfalusi@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=e1qAVQdp;       spf=pass
 (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as
 permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
X-Original-From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reply-To: Peter Ujfalusi <peter.ujfalusi@ti.com>
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



On 27/09/2020 10.27, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   a1bffa48745afbb54cb4f873bba783b2ae8be042
> commit: 6748d05590594837e42dfa975879fb275099f0b2 ASoC: ti: Add custom mac=
hine driver for j721e EVM (CPB and IVI)
> date:   3 months ago
> config: x86_64-randconfig-r033-20200927 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a83e=
b048cb9a75da7a07a9d5318bbdbf54885c87)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git/commit/?id=3D6748d05590594837e42dfa975879fb275099f0b2
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/=
git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 6748d05590594837e42dfa975879fb275099f0b2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>>> sound/soc/ti/j721e-evm.c:528:34: warning: unused variable 'j721e_audio_=
of_match' [-Wunused-const-variable]
>    static const struct of_device_id j721e_audio_of_match[] =3D {
>                                     ^
>    1 warning generated.

Right, in the attached .config:
# CONFIG_OF is not set

There must be a clean way to handle this without extensive ifedfery...

> vim +/j721e_audio_of_match +528 sound/soc/ti/j721e-evm.c
>=20
>    527=09
>  > 528	static const struct of_device_id j721e_audio_of_match[] =3D {
>    529		{
>    530			.compatible =3D "ti,j721e-cpb-audio",
>    531			.data =3D &j721e_cpb_data,
>    532		}, {
>    533			.compatible =3D "ti,j721e-cpb-ivi-audio",
>    534			.data =3D &j721e_cpb_ivi_data,
>    535		},
>    536		{ },
>    537	};
>    538	MODULE_DEVICE_TABLE(of, j721e_audio_of_match);
>    539=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

- P=C3=A9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/76cae106-b643-57a9-e82e-48e46ebf1b70%40ti.com.
