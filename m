Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKGQZP6AKGQE5XDAZHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D301297148
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 16:26:50 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id b12sf1058617qte.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 07:26:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603463209; cv=pass;
        d=google.com; s=arc-20160816;
        b=tGzHLaHpaUd/uepfIm6t4WdilouCFaGi0LhumWd0XpeP3E7baq9l7WrrN7YhPn0Oki
         WlkQFL0jbAOlb1arz85oZ64vjP/TxRjBiej95TwCkWYClYK4fIY3x8GcPF+ObX8jMtDK
         OWxC6P/wz1bWT1wc4GYnkK3n1pfaSR1BM+Y7L8uoc5EOehY9bV/6XsfcgjO0PwlCSFfh
         2guiNLafUGfA5wMp4Qo4ar1suHthZREWGbiobQl/Jl2ZSbsHm6EcuwsnR74iJiHGxDRp
         RY3jxHLj10B1xrmbVZDWQOAIoZej4GgaR0vf/FJyI9Xh5/4+0s2DvIDd8felsX7GsFpk
         B5Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sARxQIciptYshy7YvgPMrwOj1dKRnmI4sUaMy4gO+S0=;
        b=iantj6X8jkLcmcy6Q1NdtGcvOvjaE5AbD3k9Iln/qG/bUS9WcJ0Uemx8iMJjiOvmgv
         0LqXSDQ7nS6W18XAy//ZruRwcrHjvuKHBLK7Tir6Yl/Z2bbEG2u0+jYxRZgqqCcZfS8v
         jAAqlEeXsfNvoJdVCcvArlwsQnw0EBz1Lghsii/PKk/kZfRS0T1Nq1coZ8JGAn1BoE5c
         3e139Q03XPARQfJrUdW9MuHUhU+Yq3sH6v4KKhmh+vGdpXFJ/N02BK92JHJDBJByKW4y
         Arx2rUaJYwnDntzq1B1nu6cUCL1s2Fxj3xxcgwPDqtDYZsc2mR/I/+rs9mWXzEFRwl6O
         eoIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sARxQIciptYshy7YvgPMrwOj1dKRnmI4sUaMy4gO+S0=;
        b=LUTiFT37jM2XAFS4cZyBRPfo5kg4h061Y93lIfQvqwONATgU8Z8sl+otNHMFGpKDAQ
         taJi2RX95ckwU1pHS943+ha5Y8UdIHsx7Q7RTCqkbMuWW0lTbf9SDTei1ZmTbmj2VzKP
         2FLQXUb/Syub8HkTp2JtU8oTjS4ZMcBl9//MjEgO8NmHBeOcyozczNR19WFJ6ek9XAS0
         JE/R1n2/TXgpE5xq9FCO2N5/5KFWddLg3rDYuSBMh12m9QRKGVsV9u82+4lJhegASQOm
         okUEu4tvJt0xWbj7N/hw70cVjEyjsI2Iw8Z/ddVEkhuGebDSPAqwx1RNAPdA1zjtP3xn
         BgUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sARxQIciptYshy7YvgPMrwOj1dKRnmI4sUaMy4gO+S0=;
        b=aq9TIrq1HJluNVyMrD8rlsfyx0QjOTs6rNLD5jWpzKcDVtjgOEkNcPllVECHIsk336
         yffQkWzs+Y3oMwsm0fI6U0zVXT2cKyHseygETnl69kk9RvBkfeurRp64T0ceiUeu0aWT
         c5HTtCVLrflSPifW97ZCqHKeuB/6rCOQKrZvk9h71bp7JSty2dEHRV+nZgpxU7TG29ZJ
         qr+T02lXh98Wr+FpZOGu04yHDhMHDovrb0STqFjzGR2X1Isdu6Q04dTHPfGVi+sOZdqz
         kFQ9J+vn8heeAjtjsv4Pc/rQScz43+bKKMcDgvLlMuaw6uetWeEAZ5W5JtWCew8Ka6WR
         mLGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Hhs+Y5x6/YNcvRZByAyp+j4A5hdEzdn5AWQOdRULSLgWRVxBk
	lDize3t2VdWqsclmrMfGtl4=
X-Google-Smtp-Source: ABdhPJxsgCg0RETfIv2NKQhe4GWfMD4ujidQpKh4SmYDGlgkuQ2ANIdKyerpMdHhfKNOtmZPEBuRMw==
X-Received: by 2002:aed:20a8:: with SMTP id 37mr2400890qtb.201.1603463208973;
        Fri, 23 Oct 2020 07:26:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3ecd:: with SMTP id o13ls598222qtf.6.gmail; Fri, 23 Oct
 2020 07:26:48 -0700 (PDT)
X-Received: by 2002:aed:3321:: with SMTP id u30mr2411625qtd.11.1603463208207;
        Fri, 23 Oct 2020 07:26:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603463208; cv=none;
        d=google.com; s=arc-20160816;
        b=SaI5yspegotJ6yPHk2T166AxCSNgO9H5rwisSj2IGFIMUdIt8Mtpi1Xw2ZhtuqI1H1
         k7/DzvOsog8T/mJaSIYI15AK3P4iOqlFoEXERWjyvhnx3LbrPtBjE8TCAEZ1iC5fiGbb
         pa/+e+ld4xzduuEKsV/6jjVOQeQpqVo7eASnUKMmDR8EJ4IqNytrYhfMCfijyjXoQibg
         Z9+nOXQpCU8ZgJoPcC3/DEVYJLogAgCMgT6qGSZ0c1JXgndarY0XtFDTAhoGuOJFWAxg
         t+ZUjJoN5hgC6oVEJrMdTl0VvvcGprybp47AgnGWtE5jSZ7X1sbFRRb+TjGoKdSd8HS3
         7hhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=kuY1sBbh9mynwSfWyliHhWNyYm7GTOuy/SgwR9RNbRc=;
        b=uL2lQEdE3i0sRBB/Dz8TAZKIPjBKYAU4olS7DQ865eSYPq8HFaBijiyc4oNIhESAdk
         j1OabHJFweMKrwU6Z5rWZcXTrdfEuXSXh/6Uvob3lRkEF/jto05eyVex+7edlaPDhBOp
         Q6NOB9Pf3xQhG4PubDnABJwJsf0CHkVPxklXg269+SUusssS11D9t/1ZWczIc+WZoCqA
         dZfKZA/RGqwT2nE6UlcywMcGeGQRaS9kIT1kiEpbh/j+NEHzvp0RcSpIfjYY9mRZ/Ytq
         8QLfMtCRAky3ZPUCOWQTSNvm7GEg9SPEEaD04fibqL4ozsgHtQOz4Ea/R9v4hcQFk7hw
         QFRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id m3si121081qkh.5.2020.10.23.07.26.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 07:26:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: E9EN6DW85jMHl383vPqsoE9mh3Y8UeUpnfHc5kTK/GIpQBkQXZMR+ghZXbip+qcecpzkUfdehp
 2L0+pT68bPOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="164187879"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; 
   d="gz'50?scan'50,208,50";a="164187879"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 07:26:45 -0700
IronPort-SDR: X1G8u7N1sTE0pnMB9D+D/187TfpCFkUxmCJ/8T2LNUUYEMGSK1f8NQYCluhxOKqiqRg7SX7lCZ
 G0KV2w8AbRzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; 
   d="gz'50?scan'50,208,50";a="423438610"
Received: from lkp-server01.sh.intel.com (HELO 1f55bd7cde4b) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 23 Oct 2020 07:26:39 -0700
Received: from kbuild by 1f55bd7cde4b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kVy1d-0000F4-CB; Fri, 23 Oct 2020 14:26:37 +0000
Date: Fri, 23 Oct 2020 22:25:44 +0800
From: kernel test robot <lkp@intel.com>
To: Ricardo Dias <rdias@memsql.com>, davem@davemloft.net, kuba@kernel.org,
	kuznet@ms2.inr.ac.ru, yoshfuji@linux-ipv6.org, edumazet@google.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] tcp: fix race condition when creating child sockets from
 syncookies
Message-ID: <202010232253.ivXFy8Da-lkp@intel.com>
References: <20201023111352.GA289522@rdias-suse-pc.lan>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
In-Reply-To: <20201023111352.GA289522@rdias-suse-pc.lan>
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ricardo,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]
[also build test WARNING on net/master linus/master v5.9 next-20201023]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ricardo-Dias/tcp-fix-race-condition-when-creating-child-sockets-from-syncookies/20201023-191433
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 105faa8742437c28815b2a3eb8314ebc5fd9288c
config: arm-randconfig-r023-20201022 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 147b9497e79a98a8614b2b5eb4ba653b44f6b6f0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/35d7202175fe2c313d66daf214ea113947d78c6d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ricardo-Dias/tcp-fix-race-condition-when-creating-child-sockets-from-syncookies/20201023-191433
        git checkout 35d7202175fe2c313d66daf214ea113947d78c6d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net/ipv4/inet_hashtables.c:572:11: warning: variable 'dif' is uninitialized when used here [-Wuninitialized]
                                         dif, sdif))) {
                                         ^~~
   include/net/inet_hashtables.h:318:33: note: expanded from macro 'INET_MATCH'
            (((__sk)->sk_bound_dev_if == (__dif))          ||              \
                                          ^~~~~
   include/linux/compiler.h:77:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   net/ipv4/inet_hashtables.c:553:15: note: initialize the variable 'dif' to silence this warning
           const int dif, sdif = sk->sk_bound_dev_if;
                        ^
                         = 0
   1 warning generated.

vim +/dif +572 net/ipv4/inet_hashtables.c

   539	
   540	/* Inserts a socket into ehash if no existing socket exists for the same
   541	 * quadruple (saddr, sport, daddr, dport).
   542	 * If there is an existing socket, returns that socket, otherwise returns NULL.
   543	 */
   544	struct sock *inet_ehash_insert_chk_dup(struct sock *sk)
   545	{
   546		struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
   547		struct hlist_nulls_head *list;
   548		struct inet_ehash_bucket *head;
   549		const struct hlist_nulls_node *node;
   550		struct sock *esk;
   551		spinlock_t *lock; /* protects hashinfo socket entry */
   552		struct net *net = sock_net(sk);
   553		const int dif, sdif = sk->sk_bound_dev_if;
   554	
   555		INET_ADDR_COOKIE(acookie, sk->sk_daddr, sk->sk_rcv_saddr);
   556		const __portpair ports = INET_COMBINED_PORTS(sk->sk_dport, sk->sk_num);
   557	
   558		WARN_ON_ONCE(!sk_unhashed(sk));
   559	
   560		sk->sk_hash = sk_ehashfn(sk);
   561		head = inet_ehash_bucket(hashinfo, sk->sk_hash);
   562		list = &head->chain;
   563		lock = inet_ehash_lockp(hashinfo, sk->sk_hash);
   564	
   565		spin_lock(lock);
   566	begin:
   567		sk_nulls_for_each_rcu(esk, node, list) {
   568			if (esk->sk_hash != sk->sk_hash)
   569				continue;
   570			if (likely(INET_MATCH(esk, net, acookie,
   571					      sk->sk_daddr, sk->sk_rcv_saddr, ports,
 > 572					      dif, sdif))) {
   573				if (unlikely(!refcount_inc_not_zero(&esk->sk_refcnt)))
   574					goto out;
   575				if (unlikely(!INET_MATCH(esk, net, acookie,
   576							 sk->sk_daddr,
   577							 sk->sk_rcv_saddr, ports,
   578							 dif, sdif))) {
   579					sock_gen_put(esk);
   580					goto begin;
   581				}
   582				goto found;
   583			}
   584		}
   585	out:
   586		esk = NULL;
   587		__sk_nulls_add_node_rcu(sk, list);
   588	found:
   589		spin_unlock(lock);
   590		if (esk) {
   591			percpu_counter_inc(sk->sk_prot->orphan_count);
   592			inet_sk_set_state(sk, TCP_CLOSE);
   593			sock_set_flag(sk, SOCK_DEAD);
   594			inet_csk_destroy_sock(sk);
   595		}
   596		return esk;
   597	}
   598	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010232253.ivXFy8Da-lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
QWjY/x8Ozvm7zWkBAA==

--SUOF0GtieIMvvwua--
