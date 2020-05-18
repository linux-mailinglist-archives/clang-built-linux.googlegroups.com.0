Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBKEWRH3AKGQETR6BWCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 933A31D732C
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 10:45:28 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id s13sf4198957ejc.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 01:45:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589791528; cv=pass;
        d=google.com; s=arc-20160816;
        b=P8cBHvmejtPTfwEfB4azNcxIdOUQir3Qv1k8FE2JRxa2O6yC3U/dRasqBNNtCcJabu
         nSEQyAJ8G5OXnPZqi6dOAJNw3FdHbLW6at8Kdh5WYSknQeK283vBTi6a6kqWRblWIQpB
         F68pRnqslMhTUzwiv8vlBdtwoMgQT1Bo5UTLL+50cgXcsSrQ4Wj0rOwc0JkfXZ3jDrFW
         Hs45Fe5+d1ATQbGADKbwP7eGVBLeS8Crtx9gwxMD9u4s+nXv/k1Cp0kvU2T72Q80DdFh
         OQnz/RoSeXPx0Cb7tEAgI4PdXzWxlvXw7RRAZJkkIjoG1xjFOrlAdwx+DrAN0/SU6QUt
         sFZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Yqz3DIANDzq2QihyS1/Taseg0JLLTaogWdIuUf+Hbds=;
        b=iU3zopRJ2Q2tJutkUrs6KWMmRwagvBd2ThRYntfwq9MYr9BvlyoqSqddXUGgyEzN2N
         TOjEhc1TNIXorD7IwSEpEqx8Ojxpgew4HK483qPztv+o5QpvuU9RiAdDPWmAFCAUZFnc
         FjhnaCTsENrcvuvw+0wUTqsAniHaMyHxIkSZ+YelkIGnWAUi2Ya79g+vea2N6TOMF9YK
         IlGkQMzDwi6zEjgUxxeEM1HWoUMPPkrGJqrHEoAvkaAERkYDilmQplBJIMWHAVxm+/c8
         G6eSa44wdRjgY2aFByKh2K3HA85cO6/gWaTb229rmiyie0Rb8J7idhAMfgLF3WlxkYnq
         AkVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LQz+8bQD;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yqz3DIANDzq2QihyS1/Taseg0JLLTaogWdIuUf+Hbds=;
        b=Rk1pgCHQX47CCMYhSlcTm8B+hbsrghMSv2fa9uhFGu4POPPA7Fe06xOUzqYvncJmul
         Cf2UFN3kDnhb7NRALe86Y49RtAGh5UsKKcioJpg5lQoMwBcztV1FbcZ+0gHltSr1WTMm
         o6PIqrkbKaYzgJHEGyINK/wLkeFQ9lDzhAggUH8BucFgoIXBnrhvM/mE/HV4gCTKe0c6
         Ney3P0YxuAy84dSSlCgYfLVsnucNbsvZfNOfuyTw3yDMer0+svXh8hZA2jAVkMKC/xI5
         frwoll6XZQ168vhjjiXi7f3oStXVA2jQTO0elKYG7NlcliKPk8k9az/zmZ3WFNOd1WMd
         l83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yqz3DIANDzq2QihyS1/Taseg0JLLTaogWdIuUf+Hbds=;
        b=snEdB+qT8U7GwpspXfXaHcdggt5aXf7RJ6se1unFugjQYJcVRrogyMxlIf4Ar+TS8I
         jnkR+GogCz7gq8T1Gx7E0thE5GO0q/0LxggmshC/doLktyjd7E/IIuT91jqXBXzI2Jec
         bykiLg0OGxttX53U7ZY/VYpK1mzXLZCQVn96jnL2NPmzq8z1senPf6VF6Qh+noF4Si7c
         36NmvWKHeMVXdDW612LV6Pz9/T12tiGB58MQeh3RtGSCKommL1D/kgNdCkzKwDNfyjkF
         c28q+6Quwu2e7Gld77EiN2eMmllB9p5JXP+fQjBdzZzeiktC53K+ihN6VHEQkXeMtfIE
         Y9CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hltA/k7r2SoZih3LXXXJz9uO4xLB7pBlRy8iG/o3w2WcdS4n6
	LBcvZdDq4Q8iBAbF0adp14A=
X-Google-Smtp-Source: ABdhPJxfOL6LqCtqUTB98lrTENCRxKCTPCj04OzAlomraMWex2zbTO9xrktg1OLOwjiiJzLMRMi6dQ==
X-Received: by 2002:a17:907:a98:: with SMTP id by24mr1952653ejc.365.1589791528262;
        Mon, 18 May 2020 01:45:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d2d2:: with SMTP id k18ls1295130edr.3.gmail; Mon, 18 May
 2020 01:45:27 -0700 (PDT)
X-Received: by 2002:aa7:d487:: with SMTP id b7mr1209631edr.351.1589791527762;
        Mon, 18 May 2020 01:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589791527; cv=none;
        d=google.com; s=arc-20160816;
        b=rVRW/QYDR5oZ+M9CJIYm6BxoHZazs3s5+0NBSDKhl8YEu9DiWfJPB0zJySXTG/anHH
         7/iSJXKIumrR2+1QkXk/jXeY0jN/AadN4R4cEuFcZOxu+y4DMMDUhhwPZNVyQNvR3kSm
         M3txAQNSY+09WwURSTvPkYGjHcn77VCa8fvfzZNIU+ayKIoPXl62i5UTk6GZQYXRQ0jl
         ypkflLHX9sjjOooMAXJnQ+GXpnVOctRNcjE+kYCcIoG7N3PgC8P7oGHTtyXoKIKrrxIO
         j4qinv0HEhZqY9Ui7RlUlG1NLRskaDqIKLkJPUwC7uCn/ZE4SL8dj47IX/YRUXFotuhS
         tIIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=lQcR7rc88qiFdQ3niJ5g2HFQDZypdi0sjdSAF5m+mXE=;
        b=pL5mGSuOctVg5mdYRvVUJ4uJBjPNXoakP6dASVgO/a+My1NGveBeQcoEIT3HsM/wni
         gvt4ARM1BJYTK+CrFGmqeyjo6GDlzfQAbcg7x1wgWhEP0o7bXnxayQl2BNanVdCXdfYC
         zVAR4cgylAVuPwGA3eMDlX+3nGLpYQRlNKeGsIhBFzjzV3f66WZ9SRIwKJbrwaQ1RjKt
         zR2LCvnTF0ac3EqsQB0mTJPaJ4k/XhMflz+YUafHKRj6Egu4u25+glf+1Cokc/PUXIXy
         JnPVvO+cVLwVGb27Q4IDeicnz0ASAVaqATYk7+eGVaENEpTv1aWGqZSyl6AW2UGzhP/m
         xo8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LQz+8bQD;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r26si418229edb.5.2020.05.18.01.45.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 01:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id z72so9333104wmc.2
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 01:45:27 -0700 (PDT)
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr17693264wml.19.1589791527362;
        Mon, 18 May 2020 01:45:27 -0700 (PDT)
Received: from dell ([2.31.163.63])
        by smtp.gmail.com with ESMTPSA id m13sm9266598wmi.42.2020.05.18.01.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 01:45:26 -0700 (PDT)
Date: Mon, 18 May 2020 09:45:25 +0100
From: Lee Jones <lee.jones@linaro.org>
To: kbuild test robot <lkp@intel.com>
Cc: Tomas Winkler <tomas.winkler@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] mfd: mfd_cell: constify platform_data
Message-ID: <20200518084525.GM271301@dell>
References: <20200516110609.22013-3-tomas.winkler@intel.com>
 <202005162129.QQOL64er%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202005162129.QQOL64er%lkp@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LQz+8bQD;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Sat, 16 May 2020, kbuild test robot wrote:

> Hi Tomas,
>=20
> I love your patch! Yet something to improve:
>=20
> [auto build test ERROR on ljones-mfd/for-mfd-next]
> [also build test ERROR on v5.7-rc5 next-20200515]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Tomas-Winkler/mfd-consti=
fy-pointers/20200516-190733
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-m=
fd-next
> config: arm-randconfig-r006-20200515 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 13d4=
4b2a0c7ef404b13b16644765977cd5310fe2)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>=20
> >> drivers/hid/hid-sensor-hub.c:738:33: error: initializing 'struct hid_s=
ensor_hub_device *' with an expression of type 'const void *' discards qual=
ifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
> struct hid_sensor_hub_device *hsdev =3D
> ^

Obviously this would need fixing before it can be considered.

> 1 error generated.
>=20
> vim +738 drivers/hid/hid-sensor-hub.c
>=20
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  726 =20
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  727  static void sensor_h=
ub_remove(struct hid_device *hdev)
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  728  {
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  729  	struct sensor_hub_d=
ata *data =3D hid_get_drvdata(hdev);
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  730  	unsigned long flags=
;
> e651a1da442ae02 Srinivas Pandruvada 2015-02-19  731  	int i;
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  732 =20
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  733  	hid_dbg(hdev, " har=
dware removed\n");
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  734  	hid_hw_close(hdev);
> f2f13a68c37c13a Axel Lin            2012-09-19  735  	hid_hw_stop(hdev);
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  736  	spin_lock_irqsave(&=
data->lock, flags);
> e651a1da442ae02 Srinivas Pandruvada 2015-02-19  737  	for (i =3D 0; i < d=
ata->hid_sensor_client_cnt; ++i) {
> e651a1da442ae02 Srinivas Pandruvada 2015-02-19 @738  		struct hid_sensor_=
hub_device *hsdev =3D
> e651a1da442ae02 Srinivas Pandruvada 2015-02-19  739  			data->hid_sensor_=
hub_client_devs[i].platform_data;
> e651a1da442ae02 Srinivas Pandruvada 2015-02-19  740  		if (hsdev->pending=
.status)
> e651a1da442ae02 Srinivas Pandruvada 2015-02-19  741  			complete(&hsdev->=
pending.ready);
> e651a1da442ae02 Srinivas Pandruvada 2015-02-19  742  	}
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  743  	spin_unlock_irqrest=
ore(&data->lock, flags);
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  744  	mfd_remove_devices(=
&hdev->dev);
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  745  	mutex_destroy(&data=
->mutex);
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  746  }
> 401ca24fb34aee0 srinivas pandruvada 2012-09-05  747 =20
>=20
> :::::: The code at line 738 was first introduced by commit
> :::::: e651a1da442ae02a50081e38309dea5e89da2d41 HID: hid-sensor-hub: Allo=
w parallel synchronous reads
>=20
> :::::: TO: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> :::::: CC: Jiri Kosina <jkosina@suse.cz>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Linaro Services Technical Lead
Linaro.org =E2=94=82 Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200518084525.GM271301%40dell.
