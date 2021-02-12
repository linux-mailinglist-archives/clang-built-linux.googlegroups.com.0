Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB766TKAQMGQEWPEVB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1213E31A2D8
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 17:40:33 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id y186sf139264vsc.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 08:40:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613148032; cv=pass;
        d=google.com; s=arc-20160816;
        b=BrtQra/NkGFoNl29PYeY/1XnBi5WSiZQZEpcu/KdwSqEtlpfB1/+icIBj8CFWeVyGK
         NPq50gYqSxvifvecQGbFyLfyW8EidZEKgsKRhezJHyxuxq1NclUOAtmEV3DLH17mxCP0
         jD5FcQGz1FoluFjf/OteKapKB+D4diOcrS8fCPufCOdl0PUoTbsVsMHkrawCU64nN8kr
         uaYILMl3yJCC4zaHHGeJ4LPyh5VvJO+07zzj5B8oaUFZ1Llr9vBvWgu55iARqE/tiafb
         s4rdEoJUBLTlRQ/zPn3VblR4z10J3g3xjijNvk3lokU6GHKc2j4aqM+EjcJTWfIGnRI2
         7xGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dXbOjaUrDdY34/XzHp7gR/tPI2Gpk12n8eZwCYKsWzg=;
        b=UR/Xkje+c9hAnnvgZYEosRQWByYKz8tMl3ucHk7Rsi44PicBaadV3hnbxySdUGbSaw
         SSi4ErIJWAuC+4o9rZpVc+b7JgV17TzduN9ZWvmX020sAN1NAnsLZfrckwIGXfubo9ja
         6GCJ7IKK5uxZ4SZcHlVQueDLS7xn+N7RTD04676dPIDrTaYmWbBV6gSs5tFd4fO1X1os
         n+gTtqDHDFzV+kScAWMNB9XHepKIbTd3g1iJR9KgwXfRRCP2rVBZHuVx9ccciwdtC4af
         +uHcrjI2k/3Ayd4u17N1KcQh76FsW0XjbdxPPpvu6xJk79Gk3tGRMHJqYvzagq3OX2d3
         KhAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dXbOjaUrDdY34/XzHp7gR/tPI2Gpk12n8eZwCYKsWzg=;
        b=KJRjonKXEkqE2a6TVblysvjC30h3pOy6C/zIJ+jQ9LaZbWAXptdo2VZ0QnUcGHIvR5
         rAaAZx0jj0nOd/sz8pFbauJcI1qIChHy0CO8Rob2Ji76ZOQSjLeVRIG9wAWsEMOwFbbf
         JWt9YEX+xgyOLhIEkRx/s65rVDJImvHiOESbER00KYg4+6IPB8LImYsNYSeJ67Zj5h6J
         pe4TR0bI/6IU5G/ybJEhINI7dgMC3zRaMYg5h8E3MUGF5wHYyRmAw3GcKnP1qJZvqmPP
         8RgfpP1olGnw4uRpgdOIS8jeOHcRQTSU92jb0J4+wdkiK0e34Lb43YIkbBUEZYT2zioj
         1vjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dXbOjaUrDdY34/XzHp7gR/tPI2Gpk12n8eZwCYKsWzg=;
        b=OwTkW1CvCOGEHGu90cyGZzOTMmKxK8KT58A/C7BW5qnstrcq6rIS8OXu59WeH/ox66
         WyvolUbGWuMvfIIa4oYjDrjDpFp4BWJdORtl2caA7Ste6/BbaV1xLUYz/7fmf6I7inrp
         T1DEhT+cwGFg1/Ze/Gb8NO1BFOsTd9KyibGZFNb39E9gQZx1LC4nwPSQ+Ls55PqIDqvJ
         rz0gD3z40JGqL/V/0czW06rgYQYMUVuLPtAG9cZ2KxmMeG0DdUGw5/a7H1P/M+s0Jr0h
         Vkc/AvVSUK0IpmwpggwtegrPJ6Hv1E55ctFLwLIWMKbV8cf0QbCqVcilfbpAW5VnVLzH
         /Igg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ffHkF+QkRRNAK1/i+1/X6VkuVV3fTgEhMjzSIZdHldBpnNYG4
	QZFC3kWI3JnenFxmVcGGYB0=
X-Google-Smtp-Source: ABdhPJwkxyzGjFZSko2jQ2VIWEJp94V+2uaxhLevD+1KazSfPrG5uN1sWijnsq9KLkIfqVa+z8he0w==
X-Received: by 2002:a67:3104:: with SMTP id x4mr2155298vsx.0.1613148032020;
        Fri, 12 Feb 2021 08:40:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1c41:: with SMTP id o1ls328578uaj.6.gmail; Fri, 12 Feb
 2021 08:40:31 -0800 (PST)
X-Received: by 2002:ab0:6f10:: with SMTP id r16mr2242943uah.116.1613148031429;
        Fri, 12 Feb 2021 08:40:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613148031; cv=none;
        d=google.com; s=arc-20160816;
        b=hkxWH6FA56F5AE32PeI9rpj6RUXYh7QbsjEZ67oN3yAmcLVCfAgxYgRz3h5E+2azOx
         +V9rS8dvMV1Uqcp2bLJlwuyGdch/mI5iXXiMJFkb3kqXlSrgCtFecA0b7pB85tX235/F
         1j+nxnpkUc2fUi9cuczhtAOlR8kSLTYj5DwLNqJr49pOG9aUR3GbVXvgKx6jPnpykuk2
         qny1CZgh/BQa4TNOfZfH2Yk1a039J8GzlMYdFPzEAuYlU3a0PHT60znTbXdlLnZg3LDL
         SS7/17Maqgqqm4jklLG12b1mah+80iSLRq18VwdR8RgpRg841V4AM/c9Tknh8Xwnw8Ud
         MuXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=wib76mtsB5vg+5+5aWGRBEWf+sLS2vgHChKGbZlh9+0=;
        b=cqyE4l1sTqsD6SAz0wqnaaqlSbp4Vw0LdLDacxevC4aW9LNSCEY7ykqbRiVk1A/wlT
         m42hZjNvNF4fL697mSY0aqkKEb2xe8Z7y/pUPSKYM+Xq6ahe+Dc8S5zWw/cBHssweBXZ
         DCeLhDG7aLYQBDwmKW30MarZH2kL6IKANXatnWW7OsDfMWUZnLYAHci2YEk/WzmA8nfc
         Yy7yGpKD1C5DaQ7rRPvtsFFrJi8I3aJoC/6NfPj6Zo6dg4cE2spo8E1ipUBrHbRXxQOn
         dbDvCxakrjNq4m7mkw4cAzBMpSEJZe6kr87SXADblAWA/7ZVwxK7sIeaMHdHMclRugmw
         dfRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id f203si511012vke.0.2021.02.12.08.40.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 08:40:31 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: d4tkrQzF7EzL+RwLxQ92pjvwu2XLzjQYMlIyL+WQ8YUh+ScTHnP2d7wNJsjqCIjNi3Gd3VNI40
 CopBdsY1pTtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="182509073"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; 
   d="gz'50?scan'50,208,50";a="182509073"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2021 08:40:29 -0800
IronPort-SDR: btvSxYIITQogiPvtrZa24TyoHHzacxa3MPLZiokvCRpA2zFAQe0Bm4P2CMJqMahe/yMfgFpb2a
 VnmzEZLjq5Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; 
   d="gz'50?scan'50,208,50";a="399926517"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 12 Feb 2021 08:40:26 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lAbUY-0004k2-0n; Fri, 12 Feb 2021 16:40:26 +0000
Date: Sat, 13 Feb 2021 00:39:56 +0800
From: kernel test robot <lkp@intel.com>
To: Florian Westphal <fw@strlen.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [linux-next:master 5178/10581]
 net/netfilter/nfnetlink_queue.c:601:36: warning: variable 'ctinfo' is
 uninitialized when used here
Message-ID: <202102130043.4UIBML4o-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   671176b0016c80b3943cb5387312c886aba3308d
commit: 83ace77f51175023c3757e2d08a92565f9b1c7f3 [5178/10581] netfilter: ctnetlink: remove get_ct indirection
config: powerpc64-randconfig-r025-20210212 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=83ace77f51175023c3757e2d08a92565f9b1c7f3
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 83ace77f51175023c3757e2d08a92565f9b1c7f3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net/netfilter/nfnetlink_queue.c:601:36: warning: variable 'ctinfo' is uninitialized when used here [-Wuninitialized]
           if (ct && nfnl_ct->build(skb, ct, ctinfo, NFQA_CT, NFQA_CT_INFO) < 0)
                                             ^~~~~~
   net/netfilter/nfnetlink_queue.c:391:2: note: variable 'ctinfo' is declared here
           enum ip_conntrack_info ctinfo;
           ^
   1 warning generated.


vim +/ctinfo +601 net/netfilter/nfnetlink_queue.c

7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  456  
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  457  	if (queue->flags & NFQA_CFG_F_UID_GID) {
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  458  		size += (nla_total_size(sizeof(u_int32_t))	/* uid */
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  459  			+ nla_total_size(sizeof(u_int32_t)));	/* gid */
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  460  	}
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  461  
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  462  	if ((queue->flags & NFQA_CFG_F_SECCTX) && entskb->sk) {
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  463  		seclen = nfqnl_get_sk_secctx(entskb, &secdata);
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  464  		if (seclen)
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  465  			size += nla_total_size(seclen);
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  466  	}
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  467  
c5b0db3263b925 net/netfilter/nfnetlink_queue.c      Florian Westphal      2016-02-18  468  	skb = alloc_skb(size, GFP_ATOMIC);
36d5fe6a000790 net/netfilter/nfnetlink_queue_core.c Zoltan Kiss           2014-03-26  469  	if (!skb) {
36d5fe6a000790 net/netfilter/nfnetlink_queue_core.c Zoltan Kiss           2014-03-26  470  		skb_tx_error(entskb);
77c1c03c5b8ef2 net/netfilter/nfnetlink_queue.c      Liping Zhang          2017-03-28  471  		goto nlmsg_failure;
36d5fe6a000790 net/netfilter/nfnetlink_queue_core.c Zoltan Kiss           2014-03-26  472  	}
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  473  
3da07c0c2b5a13 net/netfilter/nfnetlink_queue_core.c David S. Miller       2012-06-26  474  	nlh = nlmsg_put(skb, 0, 0,
dedb67c4b4e5fa net/netfilter/nfnetlink_queue.c      Pablo Neira Ayuso     2017-03-28  475  			nfnl_msg_type(NFNL_SUBSYS_QUEUE, NFQNL_MSG_PACKET),
3da07c0c2b5a13 net/netfilter/nfnetlink_queue_core.c David S. Miller       2012-06-26  476  			sizeof(struct nfgenmsg), 0);
3da07c0c2b5a13 net/netfilter/nfnetlink_queue_core.c David S. Miller       2012-06-26  477  	if (!nlh) {
36d5fe6a000790 net/netfilter/nfnetlink_queue_core.c Zoltan Kiss           2014-03-26  478  		skb_tx_error(entskb);
3da07c0c2b5a13 net/netfilter/nfnetlink_queue_core.c David S. Miller       2012-06-26  479  		kfree_skb(skb);
77c1c03c5b8ef2 net/netfilter/nfnetlink_queue.c      Liping Zhang          2017-03-28  480  		goto nlmsg_failure;
3da07c0c2b5a13 net/netfilter/nfnetlink_queue_core.c David S. Miller       2012-06-26  481  	}
3da07c0c2b5a13 net/netfilter/nfnetlink_queue_core.c David S. Miller       2012-06-26  482  	nfmsg = nlmsg_data(nlh);
1d1de89b9a4746 net/netfilter/nfnetlink_queue_core.c David S. Miller       2015-04-03  483  	nfmsg->nfgen_family = entry->state.pf;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  484  	nfmsg->version = NFNETLINK_V0;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  485  	nfmsg->res_id = htons(queue->queue_num);
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  486  
5863702a3421b0 net/netfilter/nfnetlink_queue.c      Eric Dumazet          2011-07-19  487  	nla = __nla_reserve(skb, NFQA_PACKET_HDR, sizeof(*pmsg));
5863702a3421b0 net/netfilter/nfnetlink_queue.c      Eric Dumazet          2011-07-19  488  	pmsg = nla_data(nla);
5863702a3421b0 net/netfilter/nfnetlink_queue.c      Eric Dumazet          2011-07-19  489  	pmsg->hw_protocol	= entskb->protocol;
1d1de89b9a4746 net/netfilter/nfnetlink_queue_core.c David S. Miller       2015-04-03  490  	pmsg->hook		= entry->state.hook;
5863702a3421b0 net/netfilter/nfnetlink_queue.c      Eric Dumazet          2011-07-19  491  	*packet_id_ptr		= &pmsg->packet_id;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  492  
1d1de89b9a4746 net/netfilter/nfnetlink_queue_core.c David S. Miller       2015-04-03  493  	indev = entry->state.in;
3e4ead4fe5d0d9 net/netfilter/nfnetlink_queue.c      Jesper Juhl           2006-01-05  494  	if (indev) {
1109a90c01177e net/netfilter/nfnetlink_queue_core.c Pablo Neira Ayuso     2014-10-01  495  #if !IS_ENABLED(CONFIG_BRIDGE_NETFILTER)
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  496  		if (nla_put_be32(skb, NFQA_IFINDEX_INDEV, htonl(indev->ifindex)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  497  			goto nla_put_failure;
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  498  #else
1d1de89b9a4746 net/netfilter/nfnetlink_queue_core.c David S. Miller       2015-04-03  499  		if (entry->state.pf == PF_BRIDGE) {
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  500  			/* Case 1: indev is physical input device, we need to
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  501  			 * look for bridge group (when called from
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  502  			 * netfilter_bridge) */
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  503  			if (nla_put_be32(skb, NFQA_IFINDEX_PHYSINDEV,
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  504  					 htonl(indev->ifindex)) ||
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  505  			/* this is the bridge group "brX" */
f350a0a8737441 net/netfilter/nfnetlink_queue.c      Jiri Pirko            2010-06-15  506  			/* rcu_read_lock()ed by __nf_queue */
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  507  			    nla_put_be32(skb, NFQA_IFINDEX_INDEV,
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  508  					 htonl(br_port_get_rcu(indev)->br->dev->ifindex)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  509  				goto nla_put_failure;
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  510  		} else {
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  511  			int physinif;
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  512  
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  513  			/* Case 2: indev is bridge group, we need to look for
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  514  			 * physical device (when called from ipv4) */
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  515  			if (nla_put_be32(skb, NFQA_IFINDEX_INDEV,
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  516  					 htonl(indev->ifindex)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  517  				goto nla_put_failure;
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  518  
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  519  			physinif = nf_bridge_get_physinif(entskb);
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  520  			if (physinif &&
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  521  			    nla_put_be32(skb, NFQA_IFINDEX_PHYSINDEV,
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  522  					 htonl(physinif)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  523  				goto nla_put_failure;
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  524  		}
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  525  #endif
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  526  	}
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  527  
3e4ead4fe5d0d9 net/netfilter/nfnetlink_queue.c      Jesper Juhl           2006-01-05  528  	if (outdev) {
1109a90c01177e net/netfilter/nfnetlink_queue_core.c Pablo Neira Ayuso     2014-10-01  529  #if !IS_ENABLED(CONFIG_BRIDGE_NETFILTER)
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  530  		if (nla_put_be32(skb, NFQA_IFINDEX_OUTDEV, htonl(outdev->ifindex)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  531  			goto nla_put_failure;
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  532  #else
1d1de89b9a4746 net/netfilter/nfnetlink_queue_core.c David S. Miller       2015-04-03  533  		if (entry->state.pf == PF_BRIDGE) {
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  534  			/* Case 1: outdev is physical output device, we need to
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  535  			 * look for bridge group (when called from
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  536  			 * netfilter_bridge) */
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  537  			if (nla_put_be32(skb, NFQA_IFINDEX_PHYSOUTDEV,
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  538  					 htonl(outdev->ifindex)) ||
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  539  			/* this is the bridge group "brX" */
f350a0a8737441 net/netfilter/nfnetlink_queue.c      Jiri Pirko            2010-06-15  540  			/* rcu_read_lock()ed by __nf_queue */
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  541  			    nla_put_be32(skb, NFQA_IFINDEX_OUTDEV,
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  542  					 htonl(br_port_get_rcu(outdev)->br->dev->ifindex)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  543  				goto nla_put_failure;
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  544  		} else {
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  545  			int physoutif;
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  546  
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  547  			/* Case 2: outdev is bridge group, we need to look for
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  548  			 * physical output device (when called from ipv4) */
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  549  			if (nla_put_be32(skb, NFQA_IFINDEX_OUTDEV,
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  550  					 htonl(outdev->ifindex)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  551  				goto nla_put_failure;
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  552  
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  553  			physoutif = nf_bridge_get_physoutif(entskb);
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  554  			if (physoutif &&
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  555  			    nla_put_be32(skb, NFQA_IFINDEX_PHYSOUTDEV,
c737b7c4510026 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2015-04-02  556  					 htonl(physoutif)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  557  				goto nla_put_failure;
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  558  		}
fbcd923c3e0c8e net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  559  #endif
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  560  	}
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  561  
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  562  	if (entskb->mark &&
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  563  	    nla_put_be32(skb, NFQA_MARK, htonl(entskb->mark)))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  564  		goto nla_put_failure;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  565  
2c38de4c1f8da7 net/netfilter/nfnetlink_queue.c      Nicolas Cavallari     2011-06-16  566  	if (indev && entskb->dev &&
2c38de4c1f8da7 net/netfilter/nfnetlink_queue.c      Nicolas Cavallari     2011-06-16  567  	    entskb->mac_header != entskb->network_header) {
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  568  		struct nfqnl_msg_packet_hw phw;
e4d091d7bf787c net/netfilter/nfnetlink_queue_core.c Dan Carpenter         2013-08-01  569  		int len;
e4d091d7bf787c net/netfilter/nfnetlink_queue_core.c Dan Carpenter         2013-08-01  570  
e4d091d7bf787c net/netfilter/nfnetlink_queue_core.c Dan Carpenter         2013-08-01  571  		memset(&phw, 0, sizeof(phw));
e4d091d7bf787c net/netfilter/nfnetlink_queue_core.c Dan Carpenter         2013-08-01  572  		len = dev_parse_header(entskb, phw.hw_addr);
b95cce3576813a net/netfilter/nfnetlink_queue.c      Stephen Hemminger     2007-09-26  573  		if (len) {
98a4a86128d717 net/netfilter/nfnetlink_queue.c      Al Viro               2006-11-08  574  			phw.hw_addrlen = htons(len);
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  575  			if (nla_put(skb, NFQA_HWADDR, sizeof(phw), &phw))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  576  				goto nla_put_failure;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  577  		}
b95cce3576813a net/netfilter/nfnetlink_queue.c      Stephen Hemminger     2007-09-26  578  	}
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  579  
15824ab29f364a net/netfilter/nfnetlink_queue.c      Stephane Bryant       2016-03-26  580  	if (nfqnl_put_bridge(entry, skb) < 0)
15824ab29f364a net/netfilter/nfnetlink_queue.c      Stephane Bryant       2016-03-26  581  		goto nla_put_failure;
15824ab29f364a net/netfilter/nfnetlink_queue.c      Stephane Bryant       2016-03-26  582  
916f6efae62305 net/netfilter/nfnetlink_queue.c      Florian Westphal      2019-04-17  583  	if (entry->state.hook <= NF_INET_FORWARD && entskb->tstamp) {
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  584  		struct nfqnl_msg_packet_timestamp ts;
a7f1884554b81b net/netfilter/nfnetlink_queue.c      Florian Westphal      2016-05-12  585  		struct timespec64 kts = ktime_to_timespec64(entskb->tstamp);
b28b1e826f818c net/netfilter/nfnetlink_queue.c      Pablo Neira Ayuso     2015-10-04  586  
b28b1e826f818c net/netfilter/nfnetlink_queue.c      Pablo Neira Ayuso     2015-10-04  587  		ts.sec = cpu_to_be64(kts.tv_sec);
b28b1e826f818c net/netfilter/nfnetlink_queue.c      Pablo Neira Ayuso     2015-10-04  588  		ts.usec = cpu_to_be64(kts.tv_nsec / NSEC_PER_USEC);
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  589  
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  590  		if (nla_put(skb, NFQA_TIMESTAMP, sizeof(ts), &ts))
a447189e073bf6 net/netfilter/nfnetlink_queue.c      David S. Miller       2012-03-29  591  			goto nla_put_failure;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  592  	}
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  593  
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  594  	if ((queue->flags & NFQA_CFG_F_UID_GID) && entskb->sk &&
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  595  	    nfqnl_put_sk_uidgid(skb, entskb->sk) < 0)
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  596  		goto nla_put_failure;
08c0cad69f32ad net/netfilter/nfnetlink_queue_core.c Valentina Giusti      2013-12-20  597  
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  598  	if (seclen && nla_put(skb, NFQA_SECCTX, seclen, secdata))
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  599  		goto nla_put_failure;
ef493bd930ae48 net/netfilter/nfnetlink_queue_core.c Roman Kubiak          2015-06-12  600  
a4b4766c3cebb4 net/netfilter/nfnetlink_queue.c      Ken-ichirou MATSUZAWA 2015-10-05 @601  	if (ct && nfnl_ct->build(skb, ct, ctinfo, NFQA_CT, NFQA_CT_INFO) < 0)
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  602  		goto nla_put_failure;
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  603  
7f87712c015251 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2013-06-04  604  	if (cap_len > data_len &&
7f87712c015251 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2013-06-04  605  	    nla_put_be32(skb, NFQA_CAP_LEN, htonl(cap_len)))
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  606  		goto nla_put_failure;
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  607  
496e4ae7dc944f net/netfilter/nfnetlink_queue_core.c Florian Westphal      2013-06-29  608  	if (nfqnl_put_packet_info(skb, entskb, csum_verify))
7237190df8c412 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2013-04-19  609  		goto nla_put_failure;
7237190df8c412 net/netfilter/nfnetlink_queue_core.c Florian Westphal      2013-04-19  610  
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  611  	if (data_len) {
df6fb868d61186 net/netfilter/nfnetlink_queue.c      Patrick McHardy       2007-09-28  612  		struct nlattr *nla;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  613  
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  614  		if (skb_tailroom(skb) < sizeof(*nla) + hlen)
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  615  			goto nla_put_failure;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  616  
4df864c1d9afb4 net/netfilter/nfnetlink_queue.c      Johannes Berg         2017-06-16  617  		nla = skb_put(skb, sizeof(*nla));
df6fb868d61186 net/netfilter/nfnetlink_queue.c      Patrick McHardy       2007-09-28  618  		nla->nla_type = NFQA_PAYLOAD;
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  619  		nla->nla_len = nla_attr_size(data_len);
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  620  
36d5fe6a000790 net/netfilter/nfnetlink_queue_core.c Zoltan Kiss           2014-03-26  621  		if (skb_zerocopy(skb, entskb, data_len, hlen))
36d5fe6a000790 net/netfilter/nfnetlink_queue_core.c Zoltan Kiss           2014-03-26  622  			goto nla_put_failure;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  623  	}
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  624  
ae08ce0021087a net/netfilter/nfnetlink_queue_core.c Eric Dumazet          2013-03-17  625  	nlh->nlmsg_len = skb->len;
77c1c03c5b8ef2 net/netfilter/nfnetlink_queue.c      Liping Zhang          2017-03-28  626  	if (seclen)
77c1c03c5b8ef2 net/netfilter/nfnetlink_queue.c      Liping Zhang          2017-03-28  627  		security_release_secctx(secdata, seclen);
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  628  	return skb;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  629  
df6fb868d61186 net/netfilter/nfnetlink_queue.c      Patrick McHardy       2007-09-28  630  nla_put_failure:
36d5fe6a000790 net/netfilter/nfnetlink_queue_core.c Zoltan Kiss           2014-03-26  631  	skb_tx_error(entskb);
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  632  	kfree_skb(skb);
e87cc4728f0e2f net/netfilter/nfnetlink_queue.c      Joe Perches           2012-05-13  633  	net_err_ratelimited("nf_queue: error creating packet message\n");
77c1c03c5b8ef2 net/netfilter/nfnetlink_queue.c      Liping Zhang          2017-03-28  634  nlmsg_failure:
77c1c03c5b8ef2 net/netfilter/nfnetlink_queue.c      Liping Zhang          2017-03-28  635  	if (seclen)
77c1c03c5b8ef2 net/netfilter/nfnetlink_queue.c      Liping Zhang          2017-03-28  636  		security_release_secctx(secdata, seclen);
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  637  	return NULL;
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  638  }
7af4cc3fa158ff net/netfilter/nfnetlink_queue.c      Harald Welte          2005-08-09  639  

:::::: The code at line 601 was first introduced by commit
:::::: a4b4766c3cebb4018167e06b863d8e95b7274757 netfilter: nfnetlink_queue: rename related to nfqueue attaching conntrack info

:::::: TO: Ken-ichirou MATSUZAWA <chamaken@gmail.com>
:::::: CC: Pablo Neira Ayuso <pablo@netfilter.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102130043.4UIBML4o-lkp%40intel.com.

--EeQfGwPcQSOJBaQU
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
3o/0tDouksrw/D/vdY5HzgUCAA==

--EeQfGwPcQSOJBaQU--
