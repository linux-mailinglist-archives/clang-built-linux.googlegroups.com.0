Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI6PVD7AKGQEROJP4ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 262302CEDC9
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 13:12:21 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id b15sf4571254qvm.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 04:12:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607083940; cv=pass;
        d=google.com; s=arc-20160816;
        b=VHBCRrXsCAl/4wJZb3QRROGQONmk4N395fVjGnwOb0IGeCLhKKmzVXqZJHdZkr4mTa
         BPqOzXZU8q3J7JlkgaAwsdjpRp/5/8oEFWMXaTBz5+uxYtE1Grxm0h1wU1Fs9CT8K/xv
         aCeVRQ7mMMG27d4dWlSmdF3jiNhx+RlJCP8Z9W3h8MuMRSGsF3/qZkj77rU2Hg8VVMIO
         eyCQC2pxb2VvQhibkLvM02LVBEMz1T2PkonE+bk0aZ4Tn9UVmrEuWSPIeTGmyUf6EvE6
         KDKhMt6Ed3ox4Xru2MqNs4fpCKkX2wgGZDlif+DlqdqzRniWdjIHwbu6BO55C5EfA8eV
         tbTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=hSAIJRRikfho1P+YdydDh0T8y/zKeN8wNOGLh8W8ynE=;
        b=GofXHhydHPiT8BD77tLWIdzechuiJz4/P4FdHwNRSL/LL5+tITUTzXY9kr/jQc1mJl
         6zqlrataTQ9pn8Bmv41bO3/YXm2bUPx+/qvlEoLygJVAg0wkTHdbfZnOlLv9DuLGovcc
         lpZOYkjxU8N1227qb9yMIsx/cFN9XGj5HLeSyhPb7k1QZrU0sTHwSVPYTVRzlxrUxvKy
         dzON8tq88z00g+pTenLjSbOwaTfik29b6ve78g2Zq5EzQMMvEuJkDFWcpvXH16W0vkYu
         yuK9TU0CYFYh7kST4vREHq0QNG4+aRAB4vY12mgtymla0yCvp5CByr9HCR6vDRNzi0ft
         Ax1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hSAIJRRikfho1P+YdydDh0T8y/zKeN8wNOGLh8W8ynE=;
        b=UOPUPv40tBf/8TCr3klapR/VlvyDy9A1K0HwA3yctkK0zPirMIB32k97jaav/hv/vQ
         1kkUShTXJrTB5446kDIMQtYkCS3grc7Rvsq0cniqIRyAkkPrjB9kOmcVmLhAr9l7KIGo
         j+mra5OGXV3i6LjpgvQLKLWs1c8JA/v6o9RXA1vCz4OkRevqhJwAAyUCFjHFRnvQBZ18
         qs1Ac8mU5SscrvR+shqcPk/S9UCbmnldJp/UiugvQMbG7h754AB9Y6r+hlK2oWYandOn
         9hGMIdL9R9amYO0T3w2fEXo6/7VMQ/9Sv0/Tg9pf0mUn5E2oL0GVbj2epAQdNujboO4L
         nKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hSAIJRRikfho1P+YdydDh0T8y/zKeN8wNOGLh8W8ynE=;
        b=tOyLMudPOjbM/zbLAXmxLwKbTzkfx9R/f043Za34NRywPVpDUffoPT2Gj0r/O2cwTy
         aEzJdeBXC61BvjcRBqr9d9fAfosJnK4NMovmNKSb5Kpbdqii9NNmCVotDTuRfBF//DGT
         7rmsCGxol+UbNoMV5ANRVCp2+rvIcIeQH3Gww6Vb5L9u1zl8ZEVr8UemUmIPoFz40baE
         KeKYMqXweCMftLzvZL1cgnAcBxsCTTrguCIUea9/n4Vq/W7U16cmxkFW7gYmBBL9DUdq
         OF06AmZrQPBgJ7gkqv++Iz7m+KNJQDk2upN2Xg/ZpgGS6/dbVd+sucR/bXaiNDYhiOkV
         jxvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bxgpurim6ocih95IcRbsvDODQ6OGXI9vALPyTcOGOCtCaIWSL
	S2Y0uDdtQCF6znqCmMpdZso=
X-Google-Smtp-Source: ABdhPJyZljiJcAhIBKeBqpPd+bmBrFHT1AxUwOLRlPyhQv1cYKvkAu7Yho8YnGHc6DvRiXW8Ma9vVA==
X-Received: by 2002:ac8:5c15:: with SMTP id i21mr8767747qti.190.1607083939916;
        Fri, 04 Dec 2020 04:12:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:8d0:: with SMTP id da16ls2112923qvb.7.gmail; Fri,
 04 Dec 2020 04:12:19 -0800 (PST)
X-Received: by 2002:a0c:b8ae:: with SMTP id y46mr4807169qvf.51.1607083939456;
        Fri, 04 Dec 2020 04:12:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607083939; cv=none;
        d=google.com; s=arc-20160816;
        b=kLqviOdnii2/Izmce14N/nsgcQTnoSFgsr2p8OAEWz99x4jgU06j3wjFFWuKJfNmvh
         WgqYYZ1Vg6xYCm84d92PMBDcpR0qokfV7XmtC3RyvDBM4areO9RSPkrdhXAtXJIM3j4I
         uve+Eo0qfffSBXdw4LLlBV/gFQ2nKqpQTjZTIHzxtPAcK1tWcs+1P1kFXajMMz+G3pgA
         Lb/4Cpg4HCyYa+4XrPHKMAukXYRvHbica3iUCwg0SBUzatQJPtX4/INDRdd+Ya144BTi
         KuvenscXbxhcyNdOb4xDAG/YDqdYxlvCYZXc2weHEgcdj0BiM6J0hcPa3pZygBRDH3iR
         Tbpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=jDGugz/9Jx0vYr54HODuY7v5erqibIEwE3hpjoAmHhc=;
        b=sTPyzaMv9A/71oHnvaLdsJ9yg5/XEVSkyBjaM/EGM6aKvZGrMawVmsW6pnPr82wdLs
         jEl6gg79rcUd0EF8+1/YA219bpSLgThTKtHORiMfh7Hs92FOVml9cbHbfXxfpTn/KiIE
         R8HRNqwUjofdOiHTtaE6AE++RZQ+4S2hNUK5lcTxptCN1D0g5lnruN65AXTNtpz0QEhz
         Eidq7cHKM5Pa7Dejc8vrNiczPudfH/pVNeTMXt/uY0XPyjeLAgfRmu9hrjY1l7IAyB15
         rCejyJ8Y7sROVuaQCZDVk2lzr28fJiO/mx5dWMpEeg3EkhNY7aD+LvgyjGHOmw6AW6RC
         a65A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id f16si380316qkg.3.2020.12.04.04.12.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 04:12:18 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 9cVrDZituxrgI3JP76o+meQyVAmQOGeyXzAZ3691XK88VdNSCIPFOzQrh8UHA3LEZxtxfa2XVw
 3WwJv60/BxkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="191610921"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; 
   d="gz'50?scan'50,208,50";a="191610921"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2020 04:12:16 -0800
IronPort-SDR: bV2gKqWxaBQmhlVGzL336XyavjaYhe9stVEDUEPAzlZx+fVpWZQYQ3dGzCXzmUXlWARSeLiFK2
 4e2ASW/Kb7nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; 
   d="gz'50?scan'50,208,50";a="316113250"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 04 Dec 2020 04:12:12 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kl9wZ-00005s-7l; Fri, 04 Dec 2020 12:12:11 +0000
Date: Fri, 4 Dec 2020 20:11:47 +0800
From: kernel test robot <lkp@intel.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
Subject: drivers/android/binder.c:5015:13: warning: stack frame size of 2160
 bytes in function 'binder_ioctl'
Message-ID: <202012042033.uEmgNBVJ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   bbe2ba04c5a92a49db8a42c850a5a2f6481e47eb
commit: ee0a49a6870ea75e25b4d4984c1bb6b3b7c65f2b powerpc/uaccess: Switch __=
put_user_size_allowed() to __put_user_asm_goto()
date:   3 months ago
config: powerpc-randconfig-r016-20201204 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501=
dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3Dee0a49a6870ea75e25b4d4984c1bb6b3b7c65f2b
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout ee0a49a6870ea75e25b4d4984c1bb6b3b7c65f2b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/android/binder.c:5015:13: warning: stack frame size of 2160 byte=
s in function 'binder_ioctl' [-Wframe-larger-than=3D]
   static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned l=
ong arg)
               ^
   1 warning generated.

vim +/binder_ioctl +5015 drivers/android/binder.c

abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5014 =20
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03 @5015  static long binder_ioctl(struct file *filp, unsigned int cmd, uns=
igned long arg)
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5016  {
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5017  	int ret;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5018  	struct binder_proc *proc =3D filp->private_data;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5019  	struct binder_thread *thread;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5020  	unsigned int size =3D _IOC_SIZE(cmd);
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5021  	void __user *ubuf =3D (void __user *)arg;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5022 =20
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5023  	/*pr_info("binder_ioctl: %d:%d %x %lx\n",
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5024  			proc->pid, current->pid, cmd, arg);*/
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5025 =20
4175e2b46fd4b9 drivers/android/binder.c         Sherry Yang        2017-08-=
23  5026  	binder_selftest_alloc(&proc->alloc);
4175e2b46fd4b9 drivers/android/binder.c         Sherry Yang        2017-08-=
23  5027 =20
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5028  	trace_binder_ioctl(cmd, arg);
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5029 =20
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5030  	ret =3D wait_event_interruptible(binder_user_error_wait, binder_=
stop_on_user_error < 2);
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5031  	if (ret)
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5032  		goto err_unlocked;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5033 =20
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5034  	thread =3D binder_get_thread(proc);
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5035  	if (thread =3D=3D NULL) {
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5036  		ret =3D -ENOMEM;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5037  		goto err;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5038  	}
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5039 =20
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5040  	switch (cmd) {
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5041  	case BINDER_WRITE_READ:
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5042  		ret =3D binder_ioctl_write_read(filp, cmd, arg, thread);
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5043  		if (ret)
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5044  			goto err;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5045  		break;
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5046  	case BINDER_SET_MAX_THREADS: {
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5047  		int max_threads;
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5048 =20
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5049  		if (copy_from_user(&max_threads, ubuf,
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5050  				   sizeof(max_threads))) {
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5051  			ret =3D -EINVAL;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5052  			goto err;
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5053  		}
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5054  		binder_inner_proc_lock(proc);
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5055  		proc->max_threads =3D max_threads;
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5056  		binder_inner_proc_unlock(proc);
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5057  		break;
b3e6861283790d drivers/android/binder.c         Todd Kjos          2017-06-=
29  5058  	}
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5059  	case BINDER_SET_CONTEXT_MGR_EXT: {
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5060  		struct flat_binder_object fbo;
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5061 =20
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5062  		if (copy_from_user(&fbo, ubuf, sizeof(fbo))) {
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5063  			ret =3D -EINVAL;
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5064  			goto err;
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5065  		}
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5066  		ret =3D binder_ioctl_set_ctx_mgr(filp, &fbo);
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5067  		if (ret)
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5068  			goto err;
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5069  		break;
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5070  	}
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5071  	case BINDER_SET_CONTEXT_MGR:
ec74136ded792d drivers/android/binder.c         Todd Kjos          2019-01-=
14  5072  		ret =3D binder_ioctl_set_ctx_mgr(filp, NULL);
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5073  		if (ret)
78260ac625e91d drivers/staging/android/binder.c Tair Rzayev        2014-06-=
03  5074  			goto err;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5075  		break;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5076  	case BINDER_THREAD_EXIT:
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma        2012-10-=
30  5077  		binder_debug(BINDER_DEBUG_THREADS, "%d:%d exit\n",
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5078  			     proc->pid, thread->pid);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos          2017-06-=
29  5079  		binder_thread_release(proc, thread);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5080  		thread =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5081  		break;
36c89c0a6bebaf drivers/staging/android/binder.c Mathieu Maret      2014-04-=
15  5082  	case BINDER_VERSION: {
36c89c0a6bebaf drivers/staging/android/binder.c Mathieu Maret      2014-04-=
15  5083  		struct binder_version __user *ver =3D ubuf;
36c89c0a6bebaf drivers/staging/android/binder.c Mathieu Maret      2014-04-=
15  5084 =20
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5085  		if (size !=3D sizeof(struct binder_version)) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5086  			ret =3D -EINVAL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5087  			goto err;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5088  		}
36c89c0a6bebaf drivers/staging/android/binder.c Mathieu Maret      2014-04-=
15  5089  		if (put_user(BINDER_CURRENT_PROTOCOL_VERSION,
36c89c0a6bebaf drivers/staging/android/binder.c Mathieu Maret      2014-04-=
15  5090  			     &ver->protocol_version)) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5091  			ret =3D -EINVAL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5092  			goto err;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5093  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5094  		break;
36c89c0a6bebaf drivers/staging/android/binder.c Mathieu Maret      2014-04-=
15  5095  	}
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5096  	case BINDER_GET_NODE_INFO_FOR_REF: {
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5097  		struct binder_node_info_for_ref info;
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5098 =20
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5099  		if (copy_from_user(&info, ubuf, sizeof(info))) {
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5100  			ret =3D -EFAULT;
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5101  			goto err;
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5102  		}
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5103 =20
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5104  		ret =3D binder_ioctl_get_node_info_for_ref(proc, &info);
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5105  		if (ret < 0)
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5106  			goto err;
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5107 =20
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5108  		if (copy_to_user(ubuf, &info, sizeof(info))) {
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5109  			ret =3D -EFAULT;
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5110  			goto err;
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5111  		}
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5112 =20
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5113  		break;
b7e6a8961b5d6d drivers/android/binder.c         Martijn Coenen     2018-09-=
07  5114  	}
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5115  	case BINDER_GET_NODE_DEBUG_INFO: {
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5116  		struct binder_node_debug_info info;
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5117 =20
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5118  		if (copy_from_user(&info, ubuf, sizeof(info))) {
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5119  			ret =3D -EFAULT;
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5120  			goto err;
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5121  		}
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5122 =20
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5123  		ret =3D binder_ioctl_get_node_debug_info(proc, &info);
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5124  		if (ret < 0)
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5125  			goto err;
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5126 =20
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5127  		if (copy_to_user(ubuf, &info, sizeof(info))) {
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5128  			ret =3D -EFAULT;
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5129  			goto err;
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5130  		}
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5131  		break;
abcc61537e3566 drivers/android/binder.c         Colin Cross        2017-08-=
31  5132  	}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5133  	default:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5134  		ret =3D -EINVAL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5135  		goto err;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5136  	}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5137  	ret =3D 0;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5138  err:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5139  	if (thread)
08dabceefee0ed drivers/android/binder.c         Todd Kjos          2017-06-=
29  5140  		thread->looper_need_return =3D false;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5141  	wait_event_interruptible(binder_user_error_wait, binder_stop_on_=
user_error < 2);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5142  	if (ret && ret !=3D -ERESTARTSYS)
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma        2012-10-=
30  5143  		pr_info("%d:%d ioctl %x %lx returned %d\n", proc->pid, current-=
>pid, cmd, arg, ret);
975a1ac9a9fe65 drivers/staging/android/binder.c Arve Hj=C3=B8nnev=C3=A5g   =
  2012-10-16  5144  err_unlocked:
975a1ac9a9fe65 drivers/staging/android/binder.c Arve Hj=C3=B8nnev=C3=A5g   =
  2012-10-16  5145  	trace_binder_ioctl_done(ret);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5146  	return ret;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5147  }
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman 2011-11-=
30  5148 =20

:::::: The code at line 5015 was first introduced by commit
:::::: 78260ac625e91d2402d72dd2f8c7109f98c1d19a staging: android: binder.c:=
 binder_ioctl() cleanup

:::::: TO: Tair Rzayev <tair.rzayev@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202012042033.uEmgNBVJ-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bp/iNruPH9dso1Pn--
