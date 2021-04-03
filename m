Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOEPUGBQMGQEWYFE4DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1944C353378
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Apr 2021 12:47:22 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id z17sf310963pju.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Apr 2021 03:47:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617446840; cv=pass;
        d=google.com; s=arc-20160816;
        b=bXk0sb0aT89MlS7hAwDAqFDdGe+rGa3r56ePxTVi8ttGRqMMFiocI1xMGbaqhjl62q
         7LtS56ypun/K2vjW/BdXMjNjQSW5eSlpBHAYlz53G/Gj9ETnw9A9tpnMA6uHgqpfw0UA
         4ShASToYf+K0gXyxhO3eqqKX3hZ+mfJvxTrz49Rr3S7CjrlxDgmXC2fadIEAfx6LQdmF
         cOP370mnEtXZAWcUGdxHW8eQno+n0yj0M+kQ9fhOiro/2XKCATUg8fUfYSyZmWK0MTZY
         RM95f7eOj3DdwPB4IkwS48Q8KJhnUQvZ5pmP1PWJCcrGUD1N4LYKPAQuSu8Qz/VnRwhj
         h3/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=e2+93OstIVwgVHbxiX+wCWsPL8HjZwTdWOp5SmwzWdE=;
        b=rdJcWLwk77aJhAZPkQGoCVuDQPvEcj9MluASbcU5G5pdL72koJg3dXmnfC2Pj3Ndle
         Ypi6RObKO/yJKKwgvStSV7s9KGRk0+hcaeZFN4JgnTaK8N2ItHAfApYqzjrv+oG+BJZJ
         m1csfUoEzwgQzYGDWiTNGR68W9nZsYQxaYp8ryQM222fJfDaHPLkeyR+Wa6dfPfY2SBg
         MBXTtje+lDuYdYQ2Qs6Lhox58L29aqblKEqqp2P0Gkl8BQ35dK6+dRezXeB3nsi8jMJC
         0QX2T5r5zuQSiPXTWkuLYtrvStYouOJPvEffXtpH9P1v01RaH+WHNv/dJOyuqG4XN71N
         GjEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e2+93OstIVwgVHbxiX+wCWsPL8HjZwTdWOp5SmwzWdE=;
        b=LOPi8b8IYCRdyYN2xVulM04uMa+uh2zWnJTfGuSM/QImUTSNHMlaNnqi2Tep5GL4yH
         TNmKBhLQB6D3xJHMpDQqvduD3AhfvyyYR8GPEMBUHvglsQsOsHCZULRbqpmkMkIFJ+zd
         sZlREgChrUcN4rnuE6NIF9aryNrRaWClnrJvH01pPLs42i+VyZ9hlxupS5bgc786BCf5
         jevEJsYwr/IVfdv6Y8CFqKx2tiHcUXaYgPahxXhWguoUfO0xKRImHq1J9BBcukjZL+zk
         mHqF5aTWMq06dZk/v4BZILnvl8YB/r7BxOTPG4ldf0naNNER7r/ZgCzzimnUDxvuddMS
         glNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e2+93OstIVwgVHbxiX+wCWsPL8HjZwTdWOp5SmwzWdE=;
        b=bu8YmNx9l43pRng6SfA0PHYbUuIcqO7BjdGnFSaHxGeYtDrK/5HmdM+b9aTjx2lBfL
         aRcb+u9q45irLhZ/sqOEaaTWCNa7xNn8/XmplCaIYv0159zznDVj4Xqjfq2C2P2R0sG+
         SCRqqnYzRHhTG/wOT66gIH6c44CWOuF1MsF0291ASpCcjfNe1Q4U48raTrxmeyCAMm5N
         /z6Lgh5KgGJnL6MPOlOe1ezXaZMVi0fkW7g+ckM9irfkJzWkun8h3xc+yibQN49hdIlj
         h4i7jF1UYReSZL2xhaqwSFG6WxKxnA7CbuSrkc+DRDtlcceXPV7FwLMGBQhHHvhnZoLi
         P0ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Yvq+c0rXNASK5A3QzZ6n1VA3QZver+jkGbu+KaOXHu/qnGxzw
	Y8U6SDPSEWRxN510ngl/t/s=
X-Google-Smtp-Source: ABdhPJxiAp9NVb2FgjeCLAP/QAkEE8YmRHYV/IRg5D8jNG04QuxlDNd1xRdXskO3PSlWu14zfTHPcA==
X-Received: by 2002:aa7:8745:0:b029:211:1103:d3e4 with SMTP id g5-20020aa787450000b02902111103d3e4mr16211401pfo.73.1617446840200;
        Sat, 03 Apr 2021 03:47:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls6612011pjq.3.gmail; Sat, 03
 Apr 2021 03:47:19 -0700 (PDT)
X-Received: by 2002:a17:902:bb8e:b029:e6:3b2:5834 with SMTP id m14-20020a170902bb8eb02900e603b25834mr16625639pls.38.1617446839668;
        Sat, 03 Apr 2021 03:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617446839; cv=none;
        d=google.com; s=arc-20160816;
        b=Gj5u2SK+ykxemmZengRXFND42Up2DG8vqaT7GJhjgZEYnWl1aN36yVM9CZhobfYHFo
         /H5KZ+/BeRIZ0UNWXIw1Wnr6d5H3HnLwrE7d/BPehU6MB45ACj47i4B+GFBbyflkSPTZ
         +McXmaaslST5NPHJOG6aBMszbVqNudoKHrYsajKCnsLZajgYuowKV6d3ZBHhIpF/hRw0
         7I2egK1lB7T3hgsR4CEerOLK/2j0YXTyBnreaLKW2DxeL8QnAak+IIr4kVVRMeYvNFEe
         j4fo7ejjMqLYI/ONmke7h8xDRVn0AokgBnvEjxfIzP2yjRJqKQSy74fkeCjhCXgfCOZ3
         CBJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=OVV/fMJCIp3/3vKC/1Ol4v2W8+t92LiOZ2z22OXZU2Q=;
        b=EE1r1uof1AQq1P9mJVOxuK9mI0dfRTA1LlCcJLpaRYJYMSwrmROv3iDm7EKzdrCIkc
         y8gxuSIh822/l9XO/PRRS2ASZHUCBgrZYZBqffs7BJfdMJLfaFC4BNPsFNt+BcdVoVT8
         tw9MBKPhix4kgN51Z+ai11N9qv9dBHGvsfxYA6SUkkG9lMzvLn5OW0upSfaq+4qMnLes
         WqdBtqFoNzZZNKK4eVTmX/01VIinIMcbJCX32DzpdGkB9F6JQqvPtee0BFHmjSvpNcY4
         I9Fiyfv2kBiK1pl6hUDGpxZmPdCo05ZMtHcnF9CFTtSX41r7rRqFdon0PlH7rwbsHkKh
         IftA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id 131si906814pfa.2.2021.04.03.03.47.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Apr 2021 03:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: C0Xtdrk4/B3KVbFLep5MF6dpNXfjC55i7abioBYL8XFjYUtGqDpSxPztXTAmcqJ0LrfcAlJreO
 +r8uX8iQqvbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="172033685"
X-IronPort-AV: E=Sophos;i="5.81,302,1610438400"; 
   d="gz'50?scan'50,208,50";a="172033685"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2021 03:47:18 -0700
IronPort-SDR: vD6LOllKguL9pCceFyq6+AQxOl1eKyZWMItlNw3OZoLTOcYpeNVBoXGf+uZ2IXzY3slRKCklLI
 7dzCwUOotAMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,302,1610438400"; 
   d="gz'50?scan'50,208,50";a="395247288"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 03 Apr 2021 03:47:14 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lSdoA-0007ew-9j; Sat, 03 Apr 2021 10:47:14 +0000
Date: Sat, 3 Apr 2021 18:47:04 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame size
 of 2304 bytes in function 'kvmhv_enter_nested_guest'
Message-ID: <202104031853.vDT0Qjqj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   d93a0d43e3d0ba9e19387be4dae4a8d5b175a8d7
commit: 97e4910232fa1f81e806aa60c25a0450276d99a2 linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
date:   3 weeks ago
config: powerpc64-randconfig-r006-20210403 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0fe8af94688aa03c01913c2001d6a1a911f42ce6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=97e4910232fa1f81e806aa60c25a0450276d99a2
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 97e4910232fa1f81e806aa60c25a0450276d99a2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame size of 2304 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
   long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
        ^
   1 error generated.


vim +/kvmhv_enter_nested_guest +264 arch/powerpc/kvm/book3s_hv_nested.c

afe75049303f75 Ravi Bangoria        2020-12-16  263  
360cae313702cd Paul Mackerras       2018-10-08 @264  long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
360cae313702cd Paul Mackerras       2018-10-08  265  {
360cae313702cd Paul Mackerras       2018-10-08  266  	long int err, r;
360cae313702cd Paul Mackerras       2018-10-08  267  	struct kvm_nested_guest *l2;
360cae313702cd Paul Mackerras       2018-10-08  268  	struct pt_regs l2_regs, saved_l1_regs;
afe75049303f75 Ravi Bangoria        2020-12-16  269  	struct hv_guest_state l2_hv = {0}, saved_l1_hv;
360cae313702cd Paul Mackerras       2018-10-08  270  	struct kvmppc_vcore *vc = vcpu->arch.vcore;
360cae313702cd Paul Mackerras       2018-10-08  271  	u64 hv_ptr, regs_ptr;
360cae313702cd Paul Mackerras       2018-10-08  272  	u64 hdec_exp;
360cae313702cd Paul Mackerras       2018-10-08  273  	s64 delta_purr, delta_spurr, delta_ic, delta_vtb;
360cae313702cd Paul Mackerras       2018-10-08  274  	u64 mask;
360cae313702cd Paul Mackerras       2018-10-08  275  	unsigned long lpcr;
360cae313702cd Paul Mackerras       2018-10-08  276  
360cae313702cd Paul Mackerras       2018-10-08  277  	if (vcpu->kvm->arch.l1_ptcr == 0)
360cae313702cd Paul Mackerras       2018-10-08  278  		return H_NOT_AVAILABLE;
360cae313702cd Paul Mackerras       2018-10-08  279  
360cae313702cd Paul Mackerras       2018-10-08  280  	/* copy parameters in */
360cae313702cd Paul Mackerras       2018-10-08  281  	hv_ptr = kvmppc_get_gpr(vcpu, 4);
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  282  	regs_ptr = kvmppc_get_gpr(vcpu, 5);
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  283  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
afe75049303f75 Ravi Bangoria        2020-12-16  284  	err = kvmhv_read_guest_state_and_regs(vcpu, &l2_hv, &l2_regs,
afe75049303f75 Ravi Bangoria        2020-12-16  285  					      hv_ptr, regs_ptr);
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  286  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
360cae313702cd Paul Mackerras       2018-10-08  287  	if (err)
360cae313702cd Paul Mackerras       2018-10-08  288  		return H_PARAMETER;
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  289  
10b5022db7861a Suraj Jitindar Singh 2018-10-08  290  	if (kvmppc_need_byteswap(vcpu))
10b5022db7861a Suraj Jitindar Singh 2018-10-08  291  		byteswap_hv_regs(&l2_hv);
afe75049303f75 Ravi Bangoria        2020-12-16  292  	if (l2_hv.version > HV_GUEST_STATE_VERSION)
360cae313702cd Paul Mackerras       2018-10-08  293  		return H_P2;
360cae313702cd Paul Mackerras       2018-10-08  294  
10b5022db7861a Suraj Jitindar Singh 2018-10-08  295  	if (kvmppc_need_byteswap(vcpu))
10b5022db7861a Suraj Jitindar Singh 2018-10-08  296  		byteswap_pt_regs(&l2_regs);
9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  297  	if (l2_hv.vcpu_token >= NR_CPUS)
9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  298  		return H_PARAMETER;
9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  299  
360cae313702cd Paul Mackerras       2018-10-08  300  	/* translate lpid */
360cae313702cd Paul Mackerras       2018-10-08  301  	l2 = kvmhv_get_nested(vcpu->kvm, l2_hv.lpid, true);
360cae313702cd Paul Mackerras       2018-10-08  302  	if (!l2)
360cae313702cd Paul Mackerras       2018-10-08  303  		return H_PARAMETER;
360cae313702cd Paul Mackerras       2018-10-08  304  	if (!l2->l1_gr_to_hr) {
360cae313702cd Paul Mackerras       2018-10-08  305  		mutex_lock(&l2->tlb_lock);
360cae313702cd Paul Mackerras       2018-10-08  306  		kvmhv_update_ptbl_cache(l2);
360cae313702cd Paul Mackerras       2018-10-08  307  		mutex_unlock(&l2->tlb_lock);
360cae313702cd Paul Mackerras       2018-10-08  308  	}
360cae313702cd Paul Mackerras       2018-10-08  309  
360cae313702cd Paul Mackerras       2018-10-08  310  	/* save l1 values of things */
360cae313702cd Paul Mackerras       2018-10-08  311  	vcpu->arch.regs.msr = vcpu->arch.shregs.msr;
360cae313702cd Paul Mackerras       2018-10-08  312  	saved_l1_regs = vcpu->arch.regs;
360cae313702cd Paul Mackerras       2018-10-08  313  	kvmhv_save_hv_regs(vcpu, &saved_l1_hv);
360cae313702cd Paul Mackerras       2018-10-08  314  
360cae313702cd Paul Mackerras       2018-10-08  315  	/* convert TB values/offsets to host (L0) values */
360cae313702cd Paul Mackerras       2018-10-08  316  	hdec_exp = l2_hv.hdec_expiry - vc->tb_offset;
360cae313702cd Paul Mackerras       2018-10-08  317  	vc->tb_offset += l2_hv.tb_offset;
360cae313702cd Paul Mackerras       2018-10-08  318  
360cae313702cd Paul Mackerras       2018-10-08  319  	/* set L1 state to L2 state */
360cae313702cd Paul Mackerras       2018-10-08  320  	vcpu->arch.nested = l2;
360cae313702cd Paul Mackerras       2018-10-08  321  	vcpu->arch.nested_vcpu_id = l2_hv.vcpu_token;
360cae313702cd Paul Mackerras       2018-10-08  322  	vcpu->arch.regs = l2_regs;
360cae313702cd Paul Mackerras       2018-10-08  323  	vcpu->arch.shregs.msr = vcpu->arch.regs.msr;
360cae313702cd Paul Mackerras       2018-10-08  324  	mask = LPCR_DPFD | LPCR_ILE | LPCR_TC | LPCR_AIL | LPCR_LD |
360cae313702cd Paul Mackerras       2018-10-08  325  		LPCR_LPES | LPCR_MER;
360cae313702cd Paul Mackerras       2018-10-08  326  	lpcr = (vc->lpcr & ~mask) | (l2_hv.lpcr & mask);
73937deb4b2d7f Suraj Jitindar Singh 2018-10-08  327  	sanitise_hv_regs(vcpu, &l2_hv);
360cae313702cd Paul Mackerras       2018-10-08  328  	restore_hv_regs(vcpu, &l2_hv);
360cae313702cd Paul Mackerras       2018-10-08  329  
360cae313702cd Paul Mackerras       2018-10-08  330  	vcpu->arch.ret = RESUME_GUEST;
360cae313702cd Paul Mackerras       2018-10-08  331  	vcpu->arch.trap = 0;
360cae313702cd Paul Mackerras       2018-10-08  332  	do {
360cae313702cd Paul Mackerras       2018-10-08  333  		if (mftb() >= hdec_exp) {
360cae313702cd Paul Mackerras       2018-10-08  334  			vcpu->arch.trap = BOOK3S_INTERRUPT_HV_DECREMENTER;
360cae313702cd Paul Mackerras       2018-10-08  335  			r = RESUME_HOST;
360cae313702cd Paul Mackerras       2018-10-08  336  			break;
360cae313702cd Paul Mackerras       2018-10-08  337  		}
8c99d34578628b Tianjia Zhang        2020-04-27  338  		r = kvmhv_run_single_vcpu(vcpu, hdec_exp, lpcr);
360cae313702cd Paul Mackerras       2018-10-08  339  	} while (is_kvmppc_resume_guest(r));
360cae313702cd Paul Mackerras       2018-10-08  340  
360cae313702cd Paul Mackerras       2018-10-08  341  	/* save L2 state for return */
360cae313702cd Paul Mackerras       2018-10-08  342  	l2_regs = vcpu->arch.regs;
360cae313702cd Paul Mackerras       2018-10-08  343  	l2_regs.msr = vcpu->arch.shregs.msr;
360cae313702cd Paul Mackerras       2018-10-08  344  	delta_purr = vcpu->arch.purr - l2_hv.purr;
360cae313702cd Paul Mackerras       2018-10-08  345  	delta_spurr = vcpu->arch.spurr - l2_hv.spurr;
360cae313702cd Paul Mackerras       2018-10-08  346  	delta_ic = vcpu->arch.ic - l2_hv.ic;
360cae313702cd Paul Mackerras       2018-10-08  347  	delta_vtb = vc->vtb - l2_hv.vtb;
360cae313702cd Paul Mackerras       2018-10-08  348  	save_hv_return_state(vcpu, vcpu->arch.trap, &l2_hv);
360cae313702cd Paul Mackerras       2018-10-08  349  
360cae313702cd Paul Mackerras       2018-10-08  350  	/* restore L1 state */
360cae313702cd Paul Mackerras       2018-10-08  351  	vcpu->arch.nested = NULL;
360cae313702cd Paul Mackerras       2018-10-08  352  	vcpu->arch.regs = saved_l1_regs;
360cae313702cd Paul Mackerras       2018-10-08  353  	vcpu->arch.shregs.msr = saved_l1_regs.msr & ~MSR_TS_MASK;
360cae313702cd Paul Mackerras       2018-10-08  354  	/* set L1 MSR TS field according to L2 transaction state */
360cae313702cd Paul Mackerras       2018-10-08  355  	if (l2_regs.msr & MSR_TS_MASK)
360cae313702cd Paul Mackerras       2018-10-08  356  		vcpu->arch.shregs.msr |= MSR_TS_S;
360cae313702cd Paul Mackerras       2018-10-08  357  	vc->tb_offset = saved_l1_hv.tb_offset;
360cae313702cd Paul Mackerras       2018-10-08  358  	restore_hv_regs(vcpu, &saved_l1_hv);
360cae313702cd Paul Mackerras       2018-10-08  359  	vcpu->arch.purr += delta_purr;
360cae313702cd Paul Mackerras       2018-10-08  360  	vcpu->arch.spurr += delta_spurr;
360cae313702cd Paul Mackerras       2018-10-08  361  	vcpu->arch.ic += delta_ic;
360cae313702cd Paul Mackerras       2018-10-08  362  	vc->vtb += delta_vtb;
360cae313702cd Paul Mackerras       2018-10-08  363  
360cae313702cd Paul Mackerras       2018-10-08  364  	kvmhv_put_nested(l2);
360cae313702cd Paul Mackerras       2018-10-08  365  
360cae313702cd Paul Mackerras       2018-10-08  366  	/* copy l2_hv_state and regs back to guest */
10b5022db7861a Suraj Jitindar Singh 2018-10-08  367  	if (kvmppc_need_byteswap(vcpu)) {
10b5022db7861a Suraj Jitindar Singh 2018-10-08  368  		byteswap_hv_regs(&l2_hv);
10b5022db7861a Suraj Jitindar Singh 2018-10-08  369  		byteswap_pt_regs(&l2_regs);
10b5022db7861a Suraj Jitindar Singh 2018-10-08  370  	}
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  371  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
afe75049303f75 Ravi Bangoria        2020-12-16  372  	err = kvmhv_write_guest_state_and_regs(vcpu, &l2_hv, &l2_regs,
afe75049303f75 Ravi Bangoria        2020-12-16  373  					       hv_ptr, regs_ptr);
1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  374  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
360cae313702cd Paul Mackerras       2018-10-08  375  	if (err)
360cae313702cd Paul Mackerras       2018-10-08  376  		return H_AUTHORITY;
360cae313702cd Paul Mackerras       2018-10-08  377  
360cae313702cd Paul Mackerras       2018-10-08  378  	if (r == -EINTR)
360cae313702cd Paul Mackerras       2018-10-08  379  		return H_INTERRUPT;
360cae313702cd Paul Mackerras       2018-10-08  380  
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  381  	if (vcpu->mmio_needed) {
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  382  		kvmhv_nested_mmio_needed(vcpu, regs_ptr);
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  383  		return H_TOO_HARD;
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  384  	}
873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  385  
360cae313702cd Paul Mackerras       2018-10-08  386  	return vcpu->arch.trap;
360cae313702cd Paul Mackerras       2018-10-08  387  }
360cae313702cd Paul Mackerras       2018-10-08  388  

:::::: The code at line 264 was first introduced by commit
:::::: 360cae313702cdd0b90f82c261a8302fecef030a KVM: PPC: Book3S HV: Nested guest entry via hypercall

:::::: TO: Paul Mackerras <paulus@ozlabs.org>
:::::: CC: Michael Ellerman <mpe@ellerman.id.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104031853.vDT0Qjqj-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJVCaGAAAy5jb25maWcAlFxbd9u2k3/vp+BJX/p/aCrZzm33+AEkQQkVSTAAqItfeFSZ
Sb11rKwsp+233xmAF4AElWzPaVPNDO6Dmd8Mhvn5p58D8nI+ftmfHw77x8d/g8/1U33an+v7
4NPDY/3fQcyDnKuAxky9BuH04enln9++Hv+uT18PwZvX86vXs19Ph6tgVZ+e6scgOj59evj8
Aj08HJ9++vmniOcJW1RRVK2pkIznlaJbdfvq8Lh/+hx8q0/PIBfMr1/PXs+CXz4/nP/rt9/g
v18eTqfj6bfHx29fqq+n4//Uh3Mw+1S/33/6cPP2/fv9fnZ9mM0/zK8PV7PZ/P7tfr7/MJ9/
urk61G//86odddEPezuzpsJkFaUkX9z+2xHxZyc7v57BPy0vjcedAA06SdO47yK15NwOYMQl
kRWRWbXgilujuoyKl6oolZfP8pTltGcx8bHacLHqKWHJ0lixjFaKhCmtJBdWV2opKIFJ5wmH
/4CIxKZwQD8HC33ij8FzfX752h8Zy5mqaL6uiIDFsYyp2+urbmY8KxgMoqi0Bkl5RNJ2D169
cmZWSZIqi7gka1qtqMhpWi3uWNH3YnO2dz3dFf45cMnbu+DhOXg6nnEdbZOYJqRMlV6LNXZL
XnKpcpLR21e/PB2falCcrle5k2tWRJ4+Cy7Ztso+lrS0zmNDVLSsBsRIcCmrjGZc7CqiFImW
9sxLSVMW2kN0LFLCffMMrveGCBhKS8AsYcfT9iRBKYLnlz+e/30+11/6k1zQnAoWaZ2RS77p
JzjkVCld09TPz9hCEIUn62Wz/HcauewlETGwZCU3laCS5rG/abS0jx8pMc8Iy12aZJlPqFoy
KnBHdi43IVJRzno2TCePU1DO8SQyybDNJMM7n4SLiMbNxWK2MZEFEZL6e9S90bBcJFKrQv10
Hxw/DU5u2Ejf6nV/2AN2BPduBQeXK2ttWknQeigWrapQcBJHxL6sntYXxTIuq7KIiaKtuqmH
L2C/fRqnx+Q5BZ2yusp5tbxD05FpLemUHYgFjMFj5rtvphWDo7PbGGpSpqmnCfyBXqZSgkQr
czRdwyHPnKP3EuoxvJwlWyxRpfXJCOnKNEc62p3OgAhKs0JB97mzpJa+5mmZKyJ23qEbKZ9h
atpHHJq3ZxQV5W9q//xXcIbpBHuY2vN5f34O9ofD8eXp/PD0uT+1NRPQuigrEuk+BjunD9Vl
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
nwV3AQIA

--y0ulUmNC+osPPQO6--
