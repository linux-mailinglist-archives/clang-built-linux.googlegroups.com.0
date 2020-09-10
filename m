Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRNU475AKGQEZ6XCVAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FB8263EEE
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:48:23 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id z4sf3448084pgv.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 00:48:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599724102; cv=pass;
        d=google.com; s=arc-20160816;
        b=gg0uxdNpeMxrui8UU0QJOozv7u6g5ddrynMWsbVxzM6qG0tvDCzrtRwerVuHdTdcj3
         mtnrAI8EYwg7YEoOCKJpsWRt+qzqkJqnpLFlg1DS4gofkzbbfEDFoD8+UhuzDJEKNmYA
         eA5Hu2uu3Q7dBIykbCIKngkEBdpmpPRzjHiytnNEkO+kicxPzlvNVErxJTe08h7Qcfz7
         ohUvYIx0i+aUvJGSiBOjxU39zzl3FbvCjFQVKhBJw/efgfJf+A1oYNPnt6cLuBSN4Qlm
         4rW/LJ/BLNjBuhdXKsG/3kOSU/2Wup44V9Tfv9UcitlxIS8ChpmyEfoBTJ+uvBXIT8kg
         nCwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=7aB6osdYOn/ASUwjV+8m1c3A8t+oLv0HFGUBIUfGNL0=;
        b=pg+MbqwQrMpBd3Vil3ohOuduHusQ6Ood0FPiSo4bSGYAhka1anb6Kwoo+Z2xc43qob
         OuDuTJzp+lRUXEqd1yMt18uYyYJOWJ3bVTp8KTPUpgotPdwtUys3Z1PDb3oGn+dK/JpN
         CtjE5NPMWK4r4Kmg5lVZt8/G3v8NDntu+lRbnBcQn6nVewIMXa9DGn0dYx97JcxZzJWR
         9Idu6HF9TY4mCoXjq3ur+6XDUhgltHcPZXnK3O6xFyibX0KlX+D3nn1blV4ZM8eZ+Q2/
         2FCE5Vx1f+Ti8yJebU8tF51flM8RUenP1bkprc9NnMrKn14nLVXexNH3uW8JHBazEs1X
         qPmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7aB6osdYOn/ASUwjV+8m1c3A8t+oLv0HFGUBIUfGNL0=;
        b=YyKqfkbt8c/bTL0cTFjgZ3G9h1jEkDq+8ZNzbLx9i5rC9NvgQIVbmf022xF74xGTX+
         IoXbJyi7u4HoUi0LP5fwRnqTMsqTpjRH5SQOgaU/MAilvz13fhdCjs0nf1GW8DorhMhG
         XRMUmdGkS38ndDpVp3w33x/Fjgcf5JPBDUz9vpHQayf601Tk9EokpskKC6XBIZM/DBYk
         ILwXHKfnMxH8Y/z6ZTQGo4zNI0lu8+iG1Vb1rnNc43we3H8kQVQmz9znoPb4ehzzf4yj
         l0NEqFcN9hnf8t1w+jpl5IpGXChFOx6E/BMEd6wtsDuv07uHyOe9uGBb2KLMhxKsHTUc
         woCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7aB6osdYOn/ASUwjV+8m1c3A8t+oLv0HFGUBIUfGNL0=;
        b=FAmHhc4dKNhiQrv/SVmTq23FjF+/j3Bi2DzV/xeIqHmGequd0oP1cg9uTzannkjFAc
         uC63IMAKP7SmJnTgd6PeceQ8aWoJRu4bpB7q3pxhqKrB8GuqO1WcCrTNNgIr20F2EBPn
         8pDd0vLruwo4l1cVLF1Wu1OIVKR5x25rp6uVsQh7lr6A2jcRS+DEms8ONcHc4Kkhoe64
         DWgHQUgv/8lYhw1U+UyklRjBPPFGTHnG428mVlLHyocnGl4bkKsrJUrOF5DUKN1KL3iY
         jGvxjMJtTAPTZ65qwziJ/HSz6QDi28gS6udVhX3Ara/mbcuYnPnHuq8vpYJQk13mwKPt
         zCUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305hRdeMoia8unhHTpGKhew5fI3hNt1EUzYtcVj16HrMdxbd+Bm
	KBV/hxEemas9IZnzuyjoPME=
X-Google-Smtp-Source: ABdhPJw1wb9OctgRjC2uB/An2RCDRMvlqzSvjbDut7+dM8tbJni3gxefGLUYBx8X8qhTnIfRNYMIaw==
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr4453525pjy.178.1599724102031;
        Thu, 10 Sep 2020 00:48:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2154:: with SMTP id kt20ls1029050pjb.1.gmail; Thu,
 10 Sep 2020 00:48:21 -0700 (PDT)
X-Received: by 2002:a17:902:74c7:: with SMTP id f7mr4508809plt.144.1599724101284;
        Thu, 10 Sep 2020 00:48:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599724101; cv=none;
        d=google.com; s=arc-20160816;
        b=Hb++NN9Y6Yf+p+PXivFC2s3xxC+p6Rj9SzHzy0gbwwQi93qscN4bqApKsTYAhBGlFW
         kFTZ52gQSnXZTayd0j3W1OMAqvXWq28FQoSKfsB4X6S06/S7mbXfc+z1kgq6CwODduxs
         AJxFvO6tubvTMwXbazrOXZK0myZoQjDzhi4+tTo0O2Xe3LaWoyz3/c9gQNEj2Qrw9wgr
         ELNAkLNW+COzW5f6e/VYnIqxUiFpVU62HWzcE8pRM7eZfImK1eS5eicAHHhmAQGgBuq2
         2qDYib9KpRi4B9A/LmSaI9QnUN11nYIeLclgvH2BiK32WOIziG/+QbLq5/bn2zXY1uK/
         5ADw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=OLTftoosfD1C44mxkv3l3IT0ro7SzJmeIZy2U9dKHUU=;
        b=xXvwUk8FJ5zIcDgjVli9i8sIexLIck6lFkEDyECN0hjJO8tIxrNf6af/sd+DnzZz31
         O5kPft97JHsNWNWBxYy96x8mX6YnqfBSs5j305lB3Jy2l8RVH2dMflWvAnXMfcXi7Y4K
         eh7YeTIaWe8/cl5l4DVpfTxoETwg4liaQAMuRH55UJaxQt1/MWROrftMDxiDzUkxXRoK
         Qumpv9jbejJUVLb8LgiUK6VwNrIaTijiispbgvVdOiFXUQmaxydImZ3jNdsnFVoe0U88
         KH9uO6NsqmVvf0YPT+EU0PCo7k1DdhsRljeaQ2PKxK4OUtkeMVfg+XBkulEjwQcsbUO1
         ajWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id k5si81636pjl.1.2020.09.10.00.48.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 00:48:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: aNiCOYBiBZ/EoC4XspOGj6GQzSILdwg71+5746ySfqlJR54Z3aNR8eVGgHmfqjpwEUDGfAyreU
 jdAk7JY9K92w==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="158522382"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; 
   d="gz'50?scan'50,208,50";a="158522382"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2020 00:48:20 -0700
IronPort-SDR: Atau8F018oSVi202fCzWNf2HF0lkzxxJyfQ6GSe80POMuw80UxQMdWMXNfzl4a6/fERJrev6Ry
 oMqQbScuusVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; 
   d="gz'50?scan'50,208,50";a="317820180"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 10 Sep 2020 00:48:17 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kGHJZ-0000mD-9Z; Thu, 10 Sep 2020 07:48:17 +0000
Date: Thu, 10 Sep 2020 15:47:32 +0800
From: kernel test robot <lkp@intel.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-hwmon@vger.kernel.org, Alex Qiu <xqiu@google.com>
Subject: [hwmon:hwmon-next 34/35] drivers/hwmon/pmbus/pmbus_core.c:903:13:
 warning: variable 'ret' is used uninitialized whenever 'if' condition is
 true
Message-ID: <202009101524.qrvY8Jwj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
head:   4fc1c17042661fa31212b561e0a59e3507760258
commit: 33e7d4ebc983b2f56f8f92c5b1b6f03eb20789ca [34/35] hwmon: (pmbus) Stop caching register values
config: x86_64-randconfig-a013-20200909 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 33e7d4ebc983b2f56f8f92c5b1b6f03eb20789ca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/hwmon/pmbus/pmbus_core.c:903:13: warning: variable 'ret' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           } else if (!s1 || !s2) {
                      ^~~~~~~~~~
   drivers/hwmon/pmbus/pmbus_core.c:923:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/hwmon/pmbus/pmbus_core.c:903:9: note: remove the 'if' if its condition is always false
           } else if (!s1 || !s2) {
                  ^~~~~~~~~~~~~~~~~
>> drivers/hwmon/pmbus/pmbus_core.c:903:13: warning: variable 'ret' is used uninitialized whenever '||' condition is true [-Wsometimes-uninitialized]
           } else if (!s1 || !s2) {
                      ^~~
   drivers/hwmon/pmbus/pmbus_core.c:923:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/hwmon/pmbus/pmbus_core.c:903:13: note: remove the '||' if its condition is always false
           } else if (!s1 || !s2) {
                      ^~~~~~
   drivers/hwmon/pmbus/pmbus_core.c:885:9: note: initialize the variable 'ret' to silence this warning
           int ret, status;
                  ^
                   = 0
   2 warnings generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/commit/?id=33e7d4ebc983b2f56f8f92c5b1b6f03eb20789ca
git remote add hwmon https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git
git fetch --no-tags hwmon hwmon-next
git checkout 33e7d4ebc983b2f56f8f92c5b1b6f03eb20789ca
vim +903 drivers/hwmon/pmbus/pmbus_core.c

442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  852  
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  853  /*
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  854   * Return boolean calculated from converted data.
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  855   * <index> defines a status register index and mask.
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  856   * The mask is in the lower 8 bits, the register index is in bits 8..23.
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  857   *
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  858   * The associated pmbus_boolean structure contains optional pointers to two
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  859   * sensor attributes. If specified, those attributes are compared against each
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  860   * other to determine if a limit has been exceeded.
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  861   *
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  862   * If the sensor attribute pointers are NULL, the function returns true if
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  863   * (status[reg] & mask) is true.
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  864   *
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  865   * If sensor attribute pointers are provided, a comparison against a specified
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  866   * limit has to be performed to determine the boolean result.
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  867   * In this case, the function returns true if v1 >= v2 (where v1 and v2 are
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  868   * sensor values referenced by sensor attribute pointers s1 and s2).
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  869   *
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  870   * To determine if an object exceeds upper limits, specify <s1,s2> = <v,limit>.
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  871   * To determine if an object exceeds lower limits, specify <s1,s2> = <limit,v>.
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  872   *
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  873   * If a negative value is stored in any of the referenced registers, this value
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  874   * reflects an error code which will be returned.
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  875   */
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  876  static int pmbus_get_boolean(struct i2c_client *client, struct pmbus_boolean *b,
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  877  			     int index)
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  878  {
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  879  	struct pmbus_data *data = i2c_get_clientdata(client);
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  880  	struct pmbus_sensor *s1 = b->s1;
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  881  	struct pmbus_sensor *s2 = b->s2;
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  882  	u16 mask = pb_index_to_mask(index);
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  883  	u8 page = pb_index_to_page(index);
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  884  	u16 reg = pb_index_to_reg(index);
d7ee11157f1fce drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2012-03-28  885  	int ret, status;
a66a6eb9db10bd drivers/hwmon/pmbus/pmbus_core.c Edward A. James 2017-08-10  886  	u16 regval;
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  887  
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  888  	mutex_lock(&data->update_lock);
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  889  	status = pmbus_get_status(client, page, reg);
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  890  	if (status < 0) {
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  891  		ret = status;
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  892  		goto unlock;
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  893  	}
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  894  
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  895  	if (s1)
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  896  		pmbus_update_sensor_data(client, s1);
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  897  	if (s2)
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  898  		pmbus_update_sensor_data(client, s2);
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  899  
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  900  	regval = status & mask;
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  901  	if (!s1 && !s2) {
d7ee11157f1fce drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2012-03-28  902  		ret = !!regval;
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20 @903  	} else if (!s1 || !s2) {
af78fdf4a61827 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-09-13  904  		WARN(1, "Bad boolean descriptor %p: s1=%p, s2=%p\n", b, s1, s2);
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  905  	} else {
8ba75b20284967 drivers/hwmon/pmbus/pmbus_core.c Josh Lehan      2020-06-25  906  		s64 v1, v2;
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  907  
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  908  		if (s1->data < 0) {
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  909  			ret = s1->data;
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  910  			goto unlock;
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  911  		}
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  912  		if (s2->data < 0) {
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  913  			ret = s2->data;
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  914  			goto unlock;
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  915  		}
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  916  
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  917  		v1 = pmbus_reg2data(data, s1);
663834f3b796c0 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2013-01-20  918  		v2 = pmbus_reg2data(data, s2);
d7ee11157f1fce drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2012-03-28  919  		ret = !!(regval && v1 >= v2);
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  920  	}
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  921  unlock:
33e7d4ebc983b2 drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2020-09-04  922  	mutex_unlock(&data->update_lock);
d7ee11157f1fce drivers/hwmon/pmbus/pmbus_core.c Guenter Roeck   2012-03-28  923  	return ret;
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  924  }
442aba78728e77 drivers/hwmon/pmbus_core.c       Guenter Roeck   2011-01-26  925  

:::::: The code at line 903 was first introduced by commit
:::::: 663834f3b796c0a118b84cf18c759f2c2aa537b6 hwmon: (pmbus) Improve boolean handling

:::::: TO: Guenter Roeck <linux@roeck-us.net>
:::::: CC: Guenter Roeck <linux@roeck-us.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009101524.qrvY8Jwj%25lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICM3VWV8AAy5jb25maWcAlDzLdty2kvt8RR9nkyziSLKsODNHC5AEu5EmCRoA+6ENTltq
+WquLHlarVz776cK4AMAwXbGC9uNKhRe9UaBP//084y8Hp+/7I4Pt7vHx++zz/un/WF33N/N
7h8e9/89y/is4mpGM6beAnLx8PT67fdvH6701eXs/ds/3579drh9N1vuD0/7x1n6/HT/8PkV
+j88P/30808pr3I212mqV1RIxiut6EZdv7l93D19nv29P7wA3uz84u3Z27PZL58fjv/1++/w
95eHw+H58Pvj499f9NfD8//sb4+zs937u9s/9vf3n87/PId//rg825/t/9jt//h092F/fn/1
6e7Tu93dn7++6UadD8Nen3WNRTZuAzwmdVqQan793UGExqLIhiaD0Xc/vziDPw6NlFS6YNXS
6TA0aqmIYqkHWxCpiSz1nCs+CdC8UXWjonBWAWnqgHgllWhSxYUcWpn4qNdcOPNKGlZkipVU
K5IUVEsunAHUQlACq69yDn8BisSucJo/z+aGOR5nL/vj69fhfFnFlKbVShMBG8dKpq7fXQB6
P62yZjCMolLNHl5mT89HpDAgNKRmegGDUjFC6o6Dp6Totv7Nm1izJo27j2aRWpJCOfgLsqJ6
SUVFCz2/YfWA7kISgFzEQcVNSeKQzc1UDz4FuIwDbqRCruu3x5lvdPvcWZ9CwLlHttad/7gL
P03x8hQYFxIZMKM5aQpl2MY5m655waWqSEmv3/zy9Py0B4Hu6co1iW+B3MoVq9PIYDWXbKPL
jw1tHElxW7Fzqgp39Wui0oU20AjJVHApdUlLLraaKEXShdu5kbRgSaQfaUCJBkdOBAxkADgL
UhQDPGg1AgiyPHt5/fTy/eW4/zII4JxWVLDUiHoteOKs1AXJBV/HITTPaaoYTijPdWlFPsCr
aZWxyuiTOJGSzQUoORBQZ40iA5CEk9OCSqDg66WMl4RVsTa9YFTg7mwnBiNKwBHC3oAKAIUX
x8IxxcpMSpc8o/5IORcpzVqFx1ztL2siJG2X2p+sSzmjSTPPpc+N+6e72fN9cEqD+eDpUvIG
xrQMlnFnRMMILoqRju+xzitSsIwoqgsilU63aRE5b6PeVyOm6sCGHl3RSsmTQJ0ITrIUBjqN
VsKJkeyvJopXcqmbGqcccL8Vw7RuzHSFNMYmMFYncYxQqIcv4EnE5AIs7lLzigLjO/OquF7c
oFUqDav2xwuNNUyYZyyNKhnbj2VFTClYYN64mw3/oL+jlSDp0uOvEGJZ0Z2MoRedxoLNF8jY
7X5EOXC0Jf1uCkrLWgH5yhuua1/xoqkUEdvo0C1WTM22/VMO3buDgUP7Xe1e/j07wnRmO5ja
y3F3fJntbm+fX5+OD0+fh6NaMaHMKZPU0PC2KwJE7vKl2XB8rLdhNZkuQNTJKtBficxQY6YU
NDr0Ve6ehDC9ehfdFWRIdO9kfM8kix7RP9icnltg5UzyolOuZnNF2sxkhOXhIDTA3IXAT003
wNuxk5MW2e0eNOHyDI1WoEegJuuGdAaEHSmKQcocSEXhJCSdp0nBXH1hYDxNcL1m+u1O+Svt
j3xp/+MwwbJnRp66zda1dBRdwdE/zMEgslxdX5y57bjZJdk48POLgctZpcCXJzkNaJy/87it
AUfcutaG7Yym7A5O3v5rf/f6uD/M7ve74+th/2Ka28VGoJ6JkE1dg7suddWURCcEYpLU43aD
tSaVAqAyozdVSWqtikTnRSMXo1AC1nR+8SGg0I8TQkfjDirLg/T+HK1wJ2KOYDoXvKmdc6nJ
nFoVQh2DDp5WOg9+6iX84wlrsWzpTQ5kD2MglBMmdBSS5mD4SJWtWaac/QIlFEe3rTXL5KhR
ZCZgGIIh25yDnN1QMT3XRTOncGQOvRocS2OtHXXMUxy1hUXVT0suoyuW0lMYQAOV3PSMQH/k
kZUYRyimV4DlexyinKgJnXtwsECvem4z8rSMEDJ6vXID2jr1fsPahdeAW1J5xCuq4sThINNl
zYHJ0aSCH+m4KK3JgKjSrMKlB34VsEhGweyB9xllbkEL4viuyJ9wCMatE64XjL9JCdSsd+cE
RCILYlRo6ELTQbdnU3EdQPyYzqDyOKYNRl3UieAt4RytvK95QZHwGs6J3VD0ZAyrcFGCIvCc
jBBNwn9inNPFY95vsGAprY0nj17TyJVMZb2EkcFI4tDOxtce107awRJ0FUNWcgYGEcRYSI/c
aHv+o+Z8AUqjGMWZ1lFzWo0ZCX/rqmRu+sLZX1rksOcub04vl0Dc4ruheQO+ZvATZMQhX3Nv
cWxekSJ3mNQswG0wXr/bIBdWH3cmhDlJD8Z1I3wbla2YpN3+yeAojf3BkzD2I8/02pEBGCYh
QjD3nJZIZFt6Et+1YYQYS3r04AQcK9gR5Fnrd4QYZkdRmjE+9kxOnXdLiEX7vR3uDCHi/+UG
dc4aA+uLZnlYKYxSpQEDQHjqxaaATLMsqomsfMBQug/4jMfRJm3r/eH++fBl93S7n9G/90/g
gxLwRVL0QiGIGFxLn0Q/sjEAFggL0qvSxORRn/cfjti7/aUdrnMJHEaRRZPYkd2gqqwJbLOJ
DAdVXZBYMgYJuORIAhsuwP1oTyskYSw2+qtagIzzMp6G8hAx+QEecxZHXTR5Dg6icXn6LMYE
1cb4xIArFCMxZgM2VLQ0dhYT1CxnaRcsuN5CzgqQw5iNRY1qzKB0PW8/39shX10mLhdvzGWA
99s1bzYjjWo7oynPXLm1qW1tTIW6frN/vL+6/O3bh6vfri7dDO8S7GznjzpHpiB0NvMew8qy
CQSqRBdYVGBAmc1WXF98OIVANpjCjiJ0bNYRmqDjoQG586swL8Ik0ZmbTu4AHlc7jb0W0uao
PIGwg5NtZw11nqVjIqCrWCIwd5T57kmvdZDPcJhNDEbAI8LrDGpMdwQDGAympes5MFuY6gQP
1XqRNpIX1HUJMSTsQEaVASmB2a1F496oeHhGdKJodj4soaKyuT+ww5IlRThl2UjMak6BjfY2
W0eKsUN+w2Ef4PzeOVcFJmdrOk+FU622hKkboXftjSQVqAWS8bXmeQ7bdX327e4e/tye9X98
odOyrKcGakwi2OGQHDwRSkSxTTEZ6lrrem6D1QK0LVjjyyA+hHlRK254qjS12VZjQurD8+3+
5eX5MDt+/2qzGE5QG2yUI7vutHEpOSWqEdSGBj5oc0FqN+eAbWVt8rMOf/Miy5n08vCCKvBr
gFkj+g6JWE4H11J4uX8E0Y0CtkBWa/2rqF5GTBTDQhe1jCd/EIWUA51TcRjjMtdlwiam2x9s
e/EA0WvRCM8hsQELL4EFc4gpejUR8wm2IEXghIEXPm+om4WBnSWYb/NMR9s2DvbGKLJmlUlW
T6xjsUItVCTATmCqWmYaNoxWMW8NPIFgmjZfXjeYjgUuLVTrww4TWi1OTzTIF8aSmh1ql7/p
ifwFm7/g6O6YaUUHIqmoToDL5YdYFFLL1B2oRK8vfqsHNnPCDem1fd1MHIJhiwqscavTbRLr
DxelOJ+G1Ve64oEIKxkIaVrWm3QxD1wDvA1YBdIMMXDZlEYgc1KyYnt9dekiGK6DELCUjvPA
QPEavaG9YBHxV+VmSqPgGCBJVm7HzSCr48bFdu6mMLvmFDxT0ogx4GZB+Ma91VrU1LKbCNoo
BJ1ojIVy9i4zYeBwmOD0gW4Al2aCCzagTWMXEsZISnRXwUwmdI4+TxyI13Lvz0fAzhMeDqOF
OC1W5chSjfVQGbuONZyFl/Z6rNUhThw3Cio4hmeYL0gEX9LKpiDwVjFgIzcn0DZgkragc5Ju
QxVfmis2YIKJSSLc44auEW8L5YIXERCr/qJpf/vhRjlfnp8ejs8H78bDCadaM9JUQZA/whCk
Lk7BU7yH8C92HBxjifiaimhwNjFfd5HnVyPPn8oaHItQyLuLx5bDvTthe9R1gX9RN3XBPng6
tmSp4BgxTJ2Qqw1ag86y8JzfG6dmgkTGBByYnifoj8mwa1oTW7YjFUvj9h13FOwxSFAqttGL
MUyKO1YL8P2W1pEjac0CiEmnUzeSQYUtW33cRxPW6zP+kJ0Jifi5PXiIbj04LXAfWs8CL8o9
U2pjCws0XuVUusMkpJfIxLbQazjaAqWw6BwSvMJuKLq3+93dmfPHP4AaZ2zFd8qHw/QtxFhc
YnpENHUY9CIS6gs05WW3hgHVEpggbosH8KZn7Wi8Ugn3bgJ+oYPMFAREk+3tqfS7fzaBhueE
uSajaTvkc8/ykvDswAmR4MGj8iD+tYQB22yFz28SYlS/pSlZHW6b1SjDsaPnj1u2pNsp3852
UXJjeAijmDjRAaP6gWfdY2IaPjIqzT1jCT9BZJskSlXSFIPy+KX6jT4/O4s5yjf64v2ZOwa0
vPNRAypxMtdApvdn6YZ6bp5pwOg5Xm9E5EJnjRs01YutZGhGQUEJDBTP/fgQQnjMKPm6wPIC
Zt8xp+lzgImsTS8ZGYUUbF7BKBeBlA4ULZ/EVg7CVzTz/lK3bR6E0kGI7ZwNmF2kYX5WN4TW
xrN/IcqGV0W8uCHExBKJ+IVZmZkcCCwhZliAXVm+1UWmxhcEJhFSsBWt8W7WTbWdiqRHaRaS
ZbozWS6sVTOtzLZ79iMcAf9bOdyAUY1NhlsTZMIEFuqVloysC4g2a3QsVBskRbAwd2KyNZES
MRdPLWoPxfpRz//ZH2bgl+w+77/sn45mb9Bezp6/Yp2xvT7vZNxmdOKRXzllt/rYGsk6Uxv9
6pjECJYEy8CXTZiBgQUsVHuTgV1qNxFnWtpsrXHFjIeBVr3PYToBJOAa9p9HY3hLq06FDuTc
zrR2XTXTJOhKw1ELwTIay3khDqihtrQtAJBwFQlRYMq3oxknjVI8FsUbKITa23blFjGgOoK3
11HX7z6EO8N9y+1D28IdPrlxrHav2wbRMpMw3NjUwIlZuEEhLHJcJ2aVwokVfCphABjwf0VA
u0zOu9OEVoCDyXVAxttIyicuk5jltj09z8HMpJGKo8+kFjyEJfMIq8L/Yh6w69r6HRYliXUY
RIfUlAXKs29vr0t9igiI7m1Wq3wc+3iMvwEF5ihLYA+8rgZnLHApk43S69SHRysLlM6wDnOa
Unfg8P98yqWqyz5zMCi53FtkV2s3yw/7/33dP91+n73c7h5tsDlYLcyuCPpxqhgt0rsnzO4e
9yGtsA7So2U79LbthxrcEE9eX7qG2S8gKbP98fbtr07ADMJjIzbnlKCtLO0Px/s2LZhMOj9z
MvHthQtmGYKQzEnrGwd5K/PEtc4TU7PTfnjaHb7P6JfXx93IHpksVR8ET5zxxr1CsPdG4W+T
/2gwUERPrKSV8qY3moKZQ/5w+PKf3WE/yw4Pf9ur3MFTzmJXxTkT5RpjENAuNkgYJKhkLFrN
XzJbDuFlsLTEly8lRCToKYErZVzzvE38OpcSa53m855AP5rb3jlc8Vwn5/OC9hMfyQUMO/uF
fjvun14ePj3uhz1heNd8v7vd/zqTr1+/Ph+OA6fhXFfEvV7DFip9pddh6doUDkWnhzgCE8wl
7CmJ5ensviydLXcAWIjYAYeLRpfoWpC6tjeB3qDoXxfcPKlBkyJ8V9VDTUktG7z+MeiTaBMv
c8xkUnYROiHYnoHEobU0ktsagJZl/z/n0numZra1G2f3Tf61szmu9q7Lb22tmpTgnqMvVJBt
XxCh9p8Pu9l9N5M7IzVuceYEQgceyZtnuZYrr2ARLxYakOabKc2Azshq8/7cvV7E7A851xUL
2y7eX4WtEF41Jsrznm7tDrf/ejjubzGy+O1u/xWmjhp5cKW9oNPPR9oo1W/rPA6bAu6Esr2A
ADXluihmG7itQ3BIdC1o0cfGbmnvMSMb9BdExLogiZ+ssg/tTJYC81r5BNuaudA8ZynDCpOm
MooV6/1S9BvHSRbzoAy8U53gK6RgUQz2BC/+I9fey/Ae1rbi7WQMwOt4e0tGgybNY/VveVPZ
9Ay492AqbCo6eIuzon6N2VBtZSguIJoJgGgtUX2wecObyEsRCSdgbuDsG5qIPw12S2E43FY3
jhEkVWNf1gW2SdpytOl25va1oq0y0esFU9SvKu9v8qXOthVBX8y8ILE9QpKyxPi9fVEYngF4
cCCTVWYvw1tO8b0Ji2drs6LHg08kJzsu1jqB5diC1ABWsg1w5wCWZjoBkimFBdZqRAVGFzbe
q5MLC8Ei3IA1SxjHm8Jee9ffFf6OiETG76rARLtFftJqODVPdE9A3bq73rdr9JyoBW3DXlNv
FQXje4IYSstdVhpsMX97VxlOplUJLXNhBiPAaPvZK60JWMYbzzAO62wTkm3VTBQDd7GAIw+A
o2qMQfn9g3ZcEB+9kLGCwhR4bO3pmSKC8IjTyUdNBvzDpzpWX/7wvQ7mpDCvNKGtKpMqB8Xd
pZb+KZ6umyhNhGPtYpjNMTVABohJLrC0In6UPDeaSoXmDrRJdwdDU6zLc1iVZw1mkdC4YIUv
8npEBxpQl2eNje2VrgUIdMNUXDn7vYZquAhdp5RtioiLEiHVgg065p7DaVp+ax82jq0W7Ayz
6ca+6M+P6pImUKftgO8uEmav3mMbh8dtSXqOWd86lS40lkmB/VPdS2ex3rjCNgkKu1sWiHaP
gYap17AlEFm2aX7fVvUeC5jVmFuC+t0trA27tsXH3aVm70GmfPXbp93L/m72b1vH+/XwfP/w
6F1qI1K78ghVA+28PeLX64SwaG7h1By8TcKPP6BfyqpoQesPvOCOFKiyEqvlXX415eASi5yd
azwrye5y2uMz7zpNZBWv3rBYTXUKo/NGTlGQIu0/gxDuXYDJ4vnJFoyCI+hEOVuLg5WLa3BI
pETt3j/n0aw0WfSI2DQV8COoz22ZcLfev1OB5tlhmE1P/AsFfEEjU4lp7I9+LVj3tiaR82hj
wRIvgdc/xVF0LpiK3Vp1OFi7mPlEu+sfc6cuQsLrJJ7ctQTxKit8NO4uD8v3ahI/P0SwX/zo
JDOIG+1tye5wfEAunqnvX90qTFM8bl3QbIUvc7xSCQJRXTXgxPPTbBPH6OI4mQ9wN8HG5iQK
UESwGKAkabRZZlzGAPhQN2NyGTiUWFe20bJJIl3wNa1gsr1TH8DDczToazJhPeH4pWFWntwT
OWcT9Avz/YLTOy6biTPpYmMiyujWYqYjOix+KOPqw0miDn87/btUbsBenqyOcpfIsuVHTP+M
2tBPdB8Jtc3tc0n7sQs+vIZ1GBmwGLclZhm4Nf4ncBzgcpu4TnXXnOQf3QX5gwzC4j9ZJLI6
d0hZKcRKV6O6YeXeo/IWbgJTCz8Fi/Zdg16iU51doN87uM1UHMNdUTpf/TD2zE4dVAFfV+4e
ibUEuz8BNKNNwHqXw3wzJRuKgAeUaUjYWazjXUftvV+B+WWbzKtrNEkky9CGaWOWYt5X955K
JzTHfzBk9b8P4uDacoA20doxJ/22v3097jB1iR/KmpnSuaPDpgmr8lKh9+6IZZH72TMzBwyS
h9fS4O2P3qu3tGQqWK1GzWCIU59kG3YPydaJyZqVlPsvz4fvs3K4nhklA+P1YR2wLy4rSdWQ
GGRoMmUm5qlljQk/LGiLUYIAEzxXGgOtbJ58VOg2wggzMPixlLnrX5jqhiWlNS4MP3flSIld
qfvRBZcWJtdxJPONrMrjm6naC7+9ne0kuOMGHnzha7pqoy3EUFYPY5HuZdApQbctuMq0TVZv
p1P2oAcOo5lIWlBUM17oHqnvSE36UAevXbCyyIipVuF7sgRiEldqbbE+xxjPT/OME1xL6bBa
t4eGW+z3aTJxfXn2Z1A6+eN3FT4k/nwulpAYvhASS0SQYk2ilXRR7NK+mY1kJ6Qpm/GT0mlB
ia0HdNqCDxEA80+93e9h7q0eNuKrLXl9/qe3N07yI0Lrpubc0Qk3iZt/uXmX20rqnt6NHL8f
7SLE7lYBL3a6lLt33lQIP133f5w9y3LrOK6/4prF1Mxi5tryI/ZiFtTL5rEoKaIs22ejyklc
06lOn3Ql6Zn7+ZcgKYmkQKvrLk53DIAUnyAAAmCXRWm4j427mMvOfnVPyS9loFzj3ISqeKZR
II/GqsibxjHAaYcqmSZmgAp2JE6gPDowYgetSvEAPNXk3MLdL+ogYDVUGphIZvJ9P2sf+LEZ
UnkMVehTZ/yW50N++/rv+8evQsUeHwyCMRwTK3gIfou1QAymAKK0/UucZMyB6CLDlslQj4jU
dBiHX+BkCsqzAyXZvjCrk0A45T2VqoiYlNgJCyRGKBAtBJJFuNugpFF8D/VUl1X0XuRuMw8O
QGjSDoSWwIDNVkEyi2OCukTrKkRnIqMeziLrhzM/VC2CYY+U6oSGrF94pFrZ65CtjM7ARlUQ
lbnRCPW7jQ/RGCidQUfQilTmaS16TUs6guxBgkrY6eIi2vqU5/bdYF8Cby9ToSZuziIhLQpY
caSmrKKqampqg06x8V0DnhYntyECNLQSW+wwL9YKkQBrhXQQYxcMs6RxcjHg86g64TpFm1i3
LxI4Xj6t+AQGhuFAwBU5jzZ8X7OYTbifwNY3fEX8uTdNGC4qtP3eenh0Eph7dZ7FZ89FEaOl
D84YjvDc2nED/BqaRv0e3iR7whF43iBAUEBsYbdHZdhHmyQvEPA1MRdTD6aZkDELirUmjlSv
kNGMcSviMA0hxhT6VBj2JPWpP2G0cP89TSHHbYIix3OWdgTdPN8lkj2/S1E533HQ3UD86y8/
Xp//Yo4si9fcSltWNhub/TYbzVbBzJ96WLAgUsl04FxpY4L5ZsGe2oxYyGbMQzYOE3FRzoGi
4OOTSbaK0XLjbYs8oTCmskHYtaxOsFiUWwsUd2Q7DWs3FToYgM5joSxLla2+lok9CeN2AXBf
uWSKl1td7hRa5Rc+btQpBAs3yuRleTnd45FU55FTu389lJRxof7i4cKqIcl+02Zn1dEJMiGU
YvxSLc8y66uxDjrXBFuO1o2COaeCgumdYMGOJ0guDU489uELCUDhAl1Lzsa5WtYlpOrmnKbX
cRGheMr7QCGSsdJNYJfU6ioet7+XY+QgO8TRqKMA6vopJWkAzKKIxp+jTOmmbCXLAVngVdBM
qqUlOA1gNz1Oh6zTKmrVlQiG6Ur1SoS31UOfdF6fw9Pzr47XcVc14hdvVu9UYDSMR6ZkCL/a
ONy3Rfgtyp2g43qwoilxTS5h4LeYYd5HDg52f6peb3yQLPEnW4B82VxC6uOOpFTFeJq80szM
CUnyWCKKggxmHeGAkddH2PElsfbeJDWzfojNZUrhHQQy1tLIPg8AlxHPMAEyrILNFs8hngU1
JnFxcznslYYwbNGKxntMuFfePrAnOXF2PICQEo1od7udBwvDuj7A2n1jf9lAMYFCBYPIUrbV
b33QD+Asi6wfpvdnTTLLSgAXlKQUJwMgcOU0wFZeRkpj95eHwmrYJivOJclHAMMi1NffofID
elQkSQJjsrZyCw7QNs/0HzIrHwW3djS9lVEE0kqarTVQo4aLTTX+vNpWB09arjjCkoXFOXjb
8QKeGhiqD8UKJvI6FYN1f3qQmbUODUyMxsQYBHmE1sjsJN1mja4lz8V5WiKd7++3BYxolgG4
KJO84WdamxmQGjVpfAxxWE0PzoqitAMF1H0hVpWNGGnvIJTAAxyuwJE5yjxA2j23rEYSBjsU
txOqrKJGRw+8Gi01ORZip3rKZ0tItw+yvqAxCz9WNSZqyG9G3Ap9gt9tkTC4um330BdUcqvM
VLtVKpNam8LapbT2ts7dKkWqimKHhUGhBK7YHtIKsihzCOczY2DDR0vI11kRPV1NwdNEPSli
myNnX7dPO4O4bOixtpwNJX+vCqF0FUKM1KmGtOAxqshBmAbP4RxhFYnlvbX2tnj+9fY1q55e
Xt/BFenr/fn9zbCPEsGArQNR/BY7nBFIFdigeeSTuiqsQIGq4OOwFnL5p2DtP3UXXm7/eX3u
4hGsMB92pB5fnk2Je7iF5WMC7rMmu7hGEDIh1mgaX1D4AYGXxKjjSpg59neb3y8vYl1WQUBR
Rc7YOhSY0LQoA2B/dgt/W+yWu3HgHMlnsWoAEiYF5Rogwb/aXJBG8swpYGEdVuDgQnn5B1cL
eGJ/pLX9sJvcH9JgJrHtnSQ2ZArcEdduRIk8wU0eAnegsR/ncWgSzA2X/CQm9pZiPAUPY2xt
1pgQIqB3Aj0EtssF1R12Kmzv7Y/b1/v71y/j3WN0LaJhzWPLUUVCT6SqMVh7WDlN6xBhxDGx
0KAg9WF59JQepSrCiMh+c7ncIYrrbOFtQlgvI7dHYXZKImKmq1bw5hBRp6GsarztY/URxhBd
0N5p6FloKs6RqrSDmTVMWgywe7EeL8NghDjBOVrep19Xl6NtTBcljhGWP4DXVULY4AyowSkN
20r7hGrQmVZJltgNidI9SKiLMVfqED9vt5fP2df77MdNDBm4cLyA+8ZMy7YLwy9KQ+C2CS4F
DzJ6UCbqnA9tYGZmT/lTcx2ZJ2nw3a7SIzVPbfVb7tsRkObqhbLhyFLwfYmKDXAo75x7nF05
8gjT4MrKHKmBbuZfQlP7F0YBhZWQZQJP3Eyyn5QH2zbSQcAUW9fXkbzc48GBydQTsI6nxg4T
P4RMuqe16TEDwNz0ltOAVvObQeQTcLEJR+smvz19zNLX2xukU/7ttz9+vj5LY83sb6LE3/Ue
s044qIlTbGkDJo1LuzEC0NLA6UeZr5dLBKQprW8Bo5DdQbmFbE0tuyzKehqVX0pklBRw3Di+
TM9VvkaBfQN70e9PDd/Q3pIToSR4BLmWpobteGwv7SA6R72GxpDP1nbdEHK2WGiZq7LIJxaY
6fQMLipFY3slC2muLoqsU4S8sZBDenJl2HNlIouY2nYU+O2r2PL+dH/o177sZy0iKj2LhO6A
1AlYwktmVSMhWOruHidzP3BH5vaQgU/QnyIenjnwErZljQtcMnMBx+42APN4otXRHZV76Vej
ceIrAwVeYXD2DC83WCVpgcukgBO6nx9HOJoTQH7SDcztfNtKhG0B7Pn959fH+xs8fTOIYnop
fr7+++cZIquBMHoXfwwx+4Ml+Q6Z8nR8/yHqfX0D9M1bzR0qxTefXm6QI1Gih0bDa1ujuqZp
e8dqfAT60Ul+vvz+/vrzy2TdMMxJHstwUFS4sgr2VX3+9/Xr+Rd8vO0FddbmizrB8/nfr21Y
DbYMWUYsosT9LYNk2si8h4ZiyutPt/0fz08fL7MfH68v/7YPsStYDvFlGm8egh2KottgvsMv
yypSUkdiHaLoX581V5wV4wRUJxVYdUiyEpUBhABSs9JWYDpYyyAcCxUySR6TbPxmm/xWn7RD
Pnk6anOfleDtXazGj4GTp2ed8sE4PzqQ9JGL4YGrAQlOuaT/mvFQzVBKhv6qvmOVGmg8F0if
sUIFIZlHs9uNXoZVT2w0puNzJ7TLOCUc50CNuZAqeEUbzzVgr6NXnqtYRQDaqK6mVb66GJ9k
7WPBjTtOsyWyBiJd1XU9vtybqnxHlHQ1dcLDkA1aZlH0PBAK6OaUQbL7kGa0trydqmRv+Vqq
37aspWHnxQjEmCnXd2XNuAUN41FkiN6QfEAG3Mp1mJpLClBpkkdJ/xaQHeI33qJ9hqFBBO70
pgPVvsVWup+xrCf+l0u3Tsw3NbcVO1bj9wtFihR208aVMvzJftLCB2htzbiDio2GvxQyFBM7
2XR5NxBS/KE4bsS8NYpcttuH3WaMWATb1RiaF7rlHTy3dqH0FJT7iAk2AJkOxyLD2NoqStkp
+3QUn2Wq0IF9+UkoqKHn2qwjSj2JBAlk0LtbEkQ/zmOxDmi5DHxWGU18YonHKKcJ4DrkLkFc
hXhT++5O4PlxAn/Z3sVXBO9BFFdgCj7WUdzgX4Ana0BlAT0FJdAXPFNzNTUCFZ+YhUqMEdxk
J/YRrNTqhiXjNFEA7dLhjEcciqAqLpRSPj3E02VJcjgzNB5DIlMSVpY7sYQ6thJJGDmAmlR7
29/XAINEz+tDheeaNwndJYmQIK3RGE+jBByq9bVt5JHXKe3m5ChB//XzeczoeZLzouJtRvky
a+aBbeCL18H60gphGjdMCDmBXeHQwkXJkEHuGJxbHISE4nmpoaYpkysIu/SO+G4Z8NXcOFDF
kZcVHGzZkJqaOk8oHsSpmmEWN1LGfLedB8S0IFCeBbv5fOlCAiPBbjdktcCs1wgiPCweHhC4
/OJufrGax6LNch0g7Yv5YrM1PB14RawrMFPR8eUhu8DbVpeWx2linitNSXIz6UYU2Meo+i2m
V3ySVG2wkL1UIX6JEJWYodZ1kyDhgnEFlq1fg735yjWekctm+2CYozR8t4wuG6Q+Gtftdnco
E37xV5oki/l8ZYowTuMNjhw+LOajNafzn/3v0+eM/vz8+vjjN/ks2+cvQuJ+mX19PP38hHpm
b68/b7MXsb1ef4c/Tc2nBgsEukH/H/Vie9YWNwn44skE/aXtNKrTluNWix7berjzQFBfcIpG
KVsNQ+wYkLzubcZoNPvr7OP29vQlOmmaBeyPyFe9cCWCRzR1kd33i9KOhWsKK9jzXhuGDwix
//yIsZ0kOtg+EOAwS7IIEkFF+KBKkgpStfsoDiQkOWkJ/hS2xa4t2yG1U+w6Upd6TjnitLs7
Gm1VmS+CmelrK0JjsXVrO2OirARrGla7JbsgI8ichBEgDZgwph6VVfm1LDAEe5q35gIE7Z2P
IJaHYgfDsqdr3Gq9seroxQ8LKq2nV6fqKDtxr0ustFPfl0w9B5860l021OPTE8eyW4C312yx
3K1mf0tfP25n8e/v41lPaZXAbZvZkw7WFs61iYt3gqEGeMGv6BK526Z+dMFPqi4gj79U081Q
VhJBhlgGz0mFte28ol0BbLP/SOIs8thxULLFFhQDndqfSIVLzcmjzE3pmXcZ8ZN4RH7RH/CG
xLlr6UU1Fx8GLBQeU3woOPHJ45mwr3G4aB937ZlDv8RfvPD4LdQnvIEC3jZyZqqCc5/XQzOh
4OSeF7zzjHnSg0ifNx+SVJFTY8+0mLEIDV7G7qwWwPoiYrSXr8vcDWyS+3GwwdQlupfkO/Hc
oQBSSHfwBoYXL+Snh4dgjdt5gYCwUCg9JPa8vgokh6Ki333jDN/Abc+ye/B+23zud4H28E9A
iYVY4OKBuuJWkzhikvGrELRef/wBBz9X1nli5LuyrP3d1cmfLNILCeAhZnkNw/JvhIwuxIRl
VDjSu7TvL6P1A+7qPRBscUt9I0T0BNfe62t5KHA9eWgRiUlZ2y+uaJB8PwWW4EQF+8TmuUm9
WC4wgdwslJEIMrVE1rOUPKNRwTHBzipaJ26ueLGJcK6lJeGaT3WCke+OZ+yAspVhFm8Xi4XX
JFMCa1niW0pPZs4iHz+HjOuXPWrJNpskTqC8pvarAY+eHBVmuSrCuwhLtnBYXuZjC7ajlIXw
7dds4ZueqXVyqorK7qeEtHm43aKvCRmFw6ogsbPhwhW+z8KIwVnqSVCWX/DBiHzrrqb7Il96
K8P3q3r7BHRuX0GfK/DQ4ch5eSPMMTHcKAMFcju0X0gB2GW5VaihJ2tc68Mph+spMSBticdl
miTNNEm493A1g6by0Kj2Qbgbis7o48m9w0Q6eUgyTi2FT4PaGt8CPRqf+R6NL8EB3WA3IWbL
hFJptcvlf0gRmY7GznJyEQot8Zj0cPnIqDC2zwwVEJ9R1PBplAI3G+tOMQtw2zUXs+x6j4zr
g+cjEsuSFibBZNuT79HBzZagUenpG635CTmjU9Z8W2wn+JV6cgGt+XAi54SiKLoN1pcLjtKP
sQ5Tjb/FBuC5S+cRregefwROwD37kl58RdzDasCsvF/HWeY3NjHXjFRNYidGZQ0bOc926+e4
x7/Pj1fMzmp+SHyF5IW1rFh2WbUJfmgL3NqvrgssP99Fp5jjvtkeGlX2Ijjy7Xa9EGVxv+Ij
/77drkYmJ7zmQu+FgTuS/GG1nFjosiRPGL6g2bWynKDh92LumZA0IVk+8bmc1PpjA8dRIFwv
5NvlNpgQD8SfcJVr54AMPMupuaDBk3Z1VZEXDN/9ud12KqQ8SFyVC+kZQvtaV/YY17Bd7uYI
WyIXr3KcBEev1VGXLj2KsNnyRhyV1sEhE/fGjgA8Llgc7fcn6wOausoooVMkJfme5s71DZHv
5aBduSbgy5LSCeG3THIOqcIto2kxeXA+ZsXezsjxmJHlxXNh+ph5RUJR5yXJWx/6McG8Bc2G
nMDSzCyp6xGCiRInpK3HVmxycqvY6lq1ma8mdk2VgE5lneHEI2ZtF8udxy4CqLrAt1q1XWx2
U40Q64NwdKdVEOxYoShOmBArLBdPDgeYq8whJRPz2QoTAclyU/HPkqB5is8IBy9xmMaJtcpp
ZsdO8WgXzJdYhIpVyjbcU77zPMYqUIvdxERzxiOE33AW7RaRxzcwKWm08H1T1LdbLDyqDyBX
UxybF5HYsdbrySa2loeSNQQ1kybkyek95Ta3KcsrSzzJpmEJeZxSIoj09Bj0cnqaaMQ1L0p+
td0fz1F7yfZ40KpRtk4Op9pitwoyUcouAa9FCVEF0oBwT0RVnaHxfkadjX1WiJ9tdfC9UAbY
BvL045nGjWrP9Ltz+6Ag7XntW3A9wXLKUKDux83K9Y05uVA/e9U0WSbGenKCLrTCTX+ACErc
lJnGsefOkJalZ5VB7EPovrQ8CGJCXEbyMw6NOlwziov6paPcDYgSh3OngDSqHt4/v/7x+fpy
m5142F0FSarb7UXHbwGmi0AmL0+/f90+xhdZ58xMZwC/BosmUwcUhqsP9sl1uPcsaX1YjyQo
tFJmhq6YKMMEhWA7PR5BdXqfB1WJE8LiWAVc9uPTU1HO1quJPgzKFYaEZCneMTWVCARdEa3z
Y7hemMCQnOII04PXhNce+u/X2JQVTJQ0pCa5bRjRO7Mi12h8g3B+ZeQyg5vMt9vn5yz8eH96
+QGPdg4+VcpDRgYkWqv8611Uc9M1AAK5bZis3uBvKCs2kn4gN1kGFt5OzDxa/UB1ODsBcAPv
ZqB54JYubUVpPW7g6vbWV7HMbaCDtfDm8djj/GfpWA1rS8czUjui/P7Hl9ctYhSwKQGjoGwL
maaQ69cNYFU4SPCAp7hQeJXt+mi5kCsMI/AMgsbIlp8+bx9vsBheu4cg7QdVVTG4LL/3xW/F
1Qr1VNCkQYFGVLgaN1/smypwTK5hoSJaBmuEhgnGjB+kBkG5Xm9xb1qHCFMQBpL6GOJNeKwX
8zV+NFo0D5M0wWIzQRPr3CrVZru+T5kdjx4P3Z7EjRfGKeRq86Tv6QnriGxWi80k0Xa1mJgK
tUIn+sa2ywDnEhbNcoJGsMWH5Rq/Ax2IIpzhDARltQhw431Pkyfn2nOh3dNALh8w6U18Tiuc
ExNXZHFK+UG/PDhRY12cyZngnggD1SmfXFE1C9q6OEUHJ1/ymPJST1YGxsDW4zkyDH59lA9+
40x9YF538IJ3QU5P/MpAkchMkJ7kzIoAOs2jKknQ81O1g9rKr4JutyXbzi9tkeM5phUViR8W
q8u4tIJ7YrcVScjIwnQl1lx4eZm34amuzRtqfbpEvDxW45Pj8vCw2S1Bka1ND98evd0Fa9UN
FLl7GIq6MxQtlg/bZVueK9Uk/xgywULGvSElcTKcAlRyrzBJrOg4AxUnURHbwdsGtqFhhd1z
6i8KrZW3YZ0jxzOpqYxBqxNPatDuWBPndK4pvR86XupvO0wEOCcVc3KgOzTXhLgR6A5FxBZz
7NRTWHBYywg8YInPOTx8OswZMg6XMhAru0ywIHhFcupEI2cFpuv5ZikWBDshuO36YYWMyJnp
yfZ+DUjktKLLoSpqUl3B5x9fFTHZzdfBxEaVRJ5tALjNEsedxXG1AC6A7fFLtlxhlxkKTx95
sNmRccGIkeUctVPognEiNk4MSrVQWAnW5aoJNmIK1fx7UuEOlJs1RonQdazADHlkdDVytZRA
nLlJFGehU0NqBlh0EBmeVzjwINbe7i79YjGCBC5kOR81M11i+rBCrVduBet1JwIfnj5e1Evs
/1PMQG+wQmisdiOBiw6F/NnS7XwVuEDxXx2KMVhTJCKqt0H0gLozKwKhTTiyr4ZHtOTYvadC
ZzQUaLcZFTm7IO1QpYjdb/AAnKdxY5AqXUWt0wyHQkmxaEtP3fj1RfaEJWN3Ga1JY3M1xAEg
KqBSpX55+nh6BovTKEaqNh+wbcw4GeUXqx6nydwnR5u6Ixhgh/MYJugGMLxfFVvZI+ElkN22
LeurUbcKqPEC1Rum/wrWm2HMMpnlG5zs3Xc1VcjA7eP16W2c8EsFzar3ZSLrBQiF2Abrubsi
NFic3WUFnibyBcf6/0i7tua2cWT9V/S0m6k9OeGd1MM8UCAlMSYoRqQuzovK43gnruPYKdvZ
Tf79ogGQxKVBT+15sMvurwk07g2g0W2G60Q+MF68qpCfxLGXX445IzVoPE2Vew1nZVeosHYD
aBKovlhUoDyrjxC09DqXzLRsmNqEmVSpXM2eu/5RglOp6B4iQdNyjoWHpynUwA+aEHkD3ib3
qn9QFeevyeXLc0crwpsM5zM/TVjU442W2EnzJKVDLgn2fZChBjgqU912jhJS7oNTvFl9enwP
NJYI7+78eM5+ISM+hiqvK90HvQENnckt28g5NrNvcOjR7xSi0lPN/D863lVKuAYr0U9uoTpC
mnNrZSrIzgHSET+puvR8RgQaMYcmINnkKvKxzze6t0Acd4ri4LusruGxLiKf/MD0sWUw7Qn2
6Z683czAxFpYjDPfSmPfupZgBq471mItWh8T5KwKzlI167o8mw7RcI63CwPz1mc/jLF2bs3H
McOjMH39MFMk/V74vkPSbJg83JmL493NeE7S9/iBRXPZOMZDs/u8o+hlKLg66PWHXdxtxqVz
+AM7Di5HkBLwmMqOV4vtnt/bOG7Q8PNa+frFavKqpRXTKpui1nbLQC3gh++VDaBlislFRm6d
9gMcgVfA4vAJ2wrwVPmNoRYITIV1l8uC1FWu6CwMPeXg+HmHh28AkWDHvFuvjWRXliD47eiJ
aa5N4XhXDl7hK6KD0ocSXPssbhENcGro64bwY13HBgvcMoED8Ajfy01wpD4MJ/vAODBqB4+Y
6CBzSjqkSE+5GgAT4vSVWvjH45UeevQoXpUP2x6IQTV08iHJ/Czo5bHjGuWUlv5qfNvq9/Tw
Pw80ibdV3mzItiRXPPIIdhzQE/aj+rTjhKozFkxJtdnYQmTe0KoQmxCrplQ1WhVtDsddb4JN
Z4TR2ogMHMLjOZD9Sicce3Cbt9+dr21Ruj4MP7dB5EZMd5J9WRPwbOeyXKivrYlq8Mvm7FVi
ULH58QBuGFvNSFrDIGadcFdlX74xtcC+c9Mer5OWe6pke4V9udHipQKVHyXLiLTTeAmIDLCN
zSgAMu1Wv99iRBEYT3jF+PHwev/94e4nKzaISL7ef0dfp4vPXO5bB7juSRR6iZUd21fkyzjy
Tdkn6Cc+aUoeViEzudL6TFoZMnR4Pj5XLj196XsMdoaOPDqqeJyD1PKHP5+e71+/fnvR2pJH
mNTi1g7ElqwxYq6KbCQ8Zjbu58ED1dQ0cupeMOEY/evTy+sb3vtEtpUfh/it3Ign+I3UiJ9n
cFqkMX7DJmF4QzaHX2jrOJCGOSvz3B+z7T3+Mk2A1HE1wsC2qs740xQ+FXKzX7dQwk6YjQzc
QQ7vQFUXx0t3tTM8CfFbVQkvE/y6EeCj46mpxNjUas1GMNfYZx08L8Ktzac569fL6923xR/g
/UzwL959Y53t4dfi7tsfd1/AdumD5HrPdpe3bKD9pidJ2OixdF8AirKrNg33nAFaGvhNdRZE
5UUNk4CppOUx0Acali8/axPBm4QzcNR9G3BelbTVYxHzCdp9A8q7E8nR8mgtSo23p0AVhnVW
Y5U/2aL0yDYXjOeDGO430jrMMcylRzWnhH0Ot5ZHWxXcvX4VE6bMR2l2azUQk64zD3kzesHi
yikzHjq7Gd0f92HLoVroezp/zd0RC2c37v4EnuScr1MmFpip32BxaRTqmj9KrXrUJ+AcnFFk
uBdFUT3p5EkPd5g/dq3jRcgWdyesh3Vh/9rmgGKBabvF7cO9cNBjqwXwoXCPdrmy9FiMi5/C
4gINLJNXQywBUwEZpfwTfDzevD4924tk37IyPN3+n62AQVxAP86yC9cZh3lPmrBJm1CwO3JF
ChxM29iwYWPyyz34lWQDlef28r+ufC5XusWWgVZFnwWtbhfi5CRzKR3pCe2Ydo2MGVQNHFVM
PZERtDjKwMD+mgiDr9AJGKURo0MmifcMgcHCj5VWovxOMtBlADolbRB2Xqbr0SZqI93Zj3U3
ZAOyyq/7fV7NC8u2bfv99bEqT7Ns9XVzttwwGzzWK8dRELYfwm0MRinyptk1dX5VYt+TssjB
ETm+DxortmzYXtdl9DNwlZRWfbc67B1uxiXbpqRVU4FAcwUmpRTZAD7mHdPCcawuTxXPHytp
d2j2VVciDq8Nxr7aiAxmxKOwd8ttCUgXpXUYO4DMBSyVww6YuLSzf0lgikjXg9slGdIq9gOV
46J7Lx0+qvafzOeLYrQ57eV4Yq7wbRyUI1nPTNifedOG8e7b0/Ovxbeb79+Z5sdzs/RIITct
Wm0SF+Ysp7zFbW85DLdMb4g3qlZW2pVD/xfFWGVJl+JKtGAom89+kLpy7yr9XawwvzlnMRZM
kYP244qhXi5rU9Jh1+quXLGSsan6vUThdnem+tepn2Vnoy2rPkstgVzbpgEMfdSpCYdPVQOe
pqw0T52fkCjDF5+5Qoz7Dk69+/mdrb5I3xL2skbpJFX3Iq30YQ+jBmYdSSqSCj+oCO0WlXTz
htBiSU0BhJmQnWDfViTIfA+tPqRyxMBcF3alGV2PeyzCN4vCDq1gUvr0hEd+EAOYGxi5yiks
i6wCiW2UO9G6zdJwbmzyadmVad92SexlCVKPDMgSZ+/tP9FzlhiNctpW3VUJJgTqSbKAuP2T
TVwuNTebSEuMcRbeaqGZAxLRQn3meIErKoqtsLuZ4cwDe8BTKIcZ9MBUCq4APxURlmgFCQPz
VaMSA8KqAb2gm82+3OS9w8GWKAxTYQ+YXw3uTp7Xnf/+3/dy70hvXl6NKj35QxxNMNjeYf1g
Yim6IFL9zaqIf6IYIM8WLHq3qdT+gAipCt893PxLNbdh6YgdLDgn0vMV9E5cYajFFAAUwcPW
I50jQ9IUALxLKmQABjx5Hz/709PB+5bGE2C7G5Uj82KHmKHnAnyn2OhmSufIXB+zrcIbH6eZ
Q6Q083EgK73IlV9W+ik6qvT+oii4PD5RfkQjI3FsX3aqXzaFeKF9EgahplgrKLjhw00GxqBI
bX1tfy3oc7GJVDaXV/O2yAWjvdvMCwIxh9loU26NBvtu4xtptgr9+tBa5IFZuUHqpOkydpG5
BSele65reInW4aQ4F3IKPB8/6x1YoGs4XtGoLNlfYMHXCo0FW60Hhm6lxx6UxWNk5CPhtmMv
PzJSWn0K0rNuG2NADtMYk2tbfLJTB8VCt2dVEVQhGSy79c4AVKYjrg8l27Hmh01p58W6kZ9q
F9UGEjiQwD9jlTlYis90J95zvRD7GnQjdFsyMJgn3FOavLXw6/oh8T5MYpdPr1E0/qbiLSZ4
PDEjJWvdyI8V5UkD1I2yCgRxihUNoDTEVjqFIxbZYR/H2RIfWmP/p6swmiuO0DmXSB/hnQou
QoNl5COwNOaxy7vvl1Ec23R+kH7oVm2B1FGxXC5Vw+0BOFW1+sKaz7DGv5djpW3cBFGei2+R
J+zNzSvbpGEmstK//6rqD5vDXrsft0BsGIxMRRr5Smk0eobRqe8FvguIXUDiApao6AChPkhU
Dj9N0VSXQYTFQij69Ow7gMgNoGVlQBI4ADQQAwew2ulClL8jaYJW87m6rPMGDLWYfl1jlXeV
gWtH/M5iYPG9N3nWOfXjrb0s241FC/Aptd9gz1+mSBRtXXaUYEUFHxIYvS3LAu0d/bmd6xuE
/corNoxbw0WLxIsuCRyOY0YOPwnmsijKumZTFrXFls+B8gIpqr1XH5AqvgIPyDM5wumSF6/t
RPmxU7DeYMmu0zhMY9x0XXAMb+zygqAJdGRL8WOEgWVTx37WoUGZJ47A65C62jCVLMeyZYDr
5YZg2FbbxA/xtymyRlc01zdtCtKWuG23ZGA74WH6RloqRu3tlM5XwthCv+2zdLZYH0k0X242
Gvd+gDovmmJ0NGW+KbH8xRKJLeI6BzKtSsC0/dJg1M2TwsG0EWRGAyDwkamRA0HgyC4KIlzj
13gcKr/OMzfQQctMvAQRjyP+0gEkGSY3QMv5LsBYQj+d7doQu0YsDtjXSRLiT9c1ngi3Dlc4
sDhDHFimjpyZ3A4lb5pt2tCbnVh7ksSIOkLLZh34K0pMvWpsSZqEGDUN0f5D09lRQDHNglHR
Rq1pNtvx2abX8dm8DBkqwxJpFkbFhwldzul+DI6DMHJ8GbNNwvzg4TxzZWhJloYJIjAAUYD2
o6Yn4hiu6lxHlSMr6dk4myshcKQpuuIyiO3252fbpiU0Pc8tFfw+YanMai3VggKNfHSIbYno
sUGSzGTBOfAyrNiOul3jzyrGte5C1usWEalquvawv1Rth6L7MA7wOYZBmZdgr1onjraLRcQ0
++uuTjKmc7zRtQK2f8cPNbUlJ83ml5www1YWOalj8wyfuz1kmWJI4KWh55j7GBa/sY6w6THD
hQmjCNuxwBY/ydA5pz2XbPGZn2zZhjny2Ao6N9uydgqTFFnEDqRYGm6eVShweV6UPOeiLf3Z
rD/XCar2d9seazJGxnsjA0LcklnhIPMzGWIsamrutGSLMjIhl0yBjjx0gmdQwHaxM6kyjgSO
LtFy0Y5EKX1DcMnk8JGps63CN1SPru+7+V7MdjwJpgux3YMfZEWGnxh0aRZgACt95phimjzw
5rUYYJmdmhlDGGBb6J6k6JrXbymJ51bynra+h+z6OR3RPjgdKTijOyZHQObVI9rGPtrbwL8l
aQ9vbusZX5Il+KNZydH7gY+Kd+yzIJzvkacsTNMQezqgcmR+YVcLAEsnEKBHARyaG2KcAV08
BQKHKaatnM1Ys5m7R1ZJASUNuvlmYBKkWyzAgs5SbpFtvXnzPc6scB/z+685o/JxgMHzFuMw
fsT6K8/3tfmda10OR7Qzr+i6bsUy6bpqpT0V7VbaP/CMU/VNyb8iFTiTxL8eUJMIz9FmvxoY
jOyLajfz2QDr1CGWO6n442jl06mxLTZHFUkm/QJ7RWiOSARkg0nITioH94irsk1Ah7pD5/gk
vPXpIDL4NSYUuy7U2OyS8ZPt39V3T//88XgLFruDQwyr79J1Ybl7ARqckzqsNMDPl7BEcpzq
8e/zPshSO+KqwsJEjpeeGhyDUwcDHZ0srrowmm4ay8sj7fK1V2EAmLaPE808Z+HJgH2jj2kp
I6raS47EDCPqDv4nMqay8Qrm14GqVfJAjAM9eXkAatXCePhp0BLk+yQ0pWNUH12ceZ0RPzyb
DSeJWE3SNkgCzMEV0xQh9nZFlNUcaCwN41EKJCPix3465Pur8ZEL2gHrljhNJQEz7AElIpJn
Q1fU9ercnzRfWxpKtn1BNLe0BgPdr+tCryHBoXux0OmDKSxSbA47Q9GObJRVpqPVBENLedGs
TD51iSN2FcAf8+Yzm5N2eGQl4BjfESk04VTPw4ixKQAnJ55bBNgqRnGKXVlKmF/iWn0P6FmE
6SwSzpZeas4J3MoCIS4xzmVmZdonYeIcPQy00hnO23QyuHbTKcNNuzIxDF7ajCuFke4cJjwH
zMZNxfvYc/jv5DCJ+zhz411J5paArorS5Gw89+YAjXWNfSS63udyhqvrjPURZYLLV+fY84wM
8lXoT8QxC0ne9ZhBHk/+uiPqWSjQ+ortq8IwPl/6jhgtAHjdhsvIXT9g+uDwiitTryn+6JJ3
hrymOf5KD27vfS92xFnjV/uO4wwBpthWj4s0maJa1KVnVY6we0WYs+Rs1hWnLx1iKQyBaWZj
MrE5x7Ft6k915IW2WqIyQKCUuU57qv0gDVGtqaZhjFrBcMEGW1ztE5eBPVdwhDWzofUIolNj
CbCTQi43jbXt9EDzPZMm5zktbU5191QGR+g9nQS1vdVEw0oBSOw5TKlGUXR75Dldd/h09KOp
Zjg517Qs+SyOdXUuWYPt6j5XjaomBnDqcuCunZruQNVt4MQDru66FtzQKFyIOGw93OCG3RqP
XF+RBHLSZ1mCdS2Fp4jDZYaJKSZDFBk0cSTPQaWfzRTR8JVWGDRcrIW4RjubtqngakjgowXi
iI8h67yJw1hVoidM335N9Kqrl6GHfgJH8UHq53jpYKVIsbMogwUtHTehO7sQvARwXB9nSxeU
pAkuKChibPqelZQfpUdo2hxKHJ1WqmPoNGNwBfM9gfPEaGVNmpwrbcdEp3FZJoM4U6aaYimY
3C3pmomOp/pFpg5mjjNohavNModXdYWJKaOOfb7OhJqz6ywxOpOY6u6EwJOhKHb0hBmTUoVp
ffhcOuap9phlXuKGMje0dMl0wl/bTxyDBvoWW72JzUA+FhNcFvms4jExQRMKQrx0QhcLQjeW
ojOFrdmZ2NKdn++W01T1JlToAG/UlVjtsZoi5ugBdwKK+XtdqUGx92TwNK77CofwjiOEysJY
2D7nbZbkLZaPRzSjiaHbNdeoP3QIcNdc7974epvvW+XzCaFM3bhaFSh2pvg3lbCVtYE9oRQT
klfwsSIlZv9GSrO1gNLs+mpdab7IIB4Rx3RPjRMdXlTs0Acbgkfi9scSYGpc3aNVOLCtiv2R
O0vqyrok/Xigevfl/mZQLl9/fVdfNEnxcgpniZMEGpo3eb1jO4yji6GoNlXP1Ec3xz6HN2sO
sCv2Lmh4UOzC+YMQteLG17pWkZWquH16RqLsHKui3Blnr6J2dtyEVnNsWBxX00ZKy1RLnGd6
vP9y9xTV948/fi6evoOm/2LmeoxqZRqaaPrpqEKHxi5ZY+unboIhL44zz3sEj9gS0Krh0bCa
jcNnDs9rXefdFqINXQj7Cxskgu3U7AqtQrCCa80w+sSyqsWseahwrK6tFHj6xf2f9683D4v+
aKcMLUfFdDsWE2h4XFLOnZ9ZneYthDj73U/0z4rrJufHplCVWN1wphJ8oXVsTFZsbqp3Xcd+
bUwJDnWJtZssMVImdXTbnoDkCCLVzMwjxuVYuF86HU659B2TcJAEVGdiAOs3z9Mg5hC2Bshk
9e9Eeqz2K/6XM8e+zOM0iexPJXA59zl2byvlzfM09ZKtWfi+XCeZtiXjZHGIYk8RFFYd6Up8
mHhvn759g209bxvH0F8d1oGxwEx0ZFrgdFrSnWqMNSEFFaOm2qDp0byud6rBOQWjlrxh1Vz0
R4yuaiJMnKkxkUhuYmoh+bq8EFLhJ10DT1E2BDuoklOYZdMPebNiB+xnyNox2BAJh1KxhQZB
xTCi5ANc7i5YEoMPL/WqHCqEB6rcH02x+CKEyMTTXd8/30HovMU7iGC38MNl9NsQQdKYldbV
vtRaQSEqMeD0Jc44KxLdccsqkS3bpKprCEkiNANdHbh5vL1/eLh5/oVcrYpVv+9zsh0+qvbc
u4Hsyjc/Xp/ev9w93N2+3n1Z/PFr8fecUQTBTvnv5moHShpf13jSNz++3D/9z+JfsFhwj07P
N4ygZPfyX+Q3Lbw8SZ4H0wdun+TbfjFR3ny7e75hbfX48oQEV5BdkY3pBjSR2lyIt1UcJyax
oufAj+xRwenYVeIEq9vQiZpGGFXf6Y30cD6LUH9UIui7Y5CgEbYnOF7in6H2zAocm6Izahoh
ou+OcYI+6htgaWaOfJbOycBgRIY4WSLUNIh9LIs0ddwvjgzz1Zcm6sOtKdUIoWZZnGAyLOez
WDpqxw+zGD8RkqpklyTosbuAab+knmrjqpBDS18Fsu9j3K0XYuQeT7v3fSzto4emfcQlOSKS
dHsv9FoSWvXe7HaN56MQjemuNlfay77ICQ0s5v3HOGqQPtTFV0mOWdIpcGhJG19FJdmc0eTi
VY67MpcctMpb7DZQwGWflVeZupjgMyGfJGtGw9TLYa8RZ+grIwlfpWGKzDnFaZn67o4HsP4w
ZqRnXno5EoqqyJqoYvV9uHn5ijlNH6Rv/STGNFKBw7VYYjUzoyZRolafno2xRT00fOPIc+9/
PE6uQf/7ZVRJGfyVtqqVl4r1RZ4F2uWmCaonagboM9R3ostMfXaigVzrdn3JQceXtA90syoF
O5PAU42DdSz2PEcpzyRyYpREUZdxi1yxbWSq3/qZ7SmhWf+fuge/2Xt5ZcrHzfOXxbuXm9e7
h4f717vfFv+UObw4WG+5h8t/LJiC+Hz38gqxK5CPmKzvu/l0gaVfvHs7HSIzReC87xjaPD2/
fl3kbI64v715/HD19Hx387jop4Q/EC40U1SRNKqu+AuCcC69RH/7i58OW2OFa/H0+PBr8QrD
7eUD090GVrYHH04NhvHK47vz6hz1QrFvq4aIxot3ZRN7QeD/hvvxFkP76enhBZyOsmTvHp6+
Lx7v/q2Jqp4HHCi9vqyR0yNbLeeJb55vvn+9v0UdveYbdKbfMBVe9ecvCfw0Y9Me9JMMALtT
1YP/zB220y50p34FbKD+w9m1NDeOI+n7/grHnHoitnf1tORDH0ASktDmywQpS3VheFxql6Nd
VoXtjpnaX7+ZAEgCYEKe3YjuKCu/xINAAkgAicyyZc2hc2NPrkaKTXktyOgLiIFB8nSDGym6
7PYW9l/aG7xfjY06CONZo6OcBYtB5/8tDP4Et1QZeqsO16jEA9tATbawAZU73Ib29bHQfeb+
ltCifYgn3NKcXtUe5Apk7tvp5Qf8hW65nbUJ0+kAAavJhLqu7BikSKf246SOjpGScIq+sb0M
jkCjMlq+60J10zNBlTkLqUlnk91PqGCPf6E/WJaE/LIjnBfNnrMwLm4CjnxUL0AnBdptD5Lk
i9A+u99uaB1f9XjGloFnTOpDJO3cFLFsy7ahJ1CI3x1oM3rEoiLekWccWGMdhWdbNm4HlyaO
rZkW33+8PPy8Kh9eTy9Op3mInUNUicQ2EulzHRAn82GSjN6evz7Z+2fVOOruQBzgj8NqffDk
sUeT0pbFcN52Yl7nbC/2fmca8sVXCsgXi6pqZHvHA3Zqqpmj4qB0vkA36LCGfg3q5IIwVdMZ
vSMz4hKuSyCUgJpl2J5tqdO0ofeKCn10qymyvWtEdduffG3eQPm/+sdff/wBAz7xD0E2URtn
GDbekgmgqQuwo02y/jbzq5ptnVQYhKXdc0lcNWE5GzzuStNK3125QFyUR8iTjQCRwadHqXCT
yKOk80KAzAsBO6++gbFWRcXFNm95Dsoj9b6hK9E5ld3gwf+GVxVPWtvmBug7HjeRW35WJNws
KW4etUhVnWode3PcZ986P/3ELg0bSQk6KTuAlhl9548JjxGvZvRtP8BeSDqkwIKEITBDGYpM
1kEQVJAptdghBBLjFcU3lO98FEzHEQ829dZt56LECM0Vl16Ocpooy5ZQ/XQskRBaiX0QE6sF
vQIAlvL1ZLmiZwQUipFzTKfQ8AqLvVEfQ3ONRkOQpM1+ERnNMw4qglIWmrywXXkBoy5wWwD4
7bGircABm4dmWiyyKJKioC2EEK7X17Pgh9aw1vGwILOA83Y1noKZxqArwTwabD60EqeFGl/n
bw/1YmnvZIE+9lim2loZc7qTCwc5youMe0KPrrdnYZnXZwvhCq+m3uTRnYdQS4qalqKHxz9f
np++fcDmLo0TP95xv+wApm+bjWmGXW/ELgalQXeSqQpzbWdB1vST+nTV2SVD6J34/Pp+hs3u
V6OlmDuRsT3BllFhUoEMf7Wy2NQYZa9IU6wutXarTWLsB1p0yPBv2mS5/G09ofGquMfQeL0o
VCyD7dZmg87r/JwJsIuwW1awNNr+PCneqtD6xWc5miWxZre86IJWdueQl9vWkoHCD/1ichjt
lPsbvKLJ7TfD+LPFm3gvyK1DbzFKdMqE/SDVySVPdJBAl1TGbgLY3d4NgmzRK3afwbLiEqFw
3M66xEwcoBELJ5CwLilIhEHSbEVOgESVXTsGr2x2UGEi5W/zmfNVxjAJZiFjiWKXUxVxu3F9
mQAZOjwqJFfwhl4vXDaR19ToUHU2z0adlPo4waQP5h/XabtnqUhGhwZ2VhkoqluQ31FnNnh7
XRF9jIMvwD3uJ0yB3a8DndLY6POCd9+6c0cJWDJdrwMuEhBO5Tzko0PDftxQDxfLRcBNqcKl
2IXiIiFcC3EI+CHoYaUaB4JKI1OzHjnk9+CQFz8DB+K7Kfg+4DEDsS/1fB7QsBCP6nUgqoWS
QDaZBtxxKzgToUeTao44HLecVv1UarmYBfwPG/g6sOrrwXHYhItOWJWyCy26VU45gnDKjheT
6+xp7/Z99mFYZx/Gs1CUBT3JhjEe74o5bVKHsICtYSAa2QAH3jMODMnvn+YQ7rYuizAHLCvT
yW1YLgx+IYNcTuercOdp/EIBcnozD48YhK/D8CYLBZlEdJfI8EyCYHgKgXV5OtJlffyCUKkX
yutDuF06hnAVbotqO51dqENapGHhTA/Xi+tFwIhTL+FcwhaA3psY/YIFwhIinGezQPBQvewc
dgEXbKjkiLKG7VQYz/g8/N2A3oRLVmjg2YJeRgPRORVY5CLei+hCu13aCCo9RbB1aANl4Z8s
YWrLVsjw7LA/zGbhjzxmG2+tUBuVXfIrQ7snJ1i4GgtMCySpQPep/sNLAqqwsh6EXeEX/tts
slh7o1NUHEOEX5ASFSI83BvUlQsi+vWp/iaRjHdaO89btkgGJ/p1xfNtTblNADZQv+2EDeZO
MloBuPQ14o/TI94yYoKR/RzyswXsm3Z+rVhcNZTlrMLK0t0oKmKDjR5IEfH0Vtiuw4GmA+D5
NAG/fGLRbFnll5exGPqY8s+MKOjsibjlR+llpe7UPdoRxEV6jNDe20KFhLOvATpau9m47DyT
muZUEZ82FNTtjgK/QPXcXLY8i0SVeMSNHb5FUdKiEkXj1Rhyq4sm3nnUI3cJ9yyti9KlYRBC
NcF45Rwrb5OMVIEGsR6p9gi/s6jyWrm+F/mO5X6dcylA5l23xIikcSh2hkK510gpz4t94dGK
rTCSTVDxR+lY1vfIhnJvhWjVZFHKS5bMHAFAaHuzmHgSgOT7HeeppHPUQrwVcQZ96TVgBr1U
jVslY0f1wiGQW8W1iHp5CXTWU2zqUW4FzKwVDw0h2NfXghCp3PbIggTYV/Nbl1SyHC+1QFCd
6c4ih9uk5DXDqJdejjAxpHFCEp0rHZseTAACJGkkFqOZpkwZvu2A8UEvvnq+ERmj11aEJQPR
os4GNJjJJt+69VFW5anIvYaVNWfZiAQyBlM+9z4JMi1Tf5qoMq/3thXnOex9rfHak0bznMxA
8/q9OJp8h0XRons967RDLfbUBaWCilJyf1zXO5geMr9D6l3VyFqHyQrk1uCC2ZZy7uZ3L0RW
1KO16yDyLFSvL7wq3GbsKKPW+XJMYNkcD1vtoK7dkQGo1dqZmkjKRrGh1uzeLIPUK9BcotMt
7LjYFq/O4PXj9HIlYApxs+nrqz0YAUPraRhDvnQWvVJmF9lpKzJqi10sWrwbTLm5nBwaD3Hi
TSGS8S0XaLb0bhYZmrQU49jZFgP8mYc82iDOKlwNmGx3ceKVHkihj65UqyETfqpvYoX08tvP
9+dH6Mb04ScdZT0vSpXhIeaCNktCVAcJDX1izXb7wq9s3xsX6uEVwpItpzcP9bHk9J0XJqzw
pFwbZBHNlTnultAvlgmR7ZO601xbU8dHLE1oq4cpfSss63mMfiGzO79/4El9ZwiXjB6QZHF/
NmuRZLJzjyd7Ytg/WM+hPFheZinTekPvsZDnPpJ0fAr1zWKTtZJS/hG1rtm8YmFLUOzawBKG
LHG0CvkFAnSvXr/CX4GCG/gwcQ3CMHFbMr7TLWmRdvLOr15dyJ2ImN+4FkdWO+EEM9C4a0Fe
RuX83lvf8Ze+X6No+tEoiSgVCPSCovLgqMI7uxy2De3uHu0K8+1gOwcc452WSsZKJ6qRpsn5
9WJJ7zUVg3J4RBk2DOjMq54y+56NikLyhAzDq+A+iJ9N1GFp/QIM1fPQoiCCpBx0LQji0s83
Tvke31GKlCrQDvxlU6kyEbp2w+wquvGJJGtWN9TVhGLqHUO6acdB4lw85LtCgb23hVChUTJb
T8adZnweysWMtG7RPdd7MrGpdczQEYVPTePlzfQw/joi+tpYEJe0X3KdQedgbzQlDyNCWTD/
4+X59c9fpn9Xq1O1jRQOaf7CIK+U8nP1y6AM/t1eQHXDoZp8oeWz9BB7gYM9GPrGayV0IeWR
QP9frSNfBLX7OPOq1sPkNptP1dupvhXqt+enp/HEgBrO1rGmssn9Jaj7XR1awDy0KyhzZIdt
x2EpjTirgxn1xgjhtuxY44A9rMPEYtD3RcB6x+EMqGcOT8I3DObjVjWzatDnHx9oy/9+9aFb
dZCh/PTxx/PLB5oFn1//eH66+gUb/+Ph7en0MRagvpkrlkvhnaGSX6+cUAQ6Cza59kmKg+W8
drw2eAnxINAXor4xm8SN0MjimKPfZJF6Tdxr8huRw6JqGwEMNCXh6Jk3DOoCLiTmGQkqnyYZ
/lWyrbA3thYTSxLT4J/ArQbd63mLM6t3Mb16wsBeWJwkj13tuEoyOieLC3n29ABBqK0OlHGr
gqS4D3yDKAtBbTbscuuKbikEYN0U+lqerDJyQIftQ15zrDYoWbsH8SXqwmFv28L6hZYXMq4a
68hFQSMzWaR6PNoIGe1P3e5UYMg5oAHRFw462RmlY1lyTd93KZivloFHsQoW69nNKuDDUzPM
Q0YFBg4ZzWuYz6cXGQ6BO0aderm4mPnyctXQ/9UFeDWnvWPV0FHC6l4kYEiQ6/V0PUY8vRpJ
uxj0+SNN7GyL/vb28Tj5m80AYF3sYjeVIXqphiFXh+UGsXyvJyk15QPh6rmz07dWYGQELWsz
lsseQRMgesx3HN67Irt+1V5tVH+zntZgVYjzgI5dO50MeO0yPCyKll+4JJ239Sy8+HLjNqim
H9a2o/eOnsjpfLLyG2BA2hgmmaaiFhub0Q1FYiHXK8oVe8eAgdhuHD9zA+D6j3YA24e0AzhO
Nx2AyKqSy3i+mlEVFzKFIUwFZXI5ZrNxtgegL6lMVZAt2t+fzTGxI8A5yDyIBIE1AWSLab2e
UDXUSHufBBY7wxbdzWe0hXEv+8Y/3YVvlbCHvZmwcfU2oEDPyepVIMKB4wqLZRmwLLJzoZ1c
GgaezSczSl72c+eN70Bfr93QSf03JjCCHCnS17Ol8GYDe2aZwfKG981lf+CI/OgmZDyLjMYb
bOYJkdR0P+agJSizafCDb2IiQ430Gapali8PH7DT+365inFWjKZbM1XM1rQhhcWyDPnUtFiW
tBWJPSetMV5OJsibZItvtSAnh0TOFhPSc2LH4IWTcOjE1NWHivDFp76drmq2pofquv6kvZCF
DHVuMyyJtSKT2fVsQXxAdLfwjit6gSiXccD4qWNBkQnpHoj73qwt8fRc8w9rmudMuZMxHaik
E8zz66+4df1k/d3U8Jc3vfjt4sfn6IHOF2tvBCK1q4pPylSx1tvAQXuCIVT2vt9H/boxY1Gz
Gbvsksc8xndlbmife0WnD/NNToHyAWqzYs/Ne7pLbN0Dafqs2TDtOCs9hu5NpftF1o63OSRC
limjSy/x9SB1ZePum+FnGwvq9hmREvtiy3NR3Vn3U+hNC99R94CTGwtdj6DPNl7FReCZkiov
Fp3FTpAn5zW1eqrkVSOlX59sQ7vKgaq30bFUJ9ssZ1v7iAvtukhHaVFx2Db0a3f9tNfNA4vn
uXPMbcihixMD75OS9juj0Ajtudyb1b40ysLGgJ0rMi9JRtU6Q7nQ70c7J6sWE9TO/YUvjiyK
ikklijqNfGLlHIHs3ZBcmsW0mEODTvdJe+ncnRmirtnQLIqK054096xm2z2+KHt+fDu/n//4
uNr9/HF6+3V/9fTX6f2DuhXeHUte7cnR+lkuXW23FT+6cWRr73QoLtA6y//tX8/1VH0aqOYb
8QV972pDvzAbKP8252T4PMOcCRlTrxZ8PiHZv8OGQzv8BqJnQktDauQZhjgCnQD0FO/qzvtM
Jidr4CDS54jetSuMxnIhB8OWiGK2CGaUsqiMP8tGjSM56rC7hinrKiilpPD1zA6SPRCXJLGV
bES/1f86JxR2+4yoUFln/hrIVdGYN8zWOp2m7iGd3s2L4ur94+Hp+fXJtwFgj4+nl9Pb+fvp
o1vzO08ULqK5Xx9ezk/KK4vxEfN4foXsRmkv8dk5dfA/nn/9+vx20nE7nDy7ZTWpV/Op5R7Q
EPrAIW7Jn+Vr/BX+eHgEtld0ahz4pL601dQOzA6/V67Pqs8zM34esDa9ix358/Xj2+n92XMn
EeBRTPnp45/ntz/Vl/78n9Pbf16J7z9OX1XBsdsbfWWXN37sJlPUv5mZEZUPEB1IeXp7+nml
xAIFSsRuWXy1Xi7IwsIZ6KOv0/v5Ba/fPhWvzzh7KyBC7oeq6ie3y8ArAz3xa/9WowHFXr++
nZ+/uiKvSZ2EdObbqFwJ5/nwfV0f1RvAukAv33ggLX+7XoxxfCNo4OGhYGc80d+1dHTZbsot
Q5cQlk6YC3mUsnQtkzUVdApZVPQ5us0xeEo14K1c0dsOs3oqtxRO0NEO2Nn+KzqiuswjyMWW
IhYlXgCOES/cakfWFukecS+iysT/8WuufLJAo++OY9Bc4Pft0NFDQaj6qt1Tyl+HSrcXDRUt
irrt2fbh/c/TB+V1rxPSLZO3vNbPg+8L/zF995LXzWaQU54mWKS+8xt6uYx9XxU9dpeS3lEO
62vLH7CvnaqouPe2ZSf8aKOssAwUGV4RKV8nDuOuYffcS6xNDjALGaUwaNqmTJht4z0w1Lsm
T/ABa2o7vD9kboYlB9XCoRwEKzKvWIYvT3Fcp9zd0zAJbdgBROMkcRIxqzkSnqYw/0SioIlu
sTYgs8wDqqh2dh2GGHDEo7Mq1mvyZkXB47KxHRMuY3x8ZI+cHmS2GPdUxwgeT7CKttrcCuX8
d5iIm99FLZu2ZlFKeo3fleqe15pEgUJ1ApIzegeHPh9APSJy70Iz7xJWehe4KEHqOlGWs9YY
gIyuP5FJPZbYj643lZlqXsM4mrX7gP2A5trrLuyq1FQbDA021/NaW5QV3wp3a9nxlFUxh61D
XQdcl5Qxz2GW4MqyK/DoSRt3t3fktN7ZvUU10XcduPMOSjxYC5RlFgBzQZyV1NqTwn+sdN5/
4AUbz1bXXVjUPvMSZsBqxI4n0soqDtoWGPJaOBNDlh76aYroLvI7NFbZu2Jj84RG5UDJrQAh
2vhY/jidvl5J7diyPj1+ez2DZvpzuN0LWzYru/pWRx1RJNXT5Kz+fy3LL6pRzntg6eB3XXiI
wP07cqtYuDqubR3w86UZu7C4sPjh5BRs0QyfJSgR1xLsN6+KnmsyGfcVxrANBGg0DKDIQAuW
4/i9cRMgj0tBXtrm08IHeaLKaWGnlvoY/M/RkYylauAH4XxjKQSduleK0ouNOpwad1vDHWhd
vK+Luz9WGCTQg4U+Euh4YFjRrdpz1E6I2nFNTORtJ9xKR0xLggizWF14ZIxUhKb1vcnXOJnx
lkkUgvyRq/cO8cCjZrshDwgMh14Sdrb9SA+Z+3eb3MioVK+2nNNKC/Ldu3Xn6HbtOtqF6vUs
aqmR4/wcmRpsjGA1ZnlxIL38dCsn2/M2Ti3NGn6gJ1BQuW8b+y2eYcT3q7CvsAM56aAdbiY9
bXRdYkGw2blZrJckJsVyvpgGoWUQWixIJE5ivppc05hElbeNSxIFPd5qhntZity8E9Az+Mv5
8c8ref7r7fE0vk6EDPi+RkuepXUxpH627msD4Ixgzus4hwMGKv9+PmAijQo7THxsDTKGga5Y
mzkcAr6ssSyi9F4DN+fPj1cKvCofnk7KevFKWktVt5/4hNUtxwi1owRkiQZH2+vq9P38cfrx
dn4kL6M4Po8aW7v0hwOjxDrTH9/fn4h73jKT7hkaEtTEQt2sKfAOpKLdug/ffAQJPtrfRQyV
dSrV6zvoNAn1265boNdfv6qwJ4NDSQ1AI/wif75/nL5fFa9X8bfnH3+/ekfj5D+gaxLvrO87
KAVAlmf3kq87wSBgne5dqxeBZGNUuyZ7Oz98fTx/D6UjcX3CdSj/e/N2Or0/PoA83Z3fxF0o
k89YtQnuf2WHUAYjTIF3fz28YLShUCoSH3oPNZ+u6w7PL8+v//Iy6jeYICmHdm+0DpM5laJ/
dPdv9fegTuA2HHW7rjbm59X2DIyvZydkjoZA49gbR3VtkWsbWXtjNzCVoJbCYsJy2wuXw4CK
nYT1gob7CMiB1ExKsed+zUevo4aP9P0+8QNq5l0G/F8fj+dXM4DG2WjmloHa+rs+YRosEQ10
KGeBGO2GYyMZrGPUHsowuG9ADLHfJs4XN9cBVOnBIwzWzfncvnwY6CoqLfERxAMKl6Gs86Vz
1G3oVb2+Wc3ZiC6z5dI1sTBA9yrwUoMBT9xpVkSVMC6XrR4Lu/UE3rgqX3gUrY0jkowvoUZR
uRG/3YiN4nLJxrIdtVCiLP2nrQ9aaUasqlSJ46ZnmVmbDbyIvyecK7r4kDl9f9MtrskhnS8s
0TAEP9C6Iq9mwUPMKGMh817YAoCg6JMZ+qSJzdZ00oSFgg0nsJ9OJlTUJYXYkbtVqxqtXFWC
8B99e5AJldntIf79djqZ2pHn4vnMNePLMrZaLJehCPSAevGrgbT2gv4OyM1yOR1iXLr0YApn
CGcq+Abtph2w69mSxmR9C6o3VS1EIuZ6rv9/3fv10rSa3EwryoYLoNnN1BW91fXkuhX6FItV
LE1J0xjgu7k5uCkFzMYCJ2vyg/+XtWdZbltXcj9focpqFkkdiXpYmqosIJKSGPMVkpIlb1iK
rcSqY1sey657cr9+0ABBNoCGnFs1i3McdTfxRqPR6IdMTW+iEXI6BaR2N/QhD/PA8c1qe4XD
IEPItO22KaKFdfoKo+y48r0RmdJdYPDFRwCw7S8kWdfMaOGuNMGNSfx8OMJ2vUmY1reDtosN
NGXrK2kL1wAqMX796cA3YCXfF2MdlvBjZmt2q5FettYs/KePwCJHTC+UaT3MzxGyEWJfHrmw
o0cISvyRN9YWcUcl1+fD4Um4l0s7N8woq5hxnrxq7vyIYQpEeJt1GMT6QjpZm++X04G2yiP2
3aGiKv1g2DfDpQqYwaOh/qiASPPlMie9bMu81HJt3U6bDaPujmb3KR6q9OB6iwiKi8g6hlgR
6TJuJbfV8V6ZF8KDrMwGg2eaJsB1QLbIpniU6bAsc/WdXaiN1A7SyiiQxjVD8V9aVhxIgSiW
posHjvsOXx+OGjpORI4ajah47Rwxnnng94jj7wjosNCZ4ngymzgOq6AcjTykEEkm3hAbXnOu
Mh5caUxldOVpXgEVWKj447EZjtDIp0sOT2uFcv/+9KTCEOPZsnBNWP7D/74fnu9+tzYQ/wZH
2yAocQ4iqRgR6oj92+n1r+AIOYt+vIPNB67jIp20CH/Ynw9fYk7GL7Tx6fTS+29eD2RIUu04
o3bgsv/TL7vI3hd7qC28X79fT+e708uhd26ZGOJIy8GEzCywZaXHzza8yjuYvvqTfD3sY9m/
AZB7ZLkrsnrIj+GSRsErjImuluCJhjmTu3OSdxz2j28PiGsr6Otbr9i/HXrJ6fn4pjP0RTga
9Ufa2h72NbvrBuLhhpBlIiRuhmzE+9Px/vj2m5oNlnhDVz6dVTWgRIFVABIIDihVlZ43MH+b
Z8OqWntUcWV01de9egBixolV3TO70jxj8d0LTu5Ph/35/fXwdOAH8TsfGjTY8yQa4Ix+8rfZ
yMU2K6dg3Eczp+tkO9HPzHRTR34y8ibOb4CEr86JWJ3atRAj9GY0qzMuk0lQbsmRuNBn6R4v
YtufLSEC3jNZrKs3g29BXbruOSxYbwe0fwGLYXFi7S1n1djxiOVBORviBS0gM20iVoOrsfF7
in77ydAbTAc6AJ8I/LcWaIP/nkywth2f/TI7QF5kmpi+zD2Wcy5DW8cIJO9Xv0+Zubencxl7
s/4A2UXqGE9zNhGwAeks9a1kEA8Wq2SL/hhvsLgqxjiDarzh0zDCVqCcb4yM9IcSgnxS0owN
hn0kP2d5NdQys+a8IV6/gaHtORgMKV87QOCLPL+zDYcD7d7JF/V6E5UezXEqvxyOyOygAqM7
FKrRrfhIjidUewQGu+kB4EovhYNG4yHFl9bleDD1kCpr46dxM6adebiAka5AmzCJJ31N2BWQ
K72AeDIg5fNbPht88AeY8+t7Wlqd7389H97kFZjY7dfTGc6DzK77sxm+kjWakYQtUxJonLps
ybmEoUjwh2OPzFHcMDFRDH36qhpatDW5/L40no6GDtaqqIpE91bS4abhLTlkcjAhH+fL4+Ef
Q2bS4M2Jc/d4fLaGHXFnAi8IVMiS3peezPz5eHo+dDMGI7MqRIQSpEDTDgZhZlGs80oR0NYN
oN4DZgeWiBQlngp4Kdaqa7pBN7Y5X565HCJzrD//en/k/345nY/CfJkYkD8h12TIl9MbP9GO
hLpw7F0h5hiUA+kiiu4HI+3CwC8IGlsGwBjnpa7y2JSxHK0gW8hHBgsacZLPBn1adtQ/kZL8
6+EM5zexeed5f9JPlnhj5t60b/62ZV512M1ZodmBBvGKMyA6dEfAL+akUdUqx8Mb+fnAEFHz
eIC1MPK3Ka7HQ52oHOuqIfHb+IjDhlfm6i/h9DYMFztuPubMmOyD15+gom9zxkWIiQUwWYU1
OZ1o9Qym2uRCN5HNNJ/+OT6B5Apb4F5k/b0j70dCMqATQkHWkgKiPob1Bq/w+UATiHLT12IB
PgB9Uq1aLPAFpNzOzAN7O3OlwIRvHTnm+anocEndxONh3N/aA31xeP5/re4lHz48vcD1Wt96
3bkWb2f9yYDWjkjkkBrQKuFyJFpY4re2iCvObcnZFQhPCzpKNbIrKa3m9PAnoRnCU60MbBjC
f9gxOgBohQDRsO5HMMDGeWmVBzCHXVqHtszSACXCzgmtszx1i+8iMa0dsBUcegtWK29SdQqb
9GiX5cy/dowSZy9hpWwMY/0Alrh54SdlNYdfPhmlXZJVEQywjxz5V7te+f7jLJ7Fu9Y3Hqu6
Mf/cT+rrLGXw9OjpKP6jzres9qZpUq9KHB9LQ8GX2mRwpM/HNHdEYwW8fB0IZaTRbn9qDUcl
wsM5L5B6FhLvmt2e8eeueJQcIy3t5BgdXiHWgdj/T1K/odmfqhZdIGtngenOvOVc28+Wg4w6
eNOgyBzhelvnme7NJJqnmyBKyLzDDOe9DTckoL7WQn+pIDv4Z7tPpT7npvf2ur8TZ4y5EcoK
JyCrEmmuCDpZvEo6BDjPaKbggBLJrBwPdAnY/BR+qNK6fUTWxsn7iHBRFYx+TpY2qFoQVgW7
aO7K0boZdgteVisCWpLQpCQsbaHm6mLNXYoypbqyZw3pnXJHAuAqpIYkT/hlHdn+YS8o3Ss4
woZ08KumHITKOEpoXiguG35rNd5A/WwNcG1/Z2Y2bCX76mYsUl1+fOQHmmAm2K7HZ/4qrG8g
nr0ZLa9J2caXSQkvsFo8SQ6KsoSh8Qi3lVdjY4cGUG9ZVRU2OM9KyFTtaw4DClmG/rpwxV3k
RMOaNIHlmJHZhtGlykZ/UtnIHdgNkNfCjFxEi+gq/jYPPP2X6QXOK07mYvSR1imM+ChzjBHE
S4E5se8IVaRIRCbAKF3QljWoAjkvlC7Mqv8bHkHHF2oQze9cQye+gRSWEAQZDdxW1Y5+f19n
FdNBeEIRWI++DpAsFeEQRLw/ckiA6IYVtHvM9kIPlovSMwaqAQmbXXC9C2I6qCtkY/ToJTyv
CmMEFITqc4sTK0NwjqU5Cy1NsU7rkvHFuqut2CYarZXqUYJZydcOfaZ0dYQLSAfpCq+SRrGz
5wvPWngCBKvk4hcth9G/cy1ai4ra/5hEji2eEgEWtlxMD+coixTxGqL0G+ffdL5LVbOfJeJi
bThvKXR860jG3OIpva3C3paVlg3gNktDgaG+KXUxiV5t4RaswY3Alw2siYGfkQ5SEMRHbQrt
AONiH/ja7jQKun1h6he73Eh5i8E1i5elhoOFWO0IEMGLG8R8HcVVxPdJtExZtS5CrcTWU6NT
4dixhNpTXGCMOMwLZnp7KEhz/IIBYBKJJYGqNjig+AnxVYQteesDhq4kkMm1IQPmpkUpkWBr
k39fJFW9oR+kJI66fIvC/Co2ioeUr7C6GZJg2LrKFqV+QEuYvrnWkJ4Ke9HI5ELdXVuGuyEX
MuQ4jtlO+76DQX6hqAC/uUBPkkORsPiGcQFvwe+j2Q3NxruvojQI6WiXiGjL14To8cWGQ/5w
5mf5Tt09/P3dA472uSgNsaEBCE5Z2uAVP2OzZYGz7iiUtQ8kOJsD7+LXLOzSKFCwT3XXsRbq
PCgRCW4KCo4h+if7GnwpsuSvYBMIgdWSV7m0PZtM+tr8fsviCIcauuVEGL8OFupcUTXStUhV
c1b+tWDVX+EW/p9WdDsW4kzCilP+nQbZmCTwWwXzgVDAOVuGX0fDKwofZeBiUvJefTqeT9Pp
ePZl8IkiXFcL7Y1TtJreGmllna8C5Jo2gSxu8LhdHBupSTgf3u9PvZ/UmHVJqjHg2rR6FdBN
4rCLE1jQ8GCWI4AwnpARLNJc0AXKX0VxUISp+QUYo0HuHJlLwfwoXwtlU1Wgmq7DIsVdMBz+
qiTXR1gAPpBDJI0ljht4zjuCcEId+Kv1kp8Ec9yOBiTGBC3SUHqGhprHc5s9aBktwR3aN76S
fwwmzffzhhXGtiImv60aAlMJHiC8tbUxygpIPmKJJsga4gJu4RJpQiEXGAu+BfKxKEsRH4Ms
duWukaNk6ixSfg5N4T0k5Wl38RfGwed805XF/fualSuySZutte2TKOXLkT4/E6MDq9wAfE+3
Ixs0sSppgM7Y1lZNEgLuvOBPsTPzLEk0F/MMuHRHNn8Dg4xBd6FEbI3DSBIuXrdoitMoqhEu
xEKufDd6OvIuNQAk9D9ogbN4s4/qVCD7OrLI6OcGqmN/8gXuK0VP96lt8qf7w8/H/dvhk1Ww
f0Hp2ZCA/6S7roW6pulgTSBSM8LvSBZwHlvLDWDwH3iXf/pE4K7Bo1Pk7u1iNyE0BHDibLjk
lxmPQMsWt99323xXbuh9uzY2k/xd3xRaZtM1YkaK3xSZtXUV7MKrVEvi0iK1BLdRbtdW+5yF
ViJjCD+04yiJqq+DVvAIK4hTZBwXCml0FH7jh1nxW3OMkRCH6kogR1+fDPJRTb0WFllW1alZ
eyeOa2XALabJFhGkpDzWEIFIEcZApJdrnRoCGJUQB4fLtLnyzqaLDrTCAj5G+l1eAocWgKIa
Ga0IJA/m15VsTfMEQVT6ZfQRzSLmsiSf54/o+IwoNQ3EcCRdgZZi0/D7c5Sh3kNLzZ+yS2hY
eaft9B+p1NBoUcbLdVrgCBXyd73E3LmBWfPXwLd5UdVmohZ1xIf5Sr/7SoC1whr4RbWsotEH
DpUd6dsefss7JG2UKfAQxfYGQudAoSERmFUnX+eQ45pqXEQp7gTUeY8UyLZQvSMQ/6qWN3cD
QY0ewGE30w3PAkZzWWYwH0ZtU9bV6ShCfFLz8TMch2a54+YWY9YQo0PTvhwCWt0u69HwSv+w
xVzpVj467oo2FdWIpmPK1MQg8Ry1T8djZ+3TMZ3ATScivRkMkoG7jgmlyjJIhq7GT0ZOzNiJ
mTgxMwdmNnR9Mxv3nV2bkSYyOsnIVeX0yuhaVGawvuqps76B9/FC4DQDvVxW+lFklqkqo45e
jPdcH1JmaBjv6NyYBk9osLVvFILyJNa6NXR2mDZ50kgoc2cguM6iaV3oTRWwtQ5LmA9XKJaa
jQCEH0KWUEcNkiCtwnWR2WX6RcYqLRVyi9kVURxjEwiFWbKQhhdheE21L+INNPKfmRTpOqoc
PSZbV62LayPLLKBAn0YZlcQ4qmKcmFL0Oo1gtVuAOoUYGHF0y8QLhUor0NFFWX2j2U9pz/TS
kfFw9/4KZnpWgoTrcKcd4PCbXyu+Q7D72jqAuktTWJQRF6vTCr6A4O5kcD7IUM5v4k0lSoCX
zy0dHFdeB6s646WLzlJltpJIkISlsNiqiggf2OgV2YBoSjdVTHNT0O67wHBErEjYOzFzvMC1
RVA5Bs3y6+0CW8m16Jxh65W4TMAvPwf1isj+93UyHg8nrSIFQmOJgGRpKNMPgo5fyFO+Hm/W
IrqAqhe8gLkRkmTBxVh4UZJWPlTv4eHdF4UkfJWuwjjHj1QkWvb201/nH8fnv97Ph9en0/3h
y8Ph8eXw+skaGr7S+ZbUHH5MnIgEDJ799Bu5Rd5cff6QONyEsSOSnUXMNr6Uey8tFEUsXoP5
JgNbLjCRWYdf+07iMgr4WgTt6qqeR1X5dXaJ1OPboW6ecuDq740nNnliTLaOgSDF6XJNGQca
hCzPQ0jMBA+dum9aS1hlSbajn6BbGl4M46uE1lx3N4+MBXlE21i0RDtG3om6drMFmHhGAdlY
cbHLblLYh2Q9rXEEjYX0lvJOI9JIFi0DnLvuCeoNxpxK6vywSM1ptCgCRsY/LZOvn8BV+f70
r+fPv/dP+8+Pp/39y/H583n/88Apj/efIbDnLzgyPp+f9nd/fz4fHo/P7/98fjs9nX6fPu9f
XvZ8975+/vHy85M8Y64Pr8+Hx97D/vX+IAzpu7NGeukcOD1EDD2C/+Px3/vGfVrdmHzxgABP
mzU8C0RgEWUlgyWpbkPdX0IA+WbkKzTNUto2saXgvA9VQ5UBFFCFqxxhNsCXjp6bVy8JYjdx
yQSRkEZ3jjFSaPcQt0EJzINetXTLV6PQuOCrp8iOpEdjkLAkTHx8ZkjoVoteIUD5dxNSsCiY
8GPZz7SgmfzAhzmSD7Svv1/eTr270+uhd3rtSf6PVoIgBlMMhq1ANbBnw0OcxRcBbdLy2o/y
lR5JU0PYnwD3JYE2aaFlc2lhJCHSthsNd7aEuRp/nec29TU2N1UlgOLcJrWSIelw7cbUoOB0
p5Qs2oetvtEwb2yolouBN03WsYVI1zENtJuei78WWPwhFsW6WnEZlOhPRWd4UqsjSuzClvzw
rhvpZjudqCWev/94PN59+fvwu3cnVvuv1/3Lw29rkRdaBhcJC+yVFuJgmy2MJCyCkhFd4yfC
JvTG4wF1xbRocFfY+9sDeL/d7d8O973wWfQH/P/+dXx76LHz+XR3FKhg/7a3Ouj7iT1mfkK1
cMWlFub18yzegYOzu50sXEaQHJHY7hLB/1GmUV2WIbH5w++RxZn4uK0YZ9Qb1em5COUB4unZ
7tLcngx/Mbdhlb2ZfGIHhLrHRQONixv3CGREdTnVri1RH79l3RTM5gvpSg39BRQ9qAjPNluK
VTDIwVWtKW8LNQwQjVGN/2p/fnANf8Lsfq4k0Kx1y8fE8Q4u8JtEl5CUo+jh/GbXW/hDj5h5
AZYOBDSShvL5iim2t92SZ808ZtehZ8+6hNuT3MCbjWzttcKvBv2AzP+nNmnTDPPTj7dnuxQg
XQdWdKpzIaBgY6KuJOLbUgRxvziLRRLwTf8RBanu7fD8omSf0Ekw9Po2C1mxAQnkm6MMh0RH
OJKXL9EXDpgVGw+8thCqCAo8HlAbjiMuVZUQNVRcQp1nS6KwalkMZpRSuMHf5OOBvc7FEqrF
Mod0YmqLSBnw+PKgx69WLLykuEdY1qTfDsKjGgxkup5HZKmFT9lCtTsou1lE5FaUiO5hzyy4
pZA74NLK9BkET4/IhzydwrWdWrw89Dj/7ShdtXW0HtFG8xvQBLq6Clj6qQcToFZdrohkVgD/
oxICcvFw6LAOg/DDzxdKjDRLuF6xW0apjtXOYXHJCEahRJoL0s6HjSrD0JY6udyda5GIdbg4
pF3rRdFoC8VJ4i4msWFVaEuz1U1G7qIGbr2OG2hH7Tq6Ht6wHcW2Gip67Ug+dHp6gWgBui5C
LRxhG2VVHt9mFmw6svlffGs3XBhFWdDGz0L6y++f709PvfT96cfhVUWTU5HmTM5WRrWfF6S/
g+pEMV8aqVUxxiE4SRxn35e2tiDySdMdRGHV+y0CbUsIbtpYx4DulLW8+FPXTUBZDXOQoXu+
s6iLY9dSkcoFcbqBm5yh13g8/njdv/7uvZ7e347PhAQbR/PmnCPg/EyyTzBpXrsJBYlL5EM4
5ZpO3Ss6KnfHgUhyKFSSi+SD5na3SrqM7tJ5sarLpQSO4Wxl0UJowweDi0113n+0oi41E5VA
Dfyf33GBuhX5zKJW1NWQlbsEMrNEvnhHq3a5rtZTyHw9jxuacj1vyDrLk46wyhNMRVS5Hfdn
tR/CS1HkgxVp6+LbvaVd++UUfIk2gIfiJA1laslJrxqj6tDyFpZY0NBAKbgKeH6AlIqh9AAT
roPQHOPVTm5RiL73U+gyzr2fEHvg+OtZBuq4ezjc/X18/oWc8oXhIH7F1LNY2/gSLDmxqSXg
w21VMDxM9ANFlgas2H1YG9+7kKyorP6AQnAo4YEjmqU8V/5gDFSR8yiFRglfsIXic7GTwUnl
L1YKK0g9D1OfHzYFsoMFr1pW1MJ0X7dtZi4nvnnELymQIxqtbRWGg99fUh+eM4ssMVzmMEkc
pg5sGlYij1ZpoxZRGkDGVT6o80jzqC8Cnc3yoUrCOl0nczrjtXzZxvla2zAifmQ6xCuUARZc
C+w+/STf+itpkViEC4MCXkoWIL2LXHV5HOFOt2XwDc8FiTSr5JM7Zmt+7fv8sNZAA4MhcT7h
1iTwllfrWi9AV4iAJgSZNOCCAcM5VTjfUeYUGsGI+JQVN8ZeMyj4RNLlmlcnxy3Rv8JLeW7r
h3ykoWzVOm25fNkHWYK6T1RiGP8jaBDa8Fs4NLhAogutt/J8NKDYcUGHUiXTDgwuzwWgJtuH
fRUMMEW/vQWw+btRaekwEdAmt2kjhi8PDZBhS4wOVq34prUQkNvYLnfuf7NgulVO16F6qdmv
I8ScIzwSs70lwdqNQjEHwvyjEOkdszjTrlYYClY4UweKV4hQwjV4w+Ia1EOo06wo2E6yFixn
lJkfcU7CJSpB0KGAG3E+hoPkSBBYTNcafwN4kCDBkv8At/AOkIr2SgRn6FpgGIEDBBjSgE2G
6agGODCuqSt+I9TYOWDANVivrLyJsiqe62S+aJ9UGB9+7t8f3yBW2dvx1/vp/dx7kg+5+9fD
vgcht/8HXQLASoALo2BDBTZx4CjXR+xGoUtQfM53fFVR3AdToYJ+uwpyGE7oRIyyOwASFnMZ
KwGNwxSZGwAij/6vsmvpjRvJwff9FTnuArtBOht4Mocc1C11t9BSl6yH255LI5MxjGA2mSC2
F/3zlx9ZkurBkr2HQcZFdr3EYpEsPpK+1t2uEtp0eCKnQZgC4x0AAiU9Gsiv3SuyMt4bCf5e
4pvHyk8Ys6l+g0OXQ9TtNWR1Z4i6KYlROuOXtfe3KfMzauR2Xj3NYdO9h1ThyWGsT4yn8ybv
THxmd0WPZKFmm7tHxP3NuWc5wg3+NbDshBEGaPUTXgDt40W7My1odRV0enXxS0pw4y8XNaUv
wxqS2yoMEnSUkTx0tO1+b4gXPH+4XKlUOE5CT1jI0NW7yyq5pG44Kqui1tX7i1u4hJuJm62u
Lq4U0iEhmqkCLgEm1CCJl+eFMIEGm2thWw3dPgimj5DqDRyPAgT2LjllbmQYN+VFY1x/RuJQ
cjJmxYIJTj0ATkLLQEj3nXRGVYdbf/z8+v3pT8nh+O3+8SF2E2UF4MA0GQi7aEYohe4JIHF3
qFxawZtu8nf4JYlxPSAQfwp4G9XBqAcnpA3eVeNUcoQB6a5Wd8cMdYVT7MqDR3WUSEpeG+jN
RdsSnqbDyQ/pvxuUgrf5JuzXSO7wZIT8+p/7fz19/WZ1sEdG/SLtP+PvIWNZ41PUhgQUw6bw
nNwcaEeqQModbULKT1m71Z8udvn6LIXa1aDpI3t71AOeDcDvnfPX0s5xMpFPH1e/vvcJuiHh
ARnzaj08uS2ynDvOOrW8bIFUkp0U5Hb5uiypkzw6iCGvs37jSAshhKeHlE934bwbU9rsae5p
HVOcBfl3ZNitQYq8U5EduCgb3XLqWX319/+bW0LVnuX8/vfnhwd4g5XfH59+PqOigEMpdbYr
OdtB62jlTuPkkibf7RPxWQ2LFObSVVpjGDwrhgK1GudoVrsLnbIzYxhYENoVo8F9iDFrZK9L
nrupw6MXf8t3MbPbA5GtOw/8rZnRJt697jKb7AoCUuaXpWeo+jFf9Xn8uUv4ZkizyHcwipjW
MXDqzH0MYHf14rZHEafQr9DrEIgskOku/ejGnI66bY5NcqbszDHIv+RDaPdtfrAXO4ncNudJ
IgVY8kO3hk5bFmhb01cTnNNt3PFJE24n20ufD7Ujfcrf0S1gm5UC2sFgkv0mkWihGtYjWsKd
GRgpb3KmaEs3JJ5UxFzixY6QhSkK9xpwu+qTIOadWyx4eUeJA/Wtv6nPzY6DJ+JZ3ehe1eEP
XzEI6WhDVikjCCBJPFLwk31yFdITFg29Mbnxwkqyzo0HCgDwKgrUHvFaFmj8fOBCUYAzc3OQ
WShiSOR8zRyJVFjPXhJMKxxu5nwMMANSf2mbLfCSsx7GvxspIvGlHKQ5qCHcl6lLsednKV4a
sb2IiPdIFh15cAH/jfnrx+M/36Bk1vMPuU/3n78/uEIt7eQGrtnGU/e9ZhuesfKBrLsNvau3
d2bbwww7gD30dPiNxkcRfGOxRBdGT7RZtSffO1haX84eAHjeD0QYfdbpp/10TSINCTa50dMw
8CeQ0dRvsLyZEl5GMssfzxBU3AvK4yNxJDuaIx43O7IrXYYfH3t3KIomeCqQNwr4b853798f
f3z9Dp9OWsS356f7yz39z/3Tl7dv3/7DqQGB9IPc9471q0nXdhQec6MmGZwwuA+sa4HVwd41
9MVtsXSFdLQudLaA8nInp5Mg0ZViToi+WprVqSsSwrcg8NIiAcJDyXoDHaqr6LPEDHbMacqP
81Z51QfkoYjsYSVKuWXPa3PfD0b19//4/p48H+XjZH0AMSDDEb44RMtiuV/YqINc/wm+9KcI
hn98fvr8BhLhFzy9eVUM7G6VoWrv31YvwDudPgXI+SLL4IVqVqhZNDmznEUiEIrWRJKlxx0S
SwpH3ZBeWhx7Uha6aG/azaCLtwTgSvARGXgYKVrxkJBZFpn/kyQFJEgArENOXP79yoVHBILG
4lrNdDMWtvDWFp3Ra6sntoqG6NsW+FiQqI/YxETiCZr93vRNJRIeZ3biggj6MSOE4+auN1qw
H3u/zGdCSW7CFYoI1Aay0HY4ilK9DN21WbPXcUZjTJh3SQGeT2W/h2m2ewWazcsJg1WIbtFq
TpLOAUxtHqAgZyATBjDZHBB1Aremu6BxY3uTrmegrJwTOQXLlKlsguxlYJ1hkfjiBo56wPdM
0PjooJOOVr2J99jpymrN3ck1vkf9jXpS2JFFVMzSwYpgo2OLdtR1TCyz5VejlAXTXTjoy4Ty
ChqJZ0NCADxNEvGqLB7HU50QSGAlWXG7hCIiU3K5+xOdW2W76ro0UTWGefr2FAsN6+H6TI/d
kfSfvYkJdQRMilJMNMV5TbcjUZzsUWAr8GBFKjhzBFunBITP8u8CH5ERi87jCE+siYl97sKf
TEjRyJ2GCh9aau6BBl0Xcua0wUZqEoTwMKRYyzhF7/mruzsSKYYdIfftWPDNzxHKAwgzkKzh
qe/LbEvzxnF5ggIeR8gqflfF3nsvchtzM32TuCZIRIV9Rvd1s3BdO7N5Eblpi6ImGYWtmciA
nLjenU0FRwtsSN7mxgoLRP8yL85mvylX//71A79/wpCgH2FS6SqVIh1rwSY2I3AbO0mUVeSu
IwYQrixTWnOn6xwumTAshvPWaSIIy1eXj1eaviYfiPZyW2W7LubsAfxYlzEOngfvxieZoXO9
Kj5ene37CN8JQ6P/KtFXvt4lfoBhzre5GwNXbEuYlM7WtBdqj9Wa3+5Sn2jippoeiGXALyMH
earPcPPmC0m+u00UZncwCi3GYIIP/I87iwkUctJQbuQHMqTJSGSFbbKFPI3SBws2SxpFXS69
yMuGsaG+8QrzNFz6BHrjwhSG4wnZ0dszycmapDqCw4eaSQL3ad19Cu3vH5+gIcKksfnrv/c/
Pz84dT25MItjUuPJWvNv2OxzE2krbpkPqDCWJG1M9LTSUTHDO6Np9QoQMzN9sUrExDYOfjy+
GBWJ1YBtC5W73lM+Nv4an/U4IX8LE76fuQcoeHtrh5ojR9SEfYJFXDprC/E7+fTugtq8k6Gw
pQuSpUTaF74TJXBhVlgOea9r3mLGAgvvTKLCCKMgs86+yPS0LoyR/P16VoWI0BfurjVcpRbg
rrNVmnO4flcLd1/RQhRLHDuxx1x9UH0s3YQNyf55S/bFLZjowp6JR4IEwqtymMXqJK9EYAAm
QG+09xkGT97HbmPsFTE20/Gp9GKpjDEMYY04FypubWk4aixsU8UcGKOFo2f0jhHsZyqyhqFl
nioqBhI/LNA/rT6onuLDrQV+YXOg8yMp1MIYzXYBCN/zPRw6SNbQeRY8qWmes4yZ+uzbsq1P
meslJkQUJO6Xv1UeLG7yKsDxPD+H5wJZll44EEPaz8RSOqe/QkhAGulQmwVKRA4WUvMWDx37
ySck0LGTEMHb4sYJCyPc0Iq6eEdGWWnEp+h/Rm6WCvQOAgA=

--wac7ysb48OaltWcw--
