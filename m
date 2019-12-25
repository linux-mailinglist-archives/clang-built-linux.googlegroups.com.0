Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4OOR3YAKGQETWHDJBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E26A12A8C6
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Dec 2019 19:16:18 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id l13sf19139864ils.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Dec 2019 10:16:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577297777; cv=pass;
        d=google.com; s=arc-20160816;
        b=zNeltiqbJ7ovrfk8GsvVi9y8EYhmrGTxSO7CJ6dyvYaTm0bfE1msOsFkdg9/tfdH97
         6rZIOowyeUMMx95bnZiY/xOoW6qJJXymMyfMZJevZefXbmO9uYf/3uLyUHry0wcGmR4L
         te24UN+k4eiNxHOlgj+RgT2O9JB++vkXMLYQsr6aZe1iMQzwhrc5rRCc1s2kVVGpXHoo
         sxyAQ9qD+AoYmLvUVtmATBDrxhdjz1tXz+Qhh42+5v3ozGuxeQshR0wMcFzPYJqkA85v
         wyG7yc3T/YeP06CUh2fUdkPsLxpx7yars060BDvjdBaG+FVIYRZ9ZtfI8Up5nvuHCQMA
         vwKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8HaycpJ9q+7mY7+ZR2iuKM+YPpoABSHb5ggJ1fvfu5Q=;
        b=0jb9GpO+6vn44HNFexG4BXk+Y/63ArxC1YfRhJ27i3M8TG2oXQqDbbIqOwgHjuAjln
         HS3+Iwq3mEylV3bpLLpwgXoRmc5DvUBxZCZswntbIG+TNYOeUDprdn7DoejAUsj5mo9u
         ZJ+wkx/xh6AgcfQ+kvRGqbVxUO8BW/Hu3S5TR2ViSucdjGOAOsFtZAqYuPqH+sQ9MBtV
         2LH5cx9HIrCZA1KNKUKOBFzwaTrwz+QblBAoZN6hKxfq5UZg0QRrMe46oW8BOs20dbgO
         zMo06swBP5w8GuwYOKigUl100PO58huXGFHKlVIqMpqvlZvi1xszhauFf+ZF6e7EguoX
         RSCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8HaycpJ9q+7mY7+ZR2iuKM+YPpoABSHb5ggJ1fvfu5Q=;
        b=L8lHdAC+r2N2FE0ctEeamdx197V4RkrMA6pdGwKbSvLgXv27WSIHlyfynC2+6bDe1r
         XbU9Iw3YoO1XbF+U4Bew1/tdgGtogMIn6V8iSdsnk1kayErIZg7LEGAUc8tNxjtNJsLc
         phfmXu5DE1hpZhqb+GUNfgIPwjqOSHWyxSBVd44oG18XzK3KnKtKoHMazeJly5hfVfDI
         LXCv2J2ce6V2hkwr/icD9AshVUdlu5EwNgWon2fHp4F4fB7FcsBhsai55IablI+K8r78
         DWPWid+vNroxyICI6m++6aPdq7N7DNt5CHzukT8unFUowr03mu5RN0yZT2MEfqYr3aaL
         b09w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8HaycpJ9q+7mY7+ZR2iuKM+YPpoABSHb5ggJ1fvfu5Q=;
        b=CmesWDOViKZVrZGajBj+W/okpno1CudIObVxHOJECliSZe8ogtUkCofs5XeOY62o4X
         cE8nY6RLv+EBUqJAkGSUokYIH2OEqCGuUe2ncO61UT4RzcV+CivZ0M6brwnuNmYUD0nq
         COzEblMuNZGGddoH44R9toULP5VHSYq0SoKrfR6K1jNYXeOWmxVW8DeObhxWeEzwi59W
         8VPF8hEG9G3mksSBjmEidPtWcs4UuqFGTFaYZLDdhkccVWnOBbsxsIO53/0X6tduVwP5
         as7UgtCw4PddIbVEQyUiokFllCTTZV+PClUZsBykaR2HmURXvkCMhOSJWqwUGx9aZ5On
         H5MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+lK8XviLxY2FC5UxV0BECB6UmJwD/QNkgbiy0DJ2w9mD9Sqy3
	51NwunFA6FFKhYFdwz+FMUQ=
X-Google-Smtp-Source: APXvYqzjSmuuPFd36POPO0+gd94hTZd5XWq3KxrVt4BkZTi0Z3maczORdoyGUjtDPZ7EiNtgO3k2bA==
X-Received: by 2002:a6b:b606:: with SMTP id g6mr29521257iof.114.1577297777298;
        Wed, 25 Dec 2019 10:16:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:4118:: with SMTP id n24ls2808180ioa.14.gmail; Wed, 25
 Dec 2019 10:16:16 -0800 (PST)
X-Received: by 2002:a6b:7117:: with SMTP id q23mr27628625iog.153.1577297776926;
        Wed, 25 Dec 2019 10:16:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577297776; cv=none;
        d=google.com; s=arc-20160816;
        b=x+SweZi0Eb2bFJNCh5AE8e0f0cSp+4qukVNTkzA2UPgdc36qbE/SaRuRL2JsiDr3as
         WFlahHXhaU2Lwixs6kyxgjrL349vZVLopDfV8RqQ03MNrzHCAY9pG4VIQVZyijhgc7oQ
         /uDSwb5qaVgAwUKmJBp564/k6QKow9h9BY4Hr3UMsAXEY0pmMBigaqIi5ThIbq2jvwDX
         T4PS75LZWl7n9eYeiOP9phGanU8juCx3nkFUOo97okARCBI3r0t4x90KogJ2gTo8y/s3
         SixxnvNpiwh28w8N9LuA91DK1SAGHGH4Klu1eCXvKYWfXiFmCnFDTafbQ5d80tMiqqis
         hHwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=J3Gt1AdAtdZ9BEjiQtRii+Nxe9eCpdoky+aAD0sOHCA=;
        b=utC0CGjPe1yIyCl6BAOHRPDFwgK9Upbk/yHZ5S4JY992fkZswzdCzGZyU3rQb5A/m0
         d4Vxgf6qPu+o8ekaSpgakAdQMMmPlH0uEyR2ZEYRt9KC4S1RZpSStTl14/IRjg1PlVX7
         u1mvm1BU14UANnK+tdhybhVFiiR1kFBywWmWXD+r/40m1hNEfrO/5n+AErBqD4b/pS9i
         6V65IoZCyoLPNzExckFSq7lQ18kWooYKyc5ylje6FZgL4+z9nI+sO6XtLJYhzw5el8uP
         CBKRddImSUpulbkinyygtbX3NkJKTSBeeOQQDgo3sp1F7rccad9d9/lClyPlhWYtlknv
         aLDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id z7si1027423ilz.1.2019.12.25.10.16.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Dec 2019 10:16:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Dec 2019 10:16:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,356,1571727600"; 
   d="scan'208";a="242794540"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 25 Dec 2019 10:16:14 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1ikBCg-0006w0-2q; Thu, 26 Dec 2019 02:16:14 +0800
Date: Thu, 26 Dec 2019 02:16:04 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [dlemoal-zonefs:for-5.6 1/2] fs/Kconfig:43: can't open file
 "fs/zonefs/Kconfig"
Message-ID: <201912260202.Z47MHOnS%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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

CC: kbuild-all@lists.01.org
TO: Damien Le Moal <damien.lemoal@wdc.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/dlemoal/zonefs.git for-5.6
head:   31fc8175ec9f296a919e49b75991c2bd64bf09ad
commit: 9378d8dd690cbef15a1a285696541b2f2480383e [1/2] fs: New zonefs file system
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 9a77c2095439ba41bd8f6f35931b94075b2fd45b)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 9378d8dd690cbef15a1a285696541b2f2480383e
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/Kconfig:43: can't open file "fs/zonefs/Kconfig"
   make[2]: *** [defconfig] Error 1
   make[1]: *** [defconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  83.94% cpu 	make defconfig
--
>> fs/Kconfig:43: can't open file "fs/zonefs/Kconfig"
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  82.74% cpu 	make oldconfig
--
>> fs/Kconfig:43: can't open file "fs/zonefs/Kconfig"
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  79.66% cpu 	make olddefconfig

vim +43 fs/Kconfig

    36	
    37	source "fs/xfs/Kconfig"
    38	source "fs/gfs2/Kconfig"
    39	source "fs/ocfs2/Kconfig"
    40	source "fs/btrfs/Kconfig"
    41	source "fs/nilfs2/Kconfig"
    42	source "fs/f2fs/Kconfig"
  > 43	source "fs/zonefs/Kconfig"
    44	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912260202.Z47MHOnS%25lkp%40intel.com.
