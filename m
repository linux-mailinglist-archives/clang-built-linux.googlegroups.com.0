Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL6B5P3AKGQE3D5QFPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 543041F03C0
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Jun 2020 02:17:53 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 22sf8693267pgf.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 17:17:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591402672; cv=pass;
        d=google.com; s=arc-20160816;
        b=csHd2trCXBkgHW7hrGxV2vf5N3RudjSBjLhAzERtiQNryR7KE+YkQdhQfbZnL7g9ZG
         rBrx/MbYq33KmiAHYmTeMwhDGENrnoHsj1fza2i1Spcjw1Crx3dR1prat6g4UPpsZeg8
         pVaxe8U1my8Mi/Z12/HBlv5aJg8Mj9Y8NIdC2rfvpHVUXyojlQHKoC1ah5qpvjJupWqO
         +5SzD0m1mQ0MV7MG5Cy7j6bKPr4znLEzSXcx2I7ZCw4UGejYBfoJ8Dr+7j0YufU2sX+1
         HSdjBNJ7MF/eBzQPXPjXxomYO6Njb92oeiQ9ghxzf9zvWHpQ6LW+EmJqKnl3bNDs0+iH
         BwEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sU0vA6DFeZ1hjhpjmbyXpOqayMae4Xrycl261aWc20w=;
        b=vX2rAHIaTH2VDE3s7TSv1J8WazVMB8rNRc5919UQ7YYXKICkIzU+Qr+MKrTsAWuTbI
         Kv+Mea2nCtVwHYDEixVjvgVinegGIvfFbsgZHiNc775UdSKF9rm/ydHRfWvgta2walMM
         M9E1fMqJp3lH7Y28Y9BfPia7VIWpUDz6W/tCr7K5PgMCuzZgSJsCZqggyMwH6yu9HPDg
         56ILrD0T8JjyAbOu3ZOjs/KBsFXp/iYsqG1J9lOYuJDMUVb1dbP4dOWtrsrNldiHGw85
         7R25QbRW43alhMSQ4F7aSlbQ0rRQaMrV5t3He+DjEKKrl4t9c/VWln2wCAzmbFWo9rr7
         x12w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sU0vA6DFeZ1hjhpjmbyXpOqayMae4Xrycl261aWc20w=;
        b=oph0dueybl07+NTm7QImTaZfSX1q+5UXgMb4YXLwPvocrViX4JE28K8lr4spIsPY0K
         CDyIyzDqK3i/goorQ1uSGljKNiI09HZhnFurFBz4jb8xcKpDr2kFge0c0LdnJrsWTtD3
         OPoqRQDI9nkSstmAJxHShKfFxTzxrbqSTOCEbnUSWsgxhY9Ks4pthnul5Kh9m3KorYie
         tbcilV7fIsico6K5hbkF70x5aipYlqHzttm1TqPTU47P8uC6Bo3kPlkgud9nF5O6Wn8P
         WU1EHFVWiEJLGBc1XK7gTIy3MLR5CYFDyq5kkRL/DGPXseNkZ2lXLdHkYF07GHm0XUO+
         mezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sU0vA6DFeZ1hjhpjmbyXpOqayMae4Xrycl261aWc20w=;
        b=JAWmFW0V2L5FtvfQNwX9dm64MPARtPw79HSyYbSJ1y5yjBJMrJeoVE13Hll59LMGC4
         sUN+Fu6B12MwaDU2Vt6LIjL0unutv7TFlGxY8PrJnctCOrfJqZLHjOUH/EW3VZ217pjX
         w/PHZHF/oD+5whESXL8+54sPvGs8bHeTOjNIc7/IMlTnvUOSff5xilF9v0i2MFyT9PP0
         Sbhm/AKMszOSFuzAjSMNeLtzAalmOjEitGtjH0JuPPu4D54k4rsqqtw0CwpFBZSa2LhC
         sj2E4rYzxDdXoCSSYxua0Qq0VzAy4r+9IkCtsvPlAYvu18AvcabrWkaO7Hqh0QWlNIMl
         Xzfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P3rX5cJwrmfgk2GxfXJ+3uM+KGDVMUIEakea0wBka5PIa7KCZ
	3xjuKC4J1ZQrxuBXFu9aL+8=
X-Google-Smtp-Source: ABdhPJz5B1bDGzwSNHmcplMnXAgmlCl+TJ+NhYH5ao/IPg6w86TWEoBWVRiyF7uYm3kgE0fe3en/xA==
X-Received: by 2002:a63:fb04:: with SMTP id o4mr12137366pgh.386.1591402671858;
        Fri, 05 Jun 2020 17:17:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a0c:: with SMTP id v12ls3001499pfc.1.gmail; Fri, 05 Jun
 2020 17:17:51 -0700 (PDT)
X-Received: by 2002:a62:aa0a:: with SMTP id e10mr12584280pff.91.1591402671412;
        Fri, 05 Jun 2020 17:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591402671; cv=none;
        d=google.com; s=arc-20160816;
        b=U7a2Xv9N66FHuoEC57/JdHm4EfQ/J7i4GFFNQyeN6m2QDw0paLX8BJV8HjUwW10tZQ
         DpxpwH2YR+m1aWWVNsCQtE674VzgWCc2HIcG/pOPt6LWgCAG3B1jlQWCyX6RBb01mtRQ
         QwtK8igy+krHd3UwMCVzN9BY8zLw/ozueilOleDA5XYn1IpVnNRHnRvCzZ0vZSkOiIXF
         gETLgAlU2wNmkkuLngUNbPScV1CKg8lbcMe9xCi/EcIGIG+5XsfciLp7B9/lVXhZqu79
         0HlOS9gjaEre2oUz/vCbN9nz3bPKJ1vTHvZBgSIZt75QRXBT+xaE74WxPd5za5vv387C
         MLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=+CSIql7oL0b0zmCmIdnsr/MdeOU8kFQAzweNESVp+ew=;
        b=cSuKD19RbThqpytblpuNIcu08MBwj608zKoe+hQT93wdmtSJuL5A/TEKg5+WFOWOgR
         SyT47vpFjJn4//O8fgbFaXmzgJC6l1rNerqVmAuwh02rW0b4AXs1ffJbhnHUbgKlxSwV
         xtSrKiNnuLB+zMqljZyDlDB3FM79knBs+ywYDnbziM1g3iEyfTBd1Z42O/mv/OWROoey
         /dKgQCP+xv3hgA3D7HWmcbZfVbAAxXi7/ud6JmNWpliQrWa/KnNNcuG2nrmqGEsuyb0X
         0G1VOefyYwUegAqXtVxzjnv7xVL4b2lHw309wK6FTvUrX6R+UFYPtW3BHlLkTItr6Arv
         IjOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id i4si50539pgl.0.2020.06.05.17.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 17:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: QIL35IuEzbO6OfMrKDuOI4lZ9o9hAxhXm3+3jG0mwLT8VGsZ7LLSsMc2hYBZHjqbXDDWuS0ZAL
 4aRc8ERHf1Xw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2020 17:17:49 -0700
IronPort-SDR: 1JKPmTMmuP/oBnyXAlIUoJIJR6CHWzxhfxSHSkQuNZIOG8Rjv800mcUd1doFh3qoBEgTpBFid0
 BQjcYqvmPMqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,478,1583222400"; 
   d="gz'50?scan'50,208,50";a="305391451"
Received: from lkp-server02.sh.intel.com (HELO 85fa322b0eb2) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 05 Jun 2020 17:17:48 -0700
Received: from kbuild by 85fa322b0eb2 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jhMWx-0000Rz-Ev; Sat, 06 Jun 2020 00:17:47 +0000
Date: Sat, 6 Jun 2020 08:17:02 +0800
From: kernel test robot <lkp@intel.com>
To: Chen Yu <yu.c.chen@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2][RFC] PM-runtime: Move all runtime usage related
 function to runtime.c
Message-ID: <202006060825.o1Si1ZTs%lkp@intel.com>
References: <3e7c571eb9e444c6e326d5cbb1f6e2dce4bb52fe.1591380524.git.yu.c.chen@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <3e7c571eb9e444c6e326d5cbb1f6e2dce4bb52fe.1591380524.git.yu.c.chen@intel.com>
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chen,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on pm/linux-next]
[also build test ERROR on v5.7 next-20200605]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Chen-Yu/Add-more-trace-point-for-runtime-usage-count/20200606-030705
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/base/core.c:26:
>> include/linux/pm_runtime.h:183:20: error: redefinition of 'pm_runtime_get_noresume'
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:157:20: note: previous definition is here
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
>> include/linux/pm_runtime.h:184:20: error: redefinition of 'pm_runtime_put_noidle'
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
include/linux/pm_runtime.h:158:20: note: previous definition is here
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
2 errors generated.
--
In file included from drivers/base/platform.c:22:
>> include/linux/pm_runtime.h:183:20: error: redefinition of 'pm_runtime_get_noresume'
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:157:20: note: previous definition is here
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
>> include/linux/pm_runtime.h:184:20: error: redefinition of 'pm_runtime_put_noidle'
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
include/linux/pm_runtime.h:158:20: note: previous definition is here
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
drivers/base/platform.c:1340:20: warning: no previous prototype for function 'early_platform_cleanup' [-Wmissing-prototypes]
void __weak __init early_platform_cleanup(void) { }
^
drivers/base/platform.c:1340:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void __weak __init early_platform_cleanup(void) { }
^
static
1 warning and 2 errors generated.

vim +/pm_runtime_get_noresume +183 include/linux/pm_runtime.h

   167	
   168	static inline bool pm_runtime_callbacks_present(struct device *dev) { return false; }
   169	static inline void pm_runtime_mark_last_busy(struct device *dev) {}
   170	static inline void __pm_runtime_use_autosuspend(struct device *dev,
   171							bool use) {}
   172	static inline void pm_runtime_set_autosuspend_delay(struct device *dev,
   173							int delay) {}
   174	static inline u64 pm_runtime_autosuspend_expiration(
   175					struct device *dev) { return 0; }
   176	static inline void pm_runtime_set_memalloc_noio(struct device *dev,
   177							bool enable){}
   178	static inline void pm_runtime_clean_up_links(struct device *dev) {}
   179	static inline void pm_runtime_get_suppliers(struct device *dev) {}
   180	static inline void pm_runtime_put_suppliers(struct device *dev) {}
   181	static inline void pm_runtime_new_link(struct device *dev) {}
   182	static inline void pm_runtime_drop_link(struct device *dev) {}
 > 183	static inline void pm_runtime_get_noresume(struct device *dev) {}
 > 184	static inline void pm_runtime_put_noidle(struct device *dev) {}
   185	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006060825.o1Si1ZTs%25lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--BXVAT5kNtrzKuDFl--
