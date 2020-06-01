Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUFQ2L3AKGQET7MDM5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 574911E9D94
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 07:55:29 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 67sf1823795oto.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 22:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590990928; cv=pass;
        d=google.com; s=arc-20160816;
        b=XxnB2A1K/KCmq4knsSpJ3dEU6pgUvS9RMU/KcPMnJTA3MPX4354hSqAZAYrSR1r1oZ
         72A+1KU40rNDH6SUlaMXtZCDr9ORsPk7z/pj0IbDcKX7XUqhKJyc54cUDqXhvVsbyke8
         2JtvnpjZ/0RDH9ucMXFGcEHDemJ3GMLqFgyZVICuln1F/P0k79ErWXmgvN7rTfeO43Tf
         kajPwN1H3e4f++Vfr9KJdz/dqWw8jTag9OVLjB7xJs/1blAPSxPtrTkpV97UrGuOyDQy
         wNVFjaJttEABL24uYAGcXdb/zr1LFc/L9UOWoo6xU1x9szZ2xNJjTYu5LJ/z3L6A8cy7
         BLag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=fGkyBP44FYtbV8yCS+K3XK6zZjKZcQmWwkCsrokXvr0=;
        b=Two78F1/6Zq91cDUw6uYqa3q6455XAuqOCZcG+8w42xGxNtm96CI6JuP+B8Oj6hign
         KC9pJibmqq4lLr5BcgNWaGxPYiT9iok4Fach3Sx22SCWj9vNor1hz54cdVfxWmnBo7G5
         2Xyg4/UwPJfnWJz0kmKPsHOwr1WW7rB3KL70NdENkLb07Knlfz22ZCyBOoWiua2PBKqI
         3VpfE9pU7HQ6nc7HZ2ltDMNHALS7ix4jlzBjE+xvAOXw9tPJIy0GKw/SR5kX2/2H0eg7
         A3Pgfk1pYNIzG04INjDIIwxIELOuxJzGsyC8SJfjrN4q7xBB+n/R+D7sDXXp/MXWHL8d
         iRjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fGkyBP44FYtbV8yCS+K3XK6zZjKZcQmWwkCsrokXvr0=;
        b=bSL+7WWEa6oCkS+crqdhn8UBVuhiDHv/9Us8UhyAsqzkqe++fbcajIpUzccd21A7kO
         VTqmOjmevYxECetn5GiiHUm/dtEjoqSmfnM/fvhtbq05U0pmDhNi0Gj3YfgiLJFC/4/s
         qLqwKZe5oZjs4V2cJgzTvECO1OrT6SR+K41MMPwBV3QNFwP58RTNfC46qS+BEAD61mff
         xijk/JSGijUxneB85HVoBPRj7hkDVSRdcikOYFS1HxxI4tg3uW3kz6/+V3GZRGWYF05U
         KmXF6RB/Hh+CS5pTtqfuYEIbcUbcH+9RdP39yUeTnm33Srbaa8L+k+kZfof4l3vGA/J2
         acwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fGkyBP44FYtbV8yCS+K3XK6zZjKZcQmWwkCsrokXvr0=;
        b=IDXSLDewDyjFaMAcRDfjhWzhaDq8RI7n/58DcJZ4iCHbDttT/aJhfWheWCcZwWScmb
         wkhUg+Rl63LM9/Q8Emk/kGBD0CJRQTsgBcDzI6Hq3uj5/+XqG1xtrAz48qts3N5ufqPC
         latEe82leHYS2bexB+xQFqfVJREy8uRyPfkgDnCWN/B+pH1uV8Y9O1UVao9ZwD05xonj
         e9Cj3TD6vkH/xK30GICFl23jhhemH8cJ6TQejPXMYsjKAA2YX6/3oA7Rdg1L4pxIcIls
         Kz0g3du7//86NobqU8McGyf7H28BD0OuW4fOdXRgdCMEAcbT0s+iJK7DWVeAC/hrxvcP
         Z/zA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IQGxlsZY8a7Evo1EpMbJolZyWnOOFXbg8VzkEUle7oT4O+CW4
	3WeBeeFeu41JyPBb63bxIYE=
X-Google-Smtp-Source: ABdhPJxADMrF9v9p52RF3heQ4P2iT+BR7cwdmC6QagSuVyZaDyKEb060e/B0NsLKpnumZdcmFOqwcQ==
X-Received: by 2002:a05:6830:3110:: with SMTP id b16mr15052499ots.80.1590990928154;
        Sun, 31 May 2020 22:55:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:61c2:: with SMTP id h2ls2548184otk.10.gmail; Sun, 31 May
 2020 22:55:27 -0700 (PDT)
X-Received: by 2002:a9d:459c:: with SMTP id x28mr15899024ote.18.1590990927848;
        Sun, 31 May 2020 22:55:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590990927; cv=none;
        d=google.com; s=arc-20160816;
        b=InkYOB54Al8izu/A2GB/3DzlNYqgR7r9MIbvsJuw3VYZ5PAYqxMwUv3NsY0Gz3oHf4
         zxKKY/I6vhSBIdiVKpLlZI5xiOUYC3CVWJ1k9z2qpSFdt+U7INCPPZar8Bn1DCsPwoGy
         tV8hTJlBKsT4hyyqnuzftQsG1SK3ITjOcf+tdZ0dzdqEFYyqX+hAjQvyNh6GuE/N5yis
         Jkdy7j/w73TwtCA0meDDryegrY6ak9IjOqV3J+nDZVYRHx0V6403YlkHXxamfAfRfc+H
         OUEwQ8SJtu3dnQ9H39XGR68Po70M6AVX6u8h2V/nP+yOkFaOodTLscNsuiq3YJFpZFWI
         fLxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=PFEEB2FXVOu3n79BVGEBBbR0h/pvVal+QLduYAKBnEI=;
        b=MleUp+nPAhH1y7Kbgmfi2Axaky3vhNtIRK1k7/bxhG/CZQIDq2SXWRmJJlwbXXrT36
         F4gFFQq84ksZScUOYblW/IcnFIo941ulcwM/Fswo4qiMBQoQBCsDs6o/5i43Il9YKoQT
         KbtzKKe8klcfnKJ/mJIyQjqsOy2TVQaDaeFn2xC28cNDk5+YeES8Df3+tGqV35esE5Xp
         eWWoqOe0kDdOou5/jA+WKFZX3DgS2tH7qbHOmUUkXzv808IPL1MI9vLYiI/pDkCozJIR
         mMd9DCs/hyG9itQmhPb7HyPSWZ2PpEivUHmtR92PCAEbQOVSgJLG7exDQAyf4AG3/eJt
         oEPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k65si1247160oib.2.2020.05.31.22.55.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 22:55:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: iN0xALijPUBAh8y5t8rmd2z1dUt5WCJSRl5cBDkaOhX1kH4uKahGciVH7dY8XXdWjaaHobDQ3D
 7CFR7AOwjHJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2020 22:55:26 -0700
IronPort-SDR: ktsIJ3CXy/ZmktK/veSWdbbFOjLfvvzLQoYCqmXEG5RkSFT0KTmV30Tjw0RjRNhQTYsL4ONGM5
 DCty+5ESuwTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; 
   d="scan'208";a="303769823"
Received: from lkp-server01.sh.intel.com (HELO 49d03d9b0ee7) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 31 May 2020 22:55:24 -0700
Received: from kbuild by 49d03d9b0ee7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jfdPw-0000ZH-0s; Mon, 01 Jun 2020 05:55:24 +0000
Date: Mon, 1 Jun 2020 13:54:29 +0800
From: kbuild test robot <lkp@intel.com>
To: "Amit, Daniel, Kachhap," <amit.kachhap@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: sh: 1: scripts/ld-version.sh: Permission denied
Message-ID: <202006011327.VZKhJeiu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   3d77e6a8804abcc0504c904bd6e5cdf3a5cf8162
commit: 9553d16fa671b9621c5e2847d08bd90d3be3349c init/kconfig: Add LD_VERSION Kconfig
date:   9 weeks ago
config: x86_64-allyesconfig
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 9553d16fa671b9621c5e2847d08bd90d3be3349c
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64  allyesconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

sh: 1: scripts/gcc-version.sh: Permission denied
sh: 1: scripts/gcc-version.sh: Permission denied
init/Kconfig:18: syntax error
init/Kconfig:17: invalid statement
init/Kconfig:18: invalid statement
>> sh: 1: scripts/ld-version.sh: Permission denied
init/Kconfig:23: syntax error
init/Kconfig:22: invalid statement
sh: 1: scripts/clang-version.sh: Permission denied
init/Kconfig:30: syntax error
init/Kconfig:29: invalid statement
sh: 1: scripts/gcc-plugin.sh: Permission denied
make[2]: *** [scripts/kconfig/Makefile:75: allyesconfig] Error 1
make[1]: *** [Makefile:567: allyesconfig] Error 2
make: *** [Makefile:179: sub-make] Error 2
--
sh: 1: scripts/gcc-version.sh: Permission denied
sh: 1: scripts/gcc-version.sh: Permission denied
init/Kconfig:18: syntax error
init/Kconfig:17: invalid statement
init/Kconfig:18: invalid statement
>> sh: 1: scripts/ld-version.sh: Permission denied
init/Kconfig:23: syntax error
init/Kconfig:22: invalid statement
sh: 1: scripts/clang-version.sh: Permission denied
init/Kconfig:30: syntax error
init/Kconfig:29: invalid statement
sh: 1: scripts/gcc-plugin.sh: Permission denied
make[2]: *** [scripts/kconfig/Makefile:75: oldconfig] Error 1
make[1]: *** [Makefile:567: oldconfig] Error 2
make: *** [Makefile:179: sub-make] Error 2
--
sh: 1: scripts/gcc-version.sh: Permission denied
sh: 1: scripts/gcc-version.sh: Permission denied
init/Kconfig:18: syntax error
init/Kconfig:17: invalid statement
init/Kconfig:18: invalid statement
>> sh: 1: scripts/ld-version.sh: Permission denied
init/Kconfig:23: syntax error
init/Kconfig:22: invalid statement
sh: 1: scripts/clang-version.sh: Permission denied
init/Kconfig:30: syntax error
init/Kconfig:29: invalid statement
sh: 1: scripts/gcc-plugin.sh: Permission denied
make[2]: *** [scripts/kconfig/Makefile:75: olddefconfig] Error 1
make[1]: *** [Makefile:567: olddefconfig] Error 2
make: *** [Makefile:179: sub-make] Error 2

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006011327.VZKhJeiu%25lkp%40intel.com.
