Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW6BQP3QKGQEFQMOAFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 963651F55D6
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 15:32:13 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id q5sf1130277ool.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 06:32:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591795932; cv=pass;
        d=google.com; s=arc-20160816;
        b=N3TSC1ndWeuGxHkGieltRlFWCqvBdtTo9dNup5DDyb+N+NuMrdEz/Z+RZi8yTCxwEL
         2UDy36TWFvIeFTxOYsQf/3AQMa1nbaIvbNdm98sXDeSyai3OoZA8WjwrxPDyhMQkr1yH
         TZj7XRz4xP8N9GQrttf07gtIg+fDChjbzeLWY6CO9C4E505WkK8zw+wiw+upEEoKwhYL
         IKVRHrjBqhXW10mUY/XYD7dhsGP0eGhoNigobZPgUQ+Th9XxC88PAh32eMN9C97Kg+5U
         73+4Q7S9nCOBiJER0UK8u1em2kSCMj7JmnkbG+iKAAKTMRBKq9i+ctbpqs6dPo/akEJ2
         Hmbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=SXmhf4xcWI/SdPjO6/cEDvU093cZ3RLwVIFoGA1HTuk=;
        b=ZqG4vNgQCt97L6Z0hGgD3NyIcHJd0e/rEMt77uAZ4S4ZKWscMcGHHy5kxR6cbObjnh
         OE8P+PBFsusYG5H42oiVZPjmJmKGwGRC1UxhwTdxeE8UkA5HevKbcDgztIPzfInLcIfr
         yHmMGGfb2YnA/5BUJj7DZDMvF4W3ts+Q9GM4tZOQrG8m2Y+Ayw7JRKWCqv/QNj10CtsV
         CKEYebM/ipZmBA3QOEf4qvE6yHbFM2UFZG5ODMMbGvQE4N8PRIWJQgxCMaAwOWE1GIEf
         w+iqg4UGITrqlTLjplrupgrB9KdmeMAPhz8JdLMGe7a1FbXzlKXwX5Km75vNNGt/xvp0
         mRHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SXmhf4xcWI/SdPjO6/cEDvU093cZ3RLwVIFoGA1HTuk=;
        b=bQcWLptJj6wIdNzEb6mOjFiGJ9/A8LA7L4Z7q1MBr9yGzjlv27rV6zQHSiL31n1Eln
         CJQtKjfUFBqfbZdtNQCSsn1d3leeZDz5rs+w9QWxgsfXiTgI9VBZVXpoZH4pakUe8Kti
         FZhzlqPzhLIaQewu2FVyJ+h9jIpDkm8TmLtrsGQucSBTJy1lQCFEHShumP4Z0Q4UA6qm
         VdIVZIKh0Elb4j1HXO5Su6c0oNSd8G52pSUMHwVWY5OHiBbkkfXpjLleCi6kZ6k+pRFc
         7Qtd1L/Pj0EKn+feZ0dHIhqT9Lex9zwLM/tofxAQLE3VtBDH1LK7VVJdljTlGV+FHJJ9
         tYuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SXmhf4xcWI/SdPjO6/cEDvU093cZ3RLwVIFoGA1HTuk=;
        b=Dklgpy53yLx4LEVGp5GX17hFu09a2yRCpJ/6u4qKJ3rXIlTPBV8JUbMCrEEx2hfyXn
         ZjQbpLBd3MB9E6Cv4NDLv/btf8bSP4MogviYRH/tQu1+U2bw/U02oi70Awmdu3oM4p49
         +QXieIYY3tPr64f8eBxfFpjJN8U42l/Oc3vzC6/UAwZCGLIoLmwjV9Xw3ZAQIhUcNILW
         5X00LyOWB3JK9EQC2PcMrmgyBxbLa7l42hQYQQpf8M93yln+E4vOgzD3/ynQVVyjTNAW
         hGvdXsD3vJ5zdH6U8gdbEKMGMbA896u5mw2E626K3HSDT02bJUhY3M0eASd3l37Z2FgE
         g+5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532heVCsWLJPjolFHMyOx5VhOECzRrYkrOoCVaiP4lOeG8sDIrrN
	+GeOchQEVp3urOLWYsfEreY=
X-Google-Smtp-Source: ABdhPJwjUXuBSrLBIxooc9Y4BATt2ayUZIiUh16KvL++WlBkOOYpXc+m01ykQLPuCYtpTYVbk4nDSg==
X-Received: by 2002:a05:6830:1290:: with SMTP id z16mr2690987otp.14.1591795931892;
        Wed, 10 Jun 2020 06:32:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11ce:: with SMTP id v14ls5090070otq.0.gmail; Wed,
 10 Jun 2020 06:32:11 -0700 (PDT)
X-Received: by 2002:a9d:6b16:: with SMTP id g22mr2675794otp.356.1591795931536;
        Wed, 10 Jun 2020 06:32:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591795931; cv=none;
        d=google.com; s=arc-20160816;
        b=w7h31lsejJ5zs2W1Ce1FsdrocmAS0NaC76nd8gI7nN1ykjGZWIuvyxCFi496e/spTc
         B41o6wQrBGnIVPCE+BFAvHWk39qHjBpA9CGGltbPsJ7+u/Mfok3xy8r02dQdAuPKa/WF
         b+URy1Sbi4/8Jp/9uYB+u4judLtm+dkbhiVX7O2wGaJosEuJYXG0gkaYW7vU0nBrfcQt
         joSTKPmy0MO5h56xOKwvrup9SnmrdUoq7wsGrKhu2WxtAIWwk+KDQF7ZHZ3PYJqiyj0f
         62+xYbjJccfSoB6SDL6DEUY8wwHS47v2XaM6rJzpI74eETZ3EJxdBRZI/G5DYMfwA77h
         JX9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=3kIDCWL/Bplow/cUky9ztoJGmf0ES+dox2GhwlPvgvU=;
        b=ewdKWrhcWgfHbdBaKiY35lN7t4ylRblK1JLT1CaMgj6SSxF8/jEkoINqj5lQPxVZXR
         RvcQUAWaR7PEOynQ2WAw0CeXmC5+piXfejqlC1eU9/ko56n9FklB3gR1W9I4ykg5qiZX
         iEzTFRPtKf+nYcZO5bGmm5mzhw/84sgPTeoWbpIMkD8gF7bJT8VFo+ePkVkLvYtHk35P
         abDEcawuBOqvACuVGce1Qddq/nFswkfONFOxNhWiC92NOkZs3HgjsX0M3Ef8DMf1D4eV
         T4JYJYRLHRQuE8N2YoE7/IOiDhs/HHMU1OU91Ox+pgEeyeEiyfCQztPNjvNF+keW2S+P
         nbXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id d25si929100ooa.1.2020.06.10.06.32.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 06:32:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 0HGUkdEiaHxQeCloXkelw5VfuA52S4HsqZ0ipB8I2xCxgba9zF4uKEek3EmsXvFLFctDAkLL5X
 zi7qVTPpiNOg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2020 06:32:09 -0700
IronPort-SDR: LGBPhNUwJNEn2GGwVZo1YEwz2CpZql5zelak8ZcF/qT9n92kKnMBsXu/XHpQaQvwh+KHEeHrir
 6pJ1TLogwegg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; 
   d="gz'50?scan'50,208,50";a="473339311"
Received: from lkp-server01.sh.intel.com (HELO 19cb45ee048e) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 10 Jun 2020 06:32:08 -0700
Received: from kbuild by 19cb45ee048e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jj0ps-0000Cu-58; Wed, 10 Jun 2020 13:32:08 +0000
Date: Wed, 10 Jun 2020 21:31:12 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [kees:devel/seccomp/addfd/v3.1 3/5] ld.lld: error: undefined symbol:
 __scm_install_fd
Message-ID: <202006102110.8dtctAJf%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

TO: Kees Cook <keescook@chromium.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git devel/seccomp/addfd/v3.1
head:   9a69dc243008619f599573f8fad6e4ab224cc19a
commit: e298dd6511d45bb8dfe849d6440afee6832f1b64 [3/5] pidfd: Replace open-coded partial __scm_install_fd()
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout e298dd6511d45bb8dfe849d6440afee6832f1b64
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ld.lld: error: undefined symbol: __scm_install_fd
>>> referenced by pid.c
>>>               pid.o:(__x64_sys_pidfd_getfd) in archive kernel/built-in.a

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006102110.8dtctAJf%25lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+QahgC5+KEYLbs62--
