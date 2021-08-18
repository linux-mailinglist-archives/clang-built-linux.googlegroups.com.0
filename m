Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPOD6OEAMGQEYR5J62I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id C79483F01AA
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 12:32:30 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id be10-20020a056808218ab02902671f63963esf1020547oib.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 03:32:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629282749; cv=pass;
        d=google.com; s=arc-20160816;
        b=AV7bsr9YzQnTbxvzcSRaQFF/JkmCtvFperkAitnm2nddjMyjoc5i/wSXa0fcr3SG+e
         lrngtomwQjZZcTVWS6vJuQn5zq1vjVw2TQ7bqZ0SonvECvfW5WcO18CzY/ifgtYe4GLL
         Ms6o7ygin0kLWWmpyqujmVm8lK57+GPfhRy34f50M4Ov9GEaLkObofoIZDYTTJ7wV9R3
         CpQup4z6VQu6Ybv93PmrWLU9D8uBAy8om8UV6/8QZVSWq+xjoZzG1hjjYL+t8klhv+qi
         0nelXviLPq4MAWMv4Fv3X8oS0aZuu9fPyTAW94DDwo2Q1vx8Bxh85csIY+81/GK/eguY
         zYVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:sender:dkim-signature;
        bh=JTyTiwbHtk2WP6/qixrvFkvWjvT8/qmtcY9cXO32W4I=;
        b=z1uGSmOw2bz7NyY8n6v8p5fZi8mwqfEntSXjnrk6cUuG4Ludu7L3KkqLol5GxzqeP/
         2b8kql6BoquOxEOH4svgTYgcMlPnZcRu1/r5eZTALQTr2FqK/nDJw1G/DZBZXP0ujJ7x
         VSS5hjoZ8LV2WO8Pb7s45iyz5KN/P6Sxgvms6UhqydEI9rfhbCrO1zWkfLQ/BgUWNg+q
         8bLUDoP0iUqnvfnCU02U8RtCjt7qkBvPoETM9m7TPUXLy7y+zbXQn2xWXTmzowrxETP5
         awTjchFRNFMVhoKxwEAJR0jZ2NzUeU0EfuWpxsIkeDQHzY4dUZMNf+hNZ3kQXfgEcyve
         z7OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JTyTiwbHtk2WP6/qixrvFkvWjvT8/qmtcY9cXO32W4I=;
        b=qy7+l0ZN6N5uG+r4swpnvYwyotkZfav3gwU6eyB8eSyhKrucbU5fhNp8rzK/fDHy+d
         TG9Dn9meWpeLFDukd3fYRtMQE54SYUSMeNQ7wEDA5cpgmxBJbMWZf1ksy8D94M74qmrO
         cNnb34PBibKB4KmVNRdNxiiRPz30mDc5aRdEgr5nBaDqX+qQ6kPiaO9sbHmIJIvyXLcD
         ZDMQS/Z//nL1FixBLHYyyfjuIwRrHQlbro9a2SskPnNOGzYF/E7mXDt+GzuFpmuUi49q
         RealX7w+RTKLxmc2A8qiYTCQ1obOkzjGmHBDrEvF15EJDnRuxJVNESGukDMXGw8jtODt
         /8hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JTyTiwbHtk2WP6/qixrvFkvWjvT8/qmtcY9cXO32W4I=;
        b=hKoWxbHPwYjCn86oA44uGx06SyH6ECWeMdL8tvvV/LaTZKEkTeFOs96eFQ7eTECG3v
         gvPQoo9i0evNOhuY5b3326zO/5irP1XT8cyB8p0DIHKDSrxnpoIZxCPzWU79VIIUmatz
         PNVhARktoV9fEiz4g5zi+XKeOTOeZJr5YlcgmfBiI7tHQjg8hwc05sC8CDQEN5/ES5c+
         4FcxOD2Mk7eiXtfgxKQhUBzk4g9B4Bw6rS1qf9nkI4TG7DaFlBkNcP62aOCAqc4ppu4N
         ssgwjasf+OmbLCA/YZCJ+JooIwLymyRe9+ZVO8jd3vb3YH1UmuL4ChMX2Gl1jcGCymif
         pwmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Iw0fL40tVQIi8aLLvX1R/Lr3CuFr1fS+hqP4YpQmj5dDBBTT9
	S8uLL8aWehJZfyW+IqP5h6M=
X-Google-Smtp-Source: ABdhPJyiePjQVb0u6/Oz3vaBq2d0OLWI/uDZS4pS49F017SwqWIdm0nmXocsYvRhVzFve9EMG59Y7w==
X-Received: by 2002:a05:6808:492:: with SMTP id z18mr6338881oid.101.1629282749745;
        Wed, 18 Aug 2021 03:32:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:440a:: with SMTP id q10ls442276otv.11.gmail; Wed,
 18 Aug 2021 03:32:29 -0700 (PDT)
X-Received: by 2002:a05:6830:1056:: with SMTP id b22mr5979929otp.325.1629282749146;
        Wed, 18 Aug 2021 03:32:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629282749; cv=none;
        d=google.com; s=arc-20160816;
        b=WEkbDmuhtFappbkI2FGzj5PiXvn9ldOoSLgiUC6VC04k1qZQy4mzgBuNwEAPtygqsB
         MV5M2t0dLlyyy5CF/VoP2kx8KiCZBWA7ihnDgysvBo4KJ+yLLOowwxgSMbK699jbQ0Bj
         SZA//0yE6zWdJWxfNhrlX5F6uCS99TVcnPTlwMcmbmiapLAZfIGfJ+9qDvM8OXkuX3bb
         VIyL3VXbk8LSRZK8q3rlloElqpIfAmM2BR8zromqMXJGBfs9e/JjO029vR8uQGUFHbLv
         MB1/99qJDPPN5EzBubpRno09rh3tUH6QLbq/88cCnUHdSNanlQNT7nv0nCabKP1vsiny
         Pu9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date;
        bh=4XH3/u+r8L8wTfn7rlVjbGJBbIbh6mmuFZUj1S86rXc=;
        b=qIhEI/Qg5bVrAh9Q2NchjgvoZrAEkL3Zxlzg+J5mtPiHq14IkNDlG88p5rUIsF9yS8
         uQjhl+mJgEQxjtKVFd1CxqHDiU34aT8ElUwuViPEBfABX8uYJYOlhE+gSVkkGkfH7u+w
         HIsWmODKtYcc+nFBpXpObR+tsK9wiV6Qz5Swp84L9gMx9frVJ4AsAUQfXnsJy5V2YDL1
         81ZGAFzKaWUuPn/kX4gJt4rtWtnVs7Nr+eG3+CeAaz9AdEENuuZZr7x5zM4QmMxtoMYv
         pJjBnNlp/A6P5oBeRoUNnmBxTaqsGflF54o8x27fhm6g8fd9pPlNSnuRd4wyQ8VsNQkj
         J/xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id s30si268978oiw.1.2021.08.18.03.32.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 03:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="195878315"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="195878315"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 03:32:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="531500428"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 18 Aug 2021 03:32:25 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGIrw-000Sot-QY; Wed, 18 Aug 2021 10:32:24 +0000
Date: Wed, 18 Aug 2021 18:31:59 +0800
From: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Subject: drivers/gpu/drm/bridge/analogix/anx7625.c:754:4: warning: Value
 stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108181841.GDwrpLCT-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   614cb2751d3150850d459bee596c397f344a7936
commit: c489573b5b6ce6442ad4658d9d5ec77839b91622 Merge drm/drm-next into dr=
m-misc-next
date:   10 months ago
config: x86_64-randconfig-c001-20210813 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 767496=
d19cb9a1fbba57ff08095faa161998ee36)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3Dc489573b5b6ce6442ad4658d9d5ec77839b91622
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout c489573b5b6ce6442ad4658d9d5ec77839b91622
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64 clang-analyzer=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
           ^     ~
   net/9p/client.c:2093:2: note: Value stored to 'err' is never read
           err =3D 0;
           ^     ~
   net/9p/client.c:2153:2: warning: Value stored to 'err' is never read [cl=
ang-analyzer-deadcode.DeadStores]
           err =3D 0;
           ^     ~
   net/9p/client.c:2153:2: note: Value stored to 'err' is never read
           err =3D 0;
           ^     ~
   net/9p/client.c:2184:2: warning: Value stored to 'err' is never read [cl=
ang-analyzer-deadcode.DeadStores]
           err =3D 0;
           ^     ~
   net/9p/client.c:2184:2: note: Value stored to 'err' is never read
           err =3D 0;
           ^     ~
   net/9p/client.c:2214:2: warning: Value stored to 'err' is never read [cl=
ang-analyzer-deadcode.DeadStores]
           err =3D 0;
           ^     ~
   net/9p/client.c:2214:2: note: Value stored to 'err' is never read
           err =3D 0;
           ^     ~
   net/9p/client.c:2247:2: warning: Value stored to 'err' is never read [cl=
ang-analyzer-deadcode.DeadStores]
           err =3D 0;
           ^     ~
   net/9p/client.c:2247:2: note: Value stored to 'err' is never read
           err =3D 0;
           ^     ~
   net/9p/client.c:2281:2: warning: Value stored to 'err' is never read [cl=
ang-analyzer-deadcode.DeadStores]
           err =3D 0;
           ^     ~
   net/9p/client.c:2281:2: note: Value stored to 'err' is never read
           err =3D 0;
           ^     ~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   5 warnings generated.
   fs/jffs2/nodelist.c:600:9: warning: Access to field 'flash_offset' resul=
ts in a dereference of a null pointer (loaded from variable 'ref') [clang-a=
nalyzer-core.NullDereference]
           while (ref->flash_offset !=3D REF_EMPTY_NODE) {
                  ^
   fs/jffs2/nodelist.c:665:6: note: Assuming 'size' is not equal to 0
           if (!size)
               ^~~~~
   fs/jffs2/nodelist.c:665:2: note: Taking false branch
           if (!size)
           ^
   fs/jffs2/nodelist.c:667:15: note: Assuming 'size' is <=3D field 'free_si=
ze'
           if (unlikely(size > jeb->free_size)) {
                        ^
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   fs/jffs2/nodelist.c:667:2: note: Taking false branch
           if (unlikely(size > jeb->free_size)) {
           ^
   fs/jffs2/nodelist.c:673:6: note: Assuming field 'last_node' is null
           if (jeb->last_node && ref_obsolete(jeb->last_node)) {
               ^~~~~~~~~~~~~~
   fs/jffs2/nodelist.c:673:21: note: Left side of '&&' is false
           if (jeb->last_node && ref_obsolete(jeb->last_node)) {
                              ^
   fs/jffs2/nodelist.c:685:3: note: Calling 'jffs2_link_node_ref'
                   jffs2_link_node_ref(c, jeb, ofs, size, NULL);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/jffs2/nodelist.c:592:9: note: Assuming field 'allocated_refs' is not =
equal to 0
           BUG_ON(!jeb->allocated_refs);
                  ^
   include/asm-generic/bug.h:63:45: note: expanded from macro 'BUG_ON'
   #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (=
0)
                                               ^~~~~~~~~
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   fs/jffs2/nodelist.c:592:2: note: Taking false branch
           BUG_ON(!jeb->allocated_refs);
           ^
   include/asm-generic/bug.h:63:32: note: expanded from macro 'BUG_ON'
   #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (=
0)
                                  ^
   fs/jffs2/nodelist.c:592:2: note: Loop condition is false.  Exiting loop
           BUG_ON(!jeb->allocated_refs);
           ^
   include/asm-generic/bug.h:63:27: note: expanded from macro 'BUG_ON'
   #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (=
0)
                             ^
   fs/jffs2/nodelist.c:595:2: note: Null pointer value stored to 'ref'
           ref =3D jeb->last_node;
           ^~~~~~~~~~~~~~~~~~~~
   fs/jffs2/nodelist.c:600:9: note: Access to field 'flash_offset' results =
in a dereference of a null pointer (loaded from variable 'ref')
           while (ref->flash_offset !=3D REF_EMPTY_NODE) {
                  ^~~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   7 warnings generated.
>> drivers/gpu/drm/bridge/analogix/anx7625.c:754:4: warning: Value stored t=
o 'ret' is never read [clang-analyzer-deadcode.DeadStores]
                           ret =3D sp_tx_rst_aux(ctx);
                           ^     ~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/analogix/anx7625.c:754:4: note: Value stored to '=
ret' is never read
                           ret =3D sp_tx_rst_aux(ctx);
                           ^     ~~~~~~~~~~~~~~~~~~
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   8 warnings generated.
   drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c:536:2: warning: Value=
 stored to 'err' is never read [clang-analyzer-deadcode.DeadStores]
           err =3D anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
           ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c:536:2: note: Value st=
ored to 'err' is never read
           err =3D anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
           ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 7 warnings (7 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   7 warnings generated.
   Suppressed 7 warnings (7 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   8 warnings generated.
   drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c:424:2: warning: Value =
stored to 'reg' is never read [clang-analyzer-deadcode.DeadStores]
           reg =3D readl(dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
           ^
   drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c:424:2: note: Value sto=
red to 'reg' is never read
   Suppressed 7 warnings (6 in non-user code, 1 with check filters).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   5 warnings generated.
   Suppressed 5 warnings (5 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   6 warnings generated.
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   11 warnings generated.
   Suppressed 11 warnings (11 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   11 warnings generated.
   Suppressed 11 warnings (11 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   11 warnings generated.
   Suppressed 11 warnings (11 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   5 warnings generated.
   drivers/iio/magnetometer/hmc5843_core.c:127:8: warning: Excessive paddin=
g in 'struct hmc5843_chip_info' (8 padding bytes, where 0 is optimal).=20
   Optimal fields order:=20
   channels,=20
   regval_to_samp_freq,=20
   regval_to_nanoscale,=20
   n_regval_to_samp_freq,=20
   n_regval_to_nanoscale,=20
   consider reordering the fields or adding explicit padding members [clang=
-analyzer-optin.performance.Padding]
   struct hmc5843_chip_info {
   ~~~~~~~^~~~~~~~~~~~~~~~~~~
   drivers/iio/magnetometer/hmc5843_core.c:127:8: note: Excessive padding i=
n 'struct hmc5843_chip_info' (8 padding bytes, where 0 is optimal). Optimal=
 fields order: channels, regval_to_samp_freq, regval_to_nanoscale, n_regval=
_to_samp_freq, n_regval_to_nanoscale, consider reordering the fields or add=
ing explicit padding members
   struct hmc5843_chip_info {
   ~~~~~~~^~~~~~~~~~~~~~~~~~~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   6 warnings generated.
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   7 warnings generated.
   drivers/iio/potentiometer/mcp41010.c:58:8: warning: Excessive padding in=
 'struct mcp41010_data' (86 padding bytes, where 22 is optimal).=20
   Optimal fields order:=20
   buf,=20
   value,=20
   spi,=20
   cfg,=20
   lock,=20
   consider reordering the fields or adding explicit padding members [clang=
-analyzer-optin.performance.Padding]
   struct mcp41010_data {
   ~~~~~~~^~~~~~~~~~~~~~~
   drivers/iio/potentiometer/mcp41010.c:58:8: note: Excessive padding in 's=
truct mcp41010_data' (86 padding bytes, where 22 is optimal). Optimal field=
s order: buf, value, spi, cfg, lock, consider reordering the fields or addi=
ng explicit padding members
   struct mcp41010_data {
   ~~~~~~~^~~~~~~~~~~~~~~
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   6 warnings generated.
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.

vim +/ret +754 drivers/gpu/drm/bridge/analogix/anx7625.c

8bdfc5dae4e3ba Xin Ji 2020-09-18  720 =20
8bdfc5dae4e3ba Xin Ji 2020-09-18  721  static int segments_edid_read(struct=
 anx7625_data *ctx,
8bdfc5dae4e3ba Xin Ji 2020-09-18  722  			      u8 segment, u8 *buf, u8 off=
set)
8bdfc5dae4e3ba Xin Ji 2020-09-18  723  {
8bdfc5dae4e3ba Xin Ji 2020-09-18  724  	u8 cnt;
8bdfc5dae4e3ba Xin Ji 2020-09-18  725  	int ret;
8bdfc5dae4e3ba Xin Ji 2020-09-18  726  	struct device *dev =3D &ctx->client=
->dev;
8bdfc5dae4e3ba Xin Ji 2020-09-18  727 =20
8bdfc5dae4e3ba Xin Ji 2020-09-18  728  	/* Write address only */
8bdfc5dae4e3ba Xin Ji 2020-09-18  729  	ret =3D anx7625_reg_write(ctx, ctx-=
>i2c.rx_p0_client,
8bdfc5dae4e3ba Xin Ji 2020-09-18  730  				AP_AUX_ADDR_7_0, 0x30);
8bdfc5dae4e3ba Xin Ji 2020-09-18  731  	ret |=3D anx7625_reg_write(ctx, ctx=
->i2c.rx_p0_client,
8bdfc5dae4e3ba Xin Ji 2020-09-18  732  				 AP_AUX_COMMAND, 0x04);
8bdfc5dae4e3ba Xin Ji 2020-09-18  733  	ret |=3D anx7625_reg_write(ctx, ctx=
->i2c.rx_p0_client,
8bdfc5dae4e3ba Xin Ji 2020-09-18  734  				 AP_AUX_CTRL_STATUS,
8bdfc5dae4e3ba Xin Ji 2020-09-18  735  				 AP_AUX_CTRL_ADDRONLY | AP_AUX_C=
TRL_OP_EN);
8bdfc5dae4e3ba Xin Ji 2020-09-18  736 =20
8bdfc5dae4e3ba Xin Ji 2020-09-18  737  	ret |=3D wait_aux_op_finish(ctx);
8bdfc5dae4e3ba Xin Ji 2020-09-18  738  	/* Write segment address */
8bdfc5dae4e3ba Xin Ji 2020-09-18  739  	ret |=3D sp_tx_aux_wr(ctx, segment)=
;
8bdfc5dae4e3ba Xin Ji 2020-09-18  740  	/* Data read */
8bdfc5dae4e3ba Xin Ji 2020-09-18  741  	ret |=3D anx7625_reg_write(ctx, ctx=
->i2c.rx_p0_client,
8bdfc5dae4e3ba Xin Ji 2020-09-18  742  				 AP_AUX_ADDR_7_0, 0x50);
8bdfc5dae4e3ba Xin Ji 2020-09-18  743  	if (ret) {
8bdfc5dae4e3ba Xin Ji 2020-09-18  744  		DRM_DEV_ERROR(dev, "IO error : aux=
 initial fail.\n");
8bdfc5dae4e3ba Xin Ji 2020-09-18  745  		return ret;
8bdfc5dae4e3ba Xin Ji 2020-09-18  746  	}
8bdfc5dae4e3ba Xin Ji 2020-09-18  747 =20
8bdfc5dae4e3ba Xin Ji 2020-09-18  748  	for (cnt =3D 0; cnt <=3D EDID_TRY_C=
NT; cnt++) {
8bdfc5dae4e3ba Xin Ji 2020-09-18  749  		sp_tx_aux_wr(ctx, offset);
8bdfc5dae4e3ba Xin Ji 2020-09-18  750  		/* Set I2C read com 0x01 mot =3D 0=
 and read 16 bytes */
8bdfc5dae4e3ba Xin Ji 2020-09-18  751  		ret =3D sp_tx_aux_rd(ctx, 0xf1);
8bdfc5dae4e3ba Xin Ji 2020-09-18  752 =20
8bdfc5dae4e3ba Xin Ji 2020-09-18  753  		if (ret) {
8bdfc5dae4e3ba Xin Ji 2020-09-18 @754  			ret =3D sp_tx_rst_aux(ctx);
8bdfc5dae4e3ba Xin Ji 2020-09-18  755  			DRM_DEV_ERROR(dev, "segment read =
fail, reset!\n");
8bdfc5dae4e3ba Xin Ji 2020-09-18  756  		} else {
8bdfc5dae4e3ba Xin Ji 2020-09-18  757  			ret =3D anx7625_reg_block_read(ct=
x, ctx->i2c.rx_p0_client,
8bdfc5dae4e3ba Xin Ji 2020-09-18  758  						     AP_AUX_BUFF_START,
8bdfc5dae4e3ba Xin Ji 2020-09-18  759  						     MAX_DPCD_BUFFER_SIZE, buf=
);
8bdfc5dae4e3ba Xin Ji 2020-09-18  760  			if (ret > 0)
8bdfc5dae4e3ba Xin Ji 2020-09-18  761  				break;
8bdfc5dae4e3ba Xin Ji 2020-09-18  762  		}
8bdfc5dae4e3ba Xin Ji 2020-09-18  763  	}
8bdfc5dae4e3ba Xin Ji 2020-09-18  764 =20
8bdfc5dae4e3ba Xin Ji 2020-09-18  765  	if (cnt > EDID_TRY_CNT)
8bdfc5dae4e3ba Xin Ji 2020-09-18  766  		return -EIO;
8bdfc5dae4e3ba Xin Ji 2020-09-18  767 =20
8bdfc5dae4e3ba Xin Ji 2020-09-18  768  	return 0;
8bdfc5dae4e3ba Xin Ji 2020-09-18  769  }
8bdfc5dae4e3ba Xin Ji 2020-09-18  770 =20

:::::: The code at line 754 was first introduced by commit
:::::: 8bdfc5dae4e3ba4d99dfb430ef43249e5f1b7730 drm/bridge: anx7625: Add an=
x7625 MIPI DSI/DPI to DP

:::::: TO: Xin Ji <xji@analogixsemi.com>
:::::: CC: Sam Ravnborg <sam@ravnborg.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108181841.GDwrpLCT-lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFmZHGEAAy5jb25maWcAlDzLdtw2svt8RR9nk1kkkWRZUWaOFiAJdsNNEjQA9kMbnLbU
cnRHD9+WlLH//lYBfAAg2OPrhe1GFYt41LsK/Pmnn2fk7fX5cfd6f7N7ePg++7J/2h92r/vb
2d39w/5fs4zPKq5mNGPqN0Au7p/evv3+7fJCX5zPPvx2evLbya+Hm7PZcn942j/M0uenu/sv
b0Dg/vnpp59/SnmVs7lOU72iQjJeaUU36urdzcPu6cvs7/3hBfBmp+e/AZ3ZL1/uX//5++/w
9+P94fB8+P3h4e9H/fXw/D/7m9fZ7u6Py9PLkz/fX/zxx+3N5/Obk8vzk93+7s+LzzcnZ3/e
7j+fnf65//DHP951b50Pr7066QaLbDwGeEzqtCDV/Oq7gwiDRZENQwajf/z0/AT+ODRSUumC
VUvngWFQS0UUSz3YgkhNZKnnXPFJgOaNqhsVhbMKSNMBxMQnvebCmUHSsCJTrKRakaSgWnLh
kFILQQmss8o5/AUoEh+Fc/t5Njd88DB72b++fR1OklVMaVqtNBGwRaxk6ur9GaB3c+NlzeA1
iko1u3+ZPT2/IoV+T3lKim7/3r2LDWvSuJth5q8lKZSDvyArqpdUVLTQ82tWD+guJAHIWRxU
XJckDtlcTz3BpwDnccC1VMg6/dY483V3JoSbWUe2zp95+NTm+hhNmPxx8PkxMC4kMqGM5qQp
lOEI52y64QWXqiIlvXr3y9Pz0x6ksqcr16SOEJRbuWK1IyHtAP6bqsJddc0l2+jyU0MbGqG0
JipdaAN1n0oFl1KXtORiq4lSJF1E191IWrAkCiIN6MHIG83BEwFvNRg4Y1IUnSyBWM5e3j6/
fH953T8OsjSnFRUsNVJbC544guyC5IKv4xCa5zRVDF+d57q00hvg1bTKWGVUQ5xIyeYCNBMI
pMPGIgOQhJPSgkqg4KuYjJeEVbExvWBU4D5sJ15GlICTg70BkVdcxLHwnWJlJqVLngUKLuci
pVmru5irsmVNhKTtUvszcylnNGnmufTPdv90O3u+C05p0Pk8XUrewDstX2XceaM5chfFSMP3
2MMrUrCMKKoLIpVOt2kROW+jqVcD+wRgQ4+uaKXkUaBOBCdZCi86jlbCiZHsYxPFK7nUTY1T
DhSclb60bsx0hTR2I7A7R3GMUKj7RzD/MbkAM7nUvKLA+M68FtfAy4LxzBjR/nQrjhCWFTQq
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
5+i/Yi/QjgE3AgA=

--HcAYCG3uE/tztfnV--
