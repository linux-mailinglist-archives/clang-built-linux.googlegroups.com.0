Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN6KRSBQMGQE3S5ETXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 922B134E8D2
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 15:18:48 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id x22sf719894ybi.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 06:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617110327; cv=pass;
        d=google.com; s=arc-20160816;
        b=V6lvLw0r8hMDO9GRdo3EpkqWzA+QgsdzNs7zOk/ncaoIjcPLg3W+I8S/NQ+qjkFZ25
         zZUbXebj9e/t2zc2SZ621yeA/XVJcGOra07jvlnjirvwKPsvrgnGIgFAwSMyY6Dg+sle
         drt+oP3oqnrTULxSWir32HgZSg7ErIqFbZhcOVXsXRH9XynH2+Ppg2tcGOd66TG1lVRR
         vNFMCRkwcyJ5HwNSPhsrK98oSqKNxO9mZ/g95R2d8pxf/qOVdUQ5DkAjJsdIBVdZzDxV
         VBDPW+HuGsOj42HtcstIcy7pmKeI5MejOjDD4J18cg1gWjc4/PpxJtX/qG7kEzFcrLYM
         2waA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=K3QKgtzDeiTZQ3HcjqAkbeL/HhgQR/Qeaxt4lKiFnUk=;
        b=oGC7zZfxD6j0xig07XrooEujqlYf502on0nqA5XHdczdNQaF5cq6VTVAQA+sfhqTFY
         hIImFBjicmY/JHjSb5Esntb2Svvl306g1oEJv33+YVx1/8obxPC5n2bxTIEXhva7+KUM
         UYv8tKwmkcmCdaWEeJ0DFFSCBiPD7MiIo9YHzSEQGH6MqOZEFatsfu4baOib3tZIDdA1
         YRX83nE1lAPKHKNiL5j6bCRPMJw5eHQeMDlDOqRsuAYRLpeTrA6U7FpY6rMKbFjDj/KJ
         5E20Spang/MIuvo2VQ/3c6i663HzCfh0Jnt38eV4evazO4Q/85+gLe5e0X2rrZPM8OAs
         IbKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K3QKgtzDeiTZQ3HcjqAkbeL/HhgQR/Qeaxt4lKiFnUk=;
        b=CY9fILukzIuITMi34J7BZ7V1ReOfYNf9ic6k8QvGi0pHba1I9e9Zu+6GG5PgpTO+ts
         JnChm3kuZzsM7GJa1WxOQ92JfVVYF/4aBDKh1oexmd9tAkI8QVOTAybET0LTFsYFYV5C
         r+KceO2cXeKq0AHLdjGi2R5NhnmsAhSxNPoPrVQ8te1HhVSVKQkPHPiOFHhHdxYY1PrT
         DYL0vw3GpK3+5CiwL2oebG7V3VCVh797EJtxtqRrgLCuz3bRYwd+OFhhTvjey+n1iniQ
         mQEFt0Db/cJwaL6GZf8UhGcf6HING76ErJf+iae7bloF/ffbpzXwyEQQD1UvTd4l/uez
         OPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K3QKgtzDeiTZQ3HcjqAkbeL/HhgQR/Qeaxt4lKiFnUk=;
        b=jdXT+/R6pxqstALE3sTOMWanBxRBXVBzoqsm54zOCCo7DDb09NVkXvwBnqFA5prrMY
         jW91+D/kYk2uiIjlAXpZD2SNDtnATthy4K4qGPBlBVMU7Njdwb7fLozX2bGqeEoIOAub
         1LwGS9To4UOzIWCFCyv+/Zb0MJeEbcsgY18NeBW4VPjaBNXWU7W7zIv1dJzp+i7dTGjn
         ICf6xhVC3z41TmGNzm3GwAKuv6L/zyuOUVf/R3tavT6c7hPe0GPqYn963J/ygoyWT6eG
         b3XWpLseHEHL2wWYnF206/BdZCHXUoRDyNar1ycTyc6pW6t4KHdmRGJSNIRiTUcPz61O
         U5OQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZJPhFO7UMkrGDL1AOmaLRUPmd7MpFaiIf+lI9FZIg7VfuSO5H
	+KNUPduwoSeQ/ScEWT+NPwI=
X-Google-Smtp-Source: ABdhPJz/p+w8+6obJ4qZideflbkeDTdGJcEZgyt0bgAOaR3uTMdwTrDg/x/STRG4f0pEHvkYwEqlHg==
X-Received: by 2002:a25:ae28:: with SMTP id a40mr44650771ybj.400.1617110327578;
        Tue, 30 Mar 2021 06:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ec02:: with SMTP id j2ls9901776ybh.2.gmail; Tue, 30 Mar
 2021 06:18:47 -0700 (PDT)
X-Received: by 2002:a25:b282:: with SMTP id k2mr15129767ybj.21.1617110326940;
        Tue, 30 Mar 2021 06:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617110326; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5L8aKFAZnSeuowRA2X5NgZLV1GNJi2AE2AzWuP4AMCVdLNk2klBoTL9waNKlYD9TT
         3iMvvvQ71OvI8QbdhXLQBwYpyEoGMIR9fokM2+PM6Szu+I3rNQ+AYpSlgPKiJPtUR9mK
         d0q3bkU4WralgtJAWAQetDUNdnwQmLAe5auaPcLMGqcNAZLX9A/VR2iWv0y+PYFd8B12
         a6meHfNJ1udS9Bcg0cIPYcAToD7CL7ii9lEANun2iyrkPOmR2gsDQIOMyv/o6aEAQOAw
         24dnhKVeCB9TzlVLbKMM/zGHvjDlr3Q9+YOd0sdqzvkIIe5AxYt/BMfNfnreFDbusI6g
         oE3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=8yofOLk93oj78oJgNVA+a820GsgUWgnq3ax4uPw3J7E=;
        b=l9MjvWiLXYpYaHS4Y6lyRCzVrfk3nhSXxUlIFsrA96cXs0wmxx3CDfn5WbHTjXaF79
         +2pF30AWVAbDXjkG8qCSfN5pWPwh4zXuiD5epSsJ6FeyUyc7rOWq1Jt1XuXq6oj1/US4
         aYKJ1BwUGISjuDJBV8SgxqWwvJnJyKtVNJnYXWL8LVmiTXbvtsVHph+IIG981h0s0K5m
         URHVQtp+t/Elm+uA2Zi+wCgKJiyLFx5n6y7lGt1UCy2bp/RsX2yBLrLasuDqDnsQznf9
         KbLIGOf0/3Xf7RLtA+RuGXyLRb8r11pTN3yQS7MuoO/XGgTW93u8BuniUzeE6v88JXxm
         KKvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k6si1131314ybf.3.2021.03.30.06.18.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 06:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: 7f36Dkq9UeZlmycXiEi5/7ErH00y146D2KUHV2j0EdkevnFmBQguJkghRLcNw5yXpGlS2QOBbS
 rzLn7dOB8WaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="189519843"
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
   d="gz'50?scan'50,208,50";a="189519843"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2021 06:18:45 -0700
IronPort-SDR: 2FJ4HJP+Uv1WJ9+OEW0zPDZcXBSqxAuxEXkoe2myJTkauMOjNXo2fx4pMSeo08tIcNu0sneiIg
 WkCYWFCDLHRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
   d="gz'50?scan'50,208,50";a="445205296"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 30 Mar 2021 06:18:43 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lREGZ-0005Ib-0P; Tue, 30 Mar 2021 13:18:43 +0000
Date: Tue, 30 Mar 2021 21:18:19 +0800
From: kernel test robot <lkp@intel.com>
To: Jiri Slaby <jslaby@suse.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jirislaby:devel 22/110] drivers/tty/hvc/hvcs.c:1317:12: warning:
 comparison of distinct pointer types ('typeof (count) *' (aka 'int *') and
 'typeof ((16 - hvcsd->chars_in_buffer)) *' (aka 'unsigned int *'))
Message-ID: <202103302107.s29POEnl-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git devel
head:   04524d413d8f1b1d71d7b30564452147bc58dc6c
commit: 1e66f4b1a1dd58815a2f9d55b0108c7ef74b3e63 [22/110] tty: unsigned chars_in_buffer
config: powerpc-randconfig-r024-20210330 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 482283042f795ecc27838a3b2f76b5494991401c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git/commit/?id=1e66f4b1a1dd58815a2f9d55b0108c7ef74b3e63
        git remote add jirislaby https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git
        git fetch --no-tags jirislaby devel
        git checkout 1e66f4b1a1dd58815a2f9d55b0108c7ef74b3e63
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/tty/hvc/hvcs.c:1317:12: warning: comparison of distinct pointer types ('typeof (count) *' (aka 'int *') and 'typeof ((16 - hvcsd->chars_in_buffer)) *' (aka 'unsigned int *')) [-Wcompare-distinct-pointer-types]
                   tosend = min(count, (HVCS_BUFF_LEN - hvcsd->chars_in_buffer));
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:51:19: note: expanded from macro 'min'
   #define min(x, y)       __careful_cmp(x, y, <)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:42:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/minmax.h:32:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/minmax.h:18:28: note: expanded from macro '__typecheck'
           (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                      ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   1 warning generated.


vim +1317 drivers/tty/hvc/hvcs.c

^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1266  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1267  /*
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1268   * NOTE: This is almost always from_user since user level apps interact with the
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1269   * /dev nodes. I'm trusting that if hvcs_write gets called and interrupted by
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1270   * hvcs_remove (which removes the target device and executes tty_hangup()) that
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1271   * tty_hangup will allow hvcs_write time to complete execution before it
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1272   * terminates our device.
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1273   */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1274  static int hvcs_write(struct tty_struct *tty,
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1275  		const unsigned char *buf, int count)
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1276  {
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1277  	struct hvcs_struct *hvcsd = tty->driver_data;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1278  	unsigned int unit_address;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1279  	const unsigned char *charbuf;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1280  	unsigned long flags;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1281  	int total_sent = 0;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1282  	int tosend = 0;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1283  	int result = 0;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1284  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1285  	/*
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1286  	 * If they don't check the return code off of their open they may
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1287  	 * attempt this even if there is no connected device.
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1288  	 */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1289  	if (!hvcsd)
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1290  		return -ENODEV;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1291  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1292  	/* Reasonable size to prevent user level flooding */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1293  	if (count > HVCS_MAX_FROM_USER) {
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1294  		printk(KERN_WARNING "HVCS write: count being truncated to"
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1295  				" HVCS_MAX_FROM_USER.\n");
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1296  		count = HVCS_MAX_FROM_USER;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1297  	}
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1298  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1299  	charbuf = buf;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1300  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1301  	spin_lock_irqsave(&hvcsd->lock, flags);
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1302  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1303  	/*
25985edcedea63 drivers/tty/hvc/hvcs.c Lucas De Marchi 2011-03-30  1304  	 * Somehow an open succeeded but the device was removed or the
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1305  	 * connection terminated between the vty-server and partner vty during
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1306  	 * the middle of a write operation?  This is a crummy place to do this
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1307  	 * but we want to keep it all in the spinlock.
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1308  	 */
1997cf044853a2 drivers/tty/hvc/hvcs.c Jiri Slaby      2012-04-02  1309  	if (hvcsd->port.count <= 0) {
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1310  		spin_unlock_irqrestore(&hvcsd->lock, flags);
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1311  		return -ENODEV;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1312  	}
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1313  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1314  	unit_address = hvcsd->vdev->unit_address;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1315  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1316  	while (count > 0) {
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16 @1317  		tosend = min(count, (HVCS_BUFF_LEN - hvcsd->chars_in_buffer));
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1318  		/*
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1319  		 * No more space, this probably means that the last call to
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1320  		 * hvcs_write() didn't succeed and the buffer was filled up.
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1321  		 */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1322  		if (!tosend)
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1323  			break;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1324  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1325  		memcpy(&hvcsd->buffer[hvcsd->chars_in_buffer],
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1326  				&charbuf[total_sent],
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1327  				tosend);
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1328  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1329  		hvcsd->chars_in_buffer += tosend;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1330  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1331  		result = 0;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1332  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1333  		/*
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1334  		 * If this is true then we don't want to try writing to the
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1335  		 * hypervisor because that is the kernel_threads job now.  We'll
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1336  		 * just add to the buffer.
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1337  		 */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1338  		if (!(hvcsd->todo_mask & HVCS_TRY_WRITE))
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1339  			/* won't send partial writes */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1340  			result = hvc_put_chars(unit_address,
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1341  					&hvcsd->buffer[0],
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1342  					hvcsd->chars_in_buffer);
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1343  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1344  		/*
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1345  		 * Since we know we have enough room in hvcsd->buffer for
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1346  		 * tosend we record that it was sent regardless of whether the
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1347  		 * hypervisor actually took it because we have it buffered.
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1348  		 */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1349  		total_sent+=tosend;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1350  		count-=tosend;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1351  		if (result == 0) {
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1352  			hvcsd->todo_mask |= HVCS_TRY_WRITE;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1353  			hvcs_kick();
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1354  			break;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1355  		}
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1356  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1357  		hvcsd->chars_in_buffer = 0;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1358  		/*
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1359  		 * Test after the chars_in_buffer reset otherwise this could
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1360  		 * deadlock our writes if hvc_put_chars fails.
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1361  		 */
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1362  		if (result < 0)
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1363  			break;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1364  	}
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1365  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1366  	spin_unlock_irqrestore(&hvcsd->lock, flags);
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1367  
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1368  	if (result == -1)
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1369  		return -EIO;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1370  	else
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1371  		return total_sent;
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1372  }
^1da177e4c3f41 drivers/char/hvcs.c    Linus Torvalds  2005-04-16  1373  

:::::: The code at line 1317 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103302107.s29POEnl-lkp%40intel.com.

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--tKW2IUtsqtDRztdT--
