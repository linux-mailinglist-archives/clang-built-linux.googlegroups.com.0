Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSOPV2BQMGQEFPKZRWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 282E5354997
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 02:14:03 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id z19sf8872432oot.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Apr 2021 17:14:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617668042; cv=pass;
        d=google.com; s=arc-20160816;
        b=GRKiPSQQC6MbiHk+F6ONIQn6lNrGxfsnXR1z7q//85Rf8a6oJ6VLmeLlP38PUqPDWG
         QVd2Nv+qohyZbQngCWt2z56+33MEHkXzghOQLDcgGOqMvQ7XpyWndknLS+/fk/1EcuuX
         A+LrGqUhJCU+q9+mA8EMRfd3ZkRhpww/ExFC8Jbpx/0nwpJl7kz/w+jyc1AfyzZ24Q1e
         D/n3Sg766UGvrBAd1PdlrCWgCL6eA/Pf6R7LV9jmwqH68Gwu1NdbUnYEKt5xFEPfQNpC
         OlLi/Qbpf3gpJGVKPpquTB/81ZHpCK6WcOjUIv2ZsWRdZDDSo8NefiDMwCWN/yw2Ps9h
         wNtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=PZBylwKF+VW/MNEyEHntsagbz3KTGvGrZskaIqYq7Dc=;
        b=D8pxnWtMfnDPNgKRxWXBTDxafshUYbGEeqlJS2q/vppmw+qyuEALIbhQtOtXt+zhEX
         +PPLCAE5AYzmmqFG5u+mKz4kR/qU7o2I8QK3uKDu7IQzmetjaYEv702TkbW90bT11Gub
         SmXqBeesaVypnK/1lUrP4cV4BdcCja2AGVlcWuo/6LLJ87EWrG9k5+FSUYf01RbYlPLq
         ZPxB9n0BaaGQerHrN0MfIJS9zjt0VCBaP63qYWiP96OWBHDvDlO965oYXEGkEQibt0ZR
         nCEZZ8T2cxW+Lfli45tXmgtqW1Dr8DBy+eotzOZzXKLzzwQpU//4uPcKKjYamT7e+8U3
         B/yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PZBylwKF+VW/MNEyEHntsagbz3KTGvGrZskaIqYq7Dc=;
        b=bvntauHWc4RpcIRM3DIYRRwTgNzVAEb3KBmqOEF95xJ3If9aG2c8apr5Z3govd0vN7
         7G2oBmdmbqcJSkWYbdqBvbCbWETtgatmz21F7pjkmYeA5L5uqyHwHVamiDcfBq4oYf3C
         EubpmWh0i7/SzFu+4iNJNYzNJSlFB49qDfjk4EH+8xp43Y54WqY45xIbk/1tI20kywXP
         TZ1KOkI/wOAFhjeoLMbp+rri3w1kvlslS+omivvYkhYMrmkTFha+OxEVDy3BJakXiKEC
         YlozzLCa7xX5h4IRgOchv8XQHFAn+axXnteV1SkXEAbSzHr3rqVF6ByAgufcKY5ReSk6
         nxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PZBylwKF+VW/MNEyEHntsagbz3KTGvGrZskaIqYq7Dc=;
        b=UwFCEuCj3An25ideDkqbYJ95h5G7IeO3mQzyOaTPxWApTlpjPaTx8zxKlkcs/0ijKm
         ObwnJb8e8tVBvrQfxVTpsvJuE1I4K3AVmlULbwREKj0WAWB2BmUABvy1Tdng+Sv8QcsR
         6FXiaHQ8esHOIZ6E1TkBVaaHlSlJmUZFR5Wy5buOf7NNSAVMk7Rfy3WZwfEm2gcubQAS
         GmE5Xuxxxxeq9HqnJT9C7MIecS6l3t579BRWmzem+4CA7RMXuP0+H33qF8x89RBq+Uq8
         rege2reKpHioU6nDVbBhuPUPwU2DwWYPT1ldHMKtvgGvmOVkQdmWRErTy1FmolVE1xEQ
         Yaww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k3u4CCCixSjxIKocI1RyhAvwini/xPJjRXDZVXUKg6Il9cH6X
	EJqqralY6pJurhUM2TyHpxo=
X-Google-Smtp-Source: ABdhPJxQpQ2pqftvQiSLzm6Osiqx8X2i1/Y8vi9GGlFkh1Tp8jdvuY6kh604xIrANk7VE51c6cmdUg==
X-Received: by 2002:aca:afc8:: with SMTP id y191mr1189815oie.169.1617668041867;
        Mon, 05 Apr 2021 17:14:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c55:: with SMTP id z82ls3609174oia.2.gmail; Mon, 05 Apr
 2021 17:14:01 -0700 (PDT)
X-Received: by 2002:a54:4184:: with SMTP id 4mr1197777oiy.72.1617668041367;
        Mon, 05 Apr 2021 17:14:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617668041; cv=none;
        d=google.com; s=arc-20160816;
        b=p47ryHQIhHfEIIFnkENijj/V2WTSq2k81kjl7UFlpXfufBR/c0sOtnGnscfTIvOElC
         CEXJ62msDlZTGA0AtQakdYEdIEQY9pb3wpaiLcDbsN7Hb5ZflYee2lINsBRN5IjVwn9G
         4Qqrdx4hFIUluIzrcCY8T4gBMfQ+gU3kwUtlOlivabe+GPIOvXewWPwauaFWh7VZR/py
         TTXKKzME7wP+Mz2aAWIma27cS7Em7hxA1O4WPtIBGxQrzETWdUBrwUI76mEJyJhLqXkm
         yPkoOfel2VFLfmBaiZ7vAGoKsCjjDyAGKzzZlLgnDuaRFR9io2TQlqtYmPmG4+ISrDMc
         0TRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=8nyJfCBNI/hk+qrdxELCIRIZ3dqq0ssl9mXSAK5teUE=;
        b=E2gEM2xjk0nFemOOnQL/pANjS/rpPPMO1+AQaJ4bHg0EjRiuXUNaSOCdNvJHilPNn6
         ZFLbGB7+35svHfrWqi7DlXtzz/fSyh+zx5D1eQA4p/Cdj0u4rUmDkPl4O0C7+JUC8Cp2
         WgqJQGZVBNcMlikWQw08mKpuHKvASP+h50a4OoUnXtwLNlkrqZ1WhYCjtmWEDGW4s6QL
         9EXvVvVZnPwk+WZ3sbsVEod3JZmIywM2Gj1hIVgjHWA0cq+1j4tH/hmv5gQOBV7+4wT+
         3mRn1fQWoaNYN+oBEzOOmJ/0lW2CAraUhUES5jORHSq7erJYhfqrp02RliDBuDa2mNAb
         qPIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id h187si1046496oib.1.2021.04.05.17.14.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 17:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: ypIIDujS6HzOiFD34r5ODrgLFV7WBlFq42MQVThVJIZYqbdgDXxUY2bZqysfpLKOreNw/iYhJN
 MvT9SjSd6+3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="189732575"
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; 
   d="gz'50?scan'50,208,50";a="189732575"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2021 17:13:59 -0700
IronPort-SDR: hqwiy2mP0awyXNpk7leqExb913nGXXMwMHIgFVsthMhjkXOTdcJK6eEGOP1btg5uGbI5Hah9Qw
 e5q1QOnPoetA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; 
   d="gz'50?scan'50,208,50";a="447615477"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 05 Apr 2021 17:13:57 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lTZLw-000AxZ-Ry; Tue, 06 Apr 2021 00:13:56 +0000
Date: Tue, 6 Apr 2021 08:13:16 +0800
From: kernel test robot <lkp@intel.com>
To: Ajay Kaher <akaher@vmware.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>
Subject: [trace:ftrace/eventfs 26/30] fs/tracefs/event_inode.c:58:16:
 warning: no previous prototype for function 'eventfs_create_file'
Message-ID: <202104060809.1T4E8bxo-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace=
.git ftrace/eventfs
head:   b33eb69f9071c21282319a8436ecde81aefc70c1
commit: fa0d07bef48a9aeb131618523c09d9ae154154c2 [26/30] tracefs: Add event=
fs for events
config: powerpc64-randconfig-r012-20210406 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2760a8=
08b9916a2839513b7fd7314a464f52481e)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-tra=
ce.git/commit/?id=3Dfa0d07bef48a9aeb131618523c09d9ae154154c2
        git remote add trace https://git.kernel.org/pub/scm/linux/kernel/gi=
t/rostedt/linux-trace.git
        git fetch --no-tags trace ftrace/eventfs
        git checkout fa0d07bef48a9aeb131618523c09d9ae154154c2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/tracefs/event_inode.c:58:16: warning: no previous prototype for funct=
ion 'eventfs_create_file' [-Wmissing-prototypes]
   struct dentry *eventfs_create_file(const char *name, umode_t mode,
                  ^
   fs/tracefs/event_inode.c:58:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
   struct dentry *eventfs_create_file(const char *name, umode_t mode,
   ^
   static=20
   fs/tracefs/event_inode.c:104:46: error: too few arguments to function ca=
ll, expected 3, have 2
           generic_fillattr(d_inode(path->dentry), stat);
           ~~~~~~~~~~~~~~~~                            ^
   include/linux/fs.h:3211:6: note: 'generic_fillattr' declared here
   void generic_fillattr(struct user_namespace *, struct inode *, struct ks=
tat *);
        ^
   fs/tracefs/event_inode.c:203:13: error: incompatible function pointer ty=
pes initializing 'int (*)(struct user_namespace *, const struct path *, str=
uct kstat *, u32, unsigned int)' (aka 'int (*)(struct user_namespace *, con=
st struct path *, struct kstat *, unsigned int, unsigned int)') with an exp=
ression of type 'int (const struct path *, struct kstat *, u32, unsigned in=
t)' (aka 'int (const struct path *, struct kstat *, unsigned int, unsigned =
int)') [-Werror,-Wincompatible-function-pointer-types]
           .getattr        =3D eventfs_root_getattr,
                             ^~~~~~~~~~~~~~~~~~~~
   1 warning and 2 errors generated.
--
   In file included from kernel/trace/trace_events.c:27:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:208:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_in=
sw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (=
n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events.c:27:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:210:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_in=
sl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (=
n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events.c:27:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c=
),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:212:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_ou=
tsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n=
))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events.c:27:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c=
),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:214:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_ou=
tsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n=
))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events.c:27:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c=
),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_=
AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:216:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_ou=
tsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n=
))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/trace/trace_events.c:2314:9: warning: incompatible integer to poi=
nter conversion assigning to 'struct dentry *' from 'int' [-Wint-conversion=
]
                   entry =3D eventfs_create_top_file("filter", 0644, dir->e=
ntry, dir,
                         ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~
   kernel/trace/trace_events.c:3444:8: warning: incompatible integer to poi=
nter conversion assigning to 'struct dentry *' from 'int' [-Wint-conversion=
]
           entry =3D eventfs_create_top_file("enable", 0644, d_events,
                 ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/trace/trace_events.c:3464:8: warning: incompatible integer to poi=
nter conversion assigning to 'struct dentry *' from 'int' [-Wint-conversion=
]
           entry =3D eventfs_create_top_file("header_page", 0444, d_events,
                 ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/trace/trace_events.c:3470:8: warning: incompatible integer to poi=
nter conversion assigning to 'struct dentry *' from 'int' [-Wint-conversion=
]
           entry =3D eventfs_create_top_file("header_event", 0444, d_events=
,
                 ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/trace/trace_events.c:2083:37: warning: unused variable 'ftrace_ev=
ent_id_fops' [-Wunused-const-variable]
   static const struct file_operations ftrace_event_id_fops =3D {
                                       ^
   11 warnings generated.


vim +/eventfs_create_file +58 fs/tracefs/event_inode.c

    31=09
    32	/**
    33	 * eventfs_create_file - create a file in the tracefs filesystem
    34	 * @name: a pointer to a string containing the name of the file to c=
reate.
    35	 * @mode: the permission that the file should have.
    36	 * @parent: a pointer to the parent dentry for this file.  This shou=
ld be a
    37	 *          directory dentry if set.  If this parameter is NULL, the=
n the
    38	 *          file will be created in the root of the tracefs filesyst=
em.
    39	 * @data: a pointer to something that the caller will want to get to=
 later
    40	 *        on.  The inode.i_private pointer will point to this value =
on
    41	 *        the open() call.
    42	 * @fops: a pointer to a struct file_operations that should be used =
for
    43	 *        this file.
    44	 *
    45	 * This is the basic "create a file" function for tracefs.  It allow=
s for a
    46	 * wide range of flexibility in creating a file, or a directory (if =
you want
    47	 * to create a directory, the tracefs_create_dir() function is
    48	 * recommended to be used instead.)
    49	 *
    50	 * This function will return a pointer to a dentry if it succeeds.  =
This
    51	 * pointer must be passed to the tracefs_remove() function when the =
file is
    52	 * to be removed (no automatic cleanup happens if your module is unl=
oaded,
    53	 * you are responsible here.)  If an error occurs, %NULL will be ret=
urned.
    54	 *
    55	 * If tracefs is not enabled in the kernel, the value -%ENODEV will =
be
    56	 * returned.
    57	 */
  > 58	struct dentry *eventfs_create_file(const char *name, umode_t mode,
    59					   struct dentry *parent, void *data,
    60					   const struct file_operations *fops)
    61	{
    62		struct dentry *dentry;
    63		struct inode *inode;
    64=09
    65		if (security_locked_down(LOCKDOWN_TRACEFS))
    66			return NULL;
    67=09
    68		if (!(mode & S_IFMT))
    69			mode |=3D S_IFREG;
    70		BUG_ON(!S_ISREG(mode));
    71		dentry =3D eventfs_start_creating(name, parent);
    72=09
    73		if (IS_ERR(dentry))
    74			return NULL;
    75=09
    76		inode =3D tracefs_get_inode(dentry->d_sb);
    77		if (unlikely(!inode))
    78			return eventfs_failed_creating(dentry);
    79=09
    80		inode->i_mode =3D mode;
    81		inode->i_fop =3D fops; // todo ? fops : &tracefs_file_operations;
    82		inode->i_private =3D data;
    83		d_instantiate(dentry, inode);
    84		fsnotify_create(dentry->d_parent->d_inode, dentry);
    85		return eventfs_end_creating(dentry);
    86	}
    87=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202104060809.1T4E8bxo-lkp%40intel.com.

--k+w/mQv8wyuph6w0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPKga2AAAy5jb25maWcAnFxbc9u4kn6fX8HKVG3NqTpJJPkSe7f8AIGghBFJMAQoyX5h
KTKdaEeWfCQ5k/z77QZvAAk5UztVE1vdjXtfvm5A/v233z3yeto/r06b9Wq7/el9LXbFYXUq
Hr2nzbb4H88XXiyUx3yuPoBwuNm9/vj4sv+7OLysvasPw9GHwfvD+sKbFYddsfXofve0+foK
PWz2u99+/42KOOCTnNJ8zlLJRZwrtlR379bb1e6r9704HEHOG158GHwYeH983Zz+++NH+Pd5
czjsDx+32+/P+cth/7/F+uStLq+frm5Xny4/rT6NPl2s15cXt8XT6uniy+XT7c3jzZfri8fR
02jwr3f1qJN22LuBMRUucxqSeHL3syHix0Z2eDGA/2pe6Pc7ARp0EoZ+20VoyNkdwIhTInMi
o3wilDBGtRm5yFSSKSefxyGPmcESsVRpRpVIZUvl6ed8IdJZSxlnPPQVj1iuyDhkuRSpMYCa
pozAUuJAwD8gIrEpHNvv3kTrwdY7FqfXl/Ygx6mYsTiHc5RRYgwcc5WzeJ6TFHaCR1zdXYyg
l2a2UcJhdMWk8jZHb7c/YcfN1glKwnrv3r1zkXOSmTunl5VLEipDfkrmLJ+xNGZhPnngxvSc
RJ8FJAuVnrvRS02eCqliErG7d3/s9rsCtKpZjlyQxLEMeS/nPKEwQiO5IIpO888Zy5jZoN2Y
VEiZRywS6X1OlCJ06pTLJAv52DGmXjNJYRCSgYnCFGDPwvoQQR+84+uX48/jqXhuD3HCYpZy
qtVFTsWi3ZMuJw/ZnIVuPo//ZFThkTnZdGpuNlJ8EREe2zTJI5dQPuUsxWXd29xApJT5ld5y
04JlQlLJUMg9HZ+Ns0kg9eEUu0dv/9TZnW4jbTTzdkM7bAraOYPNiZV0MCMh8yzxiWL1UajN
Mzg712lMH/IEWgmfW6oTC+RwP3RrjmY7OVM+meYpk3oFqbRlqqX3ZtM2T1LGokTBALF75Fpg
LsIsViS9d6hlJdPuTN2ICmjTI5dKpPeJJtlHtTr+5Z1git4Kpns8rU5Hb7Ve7193p83ua7tz
itNZDg1yQnW/pUI0E53zVHXYeUwUnzPHjFFH9JG7+xpLHyYrKANzBQnl3hnJnbv9D9ak157S
zJN9BVGwSTnw+rtpEeFDzpagSsb+SktCd9QhgcuXummluw5Wj5T5zEVXKaGsPyepwIAwBESm
q0BOzMCWJZvQccilsnkBiSEcYhTpEcEpkeBueG1yxkJ0e9AksPuQ3N9dQTRujkkPLegYdcN5
jp3l5DpIRmPn2dpn1vbBZ+UvzgH4bApddoyziXoY3gJwvzxQd8NP7ZnzWM0g5gWsK3NRqo9c
fyseX7fFwXsqVqfXQ3HU5GqiDq4RhyapyBLXdDAEgm8FxTfNIVMyj6V7bQntsNoYlgLH0GLu
l5/baUwZnSUCFooODLCN2wNJkPM1ItDTdofiQMLZg6FQcMK+OUiXl89HzlFS1BxH3+NwBq3n
GjekBgDUn0kEfUuRQZgyMEXq19ij7d3Px0AaOQYAVvgQEUOb/Xz5YH0MH0Tn82Wn8wepfNfk
hUAnjL9bOFOAE474A8MIi+EIfkQkpsw6nY6YhF/OQRJAZz5aDRXgKyAOkpwhLET3a3qBfy4m
0mRKYgBUqUHH6KxC8HqU6SBS2qwBE5Og/dD1jRGgPI5KaSnHhKkIzD+vAv9Z3eoBgwCmB8Ha
UG8h+bIKwqbrRjO2QkvmdhIsDGBfzpjAmADYCTLnBIMMcixjYvgRjM3YiUTomber5pOYhIFL
YfT8A0PNNeYxCXIK+LX9SLgwu+Yiz2DJE0fXxJ9zWEW1k8YeQX9jkqZcH00N4VHkPpJ9Sm4d
Q0PVO4Q2jAHfUon+2aEWRFoFUxBObWnwE6EglgtBeZ0lOLdMw3FM3Np15DjemNCZMX+XmLyP
qT50Y0HUTLQA4342Z6JhraY6JgL9Mt9nxllp20Tzzhvo2qIXOhxcmr3o6FHl9UlxeNofnle7
deGx78UO0AuBuEIRvwCSLKFb1U/bvTNi/sMe6ynPo7KzEjqWtmQllkRBVjpzGWpIxpaWh9nY
HU9C4cqtsD0cTjphdVJoKD3yAsBTiFzyFExfROe4U5L6AK4sk8mCAPLhhEDfoBmQ6EKwM52E
CHho5Tfas+nQaOUwdpretE/oxcg624Re9882OezXxfG4P0Ai8PKyP5ysY4Q4DtFidiHzC3eA
RImbqx8/XPgfWT9+mFO4HPxw9nJ56erg5nqA8MyEmHAOJZyHWYUuxt07aPXOnEKQIHibmO43
oVWdIGNJZ4c07cxiqjYksbtyU0qrtOlRhKATzH16jp7rI6tZQNaBpiXFOnJPWaqNgQAGMhWh
f5aNAflSmF3rLUTvEPucGMH0YjTmZniMso6viiJYWhoDcOEA/yKyvBtevSUAuf6tm1+b7a/6
seTM7uIUEzZ5dzVs8gNIM+isxOwySxK7zqXJ0CIIyUT2+ZjLAyDsM+qEfrpgkFUr6+iMkEjS
8L6N7LUIiasyAiYyw5umHljCVxFxBT4C4HWuzdoMO7qWo/eiGy74mKUlOkJ8IfnYRBxapFoD
1h9SMWam7k/KGqCu6ci7UeUEtqsTOmLDBzTzFJFRN2nUJxqahhMl9Ga5DIjvTgeQfb18i3tz
dY6L9sGSm5slPcsmEN/Sm09XLuTyOYKJ1XUFHAlcFczeEy9YnMaY1VY6N+taouU2AwE5nyRc
nCvEZBq+JljrO1O9G0NOEPxSjo9oLhN+Tq4jJSM6NEWtUBfRX/RiN9SrxdWvHr9jRH5s6r6N
g3Fxa55jc9u5zCCCT7JO5bdFuQlJIOMgKcFyTS9EYYoeHIr/vBa79U/vuF5tywpQiwDAm0Gk
/eyEGu7Wdcf8cVt4j4fN9+JQ6wI2QLJxcwH9cwvX15R8IuZ5qBXwDDNicXaGpZiotz0RC5Ym
tBnb8/WUrOT9vIy51HLmBsVcoWG/pqaAh8tTRZ3b13MNJiLc9+0EK48AZt1VyYd8OBicY42u
Bg4dBcbFYGDOtuzFLXt30V65RERNAf5mYZ1Ith7H4pxLoTpS00WexTxKQgZHqkwkp10ui7Vf
rcr4U6GS0Az/bpkUfpt3nTfEJwUilbSV6LaOfZoB4AnHplPmYcgmJKwjST4nYcbuBravvJxp
wOmqzSB7eF3xbYCiMWpVaLpsfGt5cdTUn+psBDP4kjhqiLpmj2E+fxAxEynaSxPIaeTri622
VsKWEK0rVCcNemLg6yRqIFa7wggTSqxZ+CXTtcwop6ERohefc21ZOQsCTjkCqxbpdxOWfePZ
gDV+PRoWUK9UhuDnDWCAhHBMzc7Mhron0ve4bX5cLkfo4obsOUe/eFq9bjUBi8hHD4y19dFr
8yq2HtNbHQrv9Vg8trMOxQJVDqs5d4Mf+ubSuLzUxy+CQDIF3HWHW12sAfZKXexkei85pL6N
wKAjoHSppRz5puY1e9XZmgbQQqDISMgfiHlxUGdCq8P62+ZUrLHE+f6xeIG+ILl0uas/sygB
Bz5mLg+gAX+rFlkMA05iLDtSvATo2G0mmb6TVDzOx3g92Em5OaT0CGoBkqkOa9aFaSU1ZcrN
KKl4Axt0ql2aH2SxvpTLWZqK1HVJ114Z6vZTyPH6gFfC1uhgVVq6o2oBZq14cF8XO20BnUug
2uTd5eJldiT86lq3uzpM1nJIpks0X+11TsziVSlXlkFMki472MleS9e157JPP4u6p6On3GqD
lQPlEwgF0LiEzpjTO9l4TfALkdKRoq7be7UgoF+Yzej9InBac6LAYUa9TYepxhEvrwBolCzp
tBtlFozMsOjFsPhF6OeMp+7htGPHC9P62t2xI5JRTMDeYOUBqHyngFpyXBcbSuhLxU5/jlu6
rvE4r+ZMCVCoal4Jozwwb7GAlYVgL2ihWFHFiqCjf7ZEfY3LO2nUk44MwHeFPBARi7gr0hiF
HkEXg6xzbjfOSpHfyq/bENk2jueQLkI0MLOxEHY0x8rigqS+wRD4PoJPZAZbEvs9OqFdYFTl
2qXl4na/+dpgjnPt7IKLpoXL+AVhoAoX6WLp2DupwPEop8wbrKY5xpocVMzXNyfNsjC1NwuI
LvTT2sW5iwY7sy6LrmjPunbXRCAq5u+/rCC4en+VkOHlsH/abK07axSqFuJYhOaW1T9m17Ud
nLYI+NbA3UrhL+JjPR4YZYQXB2YA0iV1GeHoQwNRlxbmQtGV7el75xDiTGY4kzGejPkRgACV
HAz0MyaLNgfv28Zy4iSGfNynIwyepFzdm7pQMxGH+s5UBCUqSFr6x/Ss2GLsTmjLQVBBAndV
Q69UozoSnhUo33tBHkDTe209/eLt6nDaaGinfr4UBgqFeSuuIUANIA1FoyKNW4mzjJxmEYkt
Q+pKMCbF0jn/riSnTqPrSBE/kG+Np4G6Yu5SUFc45ZLyM7Pjy1bQMS8hA+cGReA0LUbbI4Bb
/mafEaHuppH0hXyzaehHrukguZcCycnb04C8JjVXb7XN4jfbzkganVk/C94eFt/FXd+42xrG
1m/fFiI6um5ae/RZQwgubCeg08XyEZxo3z4YZgLtuChLsXgFbT+vNJiz+7GNcGrGOHAXnezx
Gv2R8bDtP4srA5cJZAxZbPtCO9oQBWiC5mm0cASMGAEJYLiQJAm+byK+nyJk1k826h1gP4r1
62n1ZVvoR72evnc7GXsx5nEQKUQvRlE7DOyLyEpI0pSbL7sqcgQWZ8ASaFkB7WZfzs2iLM8W
z/vDTy9a7VZfi2c7YauT6bI2YmTXQIAN8HVVBWysi1QDIlU+MWOO3rYZY4m+c7U3varMcCnC
zusDmYQAiRKloQQgVXl32Wk0RhzggFP0jEXoVCBleL4WmAUfk3YGhx8KZ14BDSMFRrAzziyf
OZORY7T6RavGlxGPtZLcXQ5umxdU+iFWgtfUgMNnVn2QQi4R69smR8/Uxlrw8WzppeFZdwlA
JJBfyrvmmdNDYt3uPYwzI3w9XAQitG7iHzQcEdQxYp3KlrczVQZulMz8+gIW0+BZ570fbAbu
BaDZ7i123XuWnHvO3EJSxcqMhLiwHpbxEt+0kPNGYFw3MNeQWt8pvlb4U9/hVeWh75u1WU6u
10YpSa1dTGgEk+xDDPp+vTo8el8Om8evRe/CpOzYuDCpnVsJt6csTMzSuEXGm4cpVveMlwxz
FSWBCyrAKcQ+Ccvc0XyHqjsMOLhG0KLyUXhvEcHm8Pw3Vr22+9WjrvQ3PQSLHF92dEFedRrd
hkbAB41baCRZ+zmnipQosHxS8pYAm6fMrWSlAKpZ1U1eVo3dpc3PACVmGb7EVxaALmlVBwnr
cJs3y5iCZ0ro+pLh/AStvEydGLCJZUflZ7yV6tFkyCNHW7CJiPeIi2GPFEVmVK8HMl9417QL
Y3BIAHM5BYXw8Y1kYAdvZAaAqkurZ86DP6PfTd33UduVVUqU+nIADwHW6zxKLAVHtMuu/f6U
d115Rer7U6uSXE+lOczYLE1Gyq99QYugXlaHY+fFDsiBW/qkQZhzesA3gZo9RC4CFxX2Xz82
fIPl85ThN1juq2Tw/fBsB7oAq9/JmOlMXwyLlSIO70232l+7XnwGv3rRHnFa+fRIHVa747Ys
l4ernzZahJEAVoKt2qekyTD3M7umeXlqaHGgrJd3MXx23fHGpVyt5oGfWwQpA99QeRl1+9Xn
IpwvepHVwG0wkghgkjaS8g06iT6mIvoYbFfHb9762+alukDsbAYNeHe8P5nPqHYfZ0bFu8ba
vVgtoTNMVl0XHYYUWvqYxJB6c19N86GtBx3u6E3upc3F8fnQQRs5aLFiIX6HrcchkS+V36dD
+CJ9aqZ42NFkEnU3Bk7izGaQsWSxdU31xsmVEHv18rLZfa2J+rJIS63W+HKoc7wCHdoS9w3z
io4BY62tDALWbCtyVUp0P/gwxETwSxF8daHh6jmvBBuJb3qIH3VmCCC+3s8aXf1i/eUb+mL7
9H69351Wm13x6EFXlY91W4EMHYeWTIF4dmnwf4fd9Rcjw2/7m+Nf78XuPcWJngN02NIXdHJh
ZGUAMil+RzCPjGvblqogh2m/GvDLReu5xIDC7EGRUj9XtV1PzJB3ZpUpWeimjc9Z/f0RXPNq
uy22ehTvqdRhmNJhv906wpUe2Wd4K5f7LkTcCGHgZfUlrIvJA3dNqRGKltyVXzR8VFJb+zQZ
VRCf0TtYFEBnbF6aNRySEkli51y148nDSdSDuNHmuHZuEP4D0OTt5flczkSMX9frdcwoBR35
ClrRfx3WtAchx0KAmssFJCYA4uzU6owIvll6a5cr6XH10KkuKjhmWPO0vup1hAm6kP8qf44g
r4m85zLXejTe2hgjlg1cqOvXXZkzz8bc3hsg5ItQ36rKKeayZhpeC4zZuPoS7Whgzwu5WNaI
nF9ArSUmYcZcA3crHkCe3kMyZmF0XxnHKQLzdyxbKTt7ACKWYZR16QnEMul2smZi/KdF8O9j
EnFr1LqOZdEs5C/wKk+ydI4IxqwKlQwRzi2nBNSyTOb6Rk95+4YPPKsrY12ttV+CniPk5kPQ
lgZZaSCcDJnpb3tamWzFJcubm0+3186CUSkxHN1c9nvFl8H2946rm46eQcfziHmy/9gb6fkZ
P6h55Xscp0VYfTb+yMiSapDKYilSCZotL8L5YGRVIIh/Nbpa5n4iXM4cUuzo3j5/TuXtxUhe
DqzHqOBVQyGzlOWoGpw6r6VI4svbm8GImN854TIc3Q4GF13KaGDA7GoFCjhXVw7GeDr89MlB
1yPeDoxry2lEry+uDHjpy+H1jfVmX7phwhK/GLDMpR8w0+9ySXNIgJaWXs31G2T3ozsuOfwz
Y/f4PNUpQkeoXf2gwBKEpb2AUNJzokaGilZEfJ1Grbu4ihGR5XXn+W5X5PaCLl02UbEBz+c3
t9OEyWVvWMaGg8GlFS/syZdfzS5+rI4e3x1Ph9dn/UWU47fVAYDQCRNClPO2GGAeQa03L/ir
+TTz/9HaZRF2AYXgswqCmUNiJAmMToXjyPEALaBrmp9VIeS+4YrLD9Ub8GJ1hAhaALjcr/Uy
dBr8cfNY4P8fDseTxsvfiu3Lx83uae9BjgwdlEHPCp/NDawPRkgUcZwcsiaW+ZeUvCPuYCfc
KWAMCjLur8xhJ/q9GRfUTrrLayJYDaYDQKjV4+OX169Pmx+mE6sHMsBdmTdQyWvQ7HhID7YW
CSM1TAnH5Sjzm4EoZX+q3jK0A1Q9e6efL4X3B2jUX//2TquX4t8e9d+DXv/LdRDSBcPpNC2Z
5p8bqWkWXGuozmfkepo6pSDWX0LQ9FBMJvYfaUCqpCTOCX7TzVqbqs3l2Nk4fOvu2CpQLtnQ
W6dZc0I+hh/nZizTxGhbp0GdaXTWsuj8LQyu6br2VH9Tx55GFsgpdW2+5iYJ6SyIm0++SsoD
T3KWJMNrF0NiFZqqtKs09pePNK17Q1oKTntT9v+PsWvpjttG1n9Fy3sXvuH7sbgLNsnupkU2
aQKtprzpo8jKxGcUycdWMs6/HxQAkngUqCxsSfUV8SwUCkChcLyOVYHPGDPDkeV8cdWqArfp
0sqIKbRzYbW1MV4W5UfVlgGX4qN2uR8ozJbb9eDSBV6OmiHBQO5xjNcB4KGzVzrlutS8+c/X
t98Z+vKB7Pc3L0wR/vV08xUuJf728Pik7fpCasWxbBZ1gHscAEdZ32GqkGOf+rH5ZFSZrUz1
GrPCLOOFlevRLPDjnz/eXv+4YSpDK6ySwq5T9QnoWjQhzmZVs7qUVqMN76Yh2Jr+w+vL898m
q+qyAt2yqlTFMmYA7C8j7audRf328Pz868Pjv29+uXl++tfD49/Ifo2if2fd2GmzUCeCCrA5
pC7RPQW2MGxObGmjTMIV1+WeRfFtis0UxYlG41fS+cmYSuWnt0ognN18+U/723YHkXRpESNH
CTofV8lwotIQap5Cz+1VdbObM4Yp1mxnqiH+5V5f98xccpscPI4O9chd9vAb45BI08NNO6KW
DlxkwI2VUO7BL/SHmssZgmU1Q40pYwZzHyvjE3IqBrZCx3cxGU6PDd/MvmvAfdYorsroOjtn
0GVsmKTpncnI9Y7of49mfbjXpyvDrgGdiOcIQmek9bkee5wZkUaVev3UOgBVWWvAkZjNvGJN
j+lHLiIQwUUTrbORAw/hZXQ5Pxx2tdG+LdjKB8+PTS2G3+BC5D/299eRTfr8yi5xBHhZv9jX
2K4WCNiloaXetBDWhcsEMWq3+jJK6nzpWXPQoSXjNfZ4gAYuo/rAA+rAp2DE4azvB/Anlnko
mqgoWUl6VmtxlKwU8tKcqn2hq+7Tna2tm5dvf745zeTmpEW/43+ylaPq1Sxo+z1s+bTa/pBA
RBSwW93RgyNdAb5vElnO/54hGNMyXWrrGPlZfya1sZOiMXzs7xls5lbfCaKRWn1naGClVVyb
++JLJq27vlDDzcyUa1FpWz8KfYjjAL9ypzNlGebwp7PkWM70doeV6BP1vdhDCwVQ+k6ZPtHA
T7A7fgsHHEXfwvFxksVoNu0tK9l2LuaFXgy/QqCUGqsiLYskUs1yFckiP0MQIYII0HZZGIQO
IAzRGnbFlIZxvlWDriT4p8PoB/7Wl6f6QtUJdgH6oT6B0iEIRoqOnNXV3tqUfVvtG6Y47KAj
69e0vxQXfXsW4TqfjI610+mGGilD84kkwYRm3TOlEG3nS7vgSvtzeTRmDYTz0kZe+I6ET/Rd
8SyLwfenaauqu7LDpIyC86u6na5oMkWbw59sEggQElutqXdMVvruvsLIbN5q2M9BPxBeYGZX
FgPFvcARrivRnYZWlvJ+kIcCSC7ci4/ff93MhhkTbDrVb8vbqCgDfm62lhjuAreO/VWlYFxu
Gsd5+MK2h2inkPd2K2FtQ5ipoboYCmoxDG3NMzcRJjhxnkYmubwv1D0JQYQW0fcmdbrEjAot
6HvteEemaSowy0/gxtmqqO4iKWjeK2xsbJvzNoH4ker3M+3KFiJMptFirzwhPoJXhgqz/BS4
QfMu+92ItcfCcNgHioG3kkc13qpGvnYocoZb411P0WLwe+QFugxeeEhT1WD66S52C0y77RZo
+D4NUjIByG1tBxioIW0W8AJxtNRISgvSsaVl2+pH62tFwFu+HzFp0Xl2hR44bUXBkbvGVl1r
c1yaiv2BlO3zsT4dzwWCVLscze5QdHWJupav2Z3HXX8Yi/2EpFuQ2PN9NGkwaM/oBc6FZRr0
cGgawKzz7XHBmcCs38pimMYSzWJPmiLBz6vEwOa3cDGxlTAoRFKOda3YNwoR1vQQJ7BRbRwV
z7KhyxL1LE9FiyrN0nwLM5WWzoENGI1j9L3A30yDdnV77SZ8vtE4z8zAbaaywcRWZdydA9/z
Q7xWHAwcVQavErig2pSnLORGMVqS8j4raVf4EW432awH38cWCDojpWSwvJMQFtaY/yityFxv
IxzaTKkygJPDoDqCquCx6AZybFyJ1zVtHMihaAuHKArMMg40lqmEeA84uD9/bCg5uxrv0PeV
44qdVjU2R9S4f7zK1rQNEyPM3FW5SELu08THy3s4nz67GvCW7gM/SB2oMS3oGLZIVDkuBYTJ
umSe5yiXYNgYsWwp5/uZh63INLaSKW1XZ3Ud8f3IgdXtHsJMNoOLYbYS8a7ppuTcXil5b5Q0
p3pqHBLe3aZ+4FC49amTUcHxLqjodU/jycOcAFRG/vso47ShSfHfmcXyrjhS8OYNw3j6B9UW
KtTR9xXN0mlyq4ULW+H7k6u8EDgMnGl70lBsD9mqW0MDl55mFeG6wNFBDA48b9pQcYIjcrYt
h9N3m3bsro4rVdpIb9q6wA1snY38A/VNqK+ZizrW7aljqjf2EjRoypLY3RYDSWIvfU+dfa5p
EgSO/vpsWMfabNO3zW5srnf72KEPxv7YyanZkX7zicSTY+r4DBvq6laV3ELQ7ngK2mwOXfvT
ba3tmiv4DDutMmYa+dFkfy3oji6WLNzeKdmSz1RiAt8xuyLG7Qq5KRtOHmsqSs3Lx3rdiylN
Wae+U5GuK7JI3/sUAN9O3LGp0HEXTOGqaojNhxllCtMdE4ACaTDa8DtitMZjti67yWw5c5Kc
W4wT/Zhv4PxSflegyklw3NcFbNaaYlN2vpfbxR/rA8Rc60dmEsEa3pnsWNPzdbiMot/M1Pn4
C/xM4zBbahoCJpdDfbtRP7mbt6bjXldITke/MDjxIglvZHjmP7ZavNxncRo5yzFcOilmZqMA
MpdOb8vbzIuhimIA27I29vDMBzhX9sZaXzBVRRpknuwyx6sAkjH34tgeQghbEr7LJubO60an
FNXUhpGlxyRZn5UF1HSENfHZIn8iQZIj/Vp2RYgHJJQfVnUB613Sst92hdUp1XgXgPaUbYfC
SbwNpy6YUNgI9hfVLMGxayJrXcSJhp7VQdJh+yMc2qt+szPFtDY4Paik16PJ7/sWJTApoWeV
eB9iQ0FChc0ea66m/Pjt+PD9C7/n2/zS35gOaHoVEEdxg4P/eW0yL9J9eTl5KEb89ELAbE4X
+/HGZ2OBultxTHoDTwPR9/IFKt1IEYSROj2gufhgLNF0hh1CFSdkKv1stAZsUxkBlSXleiJx
nCH0VnPXxfpmibOBHSaLE9zfH74/PL49fceu6lKK6xSxThZBhRxb1jzCMzoxD4N53stG3lW8
COGY74duB5k1EJgaUt0b15El3/FiRZdfSOJxhqbX7j+s6K6IQh8DFm/ApTQrVpZ0dDizrExT
MxxrdJea1UiUZnWFqO9ujaCwEuHhzJQxXlys9xcgaiinw73bIE5UFwb2b8Ad7tigaO+tTpzD
4lrCoegI2azjmVDu2WmHBxAn9kxP2u4L2mwSQPT8YqzgbT1NMIJy634kh/mDAajLAUO78xrT
+s/nt6/fnp9+sspAkfglQSSUP3xWjDsxYFnqbVufDqjJJtKfT120BASd/b/xXUvLKPQSvRkA
GMoijyMfS1NA2BsAC0dzYkLZ2qkya1EnVrXOb2XWtVM5tBUqGJutqeYiI1joLxIuh106qWgP
vRZWfyayas/dCJktig5u9a9duEobf1/q5le48y/vr/7PH68/3p7/vnn649enL1+evtz8Irk+
vL58AE/2/9Vk81pCOAH9PI2T1cC6ohHhORgeUcM0EgyYtAX+lprOZl+EBIa6q+8CnYSJHZfZ
+aHGjzxcgEtUBmP89YanAtBYs6OOpoCNt6FLuEnT0bo0PxCTr6Ud6p9Mu7w8PEPH/cJkgvXZ
w5eHb1zlWN490FRND8elZ1N/WFfOeCH7XU/358+frz1p9jpGm9O9PDXjBenffheyLEuhSI96
g8Upf1oLQF8b4t7yGLn8Rg2GwE3Bs+GZJ0QDfD7Np40sBhgl+Kcu1a6q5SU9NTRIWZ0IUNaY
B/MkddHJq1VwVyoIdkzdDA3nOJbaeS4ZMOc6GflknVLNFwMXe8KO9jzQ4ebx+fXx36Z+qF94
UK3heA9vhIJH26mm8AwsXKPnNgKhRQfX+G/eXm/gkg+TCyaSX3hQDCanPNUf/6cFnLcyW0wd
UxvPAWQkcBVPya04o4s5y+YHlTwHLNa/gN/wLASgmBc8FqfIG7PMZKkKEqaB/ibOjMBGAOZI
NTPw5WigFw/oXTkEIfEyfeY3USxLwvqiRaP4zAyTH6tHjAuddvsJS1FsTzm8/WYmvtDfyLUv
61aNT70k3pRjD0d5VyJVtLi2//Ty9OPhx823ry+Pb9+fMdXiYrFyADOrsHMuSZS2fuwAMheQ
K70FJdZChEoCv0fNPY/FVWvlKZl+b8yT8yfN+El/1lZIn81svt0jLC9jjbAQr3fY2Q+HrVc5
OZU7/3mrHSguoP/x8O0bMwO4Y6M10fDv0miajKhKIsIGXyeaxTWDFIjNyQtbDFq12FP44fm4
/Kk1Qa9yaHwj0pzH9lIZJHA6K++sltllCUknk1qfPmvHf6KPiq6Iq4CJTr87m1izb/Qb5JLc
YybC3OWlvtHIyZeyysPI+ZWwIayvCrj3YT4To4eJw7p7sRc59ennNzYb2GIgnX5NIRBU4wll
gZwGg3S4sI40u0SIpYdRA6tLBBXJjS8IQrtJJB2+cEsZZ0qx/TgJw+6pWRY6NGWQ+Z6684A0
ohhr+8puXKPvbMdrDR6bz70eW1ccDlSpFweYK/YM+1lgdtquYtX1u4utWMReqyu1dgjzKDSH
1JClSMML5exKaZ55kP6F8xIrtbGMaZyFzlGkn7nJ/oHjtCyx0uJAluBeCCtHvqWXthx2ZwbY
uncVeDnBNYh5ru1kIXIjbiGQHSZP8isE5fDd1+9vfzLLbUPXF4cDWx/r7wqKnulLEYh7yQVN
bf6Gx+Xjmfof/vNVrhC6hx9vWpYXX5rI14oEUa5Ig45kAY74lw4D9KlgpZNDo1YAKZlaYvL8
8NeTXli5QjnWo56voBNtR20hQwW82AVkToBHpdtpcfE1DvXIXv80cQCB44vMWbzQcwG+C9Au
HhjQtRyxwzmdK3MlEHv4kFV50gwbcjqHo+hZ7UUuxE8RwZECstiS/E0gCC+jrV0VslxO4Na2
wuZ8Nc5k4u9dF6PjXXmFuaVlkMfv59zRJAwwLasyLcetih2tweLdHkcbCIPn3ZIINkHqdedQ
yT3W/BY9vMC7FkR+hmIQcqbDIZEzBM9u7+2CC7r7fSiV6XjRHqwfqkLg2iwkjdqiKq+7gjLV
hLkGyINK0ABn7Y6EBHiyuK8LhH61YAnKDBGPVNhBhpu0YIl4qr/c/El5CTxfuzo1IzCuEnw2
VFnQwakx+K7UM+zN85mBqHdf52oI4pLYfE+YkTdS2n0K0kl1cDEAfdVugsfqkxus6PXMxIF1
DkiiXV5mevm65bPUnyNIqWdvBFPAgM5s8v25bq+H4ozu2s+Jgx9hyiwVu+ASCRxIoHugzdWY
5QrJcmZpyAAJ203A0s1yL8SS3TK4Zh6wRIN0I2Nzq3jNl8vGxpctDZPYx76F0ws/CbBdpKVn
eWiAntfPjxL1+r5S89nwxdokz7CsmWRFfrzV0pwjR1IFIIhTHEjD2JFd/G52cZZ7ro9zdPyr
HMmE6CPS7cIoRYVCeOxgXT6LKhd/Mf9FiEqbLxliw26ksRdik+Gc/UjzKEab6lwS3/Pw+Xap
r71yQ3jyPI/xa4bjKaYJeCs5FL0xE/E/r3dNZZLkxrrYoRLx3kT0EmuFsAQmq9JIdRvW6Jqk
rkgHNxBQhwSVI8YSBSBxAbkDUA1UFfDTFAXyIMJCsFU0nXwHELkBNHMGJAHeOgxy3G/WebCV
+cJxpL6HJs+sTmzgrXjJluJYkSeIG3nir0mM6vsK65dDrb1QP9PpNCDpley/ooH3IsbejQ7k
bIP8iJ/W6pW0BSIJFm4PQuMFPtYezj2OmWGfxmEaEzvNg+rJunBTtrg800IEYLByO7Sxn6Ev
bCgcgUc6JDtmUxUoOUCo4sjzZCPH5pj4IdJEDeyRSi1hlftjGWEm1wwzrTP6AdbwPNjNoUYA
roSRIS4AZFxKQDe6NDDHCsABpIn4VB2jMgFQ4OMRBTWeYKtROIejhlGQ4GVlADJWwFQIkCYB
euIlSB4c8RF9yIEkw4EczyP00xBVJhB6MdnU5JwjzJ0fR/i0qPGg1q7G4S43JhJdOYQepuJo
aTjkL8BAgjBL/O2yjikbupiJsPRvl4RIr3dpiEpht6nhGZw6PsM2gFc4wySPrSJRaoxnkWFW
1gqjA7HL0fmO0bfbLI+DEO0VDkVb0ic4kOFxoqXYuWuItnWx4CVl61NEawCQe4i5cxrKLlUN
1kU3wnlBrkjboLv4LHyd8XyHaqgESfKOQcB4NsVlx1Z/w77GMmh23bXc7wfcY3HhOpHhzJZr
A0GfhFjYxjAOsMHFgMxLkJZrxoHERhDeBSNtkvkhfiVo7eUg9t5pID4NbA8MWoaZ71KlaMmF
LvVwhR14KTbNCiTGv2EKCx9xgEWR426rwpQlaCCehWNgjYBUceiSNIkoMhCGqWbzCFKPT3FE
PvpeViCDhKnLyIsCHInDJEXmpXNZ5drVRBUIMGCqhtrHMvncshIjH8DtBdQmIjuqxU2dycyG
RnuDAZuTHsPDn44Py60P6670Iw/RxAwIfAeQwEYcmltHyijt/HzLSiGUElQcSdclCVr9oir9
IKsyf0vUioqk4qzR/p6VOQu2J9PmVOAeNSrDNKE641SEwWb/0DJFRjM9dmWMmjm0G3xvqxE5
A9I7nI62AUMi9LquyoCvWBgS++Fm612yME1DbHta5cj8CksfoNzH7xgoHAGy1OMAasxwZNui
ZiwtU3/o81E6T6K/BrGAfCsc+ZrP9IXmzStJ/HW+hjgiC81MdVePh/pU3i8nECKi4LUj/+/Z
afJVFL4XLzkcz9bMMATw4w/BQ8RJx0VXyTo/zHjoIRBzPVwvDUGv+SL8e1hg82fOsJZROeFS
hohespG0lSSCL0XEcgSGXXE68P/eyWgtkZ1R3Z2X9zetTMB1CW3R2Qlh5sRuJnAvPkWcJF09
wrHAS0HLY9UfbIpxUXohn/pLcd+rcQwXSFwHERGj6xPISIVwQYg17rQJiXgWPDuW8e29y8Pb
4+9fXv91M3x/evv6x9Prn283h9e/nr6/vGqH8/PHw1jLlKEfkMx1BjY4tXHnYjv1PRYvxsU+
wKME25mr8juz6zV2hUsk/Z4i3aaRlZzU6slt3IXNIURxjKQvpcsGhDvISjacw+YS8ZtlcOu6
LFr8VXDwYfOSfKt08jjRLoS8JWYDn5tmhKNxG5Hef1hVLwhx3sLGajpfjd0oOWwEhNOEfr6M
7Y3v+XVgpNflBUgbyX7+/AnRGVZKBxFxAl8SZ9+cD78+/Hj6sopd+fD9i/rUKdkNJZIv2bHZ
hpCGjXGNqrPIJzl1J5cdPIqrfLyKZ9nZT7TySyu//fnyyF8tdD5Vtkee6WK0oqRZHsVo+DWA
SZiqG+AzTbXboYFnjzeDs6BBlnqGouQIv7K/b+up7DurTBw8tmXlCKy3r0QAOw+NjshhxSlO
TZmfsWI0I8DdvrIckleazbs6KWuF5OQQW9YvaIZ/lGN7Ziuqe7FD+4P2CXGXGviMa63AEUVh
YYj1Wi1e71ZSCbblI0Hj3JtT2xNmfgN0KGgNFxXm/XjtO7acCuU5vbNmbE2cBNhKA8BjkzAr
3AiGyRZxbEYhTRnqNJaL5tAKCdgxQ4F6W3fGFTIFFOEurDYQZJcsKA4ceu3gkDlOse06CRue
lyvV7gZBz/CdlpUhxxcnC0MWbTJkuSMEzIIH+EJiwfON6prH55xMkxCNFjyDeWp9Up/2gb/r
3HJ118CzaHB/05EwTDhmskO5j9ngcI0OcQitd5Z0hjWIt5nqTMhJYnrViaQuEeVKmihNJlTd
ky5Gl60cu73PmLBpA77YTbHnuW5q8a+kt654UoJ2Xx+/vz49Pz2+fX99+fr444bjN80cYBsx
14BhCY41Pw7yzxPSCjM74Cs0LZBTURmae/GC1poJnE8y/DRfJtl2Zyc8FG2HPjwDLg6+F6sh
d7hfs7pBNwcOMiqB+D+vdOdsMftUWC1i+3krQJy4B+gcV2UrwyzBSp/7lkKSdGteMpmYOg3R
2GjSrLSHwIwU50oLdyVjsGBD49L6QRpuiXrbhXFoyQr9L2lX1tw4jqT/imIeNrojtmckUtQx
E/NAkZTENq8iKFmuF4XaZrkUJVsOWY7p2l+/mQAPHAm5N/bJVn6JgzgzgURm4HqzuX3rrb6k
uxtrbpIH68xf+eTLQhRPurcCJtEiiMjR1/iXpd5IvgxpaWaHcKN1++rNYVvXAzgeDvVSVMv4
nmY47m0Qb3hDSOls6uV1kbu5wpcRux2NoEZnS6MjjbqgE9Ol/hHiSY+8ZN2Uw3stxTC37R0e
afFSemAZ7yLYkfKkUu7iewZ057DxEx6Ga5NGZO545MJPXG5ygSCyUuavAjWCDQ1Nhso226Oo
Y8wsa4rEFXouObgkFqFPWErhqsrt9MYLUAnjasDN5MZYUqCRdlyugaSqIvMYCos0MFrhnMhc
COmftC2K5ZYTe4XJIX2qaiwjcoj6med6sgahYbMZOXJUzVdy/sUldzuy9Vwyv5glc3dIVgMv
I53pyKcwFAOmZHEcsYwZbqN6u1+7jZZE6PZKxJZiKRPAyZTeT3ou1Bu8GeUuU+FplQc6B65E
fJbFbDKeUx/BoQnZR1yMlyOfatDcMo+E9uF88lVBMYJqW3osLbzx6JMMitnMoz8JkMnOlvGX
6dzy+FriAmXkkzWKs5DDQrznsCEeuS6Z2k+P4UPJscUvosS1nO1I72Yyy+ZrNKJ3hmILE58e
BhyiVwUOzWlIfibWk7+gh93GtwINoifVrWaj0bOUPisWUVk+FLHmSxtdatz8fEODkyBVj5MA
XZuTIBBOSHo1nqkXxTKmWzeTTOmWfJPaszAnLfwhuQ4ixOi1n3npbDqZklCvU5pYsgK5lB42
hhwmQZDjcOLTDQHgzCGfWms804zKG+0bRhOXrK6kvBEFI+rQpxAqkzek57Cp9+nYbGLFRq5l
vbthVK8xWVc26v2syST0LVI2VX2F9ICuHCjIeGjZl4QOcLMyfLon/iJeSKftZWA6PESnLtS1
VRKroQcWxZLT+EMzi6wVtE5bKcWfo+jojSkV6l219uQYJZydtw6VHgVqbLuVbjCLk8AYt8So
jQ/dE8soLP2KOqnCK+CqjPz0qxJDDUpZ5WWRbFZKVA5O3/iyhgqkqgIm2SU2fG0bVk5hFH4m
ZM6WWO0UGlr/aCTdr31HwkhAGUvjSvHwg3BcagNgt8h3+3BLHfLhZ+TKC8I0CmN/H0QBfyCY
W95qCi6CQ4QrvRzevuN5FuGlLSTCm/pAk30YNtqmTOb05eXwUg/++Pj2rb40V6OKX4KlFjGj
yYdMxtMtDo8/Tsfn79fBfw2SILTG7ANsHyQ+Y80Q7xscEdPzFw6BhDvQpFP1+F0VOp5LIeZJ
TI/BQCE6s8f56nAvbt6J5FYrlJ7FuOtSIJAR7dCUhMznm1IyU+dV2mHiDqnLO41nTrZiMfM8
stACvSCqTox7sN3Tb5ZqnjxKn9ReKhKZW2LySZXeQtNPk4LKeBHCDj2lM/bLYBdklKNgKe9m
UDRz47MZ0PIZU7rNmeWbTLXRykJjgq/j0JxUazVIK/zs38fC2pytKipIGLDBJiAn3GDuJKPk
V0gc3b/Vj8fDiVfHuD1Gfn/cBE2TaUGw0eKLCXIpu/vqSPvlUv8qHqLMUkOOqSs2J7MNtcdy
aAP7VqKWvIiSuzgzWjOq8mJPvkXncLxaYACUpZpXsEYVQafF8OtBL6B5AWXJP8g3K9kVNNJS
Hy0/zIz4fmLLp3BGI8dIAq1QxejFYjH0LFbHnE9E07PiMJpWeVZqJmkKS5QyeyvqYVUEDcQk
aoUWYK62SfRV8Vstxm0KkkWoEZeqM0dOS/Iyzq1jZZ0nVSQJI+I3MUS38dZPQsqXHy+lmsxc
rSehzsSsuHuIVMIm4B6s9PLu/aRSram06kT3LM9i+saEV+lBBO+21DhGwx61JnGlEX73NR/2
SKzu42zt27K9izJ0aqf44kd6ErRP2mViFOqELN/meonYPpaAiGLGQPNpUS0FPalKvR6p/7AE
gUPrFC4Gr3JjmHKHd2gyZm1lELlhPSYDQXAYw1oToyCTAzkJQhmvVBLIjdGdXiPYk9E4EQY1
HRSF8zSBdG4wVH7ykNG3VZwBFjPc66w4hscscfjZlw3geeCGuRaFhfOUcerbq1FGUEho2xjK
PAj8Sm0zWGzV6RwT8Wg5UVus8bctYh3nx2exGMDCUhlWRbIP64YUJaiKyPoeBzYZKFAasdQc
guIMxrMnn8V0nAieU+qX1e/5A2ZnqRjsAMaEgoWFwefYUqxhAmvfUq3RFbbuLVWmGrvkBqWQ
fcFcjewsMdK8SuShsTRSHDcqsVL1XQxj21JxzLdp2C5NS7NvT18fQhBL9HVCmKPv15uFXoMG
CeDL8bCR/7IJIkr4XL4ewFbtNC8CWiMHQuTqPIKRYiGeYRKiYUEKeQ1z63JS8icm5937n6YK
5M6ucUXS/AwLWhMBTs5ez0lP1J3BtO79CV6seL4OYpTC9lEG0g86NpCfa1McqlPLjiOJqyqJ
GiYVb1R0lQjDUXG1gDTYrfbqKo3UTVLEe+UtoEifZdqtFpK5de/aZ/t1ECqIxpZlsH4HEcbf
lo6MhKHn8f2xPp0Or/X545334/kN75oVNR8zaU2ni6hkMaMCYSLXEkpAc2O+1iorFc/jIfPR
rjCNMxBkFZUCW7aiTHAbBONnhpugSqBsIuE+jBl/HRHtYPHI8MHFhgor0jQ84y3P/XCwhdld
6IId9AHY+ELxqOPfjgyLruwn1fn9OgjOr9fL+XTCAw9d0eE9OJnuhsOmo5Ta73BArS27IzJE
BIP89TsMx7UujEHAveiMJjsTWEKLQRoTyJuiaOq+KAKcoIvoNp7cxi0g04dtn8w47uEzZeQ6
Zl1ZMhuNqGbuAGgWasVHnnLmTybefGpmS1YQidyTVuMqrBsRzSOC4HR4fzf1XkzahPxQ87sP
U73WlWpMKJyvwD72zwH/pioHOTMaPNVvsPK9D86vAxawePDHx3WwSO540BEWDl4OP1uf3ofT
+3nwRz14reun+ulfA/TaLee0rk9vg2/ny+DlfKkHx9dvZ7XeDZ/W5oKom5rIEGrQiiTVEPhU
K1JLfn7lL/2F0ZMNvAR5htb6ZK6YhY567C+j8L8lYobMxcKwHNLxynQ20m2IzPT7BmOy5hX9
yX7ib0KfxvIsMmLRyfidX6aUSi/zNMr5Hlo2WNDFRBk0y2LieEajbXzTezwO9/jl8Hx8faai
4vDlMgxm5GUvB1El0hQTvl6iS/1bB+I8MZ+FIekyku8397I5dkvheyxBXufm1sKBlR+uInst
OE+IllJlrh47Cf/6p8MVZtTLYHX6aA1MB4wSwnhGsH6yOC3UNxoNSp2O8sZaxwVGBNOEhoYK
onNgNG+LpaTjGYUlTnfW5M1532dZVNGq1GrHXbzJh9oSkd7KOAB9xJtZr1HLIPrK6AmS195n
OKqxf+jFe8PYlJ/Ud7yqFEUmitJYdsrTkGS3VVzyCDeVfMrJJ2a0ZZG2ribRKq90p34csMoJ
7dQPHqbBxDV69IE/UrSkjUPtQIRLEVUYt6dx8ifgASuIY6iw9win7tNlzP3jC+9l2idpXY7X
bUHEIwsqpo28Pvm9X5axTsbNWGviNboK5Zv0Mt5Vm5IYOHhKv6RuORF+gCRaf0Rf+dfvtN4E
gRP/Ot5oZ2xZawZSL/zjeqQvGJllPJE9ifCGibO7PTQmurOLzCUK2jJnWkTDbmAW33++Hx9B
HUwOP6k4MVwWWUv9lOWFkEqDKN6q9RDxQRXdpPLX21xVODqSmKuLh1ZzMCe0O1Q01xv1VarB
Z7hWNTHrCQGkQbb47EIfwHKq/ZLRCTG6Eb8AcQi03TOzDUbFXS5BNwK+vvXry/Hte32B7+n1
A7Xxlyzho0abWjhWhtri2Ertm1BTWlelSWtFWZVa7Hxnqg3ndEttEEh17ToJywpMxUVz+/aM
NaAtGxBeQPpNaNs7sGG+aB0GApDjqHaTEnkfpvTRltRhZmgleYfdpOlDpzvIo5LsR3WOLrqA
2lqvoW9xRgvOS2PULfdVYCgB4t8lLXytDk/P9XXwdqkfzy9vZ3xV+nh+/XZ8/rgcSEUej7A+
aaYldfonxqUIqmNUu6ObkUX4SLA2QdMvFe4HxtJGhkbUOLS7SAXFE0NKeJO94H/afN3C9lBE
crR1/Am9VSjd1VED6mpHoGJyO2aydegy5joWg88ma244NaMPuQULQzOZkeZgtxsv1c+3+rdA
jkr3j7CWY9Sx/xyvj98pSxKRvQiF5/KP8FzH2rL/14L0GvonHu7sWg/S8xPx+FjUJiwwyozq
q1sg2TZGk5kepWpnKURZSUFA3LP7uFI1r9T2zC9K0XUIdbCPx294+NTXlB9FcYsVirbXrpYk
hF8EBXmSKwIgZ1iUKNBkKOqt71E6yFaRaSAArGaT8vSm3Qgn+341cmTrWUHNYCR7agRjATB3
Qr8AFzD6J3K1zBZBOnHlpxA91dOp3FhHrw0nOkZdhGGPrSpoyiK7sO6Ic0dvA6QORzpVN6Hm
RBFVxqxLQ7eZpHAe9aBXlIwvCscE0TNqXnhD1QdSS/Z2u+Ygmhy4DRtaGtlxXn3Sw3MHT1yz
9OZ5Ft7fkTdLIrFshM0p8sMmbZCHzoz0viS+onI91eWQGHRmAB2VoQp8NJe9wZAE3nxEvroR
Q4F4JN0NQe9Pe8ZolTYhfXJxOGbuaJm4o7k+9hpAeL3SJjY/x/vjdHz98cvoV77olasFx6GU
D4z6Ql0WDX7pL+1+1ZaGBaoieifpz2NFQyQ7JYoqJ+JjMY0kHr0a9yP9HJwaTdmaTNvaiq1S
dzTu1PPl6fD+nUcvrM4X2G7sC19ZzTz+SKJrx+pyfH42GZu7A2ZWrblU4PGTbfVrmXJYopVz
QAUFBfrOAqVVaC15HflltYh86n5GYezs06xZBcXms0x8EPq2cfVgzePWKtd9aXOx1F+qHN+u
GHnyfXAV7d+P16y+fjvilt0IaYNfsJuuhwvIcL/KooraHWi4G0fZp40S+KninUMBC9W9kIah
GZ0+gLtmat4Ld+NqgZPSqO7CYg/gB0GEbltAdeFN3VrWHX58vGE7vJ9P9eD9ra4fv8vGvBaO
Ntco9NFWPMf7OBaUG0mF55Bxj1lWwV4JeIgE9E04mY1mJqJJNUhaB1UOqwVJbC12/3a5Pg7/
JjMAWOXrQE3VELVUvQ12FZjBWBSUh3oxpCJABsfWGYA07TEFKCLLzk2WkhdHtMjaalXKLT+6
McrDi20sUw5xqaW7ES1DYVHdfLSQv1h4XyNmecXTMUX5V/p6o2fZzW7WgXgF2yAhG7lD8q2I
xDAd25JOx+g66XbyydRRhwfS1w/pzJN9K7cAOoWaKy+EesB4J9hDhpcTjUV/ltWSmRe4VP1i
lowcKoUAHGsS+cy4RXZA96iKc0/DZMAmhWNINRRHXCtiBWZUo49H1Yxqc05XXWa1mPk0ugW+
uM4d9bW3YsB0PLeC+ylMtvh+XddaQw7KHIrH9RZgoJHMZdf9LbAE4cUl2qmE+ae6VpAQb2Z5
hi0ltvjHaVmiFBQ5WvLtctkCC/mWXmJwyTWgxKeXtxch5qW38RBWkZmxgmI8bHUFlRdmB7a4
DK3t4m7fBH4UBv/CyhsyUOsokVwa7I7igl9pqXlgaQrETH+gRpdNhCsN9Q7R+qmYJkhzZlYG
1kdnRiwZQPfUBxMy4t0a1rjkzrz90k9j1bRcZbjZn5yFcrElMUydGbmoITT+PP/p7C/wkDEs
egZnLF/HdHTNsZlMV+/WuuFb3Y2mlX9r+qTjWUV1FNJdojCke8TakrJ04ozJwbf4MqbV5m7Y
FV6gPNVt6DhoiVXJeG3Z0L8+ZF/SLlrQ+fU3VCY+mW72q+RufOuRo7tFs4L/FIdHXVu0T9X1
75yKy6fusQyrQUq+3J5fkrkmanhUA7fRooivCNHPX2t71yXsqabAyiuHlxr9y7tWJWAPWbCv
do2/V37Kl0VJf0zZ5w4sqziLVFrn2kWkYyqaK68VRBBvGFUr2/1KeM8DAQFM9R5e5ADUF4GE
SKHgGX+Cl8z+RJEDG/+iYjTtw8JWAf76bo3p9+kqpYTFnkP61HteZc3RU0PtCWy5L0S6rj+C
07F+vSqjuOuRkLTBAap6Od33zL70ufFtm/tis5RsMNtKYO7LWLV7YPecTt3ViHy0gQaUfZpv
o32WV/Hyge5LwWaLZNnALEqW+D3qwEFkHfmFhcqVtiiVT+K1z+2G92ZnGBCgyUAim4Wsw/F4
OhsaZ0cNvSfcseFIlrPF7z3Xbod/utOZBmgWn3GKvRvE8V4pHn440ocWfokZ4ilBlMhknJYN
2LtdbshlzrvU65tfAOLQfp+C2u+vaDuWpjn2C3QcTtmiywzKQxQJ4PcLRFrtIzaK3TGGO2/W
axFkvb9yw/DgGEFVQNS4xAhUOP2TRbBfFdpVpw7ixe7OG1mi0vKKlBvLSzNc4RpHuNSBM8Ly
V4nf6MFxYxAXfpLk8ghr6HFWyP642yxSKt8UH6Sn+OIjMh/tb7mlRJxXyUIj6jxa/TgNLT7l
ZhRUfGjEWiv2JFr5gWkgwr0hvp+/XQfrn2/15bft4Pmjfr8qV3+tH7JPWPviV2X0sCAP+Vnl
w3qn+GCGuRupj+DEsUicD96vjVFhtxuLl+uPj/Wpvpxf6qsW01xDBPfr4XR+HlzPg6fj8/F6
OOFpGGRnpL3FJ+fUwn8cf3s6Xmrhlk3Ls13EwmrqjjSfSmp5n+Umsju8HR6B7fWxvvEhXaHT
kcX7DkDTMV2dz4sQmxOvI/wRMPv5ev1evx+VlrTyCNPl+vqf8+UH//6f/1Nf/nsQv7zVT7zg
wPJB3lx3QtMU9Rcza4YND1hZv9aX558DPkRwcMWBJFOF0XTmScJ+Q9C9iNqzEkeI9fv5hLcv
nw66zzi71y/EbNDmlHAP0QoR/uvT5Xx8UsWTtXbeKY1FwS3JFU2mNke1K7ZfFisfAw5I+0IW
w/7OCvkBcspXIrSLyaKsUoMtIxTGKenCmS+HTveKfHV4/1FfKYcVGtJmAHIjSqRQzXgpLcbL
OEpCbs8VSaZt6xSvsXHNYurDG3zc3yBtgMtENbjEpHwTzyJK6ETPUSB0stidyC4aJB/SjW+p
Xo3QHdJNSMNpKiZtS9sXcUE+cUR//EEiXSrBD3wgAHubCB+uMWI0A+hNSTQWkpaWSUfrlUF5
eW/BGweoKtd8rOr8EspPWG9nwGLPlaP4apBnhUZjS6GAjSnPQCqL3L8SEoRBNB1OrNjcsX1r
wJwh+kimn2zLhQsXWlQNAW1805IVQJ0N/oKwRsLKdbxE3wYeSe/dpVLVFN5G9UArqp63DRTf
1+t7VsRZkqu2NGJVO50ffwzY+eNChSXg16/KQyNBgakqP12CajF0v6QIbPw9AtqtwzyqJuOF
vPKTpUpLmh8ni5y6JImhHTbSjZpY1XAHOT4OODgoDs81v/WUngb0y9wnrGo5XHfrg7mU9cv5
Wr9dzo/k6Qv3FAUtE5CbA5FYZPr28v5MnJQUKZOdzeLPfcZ0Sid99+Uo+UlbETo7uY9L00Sf
QY1/YT/fr/XLIH8dBN+Pb7/iHefj8Ru0VKhJjS8gbgGZndUjqHYLJGDhruhyPjw9nl9sCUlc
SDq74h/LS12/Px6go76cL/EXI5P2bGITB0FzGEAdXUSNgXUv+HySt7hE/3u6s1XbwDgYvfJB
lRyvtUAXH8cT3rp3rWraTcSVbB3Pf0KfBep+qaKbBexysGZ+jf497qv01wvndf3ycThBu1s7
hsTlYRXAmmCMqd3xdHz905YnhXaX7X9pNEp6fopCyLKMKC052lVBbw0R/XkFqdAamEgw8zBT
vyt+0BpgyXzYUocGXTUya4gYUtKVD7YbelFlngjBodLLajafur5BZ6mneUttgPYdgfWrkQP6
Bq1LVSeyIL7mJeUXI5a/AwNWC0N8OW1P3QfUq2AJV88lFbp+kCqhaGhp+L9G/A4l0L04ipPI
jWUI7IhdZSVU/CvbWEtpDFZeKsN32R2LI7Ow+94bmtIiADQJSBlDrWe01exnbNp4pzztEndq
d8K/SP3RjJJtAVA8vovfqlP6RRrAaOSGMQlN1T3Bh74zo9Xi0Ked50KHl6EsugnCXCPIlw7S
/YCohCudF97tWDjXfuq1vNsFv9+NhiMy1EfgOvLFcJr607ESXEcQNPf9QFQcJgNhprhOBcLc
80Z6uANB1QlyRJFdAP3iKYSJI1eIVXegEDgqYeE31pH/n1ObboxNh/NRSb24BciZK5ebQJkM
J/t4ic7qQa/xYXOiI6IB59wSesEPYy42+5YgUk3YJ5981YLgbLb31cc2QYDuakeWNCL0ESyZ
Wqoo20ZJXuBhYhUFVU5P4fVOc17fG5xVgTOeUuOeIzOpGzlBvkNDN+CuesuJetuEnEYYV12J
+ovx0L6OzHbI/M2Uvpvkdzdb3OD0o/7OP/M+VmKw9PStVkqPAEANnDbgnJaOhXyH/V/WnqS5
jVzn+/wKV07vVSUz2m0f5kD1InXcm7tbsuxLl2JrYtXEsj9brnl5v/4BZC8ECcozVd8ljgCQ
zRUESCxJ5iv9nB1UlXSGn8hKfnFwMdRdSBBWwn6fUphKLGO0oE0+kjjqR0Vv3K+UBrwOZ8NB
TUCNsrVp6/+nV6Dh6/PhCPKanq8Oz4oiKD0RB0ydWolGGn/5AXKRsZuXiTcxjVQ6+bwroEo8
7p6kl6B6tdUfRqtYwFm4bPgwYQASFdxl7iA78ySYXZCzB39Tjup55YUesToS15R1lp5vZY9R
MFIPNiIqIhSWFjlJCp6X+s/13cUlCYZjdV69Ye8f2jdsvC/0QPZ9PvxCYi02R5MSG4w3M4ru
RY0+pA5bvz7/SdlnW+7v7soyb8t1beqlZgtJBJfKqJDHNSPd3FCrpQureKvWHjk5Oi4+Janb
MUmIPu3wezIhWZEAMr0cc0sGMDPdaAN/X84s8SPPKuDlLIcvJxOSW2c2GuuxwoG1ToeU+04v
aBJo4LGT8xHHzYCbwFenUz0LhWIJviC7/+TAdW8yD+9PTz8b5YdufuU6GazJZZKcKBnLQOHd
GCVekgtii0RJyix/sNqmLP9fd//3vjvc/+xeIf6L/g2+X/6Wx3F7NaAudeQNy/b4/Pqbv387
vu6/veNbjL5WT9IpI63H7dvuSwxku4ez+Pn55exf8J1/n/3RteNNa4de9z8t2cdZPtlDsiW+
/3x9frt/ftnB0LVMU5PGF0M2zHy4EeUIBBR9//Uwui81JrK4LTIl/faLNF+NB85ETM2eVuXw
6t7a7hKFBn0tul8p1QJ0xQG7Mty9V1xzt/1xfNSOkRb6ejwrlFfgYX80BkuEwWQy4O6EUX0e
kJwVDWREWClXvYbUW6Ta8/60f9gff2oz1zYlGY1phlB/WTlEvqWPkqYjOqLvjQZsNH4SvC6J
fOWC0CKrcqTn01G/jVVRrXSSMjofUEtlhJhOWe1gmB1XnAi24BG9lp5227f3193TDqSLdxhI
bWDmSTQkEbPlb9qycJOVF+f6bLUQSneVbGb6gZ+u68hLJqOZXlSHmtwfcbD8Zx8u/7hMZn65
sdZ+A2ePwQ43Jgz9xCApNxQZgtpeUP5XmO+xLuAIf7UZEus/EY+JsR38hg2o3ZuI3C8vSfwC
CbnUZ0SU5+OREbB7OTx3PF4jir0u8BKo5UJ/1knQapf8Vt6ZvcaFXpy8YSiiZlNOj1nkI5EP
6J2WgkHPBwPOAkemeQXFLibcqhNpynh0OWBzHlIS3QBeQob00Ui/dYhdYTsbgrzIyAPN11IM
R0NH8om8GEwd+b3aFro9a6tiSvPKxGtYMxNHgFdgk8BS2bfOBkUSV6WZGI4dU5jlFaw8bgpz
6OtogEidHQ2HevJU/D2hdxjjMbW7hz23Wkelw56+8srxZDhx48750W5HtIIZnrKZkCVGd61A
wDmNhgGgyXTMz9mqnA4vRnywhLWXxo7xVyjd/ngdJFLXNCH6G+g6BiWaDNsdTAwM/5Bl9JQb
KeOk7ffD7qjuhRg+dXVxea6L8Ph7qv8eXF4a3EVdDyZikbqyQYrFeOi40MNiQZUlAcamNSSb
xBtPRxNu8BoeLb/JizVtc0x0ux5AK55eTMZOhHnWtOgigWVrHTcd2a1IxFLAn3Jqusu0Fl/c
+P/S5YZXMRyIXCSVwNWGr00v05zi9z/2B2t+ObYWpV4cpd3Yn2Zx6q67LjIVK5qeicwn5Tdb
R9+zL2hpc3gADeiwM/smI5EUq7z68NpcegnyVE1T+A82J/MBBETppLI9fH//Af9/eX7bS9sw
ZpzkKTOp8+wD1t8EGFam1ujdTW5q/s5HiTrx8nwEiWLP3vxPR+fcPZ5fAkvQb5BBk50QVRf0
2AHJRg0AYGcay8tjU5p2NIhtLAw1tdqOk/xyOPhAd6Cllar3untDqYphTPN8MBsk2iP4PMlH
9FIJf1NZzo+XwEC11wI/L41jh5zizvwKORtfLPLyoaGX5PFQv3ZUv423gzweU6JyOtMlQ/Xb
KASw8bnF5mSTeSgtX00nAyKtLfPRYMYzsbtcgKjHmzRaM9RLvQc0pNN3kn4IEWQz18//2T+h
FoK742H/puwkrZmXstlUFy7iyBeFfPau1/oynw9H1E0uh+3I3UWHaLKpJ1kui1B3Ryo3l6Zw
soEm8CI0luWzj+MRPx6wWfzW8XQcDzamDeQHY/L/awipOPTu6QVvXuimo1xwIDDUX8IlX9Nd
dwLpmdQf3/HmcjAbsvq8RNG5qhJQA/hMqRLF+1BWcCSYso+OMuWy9phget2Js7p9FiYya33T
NZAREA9BokrgAKj06K8IRsP7sCL2+AhuxpWTpgFr57lHqAwC4/C8k+3EZxJHjdVNTNsFgCav
h5Iaiuuz+8f9CxNUvrhGsy1dK61DPWADOloVom59FlqZwKywqy8X3hU1CAVuFVQOU1CFmxde
Ulbz5i2EV6skoTqGF1zUSUVQRX1gFcWGlrdn5fu3N2lj0ne78ZqjQRw1YJ1EeQTHiY6ee0l9
hZneMfAgLYklGje7usqKIkgrHtnU2E+shisjkJPYNaMTiZhmkkAkrsIo2Vwk19g2Rw1JtIGx
Y/qFyHwj6tFFmsh4mg4UjbcoGwVrNqdxLOWXRJ4vszSoEz+ZkesexGZeEGf4DlH4ujcHorrc
sEs3wmyejNo2GpLXcTrp2lhh6FePTTOZ6DsbfsAmJQpCwQRx7g3G272T+kVGU0I0oHoepbCP
YHvwBoO2NbkvOJNIGX+jb6j8aUfXaMD4Xlv6gotOqygKVZm6Lb05O75u7+U5bsewA+bDi+1y
Q9IEaP09pF1ld2WYL0jws8ZbMscRkk9T7NewFAZq8x3eXRLvhzwHCUsutmAZ0asd/I3sy2Vu
VcZRQrgbAtT6pLlVpdoD/08DT+MFHmYE0q2R4PCor1fC9/Ugib01LRw4sPXzJgJviyYuTtLs
X0X0JueQ8iKw4qu0Ujq1i1MvP3uMdyM3DZES1gJFMhDHQDvLRVGyQZoAF2WJnqU02FQjEqmz
AdQbUVXkFGgRGAh0UwuPn8CWqgy8VRFVnFEbkIxruhca0Md1jz+ue2J2Z0JqtlFtdQbGkC8k
7GqF+T8M79Cvc5p6Fn87nUzhe8ncE96SulgHEUwY4EJe9/lqoRrERiL0qhDSWGPXa/6uDkmu
V1nFHWMbY6xIoYLzBEFElkrvvzbWEinU4NDhgs3uhzQ3okjNcq4RXIQlXbHzqmhHwYBws97h
YApACEIOsCiMOF8dTbFK4TCHOb9Vk87ZVUjadrEYVYgSppUbtP4LQYgBnKNQj1MdxWYfw5E1
0RKEUQf5ldGUsPdxi2D3mkGjbQ1aXg3eiQ/LsGdR+jXwupsqo270nUId2ZX0DEeVPV5duxmX
vMlWFKyeo6dFneVse6M4qBEf6YnPEpAJ0Bjq1oEP0QHVK27zpnscGA7MBZ2yUs41y7nCUnmu
6/T+CWf2SOFk4EGuOtFV10DkjtfEMow+rIBy+xneqwrh2oPXYQLchVxBKxBr44ZVeZU2V5gY
JSwpo1YwuuihbwTgkTj9jf8xnfIMBjgWtzUTUdrb3j/qgSbCsuXDFGByfgnEVVByMG3rdx6n
8jvqm/6XIkt+w3zZeHAz53ZUZpcgf7s4/8oPLVT7Hb5udTuYlb+Fovot2OC/aWV8vVskFRnf
pIRyxoCuQyeHEVUX4BATuecYAHsyPtf3n7NwWlkMTYLcke0kurhhh+Jkd5WK+bZ7f3g++4Of
BPQR4tspMSDlxX6hm/9cBQUJFG7cT1RJbv3kmJZCtCy6AS5Xi6CK53oFDajOSYxxUAzCJnct
8WTEP/3otuqWPQCaGBqVKgSHCmPBTpgeSQV+dKkPPu3fni8uppdfhp90dLsi6smYxDkluPMx
FzyPkpxPncUvpty9nkEyos3WMFMnxt1iVwRhg4h7ozVInO3SY88ZmIkTc2KQZpxjqkFy6Sx+
Of6w+KXuPWMUHrkrnnARsmi7zo0OA7PEpVZfOGsdjhxWFiaVa4ZkOBT+q0Pzqy2CO/V0/Jiv
z9G5KQ+e8eBzHnzp6IKjKUNHW4ZGY66y6KIuGNjKHBuMPgTHE5v9uMV7AUZ650p6Acjlq4JT
7juSIhMVSVHZYW6LKI71O6gWsxABDy8CPYFbC448TAHkM4h0FVU2WPY3oim8W1y1Kq6M4FmE
ZlWF/AsGqJyekdm3N5LULwOUTfLu/v0VHy+sMEtXgR6eFn+B8nG9wvRBlj7aJMKESUBCkBQX
vHQyb2riNHElBge+/eHaX4IsHqic24YBkdI3MNROKa+LqyLy+Cws3C2AhWTPdBkFYCkKP0ih
eShAe1l+W2MoHM+MyG6R8boKqBkojJfZqvD4ay+Z39mT1WDOhmUQ56zg3kpU/VDoAbviMvn9
04/t4QEtdj/jPw/Pfx0+/9w+beHX9uFlf/j8tv1jBxXuHz5juN/vuBo+f3v545NaIFe718Pu
x9nj9vVhJx8E+4WiLCB2T8+vP8/2hz2a2O3/u22MhVvpwpNJWVFar9eiUAlRrRDRLBXNZSxB
MCigl6VZSh34ehTMSVu7QwsipM78L5JOamQwx1pYbu5BuSHFFIw0gHdv8cGPUYt2D3HnHGDu
0u4yJCuUsqprRjJAGnW6UDAQAL381oRu9NRhCpRfmxAMzDaDDeZlWrgQuWO7aN7e68+X4/PZ
PWbLfH49e9z9eNFN4xUx6rhCTzlIwCMbHgifBdqk5ZUX5Uv9HtZA2EWWJKeIBrRJC12b72Es
oZ3mq224syXC1firPLepAWjXgBckNimcMGLB1NvAnQW6LMLG7WVDtQiHo4tkFVuIdBXzQPtL
8g8zu6tqCaeBvsMbjBk3nGI7n2SlwL1/+7G///Ln7ufZvVyY31+3L48/dS2unbCSu9hskL69
PgLPY2AsYeGXwl6OCTMUq2IdjKZTGR9ZvUO9Hx/R1OZ+e9w9nAUH2Qk0Qfprf3w8E29vz/d7
ifK3x621yzwvsaeMgXlLOMrFaJBn8S2akTKDLoJFhGFzeSPhpkvBdbQ+MTPwDWCT67Zvc+k/
8vT8oF+vtC2a26PrhXMbVtlr2mMWauDZZePixoJlzDdyrjEb5iMgpNwUwt6T6VIbWGNYMRpd
tbKnBK84u5FaYsKOdqDMUff4IKMtGyORO9vGqx6ZNa2NmlqLsd3b0Z6gwhuPmDlCsP29Dcti
57G4CkZzpiUKw0lh/Xeq4cCPQnt9s586sbITnw1m1CL5IlPM3H2iWARrXT7Jc+NcJD7vW9Tu
o6UYMsUQfPqzQDGazmxWsxTTIXNSLsXYBiYMrAKhZp4tmDbd5FNqLK8WqMwNaO9qQSP99lAj
9Ii5GLKbJrYXj7CcN9tFIpIANDqb93pCRWHjC5WVvU8ROmPa7ge8itOgQ/n3xDJuGC8320GR
8wlaupmaWM2sbjJ2pBp432c1Tc9PL2gU2Pr1mV0LY1E5Yq02HPSOl5sb9AUbSbwrO2F6DdDl
iQV+V1ad4VMB+szz01n6/vRt99q6IVKto1lfaRnVXs6Jbn4xXxghRHUMyzwVRtBYczoOzqQT
kgRQWFV+jVBXCdCKKu/y2TSC9I/9t9ctqA2vz+/H/YE5KuNo7thYiPmQkyKRWoZ2okqLhEd1
UotWA9eWnvB0c4jxkAZvmTjIahgraXiK5FRfnKdx31EiC9lEDka7tAUKjCeINlyeEImL5eg0
LI/RqnC/dHDUX0+tRCCsRBxVGbd2NCxvpGnTndjsSKXMLCNGaOixSqjmvqHwOO6DCR/yXCNW
b3wfUZUiDDZewL1ka1SeB4cf3+QkzhaRVy82savRPYXzURQU6yQJ8MJKXnJhpk69Ng2dr+Zx
Q1Wu5khoH7zo4viH1BbeZLK7t/33gzKWvX/c3f+5P3z/RYugjq82dVWsyubCrSCP1Ta+/P2T
llKqwQebqhC1F+BdVuQZJ0ZLGsB/fFHcfvg14FeYhq2s/gYFMuEa/6ea1T5w/o0xaKucRyk2
Sr5qhy3jjZ0cV11/6NciLaSeg64Kx0Whp6gDPVQUQJIuiDWkMIwC5hHIVxiVW1tmrb0qiF6p
l9/WYSGtJHUNXieJg7TF9uswK/yIO0uht4lM0D1XGfu6ruDFqiBquwfLH84mAhrOKIUth3t1
VK1qWopqBfCzi5hvwWGRB/PbC7qnNAxvntSQiOLGLbQgBYw2u+G9GRGnPPrrXJ/Wua38eJqP
TqftaBamqZ8lWp+ZFtzhuRKlUubq67pT56EBBbmrM4ShUD/g4BOWesJSo4jFkEswR7+5q4mB
o/pdb/QQIA1M2uhS29sGE4mZw+hM4UXBWbr2yGoJq5mpF4Mvc1ugQc+9r1YjjaQUXY/rxZ1u
S68h4juSQ6NHbO4c9JkDrq25dnfrzwvtagqAf5ZZnBFZQofiM4q+TQkOvqjj5np2FFGWmRcB
I1gHMKyFnm0Cb+ajjJgoK5C0GSTWoQgnUQNT+X2V4gNY1aJaGjiZp0Tk8rnDSMwCzY1FEcCS
XAbU+B6mdim/Ja+mkTbsvB0/ovLyFUOCWIzxzHwMUWmWtgiM/pZTbIfKsyymqCKwqP2oCLyq
w/TGW4ATaMfvlPPasepOHO68XcRq5WgLKs7IDsHfp/hRtwBlQkzCHOM7EPlIZVFxjVI1J0ol
eUQyYcKPUE9thxb0BV4uVgVZbbAC2yas/TKzd8YiqDCIcRb6+jItF8b4d5Obo1k8eXToUICR
EyH5nqhg6KJFytCtVOLROoxX5dIwA5PPSX6Q6xHg1ROTFFPgMMYwlF2+kxLOIbIo8M0yXein
ouaGZwgk9EmuFesk9OV1fzj+qZzQnnZv+kOdZrcE4s6VDAHNuyQpvIcBAVkFIkvLTJo3LmIQ
XOLuoePcSXG9ioLq90m3KFQeF7uGibbOb1OBqVidiXd0vBld7DaZZygsB0UBVMSx1zlC3Z3I
/sfuy3H/1MiLb5L0XsFfufFULYCzmzM8CAv4vjJVHg5GWv9wwnPguOjkwdpOFYHw5dsL0Oib
bRmg3xaw3hTWF7vnVINKZUWLZlqJIEmwTIxsHppcaxtJ1QG80gvqcJV6jWlqhH779M5Wp7wJ
xJUMvGrkSu6l8787vr/oEcGbte7vvr1/l1kfosPb8fX9ycw5lQhUt0BRYHPtNA0trU6Wklne
4L9Mx0r5CCYJEvTx4LkyrQkfp102BJKdXC18jSnav8wHtx6Gr8w00YSGQ0TDSn7/tB6Gw4Ge
BFgSXvmcG1nP4+alaMzXo7vAHBKJZYpfeVjqysvW9bzIrgLy8P23ZpFOCVpKBsxkoMmhpfU2
D+tdvb3CJs22QEHFyILUnlxVh3h5TnJqEpbNblKqVUlonkVllhouykzVaKfvXIdF5otK1B2z
J8hsjjbwHFdo9nYs5sZp2QwcnGUxbEJzjX8ExzNQnpwqDvlwNhgMHJSddUMYOmuTNhylp9tZ
NQ2XR+KqJCapJZykfoMKUl/5CZgl14kNkU9WphlShyy4hd5h8wVoVYuSOeYbEpURkKlZIU7M
vYrMLW1CXExAGw00Pg+BadhfIujT7ESU+lgbCBwmKg02pjYKa9+VKuxNVuBNBTCznh34fqP+
mWYt/e6zerE0Up+pd0WkP8ueX94+n2Gcv/cXdRAst4fvVFrBLPPI9DLeE4Pg0aFtFfRp5dAo
ZpV3MYG1JZeFlROJXBQDIic6WU6z3btpmjYM+xWH9dfLFQxlJUqysNVO6lBSJstW1e9DkBR7
e7nuUz2h/BLnIuSi7Uamq/bmGs59OP39bMEe1adnSNkNwgn+8I7Hts58e4MlBk33Ifb3Kghy
ciHWMFDQWpO8Sw6CLdCOjn+9vewPaEAAjXt6P+7+s4P/7I73v/766797/i8deGR1Mn1Tn2+k
k3Qx+WPvpqOb9q8xD+WNqiIFJu1i95IAFVc3pwd1cVUFm8CSPNp0LibcQX5zozDA/rMbUFSW
JkFxUwaJVUy20GAACANthSNlwEoJhM8GQW6zqWb8pN7a5cFkRkO2AzYaurwa9yx9z6xbwdIL
zUK9ZvQPFkVbX1VgvHNgSQb7b6R4Cy6ZsCyk91xKzGg8uErLIPDh+FKXfCdOhSt1qDs44Z9K
OHrYHrdnKBXd4421dvfcDHXESQs5gt2ywsIuId28IiMTZM9wUAJJaymfgGKFEZ4sfzvCJByN
N7/qFTBSaRUZUfnUc663YiU4tRG9lblpAdSORjux7MpCOhmG25K0EKOX4VQwIEFfS1KBhgMt
p5ZKWMe4R0PjA7hw2EFGbHB9yndJNl2aMtcLuWhBsYoyPi4KHT5z4IHVK/2sYDQzQql8HkFk
xos0bkjSLFed0n2PUNzolMTTWOhJvuRpWo0+bHcbqUDt20S62UsT1MI3SDA8iJwLpAQZPdUV
KJXErSmoatGWjqzbo6xY3seY2UhkWGZJT44s+FPhoKl001b3mrMMr8nYxln1NQDtxOqtxt1L
qhQYHZpjvZpsK8NDRI2iGpCIFs1iUzTWDn15/mv3+nJvHPVtD3OvsxW9CYqCjSaPRAqpDw16
lCrZH04eONNmE1ptkGCGAaUg/K+vK9mNGIShv9RfSAaiQVlmRIiUOUU9jHqs1FZVP79estjE
zNUsSYA8zDO2U+G6zc1hCgsYesmhWWxMiph4DVQ1RbRt9MEYFublzD7UW+Fcoua39KhilUiq
WXH0M/Pv263gw1pBchi9EbbvurO9BWRjODxi5gWLYmBtRy6+2oUjDboe2Sp2jxcA1FSh4xRq
hcm8Jzf1QlugVcCIoyL0n5eOpDDT8/sHt29ULi+fv8+v94+n8EDB6AmC7KBgCkdGNyXWCM0y
P9NfYZYRWqxEy+FXs+6NC63Uwx3dWk4vHNZh7PCUXh5YYghK7EPW8+5Ikj8Cll/rN5ccsx+a
wn1/yps3qHUV3lG/wcZwvUKXVjsG8DESDo/ICzHG3mUYaVWbyCM/EIIQDx+RZFEzQ1WQ9oxT
jzBss59cC37PKvqK6Yy3P4zlup8KI4A/2sATq/XZDbCudUlwDViJNA343eXZgeR9GCiVeybW
NetNgSRUydWIGm9X5kJpsMtRisLPwGlu2RtaU7KabUyck84chfb0GVc/6/+bP44tFeyLpOZn
Kx4vdytYARW3UJ5uc9bnfgND98VgXOpqmoLL+pkzqyUJBcEixRENMwnX2+m5VzsLPJUFp8Ib
NWHAEFDJtscJn7dEyXYZeGx1z7MjmMAyy7QHSk7qTLzjazOy4DikyrsoRQ+KNR271Te8/5iJ
eA6c76rHaQDRx6iCaS0NIu33gYH91LLAm1Ex+Vchcurcyb4/b9bar8reZE7OV2xM+wcpuV99
rnsBAA==

--k+w/mQv8wyuph6w0--
