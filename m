Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBODQ6BAMGQEKJJ4ISI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B8232E325
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 08:45:11 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id l2sf738954pgi.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 23:45:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614930310; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZBtHoBtTZ0UbgEhAnkvnQHZuH309Eh68kPAUO8Ml1vTq7/5wYj7kT5vBPKFUitm7gu
         bLXzvG2h+L9tnSAEnlYFfqfWzeKtoTk92uXHhy6EfwRju8DCLbv9WQfx7jzfNFkFrK2X
         krteAEVr/88ff7zM0voR+WGQb+7MQ+IT5Gsu0mbgIeXkbBIu9v1nCFfFIqMJ8eLoPP9E
         kkj6qQUhEgKc1QwU9L2feRTQArd6p6IMeO2yMAMZ61fUPkZ1Od09H5Ff3OIYMuOUWQAD
         914X9H25ZTEEeU13BAeJsUwwCQMIko5r8DtQl4SeLiPciOVGnfmDHdasSwYCaMrYNZUc
         Jbnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=TwUZCB8Mz1qGkjEPtoa3obTkL42ESn5LHOAUts8ZMI0=;
        b=WjvRlaV8lTe9m75AutSw1WH5aDCxmC3xxKnr5jUW8+0FCWqAOnsFw6GAIIfJSCFY5X
         lQ+sAEauVPY2d0RoeHWJWOr7ExiWrwd6L7H8sm40nGAwjZ1If3TjCyTADM5nik90auDz
         W7yhTFVwF+j4GVQ58S5IeFzKp0Nw0IFt7o1CiHXAWp0Fw6/j78oxnT2Dk9UCg6UsuFro
         FU6GTm625O9pY4J2QPZVK8T4buSM0op2c/viDPIQ8FAtQMsYk0a26485zaNK06Hsy0LJ
         aL2KYzwV2EQ47dLezjuWMrFLhW40PTEKd9XWOtxlWrwB7BSmJNdrjZysJ/kaz90w/hCA
         S0yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TwUZCB8Mz1qGkjEPtoa3obTkL42ESn5LHOAUts8ZMI0=;
        b=D0ARVf4nu1Wd01/iUdPfo9mj0ZW+Kvj9tLmChJTGgK5fb0IqKwwnoCvgN1rJnjLzCG
         Tguxkkf6nRrUYCz2SZyyEAAuzjqyA9UCeNTsvKLpuzv85i0CFG+DhADa5HOy5rqe47NR
         t6lPbiOUa3sJ19j0QxSSK665SiZr5GBLZBZ6VPmW/HuILHRp5B9XE0j58DsBzBSNu6yV
         zN78UnQo98tuKxuJPiG5NWQMbpQs3zS9P/22AgTHdhwiE07iPLjiT7uR+xFj81W51Yu6
         vZuzfMPgae/lyBBfb4ZNt3cV/yMDD0NT6sEV/EQK6/NhkQVdGZ5otIdPcWwqoZZKF/DV
         WHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TwUZCB8Mz1qGkjEPtoa3obTkL42ESn5LHOAUts8ZMI0=;
        b=ntY2EpStuqhCcY8XnMRd+1Gbyk7mJ29O0HG2NjSdGpnkpxyj3cunbsxMs/mMNRNUqv
         20l9EP311i6LPlGK5TCrJnWV1U2Bo0lq86pHobqSyWd/50mL63D1mT7ekvFZmojKXnNI
         dRqm/5Jj94yWINd3hpQ5FA1JE6KK+pOsh4mIgX5J0rofTHfePrKZctfHN/VEndj8TPct
         9tXRMmRdCjOEnqbmxKQOqqdUHZm4niXfqIqOf8yY6GiyzbbjQCdrD7HL+892Vb/6DXHG
         qaVVry1oTIon2GxRQXU1jn9jO96/B7oVowzvcRrM9rahJeVIDOMMETC62h+YqDi7Yes2
         0XPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53374cdxQp9J1nJ073zm0sndkTMP1K3Zv1mJwrjre3kztiENfPVn
	YoMH1AUTomPNRm8hRYfkS00=
X-Google-Smtp-Source: ABdhPJw/5knrzGZ/Yu5RDui98KF718HjQAkc8VTA53t1fHMfGc9ay940sKKpUjWXOR1p+IbzGB+nGw==
X-Received: by 2002:aa7:9341:0:b029:1ee:ee87:643a with SMTP id 1-20020aa793410000b02901eeee87643amr7616896pfn.55.1614930309715;
        Thu, 04 Mar 2021 23:45:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6bcb:: with SMTP id m11ls466328plt.6.gmail; Thu, 04
 Mar 2021 23:45:09 -0800 (PST)
X-Received: by 2002:a17:90b:1649:: with SMTP id il9mr8644847pjb.62.1614930309052;
        Thu, 04 Mar 2021 23:45:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614930309; cv=none;
        d=google.com; s=arc-20160816;
        b=M6jKsDIDYKd4wXWXFe9mO+y4Fu7zcOl6FsS0B5keHaywpyTJB7MBOz+WK4ZvnwwVVd
         0JtkTLl1ZpnFDrVGUQMZJwhaygS5YEUoJEC6j/vFghi/1A9+L5/WN23Hn5aE3rE3dDAl
         KfMPvvPDqHgso/OFTYy7SHfKYhK66qRD6G0m2dBlCNk3cwwRTCo7j5hNqiGQsXs/LzeJ
         BVG86uxNP4c8u7HPF3K9CbThQRVuJqBRInfSTqMf+p/+5oVowD6VyKtbwfnLf5917m8i
         61PnUyW0gNz7idC8KdNjhMlZX9DWkPpdUwLRWmv/1+Log4lzVurYhtiUyVg+zvyEP8Ot
         U9PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=sPAUSNFpk8zqmxImL3h+g0clXX4n5//I7RYrACkMT8E=;
        b=yGRjkdx0DT3Eh+l0VPGq8Tlv/JZjO4T4gLAEKdR7dhccASxU0Zsrxd3eQBoHNG6EHp
         mZnZoIfuxDbDsb6DvjbR7hfsCFPXS+gH/1uLqyHvZwr1gWj5EJguVPazKtgWlYcZkggy
         /qRR2/JFK4K52MPtDdSqJscTHnTbBQqjAq4Jeyv8PF3hCnn+LJkuDJj3OZExPlhhBIay
         6D6L4HdarWtZ4uFg5w2LVMyo6adlTxxj5unEF3FnGoGvBYH81lQgqJ1n3yNcr3l95YLa
         BYRQ4vbnHNSmL9f6H/6xNFHVCrumhGXNfIo587Y1ueDPzH4zRoUafzCjgKGrG2mtVIM8
         Ttww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id t25si54227pfg.2.2021.03.04.23.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 23:45:09 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 9Crj50+xw/ShshuqR8IyoLqyMrbQ95LF/ljW19xan9JafYYdLtRHwxKyp77JVRrnp5MDsa3e5w
 QFsPpDA21J+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="174712002"
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="174712002"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2021 23:45:06 -0800
IronPort-SDR: rk5OzpXzZoXXJMY0IkRLR+k52oWpFExS9ZTrTDjHWpZhBDZzylC0osw328ujsedkYQij+4Uqzg
 EtH1guqQVUmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="374849283"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 04 Mar 2021 23:45:03 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lI58w-0002gd-Cn; Fri, 05 Mar 2021 07:45:02 +0000
Date: Fri, 5 Mar 2021 15:44:45 +0800
From: kernel test robot <lkp@intel.com>
To: Wang Wensheng <wangwensheng4@huawei.com>
Cc: kbuild-all@01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>
Subject: arch/powerpc/kvm/book3s_hv_nested.c:218:6: error: stack frame size
 of 2176 bytes in function 'kvmhv_enter_nested_guest'
Message-ID: <202103051542.w8jxZblj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--ibTvN161/egqYuK8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   280d542f6ffac0e6d65dc267f92191d509b13b64
commit: cf59eb13e151ef42c37ae31864046c17e481ed8f KVM: PPC: Book3S: Fix symbol undeclared warnings
date:   5 months ago
config: powerpc-randconfig-r006-20210305 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4d90e460bcc7b3e5ff6c7e2e05e974772489c4b8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cf59eb13e151ef42c37ae31864046c17e481ed8f
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout cf59eb13e151ef42c37ae31864046c17e481ed8f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/kvm/book3s_hv_nested.c:218:6: error: stack frame size of 2176 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
   long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
        ^
   1 error generated.


vim +/kvmhv_enter_nested_guest +218 arch/powerpc/kvm/book3s_hv_nested.c

873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  217  
360cae313702cd Paul Mackerras       2018-10-08 @218  long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
360cae313702cd Paul Mackerras       2018-10-08  219  {
360cae313702cd Paul Mackerras       2018-10-08  220  	long int err, r;
360cae313702cd Paul Mackerras       2018-10-08  221  	struct kvm_nested_guest *l2;
360cae313702cd Paul Mackerras       2018-10-08  222  	struct pt_regs l2_regs, saved_l1_regs;
360cae313702cd Paul Mackerras       2018-10-08  223  	struct hv_guest_state l2_hv, saved_l1_hv;
360cae313702cd Paul Mackerras       2018-10-08  224  	struct kvmppc_vcore *vc = vcpu->arch.vcore;
360cae313702cd Paul Mackerras       2018-10-08  225  	u64 hv_ptr, regs_ptr;
360cae313702cd Paul Mackerras       2018-10-08  226  	u64 hdec_exp;
360cae313702cd Paul Mackerras       2018-10-08  227  	s64 delta_purr, delta_spurr, delta_ic, delta_vtb;
360cae313702cd Paul Mackerras       2018-10-08  228  	u64 mask;
360cae313702cd Paul Mackerras       2018-10-08  229  	unsigned long lpcr;
360cae313702cd Paul Mackerras       2018-10-08  230  
360cae313702cd Paul Mackerras       2018-10-08  231  	if (vcpu->kvm->arch.l1_ptcr == 0)
360cae313702cd Paul Mackerras       2018-10-08  232  		return H_NOT_AVAILABLE;
360cae313702cd Paul Mackerras       2018-10-08  233  
360cae313702cd Paul Mackerras       2018-10-08  234  	/* copy parameters in */
360cae313702cd Paul Mackerras       2018-10-08  235  	hv_ptr = kvmppc_get_gpr(vcpu, 4);
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  236  	regs_ptr = kvmppc_get_gpr(vcpu, 5);
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  237  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
360cae313702cd Paul Mackerras       2018-10-08  238  	err = kvm_vcpu_read_guest(vcpu, hv_ptr, &l2_hv,
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  239  				  sizeof(struct hv_guest_state)) ||
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  240  		kvm_vcpu_read_guest(vcpu, regs_ptr, &l2_regs,
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  241  				    sizeof(struct pt_regs));
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  242  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
360cae313702cd Paul Mackerras       2018-10-08  243  	if (err)
360cae313702cd Paul Mackerras       2018-10-08  244  		return H_PARAMETER;
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  245  
10b5022db7861a Suraj Jitindar Singh 2018-10-08  246  	if (kvmppc_need_byteswap(vcpu))
10b5022db7861a Suraj Jitindar Singh 2018-10-08  247  		byteswap_hv_regs(&l2_hv);
360cae313702cd Paul Mackerras       2018-10-08  248  	if (l2_hv.version != HV_GUEST_STATE_VERSION)
360cae313702cd Paul Mackerras       2018-10-08  249  		return H_P2;
360cae313702cd Paul Mackerras       2018-10-08  250  
10b5022db7861a Suraj Jitindar Singh 2018-10-08  251  	if (kvmppc_need_byteswap(vcpu))
10b5022db7861a Suraj Jitindar Singh 2018-10-08  252  		byteswap_pt_regs(&l2_regs);
9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  253  	if (l2_hv.vcpu_token >= NR_CPUS)
9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  254  		return H_PARAMETER;
9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  255  
360cae313702cd Paul Mackerras       2018-10-08  256  	/* translate lpid */
360cae313702cd Paul Mackerras       2018-10-08  257  	l2 = kvmhv_get_nested(vcpu->kvm, l2_hv.lpid, true);
360cae313702cd Paul Mackerras       2018-10-08  258  	if (!l2)
360cae313702cd Paul Mackerras       2018-10-08  259  		return H_PARAMETER;
360cae313702cd Paul Mackerras       2018-10-08  260  	if (!l2->l1_gr_to_hr) {
360cae313702cd Paul Mackerras       2018-10-08  261  		mutex_lock(&l2->tlb_lock);
360cae313702cd Paul Mackerras       2018-10-08  262  		kvmhv_update_ptbl_cache(l2);
360cae313702cd Paul Mackerras       2018-10-08  263  		mutex_unlock(&l2->tlb_lock);
360cae313702cd Paul Mackerras       2018-10-08  264  	}
360cae313702cd Paul Mackerras       2018-10-08  265  
360cae313702cd Paul Mackerras       2018-10-08  266  	/* save l1 values of things */
360cae313702cd Paul Mackerras       2018-10-08  267  	vcpu->arch.regs.msr = vcpu->arch.shregs.msr;
360cae313702cd Paul Mackerras       2018-10-08  268  	saved_l1_regs = vcpu->arch.regs;
360cae313702cd Paul Mackerras       2018-10-08  269  	kvmhv_save_hv_regs(vcpu, &saved_l1_hv);
360cae313702cd Paul Mackerras       2018-10-08  270  
360cae313702cd Paul Mackerras       2018-10-08  271  	/* convert TB values/offsets to host (L0) values */
360cae313702cd Paul Mackerras       2018-10-08  272  	hdec_exp = l2_hv.hdec_expiry - vc->tb_offset;
360cae313702cd Paul Mackerras       2018-10-08  273  	vc->tb_offset += l2_hv.tb_offset;
360cae313702cd Paul Mackerras       2018-10-08  274  
360cae313702cd Paul Mackerras       2018-10-08  275  	/* set L1 state to L2 state */
360cae313702cd Paul Mackerras       2018-10-08  276  	vcpu->arch.nested = l2;
360cae313702cd Paul Mackerras       2018-10-08  277  	vcpu->arch.nested_vcpu_id = l2_hv.vcpu_token;
360cae313702cd Paul Mackerras       2018-10-08  278  	vcpu->arch.regs = l2_regs;
360cae313702cd Paul Mackerras       2018-10-08  279  	vcpu->arch.shregs.msr = vcpu->arch.regs.msr;
360cae313702cd Paul Mackerras       2018-10-08  280  	mask = LPCR_DPFD | LPCR_ILE | LPCR_TC | LPCR_AIL | LPCR_LD |
360cae313702cd Paul Mackerras       2018-10-08  281  		LPCR_LPES | LPCR_MER;
360cae313702cd Paul Mackerras       2018-10-08  282  	lpcr = (vc->lpcr & ~mask) | (l2_hv.lpcr & mask);
73937deb4b2d7f Suraj Jitindar Singh 2018-10-08  283  	sanitise_hv_regs(vcpu, &l2_hv);
360cae313702cd Paul Mackerras       2018-10-08  284  	restore_hv_regs(vcpu, &l2_hv);
360cae313702cd Paul Mackerras       2018-10-08  285  
360cae313702cd Paul Mackerras       2018-10-08  286  	vcpu->arch.ret = RESUME_GUEST;
360cae313702cd Paul Mackerras       2018-10-08  287  	vcpu->arch.trap = 0;
360cae313702cd Paul Mackerras       2018-10-08  288  	do {
360cae313702cd Paul Mackerras       2018-10-08  289  		if (mftb() >= hdec_exp) {
360cae313702cd Paul Mackerras       2018-10-08  290  			vcpu->arch.trap = BOOK3S_INTERRUPT_HV_DECREMENTER;
360cae313702cd Paul Mackerras       2018-10-08  291  			r = RESUME_HOST;
360cae313702cd Paul Mackerras       2018-10-08  292  			break;
360cae313702cd Paul Mackerras       2018-10-08  293  		}
8c99d34578628b Tianjia Zhang        2020-04-27  294  		r = kvmhv_run_single_vcpu(vcpu, hdec_exp, lpcr);
360cae313702cd Paul Mackerras       2018-10-08  295  	} while (is_kvmppc_resume_guest(r));
360cae313702cd Paul Mackerras       2018-10-08  296  
360cae313702cd Paul Mackerras       2018-10-08  297  	/* save L2 state for return */
360cae313702cd Paul Mackerras       2018-10-08  298  	l2_regs = vcpu->arch.regs;
360cae313702cd Paul Mackerras       2018-10-08  299  	l2_regs.msr = vcpu->arch.shregs.msr;
360cae313702cd Paul Mackerras       2018-10-08  300  	delta_purr = vcpu->arch.purr - l2_hv.purr;
360cae313702cd Paul Mackerras       2018-10-08  301  	delta_spurr = vcpu->arch.spurr - l2_hv.spurr;
360cae313702cd Paul Mackerras       2018-10-08  302  	delta_ic = vcpu->arch.ic - l2_hv.ic;
360cae313702cd Paul Mackerras       2018-10-08  303  	delta_vtb = vc->vtb - l2_hv.vtb;
360cae313702cd Paul Mackerras       2018-10-08  304  	save_hv_return_state(vcpu, vcpu->arch.trap, &l2_hv);
360cae313702cd Paul Mackerras       2018-10-08  305  
360cae313702cd Paul Mackerras       2018-10-08  306  	/* restore L1 state */
360cae313702cd Paul Mackerras       2018-10-08  307  	vcpu->arch.nested = NULL;
360cae313702cd Paul Mackerras       2018-10-08  308  	vcpu->arch.regs = saved_l1_regs;
360cae313702cd Paul Mackerras       2018-10-08  309  	vcpu->arch.shregs.msr = saved_l1_regs.msr & ~MSR_TS_MASK;
360cae313702cd Paul Mackerras       2018-10-08  310  	/* set L1 MSR TS field according to L2 transaction state */
360cae313702cd Paul Mackerras       2018-10-08  311  	if (l2_regs.msr & MSR_TS_MASK)
360cae313702cd Paul Mackerras       2018-10-08  312  		vcpu->arch.shregs.msr |= MSR_TS_S;
360cae313702cd Paul Mackerras       2018-10-08  313  	vc->tb_offset = saved_l1_hv.tb_offset;
360cae313702cd Paul Mackerras       2018-10-08  314  	restore_hv_regs(vcpu, &saved_l1_hv);
360cae313702cd Paul Mackerras       2018-10-08  315  	vcpu->arch.purr += delta_purr;
360cae313702cd Paul Mackerras       2018-10-08  316  	vcpu->arch.spurr += delta_spurr;
360cae313702cd Paul Mackerras       2018-10-08  317  	vcpu->arch.ic += delta_ic;
360cae313702cd Paul Mackerras       2018-10-08  318  	vc->vtb += delta_vtb;
360cae313702cd Paul Mackerras       2018-10-08  319  
360cae313702cd Paul Mackerras       2018-10-08  320  	kvmhv_put_nested(l2);
360cae313702cd Paul Mackerras       2018-10-08  321  
360cae313702cd Paul Mackerras       2018-10-08  322  	/* copy l2_hv_state and regs back to guest */
10b5022db7861a Suraj Jitindar Singh 2018-10-08  323  	if (kvmppc_need_byteswap(vcpu)) {
10b5022db7861a Suraj Jitindar Singh 2018-10-08  324  		byteswap_hv_regs(&l2_hv);
10b5022db7861a Suraj Jitindar Singh 2018-10-08  325  		byteswap_pt_regs(&l2_regs);
10b5022db7861a Suraj Jitindar Singh 2018-10-08  326  	}
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  327  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
360cae313702cd Paul Mackerras       2018-10-08  328  	err = kvm_vcpu_write_guest(vcpu, hv_ptr, &l2_hv,
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  329  				   sizeof(struct hv_guest_state)) ||
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  330  		kvm_vcpu_write_guest(vcpu, regs_ptr, &l2_regs,
360cae313702cd Paul Mackerras       2018-10-08  331  				   sizeof(struct pt_regs));
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  332  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
360cae313702cd Paul Mackerras       2018-10-08  333  	if (err)
360cae313702cd Paul Mackerras       2018-10-08  334  		return H_AUTHORITY;
360cae313702cd Paul Mackerras       2018-10-08  335  
360cae313702cd Paul Mackerras       2018-10-08  336  	if (r == -EINTR)
360cae313702cd Paul Mackerras       2018-10-08  337  		return H_INTERRUPT;
360cae313702cd Paul Mackerras       2018-10-08  338  
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  339  	if (vcpu->mmio_needed) {
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  340  		kvmhv_nested_mmio_needed(vcpu, regs_ptr);
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  341  		return H_TOO_HARD;
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  342  	}
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  343  
360cae313702cd Paul Mackerras       2018-10-08  344  	return vcpu->arch.trap;
360cae313702cd Paul Mackerras       2018-10-08  345  }
360cae313702cd Paul Mackerras       2018-10-08  346  

:::::: The code at line 218 was first introduced by commit
:::::: 360cae313702cdd0b90f82c261a8302fecef030a KVM: PPC: Book3S HV: Nested guest entry via hypercall

:::::: TO: Paul Mackerras <paulus@ozlabs.org>
:::::: CC: Michael Ellerman <mpe@ellerman.id.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103051542.w8jxZblj-lkp%40intel.com.

--ibTvN161/egqYuK8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICCjdQWAAAy5jb25maWcAlFxbk9y2jn7Pr+hyXs55SDI3j+3dmgdKorqZlkSZlHouL6p2
j+zMZjzt7enJif/9AqQuIEWNs6lK4gZI8AYCH0DIP//084K9HPdft8eH3fbx8fviS/vUHrbH
9n7x+eGx/e9FIheFrBY8EdWv0Dh7eHr5+7dv+/+0h2+7xdtfP/x68sthd7ZYt4en9nER758+
P3x5AQEP+6effv4plkUqlk0cNxuutJBFU/Gb6urN7nH79GXxV3t4hnaL0/NfT349Wfzry8Px
v377Df779eFw2B9+e3z862vz7bD/n3Z3XFzcfzhpLy5PPu127z6dt28/f77cvWvP2pO37Yd3
F+/enV28/7C7+PT+32/6UZfjsFcnPTFLpjRoJ3QTZ6xYXn0nDYGYZclIMi2G7qfnJ/APkbFi
umE6b5aykqSTy2hkXZV1FeSLIhMFH1lCfWyupVqPlKgWWVKJnDcVizLeaKmIqGqlOINpF6mE
/0ATjV3hGH5eLM2xPi6e2+PLt/FgRCGqhhebhilYschFdXV+Bs37ucm8FDBMxXW1eHhePO2P
KGHYIhmzrN+ON2/GfpTRsLqSgc5mKY1mWYVdO+KKbXiz5qrgWbO8E+W4Nsq5uRvpbuNhBkPL
wMgJT1mdVWbxZOyevJK6KljOr97862n/1P6brEtfszIgUN/qjSjjcVIdAf8fVxmdVym1uGny
jzWveUDSNaviVWO4REOU1LrJeS7VbcOqisWrkVlrnomIDsFquKsB2WYHmQL5pgXOjWVZryCg
a4vnl0/P35+P7ddRQZa84ErERhX1Sl6PA/ucJuMbnoX5uVgqVqGWBNmi+J3HLnvFVAIsDVve
KK55kYS7xiuqJEhJZM5E4dK0yEONmpXgCnfkdio81wJbzjKC46RSxTzp7qGg1kSXTGkelmik
8aheptqcY/t0v9h/9k7E72SMwGY8RI8dwxVcw4EUlR6Z5vDR2FQiXjeRkiyJma5e7f1qs1zq
pi4TVvFejaqHr2DUQ5q0umtK6CUTEVNtLSRyRJI518Fjp3WWBTQa/ofupKkUi9fOdvscezKT
cYNDrsRyhTpntlhpt013NpNlkhuuOM/LCgYoQje8Z29kVhcVU7eOdbDMV7rFEnr1mx2X9W/V
9vnPxRGms9jC1J6P2+PzYrvb7V+ejg9PX8bt3wgFvcu6YbGRYbdrGNlohMsObk5ATFPA1d6E
1hpqDLpDx0XdN6ocHrf3FTqBHZAxBzsIDYkq+pxmc078IThAXbFKOysFIly3jN2aDoHRTIub
bhy3n5CvT7TUwjlPsBW9W0mERpedBPXpH5zkoNqwn0LLrLenRhNUXC/09M5VoDUN8MYtgR8N
v4GLSPZQOy1MH4+E+2i6djc/wJqQ6oSH6HgjA3OCY8oyxBs59QLIKThYVM2XcZQJaoSQl7IC
4NTV5cWUCO6IpVenl44oGUe4f/6xklk1BkHlUfCU3F12gUwkijOyL2Jt/+Do+nq4zDIO3i6x
XsHwntEZMBUOlYKvFWl1dfqO0lEncnZD+Wej5RBFtQaglXJfxrlVHr37o71/eWwPi8/t9vhy
aJ9HDaoB8+ZlDyVdYlSDkwAPYW3S23GfAgIdF6TrsgTgqpuizlkTMYDVsWu+LSaGiZ+evXes
ttMhuIfxUsm6DO0ggjrww2ArqMga56HDxwEQrghJAtClgONcdZHMiSl4FRYTr3i8LiUsE/1N
JZXjoTSwE4OezYqCosH/pxpMDLiHGLxwEmyk0NiFrGqGhnBjcLAi+Mr8ZjkI1rJGtzliZJVM
kDaQIiCdhYdOmuwuZ3O8m7AHNr3kPOsisBhg3OmKrCKSEt1ldwlHxZIl+BtxxxESICKB/+Wg
Ts7W+800/GEOUcPdT9BmxBIMHkAh1nAMpAoP7w6hgPMbbHHMy8oExmiCvHinjHW5hlmCscdp
ksWVKZ2vteiBGebgeQRqKxl4yascfdkEO1plmpDTFSsAno0EG8NYdESoxs74v5siFzR8JWfB
sxQ2TVHBs8tlgJ0RBJJZ1QDwvJ9wCYn4UjqLE8uCZSlRELMASjCAlxL0CoIuAp8FCesBCdTK
MVos2QiYZrd/ZGdASMSUEvQU1tjkNtdTSuNs/kA1W4A3GbGWowjkxEajBkduYEeaBLRiiAPG
mTUoIQKwHAoXSDN9W8TeqUFc89FRxjziScJDA1ulhqk1Q2hiPFCXPSrbw+f94ev2adcu+F/t
EwAgBh4lRggEcHv0Sq6Iwe/8QzEDPM2tDOvAHGXWWR3ZmMwxCzIvWQUR0TpsjDMWBRaNshy7
Ds1gS9WS99hwVlqTAhhD2NMouIMyD0qnzTBsBoiWOOOt6jTNYN8ZjAinLMFTSDUzZm0AErRV
lWBZsBGgl1RkE/fbnYGbaBoOrIwvL/rTLg/7Xfv8vD9A/PTt2/5wJAcLHhcM9/pcN6b9OGjP
4MAITmsISss6jAs4AswZZimvuXrrsynz0geOhvrudYnvX2d/mBkQwkIw0uYgYM3EGoyMqzcm
B3v5ZrpzxJ4CLS0J0mYZWg8CUzf6xrvvvLCJxTITVVPmEF1VmAxwhSqWYBYrr2fIvWK7bJvC
q3npkqeUriErfQ1AWuiAgJXnoL3CYjtfVAkz6jCnIxHJ6PNmRBorE1fULpg0QqNzMmHnR6Hw
cDQmUYmgREoV8c5Cd/dkegmGM0m0PD8jmAXVAO1qkQjmBM/IgWOq4LwsM7CQy4tIkHNwzswc
eJ6zslEFRjCAhCGKuDo/f62BKK5O34cb9PaxFzQGKa+0Q3mnjoPQvKpL3H2bO4CIjGwwRoM9
y3iaJhUKLF+8qou1cxCYPrx6OwZCgEQA0QtXP0zCNZE0U1eBF7Tx4Kgz/f0zZBCcZmypp3y8
KQDGp4zeOK2uuViu3HvhTqh3tIXUJb2pnKnsdgqyWNHlAjEOPn0/PkeYLXawnclIT+gmyJA5
XPYUMD/cFQxHKFKxR8due0TapIk35TqJls3p5du3J6QXpphN3+kmuCiwZKUyYN0HHiLiyqJo
RJxaRBSDdnEk7BHo0w/YhSzuuJKdAXdbdIGocfXGQxoHOdesBt8X+SYmYddku8qlfZkx2XB9
dUFbYuoYlD5nnr27EbEnU8Rll1ab0lcbn6YbBQG6L9Pvi5SgUMPQeA6Dh37cHhFChR208V3F
hloiWbIMlDMcf2pQuj7BPWdqAa8KZ2OZYiZ9qEtR4LXylgf+CZrQKSRVKEXcCW5Q9ZZOrhUA
vEV/mGcPpFtAfJw68M+MmyMjnDfejB4jIFBE+cYJIKIctsRf1ib3RyxzFk4WGY1iZRbMMmNH
iBhM8GWPlC10+/VhUV6rzw+7B0DFi/03fKV99g7X9AI7m0t3ah1DyInbp5wmyRlJtvfObn5w
VwvOh+nq81EL5TBRklk9x4ALA/dQoIHsFVxEE7lfnZ24HZPbguVgiBI3M0FabGpGzTeS4F+2
cUlgVOEECrAaymMAwAaqS0wEzaEhRcncJYBb0SuXlJVumyUAfWtynQ0ObRfd2pi7AaIxHFFu
UXGUscTRIrvT7ePjIjrst/efMCHNn748PLVTpdHgiFMaOiFcAY0gACbiaHshSPlouEu5Afsh
FV3A64ORd10I2pZ1+DnaupLecrg6Otg9ZwdkatNEmO4qJT6+z9ylxKLx1AGDxu+h5cU0k5aZ
Z1YBGDZ5fQPu1UEdeUnz5/gL/MJSuX3F+7O3Hzxw7Zh4MyxXSipM6i6dRETfGjwTt+n0MX2G
ZD/9TKcSKbnmRaP4EhPhxE3zlXfp38Geen6si9xE4m+FAHSqeAwBhbGA/ePVIj20//vSPu2+
L55320fnvcpst+LkubSnoP7gM7hCoDjD9h8SBiY+B/kQ2jD6ZxrsTbKC4VAy2Am9omab/0cX
zNKYhPQ/7yKLhMPEwo422AN1k6vN3BtdsI9BhXUlspntnUubOm1C+xFqOOzCzGD9kmePelzf
TBO6nEH3Pvu6t7g/PPzlpplG59bZL6LWFgQRBn3MC2h2P7C4f2y7oYA0TAfJ1MGZZ77JqzgZ
wXYgFCq4n+VH3iztnaN5EjADcVDuBPfR7Nx+6oVXd83pyUko0XfXnJlwgDY9d5t6UsJirkAM
PQ6w1IVmplgEEKeTnl3JqszqpQvzsY8pp0lCSNKge5PvQlyP6VXueC6aEenqb7pRftRGwZ88
nH15MQYSXcOUiaymudQ1v6FBn/kJAe4ktMGsrGWWtVpiPo+UsMAyMMfHnIiIEE05F7kqCkBH
k9S5k25JmSGFSxHwwvG+ySjJRAGx94yFL/zMpt6Cj3J1TsN7mQBYt8+TQ5IBDARaHDwn8/6H
jeBukJPHyNRuaYaFAEaKH8PB2YID6jY+hxaZ38KU6ECD7jRn2ZPkFuLA4WhX9ZJXWUQhkcgy
vsQAycbWzYZlNb86+fvtfQt4p20/n9h/qNJerE046r4xAv2yZ8yi/iWfvAF3hYEdeYhJzWuV
39amuPA1+U4WXKoEwO3pOR0ilnBdeoznPVfqPJzNNiCKF+g0MqFNVB/yC3liKiDHB0d+Aze+
y3tqQu9ie3IGXbCPqfA7B49jYpA7KcaO4qbuKDWcMoAW+Bo7lXbN1tyPUQm1K6wEG0dzj4S/
DMGx0o0Euwg6uLnXH607aniailhgUPvay4KNhe0dCL0o8BizRL7ioeav+W24HspzEYPia2YC
QlYOcWj08jyNIYZKONt+3MZUZ00WxS5hWeXU3VKJox0pEOmBSFsIShMLcD9kmiJ2PPl7d+L+
MxpeUz4KMtRrzcrVrRYxGxv6DYzlsG83nrla969P9MERiXlOswRI2aQ+xc/iDRLR2Ea3gFl0
gLkx6VTzgiek8xiN8VINF/POe7Reb3J34A7h2xdhFeSBm3uNjRHaJF1HRW9e55tnofComzlO
GZ4KDMVvRIXpU68aDhthUm4SE/evW9vD7o+HY7vD4pZf7ttvoIrBjIr1re57qfXbIRrPUu/Y
BFweDxMYurSPcETC7+CJm4xF3Anzh0uAHgrEzxRyG5mj8agBW4llgdUnMVbWeZ4Q/TEWPVWi
aCIsifYnDUvDVD/McaKjfgLVUhWvggxZhumdGAgNMCSf1k2kdWEgYhchB+uLMRlKaxPG8mgj
cQU6MjJ7A4W+AVF551EDqAzcZyXS2750xhOvczS7XWW8vyoIunUDV8c+QXR739lOp52mgYgh
ra4hcufMFhN5PPJYHlgxvopMH0GsUKYSdFB1Ce6kgh2ErXQz+qN8nHuIbiql7HpcrDhut6O5
HRcziQBrV9DZQlZ060E21uz9oImFRJgI9I+rW7+pjYvz8iZe+cD+Gja1jwvgRD7WQvlirhkm
kQ30whLv/nuIQKPu3esftZVZQtqH9q3z0xgeOA82c3TTM54tmTZsUF3wnas7jxwuHv5Bi67U
17EM02rfmQtYINxGW4RwunRyqWM75DWbfGKA7PbIFItuVXXrceEC9oiexyJ1snEyqSGCMBYO
y5Ow3iawBOM1wLqYTwtQtwN2wHQ3jt9RvHF+zrOqJ8Dljc+tgd7kLXVOCG3iPbWahsVGsRxs
LREQZ4D9G6wHugYjQBiollosJ/C7G6Njs97a+qUz52eRdbihrNCwdwirmkq6UBAtEa3XmSlU
AnQbq9tyqJFfxnLzy6ftc3u/+NOC1G+H/eeHLtk4ZkWgWYf6XpuZadb53oa5L/qvjuSXx/wA
QAxRO0SsWNlGPaCpBNM5jk4Cik51Q3ndTqlNYXcGbq0m9yVyizuwJFTHWoDmf6ydLEFfLBrp
ZZBoP0Ly6BjuLpWgV3DCaqrTkykbY8/EJXfBoTWdztMfcq+jELCx4vBtl8bjlBoaSeOTeMky
l2q/zuv1y9PvYIMm7YrqJjiy3B6OD3jUi+r7t9Z92cLSK9P7lfetXCdSj03HifJUOOQxteeN
6CjAJKDA5eQQVcZiQkNLT+ORjqycy4pEE8Dab8vkWBJOwDH0EtKmDbCCtvv2cdTokb2+jXj4
0bVvEaUfg4GpO/QQtw3f6IDDE24ZK8OsCLEtujgdf9VFd8iYTIRf7u1xiwVYJfGRUeXkozlz
mW1nOGB5XVAHra412K8ZpjmmGd6AyucznT/IgZLO6jrcdUIfrS5ErNfk9vu/h4YFTh0wT8bK
EgECSxKFENfL/o8pHKM9/O9293LcfnpszSfJC1PbeSR6FIkizSs3ehp83pQFP9zgC38ZdDq8
gaDz7r7EcC65laZjJYIfaXX8XOjYlT4kVzutnFuSWW/eft0fvi/y7dP2S/s1GFa+mswcE5U5
K2oW4owkU09lqsRL8Ghe4pRkRG8wo81DrA38B5HGkDQdg0+/zVzkmTJdNUvqlozKrDEbh7XH
7i3rVk2/gRpthpOkDyW3bF1jZa0elupdeHIjrAAKgJd4JmdpogvF8c47cDbwzSuCb1ycW2Jk
0A5ehaYKVOsNNookCzQ5wF5lzRnkojCSri5OPlw6e/nDl4c5+uoaYkqNYNcE0XRbQjA9/C4J
4VMRMzDUwZwvc/Y6Z9NMp8+jzhyJWCMI2PYDWYyL/wfxd6WUIYR3F9UEBNwZeCWdD1V72lDh
lVsrFhLWN+1em3uM2SURbClflyWhQ8BZcqXQTFeqxtdyVC38Gifs+pK+qLsP5l7F1BWWm7vB
kq3425jIns6je2wxn06Ga63rsokA56xy5tbCh0Y1YRZzoPK8iRvtEn1fWUdogXjRZ02MnSza
43/2hz/x5XZaycTw0zTq1fE3qAMjNxSc+Y37C0y7k3U3NOwUKtKmn3jAD9xdQd0Y0ipJCDcp
/aYFf4EpWEqPVHvg1hDNu1HqVQrQBrqOGqxgiW8nfa0hmu+JKUJdOSWIdm4rjyBK/10Av2xb
89ugjug89Kpxk5RwM813g0T6SPSOSDh6IErrqrqv0cl3egNWbpQEiKUCI0Ojsii9bkBpklUc
8kwdF+uDQr0UU+FP8nBPRClCIi1riWiD5zXRPctoqrpw3iqG9gGS810+nVxudiD4t1QU4IHk
2qmztPI2lXBJdRKeTSrrCWGcuXYPzmrQODckcR3cazuNTr0o0SiePxPDCRKn2tNUcRki4woD
ZMWuQ2QkwaGBXZbOBUPh8Mfla7Ha0CauI5ps6j13z796s3v59LB740rPk7dahOwPnNolvRqb
y073MbpJQxzzF8O42gIs+6EjGoAmYaH54wZcBs7y8pXDvAwYCzNaLsrLmcU0gibbrJTZ47+c
UlGEo8iGokU1pTSXzveuSC0SQO0GAFe3JfeYw1juYuAazq3FuSg9JTznAX0bWKH92dYRJm70
dCfn7rntxpeXTXY9M3HDXXmFxZMG9iNTR43KLCgUYul41hri32CESWkfK0zaABA2qUHwSPkM
soKmQ1qb9rfE4C20uZX9oUXAANHWsT1M/pqqgCgYH2PT1+aAf8qE89XJwEpZLgDkRUokSx5q
0PXF6k1nLfhNbFEYRBcaO7Xf+3vljR0ZZAIIcci+Tg2k3rXSkTuOFRMcvcIKHO+v8EBq9wXl
TJ+MPi0ZgimI8GRYtZoRIaPfHauGtI+1pJkaJCneBSkTmgcl7KTdpBfSVk4BNlJc1IYUC1Um
0y+VvAl9Zj+e+c1wGkbnbkwG4Hmx23/99PDU3i++7jFPRWAs7drg/fG7HreHL+3xOazC+Mxj
PxiEA/jBxPqWReoeVqAJXPVcTxbxdXvc/fHK3PHvtcLQ1LWugUYExfa1ja9dXgf7aB5KywBj
45hV+Dlxn0jrP/h1iPgVgX06OeuymeVGL46H7dMzlkhikv+43+0fF4/77f3i0/Zx+7TDmGT8
dIbOcGPKryvZVHOgc2gBCMWfi2WwFXreMG+W4flvwtFxVU4Mplnkc585JX9hnOmo1P919mbN
bSNJo+hfYczDuTMR42kS3M8NP4BYyLKwCQUu8gtCLdG2omVJIcnfdJ9ffzOrCkAtWVSf+9Bt
MTNR+5KZlYtdydEFZZFD5ILS0oaUh9RtabbJPBFTerRHPywnducda327S0hOjBT3hNaQ2OKa
Hj++8w8h3w0ra6V9k1/4JpffsCJOTuZyvH15eXy4Ezti9OP8+DLYFrPqf1+4+IazXx5quC1m
n61bQRxsAkPfSN2FIj8lTl6nTGCo95VTokGQss0lgq5SSwob8F0FziUJXzgwh9DTcpgGQLJK
Vk4/OFwYbzUh/7P4v52ShXdKKGbamJKFb0oshBqvhT1Rah489WhfUYO3oEbaOHYX+oA6CHkj
4DdSG2/OhSCR1we5vVURxTZLnJJBztOvmMuTonc4SevQ7sYw4A6/lzYK1uaJzawoRM+z6DMs
IjUJPPXOID8EsmRjj5zCAQI1BPsmIVGNYx1iIAvTSUbDrcZBO/U3CUnCvNT14DpG33oanPnA
CxLucI8azqOQ1Ciqq8bkQTQcb+iWHLKw8PWoTqrshkTGhfGkajaypVF1Ij2l6Ob5CrSECA0j
+DnyDAXpzr912jiKbFUMgjrdiDjJEDCKIha/+Q4xVVCLRAHBXvXIqQfs+6ZJ66g1TA4MzBC5
Re1vb1OHjigT5t3t3R+WbUhXNGGArRdvFaA1DDmsoaX4q0XXQZBposJYyBKl9EJSVyfEdNQC
URo9HznfhZO/Va4dpNL84m+2gKhZXzeycrluBkfEmBKtG8PUDX/BsQmfmrywgAsbC0ObJcAe
ZX3Y6HGcmryNMv3Q6SAYFZRFuYWBzW+8ayIsr0o6qhkiN3WwWFHMUhboCwF/GYFfdfiBOmWJ
84nY92ybw5orytJWotiEeKypi+ADypxks8T3cCNMjPhPA7TdHjxKco0mP5Blx0lkKSgkxK/g
zzLjvQ5+BuRKCDNNY4O2RmFVZYkCa5s+jql2nYK5NoNhpR1B1a40dAyLrDxW+sWhAO4bZoco
dhEJFKpnvXU6DhmSPCkoyVcn25UVXbbJy+iYvNywjJkPqDoep4LW0+lUcu86BWwBhZaou7jG
tpHLRKfdxx/T4N4lWVWq0tiwb6MocGQ/arpXC5skCS7wuSlA9NC2yNQfIngfwxn0BNzSPpIi
wcXq3GUH57LbEnky78gXizjSVnVccIxOWWI8d+3wgXMuFCZqFKz704gRoqMzKvCCRhAbjM4A
LyISnNvvYHpR3sAjNpGnACdEVE9UVklx4EcGQgp9yqlHTZ/WWyiA7RtLU6pnHvVzW3BDR7Hj
pOYVZ1g0TiqFjanPprAsOCreLFVvT3VdN75Si4jr74VoL1omORpotqgghPU2YGvdrLhORZRm
/QnkVFmvkTWGseU3rRm+cXNtv0RmGHJeSQK6PcDo/fz2bnFw+AHw/dukMLuq2DfnSwuhmxho
ox7mGPCMym0QWXG6YCWBwEkTtptI400QsD2av79M1tN110sAjOLz/zzcnUex7a+OxIdI3/oC
cnJAPCNa6FsIUXdjKQsHWu9BtEvbTdSRFYIUfqor49LuYD6Vw4AX1kgg+BjeSR3Wkhrq05Xh
q5O2V/qY86ZOwnywK1Zg1HzU+8x8ejsydAbh9JY+sjw8Ea2u0yumL2b5u82SmDtAVhjZQRRU
OfFry3ld2b8Hy1xj3a8JwaWfWZaaq4ClF4mHFybzmz2nAl9GSbVrreQUHQwfqUEO91bWkaFh
Kn0DFWlk/ICDdMsa3dwRgYVuwawArRncB6G7yIjbjiC+i02dszpkbl9H6cP5EeOJ/vz566nT
uv4TvvnX6F7sAP0VBEtiuV042uJNPOEQEJ96mB3xbTGfTu0hJyhYQKvMkSKvD9nFIiRBSAYV
Fn1q3KGVMKzXGvJTRcyDBCpqc+Sn6bEu5m4H+lP5b81Bz5bzEK7SxN4XLKXYNup1u4OhyoTi
ljD6IBo3Dh3cout4YgQBRlYAHf8ZZstoT7luliBuasTnunMFmmKWxpJPml1Tlpn77iz9NzEW
8JfhPvTdEiqOnzYf0uXfANk/VLoTbgKdWNEAFJawRmCzLjAHfoEE+tji75AU5wSGG9GvFEQL
wGCWg7jLYXhMMrSK/VvEdDwgjaytcqdbbdXk3nLbDcUO4Ajl3Bp5X8IZxKE/4pU1KdblJ+ap
2W9MSBKFudXglpU0AyDmrWZ+XMgZGe15mHd6MUSVeezqOL6rKOsUYy25cQh1dF2FzvEN8NHd
89P76/MjpicYIv4YHUob+D8d2AbRmCDKMcHoEUOKDHPCTxgz+eS0KD6/PXx/Ot6+nkXjxFs3
d6IuYgHx0dwKABA1ulAMoE5D3Q/aHG5Ww1PoUoukg8Lz7zBsD4+IPtstHmx8/VRyvG/vzxih
W6CHOXkjYk5iB6IwTgrdvFaHdt0yR7xD9h33zOeXZTAxC5agodSOx/2wyb23Fb3O+jWYPN2/
PD88vdsrLyli4cJN3nvGh31Rb/99eL/7Qa9q/Qg4KmGwSSK9T5eLGEqIQt1kroryiIX2b2DH
MREC063z4TN5GagGf7q7fb0f/f76cP9d55NuUP0xfCZ+tmVgQ2BjlTsbqNv8SQhsQTQnShzK
ku/YxvA3qOLFMljTepdVMF5TOkThfVOHbZTqI4BdHQKPaCx8WLHY5MsVqG04g4VGSQyKQBgl
duF9p2MbrcJOgcjcnARPyalaMAJLUmyZR9Xfk3l48aGyfY7Op+bZ1mHRF6C4WH6ODWwjS8yU
6YtuXx7u0VVPLkRnAWvjNV+enKGFi4S3JwKO9IsV2Vz4Ak5qT9YSRVSfBNGU3I2eNg9hQh7u
FO9FxS/dS0/mXZJVJPcDo9Tkla4j7iBtrlKA9dJrWMQh+msby7qWFaSszo9hLQN2uHaR6cPr
z//iSY/GS7rBSXoUm9mQhzuQcDqJMZGQxpqKOE1dbVqgpuErEQpCdpgqVEP3frN6jwZKtNuz
bTN1MsfTqJ8zu7u9RiBDbRK+BRjeev3IC+VHzQ6eqVK6kdpUFUg4RlxR37YyKBxRhJa7QISY
EuFNNHFCQx/2GfwIhWLesOSvk63h3CN/m9KYgpkhhjpCPTUhHhl8F9ZymlPT8kKE+BU3q4iU
Qo60Zwf0IaAcQRmEZLSBBm5bXheDGnTHEETWopfU3zglyGqOR1NdRioGCjX8ha5FykUWIctN
++X29c10Xm4wisRSOFub7QWE5qpOVog0Zdp/q0FhxEVE2gsoaSAgXBWFY+SnibcAEclHxP3T
XdxdMoxlUxaZYXXp9l0MyR7+BN5OGKqKtCoNWkI+SgE8u/3LGaRNdgV7w+qL5dKZNobaxv7V
1kd9hBnCSDVbrEoanrF5GtNaEJ63dCliboxgGAjpferRXVYozrs1Uof5b3WZ/5Y+3r4BD/Xj
4cW9v8SaSJm9TL4kcRKJve5pB8bq7M4Cc4GlTLxNlCLOgG+J4bbehMVVe2Rxs2snZpcsbHAR
OzOxWD+bELCAail6r2VwQ3iaKTqTx0b2rg4Ot1voQs3QtGI9h7kFKC1AuOFJYbDzF2ZOyjm3
Ly9aXFj00pZUt3eYusOa3hLPr1PnFWovn90NN05nDejYoeu4LrDcyowrp5NkiZbKWkfg9InZ
+xyYc9IRlCm5NXQSVDwLu20/ZcQ882oLCQOsDYFPvgFGxjk5xVJpD5j/grprRREgztWhEQLw
o5mSaQ7Pj98+oYxzK4ztoSh1d1BqAFFRHs3nFHeOSJ7VpgZFjhoAfZuxie1FimF3mrLB+IEY
JEh32lZYuOm5il01CVZ6ceIEDXJ7z3RhibtI8lLH8PD2x6fy6VOEQ+JTC+LXcRltNVOsDUbH
RYGmzbWooQO0+Twb5uDj4ZUKdOBW7YGGU7XwxbSWm/vYugSdNhgLFCVmFa7T/yX/DUDWzEc/
paOxZ4LlB1ShHxelD9t+w8xZAEB7zESQOL4rs9ieWkGwSTbqATMY2ziMiOCcF4jYZvuEqs2O
kQDg3Q2w0oYiNm40XrA0nn6AG9kXrPHEBwQsLKimMSKsAVB6spOoq3LzxQCopAsGTAUAMWAG
H1qmrYo2HJvBniUCn4QMmIwucmNWLKIGdLZvu6ROdPFJhsrCpDx9ghu4651UURJEGRHIgEXa
plERjIq9yKxw5WL0iJ9RLC+q4alUEaEGi3M8Nlg1DU4ncnN8pY+broy9MWQdNCvLioaK+BEy
m+vKxkt7O/Wt09q43tDbtx+ND/D8itIg99jTym2xcZpqQNWDIfWvjhsO2uFJEqcAzQOi+EBm
S0RNFIpvSaOpnuRjKz3BMBgEkAsNhTwED3niankR6oTP7gfwQMZME99ID9KwMYxCBGZ3zMmg
JQKZhptauv2bH6WU4l1gpAeY84FyDMOws3DkURntdDJ7Dem4j6pGtyn94jcGUjJtD293hHSZ
FLysMRIzn2aHcaBbA8TzYH5q46o0OqaB7YfI7jTd5/mNOq4G2WSTH8jAB9UuLBqdJ21YmltR
YAVoeTrpFrQRX08DPhtrMBC9s5Lva8yUVh+Ylc94B6J8RifPDauYr1fjICQNixjPgvV4rJti
C0ighWfrxrEBzNwM8N+hNrvJckm/bHckoh3rMWUqscujxXRuSBExnyxWtKKO0+efrkm3gt3L
V5iWx6keUxcjNrUgCGsqxOpQYW417aQO1KUgg1IlIJfllJOfxMCpEVAWwAqL8eAj7ZpS4Dw8
LVbLud57hVlPo9OCHANFAHx+u1rvqoRTw6qIkmQyHs/0DWT1o+/sZjkZW6tTwqzXRQ3Ywvbf
51Ig7YapOf95+zZiT2/vr79+ikysbz9uX4E9HPwnHzHRzz3s2ocX/FNLXo/Sn97W/x+FUfvf
VImFaP0copxV9elB2NP7+XEEzApwgK/nx9t3qIOY6UNZeTVTl4rQ1HrHa1PNB7/79McqeHGd
RHj73Hzu1TxJtNPUd9Eps/MtnTThuHTxpUEg1n6YRZgNW3+o7feED7zn2pvyLgRpE+Q6jXKP
ln6GlKYfzcOHGFQ11j20xA+Vh+58+3aGkQV55flOTLpQNP32cH/G//7z+vYuhD30efzt4enb
8+j5aQQFSDZduwAA1p5SuMQxWJpRlwr/zU0gXPqVoa/p41YCkgOWOkABtTVS70pIe4m8r8mt
x7yae1Yrya4YdafrXxL8hwBjxOFNidFtcW05ITEFFbTHHiFMF96FjDc6J/SqqRsnHacABXAA
dMv+t99/ff/28Kc+KT2v6yb8HpojVNFp2i+JiOmlE8/F2reWfYGE4HqGbduK1BYXmdIyTTdl
WF/iTInX/v5rOAoX5Oue1TsnyqZwSkiiRSA4RqfgMGOT+Wl6selhHi9nJ+oq6Bn6PF7MTm7F
Tc3SLCEr3lXNdEGZZXYEX+DAq3WriH6GGSOqYs1qsgxIeDCZeuBEOQVfLWeTOVFtHAVjGEWM
S0wKWR2+SChznF78OByviL3CGcvDLcmt82wVRJMx5TI1kETrcbJYUDOQA9tFFXtgIZR7ujiv
TbRaRGOdXzSXW7eRMMxvp6Fx9pCIAQxHpd6IOmSxyLtGMY/cMAkXnxsBYQVEnRZGC1TVo/e/
Xs6jf8LV/ce/R++3L+d/j6L4E7Am/9Jv3H7sPPnPdrVE0wHz+q/pXd9/TRqkdkg9/L3oVM+N
W/BIWAIYcaoFfEjXN7CxCOdoZy2yczinqRiopmNy3qxp4hWT0+IUmUbufJkUTPz/0qTCZcc9
xSMmYxv4x/ttXWnfdopCqzdWqVl5FLlzfWXGO6ch8a6tYzKYUYcGoYgf7fW5a5M8ogoLs31I
cnXUntHUBFoFqDSwbK1CYapi8RoINO5kEzVkUtULrnI3YEekmSP99+H9B2CfPsG9OXoCjul/
zqMHYEhfv93eGUnmRGnhjtTg9zj9eh5ESUREycHjBInY67JmVGZdUTAD2WoCF5w1ZKEwogl3
+o0oEJxlwcwcG40pwH7e2QNw9+vt/fnnSCR5pToPhz9I+WQKWFHlNW/06ZDNOFmN2OT6kYqM
HtkWQTbsWzGJxpUoSs8PFsA0bpRzD2ci42R8PzVOzieckRtUoA5Hh3yf0aaeAgk3kK+sAwNR
mw+8+98dDLExgKextgpwMDakbnTNpYQ1MIxmrioJrlaLJXVNCrTN+0jgTaWU0WZZSepJ+Cyw
Lk/k4v0NQewpKKyWCOiUBJq3qkDY3NIAtHs4sGdmG/OwhgOXTJ8tVmHSOOmDBZwVX8IpZSAn
0T1XZn4GvBiuff+QIeNs7UuTQLJt/lHFnW1xfAKO7lr8hsycJ9BGYnuxPfTbXkLwLaLGcHXc
xrBssRo7QHc9KSNEXysG/luHHpg97UdWbMpiMFVh5afnp8e/7C1n7TOx8seWeb9YA+Z5pM3g
2J1BmKALsyOeeL1zQ1wmstC0x/nLrr/amUINe7tvt4+Pv9/e/TH6bfR4/n5795drioGlUCba
CJdaOer9lpCndVgeC7MtmSVJLxYQaAgUkm/ZsWCpx0YxCJm4EJdoNl9YFfWvAHRd4gFMD1TS
+awM/LGAeO1AFVpxu0O0NPt7mWGuTraMN7Uv02Ovzci7VGLuCMfGIomJDIgDarNPTRPbjlwl
uFBp2kUaBdplHQthJTo6cF2CjYX7B+zjRqRVNLg8wO2Bya9ZpZtXAbTLQKO3hhdhxXclLZoA
vtkxYexzYBjl2ttGy9Oog7Q8N8z32mMN17EzxYBINtQBGAtbA7NcZVM6QHJmcqgAwjhFRAJn
wOAitarGlJq+7l9avWIu5bOuMb97j6AX507UdG3GhBmg0dQ0C6+SGwMEh7wV+KAHin/Sm7Yu
ywbDRbZWfF7iizQhH5ByZZJvVYNjKqbPM1FEVh0cXJXHpi9JvZihEp+2lN1za29K1V2SJKPJ
dD0b/TN9eD0f4b9/uQqClNXJkZlPlR2sLWmJosfzTaVpfXqwETxjgJbcsEu82D7tQAwjGKcS
MxsL41uvEz7p1NyhD7k7Pk8vv969ihPLfVf8tBx9JSxN0aAhsxhOiUPXdzoCq8TLxBpXhoGI
xOQhnEYnhentNR9vYeh6GejNai0alPPEsGEw4ehBqUcrt7A8qpOkaE+fJ+Ngdpnm5vNysbJ7
+6W8udTZ5EA0LTnIu0ebEZ9dk/wA9rdQ5Q4FdRCQAav5fGV4CVg42j1kIGquNpSOuCe4bibj
+ZioGhFLGhFMFmOySbGKGlEvVvPL7cquPmiX6VVugMUaNM+THt9E4WI2ofTAOslqNlkRhcsV
Spab5atpQIU9MiimU7LU03I6X1MYPa/BAK3qSTAhEEVybIwMuB0CY33gUUqVtgVhI2Vw1EgL
c7JzvCmP4TGkuMuBZl9cbaglyq651JW45Zaw1+kgmcNk5AEIHfto50vV0FOePlrJUVhNJuar
hLbTvXsYtjgGmNdMZTpIC3yZEXF4QExjChobLzo9PCo3NSVz9ATbNKCqh3u08oBb0wtkwO0x
n3vu4eR6MpGyI4woLqSn4SyGS64w3Gx6ZJPr8uhQbqcTpBHqWZZoj0QHU9qUoqc7hnXNSlrj
0RPhu0eWhRRnP3QOWcKyplsjkJhq6XI9HONLeV7phoE6shh+XCb6ukuKna3WdVYXn48n1Itd
T4GX1d6zME5VSL9L9BTVqaa9EXqKlLNwQQXTkBtJRPs0kzAJCM56CyMakRkcdBpWNcmVp4Bt
E1HRbDSKXVgcQ/PxQsNeYTRSsn8aUQVCNt+T0f8kEUgTLMxgHUZlPnNPGnGSSX6CrEqdR4zT
I13nbObwxIKN2N2+3gvnMPZbObIfWqBN2lVJGI1aFOJny1bjWWAD4f+2ealEVBGrOKVOk+iM
bQBtl9YFsjWAysrpVPHWKtEiVNYvl6oFXC6DLZhf1lFLNCesqEZKjkKH763x2oZ5Yo9KB2sL
DkwY0cCeIJu5JbVJvp+MryYEJs1X44kuU1BTP1jyEPy+fEf4cft6e4fhgh17w0YXzg7a4ME/
vMwSmTtN5q/jOmVHQMFaniWJnuv4SFIPYExIGBtJ6TCh1XrVVs2NVqtUe3mByp42mGs2s5lw
TEadF/pkug+W59eH20dX+aa2tjAbj0xFtEKtgrmr3iuenz4JxJssVzwYEwZZqgyWn/oqPMs6
lMFtMqbHR7YQ7uDaBEUt/uaDaZaiMA3nNKC3TBbptqEK+IXnxBBxljLSi1ThrxPqoygqTlQ8
yx4/WTC+PJ3otvdoP8aO5KPw6oT50oRbO5yQh/QjMnW4wdn2YYE1+SYskXUVOJ0B2DCp08Ap
MOVZm1UfVSuoWIFafE8EpX5FFMkJk71j6KoItlJNLBqbRFtCdsU5iNhfJ1NLLOz9c4w96Xws
IxcUMW3vVMEVl1RhVbe7Q7u5aZJoZ0aQEwTCHUSqXROko4a/F5aMM1KHqnKIfhbtltOvA0X5
tcwppZNww2hMVZ5wW/YHkpVobkZYOkRKkaQXhFDVTLJViMdE0kQliKqbkJtV7OPNlphYkWPb
tjTtTnzpiHCpGWyTtxsyRmTnLlZWbRVaqalyhuxenCW1BRXxVExNuISjwXTbqVeH2gcc6so9
gYYFldTFXcx2KOg4cyrgcCz6yIdAQTr0iMkFYjNy+kBeprRzJFBs/k474RaGKz7WT/UeJCJ6
APtjuOcM2E04mxrhuwdUFfKEXOYDiRsFUPsc1xOpVtZo7MEaUFHU1Do3gYGT1cWlbDPFy9+d
ny/CpyGhvzJtW9HqA8OtzsZk0KUBPdN9EaI6mJ10Ns5bv6ZeTzAXMa2uTw5XFq47Qw6Wr6fI
EuiPB3FQnGw3gCAxRbsEJVWc9wHRRPBfRa+QyqhQUJJmHAqDty/GHte3sI6C64gVia7Z0rHF
/lA2NpIoDb1bjAYjECGtSEjiFs6b6fRrpVvu2BjTGh/u9uzG8FnsIF3kOBus3Bi7CE3u1PdT
Jse13mPwrkrLzmdgMChCH/hEapeDiFDz643GERTqMZVfUQPbrt0CtgNSQ6UNQJkOVHow/Xp8
f3h5PP8JvcDKhdculU0KZ7zeSOEKCs2ypPAkYFY1CNIPCOD/1DGq8FkTzabjhdN2mJ1wPZ9N
fIg/CQQr4DgxLcoVqk48d0QQycyp3ccX+5Jnp6jKaKfhi2Ost1QFpEFJx+wCz41lKiYj25ab
If4iltsLlhipZJhDdVqOoBCA/3h+e/8gKp0snk3mU8qkuMcupnaLhKW4Bczj5XzhwFaTycSe
DAZysneMQQIk02oBCm1JZmYNhVA/BhbwwDC7w1bfjmJwGUj867kDXEzHDmy9ONnNpo3UFAZO
KmNr//X2fv45+h0jyajoAf/8CRPy+Nfo/PP38/39+X70m6L6BHIo+h38yzgI2gjPIfWWYq1V
zraFCL900bTFpiVfT5HIfLDpINK0Q4VENuPeIMlVklvbQN8oZvxlBJXimcPbUJcFMdFR+HFn
Ocsb8kkckVK+6+Yo+RNO8ycQXAD1m9wvt/e3L+9UnDsxjqzE3BJ7+4COs8JafHW5KZt0//Vr
W3KWmrgmLDlwsrk9Ng0rbjzRjuXyQpd79c4oml++/5BHjGq7ts7MdqOYYLYhVVxup4fyHSfG
fshC3SO+BykHQGtIhKBmOxwPGDzPPB1VpjV7brfQfYhnU08Anoq0OgYGXOOHuPnDuGal0pYz
y9ptAD8+oJOgFvgWrfLh8jXFVtd5qWoq+Pj57g/q1gVkO5mvVmgeY6Zolcv1CdNhjqrdTcY2
I3x392a3fX8eoWMbLBBY0fci1BIsc1Hx23/0SJpue3rxrb9DFaCLFKYQGIh4r4cyAriReFyj
xysz3cNnpkoSS4K/6CokQuOgcVUQd7PZ3DaPqmDKxyuTjbKxLgZE8q2pEOgxp8l87DEp7Uia
PCUtRhW+vlqN526dZZRkpmd4h4H53xXhlrTt6/uCnGTolhrx2TJbEdUJxFq75fCANxJdKYAI
EYL2UiqGyHwSdBRlal0U3Sesvo52jIht5+ULxfXiJMDQkYMtpWReZZSUn7cvL3BxinKd4058
h95pViA6GWtIKAEtoBP8VUDjo0y/Y7Y2bfCf8YR2QdfbfPmekpS1PTQ6dpcdY6f+rNyy6EBq
vhCdb1YLvjw5n+VJ8XUSLH2f8TAP53EA66Tc7K1xkAphp0TOSmq9d1Mamfp3AXZjFBtTg1ak
ylqt46P9091zWAJ6/vMFDkN3GQzGNwTUDq6gcAUdG19OGMY5pl9h5TCjoYgn8P5AEHjHQIgz
U3f6FBxbfPHTpbW1AZqu5sR6aCoWBSt7FWs3rTWscvel8eXh3sTL8TxYObUBfLIKyDc2sdPC
9dgMyjCAKYFEYg2OS4AkK+pumWq6ntH+rAq/AomFtnZSk4bHrK8hTcUX82BiLzIBXk/cbu2j
zWRGKqIE+pivphND70QMe++rfHk6mpX+pKIWBGtF9NnJglhlLJFIMriEoKnjaBpMLL2Y0w5p
GwiM7MX2GfxsXxzxmbl7t1uQ4EPDe0pOE3BMe+0B82gInMcJKrEdjmry6b8PiuPNb0EK0xsJ
n6gsRmhWVp70ovv8RjyY6ReqiVkFNGZyzK22KZTnPhgI+NZg24nm693ij7dGnAIoRzLszS6p
7SZIDKeVlD0eu6VzMiZi5UWIKKB21F2DZkLvUbMcyi7QoAimdBNW3kZPxz7ExIeYejsxnbYR
+S5oUnnGCbhMX8nLFXVkmBSe9q6S8cyHmSyJ5aSWjcaUinwW4YF0bhI4jKNm8rED2LeqbRL8
swlrbzFZEwXrOW1wotOpYj6o0WVSXCz5WKOo60SEuDUjfqjPTNzwjIivAzrS20S+r6rsxm2c
hFO5YikyJz7XQBaHkpRoAfAoq3Uwl3hjOYqrqcVNvKce+xW++05BRYhqpyyUlNFjBnmx8YJW
A27CBo68mzY6BuMJfT93JLj8FzTfpZOQe8ggMO4MA0Ovu46Eb2idVtdPTvrFdH5DgB0GrCty
cx0sT1aMDhPlCR1mU+3ia7d0l+nSMJP5pYGCBTJZyscy52OFuzxYggi4COoxTo0X4xWWM7S7
Q4jVOZ5SawkZOVPGcUi8ouhQvJiRCy3LmuliPqHqx27N5ktKyupIpA9fqWgXuqJcK2W5XKyn
LgbmczaZnzwInQvREcF8SSOW0zmJmPvqmK+oOni+mc6IKhRfvHSX3jbcbxN5mutvOj1aGWu4
mLqZj6fEwNTNejafU1Oyj/hkPKbMD/t+uTLLgFqv13OKFRYHq6Y7xJ/AzsY2SOlApVZEGpvJ
eAnEI0wfvi5eziZUpQaBxkAM8Hwy1t0OTIQxPiaKdjA3adYXWwQUU0/Nk+WSRKyDGRH6L4yb
5WniQcz8CLJyQCwCutuAWlJnnEkxJ0rl0yXVCh4tF8GErOyEEXcx9GkBUgT9qjgUUyVk0tye
oDlVRF8j+F/I6jaS708WVhgTNImeebxH8UVABlrEuIhkeKmeQFwgMFAR+bkjvDskbH7Vhjlt
0d3RpMv5dDn3hJhRNFtO2+FJbB5NpsvVVLXT/jSbT1a2GWSPCsYec7CeBngO2uZfo/AZSCsC
+cJGW5JKkh3bLSZTYs2xTR4mZOMBUyW0wlonkbY4F6r+EpkG5hIK39WTgArcKbzRtwmB6LTZ
VGvlTXB5sUiapTftpEG3vhwgFM0MJnOa59RpggmlfTIoAmJ4BGJGHB0CsaCGTSDIwwP5hMV4
cakhgmSydosViAVxUyBiTZzKAJ9OltRSw9ChC+puEYgpXfliMSNPX4GaX54jQbOmWCmzsWvy
8MqjajoOLs9wEy3Iu70vIynSYLLJo/62dxdJvqAcCgf0ckpMdr4kr2KAX+ouoImZzPIVOQDo
ynixsJWnDSuafx4IPtpbOZnTTEOTQwJi/XTmQcyIZScRxB4rmkgqt5gVX6nDRw1IgeSyLKoo
X5LB7/qDD7Xpa2OfVrnPcrb/6Jh/cMDzXTMhugJgascBePonCY4oatvWpUMkcDHOTDlKQwXA
z11oMVAsUCgn6st5NFvmkzVxMPKm4cs5+VEOBwLFwUWTYBWvJiuqmWHMl/SrQk8BzVxRY8iK
MBivyZsTMBfXABBMA6rMJlrOqBKbXR59cNg1eTUhhRSDgNg4Ak4ODmBm40vsGxLQ/Cpg5h5d
bEdyYOFitSBjdXUUzSqgJILjarpcTrc0YjWJacTaiwhiqgsCdbkLguTStQoE2XI1NyIsGqhF
QXWje75RcHEWhYYdogJ1eZbJVnY0Itsj+m6SxrmKKMkTkFcL9KdS6koZ0KTN+eexW6Yvan+H
L1On+SJgiEgGieFoONWbLgfGtsQImUnVHq04che/SFF4ESnhLjRM/0Dk8+vCwjhF/+0ijda6
3Ub0Jiy24n802miIwmMmPWLiEZzWyXWHI0cnTg4f0gwTv898IZA6GmUEMXzLMBn4xeI71wVq
c6CLbck521guQqTR2ibC+MMDuQY2f8ncxjLrslu4QUErFnsK6JufQiVKpC0gdYptHkZtlBdW
KzusYf4iMYkWMUSY/3779XQnstY5WaDUd3kaO9ZxCAujZgXSEC1XCgI+XU5o3rZDB55HkpxF
0vohoHQf4uuwCVbLMd0yNNlv0fEsKmnBeKDaZZEnNR7SwJjN12NP2hlBEK/ny0l+pFOGi2pO
VTD2acCRwDaOGmC2L6GYCbSM8jwy9HjSPLrH6gZXPdCUTwbwhQlC1cmUtCXrsPPArEmpYgx7
tx4+txuA0AXFbfTIqVPMRA8wI2CG+QVCtmGTiMiFqJCxhj2aTE+6KYIGdFudV8EiWNut3jGQ
JidiDCiFbCNMh1lkMLQIheJ9JjtZBWjSyhwxRnRGbIEbJgWhX8LiKxwVZUw+cSKFa5aC0NWq
AtnNtw0l1pk6AV6QqU3k8pYPEPZn8kkhoJnQgYB89BnQq4W9mfqHCrewlcfiRhGs1mNK2O2x
gdN1ASYVAgN2ZTWwWUwXzv5DqL+cTug3SzIsVTR4nTR7u3wQEuewhSjxSZn+WE7QoqDerEYH
ds8dRvl1NG/mpHQvsFcrUyAQwGLeLCaUpIRYnkTkcc/ZbLk4OdEsdIp8rsuAPci6IQX86mYF
a1M7M8LNaT52L5pwM50osHcBcRBRvG1ynvUR2mAO0Ol0fmobHoWx786QpmL2x/iuuPKNHpSc
5e4iCLOcDFyOr2KTsf7AJt7JxvrLhoQsnaNGwlf0a81AsPZtY+1Fzh4c7CJ552j4+cK64DTL
N7cZq4X/dle2cRfbKU3nCKh7YQAGTlLTqbU5ZrPx9MI6AoLFeOYSaOUes0mwnJJ7I8un86n/
hGui6Xy1vjAA1/npwjweTivS8FHUTGnSBUNUs69lEXo15KJH+Yo2PVTIqX0EKZMOgmFCzHz8
UW3rNaViFWdSuculYajNGHQY9SxLfmNjeIOMwcQ5wmyrfLN9Ubyeziy87sLn4+G7mutkiwKY
6RTVA70BZQeKlJ0SmO4ya4xXk4EA3a33MlAD3xvevQNNHyD1IhWwDtuV6cw2IFHmWJGPDBpN
PJ+uV57vpdRw8XtnRg2UmlKibLVGLpbtGrNYuMtds5leAxPoR7OFmVCYNCzm07nJd1vYFWmI
NBCZ9+cAZzxbT3VDRgO1CJaTkK4VzqsFeb5rJNrB4iLhYlySvRUYz9ALg5wPasWLhezQcOVQ
JcsTltzaJtViSZmMDjQUz2xi56sPS1gtZmtvAavF4vJsDxwvjfKtbIFc0reQRbVefUwlWPy/
RbamuE+LSD6yeHDBgsQpidBkj038ckXuU0St1nSNUTUBrojGVfPZhG5LtVrpET9NzOJEY66X
64A8LVDoMB2gBxx6bsxI2UujSfdfMbsiVXZ1gONk4Uet/Kg1jTrmFPg6KnPLg9JCYgC+w8ZM
uz6QCNHkYi/xfvd8K0Shix/zIK/CMXlGIYrThzWf56vlYkmiBpGFaBHPtnM7WwBFJhmTj6ig
pjH5nmLQrIIZufAEalnQDQXueD5ZeOJyGmRCMLnYBiQKpvRak8JHQG5PTaKhcZMpuT9dG0IH
RzIUlPONgRXywsWuHkzX1wFhs8nWHsjCDdsYfoN15BMyokHy7tjSBCMWIBxNuI04L4J4t5zq
Jici4uU+48kK0XqliKlDVvBdGJdHxNJssKhP1aVTyMQXr7cvPx7u3ihP5XBLmYAftphIR/Mn
VQA89zEQA8fE2cNbR+0GQA8BNgT26flxHSzg6evtz/Po91/fvp1fVXRuTbmebjAXCZojDU0B
WFE2LL3RQfqYpazORYgEGBTKBg8KiHUrMqwE/ktZltUyM4eJiMrqBooLHYRI7LfJmPkJv+F0
WYggy0IEXVYKq4ptC8xTzMxIaoDclM1OYehebtiW/hKqabLk4reiF6XuFY7DlqRJXYOoo7O1
SAzLw3A/TnGloDY1MQtAn4MMI6KapECnYqiY5A3LxJg0Mjylu2B+dKEOnGcZnCJW13uzwCoP
7N8wV2nZYqTKsiic6b/ZJHUwHo+tAezhuJLoAdSfX+FnyFkGg20Wz3LemBAYSNOjD2D7Q8Kp
OwUrceON43RM4k5Rr5cj46iQ5wdga3bwVMKWuoWvmFrlRqd/L4FtjmGvC7anH5Y0OgxlfL33
JJ3oyWjvmAFPvxthd8LYCGTVg2wlyIDoF+elEu3U1ji1zc1EF4h7kGe5h82N/buNHJLe/zyL
Yqu9AkvrQxSW7IpOxCkmDOHhwUpW2gP9Y63wmMk5sz8lw5HhYkxKOPGYeQxf3dTmwTKNU3ud
IUhWRRcs8O4cH8oyLkuagUN0s1oEtAiG51DN4qTwrIuwvrLOlKl5hsCdZ19gCgY3Z5i3ycGy
L9CR0Z43nldaHF5U0/uRPNqT0SzwUIkz8yja5LCmGhBgzL1e8an9uzfg4Oxr0uaf1xradfrA
wZXaL/MMSWD/FmVujgvGPQicg0tBhWHB1nfedkQZy+3126F8Sk7sVp2IbEDwt2eNs7zKnI3B
4aAlX8DE8C8V56p4H5LVEXfa5vbuj8eH7z/eR/9rBNvdmzcGcG2UhZyr2JLD2CGGSJDdHQOe
rwa8ISsOYMq7rMMpdQdtptFTCWb6mJHOEAOV5i3v4MIYJXXakc2g0f05NJTUaVIooU0bh17U
msRUq7n+7jNg3LexAUe92QxYrzubVu1hHoyXGR3UYiDbxCD90ba/2pDU0SkqyIRrQ32J4c3/
wQrVxAQ0devTe0bPT2/Pj8CePby9PN52ifYoOQQFjMiNTttJGPs8v3HDYhtg+Dfb5wX/vBrT
+Lo88s/BXNvBcMDCbZ4CU0tHxu3iRV7uhWaJUG5LsgRHAutayMt9odtEWj/sWKAIqqLcBOyO
sR7wHUE8uXY2O8Lr8JizmJnAL6Gec6WDqBQJMgblYCAG2JJztFijzMpk86hWxzdFiHYvcLOV
OpePOBQqMXqrFU0b+yElWszT2YZ0KDCsss8YrgG7fMmITLndhwHLioa23RSt9jz9iCJkKAdn
4PcYhMgFy8XognE+WivbnI7zfQEzYI1itZ+NJyIsuYkoq2zaGuKZDsUiTUwYrZewH2JTEyGG
w02SprcNReXc8KiUC4LZ5YTxZLUiPRERmfGZJXEJsMjh6/tGIIUgaW2OcL9aTdzCAEraznVI
w3kGYcfALmPTrMjksoiLwvFED4AqYDkzEqqKSTjdAJuvJsfcZALjK57PAtPFXUEXHls8gW5O
qW8HxWGdhYHV560wr7drycIbJL1Y0Mz+SBRFeun0JTrfwEIiLdMRxUKbOol25dS3VTHBxba0
P5FQ0t5rQMdfzEHpPjpR4PjLyWlXwSfTpcdvoMeTFv6A7XKQ6Kd9zHsv5Pj56f95H317fv1+
fsdIgbf398BfPjy+f3p4Gn17eP2JupE3JBjhZ+ri0gJtq/JyZ2iiZLIM6IxhsrtNkq1O/m51
BFQMGsRflfV2EkycTZWVmW/Ss9NitpglzlGes5M31QKgizyYUw9/8mg67ayTumaYV9q+NvNE
V2wr0HpBgOZOlw4sXHl8UQYsdXQJsankzro9nAKPYTBib/LUMoyWsS7jT+Gv+4dne/JDe3WF
g+LBSEjZYcXM2k1ChGBDPL1EfJ1IAFUkchqbxOZiTJwMwzJxK67Qzr2V8bgv1C9uNAxflMnc
ViS6TzTn1CLxnG1z4G893t8GKR1f2KTZxTnzNcVWX1pYlfLD31S8g0jbLJds6ixaG9/i8fFh
UeIZ4tLgTce0r6a58tw+q3A4ItyRVD7oHjHG0hRjinnWMRMzb2C+Le1Jl82p2xBuX+qEaAEu
nKyMhNLj82JmHv5YL4xQ269wo21V5XF2BpwVJtjAddltvQRuEnWTey4pXYlg7+TrrjwZWOxq
GnZGEAwWDwFyYESLbbMzsDK9mPq9d761on/yl/MdJpnBih29PdKHM8wco4+igEY1GXVe4KpK
lwsFaI8zZnUiya70HOIIi3ZJXd/YlUU7Br/obIECLwM1eJoTlXvDAAdheRjBAnIqAvEkZlfJ
De18KgoTu8pX0w0sTDM7MIJhRrZlUTMy2yYSJDlv09RsYZIlRn4pAftq5LyWs5lvWB3bVW7T
mrrsBSora1bqZxlCoWCRpc8u6OrG1+gjHN1lZZZyYMmRl4V+aIgqb2RSeRPKMESsBWoSuwFf
QjpLKOKaIytkTiOjJwUGHW7s6rLIiZclwAntxyBxRXmgOFKBLLdM7QwCij8qbXR6uD7PCKz3
+SZLqjAOHNR2PRtLoK7TYMddkmS4YLztFrp8J72rRZKhytfTtzy8SbOQO6uhTuRa9n3GohpY
pLSxNluJSXfslSuyx3drToMXDTMBZW2wCGKfwl0LJwWsZO1w04DObqqSJsxuipMFxfRcUUwC
5TM2ASeekXS0tzyTgROYLMTgNbBdbETN8tBqKxxwzjDwMOd73YdSADHYTSYzYRmTxxvr9jVx
sKZEpiGrtH1RZXvnSKs96QTEbsc8nyH3npI8BwnhS3mjyu2uSA3qTF/DDqUFKSueJM651+xg
69MPNBKNGWOkqshLtMcbFJ9WfAcfY3nZWCfXiRW51cSvSV3aY9fBLu3erzcx3K6eGINiAIVb
dLvb08yKuG+zipOMFnXd94FlTebDMHvZkcYbcn07kWb1coa8KnThImMLo1O+OJ/17KJegdbK
chcxzdDCClbeUxgWFyY++bAEx4ZoT6jaEAYbHt8qtyZ0n1Wstcz5ZAlF4YvpKbIAY/7aXcjb
nX7AWJmjhekS6YgriiiKcl9ECWZMVwrpnu/MH97uzo+Pt0/n519vYhKfX9BKX2MGsYjusRGN
Qxi3BsGnVRbj3mzthgJIMFz7qMmgLHItd3Qx48JTPjnBzi3Q335PPQ125CnPnbngYjJE/Dq+
cWcQ0wXxPRyeQtGchTefAx0tZ3fYKZj/Jxry/8Ru6DkxqYvlaTzGKfM09oTLzZ5RCY032yis
CAQ+vALbn/CQU1jn3bFf1k49Alpj3FQYzrZpCGzT4GrhwJfH9vwJfMpp6VuvVCSaLKlwrybV
0HJz/k/7YDLeVReGEQNbThYnt4cprAb42EWUw4CYlZltBiHFt8wsQl3iIfA+JDlbKdE4AfOH
qBUnU7aaTC6MUr0KF4s5yJvOaGBTVAAB89QHuAg1a8fV7TeCfDkfRY+3b0SWHJni3OqdeOUx
GXEEH2OKOUFMk/fSagEX7/8eic42JbCiyej+/AKXwtvo+WnEI85Gv/96H22yK5F/k8ejn7d/
dQlmbh/fnke/n0dP5/P9+f7/HWEmF72k3fnxRWhnfz6/nkcPT9+ezY4oOrvdCux9ndJpBn2X
ZkErQOL8qXwj0NcRNmEaOkd+h06B8/JFEdDpGI8D0mNNJ4K/Q+tE6FA8juvx2o/TfU903Jd9
XvFd6Sk1zMJ97CzBDlsWiRAWPmj1VVi7y7hDKvm8hVGMfNdHRwsHbLvfLALdR1/c3yHXLwL2
8/b7w9N3N22muDTiaDW2vhcyksHJA5RVjkOkhB7USUA3FggwPodd1GGvG9RKWGcoZ15PccFp
MyvRUnECxDWtLhMX/jHyfw5IKh6CqHfHgGvU7W51aGs3f8A4vR1QuX3l9xiWnzwYR8NpYJtk
W1tNFAGUF2MS6J6qPQJjqNRWXmSdYBvG20SSeIezo43Rc9Gm7JejSLNOxMEVK1skJiY/M7k/
z/dJzsgIFwoXLOzuhfG+IZWEsjUHnjgrMku2ZWOHUDcpvNdbt7ujm2WkOx5KnJOcQQxq7NeS
iIu4wcf9jDTLFj1ETSfwphXyi32FAtrmKRMJn2TgY+vIY8Bqbg5b96TqEHZeDX0ErGXW1CEw
9Qe2qc38HaKD5TGsa2aD8U63mT0M0C/u+pSdmn2d2GsZVR7p0YTeAJ21uZKvYuBOgd01ZDHh
32A+OdFyqyDiID/AH9M5GSpPJ5kt9EjmYmAwSzHMBMbJdjoI01ByqT41F2njukvglqh+/PX2
cAeScnb7F5W4UHAyO6O4oqwkHx4ljAoAiziZo8XIQ9qEu0OpJDkbJM+OzU3/0OIcMNPxxBa/
PU03miFOHHss1Dl0mcvUidC1gsxN7RJasopC4ki04sUiILDdXVzs81ZahvHPmk3SXh1plLnY
MI/n14eXH+dXGI5BXrOPtk5M2HvCK4k21TaaYK0tTvcUBktrf+QHdb+Zdy1Ap7QiWhwLRYVf
CXHB0wIM9rh2Nt0mji60GliqIFg6HylwG+f0a5Y2Q97sY4IDEAZ/nRyjL1ByTsytvME8zCVn
jXUQpa5AkbZw6mcbE9gtDhua4EVgA4HxtNU8Kfl92pYb+8RL28JtUeKCqh3ysA5h4vZmv+Eu
YV3ARWMDczQkHgQTA2dvuRR4Vz2aaQ8LnFINSzcJM94RVYd6QU4/Z8WfKaXfEnCCDaGonEnu
MWoC6MJhJrxLtidKIp+cpZMM00CXIubjw3ISh+focXI9fNxcfY4/qi+FfdBy/+Djqvi4DLVO
fEUgGjm1MLr5W2UFnpmkFpqG3DFHO6Nh1eIjz/zt7T3aYL28nu+ef748v53vMeHst4fvv15v
O6WmUS6q5b0TIQ4Hv5Kr8YmkW/dckKemszFVCld30wyYC/VoRNQZMWBJccd/gmyHE9C8q9Di
VfbE23P6aIjRUoY81ZF5umIOO4z2ETmIdt56xCOiXZQA9mNhFSiRkfdO3Lon3RZ1sRUFUxbL
bi0CefGkwzcmjQvT8/R9uHp7NvGmMs2CBaBtIlKRJJG7eMr5NDBNSdV3wsF7dSL3VPPXy/lT
JEP4vDye/zy//haftV8j/t+H97sf1BOPLB2TFVdsisz9eG57zmvd/7+tyG5h+Ciyj7+fR/nz
PZkURrYnrjBxra3YpJriKdGYTXRp4EfWGPENc2NyqmONBuMJgInZUdjes2koo91g2moC1D20
rDoMxzSTpsk5EithSL7z5NFvPP4NKS88YmgfWx6WCOLxTjed7kEtJpKMIpDBjeefAa+9q02D
DUPBpsFhA4FZPyuGDyxrdUTAAVbuWnoMtQ+zJs3tTyWqTImEMDRdgn9drAeI7IzCA1KlQL5Y
QIr/6vbtAypn2SYJ99ZkHjfcqS7MopJMOoeTz1JgZZxPOtdAb+PkOEfc/jDaLOkYc7kwsoQv
cyPQI4L3sOWtLu75LrIh8Y4tYCNZlJ2CvLLXXIcwJGfRxOudu252nMryK0ao5Du2CanFlpve
KM4UnZJCf/XV1kUeVvSiCHM6Q0ae5BiS3LhLOpgrkWuJu/n7w90f1DHXf70veJji4wPGMaNX
Pa/qUh4qHryLdJrw8XHSNUisyZyTXf0iFORwQKw8MeY6wnpOJsUY8OS6sbHG4sF3cdNMR7wb
C3dNCtZ2RlIuRrAZUZnpmjeB3tSoSCtQUbk7olaq2IqnVTGcaIxGzKT4MAybSUCGoZToYjoO
5uvQqi7k08Vs7kAxz8TUblmUL6a66/wAndtQEapxTAENbUIHXnhyF/b4dUDPdk8wnlwgkJm8
qdUg0GbgN1kkxiSdEUDdYVQB53MRPss08OhxetaKAWiPLQIXxNBUqzmZUKLDrhb2IIu+6i6v
OpTqKqIWU/sDFYMS/UNNWxSBlZ7GvnYZ7skCosdsNBZPHBghy2S3mul8bQ+QE4ZMWmxEIYY4
ctrXZNF8PSHdOGRpTrrHfoHO/7RrdqMTC/hVEweLtTtnjE8naTadeCKR6jSWo4m1xcVb8++P
D09//HPyL8Fv1tvNSNmj/sIk3ZS11uifg53bvzRndDHcqAG350YlJLOgfURfYyiyU51sLSBG
wnQnQAToVbvCPw5U/CuTgm/z6WQ2JoepeX34/t24QXQzHnfVdvY9wuH1QqMUWQmH8K6kZFiD
DKTIK29VeUO9RhkkuwQYcmDkGnttK7xuT0pXElX7jyoJQcY/MD2UiYEmjoW+e8qia7Bvenh5
v/398fw2epfjPyzH4vz+7QGFISWQjv6J0/R+ix5v9lrsJ6MOC84Mh1qzc2EuMwrQfa/CglEs
uEFUJI3lGW2Vgd4S1HOaOYZKCdwXImUZtmEZjCzxNYP/F8A56m7iA0xsHEyOoBdpo2UV5FrV
SMM4VgN5sRWwGndRSLZFYGxZro7zsK1PxrO0gHF2JCpK4hBEjaZEEz8e1XuNcRKowTCyLw3h
REl1E9letggSnBM5FjHmmBD2is5BAajNPtWsFfuP+E0RiQcqWnenPnRbJxFtXh6SIbaZ3hTE
8iRLUa72theJYOt7zHCtVmtrbn9S78mU3shcn/CzjRhpVweYKq4PqPJj9bX9UYwZ0yWKHhsU
5BNSQwYYWLdRqQeiEbVhNBhHvwgI2JsnE5LyrE2yDcigMniCUa2BFB/PJyQnIiqt9zpjjqA8
XQQaX3dIAcbgltpjOqEKdpEehEFgJTxJdibcoipKUYreXAGnrW0FKpdnkg1yQkHALLSbm0pI
DTJRtvYVq5vO0d+EGi0Uv5GT2TtAS6odoH4NvqI5xFXoFLdBvzszFYDCCN9Qf2l2yiQN3EUV
bIk93lEbbWFpdNAsKg/ikZyVjf4GeDBthSSNNUICVphvPBKI9ZFbQ6LRzYV3qix3HJVF9d3r
89vzt/fR7q+X8+unw+j7rzNIyLqCtIuL/gFp1+BtndwYpgMK0CZcd4huwi3TvUKAS0v0dxb5
274NeqjkB8QhhyGlrjafg/FsdYEMuG2dcmyR5oxH7hpWyE2p354KaFpvKGAV1vb1ojCMhxeC
YXSfo/ls3wi7iFUwn3v2sqKAO5j1SbycxglsiHVMxrpzuos2QnoRaD1yMoFezIjWawQLUihy
6ILLrQyCi62cTsznA5eAlmpdOiOBUY/OcCoWgZlzxcQuT2TkdZNoNVnMfMWvJ3rsYgdHV31A
7MRSgHrJyLgcDtGUaEWHo1qvcAt6Bg5yoXseLDuyvMoiJIJp/mDVC8oqCqYLU5Fm4xdT+6ax
KFhAhhxxqKbuwoNfTRJ1HXNPrJCPV2Tr4mZqxa7pEDeF0PdOxpe2yxbOrV1FnJzAZJyofcii
Sir+Lg1+HF6LpEfBmDTBVlRf6inZpSuMrLW37ee7gRLePzAeCzpYiE3mr16RmObYBi7/G9/n
sR7Rohu8RAUUssE4MkR1BWsX84COoqaTXJpJJFiM3aMG4UsanoWbKvKs6UJcJ3RyMoPE4nkU
rm5iOlegwvNF4F4CufFmPtQCTBSwT+5tKYIRXLjxYIZgBieLlsyCamytiPq+ECu5XWJaKVoI
MgnxtJldrKwf9MhlEwocgJLCXO9D4VcNdVQUXhiieZiPuFmvzKg3Q3Xw3cIXznMoOt7Tui2D
Aq2AP6YSwUz8o3PIr1Zj4rYEzsW9JZCdIYEtdzfklfzXiEnmHv/0sevdOZ6lSoHrct8Y/Grd
8HkwNmP48nype2IoHrftYpzIKOdP96/PD/eDIirku9w0wGK2trKLhK4+7WtUwT4cI8D02DQ3
IkZeUzYhcAvAknItAsmAxxh6Cq0H0useXl2zoo6At2m1DTdladqeFYzfcBBWac1mLsQSNK4p
ksKjleikBSy6LikTkY7CMr3qwL54zD1e54wHYFltjKCGHaaLx2CBjfglHdA1b+97U7N4m8S2
MXaH9rjUdmgj71nfsGNOFcU9E6bQyvDC+WxvBpWRSQBu3/44v1Mx+S1MV8mJZW14YlwESNdr
SVmSxcKKOqHzul7B9qVZDTc8cL84K1Yl1rmYl0UbZfT78O7IK1aQL8TR4/PdHyP+/OuVytfL
4FCatqZ9C1SyyWKJ0tsgHobROwda1yxmG3Ijk9V1JechyzZmrPTOAbPNd5SSHR+J67DNN3qI
OVWMJaZKLVNYMRs06EXl1J+fzq8PdyOBHFW3389C3T7irl7gI1KzHiHP67aFHVi5bIecNzs4
bLfahJdp2+m1upO1U5P1CNGi+vzz+f388vp8Rz1Q1wlGRMDgnuSkEB/LQl9+vn13F0Vd5dzw
DBIAfCunjFwkUkQ23qqwFx4MAtxipSKKbrfRvn6EMEosXg7d2MBqe7o/PryetZQZEgHj8U/+
19v7+eeofBpFPx5e/jV6wze9bzCrg32EvL1+Pj5/BzB/jowh7m4oAi2/gwLP997PXKwMcv36
fHt/9/zT9x2Jly64p+q39PV8fru7haV4/fzKrq1C1Dhd71kUtUmxNeKt7wHGs/JoQIYf14ky
yehb8lF98s3qP/nJ1xUHJ5DXv24foX/eASDxwxJAw6pu/k8Pjw9PfzoFDSc3K07tIdqTa4z6
uA/W8bfWT9eoKu/y3HcNUz9H22cgfHo226WQcOYflNVhWxZxkocF9aSpU1dJjUcmep3p28kg
wasdI8TRzyMaZZ9o8UNKPMDYwfXy6Xrp2BsNA2KH9E1OTTQ8eCZ/vt89P3Wu7E4xkrhNebie
6Wm/FNx8W1VALQGeg5hOzTSGA8aXBU5RVE0xN3KGK3jdYMa60IHzfG6kaFPgzg1Nu9Dg+Daj
rjGS0yka480OfrY5p7RHiGGxNuAIkOaxTRKZYGActsC1bu2Sm7KkQ0uIj2AJepHipdTOvTRo
8PME46+QJria7QT8QCMJ/T5FkKU0RxA+WaWNcbMgWGQ2H9OvCIiXaZHpZkijndW8W6H4UHcH
u98NDQgYZImGFoFMkupvcPhyChxM9wrYRdaxC+zLqzDauBWfRuir2gbVcyQjqdzwWFVGTWjk
90KnUvgB4kaWmSoridvUUc5hyuBXFNLTLQllVMft8QJJw5RVi3NCgGgAPNPvb+IkHcauC60q
JQcXCBxnBXKuJVhsory9wpzA6MyKZPQMw+fK/hdWcl3TCUt0qthoho7hLKl1T3QDF2YHQx5A
JK5Ilp9W+bUtfBhkOTvBmPad9LSvOoVtsCpy4XhrNqJH4VDYjcjDSng4tXmcLxbkukGyMkqy
ssElFJvRhBHZJ0DckfvVpLBb1wB4Eqhw42rdmyuhp8bbygi2k0fGSZdHTlwlA5eZMUXloju/
fnt+/Xn7BHfKz+enh/fnV+rt7xJZv49C25Fl5lTnKj+KuC5NOV6B2g2Di76G/Uqz670yZDCn
YZviELOc0hnEoSFQFXC+uh7Vu+Po/fX2DiNlOEcYb/RQy02OQaEafGk2ZnRAYDI0M9IuoISv
KXU0AQ4Y9lolcjYSVmg43UhLs8DBM8f0uxpCkLk90oTyakum7+KacAg/ukBcbVHqkTARI2PU
dff0UPCAoiNgaQTSy8H+mvsCxAjkJkH9ArXX8rbU41lyM+g6/Go7bYsGzlhuXSUIkpsWU0GS
5kwN2pdY2d+GN4+utTB31/swjnV2YtAQNBGmdarMOAa5YREgNGbi5Ihz/Yiw2ECZ5u4BRA95
aBg89CHMWBw2SYvunGHNyZDXgGPKH2BgxALDPVcB2lPYNLULRo85TLOVuSieRPvaMPwDzNQu
fOovZeotZWaXMvOXMrNK0ZnbmTc00pdNrLGn+MtJ6MbbfBOF0c7IXcxgoNEJ1MqJq8BAHFFu
Gz2ByFDCirQky+wnwS1Z7/6lCsgR/eK0+MsH5X3xluNE8xGkTdgw9G6g7spTV7v2+3pfNsYD
38nXIIOipjgZRJSFsOKxbAM1TJ1UIatNlDXhCAI5L6mbNg0NZnKbcnPTYCYZGtKWQbQhwDhC
xgxIjIxQAafmVVZSy1Sn0qvbNO4q7GAfjGNPJharOPS2tWVl6hLXexDqwgLoWr/toaT2x/CQ
eDnGH1SXpJiah6V0swqWyXGlr5NAFELivgJb6GCHHR/rsW99Rw7Kd+b5JCHKNdJMlsqyRCiZ
mSlmoq4DHxVuDAq6UcBt1zeVGcXaAIPktTWWgollcguI3577Vww2aWmccsIQVYLIK1RgHMv9
NPR+0h0F+k+0jBNqU3Elp6Fusyj8nhXZMawLa2AlwnfsS2xTJ1qB12netAcj6oAEUbafooCo
0dYDRs9LuXljSZgBSmFIDEAEgOGXskk0jhSYkyy88cAwIDbD1MJtrJ9rFEGYHUORxTeTys/h
DBqIkS2n35M1ohNMr+jbR4R5AoNUVq5lYnR79+Ns8DEpF3cs/aIiqSV5/Kku89/iQyxYIoIj
Yrxcg7TnCTMRp91x2RVOFyj1eiX/De6A35IT/h/kZ0+VOQdK31FzgG/pxohiLRYHId17CSvx
wQEjgPzj1/u31T90HRNxtHXc46VGS7nw7fzr/nn0zehMv62s3GkCcGXHBhTQQ+5JgC6wqAnR
N4gAVhhMKS/hAtEfUgUKuOYsrhPtcLtK6sJI42Yqw5q8Mm8+Afjg2pM0gsG6gGcoDnlMmHb7
LZxKG3JGQfBMYzhhk1A3lekDJ2/ZNiwaJodBFy3wn+Ei7+Ryd5r0p0guXQtgUJqEjE8Bh+ex
rK90Kk3vaZ1L+PtgaFAEhNIOCsTMIZ21tKmKiO5beDYHfoknorRghhuF7IgiwvWAiVUKblfe
BWfexxWV9X6gjI0ex9Bl81aXwKkDoKhmFqAqrAGNJScAh2Gp+9ALDEaKJRFpBhsXZsxGbmu4
/lDrzEqtE1i+/dNuGbbdjRmOCCc9376odcMZ+bvdmuF8FNR3t0ZJtTNvOAmgmKiIGYSs45AD
C4gm/0fYlUIW6VaLRXNMwqu2OuJG21mofYW5VvQ+CLBzCuhIR8AZoLQn8YBHVVDVepO4SMK+
Wb4G1GVpqB/i0GL0Qz97u67oG6fI9BWa8T6o3z8e3p5Xq/n60+QfOhrzNIkjezZdmh/2mOXU
cI41ccs53YiBZKW/JlmYwIuZezG+ZhpuzBZm4sV4W6BH97QwM+9wrBYfD8di4S147S14PaUy
2pkk8/GFzykW1ySZ+WtfLSmzaiQBVgwXVbvyfjsJ5pRa3qaxZijkEWMmqKtqQoMDGjylwTMa
PKfBC7t3HYK2GNYpqJynRm88DZx4WjixmnhVslVbE7C9CcvDCM6bPCzsriAiSjCQhLcvkgQE
tL0ngllPVJdhw0LaWbsnuqlZln1Q3TZMPiQB2Y5SwXV4FmFQ3ZjqLyv2jGQf9IEy0nZ0mGZf
XxnWbIjYN6mx/uPMEyCwYJEVCqqTaMr2aLydGspgaedzvvv1+vD+l5szA68hvXr8DTLh9R4D
7ToyV8eQy+QamDIP6EHS3upKp6HUjmnGnDZJbEGV6sGBw6823rUlVCJyclkooSFgkY3q1JDo
OsrFg2tTs8h8hVEk5PuwROnsxg7TB4KAFSdFIp2hUVYVvEZkGno6RHqtbgkpFIH2prSSBbgw
VI3IZx/yvShsRHzhpMbQYLskM0JTkWh0MN99/sdvb78/PP326+38+vP5/vzpx/nx5fzaX+id
WDmMZKhHnOD553+g6eL983+f/v3X7c/bfz8+396/PDz9++322xka+HD/74en9/N3XGf//v3l
2z/k0rs6vz6dH0c/bl/vz0/4GDUsQS1Az+jh6eH94fbx4f+ICHLD+owiIRqhOqE9hDXsPtZ0
/vIa+0NRYczEgUSAYHSiK1hChSGtaiiYGsob30fqDcso6ITKDZNADiEMSGWYJMXcCGawg8H9
kh6jDu0f4t5Oy97/XeWnspZSiK6WEn7pZl5LCQP5NapubOhJ3wsSVF3bkDpk8UIkddVcjsUB
gHMktSWvf728P4/uMLnF8+tILk9tJQhiVGIaJqwGOHDhSRiTQJeUX0WsMmLvWgj3E0uYGIAu
aW04vPYwktANpt013NuS0Nf4q6pyqa/0l9KuBDTOd0kdj28TbjqnSNSefmY0P+yFcvFQ4BS/
TSfBykharxDFPqOBbtMr8S/RQPEPZUTYDcW+2cH15BTYm4pKPdmv3x8f7j79cf5rdCeW7vfX
25cffzkrtjZcWiQsdpdNEhEVRvGOaH8S1TEnXXFU//b1IQnm88m6a2v46/3H+en94e72/Xw/
Sp5Eg+EkGP334f3HKHx7e757EKj49v3W6UGkh4ntJoiARTtgGMJgXJXZzWQ6nhNND5Mt4zC1
/sbz5Jo5ZwQmbA/hpDx0HdoIM3q8x97c5m4iatJTyhyhQzbuCo+IZZnoz3YKltVHB1amLl0l
22UCT+Z7X7c/k5tjHVbk1dINJLr2N3vK4KVrK1qjduO1u3374RuuPHTbtaOAJ3pkD3noWhfF
D9/Pb+9uZXU0DcjpEYj2UOX8UqcEmduwE3kSb7LwKgncmZBwd3ah8GYyjlnqx6gGutuBbIC2
EaxDMJ4RMIpujvm5iPHKGewIYR1HSzrd4ZPH1m6jKBYef/GeIpgvPqCY0g6jak/vwonTNwSq
zjkIqI8CzyfEtb0Lpy4wJ2D4oLcx07UrVLOtJ2SwRoU/VrJmyaeI1ADuPgoTd0UBTNrhO9u3
2G+YRwGoKOqI9EfvlnB5NF2jLISjve1WcpgnIEG7V1IUSgc9+iPeuIsToe40xcQwpL6b+GoX
fg3pQLfdrIUZDy+tre7SIUrnviC6Pb6uaLvXfhnNqNWSXLh7m2NJzouCDyMs19Lzz5fX89ub
KfN0A5lmxkNRd998LR3YauZujOyre8YAbOduuK+86SN81rdP988/R8Wvn7+fX6WDVyeSuWuY
szaqatIioetEvdlaUW10DHnNSIyV3VnHRbRefqBwivzCUKZL0M7bFM81lhVd40S1l5ZMT9gJ
BX+L2BoiLx0KJv6eYds6szBdYnp8+P31FuTD1+df7w9PxA2fsQ15Ogk4HDMkQl2SbtAsl4bE
yX158XNJQqN6FvZyCTqn66Kpswjh3b0MvDn7mnyeXCK5VL33fh96Z3DDLpHnrtu5LKUwwz15
wJ02zYdG2Q5zj1E7yqRoK5ll+8IGgw/CBm4R5ZtMFSjxINL8nWJwDMYzQkjCljHYsp5eC1Qb
FQUGwCVJDvnJ00DAdGN2uYl9KDOqFAxbfYoS8pFuoIoiaUlEDlSelVsWtdsTbZAQ8ps8T1CX
KbSfmBnANZc5v76jwx0IcG8iZuvbw/en2/dfr+fR3Y/z3R8PT981Y3bx1I87F6N68l6DO4yf
QyHOHfzr8z/+oVnG/I1aZaRU7/EklUKVEVSlg7UbmB64HmpKTY+WamENtMVW3+HoGmR0ZQNL
JMHIGtot2vnPADtYRKiOrYWDhuHor5FkSeHBFknT7humv5lGZR0bXh41y0V2sI0R3aN34REp
CQzL6w5lgYWNCBo5RHl1inbyKb9ODEElgoXGGuMIiIxgXUDhijdQVbNvza+mllYHAH08Sc89
JkgyFiWbG5+0oZHQjK0gCOujZHqsLzfkowvgjAha8jLTP12Sy2fTy6EDpRbPo5cntWVZxGXu
GQdFA0yYftBq0Dhx4V/x+Ifb3OTxvspry4ICy0eUjFCqZGDySGpg/Wg43T5gCglyATboB9vr
r4igPHB68nb7VfcF1BCKB7W2AfHastEzmMAP4TaDbwJ1qFswCZvQQ5hZZpwh52XEwoYdEthU
tZ4VE18QYNvp6c4kCC1jWmM7IjzOtRsLg9IaFr0KoOJmDvACRJKWSzwcLdtmZ+EQAXWJhxzb
SAxxMtRuu5jBhjCrg8HMwhrdiHaC1bU+xjanJfoSIfG+6N/fzFJEQE+jK/xoRa4Uzaic+IwG
uOX6jbLN5Exq0yNCP9ivV1G1Ryv3tkxT8chiYNramIP4Wre9z8qN+avfqNr4Zqb3SpR9bZtQ
+w4DnQK3ppWbV2bYoZjlxm/4kepuxOi8VqOKs6lv9P5DsWVGTEiFgW6N94weBZg6wZWAWyRE
+1y2LQi6vQzR3KYZpiwxPVEcojxClkVrGY5ynFS6LRGHlWWMND6lFlt9QHsmwLnbzTe/jvcQ
0JfXh6f3P0YgX47uf57fvruP0TJZlQiPbtyhCERbKGOpSGc5DOmTwRWf9W8mSy/F9Z4lzec+
ElIOA4IGJE4JM+01/qYIMZy031vBoGg9Fq/AxG1KuPrapK6BXOud/Az+Ay5lU/JEH1zvgPWq
g4fH86f3h5+K43oTpHcS/kpFnJa1oQhJ2RsX4j0m36MeCL0+hlamcLYmwo7eCLWKC6OCIxUd
0c1sKTUIsqI0QNJmsgm6faMpLSxB0spNHSOJSA6HBq15aCSvsjGieejIc2OPrjz1pAGgjFav
j/LfHkcjOI5a4vH591/fRX519vT2/vrr5/np3bT9DpG7B5a6prL7aC471hz1Vo3W4Lhk+I4m
KHN0QbxQiSpQvX73N5m4CGH4rraxdrCpX4NdCPy+kM3WpHN8f3TklVFNvOnfvOX6+zz+c6IV
hx8kN8K/nyowFikXG1bs4d4Lm5CjgmcHLPjYPQI3PFTeSRgLONSPeYGzfmKUBiNFkoRuMLgO
6Tsg0Gh4bRdk1elET7q4lsxZlDbO7nLBah25UJkN9OVqBy2ee8mpSQrOzFjZsjjEiwubMv7B
b8tjoR/GAlaVjJe2o42JgcWn/MPIxWMRe60rZCPLzRc4AmgdOs/2m46MMroQ+M7bTt8Kapjh
8s3gvLBPko/geGmLq76VeqXFeDy2m93T9rYeKR0pxCIXxi088hjIqdNSWKbsOZ2IlcOpHiua
pIjtQ77fKbKsA/Rk24gt6ayPA32o2x8SbbArAW5zrztRXgTLMDDCYsZGqYMdWWd6SkW30fko
NWI7XUQqs6KrEHexqweUWHSikEt72OfAo3eykWnCM+xFZ+p2VrID+YqK9KPy+eXt36Ps+e6P
Xy/yctrdPn037pkK05CgGVFZVmQoCh2PbuH7ZDgjUZmwr6AhDWyo0nDJ42XaWGiidDRyu1AI
xnMU8plOWHkSp/iJ+2ZrQ4eVtbt9gSnpOaUqOl7rQdE1J/pLAyuNJoEZuP8lEsVpJ+gwMmI3
+dwcJNb04RawwcW3s80iqjFXJ/LDV0lSyaNV6tTQ+mG4MP759vLwhBYR0Jufv97Pf57hj/P7
3X/+8x897U3ZZeoToUmJdChVjTlFCDfTnkKUgX3wMhooK++b5KQr5tQSVyEYnW1Nkx+PEiOi
sQkLRougPnLDaUlCRQstaVM4viSVe5AphLczXTaZLEkqqiIcR/Ea1GVbMevEyDoY4qHt5aZu
VfZ9I9VqnXT1fzHLhkTX1KEZ+kzwxmixuC/wURSWplRoXbp45P3qOZL+kDzL/e377QiZlTtU
/BKyBqqNL1RS2XhzwWzdGZP2v1YmheGkERd+GwMriLJYvRe+zbQj5KV+mO2Iahgy4DJDoeuV
z6TRnmKsfPMN5CIkWOtRHSLe+lbDoJ87hp+icHjpCRFKHBPoExZMjFJrwy8aQcm17r/UhZI0
OmTtxGslQ9WD9GTKr2KxA0OJbxqknhZauYNzPZOXbZN0Qbf0slDnWUQ3TUntR3GVd7nCZa9q
66LvsVvg3Hc0TSeup9a4yAIEsM1FMBdhrFrHFgm6rYrBRkpgVQuHg4zUh7KUASnLjswDEIGe
s1g2hrpaMOi1GYpKgqgtq7fsKkI+BtVJzFClaDwZxkZqmRIVzdg80qBe0Tinwsvzf8+vL3f0
VVmhP6Ay9zwmdU3yEEgkkZbuR3GscEzDFTAEskb6JMesjpKpNaz1yjhBO+5o5yiuFMUX9MHL
wk2StWkSin0n2GFPrIimblN22leX1P85xwTSjVDeOrpHbC2qF5GfEpE8nLgiuSmI4e9ORCAq
k2gYUw534EbXeegftnXZ5kboJnn9Jw57hsGCT/RJLQY6rLObC1owpKkadGz0ojHIfJeRSEZa
JI9ldyHpKsXm/PaOVyGyahEGDb39ftZX2tW+YHQvunujFUsMOLMvUn9Ez7d0sKdo7D1zZVq0
S5kA9hmA1ZbXLdwU9dBeJFOKN6HnrVH4pRehoEV9Wb3P0fWGVptJKlhpYZ2EUgwd/4kJLTS2
uYaDCR8mcYnKIPUFFVsa9rmt7704DY4/glT//n/9D8+CELoBAA==

--ibTvN161/egqYuK8--
