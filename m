Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNEMUGDQMGQED3RGJLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FE93C23B6
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 14:51:01 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id o186-20020a4a2cc30000b029025bea4a7246sf2664009ooo.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 05:51:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625835060; cv=pass;
        d=google.com; s=arc-20160816;
        b=evfss6+WW06eugR7Xk1o7+wfcQcJowR160Dt/Qxytd5+XyZhYKzoC/R+CJftNRqnMU
         0wWnXGKukjniVHljoukoE7kJCZR5QsWFcsqaiK0a7uBV9A7NtdJG+YVKxoPE8BL43Zvp
         2A+zAIb/kcPb72RU2fCj7nIqU6oM2OxYiw3q8YlQM7E0bhTX2l4TFBCA5drJxSPS3C5P
         LNMUeYHRI5Bc25h1dN75oU1UWrB8aKqrp2vixKQejFjhiFqwEK9beSC7/H5M5Uq4/zPL
         FXGAcCEJp9VlRtJ6u/hdXMxw7croo3oqHl5sCttbQuzY3/BX7fiEOvahPsimmKtvfAHX
         +nJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=B1rRpI0YbEH660k3Wf1oJPICIZ6sVN4UGC2INzzOFYQ=;
        b=JWlA9f4FAyvlN8da5WePfCzUNb5DXiaPLn87R5dh6tb0aMnCYdiGrdhgzb0hQl0JpC
         3WbY58L2669eeW5+SyQYrswVVARUjWGV3iY2RYfGupak34rbtpF1noopcUBgVU4Rb7fP
         f422Df3FNuNcMAsbYrC1NNEtsjDM83HPfUCFaZMPc1ZFC7EKJTorYEeuxchB9vXBOIjX
         InMF2jmE+xg+ZjgUTW8ZDHo6Ujgo0/yET05fWuAXFSG7mnrgI5yFwwcLjjRjhbbzxdwm
         Eg8G+dlBlFuDbMaRX3M8iYbYYmtdwlKD87MFa2AWhZk7yCzT/NIiz8+w1/ppOdgpb5/J
         UBqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B1rRpI0YbEH660k3Wf1oJPICIZ6sVN4UGC2INzzOFYQ=;
        b=UO1vbatiBMd7vGnQn+dE7pHINReZdILlbP/AfqHB4Cv4bhfj10xTdcVsJyg4DhcrZg
         j2Id6p7kQ7rBraaTWGboTEDTq/6eFRdjQt0pAUIf5XfkeTq6DHjnrdn2ZTMDi1ZA4c47
         ex0Gvvx+CUbtMt2tOkUhO6kFxdKOI/9OnMGNfwvdmdnkv8sfUx1VLXpL/U4aUBPlABD+
         GJZO55yXqBDIWeU3WpQo4kCon5YSUaUTddUgznlLzOz3rmWIvfXgBko3S5w66s/7v/pA
         sUjELsEIo8yL7eINgj+2HwoyyjIR5jYVcnFmIAvjBT0yNr1tLOobgLqfh1L8deFL9jQh
         UJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B1rRpI0YbEH660k3Wf1oJPICIZ6sVN4UGC2INzzOFYQ=;
        b=fUkPUz2GysWdeNVABtgQ7drqGCZIQq/3uAF3Ah4gBfnDwZjK1939+FZ1eo1mmdDlCd
         UrNj471bGFiG2FXiSTv1l1c+8A1whY8BaIBZXFsPUoQlzzGu0DoEBJNVeohrSjvqpzQn
         +ZxpWcmnvSPhnhZFEvMCCYb7xTHWm1JQHPXv2i92/sTvQHv0i0yBsqM8xftW1eI0pYaY
         q+wFbcGuE8Q+71l1gbaXCWjjELXhW3VpkgcKFa5eMSBO2lu41Xvpy1EAKrK0ld1hPt8L
         2nwAafGYOTZK0DLjH8ZN/8WyyEnqmdL3mgaYnIClTBi2cOR5yRS5t/jC4JvOPID6d+l9
         q/2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310MoAa1zInaPLyf3zawrjYvV1ZCAFot9BHTXY4ECjTV4Rd3T6j
	WQdT5G159SbBK/fOqKQG5v0=
X-Google-Smtp-Source: ABdhPJxYLJ6uV/TfOyH3aPvX0cgnKxGkQsjeYgFwi8JzOWZ5G96lzSzUP8+R6MhFJ1tp8LlbpzVjUw==
X-Received: by 2002:a9d:baa:: with SMTP id 39mr27508058oth.159.1625835060263;
        Fri, 09 Jul 2021 05:51:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1215:: with SMTP id r21ls1906492otp.5.gmail; Fri,
 09 Jul 2021 05:50:59 -0700 (PDT)
X-Received: by 2002:a9d:7745:: with SMTP id t5mr22583603otl.238.1625835059749;
        Fri, 09 Jul 2021 05:50:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625835059; cv=none;
        d=google.com; s=arc-20160816;
        b=EPG7M2eOsyGhkLX3coyGEH2/pr4wFGDsXKybCeXaNKwmzLzBjhjJIsCBH1qSsjd683
         7J7GIuwEegsUGHRS4G0wlAcVZ85wcror5PyEFjraBWYQ6qwlPbcsLvAYq1gyGMY7ZtNY
         vw0dJrm5sPeol0BQA3I6HolMpn1yIx/zX4zApTahQi6PL92fUNwJrLN8zcyktpslTz2O
         WV2djLUoTFajKZ/S/kgfTYjBTSUZIp0/Z0cGczLrw52xGmKlciadY6QFJIZfisBRJSSP
         K6nDnu3rXfnnR3MVoxxP0wRPjkePmHVkFiY3T+L+ZWopmt6GuoPDY1TudAkhLayAM7nC
         A3vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=s/EF+ZIyVSXA+/5xM8ngcnBFiROUE/DUGmb2Ex5pqNo=;
        b=X/nAAFAhr6CK8csM8c9p7/mzvJQZbF3poAKg5xeUqCkHg5RJooFu0ObpP3i6fuot1I
         qNjyWXUL/x5SulfAiFEyMj+cFTPIThrvMLPLfPaoPu1gqHU+1B/uSZeYFLqnu3llnJAz
         v8olnN6CbTaxO26Om8uTEPHKdKXX0Bh6YL9l649ojxdU90H4W04/TZjt70/4vEpmiG8v
         1enTI8MnoCfwUAoTz35NWa5xf9DfHO6G3iErME6hg516KeOeL1q1E3ueLLTOKqxWngTL
         Hq/sJJPprZDZPxjZUK7HMQfn9v9tr/FKmoqlWauqr8oC6QyaZP0rMKmngubNeGSQU/BB
         qVNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id e23si621860oti.5.2021.07.09.05.50.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 05:50:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="189377112"
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; 
   d="gz'50?scan'50,208,50";a="189377112"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2021 05:50:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; 
   d="gz'50?scan'50,208,50";a="628849965"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 09 Jul 2021 05:50:43 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m1pxq-000Eta-Pg; Fri, 09 Jul 2021 12:50:42 +0000
Date: Fri, 9 Jul 2021 20:50:20 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	dri-devel@lists.freedesktop.org, roberto.sassu@huawei.com
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [PATCH] dma-buf: fix and rework dma_buf_poll v5
Message-ID: <202107092033.SxrZE8t1-lkp@intel.com>
References: <20210708111916.7291-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
In-Reply-To: <20210708111916.7291-1-christian.koenig@amd.com>
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi "Christian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on tegra-drm/drm/tegra/for-next]
[also build test WARNING on v5.13]
[cannot apply to linus/master next-20210709]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Christian-K-nig/dma-buf-fi=
x-and-rework-dma_buf_poll-v5/20210708-192030
base:   git://anongit.freedesktop.org/tegra/linux.git drm/tegra/for-next
config: mips-randconfig-r032-20210709 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d6963=
5ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/07538f7542063f6043e1a5dab=
5f4aa572a091c96
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Christian-K-nig/dma-buf-fix-and-re=
work-dma_buf_poll-v5/20210708-192030
        git checkout 07538f7542063f6043e1a5dab5f4aa572a091c96
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross O=3D=
build_dir ARCH=3Dmips SHELL=3D/bin/bash drivers/dma-buf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/dma-buf/dma-buf.c:253:11: warning: unused variable 'shared_count=
'
   unsigned shared_count;
   ^
>> drivers/dma-buf/dma-buf.c:255:9: warning: unused variable 'i'
   int r, i;
   ^
>> drivers/dma-buf/dma-buf.c:255:6: warning: unused variable 'r'
   int r, i;
   ^
   fatal error: error in backend: Nested variants found in inline asm strin=
g: ' .set push
   .set mips64r2
   .if ( 0x00 ) !=3D -1)) 0x00 ) !=3D -1)) : ($( static struct ftrace_branc=
h_data __attribute__((__aligned__(4))) __attribute__((__section__("_ftrace_=
branch"))) __if_trace =3D $( .func =3D __func__, .file =3D "arch/mips/inclu=
de/asm/atomic.h", .line =3D 153, $); 0x00 ) !=3D -1)) : $))) ) && ( 0 ); .s=
et push; .set mips64r2; .rept 1; sync 0x00; .endr; .set pop; .else; ; .endi=
f
   1: ll $1, $2 # atomic_fetch_add
   addu $0, $1, $3
   sc $0, $2
   beqz $0, 1b
   .set pop
   move $0, $1
   '
   clang-13: error: clang frontend command failed with exit code 70 (use -v=
 to see invocation)
   clang version 13.0.0 (git://gitmirror/llvm_project 8d69635ed9ecf36fd0ca8=
5906bfde17949671cbe)
   Target: mipsel-unknown-linux-gnu
   Thread model: posix
   InstalledDir: /opt/cross/clang-8d69635ed9/bin
   clang-13: note: diagnostic msg:
   Makefile arch drivers include kernel mm scripts source usr


vim +/shared_count +253 drivers/dma-buf/dma-buf.c

   248=09
   249	static __poll_t dma_buf_poll(struct file *file, poll_table *poll)
   250	{
   251		struct dma_buf *dmabuf;
   252		struct dma_resv *resv;
 > 253		unsigned shared_count;
   254		__poll_t events;
 > 255		int r, i;
   256=09
   257		dmabuf =3D file->private_data;
   258		if (!dmabuf || !dmabuf->resv)
   259			return EPOLLERR;
   260=09
   261		resv =3D dmabuf->resv;
   262=09
   263		poll_wait(file, &dmabuf->poll, poll);
   264=09
   265		events =3D poll_requested_events(poll) & (EPOLLIN | EPOLLOUT);
   266		if (!events)
   267			return 0;
   268=09
   269		dma_resv_lock(resv, NULL);
   270=09
   271		if (events & EPOLLOUT) {
   272			struct dma_buf_poll_cb_t *dcb =3D &dmabuf->cb_out;
   273=09
   274			/* Check that callback isn't busy */
   275			spin_lock_irq(&dmabuf->poll.lock);
   276			if (dcb->active)
   277				events &=3D ~EPOLLOUT;
   278			else
   279				dcb->active =3D EPOLLOUT;
   280			spin_unlock_irq(&dmabuf->poll.lock);
   281=09
   282			if (events & EPOLLOUT && !dma_buf_poll_shared(resv, dcb) &&
   283			    !dma_buf_poll_excl(resv, dcb))
   284				/* No callback queued, wake up any other waiters */
   285				dma_buf_poll_cb(NULL, &dcb->cb);
   286		}
   287=09
   288		if (events & EPOLLIN) {
   289			struct dma_buf_poll_cb_t *dcb =3D &dmabuf->cb_in;
   290=09
   291			/* Check that callback isn't busy */
   292			spin_lock_irq(&dmabuf->poll.lock);
   293			if (dcb->active)
   294				events &=3D ~EPOLLIN;
   295			else
   296				dcb->active =3D EPOLLIN;
   297			spin_unlock_irq(&dmabuf->poll.lock);
   298=09
   299			if (events & EPOLLIN && !dma_buf_poll_excl(resv, dcb))
   300				/* No callback queued, wake up any other waiters */
   301				dma_buf_poll_cb(NULL, &dcb->cb);
   302		}
   303=09
   304		dma_resv_unlock(resv);
   305		return events;
   306	}
   307=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202107092033.SxrZE8t1-lkp%40intel.com.

--82I3+IH0IqGh5yIs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--82I3+IH0IqGh5yIs--
