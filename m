Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM5YZ77QKGQELFIHIIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDB82EA3E1
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 04:25:40 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id b131sf54498448ybc.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 19:25:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609817140; cv=pass;
        d=google.com; s=arc-20160816;
        b=aIhQZMYEyqSOQejQleGqEIaftFo27SmO8Y/ZaCwWGy8lXvXkqps4gtyDVaeOmuxiet
         pFoxPi4T9NcX4JGRcVRm3SUZvg8T3vbyUNkrYDG7r4eVey2X3OG0DlXsHnv4M0jwmY+f
         JUN13l0linpxUTHmT0Kx5FCRgfl7hWd3LdsXPO3JHAKPMBuEVV1VmHpCksP6PvaeyVw6
         HEVaLKs/JdPZGc7ddofoS0ZPZl0zKBPFeuzf3eXnfh/jZm5IB0zCxrW12xOMQxyofTau
         09FYmsx8+ulz7FjSHaLtMYFf+38cdPbDUm1l7LfVZyAwTecly1frXbBiplLkO3R6Jp1Z
         ondw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ACZzk7Se/ChSaH7KpYNHTJvW1QY+eLSOfhic1ZaY90Q=;
        b=LZcV+y33YpzOmeMHcgnWqbT07dDsWuh/DruGzQGghFZoaZs+Juc+Jo1k0xDOPF3Gwg
         0SLF2/8RyzGDUVI46RkXKHSm8Be8bRqQfobRXiSDsli8/9o9fj9Q01SrKzTx7R7gu0nd
         KN1VmVo8fo59xIcWsR9m6jgn7sbqR0PbMs4pbxlOP0oLHU/yXimJykZ2SHXQfpaUFLHK
         yTKlhRZJW34Ysy8YJlEU3PkAJcUgb5HfAcbKNf3ejOtF/XW9zlKNkFMtWrKErqJRFwa8
         6ps01O5tw8ZUxAcKnkZBSVAsd0xuUwrn26BzL/Ya2jy81gysfj/F2BthFmtqK6dZVjeU
         hWTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACZzk7Se/ChSaH7KpYNHTJvW1QY+eLSOfhic1ZaY90Q=;
        b=DEL+yC4q0tJ8uCJ4BY4quab/VvNN17AcWoOb2Jy67x2kEGBrm+7NNASpB4ech56Fz4
         sm8x0HH7NZO/ddlVgA1gd3eUjBjx1wXtyUIPMqKYe22Jyf4tpBXs+72DiS+AIvFj3GHh
         Eh0KLupKvZc4piiLEKXMPUglmj2viWfPIIZcGCL+1H7QOsh9jiL9YwA0qSKIT1ledlYd
         8HU1oU+xxVPXT/6isAvd2GtQU69iJYznwUtCqIjWUX0EuXCRPvf0kBsoN5McJM9tdYy2
         tEy+ZbQTUKywCwKQq4HqjpTK3Dg0cLdwIP/z4GKN/2e3QedoDGVfvRTu7YMbHpSAlZbt
         5kLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACZzk7Se/ChSaH7KpYNHTJvW1QY+eLSOfhic1ZaY90Q=;
        b=MsD/5EDa1hwBh8+5AkSKwk4xINElSRZiTL8jEm7vzDlIpfQz3gd3Tm7MK2/qnP3uYj
         5UcLwiyhszvU8fjp0FSOVUjmJCKHa9Y1v89eO7jeV0GLBpAGbeNSkjxdhr+V86b3u6SY
         0vDAPzoQ557hHWQ4MmV6ZM2z7LQKOHkPQ0NTbYYkaj43MJ+zoLKsJ/c4tYpTdflPigwR
         /F7YclszxebI0XtAsO8z+sLT0QMy5/1jKDxYUOm19rHj5io3qBtOGLfiSkaSW/+nE5UO
         i7rHFsNRtrFL6ad/ssJtnZ8RDxB9KeL479YfDfkUOE0AiqZT16AqF37wMaV0fR7Jh1NF
         3QCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MvA5Zhpi3t6ngbPvPHnUOLBWtHFFhM1JXzDsqt+go4TAJtGeH
	NybTOupkyDBds7hcH3zK7AE=
X-Google-Smtp-Source: ABdhPJwJsWfVkQH7vnR86DNUfRidovIn+U3D0on/hJ32F+WXxPy7c57viq9L3QWPLq1wzJXU3/mcVA==
X-Received: by 2002:a25:cf12:: with SMTP id f18mr110121937ybg.18.1609817140013;
        Mon, 04 Jan 2021 19:25:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls33157513ybd.4.gmail; Mon, 04
 Jan 2021 19:25:39 -0800 (PST)
X-Received: by 2002:a25:f54:: with SMTP id 81mr85720882ybp.103.1609817139393;
        Mon, 04 Jan 2021 19:25:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609817139; cv=none;
        d=google.com; s=arc-20160816;
        b=UJ7F7MOpiNRwMxagfhEthNM+XZO69FhJcxDLVMHBXu2YDlNJTkqSlskrlY0s7efs0J
         fgq4YqGzLJJf7n26gYG+SWB037py9qRUqULWwYdnVHYCv/E+Ph5rXCtYt4lZ0jdMga4q
         zym3tFHGJ1SUeRbXNm/D4I381Ycnv63QG7OUmkZsBBlcOAY89SRvR4siZttrUGmqgHgB
         SFAPQy+xSFpH2BNqiNvf9nIrfYbpfCIaKpnQZ9xKfO8CHNFrEHq6WGArO1fXDVH7FjWR
         zk09FbyTIcDJFHY5V5yN4wAh4PHDQyDDInMkW66mnByH798L3tvH44jNS+UcH5Zvv18j
         3dzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=iFSzz2xtKze1HiQeRjDFuQg5aoCLXLbGdhsFumotYgU=;
        b=PYkUGuiz/aGnNuZeZ2MuGLBaFNrpyml/tFQcIUDVUyFupc3AhO2yrYRGpKaeH3IGLb
         gUeipSoy8smm6mPwe4q6LHOdfnvoE6hDKa1J5OiUw6VgaIEhgwZKV3tHe6Q5fEjQFRf4
         AWdYfzTSTrIKvuWwreMNYnhc8i6crhX0F7zEoJfZCOYAOn0HIyutrSkzE0wWLVsDG7cH
         fT/lfQZGAuVUGJRED0rW+Wfxwd1Q65gESLnEQhWBWjv0/4414P+Gvn1vtMWpv8QORUbq
         CllI4OnfI77h9jf+g6fETW8ye0ps/t4YDRwHt4WIkTVK1ZsG6Hh9BM+quJqQGiBOvv3A
         1Q4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k6si3990714ybd.5.2021.01.04.19.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 19:25:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: PtA8goHxRXUfcKDYzULp1a31UbVL0EcCeK5bhv1wG4m2x/if1qSnOHsLZvm/+BIcFPIg04B28Q
 U2WFZzJvarwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="174467713"
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; 
   d="gz'50?scan'50,208,50";a="174467713"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jan 2021 19:25:38 -0800
IronPort-SDR: kMo2yqmRQk7f1+lghKMMo0agKnG/wYUwzWUJ+p1PuPUtF5KepWVA0wvHyXJrDYRFFsBrEV0MNl
 aDmAuWlk4Kbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; 
   d="gz'50?scan'50,208,50";a="462160595"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2021 19:25:35 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kwcyU-0007sd-Rs; Tue, 05 Jan 2021 03:25:34 +0000
Date: Tue, 5 Jan 2021 11:24:18 +0800
From: kernel test robot <lkp@intel.com>
To: Ricardo Rivera-Matos <r-rivera-matos@ti.com>, sre@kernel.org,
	robh+dt@kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	dmurphy@ti.com, Ricardo Rivera-Matos <r-rivera-matos@ti.com>
Subject: Re: [PATCH v8 2/2] power: supply: bq256xx: Introduce the BQ256XX
 charger driver
Message-ID: <202101051158.UxB5IFs7-lkp@intel.com>
References: <20210104202450.9669-3-r-rivera-matos@ti.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
In-Reply-To: <20210104202450.9669-3-r-rivera-matos@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ricardo,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on power-supply/for-next]
[also build test WARNING on robh/for-next v5.11-rc2 next-20210104]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ricardo-Rivera-Matos/Introduce-the-BQ256XX-family-of-chargers/20210105-043028
base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git for-next
config: powerpc64-randconfig-r034-20210105 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/82436c2c6d99c4effb187bbd09b47c4dc59a1f3d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ricardo-Rivera-Matos/Introduce-the-BQ256XX-family-of-chargers/20210105-043028
        git checkout 82436c2c6d99c4effb187bbd09b47c4dc59a1f3d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/power/supply/bq256xx_charger.c:1644:29: warning: variable 'psy_cfg' is uninitialized when used here [-Wuninitialized]
           ret = bq256xx_parse_dt(bq, psy_cfg, dev);
                                      ^~~~~~~
   drivers/power/supply/bq256xx_charger.c:1618:37: note: initialize the variable 'psy_cfg' to silence this warning
           struct power_supply_config *psy_cfg;
                                              ^
                                               = NULL
>> drivers/power/supply/bq256xx_charger.c:1720:36: warning: unused variable 'bq256xx_acpi_match' [-Wunused-const-variable]
   static const struct acpi_device_id bq256xx_acpi_match[] = {
                                      ^
   2 warnings generated.


vim +/bq256xx_acpi_match +1720 drivers/power/supply/bq256xx_charger.c

  1719	
> 1720	static const struct acpi_device_id bq256xx_acpi_match[] = {
  1721		{ "bq25600", BQ25600 },
  1722		{ "bq25600d", BQ25600D },
  1723		{ "bq25601", BQ25601 },
  1724		{ "bq25601d", BQ25601D },
  1725		{ "bq25611d", BQ25611D },
  1726		{ "bq25618", BQ25618 },
  1727		{ "bq25619", BQ25619 },
  1728		{},
  1729	};
  1730	MODULE_DEVICE_TABLE(acpi, bq256xx_acpi_match);
  1731	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101051158.UxB5IFs7-lkp%40intel.com.

--LZvS9be/3tNcYl/X
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7C1hU3BRG6LQl3pyN4d/ACA6jLu2+AEA

--LZvS9be/3tNcYl/X--
