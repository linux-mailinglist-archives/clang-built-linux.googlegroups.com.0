Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHNYW75QKGQEDDSEEDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D46278689
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 14:01:35 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id x52sf848823otb.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 05:01:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601035294; cv=pass;
        d=google.com; s=arc-20160816;
        b=XLi/Q7krOJ0uF9v+IF3kuKyXITrSwSjiP6EpzMiS2itOohyVEUUxAqEQ3Rd0F4ioab
         X9Kb2AVIumWUhNVZIYgn8TkFsn2n4hkxBvxW+Z4ZQj6lzXWDUUuvTvcuvwPTtY9fqF3j
         wEhwPOlVIw7QqmJE/Z1YGrxmmGY9dX0w8qfV+2bHFc1ZOgMmk2AQ51RXdWvX8bGkWSZW
         fqFCPYDZzHaitqQQdpg0Cw1ZJJE1tyrokstZNMUzHydapUecN7CKYEI+guMRcWvfgnRw
         nbyLD6hlPm95OK1yEbs4A3czaJ8Zb4Qx20k5ZGHDVftBjtDnHdt96QSdKifxU7DlI26G
         /Xog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=3p6+cs3xyL67Ew4ExdMBOkzT+dT/Ojv0bx4K8qe/Jj4=;
        b=Tusu+o7dxwBleWdJsfgAt1cqOY5dPCqgVTay2spDN8o1dmkriLKdaiAse9Grh7SjLr
         R0X3l31nxctMoW32vYl9GEdONebEtkyYkGoPvrzO69Wh7yymtWQ+Aah2BldI7hZoMymZ
         DQU/ECz36+wPKAaWY1KMbI6eH/bjRU1/afXe+AuGPK401//8YTrMl2ikXKYPwYUdEnIe
         uCgLAIttdHS+tUpKKwxAqokWvHN+quMo4LZfwSS3u/COP1g11wc9c825n7OU9z1fotoc
         Tu0SHRKekb3I5HfrvKl6YpZ3gWW5R8ZXU2aZXP/9CRuITUlzvwpjJ2+v/SyYwkjWPXZW
         RosA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3p6+cs3xyL67Ew4ExdMBOkzT+dT/Ojv0bx4K8qe/Jj4=;
        b=kkrdoMxMwjaJ5Zk3TqPN5qvU50DYq4MOzqtOUx4iNgoJ/Ufc2QEJK0ynHOS+hbCFPP
         6urpVrfgL/lizFDY79xXPqLKChySG9xopyqjzE1TsbZDC0FHYknmQr/4XHgwFJ+f15mt
         pV5mf/dc+IE2VPXlqwSfFh65HNtckT86B+4lJRS7MLCGeTrcQtck46S1BpQZvcgAl3+e
         ysHHC2PvS1RNpwdoV+Teo/pZ6mKNTu2Pic6HyZXdOqyQONw/VT8QRGj2NPoMLyVZ4ESk
         GKoejgO6k3GiFx4kKv99bo6L9EczDD+G6AqX3zvmFnA6HIqHE7vbYPDhPrSduDyrHC7k
         r5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3p6+cs3xyL67Ew4ExdMBOkzT+dT/Ojv0bx4K8qe/Jj4=;
        b=WhO11PW2jKQzLwlu4mYZX4mcPyZ3ykX9FU5rSAtqYpPcIFTIz+RCCSMZjpnLv+7stc
         9PMphBvq40LJLmqOXEPKTGOdV2lffp8y1d0psArG8/Gh+bimFECtHPJVsd5biidqUlDm
         C3wNaICtZ3gAVdBoqtzU6phv4eQPvvm+qANEwGKgHdJ2jWgkji9CQ4gPAyaV4b1Usxe9
         mkuFnNznNeTiW7iRr+lretgqN/BfvOB0JJWLD7rUjR97LlLkrJyh4xQ0TjRi4vttszmt
         S9frA/b+oXwrajp0QCIOgg+/y1XLoX4TA7IfLHAzoodIi09UZipiJ6Bscfed0tuMOup5
         0YZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329QoAWJxZd55qG6S/D5p3+ABhTZXf+BRX0BpobhDNw2r93bfEc
	18ZUDFnbT3Csm2XsaSOIqCI=
X-Google-Smtp-Source: ABdhPJzxl0794OAv3Uf+/RQhM85+DD/nibIpe5ur8tMuVd5KhlWiHmsZK0ejb9DInC2lGsv+nH0AuA==
X-Received: by 2002:a05:6830:118b:: with SMTP id u11mr2657731otq.261.1601035293796;
        Fri, 25 Sep 2020 05:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls647975otk.2.gmail; Fri, 25 Sep
 2020 05:01:33 -0700 (PDT)
X-Received: by 2002:a9d:6a59:: with SMTP id h25mr22562otn.104.1601035293323;
        Fri, 25 Sep 2020 05:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601035293; cv=none;
        d=google.com; s=arc-20160816;
        b=VYYwGW2yEdiRSmx9whND6xqve4chAgPZ/VlXzT2kZ7958a4w6sQv4jrwmAAk0J5pGN
         ffhBzNRgBEv8fxafzOSF3DpmugGZub5v7inkc7wWGt+WD1iC3vraQCqwWOIVBEH+U3ef
         zjfPHesU/6qyt2BOLU1gIpspPIKUjQBBU9Z8BjwHEU9kvP+8DAWOF4kLbmczWYl20d6Z
         d2FJ449IH+wnwc5F9MaewX9kD0ngcoBnPe4TXonkbEYepxAcXxUg9zBJ14gCDWojP6jP
         FCF+AimbAFOT8XMduti3atQEqyrrGvd65qDjPYvjMYOUlERZqMpsgq+PFEn3p0NAJHup
         RLJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=sWULx03MZLCEfk0cUk4fNkA1h2+ahxMmHOF4nAw64+I=;
        b=yNx6ovK0t3onvgINRUznefraNha9bbWMCB53Q+rxr/65LtjgQhwbziaGwXXEcsk78s
         HgXDJAmIl66KqiP3ROXf2QYUMLqpGsH0VrKLGIXLwJlh5TyWlQwoi+rZ9WSElteuYlac
         azVI3q26DX2cIpOOFS48mAmvA5Ng/z+PL6xSLwFkero5UAiSi+eXb1P8oXCkr6ve0eC9
         AU7Vdp2TL6muP4hHwiVRW+UrLxxbjaQdC6Ad5dhvMoJTY5axj/VBbf5+fKb97Z9vyUTw
         lAaiQLNOmvq/vdRP2fROEobbG2/YliTALL08zysX11X7b+EmHKDbqDQ3A5Ipff70n+jc
         dDzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id k144si143901oih.5.2020.09.25.05.01.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: RBXcFDFeeH2bXSLVwqmzqyDUC3LzcFJkifWbhWXim+tz7T/mVm86stGFGM0jl+CLHt9mmeY8nF
 3ol5UtbG2r4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="160767320"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; 
   d="gz'50?scan'50,208,50";a="160767320"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2020 05:01:31 -0700
IronPort-SDR: mUVqftSrqlODzEaqElPD21HcnSUsmNzeNewDICOm6pjPoKAEcT2lg9TtRd6hzD00RFM4y9K3Dl
 /+41Oiy17W6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; 
   d="gz'50?scan'50,208,50";a="292648206"
Received: from lkp-server01.sh.intel.com (HELO 2dda29302fe3) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 25 Sep 2020 05:01:28 -0700
Received: from kbuild by 2dda29302fe3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLmPn-00005F-HX; Fri, 25 Sep 2020 12:01:27 +0000
Date: Fri, 25 Sep 2020 20:01:18 +0800
From: kernel test robot <lkp@intel.com>
To: Lorenz Bauer <lmb@cloudflare.com>, Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	John Fastabend <john.fastabend@gmail.com>,
	Jakub Sitnicki <jakub@cloudflare.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org, kernel-team@cloudflare.com,
	bpf@vger.kernel.org
Subject: Re: [PATCH bpf-next 1/4] bpf: sockmap: enable map_update_elem from
 bpf_iter
Message-ID: <202009251924.cwsVi7RZ%lkp@intel.com>
References: <20200925095630.49207-2-lmb@cloudflare.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
In-Reply-To: <20200925095630.49207-2-lmb@cloudflare.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Lorenz,

I love your patch! Yet something to improve:

[auto build test ERROR on bpf-next/master]

url:    https://github.com/0day-ci/linux/commits/Lorenz-Bauer/Sockmap-copying/20200925-175852
base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
config: arm-randconfig-r023-20200925 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c32e69b2ce7abfb151a87ba363ac9e25abf7d417)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/8021d25b95546c5e69261c6083c6eed8909caffd
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Lorenz-Bauer/Sockmap-copying/20200925-175852
        git checkout 8021d25b95546c5e69261c6083c6eed8909caffd
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/bpf/verifier.c:3941:16: error: use of undeclared identifier 'ARG_PTR_TO_BTF_ID_SOCK_COMMON'; did you mean 'ARG_PTR_TO_SOCK_COMMON'?
                           *arg_type = ARG_PTR_TO_BTF_ID_SOCK_COMMON;
                                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                       ARG_PTR_TO_SOCK_COMMON
   include/linux/bpf.h:286:2: note: 'ARG_PTR_TO_SOCK_COMMON' declared here
           ARG_PTR_TO_SOCK_COMMON, /* pointer to sock_common */
           ^
   1 error generated.

vim +3941 kernel/bpf/verifier.c

  3926	
  3927	static int resolve_map_arg_type(struct bpf_verifier_env *env,
  3928					 const struct bpf_call_arg_meta *meta,
  3929					 enum bpf_arg_type *arg_type)
  3930	{
  3931		if (!meta->map_ptr) {
  3932			/* kernel subsystem misconfigured verifier */
  3933			verbose(env, "invalid map_ptr to access map->type\n");
  3934			return -EACCES;
  3935		}
  3936	
  3937		switch (meta->map_ptr->map_type) {
  3938		case BPF_MAP_TYPE_SOCKMAP:
  3939		case BPF_MAP_TYPE_SOCKHASH:
  3940			if (*arg_type == ARG_PTR_TO_MAP_VALUE) {
> 3941				*arg_type = ARG_PTR_TO_BTF_ID_SOCK_COMMON;
  3942			} else {
  3943				verbose(env, "invalid arg_type for sockmap/sockhash\n");
  3944				return -EINVAL;
  3945			}
  3946			break;
  3947	
  3948		default:
  3949			break;
  3950		}
  3951		return 0;
  3952	}
  3953	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009251924.cwsVi7RZ%25lkp%40intel.com.

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--pf9I7BMVVzbSWLtt--
