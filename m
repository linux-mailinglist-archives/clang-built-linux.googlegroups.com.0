Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK47QWBAMGQEB6H233A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 349B032DBB2
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 22:22:52 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id b7sf19954846qtj.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 13:22:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614892971; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBINxAj6S3ZN2xDMieWv4U2ENSH+dewnHGSgOB9BGmNKXwSzdX9ekskOqYrVBintd1
         u6NyzzPNZKYAb5GKqO50SavFrR/vf4bEEM1Ksue572acdCj+XpcL58u/189KipIIQN8y
         DmstaggMYITh0Loro6hgzuKSeH0+FoKZpMq8fq8gkHhuPFBUeLVpMRDQ5AqZ0LDp1kQf
         GrZrl5CQTBH3x1bD5Tt4yasQvRUgN4l9h5oRHyJ4t6l7WmV7iDm+QHoFJ44YtV5O0v/T
         O0WTl849VnsxEgijejKhXpWKHimUvMUI48drW1lMgteKd9wUdms3DJtUiMt+Q26TCsGh
         GGrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=nUjSXHNd20YJwQxCxHW0Nr+XRW8XeL4ixdkDDTVJlRQ=;
        b=oTPy0YqXVo0MBBH5ghg5eQOmVYzY05bGFnrazQWBBcN6TzhaesrJ7ke0xmBhWCxclZ
         RWh/926TdYeQB/XBH/e5mhsg3fGLtEe6kJlTwNeThWEQKv/Ta6CnmBHl2StlNGr74uBB
         NNgdiczjxp0a9ub8a0lDII+xqtpM9Jw0cgGmClsRkgxFMkOLrqhFfijGADPm5JGib0zh
         NsLhHWzX0BVCJ3qVoxxlWKmsv053aAtO69b06wWOFb1Vej7kDh+/9ISclNPfgeoL/rWR
         Eh3yv4vWEElbFJTmoS5/i3OAkbvyAMGZzmE61IsUXqpd+Dvj894tcd1a+6m1XD52fdO+
         henQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nUjSXHNd20YJwQxCxHW0Nr+XRW8XeL4ixdkDDTVJlRQ=;
        b=gTeAKsS8iZ03OLEDqo1WlduAB6AY71Dgx1QlSIW2nx2GKfaeWbjRwv+XI3JMinOtn8
         DSjNpGylQP1i9LaTgN4ySz0VzsiMRa522A8CRb3W1HLHME9uaOWzbvzczFiDD6J1zvHd
         fUi3kM1oQXv3EWGW48Kuh9WHcjC3f0R9LwFfUMcrTYa6OGKS5wA6UC6uo+HEcSmyK3yg
         /T24csdKPHGrBZV8lTSjsRAGrHjdap5K+z5Edauz/Fwqi5Y6IFVimhGlAZ8dW5/VtQip
         sLC/r3pKykGR6r+gahjtno9M1QniFohLex+xxRNDlZU1rIk46HxlmWIAuUMd3/4Ltc28
         TKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nUjSXHNd20YJwQxCxHW0Nr+XRW8XeL4ixdkDDTVJlRQ=;
        b=XH7nBPdtjSIzIk7ekfNTmwyw0mRKnz/V1ELspFQZdMnnFjyoc2eJkFKlGUeAKoD9gU
         57IT2Rm7RKvN7p55GNSeTK+gsjpxFF0ZI9X8P3BKxGSUR6P2SMOdMU/2fE4tYXpLTKwI
         RSAOFB1W5Wnkzgnw3sWDgFmi1WoMvbnKDZnNd1atskWlN0SydCKDmy3drUYwKFPjxUcl
         SSCaWWw3pww1tgqHYPIEVpgGV22O1QZ9/EGSQdLNjJvLJL5g+FNRpavIaNaWtRgnv4rI
         5Kq5XHG01aDxRTNKYHZil81rftuKXo9eMeP1BfJYMedc/NnhY1Vvgk9/BrPvuMvU53uh
         OoIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532APF4y0FXCabHmRbmn6b5t6V+FIo/wXoz+tP18iCFzMqkoRnIX
	DLHQkHaJEEM/MYXwMC9ilO8=
X-Google-Smtp-Source: ABdhPJy8SgXRIP3Pi8Yc8wEAKsiMAbJHpdKuIDt2WLxF4Lv8vDrlLQCnEyYHlLSIdzTwYJtm6T+o2Q==
X-Received: by 2002:ac8:674b:: with SMTP id n11mr6007962qtp.20.1614892971166;
        Thu, 04 Mar 2021 13:22:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:570d:: with SMTP id 13ls129079qtw.1.gmail; Thu, 04 Mar
 2021 13:22:50 -0800 (PST)
X-Received: by 2002:ac8:6684:: with SMTP id d4mr5945649qtp.4.1614892970573;
        Thu, 04 Mar 2021 13:22:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614892970; cv=none;
        d=google.com; s=arc-20160816;
        b=hmeZy71bShzg3SPxCt8ZraFSpqWipGa7tVvMCxn5f6nR4N1UlPvrsckXUavh2luHwA
         d+SFFGtX3HBjubVzByWN5nZ5koBYiawESgTJGnWVn6TxpKeHKu4QEzmKuGMmW+7teU7c
         QsUeiE0vh2fvUh7hdwfPVXKuLassr34U2M9qTNl0A1Y1MXkSYDAoZFHwsRo6Pg2DhAHp
         2CQmmGm5p3S2Ug9aXgghVVWdnyAPQCvSITf7j9GHRy9Ttizi7nd2EtJHBDvrH8d8Qidj
         RFmv+6VRcKp+TpCQiQTKIaI4Ux9b5lfj9j7xOUZ32AK6Km7Au28l8YyQk4mTArCYsfU0
         Qp/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=YPPpmes+z9gbE71oBvKYWsKzPhzzk0gSR4icmqpol5k=;
        b=qwx/qol2RJrezcRhUKjPXVHL/P+Fi9JfYv+JdMoSJaOcZDDV69idbnJWaqJMH3wfkl
         ZsN/GeneG5Q7HKdqeFswgYws8zOsKcG8JkZnP0MnqD2cowfAf+NUjJ3Uu/Ilojc/jnDU
         4k0DGr7Hp0vu5BsQstrE2eu5s8lxHioqmRTk0thMiLDmULuLy3jwTEQZeguVfyMm6ie2
         7c64hO1q6fdnXOEUummnfU5lz2UDfOmPX/sT0wdaykH7EP1weRcPPM195GM40SGAmXAI
         dlmwMI1majLRyjoPcpxv0Y4hp8gn+fNCqInbphjVkQe9LTVIvhf9xvwMOX0onsedRsbA
         VXjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id w19si44270qto.4.2021.03.04.13.22.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 13:22:50 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: RllnGPIb14ycuRtYBAEWm/mn/EyCkynYgs6xwn3d8F/Lgd5ni3Bc8Tg6L6Dn9PGnL0C9tHrPYf
 bAgIlSc2lF6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="186860428"
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; 
   d="gz'50?scan'50,208,50";a="186860428"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2021 13:22:48 -0800
IronPort-SDR: tYchxXbcZ1B91FmAQZdfEDW0Y48p44LmrvgbqvLJ3xYI0RVsBV6PR7CSDTNE59GbId0vS93g8d
 yLPZDg4MDvkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; 
   d="gz'50?scan'50,208,50";a="368327583"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 04 Mar 2021 13:22:46 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lHvQj-0002P5-Qk; Thu, 04 Mar 2021 21:22:45 +0000
Date: Fri, 5 Mar 2021 05:21:43 +0800
From: kernel test robot <lkp@intel.com>
To: Stefano Garzarella <sgarzare@redhat.com>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Jens Axboe <axboe@kernel.dk>, Kees Cook <keescook@chromium.org>
Subject: fs/io_uring.c:6538:12: warning: stack frame size of 2208 bytes in
 function 'io_submit_sqes'
Message-ID: <202103050534.dhDhsOLi-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline
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


--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f69d02e37a85645aa90d18cacfff36dba370f797
commit: 21b55dbc0653018b8cd4513c37cbca303b0f0d50 io_uring: add IOURING_REGISTER_RESTRICTIONS opcode
date:   5 months ago
config: powerpc-randconfig-r023-20210304 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project eec7f8f7b1226be422a76542cb403d02538f453a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=21b55dbc0653018b8cd4513c37cbca303b0f0d50
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 21b55dbc0653018b8cd4513c37cbca303b0f0d50
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:61:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/io_uring.c:45:
   In file included from include/linux/syscalls.h:84:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:66:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/io_uring.c:45:
   In file included from include/linux/syscalls.h:84:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:71:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/io_uring.c:45:
   In file included from include/linux/syscalls.h:84:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:76:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/io_uring.c:45:
   In file included from include/linux/syscalls.h:84:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:81:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/io_uring.c:6538:12: warning: stack frame size of 2208 bytes in function 'io_submit_sqes' [-Wframe-larger-than=]
   static int io_submit_sqes(struct io_ring_ctx *ctx, unsigned int nr)
              ^
   13 warnings generated.


vim +/io_submit_sqes +6538 fs/io_uring.c

0553b8bda8709c Pavel Begunkov 2020-04-08  6537  
0f2122045b9462 Jens Axboe     2020-09-13 @6538  static int io_submit_sqes(struct io_ring_ctx *ctx, unsigned int nr)
6c271ce2f1d572 Jens Axboe     2019-01-10  6539  {
ac8691c415e0ce Jens Axboe     2020-06-01  6540  	struct io_submit_state state;
9e645e1105ca60 Jens Axboe     2019-05-10  6541  	struct io_kiocb *link = NULL;
9e645e1105ca60 Jens Axboe     2019-05-10  6542  	int i, submitted = 0;
6c271ce2f1d572 Jens Axboe     2019-01-10  6543  
c4a2ed72c9a615 Jens Axboe     2019-11-21  6544  	/* if we have a backlog and couldn't flush it all, return BUSY */
ad3eb2c89fb24d Jens Axboe     2019-12-18  6545  	if (test_bit(0, &ctx->sq_check_overflow)) {
c4a2ed72c9a615 Jens Axboe     2019-11-21  6546  		if (!list_empty(&ctx->cq_overflow_list) &&
e6c8aa9ac33bd7 Jens Axboe     2020-09-28  6547  		    !io_cqring_overflow_flush(ctx, false, NULL, NULL))
1d7bb1d50fb4dc Jens Axboe     2019-11-06  6548  			return -EBUSY;
ad3eb2c89fb24d Jens Axboe     2019-12-18  6549  	}
6c271ce2f1d572 Jens Axboe     2019-01-10  6550  
ee7d46d9db19de Pavel Begunkov 2019-12-30  6551  	/* make sure SQ entry isn't read before tail */
ee7d46d9db19de Pavel Begunkov 2019-12-30  6552  	nr = min3(nr, ctx->sq_entries, io_sqring_entries(ctx));
9ef4f124894b7b Pavel Begunkov 2019-12-30  6553  
2b85edfc0c90ef Pavel Begunkov 2019-12-28  6554  	if (!percpu_ref_tryget_many(&ctx->refs, nr))
2b85edfc0c90ef Pavel Begunkov 2019-12-28  6555  		return -EAGAIN;
6c271ce2f1d572 Jens Axboe     2019-01-10  6556  
013538bd65fd3c Jens Axboe     2020-06-22  6557  	io_submit_state_start(&state, ctx, nr);
6c271ce2f1d572 Jens Axboe     2019-01-10  6558  
6c271ce2f1d572 Jens Axboe     2019-01-10  6559  	for (i = 0; i < nr; i++) {
3529d8c2b353e6 Jens Axboe     2019-12-19  6560  		const struct io_uring_sqe *sqe;
196be95cd55720 Pavel Begunkov 2019-11-07  6561  		struct io_kiocb *req;
1cb1edb2f5ba8a Pavel Begunkov 2020-02-06  6562  		int err;
fb5ccc98782f65 Pavel Begunkov 2019-10-25  6563  
b1e50e549b1372 Pavel Begunkov 2020-04-08  6564  		sqe = io_get_sqe(ctx);
b1e50e549b1372 Pavel Begunkov 2020-04-08  6565  		if (unlikely(!sqe)) {
b1e50e549b1372 Pavel Begunkov 2020-04-08  6566  			io_consume_sqe(ctx);
b1e50e549b1372 Pavel Begunkov 2020-04-08  6567  			break;
b1e50e549b1372 Pavel Begunkov 2020-04-08  6568  		}
ac8691c415e0ce Jens Axboe     2020-06-01  6569  		req = io_alloc_req(ctx, &state);
196be95cd55720 Pavel Begunkov 2019-11-07  6570  		if (unlikely(!req)) {
196be95cd55720 Pavel Begunkov 2019-11-07  6571  			if (!submitted)
196be95cd55720 Pavel Begunkov 2019-11-07  6572  				submitted = -EAGAIN;
fb5ccc98782f65 Pavel Begunkov 2019-10-25  6573  			break;
196be95cd55720 Pavel Begunkov 2019-11-07  6574  		}
fb5ccc98782f65 Pavel Begunkov 2019-10-25  6575  
ac8691c415e0ce Jens Axboe     2020-06-01  6576  		err = io_init_req(ctx, req, sqe, &state);
709b302faddfac Pavel Begunkov 2020-04-08  6577  		io_consume_sqe(ctx);
d3656344fea033 Jens Axboe     2019-12-18  6578  		/* will complete beyond this point, count as submitted */
d3656344fea033 Jens Axboe     2019-12-18  6579  		submitted++;
d3656344fea033 Jens Axboe     2019-12-18  6580  
ef4ff581102a91 Pavel Begunkov 2020-04-12  6581  		if (unlikely(err)) {
1cb1edb2f5ba8a Pavel Begunkov 2020-02-06  6582  fail_req:
e1e16097e265da Jens Axboe     2020-06-22  6583  			io_put_req(req);
e1e16097e265da Jens Axboe     2020-06-22  6584  			io_req_complete(req, err);
fb5ccc98782f65 Pavel Begunkov 2019-10-25  6585  			break;
196be95cd55720 Pavel Begunkov 2019-11-07  6586  		}
fb5ccc98782f65 Pavel Begunkov 2019-10-25  6587  
354420f705ccd0 Jens Axboe     2020-01-08  6588  		trace_io_uring_submit_sqe(ctx, req->opcode, req->user_data,
0cdaf760f42eb8 Pavel Begunkov 2020-05-17  6589  						true, io_async_submit(ctx));
f13fad7ba41cef Jens Axboe     2020-06-22  6590  		err = io_submit_sqe(req, sqe, &link, &state.comp);
1d4240cc9e7bb1 Pavel Begunkov 2020-04-12  6591  		if (err)
1d4240cc9e7bb1 Pavel Begunkov 2020-04-12  6592  			goto fail_req;
6c271ce2f1d572 Jens Axboe     2019-01-10  6593  	}
6c271ce2f1d572 Jens Axboe     2019-01-10  6594  
9466f43741bc08 Pavel Begunkov 2020-01-25  6595  	if (unlikely(submitted != nr)) {
9466f43741bc08 Pavel Begunkov 2020-01-25  6596  		int ref_used = (submitted == -EAGAIN) ? 0 : submitted;
9466f43741bc08 Pavel Begunkov 2020-01-25  6597  
9466f43741bc08 Pavel Begunkov 2020-01-25  6598  		percpu_ref_put_many(&ctx->refs, nr - ref_used);
9466f43741bc08 Pavel Begunkov 2020-01-25  6599  	}
9e645e1105ca60 Jens Axboe     2019-05-10  6600  	if (link)
f13fad7ba41cef Jens Axboe     2020-06-22  6601  		io_queue_link_head(link, &state.comp);
6c271ce2f1d572 Jens Axboe     2019-01-10  6602  	io_submit_state_end(&state);
6c271ce2f1d572 Jens Axboe     2019-01-10  6603  
ae9428ca61271b Pavel Begunkov 2019-11-06  6604  	 /* Commit SQ ring head once we've consumed and submitted all SQEs */
ae9428ca61271b Pavel Begunkov 2019-11-06  6605  	io_commit_sqring(ctx);
ae9428ca61271b Pavel Begunkov 2019-11-06  6606  
6c271ce2f1d572 Jens Axboe     2019-01-10  6607  	return submitted;
6c271ce2f1d572 Jens Axboe     2019-01-10  6608  }
6c271ce2f1d572 Jens Axboe     2019-01-10  6609  

:::::: The code at line 6538 was first introduced by commit
:::::: 0f2122045b946241a9e549c2a76cea54fa58a7ff io_uring: don't rely on weak ->files references

:::::: TO: Jens Axboe <axboe@kernel.dk>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103050534.dhDhsOLi-lkp%40intel.com.

--bg08WKrSYDhXBjb5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
PCpLdhtxAQA=

--bg08WKrSYDhXBjb5--
