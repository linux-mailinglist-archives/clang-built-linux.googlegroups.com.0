Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBY677OBAMGQEXDRRS2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B8934B58A
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 09:42:13 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id l2sf2504743vkl.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 01:42:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616834532; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQAoTpHOw9xpVQ2Mnt7Mu8Gg1THpqG+cd3PKbyBAzy0/+5s+fTuL1aR87SRKPU15DG
         dtcW0pYHy2JYdjI9+gs0oubwH1I4sVi8zkBMvl31MgOUJplY98DlqVpzUP+OwtOD+u5Q
         LUcF08T7Uxdb2iY7wJiwEpqQunMus1GM7jLJo+4m0ZdLkyMuYWis0JlfDH5ck5eP/mc2
         TEdkK49Okn7m5JFSrfSK0fvfgQqg6k3w92tSMDTfvMtTTFCfVUJDhWC1KO9zhI/jCSNm
         1Ggtj4y787lju/7LLRlR9upzI0AzNHqzGx7RpUy73DXkbTNWGQurB2Pdd+kKZMIuDlQC
         z4Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sgu3SeGLfpsBmsZVIQsoxO+uEpnWDwshg9GWgk2sJ70=;
        b=hQxH8cID4eq4VzSccBF3SGROK9+41F+svfAqeQO+1FiAa3pxaVCjIAYhGfNlcVeOyV
         2KxbkmQLaRwKQq1EcKcf6kcnJRtA5lmO9Ryb/zEN5A+d3aLMwW1pDdoXUsihYlBOAx+W
         sWIgLUsdzKp7KLjdFXj5WDgX9Mh2xjiPEMd4h2CKiHYV6v2PF/4l3Ar3lmHJUeziyYsq
         OWOh4pUcy1TUGed4j9qNIY9fp+X+OhXYzVsmp8JO06msexsIhYTIRsTWTObIP/AywiY1
         +eKI6oecOvOf1bOgapPlerMaEUn0ASGC1PDH4ANmFykkJR3miajRWDRGqMQtPlyA99LV
         iaTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sgu3SeGLfpsBmsZVIQsoxO+uEpnWDwshg9GWgk2sJ70=;
        b=Hl22uRY2rnMyJ90uP1Y9PYPlSOVBxvFB6dEn9urui1Vy3GtMBE8oEGwP3s9DPFAn0d
         k0Hax8RhJQ98qOCuUZLFsgHIqrT5+6f3wGFU/GFnwWr+0QRg/dV+6m9J1X5A0iEdwH8y
         RiQD+9N51W9ey87T8tImBlnxl5PaWMiigohyoN1gJCiyxfEbqzTr1jPZjCo30yitEIik
         LWm7Xqx7HRYg4rbS89RlS7oYGTxdn4PHXTSiT27PBM3W4DmDOtEK3W8UdA5PL/fWoWr2
         +fNJPO82GY8nVPHTTVuK3hmUxIAe3UJisNIGR5Arsh8kecRxvgOF/WOKzT5t/zSo6tM9
         Hpag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sgu3SeGLfpsBmsZVIQsoxO+uEpnWDwshg9GWgk2sJ70=;
        b=s8e7laH92G/AlQLFUJCkdQ8oPrDjE6mHHgqvMeviaBYKGWyIWql8u1p5+A3SBoHBUL
         8YL7/vk+tYUuASE+te34uT5B6xBSCNLG6pcHl+uMOplnhqR5VkUdkfyE+viKD6JGADtV
         p6YAIFozzErn6Dw9NRkclNAL6fK4ijfIrHTDEr+J7iIeESoK1+KutaytPE7IVot991zv
         uBir0fwm5X5qdYhhhdPozSIi8YuJsY17eJzcnMW1Bv+gwHzS+vaSWhnmPXN5LAGyw3EF
         XC354darnQAAPa4nl9mabnEQprYcJFxjUlMmaqHd8KKbDelSJwRDVeyT2w/slsPkkBjF
         Jssw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533e1uck1rxR3Z8mICoyAluoDr+TJ5aQ40V954VaMcUKbxrTLnyn
	gwsE7nM7V3kLPev0LPK0R4Y=
X-Google-Smtp-Source: ABdhPJzZDdL6IZxqRkR8L7FdI0cV8PboboRDNJBxlwXp35w/IjICFsV79Wkb0E40pfEyeCEBw4uWNw==
X-Received: by 2002:ab0:2104:: with SMTP id d4mr10866456ual.105.1616834532120;
        Sat, 27 Mar 2021 01:42:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f794:: with SMTP id j20ls1458730vso.4.gmail; Sat, 27 Mar
 2021 01:42:11 -0700 (PDT)
X-Received: by 2002:a67:df82:: with SMTP id x2mr10271445vsk.20.1616834531229;
        Sat, 27 Mar 2021 01:42:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616834531; cv=none;
        d=google.com; s=arc-20160816;
        b=uCUe/zYx0JAV4E6seoThSF7NR6VJBycbFwi+IJdyWNbvzHanLjRZyWeEoHCyJ6L6+k
         7xekjbWkfTp43yxgkSoj7GiGYHZyVOR7RYUnP8slKLouyAo9JBtKg6qEVot/Yx0KLNpt
         zLgSBYpKQ4vYtLOq8RkplzIIHa4urTTZyt1im1gBIZLQnkibXgaeN/42mN1d9YDtMURZ
         2UUBgTCF4rB/HElF6E2jtt/QUbClFqI85OgnFKJCdwzqIrQ/uRsMgxPbtjQTQLIz45nb
         9kuclF7rU3cH0g0TfFkDaI6FgkbAHsHo4gsm90ykVFK+9PdJwEwx3lse7eXXzzr017NV
         v4yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=2QYMQnyYAcM1JPsY6iNJKopejp33jhwadxlORX+f1H4=;
        b=HcQsFX6eQU9027r+Gxr0hVS/7ui0JpqMCXrgaUXS/U1CfXgPXGPV7Da/rPpSZqWyP6
         vQDc9vj572gY5NvzhMxLqu+dd+hTI0tQ79ND0lThlQw1DpZSe68Btfx0PBICTz7fjDXO
         kJDOgt7AI0c5K2vdywfy5uKU/UEJTwGRU9cOlkcWJM1mxlnAjCf8dce5NBLYEKzzSwNF
         8C0o9eRu+SvlRtYCbOUrN3MBCja6qesfx/qVW75YjZncKVRT+lf+LZeTCGcrgjPa33Ly
         NR5g4kncG2jyXqvusRIabEq4/x9vkXL+WO9C2XPEeaag3OcTe/BBqsv/SN5dM4khrip4
         1VSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id p23si523942vkm.1.2021.03.27.01.42.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Mar 2021 01:42:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 7XGXi4NP5lnYAAaBAwmGfOJbd6KMKBzu+ulJEw3caehbfBEmhTVn8hp4jjfg/04HlfgucJs+s0
 yGNvxzB7z+6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="188000761"
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="188000761"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2021 01:42:05 -0700
IronPort-SDR: Eq85679fiHJKDrjkLS/sdzhpAkt/mcfvpTvrJfQF1bqVgwD7PG+flQb+0xth5pgPTPjpHxWUPD
 6ukbX1tc7MqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="377505195"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 27 Mar 2021 01:42:01 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lQ4W9-0003Js-3J; Sat, 27 Mar 2021 08:42:01 +0000
Date: Sat, 27 Mar 2021 16:41:50 +0800
From: kernel test robot <lkp@intel.com>
To: Xiaofei Tan <tanxiaofei@huawei.com>, rjw@rjwysocki.net, lenb@kernel.org,
	rui.zhang@intel.com, bhelgaas@google.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Xiaofei Tan <tanxiaofei@huawei.com>, linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linuxarm@openeuler.org
Subject: Re: [PATCH 06/15] ACPI: acpi_lpss: fix some coding style issues
Message-ID: <202103271654.KmOXtG69-lkp@intel.com>
References: <1616827256-51840-7-git-send-email-tanxiaofei@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline
In-Reply-To: <1616827256-51840-7-git-send-email-tanxiaofei@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Xiaofei,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on pm/linux-next]
[also build test WARNING on v5.12-rc4 next-20210326]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Xiaofei-Tan/acpi-fix-some-coding-style-issues/20210327-144714
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: x86_64-randconfig-a005-20210326 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/31b45f08e2017005a1da942954093a6f09be7269
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Xiaofei-Tan/acpi-fix-some-coding-style-issues/20210327-144714
        git checkout 31b45f08e2017005a1da942954093a6f09be7269
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/acpi/acpi_lpss.c:190:26: warning: incompatible pointer to integer conversion passing 'void *' to parameter of type 'unsigned int' [-Wint-conversion]
                   uid = kstrtol(uid_str, NULL, 10);
                                          ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   include/linux/kernel.h:246:68: note: passing argument to parameter 'base' here
   static inline int __must_check kstrtol(const char *s, unsigned int base, long *res)
                                                                      ^
>> drivers/acpi/acpi_lpss.c:190:32: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'long *' [-Wint-conversion]
                   uid = kstrtol(uid_str, NULL, 10);
                                                ^~
   include/linux/kernel.h:246:80: note: passing argument to parameter 'res' here
   static inline int __must_check kstrtol(const char *s, unsigned int base, long *res)
                                                                                  ^
   2 warnings generated.


vim +190 drivers/acpi/acpi_lpss.c

   179	
   180	static void byt_i2c_setup(struct lpss_private_data *pdata)
   181	{
   182		const char *uid_str = acpi_device_uid(pdata->adev);
   183		acpi_handle handle = pdata->adev->handle;
   184		unsigned long long shared_host = 0;
   185		acpi_status status;
   186		long uid = 0;
   187	
   188		/* Expected to always be true, but better safe then sorry */
   189		if (uid_str)
 > 190			uid = kstrtol(uid_str, NULL, 10);
   191	
   192		/* Detect I2C bus shared with PUNIT and ignore its d3 status */
   193		status = acpi_evaluate_integer(handle, "_SEM", NULL, &shared_host);
   194		if (ACPI_SUCCESS(status) && shared_host && uid)
   195			pmc_atom_d3_mask &= ~(BIT_LPSS2_F1_I2C1 << (uid - 1));
   196	
   197		lpss_deassert_reset(pdata);
   198	
   199		if (readl(pdata->mmio_base + pdata->dev_desc->prv_offset))
   200			pdata->fixed_clk_rate = 133000000;
   201	
   202		writel(0, pdata->mmio_base + LPSS_I2C_ENABLE);
   203	}
   204	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103271654.KmOXtG69-lkp%40intel.com.

--J/dobhs11T7y2rNN
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--J/dobhs11T7y2rNN--
