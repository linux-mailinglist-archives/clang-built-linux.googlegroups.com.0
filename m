Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7EKX3XQKGQECMAHJYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EC72D1186DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 12:46:05 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id q20sf6610587qvl.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 03:46:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575978365; cv=pass;
        d=google.com; s=arc-20160816;
        b=crZn5U6QQxCpzO024S3CDzAOagiFZRERGwUQOjU9kLLt0yZsokOoiP1XUfbngH/efC
         cEKfY+fwRpaBZSXc2hMEZ2eqeiZubatj5jZ7hI9ZbMGyTf5RF5npfcGbWdT1PIZY5MDN
         GhT4IdfRR/z6SLoqDgVYkc+Y+au/NAOH3+2ucJ2+p0zq6v+mw9rKfdf0RkoeR9iFjLdD
         qRoIRlhpaKqQbRI5Uuq6uGJNCmhIkYRVOcRfZ2VSoTWLGmhOY1GtJ5bf7u8ygWY4tx2F
         61XGMp+R6mGK2GkQ27/G0aexsGe5ZxLy5cLXm35ZhYtp1OrIEyvntwswJOkOSQNKeEbC
         849A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HULCPXFvf1FgFNWcUAbScByWcos1chdJC/RmhG3VU40=;
        b=qBX/8o5JRUttLf8zHxuEbUrWuWrU1wP8wroozLd19O8oYsWYcyC50LjN4EKP3kDamE
         pEYTytF0gRRbHrQVJfvZ1qavUBDcZAu47nEi+VPAomvPPBmvL8glulZSex02Um4H/Hui
         CjaVtII9ccv/iWqmUfqaHmqc5KpNa+2BhZE3XOol3Zl3DDAjp+7+C2ujGeXfFULIFXIv
         GjmYLFSu34/tAYaLlc0+mBxNqNdPG9ow3oQtyVDvwnxaoEO0nKxFpeJOKocjfmoKk6eA
         PVfWz3hAq1ENXj8P64l298B5L9QcBakz8YX3TgzOCdmlL/3ak5MckHyyXV8FK/TSGlfs
         t1KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HULCPXFvf1FgFNWcUAbScByWcos1chdJC/RmhG3VU40=;
        b=j1783RmZgl8uOQnlqZMA/hroKia8IOMDq0qcrw9hZ/QehvrhE6J4h13wLiGzXX/39P
         LOSgPkO/d7xgVgz2HYH87xOSFmgiZ0dhFQXHsJBsKo/FPfVQYNsnfWHvfZuv+MczVDkW
         p7CHT+zSHpcxtsjUz1tFA87P1FYRBx6WtStuKmtaBtlDoW5Eju6XsY1w/9iw8YEFGOab
         YhjHjTSoqs8OMfVs9CTGhHnPPV9LwTg7M0UEd2eFPMmsYRCScTcR5oKdBm7NQJWIzW/F
         xa6SUTsxADzQWYsOmEj4NPUjy7yvq4pK5mISw4Lnp8/TwB3WVKzjcLBoDo3d3aFDp/sm
         h50g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HULCPXFvf1FgFNWcUAbScByWcos1chdJC/RmhG3VU40=;
        b=YN48TjrVmr2MVDcYJxWcxYc9UJZ3Ysw6UNjjXmJVH/Aw2G0OQFCA1cfRJrFf/epsnb
         ZemanKkbrzdaBsEvyEVW9tdY3wZnGtFxYqwGii40Ijxmgri3qVcqYqb2sMEcVNb4FHfU
         f403LEp/W3pPuiRx8HXOpQzx8cPyduDwuELeCdicw89KxIwGDrBpGnmCV47moeInFKsY
         C9QVdZIR9u+CAvF3AyF1SkBGfDtRzzlnCXj/2nDhP+l5gw9YQpnwvoRUbGZYBCeGjbVv
         L/+prZMdQFXmUQvhT8Fbsq8kVDVSzRy39/oeKu8Sn2lZLLLj8JzjHkE23OxNvqTw5Hf6
         delA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWNNfgfmThLmsDWrfjIz/h8klTnIRYxu6VpIfbsbb9wUvsLTF6q
	HgmABO49mYlxiu1h7/axYeM=
X-Google-Smtp-Source: APXvYqyG6q44egDsu+Yv40A3qFF1TtZa1321RRvlx22R6W9JTwNkATY9xiAJD0V7Ti1L70CeLyqD9g==
X-Received: by 2002:a0c:ef0f:: with SMTP id t15mr26246570qvr.123.1575978364724;
        Tue, 10 Dec 2019 03:46:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6bd7:: with SMTP id b23ls1328455qtt.1.gmail; Tue, 10 Dec
 2019 03:46:04 -0800 (PST)
X-Received: by 2002:ac8:34d0:: with SMTP id x16mr30599851qtb.127.1575978364246;
        Tue, 10 Dec 2019 03:46:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575978364; cv=none;
        d=google.com; s=arc-20160816;
        b=BoIP4QdjFu1vJYkEzD+b/3jK0iNHRX09rY5E+PVf4lgMZkQbFnVhyXbTYLruyHEfA0
         Ib6+cwrrisA8MgHjdC2COpOhnnCTzrDbRN5qTv/LWzurw89mjBRq8WevZxVRV7z7eoUp
         97e0mcjPJ4VbUBmK2apcaQUjcnn43PfpeWBN/ZlODouQ3TM0c8EV4dX2F9Xi/kfAvRrr
         OhOPNMtrov8MtNzuZytQPXJhFjFwZbKCe/s6vO4+CU4F/l6GjjUxoJEiFNX5rddbzmEi
         i3oAYUsOMkLNB+yGi5+4i2RTgKFeBiykc0weTb1w1f0x8nnCZQqkYIbZph8GOvgNruSm
         EeyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=nVA2XoWsraAg1+OhjhmO7WVrdNhz11GbqVFKuude5+c=;
        b=NDkv6LFKqgt35Zr8/Kbk/qIeC14m3WY8BVL17jMnMnmQxGBGDhVO9OdYRSFGrAuHUa
         i6gQQEXSCELlRHeeCRyRqohtfOwkWa1IYKcoKDtBE5lcqZ7pSVTcTic4f/0/9ARIYws3
         kkgJ98WMvaJNjNFCSsee1PtUKFvM7+AfQj0FOi+p+vBzbIw2fTeMnqEXX9K9e822I7F4
         QooYyuH4G8B9XVlGizDIBXNBCiMm1VhC8I0XSvqVM+WKkhB3pZ3+oRyHmeUbGf3v3sDz
         dlbS/puJr5kMdwbTlH7sFJdpHDuUQt7EqTmxNlgP8L9mQCqjlrqxnGOSn8GsJq1GJjQp
         TKEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id k16si105448qkg.0.2019.12.10.03.46.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 03:46:03 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Dec 2019 03:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; 
   d="gz'50?scan'50,208,50";a="207255233"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 10 Dec 2019 03:46:00 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iedxo-000HVl-Db; Tue, 10 Dec 2019 19:46:00 +0800
Date: Tue, 10 Dec 2019 19:45:49 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-review:UPDATE-20191210-062459/Dave-Chinner/Re-single-aio-thread-is-migrated-crazily-by-scheduler/20191115-075745
 1/1] kernel/sched/core.c:2669:6: error: implicit declaration of function
 'is_per_cpu_kthread'
Message-ID: <201912101947.PyGWxSpB%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="n67rgntxtb2unbqq"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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


--n67rgntxtb2unbqq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Srikar Dronamraju <srikar@linux.vnet.ibm.com>
CC: 0day robot <lkp@intel.com>

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20191210-062459/Dave-Chinner/Re-single-aio-thread-is-migrated-crazily-by-scheduler/20191115-075745
head:   f71e8696eb0db2272c92acc036d078b18ae1a5e5
commit: f71e8696eb0db2272c92acc036d078b18ae1a5e5 [1/1] single aio thread is migrated crazily by scheduler
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 453c85ff0f96048ea31037fed905ef6a06ac3fcc)
reproduce:
        git checkout f71e8696eb0db2272c92acc036d078b18ae1a5e5
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/sched/core.c:2669:6: error: implicit declaration of function 'is_per_cpu_kthread' [-Werror,-Wimplicit-function-declaration]
           if (is_per_cpu_kthread(p))
               ^
   kernel/sched/core.c:2669:6: note: did you mean 'is_percpu_thread'?
   include/linux/sched.h:1501:20: note: 'is_percpu_thread' declared here
   static inline bool is_percpu_thread(void)
                      ^
   1 error generated.

vim +/is_per_cpu_kthread +2669 kernel/sched/core.c

  2653	
  2654	/**
  2655	 * wake_up_process - Wake up a specific process
  2656	 * @p: The process to be woken up.
  2657	 *
  2658	 * Attempt to wake up the nominated process and move it to the set of runnable
  2659	 * processes.
  2660	 *
  2661	 * Return: 1 if the process was woken up, 0 if it was already running.
  2662	 *
  2663	 * This function executes a full memory barrier before accessing the task state.
  2664	 */
  2665	int wake_up_process(struct task_struct *p)
  2666	{
  2667		int wake_flags = 0;
  2668	
> 2669		if (is_per_cpu_kthread(p))
  2670			wake_flags = WF_KTHREAD;
  2671	
  2672		return try_to_wake_up(p, TASK_NORMAL, WF_KTHREAD);
  2673	}
  2674	EXPORT_SYMBOL(wake_up_process);
  2675	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912101947.PyGWxSpB%25lkp%40intel.com.

--n67rgntxtb2unbqq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--n67rgntxtb2unbqq--
