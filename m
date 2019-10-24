Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPNVY3WQKGQE4RH5ZOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F14A0E3279
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 14:36:15 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id u9sf1344639ybb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 05:36:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571920575; cv=pass;
        d=google.com; s=arc-20160816;
        b=plwbIZm1KctbsbhtR3vH+E6M0sJBMs2F/palYz4xq2AGpqValxQKcD4ll6nhPMO7FB
         vGdMRxsY6XqmgmQQ86R6lpyBR+Qpc6hL+Ycu2xuEVAC93jlefP0t9f5roOEHtcdr4asK
         PjnHQksJ4Jqin6PlgvOXb4TFYMcVxZxfM1YlQHkRtxplT+T3uc4wpADtl+nxMVLbbBG+
         1gcxuLMy8iwWiwA/ZYTJsWRdchaG/wHa6vjXV+W4WdBnIDOfNCocuUIC/D1FRpw7EtOE
         S1iNApr39MKAW3gXfaXINaXqa2M5+grMOOp+4FhwZ8g62sCH+dFgt2IRvWQ1pN0nSlnZ
         6WfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eTzK3hkExYTIUGBMN0V9+ijN+1fgmycy9kmRWP5KzDk=;
        b=COgKR+Vo5kuSJqC1cZjANveEk38+arLWPWPK/wP5hXruAOjQ7US0Uzh80JSoyza5NC
         Zx/DbSaaV7ubdFlyPw40qDjV4gVy43lMjSnOJ3KNuiUVkzne90pc0fHjK+Jms3KeXT3z
         YeEcOzBWWRA4FwWhemq25G5+GmocLF9Kxho7oM9/6EveRU1nZ+Uc/8fNfEKqYfESoJ2a
         wuAOS+/T9KP2lJdip54EJxG5tyMpEpS8W6lCCxL0RauZBZtiyUYVOI2Li35MGItmlPUa
         OPW33A1BzLXEw6+geNBh55492hSmOSMHKdfLxVQ5uXxSE17wnwc6IyNkBvtiC8DV9xK0
         bR9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eTzK3hkExYTIUGBMN0V9+ijN+1fgmycy9kmRWP5KzDk=;
        b=G11kGSCo8ZUs/wImDWuT367huK0rfJRmcTRbPlacTT94YkfZV3Nj/8ImTrF30KH+Sy
         0vr3fk4JPEfG+Q+1cm9gBuTM2Leztk3PxE/7A/WtLMNlM6ic6hA+Xhs58NyPdLRWrK82
         d6ks28CiO7IcWTe3VqNHJeznBbMlpuOUv+2R5e/cQlx2sjHY6n/iF+VThdFNxt2iL0eM
         3oY1GcfzBfALUhNUWb5+VpGd6OM53CwG9GLfxM/2CLPsuFF+k+kkveIq+8FKxGndMzYk
         wBRTHXWWJw4BP3DcPeT5qNzLN2y3KyKPsb5pl3jKAWRqR7ru5tI+b+4GRGg4sAiYI43y
         a3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eTzK3hkExYTIUGBMN0V9+ijN+1fgmycy9kmRWP5KzDk=;
        b=r+nxCuModBHxUUNCC/jiE/2FEq/rZ8tFYbUA42kAKGKm/8/1ElTTTzupZBJDD4nOoi
         jAEk8R+jo2gGB+VcODYzRiPPRY7woAwDHdlyB+T3QmLIYbZEvqIIQ6fp9EkcCeyVujPj
         kvH6JGuhOtFQwzxl8G95hgVRTjRba0R9I+cwbI1FDuY6lmR6mlULg/bWhZrmI1PVdHAh
         AQpDvz1te3Ejzq7AXMeSyQe+91wjMwH2i3HsllZW+SR1wcsCA/bzL/2VKkwC0qJqg1ZI
         2Yq9D7NLauWZDJ9vOPXPEISC9PUys5+6BOXbICrdYDiiM9zA83B2KcqH64QV4Xt+1L/3
         kFFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQf/247FXobB2LLbEiqv6ToNEYQ+2910MNZIJdI38j+hBike4u
	+j+QtGq9tfGB6zLiXYd178c=
X-Google-Smtp-Source: APXvYqxi3XDTExs9OCbHltGu3HQz6hnTrbJzClfjX5ZrvtaRyTT16dbLvAn9ICGZgflZGb7ON8u7OQ==
X-Received: by 2002:a9d:3df7:: with SMTP id l110mr10947806otc.245.1571920573761;
        Thu, 24 Oct 2019 05:36:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls1641363oig.8.gmail; Thu, 24
 Oct 2019 05:36:13 -0700 (PDT)
X-Received: by 2002:aca:55c1:: with SMTP id j184mr4657449oib.105.1571920573227;
        Thu, 24 Oct 2019 05:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571920573; cv=none;
        d=google.com; s=arc-20160816;
        b=tOJvn14T3oQaSDSxBMHWqFZFa4jlmnvFgfeqij0peySb+zbiPe3u/NVA5WB2rS4uZo
         /Aua+abY2Mv0Xp25FhQNGWBMvfV2UYJwzmfdJ8cCLNZwvz66boy4L0+3Ne28NhGz9YjB
         mz59upBSCoqHKJV1+xJyBFg9kcsEna+aJLlyOqw/LD9Y2SRXeszRuSJ3qaRNgl46l6zV
         MIPRWq1crCUVgIMeFNUfYvm3XeheiZLI33kL/7+IPKfdlIXabPIYvKR4Qn9+/ZxRbxMK
         x9bZtDwHNXiTxFXhCg2coEXNjHSRAZBnBBGXCkDZuJrNZ1yBZcx72PL9IWCxHR1M+MQN
         GzNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=7FKGrgV+DuJHU9Du4RR83SkXo7OEZ8viD4ll7Z0EJ1I=;
        b=AYyNx+iC5ZOqTp+D3HcWowyWwD1icJ2XEcrseFFBz7I+1gOxK6Q7L+OWKfzsp2Dgc0
         6tqMzp9kqt3p6fUbx2Dxayed6T1+n7U10D9ZUPCA0+OgVeq3IkCoCw28W5F0uhxDYGWm
         DR2d/+CTR2clVLX+T79m+q5ULuvM7d/H/TFQqkwVjCMqofEsCTVkej3FqloC+CdvBwHQ
         tcTWA0fw0AwbzZhXD3nz3K38uE0Ffmdj0Kn3yJ/brjS8K45yr+e3y5FOyj3Nbs8r8Z++
         85d6jRq4a+EWyiS30BGsoWgO/hahNgQdwfkAdt6Vst7JwzPeAVxWpCZ8gsP6Mn2JoxDS
         EbmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id n49si77503ota.2.2019.10.24.05.36.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 05:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 05:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; 
   d="gz'50?scan'50,208,50";a="201461976"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 24 Oct 2019 05:36:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iNcLY-000HUD-9I; Thu, 24 Oct 2019 20:36:08 +0800
Date: Thu, 24 Oct 2019 20:35:28 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mmc: block: remove unused variable
Message-ID: <201910242037.AovPgKJZ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="57vjtog5cq2ugyir"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--57vjtog5cq2ugyir
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191022130036.23877-1-sudipm.mukherjee@gmail.com>
References: <20191022130036.23877-1-sudipm.mukherjee@gmail.com>
TO: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
CC: Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, Cha=
otian Jing <chaotian.jing@mediatek.com>, linux-mmc@vger.kernel.org, Sudip M=
ukherjee <sudipm.mukherjee@gmail.com>, linux-kernel@vger.kernel.org, Chaoti=
an Jing <chaotian.jing@mediatek.com>, linux-mmc@vger.kernel.org, Sudip Mukh=
erjee <sudipm.mukherjee@gmail.com>
CC: linux-kernel@vger.kernel.org, Chaotian Jing <chaotian.jing@mediatek.com=
>, linux-mmc@vger.kernel.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>

Hi Sudip,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.4-rc4]
[cannot apply to next-20191024]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Sudip-Mukherjee/mmc-block-=
remove-unused-variable/20191024-181650
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
13b86bc4cd648eae69fdcf3d04b2750c76350053
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project bf869683c3f268=
27853e3c34d3c4a337069928fe)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/mmc/core/block.c:618:44: error: use of undeclared identifier 'st=
atus'
                   err =3D ioctl_rpmb_card_status_poll(card, &status, 5);
                                                            ^
   drivers/mmc/core/block.c:622:16: error: use of undeclared identifier 'st=
atus'
                                           __func__, status, err);
                                                     ^
   2 errors generated.

vim +/status +618 drivers/mmc/core/block.c

775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  470 =20
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  471  st=
atic int __mmc_blk_ioctl_cmd(struct mmc_card *card, struct mmc_blk_data *md=
,
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  472  		=
	       struct mmc_blk_ioc_data *idata)
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  473  {
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  474  	s=
truct mmc_command cmd =3D {}, sbc =3D {};
c7836d1593b87c drivers/mmc/core/block.c Masahiro Yamada 2016-12-19  475  	s=
truct mmc_data data =3D {};
c7836d1593b87c drivers/mmc/core/block.c Masahiro Yamada 2016-12-19  476  	s=
truct mmc_request mrq =3D {};
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  477  	s=
truct scatterlist sg;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  478  	i=
nt err;
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  479  	u=
nsigned int target_part;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  480 =20
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  481  	i=
f (!card || !md || !idata)
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  482  		=
return -EINVAL;
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  483 =20
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  484  	/=
*
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  485  	 =
* The RPMB accesses comes in from the character device, so we
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  486  	 =
* need to target these explicitly. Else we just target the
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  487  	 =
* partition type for the block device the ioctl() was issued
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  488  	 =
* on.
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  489  	 =
*/
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  490  	i=
f (idata->rpmb) {
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  491  		=
/* Support multiple RPMB partitions */
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  492  		=
target_part =3D idata->rpmb->part_index;
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  493  		=
target_part |=3D EXT_CSD_PART_CONFIG_ACC_RPMB;
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  494  	}=
 else {
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  495  		=
target_part =3D md->part_type;
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  496  	}
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  497 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  498  	c=
md.opcode =3D idata->ic.opcode;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  499  	c=
md.arg =3D idata->ic.arg;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  500  	c=
md.flags =3D idata->ic.flags;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  501 =20
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  502  	i=
f (idata->buf_bytes) {
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  503  		=
data.sg =3D &sg;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  504  		=
data.sg_len =3D 1;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  505  		=
data.blksz =3D idata->ic.blksz;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  506  		=
data.blocks =3D idata->ic.blocks;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  507 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  508  		=
sg_init_one(data.sg, idata->buf, idata->buf_bytes);
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  509 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  510  		=
if (idata->ic.write_flag)
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  511  		=
	data.flags =3D MMC_DATA_WRITE;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  512  		=
else
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  513  		=
	data.flags =3D MMC_DATA_READ;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  514 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  515  		=
/* data.flags must already be set before doing this. */
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  516  		=
mmc_set_data_timeout(&data, card);
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  517 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  518  		=
/* Allow overriding the timeout_ns for empirical tuning. */
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  519  		=
if (idata->ic.data_timeout_ns)
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  520  		=
	data.timeout_ns =3D idata->ic.data_timeout_ns;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  521 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  522  		=
if ((cmd.flags & MMC_RSP_R1B) =3D=3D MMC_RSP_R1B) {
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  523  		=
	/*
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  524  		=
	 * Pretend this is a data transfer and rely on the
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  525  		=
	 * host driver to compute timeout.  When all host
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  526  		=
	 * drivers support cmd.cmd_timeout for R1B, this
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  527  		=
	 * can be changed to:
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  528  		=
	 *
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  529  		=
	 *     mrq.data =3D NULL;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  530  		=
	 *     cmd.cmd_timeout =3D idata->ic.cmd_timeout_ms;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  531  		=
	 */
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  532  		=
	data.timeout_ns =3D idata->ic.cmd_timeout_ms * 1000000;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  533  		=
}
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  534 =20
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  535  		=
mrq.data =3D &data;
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  536  	}
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  537 =20
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  538  	m=
rq.cmd =3D &cmd;
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  539 =20
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  540  	e=
rr =3D mmc_blk_part_switch(card, target_part);
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  541  	i=
f (err)
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  542  		=
return err;
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  543 =20
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  544  	i=
f (idata->ic.is_acmd) {
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  545  		=
err =3D mmc_app_cmd(card->host, card);
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  546  		=
if (err)
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  547  		=
	return err;
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  548  	}
4d6144de8ba263 drivers/mmc/card/block.c Johan Rudholm   2011-11-23  549 =20
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  550  	i=
f (idata->rpmb) {
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  551  		=
sbc.opcode =3D MMC_SET_BLOCK_COUNT;
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  552  		=
/*
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  553  		=
 * We don't do any blockcount validation because the max size
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  554  		=
 * may be increased by a future standard. We just copy the
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  555  		=
 * 'Reliable Write' bit here.
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  556  		=
 */
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  557  		=
sbc.arg =3D data.blocks | (idata->ic.write_flag & BIT(31));
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  558  		=
sbc.flags =3D MMC_RSP_R1 | MMC_CMD_AC;
a44f7cb937321d drivers/mmc/core/block.c Wolfram Sang    2018-11-26  559  		=
mrq.sbc =3D &sbc;
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  560  	}
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  561 =20
a82e484e248058 drivers/mmc/card/block.c Yaniv Gardi     2013-06-05  562  	i=
f ((MMC_EXTRACT_INDEX_FROM_ARG(cmd.arg) =3D=3D EXT_CSD_SANITIZE_START) &&
a82e484e248058 drivers/mmc/card/block.c Yaniv Gardi     2013-06-05  563  	 =
   (cmd.opcode =3D=3D MMC_SWITCH)) {
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  564  		=
err =3D ioctl_do_sanitize(card);
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  565 =20
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  566  		=
if (err)
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  567  		=
	pr_err("%s: ioctl_do_sanitize() failed. err =3D %d",
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  568  		=
	       __func__, err);
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  569 =20
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  570  		=
return err;
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  571  	}
775a9362b5d7e0 drivers/mmc/card/block.c Maya Erez       2013-04-18  572 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  573  	m=
mc_wait_for_req(card->host, &mrq);
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  574 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  575  	i=
f (cmd.error) {
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  576  		=
dev_err(mmc_dev(card->host), "%s: cmd error %d\n",
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  577  		=
				__func__, cmd.error);
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  578  		=
return cmd.error;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  579  	}
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  580  	i=
f (data.error) {
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  581  		=
dev_err(mmc_dev(card->host), "%s: data error %d\n",
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  582  		=
				__func__, data.error);
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  583  		=
return data.error;
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  584  	}
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  585 =20
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  586  	/=
*
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  587  	 =
* Make sure the cache of the PARTITION_CONFIG register and
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  588  	 =
* PARTITION_ACCESS bits is updated in case the ioctl ext_csd write
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  589  	 =
* changed it successfully.
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  590  	 =
*/
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  591  	i=
f ((MMC_EXTRACT_INDEX_FROM_ARG(cmd.arg) =3D=3D EXT_CSD_PART_CONFIG) &&
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  592  	 =
   (cmd.opcode =3D=3D MMC_SWITCH)) {
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  593  		=
struct mmc_blk_data *main_md =3D dev_get_drvdata(&card->dev);
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  594  		=
u8 value =3D MMC_EXTRACT_VALUE_FROM_ARG(cmd.arg);
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  595 =20
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  596  		=
/*
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  597  		=
 * Update cache so the next mmc_blk_part_switch call operates
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  598  		=
 * on up-to-date data.
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  599  		=
 */
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  600  		=
card->ext_csd.part_config =3D value;
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  601  		=
main_md->part_curr =3D value & EXT_CSD_PART_CONFIG_ACC_MASK;
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  602  	}
a0e9576634f0bc drivers/mmc/core/block.c Bastian Stender 2018-03-08  603 =20
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  604  	/=
*
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  605  	 =
* According to the SD specs, some commands require a delay after
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  606  	 =
* issuing the command.
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  607  	 =
*/
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  608  	i=
f (idata->ic.postsleep_min_us)
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  609  		=
usleep_range(idata->ic.postsleep_min_us, idata->ic.postsleep_max_us);
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  610 =20
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  611  	m=
emcpy(&(idata->ic.response), cmd.resp, sizeof(cmd.resp));
cb87ea28ed9e75 drivers/mmc/card/block.c John Calixto    2011-04-26  612 =20
97548575bef38a drivers/mmc/core/block.c Linus Walleij   2017-09-20  613  	i=
f (idata->rpmb) {
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  614  		=
/*
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  615  		=
 * Ensure RPMB command has completed by polling CMD13
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  616  		=
 * "Send Status".
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  617  		=
 */
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06 @618  		=
err =3D ioctl_rpmb_card_status_poll(card, &status, 5);
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  619  		=
if (err)
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  620  		=
	dev_err(mmc_dev(card->host),
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  621  		=
			"%s: Card Status=3D0x%08X, error %d\n",
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  622  		=
			__func__, status, err);
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  623  	}
8d1e977da82ebd drivers/mmc/card/block.c Loic Pallardy   2012-08-06  624 =20
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  625  	r=
eturn err;
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  626  }
a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter      2015-09-22  627 =20

:::::: The code at line 618 was first introduced by commit
:::::: 8d1e977da82ebd1defd44d085edc2c0140aecc2a mmc: card: Add RPMB support=
 in IOCTL interface

:::::: TO: Loic Pallardy <loic.pallardy-ext@stericsson.com>
:::::: CC: Chris Ball <cjb@laptop.org>

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
clang-built-linux/201910242037.AovPgKJZ%25lkp%40intel.com.

--57vjtog5cq2ugyir
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
1t6ZIhcqyKtRTKzFZ6W9spFjVP4XYkmKXS4WAwA=

--57vjtog5cq2ugyir--
