Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQ6BZWCQMGQECDMH2CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 97876395059
	for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 11:54:12 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id o11-20020a9d5c0b0000b029035b9aaeeccbsf4775510otk.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 02:54:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622368451; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sz6nmhXB6eRMnSObr3023fhHPoGBULjzdEM7Mlj/fxF+Jl9PW5+sxGQ+aaXqZKAacf
         DkJCIKyQ4Xkl1Z9y4BmEeNz3lV4k2cHIsPJyq7aiVDFdCoP6nnFOC2tB1T4q22WPEQVI
         ekVJFAJfymMHrvcVB4WS2xnG80PVN/Fm/wNi0H5wiIPMA06lIC2fixqLk84ZCV+kSyf6
         Kl9IqyDOK1PAb9zJF2n8TTPtxWSysnvcWDMMJlP8B8tKHPsMReyofSFp6HOGO3KWZtvF
         3ZiTQEWZX3f9n8eEJp8FqeVXD3fLqofx6ultYrxxXPsMQ6hmu0qVBxmBJQmsSaECfalb
         crWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=tQUWxDrNIsrNS5QxG54oLmYnXECSNuuzWredb6IWe5M=;
        b=imbIbJM+B/za1iLEHBjIRh6KDr61S9YaRrAAyEcCc4s3D4nNTXpgN7mp310GyQK+i6
         QFyOhUm/gq+QVrsbhlol9MgMSXNp2W5BpQZ5Gb0HDz133YLHvN6VwXNDRsHBe25Ipnrb
         kyI45QPTY///XUaw2vYQZZD1udo8CD6d8KAbYPUR/6GaVWo7OZ68ZddujJcayEEUFde6
         lu3qO7j7ThazbB7TprKCDAnhIqRT37AjiZDyGt8vKt/5fKjpy77sjddclDL/HhddkzD0
         GrVdXc/3dkBT9r1ejTZkaOJL5w+1aoCNCXwHMrpG1z/VyYt3/H/mqiHbiia9LS91gPRv
         tvkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tQUWxDrNIsrNS5QxG54oLmYnXECSNuuzWredb6IWe5M=;
        b=IYKlMmZ0dhqPi6paC0txl2LmG3wWtYWrxJYE9IHw9fi/9SJrtqreGRaw4NHzbkb5rr
         fUcAEd1yVTJJfRPlpxijBMnIqiLWBtx0HUp9X68AZOkll+wFncScKc9FM98wgsjzQfiq
         ddieHhuylaWYcmnodduf/OqAn5mHwnfxD2wyvEm0Nw/82igjTHWZfe+765j9GHpNlFzV
         N0s3eOQXaB2BLIB74bJn2gkwuNRzOvoGpnsvSeEN2R/G4YMCQilTrJFVVraEyV/fxDMq
         UyNyloBR8W1qIeOB6wWaMDGsoN5x4rB/FIOUcMZ3yzv1W02YacdrZYdS0xZhJemKfSdS
         E28g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tQUWxDrNIsrNS5QxG54oLmYnXECSNuuzWredb6IWe5M=;
        b=YS39UZ9ZYNv9/jt72CLmyBM0AVIBgrs1l/HmMTPqS5RsjFGyR6jJM3gup9dTcj3NrH
         0YjP9tM9HDBxkMN0ShJl9IW6cgX5VhuuwSCcR7GznrH3xhMsSJ4H48lWFHmu1AMRjKEq
         NtgktW5lyrooqqVJAmMZgryuWGxJrzsbFczBTT47c/IjfWs2uLPWC3SpOKF0furWzIUp
         nzZw6DZGjsMHAyrgy5Ycjz6eVXkHouxJz+bUoOMEp5kNNLG7yF7gGfbnj5bosaLfmBNG
         F203G6D0kBFQLTxFq5D9Xev5HEYlZZGDGiByGZbWw36N//lmEQ58URKzLHPAPK/DWVU8
         xUww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531C/w71pOV6POSt2bjyGgi8wGvP8uerlQneg0rH/w2xs0s8/CVB
	NFPuayrHoor5RKsg5zV/eWM=
X-Google-Smtp-Source: ABdhPJycut7+wg0bWvl+peJhganVbiJfYpHpJAH5PBPv5ECG0tdL3HwzS9vCadQO8tUJ5/wMyfRxQQ==
X-Received: by 2002:a05:6830:16d3:: with SMTP id l19mr13120223otr.161.1622368451306;
        Sun, 30 May 2021 02:54:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c711:: with SMTP id n17ls831649ooq.3.gmail; Sun, 30 May
 2021 02:54:11 -0700 (PDT)
X-Received: by 2002:a4a:952b:: with SMTP id m40mr12908719ooi.69.1622368450775;
        Sun, 30 May 2021 02:54:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622368450; cv=none;
        d=google.com; s=arc-20160816;
        b=NhqGQ6VZ349S2YMbxClEpr3OCNyu3Msxa49xRTVPlstfgL+VUtTaf2i280iVMGETCb
         hMURYWb4eIdcwDlbHjqzXde9y7OxKGwExn6xbalh1NlBYisb2/z6ZinX/zDBfhZDZ4FK
         spkbsG7NWvjIaLpFF0x3H5YXnT41jsTibRhhYSc/6/QX20VCtX4Yl4+8+rbPF64LGWoX
         iMw62i4UjH2ZqfDoCJ0L01izho+aBPvoU9QM/LagZ7wwTjHjqFpax1JFuHjs+IIuwFmF
         hSdKKvuEx44PCClyNhKXV/lQdNM7Ur+QLZCbDlUsILWT9Nve6bYJicJpm5rZF2WC1e35
         md8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=/cY7xrqsrk6+IAJA6MU2baxnUnnTRptdpXBGzL5hIRQ=;
        b=vIUy08en1FDe2L64X7RbkNAoM5mLj6opDOK5c0xhxMtl0+fKrMdwdXHhPOuUOyx7pC
         FuL7Nw+rxR+BAxrS8z0ucEncDWIhM3MPSK4sw+vCWYOzaghzPauRNulGDDnZA6olvkSY
         Rk36xKY8DGJ2TSvBjvtFwdsfkEELKD/3clK13ah3CJcQIbdcMzSL1jW8qYeB1os6Y2Mk
         1zaBJP6fixhShWz33skxTPpOPPhy4UWm/ic3acm1N9vTgNs6dMYyqzCRPjzIvoabuVJA
         0UjMYfeiemwZvB2414o/6JR592Kt+SvbMWC2dO8mO8b11dH+qMEsnxcSyCSOPZVmsdij
         xmfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id 12si936315oin.2.2021.05.30.02.54.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 May 2021 02:54:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: Eh8Rmx4vFqMHXN3IKj78iP6WPchEZFXexbAFCqf0GDUG+dqjXoCDl7GTIz7d6PftQDiiLvYm5t
 p1jtmR6Wp/RA==
X-IronPort-AV: E=McAfee;i="6200,9189,9999"; a="267090010"
X-IronPort-AV: E=Sophos;i="5.83,234,1616482800"; 
   d="gz'50?scan'50,208,50";a="267090010"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2021 02:54:09 -0700
IronPort-SDR: M1nkLtyWTW0Q/aRAYyiFEuieE1FDT6PP1Q68y/jz6VarKeTzab8zOQYFFhGoIr96ZnLR9ZIbTd
 Y9/Xvdsc4dMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,234,1616482800"; 
   d="gz'50?scan'50,208,50";a="466389304"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 30 May 2021 02:54:06 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lnI90-00044w-3N; Sun, 30 May 2021 09:54:06 +0000
Date: Sun, 30 May 2021 17:53:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack
 frame size of 2624 bytes in function 'vidtv_mux_tick'
Message-ID: <202105301745.uI6qjmLR-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b90e90f40b4ff23c753126008bf4713a42353af6
commit: f90cf6079bf67988f8b1ad1ade70fc89d0080905 media: vidtv: add a bridge driver
date:   9 months ago
config: powerpc64-randconfig-r034-20210530 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f90cf6079bf67988f8b1ad1ade70fc89d0080905
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f90cf6079bf67988f8b1ad1ade70fc89d0080905
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/media/test-drivers/vidtv/vidtv_mux.c:18:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:5:
   In file included from include/linux/mmdebug.h:5:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack frame size of 2624 bytes in function 'vidtv_mux_tick' [-Wframe-larger-than=]
   static void vidtv_mux_tick(struct work_struct *work)
               ^
   2 warnings generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105301745.uI6qjmLR-lkp%40intel.com.

--MGYHOYXEY6WxJCY8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--MGYHOYXEY6WxJCY8--
