Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKFNVL7AKGQEJLTBMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC4D2CF540
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 21:06:01 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id m3sf6213027iok.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 12:06:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607112360; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFJ9ANJkVx/zlQSeVUi76zmqQyYVj1CazO1dfdcrSeABLEsaNdYrEBYMS3D8LvF1/O
         C+CTaYDskHiPoaQ3DJ4qlfg+kHX70gxnWHKGE+RgK+2BZ8U04JvERfvhZoOzGU/EteBA
         B6S728Jw8/POY16NDlgasQJqCiH4Bi27GMBtXs36ijFfWCa741FOeBrGRZokW41DwV30
         +hBpeOTjXS0OXHEhHU5CFPo2sNgfm9RJg2dIhhdPw7mfaCBLJ4NiC3l5linaHyaIjHE/
         0zrS1+D8wj41mIYmvjyaNGnMudCo7qOCY/MLh3FGffwGeoWziTLU0XER12ylM8BK+tcd
         d2Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=NT9Ia8C9exgKqr3MPCfZMA5CGiFwBBHlz+PXClu0wWU=;
        b=Jrm8Dn+KQQqxonGJs79VhEm/1caVBJ5rZbdKoUnzjl9uZhN085p6mdvsL8y7NnNwVi
         +GtHfPGVe3KS7JN/hhb6pqulepUU3RljNdbpaJbHYAGnRBxELfgFz6/dChxdW1YfNaIi
         6GrFK8/K0424d5kS/mFRjw5UeHnCgIZ9pF1NyJkgGQBEJU96SS53lUENMMTeocIyj5M4
         TteQnSbgUjqStb4JWYZAIBwyR9NTQLgDED9m5HO/rhT+MMl9DP5N5eVY6uheM3I7CtDU
         0LxWMutbitCjL9pCbxReFTSfrBUPoEFGuNJc1cLDDzAsrFMQbJ2Rp3yiw+95lsn6err3
         oIGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NT9Ia8C9exgKqr3MPCfZMA5CGiFwBBHlz+PXClu0wWU=;
        b=ZUmoSlR/LKXTSD99q+snoIXZkW8WjX/g5w6i4wilfjaYdo8PP46nd0Nn3Ar9JTG9mm
         x4J2wmxq6iqbX64hp9lV+BOMAnWONdfKFUEAdoryNv5nTWkxGfIsp8rBIATQFW5vIXiE
         wJlh1dfF838zNRamEBR4lJBaQltRVd1tG7D7f3ePOTo3v4E6PN0BgO9igbPgG6Zxb2nm
         tHIFVV/6xGT5rJBKeubLLpBvvPII6FCcc83vpDJDy8CemCXNRZDE/QcDPqvaXgBCCbS9
         p6VEsRlE+JTgKyx3KbklNY0t4XwECymv6jFdu1gE6vhSUClGMAseuHNrJbyGsiGJEya0
         LaGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NT9Ia8C9exgKqr3MPCfZMA5CGiFwBBHlz+PXClu0wWU=;
        b=F9zzZT1/Qh184xfE/h+elJqxchm+uAhaFrGOPsVekZWuV20a22DicJk3kODpmngWFs
         5Gkf8o4ed+SczlpiLVQQyGWXvqi+BSTRH5WosZ76gLR/CQP1EJrDX6dzvaLtnroFZiv8
         +7SPGSfZzdmA0bv4dn+mLbZwpXDZag4KplaSFz2lVIDNtDbDoyrM5/y3GNmM0QlAhqyl
         svfiEzr9RvBSLoeci3qR4fIpGqhH7N+Ss2U5NvwAhXJ8tPlC5CugIcrSKVVp5S7mS+Bc
         QPENanLKKN8ZS6DJMuuNQrAhISknRk3rYdE3ayqvsTwNCvtnz/oDgFcGixlYxLAybuX2
         iBrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PE0tnfvxTGTpxh0eR6wr2CePtdkDS7SyzjaU+kviTTbmC54uj
	nn348nFF9sXtKAh5tUpVVws=
X-Google-Smtp-Source: ABdhPJzBNG2FvV7//ZbAm5LezxifS23+nm5N9v78Em/g6CX6EZX9A3oiFadgcGB+csv8Qy+85nLWLA==
X-Received: by 2002:a92:da10:: with SMTP id z16mr8461039ilm.20.1607112360334;
        Fri, 04 Dec 2020 12:06:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1656:: with SMTP id a22ls1299848jat.7.gmail; Fri,
 04 Dec 2020 12:05:59 -0800 (PST)
X-Received: by 2002:a02:4ec4:: with SMTP id r187mr8556360jaa.65.1607112359787;
        Fri, 04 Dec 2020 12:05:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607112359; cv=none;
        d=google.com; s=arc-20160816;
        b=avBK1atKwMP+odVyW7I5x6qMRQc5rfmtAUQTsQb4OkBXTUU1nINlZa8HlFuQX0PzxQ
         6RdGfzHKJgxUW9rHiO4PBnXIkoBm1BPFJ6d/d3nZBqewmcgeuueXER1TI5TRXt0gdnQA
         D9HZ+kp7cScItLdBhbm1jRxER5wG8nMdhi1O7uEYbsa6kLB4uBkPZ1qCXi2J2/oOYyQy
         TT54Za1PreMMf+YRfQ2dNjsJw3CbfBhl3daJ0BlRUczYRp/bHt88lu+zLRulcq3AO3qJ
         iicH2xDVL4ZVVgjlMCAYHoO4Dcn5ahzYt+4JdxizaGyqZpSx73cXgqUqF7amcX66magd
         Wdqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=4D8PURyqaLACgfVPRA6//hbC+3mKMLhMTMEhZ93SELQ=;
        b=Ekg+M8BJmvNFZ8OsBwBRzne4Obwk2bMqer+qjqA3dSioiVulPAF0WkTe362nWATutI
         DEHVIp5vJMep+Lw7JqsL+9v91s/whr71qrRpgJsBV7gw9SpOe0qyur7VpOB4yiasbP9R
         K/+45j+MJJ1zwoVM9dJZWE9SrsIF6oSNIFhjQl4WsKgwXgH0tDi9GM47344srvq6Knil
         3DjipN1zd12Yt6KL7hxxLDn6QwJYzpjLUt1+sEdRtwuO0kzurJ9kbR3TRwNJDZHl3NN6
         c/xecucK9zx4VW/euxC29L4tPPg8ViijlomCEIh7K5BrdDKfNT8fJ014nD6JOkndbhgE
         2pdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id m8si231804ilf.2.2020.12.04.12.05.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 12:05:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: Hc3S+EqtmyNy14bsVLm8gZCI3zQJaLlJvXDAJVxu9Pon1jhMu4YiVsdqVO/fbC78yG2/hIazuo
 Mq/w94hoXcLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="161204560"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; 
   d="gz'50?scan'50,208,50";a="161204560"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2020 12:05:58 -0800
IronPort-SDR: cUgQV2VG28zk0AqXYgUdUjYSUr9RXyAuWPEBHTpkNhQBQgx1xAmqo8BrStgsJWbG9l/L4X7lNt
 WgQMhQlsZmDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; 
   d="gz'50?scan'50,208,50";a="374456458"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 04 Dec 2020 12:05:56 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1klHL1-0000Oz-EN; Fri, 04 Dec 2020 20:05:55 +0000
Date: Sat, 5 Dec 2020 04:05:37 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Lynch <nathanl@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>
Subject: [powerpc:next-test 192/220] arch/powerpc/kernel/rtas.c:938:21:
 error: no member named 'rtas_args_reentrant' in 'struct paca_struct'
Message-ID: <202012050432.SFbbjWMw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next-test
head:   4e4ed87981c764498942c52004c620bb8f104eac
commit: e2f67efc6c8654d7aed885e943499f00a29eecdc [192/220] powerpc/rtas: move rtas_call_reentrant() out of pseries guards
config: powerpc-randconfig-r016-20201204 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/commit/?id=e2f67efc6c8654d7aed885e943499f00a29eecdc
        git remote add powerpc https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git
        git fetch --no-tags powerpc next-test
        git checkout e2f67efc6c8654d7aed885e943499f00a29eecdc
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/kernel/rtas.c:938:21: error: no member named 'rtas_args_reentrant' in 'struct paca_struct'
           args = local_paca->rtas_args_reentrant;
                  ~~~~~~~~~~  ^
   1 error generated.

vim +938 arch/powerpc/kernel/rtas.c

b664db8e3f976d Leonardo Bras 2020-05-18  906  
b664db8e3f976d Leonardo Bras 2020-05-18  907  /**
b664db8e3f976d Leonardo Bras 2020-05-18  908   * rtas_call_reentrant() - Used for reentrant rtas calls
b664db8e3f976d Leonardo Bras 2020-05-18  909   * @token:	Token for desired reentrant RTAS call
b664db8e3f976d Leonardo Bras 2020-05-18  910   * @nargs:	Number of Input Parameters
b664db8e3f976d Leonardo Bras 2020-05-18  911   * @nret:	Number of Output Parameters
b664db8e3f976d Leonardo Bras 2020-05-18  912   * @outputs:	Array of outputs
b664db8e3f976d Leonardo Bras 2020-05-18  913   * @...:	Inputs for desired RTAS call
b664db8e3f976d Leonardo Bras 2020-05-18  914   *
b664db8e3f976d Leonardo Bras 2020-05-18  915   * According to LoPAR documentation, only "ibm,int-on", "ibm,int-off",
b664db8e3f976d Leonardo Bras 2020-05-18  916   * "ibm,get-xive" and "ibm,set-xive" are currently reentrant.
b664db8e3f976d Leonardo Bras 2020-05-18  917   * Reentrant calls need their own rtas_args buffer, so not using rtas.args, but
b664db8e3f976d Leonardo Bras 2020-05-18  918   * PACA one instead.
b664db8e3f976d Leonardo Bras 2020-05-18  919   *
b664db8e3f976d Leonardo Bras 2020-05-18  920   * Return:	-1 on error,
b664db8e3f976d Leonardo Bras 2020-05-18  921   *		First output value of RTAS call if (nret > 0),
b664db8e3f976d Leonardo Bras 2020-05-18  922   *		0 otherwise,
b664db8e3f976d Leonardo Bras 2020-05-18  923   */
b664db8e3f976d Leonardo Bras 2020-05-18  924  int rtas_call_reentrant(int token, int nargs, int nret, int *outputs, ...)
b664db8e3f976d Leonardo Bras 2020-05-18  925  {
b664db8e3f976d Leonardo Bras 2020-05-18  926  	va_list list;
b664db8e3f976d Leonardo Bras 2020-05-18  927  	struct rtas_args *args;
b664db8e3f976d Leonardo Bras 2020-05-18  928  	unsigned long flags;
b664db8e3f976d Leonardo Bras 2020-05-18  929  	int i, ret = 0;
b664db8e3f976d Leonardo Bras 2020-05-18  930  
b664db8e3f976d Leonardo Bras 2020-05-18  931  	if (!rtas.entry || token == RTAS_UNKNOWN_SERVICE)
b664db8e3f976d Leonardo Bras 2020-05-18  932  		return -1;
b664db8e3f976d Leonardo Bras 2020-05-18  933  
b664db8e3f976d Leonardo Bras 2020-05-18  934  	local_irq_save(flags);
b664db8e3f976d Leonardo Bras 2020-05-18  935  	preempt_disable();
b664db8e3f976d Leonardo Bras 2020-05-18  936  
b664db8e3f976d Leonardo Bras 2020-05-18  937  	/* We use the per-cpu (PACA) rtas args buffer */
b664db8e3f976d Leonardo Bras 2020-05-18 @938  	args = local_paca->rtas_args_reentrant;
b664db8e3f976d Leonardo Bras 2020-05-18  939  
b664db8e3f976d Leonardo Bras 2020-05-18  940  	va_start(list, outputs);
b664db8e3f976d Leonardo Bras 2020-05-18  941  	va_rtas_call_unlocked(args, token, nargs, nret, list);
b664db8e3f976d Leonardo Bras 2020-05-18  942  	va_end(list);
b664db8e3f976d Leonardo Bras 2020-05-18  943  
b664db8e3f976d Leonardo Bras 2020-05-18  944  	if (nret > 1 && outputs)
b664db8e3f976d Leonardo Bras 2020-05-18  945  		for (i = 0; i < nret - 1; ++i)
b664db8e3f976d Leonardo Bras 2020-05-18  946  			outputs[i] = be32_to_cpu(args->rets[i + 1]);
b664db8e3f976d Leonardo Bras 2020-05-18  947  
b664db8e3f976d Leonardo Bras 2020-05-18  948  	if (nret > 0)
b664db8e3f976d Leonardo Bras 2020-05-18  949  		ret = be32_to_cpu(args->rets[0]);
b664db8e3f976d Leonardo Bras 2020-05-18  950  
b664db8e3f976d Leonardo Bras 2020-05-18  951  	local_irq_restore(flags);
b664db8e3f976d Leonardo Bras 2020-05-18  952  	preempt_enable();
b664db8e3f976d Leonardo Bras 2020-05-18  953  
b664db8e3f976d Leonardo Bras 2020-05-18  954  	return ret;
b664db8e3f976d Leonardo Bras 2020-05-18  955  }
b664db8e3f976d Leonardo Bras 2020-05-18  956  

:::::: The code at line 938 was first introduced by commit
:::::: b664db8e3f976d9233cc9ea5e3f8a8c0bcabeb48 powerpc/rtas: Implement reentrant rtas call

:::::: TO: Leonardo Bras <leobras.c@gmail.com>
:::::: CC: Michael Ellerman <mpe@ellerman.id.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012050432.SFbbjWMw-lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--M9NhX3UHpAaciwkO--
