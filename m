Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSU62D4QKGQE7H4NEXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 21911242C53
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 17:48:28 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id y9sf3278969ybp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 08:48:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597247307; cv=pass;
        d=google.com; s=arc-20160816;
        b=deesDE1TmI7bcPQ3Qu+L+zLt4lvH0hKRCaE0Rk4m8gdtmUrS8qurdGoXi+mbcdG2cT
         6+SlPLiVt1ZSietoIvn5J5AsbY5vE6q1kOidgCYTc+T/ZslPhjSCv5ifO/tTksN5tM99
         e2VGCHgl7zcUXwXNrk/T2bbPTsLk6EQjGOp+HDC0pCMS20i1gl2MaJPHuSypvedE2wQY
         dAsdcW3yyj5kZWIxAIqqfav52d6uZsTQrnmWm/t6sPL5OgTapSrR57f4l8fvlqLx2NY1
         z+vIVGX0IoXYE3blXxc0T4ddpIHckdXwW8Ni1hPMFB8ftuU0oDYF1SOGVsKboe1zl1l+
         aqWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=7duAuQJC9p8FzRsTSfClzAUDdb1VaE/IZGe3NXrcFZ4=;
        b=my+30XgVjD0qmmM0gGQ/sJ0OMBirbNOWIvWRXLqTv07gsPXQbT0De0fjbtPmXzSr3H
         +soGEhZIdMbGoDQx1R+qYL1c72TnUstHxGRqDslQv5bo7wwkxQGi/iDozZKQ3Cgsj853
         4TnvLHa9QswSvQdmavMsd4M3Xrf0WXaUhFULFinJlQKB0jmIeqA/vLpumheoEs/lsr+3
         Zwl9K+USOVywDuOSAudUxWJ1vNW8YqNWXfK97cfCOqbM0LKecZ12UvB/TQci/WhWNBK+
         cM70/PucSOqy1EpfiCnTd6LLigFe3KHobsS25z+MHtPIyNxHJK9/3ulYSxczZmEnc+Xi
         nXew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7duAuQJC9p8FzRsTSfClzAUDdb1VaE/IZGe3NXrcFZ4=;
        b=e+RpqGOw90bZ6UNt/oIDeCqEehXsGlC+BjNxBquKdrkCwidiaHTu4phRgybmyHxGkd
         1wzJURTcJihB8cRSB8yXG6MHaR6sBSE/ThzK6H89995MY1Ls4Ldm7suADwB2862zW6rP
         Z5HEyJKT8hMNAf8Zf3aaX319JCItpeKAr3f7KIxUzkL7zeNDP9kNAa+Djv3BdHzpOIwg
         ILtko3LE2MflhGmYGbWtGsyrA8sP//wPylKspF5EG5kbvUPn/zvs0H6MnEy8O4UO1sg/
         MtVY1+xv/MrBLWj6yd9gWx/VtJ7ZDVHXMv+qS9Z4ONO9aZ3VC1hnRb3n9G2DWSdideUW
         f6KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7duAuQJC9p8FzRsTSfClzAUDdb1VaE/IZGe3NXrcFZ4=;
        b=dRZqm4A5os1JnbD30Iw62z2HUvUrUmKfrGNigvRXUFtLKAtGNkE/kuRGruDvtnRgiY
         moDm/wMDM4tmzp4iXL9w25jNnCjh/lgp/U51LRcIVvv8/AKjWTsvVYaV5O+nQ/+NNO47
         C9smHoCcpOvx4+QArpWvKXaXeEjt2qoMHgqbWTfQZhRy4f5N46prlYyky9v7SduN6L0T
         GZSnQyVPJmj5qqoys1Ro3te3RlAzCxqmd7CmZyJnoZJUccg5mc61NQHrT6IYKxwfRD32
         8suYxgntRXDusVj/D2ZexxwT3aRkDFSqhqODFBU+MH/X37hcXENH5lqgaVNwYjYhBQbB
         mB4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+UsapUYlZE5ycRwMH4bGvnzwpsdHyXfE/9r+QekFOd70UcxUz
	5nFr7XoVev55ttVf/DfMbEk=
X-Google-Smtp-Source: ABdhPJwrFz20+8pPexWZDFrLW/hi2BvpGJhVICpLR+k96G4NWy7Q3uKlT2Fyhuzd7ggMcs61AriS9w==
X-Received: by 2002:a25:d44e:: with SMTP id m75mr862945ybf.157.1597247307062;
        Wed, 12 Aug 2020 08:48:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:b0d:: with SMTP id z13ls1046156ybp.8.gmail; Wed, 12 Aug
 2020 08:48:25 -0700 (PDT)
X-Received: by 2002:a25:cfcc:: with SMTP id f195mr942788ybg.490.1597247305168;
        Wed, 12 Aug 2020 08:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597247305; cv=none;
        d=google.com; s=arc-20160816;
        b=j6gc2mh/Gb/Wk7unbugml53UU5/HOd8ylZj+CqvxSiUUfbk5EqVYyrkRvSEckV6yAZ
         U5zcvWIAsj4GvR8kOcVPFkNW/HPPJLOcHaPKL7bSkL2iz5YrpN/rqV3AwCJxPXib4GD7
         ZPR+yxUETvNcPLhDu/wKdceE0CYudWi6RFMPIZogJO7pT4Umx2k+OsVgupn0NMjlncN+
         +DRpJkh24WfBxCE4Ha0GU5CykRDu1tfPUeyeRydXUZsmCgmnYbeZN8tkLQiHwd0lc1Xq
         4GY969K2S1MEar8h5pQ/mxITW7Mq7TEwHuL8EgY3OBZjkIRMLHseG5IbC1ptD7DAviO8
         xpTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=PN83PwLLmOfxZK4nsX/5C2BcnS/eWJerzNVE5DvP/DA=;
        b=ExNxTO+yj0N2U7mA8a8eDZYcLNdZmxm3Jk62K4bBaI/z+vDhMjEaWW1ZRZ/zxoAm3U
         f5Dfmbjb/FKNnhMeoFKyA4XVYYTlmwdaG5rhoOSnHBO3fyQpSXoMtCf+UWE3VQ/NG7j8
         GYhJQYK2qFkWAjuiSko1ti/KSLQdzFUetUc7TRKVHa2FLP30EAXAAzsg1QfY0MVnM/g8
         lDp93Bd8+X37v9YnERzu1AyfPhYSfZcdz+jRtuiSlLbcapUrhA5kfoCqANT9Forn880N
         mYWM+YrNOSnCOGbB3b7H5KOB8lDgLtAg2TrMj43g9pFCPcTbsoZbo4eWQzDEwS+YliTp
         MbqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id 7si211704ybc.0.2020.08.12.08.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 08:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: PvJBa1ZsjG07px3lTXQWHOyaexSoQZaCMdrQGqDEu/3kzM9a3CnPp5DaAenjCazd3k0kG/X32q
 4z3pfFYujZxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9711"; a="238827162"
X-IronPort-AV: E=Sophos;i="5.76,304,1592895600"; 
   d="gz'50?scan'50,208,50";a="238827162"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2020 08:48:05 -0700
IronPort-SDR: 6T6fIZ5icCpwrs/HjRvOU5z66cvyCVnfxQPrYA9tmvSc5Lvb8aMxQgV4iLtjdQLyc3sjuURP6i
 8lx3bvAdOWoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,304,1592895600"; 
   d="gz'50?scan'50,208,50";a="295102497"
Received: from lkp-server01.sh.intel.com (HELO 7f1ebb311643) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 12 Aug 2020 08:48:03 -0700
Received: from kbuild by 7f1ebb311643 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k5syw-00008m-Ji; Wed, 12 Aug 2020 15:48:02 +0000
Date: Wed, 12 Aug 2020 23:47:59 +0800
From: kernel test robot <lkp@intel.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH v1 02/19] powerpc/ptrace: Move declaration of
 ptrace_get_reg() and ptrace_set_reg()
Message-ID: <202008122313.a7SnmgXb%lkp@intel.com>
References: <6b590dfd8f7e5d7cbe08efd376ac056cefc5aba7.1597233555.git.christophe.leroy@csgroup.eu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
In-Reply-To: <6b590dfd8f7e5d7cbe08efd376ac056cefc5aba7.1597233555.git.christophe.leroy@csgroup.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Christophe,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on linus/master]
[also build test ERROR on v5.8 next-20200812]
[cannot apply to powerpc/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Christophe-Leroy/powerpc-Switch-signal-32-to-using-user_access_begin-and-friends/20200812-200934
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git fb893de323e2d39f7a1f6df425703a2edbdf56ea
config: powerpc64-randconfig-r004-20200812 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 30c1633386e7cfb01c0a54b31ccf4c3a3873e71b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/kernel/ptrace/ptrace32.c:86:10: error: implicit declaration of function 'ptrace_get_reg' [-Werror,-Wimplicit-function-declaration]
                           ret = ptrace_get_reg(child, index, &tmp);
                                 ^
   arch/powerpc/kernel/ptrace/ptrace32.c:141:10: error: implicit declaration of function 'ptrace_get_reg' [-Werror,-Wimplicit-function-declaration]
                           ret = ptrace_get_reg(child, numReg, &tmp2);
                                 ^
>> arch/powerpc/kernel/ptrace/ptrace32.c:190:10: error: implicit declaration of function 'ptrace_put_reg' [-Werror,-Wimplicit-function-declaration]
                           ret = ptrace_put_reg(child, index, data);
                                 ^
   arch/powerpc/kernel/ptrace/ptrace32.c:230:10: error: implicit declaration of function 'ptrace_get_reg' [-Werror,-Wimplicit-function-declaration]
                           ret = ptrace_get_reg(child, numReg, &freg);
                                 ^
   arch/powerpc/kernel/ptrace/ptrace32.c:237:10: error: implicit declaration of function 'ptrace_put_reg' [-Werror,-Wimplicit-function-declaration]
                           ret = ptrace_put_reg(child, numReg, freg);
                                 ^
   5 errors generated.

vim +/ptrace_get_reg +86 arch/powerpc/kernel/ptrace/ptrace32.c

9c75a31c3525a1 arch/powerpc/kernel/ptrace32.c Michael Neuling        2008-06-26   35  
81e695c026eeda arch/powerpc/kernel/ptrace32.c Roland McGrath         2007-12-20   36  long compat_arch_ptrace(struct task_struct *child, compat_long_t request,
81e695c026eeda arch/powerpc/kernel/ptrace32.c Roland McGrath         2007-12-20   37  			compat_ulong_t caddr, compat_ulong_t cdata)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   38  {
81e695c026eeda arch/powerpc/kernel/ptrace32.c Roland McGrath         2007-12-20   39  	unsigned long addr = caddr;
81e695c026eeda arch/powerpc/kernel/ptrace32.c Roland McGrath         2007-12-20   40  	unsigned long data = cdata;
6b9c7ed8483775 arch/powerpc/kernel/ptrace32.c Christoph Hellwig      2006-01-08   41  	int ret;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   42  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   43  	switch (request) {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   44  	/*
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   45  	 * Read 4 bytes of the other process' storage
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   46  	 *  data is a pointer specifying where the user wants the
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   47  	 *	4 bytes copied into
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   48  	 *  addr is a pointer in the user's storage that contains an 8 byte
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   49  	 *	address in the other process of the 4 bytes that is to be read
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   50  	 * (this is run in a 32-bit process looking at a 64-bit process)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   51  	 * when I and D space are separate, these will need to be fixed.
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   52  	 */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   53  	case PPC_PTRACE_PEEKTEXT_3264:
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   54  	case PPC_PTRACE_PEEKDATA_3264: {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   55  		u32 tmp;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   56  		int copied;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   57  		u32 __user * addrOthers;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   58  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   59  		ret = -EIO;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   60  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   61  		/* Get the addr in the other process that we want to read */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   62  		if (get_user(addrOthers, (u32 __user * __user *)addr) != 0)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   63  			break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   64  
84d77d3f06e7e8 arch/powerpc/kernel/ptrace32.c Eric W. Biederman      2016-11-22   65  		copied = ptrace_access_vm(child, (u64)addrOthers, &tmp,
f307ab6dcea03f arch/powerpc/kernel/ptrace32.c Lorenzo Stoakes        2016-10-13   66  				sizeof(tmp), FOLL_FORCE);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   67  		if (copied != sizeof(tmp))
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   68  			break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   69  		ret = put_user(tmp, (u32 __user *)data);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   70  		break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   71  	}
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   72  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   73  	/* Read a register (specified by ADDR) out of the "user area" */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   74  	case PTRACE_PEEKUSR: {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   75  		int index;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   76  		unsigned long tmp;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   77  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   78  		ret = -EIO;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   79  		/* convert to index and check */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   80  		index = (unsigned long) addr >> 2;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   81  		if ((addr & 3) || (index > PT_FPSCR32))
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   82  			break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   83  
fabca2c0a461bd arch/powerpc/kernel/ptrace32.c Roland McGrath         2007-09-25   84  		CHECK_FULL_REGS(child->thread.regs);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   85  		if (index < PT_FPR0) {
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14  @86  			ret = ptrace_get_reg(child, index, &tmp);
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14   87  			if (ret)
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14   88  				break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   89  		} else {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   90  			flush_fp_to_thread(child);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   91  			/*
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   92  			 * the user space code considers the floating point
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   93  			 * to be an array of unsigned int (32 bits) - the
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   94  			 * index passed in is based on this assumption.
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   95  			 */
de79f7b9f6f92e arch/powerpc/kernel/ptrace32.c Paul Mackerras         2013-09-10   96  			tmp = ((unsigned int *)child->thread.fp_state.fpr)
9c75a31c3525a1 arch/powerpc/kernel/ptrace32.c Michael Neuling        2008-06-26   97  				[FPRINDEX(index)];
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   98  		}
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16   99  		ret = put_user((unsigned int)tmp, (u32 __user *)data);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  100  		break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  101  	}
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  102    
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  103  	/*
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  104  	 * Read 4 bytes out of the other process' pt_regs area
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  105  	 *  data is a pointer specifying where the user wants the
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  106  	 *	4 bytes copied into
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  107  	 *  addr is the offset into the other process' pt_regs structure
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  108  	 *	that is to be read
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  109  	 * (this is run in a 32-bit process looking at a 64-bit process)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  110  	 */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  111  	case PPC_PTRACE_PEEKUSR_3264: {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  112  		u32 index;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  113  		u32 reg32bits;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  114  		u64 tmp;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  115  		u32 numReg;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  116  		u32 part;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  117  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  118  		ret = -EIO;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  119  		/* Determine which register the user wants */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  120  		index = (u64)addr >> 2;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  121  		numReg = index / 2;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  122  		/* Determine which part of the register the user wants */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  123  		if (index % 2)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  124  			part = 1;  /* want the 2nd half of the register (right-most). */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  125  		else
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  126  			part = 0;  /* want the 1st half of the register (left-most). */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  127  
912000e73ee8fc arch/powerpc/kernel/ptrace32.c Benjamin Herrenschmidt 2007-06-04  128  		/* Validate the input - check to see if address is on the wrong boundary
912000e73ee8fc arch/powerpc/kernel/ptrace32.c Benjamin Herrenschmidt 2007-06-04  129  		 * or beyond the end of the user area
912000e73ee8fc arch/powerpc/kernel/ptrace32.c Benjamin Herrenschmidt 2007-06-04  130  		 */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  131  		if ((addr & 3) || numReg > PT_FPSCR)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  132  			break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  133  
fabca2c0a461bd arch/powerpc/kernel/ptrace32.c Roland McGrath         2007-09-25  134  		CHECK_FULL_REGS(child->thread.regs);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  135  		if (numReg >= PT_FPR0) {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  136  			flush_fp_to_thread(child);
bc826666e4252f arch/powerpc/kernel/ptrace32.c Michael Neuling        2009-04-05  137  			/* get 64 bit FPR */
de79f7b9f6f92e arch/powerpc/kernel/ptrace32.c Paul Mackerras         2013-09-10  138  			tmp = child->thread.fp_state.fpr[numReg - PT_FPR0][0];
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  139  		} else { /* register within PT_REGS struct */
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14  140  			unsigned long tmp2;
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14  141  			ret = ptrace_get_reg(child, numReg, &tmp2);
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14  142  			if (ret)
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14  143  				break;
ee4a3916614829 arch/powerpc/kernel/ptrace32.c Alexey Kardashevskiy   2013-02-14  144  			tmp = tmp2;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  145  		} 
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  146  		reg32bits = ((u32*)&tmp)[part];
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  147  		ret = put_user(reg32bits, (u32 __user *)data);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  148  		break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  149  	}
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  150  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  151  	/*
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  152  	 * Write 4 bytes into the other process' storage
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  153  	 *  data is the 4 bytes that the user wants written
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  154  	 *  addr is a pointer in the user's storage that contains an
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  155  	 *	8 byte address in the other process where the 4 bytes
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  156  	 *	that is to be written
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  157  	 * (this is run in a 32-bit process looking at a 64-bit process)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  158  	 * when I and D space are separate, these will need to be fixed.
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  159  	 */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  160  	case PPC_PTRACE_POKETEXT_3264:
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  161  	case PPC_PTRACE_POKEDATA_3264: {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  162  		u32 tmp = data;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  163  		u32 __user * addrOthers;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  164  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  165  		/* Get the addr in the other process that we want to write into */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  166  		ret = -EIO;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  167  		if (get_user(addrOthers, (u32 __user * __user *)addr) != 0)
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  168  			break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  169  		ret = 0;
84d77d3f06e7e8 arch/powerpc/kernel/ptrace32.c Eric W. Biederman      2016-11-22  170  		if (ptrace_access_vm(child, (u64)addrOthers, &tmp,
f307ab6dcea03f arch/powerpc/kernel/ptrace32.c Lorenzo Stoakes        2016-10-13  171  					sizeof(tmp),
f307ab6dcea03f arch/powerpc/kernel/ptrace32.c Lorenzo Stoakes        2016-10-13  172  					FOLL_FORCE | FOLL_WRITE) == sizeof(tmp))
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  173  			break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  174  		ret = -EIO;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  175  		break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  176  	}
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  177  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  178  	/* write the word at location addr in the USER area */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  179  	case PTRACE_POKEUSR: {
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  180  		unsigned long index;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  181  
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  182  		ret = -EIO;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  183  		/* convert to index and check */
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  184  		index = (unsigned long) addr >> 2;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  185  		if ((addr & 3) || (index > PT_FPSCR32))
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  186  			break;
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  187  
fabca2c0a461bd arch/powerpc/kernel/ptrace32.c Roland McGrath         2007-09-25  188  		CHECK_FULL_REGS(child->thread.regs);
^1da177e4c3f41 arch/ppc64/kernel/ptrace32.c   Linus Torvalds         2005-04-16  189  		if (index < PT_FPR0) {
865418d8e78b9c arch/powerpc/kernel/ptrace32.c Benjamin Herrenschmidt 2007-06-04 @190  			ret = ptrace_put_reg(child, index, data);

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008122313.a7SnmgXb%25lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
8J4aYMF7nUXO5oVasqPA/wCJKbfKLK8BAA==

--vkogqOf2sHV7VnPd--
