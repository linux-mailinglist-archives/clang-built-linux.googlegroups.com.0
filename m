Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7PK42AAMGQEHSTKB7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D4230CD06
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 21:26:38 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id p185sf18473456qkc.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 12:26:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612297597; cv=pass;
        d=google.com; s=arc-20160816;
        b=uMGMicW2CF23BR8GCYbF837iA6Kj1SYqcAKATWSt1o4Ove/JGE4KsMeHqB+vFOh9WF
         C012z6sN1d/5REQQag4nWsK92zXOMh42EGHYtFcKBAtIIyh9pQChpUxcwYBQo66WSGE9
         /5zjx3QPgI8Q4sVWJkVBCQnQkiXmaZqZvaTvhnOdrCZWogQJVDOQZQvkaqtrPLXJL/Vg
         WMnB0kdn+fp+dG6npXH7QCFevTrYc3AlZk6c6t1koTNclSJhD47zHw12iItkpmWSl72w
         FlUWG4PkD+vZ3ne+grHvyGEwAZDz2JXA0O01UvDtXDJY/PPYLUfROsRpGUUijao+poh0
         UlPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=xLJdkbdVQ0PqmT/hr/lfVBwxfjetvrYTchuSaE+PPPU=;
        b=k9vJMgqqh4x605zFLWbWcsXe/iOB9I85mP/FsM5DFdtRD4O4Z5gHTOCdITPUTY1HV9
         4N8+X+NwpNyk0TizN5jJS/ebEVCA24W/Vjxh4lw4355viPQT2V7GeD+AJR0HLpmPJr4d
         1LeykNWZR6BEtJZG6suSLBXnVJ4xq6Z86W0rueLbVTj/YdpiXslN6ndxms6VSSdH875Q
         Q+5zIF+nMNez2u2eKm33QNuaftvYUOY7oyNSrgDSQriUfGtLkUy/PVBzi1TNJimPv8mb
         Q1UlLW0H6z/dRO0vsisahxQLWm8LRctKpUj8Xakr3CP9hs//oR11vR3yO9U1BBTg8tTf
         ybZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xLJdkbdVQ0PqmT/hr/lfVBwxfjetvrYTchuSaE+PPPU=;
        b=lqtZAxHEc6mFtihU/0tPmn7V6BRqjiUDQ8srLg7MVyrfvUcCEW7R2rQ0jc0WuLYzVG
         Atvli9loLgax/mnY8kaHzVHmaYUWDC5Iyp7RNeZ35su6jl8kzyegjrtVl/vKJIC4L8+f
         xdAJagBMyQLCdhnwvVVZla7Ihvwy4efTRPAm8CNIC7OjwRxtbEXxIyl1Ay+wRxiL2LRo
         n3dGIOLkEOfedK60d0d00BwDVaqW6Zj5eRKXe1Mtmed9qoUnXsNTfFYomlqacQ77SPPM
         R7qeF+Gj2PeeA6UDYNa1Yg4EheSWlhg5RbddCEShPjsVjd2Stn1AC76NQhcfcAYIxJZw
         iu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xLJdkbdVQ0PqmT/hr/lfVBwxfjetvrYTchuSaE+PPPU=;
        b=nynUtK8phFrXxdS3y5eouEMAsyF4DcCOE8r2zY6gA9CyaQB87gxFRSk5udD8ZBMz45
         W06Fx4aOSOnmb+EG3FgiF9WWm4EYHAfvTFcwG/vD/TV/6A2+spEPknc3gSscZ0nm8i6g
         lbo9OZtgTayqk0eajW24ZuUt/q9stoepAOvJrxDfrtqorme4deK6NOR/nUe+l/D6/PVO
         IbkJV/IbqX18j6rN4KS97xQRM7lCNPYKDXwItT+dS1L49k+qzEiEbcHhFQHckYT1VpTb
         a4OngZ0yIKLIvp1ZlAaMd9fWNl9Kbk5j8m2Kd84T2MQXwwg2V+JudLCRBakF4hitPbhS
         WUEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M5+FvdLDOI5Ve2P/js9Hc2gt6t4GOk/fe3Zlwxpd6Omqde3TX
	D8wtf/gKvLfOTxIr0PlX+qQ=
X-Google-Smtp-Source: ABdhPJzi9jTSqICXLVZmRhZHlnRpPS0eekAFB0CdhOLhSXSdopCctAwfFuUcWuZwWUJqYVYbSw959Q==
X-Received: by 2002:a37:b204:: with SMTP id b4mr22799568qkf.72.1612297597466;
        Tue, 02 Feb 2021 12:26:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:a19:: with SMTP id i25ls7476qka.2.gmail; Tue, 02
 Feb 2021 12:26:37 -0800 (PST)
X-Received: by 2002:a05:620a:389:: with SMTP id q9mr20471271qkm.323.1612297596742;
        Tue, 02 Feb 2021 12:26:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612297596; cv=none;
        d=google.com; s=arc-20160816;
        b=Fy6fOT1BuEVHeAba42s3ufY3qq8O+zMl+uvZTtIqiS1dE6AxRAe6f6cfQ5yD/lvnEq
         fR8UcX6Zdr3YLOhJDlQgKiX64WlC3uxuQElx5DBsBgUupKyV3u6xSpxzqA82j5Gpwq1F
         T4+fmJDWMxyCVAhNgP8iQEqtkd0jmbGHphJx6fbsflIdZ2gQAI0U52NuvlVksVXCXPrR
         uwCtUbY0FqKf2qWDKimQcSAZw72eQE7zg8+HqrrGHr8x71kkrZG1Ib9eFFXA1k73tEz2
         JU+gkuFia0uKhwx5qjG8WUYql4VbeTLH614fS0nVE2F+hFxEj0UOAYEfc+5Mvq5BWSr8
         LSsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LTQx6exnP/l0bZMAZxN3HRn5cElh2C1wnP2/8H/Gyw4=;
        b=IAtKRj/uw+puIW3rf4Yr8ArS61Pwb939e+WG02mrlO1DNBtH4mmPVWTKcsKPl8r3e0
         7BKQIJmYX4/VbYjMPs4GhjTeQ+zTpxlpls2i7q4LD45j8TtPIFm9oGUl9nN0+GbvWHvK
         Ta5AU9CLTWxuHTbBv/UDeZc7dQFbYStfhPDlkudr09pEzsszIK5rR1t36/EK51dUm/jY
         LiL+//1TK/IdU5KL3aCJWesfx13CFD8AQS4GJOCiRdyMn2wrwWWM+NGAUmY8Z3424Bpw
         QWc/oxXSmjfJ7ADvlSh5gzB/eNOkp1Pgedaghpu+nsB4gM4XYHWrwwSGtPJ4Mkf7nOO7
         uQhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id z14si1882272qtv.0.2021.02.02.12.26.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 12:26:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 6smw2wTvIHF+QNXRbnkJtKPGi8b56tcSDpVp9ktkZjI5aXqC8qi0NqOVuAeaoyigC5OkAq7KqU
 CBO3Cyc46ivA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="168603233"
X-IronPort-AV: E=Sophos;i="5.79,396,1602572400"; 
   d="gz'50?scan'50,208,50";a="168603233"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 12:26:35 -0800
IronPort-SDR: h1aZg0nvIAsdpag2SAbmhqFMYV28VTQFrJQYFYquzdr0cOzZ7vfpsVHlSSxfXZEzJgKgHIqRqf
 c4Q4FTLnx/2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,396,1602572400"; 
   d="gz'50?scan'50,208,50";a="372097514"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 02 Feb 2021 12:26:33 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l72Fs-0009et-GC; Tue, 02 Feb 2021 20:26:32 +0000
Date: Wed, 3 Feb 2021 04:26:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
	Jan Kara <jack@suse.cz>
Subject: fs/f2fs/gc.c:29:12: warning: stack frame size of 1048 bytes in
 function 'gc_thread_func'
Message-ID: <202102030453.idntCABU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline
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


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   88bb507a74ea7d75fa49edd421eaa710a7d80598
commit: 9b8523423b23ee3dfd88e32f5b7207be56a4e782 vfs: move __sb_{start,end}=
_write* to fs.h
date:   3 months ago
config: mips-randconfig-r026-20210202 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6a=
f7d7f1ed63a03d05b4484413e447133269)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D9b8523423b23ee3dfd88e32f5b7207be56a4e782
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 9b8523423b23ee3dfd88e32f5b7207be56a4e782
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/f2fs/gc.c:29:12: warning: stack frame size of 1048 bytes in function =
'gc_thread_func'
   static int gc_thread_func(void
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
   1: ll $0, $1 # atomic_add
   addu $0, $2
   sc $0, $1
   beqz $0, 1b
   .set pop
   '
   clang-13: error: clang frontend command failed with exit code 70 (use -v=
 to see invocation)
   clang version 13.0.0 (git://gitmirror/llvm_project 275c6af7d7f1ed63a03d0=
5b4484413e447133269)
   Target: mips-unknown-linux-gnu
   Thread model: posix
   InstalledDir: /opt/cross/clang-275c6af7d7/bin
   clang-13: note: diagnostic msg:
   Makefile arch drivers fs include kernel scripts source usr


vim +/gc_thread_func +29 fs/f2fs/gc.c

093749e296e29a Chao Yu          2020-08-04   25 =20
da52f8ade40b03 Jack Qiu         2020-06-18   26  static unsigned int count_=
bits(const unsigned long *addr,
da52f8ade40b03 Jack Qiu         2020-06-18   27  				unsigned int offset, u=
nsigned int len);
da52f8ade40b03 Jack Qiu         2020-06-18   28 =20
7bc0900347e069 Jaegeuk Kim      2012-11-02  @29  static int gc_thread_func(=
void *data)
7bc0900347e069 Jaegeuk Kim      2012-11-02   30  {
7bc0900347e069 Jaegeuk Kim      2012-11-02   31  	struct f2fs_sb_info *sbi =
=3D data;
b59d0bae6ca30c Namjae Jeon      2013-08-04   32  	struct f2fs_gc_kthread *g=
c_th =3D sbi->gc_thread;
7bc0900347e069 Jaegeuk Kim      2012-11-02   33  	wait_queue_head_t *wq =3D=
 &sbi->gc_thread->gc_wait_queue_head;
b8c502b81e3f89 Chao Yu          2017-08-07   34  	unsigned int wait_ms;
7bc0900347e069 Jaegeuk Kim      2012-11-02   35 =20
b59d0bae6ca30c Namjae Jeon      2013-08-04   36  	wait_ms =3D gc_th->min_sl=
eep_time;
7bc0900347e069 Jaegeuk Kim      2012-11-02   37 =20
1d7be2708277ed Jaegeuk Kim      2017-05-17   38  	set_freezable();
7bc0900347e069 Jaegeuk Kim      2012-11-02   39  	do {
bbbc34fd666254 Chao Yu          2020-02-14   40  		bool sync_mode;
bbbc34fd666254 Chao Yu          2020-02-14   41 =20
7bc0900347e069 Jaegeuk Kim      2012-11-02   42  		wait_event_interruptible=
_timeout(*wq,
d9872a698c393e Jaegeuk Kim      2017-08-06   43  				kthread_should_stop() =
|| freezing(current) ||
d9872a698c393e Jaegeuk Kim      2017-08-06   44  				gc_th->gc_wake,
7bc0900347e069 Jaegeuk Kim      2012-11-02   45  				msecs_to_jiffies(wait_=
ms));
1d7be2708277ed Jaegeuk Kim      2017-05-17   46 =20
d9872a698c393e Jaegeuk Kim      2017-08-06   47  		/* give it a try one tim=
e */
d9872a698c393e Jaegeuk Kim      2017-08-06   48  		if (gc_th->gc_wake)
d9872a698c393e Jaegeuk Kim      2017-08-06   49  			gc_th->gc_wake =3D 0;
d9872a698c393e Jaegeuk Kim      2017-08-06   50 =20
274bd9ba394256 Chao Yu          2018-09-29   51  		if (try_to_freeze()) {
274bd9ba394256 Chao Yu          2018-09-29   52  			stat_other_skip_bggc_co=
unt(sbi);
1d7be2708277ed Jaegeuk Kim      2017-05-17   53  			continue;
274bd9ba394256 Chao Yu          2018-09-29   54  		}
7bc0900347e069 Jaegeuk Kim      2012-11-02   55  		if (kthread_should_stop(=
))
7bc0900347e069 Jaegeuk Kim      2012-11-02   56  			break;
7bc0900347e069 Jaegeuk Kim      2012-11-02   57 =20
d6212a5f18c8f9 Changman Lee     2013-01-29   58  		if (sbi->sb->s_writers.f=
rozen >=3D SB_FREEZE_WRITE) {
88dd8934194f6d Chao Yu          2015-01-26   59  			increase_sleep_time(gc_=
th, &wait_ms);
274bd9ba394256 Chao Yu          2018-09-29   60  			stat_other_skip_bggc_co=
unt(sbi);
d6212a5f18c8f9 Changman Lee     2013-01-29   61  			continue;
d6212a5f18c8f9 Changman Lee     2013-01-29   62  		}
d6212a5f18c8f9 Changman Lee     2013-01-29   63 =20
55523519bc7227 Chao Yu          2017-02-25   64  		if (time_to_inject(sbi, =
FAULT_CHECKPOINT)) {
c45d6002ff7a32 Chao Yu          2019-11-01   65  			f2fs_show_injection_inf=
o(sbi, FAULT_CHECKPOINT);
0f34802858e74e Chao Yu          2016-09-26   66  			f2fs_stop_checkpoint(sb=
i, false);
55523519bc7227 Chao Yu          2017-02-25   67  		}
0f34802858e74e Chao Yu          2016-09-26   68 =20
274bd9ba394256 Chao Yu          2018-09-29   69  		if (!sb_start_write_tryl=
ock(sbi->sb)) {
274bd9ba394256 Chao Yu          2018-09-29   70  			stat_other_skip_bggc_co=
unt(sbi);
dc6febb6bcec7f Chao Yu          2017-07-22   71  			continue;
274bd9ba394256 Chao Yu          2018-09-29   72  		}
dc6febb6bcec7f Chao Yu          2017-07-22   73 =20
7bc0900347e069 Jaegeuk Kim      2012-11-02   74  		/*
7bc0900347e069 Jaegeuk Kim      2012-11-02   75  		 * [GC triggering condit=
ion]
7bc0900347e069 Jaegeuk Kim      2012-11-02   76  		 * 0. GC is not conducte=
d currently.
7bc0900347e069 Jaegeuk Kim      2012-11-02   77  		 * 1. There are enough d=
irty segments.
7bc0900347e069 Jaegeuk Kim      2012-11-02   78  		 * 2. IO subsystem is id=
le by checking the # of writeback pages.
7bc0900347e069 Jaegeuk Kim      2012-11-02   79  		 * 3. IO subsystem is id=
le by checking the # of requests in
7bc0900347e069 Jaegeuk Kim      2012-11-02   80  		 *    bdev's request lis=
t.
7bc0900347e069 Jaegeuk Kim      2012-11-02   81  		 *
e1c42045203071 arter97          2014-08-06   82  		 * Note) We have to avoi=
d triggering GCs frequently.
7bc0900347e069 Jaegeuk Kim      2012-11-02   83  		 * Because it is possibl=
e that some segments can be
7bc0900347e069 Jaegeuk Kim      2012-11-02   84  		 * invalidated soon afte=
r by user update or deletion.
7bc0900347e069 Jaegeuk Kim      2012-11-02   85  		 * So, I'd like to wait =
some time to collect dirty segments.
7bc0900347e069 Jaegeuk Kim      2012-11-02   86  		 */
0e5e81114de1c4 Daeho Jeong      2020-07-02   87  		if (sbi->gc_mode =3D=3D =
GC_URGENT_HIGH) {
d9872a698c393e Jaegeuk Kim      2017-08-06   88  			wait_ms =3D gc_th->urge=
nt_sleep_time;
fb24fea75ca5ce Chao Yu          2020-01-14   89  			down_write(&sbi->gc_loc=
k);
d9872a698c393e Jaegeuk Kim      2017-08-06   90  			goto do_gc;
d9872a698c393e Jaegeuk Kim      2017-08-06   91  		}
d9872a698c393e Jaegeuk Kim      2017-08-06   92 =20
fb24fea75ca5ce Chao Yu          2020-01-14   93  		if (!down_write_trylock(=
&sbi->gc_lock)) {
274bd9ba394256 Chao Yu          2018-09-29   94  			stat_other_skip_bggc_co=
unt(sbi);
69babac019337b Jaegeuk Kim      2018-02-26   95  			goto next;
274bd9ba394256 Chao Yu          2018-09-29   96  		}
69babac019337b Jaegeuk Kim      2018-02-26   97 =20
a7d10cf3e4e3e3 Sahitya Tummala  2018-09-19   98  		if (!is_idle(sbi, GC_TIM=
E)) {
88dd8934194f6d Chao Yu          2015-01-26   99  			increase_sleep_time(gc_=
th, &wait_ms);
fb24fea75ca5ce Chao Yu          2020-01-14  100  			up_write(&sbi->gc_lock)=
;
274bd9ba394256 Chao Yu          2018-09-29  101  			stat_io_skip_bggc_count=
(sbi);
dc6febb6bcec7f Chao Yu          2017-07-22  102  			goto next;
7bc0900347e069 Jaegeuk Kim      2012-11-02  103  		}
7bc0900347e069 Jaegeuk Kim      2012-11-02  104 =20
7bc0900347e069 Jaegeuk Kim      2012-11-02  105  		if (has_enough_invalid_b=
locks(sbi))
88dd8934194f6d Chao Yu          2015-01-26  106  			decrease_sleep_time(gc_=
th, &wait_ms);
7bc0900347e069 Jaegeuk Kim      2012-11-02  107  		else
88dd8934194f6d Chao Yu          2015-01-26  108  			increase_sleep_time(gc_=
th, &wait_ms);
d9872a698c393e Jaegeuk Kim      2017-08-06  109  do_gc:
fc7100ea2a52fc Hridya Valsaraju 2020-01-22  110  		stat_inc_bggc_count(sbi-=
>stat_info);
7bc0900347e069 Jaegeuk Kim      2012-11-02  111 =20
bbbc34fd666254 Chao Yu          2020-02-14  112  		sync_mode =3D F2FS_OPTIO=
N(sbi).bggc_mode =3D=3D BGGC_MODE_SYNC;
bbbc34fd666254 Chao Yu          2020-02-14  113 =20
437275272f9e63 Jaegeuk Kim      2013-02-04  114  		/* if return value is no=
t zero, no victim was selected */
bbbc34fd666254 Chao Yu          2020-02-14  115  		if (f2fs_gc(sbi, sync_mo=
de, true, NULL_SEGNO))
b59d0bae6ca30c Namjae Jeon      2013-08-04  116  			wait_ms =3D gc_th->no_g=
c_sleep_time;
81eb8d6e2869b1 Jaegeuk Kim      2013-10-24  117 =20
84e4214f0868ae Jaegeuk Kim      2015-10-13  118  		trace_f2fs_background_gc=
(sbi->sb, wait_ms,
84e4214f0868ae Jaegeuk Kim      2015-10-13  119  				prefree_segments(sbi),=
 free_segments(sbi));
84e4214f0868ae Jaegeuk Kim      2015-10-13  120 =20
4660f9c0fe4843 Jaegeuk Kim      2013-10-24  121  		/* balancing f2fs's meta=
data periodically */
7bcd0cfa735d72 Chao Yu          2020-03-19  122  		f2fs_balance_fs_bg(sbi, =
true);
dc6febb6bcec7f Chao Yu          2017-07-22  123  next:
dc6febb6bcec7f Chao Yu          2017-07-22  124  		sb_end_write(sbi->sb);
81eb8d6e2869b1 Jaegeuk Kim      2013-10-24  125 =20
7bc0900347e069 Jaegeuk Kim      2012-11-02  126  	} while (!kthread_should_=
stop());
7bc0900347e069 Jaegeuk Kim      2012-11-02  127  	return 0;
7bc0900347e069 Jaegeuk Kim      2012-11-02  128  }
7bc0900347e069 Jaegeuk Kim      2012-11-02  129 =20

:::::: The code at line 29 was first introduced by commit
:::::: 7bc0900347e069a1676d28ad6f98cafaf8cfd6e9 f2fs: add garbage collectio=
n functions

:::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
:::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202102030453.idntCABU-lkp%40intel.com.

--6TrnltStXW4iwmi0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKSqGWAAAy5jb25maWcAlDxrc9u2st/7KzjpzJ2embaxHraTe8cfQBKUUJEEA0Cy7C8c
xaYT3dqSjyS3zfn1dxd8ASSo5Hamsbm7WLwW+8LCP//0s0feTvuXzWn7sHl+/uZ9KXbFYXMq
Hr2n7XPxP17IvZQrj4ZM/Q7E8Xb39s/7l+3r0bv8fXTx+8Vvh4eRtygOu+LZC/a7p+2XN2i+
3e9++vmngKcRm+VBkK+okIynuaJrdfPu4Xmz++L9VRyOQOeNJr8DH++XL9vTf79/D/++bA+H
/eH98/NfL/nrYf+/xcPJG19fPlxtnq4fr59GxePVZHMxeby4/DydfphOR5NiOr0eTSbjq4//
elf3Omu7vbmogXHYhwEdk3kQk3R2880gBGAchy1IUzTNR5ML+M/gMScyJzLJZ1xxo5GNyPlS
ZUvlxLM0Zik1UDyVSiwDxYVsoUx8ym+5WLQQf8niULGE5or4Mc0lF9gBrP/P3kzv5rN3LE5v
r+2OsJSpnKarnAiYKkuYupmMgbzpOckYcFJUKm979Hb7E3Jo1oYHJK7X4d27tp2JyMlScUdj
Pdpcklhh0wo4JyuaL6hIaZzP7lnWTs7E+IAZu1HxfULcmPX9UAs+hJi6EfdSGdJgj7ZZAnOo
5uy7BDjgc/j1/fnW/Dx6eg6NE3HsTEgjsoyVFg5jb2rwnEuVkoTevPtlt98V7UGTt8TYMHkn
VywLegD8GajYXKtbooJ5/mlJl9QxnEBwKfOEJlzc5UQpEsxbpktJY+bXUg5nwju+fT5+O56K
l1bKZzSlggX6yGSC+8bZMlFyzm/dGBpFNFAMRIBEUZ4QuXDTsfQPpIPT4EQHc1OiERLyhLDU
hkmWuIjyOaOCiGB+N9B3xkxxTUM4t1VLQNscIy4CGuZqLigJmanuTI4h9ZezSOqdKnaP3v6p
s8CtQuTBQvIlMC33MuQOllozrXD3SRz30ZoJXdFUSQcy4TJfZiFRtN5rtX0Bu+HabsWCRc5T
CvtpKNj5fZ4BLx6ywJS9lCOGwWo5RE8jDRZsNs8FlXoqwlqY3mjaHjJBaZIpYJa6+qjRKx4v
U0XEnTm6Cmk205MPsuV7tTn+6Z2gX28DYzieNqejt3l42L/tTtvdl85yQIOcBAGHLqz9xn3W
G+NCaqUngzmIClnNbDHyZYhnKaBwNqGtMkfdxeWriWvi0hBY+GgUTMgk2q/QXN8fmHAjjTBV
JnlMqoOoF0wES086RAXWNwecOXr4zOkaZMVl8mRJbDbvgEA5SM2jkl0HqgdahtQFV4IEHQQy
lgoOENrmxFQ0iEkpbJWks8CPmVTm+tnzbyfLFuUvjqmyxRy0A8r5S2vw0W5HoClZpG5G1yYc
lz0haxM/bmWcpWoBxj6iXR6T7lEv5U1rg3rz5MPX4vHtuTh4T8Xm9HYojhpcTc2BNTyYmeDL
TLrONpgwmcECG+pmqWSeSlMY0GCl0mlEwfSIIVzGwg6qHs+cBouMw3KgIgGPjpq9VWcNHCY9
bCdrUKCRhLMCqiEAdegy4ILGxLASfrwA+pW258LwXPQ3SYBbqbsNWy/CnkMDoJ4z06Iqv8uk
HvBcNLHLIdQIw+WC78rTahUL5yrvC2y720HOM1Bn7J6ijUOFDz8SkgZOx6JDLeGXjvIDDzWE
QwB9wgkF60Nyil5ySmwj37g01jdokYBmSoc7eJLNmQwqmAQ0IEPRMrjNqEKfI+/ZzlIWeuCo
NP+GduWSrVurZZ3K7neeJoZeBg+g/aBxBCshDMY+kbB2S6vzJcR2nc/c9E1oxq05sFlK4siQ
Sz1OE6C9AhMg5+AOtp+EGS484/lSWGaMhCsGw6yWyVgAYOITIZi52AskuUtkH5Jba9xA9RLg
iUP/0BLWLKr7dOwzbrE2d+a8hKSfLClJfBqGzjOuxRPlO+/6TBoI7PNVAl3zoNaiVWyeFYen
/eFls3soPPpXsQMjSkCRBmhGwYVpbaOTufYJXV006vgHu6kZrpKyj1y7H5Z8ynjplx2asXCS
EZX7Ou5tdWJMfJexBgZdMth0MaO1r+FsBEQRGHY0obmAk8QTc0wmdk5ECGbL0lFyvowi8L0z
At3o1SGg5gdGp61mRoRixD7WiialvoEomkUs6Cgc8K4iFltSrlWMtiyWY2oH/o3ks8w8B/Bl
uCtaWpLNw9ftroB2z8WDncYxyatQ0lwAjSYxmLLkzqmlibh2w9V8fDmEuf7oxPjmYNwUQTK9
Xq+HcFeTAZxmHHCf2FLS4iEOBTEKwBvDvRmm+YPcuy2hxsIe0hTdHu4efkzAKf803D7mPJ1J
nk7cWQaLZkyj7xNduVMGmiYDoYefzJ100CsGCkG5ExoVh+DcSFdiOhrYD0FA3hdul2jGwFEb
u/lWSLfIVcgPZ5CTi3PIgT6Zf6doHog5s2O+HgURCY2/w4Of5/FdAnkLvZwjiJlSMZVLcZYL
KGku3VtbkfhsNsgkZfnAIPTGq/Xk49BBLPHTQTxbCK7YIhf+5cB+BGTFlknOA0XBGRs6ammc
5OtYgJcJav0MRdan0CozLr5sHr55mBX7bTln7/FnxNS/PH+/OTyWMUt9qumMBHclH1hZEk7c
h98kg3g65v1UAPTwHnpzdAKYnCVohqIQTCaHcMOtpmzClI2uPk6nbk1sk65ZHGUzt0zYlP3B
G049zq7Sg06KFROqIgN7HMyXNlVl6foWqxtazm8pm82NnFCTXgLd4guIpkChW6FTGZDxBOYS
QagEVh0NrOkv6pBEECNxGNAVQKaGYx1IEdiQ0rhgjOvIiGGSL5fLLONCYdYLM5amC5YQdMAw
ogv4nAo4lzYy5WkfIe/Szhig37YXcGDRUcG8izFucE58dEPTkJHUtPGIKbVGhXT5NyZ/i42L
wOLW0qS8iqJAnqyo4ZZk6OrrCL6zrvEINhQ2rkwx5Ndn0TfXTUbN5evorAa0moxzMequQI0Y
UDoGxdVZiqspMP8uxflekOLqe7twj9JqbwBeOnUneQY9Po++GkbrSZ5Hn2Gup9dJCDpOejsW
W4oRZvauCAQBoJ8kAclf3YycqzUZ+3DuGwfXRXI1dZFgj9/hgpEDmOUqX9647Wagdvr2WrSC
qNkYAQAqVkxY5NOFFeO0iNHVwneKTEtyNV244iZ9PaCTeffgWnBQNeJm1KxRZbT0GepqNJx4
B4Ew3MlM0Igq8+4GMbUGDpdJlqvY7zCMsnoh7WagyAC37APLk91nlKhcJlkP2E++ycQZFJqb
3hAOCIVO4TjuVuqBRBmJol7EFDizlCUq6a1zYE8dE78SlaVMIJjUNFwAbSB4FepZCgP3o6E8
o1aq5q7cWX2oxvoKYcUc561EUdaXBTRGnSkRycJKI1/0ESD78uZDOzy8iUloMjCwZicqsoF9
Oo9t1mdol43FdeMzOTL0obbqUUwUdAlmzra081t3usWSWfgAb+BMdyhDg7MxGqYCl0nejK2F
1gOQoJjwZjBw5GM0VdkWfyQkuzFqBeb3+dgdOgJm6o6wADO6cMdXiBqIy7Cny8FW40u3sS37
unCIjMaMpwMrRwTqb+sa8P4G6W0fcS7wnu3GqgBYU7c/Gwgi51rlDcfRHMxplIHZqwbiTiHm
PDJuL+Ystw081lgoluah6upDUBUky8DbgqGXWLt7TPWaBMMDBd/3BymDJMTCFvCkefJjlEAE
7p8C3sOq0eCJk4853lk5EpLanNZt0fMOqcO4YH5jUd679XDZrKyrieGUxt3Tg5c2eRalsCOR
pE3djf929Pav6KMcvV+ygP3qZUESMPKrR8H5+NXT/6jgX0baNWB5KBhWz/SvEJNk2dEoCRzD
XKSlioShpKAmz+DJ+mZ06SaoU6vf4WORleyapf7h2RpJy7C6AWjcn2z/d3HwXja7zZfipdid
ao7GEhk6O0uaFHHr4CSY88dbn7BEum6fE4i/rPN6+wmiu1sqsNqDBQxz0o4scTPXwWE24URJ
kTQUgGhw7PG5MGN1fWndKUKwfN2ygQnpsS/TAdvDy9+bQ+GFh+1fZT6/6WTG+QzkN2IiQd/T
sSo0YjklIr4L2qtzVXw5bLynmu+j5mtewA4Q1OjeiOzAfgmx930vhWoFbCB0JM0x/ZevQslv
OjVtmwME/ieIBN4OxW+PxSv06xQbOJZ5ZPlCvMyju1ZC36/UeOPap4nGGyZ/oOsaE5+6rnn0
2UFFXati366SWgiqugG+7ppxQfHIAVJ1UAtng0FO1n2ehuhBaSU353zRQWIGAb4Vmy350lGK
g14ISmpVPdRRR+jdQfigWHRX3yr3CbAL3Ixlqt31Lo8yYgI9mndnjtWRCQ+rysLuRAWdgR4G
FaWVOFae6AKUrDv96pattyLtRnYGdEtAF2AlQEYEXnpVFY8OFpIGqB/PoDCPYSWQ3E30FHDv
KZZ9duyTCW/DFwsDn4KnLsWn2eMGg2HVQrDo1/zA9oGHMO9WTH6/WAg2p5ptRgO8tzJMFw+X
MZX6MKB3IexwuGJP17j1aVkIhzNyiI9ure/l+hf2fZvXIdAdOEXXbvWhLwF1fZLiWchv07JB
TO64VccbQ8ic+zByULGh0XtlN0vhxlV0jbwquBX5vDM4XDUIHCydYJbbLsxbVFfAVkpVKcBV
xhGc+EaVBnz12+fNsXj0/izdpdfD/mn7bBWSIZF531ffMJ5pa/WOhdhZvJyx1HlD+R01XrMS
CgJsEF5Tz+k7eIl30UbwqOUNnYtc14ConihaTm9JXWY+0Id0O6cl1TLtUrT4vm4aVFr1CEXQ
lEqbKc52Ai5YOVTHFBDXKTnQWxzu9ffT/vClOHmnvXfcftl5h+Lfb9sDbN3LHmuojt7f29NX
7/hw2L6eju+R5Dcs/ze9CKMfiBbdeUubZjwQGHaoLl35S5tm8mE6MGVAXo5cxUkGDSiP+c27
49cNsHnX44JnT4DFODdUvM+/Ba9EStB9bQlZzhIdLLrrxFI4vGCU7hKfx24SJVhS0y2wqmRw
HrKsOYzBbpupAL8ql2s+FxCWSgZK9tOSSmVj8ObAlzMnsCym7sDxymMmmHLWlFWoXI0u2kLB
Go35Q7uCCxB1zKaVkasyAolu/c6oAZAnn7q8ynqUyLVgehHw9iYjcbdZ+cQip2kg7rKu71lG
IZvDaYuax1MQOFputK7X0GVddZTh2i4ZctmStnNBF9sEtwFFp0dzHskn7SubdU4I1oFQWfnO
2zpIw+WFdoyXCQqsY6velbRS3aIXd75zL2q8H32C7W0Lwa3+WlWXGkn2ZVots8zA8UWl2TPn
aNZ03X+oiXQdeUsyjOk2Frfupi1crxL9p3h4O20+Pxf6UZOnK5ROxnr5LI0ShR5Gp68WgW6J
Mow3gOyaOPwq89m1w4Ct6lpaUxBLnjIQLBu4Gi0pQN8Ejq3BjrAfU4iGZljW9BQv+8M3I2Ts
x0hVgrKdDQLAFwy1+6FzfrbbEhGp8pmpi6qXGmYJdu2iZjH4PpnS/orOQE7buYB3FDRHojlp
M3TrUbcypzObsJnodFLGLnldl2ZEmuC4QRhmbcFCunLI9b5pBy9heM5DcTO9+HjVenmUpJ2L
jggcbmVHd4H5GAk++qmKBuhUYYiFQJ3Im6bU+r7qoeGgAY3xAs+/KaOnuHeu2HawSfkW6vus
P0zdl5FnGLs9gHMN5u7k6WCTgddMQ/Q3757/s39nU91nnMctQ38Z9pejQzOJeOx2Fp3ksiyY
HBynRX7z7j+f3x7fdVnWzJwZE82gFbpqDvWXHm1rpuvh2LMsYU26Ew5B5j59DSmqRJOHzg/o
w1sHmO6LSCr0dQ20dvtFoFdyH4z0PCFi4RhAExJmWKCEISexQpNhhWfU9FBXbr2MkrGE9w/W
JHPD4q/tg5lZM4mzgFmqK2DuOQeBq3ZIB0Hbh4q3x7t6eVmGd3MaZ2bywALDiqu59WBvpZIs
sqp3Swg4k8vUznqnIcHI1UisipJ3nS0sH2zWS9Ek9Z73m0edDqy14G3epOC7IC0SIb7+MMzn
GkSk6cQYfdtKP7RoZt4WGLkIwB7FMUbf7pqkponb2e9mLKvJ1UOqsgAr0/LWkqgDAzduCIqe
a5np70HpSlglPxqKr3CrBmAUE74ydkvjiC7yqSjKh47NUW9KnfAh2FLxzjtIQWeWbS+/czYO
WhYVTJoJtQaWsB5hkpj+as1RfOoF/325b+5OHvWRs9xvXwSJVH4+Y9LH27mBeG2tqNupkhCs
oXpK0BlwN8aLtC7OuOKoB9WsbSqldo7r9u5ntcrwR7hVAMAjdJbVwDNrwKIlx8DPZFAm6t2o
Bff/sADowYC4WzDrPR/HjBycoxUc0NIBNEcHsiZi4i7nhmCme0HZCdFWPXWXrhLqybfX1/3h
1OoOhJYPTF4skC6o0MrtmwWPiA8iLTvUUWDuhQaV5T7O/bRGUnrJ2+ODS+5IeDm+XOdhxl2b
BIc7udNLanQOg/s4GcvpxcjRAuxazOVSYGmtWDHrIRrJQvnxw8UYr8Wa2TEZjz9eXEy6kLER
eEuago8jcwWYy0sHwp+Prq8vzEHWGN3nx4u1yxomwdXkctxyC+Xo6sPY5IJSCHPIaZBNzj3R
koK4y4DX+J5hncswGrg1z1YZGaoQDcZdESzjPQpqLvGOXUEr4TlR42k7pxZ4aUp/BS5LcV3b
WOITsr76cH3ZY/dxEqyNKpAGul5P+2AWgm/9cZ5RuTbXtsJSOrq4mDqluDPR6t7un83RY7vj
6fD2oh/gHL9uMNV3Omx2R6TznrFe9hHkffuKv9qXev/v1n2RipmcoL1wS4JJBIamt3vk+VQc
Np6uMG5vF/d/79AsVwlL75cqgwljHetr9Pa84j0LQd8m62dD2e5UPHsJiNN/eYfiWf+dk1ZM
2gtKng1agnMsmn0N5txMm1i6xXIfWWhocPx4qfJQz8XmiEXN4HfuH/RW6L+q8n77WOD/vx+O
OqnrfS2eX99vd097b7/zgEF5D2u4kAAD4S6vw7oKWiMlsV9uGO1moaXWNCQnAw89WrS98/0u
gcLQ9dgOHz7njHf+QARi8EF5J9FX7iRM9eHr9hUA9fK///z25Wn7T3fydTVFL0uZgfLCO4J6
zTF1Wu1SX3fovGrCzVd7hOFslfV2LTBft+s2of1CVsOGJqVHUHWtK1e8X+Cg/fmrd9q8Fr96
QfgbHHejaKSeibT2KZiLEuo2zg3aFds1yGBuGBEcc2O3OvAA/0wNscvXEB7z2ay8KbTnLvFS
X7us7umrWtEcO4sPCqVabnsAEv9+Tn8bNDxmPvzojwFQ+PdM8FbbVfapaUTWsG0fnXdG2Jnx
ra4RskRYY/RrAf1qd6i3ZSTnQdiZWQk05dSeBuDzIExlQ+FWuDVpeBtghd+PEftO8SglWmez
7KF209Ql4bwHyEVIgj50DrHEbR9MEwctiZektyedY9s4VIoYA8WHlbjthsNVPrX0Od5OC2Fe
uSOqvmwzGWQ6miutxX53OuyfMRdeXqDh0x8ZRd4OdPVfhbfFN69PmwejnluzIPOAOXdVIwK6
citYjf3ExcC7QOSMnTvSpb27GDziiSta8evsZkte1lb3Cqq6BJV2kN+nLONVCAyZVGL4FWU9
ztCVq60q+e0UvArAl+rciSEMa3lM4fw/xq6luXFcV/+VrG6dWZwzeli2vJiFLMm2OnpFD1vp
jSuT9nSnJmmnknTVzL+/AElJJAVaWfTDwCeK4hMAARBpJVuqZUm2KEq0IJBaw6hVECLF668P
47aR5Eq6L/YThMpIlu8ZDRMMxVnKlbVx+WA8jJzX1CmFz8/3b1GT10rNgqZKOsFh1W3fz2/P
mEhlGJyKtiMeK/BM8sobvxT3wJ7WND5oT0342tiQmtBkZuNP3sb3LAJhbMueAhqaovpJ9NLz
fNqZWAPRUcYjqLnd0NbeAXLX2JbBO1nBrChXZAnh2EtJfRsYEXODi5Jq6XsEO72FChJNsyuT
goAjmY2qmHqoCYPlwl6SbQo8f2HPtCkfddcxaea7DpUfSEG4LlF70LlWrremOLJVYKSWle3Y
5Ofk8dEUHTlgihJEH1hnaKPRAKuDrG5Je/kIaYpjcAzuiTrCo7wHiffD7DXlc+t7JXNOTdGG
e6Bcq0DXmF4SBqVtCsEeQJuQWorHdm7waDpRJqO0nlxbTGrdi76nnYI8AEmSeHZEuIr0O9Ij
6rxFYkumy4EaFptKOrwb6Lutc0vAd5WaLUdhnEjhcoS0CUzArGiIclm0aRBSrBp0mmOSo6l9
ymyyKCRqn3BBhngP93xyXIdgHjFJSkG9BuN701SNDR0riK4xhcFAq6I2dJKUEYTnv7KdfPzQ
YxLBD4LzdR/n+zagh0TtWTZllBsQuLH1Z+s6r6y7MoiMho0Bt62TYEkF2PHhzo7XJJmA/0Zr
YBKk0OhhkS2mOyub3nVYxTG9XImJRrsMVFmy0CysjMTt/EMZjFaT2jtnZRutgK3lSgqxoLBP
KTSkEwnLj463lfhaQaPPmTnTkJlBMOmVUjBpuZozPW8il+wf3r4x61Pye3Gjq6TsG/9VfuLf
LHbkRSWDFlrWjg7G6HENKGxXCNY4QEJz+OSBKhRoyb7GGCW+ktLgGJsLAPJrWu2DdkEWq3Ew
PeWU1yAxya8cOCltpqTacTSnEeIzl0h/PLw9PIKQKlnl+ykj+6QdZDfcAoZYys6f85r7odQy
sgdI3ixHiTYaABuJgf44EX0U3uZJt/ZPZXMvvUakbzARubPuH463lJSPCCYuO6DTXUy5YeT8
9vTwLEIstEEIa4YUuqEMA2D5WsgcP4YBNZUx3nm5zNxEmEFFGbe7aIPhBIbRBAiQyFzbstTR
OdA7deQDvQ2qJk2aePJAz8BAQ/x/LcVoc4Sq8UnEadf23ScSj+mfVSfb5EBJJT0/DPOu1KcW
Y9jLpNaSC6kQkWFoUlFBn9ZV8MUC8KUJdvj5c/zPljOO5PsykI8DVTh7pd4lEg/7kzm8jg5c
BGgTtBEm1fjDtj3HsibNl2y7Zbc0pNfhEHEoVNasRHMzw/I3rS8siTB6eD310bOt01Nakk07
sqgFQQYl+TaNO71mOhR+xR3zHEh2SQjz2pAhR4ypUs8901u31KmvVTrnxtdIUYzz0z5K1Wy3
bZriokkZUniy0aJtZIFShEKCzjnS9odw9FvQ68/8iFvKvMktg1SbJqAsiJTFdNsAADPB4SEp
l4i3QUinPILFmoeGkFwoQosal1m3dEQ5BrjqbhqYG4HR40PNFvC+uUL4U2ZS+yEBs8pzmWt4
naBT/SCeQDeL6QPM+B1WHmU86CEgzJ3QizOdVgNZMGqTPIZNguTm7aFoGFN5NSuPbDjkHuCb
8SyjIwdWX/PGdb+W8omrzlHdTSZcrUVgbUjvTYdzU5lBEvPYAIGh3daNFDM8tUY5IWHHk6uI
DcZUXmhTxXMSGTzgh5L+kclSBx4UDRnIWUtr3sgTDk6GdPqIALG8rXv7HtY+eP5+eXv6+PHy
rnwArNK7AtOJvOjEMtxSxEBx/VYLHl42CHfoIjO229iULPfwzZ/oQMMXsZv/vFzeP57/vTm/
/Hn+9u387eZ3gfovCCZ4qPebWu8Qvk8zZSE5ijGEmDmpqbqNxgRBUPaZ0riUHR4hcRYfKAEa
eaIuCp6J1H0G/S8sGs/wdJLt9Ie/fF2sfGpyI7Ng1if186BzjDWvbl1KNGFDJcmaONQf4Nvt
1I3iH5hIP2HzAczvMMigBx++Pbyy2TUx0kIxTVDUJ1hq+6FYfPwA6PiwNARklwPjIFIq3rQb
tQWIXmUk4TahfyPnoasVulwZmoc73Kki5kjHSUHRe+dy6XtGRWaog0sp5opTHa7xWt5TJGVB
3Wh7LlLj6VEEqu7Zwzt20Hg0NTWos4NUJrBJwhPSOn7IGuc75SISpMGyscELUpQHQlg/81DZ
4Pg39JOLlngAAoL1CYUo2tiACHW6IwWmDfy7TfSWQJnM6GwC/ALvIMipLQq5VRHeigsalKdA
yPeTemkZMj0iYqI/qB3UJYYeP3WYxF39OD4FVdrX+/wuK0+7u7qcfHSQEVoidv+v54+n1+fz
P9DxlEaHFWunUx0fLd8uH5fHy7MYQtqAgT/8xEeijUdmGGym1L1J46XTWSpem7IDicfFvkzp
IiMu0JtKdm9no+w+DzI50lh1Rt3X6g9lw+bWnTq5eRxPcPs9i5Gfn9D3SW45LAJ3b6JLy1Ja
nOGHPonzpmSYPtFFWfcvmMoZJUsQyLJQ3LKE2GrJgsXMBSRHTJvhReI6p8vbZG8umxKqcXn8
W2fEP1kcUbm/T5MNu3Mhjxu8cugEJNZVoHJkLDYAw0nP5xtY52Fn+Mai2GC7YKW+/09e46cv
G+qe5GFTSX0rUk0P5NERkJNOUbC2lvS07CFZWDpubdHHVD0IYzn1zBs6pMm2tGTWI67lr+wx
hgyeFXTN+8P7zevTz8ePt2dqazRBBpMc9LYSuikILDwLPWfF5U7eeCdDseVjZPJIUt3p6yDv
CgSQ38ckHpNXC2OGypIxkE4HW6NOMt4wKjvoY+YjOY7t5eH1FWRGVq1vRLYTfHK16DrmiG6u
ON8BzXyxuZk+LToGpZI/ict/Df5j2bR1Q/7U6244HFldb/p9eqQPpRk3LXZJeKBHJm/djb+s
V/Tw5l0bZIEXOTCOi017BWbeB/sREhrOWBl/Kn1qHZVFp224J/W9K0NiUEAY9fzPK6xkyq7G
C+c+Aoo1m9NzOksX75kjdB/lPiMNW8kaOlKdbvImkOTXnnvl+xlgdWVEgfbme9c6simT0PH1
QSmJq1oT8dm2jaZNpzVSlXwt8itzKC39FamLiGrVS8/yl1pDMfLadiaT65j5rt3R42Ba2UGu
mfkIWCpsQ/Lzvt9ce20bv4L3tj2pbRa6ru9f67akLmpKnuCzogrsBTtdG02B04/RO2S3q+Kd
4eIBXisQd1tlkT9S56E8IxZGhigBfhK5j8ehdz4JZ1zDdBC7GcdkVJXBaRM6a88gAUi4rFlq
LiYk7LOvvbKOTWGcVGzpzPsCU8XMMTQrInr5xCCVbBbFX45p61I6Umd/zAz1bvZxlQXUEfz0
PreeoqnHAzkvjlpOnIElrqVjn8FTYEYECv1smHiJhUjHBgNgImqwuXx8+Hj88e3yHfSXM94S
dvn1cbO7wBbw86LO9qGcsorFa067YhqkNBQ4cUgb+6/YNkN5ROtxEXVsRH3Npx4d68mWuWvF
i+MRqvivSVKh5nTlaSHYEF0cHQkiRrjgkRX1NjRbLazTMSINKtmujEJkSoVBFweOrRLreoNX
FdXJRjtzqSknig1Gx0twiSxXjcG4j7ch7z9DiKhJQ7pbGbLLAryQMFdfOXAVmXojB/3z3RT1
8r9+/WR5q/vj7okVDbaxfnoN1URaEDb+euEZLthAANrpmUUlNJyBjKh9GpKeUYiAintrq1Ok
FEaPQASxsyPt28nK7krH6vSAHgWSobnd/A04aTzH4H/SA5aOXjVGpRwJBdP2LP0R2CFjVGjr
0450l2GVDW0Y9ZJFRiLqRxIy62oDlM7SoV1Nkb1PlguYG+hCR6/j6Lwf1ElI72lYRHJXLx3D
fRnAvo0zWm5Fpu+XmW9NGouTPVMzBZ298FarSXOAVLRaGhxiR4BP5n4a2GuXKNdfW/StLowP
e/6SMqT3zPW0qnG+dexNRo2E+GuH8nepT8gQicZKwP7SGqoAsroHw1Vya+0pwo1Zp6p2UFZ6
41nupGGqW99g72Dc3GuWqtuuxK2TxWrZTQ4rGSt1/NA8ZurMs2y1eoykrYeMfnvvw1CRXI6C
TedZFrng1U1WUqo34zHhSX+iQZuo63rdqalDzfVTAaalu16Y1gsoJc1a5RQUtBHb8ijxn+sv
cv4rTllpq4ak56hVRrpjr67UhelPk+c4w1vSd7VIRZs6XFKxCKp62KlwlPMK5BxT21m52vkb
a+bM9aajtLnLOuOcF+qk+gJBnNapZ/C1WJ6b9WKVOgt9gBwzz7bITHGCaVvTR/z12tQ9jOlr
rcFEN4p20mz4QwmGFHl8DhiMj+zhMFq7CzMf/SXSU2ZbJ21lG3XmayJJ/wWgTrZpoOUcHYhX
Yn1GzDbp4gjvOW6CHa3BjFiRGZh5i7SZwS1khKPTIs/E98kHYDPb+UvDTWMyCnfCGVQQee6a
XnJHUC9QzcCu2LQVkGOwLGogOjuj1CVB7rmeR68fGsxkwxhhRg1/hCR1unatufcBaumsbIOX
7gCDpWVpMJhJIFjmV3PtwEBzzY5rrUGmUkGfqBOs2nONkDahawpIUlHLFX3lwYjqpbNPwDz/
E4X5y8VcxRjK4N2nokwmHAXFhMDPwHxntv4goa/82cIA5a9naxaWNuzps7DSW9iz9Sp935tt
VgDNrltZebdaO7NtD1Lw7ApxxXamgry5FZAL3TMgtHEvDNqCgqKFbhnC5eY52Lb9GpvuIJFg
B1j9ZgczQ82ukgy1nkPdgf7OTrI/g2vrzelgymY0YqugLjdxVd3jufwYRoLR7ZpfBPVws/Ct
udHCVZJZUHaYHZy9ljAHS3eefq0LBYPCrOXcfgIo3zGIUhpqRdtRRxRIyp69NNxHqcCWjjs7
srjmMDsPe7XjU7DZdZ7B7E99gjffbL3qMCf44Un5DIY6/6EnRhpskg1lPKzCiZYLpCygAvXS
pFKcqCv098Ib4SvKVMi4B5HOaXgmqU77pPP2Ef39wKbNXcDQvQQZBb2PjfDT/qi9G4l5TBk2
BPPLISQeqQvSXarn7oNKShnXU4P8viDKqkJa4BnYlDYIjdn7FmltwI/mE4O/uOA3Bm/aSnir
G7mGcrM4SoJTGIfUrUwaikDwTI9vD68/nh7fKa+sqJr68uHdvXI2MqG0yWSekfHt4eV88+ev
v/5CVz89UGq76dNujx0GtLzAmzpk0qhCD4kf4XMi5akQ/uB1nFUsB6YKRliU9/BUMGGwy2A3
aaI+gndtkWUhgywLGXRZW5jRyS4n7isF5qZo9sRlpQok2ZmvMwW+4Y7S/isK2f1riwELW9hs
QeWVLWBAxwM84c1dK4wmSdlHiYs1pt36o/eOnRwYwNNDeLraWnak2a+RqFrrsHM22WnXNSB6
WQpd6OEKLYvxbpEiU1ZPLLWGV+km2T6lJjU6eZbHh8e/n5++//i4+b+bNIyMCTSAdwrToK7F
8iq/HHnpYmtZzsJpLMNdyojJasd3d1uDAsogzcH1rDv6fAMBSZqsHYcyA/Zc17H0yjVR4Syo
4BJkHnY7Z+E6wUJ/ivIMkthBVrvL9XZnSY4T4iuhe2+3cqZApO873/VWKq1oMtdxPGmG4Vqb
4jXJxtYeEbdN5HiUCXWETM1/I49t0ceUzJ8/ooQtjSwhiFAdosz8GkZNeTgyKTWB+gZQXagm
mtqyR55qsJdKO3iOtUpLukKbaGlblKlR+qAq7MI8p5/XWnPMW3p9mvVpjN4vzyyn3+vzw79i
lZlOxcMumAYc8gSY18nwb9pmef2Hb9H8qjhiPJW0rOCt25t2u2U5exmI/LyZqg9DvpA99/EX
RvG1HazJuSK0SCz4WoPqLoHCtG0m15z0OW71HX8soS7afOq/vU8iSjpAsg5lMRM0nMUMJfRo
mDw2RGhLxL6ZULssMOXUuD+ia7/kpEkh1Oy/A8KwhyI/ni1BR0xr0c6WoSNEGUOzIcZ852Ym
JyIrj3iV2CmmiDzLsGLpz0J+TwtRbB2BtCqiUZUH9JTA3IcgC3+vo9/xoZv95f3japAHljK5
dgCJdbQPyRN25CnHO1jCUf8Nu1OzzfRCgb5J23ibxPRRIYfE3X1e1JMS94m7WvvhwZGFEMG7
dfVXcZ8TWgIHdgvflyyrIiUPgQEQ3sH3K+dSQNzXdwZ41igqSBZnLMkHgc7jI8/sJcX8RzXf
TpU1ZqBiEud6T68xI4ilQTYHEDPkpsJdIMeL7zBvwT7Id/F01cBNgvCYZiUEuWs53pq2lXDE
0bFsg5DF6oCx7Ya7e0eAwV7Iv7eyLHth2/SZGIPEKQaVu/SNvgzBJA9VEhvI1PHfyJXlJkFc
LhyqpOWalgSRzS2nWlHcyXdalqBPjlBkjHqUzquAZ9iLac2AbDCdCb5nkVkLeq7HUhNkmRwl
PPAcmyJOGg2IS6LRSt8zmBF7Pi3Qjc3kdXTzeZ35BGpALUk3ZMbuD2iboGlr7WuiILSdRW2x
pGtqqYPJyVTuJnJ8i2iJxvUMRxp8/EyPKWQ2JmfzrJVWzyYNvbUtq3vDsPb+mVQhqV17m7r2
mraTyBhHHS/aMsIyEP/5/PTz7//Yv93AFnpT7TY3Qhb9hS7KN/Xr+RETGKCEMcT/wo9Tswd1
N/ttshBtMNMd7cPG+FfccHn7pR10jZnf1oZTYl46xjreN/Q5NW9q5iIipgnZNs3b0/fv1Brb
wCq9o82H/NbSZAOKpJzbJrDte1jcA8wUJgnZ3Lf99fzw969XjGFjMvD76/n8+EON9ouD21Y7
MumdyemnBwtcE554ZNFo/8Tb4XFHIqofoW/fQU1mP9L0gDiJc1C8JIExtWHhtbF6SCrSBl8B
2O3yWM6Yj1z1pgWRnySrd/gKsv4iBlueLCB/YEwsMGl3Iow8jekC0baZRSHL/qykw0OvjASo
hpAD4dorQj+jki6dadB7LOaU7TLJlXZkSK1xZF+g+W0LquJvuz3p7xt6JRwiIvsWZUlcm07k
tx7bsVEuHhw7j+XLljoatDvpHrKxElisfjnz2CPsuRNegiKMmNdg+zgo6TwR2vuHj2q7KKnL
NJCm4D5aiHEhdW1Qh0mClhS5/faNvbw1HIOVAQxRIZiBEFnXJl8YjDFFC80mPZmiB2QIZbKU
+EzAHL9FcOQR2Rp2TnZzmriQnniHnu9ZZHnJ4ryVm0SQMc9fQdZVAHia3Be9tIx6RYYnAOIu
SeLI5RCV1JQ5MF/wSf24hzhmkCYbgbHDqgC5WuiN0wshxO0hj2+X98tfHzf7f1/Pb/893Hz/
dQYVTVbQh8sArkPH1++qeJrppJ8nTbAzXbDFrk/vrYh9G5HIXZFG20TVQfrRzK7CSqVUyvAD
gzf1S0h7IMZVlIF6JSLukaKQcfgO1GsnehIqC7r1wqdttxKsTjx3QYuYGsr7DMqghaigxWdA
htg9CRRGYbyyaGuTBls7sw0R1qBJW6eQ9pWQgAfD2ZwE4c57xkhaCbmBqUIIRMnP7+efT483
9SV8p5RPEUB9CnftNdVehzkeHXmm4wxtr8MM3hsyrDP6G6go35Cfskc1YYvtRdvnqMaSNphj
fyfqpJlDFlxfX369UXElLJMAF4kUinYbGFSrxuNwXD52iXoy3Nc+MTlZ9giQzwvDzRM9xMTP
ElhqMQj9VCbNcrEh24j8UqkMkJU3BZn/BsZq29v4ekGkv4iMMW/Kh+9nfotqPV2356Dqe8Tt
nv17qvPL5eP8+nZ5nPYOXurWYNIa1d1goLKY+asNeijbU4VQssWId/M6vb68fyeqU4KYPO7F
7Ge/30v5oNSnNdv2MVGTv3CFBer3n5qngyp+3oSY6An1jsenv4ar4IY0HMHL8+U7nwpUZgSK
zZ9DReab8bEpl59Gvl0evj1eXkzPkXyeS7Mrf9++nc/vjw8wFu4ub8mdqZA5KMM+/S/rTAVM
eIx59+vhGapmrDvJHyzQLDtOP0q7J9Dl/9EKUjWTQ9jKMcnUE4OK+an+HgzoTFLZVvHdoCTw
n0o0Zy/gcxbGb/YX+xV5FGdBLt2hIoPKuEJhKMjlNNgKAKNoa8xPIyuAEmDwNafUR7kg0JCT
Q6x/BBFFOn7xid25SRQcd03IYl36hFygrhsvSuBgjCM6fdE8ZwRrWwcgSdH7k4AYLJGCK4V7
TRiu63kUfRLHJVhlk3u2wedTQKrGX68MWZsFpM48jwzrEHw819HTtfGrqqktQkkxh4oLO4KU
nJ0G2incKIr9yNBUaAOEK8VzQJGEWI9skIC322TL4GrFhamJX7u6ldMIJTwZJ/x3W5PPqF/b
v77GKTRAHBlSH0dvAZXcw7WGGis3Gfd8DX98PD+f3y4vZzUPVQDKub10LOUuh564JhooiLrU
XUijUhDUaKKeqEV1MvJqEpA64WsRn4K7yQJbthrAb0d1EAHKwiBRbrIQZsb/U/Z0TWrjyr7f
X0Hl6d6q3RP8CTzkQdgGnLGxYxuGmRdqMkMSagPMHZg6m/Prb7dkGUlukb1VWzuhuy3L+mh1
t/qDGwVpZ7WYuZZtHDObczcsuioeUu52AjPRDGhV7AzNecNas9ilrcc2ZBLTu00dq3U58Kce
oCVARt75u030+c6xXS7lkedaZOo8ZyM/COxBty3eElMM2DDU7hzZWPPqAMAkCBwzvE1ATYBy
E5JvIpha7c4AQKEbUGG0dcTwPuv6dN3cgVqsJ3UH0JSZzFIKNfp2EVvo+AQCEiboetl/318w
K9fpCMeFuaHg9JzzWPWsYfriHw0nTkXrh4B0TKcHBTWh2DEg3DBUN93InRgbGSC2Rydjg9S3
BL8AKhyG2xRTBWONWpZllj2kUdIrBEhGYWi8eRSOt/QOQ6RlWyJqQmVa4QhPG5fxeGS8cmJx
AUeUJSIHUZb7HRZP/JCOyABmyk3etgDaKEIt2LHUVhHR9nDcGhWZkuU6yYoSzXVNLzHqVbtN
x75HbZDFZuRoKyVdMnezsXZSakV0JzF7jD/S2uMgi4GJ4yYWRyCOIwNEQU4auoqYhABHS5Ev
INqyRpDrU6sEMV7oaU9PQkflQVHpuUM9VhhAvkvfByNuQpZCWbLVSNxbtgB+p7BGqdK8Gu6C
VbapFrx+ha8tcABr3LHmVbzQRdZ6p9rwp4ZjR1taEkpe7UukXw/Vy2sBdlzHG/eAw3HtqB8v
acf1MHD7L3ZCpw5d6kzleGjLCXpP1aOJRewV6LFnMSu26NBS06x9Jb+vpnvUZJEf+NraX89C
Z2jdSq3St+nh5dFz65hRD6LZ2+l4GSTHF934J7I+Rczi3td/uLUNvP4EHdJQp1g89kJ6oy7y
yDftpp0hoWurrTqyO+xBQR/Uu+NZ0zlZkzGQgheyjo3KojkqeSxanEWoS0Iyx3MU1WODwbEv
KHLQhv8o9kTSBBoNHUirFDWjeWkRm+qytmDWj2Pz0OgyqxvjIlwW9y8tYABzOYhOh8PpqBof
aAJVTcjrriS0EAuFragu5XNdo6okWpfdU4IrGbrMlWCxmqpmq37D2mON0Rkap4m0Bq6VFYXy
324K2B9PYinTUlgwDH39yA9swWGIssoYge/SMkbg+5rsBb8n2u9g4lbbKauTHtQAeAZg6Gu/
Q9ev9OFB4NiQoRBiFbmCcBKaClowCgLj91j/HTrGb3NAR6MhdawgZqI9O/KGmjw2HusKZ1wW
DToGUQJQ7fuu7pfVwBlBOzaB8BDqLmF56HqWuDs47wPHkvYGUGNy3uGQx5sSTUjwJ65+vMGX
DMdu6+KkgYNAF5MEdGTTL1t0aIn1EwdNbLpSyAv5WztFXCRhbs/3w0E6eesMQfiTJ2uQ/Iyd
KayDHG/HCEOEHrpnkghDCn1vY/atjeHZ/e/77vj8a1D/Ol5+7M77/6D3UxzXH8ssk4ZucZ8x
l3maP8b78+Vt//UdPRNUHjERvnbGPYjlOZHh+cfTefdnBmS7l0F2Or0O/hve+z+Db12/zkq/
1HfNQBAf6vsHQGY6BZnb+f/5mmts0M3h0Rjo919vp/Pz6XUHr5bHsmEBGpJnq8A5nvE1AmjT
ILlBycp/N1XtTuh3AcoPNKPPXCvnKn7rzK2FGcan2YbVLugLNsNGufKGwdBq+GjPpPlDVfSN
NVeqZg46A21UsI+8OPh3Tz8vPxQhSULfLoPq6bIb5Kfj/mJO1CzxfUuclsD5FBdjG29oqk4I
cdXtQL5aQaq9FX19P+xf9pdfyoqSXcldz1G4YbxodPFsgYrCkFauAefa8j8vmtp1aea5aFYk
C6/TkWFIQogZRi8/0/yk9gYe2Ci6YB52T+f3t91hB8L0OwwRsYlsBskWa90THDuilPcWp5tC
U7ErFNE4bfcFaUlNyQ1S1GMYG+sW6AhoOeMu34SGUWG9TaPch41/Y1+pRJbQbSCB7Rny7WmU
iVFR5LeqFMYHt1s6q/MwrmkZ/cZMqwcfTgl37jxQ0Oudh3Bo5cFjJNf9HG9rmzDA4hVaQCzr
JfOMLXJFAENSfBdZGdcTLZc2h0z05cPqkeeSxozpwhnpJxlCaC0shzbG2pJAkEUeA5QtPwqg
QkukKaJCi/fRvHRZOSSvsgQKBmY4VK55OkWlzuA80i1JOs6lzAEc5ajS4eeaOa5ud67KahhY
WJZ8h4idICXcSos3ztYw6z4v0a0Kr8D2LVynRdIGzmXBHFtKqaJsYNGQia3hE3n8iNKvOnUc
NfgDf6uXRnVz53mOZqDfrtZp7QYESD/cr2BNJ2qi2vMd3wCM3P7kNjBLgWr444CxARiNdNtU
nfmBR8/aqg6csUvXDVhHy8w6GQLp0QO+TvIsHHrUvhIoPRB3nYUOuQkfYeZcecHXcjWdAwlv
y6fvx91FXHiQvOluPBlRsgRHaMcpuxtOaENoewmXs7miUihAU4y7IvSUhGzuOY4e2eYFrj/U
2S86p+KzXFqjURjZeQONoQsS3dukizwKxr5nPdhMOmtBpZauyrHg62+ba8l6rUlXWGoer/mS
RR2jnsWwVy1PTWgon2lFn+ef+yOxTroDk8BzAhnDMfhzcL48HV9AJT3uzI4sKuFG195nU0yW
+zY3SVWtyka5DlfQDUbuYbYTGs2TnmsX6W3f6R62Z/YRpGFeuufp+P39J/z79XTm5XmoUfgn
5Jo29nq6gGSxJ+7nA1fnRHEN+9xyrcs2gU+a7TlmrN5tcICeuDcq/SGd3xQwjueYxDZ+yMlt
AntTZkPHzPJmKEjGYJADBROkxk5keTlxhm2qZUtz4hGhx7/tzijOEZrKtByGw3yusqHS1WVt
/G2yKg4z5Ms4WwCfpg+GuARBj+LXi3KoufakUYmDScbelpmjX4YIiEUSbpE6Ky0zz1E1s7wO
9Esw/tt0L2ihFicAQHra0mp5alklZKhTE/iqfXBRusNQGdzHkoHMGPYA+hRIoJwDaUoxZ/oq
gh/3x+/EAqi9iRf0TkuNuF1Dp7/3B9QNcZu/7JFlPJPWFC4XBqTwlKUxq7a8PvdaN1xOHZug
XNKF06tZPBr56k1bXc1UW3K9megy12aiJalBck3kRfnEs2kc6yzwMio9fTfwN4endeE9n35i
0KPNqUJRftzakukPUY7N5vKbN4iDaXd4RYufzg+0K+kJGT0KTDTNRcWPIipWmKVAncFsMxmG
lpgHgbRMcJOD1kLegCJCuQJv4ChTxW7+29WCkXitnXEQkqNDfbmyzu77ObTS6ssAy8kS5Xz7
xc6wundKp0r7Ilzio3Kl5C645SQfrfApeiyBtfRwUhwx+6s0XWKdRXuuR6w8Az+wTGJG1DQu
Fw+D+v2rqLJ7HYauFtlCCXibRvn2DjNrr+qp26Kuw7x46AqINEVVGe57JF2Mb/8dUc2ytaVO
EFBhpGWab8b5F+yVlSxPN5j0OsXykLdeWm7Y1h0vc6zqSE25RoPDYA6BKOmH6eRiM7JKchRt
xLuG0cvYrCcQTfvztXv7dno7cCZ0EOZMKpTsFpmyOli/ag47vryd9i/KSbKMqyLV4hlb0Haa
LmOQctPS5gMgmlLEBUbFX/BqRtdlJoobcfFWfWkLRieROmb9Pb24H1zenp75AUfUN23oyHER
d9vQReSIJmUnZ+VctUaJKOISx6KXR7KH5BF4xDhgm9t8XnVPGPfJHb51vjANnxKdRolvM0J2
RDmLFpvCJd4wrdJ4Tn3BrEqSx6TFE2233Sorng4TD5LKaLpK5qleS76YqRhbh+NZZrQEkC2b
aQUZZjX1wWW+LUq9iG9KRgHVWZqLgs0KQHgmmQVHueIG/14mEc3k4OuRhObzvSAnKejr3vvi
pnCPEficVWin+ZqhyAXiFqiAJatqUscEXFrkTInITDaNu1W9u1vAdsOaRsvkLxFlUaebLYto
T0lJVSfRqkobynMeSDzxSvUp7x+17f2+bb/ftm9t26CRLRvf7feLF7TIz9NYkUvxl5nAAFrN
pxFsLcVdokpSmB/AzJTF1QGBNLrTw7taDI/wwrrElJR8bbObOwLVjQKNVgZAfpPo5kH9rTbS
9fKzZWY0Aus44sMNa1LMmKQx+Q1/P20Gn9XulqwoO2260b1a8xtzCG48KCaBb+u5Ph4dRbVa
YiZbQPIUXMS77BUvBJ7VMO4U27++I5lt1yB2zbQVuUwz65fPXDlfVy7otoNrG8f2GbFsbG2K
AdGHlCN4kAYd6yQaZqsM5NjlZ2CNqV6MR74YOCpXoVNLspbHYpn0lsF1fxFrOtlg5KbeWwkT
KdbgDCCbS7Nki3iRYFVRN5Yxeps+aBT0cGICgKh6KBvb9wAFzirJwWZ1l3H3KiTdyF+RClwv
V41sjpkJfL+sikZJw1FWsMgFcHvPqqXx3QJh27ZfZnmDFZqV1SZAlK2ONxU1yiyxVVPMal/j
LwJmLjT4Onr6CxjIjD0Y9FcobKE4xczB2zilxoeiZNk949l6s6y4tzSLci59q68Q5Ql8cFH2
U0BET88/tNzLtTghfhkAvm3rPngBfLKYVyzvo3qJ/CSimOIO3GZpTbEcToNLW5mKK8w81BSM
2pWrw5H4PvGt8Z9VkX+M1zGXXa6ii1zAdTEJw6F+yBRZmiipYR6BSD0rV/FMzrh8I/0WYWIt
6o8z1nxMNvh/0ELJfsw4g1QNhPCcBlmbJPg7TgSDw2zvJQMp2fdGFD4tMKMKFsn9sD+fsIzH
n84HinDVzMY625r1WLc8CBpDhuAAY644rLpXB+vmgAil8rx7fzkNvlEDxaUQfb9x0J3paKwi
MRWXuvU5EMcL86qmomiUiooWaRZXiZL/8y6pluq3SnWw/dnkpd4nDviNRClobOceaJdYI6xK
QKxWM5XgnyuLkvp1f8SU0yOtRaYi6HST5ORcZuo8ZrVcD9RyQbRcb1tfN0lruJFHRZzoJKNA
f2+HGavuaQbGtT4TWJ+xd3NscRYyiOhbGYOIOnkMEs/WxdC3fVYY3Og8ZdE0SCaWV0680PLK
STC0YTzb6E9823vGI63IHeKApeKy2lIXY9qzjmtdCIByzHZ5vitLm/KdvYckwjZ7Em9MnQQb
8ybBAU0d0uARDZ7QYMfSFcc3V0qHoXzekOCuSMfbynyMQ1fWJY9p2uDEIwsRSHyUYDpYs2GB
Ac1mVVGKZEdSFaCPsaX+mRzzUKVZlkb6oCNmzhIaXiXJXR+cQge1NAwdYrlKmz49/16yS82q
ukvV9GWIME/S1TKNjMroUgYptvdfVG6uWVlElMnu+f0Nb32uiei6g+lBO3jwNwiTX1YJJgRD
SYk6FJOqBskJpgHpQQafq2dZtQJULFq+WmaEUiHh+hu38QLLO1QMlQ7qfJGq+TbOk5pfAzRV
GmnZpG/YVSRKPXF5Mi+QaeJkCX1C/QNl3S3mb4uYdqL3iG6gQBbKMl7NRZVhQXFDJacuVlVk
CWZC60HEm8HqGaJ4BvElUsy6jgdTFmxW558+oLf8y+nfxz9+PR2e/vh5enp53R//OD9920E7
+5c/9sfL7juuhT++vn77IJbH3e7tuPvJy2/s+JXqdZkIJ5Xd4fT2a7A/7tHrcv+fJ91nP4pg
JGqu/GzXrIINkDYgHjUNCD2K6EFRPSaVkvmOg2AsQMFdFkstu7iCgiGWrVuUSo0UX2Gnwzwi
OOfd0Fq0XkmMRmMrrfTPoYdLou2j3cVumdu1M0ljpU1U35WVzPdVId1Yo7dfr5fT4Pn0thuc
3gY/dj9f1RASQQzSXNlrAcZhztS86BrY7cMTFpPAPml9F6XlQs24YSD6jyz0fI5XYJ+0Ws4p
GEnYCaa9jlt7wmydvyvLPvVdWfZbQBNRnxSOAzYn2m3h2l2cjtrGac2mWSJsd7TJXn8g2TQV
65PrxPOZ447zVdbr0XKV0UCqjyX/e6tT/A/tgCNHbNUs4MS4RUJWDijfv/7cP//51+7X4Jlv
hO9Ym+JXb/1XNet9T7wgPiaJYjpvfYev4ppOgyOXeG5xrG7HYlWtEzcInEnvY9j75Qe6SD0/
XXYvg+TIvwh91f69v/wYsPP59LznqPjp8qTepsimI6qyjpzrKO+NAOj48J87LIvsAV2Oid09
T2tYI/19nHxJ1+TwLRhwznXv26Y8qOtwelENSbIb04hoKppRde4ksulvo6jps7gkUoIBWlhW
3Wu+8AJa3HpdKbqoAzdNTbQD0s19ZanmKUcV8602K/pCV3Ycc23174ifzj+6QewNWE6GbkpW
mjPiE6jvWiPlNc53d770Z6yKPLf/JAf3xnuzIXn7NGN3iTslZl5gbvAteE/jDON01mt0Tr5K
Wd895tWiuNuL/Y157PfZdhz0vjVPYQNwT42oh6vyGLcSBVZD6a5gNwiJBQYIzyXjPNqtuWBO
f7/CNg9CChw4xPG9YF6vQ3XuEeMHcnmSTAvK3C759rxyJi7xIfdloEfUijW9f/2h+d52rIgQ
YJJa5Pjrr6Di3pL9Vy4hliegFfZPhYihHiTygVA4ahEhnDKryIOG6PqM/+2PPMtq5vZXg+TU
BCOuSlDLqJnJqTgBOSn3xSwldkoLvw6AmJPT4RUdOPdtCgTz82YZayi1UTLcx6L3orHfX3bZ
Y3+TAWwREYvnsW76ZWCqp+PL6TBYvh++7t5kBLGuubQLZ1mn26ikBMm4ms5lNm0CszBSy2s4
W80blSgijbcKRe+9n1NUfRJ0gVN1UUVE5rfshkLwc//17QmUkrfT+2V/JE5djIhjeoZxBfNb
HoxEYlVKZztLS4Lo1rhwKlIs6tNRewnhHR+v6vQxuabxo0hu91eS/bbHhvB0u98dAzabWlBl
b1n9kGNVyjTi1pLmoVRM+gqyXE2zlqZeTVuyq9vTlbApc5WKcn4KhpNtlKDlIo3QM0e45Wj3
JndRPcYr2DXisTmr6w6SjmQ5AEtTIy7SYzuUCSedo52lTMQNNncrwH6lClfCmNBvXFo+83ot
5/33o/Ciff6xe/4LNO3roucJmBJsFl/46cMzPHz+iE8A2Rb0h3+97g7dlYW4+FAtW1Wq8oo+
vv70wXxaqGDKkPae71Fs+eL1h5NQs3MVy5hVD2Z3qFET7cLmxfKJdWPt+ZWC8w/8F37A9YLy
H4ytbHKaLrF3/Gp+9qmLrrWxH6yWEW7LL+pykLDtFJRAYLEVVYYM6yIwLPq+nOtsCz2I6fGY
piCeYKEH7UasinUzM/Q8T0C9zaeWCth82TFFI+7ci6PUdFGTKAMcYYHuCDi5BnJC9aSHbdqT
aqGhZrXVn/Jc4yeskWzGy5McDDhwh2T6MNb5joKxZPkXJKy6Z5aCQYIChpfkelHoG2+kRZFo
pNgy02lfq4gUcdlUI2AdxEWufnyHAuGi89LRoejYacIfkT/DCZppW/RRnDYGFEQZomWEUi2D
8EJSg0hzhR9UarJ/IOoQzXCwRn/1QntEBGlOluTb+WOqLE8FkT1qdW9UhE/CsSPq6VQXUQo7
Zp1sWVVpBWcYd+hUfaUFCD2dttp2QbhWf2eZAOPjZYFYya3n6oFYRQv5xPa+wige6Ny0V1cJ
+pyxCpELLk8RLdRJsypFmSXVYHrFYxEfRM+KSuYG/g2VFlyhdRXLihCdQdSyWEoEJmHV/H8R
H1lSMSOOYZCAxQWqnmfC/K0wrKyY6r8IdiK5GmsKUG3Vm+coe9w2TGkBo0pAJlK4ZV6mouLW
davPYuWD0RUf/adBl9RWC6wg+d51XCs6hITOkwbjVItZrC6zWQGDdq2GoELHfzuhAcLrCfje
JFJoa4xnKJQvqIHTaesTr6OWc3WglDg14+Qze80F73qRxanX/6QWWVmR2S1klJexarlXcasO
qV8BSUGJQ1/f9sfLXyJW7LA7f6cKWfGD/o4XzCDXYIuPmBmw0x3AojZyVswzOJyzzkQ/slJ8
WaGDld8tqFau7LXgX3sxLYpGdiVOMmapp/WwZLCgbzi/ahS97ISdVJVPC5TEk6oCciGFt+vB
OqSdar3/ufvzsj+0otWZkz4L+Bs1AaIrFs/qZMkvCvIVmjFa32y53rH2NHeb/OQMXV9dyyUs
OoxZyTUXbxbztgCl8p8FwDFteroEPpxRfsmig7VwoUV3opw1kXJ0mxjep22xzJRdLNoABhpB
lxN2x7O0C16qFMn+h4P3X2pFlHblx7uv79+/43Vcejxf3t4Pehm4nM1FzZfqi8LJrsDuTlAM
+Kfh347iQaXQgeaTMvsoqXfUEsJZ9D3+X+P7/1fZke22bQR/xchTAxSGlIe89YHiIQqSSJmH
mfRFMBIjCIqkBmwD7d93jr1md5ZO3yTu7D079+zaUnQGEcAZ0zR0rJUtoXNVGQGRWGJJx30V
EOj037Xtu342vkjSFmQxTzJ9LZ0KbcB58g39q3hO1TI6wExn/3h3v222m807AYYT4+MPWtQl
auMoZlDttO0KSkFP2vXFUMk68HM6dDNIDMVUjGh/aUFzcE+9O2Y+78bChNeD/mb2zQBRWbiN
DDxFPgJRuMOXZsaoDQrLi7+t9AmfQIc+C9GCFG4eUcCxfulgSBzF8Mb6FGOuGWEYQuAaExwE
iTcov3ija8b9zg0iIIkrOqPBZvql0y0QZHjoD2MfB4nLEjgbJjEi34cHjmMLktFiEkR6aDma
OfPe3WneWTAtPIrKo8hqOrhmJ0CePgF9jPfire8YL0pSDtscth83m008bAcb+15zcC5OQj7w
qANTYMhYFl08RA7lmJHFBzwDmFlliuquSvOOuO695gI12EmPo1BgR1rPcBdULzQTQLDgNAQM
m2843j4delpoQmGOBZ5Lb36UpUs/HBkh/amuKqfbyVgTf67imYxtlIXNjjyEv+n/fnr+/QZv
tHx9YlbZPvz8JqW7gh4yA3asp5yIcszjm2tPEbmQZPJ58p+RaaBaZS7JDza1b6ZsITIAfOfg
HIJRD78CY4a29fuD7V/bGVYYiLk4F4y0rshNYPthIwVK7soDUk+a3SkH6xbMNbvcgfQDMlDV
6/InkWyemBp7tL6xHAwIotHXV5SHQmoszlUUhc8fjVch/GbpkI9cUtqOMRKX81jX8YUZbCfE
sADPcX57fvr+E0MFYDY/Xl8e/3mEH48vX25vb98H18xgRhS1vSctzOl6YYj//XreE7WB08nS
C7RJzFP9qU4kNPtYYUpGTIUVWrksDAR0vV8uRZy5LUewjFH4fQRAk8gzSAZinR36gy3ITtYs
FRkPrFYrbErUFZzPaR7qhB9YXHZzC/Vihz9Ntr5Xnv8HOnj9BWguJfX5fSKFAoMB526s6wqQ
mc2F6Y4dmTdnCOZfLBJ9fXh5uEFZ6AuawBVlLM5TirlLJo/JoNM+HRblwR0ie7SnRSQsXCsQ
S1ElxTu4EkFK0IfMPOJeywHWCmTe4pRerDCUs0Y/wi0NtxvAr/T+QQ5ZEGCtMmaTvtkAsmzS
Qh3N/rCVzSTZnqK0vlMTX+21NWLKctOAbrNyOni1VABw3iZIuWgn1MaPluWu/Dz1ge7S0W1p
MOIhEvaauWOdeb10D2pFq8NYQ0YTHRVugD5ez5T4D0uPTpIIBHOiaKEREiTiLhFIS1ORWwm0
DhoO3oFzjfrmXktDS+2+IB2K36eja8wJXrizUEPDJR6XA9oR4okn8NYglgFUzIZ2xEIOQGSz
dZSdzW7WG/uU2yJXDdgaukOFK5VFYm5Kj2Qe7kA4atZAmN+vALQLYOsagEEggyTq9WKMBWMH
EnbbC24dFTlhfFxUJZm72gFFhy3nJYlUPFFWJ+aPUEwggKIDelugb5Vr1qrka4HhEFgwpdN0
kWz5CYWWe5eCHtga6Lli5ar+OSzQ+IdBGFfTDzVsT+5RfMg9FnzuplbpTO6TOYqcIp8HIwqx
6s8NzrmHC27RMp0VJ/L54NKHg92X+CSp2ZImT+UtYk7FgK6drCYbjuZN4MtQ12fguWQGxPTp
LGS4tUh98pBjgU8yZGwElP2C2ANKbMKZf3wHmV9jzTRzGGRzKvajJiaX5wq96kjTMs8xEiv7
E2meZpowcvBVul/D3G6ZdhqNNHRETI/PLyjyoe5S4ru4D9/EtaTHuVO9zVZQQtN7PwQ3NzhE
upx1oDAzOr70wRUcTuMp9G7hFzb0WDeaxzTZissR0tES2zkXx9rmXmlsBGHoIlUWbf6Nqjco
a6v15EACQ3PU/7lc7V424+VsPIxTyLicJfQIpzIxbIxAF+GwctWLWDOE148jkChisjA2PJkY
kaeMEY6Dwb0420bHpyQlh71f/wGOggsSLigBAA==

--6TrnltStXW4iwmi0--
