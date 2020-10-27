Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJF54H6AKGQEA6FU23Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 876A829C41E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 18:53:41 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id j190sf463798vsc.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 10:53:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603821220; cv=pass;
        d=google.com; s=arc-20160816;
        b=A9JutDVD/LhloySRG1QjHUClDC40Zxm7kU3j1m0Sstvs5bVE5pv0PlY2wim3Y1hKp4
         Qd9xfZTj/Q/sPqwlMKKG5dCj3hNOEj2XVwzVUO243HJnpkdcnLSn8qwIuH1RlyH5PdiT
         /mdhTYzPLIcVtYbQuwOSRO3MHnRfToB7igkG1C1ZyEzfyG/D7j6BXmmtE2nwMTQU3FYp
         e/Lbx01WntSwhQa/pgq8MNptq68xQX6xPnW1FCDNHYXRk14bwfGd0SEkevmGoF2GAeSV
         WAfXQq6GXBzFgM0g2/BdCjNOT1t7dYwTGeFylzgQ8fS8tpH5i4iMc93Q43Yqb0DUE+Us
         ga/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=jduxdk5Oixean43dGEL3HFL+VszPb/xHwTN+lDk+1tk=;
        b=uKzZfK3D6Pl5A2wMJux9xYGnCIwNwzUvInHrYxtTGyvz5vpjvyTIOiuMokHW2vxWHk
         xRqDxJWt99pN/anTKBcbNVYSYJ1ROQ2ErivJi6GjVNZpCY+SsriXcMtiv9heKIHbosBm
         ELoUI8fkF0ixPsKOOf+AL+WIiFi/P0i4f95msH0BuPI/ByOlwtPBiQXGKvzuJgti8EDB
         VNMbty1xcRYenmvQRRb5auVPao8qR8f3ZRSg9/Q/w0aUCR740eC4ytmdVk7MJv2BFOCs
         BIqyGs2IALzJZgwx1pBI0MFQt+zh9ruMzGQHNK00qqEVcOHTltnWhfedg2bfVNWFrHQY
         dG5g==
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
        bh=jduxdk5Oixean43dGEL3HFL+VszPb/xHwTN+lDk+1tk=;
        b=M5eC0XhpbKyMl0RwDUvTbRccsyC2YxcdNW0AXpfftHIUIYsa06JC6DIAJzglrSzdKp
         ZZAPvip2e5uYjm4ccYKOTP3IrerLnlD0Ftr4u+p2Jv36jPqrxYqd/psP/dksblfIEcU1
         IBfoN6inbgrzomhuSJPK2rAzKyJc/phaP2sKiEe5KfFjNuast76ESiEkYO0yQOEz1DuW
         wMUwlRiQ4rilqWMx4F6gWor1mI3aZki9bMm5msJnblTfn1g7esfK6akiB5NmGQbhxjb3
         cjfvnmBMjvMCnOCSt5Z7og7NtOrFtwrBnnvWcgiaicVRUrH0wGs6LHVGvD1jaVFRor5U
         QvXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jduxdk5Oixean43dGEL3HFL+VszPb/xHwTN+lDk+1tk=;
        b=nP9nzOo7YmZ9lKoDWM5xxGcp3LUPrWeFkyFrJ0MwLsg73vWHspMaLtyla0JODvdNp9
         ODriA5bVh+C4NSYQ9ObzprkoQVgVvtfbcLcWrT9p7S/G9GuIJ7In+iMGUzmF9+eC756p
         YifJDonCs1Rr6kPRjIPZrIwX/j4x+jXp5h9EaxlCTlPUSkgEBkDQwuvC0D1pPCocsk7q
         uyraRTX2OSOhrSc8vPps+htpvCEgZ9uGKWvrwWpQMAUFVO9I+Mu4f3QopdY4lMwCqLIT
         C604k1gGQQjdKoqnbm4QrIvkRu3lvpRZFrt3dtojVB4fSSK0mZkxyZmFq/oCmiQHG1BA
         LbfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AUJbpUbWyEPuQZ/y/ZVcW6lJzp03R18IMu9yz1y7+9gusg8Ms
	kOaHAEDrKX50QLHgOVBjUMo=
X-Google-Smtp-Source: ABdhPJz9EhC/hav2suDocMwAhuZiMccMW/aPNjuKmrXFRbMrwyfTnm/UiVgU6d4+ejePiJhE+AV4ag==
X-Received: by 2002:a67:8e4a:: with SMTP id q71mr2737981vsd.1.1603821220291;
        Tue, 27 Oct 2020 10:53:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:24d7:: with SMTP id k23ls155628uan.5.gmail; Tue, 27 Oct
 2020 10:53:39 -0700 (PDT)
X-Received: by 2002:ab0:69c5:: with SMTP id u5mr2220046uaq.45.1603821219595;
        Tue, 27 Oct 2020 10:53:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603821219; cv=none;
        d=google.com; s=arc-20160816;
        b=Xkd4ENZvCWg6krKAGsyify2t8xyRw8gl2TbqUYFiZBMv6b4y0YBPtiM7FukcIzouRi
         BMgaRhV0kBjGHOuYRg5NzyA2sm2bDpMRofeOS7ubYIESFppf3p4f63L4Z0FD2jmZ+yrR
         2zB2gXGgzLgOuXIK9E2+HdMWAP8iZMbahjYPE5o82EfQZ+5WjfES/Krljz9+G5CXemQE
         Pxmh0vUU8PNrspFbYgwfqZMu9SDbNcCqu7ZVsJ1ioqnN6uSdo48jwJjj2NthZHZTeSe6
         XsbIN3XAbW8M/RII2kKKgrcOSEZK/JoPabHCldaOwlcu1IvgOBp+frCN3mX9DOBPVBKj
         qsNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=jOC0t355Uq2jyYURu2ethnzA6jkcZuW0iWkcVo9lD4k=;
        b=WkvSyrSSe1BnoUkKedq6DeUbhtfU68O3DDNiYJqQcQSlqC1Udc92GO7DX16aYKxz+K
         HVubLCNVKyPwycJYn0Rb0hAvrJH5LWDfwcdMKjazamlaZmKAQpW4WyEckPrEMMbide6c
         8mHHi6SWmDHY3bepxdx8Y3IiBVkQuDtLLs8PtKy9uR/gr8pTw6N2y/rWGSmyIrbOpav9
         p98Bvtn5xxFtjnR770g4MenwlydDZ9wv2yxF9u9Z/gZxMa4GsADQ5eEAxlJ9E5CJmIiC
         G7GG2GVpkxFvnAmI99r3VdQeRlIl/oYGE0s52ceCRwlMoDwa1C5gvokuva3vG9eAEm6i
         CF/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id b16si172934vkn.5.2020.10.27.10.53.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 10:53:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: TN4URf5mIIxYGd2uf6SzqNgOK4lSQp7teanaMb1i6JcZC0XI1Hf1VSmDJ7lAS5ksTXqr0EsKyN
 NcA5AT/i7RxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="164632652"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; 
   d="gz'50?scan'50,208,50";a="164632652"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2020 10:53:37 -0700
IronPort-SDR: eqAGWePq2Se1SNV7SLD7K3I2KTKD7iXhYyP4UAbshBHRvoxabmVZ8XfX0vIA0DaIDSNrsmpsOs
 y4FazSc1KNTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; 
   d="gz'50?scan'50,208,50";a="323034670"
Received: from lkp-server02.sh.intel.com (HELO 74b0a1e0e619) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 27 Oct 2020 10:53:34 -0700
Received: from kbuild by 74b0a1e0e619 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kXTA5-00002g-EK; Tue, 27 Oct 2020 17:53:33 +0000
Date: Wed, 28 Oct 2020 01:52:43 +0800
From: kernel test robot <lkp@intel.com>
To: Prashant Malani <pmalani@chromium.org>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	heikki.krogerus@linux.intel.com,
	Prashant Malani <pmalani@chromium.org>,
	Benson Leung <bleung@chromium.org>,
	Enric Balletbo i Serra <enric.balletbo@collabora.com>,
	Guenter Roeck <groeck@chromium.org>
Subject: Re: [PATCH 5/7] platform/chrome: cros_ec_typec: Introduce
 TYPEC_STATUS
Message-ID: <202010280158.KDOYfQqm-lkp@intel.com>
References: <20201021205317.708008-6-pmalani@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
In-Reply-To: <20201021205317.708008-6-pmalani@chromium.org>
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


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Prashant,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on chrome-platform-linux/for-next]
[also build test WARNING on linus/master v5.10-rc1 next-20201027]
[cannot apply to linux/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Prashant-Malani/platform-chrome-cros_ec_typec-Register-partner-PD-information/20201022-045552
base:   https://git.kernel.org/pub/scm/linux/kernel/git/chrome-platform/linux.git for-next
config: x86_64-randconfig-a011-20201027 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f2c25c70791de95d2466e09b5b58fc37f6ccd7a4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/d95c360f8dc525bd78c299a987c1287867f766a2
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Prashant-Malani/platform-chrome-cros_ec_typec-Register-partner-PD-information/20201022-045552
        git checkout d95c360f8dc525bd78c299a987c1287867f766a2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/platform/chrome/cros_ec_typec.c:692:3: warning: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Wformat]
                   typec->pd_ctrl_ver);
                   ^~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:123:47: note: expanded from macro 'dev_dbg'
                   dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
                                                       ~~~     ^~~~~~~~~~~
>> drivers/platform/chrome/cros_ec_typec.c:698:5: warning: no previous prototype for function 'cros_typec_cmds_supported' [-Wmissing-prototypes]
   int cros_typec_cmds_supported(struct cros_typec_data *typec)
       ^
   drivers/platform/chrome/cros_ec_typec.c:698:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int cros_typec_cmds_supported(struct cros_typec_data *typec)
   ^
   static 
   2 warnings generated.

vim +/cros_typec_cmds_supported +698 drivers/platform/chrome/cros_ec_typec.c

   669	
   670	static int cros_typec_get_cmd_version(struct cros_typec_data *typec)
   671	{
   672		struct ec_params_get_cmd_versions_v1 req_v1;
   673		struct ec_response_get_cmd_versions resp;
   674		int ret;
   675	
   676		/* We're interested in the PD control command version. */
   677		req_v1.cmd = EC_CMD_USB_PD_CONTROL;
   678		ret = cros_typec_ec_command(typec, 1, EC_CMD_GET_CMD_VERSIONS,
   679					    &req_v1, sizeof(req_v1), &resp,
   680					    sizeof(resp));
   681		if (ret < 0)
   682			return ret;
   683	
   684		if (resp.version_mask & EC_VER_MASK(2))
   685			typec->pd_ctrl_ver = 2;
   686		else if (resp.version_mask & EC_VER_MASK(1))
   687			typec->pd_ctrl_ver = 1;
   688		else
   689			typec->pd_ctrl_ver = 0;
   690	
   691		dev_dbg(typec->dev, "PD Control has version mask 0x%hhx\n",
 > 692			typec->pd_ctrl_ver);
   693	
   694		return 0;
   695	}
   696	
   697	/* Check the EC feature flags to see if TYPEC_* commands are supported. */
 > 698	int cros_typec_cmds_supported(struct cros_typec_data *typec)
   699	{
   700		struct ec_response_get_features resp = {};
   701		int ret;
   702	
   703		ret = cros_typec_ec_command(typec, 0, EC_CMD_GET_FEATURES, NULL, 0,
   704					    &resp, sizeof(resp));
   705		if (ret < 0) {
   706			dev_warn(typec->dev,
   707				 "Failed to get features, assuming typec commands unsupported.\n");
   708			return 0;
   709		}
   710	
   711		return resp.flags[EC_FEATURE_TYPEC_CMD / 32] & EC_FEATURE_MASK_1(EC_FEATURE_TYPEC_CMD);
   712	}
   713	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010280158.KDOYfQqm-lkp%40intel.com.

--1yeeQ81UyVL57Vl7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
xcxqLziDmtuBdNe0PqqyrdWcU/4H/WhYIVHqAQA=

--1yeeQ81UyVL57Vl7--
