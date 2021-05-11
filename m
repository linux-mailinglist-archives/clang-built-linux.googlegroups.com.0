Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIUX5OCAMGQEIFW5FKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A92D37AE61
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 20:23:31 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id s68-20020a372c470000b0290305f75a7cecsf312460qkh.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 11:23:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620757410; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z1OY9ldbbnAW5gc9dRB0AHD3Pl3AwZSE7RUqleRqwfXWdKiOPVzr2ydiNaF7GcSx3i
         Dz/u5Jcn3/ZcvBx30UR3B7VQlaqGe9jgFmup3FgH1A5SlVzjB/T08eeRhBV6DZiTbFS6
         T7mcp4RCLUxG3QH7kxohFFKQ/SlPLWYzPevwFQCYmrgZJZKUJtsBZP7wOXFDd05CCPIZ
         8b/lIjcrOylnUZ+orqNBFKlWccKhquTmOkFYcSJibVUtVs/IKXf4IUZfajypoDjkRr+A
         kj6g5y/xA4H1hfnOCce8hrQte16YxyIXmaxgPUjfGGdVp585h1j9uhxgueh/0JmXpGDD
         HoSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JYsN6oMoFTWUC/w+5VCFLln60iYRXStFZrX2LrPknzM=;
        b=rPq5gifLqNBSEc179IB0c33XHnN5tYZSvBrpAKE79rRGXzaS/ISHF6HJ9PJ1HB2z0Z
         r7nwTbXhPdu53XhKfhHW6ceNDmzCJz2fTFu+5G/6j4kmT39yHJo94cYXXJoC7r4TSlib
         lfVtpojTEvGECJaa8tsFsKcdPh5BYXwPCuZb8cnmEHdTRVJ+srePWMrWUcC69sTF0eIZ
         5nXnbczP5wj4Ap16lMV1RVJVlRZErabdyJVUHgAmPSO5E0u69Fwb0tZWuPaFPH8WXf2g
         4HwRSu9v2IkZfqJXOLhzKD8c5a6Os2ExsZeJYiMsbGSKPbqbiVP1x/LPFg8V4bTHnfOj
         RNUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=REuNwTXN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JYsN6oMoFTWUC/w+5VCFLln60iYRXStFZrX2LrPknzM=;
        b=tVJf4oRzHupedSi5XP8ptasKoeSbHJCWKGa1TxCmUx7ba/NPRTCSax16Ca4MMZ6NmM
         UD97lolakEibjk4bDDdCJ9mDzJ+re9G8lY+CoQVFUgtj1kcHrSG+EZw9teVVxXrxq22D
         XRAOfJ+YCZG9p/x6V11P23uYLmhg63Hma+yC+ozdyD9vsG1X+jF7uwjB4rhsLRauQl1n
         HenweNQEIuODBAtFIpzluD/hlwwlR2GTOHWp1z4tjYAPoXoIu60VyEWupWZiYo5z5mmt
         7dnA4R2JKH3nA6mGswI2kr1TOTILJU9+WfmCQzOkQ1BVSjokzbXcOwAKALeZsms89qK8
         3OdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JYsN6oMoFTWUC/w+5VCFLln60iYRXStFZrX2LrPknzM=;
        b=NrMlObtiigfJUwmrenNsn3Ze+tERRxvfAiIM53exuKUnQ8rTveK2sHVNeXXUCISZA6
         m7vj2p012e7orZHq+21/oI9Zuk8Z4R7Zz01Vij4eP3BjZOU6mABp9NKvWXtJaiQG3Vgd
         A2mG9CqHftpD9db6i+UA8YVfQQIQkX2vegD74Bh1M1XY1Al+mKg5VV0ri4PncO3IpUr/
         EtxyrtJj6si91jyLdZ3fn+kxhG2dziFWmU56BNrUxii+9ePG1zPCa7FwDoMJizd/YGNY
         KEEYR0xRkxI9YhGowIJqRbsO8FuJrH8/1D5LybcBw7e8Brr8u/UqKenZygxK3Mn0j/rs
         Bvpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532v3kvKPdHdYRMRTtFdpIzvzvVcO2hN1401PoxBTbHeUywpfl+u
	yFQMX34OeOpdDFxWDa7tECo=
X-Google-Smtp-Source: ABdhPJy9iq3SeWG6rQFAHMRca0oybIk/Igi3AUAJJ5jZYwFo8Sg1gg/scNWJ9oy61yAEJbFLaFKE4A==
X-Received: by 2002:a37:6410:: with SMTP id y16mr29535612qkb.463.1620757410604;
        Tue, 11 May 2021 11:23:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4a34:: with SMTP id n20ls5570091qvz.11.gmail; Tue, 11
 May 2021 11:23:30 -0700 (PDT)
X-Received: by 2002:a05:6214:b11:: with SMTP id u17mr30493388qvj.42.1620757410134;
        Tue, 11 May 2021 11:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620757410; cv=none;
        d=google.com; s=arc-20160816;
        b=b5v/y2AHkKwppBj9jHJMkK131atnhni1SfTnsJVW98XR83sbDRH+RaHIt7cds9TnbY
         5ltFeSbzNKWPJbu7BimnwuYTrSD3nxs+Yddi8Ulbq0WRc6xlMoUNEFvG8l8XSBtj6UPs
         2Zzmn0xqfayqIhlqwZMJdhrV+fJZLuIT7k6bcrFRAAiomWg1SPa1N68VtHON+zgHep4y
         cpUAdEDk3q7QclHj4vBixlAYsm7s1MMg8qB+VGn7O5rjHOugjmRGRcjjxxmGkUXXKn3z
         Qay4OCHDPqBSQEZ3oWCd4G321TRHHwp3CCvL7z9ZP9phcxhJtTidkORSNxSfw2jFBpnE
         gVhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=aLodmECLKXzkNWLOBu5/xRJO+E4pgKdH+P43+NuoNGc=;
        b=wdRAEP45G1Lq+h7ZXF0n1yWq/JJFlAQt6X6t1a9tyVmP0ECPxHA+RunMntr92F53b2
         tVg+935/L0WuOk05bKcL+nT23+g70/J7B/juUWKsN/AEFef/aTfLsV0QndIL8dCpq6xT
         Rw3Nk8KAO5ULrJNmgqZDkVnZ9ImmcrjaqsWAvve4Q/qWGf8KlU1FPUB61j2ueIdv+cWs
         X91nfkM4IARmEaDKaW+aLTjI2Zi+3/GrfUZ4UwZnDJs0ayP3u0CehqYfT0bm/GNFyxxL
         FyBZWabg4VFZhtFio5+4zcYrCrUC4vhU3i5wv8pFUwMOXr251phiW8Nn6LhXQ4nS4eFF
         qPJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=REuNwTXN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t65si1942876qke.7.2021.05.11.11.23.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 11:23:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9AAFB61207;
	Tue, 11 May 2021 18:23:28 +0000 (UTC)
Subject: Re: [broonie-misc:asoc-5.14 5/23]
 sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is
 uninitialized when used here
To: Mark Brown <broonie@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 kernel test robot <lkp@intel.com>, Yang Li <yang.lee@linux.alibaba.com>
References: <202105120137.4D1sa7ck-lkp@intel.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <ae8f5ec6-889b-8b42-fc05-96021af5918d@kernel.org>
Date: Tue, 11 May 2021 11:23:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <202105120137.4D1sa7ck-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=REuNwTXN;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/11/2021 10:59 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/misc.git asoc-5.14
> head:   ae062a711aa2485fc4f6fe48cdb7229c849f2568
> commit: 5f1b95d08de712327e452d082a50fded435ec884 [5/23] ASoC: q6dsp: q6afe: remove unneeded dead-store initialization

Mark, if it is not too late, please drop this commit. Nick pointed out 
on the review of this commit that commit 12900bacb4f3 ("ASoC: qcom: 
q6afe: remove useless assignments") in your tree already resolved this:

https://lore.kernel.org/r/CAKwvOdkXxyyLSTAaMsyeJ3jxCeAGY=9DxLZNX4DcvF=fmkx7mg@mail.gmail.com/

Having both commits in the tree causes port_id to be uninitialized. If 
it is too late, I can send a revert.

Cheers,
Nathan

> config: x86_64-randconfig-r006-20210511 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/broonie/misc.git/commit/?id=5f1b95d08de712327e452d082a50fded435ec884
>          git remote add broonie-misc https://git.kernel.org/pub/scm/linux/kernel/git/broonie/misc.git
>          git fetch --no-tags broonie-misc asoc-5.14
>          git checkout 5f1b95d08de712327e452d082a50fded435ec884
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is uninitialized when used here [-Wuninitialized]
>             stop->port_id = port_id;
>                             ^~~~~~~
>     sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable 'port_id' to silence this warning
>             int port_id;
>                        ^
>                         = 0
>     1 warning generated.
> 
> 
> vim +/port_id +1213 sound/soc/qcom/qdsp6/q6afe.c
> 
> a4ae3af59bd585 Srinivas Kandagatla 2018-05-18  1173
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1174  /**
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1175   * q6afe_port_stop() - Stop a afe port
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1176   *
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1177   * @port: Instance of port to stop
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1178   *
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1179   * Return: Will be an negative on packet size on success.
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1180   */
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1181  int q6afe_port_stop(struct q6afe_port *port)
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1182  {
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1183  	struct afe_port_cmd_device_stop *stop;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1184  	struct q6afe *afe = port->afe;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1185  	struct apr_pkt *pkt;
> 5f1b95d08de712 Yang Li             2021-04-25  1186  	int port_id;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1187  	int ret = 0;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1188  	int index, pkt_size;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1189  	void *p;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1190
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1191  	index = port->token;
> c54c1c5ee8e73b Dan Carpenter       2018-06-27  1192  	if (index < 0 || index >= AFE_PORT_MAX) {
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1193  		dev_err(afe->dev, "AFE port index[%d] invalid!\n", index);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1194  		return -EINVAL;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1195  	}
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1196
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1197  	pkt_size = APR_HDR_SIZE + sizeof(*stop);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1198  	p = kzalloc(pkt_size, GFP_KERNEL);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1199  	if (!p)
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1200  		return -ENOMEM;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1201
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1202  	pkt = p;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1203  	stop = p + APR_HDR_SIZE;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1204
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1205  	pkt->hdr.hdr_field = APR_HDR_FIELD(APR_MSG_TYPE_SEQ_CMD,
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1206  					   APR_HDR_LEN(APR_HDR_SIZE),
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1207  					   APR_PKT_VER);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1208  	pkt->hdr.pkt_size = pkt_size;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1209  	pkt->hdr.src_port = 0;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1210  	pkt->hdr.dest_port = 0;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1211  	pkt->hdr.token = index;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1212  	pkt->hdr.opcode = AFE_PORT_CMD_DEVICE_STOP;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18 @1213  	stop->port_id = port_id;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1214  	stop->reserved = 0;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1215
> 342a4f8ca12b1c Srinivas Kandagatla 2020-09-10  1216  	ret = afe_apr_send_pkt(afe, pkt, port, AFE_PORT_CMD_DEVICE_STOP);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1217  	if (ret)
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1218  		dev_err(afe->dev, "AFE close failed %d\n", ret);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1219
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1220  	kfree(pkt);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1221  	return ret;
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1222  }
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1223  EXPORT_SYMBOL_GPL(q6afe_port_stop);
> 7fa2d70f976657 Srinivas Kandagatla 2018-05-18  1224
> 
> :::::: The code at line 1213 was first introduced by commit
> :::::: 7fa2d70f976657111a5ea4f3d16a738ddaa10c4f ASoC: qdsp6: q6afe: Add q6afe driver
> 
> :::::: TO: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> :::::: CC: Mark Brown <broonie@kernel.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ae8f5ec6-889b-8b42-fc05-96021af5918d%40kernel.org.
