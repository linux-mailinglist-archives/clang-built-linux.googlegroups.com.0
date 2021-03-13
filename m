Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSNIWSBAMGQEBMDBJCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9481233A07B
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 20:36:42 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id r16sf11244838ilj.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 11:36:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615664201; cv=pass;
        d=google.com; s=arc-20160816;
        b=hn+vc9VEUje4kq9qLUr1lfYR2osm6CfoWGcZwmyMTYxMZNDYuB6VyBBscYf4zcQ42p
         j3IaDkyKJbOwBYCCmAVFs0o7K231W+GwC0b8f8NUYD9nSzydjbmb7DEaJ0kwMmKWqKEq
         dye5NOfFXywIu9Q+RhvTEweBeij17AdIpZAT41/AarPXUGqKM5UQekx8FPR/ie7U2OOt
         ph2H98Jsc78DlXJFQtkAHkSYw3IiLUl0aqRS0e84Qx37nOtbv7l6uozjBPh2DKRPSUR6
         QG4iUDh/wKXK/ptINdnJgaWWDNYeVR/7Ijcqmfb4EiWOWBm3Inzww0wbFpqFQ6vzDRkI
         /ldg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=g3aM7weBs7GXkF8DOYc78z3HoMwk3q8YONNEp2m+cWw=;
        b=qCgcVJs+t9ssOqUb6g0fbIaewt3dDUIfplI9U+KkkQpEdXg9noPDXMAM7J6jZjW145
         gOKH/r0Pk4r6TFZKd8AnMnf1+dwupUhYDOWZmbOMbixS/smle1tP6SRcXegBjeMeQGsV
         iQ/VOgRHbrUWhj8dfocJwTWwaBjoksf5sE98+Dpc4kiopv61QrnFrfpHV+Iv1sb4SCbk
         0EVUZ8+TPpoUp2JcUmk212EhXkYSN2zPmNcj84ONyMPYVhY2C28yhubNvxjHkzo6PSw7
         GaEWuqLsfTikB/+Oo9vJsWaCK/ejglO6w9DqKZZF2oiJL7SkVt2noUagmMcnvdkrEtJe
         9TXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g3aM7weBs7GXkF8DOYc78z3HoMwk3q8YONNEp2m+cWw=;
        b=cUIkdSn24TdcqaASX0Jb/OarXOVVkCIdvnRSFqNBm/ia/3a26BSNgDkrevzKae9epp
         dF99dM4YteYtIuYEleAOrTGArhX/6lqvrsm1CXEuAdSSeu/VrahCmZQ7IlMeT522COz9
         y+gA+ZovA3+/9IQeKvIduCcpJziUCdR2hE4M5w+1iavRIXTy7AsCrYWjI8vRIzEtoIdC
         MjNKF0LgO2iyNdvwdQND8ptwb84kUKDPkwZllZx9bJR8WcSkoUTjCW/ewaC3C7m3Fp9T
         x5C9tz7raUlcGwpZF8Mm8JifnBJboMh2s4qKOFCWIyhJsNAEEPnNOiHjlrlui76DkVig
         88Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g3aM7weBs7GXkF8DOYc78z3HoMwk3q8YONNEp2m+cWw=;
        b=MlJTt+2LKwJbUS25ohUdsPL1nFcUS+HwPJ0mthFJTST0ir5cRV1HfS3FEoKW+OmghK
         pBn7cBEJxBTXxdeZIG0ZyfcPQvGvi+JCbnmV1y98wYMzaCADKrgidbfYGsrEc9stwg5A
         0Psji7G6XWTeOnFR0texTgAXh3GbwOjqcakxEcRTq8cpYxVLkIcvwCZ957C9mR3tul35
         zsBPeVEg+ltTwZJBasDb7MhJ3WQ4sGLXIYvzVR6n+H0KKgtS5+JDtHCWeSIW7O46N/w4
         +TtasafzLTt8xNHGTyM5IXoyBQxVXXHwzAV8p4PYIYy8P35etuiEH2F9zORNk9A9mXxE
         Ayhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WPVdefBKcrjhc9kYoMg2jpfGwdm0ZXB2ngGCK2FM9OEMnGWFE
	FMSHCKFr7V2RLJrOiCKDRWk=
X-Google-Smtp-Source: ABdhPJyc4INfCVHtXrqaPu2WjR39U7Nr9YdUwTW3zsqvnb/1jhA3zKpw+lBImUKRTSgfXCJhQeOr8g==
X-Received: by 2002:a05:6e02:174b:: with SMTP id y11mr7165533ill.152.1615664201273;
        Sat, 13 Mar 2021 11:36:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a44:: with SMTP id u4ls2952011ilv.2.gmail; Sat, 13
 Mar 2021 11:36:40 -0800 (PST)
X-Received: by 2002:a92:8752:: with SMTP id d18mr6641921ilm.283.1615664200696;
        Sat, 13 Mar 2021 11:36:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615664200; cv=none;
        d=google.com; s=arc-20160816;
        b=pl2p086YbopeQiNxUs7fgDiAbkHXgAchoJd0n8Qq04i4mb0DP9BNeNsBn9Exi41kol
         gvSoHpxnCOVipZWo9VLKByWkUnYWxHTRJlzBouSYttVUPh6crpYVD2q2aLIQrVGk+Xc6
         jfTlpRLwD3Uu4DRtF+hW5fwpQT1APDnh9zoFxXF4hMhC9ui3Lh0/vQctILuh7uj58IA/
         dTX7AZOyxGootqAxTmymgtS0eVN7nB7uvipp6wIPXyUQZu0Fk4uAYCLEUew22yEakDTt
         2QUExYP0LVNCJzNSsleTlIlW3QkJqYGSqULaZF3qqkb7AjCWH8B3AA5kodv7FVTYaiW+
         wq5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=dlbmavCTXpMNiWl3WtChuv2i4mB1am1/9whwLRkNciI=;
        b=qP10G/QyHZsybuwijbtHH8AbggWO8TODpPQfEKLttd9LbQOsFweSrH680aSLHmYWE4
         60UvrLWKxaWk6Vv2TZ16Ihes77ukDef78IZhrElD339z6VtWd1Zu7hH/7Bq829GaEVZR
         LfvD8FECD7g93eqz8u0yDmEr3RJfSzgp/eD5+xly7PIO2OUBjoBfHX7q/dwqDKLfxr6C
         UVOO4I3WiIjUbwiJ7O2pXlGnFdtMRDTQ8krHDxIwJb40ectXjJdi85ybrNommhcxzP3H
         S3UpUVGKKEt9HHDNlm3D7ho9o6d1vLKPJmwYbsFk7ZIr+NMcmqdK46tMxzrGo55nnTL9
         KQpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id p17si561459ilm.3.2021.03.13.11.36.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Mar 2021 11:36:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 1aFgE49l1UxW9+XHa1A7njMlxuUl4msx0R9ptllbtQzrtqihidiQgvFidGhw2yafns3vnjBkvG
 pQuCISL8GpVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9922"; a="176083371"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="176083371"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2021 11:36:39 -0800
IronPort-SDR: bS8CF+g/u3FKvyhdDxtKuRCcWmBYtnB+Ru/IwEjj8Elj3BRABHVy7VkM8GlZlKhWKbjkGhLvNZ
 0TyLrPy1JBEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="410210830"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 13 Mar 2021 11:36:36 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lLA3w-0002Dj-3e; Sat, 13 Mar 2021 19:36:36 +0000
Date: Sun, 14 Mar 2021 03:35:45 +0800
From: kernel test robot <lkp@intel.com>
To: Paolo Abeni <pabeni@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
	Mat Martineau <mathew.j.martineau@linux.intel.com>
Subject: net/mptcp/protocol.c:1568:12: warning: stack frame size of 1032
 bytes in function 'mptcp_sendmsg'
Message-ID: <202103140338.qNTTxtn6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f296bfd5cd04cbb49b8fc9585adc280ab2b58624
commit: 6e628cd3a8f78cb0dfe85353e5e488bda296bedf mptcp: use mptcp release_cb for delayed tasks
date:   3 months ago
config: mips-randconfig-r034-20210313 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dfd27ebbd0eb137c9a439b7c537bb87ba903efd3)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6e628cd3a8f78cb0dfe85353e5e488bda296bedf
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 6e628cd3a8f78cb0dfe85353e5e488bda296bedf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net/mptcp/protocol.c:1568:12: warning: stack frame size of 1032 bytes in function 'mptcp_sendmsg' [-Wframe-larger-than=]
   static int mptcp_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
              ^
   1 warning generated.


vim +/mptcp_sendmsg +1568 net/mptcp/protocol.c

6e628cd3a8f78c Paolo Abeni      2020-11-27  1567  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16 @1568  static int mptcp_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1569  {
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1570  	struct mptcp_sock *msk = mptcp_sk(sk);
17091708d1e503 Florian Westphal 2020-05-16  1571  	struct page_frag *pfrag;
6d0060f600adfd Mat Martineau    2020-01-21  1572  	size_t copied = 0;
caf971df01b86f Paolo Abeni      2020-11-16  1573  	int ret = 0;
6d0060f600adfd Mat Martineau    2020-01-21  1574  	long timeo;
f870fa0b576884 Mat Martineau    2020-01-21  1575  
f870fa0b576884 Mat Martineau    2020-01-21  1576  	if (msg->msg_flags & ~(MSG_MORE | MSG_DONTWAIT | MSG_NOSIGNAL))
f870fa0b576884 Mat Martineau    2020-01-21  1577  		return -EOPNOTSUPP;
f870fa0b576884 Mat Martineau    2020-01-21  1578  
e93da92896bc0d Paolo Abeni      2020-11-27  1579  	mptcp_lock_sock(sk, __mptcp_wmem_reserve(sk, len));
1954b86016cf85 Mat Martineau    2020-02-28  1580  
1954b86016cf85 Mat Martineau    2020-02-28  1581  	timeo = sock_sndtimeo(sk, msg->msg_flags & MSG_DONTWAIT);
1954b86016cf85 Mat Martineau    2020-02-28  1582  
1954b86016cf85 Mat Martineau    2020-02-28  1583  	if ((1 << sk->sk_state) & ~(TCPF_ESTABLISHED | TCPF_CLOSE_WAIT)) {
1954b86016cf85 Mat Martineau    2020-02-28  1584  		ret = sk_stream_wait_connect(sk, &timeo);
1954b86016cf85 Mat Martineau    2020-02-28  1585  		if (ret)
1954b86016cf85 Mat Martineau    2020-02-28  1586  			goto out;
1954b86016cf85 Mat Martineau    2020-02-28  1587  	}
1954b86016cf85 Mat Martineau    2020-02-28  1588  
17091708d1e503 Florian Westphal 2020-05-16  1589  	pfrag = sk_page_frag(sk);
18b683bff89d46 Paolo Abeni      2020-03-27  1590  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1591  	while (msg_data_left(msg)) {
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1592  		int total_ts, frag_truesize = 0;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1593  		struct mptcp_data_frag *dfrag;
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1594  		struct sk_buff_head skbs;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1595  		bool dfrag_collapsed;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1596  		size_t psize, offset;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1597  
57baaf2875404b Mat Martineau    2020-07-28  1598  		if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN)) {
57baaf2875404b Mat Martineau    2020-07-28  1599  			ret = -EPIPE;
57baaf2875404b Mat Martineau    2020-07-28  1600  			goto out;
57baaf2875404b Mat Martineau    2020-07-28  1601  		}
57baaf2875404b Mat Martineau    2020-07-28  1602  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1603  		/* reuse tail pfrag, if possible, or carve a new one from the
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1604  		 * page allocator
fb529e62d3f3e8 Florian Westphal 2020-05-16  1605  		 */
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1606  		dfrag = mptcp_pending_tail(sk);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1607  		dfrag_collapsed = mptcp_frag_can_collapse_to(msk, pfrag, dfrag);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1608  		if (!dfrag_collapsed) {
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1609  			if (!sk_stream_memory_free(sk))
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1610  				goto wait_for_memory;
6e628cd3a8f78c Paolo Abeni      2020-11-27  1611  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1612  			if (!mptcp_page_frag_refill(sk, pfrag))
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1613  				goto wait_for_memory;
cec37a6e41aae7 Peter Krystad    2020-01-21  1614  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1615  			dfrag = mptcp_carve_data_frag(msk, pfrag, pfrag->offset);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1616  			frag_truesize = dfrag->overhead;
72511aab95c94d Florian Westphal 2020-05-16  1617  		}
6d0060f600adfd Mat Martineau    2020-01-21  1618  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1619  		/* we do not bound vs wspace, to allow a single packet.
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1620  		 * memory accounting will prevent execessive memory usage
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1621  		 * anyway
d5f49190def61c Paolo Abeni      2020-09-14  1622  		 */
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1623  		offset = dfrag->offset + dfrag->data_len;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1624  		psize = pfrag->size - offset;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1625  		psize = min_t(size_t, psize, msg_data_left(msg));
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1626  		total_ts = psize + frag_truesize;
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1627  		__skb_queue_head_init(&skbs);
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1628  		if (!mptcp_tx_cache_refill(sk, psize, &skbs, &total_ts))
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1629  			goto wait_for_memory;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1630  
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1631  		if (!mptcp_wmem_alloc(sk, total_ts)) {
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1632  			__skb_queue_purge(&skbs);
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1633  			goto wait_for_memory;
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1634  		}
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1635  
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1636  		skb_queue_splice_tail(&skbs, &msk->skb_tx_cache);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1637  		if (copy_page_from_iter(dfrag->page, offset, psize,
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1638  					&msg->msg_iter) != psize) {
879526030c8b5e Paolo Abeni      2020-11-27  1639  			mptcp_wmem_uncharge(sk, psize + frag_truesize);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1640  			ret = -EFAULT;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1641  			goto out;
72511aab95c94d Florian Westphal 2020-05-16  1642  		}
72511aab95c94d Florian Westphal 2020-05-16  1643  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1644  		/* data successfully copied into the write queue */
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1645  		copied += psize;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1646  		dfrag->data_len += psize;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1647  		frag_truesize += psize;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1648  		pfrag->offset += frag_truesize;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1649  		WRITE_ONCE(msk->write_seq, msk->write_seq + psize);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1650  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1651  		/* charge data on mptcp pending queue to the msk socket
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1652  		 * Note: we charge such data both to sk and ssk
fb529e62d3f3e8 Florian Westphal 2020-05-16  1653  		 */
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1654  		sk_wmem_queued_add(sk, frag_truesize);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1655  		if (!dfrag_collapsed) {
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1656  			get_page(dfrag->page);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1657  			list_add_tail(&dfrag->list, &msk->rtx_queue);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1658  			if (!msk->first_pending)
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1659  				WRITE_ONCE(msk->first_pending, dfrag);
6d0060f600adfd Mat Martineau    2020-01-21  1660  		}
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1661  		pr_debug("msk=%p dfrag at seq=%lld len=%d sent=%d new=%d", msk,
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1662  			 dfrag->data_seq, dfrag->data_len, dfrag->already_sent,
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1663  			 !dfrag_collapsed);
6d0060f600adfd Mat Martineau    2020-01-21  1664  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1665  		continue;
b51f9b80c032e1 Paolo Abeni      2020-03-27  1666  
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1667  wait_for_memory:
6e628cd3a8f78c Paolo Abeni      2020-11-27  1668  		set_bit(MPTCP_NOSPACE, &msk->flags);
6e628cd3a8f78c Paolo Abeni      2020-11-27  1669  		mptcp_push_pending(sk, msg->msg_flags);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1670  		ret = sk_stream_wait_memory(sk, &timeo);
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1671  		if (ret)
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1672  			goto out;
57040755a3e43a Paolo Abeni      2020-01-21  1673  	}
6d0060f600adfd Mat Martineau    2020-01-21  1674  
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1675  	if (copied) {
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1676  		msk->tx_pending_data += copied;
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1677  		mptcp_push_pending(sk, msg->msg_flags);
724cfd2ee8aa12 Paolo Abeni      2020-11-27  1678  	}
d9ca1de8c0cd7a Paolo Abeni      2020-11-16  1679  
1954b86016cf85 Mat Martineau    2020-02-28  1680  out:
cec37a6e41aae7 Peter Krystad    2020-01-21  1681  	release_sock(sk);
8555c6bfd5fddb Paolo Abeni      2020-08-03  1682  	return copied ? : ret;
f870fa0b576884 Mat Martineau    2020-01-21  1683  }
f870fa0b576884 Mat Martineau    2020-01-21  1684  

:::::: The code at line 1568 was first introduced by commit
:::::: d9ca1de8c0cd7a8ca2a0506e1741418741848e53 mptcp: move page frag allocation in mptcp_sendmsg()

:::::: TO: Paolo Abeni <pabeni@redhat.com>
:::::: CC: Jakub Kicinski <kuba@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103140338.qNTTxtn6-lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFkJTWAAAy5jb25maWcAjDxbc9u20u/nV2jSl3ambXyLnZxv/ACSoIiKJBgAlGW/YGRb
Sf3Vtjyy3Db//uyCNwAElfShrXYXi8VisTeA/uk/P83I2377tN4/3K0fH7/Nvm6eN7v1fnM/
+/LwuPm/WcJnJVczmjD1OxDnD89v/75/enh5nX34/fjo96PfdncfZovN7nnzOIu3z18evr7B
8Ift839++k/My5TNdRzrJRWS8VIrulKX7+4e189fZ39vdq9ANzs+/R34zH7++rD/7/v38O+n
h91uu3v/+Pj3k37Zbf9/c7ef3X+5P7nY3N7eH21uj08v7j6tz04/3V7cfTi9uL39eHG7/nR0
uvlyf/rLu27W+TDt5VEHzJMxDOiY1HFOyvnlN4sQgHmeDCBD0Q8/Pj2CfyweGZGayELPueLW
IBehea2qWgXxrMxZSS0UL6USday4kAOUic/6iovFAIlqlieKFVQrEuVUSy5wAtD/T7O52c3H
2etm//Yy7AgrmdK0XGoiYKmsYOry9ATI+5mLigEnRaWaPbzOnrd75NDrhsck7/Tw7l0IrElt
a8GIqCXJlUWfkSXVCypKmuv5DasGchsTAeYkjMpvChLGrG6mRvApxFkYcSMVmkCvGkteWzM+
3kh9iABlP4Rf3RwezQP74qzFH4ILCYxJaErqXBmLsPamA2dcqpIU9PLdz8/b5w2crp6vvJZL
VsVBMSsu2UoXn2ta08CkV0TFmTZYy9wFl1IXtODiWhOlSJwNyFrSnEXDb1KDP+qMHI7E7PXt
9vXb637zNBj5nJZUsNicmErwyJrLRsmMX4UxNE1prBgYA0lTXRC5CNPFmW28CEl4QVjpwiQr
QkQ6Y1QQEWfXYeasYrZllgmcy3YkoF2OKRcxTbTKBCUJM+6s3xKbZ0Kjep5Kd+s2z/ez7RdP
mYPv4/FC8hr4N7uX8PlYXuOElmAY4AjyMdowoUtaKhlAFlzqukqIot2+qocnCBGhrVUsXmhe
Utg7y5eWXGc36LwKXtpLB2AFc/CExQFjbEYx0Ks9xkAD1BmbZ1pQadZq/HKvuZG43ZhKUFpU
CniWzhwdfMnzulREXIfPUkMVkKUbH3MY3iktrur3av3612wP4szWINrrfr1/na3v7rZvz/uH
56+eGmGAJrHhwewIiIZiNjSENC5SxhlYG1nOXUuMZILnLaZwnGGsmsbo5emAVHC+pCJK2ipC
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
8f2i+K0bOU+ZR6P/B1Hh3s4ExgEA

--M9NhX3UHpAaciwkO--
