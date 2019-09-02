Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQ7HWPVQKGQECVBPKZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id D81B7A5458
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Sep 2019 12:49:40 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id a40sf7805431pla.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Sep 2019 03:49:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567421379; cv=pass;
        d=google.com; s=arc-20160816;
        b=hUnTPw6D7ui1Ws6+sC+szNjEVrECrPWkUe+r0jTz7bv7IpPjfBfDmMYf+18RFJFqSn
         yiajWQt9uU45HG18XV5UMdYV23Vve2V9Afyl2oNmZB6Ns6/2jrvqSxk/USae7vtTS4qr
         w4FAz3K6oCuR6WcESJTxFNu1nXPOE+xThEOKTJNhD5rEcjN4tUkz/uMeQQCUQ0wiNIrO
         7BHDaUz4ji3FmkN/xC2VCpZ2up7L4xntarykosrCWLzREPkqX19NZmlui7sypOhZAg2M
         Jj5OhxHMzE8eo+nAePCNSx/rVn9LBBm8gvPM0D057h7PU84yF7z/b91bL1J44zg96gxl
         jFTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R1uAl+WbsqbpQRQZzD4W5nRfzQNp5LiSesC8Pq8x/NA=;
        b=scf4y+UUkA0IBEZcZiuyvBWmA+HgikE3JSq9szmWYk6E89cKxxuH5QEObxMVPs6S0s
         GkQatpKabYOt+KQCHY8DNtT4Z+qzBKzRhlo2weu/+RsNne1CnpctEhdY3ziqhsKie4zO
         eIqAwQOlHYN1gVxXUiKhHd5ddNie4XLAzkep9zexDy8ak7J2trXb0mBdeFITfH3Xrqc2
         IqIJH7S1HCn0hfLh3xlRpebhc02Sgk6N4KJN3sZYr6A1hvw5D3ZG2Cx/0japF5GD9YAk
         Qyc0h4X0gZn50cQkOv94rronnMiiPTebK4r+IqG4fDeSiXsIjnPpGb2pu5Xoujj43kGP
         OJjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R1uAl+WbsqbpQRQZzD4W5nRfzQNp5LiSesC8Pq8x/NA=;
        b=fLHFSE5rPLQ4Fnk+s0xRe6sKNl1kpVEne20kDopsTJ3uTsBaEPkCs4IRhv2cUHZ86a
         vLEUWIv2evPOTU2GOQqxgL2xX8uCasX2Ay0X3cW4eF/QwiKJdjW+x6A4xmgCScZELkOM
         Rs0VUibygavurELplyGjAN23X6h6Mghzu938/mUjKKwdx7F/Vg18ocWGj+X0qLFYCtxC
         b8zOQj9hH/QWKN6BW/OL/Z8ejcEtjAaKrVB9qX90Hbb0xceF3bZnEhzks8h941C7ln7i
         UrafYrNLvbyXsUKDc8cmrOyr0I68c9RkIPeP05Zl/nXXpeGvUNJqF4o3YrlbRLirFozq
         zUeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R1uAl+WbsqbpQRQZzD4W5nRfzQNp5LiSesC8Pq8x/NA=;
        b=mhzdYSU37cWc89Kz6T9ULKYxK2TzGzFusIIwJiqiprrQLYPMPdKbmYJzRsXIXMwL+H
         oiYb2ZvizEh4nWWZbrdYDMTQyrZXHlRVE8dIlreAf1CuYYZMx7/aHSfeDcwkYHn8eW+b
         oYvGcsQxuwbcqbxd+OfnvGsG29RB+WLW7xQ/1cf3wtkPcQfGB/lCLwtneNFppOc7ACt3
         bdy8+jqrOi0QIFNEYO36/01faoMyCYSWLT4s5CnFEhLC7IgucRBDtAGjZFpcW4CFi3Zq
         IW07CdLVl4yWJJggotIMvLuZF5mV6JjhbndoyANVNOTV1kNTn+8WHgqu5leYoHyOk5c0
         ikvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXAKYRT1yd318PSSAFbP8EVKPEP463i8fVGisTIxg7MtEBbKjtG
	O9dbY49gW/8A6Xb9YDUCwmE=
X-Google-Smtp-Source: APXvYqwEeCGtRdNEXJrLs6QD2gQLzxj8U3HG+pRNSsCG3NlaWGEVqAbHgGusSifTJJjb1wqhMvv/pA==
X-Received: by 2002:a17:902:7d98:: with SMTP id a24mr11051129plm.271.1567421379402;
        Mon, 02 Sep 2019 03:49:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd0a:: with SMTP id p10ls1035862pls.4.gmail; Mon, 02
 Sep 2019 03:49:39 -0700 (PDT)
X-Received: by 2002:a17:902:a6:: with SMTP id a35mr30365239pla.130.1567421379068;
        Mon, 02 Sep 2019 03:49:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567421379; cv=none;
        d=google.com; s=arc-20160816;
        b=vjYEdwGnWt4TRfehxCBX0I6e7Isiv/yAfD6Iq7wCkeNMECXkoq2Nm4iynOTsFQvXrl
         TBKnKC/KDbE+NacTe9YBeUpWcdM4lSn7YRJ8Ufha6taABA0+Q4ab3Dztk+Xxs1aOvu2W
         DhMp0VyHTHnbajxmlGp5tPqyWOx33sY7PMWswL/W1baY8E7TSt9TL/c27nXa5WZjIhDz
         89vV6Dp33RLaFNqsJ+/IgSJq37Qquv4yczps/Weu4e9jCt9S2FooBDX21l3IofK3e/3V
         5JlMnIBjn2eGT5TXoL+84WRX2IFRLhBaFAidupPqT3W/HRtslL0hBKZ38ykgJhL7zfIe
         pWQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=PlwXOFRS6arPVxkBR1eiszoEgSiC3eKhb6DJtuzWYXI=;
        b=HvmUGSng5lhgWpaEPsRAGY8vMaAnLi3uBlU7KiGFJqqI7KraXm49gGdQ4kTRLVIWD3
         jjoE+TKKdL0tbD6uhMM0gB0L5ePBkbr2L85tZxFSWkhewz3NnXb3qoUrtOa5Ahn0FnDL
         aY4q3o/lbr5jzKNwL3Lb7hM5xTC6nA6ql4fGRQIO3pSQ3wqbOX4MKgQL/jcfDWCTwwbo
         N1cvBpDZn731BATkOrBgp13Eez4s/TTdut6MzWdFEkm+U4fkk15y/Orqo8oR3tsU2E0k
         eXDbMZvIiZi0k+ItKkyfSFd2XQ9+UteSs/eMDC1rT/q+YtOXc/tiAMNOgG6JsW/mSFzR
         N1GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id a18si674317pjo.1.2019.09.02.03.49.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Sep 2019 03:49:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Sep 2019 03:49:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; 
   d="gz'50?scan'50,208,50";a="186972084"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 02 Sep 2019 03:49:37 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i4jtx-0002MH-13; Mon, 02 Sep 2019 18:49:37 +0800
Date: Mon, 2 Sep 2019 18:48:53 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/4] regulator: provide regulator_bulk_set_supply_names()
Message-ID: <201909021805.A7LUL3hl%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mj6fpsngc3a2st3z"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--mj6fpsngc3a2st3z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
In-Reply-To: <20190830071740.4267-2-brgl@bgdev.pl>
References: <20190830071740.4267-2-brgl@bgdev.pl>
TO: Bartosz Golaszewski <brgl@bgdev.pl>
CC: Jens Axboe <axboe@kernel.dk>, Thierry Reding <thierry.reding@gmail.com>=
, Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, Kishon=
 Vijay Abraham I <kishon@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark=
 Brown <broonie@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, Greg =
Kroah-Hartman <gregkh@linuxfoundation.org>
CC: linux-ide@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vg=
er.kernel.org, linux-usb@vger.kernel.org, Bartosz Golaszewski <bgolaszewski=
@baylibre.com>

Hi Bartosz,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc6 next-20190830]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp improve the system]

url:    https://github.com/0day-ci/linux/commits/Bartosz-Golaszewski/regula=
tor-add-and-use-a-helper-for-setting-supply-names/20190901-140224
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f=
77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   aarch64-linux-gnu-ld: drivers/usb/phy/of.o: in function `regulator_bulk_=
set_supply_names':
>> of.c:(.text+0x0): multiple definition of `regulator_bulk_set_supply_name=
s'; drivers/amba/bus.o:bus.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: drivers/of/platform.o: in function `regulator_bulk=
_set_supply_names':
   platform.c:(.text+0x0): multiple definition of `regulator_bulk_set_suppl=
y_names'; drivers/amba/bus.o:bus.c:(.text+0x0): first defined here

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201909021805.A7LUL3hl%25lkp%40intel.com.

--mj6fpsngc3a2st3z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--mj6fpsngc3a2st3z--
