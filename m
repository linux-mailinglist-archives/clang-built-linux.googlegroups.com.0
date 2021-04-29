Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBH6SVSCAMGQEI4JQ6SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD6C36F240
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 23:46:08 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id p8-20020a17090a74c8b02901558c0dbcd5sf591049pjl.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 14:46:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619732767; cv=pass;
        d=google.com; s=arc-20160816;
        b=BV8dMD+83QoNGszqlZbtUluAdbDY7bNd3sSw5A9Ml3g3mYfi8ItDbS0LdXiJ3/IZCX
         kdw/KOMNyyTq4vu5AioC5TwMQg/GhTWLXBu/ZeQC/gj3ktIn0Xb9BexoI+fUXBiEP+hL
         LBiIJ706pPbHlyEwNj1WrrOjJAuitG4ihR2kjJj7ceVZKJtnWEAjBTIor90AVqNovu6T
         n8NViSl1tnV7fOE+u1MZtxijGTpffaBZlsuC8l7eb7zawoM09Vkg681XOFJN5ApEpdK6
         aRk0qR3nLNtQVCAiEIf07s1PAB8+QinmsbMgD+8eTnK202clHFCAEP0jgCa2mAgjNj0p
         Nbow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=aFbEdEMu108p0Xrr6Wgnjp+CSpnMfgD/eKHb/iTYj10=;
        b=sPRpbnrMq2CiF9z/1AvC9g4f5kJUqK9/YIUgZK2SUYbNTDG2VygiwA9wwn+pnnmlz/
         fbcD2V9KOYEHhdYlv9p0sCEeSWfcmKqkXDi9zgAFlDMN4Xf8NVboUyF1NLqrBVLGAsS+
         Ola5kLtXDlnZzqq3lgL2l3beqb7U+/yR3LIVcTAeHMLDagBsyjBkd804Srf8Waic6TDh
         BePmtbip02cjLmWlX05DWGjkuzQHVOgVyCsaEZEtw0LtliAUEDm6k2ORPjspWWPi7vfR
         9EAqE+07ZUUrA+wwUKZlDM2XxdIlELXx7ZWnO8SodLNBBdBp6V0sbPrhPkz0UpYbjKjJ
         Ga3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aFbEdEMu108p0Xrr6Wgnjp+CSpnMfgD/eKHb/iTYj10=;
        b=HAji6q7SMOr9QECYpTbcXMs4lMPEiFEUofZbJfmams3fr8AakpBKdhS7miGQijgbyk
         j07Yi/1/p8gtvWI0S7uYZx/UIXix68TVqP20V394Wg5w7A+2XqUnnbUDonT3CSZfWg2K
         SdUPT1Pb6X9nCjH0TRnfCq3uC9pJbBHxiCZvOaPy4wbHfhK2oMVRtB6XMKL/qTlCa5oG
         iaQWPa5BHFO9EiIQmfSYYq/Bdw6Rx3dgMqEReo3g0C/lUOOGUXtS6c/kKA9IIOikqIWR
         pLuYkBfKFTME8KkU74nfvPMwY5lzwHe5JyGU1qKpRYmeRtLPfDhJOs14YWM/cKp3XEqu
         CQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aFbEdEMu108p0Xrr6Wgnjp+CSpnMfgD/eKHb/iTYj10=;
        b=G3FqMiFURE7oO5dKwf/+SMtK1u3ZNm2/CmXLqrn8wsZb5sO5I1sWi7NfTCy8aMLYgf
         LXFoX20NPr1YOjfKNU2HVqdZsVDYUs6fX7clnlgapw7hDikzAIYY2bFp0Oj0s1SnROjy
         Tw2WuRHKhllzAcVvgjbXO4a2ulTjGdx3hoYTQuuyCYjFukFun80hmmX6Ao7UkbiUTxRu
         H1aV7Z6a3uERPX9Ap5NlNMpMR5Qpjdd2U6Wk3dzmEWFIYqnoJE+1r0t1a8ioL0hJoSjd
         z0oivW8BSGs9eTTk5UVg2zuh5zOIV4oq0f1TMkLvNCGRlV5o5tW4X8h4QLnKBT0Oxvhe
         LFCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ml7PfR4ejC0DYoJa+BsztMjnfPMNROcdOnHJH9Y6c3lChhHQ/
	At4MifScyadu3X0EUdRz1Qs=
X-Google-Smtp-Source: ABdhPJyGVx7ZLc5PnrXWamgKbljw3HXf8v3HKRI8ScKninPH2VVGSp/pIVfbTP0kHlrm7EIjnIBwjA==
X-Received: by 2002:a63:e706:: with SMTP id b6mr1697150pgi.302.1619732767092;
        Thu, 29 Apr 2021 14:46:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7208:: with SMTP id ba8ls2217620plb.10.gmail; Thu,
 29 Apr 2021 14:46:06 -0700 (PDT)
X-Received: by 2002:a17:902:6544:b029:ea:f94e:9d4e with SMTP id d4-20020a1709026544b02900eaf94e9d4emr2021857pln.16.1619732766398;
        Thu, 29 Apr 2021 14:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619732766; cv=none;
        d=google.com; s=arc-20160816;
        b=0r+2jomA2A2K8KIuJjArh8mUXRjDGc/NQrbOvJfp7/S6ggkgAhSueNMzsByq8MEegJ
         y91yrofYt6fzOdwYXg2+MfDIFfetZGq8kvXqf/WCwwfH6qK/YgrlHmiXNyWELpO2UfhK
         Ur/4A+NtTY/4cB+Qa6wjuFkwAUxozUKNUtOxxfLGbFMDX7OibVMCZqWYs9/Afc6T8NY7
         gRwiCbI/KR1b+LPYB7/oMNjGX36hlTXBMBvTx+RT1101CcL30Kok6uGuim1suABDy2XN
         2Nej4BtsK161s/b/lr/iONR1Ii/wunvWHgviaDxwcP42qXFhld3jjBtnFk5GVJfK/Ihp
         fEMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=KTHITyLNvg0nWkA5Do0HfCqE0EvTehD3vdKN8Ta+Od4=;
        b=G02lBDvxjzOZS2GEFjD8oEeqfRbnXOpLM+vkgo5U/rwqzn/9InqrkWZhfrSPFWk4z9
         yqHXy9Ox2tZT76N83x9qtlesV7Y6mGfSNsXzivFMakznMEBHnL1lo1wx0L6Rs/u7nVhW
         3GJYG1mMY2mnm+ZP5prVcvuObto2/9D7ERkuqERrCwk284R7AV8vgW+9WI33jZaZQ3JD
         8FrB39zR16N+Rq+PdiRcC68pnuYnnAnlMXPcvMjMrkFMH8i7k9uoEvQmM2nnjNWNTSaO
         oXy/bZ2AK+tpFtd9qbSf8kRjO0yOuL52s0WlqrpAAvy4BYOedEkf0N2KHfgvw0eQs1Eo
         IfNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id j184si266679pfb.1.2021.04.29.14.46.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 14:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Xp7NbiNMa9wbxma2bOgK3noakSAtwB1p/WFlj/Mmq9uiJhJFPEErVIFZlOMHXDLAFhtookALmU
 jLHKFW+zdfSw==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="177263211"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; 
   d="gz'50?scan'50,208,50";a="177263211"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2021 14:46:03 -0700
IronPort-SDR: ETFsTRNTDqCNrm/ATANDJtHBtY0SlHArvGs0wjNdbZyXIp7LwnKKC/r4BlCM4hpoKtFl0AiByr
 guNNLBInav+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; 
   d="gz'50?scan'50,208,50";a="426180819"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 29 Apr 2021 14:45:59 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lcETu-0007pQ-Kc; Thu, 29 Apr 2021 21:45:58 +0000
Date: Fri, 30 Apr 2021 05:44:57 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>, Jens Axboe <axboe@kernel.dk>,
	Jian Cai <jiancai@google.com>, Guenter Roeck <linux@roeck-us.net>,
	Peter Zijlstra <peterz@infradead.org>,
	"Huang, Ying" <ying.huang@intel.com>, Borislav Petkov <bp@suse.de>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Juergen Gross <jgross@suse.com>
Subject: Re: [PATCH] smp: fix smp_call_function_single_async prototype
Message-ID: <202104300518.EF8t97XP-lkp@intel.com>
References: <20210429150940.3256656-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline
In-Reply-To: <20210429150940.3256656-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Arnd,

I love your patch! Perhaps something to improve:

[auto build test WARNING on next-20210429]
[cannot apply to linux/master soc/for-next linus/master v5.12 v5.12-rc8 v5.12-rc7 v5.12]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Arnd-Bergmann/smp-fix-smp_call_function_single_async-prototype/20210429-231235
base:    9e5cff2a1315fec1da1f497714395670366506b6
config: arm64-randconfig-r022-20210429 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9131a078901b00e68248a27a4f8c4b11bb1db1ae)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/be40015a8e0990182fa440f75adecf40cf5d0062
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Arnd-Bergmann/smp-fix-smp_call_function_single_async-prototype/20210429-231235
        git checkout be40015a8e0990182fa440f75adecf40cf5d0062
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> kernel/smp.c:407:19: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of '__csd_lock_wait' may result in an unaligned pointer access [-Walign-mismatch]
                   __csd_lock_wait(csd);
                                   ^
   kernel/smp.c:515:19: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of 'csd_lock_record' may result in an unaligned pointer access [-Walign-mismatch]
                   csd_lock_record(csd);
                                   ^
   kernel/smp.c:516:14: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access [-Walign-mismatch]
                   csd_unlock(csd);
                              ^
   kernel/smp.c:525:14: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access [-Walign-mismatch]
                   csd_unlock(csd);
                              ^
   kernel/smp.c:684:6: warning: no previous prototype for function 'flush_smp_call_function_from_idle' [-Wmissing-prototypes]
   void flush_smp_call_function_from_idle(void)
        ^
   kernel/smp.c:684:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void flush_smp_call_function_from_idle(void)
   ^
   static 
   5 warnings generated.


vim +/__csd_lock_wait +407 kernel/smp.c

35feb60474bf4f Paul E. McKenney 2020-06-30  403  
be40015a8e0990 Arnd Bergmann    2021-04-29  404  static __always_inline void csd_lock_wait(struct __call_single_data *csd)
8d0968cc6b8ffd Juergen Gross    2021-03-01  405  {
8d0968cc6b8ffd Juergen Gross    2021-03-01  406  	if (static_branch_unlikely(&csdlock_debug_enabled)) {
8d0968cc6b8ffd Juergen Gross    2021-03-01 @407  		__csd_lock_wait(csd);
8d0968cc6b8ffd Juergen Gross    2021-03-01  408  		return;
8d0968cc6b8ffd Juergen Gross    2021-03-01  409  	}
8d0968cc6b8ffd Juergen Gross    2021-03-01  410  
8d0968cc6b8ffd Juergen Gross    2021-03-01  411  	smp_cond_load_acquire(&csd->node.u_flags, !(VAL & CSD_FLAG_LOCK));
8d0968cc6b8ffd Juergen Gross    2021-03-01  412  }
a5aabace5fb8ab Juergen Gross    2021-03-01  413  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104300518.EF8t97XP-lkp%40intel.com.

--gBBFr7Ir9EOA20Yy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
5lT8eHsnD0/DKeLAAwc3A/8//O3MBwPiAQA=

--gBBFr7Ir9EOA20Yy--
