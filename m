Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHWH5WEAMGQEVVLXI7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0F33EE714
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 09:22:08 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id g4-20020a056122062400b00286f7151594sf397368vkp.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 00:22:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629184927; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ry+SxUVIzMQfL6YldsB57X8uER1hG0exNqbUbUSx9gkrNrb4SeJiwr0/YcByU0404z
         8FsmfVvmD5wDjztjRG4e+HQ1JeIFi7n9u0b+ZdyOe/yqIJoE/ATeoCARYoD2zklnvitp
         YgGwmOsAvDuhCw1Mm0tRf/+RNKOZW2gsMRFWQhYBtBsKBwSdi+wM5wigH12WajDkfbwm
         4TA2BxCYntD6YepDW9oQ1RWYeTJdj8JOkAckvmEQyOJw1yIQtarkADFyvA0LUg7aRb9C
         bARNcvlMVU02d1zcvY0HFECYGcm3+0Jezwx2QntdBjh3WkHzphaTaVFLiRRQOA9oFfn+
         aa9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fDPheiDGNhvVvrnHDAFraewrS1oj713LBMdaiqIYu2k=;
        b=wdYFqnLotyGAU4PLJE1EUhEfEPOgQx/S/IDglsIbvVCbHNySF5mqnbB70RQKU1mqf2
         zywGKGTI8BJRcn/TYAxrAZ4D1VqpksLT4Qhfw60qJLZ3FN8l4GXQwsEo4TIr/6UACEfI
         rW2iUAcYHRjNp8A2Am/i1Ss8olEXZQi4itIGlcz+CgRuAbOB9V2im62h1d3Fb3tgPb9p
         CmNVpgIB7wPr7+PwB0zLGffwOwMbBAXedko6kQKHwXjIyCflP5HabHHAgUd+6q3mBtF8
         UUysnWDATeSHNHrMbZTYVlbElytrmpPurvFPunPFEEaKTgBacD7e/ww8DRn1qY++3U9w
         wDEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fDPheiDGNhvVvrnHDAFraewrS1oj713LBMdaiqIYu2k=;
        b=L8HACbLBGIrQJYzaoi+C9cDjANBnZnuIbSNOSVQhgtaqjdHqgMnd11wX2yWrf8BhpY
         imBFKIPXSj3Xig70xm2HJ0tcbFk447d8TOVyG06iTzHx2JVZO8pCb10oNr2VE7Mv4oUI
         fcTHzvH8lBpgrlpppXPp0OHb1GjDUnYktQpowRuj8kzyTxw6eXJXUZdVxS6OtGgr5m5U
         Vr7lKafwkYWxoVyNb/KxaBdhaOykeFWcDZ1OeD5xmsBxyoVvtWPXAf/BX6AHqGkBEmeb
         dhQCU8kx6xbnjDlfstTPOl6wQ5FrWnc1I3NzcoCYmfXdX+T7PJSSjfYIO3xRTK/92IG0
         TqGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fDPheiDGNhvVvrnHDAFraewrS1oj713LBMdaiqIYu2k=;
        b=VHifqjhcYQgc7R7G5Ng7LYJdrzdeTjxiatk/4bqsRqugSFegPf4Sg/7hkhYdnGxWI8
         F/NoV7l2Ns+HBf/FbWJtDOYNeF/+Y3rCdAUxwQ94JWktEqcczEtWG88lfo6p/d+2jo+y
         uCAgT+CW44fB0cCsXor+RP11N5jwk7z3cZjzXyJZu1Qtce9AJFUxiR6KygzOTPQHZGWU
         1G5FJg7mGzmZBtk8wktvZqFdDvLAR4GFSeqxQH8SOkNUP89Nj7GR8Nmv/eEryuqu4ih3
         j+9Eal9AyHXRwHwufxiAU1q1+xO50rneOMogLSRcHImY4ZZCgV7tE2is6b73Zbikeza0
         lUMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532he6w7Re97PKLhe7cgnXAjiwYvfrdSFFB5U22GXIJjalZ+IRC0
	tVGoWdDlAFqU9aubiZQdl00=
X-Google-Smtp-Source: ABdhPJzCW8FuldrQ88EUcOm0PXfue7GVDBFMIZUS1ljIIQQCo30u1D6a9uu7KBDBiFa4bAa9KLLDkg==
X-Received: by 2002:ab0:1444:: with SMTP id c4mr1062322uae.58.1629184926856;
        Tue, 17 Aug 2021 00:22:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c196:: with SMTP id h22ls163988vsj.9.gmail; Tue, 17 Aug
 2021 00:22:06 -0700 (PDT)
X-Received: by 2002:a05:6102:312c:: with SMTP id f12mr1458779vsh.0.1629184926040;
        Tue, 17 Aug 2021 00:22:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629184926; cv=none;
        d=google.com; s=arc-20160816;
        b=RiZLRl1rojSHio+0067geOT41FEU63zzLdngoc4dcNJHruRqhaeeH5JABRRdo1AcZw
         AP2da+Rj2iIvX8FV2QIPI1L206irfU9XmmQt7NfvHyZegHSNvIDWT3uFArCnCWP35rUF
         N2loqeX9AQf+KQV37qGeTo7ZnFJBKD+OU4aP3SS5y8E4iiwUdp4pPEI1OQVdjyG7kLXZ
         X6O4p+vhE8j707zRs1KEVtGNkXj8sPONA83lmdo/yIL8GPupgERLVIiVf3pH1dGzwJA6
         MHDOazaoSenxjGXBIcrAuq0fPaybFJEqvM9aMIO5H7BCxiPvL/O8J7RsenfVLRAvbmBR
         YrUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=c4UTyWGMnEw0ZWcJ906DIQTa2ipbvSTgDIIUVKXBFgc=;
        b=rXEKB5D44UcO/nj0OPACHtIYehJHXHHHoLgWdRBxnf13mbbm5Ba9bPdb2Zk2Bx6n+j
         DynFQpcGhQSwJ36QDHVJ1lDN6WLiMspH/SJfmIpIFABgQjtbYR7zohCysHuVobTFGwXs
         E3g/a7j+lp9Ydr1zblHd1Patkt9C+FUSkulB0HKoWvKHEtc1RbxpQh4nNzOgMhvTIn8r
         YY+0KbtNP4/pqlBDvfqp5HRNbwRqZxGNZHHw8NqeteG2uo21QJm+F7u8EiAF5xgrKCUy
         U1wYI4/lcY5OelA6XPsKQN+anGokhhB537B57L7b76oRQKf2jctl6bzaoY7AuMmsUBSV
         F5Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id q21si100218vso.0.2021.08.17.00.22.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 00:22:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="203164397"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; 
   d="gz'50?scan'50,208,50";a="203164397"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Aug 2021 00:22:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; 
   d="gz'50?scan'50,208,50";a="449167742"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 17 Aug 2021 00:22:00 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFtQ7-000RVW-N0; Tue, 17 Aug 2021 07:21:59 +0000
Date: Tue, 17 Aug 2021 15:21:47 +0800
From: kernel test robot <lkp@intel.com>
To: Matthew Brost <matthew.brost@intel.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	daniel.vetter@ffwll.ch
Subject: Re: [PATCH 12/22] drm/i915/guc: Don't touch guc_state.sched_state
 without a lock
Message-ID: <202108171551.XbDQQl9N-lkp@intel.com>
References: <20210816135139.10060-13-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
In-Reply-To: <20210816135139.10060-13-matthew.brost@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Matthew,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20210816]
[cannot apply to drm-exynos/exynos-drm-next tegra-drm/drm/tegra/for-next drm/drm-next v5.14-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Matthew-Brost/Clean-up-GuC-CI-failures-simplify-locking-and-kernel-DOC/20210816-220020
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-a006-20210817 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/e423aedb52eccddd07fb104ba0a6bed20ff9481a
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Matthew-Brost/Clean-up-GuC-CI-failures-simplify-locking-and-kernel-DOC/20210816-220020
        git checkout e423aedb52eccddd07fb104ba0a6bed20ff9481a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:158:20: warning: function 'sched_state_is_init' is not needed and will not be emitted [-Wunneeded-internal-declaration]
   static inline bool sched_state_is_init(struct intel_context *ce)
                      ^
   1 warning generated.


vim +/sched_state_is_init +158 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c

   157	
 > 158	static inline bool sched_state_is_init(struct intel_context *ce)
   159	{
   160		/*
   161		 * XXX: Kernel contexts can have SCHED_STATE_NO_LOCK_REGISTERED after
   162		 * suspend.
   163		 */
   164		return !(atomic_read(&ce->guc_sched_state_no_lock) &
   165			 ~SCHED_STATE_NO_LOCK_REGISTERED) &&
   166			!(ce->guc_state.sched_state &= ~SCHED_STATE_BLOCKED_MASK);
   167	}
   168	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108171551.XbDQQl9N-lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICO9YG2EAAy5jb25maWcAjFxbc9w2sn7fXzHlvGQfEutmrfac0gNIghxkCIIGyLnoBSXL
Y0dndfGOpGy8v/50A7wAIDhOUmV70I17o/vrRoM//e2nBXl7fX68fb2/u314+L74un/aH25f
958XX+4f9v+7yMSiEs2CZqz5FZjL+6e3P9/fn19dLj78enrx68kvh7vzxWp/eNo/LNLnpy/3
X9+g+v3z099++lsqqpwVOk31mkrFRKUbum2u39093D59XfyxP7wA3wJb+fVk8fPX+9f/ef8e
/ny8PxyeD+8fHv541N8Oz/+3v3tdnN1dXlxc3X2+O/tyefXl6u7s6svnk0+f/3lxcnF6dfbp
6vT85HIP///9Xd9rMXZ7feIMhSmdlqQqrr8Phfhz4D29OIH/ehpRWKGo2pEdinres/MPJ2d9
eZlN+4MyqF6W2Vi9dPj8vmBwKal0yaqVM7ixUKuGNCz1aEsYDVFcF6IRswQt2qZum5HeCFEq
rdq6FrLRkpYyWpdV0C2dkCqhaylyVlKdV5o0jVObyY96I6QzgaRlZdYwTnVDEqiioEtnJEtJ
CSxSlQv4A1gUVgXZ+WlRGEl8WLzsX9++jdLEKtZoWq01kbCYjLPm+vwM2PsxCl7jyBqqmsX9
y+Lp+RVbGBlaUjO9hE6pnDD1WyRSUvZ79O5drFiT1l1wM0mtSNk4/EuypnpFZUVLXdywemR3
KQlQzuKk8oaTOGV7M1dDzBEu4oQb1TjC6Y92WDN3qNFFdQZ8jL69OV5bHCdfHCPjRCJ7mdGc
tGVjxMbZm754KVRTEU6v3/389Py0H9WH2hBnw9ROrVmdTgrw77Qp3bWqhWJbzT+2tKXR8W5I
ky71PD2VQinNKRdyh6eLpMvIvFpFS5a4HZMWdHSE0+w2kdCn4cARk7LsTxkc2MXL26eX7y+v
+8fxlBW0opKl5jzDYU8cLeCS1FJs4hSa5zRtGHad55rbcx3w1bTKWGWURrwRzgoJKg9OYZTM
qt+wD5e8JDIDEii3Deg1BR34uikTnLAqVqaXjEpcpt20M65YfJAdIdqsoQnO25m5kUaCoMBW
gFpphIxz4Rzk2qyB5iKjfhe5kCnNOiXKXJumaiIVnV/ZjCZtkSsjP/unz4vnL4EkjMZRpCsl
WujISm4mnG6MWLks5ph9j1Vek5JlpKG6JKrR6S4tIzJl7MR6FNGAbNqja1o16ihRJ1KQLIWO
jrNx2HaS/dZG+bhQuq1xyIHmtCc8rVszXKmM1Qqs3l/hMZNdtWjP0BD1J7K5fwRkFDuUYPxX
WlQUTp0z4OUNHCTJRGagwaAOwEoDhWUljegEQ3SaYMUSRa0brCsVk9EMJq/Og3WhUKR/Y8NE
4GdsFsg17vAw3q5yZLBIaatasvWgtkWeh3VrgDGw6b5K7Sbhj2TYI0kprxtYDANyRg3ela9F
2VYNkbuomu64IuPt66cCqjtHMl3CWU2FpP0CgXi8b25f/rV4hUVe3MJYX15vX18Wt3d3z29P
r/dPX4O9R3kiqWnXnvZhNHimjTyN5NhKqgy1eUrBwABj461hQNPr8+i8UZARiKr4qigW3YG/
MFXHAsI0mRKlUXtuc2bVZNouVORwwKproI0LDj803cLZcDfB4zB1giKcnqnaKYKQ1EiSRjqC
JSlLRJ/cNUdIqShsu6JFmpTMVTRIy0kF2BwB7KRQl5Tk16eXXlMiTXB13H0LRqUNnuZJdBf8
pRssycr+w7Etq0GUReoWW9zsKN9SIPiFA71keXN9duKW4zZysnXop2fjGWFVAx4NyWnQxum5
p1TaSnV+gz0+qL3786Puft9/fnvYHxZf9revb4f9iynuJhuhemZrQ6pGJ2jSoN224qTWTZno
vGzV0jFhhRRtrdwVB2iWFlHpT8pVVyGO7AzJzuQYQ82y+Onq6DKbgdkdPQexvqEyzlIDcpw5
vF31jK5ZOoNNLQc0giri6ByozI/RUSUfIXOm0uNjBPwSM2yA5QH7gBYbt7AFS195O2g0ZaUi
9RHT+7ywXDLgHbUdy+LNVLQJmoE9T1e1AKlHQwt4L77AVsrRuZwXIzCeuYIVADsDyJHGvB6w
hcTBsSiXsKsGnUkXEeNvwqE1C9IcB0lmgc8KBYGrCiWdhzoMDYpmfDzDLGJDzTrn1GWdceYS
IdCs+soqTbWoYUfZDUVAbCRPSE6q1LPqIZuCf8R8/0wLWS9JBfpBOpp8cPQ85cSy08uQB2xO
SmuD2I1WDtFjquoVjBKsGw7THaI1VjFnz++HAwRiKJdO1wVt0MnSE+xspWVSnMMUMxeCW8Q6
AEBPT4e/dcWZG/xwdoOWeY9x+iqTCff1CHgoeeuNqm3oNvgJp8xpvhbe5FhRkTJ3RNpMwC0w
UN8tUEtQ4I4Lw5yQCRO6lZ4jRbI1g2F26+esDDSSECmZuwsrZNlxNS3R3uIPpWYJ8LCip+xo
LNhbA3TdcRujhfG3sWcYVpUGy71KuXtqFf3oiRhPaJZFdYaVTuhYDx6WMaddcLfeH748Hx5v
n+72C/rH/gnAGwFDmyJ8Aw9hBGJ+E0PPRmNbIkxPr7nxfKMw5S/22He45rY7C7g98VVlm9ie
HX0heE3A8htXbFSqJUkii4INuM2RBJZfFrT3RAIaWl5EeVrC6RJ8jopRCkCXmTeAZZvngHNq
Aq0PUYG4AcBZIboCJ79hpIyNe6cayjV4rwSjzSxnaR9IcTwYDOLGPQWjuYy58rxBPybbM2+v
LvW5Yxjgt2tjVCNbE6aBRUtF5h4YG5jWRl831+/2D1/Oz37B2wU36LoCU9cHq50VbUi6srB3
QvOCLubccIR3sgIbxqzff311jE62DvL2GXrx+UE7HpvX3BCGUURnboC3J3jSalslu9546DxL
p1VAN7FEYnQl8y3/oDRQXFDRbCM0kAI4NrouQCLcwAL2CGDRojnrfIJ3MTIYz6YnGc0CTUmM
7ixb9w7D4zPyHWWz42EJlZUNeIFJUixxjZRhUa3CyOEc2eB6szCk1MsWDGOZBJMCsaalbraN
J7Mgw1q5yrPrzQgXxoIwDuoolxzsJSWy3KUYnHNtSl1Yn6UEvQQ248wq0vrwfLd/eXk+LF6/
f7NOsOO39GLtDgAHlVPStJJaZOuTeG2ifO6ZLkSZ5Uwt4xiMNmA+WRXDPdielRHAMNKLzCAp
YQWMLNoqkum2gR3BXe6s/CynXfqyVnFEjSyEj+1EnJHBVKsc/FzmRUG6sln3oNtlJplnmyzq
FpyBKgI8jCE+HKeMWckdCDJAAkCQRUtdfx72gqyZ9IIqfdnsgAYGVbPKREv9LV6u8WyXCeg6
0OOpFydegeELxmDjsXWLYT8Q9bLx4VK9XkZH9+PI0cDaO+CjN3xxdam20c1EUpzw4QihmfH8
kMb5TE+Xcw2CpgCszBn7Afk4PS7PPTV+L8VXM0Na/WOm/CpenspWibi7yGkOlp36UbKRumFV
ugSXdmYgHfk8HozgYC2qiCjwgoIRL7annhSYQl3ObE+6k2w7u8hrRtJzHb9ZNMSZBUPgO1ML
sBOfOf+TuF6vlmSFU0gJKIMuFnXpspSn8zQwv0XFEYO6ftqo7xDQp6Le+TSQdL8AoPs2XRaX
F4GeBz+dt9zo55xwVu6uP7h0o1zA8+TKvYknoOjQeGjPb0X+Nd/OmRXsAiyeHfa0GFTztHC5
K9yYZ1+cwnKQVk4JANoqxSkgUxc09tSbJRFb9y5tWVOroWRQRsEPRsgjG2cZM9czrQzkUIjG
AXQktIB2z+JEvCm8Ckk9yA8JY4G1HIo3U3PC0xkBNHkEmtQTGRR9oWcOJZUAk23QIpFiRSsb
B8Frzlkbyn2bafGH4089Pj/dvz4f7BXDaBBG160X3CoNQlWzrJLU/kX4hCPFe4MfNWasv9iY
3R78jpmhe6tKC5LuQLZd58P/hWynlwkLYB9VNUC5wIGB3ahL/IO6IYtGwOFPvJAXu1rN7oKk
uFPQeFvHooScpVKk3q3uUDScwFGnDSRYorjWGzgEJh6hSstJFDwZEXG1RQf/mOeSVgIvBgHZ
xnCQpVw4ropB9iLPwWW4PvkzPbH/BRVC6U5rYvOaVMPS2CIZSJPDQYfKcEpJxB8wKHieTEsA
Tn1CBV6iO4qNlSg3ZQ/48Ja6pdfeoGv3AtgMGUO5gIiFwtCLbOvQsTaAGTYeQRPvOx5ZbQMx
eWik9HYcfmtFKtawmygYxY7AywwmDMZGgQuCZxftVRhCCkMT2IjiJHA7ABPV4Zw6t0ltzSri
Vs+MKWScrE7AgPHuqETTnMVk70afnpy4bULJ2YeTaBNAOj+ZJUE7J9Eerk9H0bX6fCnxDtaB
33RLPWWdSqKWOmt9P6k/HMudYqj3Qdglno/T7ng43pmJ+aAEH6tvoAbUP/NPF0hb2Rbh5eAo
hQ5DbMI2OucyeTOzwYx1puLblPIM3UrsLhaMgj1m+U6XWeNd/Pe6/Yhb7EdBljUeJoywWIcb
j9Vw5K2Je/7P/rAAO3H7df+4f3o1rZG0Zovnb5iU6jraNorgBJS6sEJ3e+aJ1xiUiG0N16qk
1DlAfYnvzUMpCvqUd0NWNPD93NIuy/HUFRaPXsSQRu2p2prPu6AALEvPpdt8tBZYG++CIazt
kNCcfh6CJLjWjr6Z/OrNtBFzmJkQqzaMuHBQuk2XtoZVajfiZUq66KYdpAEVygkCjhlxyGum
XczchtrW6lTquXNnOfwtM2WSrrVYUylZRt1QlN82TftUq7m2STqplJAGbNFurkbSNo0LuE3h
GoYhgrKcVJO2mzBFxlsrEbVLhmacD0lBNJQK+unSRgCfWoQ3S2bejZNPDMp9hRZvjhSFBHGy
QZFgmkvAbdHI+BD17JYD43RtXUiSTXfPox5ZtpmTZYebovy4cVW7nAK8I9CZc/NmwncQrBwm
4dL75t003CrwfUE9Nkvh0MbjRGrK5sq7iz1/ekg4Mvm6icEAQ4skDHZzh3/nnrpjeD0Lu+ll
c27tCZ+hdnIvAjgP+qz3FseR1h6G7bOvFvlh/++3/dPd98XL3e1D4A31Ej+X0BSpPTTMPj/s
nRcQmNCU+eqhL9OFWOuSZFkU4XlcnFbtbBMNnbHNLlMfEozDoY7YBxBn520mNyBoA+WG2fVG
/YeG2KYIvr30BYuf4aQs9q93v/7dc0nh+BQCwXbMdBki5/anZ+8MJWOSzqSpWAZSxbQs0mxV
R0KhzOmon7y9w0G/3St0UEWKSC38vZRTGRVlHQ98AuKLh9Uq2nz4cHIapRU0umLoXVeJu1Mz
W2C35/7p9vB9QR/fHm4D+NRBQuM1j21N+H01A4oJL76E9TZMF/n94fE/t4f9Ijvc/+HdI9PM
vcXPsi7psyvImeQbImmHCL0AEMu8nzYFIijCRzUc3COErRXASfA0wF7aSLvTy0aneTE0MKyu
W96j3/gtbO7l6JsCrRivS5on8Y0ToijpML+J2mr2Xw+3iy/9sn02y+bmvc0w9OTJgntbtFrz
wDbgLQOTHzFQHKfkoZXpyjWGrbxcioE6ycnAQs7dTAwsISa9YZJnbJhVaMOwdLjktMEPTMPx
W1znYR/9DSqc92aHmYgmfxIvQr3j700s2dXEBUEDEV9GeRcuWLjN8aWRsFc1QQr4ULPGyg3L
vXQSvHBp4fTfBG8gvE0yg/KjtWbtuBfKMQOh8WsCu/jt7AMSxErr7YdTJ0AGRWpJTnXFwrKz
D5dhKXigrRpctD6F4PZw9/v96/4OHb1fPu+/gXiinZj4adarDnJc0PUOynrgZGOxgxa0uwvi
JnfeetjL3Oh6/AYePFjkhEYTK8wbPHMph5GlvPHu32we/OA1tZXx1jGjL0XMOg3UmJdjcEp0
4j84MlmHkjatrCKCYS+xYfroC0cu7VfhVbUtxfvfGEHU8fKuGfS281gqW95WNq8DvCBE97Hn
OMDmJYuNr5FMi0twAAMi2lNEx6xoRRt55wE+tQU09tlLsKYmnwH8QAw4dEmNUwZF+3jgDNFa
f+0ZFmfk9tGizWvRmyVrqJ/aPeQhKJ3tKoJGz7z/sDWifJWwmTIB8fwsYea5gw73GB9ocpF1
7xHDrQOsDKe2ymyaTCd+PkyxfDY/LLqr+MBytuJyoxNYBZvSGtA424LIj2RlhhMw/QUJd68F
pkKESVQY/zDZwI25Gzc1Yo1E+u8z0WS3RBi3i232qA2OUyNpfKhUwT1d0i68YEJLUTIm7sdY
OqG0h8hmy3d3hOFgOj3TySSG4gOOrp69fZqhZaKdyafBvGj7pKx/FxtZDEVThIVHSF2qkQOH
wyoTxhE7dRR7CTvncztd4raWIIPBfIZYVQlGOXgKPsMAJ969kcTy7tHQpNcNQ95OpkwySSh4
kac64fkRKJ9tiKtsMZ849Z0yrfAeBK0O5jz5AjDuI9KwDTTVMpwAqJP+RoWmmDLoyKrIWgzY
ocnCFF85OQ5K5A1ODRSH2HQLENGuprK5gWA30QX0MvFCy7rFt3Ixte/XGq5n0T9L2kB/paXA
WDWMDwB25vSBt2aKFV0g+HxCIIF1G3wg1NG4pbH5DJPVKysU3Q3ZwDrDMM0wHS1UA3aw6R8+
y42T03eEFFa3WxqtHiONM8KXdudn/X1FZ3yGY4oq2c3Hnb3T61KZAZulcldP8g5HnBUq7u55
XWdZY1I+l8TvH+8uIxlOikm3DdnqEnYVbKDJxrDQNRXrXz7dvuw/L/5lU5S/HZ6/3IdxI2Tr
duDY3A1b/yGF4E7kWE/eYuBXLhD2siqap/sDkD2IIGw5ptq7usqkpivM0h6vQzu5UOgB25Td
UEG4ktBxm0fKevo20+dqq2McPco51oKS6fBxhnLmGqobfWSU3Zyit+UOiyeOTjl6QzOtolN0
NpMi5nN9mMnT8rjOr/5KW+CtHZ8ISODy+t3L77en7wIqajWJoC98FxvS8X3QsaEMjDNPgkK2
8NFPyIindIMvwxR+NGB46aUZN+c5Pl/jwuAlOcz2/cun+6f3j8+f4TB92gfzVvY1aHgjlXT5
jsNPQPGpwuufj37qZf/GKlFFtNB+rSEoR8e9kKyJvtXqSLo59S5je4Yb2J74eplniN2VrAFt
8csvZNsk8fCo7QT1Yx4/dGYhMGm2jt6yINl+PqbX70GORJRhiMBNc5duD6/3qLQWzfdv3TvP
riXzCMI6LNkaX33FHrdwlQk1so7LjXE/t3iMYAc9ujPjHzEe7O8ZlGG8xo0vYbG5hrVf2hDj
k1QnvgH1mLAZBhngGv+LOw5xtUt8PNwTkjx+Q+H317c4Pnq3Lpcbk1DVqROBqLrtwcxko54n
eG689bWBXcmdj4EYg2IrW0jown65UWD5Z4gGQczQhriJ+X5KFkubnqeEleUmXnVSPthsjBTj
pW9J6hqVEMkyo7qMIopBrf59lk5ojn+hw+l/x8PhNakReiOhcXfOY0KCkSP65/7u7fX208Pe
fKJrYRLjXh2JSliV8waRtiPmZe6Hy8yg0OcdvqmAyHzyvrtrS6WS1f7nAiwhfKfrtN451IM8
zo3bTIrvH58P3xd8vDCaJmxE87jGkHyXIsZJ1cafRA1pYpbFQb09JVI0+eiWjZHgN0wK1050
wxo+WxBssE1T6bm6WKXbHYLNujGibzJML4KGE7R+brNdgXVCYo5JUGay8yTFA+t5nJFv7KQm
+qYDVJwAmneF3L4cEOhf+TENJ5ozxltVLImwFz3jvdmPsWTy+uLkn0Ny9YxfO7Qbo8PAN2QX
wwNRbm6feLr+ISU2dc49g7Amfog29Z8+w8/ZoMRAc6+hsDC4mcIiGB1R1//oi266Tod+TMEA
moQcFhH+LuPptbNV7OfCftz01UU8zf5Iw3GQeqzCMn77OVtl5o34HP/1u4f/Pr8L272phSjH
JpM2jqiizOe5KOdHEDArHhynCNf1u/++PN4+PDzfTcY5fPgmloD2/5Q9W3PrNo9/JbMPO983
852p5Vvsh/NAUZTNWreIki2fF02apG2maZJJ0m333y9B6kJSoD37kHMsALzfABAAVSbWQDrt
6MGqxmYVppXSELXrjeDhGgW83fqLB4sXiXrPVdDqH3AfotEXUWnwNHNhaYGApbV9Ivep3K45
XC8YG4+69YjNvY2Vyn0AwtKY1dqBtwEe409p8PNMNqfaF8q2PsYO/KJiWhtmnhcHqICjRxWM
lqzqDZy7I89/qvXJMjaES8qevv5++/hDivjTs0/u5gfmeJYBpI04wbpaMm+G6ga+5BFuGQQq
mJt63FYTj2tBXKaKh/HZI7QHhodLaqKiFRB5CxXUeGa3jhc6yAGE8EKzkwQ9t6/umVHjGUlU
ZMaOrb/baE8LpzAAK1tZX2FAUJISx0O7eeERhjVyB9wWS+sGqaamaKs6y2yWRnKPciPLD9xz
UakTHivcOguwcV5fwo3F4gXAsLQEdyZVOCmB+5G8gF3YM9pjc00gTEgHVNGiB9vZ11Hhn8CK
oiSnKxSAleMiqjLHpy2ULn/uLsmWAw2tQ5NT7PfsHv/9vx7++uXZ3NsBk0YrwbE1LEd2bU/T
47qb6yDF4eFzFJGOcwIOFW3k0alB69eXhnZ9cWzXyODadUh5gWuzFNaZsyZK8GrSaglr1yXW
9wqdRVIKacF7rzoXbJJaz7QLVYWdpki6ALWelaAIVe/78YLt1m1yulaeItunBOd39DAXyeWM
5BhMLBRGfVkhJ5YvGRigwGmVkhKz9YVVUVQF3HsJwWPLaKJPXezP6rpDnrdp4Zz1JrG+w8PV
R8UFpNyVIuppAYf4WZ59uvSEzZKj67Gsq3DH3mTuKSEsebTDZ4DaTgQel+uYkKzdzObBHYqO
GJWp8ZokFGe9SUUSj+PZfIVnRQrc4qzY577i10l+KghuNsQZY9CmFc7qQ3/4I51FFIu2EmVg
KiBF6KOUHv80ul0OFFH6PTSzvGDZUZx4RfH97IgwHtZKguDa3oMiLTynow7yhRe5F34WSdc0
YnhjgCJZQMRc2Oh9VHdl5S8gowLbXgvgkUFzLA8PahptlIXB+paxiv9oHs3QfW3ZaPUYGMUU
lgahscPjdRHa1EZSco9R8kijNxpsb1dHOIQPFGfHrC68Mz4ULwM3A9pNxuamb76ePr+c+zlV
s0O185jDqYVc5vJkzjM+CcHTcfaT7B2EycUbs4KkJYl8feJZZx4NPYll55S+jS2GOFBIn554
yRJtiTYWHO9gHVt2xLq/esTr09Pj583X280vT7KdoMJ7BPXdjTzDFIGhze4gIIupOyYVAVJJ
eaarW3zg6BUd9P22sMd2W4yKdWuQtkgYQKM3uSfAICv2cqrgW2EW4/1ZCAImu34uPMZx2Bne
73UQAMdWMslFIatnRRlT+wUsv9S8VooJT3K9R3YQVu0hqH+/m/WrIHr6n+cHxLZaW1NoQ/Wh
svCNVLQLPGRcd7gfXfhrYQGVplHrBsf539loQhogQTcpzoip/e4AnXWhDW+l0E0dUuE4vnWw
Cx5sA4nyNhHkyNAMOm+zutA0+DwZiMcghJ4S2yKdlNNGnvWsE1TYilaOCcIZEF9ccsDd1bw8
CKfoCytJOTBVNXZeA4pU9rir6xvYYsZAjVZWPD96cpKnhUtcEPxoUOU4Nnnj3EKBjjOii2l5
mPqmKgW3CGRhGCRir14H0HeVkvrh7fXr4+0Fos8+DouvW5Kfz7+9nsACHwjpm/wh/np/f/v4
MvQ9ajKcnNkendR7BdNZc1LxkhTSN0MkV2Vdb16qhr6ReftF1vv5BdBPbjVHDZefSh8h949P
ELRBocdOgYDik7yu0w53s3gPD73PXh/f355fv1xHIpZFyiAVPdKthENWn38/fz38jo+nvURO
HWNXMTyq4eXchiuAJrFvVABgXU11AKXdgHjTJIsccnumF5SSMrInTUo5ttUDoS68a/+3h/uP
x5tfPp4ffzODlJ0htMtYgvps87kLKTnN9y6w4i6EZQxkdDahHIJtWPV236MoScEjmzvoQG0l
+O08QBraEyjFAYiyKgr3zEV3t3aSCa2aVl11T4p1o0uOSesUbKhMhVCPo1L4z7D6KkOWljpM
v456fv/+/AhX+noGPbonutHk1W2DZU4L0TaY/tFMut74kkp2GTMp6knKRpEszD3GU+fRDeT5
oWNNbnJX411rE8I9S6y7cAvcmfUYj7ocq7SwPbV6mOTm6wzbHSWjmkUkscx5i1IXMziZqfd9
vrsuay9vcsf6GOscn5SZm3V334PU7UgEcc6NS/mmKslQiNGQMZUyUB86YWgVSoBaz0wS9Ddj
Vh17RnTqJda1cZAfiAoGcDRv+HuZQ5ln4TgHaowOmBhFJT96VEEdATuWHsWcJoBLni4bKd2C
oTR2DqbtXS7sFzdGHRHkoB3OunzUNoMx7h3aebuj5+H7iJwQLbOucs/jOYA+1gkEqQx5witu
ml6WbGd5nujvls/pBHYKJiDbj65Paz4EAx42yv5bzcfYnK+AipnkWofY1bZN6XTFDn68j0rW
sM7FdA/RCgR6HJpJDOksl+IS9QW+3WUCNfOrrONNfqpBEZNNdLTper//+LTNsCqwfb9VtmDC
zc0wpvNokYBK9qcKzIVQTWzK+vJVtWr5U3JSYKmlQxxXH/evn9qF9ia5/99JRcPkIJeEaXah
gJaFVmxGfcti+5Eq+G7Lk0e/L5G4fjWOWh9OiDjCLIFEatcEaprnhVN327ICIINNHkRSU7qw
fvstSfpTmac/xS/3n5KV+v35fXoaqkGLuZ3lzyxi1FmPAJdrcuAp7GGPOegc1X1Kjsb5BypY
XiHJDu2JR9W+DezMHez8InZpY6F8HiCwOQIDF1BmRrQdWpBG1htvPVwefGQKrSueuP0ge9zT
9tIMJKWWUChYVllMgH+4tJxx//4O2rIOqPRKiur+AcICOWOagxqm6XWQziyCGEnpZCJpYOes
geP6mEwbO2SZSZIw41lHEwHDp0ZvjCyoZnRI213TuF2p3f8h0EqcEIE97KZ6MY1u182kcznd
d0ArTybCeYmGu1RddtjMltO8BA3nraqDm13Gqq+nF+8ulyyXs50nzCd0Cyoqq9qrQBHHss3y
0i0TxFdnlo0i5pUJop+CeXr59RuIVffPr0+PNzLP7nDBxDVVYkpXK0w0UJ2TyMq4U2UCkn8u
DCJtVXkFYb5A5WlasnVYeeCLzuwlmG/M7NT+PddnmdYUPH/+8S1//UahsT5NHqSUs2lneCuF
EANY7ldVm34PllNo9X059u71jtPqdMkk24UCxHHBVnt7xgCDAnUk+nN7KnmFJzOCs1qj1aMd
Cw2EYt7AXr6bDBZIy13FOnnq75/kIXwvhfAX1bqbX/UGNeod3Cmj8o8Y+HS703xKR0mMupIM
eLFaLSbbg0KlDfdEQO4pLkbZHqiInGpk+n5W+vz5gDYN/hH8SqZKpr9MIoXqQ64iC0/KZpTK
ifebnGqGAshNL4nsseuhoGPZE8nfWvarOIFkPCazyCQL3bvC3koZqeFwtwOLQLUjKaKovPlv
/f/8pqDpzZ/a1gtlRRSZXeU79eTtyHZ0RVzP2G5SHfq2WxWo3NG/52ikJifmmvb0tR9U8AFa
803UHiYlUm0uNyqcBmop7cb49ZdBo3TsHHssqCcizWZzu11jZchddXkhZZY7lc4sgVTZhymR
MpUyshTZESHi4+3r7eHtxRhjLohlaCY/IGLRBKBil1mGhhJha+s67x6zTr3DT1YnCXzgt4Qd
UYzft8vmc08Isz4lqJKFgGONF4t5gx/xPyantJNLIpn7iwRRGfq9llQzr+BFg8dJ7/G+GtJI
MkFw8UujoycGHmgxQbZnlceQQN1DXh2Day0shd27+oQ9pmx6EQBQ55Qd+uloOhwrQm3JBEox
U9YDzP6UeoLEK7Tn2lPhvLZECknKnWs70u+WZoOGk8dQE/S9Hq3mq6aNCitG3gjs9B6jxqdO
0zMoNJBVzkOIGmS+xLEnWWWzzBWP09YT1ZpTsV3MxXJmSF0so0kuIFY6PMXLqe3kui9anmBb
FSkisd3M5sS8zuUimW9ns4ULmVseflKEEjm8GStxqxUWrrWnCPfB7a0ZXayDq8K3M9N9O6Xr
xcoQHCMRrDdzs9hjp+vUjiWeu8C97FL0LlBolmscplPbqOeH3Ite9EbGZ6bdwANFTSuimJlM
Aajty0oY7aNz+4DS33KyyGqRsp0Hq1nP+jFWgLg0YUA0XO4Cc+s5ug6sA5ciVezwKWnWm9uV
MW80fLugzRrJT4qM7Wa7L5jn8YyOjLFgNluiC8xpx9Dy8DaY9XvGuPspqNdBZcTK9SPqtOj9
+ruYY//cf97w18+vj7/+VA9xff5+/yHFhS9QVEHpNy/AMT3KBf78Dj/tgGT/79TTtZBwsYCd
AN+4wZRQxREvMFMLLXmmzH4rpgfKv0tp2qpheLp9RDFppFtGx5Ra5TG6xxmfkKbtEQ0HDrOc
JBTi2th5DfPfJ24P+FpYbx+FJCMtMdgNeMfTvPg4FiQzr6w6QK9UHtduB5/IQb3Qbm71WkIH
o7ROtJwsPeVSneaWGrckXMowVVViijdIYGx7kDyy/bEUrOO3JoetqkxXCx12+l9y9v3xn5uv
+/en/9zQ6JtcWf82XCp73sOqId2XGnrJh1qi0cCefdodmiPFVEOqScNxNGmsku4JHnFDEST5
bme/Eg9QFQpR3Xz0y131TtUvzk9nmASEhIVhmVQgptPxsim4+vfSoLYCws112bvwhIfyv0m5
Ogl2oT2gwTTCjsatUWVhtKVXiTjNd0pL8pN618vfyggXLbEVMHAL5n26gGOzs/QY+Hd1dZ52
Sk+LZZUca5hDXB5wk8I4EUmjQlsY7JUE2XKHKvNHkZtBNxWsSIdYndSwyfj7+et3WdDrNxHH
N6/3X1I4vXmGdxl/vX8wIt+qLMieuiWleQhhTxJlV5VwejbNA4dEqKLDJOJyDwrWc0uPolOD
KYPKw5dU8MQ+5xUwxo0GPQ9uaO7Xx0zGtR0oS3/D+pnCiJjAlOHkzlITdhjrQZ8ONq5tHWyA
MXYTLLbLm3/Fzx9PJ/n37+m2G/OSgUWokVsHaXNrzAawCAuLZxwQjgX5BJ2Ls7nGLtZvOMYI
ladtDo8qqDtXU91PKLz/k+a1YGFldLKsh34yzjGidPmhMM8in+uCkjBQDLRlV5MSnw7sTkXr
vOAd55OzwM+JeeRW2dRj4rPBL7yoY+PDgI7VY78YSs6ljnB5b+fxiZD1E67J09guOJRyj+Vs
yb2OB1WN113C26MazzIX8kDAMz46AnwP1uI7+BoazgVZ4hONSen6ZfQDDUH7MjOIF1TpKIUZ
yastqC1vsmSB5r6gqwD31DhKyYXhUkF1LvY56gRs1IBEpKjst0k6kLrpgkV5JYMds1cLq4JF
4PNd7BMlhIJin1raByE39xy9tbeSVix33ipgmUcL3jH7lbjWiJT8sDNlkvnth+5aWovRk5+b
IAi8eqHEtfM1ZFyZ6wJ34cn4Gh9/CNLd7FDjE7OOcrfJKm4xveTO80aJmc40mTbh0DO5w10k
Pu+jBA87DgjPSwkS4xvQKzMrLHMSOasqXOJuR1Kagv3Nw5FnDd4e6ptsFd/lGb5+ITN8kern
SUD/4Et4ZfrJBlPnPYoww/hbIw0kcJ68lzszpqmxEh15naLTge5ZImyhrwO1FT72AxrvrwGN
D9yIPmK3FGbNeFna9xpUbLb/YHoyK5Wgub0bcMxgxUyiYqXYUT4aKcgTfFyjq9tKZG/K2g06
4ZgWwUzVeXSMBSVzXAEt6izyuBwY+cG7icximUM2v1p39sMOAW+gdMh6M8MdaoBnJNnX5GTr
Y/b86njwzXzVNGgVJq/lgdoMO7nh2S2Xbubx6d3hTkISfvR4Xze+JO52bmN82S19NZMIXxrP
QRSnwQyfNBx9PsroW/WsIIR3NfvtZ1RrZqYipRSSbVuiY+pzfhMHj1utOJwxs2OzIFkKyXL7
Lj1plq3Hv0/iVhORzcSK00V0fLreXfZcPIjNZhXItLjO4CB+bDZLny7PHYhuFZq8x+1yceUE
1UPIrLdRDezZ9ryB72DmGZCYkSS7UlxGqq6wca/TIJwREpvFZn5l/5Y/4VLYYujE3DOdjs3u
yvSUP8s8y20frCy+shVndpu4ZNPAITaTDLN6/dflPKY5bBbbmX0GzGee5wkl6uA1NKmTqsSd
zU/RZvbP4ko7jjyyOUelIIpwuclImB8cH61969vZ4AGqKztLF8SGZTueOddqRD3OgmZ8ZmBp
HvMrfG7BMgGhldEpf5fkO9vM6C4hi8Zz632XeBlEmWfDstaHvkMjhpgVqUHDn1q87R2Fix9f
gIgyvTrJyshqWrmeLa+srpKBWGVxGcQj72+CxdZzJQyoKseXZLkJ1ttrlZCzgAh0wEpw4S9R
lCCpZHwsPbqAU9UV15CUzHz9wETkiZST5Z+tZfeobyQcfC/oNclL8MT2+xF0O58tMCtEK5Wt
8eZi69kwJCrYXhlokQprboiUboMtzpKzgtPAV5bMZxsEHgEIkMtrO7rIKSiAGlyNIip1aFl1
rVKl97s6rHVm7yVFcU4Z8Wjs5dRhHosRiEyQec4sXl+pxDnLCykJ2nfitG2SnbOyp2krtq8r
a6PVkCup7BTgtypZGQjWIjy3FZWjIpzmebRPCfnZlnvnsSsLe4So8LzCLsqNbE/8R2ZH/NKQ
9rTyTbiBYIEy9kbm2mbAzLyzIoAtNeGeCD4dDWm4f+vtaJJEjoePJo4ifMZIvq3wR+oSofsU
8XjI7s++eAWp9kA8cuy5dyowG+jBG3WCNUpMPMHMigKHC1yIrUXYhdPo1fcj/yJRUpDG+xCQ
BykgetRtgC7YjgjXtcjAl1WyCTxPQo94XBsEeGCrNx52APDyz6dlAjQv9vg2ddJHgPE1am1T
fQJjONukS35ecNiX2NWEcUQzTU0HehNlaNwQbK9KQVDOS2QuqhS2dwlcchLPVCu5SFeYKaeZ
6ShlYkgmmVxvn5rSFIIuSad2wXADt4QhTcsEE2He55rwykP/4xyZzJCJUqpfltm6qRNi7A0X
ay9Pn583EmkafZ9O7uVQty9YCYytPW1AkY3vePXPvBJ16/HQlMth6V4PjhMArJSPXrS+zXOM
0o1d0wiEMuozROS1dJz0D399/+vLa5bCs6I2Bk19tgkz/e01LI7BJT+x3Go1RgeSPlhuSRqT
kqrkzcF4CxP8AF/godThIv3TqUurLjwd+2AbA7Fq0DCTDpmgJZOCS/M9mM2Xl2nO32/XG5vk
5/ysa2FB2REFagd5o799ziw6wYGdw1yHLOjgPUTukcVqNZ/5MJuNF7PFMNUhxEq5q4LZCisE
ELeW+G6g5sEaY0wGiqgLM1auNysk7+SAV6aiZL0M1jhmswywJifpZjFfoPUE1ALTDgwUKWlu
Fyusv1IqMGhRBvMAQWTsZL1TPiAgXhto2ARaw06cw1VlA1GVn8iJ4Lf0I1WdHUJMAB8o+J3Q
5iOTzk3nbZXXdC8hCLqxp46xbgwbBfiUy3GOgFqSWD6wAzw8RxgY1BXy/6LAkFLUIEXFKZrh
gJRSmR2qfSChZycigFEuj1lovdE44lSoZ+f9vxHLEjii6P4Szl8l8CJlieMINpasBgZ9rHQk
iiFAs68Gx9Q3WHidBp8WCyoFy4SpyriYkKar7e3SBdMzKYgLhN6wnfttuGsA72BVfXHpQBHK
uem7idQEMLdC1H1U9wkNgllBJtPyKJqmIWRas3HGOfa6HirLRnU4XiB8rTHtekhLMpKYL8qP
iIV1Zz/CPfLYQEDz0KNKHUh28Ryz0B3xpclGWuA2RTE1TxKWmi4PA04xyoRiKMEjduKZFWJk
QFZpRLHsetu/abM0CgbgcvM7uvkCu4oZqE6kLHmO1SwlO3VJg7UIXk7Jy9CHCol9hzRi4RkL
NOz32CEnHskPJOsfe5bta4JgonCLFrcjKaOogm8sri5D8DyNG3weitUswHR9AwUwVU6AlAHX
FAQ7yIzOTw5y1kj2JEBaVTQlRbO9O3GOrdGBIBacrK03zPUKVbGSPbHZNQFsi5qB9DOj3FZG
auhmU6SbWdPmmRNM3qIi0W2wbNyNQ0Pt3bTDVHS+7nN1kWFKApPj6zjXRTNrw7qq7FsnjSyo
KA5o1HndNBosbjeLtjiVQw42QSq5t2mZ8nxwwqID9MQhRHnWhpX92GLftIQIhfP3VsVVYJyK
zd28ZXfIlZZ16Am2qX7eukAVClHKLxPqM3OkZg2maTCbZAKWlAmBV3v36iCYtgteBx470N+2
ppjLgS3YpNy6F+AmYxf/H2NP1hy5zeNf8WO+qs1G9/GQB7Wk7lasgyOq222/dDljJ3HtTJya
OLvJv1+A1EFSoDoPczQAkeAFgiSO0Il8GJ2GusWdiZJQ3cJH8ENz3ZWlFpVqwZwr2EvWFRZZ
7CXO2FD7KBVZ6oQhPUURF/kzzqjgAdR690KnB5lWxqX2qQUjwNSKqRoOnXBaVwZKsxellD3S
jI+8KFvPgsw3rC80hEVdGMssSlgaGJoB/rfLVp1f9GcvisKpi2l0rKDNuSaSjrLN6dY3VbAy
JBZAmnOBAvVsRb53qBOYQHnF6PK0/ojcPEaUtyb36cvPEUm/+IxIWhuSyFCzWRSH+uPztxcR
LKz6obszXUbw0X4ZDcLZ3KAQP69V4gSeCYS/dSc/Cc6HxMtj1zHhLOu1Q9oIzSvtSCahdbUj
oH32oParBI72p0BOX4XLWrjX0NFmx0L6fDwZmldh0xHTcpdmcYxH9WTsm5l4gl1bHoa0z/RM
UtPzYcaXzcl17mm7v5loD9u2QTLeKlIzZHYFoK7g5F3lb8/fnj9/YJRM02l4UFNmnlW/T2lv
LlN91XN64plyIqBgIFxAsC+Y4wNJvYAxC16heVRhWp00ubLhUalVuo5agTJP8o9eGC19WovI
lBhAzkyLO4a7+fb2/GUdbEIeU2WeplzVOUZE4oUOCbwWJevRslGk9DR6TaUz4iWoKDcKQye7
njMAWbzQFOo9HnPu6UpWva5xoDkTKYjyom4LKqbtrycR1y2gsD0mYW/KmYRsXHkZSjh3UTq4
1o0PWp5XHWXruH7wksTykq6Q1Yy0o1dJmmoOcNO+//49woBUzBXh6rh2vJQfY9NrGZTHrHpC
TYNi52CmnLvbNSj0QAYKUBlxs/6fyMyBIxLvkapPqyIl2DqNeJ63F2oaS8TtlvLcjSoeXy50
i2a0HaPrWyMWZuGu7IuM7Idd3kS+5UFyJBl3pp+GDH2UbJvPQohEKyYUHF4Fy6i35rpRiXbZ
qejxLOC6oec4Nq4E7c2eRYMykq0JYR1Uza1hgW3R40SV7TMnas+81QcAW2a27xnYPYdpx0bW
zS5YkFQPkNRVu6/LizmMqwnLTEVhDuulbRAGs630FC6MuNBNd8nkC25NKhkCz5tMz3KMnsPi
aeOgNb29HovaYjN3PZCLuu2eOs1EFQPeaDv98TyFZ10Nj0izrbsFKJh86EVR5lXoSMl6cemm
7M5sPXEY0163Rm8yQnJVrKlAvW2L2pKWrtmNRhvyrm+f6fdzoGD0aLlIpkwdat1KjzH0sKIN
mHjXPjIyQMCDzHIw0cmohAemjivLk9iP/jagLaglI2QxayrPjcWEqj3bwvHAR5bBODLVsw5/
iQSxBGhOnLmgsvaQH0u8jYMtXRnQIYc/emoIAaosKaMkTlyw573FjkQlEsYUN6lgVVdtSR4u
VbL2dO6MSydEt2SuZcRMphwaOVWZRpD39L0v4s4Dumb33YW6gZt45YPvPzEvMLpZwej7HEiW
XI9Se6nq+hGWrUwDtIarbZppLalDBF4+Jiw5BVZHCOU8K9YYnBROmIqF0ZkSNSIM7yvDaK8N
CbycsB9QGy+zTMDodqBpHzTPcISKQx8GhdMkCU4/EbiUkiOIPMJX2ps7AJvTZdICm7++fLz9
8eX1b+gBZFHEklRzL+ifXeshD3wnstSGFCzP0jBwVzXifd4a2NSXnNWFOiSbLOkcjXHN8Rhk
4Wh6rJvHIPvy6/u3t4/fvv6pDQNoIYduZ6QWHMEspxzOFmymcm/UMdc7n3AxrvXSwaMl3h3w
CfDf3v/8oFNJaJVWbuiHel8KYOQTwIsJbIo4jCjYlQdJ4q0w6Nm66pYG3/Wp1x4hxRLHGH84
rB7NMireWN4HAMmq6kLZdgnpJ16bDEZHILQhTYy+kc4MsCudTBZ4xcMwDW1zp+KR7xDfpBFp
PwNIwxx2BIGYXMkDXO30+PJc6DiL1Pjnz4/Xr3c/Yzz0McTtd19honz55+7168+vLy+vL3c/
jFTfw6EOY9/+x1y7RcmrQysCD20GBzVpSSNBJCoPnrNaLWVTnm2T4r5smJpcWki6ycpDHfk8
m1lc931jZE9RkLNZrwzi9TcI9d9BxQXUD3J1Pb88//FhW1VF1eGD+Ul/SheYmkxsIaQr8yLX
mG1LKEytlL7bdcP+9PR07XhlkydD1vErKEvmx0PVPlpfYeUkw2Ce5rWg6Iju4zcpSMdeUOaR
OUmw6+kcX6MCmOU7U9aRcs0YNTo5lEDVmp45g8boZhQGA8FhXoXVMIngZFbHvIUEhfYNEltO
AnUTV77zLW4fpGrNmXqE4eIoUPHKj3TDsSOdolFPpQg/N+x824EhxWpGIOzzlzcZaW291WOh
cGBDd7V7oSTT5rcLlbiLpJmdSIhFoWDxvEBy+SumlHj+eP+23jIHBm14//w/a6UKs9O6YZJc
J1VSygORlvButJVHI0prttqPd+Di9Q7WDYiMF5GPAeSIqO3P/9Z6SqsJryCoXtCJ7vXVbWCr
Ykg85tN2tGvanBbiBuG5oRM5GGSd6bQ1eQKsulopomrx5Exf+8OoGn4JI0YkJREd6X7/f2+j
7GieYQNTpfKDOyU5RUvYTrksWzAF94LUsWH08JUqzn2ge26h4Qc6cB3BsdoS/uX5f/UcJ1Dk
KLiOJRmoaibgWhqvGYwtcUKjJQoq2SoTKVzfVmpkLdWjHiBVisQJLaXqKpOOol4odQrf/rEP
B1JKzuhUCc1W6FxoRJw4NoRLI5LSCWwYN1Y3SH1SzBJBJIoExUe9xlCAkymKJicUdF+KfBSU
rJlSULL6cf21hG9lclTJ7BGBWZFJUmospJ0BZpk6qY4TEiy+Uo/7fDBheGA94JmuYKETaQeP
XTbAyny85g+e41JK+0SAgxc51KdyvG98qo67BvfWcL7TA42M3AOY7Lrps90nL76QydbmCrPU
8R2CkSyVlkirMpvs4saGI6+NiFJoNRLPvVDtmgxjiM8nkoozrGE9olBukqqhjSdEzZLYi6nq
pOc8rYDMXw954EYeFddVqdkNwjheVw3jEMARmRzCZucH8UapA+NR6KTkWByy06FE1rw0oGTe
TNfVxb7ix/U490Po6MJw5rlI05R0fBJLVrnrxJ9wNChM0KgqS9cm+RgoAzQS78VjvOhdNZwO
p/6kXqsbKJ/AFXHgBha4lklwwTSuQ6Zk1ClCqlBERDZEakH4Lo1w1fmiIFLYN2nOB2iUxRla
o9luHVBEHlUzIMhQ3gIRkiwdh1sMcT/eih+e8TyOPKqHLtV1D+dlAINuVq8J7hMMcUXAXYdG
7LPGDY/mdrAELGd1aaTsWJjcWb3QZxJWWt7mR4LhwohmwnGSZ1V/xbRgdizjxLoQz1BjU1f8
FDzytjnG8OsebU8zk5R1DWKKfv4eSYTBIMVBFd5fs4YM1D4NSOyCkrenPkZU4u2pSOELSejH
IV/3y2T4mhU5MQl4fmwKAj6AUn4asqEkSjzUoZuoQf0VhOeQCFAPMhJMrLxjdYxcn1zzVRiS
zubKBCnp2V4NCSFefsoDggFYEr3recTax6SDsEFSrMm9h9KSdAqCixFhmiAoyJTsDbETkzmz
VArPJeejQHmUXqJRBITgF4jIypIXbbGEuoFHdALCIyciqhMYl9hOBCJKaERK1+G7MT21MF1A
tLkRCgqf5iOKAs9a6mbGCEFhZ5Ye+SZnvnNDWg15RCotM55xz08iQgg3Zbv33F2TzwrOmoE+
hqVOqaXzTGgiQkGpm5iGUtOsiWNyjjUxdQRf0Am1cuFARELJihNLxen2HgIEmwuqSUke0tDz
A0uFoRdsD7Ok2ZI70m6A6BNEBB7Z1HbI5f1JxW25X2fSfIBFSN+gqTRxTAdXVWjgqGiz4V1o
UmdrVrcsbwxDrxHxdBmu9312X7bkShXeBSm1/lmzMmMZP7E6+ql6rXej3buyvjIyN91MwbJr
zyOHGMI9Z1f/kWIOM+/k+z3bZrBgPPWcjH7omItqOTvBQZNxRts7jmS9H3qU7gqIyLEgEici
zitVz3ioJf2ZMbyOElBoqHXkwVE5ItcR7qHbQmPI/YTeKHEzCX3n1p4WkQ2RW5TjWgr2nNji
FaAThdsyQG4VyZYQQJIgCIgphNcEUUIeDhvmJQltqK6QpPGm9KmawPeITZo1URwFQ0+urEsJ
W/52z3wKA/6T6yTZtsjgAyuKnIwEoOyEgQPK0JpHwIR+FKcUj6e8SG0RglQa7wbNpWCl6203
4qmObp24+G4gX7Bm/HGgliCA/b9JcPA31WpA5FtLYXzhJ45nTQmqF7FuSzigBI5PVQYoz93U
MoAiwttJogUNz4O4IVfehNvcrSXRzqd0Mzg1hZGwNm4sCpKg8KjrLI3CJ65P+DBwWPFUk5qI
UpDhZOd6SZHYbnh4nHhbwi+DTkxI+dxmnkNOfsSQ16kKgU9uBkMeE3JyODZ5SAinoWGuQy1M
hBPKlIATwgbgAS2FEXNLk25Y6G4rOBhpLWcnPHtudApQRUmUUWycB9dzt9k4D4lHPuhMBA+J
H8f+gSoeUYlL+zCpNOm/ofG2LnYEBTEyAk5MXgnHuy182LTwXsPmZnFgUWmi1tZ4WIpHOj6z
TlTeohLvKtvyHMPd/0vzo3kFoimi7SZuuHdc1ZlO6OV6PtcRhCGY0PKb6KiJgg/ZUHHdI3PC
lU3ZA/PoBIWsdPs9Xnllj9eGL6nWJ2Lj7nsCYypp9ES/Dn2l205MFKOJ8PXQYaKukqEvNW1C
Qn2xx/s/fszIjBnUB+ihJyMXrJnVC6SY/fdMIuUuaw/irw3eVjzNJRXled+XnybKzdowZHxm
ppYYAzphsni0QfpKOaTJbHlifPM6U2/KQAuciz+X+aAGjkAcu8cHxIYp808rk3f5tRhA8nd8
b7jh6ATL98vKAAo/cC6bfCPBunKxdCa+e91THz+JtPUyvhNv1rn09thZ+ZEaE41myNEuuKur
UQLNrpTUYEyfPmRDfizU2CkTZOXUPCPa7iF77E60IedMJX0dhHk0JlmB9UiJ7Jkc4z8Jkxwo
eFnpM5o/cjVF8lJLL8yVrqwvp4/HMX14/vj828v7r3fs2+vH29fX978+7g7v0Pjf3zWLk6mk
pQRcH0RVOgHIxvrHr7eI2q5jZB8adCyjEx1Q9KpkGcvXG7yKpLbsD91+mMskh2+MNkDRKBSR
r04c7ePI2/p4udYjJl6RAXOFHgFW2hBslDiGX10X91RVwn9/jZnc+teYMV8KgSkeCCDem/oX
qnIRpWINzvJPJ8x8Jls5AYvzGPnKaHxWVw1afSOcHCwkiF3HtRKUOxAJfhJYCcR7T1Ka+Gm6
MIy8C4JFfQfbYb72geUeOQXKU99NbaEk1S6GAo12VrsmI/NhPmR7WNomdeQ7Tsl31jZVJR6L
LPVDW1YFImyOEs0sDkj4eON6+/XHSWzl5Mi2Zq40jtbnAodT1LqDRktcWzXiDtX1rfj2jENI
oiLH2lUw0KCOrnnZ5bEXrJiZFhA7hasv4BCLJ03fda11AYkf72LZl5oS9KnBjZ/+DE88WvdN
WvZKjCR+Esd7aw8BPiXw8zLPj0/GOMEqKBkcvn1ilS/ZgLVv2ip1/IsJy2PHTUagVJ549v3P
z3++viwCPX/+9qJsWSwnRFF1ybvmQXPdNFozup1UN0uvqAqgMOlkL6OS8t2NYoCCKoZjmOaO
82qnud+q0d6QhOuW4OKrvBIJW8mvJ6xRSlF1G99MaB0qXUmxQOGErny6zOgVGWXukzcZUTGC
9V8yDy0mPqfq0ihoM6+Zgne0UbqgWBi2MTtSYCj6a960BpfCgOhH1YXsl79+/4yG0uuI4tOk
3BcrLVLAeAjbGskqotFAhTSYYU2VK+FetY9EcEWHvA8S6CINY7d5UBQ7UZUIE0XBVgEW9xgF
tSh7ylVCMCas9y7mN0Kh8mxRDyeCUGdBKlIEzF/BtBBlAla3xpdofXG5XEgg2UzmRR6VluM4
oKsLr3Lf/ESKvE+nrL8XLhWmdf9IWrP8WqmBMRHAtUiZc2EY2cIGn/IUEzwItCUD+kzEmsEo
2gj5irCfsvYJ1kFXqK7OiDC9mhAm49M5FDA0GRVg2HktLCqWi8bsu8RxlNKXgDNBElB31SM6
SR2q2CT17KtR4FPqFnnBJsbcGiI/Wq1QhNrLmQ4GekmLj5MOR/1ah0xWqgt0DuimWR3NUN2F
XRRa5L5hAyvAQ5CQd54SaZpsCmgeDmFiGwheBXFkhgkRiCZUnxEE6P4xgdlgrGg4DefqzRfC
huqaNb4fXq4Dz7UmI7Zmfhqs+EQrXMvj2lhk3dAu0KLLsxoUd/qOiPHIdUJqiksT2thYbBKa
RBQ0XU0lZAxY9+lb0PnLJLpBkLoryWwSwaL26Tvx4aEOHN+xu58BASZZ2kgcB1U81K4X+7Z0
4WKQGj/0DcEv1WJjrVwScx/J+uqpazMSSEn+nAdx7VG2DYLVJtQeQiaY65gwFBhm2QJKPQGN
yMCUnvLsT8Eo1hETrsIFrjmgY5oJdF6kfmCTyot/xhqoW81N1wuz5qP6uNt0puXiYAyAqbZv
iYpp9+NYaPbVpYTZ0NVDRia8WygxWslJRFtq+UmLjLHQ4D2xuCbepIIt7QCrzYIad0aC1ywf
ksSS8VihKkKfnDoKiTk8CsrQ8RaMqhRSnS00sxu8SVXtNpFnMSUwiGhRowxu1oLqfJOritep
7/wLKjguu5RGuxDhzhG7VPcJjEf3nfDvoNaSTqLbKSu4IffDhNJBdZoojugCJiVqswRhVpPY
S0iiYJsFQaOatemoJPXtZYMqdrPsNLR076h23SoA1EHVOULBjdq/roPo+Fi1VtRRoDCSKJYk
apIIBQO6nx5RwsBR5js6Cd3NGHlEi5isokyNUMGdk8SJLEJJIEmPMYMmpet9aCiwSOA4OoIT
lQo0Zok62wz6Fto+42xX9v0jPjstIbVBCGLQgE2+UZl1yNU8a7IEJnLp3geMZp2tYpqzZ+nf
Sae90UpeH0Iz/9mKCK2j3MgnpyOqeJ5l3kjN0rOsz0lHvVW1obKaOHp+zHoNUbHUgzarFROl
znbVTrkzEzHttKWcX7XwWHWlhsLbsb2AXOF0W+oiBsMh5ADtKVMHgcUYZVyraQkkrlyC9pj4
Vi0aIFVDB6OWGDO0boXCprSGwICPMAJlRYZT61exRAG0hNBaYH2JgQp9DcaHvsyaJy09E+Yn
bHddW2CNZrMOXc/q08FgVSU4ZXpeLgAOA9CT3EOX1l3H0KFW58tIODKDZGTbphpkvDq1Fm6r
4bLrLtfiXGjFDWpmhLw0ZxVC2m6o9pWqBoqUagKnJxRY4PZnFUkz4tcfjwgYTAwYufH9rujP
IiYUL+syny/Tm9eXt+dJ1/745w81XPDIXtZgJMqFAw0rE4tch7ONoKgO1YADYKXoM8zHaEHy
orehpng4NrxwpFY7bjpmrJusdMXn92+vVACQc1WUImskfTySXdUJvz86gGFx3q1PPOsqRZ3F
269vH89f7obz3fsfeBpSRgXLaVUneQSAKgOHgIxhssAf3UhFFY9threvTdV2ejZJgS0x4BiH
GVGBfKk7zjGzDf3yDeSnuqSOWGNzCLbVSba6/Radhlv6Mkryof7158/PX5X41dIG5ffnL++/
YuEoRkjkDy8LBwRRYcOqLeQ7s4+Qw1WjTXy1w2j8ui/mhMwScstSvsV/GrriCXkVRg2U8mKS
kjwA0ok32Tg1w9VRryomRH7Rkg1N4Cb19HAMS1Ww5M8bNZ1Z7KhakQpXL5kn+IEljN9TVbXd
GRY6/pdWliY6sZVQhsQzz8PgOc6JqqNjIP+o6815ePep4xDNkfDVxj+hWT6cQckryS58gOPw
Fr951Zb94fE6eOuCi+GMeiHB0FPk6K5Ec/+U+bGtePYvupKMZYZI0cfX3ak4mNJJYkBtWsC8
4ZLX/qzT7rzcu2IU37xj19W8M7Hzo5tCk3F5CaeIkv/CJf/dsyYj/kNJCP7+y4cI3PXy+svb
768vd9+eX97eDUpD6uPD5K39W9qgK0HiRTGf379+xZsuIRjXkn7AB+VV0K8x7xzs+H3zkPWl
vYM2us7oNhwNXmVtd21g8lDw3sh/PsFFQXv6PHYO6mWTHrMZW+aOSaawAAoAgZX7SpP/gG/U
d1DEFMhONdxFLkWuZ3OSCdVgVRViYJsXHSDK3799e8XUrnffVWVZ/j9nz7YjN67j+35F4Tyc
M4PFYMp1zy7yoLJVLqV9i2XXJS9GT6cmaWynO6e7g0X+fkXJrpIoqjpYIEC6SFoXiqIoiaRG
0fTd7PcR8+qB79RocId1FrC7PKjjmiDoaNOIylYZGsqsikWWMciloi0311y7fby7f3i4ff4Z
WlPVPpc5l4bGIGoLbZXqkpofj5esf6PbH69Pf7ycHk53r0ro//o5+hdTEAPwq/sXrk+XDIkI
K/sm38Y1CVtN7O2eh3QuPFxkpLBREPtuZUeNO0jO5stF6EuNDHyZq9XgEGgQ4BaBnsBbp1EA
d4gnYzvGysXNx+Pgd7MgLj9k6kM7o4CDjWczubJDMBwsO0wiO1TFHctJNF8OwgLza/P89PgK
8vv/l5mLZ8TL6+3j59vnz6PfXm5fTw8P96+n30d/9zWgqSWb9Xj17p07tRRwYdY4qtA7ndbu
P0dqnj6fXl4hq7tb/NCrP+SvtCA+TGbRZOq2IG+mEVp85XwbzSZj3NLdeIKbDxI/XqESDedF
k0RjvHoblG5HhL4yjRtbQ/VHM/ot2HP3y8kS12SAE6+5qk2zg8eBOSL8lEXj6Ry1cLCN1zQ4
9sCqUWO0eoE82lkEzgt9t0EroDEWDfjMkbiXiSAvdlwqLUMO3XkWsEaqcgq1S/s6Yt9Oz/d3
t49/3qjN2+3jqLnw+89YS59S/MHaigNYm4id6zifzrH9naVJM52OzxlchUyuj++FyhXtf/7i
p8MeyaIaPT0+/By9woLx8meVZW5fKvsh+Yuswn7DPPtsDCseDzmcB0tq9PfTs5mDboFZsa7s
oLQzDMkaXM7MMKEBTjET5So9IHazZp2vVtNzC2NjjInhFfHRb7yYjyeT6Hc6+bRZRZ+eHl4g
N6bq0+nh6fvo8fS/oUFP2jw/GrlEhoC/nuvC0+fb71/v7178bJ4sdZzm1U9wdSZsK41prNSq
GmAnk+kBdlw0gLQbkAsyGaNdmBQSASB7KIKh/M8A4puNiOmU/sYBKW2sPcQuVSaN/dppD9DH
HmnV6iOPi9mpkHIvmnjL65Jyskpqy5xWP7pcVKJLpHChiWJMe/CTxWucThaWO1lLL3DJsw2Y
mHTd3Y2yS02Sdvz5Zg3PbpBxQxYVJNPv1Fqd2HsAtxkVnCoGPm8a1H14beLSIJeShKc87+Q2
5zRWKsafH1QCd4PT493TZ9jgPI++nh6+q78gG7c9O9RXJi+/0vwLtzST4TqLFjPcSZ3F/FBp
E/DdirqK8Kj6HIFW4uJQ24zCr3Nn2zcEJllgu6qaJdw+PL/AtJNA1SBGqWln0q97sA7LYg+O
xQ0JvxQ/RGuNfmM/YOcaP1XPT6qhL0/Pv6sfj3/ff/nxfAsbTXsj2xcFXoPkwd6vFdivHy/f
H25/jvjjF7WB9qpEFdpeWBeY+lfg0e4x2wQ30aeRtBvwQKGWorbmaoGSal95DBxkXumEW2JR
tjvOqAdRtfS9szOhD5DOvAyt9vVr/v4f//DQMasaaCKv67ImPofHLfQZQIiAFDeNqfnHFja/
QyyYMkPGY799OshnoIlIGqjDxFnpW4VWVrxI3k/mPuWWs7pZc9aYh3t2LAMyn071iefVpW2L
mU8DGn/ow7qVxz0TzfsV1T7ZlJXdBY9Ap7fO4D2hpK21vr28aKXVYsqxolSaG8vlLt+nm5Dy
SXM2dwxsBWuTDMm87WCvl6OUpRPXIQjAHw90uKluhXlWKa1Cglj1DyQ7c7S6fTw9vGBFoElD
V+hXp0tfnl3vuhZJyt3+mQrOGKdJF/Nr/Xz/+csJrRLmukkc1B+H5cox6WxsUtl6Ply2/TFv
CrYTO8z1Hnw14Fd3tFQsCjA/FnXdyu6jWthx8WkeTdppIO2hXk31oUoSeJlCj/26POjbqZAQ
tonLJvNmKm6JeVrzmvh0ZQ2Z6fVU6SBO7+Z8Erd5vv12Gv314++/1Qqa4HuVjdpW5gnk5bs0
ZLM2F6VHG2T93Vs22s5xvkrsNUP91vGzavtGXFFCvRs4hsuy2tx5uoi4rI6qDuYhRM5Svs6E
+4k8SrosQJBlAcIu68xwaFVZc5EWndKaglGm3lBjWUmXAXyj5iVPOts9G4iV4eu8ownMYfFN
Bg8HO1BwauhNN7foRmS6qY0JkfaH9uvwsIV38Aic02LuFFjlE9RtBVFM3JSw/ipooXhJ9z0+
KvUzQU9f23CQBHJSKCJG5kQHhLIl4aFVp5Uilw0eHsXMaBEqHsQthCvoXLYKs01d6YCI7uGt
F7sEGSXa+YwuBW/DziDXyfYCRmf9F4QtHHb9tdhRHo/AqOUMD4dYRdSlosJkfDWeL1fu5GK1
mkDwRnRhn0+DTA7PGdiFG6Dan2UZL0RL60CL7igboWyDN8ioe9wLFnMRW/VnUIAyzFaDDnso
g3g2x4hMA2RwqEQGzyAH4pYNNqX9+3vsuaUB7TPFgjnFc87CsR1LXf1uQNgX/YJgccypbA1A
IbxJIWQ3Je+vB6RtaYOQ81JpXuEO0c2xLlHB04Q032CWl2VSlhFWDM1qQT4EAfpT2TQcKRdW
3yCVOMVTIheuI9gFqhZftTfnOzKrhUMTt8rgzVEpKVeaPsAyN5RGQ2TcbvAUVOZqQBeslWlx
aGaOgQv8MT7z7uTmamoVZe7KR75WnLRtuAtMX6qmCRacAUsHC4KK9UwbLR1gQoUmgsyXEbrx
7u1G0qjRa+L69u5/Hu6/fH0d/XOUxQl+h/28KCqceaOx9wq0GwY46tWxHn2em8ECLhQmAOZ6
IUjxEqVUgedfLhQmgPNqPTolOV2+9svc01lOLlSSbVltBwCfMTjcxarUj3h1kKsVmVoQ0SwD
BVDPO9CDsJiOabMAUb17i6hazee05rYYRTgJ+yXtFF+WWUVxbZ0sovGS5GcdH+KioFB97I69
vXpjMlhntpDXylIB2+Typl/89Pjy9KDsyn6v1vtEeDMKDndj/MZwnhBAc9x+Haz+z9q8kO9X
Yxpfl3v5fjI/axiladXyvYGsG7H/hDGBVvO2USYuvJWcs/pIKyHis7psvCPgN+rpdwUNu+Hl
Dr8PMrzsep3NZ71Vps4yCb8hrzq8Tar0OCFyFoW2nC8MtzBx1jaTycwWHu+OY/hMlm1h57yH
nx24J+J4eRcDh0hKYQoy/79TYJHg144BVMW5C9juE165IMk/XtSxBa/ZPleGtQv84PgoDxDj
EtI59wrSdANO/11gLg5qoEs72rtvahDYgbe1KAgk0ec+RZQL9NxG7QaxAywoiX7R/TIQwJre
HbnMErUUkKlOoR11GXcbVOgO4pilPhWNN24qZwcriobKnafbjLyaBtDwNS4U+HGo22s2OZDF
TdYpC0wk4RlpjeuH3pc25DGqe2PeU0NNzVknUzWtPWlr4Ti2JoQQdFWA2hcN+GLIBuY9AT4Q
gAAre9MxYm1c6AtPaAGlTEH/m7xqZ+Ooa1mNqiirbNo5Bxg9dEZCNS1UQ9P7mN3BL4fF75Yd
RHPEWDbC/mqA3YOfNC4M3DKHXLMOeNUlEuuQdbTwoUIy1L7Eb3ISraKFRxetZisEy2Tknp5o
6KcmWozJZNAGO5lGC+KjSeiQUs+QXKymdPraAWs/26WBcjaZRrgiDaWPXQDNZbQI5bo26BWd
8BY4Hi/GPjvSVmr7WlAbip6AH5qa50jZK7hSg7g4fcGxVzZSoLQzHhyY8LLw6ZPPeRB0ycgU
yBrbiHeTw2X40bcGa1h9rYip15Fc1NQy38uzL8v4e7lm+xATtOzH3oyQMasQk4FTG7VzbLzm
afUtioLFWagaTdMPLl4HhSfhioNkOG0/k6bjsTe7XLc8AxTzmZMVGoBSbCukBNVKIg4VBdOH
s7nXvHZFn7MNyAluSdv7trjF7AMpzM0cn4bn8LpZ2Q6aZ1AHpubwpqw9kdk4sq/yez1gOG+L
3+GY8oJQ8Bruq4xV5MEWhwMF6wq+9zWszqzkqSLItsRak8cGLf2HDX2brNcIVmdsEhqWVGfm
xiVm7Ii/IcqkkzCcSyUf1zgXPnO7l5duZJ2Z3uSD1qBD422J0lNrvZWINKQQDNJnnoEnH974
jFCi5ruQJlfGRjS+QYLQA/1lv0d4tfBCRoF33s5YXIeM3k1XPmzhqV4DNVZ+oIZNvhp7699W
CWxw6AEZ2Nd0ajMSLW1/1DMQi4P2r1odxjQU7X5uyjqNJrjcrMyQ/ZEdFrPFjHv7BC6bupx6
0tfDr/JH7Xo8E7HIJ3OkVKr4sK1xBbVQqxp58qmxOZ+iHinQuwUBmiM6KeRy7DxzBcCyEPFO
rHH3L6fB7lZGsBXKy0/hzUIQ2kDAIWspS7fC3WEyQQ0+5hsrK+E2+UN78Tgpb7VkMSMB5KHB
+av/QJ+ovTbLlO5XbPnE34/dMulYXy35ouZ7UaO1foD6a0GCDj7N+rDZh6aCdC88z4X3nolO
OWu+LgMP69htgpC2MZmQzCFrmDJivMX7jM7LhvLPGGg2zO9nKGMh4A6rRcjCOhbNFjQfWhmN
m8gFprc/5uEkIx8i8Y/ctsJJmql+Xh76VYZxkTZbsomKsGbUILVEiZCPv3aNcOM3/P10By7I
0LLPfr5m+JTNIHot1AS4ZWq1A8sVirqlhlbjKiek5QxyQ9w1WLbUblGjWpgoHhN5diOoi3+D
BPelzcatei3StbKWMBg8Xesjhgn1CwNL/TYnbklctimjYpYBmbNYTXJUUFWXibjhR+kVpYNI
gqyOFSMaAduf9XgeeJVZ05kgt0CTlFylZVELiRxfB6hiULBknkuEtpEZK9yOQrC8HX1nYCUC
fFKscEEpz9fCTsqngZsaFZVmZS3K1mPjtswaTh1zAXIndiyzj1V0Sc1iNfVGVrXruuzfHOmL
McC1MXhT0foH8HuWKSENNpLv9cKImnnsXe0cqIC84gjUcNyZD2xdh0Wr2YtiSzrSGEYUUihV
hWvOYvSihwbyBAOKclfi9gB3rqoeff+cq+GlLBFDkMHFqFtZzo4btWvdulCdhiP1aEVcl5C0
HrdNGf1KQ3PKn0uj26wRWjLc8opGYEAtUhdU1k7aEK0OWAH+cUqYHcVugcNzruKFYlHh9aDi
DcuORUgxV0q9ZTEapx7oeJLZcMIdykYHy1MCIWmMyXViI5QKgTF1Hm/pEUfZIOG3gEaruyyA
SyPaUDQioSoirVyNLeOYoY4q5e+NnWS5bAs0xpLnBKWznsAvbyXSL0rD6zYI3HCWeyCeQXIW
7ik/1ZwqC+R40j3L6S251i/gpMokub3VilU7CHR6Unr15mrD8aE84sptJSN2SPcrDSg51hfN
VumaHMPqVjbng/9zzTb82sLVgjXVVZK65zfa2Fuo9kK4qQcAeBBqvuGuf+J1eZXnn46JMpMC
tx9GYuAlpG7b0ta0NoMy/NBlv8GgjLwhizptk0LoP2FFVoJ+Gasn97K39PXjas6RK27d5+Ig
psQYjpUgC/S+PW+l7FqsxpXbWHTgeJnx3iH0MmhughQL6D9sB9CM650ndfWks3xklehNfgvK
6njbbZnstrYKRLlQTNIK6lJPF1EUSo3H3Jy7nZNgmfDc+5e708PD7ePp6ceLZreX7MAkczAB
BeCXKmSD696ogkUhGq34lN4IDrV7dxlob9mkLg8UQNu1bdxkRO2AToTU72bxg5qsBTywFRD3
4YONpHbw/TBJPU4pr/VbAN7wWmEV5omv9xMbbYb+Mk2eXl7hen8IVEywg66WmMXyMB57g9wd
QPxoaLJOYzvP1xkBHlpq98clkxS292zCXOR9TaFBObSTaLyt/MYIWUXR4uAjNorP6hsfUZKd
GqDukwoOJtT2NppOcNsdApmtouhK7+oVWyzmasvttQqqdR8+GKBeMwGo81fA+ZAtAf2rRvHD
7cuL75+tJSr2+qTv07GziIXfJyEBbnTgtq69UIvMf400B5qyhqS6n0/fIQB29PQ4krEUo79+
vI7W2Q3ohU4mo2+3P4cI2tuHl6fRX6fR4+n0+fT5v1UtJ6ek7enhu44U/gZZsu4f/35y+9TT
IXVpgNghwEbBjtyxcHqAnnaVx6dziaxhG0adbNlUG2WFOKuxjRQymdgXRzZO/c08zTMgZZLU
Y+qOChPZWa5t3Ic2r+S2DFbAMtYm9A7LJisL7m0qCbIbVmOBHlBDDhvFzHhNkyjN0rXrxWSO
ONUyaQu9+Hb75f7xi5/LS6vIJF5hTusdkxl4u3OiCmUY13ozKWRgDQaM+0bKAJ4SoC5lbnqk
C8YvJNfTPXFT71wQJRlgfMafa/I/TSCndV1m/guY1cPtq5ps30bpw4/TKLv9eXo+5+3QOiZn
aiJ+PjlZkLQeEaWSi4zab5p8Vu6TGANMmyPhdRworvRT4+l+atSv9tOslSNJWZmqoIk7LAAZ
RsvE6d9+/nJ6/TP5cfvwxzN41wGHRs+nf/+4fz4Zc8eQDKYfJAxQKu/0CIkiPtu8PJevTCBR
qb1zIOLsTEd20SPy1aCGE25RZ1xTgztTLqTksPMLpHhyq9CtLpPAkZEW9a1QNjqndmfDIr9c
oBnbA2mTQCPgaZ8a+WLaBEZEPDaRtGGZgXHUo0eura2UywnW6igd6QVGeY9aWOI0nCK74thu
UTFRx2C1vklX30yjiLpSsIjMoTXdpe10FpGY/VY0fMtZQ2LhbsXEgnCc49QuvVJGHn0WYlP1
C0tOOwlZlDyvOO3yZxFtmkQoLlMX3xbVTkg7CtvCiIp9pBE0PVdyeoUHA7prQpuwod2raDKd
kFUo1Nx197HlTkeUvMUVUZG3OhZB2wYqgCuDihVdlYRUgEsYKiaTb3DgplwLNUFiWuTyuOna
EId0sEqg4ryUyyXp8YGIVjNSF3T5ofWNiB5XsF0e7HKVTaZj6uzHoikbsVjNV2ThH2Nm3wba
GKXx4CiBRMoqrlYHbE/2OLYJKTBAdRVLEjLaw1FhvK4Z3I5mXMpQacd8XYYXwiHF8xsioQNH
XXdsW0ftvTOXnqmVe2Rro/JCFL7tYX0Yk0lcLKIDnJt1OS0QeyG367LAm5ueKbJF7p32mDaU
y6BF0FbJcrUZL6ehEg7UfaCtte3X7mBpdM94iLta+JjnYhFqmcLZbzHoDWvSNr7U7iRH1kzG
07Lp73Hcw7Aru/VhrYiPy3gRmlnxUQf+I8MjGc6PLaBeK9wLRN0FuC3uc41cMBra5RvRbZhs
IMVQ6k8lIdV/uzSkKTNkDkGK85jvxLrGz+PoNpd7VivrLLzVD2Qs0kOzlcp+0qcOG3GA3CS+
qQXXKqRPBqCP6hM0jvyT5toBKeFtq9PMTubRAR98SBHDH9P5eEpjZovxDAmGKG7AK07ne7xY
7CCv1defL/d3tw9ml0MbddXWCbkt+qSzh5gLKr9xw7a7EigujTiDjJW6Pvqu94P1Oe3dwaxD
6UAb7S/p7U9v8YZiEDAJpDXgnvZ1KULnqD0VvMoBV/B795Syxw67+qLNOxO4JN9boSMtMotJ
27s6Pd9//3p6Vuy4nHO647UB8fCV4nBE2JLBy7qZNSDdMRlO67wjswObLMOWaL67Ug8gp2je
5lALmgXrJPYbpJaayWQ5IYEQPYJ2eDqQzWyaXKEi+ejOmjWkGCqlaLCS688QHRDEQqC5Ogwo
hg5Otu73BOmmK9dYY2y6HCJhyRO/jRNPZCAtiyOvBCcexcC2Ah8pD8ei6JxG/7nx5skA7zsS
WkkGKo+DZ0zfZbrwIqbDcx0i/otEkFZYqfS3aetCrV2/UCT/hXrt0XubeqOEqiNdgBAZHngL
1UtAqAJAE3lvrpDT7vOIDmTs7Waj60uEJc7lz4qwP0z6/ny6e/r2/Qkemb6zM5ShRQzudl0O
AaTbFlW/JDpt0DM02Ese8PXTOhSLqLcMeFO0LXSsnD+lLpirVVpknqDSZP3JCtLAQbWSkspJ
h7xRJ7mppTjckU3i7qxSQzwCzdDl/jJsvHWCX3nqK4VLu4qC9eGTfg0aeVV9gfOBZWtY68nb
4mg5OxwrMi+lrgHCmE3iTrQQK4Ts84LC5eIFmzvP4eZxt3YjUc6gIYx1dWmKzgwPUYikdMGX
AYMYUHF9rJryvZOH3qSif/MeFj5HB7IAkgnumQEpw10fjknphOFe8CiYCRBKwMst/BXsmvkU
+y/4ZWfNJqcq3cD/dhwNoPZrmbgQOFiocesascnhEjDA2fUy+j/GjmS5bVz5K6qcZqomL9ot
H+ZAkZSEmJtJanEuLEVWEtXYkkuS603e179ugCCxNJRc4qi72diBRqMXg++K5wGyxnq1NGU9
hC6LhbvZS6g1G8N8ojQ4vOfqR0BNhufVerSGZ1E8Wk1LiwWbeq702kARlw9Uf27CRLfkiMO4
KJlPmYCifYVukMZtCbinm8qihVbcnpBgpZDwPcZPI1WTydHTHG92Cd6UF2uMhpvM2/CuGM2D
uOrzD72MzozMkTxkCW3/2+IpTUGLHRgVxdAaw74BBPF4qMUJ5NB17mVWV2GmxFtlYoLooVlm
NhJ5AsxeD+HWF3uM2k3bwkb2lwgfkzFWRMVFel80GVyaE0BEZ7E5rqlDmaPUXLrakAf9Sdfs
SbH/FsVQe7wWI93EX1GhVopMYfLie5g50IRG/ui+R/QkjvToX/c8STGQuqt9as50Y7pyk4Kv
L4fjP3/0RCaYfD7t1MFp3o8YEpiwSuv80Vr3/WlN+ClqG5ydHUcbP1N1NhKah3Or2Rhc1cUo
Yf7dZGpOaZGKvLUJE7H7XraXH50tnNXl6bz7YSzXpkvK8+H7d+2QUq2TzHkmjZaMoBEaLoX9
wjA00PAgq1Fbm0YTl2ZnSUwTUNbJ/1ZkM43QVwMwaxgPRMYVK58caGmr1nb24e2K77mXzlV0
ZzuTkv312+HlisGluWDU+QN7/bo9g9z0J93pImEh0+Iw6BXnafmcHZB5ieP9UCOD7dEwiqSZ
obtP4uoo03FWb0dJ362ETMOmLGIOCgb/JnCaJpSoEAYeptVM0cyv8POlclxzFJEwEeEEp7z0
dZczBMDeNRxPehMbI49ZBbTw4dx/ooEyUMyH83XX/dBWBkkAXaYLV52kjKh9kqxi/abNZx5g
OgcZ3FY7iPEb2LhnWBapwWsIMOyKWRpH0POD1zBfaVpVtHrFqhACgSQXuc7JtLE1hTedjr6E
qvFMiwnTL/cUfDPRE9FJTFD0BnQSaYXgbmizFPBqHZQkbmwk9a4xsbcZ33cdWcxbGldia5Xi
fkIVkBcjf3BHSSiSghVRr9+d2LUWCNU7VGI2AB/Z4MyfTUZG+l8V1SWfTDSSwZgYRY5xIiZk
gfGwV9LppmuC6eOg/0B9WYCceN8l87fXFLN40FMvMk1fw6TqdclR2EA9qXAa6qf9EfVpGA+6
/VuDn68GWo4oFT4gBi/HLNtknxUBTP2JtVUUcOPT16i63vuwp6L7aNZ4DCM9yg/22raWxUA8
qBOrEDFweaBzGyvj3+/p2Qm1Xrn3b038fDPu9ZpcLo15180q+3FakOu7b6S8bzEjMravSjAi
RwM3jcmomnkxI23kFLq7ITHOQdEfdqmNCmT+EbF6EU4tsqJ86N2VHjHD4uGk1FJ1K/ABUQLC
R8RuHBfxuE81Yfo41C4VzchlI19LuF7DccyJdWlGgVSmj0xmz6fA6fgRZLvbE2BWwv8cqxxv
L0YM5sZFutgfL3B9uMl7nkbBjBVarM0g9mrHCIstoKbLme0WUTwlPn+da1tcrDlU0ZGJj1uA
+F3F6Spsg6yrtUCsO+ZZTSCz2JBR7QUJCOJZQfDm0ga/pf7qYy4E6fFuNLQfG/bIMqa/3l+S
tbfcWG/t+Lque/YFw+HdpGsF63ooYC5MzN8VlyO7/8Jd1kAYThn+zJvj1jFUJMYWVuUY+7Kv
BElgMdS38BkzrRSkGO0HfWV/yryc235ldSaHBoyR+Wvk310DnKd87ox0sFDiwPW4KDSNt8Dy
gPoS12YnqbsRbrlVqrsqqhjaeEyhcKmijGYttWdCllY+m+mAjK+yMGH5o44IMDERhfDUBLQI
gEu2n+pRrjlnjD18ywITaODi5HgCRgb5kn64Alw8G6sRWRC0WBHPEtiQmRYzYDUjDRGhmdX0
KeM6PC+BMVPu5BjvobLynGLCiPnSePtJWJmnVZjA/WYVUpU3Y0fUKUcy7rg2teBxmCwpYpoB
f4OzUFOMLqKu0Bou86kaJcb6NVQBy/QTFbH9tvRBRvs+rLjpBjbI2rbjw+58upy+XTuLn2/7
88dV5/v7/nIlgmjIwNTab1OHUkPbdreJ4n5RkOQwz8MnzbuvBlRhoZy9sPOFgfZsICBOg5EG
LZQefI9nX8LqYQpb2nBygwyuMypl1yCNWeHbM7RGTtMkICrpeJepsXIrtL8rChCMEipgQU3A
Cs9Zl8yP7no9gisiHPG6VArKrlrB63Z4LWLSo6ReFT+mqjrpTQhwPNCiQdVwL84iGAOW9rtd
PQKlRpD5/cH4Nn48IPGwDDU3HBXcpyah55O5zxs0CNNxz+IHcDiURQVsloUjm0dLMCEVyQoD
qhEAHw/pVpR9uEHe4Ah4ckJxxM0JxSmoEJ4q/s6uK4D7G6rEOB70vRtrahaNetb2UXl4prK0
16/syYY4xuBEIeYn44+W/e6Db6H88QbdAVKiknHmj8nAd7LE4LHXn1ocE8CUldfvjezBq3Ep
jYjJakhUb0xblrZkkTfNfJyPtxYw3AiohRp4RH8DPGZ2ZQG8pHsMn/Qe6bj1cksc9W8uCzyc
3ZFwayJubebYNoPyftKjlkfCvxuPbi0RIAiW1IQVCDSd/dXHBZvH9o60ih8mWn7vGj7pj+z9
EYAjElgRe92D+KtJRMQ+e2uPpTc2exUVXkA0Dfq1JCYJgPN0Wed1so9Te+A4tAo3np7TXcPW
THXLUbj1zaEYclZtJuPGu5qSxeRdIBa6ff2SkUPRzde0CBeHUeQl6YZMrNHWcJljqDWal5TE
MEavH6lxTGoIRr0DGUPvE7hH1tTqVK2htc7CEh79l9PuH/U9EhOL5vtv+/P+uNt3nveXw3dV
F8B81UMUGRfZpKelNP1NlmQtQVK7H04cx4okKthIeHlRHBA56rn2E4Vq6NjHJYkf+OFdd0x1
ceUXPPmXn5HYbK3Yq2xgHSabauUrN5HFushYUpsJKcNQnN7POyKvGTAtctjGYcEPtM4PV6UJ
5T8r3QQJKKdR0FAaI2WUKj9Cy4FpquxPma+clWiikntVrFEw6IMl/LvyVJhXqMZhgsZTgxEL
UPtaJhxa90fMbt7hyE62/b7nL5uKg2ybv+EXpHo5/HqhW/tJRB35A66xJaz05ZzSEdS06q4H
P/KqRPdGpU3cUoETayW1YFkRqgyNSnnjJfCzKM2yp2rtuYopfC/iAUN4xr2WHbXhiKufrLVx
4a2h4rVv/3q67t/Opx350hZiyB98zSP1ZsTHgunb6+U7oc3M4kJ/hEQA1+dQWmyOVLNOCAjP
/DPXw0KZGASY2Ebl0FZfq6ak5ilA6oii4tXi9H58Xh/OeyUXpUBAt/xR/Lxc96+d9Njxfxze
/uxc0NDjG0ziQDeN8F5fTt8BXJz0N02ZFJlAi+xQ59P2eXd6dX1I4kUgjU32aXbe7y+7Layh
x9OZPbqY/IpUmCT8J964GFg4jgy5T3onOlz3Ajt9P7ygDUPTSQSr3/+If/X4vn2B5jv7h8Qr
x3fqG75+/OPN4eVw/NfFk8I24ad+a1K0wglKLrOcx5kWunvxszM/AeHxpK6fGlXN01XtrQ2r
PwhjT01FoxLBJoAiCXpyaTpxlQQd3Qo6x4BKhzZEReapWWo0NhgYfxWajbDsVdv2mnlBwk3p
t+Yv4b/X3ekoo9AE9s4kyCtvk/UnVJj5Gj8rPBBDumYxKJ70hqO7OwuRl5P7u4FnwYt4NNJv
5jUCbgYwg9BViPTkjWEHzfVUi9ncQ20suijSAdoYqZpN1BwP8KOKC03phiAW0AbIiAszujTE
CUPpkrSmRjwIOfMsTeZmeWWaUkaJ/BOYe1Z9K9NJgDNB4ySUGGh9KcjpUzKEniadwQ/xUKRy
R6D7ZYpj11STEcMei3G/6+klcLPNgVlElGGOJJ8OPdISuNPzIQ231ZyM5AJg+WNnB3uHFjFO
BoQzcY04kWGYjakeAXaaenlQlVxJQgaol374qV+qvgl5iG6a8KPM0yjSvRAELvYXGdwavHxD
yfmCpmQ4LMrKzhZPIM99vfAdst0Y6jcL00mSO5DNYwTTvbt4qnwvEXMIHSkd0aemflw9pInH
vUFNbgqvbONV/UkScy9QbZxVJDJxMOAyiHAjVaaOjrA512EzbzHGLabXV63ZESrkQ+yhUJi0
N5NE7+fmG9zutRBsgkPuZZFMhmYhNIE0gFNH5KWiToxSD3YV+1PraM32Z7Sm2OIV8vV0PFxP
Z2qS3yJrppgRLU731x1Kwbxa56bv4bB6WGLwP8JpachzZ5nPAkKGOz6fTwctxg6cvXlqBoqU
Ml1N3vSOp6aYD1c6gFvjGT+bLU0HZjGsqkANglpnUqxCFNYtLrngLEwO1p3rebvDMFfWu1JR
qhkbyhiffEt8OTOmbItCo0R630Ya7jVKbTmAAzE790M7paKCIy1zFfwMwwpRgouYuuXCnMzl
Qn80bKDou2JfuwDhCkffEBQlebeUaFjWVCVKqhKtjaaM72kPlfwIhQjrDp/lVR15zJI34nku
qfwV9WjFqaY5C/TQAfU3GILuS1jjaWWc0I5kaMvsp0uQTak7HS8lD+daDAwpENmQaqYl+VWg
2CAHxm6Ehhalk21o6LwZ7WzSECQslT4McORWyaBLJ5OW9NqsK8NGTob/UvcLFaxIzmmm5h9i
qsIGf+HBX80zVV9bRCzWHnARII4iv8wjc8rn8P8kdCQB9zGuNjmqcapvovhbHHVkvEeO9rVs
lRxUJJp3uSH7CxeEA9wMxZGm3ot8z1+E1RojgwtLcLU2dbJF2C4KfM6lfSEAx9JYPRdBvO9r
3sA1oNp4ZZnbYPTG3EDxWqdKZBH6y9wwTW9JBmY5g1sMB79mODQZDm8xHP4OQ8PJkMPaI1Qp
7fM00K5J+NtpCYB+3FM+eqrcyWCM0G+5IIBA6j8QcJ4FlCWzlGRkDpqKIrtFJbjRNZ+Nan52
8fv8az5GD3+ubd4Yeu4pRWxkke3WO2vCSVYrSheOBI/LtPR0LmRFEZFToh0i0oTbvUgXCe2j
GofPGYyWwZFq7eX03ruRPUAUDSJc32gzZnXtV444gtNSjBx1M2VRw0zOwb7VoxyEnU8zqb8w
J5UEk/0qkTcmASfh85uqjtD2Nhlh6fOpLgSdwzEaESOVw9jTquBpVLlZ4Tih9H1EQGon6DRT
O5HBtQDBTFcSoG4KfQKfNAq6UmHCHaF12UAFgzQy1ztGwzIxA/lvugS4HWo+WA3IXHwtYrpk
UckSOGDniYexitRGF4Q9rACRMiHHcE2awsOzeUhYfZihKgVDZ0Ib6fnO17Ybg+aFXCnOj/gZ
LTJzSr9UJgCGLp4V+lEiYOb0XGKSHLpqmNAx8p4MtLhAbXc/dP+iWcGPAvIuVVML8uAjXHI+
BauACwSWPMCK9H487hrV/JxGzBGk5AtzxyQNZlbbZJXoaggFaFp8mnnlp3CD/yalUdF2fRRA
6eq81cy1A3G2xiGPEPkoxFJ8VCnC8u8P79dvk8bsNimNA4sDLOcwDs3XZKtvtkxc8C/79+dT
5xs1NFaybg540DUPHIZaI3U6cmCGYZ/iFMQO1c2Yo/wFi4JczfIpvsDMCpiPwPRyFh9lS9RT
1bJwjXkI80TLJ67fwcs40ycWB7RbKDFcgkIeF82Hi+UcVuaUHGG4sc/qDFeacQD+aVeg1JXY
Pa5MMTSK5CG5uHE8eSqGJeazU6mUKWJOGdwc+8ZvTScqII6+4Mjh3686ebH26FSVgryi7QBy
NC5PHKsHv8SdSZgDw8ZMtrwmwjGHy1yQGA2VORqWQUZ5gQIJZWw/z7lFCI9f3PLDw8/8iV2h
FWjl/F4meeabv6s53HGULqyhbl23H2YLeivx2QxZKb+Eq4VqMYZAtCLGjBlcgAlbI+u2CKRa
hx6aTWD2D1pxwqmWGWaBc+P5SnHU1d6tWigdUKnFo0Iq49FgbxD+Rv2KdXKTJg08157uWZJp
g7rPHDJrpE7KqGiC/n04XE6Tyej+Y++DisYM9HyjHA7u9A8bzN1Ac43TcXeUNl8jmajmjwam
72Q8GY3ohaoT3f0G0ZjSthgkPVcVxzeqOKYNHA0i2p7WIPqdxo4pQ26D5N5Z23tHcnudaPTL
vrpXnUF1zNBd+uSOumsiCUhTOC2rifPbXv/XtQKansmAezg52yzLpYxAVbzRWgkemKVJhHu4
JYV7rCWFa6Al/o6u0z0N7g0c8KEDPtLhDymbVLnZXg6lcsoiMvZ8OG9jNSKtBPshRvuh4HDh
WKrx4hpMnnolI3k95SyKKG5zL6TheahmXpFg5mP43IBAJEtW2mDeNqZHzJY4uPc9MMeBhjTL
ckaHiA8iRyTDhPl0sj2WVutHVbbTVJ7C7Gi/ez8frj9t/04zhyr+Bvn2Ed2zKuJuJUVhkSEL
Rgu/yOGC7tCr1CwpCRfTzoWBrIG8lIjLuQWHX1WwqFIomGcr1E1+aw0Jut4V/Bm5zBn52igp
qa8dZ2zDvBZ5b3DFQCWaw239ULOhqsLteeHKFYRJGPArvp9mT1xo8vWYSBaRdiOwOMyABcaf
oRQaIIyilkC8hikiImoNfc4CLQUXYZSpGgcSLRr74dPl6+H46f2yP2PWkY8/9i9v+/MHovuK
2KiTTVKmcfpEB39saLws86AWlKzX0ESpF2RqlggTA9MMusLIdi1pnjzT59dqijdDSwVGCfJK
USCspyD2RUVM1qRFV6GXR9qocnUZR9fXDF7dKkkTej066HH+zR26Q8cnHItp45kXaZqvtuaw
R+o2xk0x5tyfi+6SijD6XdTR2+GKegmS6op2yXvKBo9d/eFle3xG4+a/8J/n03+Pf/3cvm7h
1/b57XD867L9tgeGh+e/MGTNd9wW//r69u2D2Ckf9ufj/qXzY3t+3h/xGbXdMYXD5f71dP7Z
ORwP18P25fA/HmFSsdb2eRZDVHpVKy8X6QKt8EUkVR0mVek/hnGr0TzHHHabApa8UgzFAymw
CMfbNEOzYLH53LYTlqT4vqsbKLe+onQfSbS7ixuDSPO4ajpOC3vpn3++XU+dHSZmO507YutR
xoITowZYszjXwH0bHmoeUS3QJi0efJ4jyYmwP1loeZUVoE2aa64yDYwktIO6y4o7a+K5Kv+Q
ZTb1g/qOLDngm4FNajmB63DdF0ugHNHm9A8bxYrpLySo5rNefxIvIwuRLCMaSNUkcz0F1Hj+
JyA+hLW8ANmFvtwLEpfbcD1nWNxEtczev74cdh//2f/s7Pgc/37evv34aU3tXHMAE7DAnl+h
6rzRwEjCgOAY+jkFLmJ77GFPXoX90ah3L5vivV9/7I/Xw2573T93wiNvD6zpzn8P1x8d73I5
7Q4cFWyvW6uBvhqqXA40wF5NugVIql6/m6XRU2/QHVEDFM4ZRta5MQLhI1sRrV94sOetZIOm
3G8GZZ2LXd2pT5Tsz6h0jRJZ2ivFJ6Z3qOYprGFRvrZg6WxKTuvpzam5KR3qrXr1h08YsdTd
imSh9LzR75hMuFzGRK3wuVGL7SaszTBkpKN/Y8+eyQsBtJr0iyavYj0an3iDOXzfX652ubk/
6NslC7AQ8mkkDUUHeWqn2mzq48Gs6zTyHsL+jVkkCOxZA8WVvW6ghi6Rq4gXZa4j5yjGwZCA
jVSFsoQyWDAgTcJfd33zOOipafbkClx4PQrYH40pMPqE2xUABBUZrtm1BjarEmSZaWoft+tM
uJ0LaYMnrbAnpRfa/Q6wqiRkjpD7rNITZhql6zpgE42wFP1ykD10O2X2Du17eIe3knQrWNLZ
skWPic8C0mO2Rs74X7si9fZs93yYZ8KlwxpFgamKIuxXowkZvUKO6JD4Hq7qM0YG+tEJXJ0q
0SMek0xMgNPr23l/uQiB3+6XWeSRsfXlbv0lJeo5GTpeIORHpKdqg1zYu9KXomwEiRyuQqfX
TvL++nV/Fr6S8sJinY9JwSo/y0lTC9nGfDo3AuuomAW1PQsMJfZyDHX+IcICfmZ4uwnRtUBX
gCgyJLqW3nhHMgillP5bxLnDo9ykw5uCuwOxbtLkTL3CvBy+nrdwZTqf3q+HI3HyRWxKbjQc
nvtDaydHRH0qKMGdrOnVUt2YZmxar2A7TJRFQqMasfA2B1V6tNGw85DNlIcWiMPsS/h37xbJ
reKdh1/bOk3CtImao8rs5wWVl8wrnmLM9ch8rt3E1BQtVwWZLadRTVMspzVZ+zrYEpZZrFJR
Fnmj7n3lh6gEZD4auArr1rbY7MEvJpilY4VYZEZR3MnwbC221QxzPE/VBp/TejQ2R4VlFgoL
LzSb4tUxbM/EAtmfr+gGCXeECw8ogAEEttd3uPLvfux3/xyO35XUFmmwxBwejOuL//6wg48v
n/ALIKvgOvWft/1r8/ApzBZUPXSuhaew8QWGo2ubIfDhpkQT+bZTXbrDNAm8/Mksj1IhCsaw
MDGIeFE6q9ZS8I0F/0fVMA9XqeheTkJbJv1GP8vS/1/ZkS23jRx/xY95yLokRXa0qfIDjiGJ
EAQgHKKkF5RiMyqVV1qXRVVp8/XpYwD0zDTA3QerzOnGABjM9H3EWYEvQr1cVgMly2dJGIbY
RXVfY80/p57gEPo3TgtyGBZxEcdgyPECEa1I0LZdU0qU3JASJTfFDLQwbd+1mfSLD6BVVqTw
p8b2eNLNk5R16uVd1dmOesjFej0adk3IjLgxR40aqTjR4gPIG6bII7QOYnUZLqFT5Zl8JcLA
CBQ4+cC2i7IdPSIj1UlAdQaG6Qw5lZAAI9QM4GHarnevcpUY1F6GupwunSMI0CkT3+mOLQdl
prwUo0T1fk6SQjh/JHnRjHcdILr0lMj2D1kcqneJKHczamXjRy7ScueugwXdIxMA9p47EVj3
zLy8URAHx6BbdxSzYcLxSxUbBEB9XJ0FRUMFnYY1/Nt7HPZ/YxWdYIyyBKsQN4s+XwaDkWxo
Oo21GzhZAQCzRcN54+TfwZj7MaYX6tf3WaUCYgBcqJD83qnyIQHifYYzrDjtYtlFCn5Q2hr6
AupIhspRgO0Ndg+ujdgdt1FdR3d8/KVQ0JRJBqf9xvSEMIGQYgAlkemAPEQx/g6FwXG/hokb
ml0Y4E8NA4CkrmVaHMEQAHOSY9CpDJyVrWzFiHiJf6vK1EBCBwDbXQ7/fXj77YjtKY5Pj2/Y
wPeZnQgPPw8PwIv+d/iXkInhYqrpuIvvsPjTWQCAW2AkARaQFQVvR3CD9gm6VqcbEm+a6jSu
17tcRZFh9AiJcpCGdqgEi95guEyoTSzWSKYvEJsiAb1Ld0uvc96Z4o6UKzA65AQAw1qdbZJe
Sz6Wl45dEX+PBFAN/3ATHZL8HqvkiH1fX6PALW6xq9yqZWWWUuYd8HVnn8PeH47dTdqU4WFc
mxbLmparVB4QeU0vmZoDaInBy4D9Eo0QYRgnjquJHoh/9X7lzXD1Lrlvg1nVpQyct+HGyXYf
yZpfNJSaqmy9MRb4QEABweBi3P8NsMad21kKIyGKtfqpRtkvEN0melOcY0RGmZL84TpIB9mb
Rn/8fHo5fqdK/d+eD6+PYaAJd/6jBRYyIA9iWKQXb5BsKVOXkinSPnOKFFL6b5+X6xzExXz0
ff1zFuO6y0z75XLcaVZ5CWa4FIErGCdsH4/qbGu+6Lsiwv4vXiaIM+xlyHMneQCaugYspzQK
YsM/kIDjsmEdz36g2dUd7VJPvx1+OT49W2H9lVC/8vjP8FvwvdzUt2kMTl3aJcbxcgloA+Ko
msg/oaT7qF5RpQ9yngjvpDYhYesSnI+l2SuraIMfG7kaPVoft0518HUaY/pZVunnFdixoRyz
L+dnF5fuwangBGBC/Uy1v9pEKXkkAUsL8AEw6AkYAN1GktLxWzWclYXB9rvI6TnpQ+jxMFtO
5iHRc1dl0O3TdsumWA4OreYuU7rW92e3jlOWzZKA9PCft8dHdOBnL6/Hn2/Ph5ej7DMZrTPK
yZBl0MXgGDxgCiqfdvZ+rmH5/U9DGDruOoMFi6Zi8UPPcGVlhrh0LxTbR0JvM+HtMIl5YZ6Z
4AxiVETXt7AD5fX4WzMHDYpfFzdRAVpQkbUoNThbh2ByMkZuZ7xziZgwxiJlUkmUQBY3fRT9
wtNXNJts1YZPmWY38yEojNIVcKiAaMT5TIdmwipjTGkkoWoBK/YqDXlgA0LoAniUy5R1Vb/Q
eD3ZvghlbltsE7weVYpsqJLjlTNcPGLuXuXoLZ+6YArPwLJtPM44mWDKyAbNbWuKJnOdRDwL
wkmCVOkuXFvuC8/8R1bBMmvKYq4I6zQ1UFC9wBSj1GUatWFdFf+8MPL+Nnz8vdboazTJtJja
4Tw7jWi1Gb15ef/NhIvmXTygaRuA4JQu4wm19muCCpcD2Q5fZoAsPBeLhl0zp6w0IP6nFssU
KWsDp5f2ZtdX66HGpXfLG/0M+Rf+iZtkddtFuXIHBszSai6XRnFpygZm5oeq0tIH3aIqhSq8
dhsWzlkFaASqZbKewO1POGEt3H+TrTdeY71wa9B3w+zYFbCd8JYOeJ4ZbCOkPaEfREKbPShr
65BXYPgzahNFOdG+NHVtRoLvrUwhg4z131jIqsrNaAgBMezMwwBCPRy5LxefPvnXt2SXIapL
AkUjdX6LNNWdUOWggEIGi7vBCmpBuAjifyh///H69w/571+/v/1g8Wnz8PIoVR/shYkxk6Vj
ZXGGseZIJ5xXDCQ9thNtdTDutkMS1cJqSHNTU67aEOioM2R6koiV36PzJLJ9SrG+GH7u3Vc9
qQjqN1iwrI2areRWLASOoPGdsVeH8vwT4unH93DHp7eI+2uQrEG+Tst1wL/5ndTNsvzVOd8C
ZOlvb9R+PWS6TIU9pZEHrUrmEuygjdUUJ6vcxiWOuJhbYyp2tLCjBuPXJsHib68/nl4wpg3e
5vnteHg/wH8Ox68fP36UrWEpWBynXJM5YTSIjIo89vpSqjkwoI72PEUBazsnFxACvuwsqUdL
ZteaW+lGsudzqqntMgcdfb9nCHDjcm+TNtw77Rsno5lH6Qk9ixrF8ZsqGEA3RfPl/JM/TBpx
Y6GffSjzZmv6IJRfl1DICsR4l8GNsjrp8qjuQTnqhtkufMJmsWeXfGhxmxujsDn7wTmcQmvX
5n5cIA5odVTo8HAix++i2qvGU7FamGowav2FbT68Mi8qUPpV7rA/d7wvdlm4FANUE/lGc9Y0
Jan0GJPfFY0xKZx99ispogSzvhnm850VhW8Px4cPqCF8RZetUy/CfqnA8evKSSfgzZIoT6VH
Ms8lOpFukoR7EuWTsq67KixG41DWmVfy75rUxqaphIVCYOer6g4To6RTKFTSza8RArGU+sLO
RZST2xuRQOWZmUsgochKRqORG16cS/iwmZyZzbVSD2mqXO4sSaApXVs5tVaMRQ4mV/IBnRHL
Uc6UfYOn3wAPzlkqbc1QElanDIBQJHdtqREhiqsS5uCA8RRlxatReyLoqivYirYMXddRtdFx
Bjvuyju6CrDfZ+0GvRWBUqegpVmNwhAavX10i7ajwnkwH4YgeChY5IQ2BmKS/c+fJLEX8iw+
FUtcNknegbhbreTrU51twvf6tYCMDh+eSz8Hi1bVxuzgcNfX+sMF89kB1b0S1Ol0zmuWmr7c
JNn5P37l2quo/WmUl3QLN1eU1Y2pUafOYhiLl4yWY0bbl3jsLjiNR6az2acdCL7y0Jt9H9cm
2tLKLt1nu8pWM3mUjGDbKOSZWZ6If81lxtqnylKQ7+bfJ8wXtIAqS1ep8pqNSdA2Nj/j0LXQ
v7Db+GV1XTh2sOx3WEZ3l2IwUbyEbMv0YrRTinX9lidW+f6k2eb9zmTBAmjahwSx6LZsO6Fq
vZk1RrtOG86CtjgBj3y/+qzxSE/WCQhuKAuFOJTOOnjPukbGdFx97q2Di/S0rtKvmpkrjdcz
F1Dx0NvUTcCxOlAer/JOjQUneolNzXzuMk6BD4zRHynyoSWhFPulop+wP7t1W8VrGEaLER7h
HTf2/UO5dDYB2DJn8lpSiMkMZ46WYgpoDgyx1omilfZ22ZLnnxeMPCSViBOvyACD2oSv+XbF
nk6Y4tKyoou7U6UXuj28HlG6R/U7we4XD48HUdugK2Q8H9uAphZAzrAbO8RjtvlYUPGbocSE
Z/WdQSZGR29ZnyrCOF+ocfhwbIBroiIpbwZ24+z1Gng9Bi+0rGEH7WIl5cDgQSAJ/nvZIfUR
h36xmv7u5vXq3yRI/uXwgf8DjHhMWcsIAgA=

--FCuugMFkClbJLl1L--
