Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMHNQD3QKGQEKTCJXVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 256731F4AD7
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 03:26:10 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id z20sf540890iog.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 18:26:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591752369; cv=pass;
        d=google.com; s=arc-20160816;
        b=P1IFW2qEA/25z8aD2MtlKWiAnRRmfcg9ofc2rPn8aPbeZr2ZsRWUIkJwwhzk1l/h/3
         Cyy/ijP1qlHyso2Phrnizb6lwS7JZ8ZF7Y5LYLdoJk2I/1jqsv/bKdK51977a3xNw2oH
         l9RtFD+MIbRR5dw0/Ip/wLuIY6k3eYeSpMLfqwJyYW5OqmGb5LUR6Dl4FVri380y7pYS
         dBeQZXhWwN62+SeuBsirdfA6F4x+zIFkEQz1tPgJBC8P2tkJYJe96JvDaecPuX87tVGW
         Tr8JqkRbzzNxf+KHGg7df1scK2OOC23Kb2x3/GDqZjs98Ty2spVN9I8m7UzMwkEtqMps
         w+xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=B8yRPyX0HRGroGb3sTyCi7OCmCgwpZ8R5TLjuZH2Dwc=;
        b=j+eA+Z2XvxgsOEXP8Z4QyJ6rsOPRHUf1f8Aj40MVCPfk26xWSfjJCa8zoW7ntNW7he
         kpHViSBQztUzAXGewDYgmAVXob89STJJj1hdPA/h2te8oKH20oWl2vILR7wETNQo9/Qe
         RSOkKG+gzAcrg2DBJ5LtWBE2upORgzfeIgtcVvMFglIAGkYkzhC/4ijLwrQZgFi/MoXV
         CB2b6kDKXplJqa9BzyRnebDjQMGZ2tVOudela02e3cbsUmp0a37Rck28yMyJ94vwRbG6
         nRiryvRLDl0hT6I72ash/ynllZO1O7z/3bTOCYIULiTWjNBUviMknGT6XjWbWYr+5tQ+
         mn8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B8yRPyX0HRGroGb3sTyCi7OCmCgwpZ8R5TLjuZH2Dwc=;
        b=nDAt+hTMGdfFusAxx7vBgCS0savU3Dbqg3CJhGtqN3nRNQF5NZG8hoBd9I2nL3iIn+
         VZDbIGc75cfunvTE7IuWMkWr576J1gpsPwnPobC7wgCmLaI//c7iwgrKMEwMVCGKBGmz
         7pjxmmsDKQJs+IC/lBGhr1XmhqFri8hgKXpup4cCzgmI+dYFBbnYp38tSVnooUTzwyNG
         koAqMXzP66GVbpIrPpFhZeDheyApo1S0XM7/5wU52CuC6tFmLhbB4F3RgBse+r9AmqaB
         L1+V4tRYeAUA6Sx/i69D9PkO6rOZUsxGJ9CiE+ecCy9eSfCZMn4O+AU5nzL3kq780W07
         ecXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B8yRPyX0HRGroGb3sTyCi7OCmCgwpZ8R5TLjuZH2Dwc=;
        b=WtkYBBOJJ44L5RS8O41SVg2JoQC6GW1tn2vYuY5egtd7loZEyHYfTV/0YvKvSTw+lp
         Sa3J5EuaniiP6tu12o26VbnnWN9EMLjTZALj9vLFcDDVCt5P4c6cJFxq/GAg/jKShL9t
         3KMCnnE6mUNn6vQt3RjKW90jeeo1Vx+/umNG5aDcrlGsGfCOlmAEtHue61mJ/PsFUvJ0
         sP+4+L447dV+4SCHw0uFA5jdMuSBuPFHZ7GRR/kkY/uJ3GJQsasmUbHmF1eEu6JUv2X2
         iV238K81Jcpx3AXUk08xZLlh5aT91CD2hjcnVrraF6Dw7EyZoofJ6R7yoQ6lxYIFkr4n
         st5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ulMuE0r6NVcIXPpAe1x0X3M8UQPMJa4UnxmSNIBAOQMQYunLJ
	D/70ZE354gDeFLNnNrrXfS8=
X-Google-Smtp-Source: ABdhPJztmTMhgyycsZh/qexkfDO9GlVU1fY12p5gDLv54LPTotlxko1LbQbCTBbXxRRq2DCvaS8YEQ==
X-Received: by 2002:a92:d3ce:: with SMTP id c14mr753861ilh.62.1591752368960;
        Tue, 09 Jun 2020 18:26:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1350:: with SMTP id u16ls2833739jad.8.gmail; Tue,
 09 Jun 2020 18:26:08 -0700 (PDT)
X-Received: by 2002:a02:7f4d:: with SMTP id r74mr915718jac.51.1591752368584;
        Tue, 09 Jun 2020 18:26:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591752368; cv=none;
        d=google.com; s=arc-20160816;
        b=AtExy/MJXAUK27vJIi40NrYeHMkjk7b4L9/l54yOSbFD9z1djgB382qLxzbe0WeAyX
         Oc8Er0pkKaHlLLffoQP1arH5q2XRpwhNNxaiw1TqzgrSwd3Gz7rOtx//MLk375brUP5i
         CYmro2rzthnmMlQvAUYGXuQxyH057HhqhTSIZ2eCH/EVcsDfrexDQ1+QriSIewN+4+7z
         iIE1DwtJ4sQbW3M6Cf2/2oinRKF8sZ9pHl8Hf9egy3zgfg0NOXGZ20/Ck/46gW5ud24t
         RwTD0Eve9z8a5+u9Pz58QZPmX6gUr5ALSolrDE6ANS0GyP3tIjxJ27RAr1h/RFE3eUpr
         OBnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=pysdLFI1KwKt1QfTloZzgp4NhXzdOqCbGJ25rpXsgkc=;
        b=ZDvr3NN81ZDaurpslibklbCiqOxX+agkxK4YlnU13W+vGWiycRoHwMrj+eUiae/IiH
         YeOjbr3KmcIUj3fXtSss98RrEyLv0DS3kIq/ir/gvzNS0PTwrtjyI+63cdevYIHWVnYQ
         5fIX9t0zd0HO8JdgrHeahqhX8epJgQ1hmtHBXu/YQ3OtX5EUJC7UyaUyfyHyRLjgjoDO
         eQ15qX7+zjB/f7xKueyq++j+SG611OC+j9B7X4CgH32t4jzdd6Dt7lcQ2UnRprHcFEFs
         a8TY91D8EgToLJBl1tXUkpLuq3P84XK7C32ratLVvUyH7DhsUMsOOXFZq3R700Zes+EG
         jHXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id n16si1050725iog.4.2020.06.09.18.26.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Jun 2020 18:26:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: kjJKP8Iz/4uJs8+6JZKwVi/zcTc62CPLotF2Xb6iXE3868l3+4pG39/Ff0xivnA9K2MJueV1QQ
 66XhaxG9VY9g==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2020 18:26:06 -0700
IronPort-SDR: KdMa16nsUN86zpDi7uw0j27LSevQ9UaWA8B1yL9pl+W8wNq2eWjRpeExoBwzaXzElwODcT3H1F
 UccULcR3h+qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,494,1583222400"; 
   d="gz'50?scan'50,208,50";a="259984718"
Received: from lkp-server01.sh.intel.com (HELO 4a187143b92d) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 09 Jun 2020 18:26:03 -0700
Received: from kbuild by 4a187143b92d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jipVC-0000Cb-Hx; Wed, 10 Jun 2020 01:26:02 +0000
Date: Wed, 10 Jun 2020 09:25:43 +0800
From: kernel test robot <lkp@intel.com>
To: Joerg Roedel <joro@8bytes.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Woodhouse <dwmw2@infradead.org>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
	Jerry Snitselaar <jsnitsel@redhat.com>, Qian Cai <cai@lca.pw>,
	iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] iommu/amd: Move AMD IOMMU driver into subdirectory
Message-ID: <202006100916.8dmlS5sj%lkp@intel.com>
References: <20200609130303.26974-2-joro@8bytes.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline
In-Reply-To: <20200609130303.26974-2-joro@8bytes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Joerg,

I love your patch! Perhaps something to improve:

[auto build test WARNING on iommu/next]
[also build test WARNING on linus/master next-20200609]
[cannot apply to v5.7]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Joerg-Roedel/iommu-Move-Intel-and-AMD-drivers-into-their-own-subdirectory/20200609-210928
base:   https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git next
config: x86_64-randconfig-r026-20200607 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> drivers/iommu/amd/init.c:3073:19: warning: no previous prototype for function 'get_amd_iommu' [-Wmissing-prototypes]
struct amd_iommu *get_amd_iommu(unsigned int idx)
^
drivers/iommu/amd/init.c:3073:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
struct amd_iommu *get_amd_iommu(unsigned int idx)
^
static
>> drivers/iommu/amd/init.c:3092:4: warning: no previous prototype for function 'amd_iommu_pc_get_max_banks' [-Wmissing-prototypes]
u8 amd_iommu_pc_get_max_banks(unsigned int idx)
^
drivers/iommu/amd/init.c:3092:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
u8 amd_iommu_pc_get_max_banks(unsigned int idx)
^
static
>> drivers/iommu/amd/init.c:3103:6: warning: no previous prototype for function 'amd_iommu_pc_supported' [-Wmissing-prototypes]
bool amd_iommu_pc_supported(void)
^
drivers/iommu/amd/init.c:3103:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
bool amd_iommu_pc_supported(void)
^
static
>> drivers/iommu/amd/init.c:3109:4: warning: no previous prototype for function 'amd_iommu_pc_get_max_counters' [-Wmissing-prototypes]
u8 amd_iommu_pc_get_max_counters(unsigned int idx)
^
drivers/iommu/amd/init.c:3109:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
u8 amd_iommu_pc_get_max_counters(unsigned int idx)
^
static
>> drivers/iommu/amd/init.c:3158:5: warning: no previous prototype for function 'amd_iommu_pc_get_reg' [-Wmissing-prototypes]
int amd_iommu_pc_get_reg(struct amd_iommu *iommu, u8 bank, u8 cntr, u8 fxn, u64 *value)
^
drivers/iommu/amd/init.c:3158:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
int amd_iommu_pc_get_reg(struct amd_iommu *iommu, u8 bank, u8 cntr, u8 fxn, u64 *value)
^
static
>> drivers/iommu/amd/init.c:3167:5: warning: no previous prototype for function 'amd_iommu_pc_set_reg' [-Wmissing-prototypes]
int amd_iommu_pc_set_reg(struct amd_iommu *iommu, u8 bank, u8 cntr, u8 fxn, u64 *value)
^
drivers/iommu/amd/init.c:3167:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
int amd_iommu_pc_set_reg(struct amd_iommu *iommu, u8 bank, u8 cntr, u8 fxn, u64 *value)
^
static
6 warnings generated.

vim +/get_amd_iommu +3073 drivers/iommu/amd/init.c

30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3072  
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24 @3073  struct amd_iommu *get_amd_iommu(unsigned int idx)
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3074  {
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3075  	unsigned int i = 0;
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3076  	struct amd_iommu *iommu;
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3077  
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3078  	for_each_iommu(iommu)
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3079  		if (i++ == idx)
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3080  			return iommu;
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3081  	return NULL;
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3082  }
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3083  EXPORT_SYMBOL(get_amd_iommu);
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3084  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3085  /****************************************************************************
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3086   *
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3087   * IOMMU EFR Performance Counter support functionality. This code allows
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3088   * access to the IOMMU PC functionality.
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3089   *
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3090   ****************************************************************************/
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3091  
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24 @3092  u8 amd_iommu_pc_get_max_banks(unsigned int idx)
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3093  {
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3094  	struct amd_iommu *iommu = get_amd_iommu(idx);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3095  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3096  	if (iommu)
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3097  		return iommu->max_banks;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3098  
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3099  	return 0;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3100  }
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3101  EXPORT_SYMBOL(amd_iommu_pc_get_max_banks);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3102  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05 @3103  bool amd_iommu_pc_supported(void)
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3104  {
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3105  	return amd_iommu_pc_present;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3106  }
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3107  EXPORT_SYMBOL(amd_iommu_pc_supported);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3108  
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24 @3109  u8 amd_iommu_pc_get_max_counters(unsigned int idx)
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3110  {
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3111  	struct amd_iommu *iommu = get_amd_iommu(idx);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3112  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3113  	if (iommu)
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3114  		return iommu->max_counters;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3115  
f5863a00e73c43 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3116  	return 0;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3117  }
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3118  EXPORT_SYMBOL(amd_iommu_pc_get_max_counters);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3119  
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3120  static int iommu_pc_get_set_reg(struct amd_iommu *iommu, u8 bank, u8 cntr,
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3121  				u8 fxn, u64 *value, bool is_write)
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3122  {
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3123  	u32 offset;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3124  	u32 max_offset_lim;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3125  
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3126  	/* Make sure the IOMMU PC resource is available */
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3127  	if (!amd_iommu_pc_present)
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3128  		return -ENODEV;
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3129  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3130  	/* Check for valid iommu and pc register indexing */
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3131  	if (WARN_ON(!iommu || (fxn > 0x28) || (fxn & 7)))
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3132  		return -ENODEV;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3133  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3134  	offset = (u32)(((0x40 | bank) << 12) | (cntr << 8) | fxn);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3135  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3136  	/* Limit the offset to the hw defined mmio region aperture */
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3137  	max_offset_lim = (u32)(((0x40 | iommu->max_banks) << 12) |
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3138  				(iommu->max_counters << 8) | 0x28);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3139  	if ((offset < MMIO_CNTR_REG_OFFSET) ||
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3140  	    (offset > max_offset_lim))
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3141  		return -EINVAL;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3142  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3143  	if (is_write) {
0a6d80c70b9150 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3144  		u64 val = *value & GENMASK_ULL(47, 0);
0a6d80c70b9150 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3145  
0a6d80c70b9150 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3146  		writel((u32)val, iommu->mmio_base + offset);
0a6d80c70b9150 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3147  		writel((val >> 32), iommu->mmio_base + offset + 4);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3148  	} else {
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3149  		*value = readl(iommu->mmio_base + offset + 4);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3150  		*value <<= 32;
0a6d80c70b9150 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3151  		*value |= readl(iommu->mmio_base + offset);
0a6d80c70b9150 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3152  		*value &= GENMASK_ULL(47, 0);
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3153  	}
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3154  
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3155  	return 0;
30861ddc9cca47 drivers/iommu/amd_iommu_init.c Steven L Kinney       2013-06-05  3156  }
38e45d02ea9f19 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2016-02-23  3157  
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24 @3158  int amd_iommu_pc_get_reg(struct amd_iommu *iommu, u8 bank, u8 cntr, u8 fxn, u64 *value)
38e45d02ea9f19 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2016-02-23  3159  {
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3160  	if (!iommu)
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3161  		return -EINVAL;
38e45d02ea9f19 drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2016-02-23  3162  
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3163  	return iommu_pc_get_set_reg(iommu, bank, cntr, fxn, value, false);
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3164  }
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3165  EXPORT_SYMBOL(amd_iommu_pc_get_reg);
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24  3166  
1650dfd1a9bcde drivers/iommu/amd_iommu_init.c Suravee Suthikulpanit 2017-02-24 @3167  int amd_iommu_pc_set_reg(struct amd_iommu *iommu, u8 bank, u8 cntr, u8 fxn, u64 *value)

:::::: The code at line 3073 was first introduced by commit
:::::: f5863a00e73c432b91e4efe1d68778b4ace6a892 x86/events/amd/iommu.c: Modify functions to query max banks and counters

:::::: TO: Suravee Suthikulpanit <Suravee.Suthikulpanit@amd.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006100916.8dmlS5sj%25lkp%40intel.com.

--T4sUOijqQbZv57TR
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
c89bkW/UM3bqKYD+Xf+T7wLHg5VlLdXGGNimd2LWXOOQ6xxxn1L4ps5aHhMHbrWv6h4s0wXG
+NVtjzKaGPlnSfGPvdVb4vxxtaUtad4xfCxv6TlqpfgNl0vSXmgsZa81puvi2joaDiys2CA5
Imtp7hCj4V/P0RgLWj1qfW191YFK4wPlo3HghgDaGscg0x7p8wdrvYZt09Q4rDJlb2Q8Fnhr
36IP2PPkb3QNHJm/Wbz7J8uyLkGrURkIYUdt0PZG5TQOtEmeJt/dB0GgLPd0vcKgPJpwAJmt
9CI/Njq/w1J0tT7gcnNcSj9ifUgCnHAxnZoIDjXwBsFqGwPc9JgD6K3W2WFcnlqXv9sq6Z8F
ZBxaOnfgenUMd1H840Q2bKtkGogRvbLkp2xEVE1qe4Zz34w3fV0murXRfYos2MTxUarQcyYh
t4bDZmLkUxQZnk1Opk2yju1QUnEz7g9+U0Ob+dPz67eF//38fLm/e/zj5un5fPe4aOZ180fI
trio6eSeSaMDrsREsoYZKSrXkmzFRiA375BqCsLMcUnTM7ZO9lHjOEtNsA1wSq8V0KLHGwfD
l1JXPq7cpaKk+K3nim6vM6znDyYyI3NMt6KjKU6tWLrYSuron8utrfrZYbl5JiFqL/XjPGtN
VhH+9X/qQhNul9rEMDVk5UzhWaPL18vr3YOoIi2eHh9+DbrmH2WaquwEoKt7HgwUpL66FGYU
O/3yc3scjmG5x7uXxZenZ64caeqZsz2ePig8kgcHW1PEGJQyUxuQpa3t+AxKH2kQjYaNK0OW
+glvU6bhM1ZZ73gNoKkr6b729ql5oQD2qC0vvwlAEXauaEbrtfu33HpytN2lqy0Ods6yzUoN
7gKOMpBDUbW1oyxevw6LxtZMCw5xGuexxuohfwFFh6/nL3f358W7OHeXtm39fjU5x7hNLLVj
C0uQwd95n54eXjCiOPDX+eHpx+Lx/N/GI0CbZad+J1lTm45ZrPL9892Pb5f7F93gxd8Lfnzw
Y4irLYFqMX0QAjA/k+L8t2+kzATd3u/9yvBAB7j6NmkwGHhBGfFGlRAiCX5gqvgEVDvBOwuh
UQky8jglu5FxLNhaHac7NHGQa7vJ6iEpjA7fBSNKNAOZKoQms7rpm6Is0mJ/6quYDDqNBXYB
ZjmbnC3l7nFk0cWVn6ZF+B62Wbk5TpDGPos6X5vClCIpJhXq4Zwe9bukyjBdhjZNYRzKsKZR
ZhgAfYTOd/4eHfuKVKbfx1lfH9CiZJodAdtl8u8avmwkPqsPb0OLJ+3tXCjFExeBHig5coyY
Okktgw3GSJIfS3a7uPUMhweVTn0mES54TT3mKk+VSS84oyOpAJZbrfwoNlgbItrPor0hhRSi
86LtYp9ySWIj2oqBQ0ZIz1LeYK6sIH7/228aOvTLpq3iPq6qQuN1TlFkZRXXNSe50jjzkigb
upa9nG2WTdfn5+9/XAC5iM5//vz69fL4Vdq4x6K3bzasuH/I8D7LRNe0CVnfguDMw8FKqy+C
D3HY1GTnJ1Keqi3yDWZfcrv7ljIBnisdZZLetbS45RkOeZ5FFvKf7hlvqQtSP7/p4w7Y6815
mpLDlpnou0x8DPkjlc9PXy6gue9/XjCfUPHj9QK7zB3a/ijrd+QF7j/PjHHauozz6D1s4Rrl
IfarJoj9hqcd7PwUyXQ6YMI4KxuWeKNom/eg3mg0aNxXxR9btGYL2vp06yfNe9Rh9dkH0T1V
ZREELL9HitkQo7biktsiZuvarEiiESSnvDo72GYUSHa73x1VocehsBGEZKgEJpUz31X0dA5d
03oRRzqAVZnKr2mjQ7b57v29bawwTCrQqvqPMXPrkwp+PBpOLoALivBg2jmH/JwgEuV5Kv08
noIGRJeXHw93vxbl3eP54UUVIIwUxG5dBphwBAMEFC20GAIz5aTQV+oT2w2qJNormypvYMJI
XZq1w+D58vnrWesdNyBOjvDHceOpV11Kh/TaxH7ETe53SadO/QCm4x6IUx0UR/baadItWLJv
lVuaaEee0XGns8QXrYF91N6BPmn89L5cuvY79OCTYPGRJ05HDw5Y8TX1ZYoKMwax9dt/bJPq
RllzmF5kSmzKH9af776fF3/+/PIFNvtIzaEOemGYRRihcm4NYHnRJLuTCJqbGbUxpptJpaJI
uBfDmuG/XZKmFVouqoiwKE9Qi68hkgxmJkgTuUgNyiJZFyLIuhAh1jV9KuxVUcXJPu9BiCdk
PMSxxaKspUqjeAcLL456cQ9mynXYBkr7cB7AnDEiDP0G0mR/kIeQFVE8KKC1VGuTpKz3TZLv
ye/5bUxgph3NcDKZCJNaKjNbmQmAwLzuih6zWRV5DtNLriqs7wRCx3A2BTTmzpbrhgmwqIt/
ZDApXDFO4F6evQI22DFdnTCnVsTiFygN8RSHpn5XSWfEJSZzHcClsbd0N9TLChaUj5MjRI+B
P2HoiBL4+VkSCmVIHAgnxBQO7ElLZ3sQ6E51k4CicK2FXu3XADZ2jKv3Ssc40BhAYqaYeP0N
Os2rQGCp5iTJ3QkkLKRfMlIl7sNGGTUCxyRFaUi52IxER7VyqVmxzpq6mEe4IuYn0OBZooH9
MJQj/SCK3FZwfSXymumYjw5KSDwghTtZmCD2OKTVTYIExMpJlvlxAdIykUX4zakqJIAT7VRW
RRDvON1NhlfH2xVFVBSyDOgaby3e0qEEBE0Ek5BLX7W6UYSaXCaEA2uSxxQM9kg/w4OFNMcS
MmxBl6buJHAhB6BpHpuVKz7aAHyMu698DeaKr67rGNZcXmR0jIsdv462yQd3ZIVsI2f7IXd3
tk8Ed/d/PVy+fntd/GuBbD7EIdAuygDXh6lf14MHohC7BTBCItQBOi0BQ6kZP2Ynk1IajEge
W4IY5UwiuQnPYBYJXgpdNKGYB/Ftagj0PtPV/sEnky0JrUSl58mJQyTUZkmPi8qdQQ1+7YiB
0RXU1jBnpee69B2QMLbBHfoNMmP4FqG5zrWXm5R6vZyJgmhtif7uwjRV4THMc3ooQ+wM8oTw
BueOLYF2gaH7hHV+iDLhKhWOIoX8CyOxY9ptWH8kgukrJCZM28YeopIMvdSunudh1kWb66+Y
hyTSV99BVKHhx5xXpqnifN9IMboArzjvDohWq2bODMjfeX6c7/FhCftAeOphCX/VxCHt6cXQ
YdXSrMewuCbN2FpNVysiW1Dc6ZMcm484vUnoK0ZE88SbV9AJ/LqCL9o9mcoQkZkf+ml6EhmY
lWHGY+YqT+x60VAnfMB9wRJfyofPEdrvdoaSMd7i7+SvjD5hhSCbGezTTXxSmSELkkrlkJ2c
3prBUjhfFmTobERDxey6QW7w5hTLNd/6aVOUMhGmRq2LXN4NWJOnSgvaKBEkIX0LyHCN0vQH
P6h8Zcn0zW2SH8hTHh9UXsPxSvFOR0wamoKMMmysTCjo6UVXKLBin+CyUkc9wvFHaQi5MJKQ
HIHYqs2CNC79yOaMIRXdb1dLpaiEvz3EcVqb2Y2pghnwQix/yAw+biVlBmLAkxZQEOHMwX9/
5eNmSVgVdbGjIjMyfIF3qPFJ6UObNgnnRKXBvKFCwiGmqJr4RiUv/RxvkoDrqWMAo4gbH7P2
yuMtQarAziT3agDiXQlFTB1ZRDTWp3ZvRMWRaUmOJDwIgohIffSEzzGsrdzNKsl8ZTy1n/DZ
kWBZ3YqRfBkQs+jAlnijMnTdxD6lNA84YDXYjuTc8wzV5mVqlDeVlGMchQVec/p1IibuHEGa
cKwzv2o+FCdsQGxXhJv5v0m6Qu0tSLVaySIkYg8gRjJN+BwqOFDwBJDGZdDivt6X5CmSSdQk
wRAg8viOSZ4p4uZTXBVsuEInRphJGLBypwj2d/I+ns0ki6ncH9pAHd2A4Wem4ZehEj8dkriP
biGESjI9rMq60tQkvnIiyvS6KRYTIv9iRjRS+xouZmomh9WXfwRPd51RcZvjg/RgDScFyNWq
H9FSd0ZVrQ764hAmPV7rpfFwAzl/RsQTQTIQDGIAz8P0Yx0StGmZ9IFB10IC+DM3RRhDPKjs
MBV+3R9kYaQEUhFK8NCybK6RCIeqenYhvPz26+VyD187vfslGZJMTeRFySo8hnHSGQfAMz5r
Qxzm+0pLSjV+tI/pe6nmVMb0zRYWrAr4ZNzGg5iQLBPuOOBHH2Aw65mvJtAYksMTpBKGSmj9
itoJsdzwtMqN7Fm8CR5y4vD08roIZxudSAuqm4XqgzKC6ujAPt3UgQmI35ScgJnCFHp1riJt
dhnRYL/D/8vZPdjokh2IDzLcDWD16xWEhsFGCvoIoI5FmcmyUK2/hVaTNXw90s8FCPAMAlvg
EC5WbOXjQQUd6o8yoCnqQxL4w2KQGs4aKiLSPB9HUBqlI3IGen6TkMl18/iWqQLCCRV+8WsY
Sf2boD3Tyij1EUmCCrWRHG0hDrdobpTvmU7LfTTjSH9UYMXYzY30BWcwfesw46kNbsRKabIY
kKcMt7WmBrhJkjEaOQA3bwMDt670jgPYpayVB6zrHo9D4BClf4gTjUxnoEMA1+rw8DpnqRZn
Y5MDx4rwq2NGGh7ZUSl7S6lmDDWHIZW7EUS2t1Q73IQ+Bq1ToWnobi3RR3H63szoUWEnZl/6
58Pl8a931u9MZFf7YDHc2f3ELN+UarB4N6tYvysMGaBCminN82xnCgegFYcCAgV54wVq53k8
3/mra6y8tsmMKLzwHDFwGnvzfPn6VV9LuJ3vpVc/EcyMNiqt+RFbwNI9FNSGIZFFSX1jqD9r
Ik1wjLjJjuWt+sU3TbqqsKSMvCQSPwSFW3qRkNDEap6GN+S1YN+Jzfflxyva5L8sXvmkz4yV
n1+/XB5e0ert6fHL5eviHX6b17vnr+dXlaumb4Dx2xLpDUIeHIupZkDCATMJjVOcx00Ud29N
TcluBFXZM01cK0Uqx2cYTBwwPu/MqjP8m8MmlVObbAzqfw9SAKOF1WHVCidYhtICuiFUrJ1R
caMKfDff0SooozJHTmPoeOOSsdkZMvHs7UYWjhzumBxdB7R9FR071lWCo0M9AvOy7kq2Ohqg
9Cv5gLSoIhuHjpzchGjUMU89AjBF1tqzPB0zKgMC6BCCfnKigePrzW/Pr/fL30QCQDZwTpFL
DUBzKe31G4F5pxj58iBBDajZow2QdBTAMnAE2+mcpBLgK6faGkMoy0oiwIhaqE1rPcITJPaK
OJ2M5XiEazJq60DhB4H7Ka7FSLUTJi4+bSn40VMiWg+YqLacJZVCWiTYrExFN6v+NqLEt0C0
3th6jzAF6VaKBTwjlOjGA6Kq3dChqkrqFNaWZ0LYRJEjwF0dzNJAKuF0RRQd60AicdbEZ2EY
I8IjG8xWVkO6zI8EwUfHvtGrrEEF3orvfiNilzlS5uNpXoE1LBruig6RIr3sjjNi4sxZGmIV
TYU7ICGjr08EHo+doA4rAjb1xu0X433Iy0hcnTZsNDleJCYiPcYW0Zefxq6O7RAMw+Fqxnrh
M9qWTfEsDncbEhVyzFQh62X5cPcKmuv3tyREmBUmkTUsOdtb670EuGsRHxThrkPSrz3M15Yl
8guVTPDG4ve2qvQcMBvbELVKpFn9AxrvrT5sVuQXtVfLFdk3lvTmarN1c2NtGv8aI2crr6G+
AsLFJD4i3N2SkqDO1vaKjCA+iYKVdJKamKx0QzlR5YhB7rsmXIQ47owDnx7/jRr21bWza+Av
Lkqmx+iax+wyMHSEiZBwm9cdIwEVtDsiUOYpD9FIU8zZdcugwv0mLyzYtrLffVZ0sWZ2OuBG
1wLpGn/AwTFFzcM7GhrLvZw05PYIJ6Iy9SX1+BCtVhuP1gGTbI/udEliMBcr/YoZ7pbMjvv7
DEaD3QH5fqmAq4JNlDs3wxH8GqbPQItXcsbP5koHv2IPSmlfGC71RRLqVl/Ajw93Yi/mQQyE
M6AV0z3Bjz5MdjKgRH7bx3lSfZQREfpZTYj5XhVD4caUCSJi4MQeFrWjFsCowoONg6EgHK6O
WqmqJV/mEZftYCGLBbodedOCZl09ETMYTc73bUwmmeOW/xI19wXI4pz2j+qikrJP6liit6gU
9jkOwoqk+hkUH1fr4YlhOJ5pizm73D8/vTx9eV0cfv04P/+7W3z9eX55pZ5fDqcyrjpysb1V
y1zJvopPhuzcjb/nhs4zHxdobGEQ9ymcfgyo2rWXBsPdOtu4s//zj/PdXz9/4HXAy9PDefHy
43y+/yZFL6MphIt73uteswrhLnWPn5+fLp8Fv1TmbiidzNX38dHtbig6lhxvwYcj/7S09nW/
K/d+UBTyi1GewPmpLknzloxxR5GVRR7noqcBR3C30/lOGoG54cGEITVfCxltMha+qTdKQizu
1Xv38tf5lQomOU723q9v4qbfVX4W3xbVDTmBSjUTDyRxGgEH9pJz7U0Zomm7BlDSZoxQHl95
HsgAhj2HHOjHdE/ZsBy9tRBnfEoAMbIKJgC9zaQ3BfjZB1lBS30/TeKcPVcCGfUM2/q3Ma9S
eevEaptDm0dxFRSpGGjrmMn0Zex/HDo1DiLxi0yp1Q/j6hDtZEB/m1RxGtfSEBEslURLsn6f
tcKVLNqP9alfSlZFDDjVODvBhFHgi64zcZrCmg+SQtYeZrA6WSRNnZFuykhRBa3WXOF5igMb
wnGWfXJTmdCSVdGu/ZA0dasNfYSzXMLCx9qXUV8WIVsZ4pvyoZzsymeIPnUIlFgjyFDKSrYT
Q3blQ6RoXQMeL+hvSj9ivCsWlBD8mmjnh3hLmZCpEQj6ufcyss1rfxePL2OGFk3OYDLVoWhu
Ysz1nApzxVcIux2tSxvdTMWEKwzJ7O46kKS0/sjNCfIGJITdd4YXHE7VBY1w0/u/lT1Zcxs5
zn/Flaf9quaIjzjOVzUPVHdLYtyX+7Bkv3R5HI2jSmylbLl2sr9+AR7dIAnKsw85BKB5EwRB
HG3fzDFL2+kw67uuYjHKRm2o6iZbSI4CJM3w86K1G3YSP5OsBN6atbAFe+5CYwyCptU4rQqD
uYoED7Pvo7NuaOaXko1eYmmWgnpcWajHXGCqkqImt4p8bBZZASDKCmVzaHBcn27aLis+nofr
tarhrGniX6IiQ9mhwcQBZdlJxxS5yNeM7bxZCXUbLqGGFRxNtlS0WEq0c5bVR2jTE5BONl/g
Ivd9c78/6kAwedp93z38nBSrrBWNLhRNuQadVkC7Ks+9fOCemcs/r8ttfa/8uAaVvhsQmJ7F
HxGbBXaoV42zAUx66iIJ8qRMGFlzVwCDBymoQwpygBX6qYOYkFnBqpa1Y5ar8lGCCD2wt5Nk
2VTodm5mmZw5GgPfwRrymj2iulim1gMVIgaTU6EhEGNNWMAhIsqKLLyfZDkCf0D+hnmRHHsD
jWFZUpJfqmgdVXXZ1+TwQNt9wKELO4iXNHm7Tq8BOLtMTWCZ5Pvu/pt2Vvn37vnbJA5PX6By
+dPZhaO8JNhWfjg94+NRe1QfuChALo2yAggxSZpkH9+f87hWS4M1i0VXFRqzhu/1OICrtpal
sg2yw6Qo293rM5cXG2rIrjt8/aKqQIDO8nSETpVzZZEJFzKHqyq3ZaA/Pfx9TcwrZSVa6lug
aUQtfdD0RKhF+M0Thkw7Usij+u5ho95kbdIcesN6i9StR4sOrV+9fQWuRdt2sMf6xTIgKUi/
RJFqMN3vI3C45g1ZJgLTDE6UA2atJTNfhAjqI+ADBVKqloakcT8fX8FZ/Dyv6vpmWAke3SYi
xyZrV2S2sOYKE9GJ2s5ws3nc7TeYDobROqqMdePrnJlo5gtd0o/HlwemkLpoHValAEojxSlH
FdIoWshWdAsnMgv66KAMHNw+2yo5+lf782W/eTyqYBN/3f74P7z232//glWausaN4hHOQAC3
O1eJau/wDFp/96JP08hnIVb79D3v7r7c7x5j37F4RVCu69/nz5vNy/0dbK2r3bO8ihXyFqm2
sfitWMcKCHAKefV69x0TLcW+YvGjnFapJPFm6a2337dPf3sFjbfRXJbr4Trp6dLjvhg1PP9o
vifxAS/qKMzY1pifR4sdED7tnPhoGgUSxrWJWA97KoVdVNIAp4SoBikMDm5RUo9KhwCl/RYO
YB49JnambMb5HvijvA4Xve1EGj4ETD0+cMfJ1iigcpomYAWNa4kScTwsO87I+BpErFk/puqC
nyZeSGjpiqSJ+HScrOmbEkK7Vh6fOYm/EToXl+FAqAp2GLyaGYrrQuKHHy/eh1kc8EPtgMt/
manJ4Z4PqJsr/NBmDy7IuwAjaExDP02UgrZt1IB3IjACYpRKWRJehJ2EU0AFDGMSTKJtvBis
bt/eHHz68TiBRXqpJnbyHK1Eg2nqE3lCbQ9MGk1ZV0nnelM3WZt1kYyP+s12eQNSxJ8vam9P
TbXO/4CehnSWFMMlZqTv29mJQU1DsrwZ6rUYTi7KYli27JuDQ4OFkOkClD5tM2ubbMbHbSGp
ELd5wmaBLBISUgR+GJPlSb4DUO5eifRgwCVt9/x49wQLFITT7X737FwObYsOkI1nrXA0LdDZ
s6C6UPFdpk0lHXtDAxpmEhWP/kUuqgjP5ay8TmVBvcNBBserSq1165aj4APXpfM7yYX0KDpy
hXJ+6ErQ65HqE8XavP44MPqV2wb86W9pA6wLObSpIAoC4xY9ZCg8FeNj7epo/3x3v316CPdd
2zmPCfATNT5dBRdEfp1OFGj/1fkfqxCcLF9ALEhNGH4PIG0VcfglZKwJqSf9dkt2zpkuj9rP
moaKQbN94Ds1Lp9ASYCkQ7FoLFVyze0oRWVCXvnlwrGX3WYB1kgZdaNyOvdwsBMDalXeqI5z
G5POOeUXHLEgnpNHcvV2A9JsWzX68LODK6u1+wt5qGce2+aycDgrAnRshKRrcl+L0iQHwv5A
58qOPbbwYYeKWN7Zp2MVYSg5zdyoVJSIZJkNq6pJjb2qczKLXKaig+O5xcdz/swEHFxcBBky
EEBOBrrHDGBYi65rQnBdtRioLHECgVhkmyV9I7sbpmYgOfXrOT1U4OnbBZ75BZ75BXooW5xX
1Vk0ls7nWXpCifF3PPBOOxQzNUfEEiaTGAGx1S0lR7ABq0iS/GOsJcHrIJohc5omUvw4YWEJ
dFDeKISMkO2ybvwj/c3O2efD84XowMxVfYNh2dB3h7vEr+3Qkd9XfdUJF8Q2CBGR5MmIqkoM
36bttiM1e+IjguAekGGwOdEJssAW8/bEm2KMI4QwpuhZ13jdshBu8Y44HXUUWc/CX8QjTdOX
QytKQOtYeNHag6nQYN29A23GEMcDnOKOvVEpczMAEzM/setmYuQnZrb5UTFf+IzHgpmRsShu
WyucHrGIVb3+WilsZPlZ5/M+QNiOEXCjdC1KNDxjYJkSKv5cDqYhxtkRY+hNfZVwCUawtvQY
bw9lil5INxH8HK1YkuamdkNOO2A4shfOygUsTjC7i+dtYGvmA6QGWKehqVihEfxDP+7pOAat
KNBbiX9woZRJR4bYQkz0LqLG7Ltq3rrnh4Y5oHmPkUXIqk50XAffHIldzxjNOxc3zvcTDGM8
6JBjKQ1BwBGIfCVUTMU8r1YsKd4D1ixmDbOhesZiiwyGp6pvRnX63f1X13Bk3qoDjZU1DbUm
T38Fwfv39DpVwksgu4BE9un8/L0zup+rXGZkUm6BiOL7dG45iK2Rr0VrYqr2d+DKv2dr/Lvs
+HbMFfchG6iF7xzItU+Cv61mN6nSDEOi/3F2+pHDywrVrHC9/uPd9mV3cfHh06/H7+gWmEj7
bs56x6z9+jWEqeF1/9cFKbzs1OrlbToPDY6+5r5sXr/sjv7iBk1JIO7ppkCXeG/gxHJEgiDu
7EUFVOHkiwrOp6rxUMlS5mmTlf4XGAIB3evx4KAivf6o7lGdocTzyQIpa0o6gN4lsitqty8K
wEtIHo06mlj8sl8Ah5qxjADurOpBNBM0FMUYM2AhF/gMrgeHvgniPx5DyubyWjTermCmbqxa
ttqyWD/Yk5KqBu1lveJFGkiqBjQ0K7bfYh4sOttUdb54pY1AY6gLhxU/nLFSAaGDclDhKQta
rUBxj7lZtNHegHyej4KdBzEC1PsAvoKTE1DzuXv6TXi0vtYCFCslI1nbF4VobphaPeFohEck
coM9KJYjDRFtQOxAqaANC7r17EYdZH5b+c1q0A03LAbEbclpvE1L1EtaWZXMlxpXN7LyO8MS
tvKWV7VQorm4rvoGWs+ZN8+kd/mxEMwMjo8NqR45R6tnSbwyQ4LIeE741nUz1gihgvabZ+ND
n3tLZYRz0vLUr75bZsiNguBili01onDFeg3RMmvMf9DQFB3nB9Be9aJduhvYwrRcG8ggLJUW
l9hSUNtUYOKachFTv3mkykbpUJWUDt+f4CgiR46l8iZhhN9qD9Sw+vyW848n6Ir9bH17uFe4
lg6Ve6b0wDNl5nGbsVVkxSxLUzaM0zQPjVgUsH70jOmyTkfJyr/MF7IEpuXIx4VHsqy9HXhV
rs+CmyUAzxnhx2AbUyonqWhDo5/ubxS2clSlWbYYEMA0TEj6lGTRZyOafysa6ZYJS+nSXZyd
xNuCUxvHEoRfu99LK2PG20G7bamZgmlzuUJ9eqcHb7ciaMG77//ZvQuIlKqdaR0aPMQLb4Rj
pwpy0zW/dPpgFWqIFgB4zs8JJVbyaPzLp4WEqpoRE8ijPsGtrJkCE5CgOhUhAaTxXBay++N4
VOVkHToG8EJj6TURf1+feL9PaVM1JKJ4VEjHdwgh7UrwkR01+cAbszVV1SFF9Eu8yptIC2nJ
TaglwusDBqQvvY6mslWmPn1ac5HGgIRjjYtGGRODvFcRczB1Vno/cSicCk0Ulenw6MuGGu/q
38PCZUEGGhd+k6xe8ks6kd7JLo3CruXsmhUW05Wt0JQXhQo7wHRYFNVK5S1b4XWHj5SrqPoa
48bG8bHVrpDBJpmgvE3ahMe3u1o9Vx4gfKN9VSpix4+In0yfan4iypyuvZxwOk6rgARWMTGc
nXKBDxySj6dOTnkX95HzO3ZILj68j35+wQaE8kg+ONvGxb3ZeCe2uIc5jhd8/na7zk/j3Ypk
mvOI3h668/MDdXCJPx2ST6fn7rKYMB9io/KJev67mLNPkdIuPp6538i2wlU3XERbf3zygXO9
9mmO3XKVd7DbCFtVMJcWEZtIiz+NfcjJ1RT/gW/IOT8UH3nqT7Ha2RTUDkFkzGk2P4RfVvJi
aPxqFJR3iUV0IRIUg9lgzhafZHCTSdzKNLzssp6msxgxTQXXRFH6jVG4m0bmOWtJYUkWIstl
4o6jgjdZdumvNERIaKIXiCmkKXvJyY7OKGCbg950fXMpqUs3IlBLS7uX5pw/W19KXOXksq0B
Q4lGibm81YmnwvSjshpWV38QawDn5V+b1W7uX5+3+59h2ABjYDO2DX+Pae8Ytb0VdLOmlSDY
wS0NvmjgSswfTjNTJK8Pxei8WRoQWFFTvy4ZAqqaBelriUmKdPRy985vFBPo8N4qM7WukRH7
Ck6jFSD5Kx+yImVnjltsTMbqm9esI+l3QOrDxy1tqRMx5BGozcXnL9Qw6fxUvCVPIQYjOGFs
F8xfZoYVnZKZtttHgGmkBHXmagu4Cu3uv33Z/fvpl593j3e/fN/dffmxffrl5e6vDZSz/fIL
eh094Hr65c8ff73TS+xy8/y0+a6SYm2e0HRoWmra1X3zuHtGh6Xtfnv3ffsfL9ljkig9Nr4y
Daidhlt9546o7HBUkkul12P6RShEngffqjdKkJGJgX3EMkoTo/FRlNY63vN9suj4kIzmz/6+
tJ1ZwzwqZRj1bMLdUI3PbM8/f+x3R/e7582UUJaMpyLGZ1nHX8QBn4TwTKQsMCRtLxNZL6kl
nocIP1k6wS4IMCRt6AP0BGMJiRLBa3i0JZd1zQLDIlBPEJIC+wcOEPbdwB1zH4OKGCC7H473
Qy8HoaFazI9PLoqehgjRiLKnTrMEGDZd/cNMstLZJgHcPWrsFMsiLGGR9zaRHvrW23Vav/75
fXv/67fNz6N7tWQfMHfLT/o+bKey5aJuGGS6ZMY0S9LIVdDim/RQocAAr7OTDx+OP4XDNKJo
Z8Tr/uvmab+9v9tvvhxlT6pHsHGP/r3dfz0SLy+7+61CpXf7u2AzJkkRDOWCgSVLOHfFyfu6
ym+OT2k8tnFHLiTGsmKGxKLgP20ph7bN2Gu3mcfsSqX59EdtKYALXttOz5RP2+PuC81daZs6
C5dMQpMwWFjXhN1kVniWzJhO5ZGHQ4Ou5twTiEHWXBPXTNUgVqwaUYd7aznOQ9iyCfnGUBNC
cb1mOC+Gien6IhwR9BkZjZHvXr7GZgLEz6Dty0IwnedG5FpTmpyzD5uXfVhDk5yeMNOtwH5O
Ropkxk3BYW5y4GbxQVuv2SNjlovL7CRcZBruvStRDG7lA9ygSbrj9ykNqeRjTIvDXaza6UMP
rJtxMWAUknPuVmkPhvQsPGVSrshCwr4FqbNg70uWxxapk9SRgM/fBxUB+OTDOUd9ehJSt0tx
HB4VAISt0WanzLQAEsrX6ANcaik+HJ+YQphKsYkMGL5hRgkQh6oqmBo6kARn1SLoWrdojj9x
daxqqDteiVosg1pIQynHjaNPxO2Pr677sWXrIcMCmPbLC8GkWA9Z9jPJ7RDRJAdWIYiiKzcJ
gIdgonX7FOFKD5iCQC96eejANhSmMKa6kUKff8Br/4eKp49O3tyYidBRnBztOsF94KGkRSxB
uNsUlH7mE6Q0T+8EOx2yNJuq8vs8V//G+3e5FLciDfezyFsQTaIyC8frDerNIcX8PmGFWVNj
APBgW2q4OnZjA2ppDgweITmJr6q2ONDsLhNBzd2qYveLgccWjkVH+uOih9OVuGEaa6n4tW8j
Q/x43ry8uFdwu3TUi25QOVoN+N25OAslmfw2HGX1Rh1AjW2K9kO/e/qyezwqXx//3DzrsARW
QxCwqrKVQ1I3JfcEajvRzBY2Lh+DYeUijfEyqVFcwr8cTRRBkZ8lho/P0EmyvmGKxUshBnQ4
8KjlEdrb9T8ibiKWcT4d3vDjPVPHFfqOeKqH79s/n++efx4971732ydGJM3ljD24FBzOm3CZ
AMKKalMSzSgNi9Pc5uDnmiQ8G7Ux5XWmieJ3Qxd9uKqpFK6zaWR0RvGwUdYvx8eHaA7VT66Q
waVqHInpphlfBEg9ylp+UcuIXWd7U2DKZZkonS1mdwo50eZ5j77+cGt+UdlJXrYPT3f71+fN
0f3Xzf237dODE4NQWRPgAsAIPO2ofeZty/9B2TpJSHQlN0Km50N9RTttYcMsKxPgJH4EREOG
TtaS5VEzCSIlhjAlTNb6RYO0WSb1zTBvqsJLmUJJ8qyMYMsMzcIlffy1qLksU8yqBsM2k/RE
rZqUPtpglsJsKPtihmFWiX8sqrkdjyXrzJ1I3yXQojyw2mNoIJEU9TpZaquFJpt7FKgKnqOA
pSzj6ly6urZkSBLZOTJBcnzuUoRXOWhM1w/uV6cn3k/mfcXAc5lksxtP50IwMQlTkYhmJSIG
PZpiJiM+oE0SEZkSRz5IaGYgOQvv6gm59fn36kaUaVXQzo8o3moModp20YWjRSIeFa4AcatZ
nQd1zN8cKFcytYYjPXVs3xw43z7ezE2BOfr1LYLJwKnfRiPowlTUAGpZY+BSUEHOAEXjOI5P
0G4Ju45dCIYGY8py93uDniWfmYL9jBsGO/V4WDhGXgThmGTbTa0eUoTjftGogHZVXjmZuigU
3/Mu+A+wwgMourVnNAMy/FA2ehh6qhHUyEy5eF2LfMDLO2EubVslEvgYHPKiaQTN1SyUWzMN
H6BBKry4w8QQ7gS0KlWDVfgpzESsM4dTHCKgiEHnTHd5HeJEmjZDB5K6w5fblay6nOi5kDRR
FWs93eavu9fvewyPvN8+vO5eX44e9YvU3fPmDk67/2z+nwhl+FAI0sRQzG5gQUxeByOiRe2R
RlImR9FoowzibDQ6ulNUJHW4S8Q6OyKJyOWiRDtgmqlRDZYNSsoZES9yvToJ61P+my0UJrqe
2ummV/Qoy6uZ+4s5CcrctcRO8lt8BSbLrrnyApgWtXTyBFUqM/MCRJeGJFbuE3TY6BrH71KJ
onbLXactsxEXWYeW/NU8pUuZfqPSmA3UDHFe4a3ZTyqloBd/062mQPggq+NUknWJMVKq3FvH
uCswBIgboA4AJhpDSN3rAATDPO/bpefzbt21ksuVoGFEFCjN6oq2B3aNs0H1SNIJHGXCQNRz
H6+twKmgP563T/tvKj/Kl8fNy0NoPQGSUtldDr6PigGjpR//6KftijEXeA6CYD6+YH6MUlz1
6OZ4Ng2rSlEQlnBGbC/QmtU0Jc1ywds5pDelwNRjcVtPkOJnFcg4Q9Y0QMu9vWsTSPhzjTGs
Wz0YZsSjozhqIrbfN7/ut49GKn9RpPca/hyOua7L3EcDGHq89knm+LwQbAuyJH8UjiTpSjRz
cmQv0hn698uavhllpY7Y16MSEBkM2TYYF32AQso/Lo4/nVCbDigEjiCMSFNEvAzgIq4KBiqm
lcsMAz21Ouot5TK6+a32P0eHvUJ0CTmEfIxqHgYvuPHbXVfq6PQ2nA0M4uxjXem8wmgz2jhX
pxukk/+Pp9cJXGm2Y7r58/XhAQ0n5NPL/vn1cfO0p8l1xUIqF9HmivCbCThab+jJ+uP938cc
lY5xxZdg4l+1aA+FYeHevfM633rsWrGtS1gydP3hb2Y2Jz44a4WJuIDHojOzCkcL08RdE7Fv
1+gZBliMpKJWBOjTeQBN23KAbDyimd4h4zWtJ+z3H82wO8balD7cz34XqJXRWC5h1cgus3WX
la1nrKWLQ7ySHGLmXtWqpPtCwWC3YJBrN2+GixnKygTTiGgJHGJMGM+zadXIpoJNKGLy/Hgd
79AYnTRV/dYBmmg7NfhANFVVZzXDuBZtOGIGMR6zb5WgTKrixah8q282AyMXXcYLaZJecckD
Y2hJtbvdgSBLLrnh+PacPXa2vVmpIOzkwAjD5llMtBbNZfvW8d5u4WRJDSrD+GnuQaO/pEFp
LUS95rvy1IhqZgywXsDlfEGduC1vMiSy6XrBbEKDODDcOgalMqvjTrSJaYrWSZvgIrBHnliv
DQY1NlSBUmy7Aimd9s6AcWDhGuSb803Mw5ujpWymwKNIdFTtfrz8cpTv7r+9/tAH2/Lu6cGN
4IlZaNGgsKrYrA0OHs/ZPnPyVclE7YyqJ2msUGnW487tYGnSW3hbzbsQ6UiE6qZMCVUdnJYy
Suy3cima1KtVBVOlszlS6OsYdgnGv6hZmrBjU2MIWW0S/L5JYxp8TNcm1jAsMXNCJ1peg7u6
AjkJpKW04q6a6oDTtVCJ5/DC0NbYIAh9eUXphzmn9KYPPJEUWLlRsapurkh/J+KYX2ZZzSul
zSkILLqox0ji2AFySP/r5cf2Ca3BoG+Pr/vN3xv4z2Z//9tvv9EMzhh3SBWn0gUxbm51gwnn
TKAhduhVGdjdaEtRKdN32Zq+oJh9OsV3dzkRT75aaczQ5tWqFlR3Y2patY4Do4aqFno8SXuv
1yGbNIhoZ2z65zzLaq4iHEf1+jcm43PqHGCvoG5jMLrbaQWPfWPO6OlO/D/MsnMt6Bov2rG6
VsCgYF6YLEthIWvV8oHz4VIfsIEkp/fRNy0nfrnb3x2hgHiPrzduqkQ9SNLvm7usfby7YBb+
mKsgU9JLMqekgXJQEhjIUk1fh9G+HCYQabzfuASurBguQeRhtkeQZzgm4c23vT2C8IN8N1gG
iKCfMCOBJCgOqYvleOKcHFN8MN0IzK7YICk2ArzTfm/jXZnLYzNdG119glrbILNjWAF+evFJ
oUxu+DQx6n17Wqih0ksJGfO+1JdjRdTEsAu4cS15GqtCmdsBiiOHleyWqAD0L44cmQndhWok
n9yQFUp6hfLwCc8jwdhJai6RUl3rg0LQMOHGAyamNF30hNQVJi5jVWq2MU5NCDSuveiN7ZYU
ORh0t/iLEpwZMoVr2DKRx6efzpQq2Jcqp+NSYMB3Tt4ikq0KBCyN/zHN/aV9hgwFbZ+sXFyw
X/++OGf3qxo8EB+VmB0uxEw0+Y3V1fUtEdHRgMco1ZSAQ3PB0K8iZaWzhXMc+RUN63TGCX/Z
XMKloBvMRdLbmCtOZ59WPVyQPE8MI3nkM6Xj9ZZaUcgqsjOx2/gKhaGpw0dJzGeKCs3h/fri
vTc/FpHxd8CRoo+rREca39PI509KwapenviHjlpEHyp0CXYDegWXhTx0q9aDo/RPLtvUGZdQ
mDigzu3LlQ75XbEPiSPa1weOPN1d41R/3m1e9ihBoLybYEaGu4cNPasv+9h+tQcu6pirho+l
aXmE5cgeKdFkuvE4HQYjZK51LoGux6UpxGVm/SC5RiCNrMaD0q9ijlIX+53TNKpG9AsoDwQT
VS0skgMNHNncZVKRTJvmXgzXXwAbtkQfrV1q/GUVHyr6ZYN6qtYjQG1006uIPZ7jXQMnCD4/
4TrWaVrdjLuGDBjpKLG4rnP8ggr86/SrzX8BBzr+qtTlAQA=

--T4sUOijqQbZv57TR--
