Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU7OZ3XAKGQE77U3ZQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id E580E1020B0
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 10:35:16 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id a200sf15602661ybg.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 01:35:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574156116; cv=pass;
        d=google.com; s=arc-20160816;
        b=lhe0rYDUIMhlD3tmh+fpZfTSIaIHipzKWentsFOIzNdiiJxMvGtToTOInjzAXC5nP/
         yNF9ZOFmdn48EJ+FtW/bA7FV/AsFOe5a1I9W/8KT1K17M1Pj+Qhjgb3ICql4NqKrXWNK
         rbJC1Rvkfa6jB8/JyJwsaEPgA90I7VIGqcTBewruHzMX1hcKxzR9IkffSNBO2pB2TaiG
         fOmAujplJxZXQkXQmI3n6h6D3fPoTrs/QXYJP8tCNokaiLgYpmntwvQ9Lg07GxJ1vXAw
         iy8XNL+64aLWqnDwuQoKtl/1qZoNwE7EaoE+OcuLC9HBgMLo4G/u4FVhHOmT/8q8MWIE
         wx8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vSD9e+OS8q+LxY8ptJIXAd0a8jgOLbiPCWtL9on1FEk=;
        b=xXoZMO5NMoq5Ms+bzNvuv8mq+RQU7awcUY05kJUrDWMpCqdSUNEMUWgHQ+z6t0tn2k
         9viefjj4Gi4Q+tA/C4Kl6ESFojso55bR/jAZjMuWuFnJ6ydxNdBFUXFoHoNyY90xnviZ
         oZo2dlZ2A5dP9YRPWLGoCmbuYlxDofUp5hUNgvIlLo9Lq0FkY0ETN8pEBtxJMfFBHpuL
         gnshEttkk1ZXQCBf9JLZHD7I/MiPxV9BHX4Qwy+7S4SinkwNsmB7pcG1bQI+1rBlmmG9
         DsM6cjg+dX+OG2rlp3vuzSd191p/MFBCn2oW5Cvzz+db6Xof1N+0q08gcAWNRMow1CTW
         ClKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vSD9e+OS8q+LxY8ptJIXAd0a8jgOLbiPCWtL9on1FEk=;
        b=pagy8dIbadujmMZGsHsJ5FgWh7u6+i+6HpsRKR++ebKjWVx0ymBTW4Xy4o4dwvwbyw
         MIJiLxo0w+WuqfBn07xKDeKgRmwnAq4AjvsSriQH1x9J7ihJ1IIRGHpAWscon60J7rLd
         BL4uK6ddwrshXwUYcGu6lHtvwccEOhzxsJ/6QuLeViWmDbvSJkQ9KzCa46zWTuQt12/a
         euSVlnUf2wD1r9NuEnTdthZcimA4KyiQeVaZ50sdqfeMsUclmUCYyrDj4SEmn3RUJGqM
         Ca7dvofZcshV3vh4ODaGel7O9qJQpoh7gopqM+Qd+OYf6U26joJoAc+Fjz7eoUJBA39s
         gYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSD9e+OS8q+LxY8ptJIXAd0a8jgOLbiPCWtL9on1FEk=;
        b=F2gFHhS8jptAjyIcD/7MekZz4JEzA9W+5E40eyKbiNZbwnPE15qxRLUWEIST8Fadls
         njXZNMIHMV38uaDAyui2zDPequ34Rv57yjhESrYSpvAwr9eXzy7qNthGS91S/rw6PacK
         I97yEWysaKYwK+5LG02FJ97lrKkepp/Aew/VFRjMQdErA7NM+sty302DmNbgx9WxPE+t
         ji98CqlCnqwDS6hkHa0qucRhqUcuc6x+qF5vwqUaACpJPWkRv8pCgdD8aboa9BmOUohn
         MV3QbcxwcN9d2iV1P7tW6h6GlSgMWn9wvQd8CX1FtDdW9UUB+Cm7ZFJN9JWB2DuyeiEe
         WuMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXyOCp0Ku41v1KVWZslnaQhf6GYHn/a8Z20odAG6fk6iUUGbMSk
	Fx3wCXP85xiS1z9KYp0bRMU=
X-Google-Smtp-Source: APXvYqydVsuUQVVoos/xAM6SHjdzNbEJXDow+IbBTTuVc4PafxPutDyIqxNwdX1ySe+v0y/mtmm1AA==
X-Received: by 2002:a25:16d6:: with SMTP id 205mr8139879ybw.114.1574156115756;
        Tue, 19 Nov 2019 01:35:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7910:: with SMTP id u16ls2687836ywc.9.gmail; Tue, 19 Nov
 2019 01:35:15 -0800 (PST)
X-Received: by 2002:a0d:d70f:: with SMTP id z15mr23908792ywd.23.1574156115171;
        Tue, 19 Nov 2019 01:35:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574156115; cv=none;
        d=google.com; s=arc-20160816;
        b=uLTt2mU11ednUWArw+24TMOqWM46VMVrVVbFEmRLdurDKD0c+L13yh0cBhSmhgfrI6
         tpYQ8W77ylEyIlThkrCCn0ESqGWo9aiYmfnxfx0LxHJDNJjCGHdeD/OymwM3Vg4EGxEf
         G2wbPRlsszc9WXSf13hVOFXyhUOW90Q1IGRyCpf63kTEKgBO6YY+MeNseGKYQXXspxJ8
         1lNrQ4ZUCeLkmHs6VzWaZ8KCucJ+kKzPCom8vMspPm4JCTX7t4fs5rsXqIf+3NFor0Wu
         vCfOnJdmFwn9kznbvH5Px0eoNz90QCQgJnpStrVgMeBWvurPhba9lu1EMJrqrp/8jzy5
         Q+RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=mLAhrIAkL9UfjqMqjEPKmgaE+XplUv1fH02/ctQZ3V0=;
        b=inzBHlxY42LhLxX5piDWSL5w1ufSp31Gi6NSN6qbnozidVR3XCx8hRLZSzGwC194Rn
         UPxXBrzEhGa1UyXKaTjS93jSjk+UHISWvxhZYqAIRoVMecC9Y7VOYJSkzG6RDm4OVqUA
         F0oGrysSo8xjP9cKa3MIFpdEqrtzbLkqVc3RR4LEtX6zfMQt4Yli1GigoJ1s7+Svixab
         lfA4U4y22AvBu3jyBlS36m06Ce5+hXPU1cVkv6MK+wEUVxd3oxQpGCx2y9QCbBl+22xe
         M0jc+veVuR2iN+nBs2JeIBhp3VbHOiGewfdA/21Y6HnpSnB/1ZrdG5Blqz6zt8sK2dV/
         C4lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id g82si1157021ywc.0.2019.11.19.01.35.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Nov 2019 01:35:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Nov 2019 01:35:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; 
   d="gz'50?scan'50,208,50";a="200291826"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 19 Nov 2019 01:35:11 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iWzug-0006Xu-MW; Tue, 19 Nov 2019 17:35:10 +0800
Date: Tue, 19 Nov 2019 17:34:24 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [acrn:mainline-tracking 889/1230]
 drivers/char/hw_random/optee-rng.c:216:41: error: implicit declaration of
 function 'to_tee_client_device'
Message-ID: <201911191721.r34rStmN%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5t2y62d5cins75sp"
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


--5t2y62d5cins75sp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Vincent Cao <vincent.t.cao@intel.com>
CC: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
CC: Jens Wiklander <jens.wiklander@linaro.org>

tree:   https://github.com/projectacrn/acrn-kernel mainline-tracking
head:   96ba0e9ad89d6f4602fca90955b7684717691348
commit: 3bf716b016e0cdda16fc89c2b859af52b8111c96 [889/1230] TEE/OPTEE: Adds a kernel internal TEE client interface
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 0213adde218530bc31e5c4e50b49704c6bb2f2e9)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 3bf716b016e0cdda16fc89c2b859af52b8111c96
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/char/hw_random/optee-rng.c:98:3: error: implicit declaration of function 'dev_err' [-Werror,-Wimplicit-function-declaration]
                   dev_err(pvt_data->dev, "TA_CMD_GET_ENTROPY invoke err: %x\n",
                   ^
   drivers/char/hw_random/optee-rng.c:105:3: error: implicit declaration of function 'dev_err' [-Werror,-Wimplicit-function-declaration]
                   dev_err(pvt_data->dev, "tee_shm_get_va failed\n");
                   ^
   drivers/char/hw_random/optee-rng.c:151:3: error: implicit declaration of function 'dev_err' [-Werror,-Wimplicit-function-declaration]
                   dev_err(pvt_data->dev, "tee_shm_alloc failed\n");
                   ^
   drivers/char/hw_random/optee-rng.c:195:3: error: implicit declaration of function 'dev_err' [-Werror,-Wimplicit-function-declaration]
                   dev_err(dev, "TA_CMD_GET_RNG_INFO invoke err: %x\n",
                   ^
>> drivers/char/hw_random/optee-rng.c:216:41: error: implicit declaration of function 'to_tee_client_device' [-Werror,-Wimplicit-function-declaration]
           struct tee_client_device *rng_device = to_tee_client_device(dev);
                                                  ^
>> drivers/char/hw_random/optee-rng.c:216:28: warning: incompatible integer to pointer conversion initializing 'struct tee_client_device *' with an expression of type 'int' [-Wint-conversion]
           struct tee_client_device *rng_device = to_tee_client_device(dev);
                                     ^            ~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/char/hw_random/optee-rng.c:229:34: error: incomplete definition of type 'struct tee_client_device'
           memcpy(sess_arg.uuid, rng_device->id.uuid.b, TEE_IOCTL_UUID_LEN);
                                 ~~~~~~~~~~^
   drivers/char/hw_random/optee-rng.c:216:9: note: forward declaration of 'struct tee_client_device'
           struct tee_client_device *rng_device = to_tee_client_device(dev);
                  ^
   drivers/char/hw_random/optee-rng.c:235:3: error: implicit declaration of function 'dev_err' [-Werror,-Wimplicit-function-declaration]
                   dev_err(dev, "tee_client_open_session failed, err: %x\n",
                   ^
   drivers/char/hw_random/optee-rng.c:248:3: error: implicit declaration of function 'dev_err' [-Werror,-Wimplicit-function-declaration]
                   dev_err(dev, "hwrng registration failed (%d)\n", err);
                   ^
>> drivers/char/hw_random/optee-rng.c:285:12: error: use of undeclared identifier 'tee_bus_type'
                   .bus            = &tee_bus_type,
                                      ^
>> drivers/char/hw_random/optee-rng.c:281:33: error: variable has incomplete type 'struct tee_client_driver'
   static struct tee_client_driver optee_rng_driver = {
                                   ^
   drivers/char/hw_random/optee-rng.c:281:15: note: forward declaration of 'struct tee_client_driver'
   static struct tee_client_driver optee_rng_driver = {
                 ^
>> drivers/char/hw_random/optee-rng.c:293:9: error: implicit declaration of function 'driver_register' [-Werror,-Wimplicit-function-declaration]
           return driver_register(&optee_rng_driver.driver);
                  ^
>> drivers/char/hw_random/optee-rng.c:298:2: error: implicit declaration of function 'driver_unregister' [-Werror,-Wimplicit-function-declaration]
           driver_unregister(&optee_rng_driver.driver);
           ^
   1 warning and 12 errors generated.
--
>> drivers/tee/optee/supp.c:90:25: error: no member named 'supp_nowait' in 'struct tee_context'
           if (!supp->ctx && ctx->supp_nowait)
                             ~~~  ^
   1 error generated.
--
>> drivers/tee/optee/device.c:73:31: error: invalid application of 'sizeof' to an incomplete type 'struct tee_client_device'
           optee_device = kzalloc(sizeof(*optee_device), GFP_KERNEL);
                                        ^~~~~~~~~~~~~~~
   drivers/tee/optee/device.c:70:9: note: forward declaration of 'struct tee_client_device'
           struct tee_client_device *optee_device = NULL;
                  ^
>> drivers/tee/optee/device.c:77:14: error: incomplete definition of type 'struct tee_client_device'
           optee_device->dev.bus = &tee_bus_type;
           ~~~~~~~~~~~~^
   drivers/tee/optee/device.c:70:9: note: forward declaration of 'struct tee_client_device'
           struct tee_client_device *optee_device = NULL;
                  ^
>> drivers/tee/optee/device.c:77:27: error: use of undeclared identifier 'tee_bus_type'
           optee_device->dev.bus = &tee_bus_type;
                                    ^
>> drivers/tee/optee/device.c:78:2: error: implicit declaration of function 'dev_set_name' [-Werror,-Wimplicit-function-declaration]
           dev_set_name(&optee_device->dev, "optee-clnt%u", device_id);
           ^
   drivers/tee/optee/device.c:78:28: error: incomplete definition of type 'struct tee_client_device'
           dev_set_name(&optee_device->dev, "optee-clnt%u", device_id);
                         ~~~~~~~~~~~~^
   drivers/tee/optee/device.c:70:9: note: forward declaration of 'struct tee_client_device'
           struct tee_client_device *optee_device = NULL;
                  ^
   drivers/tee/optee/device.c:79:25: error: incomplete definition of type 'struct tee_client_device'
           uuid_copy(&optee_device->id.uuid, device_uuid);
                      ~~~~~~~~~~~~^
   drivers/tee/optee/device.c:70:9: note: forward declaration of 'struct tee_client_device'
           struct tee_client_device *optee_device = NULL;
                  ^
>> drivers/tee/optee/device.c:81:7: error: implicit declaration of function 'device_register' [-Werror,-Wimplicit-function-declaration]
           rc = device_register(&optee_device->dev);
                ^
   drivers/tee/optee/device.c:81:7: note: did you mean 'tee_device_register'?
   include/linux/tee_drv.h:148:5: note: 'tee_device_register' declared here
   int tee_device_register(struct tee_device *teedev);
       ^
   drivers/tee/optee/device.c:81:36: error: incomplete definition of type 'struct tee_client_device'
           rc = device_register(&optee_device->dev);
                                 ~~~~~~~~~~~~^
   drivers/tee/optee/device.c:70:9: note: forward declaration of 'struct tee_client_device'
           struct tee_client_device *optee_device = NULL;
                  ^
   8 errors generated.

vim +/to_tee_client_device +216 drivers/char/hw_random/optee-rng.c

5fe8b1cc6a03c4 Sumit Garg        2019-01-29   69  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   70  #define to_optee_rng_private(r) \
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   71  		container_of(r, struct optee_rng_private, optee_rng)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   72  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   73  static size_t get_optee_rng_data(struct optee_rng_private *pvt_data,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   74  				 void *buf, size_t req_size)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   75  {
8deed847445a8f YueHaibing        2019-02-19   76  	int ret = 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   77  	u8 *rng_data = NULL;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   78  	size_t rng_size = 0;
56410c0cb43e26 Nathan Chancellor 2019-02-18   79  	struct tee_ioctl_invoke_arg inv_arg;
56410c0cb43e26 Nathan Chancellor 2019-02-18   80  	struct tee_param param[4];
56410c0cb43e26 Nathan Chancellor 2019-02-18   81  
56410c0cb43e26 Nathan Chancellor 2019-02-18   82  	memset(&inv_arg, 0, sizeof(inv_arg));
56410c0cb43e26 Nathan Chancellor 2019-02-18   83  	memset(&param, 0, sizeof(param));
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   84  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   85  	/* Invoke TA_CMD_GET_ENTROPY function of Trusted App */
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   86  	inv_arg.func = TA_CMD_GET_ENTROPY;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   87  	inv_arg.session = pvt_data->session_id;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   88  	inv_arg.num_params = 4;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   89  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   90  	/* Fill invoke cmd params */
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   91  	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   92  	param[0].u.memref.shm = pvt_data->entropy_shm_pool;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   93  	param[0].u.memref.size = req_size;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   94  	param[0].u.memref.shm_offs = 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   95  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   96  	ret = tee_client_invoke_func(pvt_data->ctx, &inv_arg, param);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   97  	if ((ret < 0) || (inv_arg.ret != 0)) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  @98  		dev_err(pvt_data->dev, "TA_CMD_GET_ENTROPY invoke err: %x\n",
5fe8b1cc6a03c4 Sumit Garg        2019-01-29   99  			inv_arg.ret);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  100  		return 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  101  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  102  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  103  	rng_data = tee_shm_get_va(pvt_data->entropy_shm_pool, 0);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  104  	if (IS_ERR(rng_data)) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @105  		dev_err(pvt_data->dev, "tee_shm_get_va failed\n");
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  106  		return 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  107  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  108  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  109  	rng_size = param[0].u.memref.size;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  110  	memcpy(buf, rng_data, rng_size);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  111  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  112  	return rng_size;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  113  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  114  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  115  static int optee_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  116  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  117  	struct optee_rng_private *pvt_data = to_optee_rng_private(rng);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  118  	size_t read = 0, rng_size = 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  119  	int timeout = 1;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  120  	u8 *data = buf;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  121  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  122  	if (max > MAX_ENTROPY_REQ_SZ)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  123  		max = MAX_ENTROPY_REQ_SZ;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  124  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  125  	while (read == 0) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  126  		rng_size = get_optee_rng_data(pvt_data, data, (max - read));
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  127  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  128  		data += rng_size;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  129  		read += rng_size;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  130  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  131  		if (wait) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  132  			if (timeout-- == 0)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  133  				return read;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  134  			msleep((1000 * (max - read)) / pvt_data->data_rate);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  135  		} else {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  136  			return read;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  137  		}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  138  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  139  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  140  	return read;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  141  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  142  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  143  static int optee_rng_init(struct hwrng *rng)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  144  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  145  	struct optee_rng_private *pvt_data = to_optee_rng_private(rng);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  146  	struct tee_shm *entropy_shm_pool = NULL;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  147  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  148  	entropy_shm_pool = tee_shm_alloc(pvt_data->ctx, MAX_ENTROPY_REQ_SZ,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  149  					 TEE_SHM_MAPPED | TEE_SHM_DMA_BUF);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  150  	if (IS_ERR(entropy_shm_pool)) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @151  		dev_err(pvt_data->dev, "tee_shm_alloc failed\n");
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  152  		return PTR_ERR(entropy_shm_pool);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  153  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  154  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  155  	pvt_data->entropy_shm_pool = entropy_shm_pool;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  156  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  157  	return 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  158  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  159  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  160  static void optee_rng_cleanup(struct hwrng *rng)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  161  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  162  	struct optee_rng_private *pvt_data = to_optee_rng_private(rng);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  163  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  164  	tee_shm_free(pvt_data->entropy_shm_pool);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  165  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  166  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  167  static struct optee_rng_private pvt_data = {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  168  	.optee_rng = {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  169  		.name		= DRIVER_NAME,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  170  		.init		= optee_rng_init,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  171  		.cleanup	= optee_rng_cleanup,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  172  		.read		= optee_rng_read,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  173  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  174  };
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  175  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  176  static int get_optee_rng_info(struct device *dev)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  177  {
8deed847445a8f YueHaibing        2019-02-19  178  	int ret = 0;
56410c0cb43e26 Nathan Chancellor 2019-02-18  179  	struct tee_ioctl_invoke_arg inv_arg;
56410c0cb43e26 Nathan Chancellor 2019-02-18  180  	struct tee_param param[4];
56410c0cb43e26 Nathan Chancellor 2019-02-18  181  
56410c0cb43e26 Nathan Chancellor 2019-02-18  182  	memset(&inv_arg, 0, sizeof(inv_arg));
56410c0cb43e26 Nathan Chancellor 2019-02-18  183  	memset(&param, 0, sizeof(param));
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  184  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  185  	/* Invoke TA_CMD_GET_RNG_INFO function of Trusted App */
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  186  	inv_arg.func = TA_CMD_GET_RNG_INFO;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  187  	inv_arg.session = pvt_data.session_id;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  188  	inv_arg.num_params = 4;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  189  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  190  	/* Fill invoke cmd params */
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  191  	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  192  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  193  	ret = tee_client_invoke_func(pvt_data.ctx, &inv_arg, param);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  194  	if ((ret < 0) || (inv_arg.ret != 0)) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @195  		dev_err(dev, "TA_CMD_GET_RNG_INFO invoke err: %x\n",
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  196  			inv_arg.ret);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  197  		return -EINVAL;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  198  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  199  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  200  	pvt_data.data_rate = param[0].u.value.a;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  201  	pvt_data.optee_rng.quality = param[0].u.value.b;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  202  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  203  	return 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  204  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  205  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  206  static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  207  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  208  	if (ver->impl_id == TEE_IMPL_ID_OPTEE)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  209  		return 1;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  210  	else
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  211  		return 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  212  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  213  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  214  static int optee_rng_probe(struct device *dev)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  215  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @216  	struct tee_client_device *rng_device = to_tee_client_device(dev);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  217  	int ret = 0, err = -ENODEV;
56410c0cb43e26 Nathan Chancellor 2019-02-18  218  	struct tee_ioctl_open_session_arg sess_arg;
56410c0cb43e26 Nathan Chancellor 2019-02-18  219  
56410c0cb43e26 Nathan Chancellor 2019-02-18  220  	memset(&sess_arg, 0, sizeof(sess_arg));
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  221  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  222  	/* Open context with TEE driver */
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  223  	pvt_data.ctx = tee_client_open_context(NULL, optee_ctx_match, NULL,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  224  					       NULL);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  225  	if (IS_ERR(pvt_data.ctx))
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  226  		return -ENODEV;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  227  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  228  	/* Open session with hwrng Trusted App */
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @229  	memcpy(sess_arg.uuid, rng_device->id.uuid.b, TEE_IOCTL_UUID_LEN);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  230  	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  231  	sess_arg.num_params = 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  232  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  233  	ret = tee_client_open_session(pvt_data.ctx, &sess_arg, NULL);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  234  	if ((ret < 0) || (sess_arg.ret != 0)) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @235  		dev_err(dev, "tee_client_open_session failed, err: %x\n",
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  236  			sess_arg.ret);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  237  		err = -EINVAL;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  238  		goto out_ctx;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  239  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  240  	pvt_data.session_id = sess_arg.session;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  241  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  242  	err = get_optee_rng_info(dev);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  243  	if (err)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  244  		goto out_sess;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  245  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  246  	err = hwrng_register(&pvt_data.optee_rng);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  247  	if (err) {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  248  		dev_err(dev, "hwrng registration failed (%d)\n", err);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  249  		goto out_sess;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  250  	}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  251  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  252  	pvt_data.dev = dev;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  253  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  254  	return 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  255  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  256  out_sess:
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  257  	tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  258  out_ctx:
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  259  	tee_client_close_context(pvt_data.ctx);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  260  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  261  	return err;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  262  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  263  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  264  static int optee_rng_remove(struct device *dev)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  265  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  266  	hwrng_unregister(&pvt_data.optee_rng);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  267  	tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  268  	tee_client_close_context(pvt_data.ctx);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  269  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  270  	return 0;
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  271  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  272  
4f640201a8aebc Wei Yongjun       2019-02-20  273  static const struct tee_client_device_id optee_rng_id_table[] = {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  274  	{UUID_INIT(0xab7a617c, 0xb8e7, 0x4d8f,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  275  		   0x83, 0x01, 0xd0, 0x9b, 0x61, 0x03, 0x6b, 0x64)},
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  276  	{}
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  277  };
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  278  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  279  MODULE_DEVICE_TABLE(tee, optee_rng_id_table);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  280  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @281  static struct tee_client_driver optee_rng_driver = {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  282  	.id_table	= optee_rng_id_table,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  283  	.driver		= {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  284  		.name		= DRIVER_NAME,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @285  		.bus		= &tee_bus_type,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  286  		.probe		= optee_rng_probe,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  287  		.remove		= optee_rng_remove,
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  288  	},
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  289  };
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  290  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  291  static int __init optee_rng_mod_init(void)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  292  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @293  	return driver_register(&optee_rng_driver.driver);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  294  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  295  
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  296  static void __exit optee_rng_mod_exit(void)
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  297  {
5fe8b1cc6a03c4 Sumit Garg        2019-01-29 @298  	driver_unregister(&optee_rng_driver.driver);
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  299  }
5fe8b1cc6a03c4 Sumit Garg        2019-01-29  300  

:::::: The code at line 216 was first introduced by commit
:::::: 5fe8b1cc6a03c46b3061e808256d39dcebd0d0f0 hwrng: add OP-TEE based rng driver

:::::: TO: Sumit Garg <sumit.garg@linaro.org>
:::::: CC: Jens Wiklander <jens.wiklander@linaro.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911191721.r34rStmN%25lkp%40intel.com.

--5t2y62d5cins75sp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
lqoDiibO70Rd62BB0tJgseCb2bzrXNAq71vm8D+fEaDef/8Q6+jh7evN394fPsTse/p4/PvA
dwjoFxmi8v+7EXNATPCPtyeQHkcfiUr+xN35AqQSLHAyn6AtFCGzigtqJvaRP26YWOJPXx6+
/Xz7+vb48O2mGjL+OZCVDqszkkfMwysqIlFmi/7zyk+704eGunn99vyn4gPvPxdJ0i9ycTj4
oqJ1d8zn5jfBsWR39szs9eVFsJVYlPL228OXx5u/Rdly5vve37tvn4249GpJvr4+v0PUUJHt
4/Pr95tvj/8aV/Xw9vD9j6cv7+PrnvOBtRFezQSpoT8UJ6mdb0nqHeEx55WnrRM9FXbr6CL2
SO3xZJlqtwhCcEhj4Efc8FwJ6WEhtr5a+moNI+KsBDDpklVskHs7Eq4GuhXSxTFKCsm6rPT9
riPpdRTJcD+jewMYEXMh8Kj935vNzFolOQsbsbhDVF6x2xlE2B0UEKvK6q1zyVK0KQchUcML
OKwt0EyKBt/xI8jjGPWcmr95cIxCXWxod+AbMXmt3Uz7SgDFOK5ns5VZZ0jnceKtFuN0CLYO
/Hm7McKnj8j2AxUtYgRVN8VSyhRVEIj8j2FCaP7lfGWJmK8xF5Iv7u9c9nguWDtDa6YXbH5U
ilMvoX8BMkvDg3li6Jyy3PxNSWHBa9FJX38XP7799vT7j7cHsFnVQx1c94FZdpafzhHDzz5y
nhwIT6KSeJtiN46yTVUMSoUD0++MgdDGkWxnWlBWwWiY2qPaPk6xU+GAWC7mc2nOkWFFrHsS
lnka14SdiAYClw2jYYla0VTKsLu3p6+/P1qrov0aYX0dBbOL1ejHUDdeM2rdx6HiP379CfFS
oYEPhJ8js4txbY2GKfOKdDyjwXjAEtSqRi6ALhTz2M+JMjGIa9EpSDyNIMxwQnixekmnaDuP
TY2zLO++7JvRU5NziJ+ItcM3rrQbALfz2WoliyC77BQSzmxg4RBR3yWHOrCDT9whAT2Iy/LE
m7soxfQPciBADxWebMarki+jWtsQ6B+ToyvFFi/M6SpTwftSBHY11k4Dei4zE6X6kqNiVWyg
OPZSBYKSoixEcljJyUB/vIn76WRXS5Akp8AIlUiBOxq7xLuaHt1dHhwJnQvw07isIPwTqj6S
E4DbMhZPAS4dbUU2twFiGR1iXkFQg/xwiDPsnUIHlb18DANrLIFkrCUtsSksCbAn+JsshaD3
BHXmpMK3EEWahngLVwYemr2KfWYNlhJqqSccgChYFvWOksKn9+/PD3/eFOKg/zxivBIqHZ6A
xkxsgQktHSqszXBGgP70jHy8j+J78NG1v5+tZ/4ijP0Vm89opq++ipMYVLlxsp0TrgYQbCyO
0x69VbRowVsTIdkXs/X2M2EYMaA/hXGTVKLmaTRbUvbQA/xWTN5WOGtuw9l2HRI+XLW+a1W/
Sbil4phoIyFwu9l8eUeYKpjIw2JJODwecGDVmyWb2WJzTAjLBg2cn6WGPavm2xkRQmxA50mc
RnUjpFn4Z3aq4wy/KNY+KWMOQUuOTV7Bs/Tt1PjkPIT/vZlX+cvNulnOCV+GwyfiTwbGEEFz
PtfebD+bL7LJgdV92Vb5SfDHoIwiWlruvroP45Pgb+lq7RHudVH0xrWBtmixl8ue+nScLdei
BdsrPsl2eVPuxHQOCe/843nJV6G3Cq9HR/MjceONolfzT7Oa8DlKfJD+hcpsGJtER/Ft3izm
l/PeI+z1Bqw0F0/uxHwrPV4TNjAjPJ/N1+d1eLkev5hXXhJN4+OqBLsesbWu138NvdnSWo0W
Dkb2LKiXqyW7pc9XClwVuTgRz/xNJSblVEVa8GKeVhFho2eBi4NHPJjTgOUpuQfetFxu183l
rravoNoTqLU96tvZrozDQ2TuyCrznmLssIN2bDhjmYJyd3BgWb2mbrelVBxm3BYATUXNKd1J
dVjI6C0Oduomyuj3BVIAiQ4MTgHghDksanCGcoia3WY5O8+bPW7HL0/hddEUVTZfEBacqrNA
jdAUfLNy7Ns8hskYb6yYLgYi3s78ke4FkikP81JQOsZZJP4MVnPRFd6MCGApoTk/xjumXmCv
iZCTCBC3JJRAsTXsCyr8T4vg2Wophhl99GdMmLAYa6VYeF4vPQ/TSLWkhp1C1EmogZvPzSmu
ZyBOMCZxOHWY81ElN+y4cxba4WKfKxyVEX100g/LL+N1PF6Ehg4xWNgliqSpIqMqY+f4bA5B
m4j5WpVDVwbFgToUSSetYh6lgZmnTL+Nyziza9nZM5Cz6TPx0kd+XPM99ixAZazezdhJ1Egf
Us8/zQmHXlWc3ct21Jv5co2L9R0GJHSf8JejY+ZEfIgOk8Zin5nfEe4FW1AZFawguGCHEfvg
kvCuoEHW8yWlMiqEzDxajnWERbaW7DlOmdnxYnPZlzmvzNQEOPS9Pb+qcE/vH6VHGLW1KhnH
cZ6mcXa24hlhEnuUVfKSork7xeUt7/bI/dvDy+PNrz9+++3xrfUfqqkg97smSEOImDRwG5GW
5VW8v9eT9F7objPk3QZSLchU/L+Pk6Q0LBZaQpAX9+JzNiKIcTlEO3GONCj8nuN5AQHNCwh6
XkPNRa3yMooPmdiexbrGZkhXItiC6JmG0V6cPKKwkQ/6h3SIyNpem3CrLDjUQxUqS5kyHpg/
Ht6+/uvhDQ0dCJ0jlXXoBBHUIsX3eEFiZRpQ9xiyw/GpDEXei4OWT521IWshPogexJe/zJtX
2FWcIEX72Oop8LQL9jpkG7kXSodxFL11mUxQy/hM0uI1cd6HsWVCVCfLdFzVQP9U9xQzUFSy
qfgxDCgjRmBQCdNE6J0oF8shxiVWQb+9J4zHBW1O8TtBO+d5mOf4NgHkSsiWZGsqIctH9Pxh
Jb7nyglPZhqIGR8TD2yhj45ive7EsmxIZ5WASnlwoltNqeRhMu3ERl1XC+r1hoA4bEShy5Rv
F2TdgAdXdeUstqqsAvW1uYbSCM6VeUo2Pt2J4UA9cAKxnlv5KXUi2UdcLEjiQY/swrVncaVW
XkQ3JOVZ/uHLP5+ffv/j4+Y/b4BptS52BvOEvgBQZqlXc+oRNtIkUPEn8eFYGUDNtXxPb92o
a97oexK4nNDECo2QbrYLr7kkhPnxgGRhsaEe21kownHYgErS+WpOvP2yUFjkGw1SbMB1DNo0
Miyy9vl56c/WCW4GPMB24cojZojW8jKogyxDp8rEhDCsGa1tuCW1t3etKc2399dnscW2Bxa1
1Y6tX8QRP72XvpLyRFdC6Mni7+SUZvyXzQynl/mF/+Iv+wVWsjTanfZ7iEts54wQ26DRTVEK
OaY0ZFAMLe9dqfcdePatMFOx2whMWND+n+ixrv7ipGz4OILfjVQ1C2ZLKJs1zPnAPOwcrkGC
5FT5/kKP0zCyXuo+4/kp05z5c+uH9OdfmkmF7j2xTWiiJBwnxlGwXW7M9DBlUXYAjccon0/G
jWaX0j71tTwOAzXnHIyNkM7oKtDV3vjsWMpk4jPz5bRZHTDoEltmyH+Z+3p6+76jyZPQfJ4u
61HmQbO3cjqDn1IeSeKe2zUcqHFG+IaQVSXu1mQWKYPLSTtnHt2d4JkI2frxSweZDKuVrAcD
Nw8kNa0KhmttVYXAn0Nz8lZLKhQY5FGcFqj/IDXQsV1fFnobwt2VJFdxTDzLGMjyqELE+gXQ
abOhgma3ZCrybkumYg0D+ULEPBO0XbUhXP8ANWAzj3iZKslpbLmeN1dUfX8gLojk13zhb4iQ
Y4pMPaOX5Kre00WHrEyYo8cOMkQdSU7YvfNzlT0Rj67Lniar7Gm64NxEQDcgEkctoEXBMaci
tAlyLM7dB3xPGMiEBDIAQvwJtZ4DPWxdFjQiyrhHhmPv6fS82acbKvQesOuQ00sViPQaFSKs
t3aMGjymSjY1XfMOQBdxm5cHz7eFd33m5Ak9+km9WqwWVCB1OXVqRrhjAXKW+kt6sRdBfSSi
wwpqGReVEAVpehoRD5tb6pYuWVIJJ9CK6xMOM+XWFbON7+AjLX2CP8ujYc7ppXGuyRDignqf
7rEYHcfwJ2kGOsi/ahYa1i9tkpo9xKYF9JHZTEc4XsLINedZU0YqwQlSgtMumsirgHAi0vya
0Dx3QLihC0TREMyDlkoGpLoWugLI40PKrL4ioJbmF8XY9wEm1aEdtIDgr4VS2VlQses6hAET
6FhVGlDepFzVd/MZFaa8BbZHdke/qeiBHHz6thESZQCv9vDQT/pxd+tvBrtUJo6qGXhPSnXd
b18UzJ8kh4p/jn5ZLQw52padT3xni3bwEHx0dTdCnJjn2FIAEbCY4R57OsQKXmI4Ecd4T73E
lZJaEJIq4S6LIidCpg70oxtRiWlK+uzqQGcmxGxMlyW7PQ/MbhcJfbg8+7xm8nEBZCmEnXFJ
06m0y6DmXxfCCfKKfW4v3DAS3CGTFyiCOmLI/DVo31PCY6D92+Pj+5cHcQgPitPwxFG9Chqg
r9/BXv8d+eS/jAe2bQv3PGkYLwnnBBqIM1q+7TM6Ce5Eb259VoRVhYEpwpiISauhomtqJU68
+5jmv3Js0lpWnnASIMUliK2WW/3URYp0DZSVjc/BXbPvzewhN0WvuLy95Hk4LnJUc3oTAnpa
+ZQd0gBZrakg4z1k4xGWizpkMwW5FSe84MzD0VRn0IWt/kZ2Int5fv396cvN9+eHD/H75d2U
StT9OKvhCnKfm3xao5VhWFLEKncRwxTuB8XOXUVOkPRZAJzSAYozBxECShJUqb+SShkSAavE
lQPQ6eKLMMVIQugHF0EgalS1buBxxSiNR/3OihdmkcePPGwKxjkNumjGFQWoznBmlLJ6Szif
HmHLarlaLNHsbuf+ZtMa44zExDF4vt02h/LUqitH3dAaT462p9amUuxc9KLr7C7dzLRFufiR
VhFwon2LBHZw46f5uZatu1GAzXLcLK4D5GGZx7RsIff2MgsZaMzFQM49IdkF8LdjE9Ynfvn4
7fH94R2o79i2yo8Lsfdgr0f6gRfrWl9bV5SDFJPv4S1JEp0dBwwJLMox0+VV+vTl7VU+Gn97
/QYqdJEkRHjYdB70uujvBf/CV4q1Pz//6+kbeAYYNXHUc8qZTU46S1KYzV/ATB3UBHQ5ux67
iO1lMqIPbKbjmo4OGI+UPDg7x7LzV+4EtUF6p9Z0C5OHjmHDu+aT6QVdV/viwMgqfHbl8Zmu
uiBVToYvjSf7E1c7x2C6IBY1PTMItuupSQWwkJ28KXlKgVYeGRhnBKSC7OjA9Yx4YtKDbhce
8bhFhxDRojTIYjkJWS6xmD4aYOXNsa0RKIupZiznhAmgBllO1RG4OWFw0mF2oU8apfSYquEB
fRwHSBc2dHr2BHy+TBwakgHjrpTCuIdaYXDTThPj7mu4FkkmhkxiltPzXeGuyeuKOk0cRwBD
hCTSIQ7Nfg+5rmHr6WUMsLreXJPd3HPcoHUYwirXgNAXhQqynCdTJdX+zArVYyFCtva97Vhy
DVPdlqZLVYbesFjGtIivvfkCTfcXHsZRIr6ZEw/fdIg/3estbGoQD+Bs0t3x8rU4vOieWFvq
uGFGT8Qg8+V6pErvicsJni9BxCMJA7P1rwDNp7QAsjT3hEp5Gzw9CCclLgveBg5w4sXZwVs5
bnI7zHqznZwTErelA+XZuKnJA7jN6rr8AHdFfvPZig7BZ+Os/BCU6Do2Xn8dpfUSh+Yv6VdU
eOn5/76mwhI3lR8cn33XAioTscV7iHKhWi49hNOodCk7Ykd7cVac4DbqOOmqEak44IcqId80
9yBpi9kw8We8nzoF8Ljct8L9SDwZnRAJ7QjnqU8FkNMxqxkd/9PGTQ2/wC2WE0yLV4xyPK1D
HJY3CiJObEQI2v5Ixri/nJBbBMYOKYsg1l6NdbEkOQw8WowQnd28vhI78YLw5N9j9my7WU9g
kvPcn7E48OeTQ6Vjp4a/x5L+nMdIv15cXweJvr4WE3Xgc+b7a/oOTIGUVDcNclxkylN9yLz5
hFB/STdLx1VsB5k400jIdEGEx3oNsib8E+gQ4t2DDiFCAhsQNysAyIQwDJAJViAhk123njgy
SIh7iwDIxs1OBGQzm574LWxqxoNWlXjSb0AmJ8V2QrSTkMmWbdfTBa0n540QfZ2Qz1KttV0V
DkuYTmRdL90MESJkLidv0eYTSomMnTZL4omRjnHZXvaYiVYpzMR2UbCVOGfa3iE6k29DZ2bs
ZkoEgYup5lTFCbfEqIFsEpQgcihZceyoRp3ku5b2RYteJWWdFIdjA32RqN+LiJ/NTmow72V8
uOxQHdEeEEAqQN7piL5khKy75yGdL7Xvj1/AqSd8MIoOBXi2AH8gdgVZEJykxxKqZgJRnrDz
tqQVRRKNsoREIjycpHPCKEgST2C1QhS3i5LbOBv1cVTlRbPHVbcSEB92MJh7ItvgCK5btMcZ
Mi0Wv+7tsoK85MzRtiA/UQHVgZyygCUJbt8N9KLMw/g2uqf7x2GtJMmi96oYAobvZtbi1lHK
XbndODELD3kGPnbI/CPwSUr3dJQw3KZZESPr8tUiYz4CJOWz6BK7soco3cUlfqkm6fuSLuuY
k4Z18ts8PwiecWQpFZRcoqrVZk6TRZ3dC+v2nu7nUwBuHvDtFugXllTESwAgn+PoIp0Y0ZW/
L+mXOQCIIcwFMSBxNVr0n9iOuCgCanWJsyP6qln1VMZjwR3z0dJOAmkvR+ZLPXNTtCw/U1MK
ehdjh106/Cjw/u0hxDoAenlKd0lUsNB3oQ7bxcxFvxyjKHGuN/l4Ns1PjhWbiplSOsY5Zff7
hPEj0VEy7ulB904qP4rhniHfV1Yy7JbleK2mp6SK3Yshq3ChUdFKwv4WqHnpWsoFy8AfR5I7
WEURZaIPM9yuTwEqltwTj2MlQGwW1HN2SRd8UTpXCmjOLp/U0UWU8IqWMCKX9DwIGN0EsWu5
uqm1jqDpYi+kiRDtBqJl0YgqIqJUtVQxz4UwQ5jnS4wjIJlsPuGqVPI68MXGuGPb5Ckrq0/5
vbMIsa/id2+SmBecivkj6UfB4eguqI7liVfqJRm9KYCY2BTEO3yJ8PefI+LJvNo2XDvwJY7J
+NBAr2OxTkgqFOzsv8/3oZAlHayIi30gL5vjCXdPK8XDpLAK6OxAEPFXysUQUwqV1pVZ8Uhi
LwhDnRY+8vbelm8X0/sgR8sGowAoW7PLGGF7m3A9V60y+TGIG3DiISQV5TTEDM86inYsbbFl
FDW9zZCawINbi8dq5FNSxM3uxO3PxD+z0bNsjc5K2EgZb45BaFTDrJP1qlB+mWWCIQdRk0WX
Lp756AxmhiuBAWitjc0xbs3sG3iAHfPKLoqO36v3dXWwvxNJzeUomGoSE96OO9QukY/KeUXO
7A6553QoPzFGXA7SISohgQhzpoz2q1ycscS2BkbdCbv/xTfzsgLpDevk9f0DHld34RvCsYmK
HPfVup7NYFSJCtQwNdWgGx/K9HB3CMwwzDZCTYhRahvMCc30KLqX7lsJoWK/D4BztMP8c/UA
aSQ3rph6XGSkR0MH2KllnsuJ0FQVQq0qmPIqkMGYiqwUmb7n+CVkD0hr7LJFryl4ahozhqhv
n+vz1h0+2gPksOX1yfdmx8KeRgYo5oXnrWonZi9WDhiwuzBCsJovfM8xZXN0xPK+FfaUzKmG
51MNP7UAsrI82XijqhqIcsNWK/Bi6QS1kdjEv4/ciYTaynhqaY4e+Ua5dZEPgGcoTyk3wfPD
+ztm0yYZEmFAK7l/KY3WSfolpL+tTM//sthMSDD/daPCo+YluCX6+vgdwsvcwMMUCE3464+P
m11yC/tKw8Obl4c/u+crD8/vrze/Pt58e3z8+vj1/4pMH42cjo/P36Uh7Mvr2+PN07ffXs2t
psXZI94mj70IoCjXqz8jN1axPaOZXofbC+mXkvp0XMxDyq2wDhP/Jo4ZOoqHYTmjQ2/rMCJA
rQ77dEoLfsyni2UJOxFxInVYnkX0aVQH3rIync6ui/4nBiSYHg+xkJrTbuUT9z/qTd1Y2oG1
Fr88/P707XcsNIzkcmGwcYygPLQ7ZhaEqsiJd3hy2w8z4ughc69Oc4J3pJLJhGVgLwxFyB3y
k0QcmB3S1kaEJwb+q5PeA2/RPgG5OTz/eLxJHv58fDOXaqpE5KzurXJTyc3EcL+8fn3Uu1ZC
hZQrpo2putWlyEswH0mWIk3KzmTrJMLZfolwtl8iJtqv5Lgu2qUlHsP32EYmCaN9T1WZFRgY
FNfwRhIhDU95EGK+70IEjGnwXmeU7CNd7Y86UgUTe/j6++PHz+GPh+ef3sBnEIzuzdvj//vx
9PaoTg0K0j90+JBbwOM3iNb21V5isiBxkoiLI4TXosfEN8YEyYPwDTJ87twsJKQqwWlPGnMe
gYZmT51e4IVQHEZW13epovsJwmjwe8opDAgKDIJJAhnu/6fs2pobt5H1X3HtU/KwJyIpUdLD
PkAkJTEmKJqgZHpeWD4eZeKKL1Mepzb594sGeAHAbkqp1MR29wcQl8at0ehehjOUON5xaYbX
fmG0GVRp5CdUw05uGwGpB84IiyBHAwgEQ4kDsaXR3nTQWdo+lxLpE54SV9Mt18dv7dV2Kj5W
xNtQXbSTSGjRyZLdoSK16goxsVfs1rroYRmF9GoQPSgvyHQPxbTWWm3qqzilb5NUI8At41Sk
M9UUqTwHb06Ef1tVV7qqcnjlUXJKNyUZO0pV5XDPSnl4ohFu7D/niCWkiKrt9zatq+PEApwK
8ExHuGAHwINMTctF8kW1bE2LHRxL5U9/4dWYd2gFEWkEvwSL2WjB63jzkLDdUA2e5rfg5Aci
nE61S7RnByFXFHSIFb///eP56fFFr+zj+261Ypuxc3Idq76poyQ9ueUGFVZz2hCqy26aCAg7
a7WbqAV8b0ICIEKPgzA3fFnhTLVK5wbXeK0Oz1I0EtU30+upb1RTPSFOry0mCBwcE1r5MZRa
f1oUtDDcMd//x0e43fY4P/JGOwUUEjf0+Pnj+fvv5w9Z6UFB5U6q8L4e5PeiruBI+FhV5Skn
2d3Z+5pzslrFXgm29SRJCWzNfMLfmJKx02S5gB1Q2g2R6729oyGWVJml0lSMtuZQSZ/IbhNH
7QJtbzbRDSaAMRUvjxeLIJyqkjyl+f6S7k3FJwwDVU8ebvGgkGo23PkzevZphXLCJ64+doBr
zZFqxRypqNiO1OjyV3T0VA9FYpm4K0JTRYQrLs0+RoRLizZ1IWTfrmp0Zq3+/n7+d6TjLX9/
Of91/vglPht/3Yj/Pn8+/Y69mdW5cwielQYg4LOF+7zMaJl/+iG3hOzl8/zx9vh5vuGwo0e2
Wbo8EKk3q1zNFlYUIkdr+IKPUnGfVmbQes6NzXBxX4rkTm7gEKJ7yJGYZpMdTFecPanzihkY
qnsBBmtHyksZJHVXVH2w5dEvIv4FUl+j4Yd8KH+XwGMllz9Su8xwTGtintlU9RJbFttqDMWI
924OiiQ3U2CRJjeYB9s15oBwDk4jPosKNOciq7YcY8jTJyuZYDn+PWCrC26y0QdctcaeWliY
BH4jvySPdVzsMV39AAO7nDxKsKqozME3DMbsrimwNq3ZCVPeDIgt/AxmaJeBZ1Wb0Z72a/dr
mg6ua/CAMEOmECTSTVzjK4WS+3TLG4GtfirLIsXr7fohMHPk6pVKOW5nLK9UhWaIOZvoulR7
Z8nlQROAdr7dK3o372izJMxvgXtKmR5dxFfje/sr8X0/DOzhfi8nnWOyTZOMag8JcZVELXmf
Bsv1Kjr5s9mIdxsgn6JHsGT2DljG6b7gC7Fq3j38IF7vq5Y6yuWIbsijM+gcpuy8UE79mDml
+nqrRjT77W4fjQSlCxVFN0DroWsk+vbV5UiON6WcNqoNNjrrJD9QMxtnuIWbMZnykHgowhP5
xTTCygV39nBbPRRH3V0rd/dmSQZqM7JAs0GbEg6+Oegd9vdwMsx3ydgmG4wBkW2AyoHlwcxf
EPEi9TciHgbE+5ABQNjU66qUs5k39zy8wRQk48GCeOA88PENb8enPBb0/DXxDE0BioitnS+Y
bDgJj7ooK4L1fKpSkk+8R2v5i4WPn50HPq5K6vmErqzlrxbE2bzjU4+AhzZZXGi0kHiepQAx
izx/Lmb2GxAri3s+atcy2R0zUrWkZS6W55upqlfBYj3RdFXEwgUR6kADsmixpp6/9SK5+Ivm
pyLwtlngrSfyaDHOwzRn0KqL1f9/eX774yfvZ7UvhzjlrYXvn29f4UgwNvK6+Wmwrvt5NOw3
oG3CvLMorlyzI3tyVGSe1SWhP1X8oyB0pzpTsJV6IKzodJunslGPrSkW2iDVx/O3b5ZCy7T+
GU+inVnQyNs+DjvImdS5TcVgcSpuyU/xCtspWJB9Io8qm8TWLViIPtrGpayi4khmwqIqPaVE
2CILSZiq2ZVurcWUXKgOef7+CVdBP24+da8M4pifP397hkPjzdP722/P325+gs77fPz4dv4c
y2LfSSXLRUoFGLKrzWR/YqY3FqpgeRqRzZMn1chmEc8FXirh+na7vUmXsPrklm4g4jbeHan8
fy63QDkmPImcRsdWi0C1/2rj38HwtQM6KCZ1dFXM3T4Zp1DKaBGxAh+zClPtj3mclPgcpxBg
tEG8gNAVk5vnQhAvexSihhddSMnLSpYxNXZ3QOh2UwZpH8kN5gNO7MIM/evj82n2LxMg4M52
H9mpWqKTqi8uQKh2Bl5+ktvDbvxIws1zF4PTmNIAKE9E274fXbp9ruzJTngSk94c06RxA5XY
pS5PuJIEzG+hpMgGskvHNpvFl4QwgRhAyeELbvgyQOrVDHtR1wGG7fwobSzI4FYmhHjSakBC
Qq/aQfYPfLUgLvg6DGd16IQVHyOWy3AV2t2oOEoVcJJ/DgryjlfermYrU+vZM8QiCi4UPBWZ
58/wbbqNId6sOiD8GrYD1RKC2y91iCLakm/gLczsQmsrUHAN6BoM4Ry37565VxGa9V5K7wIf
tyXqEEIeZtZEWLAOs+Wkc6m+1+Vw8aakTAIWKw8VGJmUiCjbQRIuT4bTI6o8Sci0RJWn1WqG
qdD6tlhwbDyLWA7n1Wg2gif0F2Yj6CFi629BLs4EAXHAsCDTbQiQ+XRZFOTyxLWeFgU14xAu
b/quWFMuEQepmC8Il0wDJKTCDFiT0XxaLPQMOd2+cjj63oUJgkfFco0dLtXqN/YwCfLz+PYV
WdVGbR74gT+enjW92d87r0XsQl8xbNaRP5Lu/r7wgohLgfAJ54sGZEH4/TAhhCMNcz1cLZot
4ynxONtALgkFzADx57b9gzvj2FFm+6mguvWWFbsgUPNVdaFJAEK4WjQhhI+JHiJ46F+o6eZu
TmknehkoFtGF0QhSMj3Svjzkdxx7MdIBWqeXnfS/v/1bHhgvSVfK6xjTw/Yrk8iabcXBprg0
Lo72ELpDBOA5KxqPG8lA+xZXbvajKZsFUwsc8D3kY8c8REWJnyYyA5PmmAWrGkvZXi5NL9mV
/G12YXYs+KpGQ7oOu3DnOqovPHHPY/CbE6bB7JslP4nxplJFTIiwTQKvlqE/laE6mGFFLZeO
UVDvG0Sc336Aw2xs7o1l++snbWaeA3V8tFLZgmnyKE46k8dKeTqtmyRnG3Bzsmc5xF1376hl
4kYHF7FpbVjfLp2wufZdKlCUrehw4FdnXjlX7GLCTJ5xuO/IZiv85MzqlLo120S8ETJxyVLD
cQuUobsksYh6LBi9G99P5a7CdUieWRug3VEVAfFxeAZHOFmpeFRg5MhCbCW4DRqdoP2bSxk7
lO7fUsqti5taECXgddCkSkNmE5q0vBP/6eP+FFkQzBqnpHAFSmSrRqg/a1ixcVNplid5VHt1
F5oNd3ugh6hh5X574GrH3hfYemkgUV/oDCD8x15McSNSGIALdhiyafCmU+YQG8btblbUPUhF
w3e8whjWjHA/kl6XR5qRw3UtVfqWB2lRdVNromYVHZ4+OtfWhimb5rwO81T08nx++7SW3X6m
IosFgckEpgoeJi89G/zdf2hz3I4f/aoPgd2iJef3io7LapsTUSrJakSSbaF0+ONzpyRGpY/1
pIkyqo8+bdNDkx44PyoTJmPhVxw5Zd9tY5to1lSB8oPKgMrdsuzvKA3nrEDIcjKrRx/oXjei
9VIITqmdYc3pwt9iBZRsM5yZ/rvhSX4cEe169LRWQzxibSAemn2gaTkqgB9ZmC7AmpuKKyMR
Dr4vkoln6k8f7z/ef/u82f/9/fzx79PNtz/PPz6xYBaXoApbn9/IEOHgs2yopEEUUXncNAXb
qe2FjjtnAUB7mpzknsFJCFc0iRmqWhJNbS1g5OxVsArjgOZ5L2W4PKXCXOCAJ/+BQXDnYs1m
7vJK63lNWslyFZ26UWHtzP4w2LBtATbSmXJTdKiyDaDdxMUJHHMJ1OEbCmzbBfmKQknplnJh
l1+f+wwCvNNvajmQEtPAG+nfoQi7MnmgDNVFxeQciV9c7g5ZvE1RLz98GxsHqJYY7csDT/pR
bu1UNU8mqDao5dE4szYmAbhrNvNpyWUhN5B0Pnaswo5YlIfqMMrtdqN8Qk1eLPYREvastGSs
Y6iEG/Opf8c5bZBaqd26Kfh9ud37KZ5kGcsPNTp5domzW5BwOYJvj8ZkrE6dkgdBHQtmWqXp
a2TgdetiG4Qvenl/+uNm+/H4ev7v+8cfwyQxpIDw54JVqWmUCmRRrLyZTToltX74cxB2J2Zq
G4Urgo0vdTcBV+DWc9SOwgDpCwKkCSCY3WJRoywR2WaAJitdUOELHBThdtNGERZANoiwqLFB
hHdXAxTFUbIkwpA7sLV/oVkjAUE0m6jA28/nhfA8WyzuDmV6h8K7Q/OY49jCmOIY4XorA7KJ
l96KsFcxYNu0buOi4mPMsLQbJ3YsWlt4kwt/TBSlTSuZKDbgTlK5bMcEVMpQGJ0C01rS5a8p
VhiSqcIlyRqbZ9ojxvcNlhzkSQX+VMwAsZXcPGBgg2GXDZQ0ekqyCXIUHu0Gk8fnFecILUdo
d2PaXW2IK7hPBxPpzDJcGaiwbGzAJYI8b9nv6PTMqaZMwxyJn78+P1bnPyBWFjqBKm+cVXKL
Ni1Eu/R8QtY1U8ozaRQwBqd8dz3412IXJ9H1eL7dRVt894CA+fUZn/5RMU5J7qIxbLhcrsmW
Bea1RVTYaxtWg4vkenDE/kExrm4pjR631FRzXNm9CsyO8VV9sF5O9MF6eX0fSOz1fSDB/6Cl
AH2dTIEamKwPMJuk2l/1VQXep9vrwde1OMS9JaYaiHdLFh6Y2nDrqhIp+LWSq8DXdp4GF0f1
tOLi5sbBX9x7GXgW40ZAVO45bvk2hl87jjT4HzTh1SKt0deJ9EpuNmipkExE8Aaf65PLIboa
glFPmewsRdIIAM4W4vQ0geBFlk2wiz0TCbq9avmTqQX8Ct+nMzgpn61ZM11KdoA/oglEklxC
RFL64oec+tCu3mxQBqt3FF0PdLR2tgMWfRPYsEKWotknWZGUI2awrGt7J9enWs3CwYTaZkaF
581GTKXm3sUickhlwSO8jWzvLwrMFoHVvYqoal5EogvPhbAFj+FDCEdSLT/QrLhrdlHUyDMm
fkYDAOdTiLTNYj4j4t+k/TdC/CwDgAwBjNIv55aKQXBND0P0tVLHXtvTwkAnHkoAIJsExDqH
dejhZzgAZJMA+QndqlOF0KUk7BuNLJbYvduQwXpuHE0GamhT27xccgtembIk2v62ekPIOstl
FOBzIjxI22whUWXIuDqWab5rcKOSLgP5AffLu+J44ctymksOFzBwf3EBkhVMiDGmQ7QF9BYz
++KRp00BnldB5ZXiVwX6YmwrBzzKvi2EaOoIVULCwNY3VM4BfcWWyznzMGo0Q6jrBUYMUSIK
XaK5rlDqGqdafavoazYLdzP0JZfiw33dLsnlNq7YjRIDE/xkyL/gqblIMEdWRgtCJlLyR7qO
7qYwPYXo9D0Ei295+gkprBLh3NZcOgC5KRFaJ2UuIOqyGkumGCKCYI82Q5XCfp7Zk3TtBcYp
SlDttOY1JHc1yV2bChT9PVP30Yb6ZtAQCH0fUuSyZQwjScUXZ6ugAg42AhVgH4xylNQ48TFy
aROhdtqHzabgpr5F0dR+amvtuSQFe9JsyMbYqGvYd+IK7F4Xfi+KNG/9JvRZD9TRw9Yxot1X
YInR2PS6KOL9z4+n89igRz27styoaYptPqNpSgFlNZQoo+5+sSV2b6B1Ere1HaIcS9rR9iQd
7vYgBhHjJOJwyJr7Q3nLysPRvI5TpjJlyaqjhM9mq8XKmOVAT5hBpJwe4oXeTP1nfUhKeQeQ
Gax9byTZHfuY3+aH+9xO3hZRyD2nsXDD7WL7XkjAE/DItKkAGw2nSdQs4dKcPCpujoWubayc
e6qFbXsSuVHRYGUmJD8WVXpEWGcsR7L6OrA02xxquyn43vgq5MotSHe31OJ6ES+ywJ8pLL6n
Nbb75X3FaSSMLh8c/dOQXoBdRFeWyLpD6szIcHCrqXeqWaVwgBLgMYqzXP4oTaEEZbSTQKuu
O+KwZdRNPHoUZB054GSRFpE7EveiGOWnjZpElnI50ukWgquDIo4m6txss6QudT+Ydm3KMonH
d3TerU1UWqRU9tq4JD2cjMOgpjFzxtKk4UWedqh5fjt/PD/daPuS4vHbWT2PHPt+6j7SFLsK
bBPdfAcObCAtYx0U0Nvg4OclN4kU6NMS12tcqoKba3vDO/HdPsaA3AhXezmB7rCb9sNWw92W
sC2turHjQLXItV2iOX0h2l3TyOTHOE1CshMXmLEaTCrC+lZHgc2/aszNA9RM/hgbj/TYk+3r
Q4opZYKkBlVXvZEljptIPyI8v75/nr9/vD8hbxkSiFrS3tkNVZYz48ChSlECs4uK8Wqx7sLT
YuDYRxLFY7HAthkDQO6YsTxlU+IZ3kcCU+gpgFw6sILcR7nslyLNUEFHWk235vfXH9+QhgRD
DLMNFUEZSmB2goqpdTrKqWOuIs8ZkuwCLPXLiCvgzegrwhY8HhdKSwtea6t2xj4Z9jX3qe1g
Uz+XkQLyk/j7x+f59eYgN56/P3//+eYHOBv4TU4Tg48sBWavL+/fJFm8I7bdrVKP5Sdm9H1L
VUo/Jo6WU6HWVRKEwEzz7QHhFPIQLhfdNBcuM0kmmNzMs28crPS6WrK+569OrYZkY65ibz7e
H78+vb/irdEt3SqIm9H1wx25y4JAoCNvNi2hKbhZE/TTOgRAXfyy/Tiffzw9yln97v0jvRvV
y9jcxgXDpkVg7Y6VaRIvgT6cSEXn1bktyqUPaj8C/8drvJlgqtoV0clHe1M/XDhC05jfHGWn
jQ0NDT1W3273gCnHYMbOtyWLtjt3Jld6mvsSPVYBX0SFfnk+mDJiBVElufvz8UV2mysy9rzG
DnJawx/9aL2tnJfhzVtsiImeS5I8lTsFl6pnGFGOJtCd2OAW1IqbZahySfF4XDXZgcVJ6U7y
PG216eN5vuTVVoDzJHpBspXRPbHAbRI7foGZIrbTZ+JqvXFdOADBiLByW09wueEf0WwPbZqo
5xu6oHq5kkcgXJ/X7rZLdFpH5cacN0bqPnW47TVhLn2kBzTIpiJwIJuaQIMa4lQcvMRzXuHk
NUE28oZLFqQyBtmszEDG8zArY1Jx8BLPeYWT1wTZyLsEz+5WlCUNtEj9DnlXbhEqNoeCeFDK
SO26fkQuzA1xT0OyVqo9UdqaFdCqqA27Bw4wTWsygwcPaCietwpp3npu81T4bMXaHs25z6Bn
h3sYdhiv4GhWamXeydnA0fmpgtwG4BsOKaFk/Lr0vQQpoKULUxZZWHu2rDSv4GFZ2gK602f9
/PL89he1dLSPgk6oFrQ9Fjsbjo5qlmQwxR5/zdxORs0X189TF43wqg1lrw7hYNW+LZO7rprt
nze7dwl8e7deD2pWszucutjmhzxOYDU052MTJlci0Agx6mGnhYXmEex0GQlusETBrslTnh3T
03jb3dUScUILp8p20Cmv4S2S0Fy1EnsJVd4GwXotj9vRJHTojiY5OX6a+vmgigYPUclfn0/v
b10kLKQ2Gi4PjFHzK4twW+kWsxVsPSc8b7QQ142Vy4dgZwERVamFFFW+8IgARC1EL+hwScdT
gb+bapFltVovA8L1kYYIvljMsLuqlt954Tdn3I4RjR8UyI3KobSiDEP3Fpm39BteoI8StISY
M11qfi6F10HK67ylQ+ipDRHYyUCAZ0p5NDg6LtgM4O023Sr4sGEEcutYC54t6BK82vnrX1H/
4EZyuy5dSQQM/h7i2xmLLrYmWTWJaNOOBi97ejq/nD/eX8+f7tiNU+GFPvHsv+PidhEsrrNg
voCnIpN8QURVUnwpBZf4VP4bzjxi9EmWTzgq2PBIjibl/wzf2MaM8lMfs4DwXxFzVsaEZb/m
4U2oeMTrfCUa7fMUVdr2pRwtAFWLC1id4hrQ21rEeElu6+jXW2/m4c43eBT4hOcfebZbzhe0
FHR8qpeBT1lUSN5qTrgrlbz1gnjioXlEVepoPiN85Ehe6BOzsYhYMCPcEovqdhV4eDmBt2Hu
/N2pauyBqQfr2+PL+zcIbfX1+dvz5+MLeCyUq9R46C49nzB6ipd+iEsjsNbUaJcs3KWJZM2X
ZIbhLGzSrdxdyN1DybKMGFgWkh70yyVd9GW4asjCL4lhCyy6ykvCMZNkrVa40xzJWhNOgIA1
p6ZLeX6iXCsU/qyGPQfJXq1INlxAqWcwNCIp5WbbJ/lR5EnR9kh+kp+S7FDAu9kqiRwvuPax
i9mxwPbpak44uNnXS2I2TXPm13RzpLxexiQ3qyJ/viRcDANvhRdH8dZ4h8tdmkc5HgOe51H+
yhUTH1PAo1zEwcu6kGgdHhWBP8MFCXhzwlce8NZUnu3TGDDCXyyX8Bbead8eqKxy5TC3+zln
xyXlX2jYnaZUpw2Q0/8oe7blxnEdf8XVT7tVMzu+x3noB1qibU10iyi7nbyoMom74zqdOJVL
nc35+iVIUSIpQM6+dNoExCsIAiABnEeRGGh4LWNUqHtnSWZCkQukzO0J4lyqmoeLEd6+ARMh
vw14KoZE/GyNMRqPJjg91PDhQoyIiTQ1LMSQOBRrjPlIzIlgiApDtkA87NTgi0tC39DgxYRw
iKzB80XPCIWOvk0hlHEwnRH+nbvVXIUxIUKUaIOCT7jtWdt3rton7+r19Pw+4M8PznELElbB
pRTg5zJ0q7c+rm+gXn4ffx47Z/di4p9yzaVP84H+4vHwpPKH6TBFbjVlzCCZWSV4KgiyXiZ8
ThyMQSAWFAtm12R+2TwRF8MhzrigIxFkJ6/EOickRpELArK7XfgnpHl648+Co0AZJ241C0Kn
AnnqwehobV4FcSQZRrqOu2aQzfHBxIuSH9av3+zLNxxB31yK3ICs72wBXuR1FzbbJToN3Sq0
caYmaEnbd5oMKZFxNpxTIuNsQkjhACJFq9mUYHcAmlKCnARRQtJsdjnGKVnBJjSMSGQoQfPx
tCAlTnnwjygFBISCOcHxoV4w/JKC7Gx+Oe9RjmcXhKahQJQcPruYk/N9Qa9tjwA8Ibay5FEL
wi4Q5lkJiRRwoJhOCb0kmY8nxGxKiWc2IiWs2YKgMinUTC+IqLEAuySEIXnSyP4PF2M/EYSH
MZsRoqQGX1AGgRo8J5RCfZJ1ZtCEKOrbzjoCtmQtDx9PT5+1rdvmQB2YAq4gjfLh+f5zID6f
3x8Pb8f/QEaGMBR/5XFs3kvoF47qzdXd++n1r/D49v56/OcDYiW5jOSyEyfZeSRJVKFDij7e
vR3+jCXa4WEQn04vg/+SXfjvwc+mi29WF91mV1KboFiRhPmLVffp/9ui+e7MpDm899fn6+nt
/vRykE13D2plSBuSXBSgVGhlA6V4qTLRkax7X4gpMWPLZD0ivlvtmRhLpYay6eTbyXA2JJlb
bY1a3xRZjzEqKtdSkcENI/Ss6mP4cPf7/dESiUzp6/ug0FkBn4/v/iKs+HRKMTsFI7gW20+G
PRoeAPHciWiHLKA9Bj2Cj6fjw/H9E6WhZDwhpPZwUxJ8aAMaBaEsbkoxJtjqptwSEBFdUNYz
APlGVzNWf1yai0ke8Q45Yp4Od28fr4engxSdP+Q8IXtnSsx/DSXpX0FJK3EkN0CPfVmBqQP+
KtkTR3GU7mCLzHu3iIVDtVBvo1gk81DgcnHPFOoMNcdfj+8oNQW51MZifGey8O+wEtTZxmJ5
iBOh4lkeiksqe5sCUg6Dy83ogmJUEkSpMMlkPCLigwOMkDYkaEJY8CRoThA4gOauyRlRIlRI
KvAdcZ6Cr/Mxy+X2YMPhCqnAaB6RiMeXw5GTUcGFEcHtFXBESEJ/CzYaE6JIkRdDMuVXWZDZ
unaS600DnH4kU5TclOaYAMTl/zRjZAT7LC8lZeHdyeUAx0MSLKLRaEJorBJE+UuWV5MJcTsj
9+V2FwliwstATKZEaCkFIxJjmKUu5WpSqSEUjEgJAbALom4Jm84mVF702Wgxxl+t7YI0JhdT
AwkL744n8XxIxMXaxXPq9u5WrvS4cydZczyXo+mHlHe/ng/v+hIF5XVXpBeyAhFq2NXwkrKX
1peICVunPcdHi0NefrH1hMpdkCTBZDae0peDkgRV5bSEZchpkwSzxXRCdtXHo7pr8IpEbgv6
bPPQOrWZZ6fYsukFbVNLd2xwyRY/CZ1vavHi/vfxGSGL5uxE4ArB5HQb/Dl4e797fpA62PPB
74jKEFts8xK7dncXCoIL4lh1V/AGHf3i5fQuz/Yjeoc/ozKvh2K0ICRe0KqnPcr4lDhVNYzQ
1KXGPaSuOyRsRLAfgFGsSX1HRbAv85gUvomJQydVTrordMZJfjnqMD2iZv211m1fD28gh6Fs
aJkP58MEj0ezTHLv2QEiWixZkTlx03NBnU+bnFr3PB6Neq7rNdjbsy1QsquZ4+ImZuRFlQRN
cEKp2ZeKUokv7IzS1Db5eDjH+36bMynw4Wb1zsK04vHz8fkXul5icumfbPYh5HxXr/7pf49P
oOdAQpeHI+zle5QWlLhGylZRyAr5b8m95Ant1C5HlGhbrMKLiylxgySKFaHkir3sDiHqyI/w
Pb2LZ5N4uO8SUzPpvfNRe4u9nX5D0KIvPHgYCyLnEIBGlC3hTAua4x+eXsBgRWxdyfSipCo3
vEiyINvm/h2QQYv3l8M5IfdpIHV9mORD4v2QAuHbqJQnC0FDCkRIdGCzGC1m+EbBZsKSz0v8
bd0u4ZUX69hI5j+sx9byh59CEIqaFwyd4jp5RCvnQ7F6zYCrAQDWHkh4V5r3iV6ddQIZstJN
tNzhzqwAjZI9oZZoIPF0oIbKUwxzMQGoum73+wpOPBDphazT3OaTCCpJMhq4F6DqBb/Xpgkf
UubYc22F0SaDtxe7ecjvVOcHbrBB23RqhWOFIp1+xutRGfGAyIlegzeF/A+J4Gao1wJjcT24
fzy+dGO1S4g7NnjDuo6CTkGVJ90yud+qtPg+8st3YwR5N8HKqqgUVLkbWZ/FOUS4T4QTQJlJ
8o6I1C0Xw8miikcwyK4fXzx2yyFVS76soqC0/BPayBISVx5O0ZpbkWAM7cAkuq5yypHOeiq8
48stDCz3yyI7wIkuysIk8stye0V0keAWViwqEazW9eQ0poOijEq4ss55EdipWbTvsxyR/LuU
k2q/25WlTdoUFoXcjmah3sgAhp+iXVWYow9rYDogBUzJnSgijYNF0aVB2/uiBbbqjU/NlvSR
s+CK4NfKM2TDRB1cWJaWRRbHjk/oGYhm0J1S31VUF8NrLr9Msz2sUMfLk51cOtmhFELjjIjL
RS0OvgIaQbtp+G17YYl0oZ5/x925KVfR9MhGrHA7aHm1jrfdeNwm2jMaWdoAsQDRTjQgLahu
bgbi45835fXSsjmIh1EAE9tY+TjkDz9AOBQpPg1v/h3ergFzcETII6mfbPDnyjXepaoAOwgk
XK33YqmCX7lNG2/r+BxsgsJGY0Z/WAMnKuOOi6FDiPtDhtKrLNVVVn0D1nHJFd4XcLAEpYCR
ijHSNyhVyX2K0Ou0inDFSoYU65F0R1hX73SsTjYnl5Tse4vSMwkGSUQQRIgYI0hjOoY4RmBJ
tOcxTmAWVh1DBvm+DjlDU548zuTJB0y/sxHgpJMcN80MBbmrpxifmm56hTVOD92rc4tNLiC8
f5Z0umDDt2USdaanhi/29ee97ejon007Tk35nlXjRSqlXxHhGreD1UvYKsRTH2GoPF1E4BYD
34te0pJibe5PrFsHy/NNBtJRmEgSwHVJQMwCHmeS7fMi5HSXahfo68VwPu1fdC1JKMz9FzBh
A2IeWA3CtWTlT91SRZNPSIVb1COpBUvOsRH+8lugnuU3PttUf9vohl2u1cK6/NiBTfxRNY99
XX6EYfDE9iRzQGojb0CQfKLhSNca92UYEf4pZAML/BltoPTur5/Rh7kO+Ok2XAMV6zNgpwHj
+4xni1OnrlbIkFHpb2cA6ZwijWDS/cwGTfz+NMCeHmnpZN85jFQ5uE/n462//CyZz6Z92xMC
n/UzpFJCR2PfemoMV458ZH0IHreU2pm4foda0Dq8QvZkZfZ60k9AnGRilkIXKCdrPCaUhmMC
pXKm9ONB5RAdzEuhY8V+6m0mFFsfXkPNqVyFYaHabChfnYpOL3REjjFWOHELy802DXmxH9dV
Np3R0dn6uipyBG5WsGfiG+lYBaCon34/vJ6OD86apGGRRSFau0G3bbbLdBdGCW5wCBkW2i3d
OeE+1M9uJipdrPTDCLMTtfAsyMrcr68B1OlcWnKVByqHGARInfo4WeWFHdK75ahu5ALdDsiO
aAfqoAt22IaGLXg11ZGSVKF9x2BiJHW6600SZBOu4nztRyVxkLrBTPXTqx+D99e7e2XT725Q
QdgGdfLYcoNSCVJls5fytZM/tA6rmEs1P6/Il/fwVZWsiwZdkFe1Pmqwww7KBkuUBSujfR3k
4gmpp3avONteFPAp/aSpQUtYsNlnHedfG21ZROHaOl/rkawKzm95C20Zhu6hnMOQayM95qem
qi74OrKDyGUrr9ztcLjCPRqb0dSRKeA3jiiwUZacG/4j/9uNNZXlGsP+WYmN1BC3iUpbqJNE
fh9Z1nurnuYwlRszz21qExERjhJiYVIpC9V9t/x/ygPcEi7nHFDwK1M33oJ+knz8fRjoI9aO
mRFIyuAQ3TZU7szCYYY7BpdjJZczCoY7gS+xCq9op7Xg+3JcuWy1Lqr2rCxxf8Zy0v1kohrO
RLSXncOJwmAJHmyLqMTUL4kyrexLkLqgrdlrdkpV6CJ1kpHXwL+XoaOrwm8SGWJeLdUiuKat
SE62hBEq2t80aE+D1isxpmBZ0AXWoGWpe9JuYFOCz2ADlYMKrhQlr8mZbJCLLajyqcSrkHTC
DnZnLj04E3Ly8F3TNsdXEJE4WuHdSqO4Z7JWY3qSoX+o/OFNV0NJEELWp3xdVi110O4cWxVI
41wBPLIjN0GwG/C5vPHhdv94GhQ3ORjhqRHAzKB7aSXSrJSTZl1R+AWRLlBRcNrSFfPxTEnN
d+A+IImEZJZ2zKPrbVY6R7cqqFJeqrh1ikuuvEg7hhEXElrj/2BF6s2DBtCkdL1KymqHXzRq
GKaDq1qd2xpIZbsSLgPSZU4RyFrOHgs8sawOAovu0EyuV8xu9Pftlm5KJbWHUSFPkkr+6f2+
xWTxD3Yj+5jFcfbDnjgLOZK6BBEKu0XaS4JQIz6HmHA5dVnukJ2WCu/uHw9ecErFMtHDr8bW
6OGfUqj+K9yF6vxrj7/2nBXZJdgnid28DVcdkGkHr1u/eMrEXytW/pWWXrsN7ZfeaZcI+Q2+
ursG2/raxFUOspCDXPJ9OrnA4FEGQWoFL79/O76dFovZ5Z+jb9ZEWqjbcoU/PElLhN0ZUQMf
qVbH3w4fD6fBT2wGVAQFdwpU0ZUvjtvAXaKcTf1vdHEdsacKt2hwTIUJN0X25lSFuQqVnsmj
Jys6dUsVLA4LjhkDrnjhpPX2nlqUSe6OTxWcEWc0DiUlbbZryfiWdit1kRqErdrp3NXcCVnZ
XDauozVLyyjwvtJ/PMbEV9GOFWapjL7fXdmm6UgE6vCR01FyNz92VrB0zemzk4U9sBUN4+o8
o6Ab+kMJUvH6CfCyp6/Lnu70CW49YkVQsATlAOJ6y8TGobW6RB/zHfnRBWuO3lOvUuGkRiUi
cMNGK6oxEskoiNfKGGZ9yd//AUXtDcJtHC3RTsW3xPO6FgE/ddq2b/vht6LEX3U1GNMrYDxL
lZX6FjckNLg8WfIw5NhjnHbFCrZOuJRctGYGlX6fWGJAj3yfRKlkLZSAn/Rsg5yGXaf7aS90
TkMLpFHDXEWZ2dG+9W84i2JQOIGECk8brVHkmjZg3N5s8KZfxdsEX8JcTMdfwgOiQRFdNGuM
/ZPQTS3g1dAgfHs4/Px993741ulToGNz93Ubosf3wSV3wsn7RuxI+amHSxYZRRxSvId8O94x
YoDeAQW/7XdN6rdzN6JL/DPXBk59dPEDjeitkauR19q0sq9pUsN3pVybbUsPonQ66xpLYcd8
b3/x5LdXqXcywBaYejsVhSb667d/HV6fD7//5/T665s3YvguidYF8zU9F8kYOmTjS27JRkWW
lVXqWcdX8FqC17HxpO6Hrl6NBPIRjwHJqwLjf7KbENFM6p2ZZbqGufJ/6tWy2qozUbRn4zYt
7JQ0+ne1tndaXbZkYGRnacodC0YNpZXDgOcb8hSPKEAWMlq6IbbCZe5JyargjBSpcXpMYmls
b6DYYiCWkmCBjZZRSS3DWUwbdkG4H7hIhP+Xg7QgXFM9JPy60UP6UnNf6PiC8KT1kHCDgYf0
lY4T/ogeEi7/eEhfmQIiCqCHRLiR2kiXROgEF+krC3xJvN53kYjQNm7HCX9EQIpEBgRfEaqv
Xc1o/JVuSyyaCJgIIuxywu7JyN9hBkBPh8GgacZgnJ8ImloMBr3ABoPeTwaDXrVmGs4PhvD9
cFDo4Vxl0aIi7i4NGFddAJywAORbhttQDUbApRaEP+dpUdKSbwtcUWmQikwe4+cauymiOD7T
3JrxsygFJ9wZDEYkx8VSXDNqcNJthBvhnek7N6hyW1xFYkPikFarMMbF1W0awV5FrVnOJZkO
I3a4/3gFn6rTC8TUsSxYV/zGOkThl5LHWWlvX1Vc8OstF7VGh0vYvBCRlHOl2ie/gKTGhNGh
rhK3HRVbWUVII9R2/z4UCajCTZXJDimxkfJ0rkXGMOFCvXsuiwi3MNSYluRVl7hSTVNjLfr3
NysnGcsit2E7Lv8pQp7KMcL9A5iTKxZLuZF5xr0OGtriKivUFYXItgURDBzSwkSBqiaRZKXT
2/R3XyRUqPsGpcyS7IawXRgcludMtnmmMUjEkxMOXA3SDUvwq/S2z2wFr9v9Fzrd1qSEnv1I
IYwKskLNXaC9FE1hJaJ1yuSGxwzALRY4JTibLCI6z3dYH4y5uyViZikLst/fv0FQrYfTv5//
+Lx7uvvj9+nu4eX4/Mfb3c+DrOf48Mfx+f3wC7jCN80krpQONni8e304KD/VllnUuaeeTq+f
g+PzEaLHHP9zV0f4MopBoKyycEdSga01SiNLa4RfQGXBVZVmqZsNsgUxIhG4QgFPDtgEzdiJ
mz+DDI8+SNwmjRU6JgOmp6SJruhzVjPgfVZoLdm6DWPiJpVnwb7Ju5hfw+sEN0FkBwlq6mAp
HpiZpyDB6+fL+2lwf3o9DE6vg8fD7xcV4M1BlrO3dvJ/OsXjbjlnIVrYRV3GV0GUb+yrUh/S
/UhSywYt7KIW9u1wW4Yidu1MputkTxjV+6s872LLQuuCs64BDs0uaid1rVvuPLCoQVv8fYr7
YUMb6pFBp/r1ajReJNu4A0i3MV6I9SRXf+m+qD8IhWzLjTyj7TvcGkLk4K2hIkq6lfF0HaVw
g6yv4j7++X28//Nfh8/BvaL4X693L4+fHUIvBEPGE2KnrWknCDpryoNwg4yCB0Xo5lnVr0E/
3h8hssP93fvhYcCfVQclRxj8+/j+OGBvb6f7owKFd+93nR4HQdJpf63K/OaDjZS/2HiYZ/EN
Gfao2azrSIzc6E/epPPraIeMfMMkF90Z9rJU8RmfTg/u/bXp0ZKIEF+DV9i7dQMsC2yMJWZE
ajq3RD6Jix99nchWuIdHQ+r9Y9gTL3kMR+A3fvLEzlKEUkUot7gwb0YGaZQ6hLW5e3ts5t6b
JymCdRZvk7AAof79mSHuEjeyqIl5cnh777ZbBJMx1ogC9E7kHhh8H08JytEwjFZdnqaOi+7C
f2UfJOG0h6WGM6TaJJJ7QLmM9c5akYQjIrqahUEY3VqMsR9YoYMxGWOBXswu3tipAc2OiJYA
kFV3QHTxbDTuEJQsnnQLkwkya1KD4nyZEebm+hRYF6PLXiL5kc/cwHOa6RxfHp2nrtY4Ge8e
grqsyxJFRdz9Gox0u4x6+I9qrwimyPChuK9qKQ/+WFFmALMDWMLjOMJ1gQZHlL0EDwjz/iGE
XCAjoHxjavCqIxJ0WOGG3TJcvTI0wmLB+qjZnHAYfXHeXzcvci+jWwcl6V2ikvfOvFTr/QXU
xHl6eoFoQa5GZOZUXYQixEhd7NfgxbR3m1DvBlrwppd3+a8CdGidu+eH09Mg/Xj65/BqQjJj
o2KpiKogxyTzsFjC4510i0OIA0rDWP/uUEgB+tDCwui0+3dUlrzgEHwgvyGE7koqQWfbbxBF
rTJ8CVlO0pfwQLmiRwZ9q9wc4gbyA5tPvpPqQrGT3KQKuOgla8AFV62AEbfjFp5gG1acra32
KjwzclXfrFdwAhRWSp4IMvrXEOF4G07PdjEIzjac7EUVUmhsF20TuQV62Q3UkkaS7vZVkKaz
2R5/aWp3S9d7G53t3TVhzHNQIH30+UUwflo9+0pi6de7HVkAQCoMQL5Fj5SdsrvtqeR5zpJI
+eEckvIcFPwsMSi8W3RMTNwkCQdzr7IVg+OtY4AxwHy7jGscsV26aPvZ8FJuLDCtRgE8dNG+
Jc5bn6tALJTXDcChFtL/BFAvwGtNwO0bXtWF0qChHtx8Ga3BFJxz/W5D+QVAz7x3E/q8ghDQ
P5Wy+jb4CX6Ox1/POoDX/ePh/l/H518tx9ePV2zLfOE81+/Cxfdv1juOGs73JTiVtTNGGWGz
NGTFjd8ejq2rXsYsuIojUeLI5q3zFwZdh/j75/Xu9XPwevp4Pz7bilfBonBe5dftHjAl1ZKn
gTzaiitn2ZhyXUAWfCmZApdrZPsyKtO/et+KQU2kFSlkp0F+U60K5Wtvm5dslJinBDSFsDFl
FLvycVaEERrjRlEQi7v15BBJyHWaUp2HZzNBku//r7Jj2Y3bBt77FT62QBskrpEaAXygJGpX
WUmU9fDavghusDWMxmkQ24A/v/OQViTFoduDAS9nRJFDcjhvpVsOdml17mGgoThXWIwW4yub
0qlrU9RT8L5XCQl0Q0x47sM2pPSDo9Ck41qPTMeiH0bHMAjqqvcK/J63LnPRVkUIwBR0cnMe
eJQhkmBGKKrdS5ufMRLB4whQIVQi9RSPpdmqkwRS/6S4O0w6DZmHWE+3cz2yop8X3m+mJWWv
oYSygh4H0Ko6M1Wc6hg6i5JP6QSC37Ia47XagZVuK4f0+u1nwXYn+HE57NRs4R8B17fYbF0O
9Hu8Pv+4aqN6AM0at1Afz1aNqq1Cbf12qJIVoINrY91vkn626T21CpRe5jZubu3CYRYgAcBp
EFLe2i4KC3B9K+Abod2ixMxtbAfoPBfVtuqGmYh9f3cmLYBrETMFBJvBUpqnnUHPTZiqNjqc
DNsdj0sNuufY0fd3R+Ctm37rwRCAJSTQl+rnKyBMYQ2Efvx4ltiOMYTA1EtF4a1b0lIC3LLT
/dAQsmm6ABz01pZcljIK+ZUQnJt2SjN5C8spbXdEQSgsVBMbL+LM4BHNdLkd27gvTF8mLhFa
7dCf6ML3QACS0sqwjfLw193L12csz/r8cP/yz8vTySN79e5+HO5O8Ps7nyztFR7GaPSxSm7g
DFz8frqCdGj2Y6jN320wJgRgGOtGYONOV4Lb2kUKJlsiiipBrMOY2Yvz5VnaTljLSsjH7TYl
nxfrrmuGsXXpeGnf6aVxshPwd4wl1yXmO1jdl7djr6wlxVqGjbHdTVVTcArEch/lmbV3TJFR
Mj0IL9aRHdLuFOUZR+IkQWlmDFdZZ7GRuXWj+76otMkzmwHkpsbKfA2ed3u62B7MT0X889dz
r4fzV1va6LDIi7Fm2sEJZ1JbARY4gyBFrQrRntjpuuVnqZxav/94+Pb8N9dIfjw83a8jeyhz
dDciERyJlJtT/OZy0IzCIfYguG1KkEDLozv1DxHjcih0f3F2XOdJiVn1cLaMIsGw7GkomS5V
WKPJbmpVFcEQ5olkIhmOVrmHr4ffnh8eJxH/iVC/cPsPi2jLO/FdZGYJEEfX5HWtBoyDwrxw
a1+0qtKUontx+v7s3F35Bi4lLNNSSXUmVUYdq2C8CQ/JDTXawiMaP/BSw3VThlICTANLj/yl
qMvCzxvmLkHXokD8qugq1achv4yPQjMcTV3eeEx/r+BcMBEaQxnNnU+cqX09DrhqUqCdVjvk
rOMq12rW3/7rch53osKKt6Aj2tVorcZjdAiv68X71w8hLFCiClv/4UFzYoDfiomD8800BZdk
hz9f7u/57FqKIZwQ0Ijx26dCHAt3iIjEyoM41A1c+4IhksBA9s7UkgbNb2lNpnq1kgo9LJN8
1qngCu3KIZnRhDgtxEDhKMRoiaNPhAX5rIS9sN4nMyQyRI4jGjrpamasYEjVIrswTtH2gyrX
o5gA4kGFQWLpgin+yV9O3t8oKIpkoIHsVKdq78ZbACBCwXW7sb1eHH7F0JUW5kCXZ4+DI0Bg
PNMDSNSL9z/5YVPLzl7RcJeaq9XroS9oHnvOknHUQMSPLesWSxOv3NP4/hP8RuPLd2YF27tv
9w4770zeow0ChefAh+it1yBw3GKdu1514S22vwQ2B0ww8z2cx4o14fHYB7IGtgL81ITrYThw
jPoagCu5QJJqhp6WY54k3EWZLAwSdHIcuM+sTqPXJZ8mXWd820UWCEe107qJsxnQGnTlGszZ
4IbxJcfddPLz0/eHbxhz8vTryePL8+H1AP8cnr+8e/ful0XAobIi1O+GRKu1VNe05upYPiQ4
LOoDqRDjjWim6vW14BqdNijMHDuLoLzdyX7PSMAqzd4PD/ZHte+0IE4wAk1NvjkYCfRpFLC6
Epbujb6QxuT5mkTY8LvprXDIMP5Vvk6WiUbl4f+xK2x5C/YssZjwq1F+AbKMQ43eZNjkbIGK
zH7H91781oK/K90mxrbYBiA+YYvohdu8ARdSXRlIhWkKkMMiOGkLJKj7wvuqI7uC0yEsuwAA
77FcXl/EkDaBhYIXIYmvR6Z2+sHrRFxHhOrLYBml+RsuzvhXZ+1yEjvbgMDprh/taZDV0Ggi
WGZhIlvTNyVLIJT1TJXug9jzwoy6bQ0GSn9mITuIPBVAieKgBbROb3oT8nXRHs2HmuV4Imjr
yRVH6KZVzTaMM+tiOUH9DvhKr6icG6gz6EzwULBoCa00YpIm0HkY6fQg97IA8QmBweer/THv
DugBthRtPnx2ikZYKLbLhOqM5GIjV1JnhPJbhCJCk5n9EHOLnJEEg6UicLI3mtJgqX4RizQq
jA6Pd8YVLGQ43wNYkjrIkO2Jb/W1X5zGowybOjiHREjymfC6VEhZYUcnYPRC1UFCIANCLsPZ
DBOFwzkswyFFhDEMQq4IQdn+LMOxLFQOV7mM0aKbpUflM0JwKSaFoEUWDnTgfbyLbPKrSpYO
ePIYlyJmFTEFmxj50Su7RVMRMM4wcytAtIRVWJyncm950VZweUcIxXWRIvORLU3ThqQkKDk1
jTZlZSI7AnS/VMHGjL4EZSnBxTd34iPMVgldIYbNyVjhHkl9B+6JH5eUrolOYf2FN9TOTebY
gfF3TFceElIQseQh2ppU6SjMBA08zk8tpu2A/0BzJeKORNi9tq4TTtObMOy30QcCLViY07UV
sLmmRx7GF7z0AYEClSa6yOHuL7Kw3sjdsQiJBEDc0eR5p2Ny2z7M1CaZHMkyWWRi79SYCyXy
aiwm1uFnpYOykWdU/hfHziKDLhYDAA==

--5t2y62d5cins75sp--
