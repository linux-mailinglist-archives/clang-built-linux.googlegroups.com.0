Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJNUWCDQMGQEXR77CSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E823C4925
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 12:32:10 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id u8-20020a6345480000b0290227a64be361sf14259483pgk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 03:32:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626085925; cv=pass;
        d=google.com; s=arc-20160816;
        b=0vGTY08YEW0zO8R4SFgTTXdvpGd9Wg8CPiXcbXh8j4GUWl2MuZDXtRnxELlvF+D13z
         /7TCydQiZULhNHryWxc+IDLEUEBqAojVII2DIRQoobw5UiarFdhlnLXs0g+XGJZ/nG7l
         HSIWGg18Jq5OIda/KqHM2CgWFJH2+yUFIk560yKWp/MWEG+z8awN9eG6plAWuVQWka9Y
         OI3bb8vT0Mag3eHRK7xZuSi2isecebn9RkbC9qtYD1qyRpyymZfNDqHXiD5AzTKd7464
         jxNfvSUjzRVjsTvBeN9P22Dkt3FpQBaun2TWn0D23h6NB8T/FgFhwj9C4Qm1pOhAnRU0
         aVCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=o1nPZwm3bqf4y6myKLOiiJDMvKpScwUBw3D8uIPfwRk=;
        b=tvzWXOUZRPoHBQzxrJIaQHaQdVF2ZJk/ziXbC/wpBOE0NBMkRGQM4wUdf8O1Jeffye
         0SuMtv08PblfoZ1wHWyBarDPMHtaXC/jYXQ7PFRDscyLAX/xgaLLRyfOD4zzlTUFR8P8
         44Cccq5/8+OplOadFYq9casuH1fb2J76nGtg7jdHb+rX7AoFv1hrwXIzxcPMZArezx07
         jhAb7NRQuFK/cPLXJgZ1bFLbLiwO7svFAiYKPOCX/Mj/RFDYzApTVWDQwIAsuB2nVbXg
         Zy3VHT/RnpCfu93m9JoR5mz3U+lxFmk+gvQ4jIw57NwUMX9yY09E0y9TDuTn20Oc04XH
         EUBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o1nPZwm3bqf4y6myKLOiiJDMvKpScwUBw3D8uIPfwRk=;
        b=cNBDLvDDq+KXYYrf5rY7rKnYd4bhwL5zkIgAMsu0VvUWCpUXcQMJ+SdOtJ2VMUC8lp
         bdgR5yXSA23lTn4drAv7YHV496AHLOOf4BLa4mSPWt+zmZgdFFgCyj7rUiE3Pg2tF3eG
         SBhka16JXPbPW71Uxglazbq+6olArRCHYQAMwYqil21irX6pDkafwjLi/pY/sivrW1i5
         xG423euDnR0BYeJJDct5BTZUxuV2aRgeIm7cuqF21ruOVY/r++ynq3ejUhgHSTEeejme
         sx4wSnuQ7aSQImfmU3676+HEn1gWpu/YwHi2qtZxHl3dlhdKhFq5vGy7rrH5PsHSiZW1
         wTuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o1nPZwm3bqf4y6myKLOiiJDMvKpScwUBw3D8uIPfwRk=;
        b=mkAUe96Fa9YSxdTp7LqVfYB7b/lGCvTaA4NTmyo1FS6FnXmlWKSWbCSH6movHT5BpE
         ZskYN1DM+G5JKJvCKzwHupDMMPmTvB2TS/9Iso6GPbl+Wwy6YK3Wqo4K1wYulYnTS5dd
         2k6qKPyOiMCqvA5/64HF6DkRriqs0UFy+MnT3QHIgKPJU5ojBg9Kzo3Bq/UUHc5O178Y
         pII+NO83miHP137OsLUc+TxnqmmXiYb7zm/UX1bkiRSTxLegFk/PAi/2yNPzxVvtnvDT
         Zi2v1qG/zLjWtVkZ/j6+5H358mih19S4KhVuiCLNOl1LVnyUDcuqsmp7mSfZbFwR2km7
         cr+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53239CNaNQ/Rz94hQdQJlPtXDUk8JSTnwg+Gw1SsZ6LmIl0BuQiY
	IPKv/fhhAwFg1ijfBfPwHcM=
X-Google-Smtp-Source: ABdhPJzUYdZoy3lP7xow8V77xuTkgwsLTvWrgDJ2BdLwKe/L4NsIV0fTHY8p83UpSO4AxzH+wWZ8zw==
X-Received: by 2002:a17:90b:e0d:: with SMTP id ge13mr13481099pjb.182.1626085925177;
        Mon, 12 Jul 2021 03:32:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls7219975pls.3.gmail; Mon, 12
 Jul 2021 03:32:04 -0700 (PDT)
X-Received: by 2002:a17:90a:a607:: with SMTP id c7mr53144474pjq.199.1626085924489;
        Mon, 12 Jul 2021 03:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626085924; cv=none;
        d=google.com; s=arc-20160816;
        b=SFA7o++dHGHmf/SryT17i5n7ZVHTkPGnZshHhoclTR9jnBacGPNYw7PLtYuwZ4LTR/
         54ezKJCVhBw/YaYij5ZnqXKww2MVfSgLEDqiLSuYVUqO7R+op+oQMsOmg3QbiT2lKn3d
         25prDd6TtkOygq6CzXX+I0Z7aT93fpasBCt8sBYIejoODWqJYsyBC7BwEebJGA2+upJ1
         2Xo2kUpf2Pz1GhDAQRwDIXF89dXPBwfbq2FfBctNnltWWO6iGaAz9+LoUH6VWcDgh7R5
         mCy+XpBX57bGIwZdWZCs4ItXnnEUwoGOA1FUmoihCJ+eQTVoNfjLqNwwMYXO9hj1rL8c
         xytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=KrNUhGe7L5QuWi3/8t/fH0fAaGZ5L440Va6UTg42GU8=;
        b=PgSAg+2C9bpHUlewV3gXcmA4TDBspMBYe7QrNK7YzVbTYXx4JnjLww4j8S4K74u/qb
         mJLLe3KEa0qvndcbhFvlvLui8bcXordGemZBczoxS00oy405G8jRZXAH4mDcbsMOgwHi
         gWwCubP+rRIEvgUgCt7jsTL8j/VbgpkUuQSQDR64l0ICwjg68MNt563/sb+7JTK718x2
         0/vTWYaMWL76yi+XYn9rB96Ox4cFzPmVOzjbYlWKjPMNDfum3Vvsf6dCECedHdGFSVbC
         0wSPBARb2oPaDL7JISO8j4LphyVRAxpVDPsEXrAvCwOoBl6txXoneNyRHvy8UyecwYdR
         Fgew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id bt9si1653315pjb.3.2021.07.12.03.32.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jul 2021 03:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10042"; a="231743838"
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; 
   d="gz'50?scan'50,208,50";a="231743838"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jul 2021 03:32:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; 
   d="gz'50?scan'50,208,50";a="648186434"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 12 Jul 2021 03:32:01 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m2tEG-000GyE-HJ; Mon, 12 Jul 2021 10:32:00 +0000
Date: Mon, 12 Jul 2021 18:31:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Kees Cook <keescook@chromium.org>
Subject: [gustavoars-linux:for-next/kspp 5/5] fs/fcntl.c:373:3: warning:
 fallthrough annotation in unreachable code
Message-ID: <202107121849.avC1JhJH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
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


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Gustavo,

First bad commit (maybe !=3D root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.gi=
t for-next/kspp
head:   cd013b8a781567829cbb0764958b640642edc6ff
commit: cd013b8a781567829cbb0764958b640642edc6ff [5/5] Makefile: Enable -Wi=
mplicit-fallthrough for Clang
config: riscv-buildonly-randconfig-r003-20210712 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d6963=
5ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.=
git/commit/?id=3Dcd013b8a781567829cbb0764958b640642edc6ff
        git remote add gustavoars-linux https://git.kernel.org/pub/scm/linu=
x/kernel/git/gustavoars/linux.git
        git fetch --no-tags gustavoars-linux for-next/kspp
        git checkout cd013b8a781567829cbb0764958b640642edc6ff
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Driscv=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/fcntl.c:373:3: warning: fallthrough annotation in unreachable code [-=
Wimplicit-fallthrough]
                   fallthrough;
                   ^
   include/linux/compiler_attributes.h:210:41: note: expanded from macro 'f=
allthrough'
   # define fallthrough                    __attribute__((__fallthrough__))
                                           ^
   1 warning generated.
--
>> kernel/sched/core.c:3141:4: warning: fallthrough annotation in unreachab=
le code [-Wimplicit-fallthrough]
                           fallthrough;
                           ^
   include/linux/compiler_attributes.h:210:41: note: expanded from macro 'f=
allthrough'
   # define fallthrough                    __attribute__((__fallthrough__))
                                           ^
   kernel/sched/core.c:3204:6: warning: no previous prototype for function =
'sched_set_stop_task' [-Wmissing-prototypes]
   void sched_set_stop_task(int cpu, struct task_struct *stop)
        ^
   kernel/sched/core.c:3204:1: note: declare 'static' if the function is no=
t intended to be used outside of this translation unit
   void sched_set_stop_task(int cpu, struct task_struct *stop)
   ^
   static=20
   2 warnings generated.
--
>> drivers/mtd/chips/cfi_util.c:112:3: warning: fallthrough annotation in u=
nreachable code [-Wimplicit-fallthrough]
                   fallthrough;
                   ^
   include/linux/compiler_attributes.h:210:41: note: expanded from macro 'f=
allthrough'
   # define fallthrough                    __attribute__((__fallthrough__))
                                           ^
   drivers/mtd/chips/cfi_util.c:168:3: warning: fallthrough annotation in u=
nreachable code [-Wimplicit-fallthrough]
                   fallthrough;
                   ^
   include/linux/compiler_attributes.h:210:41: note: expanded from macro 'f=
allthrough'
   # define fallthrough                    __attribute__((__fallthrough__))
                                           ^
   2 warnings generated.
--
>> sound/core/pcm_native.c:3799:3: warning: fallthrough annotation in unrea=
chable code [-Wimplicit-fallthrough]
                   fallthrough;
                   ^
   include/linux/compiler_attributes.h:210:41: note: expanded from macro 'f=
allthrough'
   # define fallthrough                    __attribute__((__fallthrough__))
                                           ^
   sound/core/pcm_native.c:3807:3: warning: fallthrough annotation in unrea=
chable code [-Wimplicit-fallthrough]
                   fallthrough;
                   ^
   include/linux/compiler_attributes.h:210:41: note: expanded from macro 'f=
allthrough'
   # define fallthrough                    __attribute__((__fallthrough__))
                                           ^
   2 warnings generated.


vim +373 fs/fcntl.c

c75b1d9421f80f Jens Axboe          2017-06-27  329 =20
^1da177e4c3f41 Linus Torvalds      2005-04-16  330  static long do_fcntl(in=
t fd, unsigned int cmd, unsigned long arg,
^1da177e4c3f41 Linus Torvalds      2005-04-16  331  		struct file *filp)
^1da177e4c3f41 Linus Torvalds      2005-04-16  332  {
a75d30c7720785 Christoph Hellwig   2017-05-27  333  	void __user *argp =3D =
(void __user *)arg;
a75d30c7720785 Christoph Hellwig   2017-05-27  334  	struct flock flock;
^1da177e4c3f41 Linus Torvalds      2005-04-16  335  	long err =3D -EINVAL;
^1da177e4c3f41 Linus Torvalds      2005-04-16  336 =20
^1da177e4c3f41 Linus Torvalds      2005-04-16  337  	switch (cmd) {
^1da177e4c3f41 Linus Torvalds      2005-04-16  338  	case F_DUPFD:
fe17f22d7fd0e3 Al Viro             2012-08-21  339  		err =3D f_dupfd(arg, =
filp, 0);
4e1e018ecc6f7b Al Viro             2008-07-26  340  		break;
fe17f22d7fd0e3 Al Viro             2012-08-21  341  	case F_DUPFD_CLOEXEC:
121977187ca0a7 Al Viro             2012-10-08  342  		err =3D f_dupfd(arg, =
filp, O_CLOEXEC);
^1da177e4c3f41 Linus Torvalds      2005-04-16  343  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  344  	case F_GETFD:
^1da177e4c3f41 Linus Torvalds      2005-04-16  345  		err =3D get_close_on_=
exec(fd) ? FD_CLOEXEC : 0;
^1da177e4c3f41 Linus Torvalds      2005-04-16  346  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  347  	case F_SETFD:
^1da177e4c3f41 Linus Torvalds      2005-04-16  348  		err =3D 0;
^1da177e4c3f41 Linus Torvalds      2005-04-16  349  		set_close_on_exec(fd,=
 arg & FD_CLOEXEC);
^1da177e4c3f41 Linus Torvalds      2005-04-16  350  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  351  	case F_GETFL:
^1da177e4c3f41 Linus Torvalds      2005-04-16  352  		err =3D filp->f_flags=
;
^1da177e4c3f41 Linus Torvalds      2005-04-16  353  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  354  	case F_SETFL:
^1da177e4c3f41 Linus Torvalds      2005-04-16  355  		err =3D setfl(fd, fil=
p, arg);
^1da177e4c3f41 Linus Torvalds      2005-04-16  356  		break;
5d50ffd7c31dab Jeff Layton         2014-02-03  357  #if BITS_PER_LONG !=3D =
32
5d50ffd7c31dab Jeff Layton         2014-02-03  358  	/* 32-bit arches must =
use fcntl64() */
0d3f7a2dd2f5cf Jeff Layton         2014-04-22  359  	case F_OFD_GETLK:
5d50ffd7c31dab Jeff Layton         2014-02-03  360  #endif
^1da177e4c3f41 Linus Torvalds      2005-04-16  361  	case F_GETLK:
a75d30c7720785 Christoph Hellwig   2017-05-27  362  		if (copy_from_user(&f=
lock, argp, sizeof(flock)))
a75d30c7720785 Christoph Hellwig   2017-05-27  363  			return -EFAULT;
a75d30c7720785 Christoph Hellwig   2017-05-27  364  		err =3D fcntl_getlk(f=
ilp, cmd, &flock);
a75d30c7720785 Christoph Hellwig   2017-05-27  365  		if (!err && copy_to_u=
ser(argp, &flock, sizeof(flock)))
a75d30c7720785 Christoph Hellwig   2017-05-27  366  			return -EFAULT;
^1da177e4c3f41 Linus Torvalds      2005-04-16  367  		break;
5d50ffd7c31dab Jeff Layton         2014-02-03  368  #if BITS_PER_LONG !=3D =
32
5d50ffd7c31dab Jeff Layton         2014-02-03  369  	/* 32-bit arches must =
use fcntl64() */
0d3f7a2dd2f5cf Jeff Layton         2014-04-22  370  	case F_OFD_SETLK:
0d3f7a2dd2f5cf Jeff Layton         2014-04-22  371  	case F_OFD_SETLKW:
5d50ffd7c31dab Jeff Layton         2014-02-03  372  #endif
df561f6688fef7 Gustavo A. R. Silva 2020-08-23 @373  		fallthrough;
^1da177e4c3f41 Linus Torvalds      2005-04-16  374  	case F_SETLK:
^1da177e4c3f41 Linus Torvalds      2005-04-16  375  	case F_SETLKW:
a75d30c7720785 Christoph Hellwig   2017-05-27  376  		if (copy_from_user(&f=
lock, argp, sizeof(flock)))
a75d30c7720785 Christoph Hellwig   2017-05-27  377  			return -EFAULT;
a75d30c7720785 Christoph Hellwig   2017-05-27  378  		err =3D fcntl_setlk(f=
d, filp, cmd, &flock);
^1da177e4c3f41 Linus Torvalds      2005-04-16  379  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  380  	case F_GETOWN:
^1da177e4c3f41 Linus Torvalds      2005-04-16  381  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  382  		 * XXX If f_owner is =
a process group, the
^1da177e4c3f41 Linus Torvalds      2005-04-16  383  		 * negative return va=
lue will get converted
^1da177e4c3f41 Linus Torvalds      2005-04-16  384  		 * into an error.  Oo=
ps.  If we keep the
^1da177e4c3f41 Linus Torvalds      2005-04-16  385  		 * current syscall co=
nventions, the only way
^1da177e4c3f41 Linus Torvalds      2005-04-16  386  		 * to fix this will b=
e in libc.
^1da177e4c3f41 Linus Torvalds      2005-04-16  387  		 */
609d7fa9565c75 Eric W. Biederman   2006-10-02  388  		err =3D f_getown(filp=
);
^1da177e4c3f41 Linus Torvalds      2005-04-16  389  		force_successful_sysc=
all_return();
^1da177e4c3f41 Linus Torvalds      2005-04-16  390  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  391  	case F_SETOWN:
393cc3f51135ea Jiri Slaby          2017-06-13  392  		err =3D f_setown(filp=
, arg, 1);
^1da177e4c3f41 Linus Torvalds      2005-04-16  393  		break;
ba0a6c9f6fceed Peter Zijlstra      2009-09-23  394  	case F_GETOWN_EX:
ba0a6c9f6fceed Peter Zijlstra      2009-09-23  395  		err =3D f_getown_ex(f=
ilp, arg);
ba0a6c9f6fceed Peter Zijlstra      2009-09-23  396  		break;
ba0a6c9f6fceed Peter Zijlstra      2009-09-23  397  	case F_SETOWN_EX:
ba0a6c9f6fceed Peter Zijlstra      2009-09-23  398  		err =3D f_setown_ex(f=
ilp, arg);
ba0a6c9f6fceed Peter Zijlstra      2009-09-23  399  		break;
1d151c337d79fa Cyrill Gorcunov     2012-07-30  400  	case F_GETOWNER_UIDS:
1d151c337d79fa Cyrill Gorcunov     2012-07-30  401  		err =3D f_getowner_ui=
ds(filp, arg);
1d151c337d79fa Cyrill Gorcunov     2012-07-30  402  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  403  	case F_GETSIG:
^1da177e4c3f41 Linus Torvalds      2005-04-16  404  		err =3D filp->f_owner=
.signum;
^1da177e4c3f41 Linus Torvalds      2005-04-16  405  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  406  	case F_SETSIG:
^1da177e4c3f41 Linus Torvalds      2005-04-16  407  		/* arg =3D=3D 0 resto=
res default behaviour. */
7ed20e1ad521b5 Jesper Juhl         2005-05-01  408  		if (!valid_signal(arg=
)) {
^1da177e4c3f41 Linus Torvalds      2005-04-16  409  			break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  410  		}
^1da177e4c3f41 Linus Torvalds      2005-04-16  411  		err =3D 0;
^1da177e4c3f41 Linus Torvalds      2005-04-16  412  		filp->f_owner.signum =
=3D arg;
^1da177e4c3f41 Linus Torvalds      2005-04-16  413  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  414  	case F_GETLEASE:
^1da177e4c3f41 Linus Torvalds      2005-04-16  415  		err =3D fcntl_getleas=
e(filp);
^1da177e4c3f41 Linus Torvalds      2005-04-16  416  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  417  	case F_SETLEASE:
^1da177e4c3f41 Linus Torvalds      2005-04-16  418  		err =3D fcntl_setleas=
e(fd, filp, arg);
^1da177e4c3f41 Linus Torvalds      2005-04-16  419  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  420  	case F_NOTIFY:
^1da177e4c3f41 Linus Torvalds      2005-04-16  421  		err =3D fcntl_dirnoti=
fy(fd, filp, arg);
^1da177e4c3f41 Linus Torvalds      2005-04-16  422  		break;
35f3d14dbbc584 Jens Axboe          2010-05-20  423  	case F_SETPIPE_SZ:
35f3d14dbbc584 Jens Axboe          2010-05-20  424  	case F_GETPIPE_SZ:
35f3d14dbbc584 Jens Axboe          2010-05-20  425  		err =3D pipe_fcntl(fi=
lp, cmd, arg);
35f3d14dbbc584 Jens Axboe          2010-05-20  426  		break;
40e041a2c858b3 David Herrmann      2014-08-08  427  	case F_ADD_SEALS:
40e041a2c858b3 David Herrmann      2014-08-08  428  	case F_GET_SEALS:
5aadc431a593ac Marc-Andr=C3=A9 Lureau   2018-01-31  429  		err =3D memfd_fc=
ntl(filp, cmd, arg);
40e041a2c858b3 David Herrmann      2014-08-08  430  		break;
c75b1d9421f80f Jens Axboe          2017-06-27  431  	case F_GET_RW_HINT:
c75b1d9421f80f Jens Axboe          2017-06-27  432  	case F_SET_RW_HINT:
c75b1d9421f80f Jens Axboe          2017-06-27  433  	case F_GET_FILE_RW_HIN=
T:
c75b1d9421f80f Jens Axboe          2017-06-27  434  	case F_SET_FILE_RW_HIN=
T:
c75b1d9421f80f Jens Axboe          2017-06-27  435  		err =3D fcntl_rw_hint=
(filp, cmd, arg);
c75b1d9421f80f Jens Axboe          2017-06-27  436  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  437  	default:
^1da177e4c3f41 Linus Torvalds      2005-04-16  438  		break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  439  	}
^1da177e4c3f41 Linus Torvalds      2005-04-16  440  	return err;
^1da177e4c3f41 Linus Torvalds      2005-04-16  441  }
^1da177e4c3f41 Linus Torvalds      2005-04-16  442 =20

:::::: The code at line 373 was first introduced by commit
:::::: df561f6688fef775baa341a0f5d960becd248b11 treewide: Use fallthrough p=
seudo-keyword

:::::: TO: Gustavo A. R. Silva <gustavoars@kernel.org>
:::::: CC: Gustavo A. R. Silva <gustavoars@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202107121849.avC1JhJH-lkp%40intel.com.

--lrZ03NoBR/3+SXJZ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ns6WknQ+77b8H9nzXu+3ngEA

--lrZ03NoBR/3+SXJZ--
