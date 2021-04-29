Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK5SVSCAMGQEEJUTWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1572536F134
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 22:38:24 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id h15-20020a37de0f0000b029029a8ada2e18sf28726427qkj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 13:38:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619728683; cv=pass;
        d=google.com; s=arc-20160816;
        b=TUgjy90WyU6qjN2vx4Csc8LR8eaKToNntELYwL4qevycwFYB+JIuRPE2Zy6R1M9b1n
         RuV/cXnQ0KGlbV+6OkXUiD6nLSsln57RfBbG3ERpAmBP1o1tqXDAfKCMogN/JPBFZtIe
         vtEJEeiP5+xYz277GKn9Ry9LM+Ydi/w8kF5yUBCwee17ca/5GVcb9D5xHSYY9VduJfVj
         eSFhpdo3WD0Dov0IToxNHHYrBMsH4bVspsaJdQ23EdxSIwcRDCGD44GQdUfLuWAh6e8N
         QzDKQnJOYW5rb1RxKGA3X9nLm9v24+jsYXDLyoEJkgriNbYv2Sc4STKvvXWtYd53cE74
         PhoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=fEqoLZatQGI0ttisU2G9mM7ZKJE9NPoZiMaF5/WWh3A=;
        b=pCejUPr9RrE1AZf6E/P9yei6vnoVpiKITpu/MqTSa5PeLZMeZwIKOQU88BVsVSG9nl
         L2t/y+fGKLnq26D7v3l9CPyrkE/ay5N7bEIJWqDgDKnF49F4419Qy/CoXoZo+UcTDleR
         ALUhRo83TI9DDiBC/vAJ3l/N2I5uBXhfwUxlkOijGXo1WVfUg+d7ebMZqVUkJElRCD/Z
         O9uRoge6kHMGt87c9CcHBoCX8GG843/ANadZodzwN0ppGE+hdhSg2Mwig+NPw9DdMD5Q
         aqtwHa5Q6DHrW3t5RxXipOQO/EM5S+tflyL8q2zCzAAZ6rPPi5x3baqQvMYShruTCLyU
         xkdA==
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
        bh=fEqoLZatQGI0ttisU2G9mM7ZKJE9NPoZiMaF5/WWh3A=;
        b=HRwcBd/7Bi8KOMIywpgRYB49++MiKyv7WL6h2s0Iiedskv7eavNsFO586J4uC7IID2
         CwP6M29acudiB3UeLZSffI8I/i3c8I3L+4OqsVnQTkX1GyecQBIhg1Onlz7iOC5jAf8G
         Y9c8MLsoB+3RuUDhaprXtZjBEG8UgK8juXRYBnT+oU775vE1HFBHP00TvB68FfUarn57
         rYNeBpIwvySO0dQBWuEJV3bNJTzz/DuZYhqspAya3DUFNNtHJ+1jOteYBeRqgHPSIbBg
         2Royg4ZaUTo565bisjUIlTZ++AAOujuBiUoD4RmE1NqK0P1xBlVY0gBbZmeV7RjOJPvg
         sUbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fEqoLZatQGI0ttisU2G9mM7ZKJE9NPoZiMaF5/WWh3A=;
        b=NA8pGtjZYCdxhFTVKqnQr9SoNHAtr+dP1JuspSVC57qkmZPRebxGYfnlbJLNe4W2oM
         M/iXsI4QGriSsOaj3KUDAbYK7qt3lRGXsQl1RGSutbHAHDA3km+bJ5oJyCHmtE8SkM/j
         mkheOsk/grU2+VOsiVcLtlQs7CRS9Fo4KhbZzo1g2OpqVpOA4oMv9yugUN8+bGHr4Akq
         g63iC0vKYCHQoGbAxOtV4woPx7H4YhlChTpzFMQtw6v8ECepd1bQIxzEKr2tmT3YauZo
         ESSd3aXps58Hl/I28v2edIf+ZuAkZqB6FuRjZ7U7Mb/pUZZiMjgY+AcdPlzilYfBXFkS
         8YcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VqwDdeeJONTXc0mDDIIEmkxZn3/IX8jp5gHsN/dlwg2umzff8
	ptUH/w12RaEYjd6VBQTlsik=
X-Google-Smtp-Source: ABdhPJxICKRxQNfaI4K1rmEtLcSev+Um4NDN3i/RSq2wefOOSJuvLoI0trQXgxlzNSgSpnFlAeIh8w==
X-Received: by 2002:a05:620a:4081:: with SMTP id f1mr1655646qko.203.1619728683170;
        Thu, 29 Apr 2021 13:38:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6756:: with SMTP id n22ls1804578qtp.1.gmail; Thu, 29 Apr
 2021 13:38:02 -0700 (PDT)
X-Received: by 2002:ac8:5906:: with SMTP id 6mr1274211qty.195.1619728682428;
        Thu, 29 Apr 2021 13:38:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619728682; cv=none;
        d=google.com; s=arc-20160816;
        b=olv0IlHBcx/DLJPjOLmgcTUvzn98kBSZydDkG3cq5ox35cUen+DNmPsBLtP8Q2Hb3m
         uazy+dT/cVuLTaV4b6qy5h3M/+w0HtbA3+NIfTfjL2/YFTdAu/ACX/X4cGRSl3jXzK0g
         JryrLWOcFRDZdHjaQq6I66afXoeH7oJOPuxZrahgReNnNZNWHHO/XdSj/4uY6dZY2IOI
         VCdfbEMhqfXkvIK3RgoYvPIXYjjZOhi8YBkn2dWSlaizx/V3oGpwolGctLuf+etLpRXw
         nw0rdFVIfjpgooHGDh0k/Tya2rnnRrEIAyCF5yz1h/3Pxr5qDNKeB6hRh4aclYmDLztD
         p+sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Bf40tAl8l82CqomexqWE86PHonvP6zWvtR0CKpNf93k=;
        b=XRCqr1RBl8/cBrL8t1ChjF30hg9iqeszcywNTIMhjbOlw3isBkJ6pVKdkOAKennOXP
         L3zUYLtcxfGcz8tp8eMxRW05oNo/GSxplDmMygO6PJJ4mpK7xXUL0Y/VUirbxOQ3tJJw
         a5M9XLoDP0jLXJixasya58UtoR2fpjp4ViYvVtUCbealeq1f5qffI2RBGxJvVcFYIifb
         7OluafsJ2eOZ5rwMLt6kgK4qivF9kkZF2UlOQy+0gguh2h0pd4Zs3qAJHdwZmh/qpjMC
         WKPTKxoOmryNKkRu1/yq0DAAzqpOTQE7Ew+6jF4WK1zEok2MpV5+/R7eXFRssUMCNP7H
         W04w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id h62si333152qkc.3.2021.04.29.13.38.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 13:38:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 6JAfA3uTJhZyisYMkiHKGrAwVC3jezt9V2n5/k22G8FpqFb36OQHOmH0U6H6qQCWtW+RlswP3R
 54sYTpWdCmmA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="193926777"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; 
   d="gz'50?scan'50,208,50";a="193926777"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2021 13:37:58 -0700
IronPort-SDR: euqXWuLmN4yb0JlCvp3+70Njrz9Uh41mNhRSWLR1JsYnrLX9tnEdx8lyEXdraQSXsiqjPJc7eR
 6ezBPRNBYlew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; 
   d="gz'50?scan'50,208,50";a="394046610"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 29 Apr 2021 13:37:56 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lcDQ2-0007n6-Vs; Thu, 29 Apr 2021 20:37:55 +0000
Date: Fri, 30 Apr 2021 04:37:45 +0800
From: kernel test robot <lkp@intel.com>
To: Jiri Bohac <jbohac@suse.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH] fix xfrm MTU regression
Message-ID: <202104300409.iAhWmxup-lkp@intel.com>
References: <20210429170254.5grfgsz2hgy2qjhk@dwarf.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline
In-Reply-To: <20210429170254.5grfgsz2hgy2qjhk@dwarf.suse.cz>
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


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jiri,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on linus/master]
[also build test WARNING on v5.12 next-20210429]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jiri-Bohac/fix-xfrm-MTU-regression/20210430-010412
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git d72cd4ad4174cfd2257c426ad51e4f53bcfde9c9
config: x86_64-randconfig-a015-20210429 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9131a078901b00e68248a27a4f8c4b11bb1db1ae)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/f556543e005a1eb6567fc299e60f7d92dc508f88
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jiri-Bohac/fix-xfrm-MTU-regression/20210430-010412
        git checkout f556543e005a1eb6567fc299e60f7d92dc508f88
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net/ipv6/ip6_output.c:1467:6: warning: variable 'headersize' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (mtu < fragheaderlen ||
               ^~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/ip6_output.c:1501:27: note: uninitialized use occurs here
                   pmtu = max_t(int, mtu - headersize + sizeof(struct ipv6hdr), 0);
                                           ^~~~~~~~~~
   include/linux/minmax.h:118:48: note: expanded from macro 'max_t'
   #define max_t(type, x, y)       __careful_cmp((type)(x), (type)(y), >)
                                                        ^
   include/linux/minmax.h:44:14: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                              ^
   include/linux/minmax.h:37:25: note: expanded from macro '__cmp_once'
                   typeof(x) unique_x = (x);               \
                                         ^
   net/ipv6/ip6_output.c:1467:2: note: remove the 'if' if its condition is always false
           if (mtu < fragheaderlen ||
           ^~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/ipv6/ip6_output.c:1467:6: warning: variable 'headersize' is used uninitialized whenever '||' condition is true [-Wsometimes-uninitialized]
           if (mtu < fragheaderlen ||
               ^~~~~~~~~~~~~~~~~~~
   net/ipv6/ip6_output.c:1501:27: note: uninitialized use occurs here
                   pmtu = max_t(int, mtu - headersize + sizeof(struct ipv6hdr), 0);
                                           ^~~~~~~~~~
   include/linux/minmax.h:118:48: note: expanded from macro 'max_t'
   #define max_t(type, x, y)       __careful_cmp((type)(x), (type)(y), >)
                                                        ^
   include/linux/minmax.h:44:14: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                              ^
   include/linux/minmax.h:37:25: note: expanded from macro '__cmp_once'
                   typeof(x) unique_x = (x);               \
                                         ^
   net/ipv6/ip6_output.c:1467:6: note: remove the '||' if its condition is always false
           if (mtu < fragheaderlen ||
               ^~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/ip6_output.c:1444:41: note: initialize the variable 'headersize' to silence this warning
           unsigned int maxnonfragsize, headersize;
                                                  ^
                                                   = 0
   2 warnings generated.


vim +1467 net/ipv6/ip6_output.c

  1419	
  1420	static int __ip6_append_data(struct sock *sk,
  1421				     struct flowi6 *fl6,
  1422				     struct sk_buff_head *queue,
  1423				     struct inet_cork *cork,
  1424				     struct inet6_cork *v6_cork,
  1425				     struct page_frag *pfrag,
  1426				     int getfrag(void *from, char *to, int offset,
  1427						 int len, int odd, struct sk_buff *skb),
  1428				     void *from, int length, int transhdrlen,
  1429				     unsigned int flags, struct ipcm6_cookie *ipc6)
  1430	{
  1431		struct sk_buff *skb, *skb_prev = NULL;
  1432		unsigned int maxfraglen, fragheaderlen, mtu, orig_mtu, pmtu;
  1433		struct ubuf_info *uarg = NULL;
  1434		int exthdrlen = 0;
  1435		int dst_exthdrlen = 0;
  1436		int hh_len;
  1437		int copy;
  1438		int err;
  1439		int offset = 0;
  1440		u32 tskey = 0;
  1441		struct rt6_info *rt = (struct rt6_info *)cork->dst;
  1442		struct ipv6_txoptions *opt = v6_cork->opt;
  1443		int csummode = CHECKSUM_NONE;
  1444		unsigned int maxnonfragsize, headersize;
  1445		unsigned int wmem_alloc_delta = 0;
  1446		bool paged, extra_uref = false;
  1447	
  1448		skb = skb_peek_tail(queue);
  1449		if (!skb) {
  1450			exthdrlen = opt ? opt->opt_flen : 0;
  1451			dst_exthdrlen = rt->dst.header_len - rt->rt6i_nfheader_len;
  1452		}
  1453	
  1454		paged = !!cork->gso_size;
  1455		mtu = cork->gso_size ? IP6_MAX_MTU : cork->fragsize;
  1456		orig_mtu = mtu;
  1457	
  1458		if (cork->tx_flags & SKBTX_ANY_SW_TSTAMP &&
  1459		    sk->sk_tsflags & SOF_TIMESTAMPING_OPT_ID)
  1460			tskey = sk->sk_tskey++;
  1461	
  1462		hh_len = LL_RESERVED_SPACE(rt->dst.dev);
  1463	
  1464		fragheaderlen = sizeof(struct ipv6hdr) + rt->rt6i_nfheader_len +
  1465				(opt ? opt->opt_nflen : 0);
  1466	
> 1467		if (mtu < fragheaderlen ||
  1468		    ((mtu - fragheaderlen) & ~7) + fragheaderlen < sizeof(struct frag_hdr))
  1469			goto emsgsize;
  1470	
  1471		maxfraglen = ((mtu - fragheaderlen) & ~7) + fragheaderlen -
  1472			     sizeof(struct frag_hdr);
  1473	
  1474		headersize = sizeof(struct ipv6hdr) +
  1475			     (opt ? opt->opt_flen + opt->opt_nflen : 0) +
  1476			     (dst_allfrag(&rt->dst) ?
  1477			      sizeof(struct frag_hdr) : 0) +
  1478			     rt->rt6i_nfheader_len;
  1479	
  1480		/* as per RFC 7112 section 5, the entire IPv6 Header Chain must fit
  1481		 * the first fragment
  1482		 */
  1483		if (headersize + transhdrlen > mtu)
  1484			goto emsgsize;
  1485	
  1486		if (cork->length + length > mtu - headersize && ipc6->dontfrag &&
  1487		    (sk->sk_protocol == IPPROTO_UDP ||
  1488		     sk->sk_protocol == IPPROTO_RAW)) {
  1489			ipv6_local_rxpmtu(sk, fl6, mtu - headersize +
  1490					sizeof(struct ipv6hdr));
  1491			goto emsgsize;
  1492		}
  1493	
  1494		if (ip6_sk_ignore_df(sk))
  1495			maxnonfragsize = sizeof(struct ipv6hdr) + IPV6_MAXPLEN;
  1496		else
  1497			maxnonfragsize = mtu;
  1498	
  1499		if (cork->length + length > maxnonfragsize - headersize) {
  1500	emsgsize:
  1501			pmtu = max_t(int, mtu - headersize + sizeof(struct ipv6hdr), 0);
  1502			ipv6_local_error(sk, EMSGSIZE, fl6, pmtu);
  1503			return -EMSGSIZE;
  1504		}
  1505	
  1506		/* CHECKSUM_PARTIAL only with no extension headers and when
  1507		 * we are not going to fragment
  1508		 */
  1509		if (transhdrlen && sk->sk_protocol == IPPROTO_UDP &&
  1510		    headersize == sizeof(struct ipv6hdr) &&
  1511		    length <= mtu - headersize &&
  1512		    (!(flags & MSG_MORE) || cork->gso_size) &&
  1513		    rt->dst.dev->features & (NETIF_F_IPV6_CSUM | NETIF_F_HW_CSUM))
  1514			csummode = CHECKSUM_PARTIAL;
  1515	
  1516		if (flags & MSG_ZEROCOPY && length && sock_flag(sk, SOCK_ZEROCOPY)) {
  1517			uarg = msg_zerocopy_realloc(sk, length, skb_zcopy(skb));
  1518			if (!uarg)
  1519				return -ENOBUFS;
  1520			extra_uref = !skb_zcopy(skb);	/* only ref on new uarg */
  1521			if (rt->dst.dev->features & NETIF_F_SG &&
  1522			    csummode == CHECKSUM_PARTIAL) {
  1523				paged = true;
  1524			} else {
  1525				uarg->zerocopy = 0;
  1526				skb_zcopy_set(skb, uarg, &extra_uref);
  1527			}
  1528		}
  1529	
  1530		/*
  1531		 * Let's try using as much space as possible.
  1532		 * Use MTU if total length of the message fits into the MTU.
  1533		 * Otherwise, we need to reserve fragment header and
  1534		 * fragment alignment (= 8-15 octects, in total).
  1535		 *
  1536		 * Note that we may need to "move" the data from the tail
  1537		 * of the buffer to the new fragment when we split
  1538		 * the message.
  1539		 *
  1540		 * FIXME: It may be fragmented into multiple chunks
  1541		 *        at once if non-fragmentable extension headers
  1542		 *        are too large.
  1543		 * --yoshfuji
  1544		 */
  1545	
  1546		cork->length += length;
  1547		if (!skb)
  1548			goto alloc_new_skb;
  1549	
  1550		while (length > 0) {
  1551			/* Check if the remaining data fits into current packet. */
  1552			copy = (cork->length <= mtu && !(cork->flags & IPCORK_ALLFRAG) ? mtu : maxfraglen) - skb->len;
  1553			if (copy < length)
  1554				copy = maxfraglen - skb->len;
  1555	
  1556			if (copy <= 0) {
  1557				char *data;
  1558				unsigned int datalen;
  1559				unsigned int fraglen;
  1560				unsigned int fraggap;
  1561				unsigned int alloclen;
  1562				unsigned int pagedlen;
  1563	alloc_new_skb:
  1564				/* There's no room in the current skb */
  1565				if (skb)
  1566					fraggap = skb->len - maxfraglen;
  1567				else
  1568					fraggap = 0;
  1569				/* update mtu and maxfraglen if necessary */
  1570				if (!skb || !skb_prev)
  1571					ip6_append_data_mtu(&mtu, &maxfraglen,
  1572							    fragheaderlen, skb, rt,
  1573							    orig_mtu);
  1574	
  1575				skb_prev = skb;
  1576	
  1577				/*
  1578				 * If remaining data exceeds the mtu,
  1579				 * we know we need more fragment(s).
  1580				 */
  1581				datalen = length + fraggap;
  1582	
  1583				if (datalen > (cork->length <= mtu && !(cork->flags & IPCORK_ALLFRAG) ? mtu : maxfraglen) - fragheaderlen)
  1584					datalen = maxfraglen - fragheaderlen - rt->dst.trailer_len;
  1585				fraglen = datalen + fragheaderlen;
  1586				pagedlen = 0;
  1587	
  1588				if ((flags & MSG_MORE) &&
  1589				    !(rt->dst.dev->features&NETIF_F_SG))
  1590					alloclen = mtu;
  1591				else if (!paged)
  1592					alloclen = fraglen;
  1593				else {
  1594					alloclen = min_t(int, fraglen, MAX_HEADER);
  1595					pagedlen = fraglen - alloclen;
  1596				}
  1597	
  1598				alloclen += dst_exthdrlen;
  1599	
  1600				if (datalen != length + fraggap) {
  1601					/*
  1602					 * this is not the last fragment, the trailer
  1603					 * space is regarded as data space.
  1604					 */
  1605					datalen += rt->dst.trailer_len;
  1606				}
  1607	
  1608				alloclen += rt->dst.trailer_len;
  1609				fraglen = datalen + fragheaderlen;
  1610	
  1611				/*
  1612				 * We just reserve space for fragment header.
  1613				 * Note: this may be overallocation if the message
  1614				 * (without MSG_MORE) fits into the MTU.
  1615				 */
  1616				alloclen += sizeof(struct frag_hdr);
  1617	
  1618				copy = datalen - transhdrlen - fraggap - pagedlen;
  1619				if (copy < 0) {
  1620					err = -EINVAL;
  1621					goto error;
  1622				}
  1623				if (transhdrlen) {
  1624					skb = sock_alloc_send_skb(sk,
  1625							alloclen + hh_len,
  1626							(flags & MSG_DONTWAIT), &err);
  1627				} else {
  1628					skb = NULL;
  1629					if (refcount_read(&sk->sk_wmem_alloc) + wmem_alloc_delta <=
  1630					    2 * sk->sk_sndbuf)
  1631						skb = alloc_skb(alloclen + hh_len,
  1632								sk->sk_allocation);
  1633					if (unlikely(!skb))
  1634						err = -ENOBUFS;
  1635				}
  1636				if (!skb)
  1637					goto error;
  1638				/*
  1639				 *	Fill in the control structures
  1640				 */
  1641				skb->protocol = htons(ETH_P_IPV6);
  1642				skb->ip_summed = csummode;
  1643				skb->csum = 0;
  1644				/* reserve for fragmentation and ipsec header */
  1645				skb_reserve(skb, hh_len + sizeof(struct frag_hdr) +
  1646					    dst_exthdrlen);
  1647	
  1648				/*
  1649				 *	Find where to start putting bytes
  1650				 */
  1651				data = skb_put(skb, fraglen - pagedlen);
  1652				skb_set_network_header(skb, exthdrlen);
  1653				data += fragheaderlen;
  1654				skb->transport_header = (skb->network_header +
  1655							 fragheaderlen);
  1656				if (fraggap) {
  1657					skb->csum = skb_copy_and_csum_bits(
  1658						skb_prev, maxfraglen,
  1659						data + transhdrlen, fraggap);
  1660					skb_prev->csum = csum_sub(skb_prev->csum,
  1661								  skb->csum);
  1662					data += fraggap;
  1663					pskb_trim_unique(skb_prev, maxfraglen);
  1664				}
  1665				if (copy > 0 &&
  1666				    getfrag(from, data + transhdrlen, offset,
  1667					    copy, fraggap, skb) < 0) {
  1668					err = -EFAULT;
  1669					kfree_skb(skb);
  1670					goto error;
  1671				}
  1672	
  1673				offset += copy;
  1674				length -= copy + transhdrlen;
  1675				transhdrlen = 0;
  1676				exthdrlen = 0;
  1677				dst_exthdrlen = 0;
  1678	
  1679				/* Only the initial fragment is time stamped */
  1680				skb_shinfo(skb)->tx_flags = cork->tx_flags;
  1681				cork->tx_flags = 0;
  1682				skb_shinfo(skb)->tskey = tskey;
  1683				tskey = 0;
  1684				skb_zcopy_set(skb, uarg, &extra_uref);
  1685	
  1686				if ((flags & MSG_CONFIRM) && !skb_prev)
  1687					skb_set_dst_pending_confirm(skb, 1);
  1688	
  1689				/*
  1690				 * Put the packet on the pending queue
  1691				 */
  1692				if (!skb->destructor) {
  1693					skb->destructor = sock_wfree;
  1694					skb->sk = sk;
  1695					wmem_alloc_delta += skb->truesize;
  1696				}
  1697				__skb_queue_tail(queue, skb);
  1698				continue;
  1699			}
  1700	
  1701			if (copy > length)
  1702				copy = length;
  1703	
  1704			if (!(rt->dst.dev->features&NETIF_F_SG) &&
  1705			    skb_tailroom(skb) >= copy) {
  1706				unsigned int off;
  1707	
  1708				off = skb->len;
  1709				if (getfrag(from, skb_put(skb, copy),
  1710							offset, copy, off, skb) < 0) {
  1711					__skb_trim(skb, off);
  1712					err = -EFAULT;
  1713					goto error;
  1714				}
  1715			} else if (!uarg || !uarg->zerocopy) {
  1716				int i = skb_shinfo(skb)->nr_frags;
  1717	
  1718				err = -ENOMEM;
  1719				if (!sk_page_frag_refill(sk, pfrag))
  1720					goto error;
  1721	
  1722				if (!skb_can_coalesce(skb, i, pfrag->page,
  1723						      pfrag->offset)) {
  1724					err = -EMSGSIZE;
  1725					if (i == MAX_SKB_FRAGS)
  1726						goto error;
  1727	
  1728					__skb_fill_page_desc(skb, i, pfrag->page,
  1729							     pfrag->offset, 0);
  1730					skb_shinfo(skb)->nr_frags = ++i;
  1731					get_page(pfrag->page);
  1732				}
  1733				copy = min_t(int, copy, pfrag->size - pfrag->offset);
  1734				if (getfrag(from,
  1735					    page_address(pfrag->page) + pfrag->offset,
  1736					    offset, copy, skb->len, skb) < 0)
  1737					goto error_efault;
  1738	
  1739				pfrag->offset += copy;
  1740				skb_frag_size_add(&skb_shinfo(skb)->frags[i - 1], copy);
  1741				skb->len += copy;
  1742				skb->data_len += copy;
  1743				skb->truesize += copy;
  1744				wmem_alloc_delta += copy;
  1745			} else {
  1746				err = skb_zerocopy_iter_dgram(skb, from, copy);
  1747				if (err < 0)
  1748					goto error;
  1749			}
  1750			offset += copy;
  1751			length -= copy;
  1752		}
  1753	
  1754		if (wmem_alloc_delta)
  1755			refcount_add(wmem_alloc_delta, &sk->sk_wmem_alloc);
  1756		return 0;
  1757	
  1758	error_efault:
  1759		err = -EFAULT;
  1760	error:
  1761		net_zcopy_put_abort(uarg, extra_uref);
  1762		cork->length -= length;
  1763		IP6_INC_STATS(sock_net(sk), rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
  1764		refcount_add(wmem_alloc_delta, &sk->sk_wmem_alloc);
  1765		return err;
  1766	}
  1767	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104300409.iAhWmxup-lkp%40intel.com.

--AhhlLboLdkugWU4S
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--AhhlLboLdkugWU4S--
