Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5ERXH7QKGQE3KVWHQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA7B2E8228
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 22:56:05 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id bp20sf16511221qvb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 13:56:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609451764; cv=pass;
        d=google.com; s=arc-20160816;
        b=PaJ6i6R2Cb4pCb6TuOhcNnWuNEwS9y362rDlBC9xJXZvTHuPB9ERbt78jBW8CJf0EF
         bSI1BLouam+ccjKdxeOWeVuepIa8sxcZOmGojblmyrIm9z9sNNoB80/+Nhdvyxpn3P/E
         rLYz01+6i4+Pfqse9sjdFEuIENoGJ+TkT2dZfvF6nOKEfU5u40Al3pkNYv7tLgkk8EZD
         KeKpfc7SgAhBAZlz7QCLnd1ozVNH5B9Urd8CuCgWmhhK5BaRKUQi6MzjtvID2YiF9cDf
         m2v6kKBctDhHZgtzIY5v62gav/456t0TA7IKpDwVBl59ZYCdiCnYJlzXQvwp+n57onUD
         KhQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=TRd5BwCgfYbz4cfQwbw3mCEN+3D1QmcXMAjh1juW3HY=;
        b=v8tE0utzDERRY6QHobfKJ/QJZmQlzCB+n+rS+kIlWSCx/vvIDPrBsS59aw47rkNlcq
         V5lA/6FTwr+Qs94/8tbJ0Tq6twfiBjNG/vmxYmLsYAJvYL+wG0uPdPWiO7Fr1yFrFbzB
         XyFILXOkdLhA3DJcjMD2ARhV21K+yRVFhrlECwS5pFPOa5pQR862q/6i39ZY/8MY2ewA
         5Ayqn3ySCVQWb0+FFjsjJikxrgmgQoc1ZnN1gCFW1M3yQn7/R+4HeYN7XzG7UiMXAUPS
         NtfhJebGBj+NCkOt5YG4fbyEcXhjNQSxdDQhHPclpRCdB+cgSyDkgNnfp93gMc/bdWrA
         859Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TRd5BwCgfYbz4cfQwbw3mCEN+3D1QmcXMAjh1juW3HY=;
        b=Z85ifAx1WHuRgRKGTGirncVEElG7adT1IDKDeSALPyrlrQFv21Qee5KLuF/GUW4GhT
         A10Mp75g7ZfH7kCzvkhcXwx/SuDxyqksr9H8K+Z2758OuupBVMOcU49+Z6dU/Vm6YdRv
         wRJC6DjoT8H9vn65TlJRwMG2h8aT4xoi2cy+m7GNerm1RTx+ew+TzQficsdZ0NAz7aTQ
         r90ZYAz+W2eVHaDZJgPPoPYt7gqGPBfX06JYnSccFuCLQCSIXKAmRfthGkOCAocn0/eq
         d8lr8L6MuIYMCAPvB2fl/2CYu/CgvwdDxbInGfN+8a8/qpWloff182kFDximJ/NGEhoz
         aStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TRd5BwCgfYbz4cfQwbw3mCEN+3D1QmcXMAjh1juW3HY=;
        b=kPWSTuHaAWDwDLyKaVh13aeW+0gnjv774VOjKeuI5afxKBj4kN1T4F8uXNc5iuN97g
         Y2DRd5ZxU5+SVPGK3QnecBSgPE1O/6McWvoBruzA4U069izV97jITyAdIDLtfDAlMuGS
         iTBd43DkfVkQ7hUj/jgiCJWDwtTnWX7hum0osEbhjnRRtdGAuANWuhuFU3QwI5jdHcd9
         bPfCsdvf3wdrOCNLnm2qGJMFax3QBuqmJNoGf5oWWpBaKuYT6Jvyxy+k3eWPWuQKZJxE
         pV6oUOhL2jC6BsHDSjA7/byavACng0hBsmijsJwJ/niBk4XLNCQ4/0/OcR+SxGdoqzHH
         YI7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53303Eiisd0LsOBeFk3MHPPLdf1+aXb1N0PB6efsTIa7FvEtu/kr
	+USVJgxgvJ4dOTu4oKu9o4I=
X-Google-Smtp-Source: ABdhPJyj5Ul8+HURUMd04jlVz9Eie0B8ulfIb8zMQDCAP2yJtLVtxloFJBiJVMnLiZoSRF/v80Q9iA==
X-Received: by 2002:a0c:f601:: with SMTP id r1mr47384215qvm.39.1609451764247;
        Thu, 31 Dec 2020 13:56:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:434d:: with SMTP id q13ls16908030qvs.8.gmail; Thu, 31
 Dec 2020 13:56:03 -0800 (PST)
X-Received: by 2002:a0c:b48c:: with SMTP id c12mr62240535qve.9.1609451763770;
        Thu, 31 Dec 2020 13:56:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609451763; cv=none;
        d=google.com; s=arc-20160816;
        b=jzir/MB67y/joUeo3CUUaQ+ua1YIwZpD042LSk21ee5wkksdfn/ifv8Lyl0sLKJ8Sy
         aKIsYRgsXrA+Qykbbw264x02COehFiZ9GryTx1Zk2UQOQavwsHJrOsWqrASAEGe0PhaW
         ifP60bCpteFaoLILedpES0DYPfRSuEW6Hm9V7Kw2OwcbX2Gz9yUCFm3m096OXFoCtBI0
         O13poru7YZaqwre4y69sQsQ6xEA3hZm3anirkMVayvhqiU5CXmOeuwIDFFgNzpmlxwUW
         ybSjW4nqF4QwlqtZ9/erZtkHrmVt7N+9lILcIjzJefxOSkrLbWk4PcvClW4pf5sQm171
         RCQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=B0DU/eR6z93PR4TMSV5nevPIjDmc6Cx8JTyPc4bUb6s=;
        b=zEyhB5k9VMOs3ibFtPAVbk7GY9b1ob9sRU4LthUnrieriX9nT5XVaZOCsRUj2uWEnF
         1rV5LbZIP0cwpWCtUrTEJ+jifag+i9F/PutW+aZ//bGH40q24MqUGPR8zCyX9G+0Ty1I
         DxNUB5gj1LCBvJkYplFf68ORc3i/+xev6Cyw3qvsWv1NbLdmSNoIHAyTT81llQr/4OGb
         2aRO9RnMbNKc1F+0EKkBK7f5OtiG301E4GnmJ+OOuD2U6mpmoL6t+prMAnmJN51LUbQ8
         53TibbpDodzmsF1TjgtHD29kV8+uG1X7Ypp0EQ5qr2Zs4R7oxos0jbWPNU+D0Bvtjar0
         fpVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id p55si3333704qtc.2.2020.12.31.13.56.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Dec 2020 13:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 5ciq81BdXhfoyayDn3xTh4I11yc5SLqw9jDVAgJI6rpvmH6ZqzWlootum2KdAWY/cCayz0Fv66
 GMjfcXazhw2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9851"; a="163807672"
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; 
   d="gz'50?scan'50,208,50";a="163807672"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Dec 2020 13:56:01 -0800
IronPort-SDR: nmW+YaRbw+PoNbsMiCYWzB569/bz6413SxkIC7pDQQPLYplb+0UtNrHXs6Aau6Pgge+e5mebR2
 UgqTmXLk42Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; 
   d="gz'50?scan'50,208,50";a="359663134"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 31 Dec 2020 13:55:59 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kv5vK-0005BJ-Uy; Thu, 31 Dec 2020 21:55:58 +0000
Date: Fri, 1 Jan 2021 05:55:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack
 frame size of 2624 bytes in function 'vidtv_mux_tick'
Message-ID: <202101010518.2QTHsxHG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vtzGhvizbBRQ85DL"
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


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f6e1ea19649216156576aeafa784e3b4cee45549
commit: f90cf6079bf67988f8b1ad1ade70fc89d0080905 media: vidtv: add a bridge driver
date:   4 months ago
config: powerpc-randconfig-r036-20210101 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6b316febb4388764789677f81f03aff373ec35b2)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f90cf6079bf67988f8b1ad1ade70fc89d0080905
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f90cf6079bf67988f8b1ad1ade70fc89d0080905
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack frame size of 2624 bytes in function 'vidtv_mux_tick' [-Wframe-larger-than=]
   static void vidtv_mux_tick(struct work_struct *work)
               ^
   1 warning generated.


vim +/vidtv_mux_tick +379 drivers/media/test-drivers/vidtv/vidtv_mux.c

   378	
 > 379	static void vidtv_mux_tick(struct work_struct *work)
   380	{
   381		struct vidtv_mux *m = container_of(work,
   382						   struct vidtv_mux,
   383						   mpeg_thread);
   384		u32 nbytes;
   385		u32 npkts;
   386	
   387		while (m->streaming) {
   388			nbytes = 0;
   389	
   390			vidtv_mux_update_clk(m);
   391	
   392			if (vidtv_mux_should_push_pcr(m))
   393				nbytes += vidtv_mux_push_pcr(m);
   394	
   395			if (vidtv_mux_should_push_si(m))
   396				nbytes += vidtv_mux_push_si(m);
   397	
   398			nbytes += vidtv_mux_poll_encoders(m);
   399			nbytes += vidtv_mux_check_mux_rate(m);
   400	
   401			npkts = nbytes / TS_PACKET_LEN;
   402	
   403			/* if the buffer is not aligned there is a bug somewhere */
   404			if (nbytes % TS_PACKET_LEN)
   405				pr_err_ratelimited("Misaligned buffer\n");
   406	
   407			if (m->on_new_packets_available_cb)
   408				m->on_new_packets_available_cb(m->priv,
   409							       m->mux_buf,
   410							       npkts);
   411	
   412			vidtv_mux_clear(m);
   413	
   414			usleep_range(VIDTV_SLEEP_USECS, VIDTV_MAX_SLEEP_USECS);
   415		}
   416	}
   417	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101010518.2QTHsxHG-lkp%40intel.com.

--vtzGhvizbBRQ85DL
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICE1D7l8AAy5jb25maWcAlFxfd9u4jn+fT+HTebn7MJ38adPO3ZMHSqJsjiVRISnHyQuP
6zid7KRx1nF6p99+AUqySAlyuvPQiQgQIkEQ+AGk/Osvv07Y6377bbV/WK8eH39Mvm6eNrvV
fnM3uX943Pz3JJGTQpoJT4R5D8zZw9PrP78/b/+z2T2vJx/f//H+5Lfd+sNkvtk9bR4n8fbp
/uHrKwh42D798usvsSxSMbVxbBdcaSELa/jSXL5bP66evk6+b3YvwDc5PXt/8v5k8q+vD/t/
//47/PvtYbfb7n5/fPz+zT7vtv+zWe8nF1/OTy/uN1++fDj//PnTxYdPn/+4+PTp/vPp/cn5
6v7+/NP5Zn3+8cvZf71r3zrtXnt50jZmybAN+IS2ccaK6eUPjxEasyzpmhzHofvp2Qn858mY
MW2Zzu1UGul1CglWVqasDEkXRSYK7pFkoY2qYiOV7lqFurLXUs27lqgSWWJEzq1hUcatlsp7
gZkpzmAyRSrhH2DR2BUW59fJ1C324+Rls3997pYrUnLOCwurpfPSe3EhjOXFwjIF6hG5MJfn
ZyDlMNq8FPB2w7WZPLxMnrZ7FHzQp4xZ1uru3buun0+wrDKS6OxmaDXLDHZtGmdswe2cq4Jn
dnorvJH6lOw2Z2MUb5lCOYfBeUL8YQ3p1KgTnrIqM05x3rjb5pnUpmA5v3z3r6ft06YzXH3N
vMnoG70QZeyPqpRaLG1+VfGKE++9ZiaeWUf1e8VKam1znkt1Y5kxLJ6Rc6o0z0REyGUVeIGe
LpmCVzkCjBMWMuvovVZncWC8k5fXLy8/Xvabb53FTXnBlYidbeuZvO6E9Ck24wue0XRR/Mlj
g/ZFkuOZbyPYksiciSJs0yIPG1KpYp4020j4LkKXTGmOTPQLEx5V01S7Ndg83U2297359zu5
PbwYKLIlx7BV5jD9wmiCmEttqzJhhrfKNg/fwMNS+jYinsP+5qBRf0FvbQmyZCICayskUkSS
cdJcHJmwlpmYzqzi2s1KBVoYDMwzbcV5XhqQWtCvaxkWMqsKw9QN8eqGp5tZ2ymW0GfQXFuM
U1lcVr+b1cvfkz0McbKC4b7sV/uXyWq93r4+7R+evvaUCB0si53c2jYOA10IZXpkWzAjFvS8
KHZYW2J2aFrOUoL3tlPSIng4eJtEaAwOib8OPzFbpxUVVxNNWBGozwJtqOe68TA3eLR8CbZF
BQYdSHAye00QsbST0dg6QRo0VQmn2o1icY+AgrWBDYcRLPedB1IKDntf82kcZUIbX3mhUsJI
FYniLNhDYl7/QS69mM/AtcAe8alO8Xr91+bu9XGzm9xvVvvX3ebFNTcjIKg9VCEKc3r22UMU
UyWrUvsjg3gQ08OKsnnTgVi1mmB1POMeQkqZUDakdOEn1TZiRXItEkMHHtgAXt/xl5Yi0f05
WZX4cb5pTMGabrkatCd8IWI+aIb9AHvKBKOuKVGZjo/H+XkvLMh4fiAx449qxuN5KWFV0DEC
rPOG4Obs8I/rGcR/0FzCYW/F4NyTcYpdnAW7jmeM8o64rqAAB0uUJ849sxxEallBzPMgi0p6
CAsaImgI35eM4ySgLakg4frIQG52+6En9VYbyhoiKdGj498BnJbg0XNxyzFyY0CD/+WsiEMs
1GPT8AcVwxDiwH5OEEHHEnwKLqjliH7Rlztv0SHZY4yU54NAbzLwjDF3Qaj2Th6uL9Puofaf
wc4Fty4ArClK9JSbHDye7cDEoV9tNg2B6JvOYJdmgbpqwFkH8pGoDEY9p91IRbsXnqWgKUVH
w4gBsEorenwVJJGez8FH8AmeqkrpwyctpgXLUs/S3UT8Bgeq0sBd6Rl4RnJsTFBgX0hbqR4E
YMlCwDwaVdOag7dETClBLuMcu93knrdrW2yAEA+tTm+48RFnBJZkB7ASTcdhA18TDs9j6OjG
ZbFbxOK5Ps6mb4rYrWiwfTW/opc/j3iSkG7e7TrcuPYAdjtDi09PPgziZFN+KDe7++3u2+pp
vZnw75sngDIMQmWMYAYAZ43wGjmd+HB4TWz9SYntkBd5LaxGmNzP13VWRYcQEWTLzECqTW8a
nTEqA0NZgZFmkmZjEayMmvIW/oWdgIqRERGNVbDZZT4m5MA2YyoB9OVHn1mVppDvlwxeAxYC
aTxEtCA6GZ7XfhDSe5GKmIXJWalkKrIAvjoP6CJkkDCEhYpD/zK++NAi93K3XW9eXrY7SCue
n7e7fbDaZYzhYn6u7cUHYq4HOrdOYj+3KgM4yz9+PDnBRtqwLwjq4D2e7wF2TyfAgS15HLal
pQdZU53h/nFGHCBWlM17HYH38MpOIbMbVEUkDO3iMvQf8cgM8hxwsYTdPwtf1WgQyF478LqA
E1hgTkFKFJFIqSLexKtm8Ycre9h1iZbnZ17wh/QpQpUWiWCeWtxEu8dggM6T5TkDBFkgcDfg
09gSK1tHGERxefqZZmg3divo9NNP8KG808D9aW4Q6aL3xZxQcQ9GupykJTk/alOhYJPGs6rw
6oKFwlxRX348PUwGEp14XidBuirLsFDomqFHmrGpHtKx+gBgc0hot8nsmkPObwKj6FlIEyoK
qUvu0ThT2U0DIrwerGiKIrIyoPCu2Op0NyiRDdsdppa5MODIGGTMzrP4+QAOqkqiqT29gE3d
q125Feva2ky6Ejm4vH4sFBFXNdJDtKRFlPVZGr1hlUbJiOtwFIAV6igB4Xs6ShMs1pdnNC05
RlsA7STYaeza08OtLCBW+BlUOa2Lya7epi8/+L4Hg3zBMc0v84P/fVztMVRS7lfDwrTVMArQ
gUhImijvdcXBfzQe0oud9esbu6NwE8TjacW1Zwu8ZCWkA0wxrLQEvhDeI9M6ncAECNCjKKhs
ABnBdQHwXoJZCR9y5mVYM8PnGmYSchwx11PlVZ0m6W7zv6+bp/WPyct69VgXmroZw0aHUHxF
QhW6dytY3D1uJne7h++bHTQdXofN3gENyBeJb7Fti53Khc0YIDU1Qsx5UY2QDJcjlBlEmAal
19Yjr7kq48PQJokbcVDuGOfxNVFPzGvxFdBpFGzHKhOTCh2Yso8xt894thVgydmtPT05IQMp
kM4+nlAY99aeh1ZdS6F5L8+7k6baqc0Ulh89A2RmBrGgynoYK2x3KVVgpyF5dm2rQuRlxmFV
DQnOIcnFahVEEoC1MZ409NwcL5zfaM4ZZtKUmV8doXkU/OUnLHO+9OODe4QgN/CpmILUxLJS
UwSgN14xgTtQyqIwmfWaB4dV3mEJwBubVCFS6YreVVjoCPw8z3hs2snlMvHPKxwHBFgD5EYN
/TDhThUoMoS5LojMKkjxsyj1TwazjE9Z1kY5u2BZxS9P/vl4t1ndfdls7k/q/3x/9mHuAHwv
4DhMr2cihbB7iCjNQWLTfAgIDuD3ed2hCeIfF1mkQvdxen5wBXniTjq7AhNfgue1hkHKAsjf
Px70AitdeaCTdM1jRAPHcrt2J7utHL2+eFs7DEwh8M6i2EenfscD8MKDWxhy3JwP+pAGFCvT
FOAdLMz6JPyvM3d3qggy1DE2BPGQVHWMAwZYykxEVsGODY41MQRWLBO3A70G58Kr3fqvh/1m
jbXl3+42zzBlSIGHeqo3SxzUM+tdSbXxzCtrObALgKq/42WdHPIep9d8mMyfsEkhREHaMFZL
4CkknwLT86qAWU8LrLTGMdf9ikaluavgG1HYKDyGrQcK00EAD6PoH4TO+6CublXckARZ0u2N
GDx8T3vlQEdPq8IdcVqulFTUkWd3LOv6zwBUDaE6whgXjOtNTXhV2MFGpDdtLbgnXufo2JpT
+/4cEMBaViR1ttFo2jIfL9V8ml/1mryyjC3yfgdHDeFx147lrOaN6LYphXSWEiSDFgLHDDrX
IQFLHiQZj4PeYKn9prgdhikYAszHapZycH/lMp71Y+I1Z3OMTRxLeCy+qoTqi7lmYMLC+Wc8
eG5vUxBMTXb5U7wySzx+Sm+NM8UAHGRPjgP+xks9ztrmQTHHkcGIsFhw22smjjvf5kDz7e/I
Y4ehjgPstA2sPMYqlLdyMqky2Gy47bEcjYVTQj5fQi4IW85dD0ADI7aL6+5KacHqdzoMKgjH
yg9eZYHo7ZUNxoT4LL2qgmMsFpDkgAPyz9AyzP+wxnvNlH+4hrahxVRXoLzCvwpVv6Mhs54L
aqjnZzAGtzqEwlwFysgm6fRvA839UurwTHQay8VvX1Yvm7vJ33Ugf95t7x8eg7N5ZBoE38O7
HbWJJLZ3OtKnkQji6Bj6Rcs3ougBrQJkxKMMPyS4cr7OcYinHmivzZbKLBuDdqfoGXh+/yAx
Qt36j3PIJbQAq78KU+X2gDDSU7IRIMWwHSHnVAlzc4RkzenJkIwIMTh6cQfPNUSsvReVRCPT
dWT6/aDJ5lcj/HUtxIfMfis9EI0VpJJR2ALJ9Z09gOqxuin7B4Ikg02b45SBZZer3f4BjWJi
fjxvPHwFSjDC9WXJAo8y/YANEKvoOEYJNoaUpWDjdM61XPqj7zOImD7B6vOxhKzy9NlcOm98
zNfnUELHIhySWHZ04h1Sp6QqcvBRAaGTCNBZHJWZs5iSmetEalpmpBO8bjMfw6S5KGAeuooI
sVpmMCBtl58vqLdCdr4EF807+V59Nsnp8SDBGTl5UCzoTlVm1Ji2uyyrKt7gmDOVszd4eDqy
Av6R9eLi8xtMnsuguNriTm+TBd5xUEHGHZxfOSwi5KC5uXNS32yU3X0cb+sCl5B1yQbvBjQX
fDtX3pHnNxHp6Fp6lF75eWf4voOl6+I0sJba++gSEpqqCANAWJRmBqBLbFV+fTkMmHku5HVE
ECDTtRKwZcbKEgEaSxKFYF+XQerS3cNxuuL/bNav+9WXx427ZT5xR6x7T2uRKNLchJniAdYM
SfAQJpoNk46VKMMQURNy8CzUfR4Q0uQOBz2PjdVNJN982+5+TPLV0+rr5huZGx+tBrWFIPDM
kI77A+2qQDWNKpvXnUNpsCKJK6xBP/8S0UHcAv5BpNgvLtXZJdPGTn3Q4FZ6znnpTvpDA9Jl
BviuNPXOKSvvlMAtVtz3KS49UhwNDoyF9IxT1T8kRpyIZmVN/xwvAoAYXuuZa+okuz24cfMG
5+vEXX44+ePiULDxT9TmnkpjSMeKmMEG9I0ZMp6mOOA5H/ri0y0y0pRSSmpZb6MqACG3Dv9J
yl7bbL4+PmuKE149MGmP573czL8BgbPFQhUVrqd46w1Qyyxnikp4SsPrjIoFh7XjO6LTtRls
amgDPwU+FXxHWI3U8wiLg7xoCw1u3xWb/X+2u78Bbg83HNjdnIcHPK4FQiajbA5DahhgwW/k
vRbs64s0GaWzZaq8jvgEGcRU+h1dY//SVkh1xdsU/Oc4C2AHi8dUMXW/z3HUO4kPXu3qktr0
sFwwYq+gj6dsc34zaPDEt+vkX1iAh1ZjreSkdPciuZ+2eo09dhEYiSjru24x08G6QnuLh62S
kDuR4bO0ZVEGwuDZJrO47MnCZjwEpO4mNGTFVNAL1SFKMXJG4IhTBGs8r5aE1JrDmqqo81R/
NLmb0QgaAjQPyZ3gNCCvxS6MGKWmkr670tC6QVFWgotTW0k3XmzimtaDqMfTL8f7VEIDBbFj
u+0Xl1h3mh7WnxB84ImryC/6tNGgpV++W79+eVi/C6XnyUctKHcBir0Il2px0VgfXn9PaRUg
U33hFPeeTVgyqqoL0O0R4jEtXxBqDseQi/JinCoyOog5Ys+efJIWZqASaLMXiloYRy4ggYkd
WDE3JR/0rg3iyDzQH5RZ88UbvQ1qxvFtVA+TTy9sdv3W+xwbhMJ4nEWVGSmohTaliT035B4H
xgRriJ/2YcEVw+6IyyhNid8iai3S0DW7vgCYXM0NPH1eBuVQ4DhUcP1X1o3kXqqPube7DYZc
wL/7zW7wkSchCl6LaQA9/oanifnE8ACG5gIATaRE4l+0GfS1mQyicoE3iovCoR3q3Sl2GHzm
0TSDzIQveuKG5jUYy7LmaaHJ0uUKL5P19tuXh6fN3eTbFnO0F1pRS0ClvYUOpOxXu68bPzMK
utbnpY0WjjAUaV9RBBPYY66H5dZ2JJD0QLp5bBr40SEia9zQb2is4a4hjA8fj5paEB81pz4m
AsJC9yLpQrt9Nsbd/3yjboRFbSroZ01+Xy70ZL9bPb3glRCs9+636+3j5HG7upt8WT2untYI
R7vbT4E4PDCU1gwwx4FUJWNeu+MZdf0eTxg7CAYdm/JQs8A5vbRVBH9p6x5qBFAB6Vqpvsqy
eDi564zKW2paKvsS5CIdisiiIzKQOBhIMuu36NlQbj4SZesOfCRAO2pxNdgmTpV6FmizN4TO
pj57ffIjffK6jygSvgwNcfX8/Piwdtti8tfm8bm73CXKf/+Ur04b6I17g7oSjc4PLGZ54xgC
b5lUZdvoy0MnCvh43PESfRTH8+uxMYAWgEeUBw/rrwNQan8y2jFnxdQvcdStil0HdbQj+moU
+v3i/69SGmUFSh1lafRLeaxAZReDGBY2Atbr6S8k1E4Y+9TfHw4Y+ue9TXMTMOqBEFIbrXuL
ddEonqzIHlfwodjjwADK4VF/Pg0NCPjbBZWfl3okY4foJyAXjAopHsvnkzN7PtKdAaag8gWf
JUwePcpIBhlwUObgMdQ/yEDNuyngUFLLuRmJ1h6TNiUpd5GxYkwZClKhMrt5a1bJmyrHwVsz
8hrFE6HABt8Yf8HGBMCeOd63RU4tpRxuCZvE8SGi4t+TOBbJy7ifaLpYZDsbHsyQfOfkzhl9
WzeW5q7bbLX+u3enuBVPDMAX3xPgzbtBEk0DPlm8SS+jP+Mi/ODIkZq0uy5cuFwKk2zqSGqM
Xc/Y6U/J7f94gM/fe39vAsTrGnJ9LaK7RJpohHPkwiFt7LzN9H7KA59tDnbMRiGgY3Gnx3Kc
PloqYYa+IJmdkYUuYrMTe0dMc1j/QsqSruM3bHno8NBhoA89pc7nEx4XYdm2bhmv7GWZV9WB
B+9DIGZYNg9lLSwry4wjga6rnlG2mLEy+OCunIFp0TeGLzJ5XTLyBxs45zjtjwH66VptkTV/
uI98Bd69ZiPFiK5TjTVILrDemmm0yDf2hX0Se6d8SaHxO3WJv84TGAHYFHN3Eagj+JIXC30t
6ovh3do3hd6xEbl0fqRCn5eZF+xx+Nhip1qGrUUI82easho3eze8fraPmfQ56E5jjgpEovOV
MoEm8NnqnNKkI5mq6L+iiDVVR2t+L8CVd5R/1OwR6ppPEk5aLW1U6RsbfvMcXR0+rWjOSib7
zUv4+yXuXXMT3KlzVVclSwtoRtSfcx7CwUBQj+CfxrTyZixXLHHzaa64rP/e7CdqdfewPeTQ
XnmDwTb0NYbPNmE5w89RR345BcasJO3klNRBHzcGtnwPe/2pmc3d5vvDuv1AJChvROUVx1ud
lH9jN/hJE944TZNluDcOlFlC1fxvWO4r9ehgDjbgf8wID00O4zVE/okVNkx7DH+e/nH+R7sK
0DBJ6ld139l4zIs4RHaubRmTzg1pvZ2ETTHLYkx2seRNhghkSjO+JF41Vb1XhZLt+EDi+NOn
k8FQsNEKTX2w0dHLjBn8pYhQbSIV+P/wpwGQ8H+cPcly20iyv8LTi+6I8TMWggQPcyhiIWEB
BAyAi/qC4NjqsaJpSyHJr7v//lVmYaklC5qYgxdmJrL2qqzcqpipRdEYA9Z8YhDcQwKhajSC
rlNTpnquITEIGOiHmU3omHZi2McJrUrIcI9KYtpGCWKzJWkDYGJKWwqCfJNi7j+1GCIoUEY3
SZ5aQ3Q4Pk1Ye0QDmyZtiZiO28+Ht6ent2/mIp9Y7KPsxP9IWyeva33KVUB7d2S1kv7Hynzc
yviN91Kr0t4As13vJzz69fP7SdOQ39vEy/pyp3jzp92dvDM0bZ2woneqnMDnDPzO5WiIM3h0
qz41CKpqORwmSncgZ0hSspBkXIyrAl8XkxZmaJKX4GxxZvWBT+SGIIoSiD7oMwZ05eFIEYHj
Kq85JvgAE3CyixVhbSQE/+4+pgaJwIRNTdPxAxGONNLyW6YUqySVz38keX7MGd/tMyUtm0IE
fuUXSJSW1WT9hjtMNVupKZ2c0Vt1zMyw7BF9FutOFQ6Vm9QA6+oIHGRgmpA2LIlsSCzB+0Wk
qnr6/rD48/Hl4fbw+joshgWEpXLY4rqApKKLL08/3l6ebovr7d9PL49v36RkYiPvIpHzCoxg
2FnIKtvjimWWzeAGo+2cKhsMZp3j1LQMvF/2GNqGgR7OtIgg3P9v5WfPVeQsHN366/Quk4U1
8XtooQrMDkq20B66qzLFqwTEtg2Zpotlsgsd/6WbOxA22r5k4LGR7gJRUu074fg9zd8eBnbv
tr23azJGQliI8q2C1HBKGwz/wS8Fu6xluQo84I4tKU0j2MiNE+DwcH1ZpI8PN0jZ8v37zx+D
zvwX/sWv/c4tW9c4HyUBJADSuDIAXeZp1awOge8ToJ5SqSogvA5OFIsKmNcCbgoZfEz3UXe4
VFQv9GD9Q5W3n57rQ2DSjPL8f9RrQ22qhkHEsHqJyFJFbzBjGI8hcYXqYcevPLixKgs+ZVle
0nOGi+ltWeamSVlE/0H2o0+oHBV6MYvkK0LJ1C6tItqJpooiVpuWcgz5ePzS816UZqz4UcS2
7JO8sviA8YXYFhW5ofHd5xAziNVR6lgLnmlWF+gbjjkIjbqljy/f/7zyvRgslrKtKT1zOUPV
/48gdB+MOUclExkcjkNp0sE4fYWxeKKNFFMJPUZDKEM9UoI3i+5JMM5TvUWj1JPn5RlVPopD
79i/KCfX2ck6AL0gXZOWf4EGAadn0unB61LaIEzohyGdNPp0zPkPts3yrM1kkwYXGxRfTvFb
3XZ6WFPJgZI9EDy2za/lTLUDzJd9o+CiveejikOeqmofQKbJIRLnaEIOiWUBjCHW0447ncD7
DDQYJDv5k/EkKvlGEg26iXENlBGZzmvo8wPpjVK08aSZGOICnq8vr6oPfwsRhGsMLFBlEI6Q
ow4sGd44VZmaBBKadzimHxlKIFDC0gE+5MIL+4OrlqCwwDhnzHJgsWObX0AYcHnQTTZG0MTQ
OdhnR/7fRSH8WzAvWgv+ETdxWOTXv41e3OZ3fF1pLdS8ytNWOev1X10taTayHj8pfNIYGFB7
Z5PGykHcFDqlOmJlZR9O3albQo3RJ3wNCV3iMMNqVnysy+Jjeru+flt8+fb4bF5IcUalmdpB
n5I4ibRNBOCQw4QA8+8x80+J4WbmhOXoQznTAiDY8lPkHjy8NTf3AZ9LeGsvAeEuKYukJbM0
AwnsQFt2uOswK2znqi3RsN4sdmn2QuYSME9vj+bxazQB/LFzfujNdBcruBQTm4XxA5uZ0GOb
5doiZ4UGKDUA2zbJQc0/bJ9OIjbl+vwMKtnhKvb704ugun6BdGrKFtyKqGHeSuhVMOrYdioI
xyjMOdGDe39+a3cOZCXtJoskOYMkTOQ29F6TxEX04fb7B7hoXtH9jvOc0fHiYs618pQKG0PD
/+gwiKduyxYyccCVUI4s6bH8jG/6zACuF6rl4/7nFa0pssWPr398KH98iKCNhtiqMInLaEcb
id/vD3FV4qKlug8BRNMB4XI5JIAxVpEAi1SP9925zlrKBiuTTum8SU5z63Kg8S6wA+7sA4hU
ScQvPWcwRhSKQ6yFQA1mEOvz3FGNlj/eqs8piC3/+udHfmJeb7eHG/bw4nexWoUe5Gbs/cgw
TiBLCVFNgejilsBhTsghNw2FzFL6RjgSFZeMumyO+F7poIMlJbXJM+JS/CGyTQQkYXxpsDEB
f/H4+kWf20gGf/Gr+XwTICq2PMBDD/TFFuY4cs+rOK4X/yP+9RZVVCy+i8gl8khGMrXtn/FB
leH4HYt4n7Fa7eOWvmACbn/PL0iaaDzI4q2cK0fxmuSi5vGQtZZnWDgWwgRbJYMJB4oQMhJ1
V24/KYD4/sCKTKnAEPipwJTrRgmea/zedwK5SI5aFAhQBykwEVV6rxbMbyCTv8c+qRP5NQeR
BQMyUA5XeRDGep3odFMQINqiIDISmGqkU5EsGt2zF6Da/oggEZvA2r0GT9mW73aNDlW1Qyd8
xQf86+gZLNdkXDCmIosLC01ZN12eNX5+cjzZJhAHXnDp4kpOYSQBdYUVvz8X9zCWlGdD1Gx8
r1k6kqDF13teNmCVgdEGY5RUTBU3m9DxmGzQz5rc2ziOr0M8yVw2tKflGCVR54DY7l3N9Ddg
sMyNQ9li90W08gNJrIwbdxUqAmJDHy0XyFt86Zo4TdSXeU4VJC2ltaCePvFEMHRSgfnacBwX
8I61niTZ9kDI8xbdG+CCXVbhOjDgGz+6rAwol5q7cLOvkuZi4JLEdZylvLFp1RQPzDz8dX1d
ZD9e315+fsfk2K/fri9cyJj85G9c6Fh85XP08Rn+K+dz/C++pqa3qhNh4J7HQPCupkeHfrzx
45fvWHxffnm44etmRJbSU1lZFRFzLMaui/al3GPKylSUjFms+sfGppMCZGYZ5DRjamDalqKU
FnXNshjedFISj0fyWzD4jZLhFSGTylRyq+NwVKikZjgI1quv0OLt7+eHxS98fP74x+Lt+vzw
j0UUf+Cz5FfJwtoneWlUC/q+FlDqiBqRO/KTiIpwwDqPO4/WxgjT8WmJ5BGTl7sd7Z6AaLDj
dwzy2g9TCZvfDvPzVRuSpsqoQeB7PAnO8G8K08CLcD1crTFg8mzL/7FWuq6kb4dLgFZvox/O
aKOy8ZQjKnpAV8csMqH7isvCRq1jSDJK74oDnuVHRt9fiJUgWcRbOmSR9MnqHdf1NwraiG+G
eAujvuFIyAUly74Aq/rlpXABxbZHu1uWZQVqbvJwH4896AuTYGgSGC/bEtKSot5ZNtdnhzhl
qgwubHq6M8gkZyhySFdtVYfJAWZxrch+PP98s+5Pg9FyahkAbM4hApmmIBaqXggCA55tinVS
gEVKiztNGSFwBYPkNYAzag46yxs8dfUILzj8flXEpv7rko+j5tOkYsDmRUZ0a2RNxIXpQ3f5
p+t4y3ma+3+uV6FK8qm8J2uRnDQh1cDbh8yuRRDf3iX321IzbVGdYG07r3SjpiYeIB3jt1fZ
m35C+DEFjTMCGpXbmhHwXeopE3hC1JboCoWiI4PTJ5IjJNctZJF5xGG+BqY+GzUiG364w+ok
7ZYjVVvEEcUZ0+haEZ0nP34wIs+QZF9+iWPEQN76XIvamGoKKXvKmnpPRKXZKq/ITDhwSkuo
YttzFvMfBOa3fXLYHxlZH9YEjuvOjxysEFuK5pEobTK22s5MaAwnsmzJgqA8RnuxTu1rnu/e
+hYVhlURrpxLVx6ULBoS1oZk8dpdXmioKvH2mLZI8i5iFdZVx24L5gYOsZP4F4fLvG1LZj4b
9tLLer0KHLqeArvxuWBbtZlRLY4ON15g+bZg4ZKqFmiaui2/cdDBfRNNnMBbW7XOGHGnTGwU
+gZ3aT9tZsa6TnaQDb2s+xZZK9BWzSrw3LCrzrXoQmNMLpXHx7dK7nRMe86Xju/YPx0IhkYo
yKPmFNQfk1EaBuul2eLqXBCdSRBhYTM02K11CY9ugqxdxrMcY7ZxAk+M/DtkK98kU4jORei7
sFLMBXHJfWqdIJhaKNnnxlttjD6NCuY7DjEXe4TFE6fnGSesgtToOf/fltUml7g+ebARiDll
l4KQbhUMdHotBXptQ9f4ckxln1ZNW/E7rKsvx7rIlpomC0GqtwFAmkLxAENY6vhEexDlxf1V
XWOTqu6HPcyzsUl9R2fgL00GQWAIPfvry1d0Eck+lgv9ypYogRaE+lCjwJ9dFjpLTwfyK1nV
GFDFTV+AesXRpWo64oNee0FgOKjQ3/ESn9QRIKmbm8BXfc2073Ax0x8etXbvWJHoatQB1h2a
IAhpn4uBJNfikPqLHTU2k76FuF8IafXb9eX6BeKECV+StqX2EGgOy0X2WtmROOOLoROPHdYa
FIwaw+Od01JGDD5KhK4m9K4GROLiRWfykulkBY0ANFlqFInvecelLUoUKgW5VMuUeqOU47dG
feQi9mf7G3D8O6Grl73T7rSHEccbY80UUjCamW5WQ6nssMPnUMUrOepFmv+pLFrX/F4M4Ug9
wAyb8hD0YMwXuYbQ7q6tj02Lqb+E15l5deJ7v3nJVc4WD54v4vcmsAopA+hFhFFcRuLLeieV
VXG8DBqn4uft7fH59vAXbwHUA23BhPYSPmP1VqxrzpRfV7g4Tk8ZUQKSWmol0KIaGjhvo6Xv
rPRGAqqK2CZYujM8BcVf1Mdc8Jr5sMgvUZUrr1fP9ozKv/c1BGc8Sxn8YDuOOXyAGxtc1F+V
IceEfkoWygHI5S8KyOQqa4zHwsatEBzepsGdJh8+Mr3418/Js/6X70+vb7e/Fw/f//Xw9evD
18XHnurD048P4BTxqz47IlglM2MeJxBIgR6kuoZMQxuxeDQZZRkGkqRITtS5AzjVyDxAOmHz
E1ExsjQBBHdJIWaGPGXUuBsAldAoS6YwjuYjNVbYSlTf+RcrssmKNrEkCONocfKb5p+/+N70
43qDcf7IZyEf4uvX6zNuWKOSBinLt29ipvdk0mzQhzptMnIztM41ZSnA6KrdiaDeNqRihDcs
PV8AA4vA2iWCxGpzkXbdsUjZWzWCUAIOmfzspmPqLCFovXNFheGqvrT7Rv2hbPFCvuQdrTpz
TODbIxi1lIfCwBjB93ui4Ep+joH/MF+MPbQVIIwJBLC+LPOQAk5Rjk/f3A0HrYnqF93I7t/4
csHb04uxGVVtxQt7+vKHjkh+YIrkan/PReEF6Fdt+egWb0+88g8LPpv5TP+KbqV8+iPX1/+V
DYRmYZKhNTtEbU0ZLKAxygsFPQCTG4NZvk+VIr2KWabavjN8ktWfwZlkQogZq4ff4BaFr5xa
6iO5OslQUJ74znTUC0eR79fnZ76f405NrG/8cr28XNDHm5a8q/EuYatQ75ijVSg+a/kOxObb
wj+OS71NJ7eO3PAFQW05dxC7z8+xVpG83GXRyeivbbhq1hcdWkXh5aJDG1awIPb4RCm3Rx2X
lQb5fRPJ92UEii1bA7Ii7tI+uYGa9JgauPEIR+jDX898aVADyuKK36MsFylBcKD1nKKDz7zz
KZOXNM8cavZ5Rm8KqOq8Iy6LILv5F2Nwe7jFRWQiWesVEBork2FbZZEXuo71VND6UiyeNH63
j+vst/JAa7iEyjFeO4E3MwicwA1VAmX5oMpLa+Uonqis8ipc+5QJacQGq8D4SqhbPfqxSYmC
fHNSdG7kB+FGH3VUZjrhigJ7bkiBwxXJZON65oB+Li4hFe8ssELXqTETKj9llZkjrA/wbsdv
EaC8ta6EMlLexDkreqizC74CxgnrfoC4VpSXiuur/pI8/2jIGdJ4y5A2/8pE7pm6204U+uky
YZodLdYRFZQr3tyu/ydbOTlDIdBBdotC7owe3miX/hEBLXSoPDkqRUjwFAgMM9HDvRQal1Im
qlxWFvaeTyNCJ7B84TvWevjUNValsBTHEV1UR3bO1P4hUwTOhea8Dh0bwrU0PXGWNoy7lleX
OlckQQtUSx07UaKNwIFbp/zo9wQ0prKOg/+2WhgsQZq3kbcJPBunol35HjVtZKK+JBsPcf6/
w0MQjdo2SSedYCSVmvGgpyZx4MdZ0ChRIETz5/c01LwbVDETFNS+1wtnLIb311u+j9zLnw4W
OtvnvekF1uxR8bToEbbvMEASkVMj+uJHu6jMDu5FO8xCXQXOilp8w9csasPNMmAm3+jsOa5y
aA4YWCMr6kyUCULH9mk4Vx8k8KhP82RXdsmJmpoDSbNtqF7gYNID6MB6rNn47WdvLcRgox49
ymLD0qn28WeTO4g28hktw9WVOTSBY9yAFlSkj11SUhknA1pQzVJ1+GBp7afb5B3G4WHYpcck
73bsaNGHDlz5UnDXznK+zj0RfcwrRJ5LiXcDyWDhLZgaljg0fVgjMyzqSyBt+8OHuKBlb+oB
YchZAwKETW9NVcJya5uKwvlIcGz9VeCSsyJpUYWHXbRcBZRUKLUERVmyjeh1YGL4JF66Abmz
IGozN92AwgvWNNe1H5CIwF4cF7TnimuKrb8k+72Xu9ezkwwntDgbl7SfzMCubvl+SYltA8Ex
alzH8Yj2iRsRhdhsNmpCw/25sLzMhnKmJaMhZdwaDtAGXrlpmkx9Bb1RNBRA1MfhW2brNoIX
6Aw+AFY2SyDbl/zUakpai4sUQ1mQITQq6PYqhDOVGs7xydDz+88fXzB62paxil+C9Ji8NJaP
xOlgB3jjry0+VAPao3cy8BMQSgmPmsL4NWu9cO0Yyl/EoTsS5nezpOabqPZ5FFtC0zgN76hg
41xotTsSxJtg7RZnKl8jFqKdFRNMj3QBTAEGQEprhh2Cp6DEawTKt35g0zu/EAUgJrC2Bt1h
KOPIiPSNklx5iwQYvwInoHuFHJlmCyPXJ4QBlabyVt7GUot9tlp6LrZdWf4txFs1WeSTbAHN
i6S1VMA2+9ysPG2cdNMOwITbnKM3S4CpTW7EahKnGG5+CgXrteWzQd2i1sA8lyaorEKZoBuf
gIZLE8oPjDUBVJNijuANfUBMeOqmiVh+Y1rp9eewjV54ckg9d1sYk6hOWvoFKUBWUcpFeJ+e
B/h1Gzhz6Chog3AGfxc6tpbVh6BdyQorADZJRGyaTbZcry4UoggcV28xAm27ORLc3Yd8LslZ
iLeXwHG0AtjWd23Asq2MYtuCzM+OuEFnrXzRQjoC3w8uXdtEbGZnzSt/s7T3MkiFoa2beSF5
cdSLrlhekIEpIM+4TiCtbqFwlJ+DFpC1tgNIikm1lQgnxasR7bnadIZao9qVBAt9q8kkJKBC
+WnWaEMaSSS0RzDjUOqk4Di+z5F6qOHyYM7dAcOOsap64YgVv9vgJ5YqnnPXW/vkeZ4XfuBT
91gsU1cpIxB1vgafMtrzOwNpAsWDWajotdNaAFWPGxSEmuU695Z6IecicB1arBnQ1mE6F7Ct
qsUgLDRLCZfODBuhvTZg1EgDJjBcTHWSzYZ6IwU3vXJfCNvERStzwKhCvPqNjumdRHVgkUq8
B0/Tca7IPjk2IXbSlvUu1nI/TH7X1tymI0WaXZK4O5V5y+T3wSYCeK/5yHKM/Dtq7mUTFfg5
YkTDSDdbKpchdorRQ0HpMomGXDmUjDERgQQfqgYfFQni/TyHOPA3IVW7XlAnUXjwWEpFIZmc
kRMRYTKjaNRZpqEuZJ/qYrWKWfmWycM2Hrm4NRKX/jxlh8APyLuyRhSGZIfqGm8pnADF5ne6
UxCdAn++CVmTb3zZqqGgVt7aZXQl+D6+srgwSURcMFhTx45G4lnKAHUSpbdSSXxy1PEgJhtG
mEQlpDiD5gvlNKv1iuIN14AgtKG0K4COCyzrB0Tw1XK+TkizmmGwcWgZX6Py6BulRhWQHvZa
c9RDW8duSF9/lSh0yGUrcJ6NfVS5vCvfqWEVLF16mKowDDY2jCqtybjP643Fmi5R8ZuRO78e
hAnKUgjHBfM7pH73mjDgObEMyNlXpcffEtehcSe+P63sqNAy5RC5ea9DKtKCPeE/4xMIelpK
GXlstt1JccafCIwrnITiQgsFb7yiYo5lTwdkY9GCSVRBEa5X84e0dMWjOOS7ANL2z7MYhSuK
A2fvrOaPeU4Tekty70TU+kDz5reJwOWTdJa5dE+jWaw8f/Xe7BBXM9IgqxOtyXaYzigazvUt
QzCrNzfIaEcfjYzvHe83RLnXSbjR4kJwP+n+iwSNuDK8v9Zyts22kstjHRm3OMjsTqZ8zLNa
ulZBrmSAoFHaUzj2wZZyAA28xBtJUZhjaRxTR8GAIUpFghURwFl3n042lk15uKd4KjTscF/O
FwwZbiuy6ILfBe62saX4S1G9V3pWlIf3aOqoKGZpsK9tmRvEW2ER7/Yp4f9k8AFF137tW5T6
gLZpsJAtwVJB2F/cHMi2cX3COIsmycXrkL1r69fH63AfhLQxsklDtIgVmLhHf8VAYEXqgK49
2Qj6LPEzFPgOkQ3ZxLUNNTi12vDo6CB33OgUajRZ6oov8NAxlYQoi5PS8vpU31Hlof1/xp5t
uW1kx19RnYetTG2dHV5Eino4D02yJTHmLSQl03lh+ThK4jq25bKd2pn9+gWat76Adh4yYwHo
OxoNNBtAVaSKz1p8Ck1T3GxHaX98tD7lbNIXZGoHq6dqNmoYglb+uH+7fVg1J6nmaXzY05wM
b4IYTJnAYlY2KGZsX0YNQecwPUWhxsURWI5OQjVwHOYLwbQpC7kdkfiYcukJzZjs0Oy2zLnm
O+zTOp15Y4jIQu46bPK3CJEJ3yOU6pPCj9cqGwADNSeCD5XQsAKEGasfHm7JmIc9Zx/zOXpx
9Ov17fJ4/39nnKG3X09L9OgGo2QDkHFNzOzAUb6cqNjA2b6HVG6HjXo39iJ2GwSbBSRn3sZf
KimQCyWzxrHU9zY6dkFVMsgWLuFVMsen3kpoRLa7MJIvja3ctsu4NnIs5RJQwXlK3ioVt9Zc
5pXetCkU9ZbPMJlsY4rVHhut13Ugv2ZRsKx1bOXW3uAJO1jq3y6yluKLGGQLl8k62cfrOHTq
4/qyIKhqH6aXjAQl13hkW8taWPU6cWxvgX2TZmu7C/upChxraUXa1LXsarfAZpkd2zAVsoe8
gQ8tLbYgJVtkofN6XoFoW+1e4MiBIpOblbhtfn27ffp2+/Jt9en19u388HD/dv5j9V0ilYRj
3YRWsN3qpweAweyhDLceewKT+C9VzAqgvKEGoG/bBClAbRWIbK8KDwENgrh2bTWgAjXUO+Ft
9d+rt/PLy/n17eX+9mFx0HHVXqmNj+IycuJY62sybCi1W3kQrDc00854s9OA+2f9O+sStc7a
1mdTAOU33aKpxpVtLQR9TWHtXF/vdA+mQ72IoXoHe00+bhnX1wkCilM0E1/DQ7HtO432HPIu
p1l6o3j0WQFlT4+LaSnW8ljG8W29qhOv7Za8wxOFBsEQ2xbRC4HsV4oWdHO7lMna18F85cZq
XnyfAm4ojjB6hkzbLjZZO5ZZBHYZfVMjeCwMfGYbDNVPtHoxPrF5s/r0O3uxLgPlS8wEa42R
OhtiogCocb9gY/U+ZNj0ZH5fQKX+uvcXIEa3XprGvG18S+8QbEaP2Iyup23aOAlxutXYMTKC
epY84DeIN6pDaGlAt0YPh1EFKpTttnBYqzAe2SbP44Z0yUvBfj1iBw5K3Q5D6NrW/JEBUTWp
E5AfdmasvrgojrXOf41tOIDR4imm5DXIgdFwKizyHu79wCEnyLFJqDZFvXDbjI2ypoY2czAs
f67YI6b9uX368wrszdunVTPvhT8jcVaBVaL2TDUJW9CDFz42Ir6oPNsh7+BHrK3PXRhlrmcb
S5ru48Z1yXfVEtpT6xqgPtPBsDz6bsb9aBkqBjsGnuN0MAtLsh/LCS2hdxmt498XKlt9/WAv
BIQIF4LNsUwfctGaelL/18ddUOVHhJ9rqevlSUNYu5Or82htS3WvLk8Pfw/a359lmuoNAOjd
YwvGDNJZZ+8ZJQzLPogvj6ZMlENQGJFKRKgrhu7kbtubz9q65+HBMbQkAaU+9w3I0jGEroAu
61X4LZf2t5uw+sr3QG3jolnt6qxbB/vUYHMAmlopa0JQTN1lrQfEhe97fy31swWL3zupTQn7
xiF4FGXzwttARB+K6li71CcSUbiOisbhalMHnnKRMa/nqMvj4+VJBPQW0V9Xn3juWY5j/yHf
aBk3IqNktwjrodRWULVqDOOlD51+uTy8YigEYMDzw+V59XT+3+XN1cfg39E515Zuc0Ql+5fb
55/3d0RoiFh2/YQfXZaUCShGSlBjhMclSK92DFREzTwS9elTM6OwgFN5nCWiq6w2sgWO8F04
o4iaoXNZjRE6yyIt9jddxckgDFhgF2IEMJ7hh5NE9vWfkZh0QiRO+xccfyY65UzEs6hHD1mJ
AkNHdWDpxnNmRHMeI05qOoDc86wTDggL06DgpqAC56e7yze8gH1Z/Tw/PJ/7dEivyiIPUaZA
Y/LVavuYNantr/WeIgYTieLF2TZYOJV1Ot3XS/LXX+pmr0ZUGRXKTQy8yHhMRwWXS8mDOu25
wYMnmMDFMVQRqzBczCHOqIAwE0l6UvMPi4qTqhGh9KicwUhQspyn85n3+vxw+/eqvH06P2hr
JAg7hnXyqgb+TA32GUjqY919tSxg+cwrvS4HFdzb+ovD60uFBe8OmJAYrP4taRcopM3Jtuzr
Y9blqU93A2fjgzb7e+B32+JpErPuKna9xpa9qWeKHU/aJO+uoD9dkjkhsxy6Q0B4w/J9t7sB
HcBZx4njM9d6f6iYdJNf4f+2QWBHdMVJnhcpRi6zNtuvEXnwTLSf46RLG+hAxi1PP9smqqsk
38dJXabsBsZubTextf5gLkHwxNjVtLmCig+uvfavf78IdOUQg+pP6iZTgbw4MSwgOEq5i5lI
ijTJeNulUYx/5kdYmoKkq5Ia/fwOXdHgu8gto2eiqGP8B4vbOF6w6Tx3IYXmXAT+y+oCQzCe
Tq1t7Sx3ndOG/FSkYnUZ8qq6geNNiuRMdbxiN3ECfF9l/sbe2h+QgDG1sMRVkYdFV4XACvGS
3jRvFJbVR8w65se2H/8+NXcPjNS3KVrf/Wy1FrnHJKogYFYHP9eew3fqexqanrEP+8uTq6Jb
u9ennU1+kJspxWf59AuwQ2XXrUVO/0BUW+7mtImvF/s4kq3dxk65RVqOkqhqYMWSFizczWah
XYWEnkd8ncCidu2s2VVJUTTVMb0ZRPamu/7S7hlFdkpq0E+KFnls62gK50QFm6/ksAxtWVqe
Fzn6/ez0XVM5deTWwiqJ5ffT0iEwYpSDa9aZw5f7bz/M81oEZIvrpXM0OsAUNhimHLQRXd6P
EjGS0vvK6hUcOB0+mTDEdIa5kA5JCUpZE5cturbteRcGnnVyu92ymMyv00nlXegw6jZlk7tr
3xCHFYt5V9aB7ziLqLVWCpQt+JcEvmOIDQBvLfLR7Ih13LVeG56v81Ip9TUHzEncHCLfhZnD
7BMLVWM+kSRkvQ/Hxtfa0LAboxkVTz1yFGQgeHflWj9UAFznvgfzHxhqBhYpY9upLZu0f4Gk
fxMCW5Llre+uPb0KGb8J6AtimSwu9RpEFM/4tPH074Ta3jI3hloPb3J2SpZMJ1ZF5f6oTk3W
1gZgF+r969OAvSva4CjmeSMMnu7LMamupiCnu5fbx/Pq37++fwd9PNYTyIHZNWS2nvsBsLxo
kt2NDJL+HvPPoxWklIrg3y5J06p/EaQioqK8gVLMQCSYriJME7VIDdYXWRciyLoQQde1Kyqe
7POO53GiZsUAZFg0hwFDyhAkSfYExYyH9hrYolP12igKOebjDh+x7EBN4XEnhyLc4auYCF/j
qcQIGSzCWus5Wg841kZLbWUu+88xFqhx3wHVqGklAXDaM5u2NAB5PPGa0o6xohKzBVTaAGo7
Fo7I6orUKZwER61h4Xu51HASgvXcNmtv4bMcdrx3B1pCY4JqOG8zOjrIrr83dRZc0LF7hqWj
YGu8sN+QAoTcg2KZwtu7/zzc//j5hrlEo9hMtTQ1gdp4lLK6Hh4NEmuAwXtSEdleJpwnfsaX
1xkFnvzep1ZVnLcUDmUkIpwUDBrxkvU65THVA92hbsawGB/4W3TnBHJDB/4ZaSTfcLP85DpF
VC6caSw6nqBGRX8RlojKwPPoWC/T0mCw8opRvTRdj2ec6Qk749Sgp1JvTp5jbdKSwoWxb1tk
bXCOtVGeU6jBXZBsiytBvT/g+7G8eCapicABhRc58y842gv1VycsV5CfOY0QUo7EROmxcRzl
5YpxvTovbl0cczOl9yGJzavYQ6LEh4Sfc3yopgIlvzmQ/AOEFbsmuOZI1DjEATN6VD+f7/Dz
C/bMOAawIFujKS9NMMKi6tjqLQhgR2YhEOhSeRcoQEc4rFNj7Dy9SqgjFZHRAU15vQgYAPCL
UoUEtjjuWaU2DYcqS+UIa4JQvFXSYDflkNlYaRFmfl/keNGxtDQdx+vrpdnA59FFptfKv9Jp
cPoFzMKkitXe7XeVUck+Ba2vIPNGIxpa0JJECeiNtjbXLG2KUoWdEn4tbl+0TtxU2pU6QhOM
MayBGq539jMLyXgriGuuk/zAtGqveF6DYtOokQ8Qk0ZLwegElmtTl/K8OBUaDCwBk9tHKP4o
FSthwux2JBsgvjpmYcpLFjvvUe23a+s9/PWB8/QdfgIFN4lEaj59WjJYyIqMbdhjb3agFBz0
UqCHCg5fKpZEVVEXu0bbVWjgV1zbViIj9shzSit5Q6c/R1xRNZzKyIk4OAwxqBQwurSoErCT
ozOKArxh6Y0czFlAQWrAKUMCFdtGhk9nlz6YkUDPc0kSRQnt/CFoUpaL6yYyU5SgqPA2X+1f
zfA6W4eJuzoNWHIeD1l/ZXDDWWaAgOng2OCG/INqy1SP3C/zD/k5RUgLvH1ldaJcCk/AZQ6v
M1Y1n4sbbHbupgw1Vr1J9A0OIq3muiTA25J9psMwK4yZWUCGL+1XLH/Eo7kr64VoSChgkyQr
muXjo03yjI7vjtivvCreXYCvNzEcyAsR2cR8isxc3eFIpXwUp3NaqkmECU1hTmFCKTYi90qi
KHgG7ZQOSgJOekwN1uMhSgxLehoIUgzON+RAs4W0wxkczpgdkhh6zq/FFpZ0QI6Xj2g6KbJ/
gnZCghJVSSRCBsLWV6NeCIKwQmmSg5KByZgiTI3ETc0RSCk3FFEDFSxSpWC5azneljZWegoM
nkq9DO37GGW+KzsJzFBPh4pgMZYxTAGmPliMWH/tUIX8rfPOwBaD/wpsH5verHaAG95wKtWC
r1zfMYyetNZHDkDZDBuAYNphnKksU3WWCetQnydmrEtU6JutBFrUqhEcLLihzBNBWp4T2pe9
BAR0iGRTN6w5mluivyxYqtEMGNs3RLqUC5QcLkZhvthRIg30421cb6tPWBMxdDbWoWnkbe1W
H5wZ3W3iXu8vo99ThLSl3ie1a+9S197q7QwIp50exc07XDxH+/fD/dN/Ptl/rEDGrap9KPDQ
yi+MfU8J49Wn+TD7YxbC/WTheZ8Z3TfDXmvDS1s6L5fAYgAdfVJFYLCZ2Y29vCG3uLOhPlD0
Nc4+6dMsNS/3P34ohmpPCoJ0r1wGyOBOS4Cj4AoQvwc5vbOCzZp4AXPgoH6EnC2VJJVFhSIq
6Uh6ChGLQJVJyOyGCp16o6OgYt4n0RLLImby/vkNn+a+rt766ZyZKz+/fb9/wBxUd5en7/c/
Vp9w1t9uX36c33TOmma3YmCY8fydkQoX348HW2KKxY9G2qe3X2yrFPcnlPWizusQJm3AsSji
GCcWX4bcjNMEO+32P7+ecSpeLw/n1evz+Xz3U05UtEAxaUHw3zwJWa7cycxQsY8w8ig5NTpd
38ePSFkcD0tCTEEVZ6yrEyk5KQddsQMZix62dVQdQw1l+D5XTdQpWZYQkEX22g/swMQYyhMC
D1FTgACiOghYwDSg+6n1DMDxBvsfL2931j9kgtGvVwLlQw5LsWIAWN2Pn+sk+YGESd7s+jRO
ek8FpqwW4gJPFPTzSNGt6iR8dv8lPd7DrhAK3Uj+TgBwhUS+uB4RLAy9r7x2KQwvvm4peEvW
FNf48UKfjxnTRbDjjxWd4Vkm3dBvnCQSf0MGJxkIDjdZ4PnEiOC89rdKFJwZoYZTVRCORyK0
EK4jpqq9yN04JiKpU9uRE56oCGexiEO00gKc6JbIk6RFF5JRmgMxReJSMycwi4iAmuu13QTU
VAt4dx03Jm6OPmj0PvziOpQFNu0YPWL9hDASEE0LFWHwoC3VWg3mx9Yio+sMFLvMtanmKtgb
Ng335MwrMj3FXzwDI4zcTNUJMAvxaCaSIKAzbY/j8zKzyTqGTRpMR1mZaGJHFmH42iHH66FE
psdcfqa4MrYvGGEErwMnObZD7EEx4G3kjC2VD7dvoPQ+vt9MlBW1WRfIDofatAD3tEB/EsZ7
by5RHAVet2NZkt4s1AAEH9VA8iFgNk6wELBNoln/Bk3wUR82a2JVRBalNdk342MuQeCToqhu
ruxNw95n4mwdNAH9hkAmcd8bFRJ4xBGW1ZnvUMMNv6zVkHQjD5ZeZJH8gcxJxvEa8PrX6PkU
dW3qKPp6k3/JypHXL0//RKX/XU43EkZOW0BP3DgJrwb+IsXUFF3OlCkb1zL9WdGkrM+gyr7Q
fYwxSL6ITzS3NcN0FUzCnJSEB4Aw3x2hZsrzvfLuCGFTRNcDy3Oeqi1rT1X6zJfAD3tsgnz/
d92xNsGitEYnnqEslEUc15ASqmKJpubji8cECvi0BtQnmRxYpIvLpXbF84gDVtRl+4y+7Zxp
qEdh12LAWtDoASpdqIOmG4vUGNMqRVMq23GG65s86pq26wnnlRh0XGMxx2kZqwyPOzPukKh0
p7k+1NcCTi+jqKjLihMfXqZRw+6JRhcklXMQAyZ8uQAV9sbgUDK++VM7L3HdsR3esFIf5GUr
84i5L4dNrqTZRESMicEohOC7NMQIXpFykWMg0TZuPZuU46Lt6lhLA8at1c2xhBRGP5zGJD9E
Xb37i1xkcIjJeE55xJziUuIW/IVPpySIyL6SFE0a6sAqyZWEZz1Ub6ePlHF/93J5vXx/Wx3+
fj6//PO0+vHr/PqmPJ0aPec+IB37sK/4TajedNYN22vP6+ZvWUUa7xLyg8ABH8JEqfTlDX4I
17KiUBJTjoSwWLxk8obtr9a0SiaYnDdzbqE71PEV2Vep5Gj9EN1WqbagmZBt14nnrtW0TyrS
W8hTpFDZ1FWgSiJfvKsY2QFYwkRxxDeyA5yGU8xBGSd8VLuopNvrI4vqk/2lqBIqFa5UUnln
J8FPkbcwfUOk7Per7QOjY15oiZOuQYvP00Lk3OwvGkRO7fry60XJMDR/G8Nv+/ikviuTxl+H
6pqN3q1UJVIdLEnDgupuAt09ShdKvZsqZhy/v1sJ5Kq8/XEWV5Or2ty0H5Gq7QiNYzc9eq7O
j5e38/PL5Y68euH4Qda85xlaJgr3lT4/vv4gVLkSNBBJG8OfwotWh0lydGxJqXE6H/FF2XVS
TY4ZMPtP364xbeesR/UIGMGn+u/Xt/PjqnhaRT/vn//AW8m7++8wc/HU094B8/Hh8gPA9UW9
jxo9LQl0Xw6vOb8tFjOx/cPWl8vtt7vL41I5Ei8I8rb8c/dyPr/e3cJyf7m8wCbTK5H1t5It
KFLHJIoGvYRc548a6i/P/ydrl8Zg4ATyy6/bBxjY4shJ/Lz2oG9Ndnl7/3D/9JdWkapPnqKj
zFFUien6+re4Zay/RNfr067iXyZ9rv+52l+A8OmiLsWAhEPxNLqsFHnMQasgnTMl6pJXGAmR
9dYOWaF471XDUUmrhxLllOvhQ8qS1XWi1qiMMtYnfJ6Qjp/67x8DhrdNNH9u4X+93V2ehq1q
VtMTizStn7UEyQNqVzM4eumPuQPJ4vfsAQ+nt+uS6Q1mgjFfFVFWJK1aLlw2uWer4fAHTNUE
2w0ZtmEgqDPPU317BwQ+8FgcFejKRUXp24l8AiaYuf242ynBfidYF4UkWDFtVLhuoEpYfMAx
Jx2R8Fe7ZCeoVPDwIQpObaqH/Z+7mixjkIpWa9w3E4kjk4Appb/8H8Bzjb1kv7s7P5xfLo/n
N4VFWdymyi34AFAz84QZW8uXIP1vnSYCRhHfslIaqufJiZkTkH6+zFVi62WsipVIBwKw1QBq
XKCrto4p5+irNvqMrufKbsgi1yGjOGUZ26zl3BUDQMtbBEAt4wOAgjVprQFm63m2nueph+oA
OUimCM3pKQDf8RTdsm6uwFKgWkVMyIZ9PB7nKkv0bPJ0C6qBCGIyhPMB+QZCTWeajbW1K0/m
mo2zVbRmgPiW3yU7TMaDHpRpyqloP0C3lR9SsDgRFzl9Dt0R2Cd3NGBBoMIijPhl2SqwT6cI
EkeB8vzE06LkU/paSb1uN6oFkOTMaUXz1MfnJnLWG/WZDoLIa1yBUZJRsdZ21dtXNMd8MjBW
FpXu2lFEas6OmJyDIBYXRyc8e/SXG1Muhy5RpmSGn7QMxjMGEORFbp/gQZ34/6fsWbrbxnXe
31+R09VdtFO/4yy6oCXZVi1Ziig5TjY6buJJfSax88XOudP76z+AlGSQhNy5mzYGIL4JAiQe
0ldHX5z4bm6oXBXVGXe5IVVI2dWJv2uYmVz5DB0htJ7c823CdNTt2DNmX9CtHXy9NS5tA7pR
VAigq8CI34UMOAukJyIjeLf7RSWqv72AUGa6aMTeoApG1UjsDZWWxH5uX3cgy1aXunRv5pGA
A2Ne2YKS/aIQwUPiYCZxMBp37N82t/Y8OWZXZShuTWYGGtB1p2Osaen5/dZEddieMEN3VjlL
6WOdTKVpdLh6GN+sed3VHhB97b17qq+9YVaqQFFUQOcJ6EzGshovWQ2I1sZkWn/nFuoijbM5
twrkcdWQmqHVDlcbvYp4rjzsUG9vzB5GpxV+DwYj4/fwpof2TDKwoH0z5bo/HN2MWnPZ+WmC
LoNsGCQ5GPRIk+JRr0/fFIHVDbsmNxyOafwz4HiDa3qRA6wBqhoOTYard7tvX/1bceDZ4dO2
GzD3Tx+vr3WkLXMzVzqOithlHAsWTusKnPGLQ9lIhmcjarsJlWvv9v8+tvvHX1fy1/70c3vc
/RetAn1fVvH0yO2PukXZnA7vX/0dxt/78YH32XRhXqTTb7Y/N8ftlwjIQNGPDoe3q39DPRgj
sG7HkbSDlv2/fnn2l73YQ2P9P/96PxwfD29bGNua7TWzMYln3REnxE3XQvYw9iXZbGeYJcql
Rb9jBLPXAHarzu6zpOyDsCJ5FL6+1+jzosln/Z7t12wtVLefmpttNy+nn4Tl19D301W2OW2v
4sN+dzJPg2kwsN6FUV/s8KGxK1SPrku2eIKkLdLt+XjdPe1Ov8gc1Y2Je/2uGdNhnrNHytxH
QY46w+SyR/mC/m0fUfO8YO2uZXhtiM74u2fIwk6jNVuAjXJCi9zX7eb48b593cLR/QGDQDo1
iUMjYKj+ba6X6TqRYyP2bw0x6RbxmqYtCJerMvTiQW9EP6VQa1kCBtbrSK1XQ1umCGYhRzIe
+XLdBr/0TRn2PYONtQ+ZNvVVjsDM9hX+d7+UfFI24RfrbofGuRUYsd78DbvKcD8SqS9v+i0R
BBTypsWKfjLvXg9ZB3NA0BPVi/u9LrUWQoDpmgAQ3pcBEKPO0CIdjYZc/2dpT6Qdau+gIdDj
TofePmC+ddB+IvNdq5Y2ZNS76XS5iC4miWnZpWDdlmyE36XotuU+yNKs0+IHkWdDGpMpWsFk
DjzCRoETDQZmlgoNMcxvlono9tlgqkma9zumIUgKLe11EMq2VobdLpsOGREDW83u97v82oGd
UaxCycZFyD3ZH3SJOKQA9PKlnoccxnxoaoUKxEaMR8w1LQUAgyHNGlLIYXfcI/buK28Z2Yk+
NIw101kFsVKzDHIFY+MwrCJQBcnUPcBswNB3KZ8w+YB+5d0877cnfR3BHB6L8c01lW7xtzEt
YtG5uWlJ/1FdQ8VitmzPySxm/ZYs0rHXH/YGRv8rNqhKVIf8hW0F+txwPOi781wh7HOsRmex
yiHvNLh+6+YG7F9Naom3l+3fhoKg1JnKx58md64JqzPv8WW3d2aBMHgGrwhqD46rL1c6q8XL
Yb+lLB7rn2fKZaO+nuRt3oEObWyyrEhzjpLQ5eiIESVJSi48zTlC42++uqpHfLur02oP4o+y
l9zsnz9e4O+3w3GnMmE7K1Rx30GZJtJc6L8vwhBy3w4nODN355taqof1WINqX3bNhDqgRg0M
PQvUqI6VNwdAQz4TfRrZQmBL29h2wxhS+SiK05sm90RLcfoTrYC8b48oNzAMYJJ2Rp2YPL9O
4rRn3lvgb1Na8aM5sCmaEiXFbCxEkkzpyIVeikmVDAUg6tJ7KP3b1hqivkkkhyN6ha1/Wx8B
rH/NsBQVm4Kbl+GANnWe9jojUt5DKkD2GDmAhrnUipo9wme5bL/bP3N73kVWc3X4e/eKUjOu
7ieVy+aRmTklQZgHfuhj/N0wD8oVXaaTrmFynIbUzz2b+tfXA/NFSWbTDmdbItc3ffNBACBD
VunBIoixPx6DfUPWXEXDftRZu+N4sfeVbcLx8ILOf20X6sQQ4SKlZrDb1zfU3NntobhPRwC/
DGIjnkUcrW86I9YCR6PoiOdxqoNKn+UOhHDpMnLgrHRO1e+e4RjONbiZW2ouAz9cLx0EKlsP
9pBALNoETHPOyxSx1YiYtSjv1/HQrie/494mKkwVZ0Qfj9mtinTNOMZnt2hgY0gk0LyQP7ud
cppiUuEtSss0DThCkJP0jc5Ldjq/v5IfP47qxf/cpsrkGAOcE93hDKyiZWr0WVjyME73UuBD
bQ/JuKGBjyu75TJPssx4JKdI36ibYqSIaCgHROGEhvF6HN9i3SYuDtdBZDSYINO1KHvjZVzO
ZWiIUgYS+9PSl8QLogRvXzM/MM5vc2SbT9BKwRPEhiz0owCklu86hiE5Zie8ciTclB1i//R+
2D2RI2/pZ4lpe1yBykm49DGxU9r2gKGLak49Glmk9p6jP5vtZwLxyUf6wjBOrSJ/lQGaVcVO
L+Z3V6f3zaM6Lew9InNSL/xAB7w8wRtoahd/RmBMxdxEOLewCJRJkcGKAohMWsL2EbLGwZd9
KG3IpnkmjId1ZfadGwFvalhpxfOy0TKfuwWBCFCwhaUtIXQaAoYt1hdZ7uifv5+mM97GnURX
gx8qXAZasC4TGu0JMVWQlMonmRhnNSg+9gghECpWjVmstOJmKdgkQPsK7tjCuBtpFKzP5g1E
j2FSnxb4dju7vukZF0QIbkudjNHkYtOAj6uiYQdxmaSEGcgwMex18Tfy9HazFxmF8YSN76U0
IU+HUDaui5Ji2ZK4OZFG2mLLPEk/LOzQqVkxNTJSK4GSGUhloDKlIjNiAQAoTGJhHHDBOu+V
bHYOwPRLylAqAKpHGL/Xi6xyFFIGXpHxPvFAMihNAUGBChlg0FfVlPbPjGotVF2phbF8Xr5P
/J75y6aAouKJJ7y5maQ9CGEYAccO03eFoPTfaWP5O7eWgTIIHA5BP8bgwRgqh0zPum4I+X1b
JLmxY9a/bRtSZBxfRUSyxODDjTO68VGFQ8v4kFvT66kkCZ4JUEgY3rycirwlGuxsKlvWaOJp
FC2yhpVJr+Xkbiga+0OMIinzlsuMhhxHvb0VVbIdIRdRMnMbpNFsLyZ5Zs1dDeH3WoOFhQqS
JrKXWetSaoizYgkC2xLolNM7H6xAU7fL7BqvZ+w31QVTTJvCu/8sw8iduGmvbY89JMvAGiFs
JZWI2hgE2rPbPEfDygma3wPX52pEh6cS8Yb+ivaxaAZzb+PJsVeCZJzdpxh5kR0goMBhYTnk
VDahvM8PbK4PFZEmFE6tY74y0eqB5bAGBUAvJQxKo8+saZtpbpoBvvriTmRLy+nGKNHisRqY
ZwGRS26ncV6ujLt+DWKtorAALzd2hCjyZCoH/OrRSHP1qDPHWBZeITnLlsp5in6M+agwKYLF
dhooRmkMMRJ66beEE+RoRXQnVPzxKEr4/AjkK1QdODcOQoJpYFTXWxoZBzCKSWosDX1VuXn8
aWaRmEp1JvJWO5pak/tfQJ346q98JZw4skkok5vRqGMfl0kUBjwzeYAvpjyjKvxpaaPqJvHN
0FedifwKB83XYI3/LnO+oYAzZjyW8J3V7JUm4nYxIOq4PpgcIxWz4Nugf31mSnb5GlJ/Eybo
jyKD/Nunj9Of4yaSyjK3VrECOEeqgmZ37NBc7L6+hjhuP54OV39yw4I+OEYDFGBR2TkR5pCo
mDCwR1uYB+BxUDAwaQjslFPokcabh5Gf0aRAiyBb0gY4N07zYgYMbMLOi/7vLK7V1wNuj4mG
EUrt/ap9TrligWPeJdmCUp0b6AXp3BiyCsAdVl5oEIa1xNGzgJgL7w5YgJIggyrfhMHKkOpO
pcW7K+d8EERFU6QYbtn5dC3ynGdcCt0mmGpke7FZkvDbHDaJcDZzzbzbZIIldTeHH/X2+fZp
dzyMx8ObL91PFF3vxHLQvzY/bDDX7RjzndLAjVlDA4ukd+Fz7r3WImlr15jarViYbivmQmPM
oDVtRLzPvEX0+26NRq1NvGnB3PTbvrkZtg3FDb0eNzGDtnrG9KEaMXAS4aIqxy0fdHut9QPK
mgshvTC0J6GugXvQo/ge37B+W3ncswHFD/nyRjz4uq0azlXD6FafL7DbMtBdq12LJByXGQMr
TBgGU4DjnwYor8FegNFeOTgIu0WWMJgsAUXbDG7b4O6zMIpCzmi2JpmJIDIvsxsMyL9smNsK
H0JbrdB0DWpZhJx+bnQ+5PqfF9kilHMTUeRTmss8io0ftvReLENPXymeJTENKpfoFhiFDzqt
0YXksiBO393SE9i4ydLG2dvHj3d8mHPCUSyCe8L38ReI0LcF1FQ6FzeYgiKEAxlUFSDEaAXs
PZfW1wK/Lrv5Hn6X/hwz5ehI+tzXSKN0rNDTNEQ4qW54MHqEVC9AeRaaN4A1CXvCqWgDKr/v
MtBhBlFeV8e/Z0ZedYgMkcgpYQpFYAhMlou75MjEZMqnUwJNGhVQfd9Or/lhMDxVBOYDsfPn
smiMDjn/9unr8cdu//XjuH1/PTxtv+jUtM1JXsvI57GlUVIiGX/7hBbST4f/7D//2rxuPr8c
Nk9vu/3n4+bPLTR89/QZAw0+4+L6/OPtz096vS227/vti8q8tFWv5Od1py+nt6+H919Xu/0O
LSN3/91Udtm1AOOhmKW0rXIlMtiiYV4HuyTCG0eFEcPpuwKAYHS8BSyqpbGYCQqmjwul2UaK
VbTToXcrrigSivQi8RQ4Vyttk/yaHa4a3T7ajf+Fvf+bS8Qk0/c2VFLG7ZvU7wje+6+30+Hq
8fC+Pac2ptqsJgdxnb34qbAimok0tOuowD0XHgifBbqkcuGF6ZzuBgvhfjIXlGkToEua0euq
M4wlbCRmp+GtLRFtjV+kqUu9oA8qdQleEjOkVTybNrj7QRXl2J7Vih4TV4pJFLg3nTx5sM4z
UVqRiCqa2bTbG8dF5CCWRcQD3daq/5gVUuRzOH7qpZt+/HjZPX75a/vr6lGt4mdMZPSL8Jlq
7qRguu6zap7GBZ7nVB54/pwpJvAyX/IxGurOFNkq6A2HXUPk0+/fH6efaA/2uDltn66CveoG
2sn9Z3f6eSWOx8PjTqH8zWnj9MvzYnf0zbBKNeUcznrR66RJdG/bD9u0IpiFGIuwfXRkcBuu
2KGYC2B7K6ebE+WFg+fT0e3ExOMaPOXeVGtkzi1l79LCDah/fAWLsjsHlkxdulQ30QSumZUP
ss1dZj4X1mOKGR/yIr407hiz2R26+eb4s23kjIhnNZvjgGuuBytNWVs0bo8nt4bM6/fcLxXY
rWTN8t1JJBZBzx1VDXcHEQrPux0/nLpLmy2/XtIuK/QHDIyjG5Zpyi3COIQFrSxwePPpmr3E
/sXtgnh673AG94YjDtzvudRyLrossGq7g+DKBvCw22N6CgjWY6PCxn23KHyRmJgPdxUqn2Xd
G+4losLfpboRWsjYvf00TBcaLiS5fRRgcP6L3GtZTEL+aqymyDw2Nle9LJO7aciuY41gUmDU
K1fEASi4nL1JQ4FqV/v3MucugQjanVIjo2otqqn/mRoWc/EguIg19aSKSApm8dXHB7dygoCP
+N7gsxQUykuLa8CtoeDCMOZ3CTtFFfw8wnqFHV7f0ADY1EDq0ZtGIg+ckqKHxIGNB9zOiR4u
LCZAzjnG8iBzNzVOttk/HV6vlh+vP7bvtctq7c5qL3IZll6asa+IddeyyUzFFnSXDGLYc0Jj
OC6rMPrcdREO8HuIylaAtpvpvYPVCQDSkBmYGtV6C2+REeWgtaiLo9RQsRqJek5gNQnMUmCr
UC+7H+8bUOPeDx+n3Z45sKNwUvE1Bg5ciUVU56QbS9elYXF67178XJNwixuRrPTq0nGMCOH1
+QxSePgQfOteIrnUyNZz/tyDs3zLEjWHot3NOZd9VMj7GHMqh566s8rvUxoy4IxMi0lU0chi
YpKth52b0guy6rorcCzM0oUnx2gdsEIslsFRXMM+lhKvxnks6mH4MbkwCmd4JZUG2vBC2ZVU
F27NokWv1T+V5nFUmXqOu+e9Nlx//Ll9/Gu3fyZWrOqdrswxa5y++MsMQw8XL799+kTu7TRe
q41kQDhz1AD+8EV2z9RmlwfrHhPTyOa+kn/f/gc9rWufhEusWtlrTOuhilo3NgYEHpXpLW1b
DSsnoKoCm824e2s0/RIZ0C5npqCDtvC8dcgkBJELw9uSBVYbtoM0tvTwpjJLYiuhESWJgmUL
dhnkZZGHphutl2Q+e1+PiRsDUN3jiZGnSN/6CqLkA1ebK3tFL07X3nymTICywJDtPdBj4bww
QN2RSeFqBF4Z5kVpfmX5ISOAvVe3SWD/BpN7XoInBAOmdJHdiZbsh5piwr49AG5ksHuT+Xs0
y1c4cdUwjzxB2HpXhim2Y9L1MwpEGBSO6lTABOoHLvwBmSacc6aE9KCZvQUFgYkpGaFcyUou
YukHfEtAXmLIFZijXz8g2P5drml+hQqm3BpSlzYUI2O+K7DION+bMzKfw6ZwCpPAt90qJt53
B2aFHm/6Vs4ewpRFTADRYzGGEGvAyWKrGQDzSgIKnl/KJEqMUFoUim9BdKsaOKiR4iae5Q+Q
rURk2bUJKRMvBC6yCmAwM0Ez8ApljE29ODQIjRPLmPqlINwO6Y5miw6gnNyngq6bpWq/xkcq
Y7mFU3HrRaoEQ9puZHOI0wmrytEAtr1ZHYxGJDJ02JgHputQnRigauLZkBHLQ9efFvMROYv0
rJFhVdGC7dcj/5Zw5FmUGJbI+PvS4+MyQuMWwnuihzIXNNhkdouyGakiTkMjdZYfxsZv+DGl
OXYSlah5Bsd4RkUYdDlK7LME5zZFPx3jtaFBASYLcIJwsQs0EgRBiKErdP6xchoVcl6/g7YR
xZ4UU/Oxzlv4QUoT7UmYcGMR4tvlckZ5MPEttcQJ80mtFr0U9O19tz/9pf0tX7fHZ/eB19Me
QJheOwLxIGpeKa5bKW6LMMi/DZr5qoRLp4QBFbjiSYJybpBlSxHzto2tjW308N3L9stp91oJ
XkdF+qjh76Rr5z2gjMBR12IfotWTRVzgpQpadp9Hf5pBG5Wl7bdeZzCmk5ICl0Hfr9hyNxS+
Kg2Q/DMvEGBc0nAJ0x9xrpO6rSC+qvf8OJSxyCnPszGqeegFYJova7P3RLljFUv9iVrGZb/H
3YnTD7QNm07HSFfcPx76f9Ew5tWK9Lc/Pp6f8dkx3B9P7x+vZhYNlbIdBXKa6oEAm7dPPV3f
On93OSrMz00lRxeHzw6Fyhrz6ZPVecraK0hl9WfZ1TVYfO9SBDH6FLEzbpWE78ttRgeKZSxm
PmFy1a+zbQT8bn1dU8iF8bk/uTBwiIU/83BZwIkiciHxpmUOmnPH5WITKSpHBtC/qwGpiBSO
tlITg5KW8kbECj3BCO5cNzQaTUCtKi5Vrxd3XKfctOLjX1yD5pyjrWvAzDa2x7lsq17cm3KJ
0S6yQlBUMUKjeU2ri0O8OnZ5W138OrlbtvgXKHSahDJpcQE411EaapKGJxN0tpVuoyrEZW3H
JEW7hH9ApmKXcJNtkqFFb3uzMq9QDPS3xQDvAtZVO/q1dL9m/PUx1SXHVFRMamLO/kbhrVs9
tYOrJQTyQwQ81K74d3CUO5S0Uuo7rlGn07HHoqFtbEGm09bxaIiV8Yv0BLMQtcFKgUc3O48S
zkS/ogqWvj4iuYuumlPoYlfQk1muOI5T5Yo/G+0P/0ElOhGWPZ4tYB0gXVnUsNOm+oiuGlNg
1PbHLcjKuGghkAW5944ai6sapbhlcmZgIOEH0jCId3iJ1YC5zoKkH1qR6Co5vB0/X2HkyI83
fRLPN/tnQ/JJMX0w2g8lvMOVgUcv1iI4M3+8ZSlSJs6zTKZ5K3KSJDmGrY4pmarnn9BUbeie
O4/ll/MCxg8OKGPv6A3QoBSTSQrYyb2OW9GZrLUtFondlLtbkLVA4vKr58rGSfjSXGi7ShCW
nj5QQmJOCr3BLINPDaxeByis5jpnmy2mbHPl4LAsgsCMCVOdEMC947TJPIPNJ4fkv49vuz3a
XEDPXj9O27+38Mf29PjHH3/QxNfozqeKmylVxc6OnGaYksxx6tPgTNzpApZw3Fi3swqO/W3l
b6iyF3mwDhzJjaT5MXkAT353pzHA2ZM7ZRBpEWR30nAw0VDVQkt5RhhodS7XqxCtnakzTkdB
kHIV4eCqxyo3eZtqB2zCHB1TGj2xXrZN39hTvdYm/4epr6tVYR5Qc59GYkYtcJFXWjEglJaC
ZpHFEt96YXHrC0bnLNSns8no/tLi29PmtLlCue0Rb91pokQ9SKHZ8WqJI/jCeSPb5SdtYGxl
gtNCQemDuIw32xhpzfE5NThDS+PNqrwMxgQkcR2B8v8LO5bdtmHYL7VFUGxH1XESIbbj+bE0
p6AYih1XbAO2zx8fki1SlHc1KcmiSIoPieJEbjWbhiXLTZUkZEsrj/YSPhxzLwRlEL7VFu8S
UzX2rQ7Q0CJfdlG/T49igMAHouf6i3nbOZZ0EjPXCwZqmN3UgRzUjaXlm8ZghGNNDuv/Mfjc
VbfpkghcRxXx4J/FQe+viRu9DT2C13Oycfa3zqGI6/oo3AFLU0tGK5AesyYKBS/3EaERE8z/
LrM/q9CQe0k4hH4Hy9vd1dg8aiV1JcWc9BssVKOb8IUeRwcSSTxePUYj9MSTroIHPF7TAFfY
gTD8Z04rGy9GmvVAATHffw4ZB+KOj8wa21gn7LPFXq/lWitt6RC92nkPIMuYWLVas8FtTbKO
NAPZPR6lfQ1kBIPqUP6ppWk2LbY48oZr6OrauKncc+DfwKNjxntj5/rxdMmZMgJixEkxCHf7
ArsFcBcTTNkJAlaXIiwR7DpQ6w4TwtyuzpnNgIQxcrK9NGeq+ENPEal7+4oRuMi9ZsySxI+3
bjqtbdZlwDx1qMppFjukTllY86paq4xt5pVTqV3wsn5gFNdQIgMpazLNscJXxALpDyUKRd7J
Mo0RMDnYpfpsk1pVksT5z4xUdznBUcloqMNHCEb9IbFXUj18rtAfxOwBireRFACWQWffh7Bg
WtaJrysFDCHcFwnLolEfP/68//z4JqyG1RPsq+V4/rUeBvv+NyAxMNXQyC2sj8B+Bdv4eSe7
rVt8poajBIUCJ3RVrUfvKU1nmKiw5vh2J6zPRj6pHf2dcyUG1+A/4YaCviVVhjEK4LRmYIfd
GHE0BufnhuamPTQFwOhCJe6hIUL4eAezqJ8nDuvsHj4/Wzi+W1Aenz4l9HC+4ZScHQuELvpp
P7e9aUvlPJGmiab3X7/R3Ed/tcIXC9++i8LD57nz9ipF2/hO3BI0jTeJGsorRAyxE8LcxsaZ
hc9w2hTBVA4WAVp3ruMNRAWi2sZsiUrAAb0gObr4sa1aQYvgnkGhZQEeEHbUc2F3Tt8lYOyV
nogW4o6UWxwwhmuLDOFinmiYMax9t9NFjAXM7obaMfc8/MUK5UsIZIDdhYwd9rDVYc7mvJ+E
lqFTYHQYaryYBakIofUdvQqe7J11aJJsmtENJBlVCnV4waS9/phm/iVI5PoVjF3n553Mk6Y/
dqpftYiI/+Y0K6e8Rz2paRir9AAqH5SDz5MsVkff+cxXaaAlvysbwWcQpsaKbBN8nv1ejf8a
TzbInmKIstTTgKd8YlxWUEic/qFPfp+cfjj4DotnTgV7APEPfmjBz7d2eJ7Fvm6cpmMhZMtc
BqoRbM6MyyY63ebzZYYGvqSxAFaMfmyqw+z+JKfW/wGo0NJPMH4BAA==

--vtzGhvizbBRQ85DL--
