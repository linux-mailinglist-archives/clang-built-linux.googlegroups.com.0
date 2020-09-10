Return-Path: <clang-built-linux+bncBDFLHYPKYQGBBAUX5D5AKGQEQWHNTYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D60264544
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 13:18:27 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id a15sf1598243vso.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 04:18:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599736706; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWoHfxmed2JHKe5+XpQY1xFnE1zsxRV1u+udgmX+cM5+KzMt4KIakKQqqImG6Dq6mm
         f5L2nCc7PHIQPfl1tw8eJKNVIu+kbAu03WdhPtUy9BNXV/oYz3WmsXufJO/7gdQ6uu4Y
         FRxe+bAq3KmdU/4lo2y/adb+ygB89yl1PndIUzqvbXm01Ls3Mjg9DFuTuF9t9OKLVTmn
         3eKfaHT1yuQdMwXRm69m5edgQPzK3hNIrbcPC5Oxw6iCXQ3Imz8pgaD6mWap6pixFlLF
         FLDfsHRFfGPG9VfmtL8vlD0h/dFYamB+nz23YcVGd5dOWX9X30Z44DZp7EXpYaVjQ1pO
         4Ivg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=x4IlOCgdZH1xI91iD+TEpt73yVs93io5pQwORW78/ww=;
        b=R9Sf96DYsJUem6aTpQAidH4fNBT3XPQw+6bnTT9fV+JGGQqpVY/V5n/gClgeJrLmLM
         qt4SQMAAsY6bZQmaIkvSQdeOQ8i9shpUBZQM+OuAhgL97OcuQurdxhePivQslUUJHMay
         fefSKmpwEWlzCHf2AjtWF7RfOEyQ/27K8RIcfevC8cdO9LPpVOqyjk3/Jk2euRdrQDKR
         lFCXOL4qzfb4IKHNqzvNH0Wdx+DeBep05BvDdiaCuORyxavb0EUMe4vQNwmGtgrI5Z3h
         rn3TdKIfNio0vaj8lEqQpYwnFzPPEvM+KmQrC2pfIrSlN+m/QUwUeOEj1WarLh0M8OZS
         IASw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=liaJ0vn6;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x4IlOCgdZH1xI91iD+TEpt73yVs93io5pQwORW78/ww=;
        b=QkdpHWDDaxiyE6A5vT81HUFPn2i8SObK4abr8ZTCsvH6slEYK0DdF8bIEUF2SOqOkL
         pAW60iqgSyt1AsNniUlcce2ngr2iGbPk9sENFEXyJAr+rvA8ppwG+aZ7dIZNpoB65nwM
         Ajhsqo+XZUPSg3nOKpaeLrbEOceTUd+7cVSwVPXQL9h0wz2h5paajHiLU9RtsYvgrXX6
         mJVqx9ZkFkXd4sIBTqaideJ6E4Apgc3qfzUw9e1usZ3gkrx5UMAhpq/U3E7N+zLga+G6
         1Q714g4jSebchqWc9Q2CDHuAmYtgT05TDUtqbWbgl2o0sJAIsRlWvgj/twcMr5pkaU34
         6AGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x4IlOCgdZH1xI91iD+TEpt73yVs93io5pQwORW78/ww=;
        b=mE5EUxdXxsBeRNwE1qL3s3ZGyzHyWZIwHR6rqizDXGn0XVpe768frTneFx1FaR/Bdn
         wC1Y8aDMIdCnR6hZ6ocwrwQrHyga2YE1ZiKyiClIxLGkEIQy7vecSCYcl3K6mUgTpCKz
         h4XRi04dTag3zQwVypx9oIqRH4WBJbOhjHUMFFfQkFIej6G/gwg4w8l5L6byiYZCHQPV
         KK/pWn11jndE1UsSEL3RSJ5j9f5F6iiOO2Z5/RGdVQOpnvoEeZW8BA7tq4HMUS16dIdR
         wh/JY3cZ/eU8B1dZwSvBYRslVnhIKr6tC02CjJO0vf6YUNbJT3qm4d+dfXUJCpYsoPnT
         sWRw==
X-Gm-Message-State: AOAM530YArxzsqzduccCCcrRiwz6QOKl3YacEinLiZvFlACl5WagDZjO
	pxFh6UF1me4cUO7iMy7cw2w=
X-Google-Smtp-Source: ABdhPJxdjkYyFscUbHIAQsWjiedu5bp//XVh0c0Vo7WT1dthT8Yj8pUKq51Nut30C8vkGtfepddQaA==
X-Received: by 2002:ab0:2aa:: with SMTP id 39mr3394291uah.46.1599736706311;
        Thu, 10 Sep 2020 04:18:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ce11:: with SMTP id s17ls741442vsl.11.gmail; Thu, 10 Sep
 2020 04:18:25 -0700 (PDT)
X-Received: by 2002:a67:e991:: with SMTP id b17mr3698264vso.16.1599736705796;
        Thu, 10 Sep 2020 04:18:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599736705; cv=none;
        d=google.com; s=arc-20160816;
        b=GHwuk8sYqmVqHwVdLKCDgjjqfJEUC6zXzOTT0QRrmoXDzt2hjpMprs+vp82qKaCVR7
         22rt1NWccdirpAcBfk5fqOHGMh4pd3pdQhmvsT7TPo6O+brCt4d3MAH7hfGuZhxlQ23F
         M2S/A5pVNVPBgcqkT1A/eelBgmuyPomXztO5vYpUJ9dlkbUmxjo66n1qWaqnF2UJrUr9
         z+aRa/CoBg8IhyeIyWdYt5hg3vUlxvzWOcxPNaVSVLZbSAQMjlBco0rl3M2iXOqOvYuL
         j1NbQ5secP56DJ2WIX9Fd9gnxkadBHsc99Q3HY/0HgbuSq0kOAzzqvHmcQnvgOUCdXmt
         jcBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=AuQNbIL4FdLLFGfLb499c8DdKbAmwEKeoOA4d32G2LQ=;
        b=wDXqDFws7+5PtHdNf63NkrT7FtGL+imhUaouvbjgv03jjKKP/FtW8E0JgtWkCRS93S
         01eRVn77OVhkb9TEH3W1lkE5Nk3s0RZT0FAxdGkKCwKXtBxdNJNGmhG+s8FHrszyuutr
         dnrinHokjQ/2bf+Yv0T/mZHXH4ttAKoBfVvZwo/HHSKGcaVac+htCfVcIsVVBphJGMxI
         hb+C10L73zznKt/hNVpCsgE9k1AJDKaaJczncsQ8u4b1oUNHDvGVxCO8Okb13aU5Pofc
         tNkrpZ7WaVQ6DCdlE9v3azsOWll05dr6j5a50pVL57BV/uiTO+iqPPtF78O6bQVU9LTd
         D0Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=liaJ0vn6;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id t1si245933vsk.2.2020.09.10.04.18.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 04:18:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08ABIO0h004681;
	Thu, 10 Sep 2020 06:18:24 -0500
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08ABIOK3015727
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 10 Sep 2020 06:18:24 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 06:18:24 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 06:18:24 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08ABIMWm093974;
	Thu, 10 Sep 2020 06:18:23 -0500
Subject: Re: [linux-next:master 4238/6654] include/linux/dmaengine.h:1576:
 undefined reference to `dma_request_chan'
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
        Vinod
 Koul <vkoul@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
References: <202009101830.GfC9Ewv4%lkp@intel.com>
From: "'Peter Ujfalusi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-Pep-Version: 2.0
Message-ID: <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
Date: Thu, 10 Sep 2020 14:18:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <202009101830.GfC9Ewv4%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: peter.ujfalusi@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=liaJ0vn6;       spf=pass
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

Hi,

On 10/09/2020 13.46, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it master
> head:   7ce53e3a447bced7b85ed181c4d027e93c062e07
> commit: 7547dbd3b198f309aaff54e3528898a8a196faff [4238/6654] dmaengine: M=
ark dma_request_slave_channel() deprecated
> config: arm64-randconfig-r025-20200909 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5d=
c7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout 7547dbd3b198f309aaff54e3528898a8a196faff
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm64=20

I'm not sure what is wrong, but can not reproduce it with GCC.

>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>    aarch64-linux-gnu-ld: warning: -z norelro ignored
>    aarch64-linux-gnu-ld: fs/orangefs/orangefs-debugfs.o: in function `ora=
ngefs_debug_read':
>    fs/orangefs/orangefs-debugfs.c:375: undefined reference to `stpcpy'

Is this also caused by the blaimed patch?

>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_get_=
mode':
>    security/apparmor/lsm.c:1559: undefined reference to `stpcpy'
>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_get_=
audit':
>    security/apparmor/lsm.c:1530: undefined reference to `stpcpy'
>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o: in function `tty_line_name=
':
>    drivers/tty/tty_io.c:1139: undefined reference to `stpcpy'
>    aarch64-linux-gnu-ld: drivers/tty/tty_io.c:1139: undefined reference t=
o `stpcpy'
>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o:drivers/tty/tty_io.c:1139: =
more undefined references to `stpcpy' follow
>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.o: in function `lp=
uart_remove':
>    drivers/tty/serial/fsl_lpuart.c:2663: undefined reference to `dma_rele=
ase_channel'
>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.c:2666: undefined =
reference to `dma_release_channel'

#ifdef CONFIG_DMA_ENGINE
struct dma_chan *dma_request_chan(struct device *dev, const char *name);
#else
static inline struct dma_chan *dma_request_chan(struct device *dev,
						const char *name)
{
	return ERR_PTR(-ENODEV);
}
#endif

static inline struct dma_chan * __deprecated
dma_request_slave_channel(struct device *dev, const char *name)
{
	struct dma_chan *ch =3D dma_request_chan(dev, name);

	return IS_ERR(ch) ? NULL : ch;
}

And in the included config we have:
# CONFIG_DMADEVICES is not set
CONFIG_DMA_ENGINE=3Dy



>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.o: in function `lp=
uart_request_dma':
>    drivers/tty/serial/fsl_lpuart.c:1513: undefined reference to `dma_requ=
est_chan'
>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.c:1521: undefined =
reference to `dma_request_chan'
>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.o: in function `lp=
uart_dma_shutdown':
>    drivers/tty/serial/fsl_lpuart.c:1690: undefined reference to `dma_rele=
ase_channel'
>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.c:1692: undefined =
reference to `dma_release_channel'

My patch cerainly not touching the dma_release_channel related functions...

>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.o: in function `lp=
uart_request_dma':
>    drivers/tty/serial/fsl_lpuart.c:1513: undefined reference to `dma_requ=
est_chan'
>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.c:1521: undefined =
reference to `dma_request_chan'
>    aarch64-linux-gnu-ld: drivers/spi/spi-pxa2xx-dma.o: in function `dma_r=
equest_slave_channel':
>>> include/linux/dmaengine.h:1576: undefined reference to `dma_request_cha=
n'
>    aarch64-linux-gnu-ld: drivers/spi/spi-pxa2xx-dma.o: in function `dma_r=
equest_slave_channel_compat':
>>> include/linux/dmaengine.h:1595: undefined reference to `__dma_request_c=
hannel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-pxa2xx-dma.o: in function `dma_r=
equest_slave_channel':
>>> include/linux/dmaengine.h:1576: undefined reference to `dma_request_cha=
n'
>    aarch64-linux-gnu-ld: drivers/spi/spi-pxa2xx-dma.o: in function `dma_r=
equest_slave_channel_compat':
>>> include/linux/dmaengine.h:1595: undefined reference to `__dma_request_c=
hannel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-pxa2xx-dma.o: in function `pxa2x=
x_spi_dma_setup':
>    drivers/spi/spi-pxa2xx-dma.c:209: undefined reference to `dma_release_=
channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-pxa2xx-dma.o: in function `pxa2x=
x_spi_dma_release':
>    drivers/spi/spi-pxa2xx-dma.c:223: undefined reference to `dma_release_=
channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-pxa2xx-dma.c:228: undefined refe=
rence to `dma_release_channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-rockchip.o: in function `rockchi=
p_spi_probe':
>    drivers/spi/spi-rockchip.c:748: undefined reference to `dma_request_ch=
an'
>    aarch64-linux-gnu-ld: drivers/spi/spi-rockchip.c:759: undefined refere=
nce to `dma_request_chan'
>    aarch64-linux-gnu-ld: drivers/spi/spi-rockchip.c:788: undefined refere=
nce to `dma_release_channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-rockchip.c:785: undefined refere=
nce to `dma_release_channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-rockchip.o: in function `rockchi=
p_spi_remove':
>    drivers/spi/spi-rockchip.c:816: undefined reference to `dma_release_ch=
annel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-rockchip.c:818: undefined refere=
nce to `dma_release_channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-sprd.o: in function `sprd_spi_dm=
a_release':
>    drivers/spi/spi-sprd.c:580: undefined reference to `dma_release_channe=
l'
>    aarch64-linux-gnu-ld: drivers/spi/spi-sprd.o:drivers/spi/spi-sprd.c:58=
3: more undefined references to `dma_release_channel' follow
>    aarch64-linux-gnu-ld: drivers/spi/spi-sprd.o: in function `sprd_spi_dm=
a_request':
>    drivers/spi/spi-sprd.c:555: undefined reference to `dma_request_chan'
>    aarch64-linux-gnu-ld: drivers/spi/spi-sprd.c:564: undefined reference =
to `dma_request_chan'
>    aarch64-linux-gnu-ld: drivers/spi/spi-sprd.c:570: undefined reference =
to `dma_release_channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-sprd.o: in function `sprd_spi_dm=
a_release':
>    drivers/spi/spi-sprd.c:580: undefined reference to `dma_release_channe=
l'
>    aarch64-linux-gnu-ld: drivers/spi/spi-sprd.c:583: undefined reference =
to `dma_release_channel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-uniphier.o: in function `uniphie=
r_spi_probe':
>    drivers/spi/spi-uniphier.c:716: undefined reference to `dma_request_ch=
an'
>    aarch64-linux-gnu-ld: drivers/spi/spi-uniphier.c:725: undefined refere=
nce to `dma_get_slave_caps'
>    aarch64-linux-gnu-ld: drivers/spi/spi-uniphier.c:734: undefined refere=
nce to `dma_request_chan'
>    aarch64-linux-gnu-ld: drivers/spi/spi-uniphier.c:743: undefined refere=
nce to `dma_get_slave_caps'
>    aarch64-linux-gnu-ld: drivers/spi/spi-uniphier.o: in function `uniphie=
r_spi_remove':
>    drivers/spi/spi-uniphier.c:773: undefined reference to `dma_release_ch=
annel'
>    aarch64-linux-gnu-ld: drivers/spi/spi-uniphier.c:775: undefined refere=
nce to `dma_release_channel'
>    aarch64-linux-gnu-ld: drivers/usb/class/usblp.o: in function `ieee1284=
_id_show':
>    drivers/usb/class/usblp.c:1084: undefined reference to `stpcpy'
>=20
> # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?id=3D7547dbd3b198f309aaff54e3528898a8a196faff
> git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git=
/next/linux-next.git
> git fetch --no-tags linux-next master
> git checkout 7547dbd3b198f309aaff54e3528898a8a196faff
> vim +1576 include/linux/dmaengine.h
>=20
>   1560=09
>   1561	int dma_async_device_register(struct dma_device *device);
>   1562	int dmaenginem_async_device_register(struct dma_device *device);
>   1563	void dma_async_device_unregister(struct dma_device *device);
>   1564	int dma_async_device_channel_register(struct dma_device *device,
>   1565					      struct dma_chan *chan);
>   1566	void dma_async_device_channel_unregister(struct dma_device *device=
,
>   1567						 struct dma_chan *chan);
>   1568	void dma_run_dependencies(struct dma_async_tx_descriptor *tx);
>   1569	#define dma_request_channel(mask, x, y) \
>   1570		__dma_request_channel(&(mask), x, y, NULL)
>   1571=09
>   1572	/* Deprecated, please use dma_request_chan() directly */
>   1573	static inline struct dma_chan * __deprecated
>   1574	dma_request_slave_channel(struct device *dev, const char *name)
>   1575	{
>> 1576		struct dma_chan *ch =3D dma_request_chan(dev, name);
>   1577=09
>   1578		return IS_ERR(ch) ? NULL : ch;
>   1579	}
>   1580=09
>   1581	static inline struct dma_chan
>   1582	*dma_request_slave_channel_compat(const dma_cap_mask_t mask,
>   1583					  dma_filter_fn fn, void *fn_param,
>   1584					  struct device *dev, const char *name)
>   1585	{
>   1586		struct dma_chan *chan;
>   1587=09
>   1588		chan =3D dma_request_slave_channel(dev, name);
>   1589		if (chan)
>   1590			return chan;
>   1591=09
>   1592		if (!fn || !fn_param)
>   1593			return NULL;
>   1594=09
>> 1595		return __dma_request_channel(&mask, fn, fn_param, NULL);
>   1596	}
>   1597=09
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
clang-built-linux/b2bfc310-481e-92c5-9426-74395b24c4be%40ti.com.
