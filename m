Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB25KX2AAMGQEKILSIIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 7256E3032B1
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 05:07:08 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id z24sf5631012uao.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 20:07:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611634027; cv=pass;
        d=google.com; s=arc-20160816;
        b=1BJZI0+1KmpQ601XDi6GXP7kfaexNGs0raPLzQYtYVgSFuomQ+DPgqTJEuF9nY7K12
         piK7khrMlsarogAExJTNmH8W9DCaVSmSOxiRQZfObdHfmdic8sOxo3OQx9MWsY7lFUvy
         IdWbszgYWfMLKSORM371MHiDpjkaJDs9HaVB5xVq+FRjxOdGSj3o/YnCyAk5bifpZ7eg
         ah7aX6xC6WA08P4GjmHYF1+YaIgcLt2ee3rTEOu/Oes35qlj4gFsF/S6VwGlkvBFVD8n
         dpcCHbED8Q5I7Hvf6pOtVjST7p3mKW9jorQGR0sEOwLdcV+1wLGa+YnSlz7f0A838LDg
         5KXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=NxDSRCldI4tuRXHxU8Kafs8HvsaS7+lbRCM32cEeDe0=;
        b=Ug8vd4myq8XervdsZwIE+kzTTb5TmlDHKagdwcqYpCGgHfoVYeIXd/h/Bc/PAMAQEk
         AgJ8N/GOfhK17NL3X/gGJFP7jpJKNCNcJ2ZgN5FP0Yre3uw5GhQ078EPCVNL1VmDujxy
         sDXCD6tdyvyoi9crNpSuKjPcg+dmpBmABRMiBcudp4y5QUUG1MRZA/9hV7tGydK5U9SO
         P2hIrHhE3eGwo/P+yF6OXyRSOiVkZ4A6+3P2N4MYk3lOw+d012amcAAnkILgjO8PAIot
         LgBpZJP1x96kUQGGD5JcJLoQ8flaQapn862WXqQbIb8FqutZLS1G7touewTt1MPFM//Q
         Ethg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NxDSRCldI4tuRXHxU8Kafs8HvsaS7+lbRCM32cEeDe0=;
        b=gC1RyOB9z0GlzEVjYjWeYEmwt0g1Xp0CZyDJlAOPN0AzukuQ0JTrHGrBBHQ6IciPqN
         DlXwNCWqnShGxDMfXGcvEIpi/jHAHa2qaUl/0QkKIvzqjHk+SnWn2URlNjt24W4c9p9L
         gwbN3A3Eo7Yg/Xbq235WFgowL96LEDrVjgvMMzokRCNvE0ksf9bpcePnPs+opacW4L1g
         YBxs8juE2E9BflwKhRWsZrBDFY0KVlMzrGBkpNCmDrcCEB9ExPNDj+MRwt6vQvWsd9WK
         YGSDBUfCODnali6VszzCfzCPc+MLGHNsnyJOi97/ueoYoV8k3rW0mqqBTqWxEsRvWNg3
         60EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NxDSRCldI4tuRXHxU8Kafs8HvsaS7+lbRCM32cEeDe0=;
        b=XtN1H6ewbzbtcn0j6z02CMYiiiEZp3ueDDCO9uX4PtWGa2ArkUNRYTvsxE51JQy4jX
         8MtHMdLvHbk1XAAlvvz5b8bVxg/q9OhEZ7CuNwDSsvqvg8fydTgC6fHP3hKS4E8u8MXa
         I72PtAb6XAay5nfF0odH7eJEtOj5L2+XqdeLCAXXWSZlTVtno/5f82NkN+2FZBv8/cwY
         ePqsDyX1dX/1WDjzEUBdB3NtBods0s82daIeFKNiclbQpjNYvjWQmoCwbg9qkFHue7AI
         CojRq4gR07w6x/2o8CHIt6IK5dNQoY96EWcrrsMUsyBM5VyVXPHZgx9kLkxnDSJsU+kz
         0+UA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wlSfyawe5OGVSk8wQZD3Y+8a492MzJSgPTP0kdL9ujcYtHPzb
	xwAJ/kz0If9pPMic1o/I/pM=
X-Google-Smtp-Source: ABdhPJyxPSSPvv4DDb62JctG2BG8/mo+q01/+F4DtmD9O+CcYPRkxHFxMbWe89zUrhG0cFfB26aDHg==
X-Received: by 2002:a1f:27cf:: with SMTP id n198mr3146690vkn.16.1611634027295;
        Mon, 25 Jan 2021 20:07:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb19:: with SMTP id d25ls680148vsr.11.gmail; Mon, 25 Jan
 2021 20:07:06 -0800 (PST)
X-Received: by 2002:a67:8d85:: with SMTP id p127mr3179676vsd.32.1611634026746;
        Mon, 25 Jan 2021 20:07:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611634026; cv=none;
        d=google.com; s=arc-20160816;
        b=lxgH2tW0uPXOuGItG/DU+sdVuTbxk4kxWempVreljLyWB4guGUzxxgZTSBl+JNW6wd
         CuOGy9GXpGa5o2pqNb+WILZL44m4Fy3MsGL2DiVNdrigPtKWwK7HTxnhUK0o2MG/27z2
         cijrrhhNORpCyZ6Ex79TY2CrvHuWuMIfAQKT+8+aXFFqgOa2bYg5H0gSrTyApUS+xSLs
         AQLo8/pQXQRF6k01QfSPk+Fr2BYbVtjsgNHHJCUw1GknW5GItVmDQXiRz4W+p7GxlyBt
         j1w1R1BwXy58Ue6cjNhCRHgJHGMBu+r6c4OegGtP0Zsdm73MVaO8pXCQewXj6VkQiNCg
         ctPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=EIDVmH8h4GsIULJ/m/27SD7JNn7F6F18lqUIRMxM+gU=;
        b=LxRsHXuIzR0Jbz9nIShrtUplxjb8ViXydLtpsUaNpXlDv/HKBvxDGRVKVcTATs8oc7
         0xAKCopcNv3ZypOA2EPnLSCiqQygU5EPglB3XyujdT46wClBdN3mZ6ghLlHPIxTkwgl2
         i+C/gQPedOUw4Dy/j97qNr5JhGPaDvQ+Qf1kBUnyqkelTUjzYWWRqguTbcBusTVni4c1
         yLwat7+7Ic1g3xBsVbkBFj+RuE5clThxWrkHx9dFxFMz48Fn6TGzPgrLE1jTrqK2sSoR
         oLe/7e+LzqrgvJA8xNNq63lu8n9+DTEczjvgnL19iJc6B0g3XP7gZqs4VbZp1yFngL2i
         lGfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id d25si843928vsk.2.2021.01.25.20.07.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 20:07:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: vLxS0rddpktlfizZYi1hUEi5KJOH/jyKrIi6Xfl65qmjSTljFHicixckzfXWiH7eipE2e3PLiO
 gSYbl1zo7OVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="166944916"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; 
   d="gz'50?scan'50,208,50";a="166944916"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jan 2021 20:07:04 -0800
IronPort-SDR: CPioiNMSirTpQ/b7vuSRMgc/kc6QK6FAASoyzQWcLSIkZfQjtfhPnDRXJgE1LND1h+bLFrlkYk
 jwmcK5tT605Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; 
   d="gz'50?scan'50,208,50";a="406553544"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2021 20:07:00 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l4Fd5-0000Wn-H1; Tue, 26 Jan 2021 04:06:59 +0000
Date: Tue, 26 Jan 2021 12:06:05 +0800
From: kernel test robot <lkp@intel.com>
To: Paolo Valente <paolo.valente@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jens Axboe <axboe@kernel.dk>
Subject: [block:for-5.12/block 48/48] block/bfq-iosched.c:1955:6: warning: no
 previous prototype for function 'bfq_check_waker'
Message-ID: <202101261200.oDrc7psF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-5.12/block
head:   71217df39dc67a0aeed83352b0d712b7892036a2
commit: 71217df39dc67a0aeed83352b0d712b7892036a2 [48/48] block, bfq: make waker-queue detection more robust
config: x86_64-randconfig-a016-20210125 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 925ae8c790c7e354f12ec14a6cac6aa49fc75b29)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=71217df39dc67a0aeed83352b0d712b7892036a2
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block for-5.12/block
        git checkout 71217df39dc67a0aeed83352b0d712b7892036a2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> block/bfq-iosched.c:1955:6: warning: no previous prototype for function 'bfq_check_waker' [-Wmissing-prototypes]
   void bfq_check_waker(struct bfq_data *bfqd, struct bfq_queue *bfqq, u64 now_ns)
        ^
   block/bfq-iosched.c:1955:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void bfq_check_waker(struct bfq_data *bfqd, struct bfq_queue *bfqq, u64 now_ns)
   ^
   static 
   1 warning generated.


vim +/bfq_check_waker +1955 block/bfq-iosched.c

  1906	
  1907	/*
  1908	 * Detect whether bfqq's I/O seems synchronized with that of some
  1909	 * other queue, i.e., whether bfqq, after remaining empty, happens to
  1910	 * receive new I/O only right after some I/O request of the other
  1911	 * queue has been completed. We call waker queue the other queue, and
  1912	 * we assume, for simplicity, that bfqq may have at most one waker
  1913	 * queue.
  1914	 *
  1915	 * A remarkable throughput boost can be reached by unconditionally
  1916	 * injecting the I/O of the waker queue, every time a new
  1917	 * bfq_dispatch_request happens to be invoked while I/O is being
  1918	 * plugged for bfqq.  In addition to boosting throughput, this
  1919	 * unblocks bfqq's I/O, thereby improving bandwidth and latency for
  1920	 * bfqq. Note that these same results may be achieved with the general
  1921	 * injection mechanism, but less effectively. For details on this
  1922	 * aspect, see the comments on the choice of the queue for injection
  1923	 * in bfq_select_queue().
  1924	 *
  1925	 * Turning back to the detection of a waker queue, a queue Q is deemed
  1926	 * as a waker queue for bfqq if, for three consecutive times, bfqq
  1927	 * happens to become non empty right after a request of Q has been
  1928	 * completed. In particular, on the first time, Q is tentatively set
  1929	 * as a candidate waker queue, while on the third consecutive time
  1930	 * that Q is detected, the field waker_bfqq is set to Q, to confirm
  1931	 * that Q is a waker queue for bfqq. These detection steps are
  1932	 * performed only if bfqq has a long think time, so as to make it more
  1933	 * likely that bfqq's I/O is actually being blocked by a
  1934	 * synchronization. This last filter, plus the above three-times
  1935	 * requirement, make false positives less likely.
  1936	 *
  1937	 * NOTE
  1938	 *
  1939	 * The sooner a waker queue is detected, the sooner throughput can be
  1940	 * boosted by injecting I/O from the waker queue. Fortunately,
  1941	 * detection is likely to be actually fast, for the following
  1942	 * reasons. While blocked by synchronization, bfqq has a long think
  1943	 * time. This implies that bfqq's inject limit is at least equal to 1
  1944	 * (see the comments in bfq_update_inject_limit()). So, thanks to
  1945	 * injection, the waker queue is likely to be served during the very
  1946	 * first I/O-plugging time interval for bfqq. This triggers the first
  1947	 * step of the detection mechanism. Thanks again to injection, the
  1948	 * candidate waker queue is then likely to be confirmed no later than
  1949	 * during the next I/O-plugging interval for bfqq.
  1950	 *
  1951	 * ISSUE
  1952	 *
  1953	 * On queue merging all waker information is lost.
  1954	 */
> 1955	void bfq_check_waker(struct bfq_data *bfqd, struct bfq_queue *bfqq, u64 now_ns)
  1956	{
  1957		if (!bfqd->last_completed_rq_bfqq ||
  1958		    bfqd->last_completed_rq_bfqq == bfqq ||
  1959		    bfq_bfqq_has_short_ttime(bfqq) ||
  1960		    now_ns - bfqd->last_completion >= 4 * NSEC_PER_MSEC ||
  1961		    bfqd->last_completed_rq_bfqq == bfqq->waker_bfqq)
  1962			return;
  1963	
  1964		if (bfqd->last_completed_rq_bfqq !=
  1965		    bfqq->tentative_waker_bfqq) {
  1966			/*
  1967			 * First synchronization detected with a
  1968			 * candidate waker queue, or with a different
  1969			 * candidate waker queue from the current one.
  1970			 */
  1971			bfqq->tentative_waker_bfqq =
  1972				bfqd->last_completed_rq_bfqq;
  1973			bfqq->num_waker_detections = 1;
  1974		} else /* Same tentative waker queue detected again */
  1975			bfqq->num_waker_detections++;
  1976	
  1977		if (bfqq->num_waker_detections == 3) {
  1978			bfqq->waker_bfqq = bfqd->last_completed_rq_bfqq;
  1979			bfqq->tentative_waker_bfqq = NULL;
  1980	
  1981			/*
  1982			 * If the waker queue disappears, then
  1983			 * bfqq->waker_bfqq must be reset. To
  1984			 * this goal, we maintain in each
  1985			 * waker queue a list, woken_list, of
  1986			 * all the queues that reference the
  1987			 * waker queue through their
  1988			 * waker_bfqq pointer. When the waker
  1989			 * queue exits, the waker_bfqq pointer
  1990			 * of all the queues in the woken_list
  1991			 * is reset.
  1992			 *
  1993			 * In addition, if bfqq is already in
  1994			 * the woken_list of a waker queue,
  1995			 * then, before being inserted into
  1996			 * the woken_list of a new waker
  1997			 * queue, bfqq must be removed from
  1998			 * the woken_list of the old waker
  1999			 * queue.
  2000			 */
  2001			if (!hlist_unhashed(&bfqq->woken_list_node))
  2002				hlist_del_init(&bfqq->woken_list_node);
  2003			hlist_add_head(&bfqq->woken_list_node,
  2004				       &bfqd->last_completed_rq_bfqq->woken_list);
  2005		}
  2006	}
  2007	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101261200.oDrc7psF-lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ljfQZU1QA0EC4P8C9ZUgVbYDAgA=

--C7zPtVaVf+AK4Oqc--
