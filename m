Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQOJ62EAMGQESXUVWMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A193F0F5F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:24:37 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id s20-20020a4aead40000b029028b41986b27sf1815994ooh.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:24:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629332676; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZdLfX3tHvUcQXk06c/Q/Sw0WEDHFpING6xM7nP7GQR3XgfM4gALvPR8cwAZr+3EAo
         qaJ+ynh3Sa8gIbD+M1Dz0kTdRLeAx5ipBzj2OMMuMgxXXELFU5BsLcu8CJsMRDvWfDyF
         g8hcHcJWeX5oVE0Ybb0u8cjWkCLAWGfSlGVBsFOSlfLJa6PJf2fh78r4StAHGiyOLQXm
         fd9MdRWjZuOdd7GhRFEbs5iYRiHtyMuEbndDnkrn5UgjBr3sxsEdbXUTfF6vo0Qns4rw
         tgSQxYlbbmcYErs4kJ2zSxX844uv3b0glwGFXvw2Hs3Dn+Y8+NnHI2Sr2H9hiGUL+KJh
         4duQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Vw1nd8XLpEv+uxnlXGj5A5qcsDmd+uHbmIepg4VSZLE=;
        b=Dh3zTg5dIKqFE0IyY1Oxggk6l0PvGxb3DJfTKES6DwLzUz+HhF0dlwoL1APFkXPq2R
         cZPZspoiHxTdMf3BIFxU7fyODYR2987Xspx+s8VP7PF3xFmhPWqn4IfcOP+BnmdPN3hQ
         kqaVf3IjMG7iskj1BkJvX5U1m2y7opDU0h6Wn8Mb8/FYW26J+cRm3/gZ6Xll/dXhaEyX
         +F+4Miq77vb2SW+ujKZnkHRKgiCZHpZswu+xJxVMSfeszon5ePafEMNKX5WzKLYbsoQ6
         YFo9IL8fB3uibn1ZTLn4V1I2nITDA+XV31WYGCpRmFk2maIVQxFtTi51riPhA1CyhA95
         8Hhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vw1nd8XLpEv+uxnlXGj5A5qcsDmd+uHbmIepg4VSZLE=;
        b=ZNbRBfQposVulABPgnUmPRKOwYUpGmBa7LmBmA/hS0a7B8/k37GLWp47cZDldmqxNK
         jBj78hDnR/j4bcURwNNswszOnsvYjbNAxtrOF/qDNiZcwosCy2KT070lTQpX4I00pPmb
         zdFQBBVocR/4PqeDHEcFA74D388d0XW+Ga33V896dSCHLfUQMtgAulDy/NmQ+B/6rd4J
         /GBFUQJEUBvc369BSXjSG+QsdUl7h1DKcpRYjPen1sh3T1sAny39VeZgCMm/s59D81y1
         TBetH5sQRYzWVEDmZ4py8x9WPCA8dxfOXAw5EdXUqhxXzxvvI4EdK5gQj9WLVC+AyfRh
         DK8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vw1nd8XLpEv+uxnlXGj5A5qcsDmd+uHbmIepg4VSZLE=;
        b=YcMNkBoyZ68bOIBqkisbzP4UeQ3g/92NNJj7LAHKGTdC4l8F+tiFHj+NcdcMSlhsh9
         eoytn8xiDxQCe9AaJ3S+yyH/XwcdsuIB18+sTYk9nSM6gZ6lZyZwczLegq9PuZCUyW1k
         UlaJEaT7EKZA3kIyKbuCA7csdLEMmMCVq8dcInCgDhIrgxQs4E9lJE4K3phqocCupP69
         ZPNkl9Dr9l4aeLI8S39cFXHGesNPLCFI5kZ745Z32ewnqSmt5F9olZ5mHUIQhzLMbF00
         X5w1o3ajT9R0zO6tOR9OAp8W8yseWgoYaVVHAJ27lwa3uD0gbTgGM551B41KuvjYfx1r
         d3DA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WYrz1LVeeWvGza3RNP2EgJD5JesMqQuCk6VeH8JSRUpZhcBQs
	pITZJsmfvEFVhd18mBLGDKg=
X-Google-Smtp-Source: ABdhPJza7cgUpBQlscHkIhCtX/8yhEJdHUZSY+Y9uZk2vQYkccNlFcangzDexzTSYpFnMRIRq7VlIQ==
X-Received: by 2002:aca:1a0f:: with SMTP id a15mr609949oia.42.1629332673983;
        Wed, 18 Aug 2021 17:24:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:308:: with SMTP id l8ls89797ooe.0.gmail; Wed, 18
 Aug 2021 17:24:31 -0700 (PDT)
X-Received: by 2002:a4a:e874:: with SMTP id m20mr8898319oom.29.1629332671074;
        Wed, 18 Aug 2021 17:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629332671; cv=none;
        d=google.com; s=arc-20160816;
        b=dddHZ5p7PE8jjz8eTVFMwNseqf7Mwnr7xsZCUV203GLfoO4Bke+UGXqdUu5ledRfun
         8QENY5YQs+XZPc09QI++90A8lAeG1JQdshAx1oAy0QQsS9ljLpnNrjUxg/hHBh6dUbuN
         4YgJjM6kpn6IsRQqhgjFUch09V5ZWt618XUgY6vPVBiTsw0Ii7UP2cb0e2EkfvR2AHYS
         yQxy6L8Jn8qmIE36qo7LEpthUp1f+Ar0exfuxftV+BjwuBfdvisW8RYUB1rJL/e53nxD
         uxc1JNRnbIaH3wNhwwIXTLxnlq62GT7jwTH5xcp/KR8KYuUON7pkjSc6w7cSIo2jwLUX
         OT4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=QQuUFj82U8zjILIxiaciUGt3EA68x8plDiRZzVU/j/o=;
        b=BBvfXqh8hElmJjUGTQxfalb5PKZZNk0Ws6/Si2ag0Q4lRZxugbzGEOKNavzyTYCau8
         P1ZQm6edQPGWVHpHmGP7yH3+SoGGQIz0348AR3hkZCDI2khDDHelKVFyNoj8rB7n8Fu9
         cSA3mW9yh4W6axrkxlhCnqpMyQFIotzZ3tugDTOAzzEHNJg/Pkh3fkzZymrXyB4DnVP/
         A91MJgmX4AYqCvBce+Vq8/sAsbDc3NYjvkY7QGhs+a913a61Ms/muW8hPM/ivS54uMeb
         bTYok4kZcj03GhxqMthLIFQkm5/E89qyfj0yTjhaZfAsIVxZcVUlej0gq+4WS1orDquN
         7WgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id o7si98828oik.2.2021.08.18.17.24.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216185051"
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; 
   d="gz'50?scan'50,208,50";a="216185051"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 17:24:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; 
   d="gz'50?scan'50,208,50";a="471713419"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 18 Aug 2021 17:24:26 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGVr8-000TS1-3A; Thu, 19 Aug 2021 00:24:26 +0000
Date: Thu, 19 Aug 2021 08:23:47 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>
Subject: [mcgrof-next:20210817-add-disk-error-handling-next 2/89]
 drivers/scsi/st.c:3830:40: error: no member named 'disk' in 'struct
 scsi_tape'
Message-ID: <202108190825.aRG9qTxp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.g=
it 20210817-add-disk-error-handling-next
head:   3d00c210d7fd616243af9cf41829f4a56f116ba8
commit: 7692839b26192b737a64c87970b6589e6a909d38 [2/89] st: do not allocate=
 a gendisk
config: i386-randconfig-a011-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574=
a4dea5b718e4386bf2e26af0126e5978ce)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next=
.git/commit/?id=3D7692839b26192b737a64c87970b6589e6a909d38
        git remote add mcgrof-next https://git.kernel.org/pub/scm/linux/ker=
nel/git/mcgrof/linux-next.git
        git fetch --no-tags mcgrof-next 20210817-add-disk-error-handling-ne=
xt
        git checkout 7692839b26192b737a64c87970b6589e6a909d38
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross O=3D=
build_dir ARCH=3Di386 SHELL=3D/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/scsi/st.c:3830:40: error: no member named 'disk' in 'struct scsi=
_tape'
           retval =3D scsi_ioctl(STp->device, STp->disk, file->f_mode, cmd_=
in, p);
                                            ~~~  ^
   1 error generated.


vim +3830 drivers/scsi/st.c

8038e6456a3e6f Kai Makisara      2016-02-09  3348 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3349 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3350  /* Partition the tape in=
to two partitions if size > 0 or one partition if
^1da177e4c3f41 Linus Torvalds    2005-04-16  3351     size =3D=3D 0.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3352 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3353     The block descriptors=
 are read and written because Sony SDT-7000 does not
^1da177e4c3f41 Linus Torvalds    2005-04-16  3354     work without this (su=
ggestion from Michael Schaefer <Michael.Schaefer@dlr.de>).
^1da177e4c3f41 Linus Torvalds    2005-04-16  3355 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3356     My HP C1533A drive re=
turns only one partition size field. This is used to
^1da177e4c3f41 Linus Torvalds    2005-04-16  3357     set the size of parti=
tion 1. There is no size field for the default partition.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3358     Michael Schaefer's So=
ny SDT-7000 returns two descriptors and the second is
^1da177e4c3f41 Linus Torvalds    2005-04-16  3359     used to set the size =
of partition 1 (this is what the SCSI-3 standard specifies).
^1da177e4c3f41 Linus Torvalds    2005-04-16  3360     The following algorit=
hm is used to accommodate both drives: if the number of
^1da177e4c3f41 Linus Torvalds    2005-04-16  3361     partition size fields=
 is greater than the maximum number of additional partitions
^1da177e4c3f41 Linus Torvalds    2005-04-16  3362     in the mode page, the=
 second field is used. Otherwise the first field is used.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3363 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3364     For Seagate DDS drive=
s the page length must be 8 when no partitions is defined
^1da177e4c3f41 Linus Torvalds    2005-04-16  3365     and 10 when 1 partiti=
on is defined (information from Eric Lee Green). This is
^1da177e4c3f41 Linus Torvalds    2005-04-16  3366     is acceptable also to=
 some other old drives and enforced if the first partition
^1da177e4c3f41 Linus Torvalds    2005-04-16  3367     size field is used fo=
r the first additional partition size.
8038e6456a3e6f Kai Makisara      2016-02-09  3368 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3369     For drives that adver=
tize SCSI-3 or newer, use the SSC-3 methods.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3370   */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3371  static int partition_tap=
e(struct scsi_tape *STp, int size)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3372  {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3373  	int result;
8038e6456a3e6f Kai Makisara      2016-02-09  3374  	int target_partition;
8038e6456a3e6f Kai Makisara      2016-02-09  3375  	bool scsi3 =3D STp->dev=
ice->scsi_level >=3D SCSI_3, needs_format =3D false;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3376  	int pgo, psd_cnt, psdo;
8038e6456a3e6f Kai Makisara      2016-02-09  3377  	int psum =3D PP_MSK_PSU=
M_MB, units =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3378  	unsigned char *bp;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3379 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3380  	result =3D read_mode_pa=
ge(STp, PART_PAGE, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3381  	if (result) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3382  		DEBC_printk(STp, "Can'=
t read partition mode page.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3383  		return result;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3384  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3385  	target_partition =3D 1;
8038e6456a3e6f Kai Makisara      2016-02-09  3386  	if (size < 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3387  		target_partition =3D 0=
;
8038e6456a3e6f Kai Makisara      2016-02-09  3388  		size =3D -size;
8038e6456a3e6f Kai Makisara      2016-02-09  3389  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3390 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3391  	/* The mode page is in =
the buffer. Let's modify it and write it. */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3392  	bp =3D (STp->buffer)->b=
_data;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3393  	pgo =3D MODE_HEADER_LEN=
GTH + bp[MH_OFF_BDESCS_LENGTH];
b30d8bca5b525b Hannes Reinecke   2014-06-25  3394  	DEBC_printk(STp, "Parti=
tion page length is %d bytes.\n",
b30d8bca5b525b Hannes Reinecke   2014-06-25  3395  		    bp[pgo + MP_OFF_PA=
GE_LENGTH] + 2);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3396 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3397  	psd_cnt =3D (bp[pgo + M=
P_OFF_PAGE_LENGTH] + 2 - PART_PAGE_FIXED_LENGTH) / 2;
8038e6456a3e6f Kai Makisara      2016-02-09  3398 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3399  	if (scsi3) {
8038e6456a3e6f Kai Makisara      2016-02-09  3400  		needs_format =3D (bp[p=
go + PP_OFF_FLAGS] & PP_MSK_POFM) !=3D 0;
8038e6456a3e6f Kai Makisara      2016-02-09  3401  		if (needs_format && si=
ze =3D=3D 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3402  			/* No need to write t=
he mode page when clearing
8038e6456a3e6f Kai Makisara      2016-02-09  3403  			 *  partitioning
8038e6456a3e6f Kai Makisara      2016-02-09  3404  			 */
8038e6456a3e6f Kai Makisara      2016-02-09  3405  			DEBC_printk(STp, "For=
matting tape with one partition.\n");
8038e6456a3e6f Kai Makisara      2016-02-09  3406  			result =3D format_med=
ium(STp, 0);
8038e6456a3e6f Kai Makisara      2016-02-09  3407  			goto out;
8038e6456a3e6f Kai Makisara      2016-02-09  3408  		}
8038e6456a3e6f Kai Makisara      2016-02-09  3409  		if (needs_format)  /* =
Leave the old value for HP DATs claiming SCSI_3 */
8038e6456a3e6f Kai Makisara      2016-02-09  3410  			psd_cnt =3D 2;
8038e6456a3e6f Kai Makisara      2016-02-09  3411  		if ((bp[pgo + PP_OFF_F=
LAGS] & PP_MSK_PSUM_UNITS) =3D=3D PP_MSK_PSUM_UNITS) {
8038e6456a3e6f Kai Makisara      2016-02-09  3412  			/* Use units scaling =
for large partitions if the device
8038e6456a3e6f Kai Makisara      2016-02-09  3413  			 * suggests it and no=
 precision lost. Required for IBM
8038e6456a3e6f Kai Makisara      2016-02-09  3414  			 * TS1140/50 drives t=
hat don't support MB units.
8038e6456a3e6f Kai Makisara      2016-02-09  3415  			 */
8038e6456a3e6f Kai Makisara      2016-02-09  3416  			if (size >=3D 1000 &&=
 (size % 1000) =3D=3D 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3417  				size /=3D 1000;
8038e6456a3e6f Kai Makisara      2016-02-09  3418  				psum =3D PP_MSK_PSUM=
_UNITS;
8038e6456a3e6f Kai Makisara      2016-02-09  3419  				units =3D 9; /* GB *=
/
8038e6456a3e6f Kai Makisara      2016-02-09  3420  			}
8038e6456a3e6f Kai Makisara      2016-02-09  3421  		}
8038e6456a3e6f Kai Makisara      2016-02-09  3422  		/* Try it anyway if to=
o large to specify in MB */
8038e6456a3e6f Kai Makisara      2016-02-09  3423  		if (psum =3D=3D PP_MSK=
_PSUM_MB && size >=3D 65534) {
8038e6456a3e6f Kai Makisara      2016-02-09  3424  			size /=3D 1000;
8038e6456a3e6f Kai Makisara      2016-02-09  3425  			psum =3D PP_MSK_PSUM_=
UNITS;
8038e6456a3e6f Kai Makisara      2016-02-09  3426  			units =3D 9;  /* GB *=
/
8038e6456a3e6f Kai Makisara      2016-02-09  3427  		}
8038e6456a3e6f Kai Makisara      2016-02-09  3428  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3429 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3430  	if (size >=3D 65535 || =
 /* Does not fit into two bytes */
8038e6456a3e6f Kai Makisara      2016-02-09  3431  	    (target_partition =
=3D=3D 0 && psd_cnt < 2)) {
8038e6456a3e6f Kai Makisara      2016-02-09  3432  		result =3D -EINVAL;
8038e6456a3e6f Kai Makisara      2016-02-09  3433  		goto out;
8038e6456a3e6f Kai Makisara      2016-02-09  3434  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3435 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3436  	psdo =3D pgo + PART_PAG=
E_FIXED_LENGTH;
8038e6456a3e6f Kai Makisara      2016-02-09  3437  	/* The second condition=
 is for HP DDS which use only one partition size
8038e6456a3e6f Kai Makisara      2016-02-09  3438  	 * descriptor
8038e6456a3e6f Kai Makisara      2016-02-09  3439  	 */
8038e6456a3e6f Kai Makisara      2016-02-09  3440  	if (target_partition > =
0 &&
8038e6456a3e6f Kai Makisara      2016-02-09  3441  	    (psd_cnt > bp[pgo +=
 PP_OFF_MAX_ADD_PARTS] ||
8038e6456a3e6f Kai Makisara      2016-02-09  3442  	     bp[pgo + PP_OFF_MA=
X_ADD_PARTS] !=3D 1)) {
8038e6456a3e6f Kai Makisara      2016-02-09  3443  		bp[psdo] =3D bp[psdo +=
 1] =3D 0xff;  /* Rest to partition 0 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3444  		psdo +=3D 2;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3445  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3446  	memset(bp + psdo, 0, bp=
[pgo + PP_OFF_NBR_ADD_PARTS] * 2);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3447 =20
b30d8bca5b525b Hannes Reinecke   2014-06-25  3448  	DEBC_printk(STp, "psd_c=
nt %d, max.parts %d, nbr_parts %d\n",
^1da177e4c3f41 Linus Torvalds    2005-04-16  3449  		    psd_cnt, bp[pgo + =
PP_OFF_MAX_ADD_PARTS],
b30d8bca5b525b Hannes Reinecke   2014-06-25  3450  		    bp[pgo + PP_OFF_NB=
R_ADD_PARTS]);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3451 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3452  	if (size =3D=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3453  		bp[pgo + PP_OFF_NBR_AD=
D_PARTS] =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3454  		if (psd_cnt <=3D bp[pg=
o + PP_OFF_MAX_ADD_PARTS])
^1da177e4c3f41 Linus Torvalds    2005-04-16  3455  		    bp[pgo + MP_OFF_PA=
GE_LENGTH] =3D 6;
b30d8bca5b525b Hannes Reinecke   2014-06-25  3456  		DEBC_printk(STp, "Form=
atting tape with one partition.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3457  	} else {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3458  		bp[psdo] =3D (size >> =
8) & 0xff;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3459  		bp[psdo + 1] =3D size =
& 0xff;
8038e6456a3e6f Kai Makisara      2016-02-09  3460  		if (target_partition =
=3D=3D 0)
8038e6456a3e6f Kai Makisara      2016-02-09  3461  			bp[psdo + 2] =3D bp[p=
sdo + 3] =3D 0xff;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3462  		bp[pgo + 3] =3D 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3463  		if (bp[pgo + MP_OFF_PA=
GE_LENGTH] < 8)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3464  		    bp[pgo + MP_OFF_PA=
GE_LENGTH] =3D 8;
8038e6456a3e6f Kai Makisara      2016-02-09  3465  		DEBC_printk(STp,
8038e6456a3e6f Kai Makisara      2016-02-09  3466  			    "Formatting tape =
with two partitions (%i =3D %d MB).\n",
8038e6456a3e6f Kai Makisara      2016-02-09  3467  			    target_partition,=
 units > 0 ? size * 1000 : size);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3468  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3469  	bp[pgo + PP_OFF_PART_UN=
ITS] =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3470  	bp[pgo + PP_OFF_RESERVE=
D] =3D 0;
8038e6456a3e6f Kai Makisara      2016-02-09  3471  	if (size !=3D 1 || unit=
s !=3D 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3472  		bp[pgo + PP_OFF_FLAGS]=
 =3D PP_BIT_IDP | psum |
8038e6456a3e6f Kai Makisara      2016-02-09  3473  			(bp[pgo + PP_OFF_FLAG=
S] & 0x07);
8038e6456a3e6f Kai Makisara      2016-02-09  3474  		bp[pgo + PP_OFF_PART_U=
NITS] =3D units;
8038e6456a3e6f Kai Makisara      2016-02-09  3475  	} else
8038e6456a3e6f Kai Makisara      2016-02-09  3476  		bp[pgo + PP_OFF_FLAGS]=
 =3D PP_BIT_FDP |
8038e6456a3e6f Kai Makisara      2016-02-09  3477  			(bp[pgo + PP_OFF_FLAG=
S] & 0x1f);
8038e6456a3e6f Kai Makisara      2016-02-09  3478  	bp[pgo + MP_OFF_PAGE_LE=
NGTH] =3D 6 + psd_cnt * 2;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3479 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3480  	result =3D write_mode_p=
age(STp, PART_PAGE, 1);
8038e6456a3e6f Kai Makisara      2016-02-09  3481 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3482  	if (!result && needs_fo=
rmat)
8038e6456a3e6f Kai Makisara      2016-02-09  3483  		result =3D format_medi=
um(STp, 1);
8038e6456a3e6f Kai Makisara      2016-02-09  3484 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3485  	if (result) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3486  		st_printk(KERN_INFO, S=
Tp, "Partitioning of tape failed.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3487  		result =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3488  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3489 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3490  out:
^1da177e4c3f41 Linus Torvalds    2005-04-16  3491  	return result;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3492  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  3493  =0C
^1da177e4c3f41 Linus Torvalds    2005-04-16  3494 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3495 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3496  /* The ioctl command */
dba7688fc9037c Christoph Hellwig 2021-07-24  3497  static long st_ioctl(str=
uct file *file, unsigned int cmd_in, unsigned long arg)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3498  {
dba7688fc9037c Christoph Hellwig 2021-07-24  3499  	void __user *p =3D (voi=
d __user *)arg;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3500  	int i, cmd_nr, cmd_type=
, bt;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3501  	int retval =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3502  	unsigned int blk;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3503  	struct scsi_tape *STp =
=3D file->private_data;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3504  	struct st_modedef *STm;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3505  	struct st_partstat *STp=
s;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3506 =20
28f85009e0cf6a Matthias Kaehlcke 2007-07-29  3507  	if (mutex_lock_interrup=
tible(&STp->lock))
^1da177e4c3f41 Linus Torvalds    2005-04-16  3508  		return -ERESTARTSYS;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3509 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3510  	DEB(
^1da177e4c3f41 Linus Torvalds    2005-04-16  3511  	if (debugging && !STp->=
in_use) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3512  		st_printk(ST_DEB_MSG, =
STp, "Incorrect device.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3513  		retval =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3514  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3515  	} ) /* end DEB */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3516 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3517  	STm =3D &(STp->modes[ST=
p->current_mode]);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3518  	STps =3D &(STp->ps[STp-=
>partition]);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3519 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3520  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  3521  	 * If we are in the mid=
dle of error recovery, don't let anyone
^1da177e4c3f41 Linus Torvalds    2005-04-16  3522  	 * else try and use thi=
s device.  Also, if error recovery fails, it
^1da177e4c3f41 Linus Torvalds    2005-04-16  3523  	 * may try and take the=
 device offline, in which case all further
^1da177e4c3f41 Linus Torvalds    2005-04-16  3524  	 * access to the device=
 is prohibited.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3525  	 */
906d15fbd23c12 Christoph Hellwig 2014-10-11  3526  	retval =3D scsi_ioctl_b=
lock_when_processing_errors(STp->device, cmd_in,
83ff6fe8580a7c Al Viro           2008-03-02  3527  			file->f_flags & O_NDE=
LAY);
906d15fbd23c12 Christoph Hellwig 2014-10-11  3528  	if (retval)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3529  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3530 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3531  	cmd_type =3D _IOC_TYPE(=
cmd_in);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3532  	cmd_nr =3D _IOC_NR(cmd_=
in);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3533 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3534  	if (cmd_type =3D=3D _IO=
C_TYPE(MTIOCTOP) && cmd_nr =3D=3D _IOC_NR(MTIOCTOP)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3535  		struct mtop mtc;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3536 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3537  		if (_IOC_SIZE(cmd_in) =
!=3D sizeof(mtc)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3538  			retval =3D (-EINVAL);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3539  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3540  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3541 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3542  		i =3D copy_from_user(&=
mtc, p, sizeof(struct mtop));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3543  		if (i) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3544  			retval =3D (-EFAULT);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3545  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3546  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3547 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3548  		if (mtc.mt_op =3D=3D M=
TSETDRVBUFFER && !capable(CAP_SYS_ADMIN)) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3549  			st_printk(KERN_WARNIN=
G, STp,
b30d8bca5b525b Hannes Reinecke   2014-06-25  3550  				  "MTSETDRVBUFFER on=
ly allowed for root.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3551  			retval =3D (-EPERM);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3552  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3553  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3554  		if (!STm->defined &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3555  		    (mtc.mt_op !=3D MT=
SETDRVBUFFER &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3556  		     (mtc.mt_count & M=
T_ST_OPTIONS) =3D=3D 0)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3557  			retval =3D (-ENXIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3558  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3559  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3560 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3561  		if (!STp->pos_unknown)=
 {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3562 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3563  			if (STps->eof =3D=3D =
ST_FM_HIT) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3564  				if (mtc.mt_op =3D=3D=
 MTFSF || mtc.mt_op =3D=3D MTFSFM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3565                          =
            mtc.mt_op =3D=3D MTEOM) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3566  					mtc.mt_count -=3D 1=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3567  					if (STps->drv_file =
>=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3568  						STps->drv_file +=
=3D 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3569  				} else if (mtc.mt_op=
 =3D=3D MTBSF || mtc.mt_op =3D=3D MTBSFM) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3570  					mtc.mt_count +=3D 1=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3571  					if (STps->drv_file =
>=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3572  						STps->drv_file +=
=3D 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3573  				}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3574  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3575 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3576  			if (mtc.mt_op =3D=3D =
MTSEEK) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3577  				/* Old position must=
 be restored if partition will be
^1da177e4c3f41 Linus Torvalds    2005-04-16  3578                          =
           changed */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3579  				i =3D !STp->can_part=
itions ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3580  				    (STp->new_partit=
ion !=3D STp->partition);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3581  			} else {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3582  				i =3D mtc.mt_op =3D=
=3D MTREW || mtc.mt_op =3D=3D MTOFFL ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3583  				    mtc.mt_op =3D=3D=
 MTRETEN || mtc.mt_op =3D=3D MTEOM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3584  				    mtc.mt_op =3D=3D=
 MTLOCK || mtc.mt_op =3D=3D MTLOAD ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3585  				    mtc.mt_op =3D=3D=
 MTFSF || mtc.mt_op =3D=3D MTFSFM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3586  				    mtc.mt_op =3D=3D=
 MTBSF || mtc.mt_op =3D=3D MTBSFM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3587  				    mtc.mt_op =3D=3D=
 MTCOMPRESSION;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3588  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3589  			i =3D flush_buffer(ST=
p, i);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3590  			if (i < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3591  				retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3592  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3593  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3594  			if (STps->rw =3D=3D S=
T_WRITING &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3595  			    (mtc.mt_op =3D=3D=
 MTREW || mtc.mt_op =3D=3D MTOFFL ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3596  			     mtc.mt_op =3D=3D=
 MTSEEK ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3597  			     mtc.mt_op =3D=3D=
 MTBSF || mtc.mt_op =3D=3D MTBSFM)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3598  				i =3D st_int_ioctl(S=
Tp, MTWEOF, 1);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3599  				if (i < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3600  					retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3601  					goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3602  				}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3603  				if (mtc.mt_op =3D=3D=
 MTBSF || mtc.mt_op =3D=3D MTBSFM)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3604  					mtc.mt_count++;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3605  				STps->rw =3D ST_IDLE=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3606  			     }
^1da177e4c3f41 Linus Torvalds    2005-04-16  3607 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3608  		} else {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3609  			/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  3610  			 * If there was a bus=
 reset, block further access
^1da177e4c3f41 Linus Torvalds    2005-04-16  3611  			 * to this device.  I=
f the user wants to rewind the tape,
^1da177e4c3f41 Linus Torvalds    2005-04-16  3612  			 * then reset the fla=
g and allow access again.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3613  			 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3614  			if (mtc.mt_op !=3D MT=
REW &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3615  			    mtc.mt_op !=3D MT=
OFFL &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3616  			    mtc.mt_op !=3D MT=
RETEN &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3617  			    mtc.mt_op !=3D MT=
ERASE &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3618  			    mtc.mt_op !=3D MT=
SEEK &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3619  			    mtc.mt_op !=3D MT=
EOM) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3620  				retval =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3621  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3622  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3623  			reset_state(STp);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3624  			/* remove this when t=
he midlevel properly clears was_reset */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3625  			STp->device->was_rese=
t =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3626  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3627 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3628  		if (mtc.mt_op !=3D MTN=
OP && mtc.mt_op !=3D MTSETBLK &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3629  		    mtc.mt_op !=3D MTS=
ETDENSITY && mtc.mt_op !=3D MTWSM &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3630  		    mtc.mt_op !=3D MTS=
ETDRVBUFFER && mtc.mt_op !=3D MTSETPART)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3631  			STps->rw =3D ST_IDLE;=
	/* Prevent automatic WEOF and fsf */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3632 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3633  		if (mtc.mt_op =3D=3D M=
TOFFL && STp->door_locked !=3D ST_UNLOCKED)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3634  			do_door_lock(STp, 0);=
	/* Ignore result! */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3635 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3636  		if (mtc.mt_op =3D=3D M=
TSETDRVBUFFER &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3637  		    (mtc.mt_count & MT=
_ST_OPTIONS) !=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3638  			retval =3D st_set_opt=
ions(STp, mtc.mt_count);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3639  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3640  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3641 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3642  		if (mtc.mt_op =3D=3D M=
TSETPART) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3643  			if (!STp->can_partiti=
ons ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3644  			    mtc.mt_count < 0 =
|| mtc.mt_count >=3D ST_NBR_PARTITIONS) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3645  				retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3646  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3647  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3648  			if (mtc.mt_count >=3D=
 STp->nbr_partitions &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3649  			    (STp->nbr_partiti=
ons =3D nbr_partitions(STp)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3650  				retval =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3651  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3652  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3653  			if (mtc.mt_count >=3D=
 STp->nbr_partitions) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3654  				retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3655  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3656  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3657  			STp->new_partition =
=3D mtc.mt_count;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3658  			retval =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3659  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3660  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3661 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3662  		if (mtc.mt_op =3D=3D M=
TMKPART) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3663  			if (!STp->can_partiti=
ons) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3664  				retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3665  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3666  			}
8038e6456a3e6f Kai Makisara      2016-02-09  3667  			i =3D do_load_unload(=
STp, file, 1);
8038e6456a3e6f Kai Makisara      2016-02-09  3668  			if (i < 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3669  				retval =3D i;
8038e6456a3e6f Kai Makisara      2016-02-09  3670  				goto out;
8038e6456a3e6f Kai Makisara      2016-02-09  3671  			}
8038e6456a3e6f Kai Makisara      2016-02-09  3672  			i =3D partition_tape(=
STp, mtc.mt_count);
8038e6456a3e6f Kai Makisara      2016-02-09  3673  			if (i < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3674  				retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3675  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3676  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3677  			for (i =3D 0; i < ST_=
NBR_PARTITIONS; i++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3678  				STp->ps[i].rw =3D ST=
_IDLE;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3679  				STp->ps[i].at_sm =3D=
 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3680  				STp->ps[i].last_bloc=
k_valid =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3681  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3682  			STp->partition =3D ST=
p->new_partition =3D 0;
8038e6456a3e6f Kai Makisara      2016-02-09  3683  			STp->nbr_partitions =
=3D mtc.mt_count !=3D 0 ? 2 : 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3684  			STps->drv_block =3D S=
Tps->drv_file =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3685  			retval =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3686  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3687  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3688 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3689  		if (mtc.mt_op =3D=3D M=
TSEEK) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3690  			i =3D set_location(ST=
p, mtc.mt_count, STp->new_partition, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3691  			if (!STp->can_partiti=
ons)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3692  				STp->ps[0].rw =3D ST=
_IDLE;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3693  			retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3694  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3695  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3696 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3697  		if (mtc.mt_op =3D=3D M=
TUNLOAD || mtc.mt_op =3D=3D MTOFFL) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3698  			retval =3D do_load_un=
load(STp, file, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3699  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3700  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3701 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3702  		if (mtc.mt_op =3D=3D M=
TLOAD) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3703  			retval =3D do_load_un=
load(STp, file, max(1, mtc.mt_count));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3704  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3705  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3706 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3707  		if (mtc.mt_op =3D=3D M=
TLOCK || mtc.mt_op =3D=3D MTUNLOCK) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3708  			retval =3D do_door_lo=
ck(STp, (mtc.mt_op =3D=3D MTLOCK));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3709  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3710  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3711 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3712  		if (STp->can_partition=
s && STp->ready =3D=3D ST_READY &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3713  		    (i =3D switch_part=
ition(STp)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3714  			retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3715  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3716  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3717 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3718  		if (mtc.mt_op =3D=3D M=
TCOMPRESSION)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3719  			retval =3D st_compres=
sion(STp, (mtc.mt_count & 1));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3720  		else
^1da177e4c3f41 Linus Torvalds    2005-04-16  3721  			retval =3D st_int_ioc=
tl(STp, mtc.mt_op, mtc.mt_count);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3722  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3723  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3724  	if (!STm->defined) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3725  		retval =3D (-ENXIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3726  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3727  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3728 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3729  	if ((i =3D flush_buffer=
(STp, 0)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3730  		retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3731  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3732  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3733  	if (STp->can_partitions=
 &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3734  	    (i =3D switch_parti=
tion(STp)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3735  		retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3736  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3737  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3738 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3739  	if (cmd_type =3D=3D _IO=
C_TYPE(MTIOCGET) && cmd_nr =3D=3D _IOC_NR(MTIOCGET)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3740  		struct mtget mt_status=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3741 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3742  		if (_IOC_SIZE(cmd_in) =
!=3D sizeof(struct mtget)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3743  			 retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3744  			 goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3745  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3746 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3747  		mt_status.mt_type =3D =
STp->tape_type;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3748  		mt_status.mt_dsreg =3D
^1da177e4c3f41 Linus Torvalds    2005-04-16  3749  		    ((STp->block_size =
<< MT_ST_BLKSIZE_SHIFT) & MT_ST_BLKSIZE_MASK) |
^1da177e4c3f41 Linus Torvalds    2005-04-16  3750  		    ((STp->density << =
MT_ST_DENSITY_SHIFT) & MT_ST_DENSITY_MASK);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3751  		mt_status.mt_blkno =3D=
 STps->drv_block;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3752  		mt_status.mt_fileno =
=3D STps->drv_file;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3753  		if (STp->block_size !=
=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3754  			if (STps->rw =3D=3D S=
T_WRITING)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3755  				mt_status.mt_blkno +=
=3D
^1da177e4c3f41 Linus Torvalds    2005-04-16  3756  				    (STp->buffer)->b=
uffer_bytes / STp->block_size;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3757  			else if (STps->rw =3D=
=3D ST_READING)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3758  				mt_status.mt_blkno -=
=3D
^1da177e4c3f41 Linus Torvalds    2005-04-16  3759                          =
                ((STp->buffer)->buffer_bytes +
^1da177e4c3f41 Linus Torvalds    2005-04-16  3760                          =
                 STp->block_size - 1) / STp->block_size;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3761  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3762 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3763  		mt_status.mt_gstat =3D=
 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3764  		if (STp->drv_write_pro=
t)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3765  			mt_status.mt_gstat |=
=3D GMT_WR_PROT(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3766  		if (mt_status.mt_blkno=
 =3D=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3767  			if (mt_status.mt_file=
no =3D=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3768  				mt_status.mt_gstat |=
=3D GMT_BOT(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3769  			else
^1da177e4c3f41 Linus Torvalds    2005-04-16  3770  				mt_status.mt_gstat |=
=3D GMT_EOF(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3771  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3772  		mt_status.mt_erreg =3D=
 (STp->recover_reg << MT_ST_SOFTERR_SHIFT);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3773  		mt_status.mt_resid =3D=
 STp->partition;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3774  		if (STps->eof =3D=3D S=
T_EOM_OK || STps->eof =3D=3D ST_EOM_ERROR)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3775  			mt_status.mt_gstat |=
=3D GMT_EOT(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3776  		else if (STps->eof >=
=3D ST_EOM_OK)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3777  			mt_status.mt_gstat |=
=3D GMT_EOD(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3778  		if (STp->density =3D=
=3D 1)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3779  			mt_status.mt_gstat |=
=3D GMT_D_800(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3780  		else if (STp->density =
=3D=3D 2)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3781  			mt_status.mt_gstat |=
=3D GMT_D_1600(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3782  		else if (STp->density =
=3D=3D 3)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3783  			mt_status.mt_gstat |=
=3D GMT_D_6250(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3784  		if (STp->ready =3D=3D =
ST_READY)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3785  			mt_status.mt_gstat |=
=3D GMT_ONLINE(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3786  		if (STp->ready =3D=3D =
ST_NO_TAPE)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3787  			mt_status.mt_gstat |=
=3D GMT_DR_OPEN(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3788  		if (STps->at_sm)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3789  			mt_status.mt_gstat |=
=3D GMT_SM(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3790  		if (STm->do_async_writ=
es ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3791                      (STm=
->do_buffer_writes && STp->block_size !=3D 0) ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3792  		    STp->drv_buffer !=
=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3793  			mt_status.mt_gstat |=
=3D GMT_IM_REP_EN(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3794  		if (STp->cleaning_req)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3795  			mt_status.mt_gstat |=
=3D GMT_CLN(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3796 =20
1207045da5a7c9 Arnd Bergmann     2018-09-07  3797  		retval =3D put_user_mt=
get(p, &mt_status);
1207045da5a7c9 Arnd Bergmann     2018-09-07  3798  		if (retval)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3799  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3800 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3801  		STp->recover_reg =3D 0=
;		/* Clear after read */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3802  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3803  	}			/* End of MTIOCGET =
*/
^1da177e4c3f41 Linus Torvalds    2005-04-16  3804  	if (cmd_type =3D=3D _IO=
C_TYPE(MTIOCPOS) && cmd_nr =3D=3D _IOC_NR(MTIOCPOS)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3805  		struct mtpos mt_pos;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3806  		if (_IOC_SIZE(cmd_in) =
!=3D sizeof(struct mtpos)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3807  			 retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3808  			 goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3809  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3810  		if ((i =3D get_locatio=
n(STp, &blk, &bt, 0)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3811  			retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3812  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3813  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3814  		mt_pos.mt_blkno =3D bl=
k;
1207045da5a7c9 Arnd Bergmann     2018-09-07  3815  		retval =3D put_user_mt=
pos(p, &mt_pos);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3816  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3817  	}
28f85009e0cf6a Matthias Kaehlcke 2007-07-29  3818  	mutex_unlock(&STp->lock=
);
d320a9551e394c Arnd Bergmann     2019-03-15  3819 =20
dba7688fc9037c Christoph Hellwig 2021-07-24  3820  	switch (cmd_in) {
dba7688fc9037c Christoph Hellwig 2021-07-24  3821  	case SG_IO:
dba7688fc9037c Christoph Hellwig 2021-07-24  3822  	case SCSI_IOCTL_SEND_CO=
MMAND:
dba7688fc9037c Christoph Hellwig 2021-07-24  3823  	case CDROM_SEND_PACKET:
dba7688fc9037c Christoph Hellwig 2021-07-24  3824  		if (!capable(CAP_SYS_R=
AWIO))
dba7688fc9037c Christoph Hellwig 2021-07-24  3825  			return -EPERM;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3826  	default:
^1da177e4c3f41 Linus Torvalds    2005-04-16  3827  		break;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3828  	}
dba7688fc9037c Christoph Hellwig 2021-07-24  3829 =20
2e27f576abc6f0 Christoph Hellwig 2021-07-24 @3830  	retval =3D scsi_ioctl(S=
Tp->device, STp->disk, file->f_mode, cmd_in, p);
dba7688fc9037c Christoph Hellwig 2021-07-24  3831  	if (!retval && cmd_in =
=3D=3D SCSI_IOCTL_STOP_UNIT) {
dba7688fc9037c Christoph Hellwig 2021-07-24  3832  		/* unload */
dba7688fc9037c Christoph Hellwig 2021-07-24  3833  		STp->rew_at_close =3D =
0;
dba7688fc9037c Christoph Hellwig 2021-07-24  3834  		STp->ready =3D ST_NO_T=
APE;
dba7688fc9037c Christoph Hellwig 2021-07-24  3835  	}
dba7688fc9037c Christoph Hellwig 2021-07-24  3836  	return retval;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3837 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3838   out:
28f85009e0cf6a Matthias Kaehlcke 2007-07-29  3839  	mutex_unlock(&STp->lock=
);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3840  	return retval;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3841  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  3842 =20

:::::: The code at line 3830 was first introduced by commit
:::::: 2e27f576abc6f056e63ef207b9911b1a04d07020 scsi: scsi_ioctl: Call scsi=
_cmd_ioctl() from scsi_ioctl()

:::::: TO: Christoph Hellwig <hch@lst.de>
:::::: CC: Martin K. Petersen <martin.petersen@oracle.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108190825.aRG9qTxp-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
t+IKcPj/AI8DFKF7cQIA

--5mCyUwZo2JvN/JJP--
