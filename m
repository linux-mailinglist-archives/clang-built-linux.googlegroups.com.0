Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRHV5TXAKGQEFV55AXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2B3108679
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 03:21:58 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id p1sf7324062otq.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 Nov 2019 18:21:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574648517; cv=pass;
        d=google.com; s=arc-20160816;
        b=z3OR9OcP92TaQRGpeMCuCDlEoI2c9g+yNoHyXnYwBPriINSZEEnPMzj2vWxrAFWkm0
         nt2P7NqhJrmnUpzJbtQIEbOtvPohEfy6wi+JsvklSCnuRIh1yVJG//F+gA9JcFPUaoDv
         xh/4vqjhssfA9/DCoFNJpkshV4gLDg97LOQrCCaLn67UApH774XLjGdqyLeDPazueif9
         yMaPo5U6m5JW5Pi83cyu2Xs152X4f14AkgB75vUOlFi7QQaU6YY6GS0JLe/2NHyIOBzr
         SWF4q1Cc8tZeauUslrHnWmqMU//6yyDantD5pKlBB0E0spX/djdO/auG2K39yTkDHc9l
         o7bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R1Rr6mCgI9epfadsAupa7NH2aewsxIvlYNIaOiBwQfw=;
        b=yN9vXPJwiaWo6dYOEYNOEsjsv21kBEHq9yMchOOte1b4DcHi2QpMhs7YzLfo1g+UVI
         bo9gZkq4vJdqO4YubogLD+k8iWolEvJH13hz36udlNXYpLJ01lH5RAsn64MG/tHJR+fG
         mSJnSg4j8aFuEPt9I36N7S4YPHThJb953vsQuAHuOhHnwcjMb9fu9/E6CsMn+RRyNwzk
         PRzxhUAKQDJuHbjpdLs2cG5qxvycwj+EyY8QxCu+L+QrBwpa5Kc9cqdzxuW6WvJbNOsl
         fPeeiHYg0QWKeJ2pXZyKGYsReK9j6Yw9zbHGyj8n7uiNwq8J2pCRswIRtOXO9mkffLYA
         8YYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R1Rr6mCgI9epfadsAupa7NH2aewsxIvlYNIaOiBwQfw=;
        b=HIK9FeM1PDPViHJoXzxrgBtiS9qrYhw1RLwG28CXiTn4wht3+5L7hkYQylOZZPY36m
         t6KxZJvGKjZ6jtosojHnCM48ZY/dg1/tTIHKju3GkAHWgvCpaI2Cr+UFPbB+boMWtgry
         nBeiPq/G+Wk5H5M8xBTy9le+I4l47+GIYx7GMpSTP3aRZ+v9QHGb5RPiDFkeoc42PLCg
         zDdE4pTMSxWBtFmLNI+dknTMhbuIf4nlVhAzRNQ7AoZ8IjJnHfUKerBqKQS+CNpMVCpA
         /VdSzv18InjyDnSnhVdPX73RpfQPrEPw6oMh7s+jr4SoUsSvMq6mhD4/Bc60CaN9kGrc
         mqbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R1Rr6mCgI9epfadsAupa7NH2aewsxIvlYNIaOiBwQfw=;
        b=bi24oZvUt7RBEneV7n2+ZPPts3REqBaFJgMpatVmGLrO7oVwtpvHcTtJ0nIJ/HhjTN
         Ip4LJ4JEMqc4YjC5qo7vajnRS8XNTKHbdXiLIQOUMah+KFE+nmppTDJwLiBQEtbnVciB
         kOBlgr9lyTyCU0ShTki14lnPdbU4DmhliEj+tXx5vQ7KMSe6BZmtlKUcA5jhFLVbSmn+
         69zrTH5efn+Na9FXWb9o+RMkS4+Jl23p7kufZa0cDaTJ3Ev1B8mcrwmfujXW7fu42+XE
         XEtk36309QX0Vn3l8QLvvmNA4fmv2R4rsUOY2HLilovJzlbUwzS6aqCLlDmFZMGXvTpt
         colw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWl/LtwcNSCfuVV+M9+PgnMcPnpvipnfM+pEPMomc30/ZCh3TT+
	Nw/jRBchKIwgh0BsVFdy61Q=
X-Google-Smtp-Source: APXvYqxoQMGfTFTyRM84uSR7wDrC/2mVR6L8QHk+/5Obg4rcMsJ1FOB9BaAoqUiMtEmtQAAl0Dmnag==
X-Received: by 2002:aca:474f:: with SMTP id u76mr5858753oia.12.1574648516686;
        Sun, 24 Nov 2019 18:21:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a0e:: with SMTP id n14ls2419762oij.13.gmail; Sun,
 24 Nov 2019 18:21:56 -0800 (PST)
X-Received: by 2002:aca:6006:: with SMTP id u6mr21685560oib.137.1574648516150;
        Sun, 24 Nov 2019 18:21:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574648516; cv=none;
        d=google.com; s=arc-20160816;
        b=A0NhOX0QJZ+BTcot31v3TgmHhnmi6fdJ8Si1Pm1rC1Qka6f2WYSSalYZ5bcbyq6k9Q
         mvKNs9zyKbZGdQFuph8KrF2S+2iz3d4b8/J+vvQOyHWEfEUBEaE73QFhqhVswodUc1qt
         7bihh2+vjDs0XlwlBl3298r8JKKsP4QNvYt2RwZ6tswfHiP2C9FYxtEftsjg/3mgfqdA
         Eu4CIBMjGm6rhQUP0oaxdbw4rsa30IEzASGh5raIXbLynHJynGLjSfSCUOdeHTUilGwH
         Rdo+hskg4C4769nMpY22xcegR1eT4xSZq6nVzpdhW6DsEwSrBpRcc/I8zJjiKYxCLuEc
         l1Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=CBslWS5GFZPNgZcxSFtbHmu6lmmwESRW24KKEeRqwUQ=;
        b=EFnb0NG6XdYt4/MhcWY8eKLX9O7vn+/IpnUWtoNa93ZCtslo/+596/YkRcTpw/KY8U
         ufUndDjFz7cfmLrpZNqsAiwgicBsosJifZSg5fgjltdvgUch+rkt+FDp3WOfxYlDmBFR
         7bWZB5zVPdFxns6OakOnvhcrQK3EbDXLb58hC157LYf9kFCaCrt20EXwKdKx5DXJzXm4
         iIeiZbGQBi6LdVhh/FvT4TYM8w3XZnhBgTNzdC01gHcPya2PNtNl3uT9bXOUMf+nnknO
         UnGaGQGJs/kk9Bqpls8vsgtkZ//aQjoqGEBHtLdoUw6ubUN6iZT8b9mbLLUpMedRNRnq
         sUAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id 5si164431otu.2.2019.11.24.18.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Nov 2019 18:21:55 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Nov 2019 18:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,239,1571727600"; 
   d="gz'50?scan'50,208,50";a="260273952"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 24 Nov 2019 18:21:52 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iZ40d-000CYD-MX; Mon, 25 Nov 2019 10:21:51 +0800
Date: Mon, 25 Nov 2019 10:20:52 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH V2 net-next 1/6] netlink: Convert extack msg to a
 formattable buffer
Message-ID: <201911250959.H5jxppLi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ttigrhjj7ths2g7z"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--ttigrhjj7ths2g7z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
In-Reply-To: <20191122224126.24847-2-saeedm@mellanox.com>
References: <20191122224126.24847-2-saeedm@mellanox.com>
TO: Saeed Mahameed <saeedm@mellanox.com>
CC: "David S. Miller" <davem@davemloft.net>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Jiri Pirko <jiri@mellanox.com>, Saeed Mahameed <saeedm@mellanox.com>

Hi Saeed,

I love your patch! Perhaps something to improve:

[auto build test WARNING on v5.4-rc8]
[cannot apply to net-next/master net/master linus/master next-20191122]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Saeed-Mahameed/mlxfw-Improve-error-reporting/20191125-025639
base:    af42d3466bdc8f39806b26f593604fdc54140bcb
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 844d97f650a2d716e63e3be903c32a82f2f817b1)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net//core/dev.c:8036:20: warning: address of array 'extack._msg' will always evaluate to 'true' [-Wpointer-bool-conversion]
           if (err && extack._msg)
                   ~~ ~~~~~~~^~~~
   1 warning generated.
--
>> net//netlink/af_netlink.c:2270:13: warning: address of array 'extack._msg' will always evaluate to 'true' [-Wpointer-bool-conversion]
           if (extack._msg && nlk->flags & NETLINK_F_EXT_ACK) {
               ~~~~~~~^~~~ ~~
>> net//netlink/af_netlink.c:2391:42: warning: address of array 'extack->_msg' will always evaluate to 'true' [-Wpointer-bool-conversion]
           if (nlk_has_extack && extack && extack->_msg)
                                        ~~ ~~~~~~~~^~~~
   net//netlink/af_netlink.c:2425:15: warning: address of array 'extack->_msg' will always evaluate to 'true' [-Wpointer-bool-conversion]
                   if (extack->_msg) {
                   ~~  ~~~~~~~~^~~~
   3 warnings generated.

vim +2391 net//netlink/af_netlink.c

a46621a3a8f245 Denys Vlasenko     2012-01-30  2181  
^1da177e4c3f41 Linus Torvalds     2005-04-16  2182  /*
^1da177e4c3f41 Linus Torvalds     2005-04-16  2183   * It looks a bit ugly.
^1da177e4c3f41 Linus Torvalds     2005-04-16  2184   * It would be better to create kernel thread.
^1da177e4c3f41 Linus Torvalds     2005-04-16  2185   */
^1da177e4c3f41 Linus Torvalds     2005-04-16  2186  
^1da177e4c3f41 Linus Torvalds     2005-04-16  2187  static int netlink_dump(struct sock *sk)
^1da177e4c3f41 Linus Torvalds     2005-04-16  2188  {
^1da177e4c3f41 Linus Torvalds     2005-04-16  2189  	struct netlink_sock *nlk = nlk_sk(sk);
4a19edb60d0203 David Ahern        2018-10-07  2190  	struct netlink_ext_ack extack = {};
^1da177e4c3f41 Linus Torvalds     2005-04-16  2191  	struct netlink_callback *cb;
c7ac8679bec939 Greg Rose          2011-06-10  2192  	struct sk_buff *skb = NULL;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2193  	struct nlmsghdr *nlh;
92964c79b357ef Herbert Xu         2016-05-16  2194  	struct module *module;
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2195  	int err = -ENOBUFS;
db65a3aaf29ecc Arad, Ronen        2015-10-15  2196  	int alloc_min_size;
c7ac8679bec939 Greg Rose          2011-06-10  2197  	int alloc_size;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2198  
af65bdfce98d79 Patrick McHardy    2007-04-20  2199  	mutex_lock(nlk->cb_mutex);
16b304f3404f8e Pravin B Shelar    2013-08-15  2200  	if (!nlk->cb_running) {
bf8b79e444a748 Thomas Graf        2006-08-04  2201  		err = -EINVAL;
bf8b79e444a748 Thomas Graf        2006-08-04  2202  		goto errout_skb;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2203  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  2204  
d1b4c689d4130b Florian Westphal   2016-02-18  2205  	if (atomic_read(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
f9c2288837ba07 Patrick McHardy    2013-04-17  2206  		goto errout_skb;
9063e21fb026c4 Eric Dumazet       2014-03-07  2207  
9063e21fb026c4 Eric Dumazet       2014-03-07  2208  	/* NLMSG_GOODSIZE is small to avoid high order allocations being
9063e21fb026c4 Eric Dumazet       2014-03-07  2209  	 * required, but it makes sense to _attempt_ a 16K bytes allocation
9063e21fb026c4 Eric Dumazet       2014-03-07  2210  	 * to reduce number of system calls on dump operations, if user
9063e21fb026c4 Eric Dumazet       2014-03-07  2211  	 * ever provided a big enough buffer.
9063e21fb026c4 Eric Dumazet       2014-03-07  2212  	 */
db65a3aaf29ecc Arad, Ronen        2015-10-15  2213  	cb = &nlk->cb;
db65a3aaf29ecc Arad, Ronen        2015-10-15  2214  	alloc_min_size = max_t(int, cb->min_dump_alloc, NLMSG_GOODSIZE);
db65a3aaf29ecc Arad, Ronen        2015-10-15  2215  
db65a3aaf29ecc Arad, Ronen        2015-10-15  2216  	if (alloc_min_size < nlk->max_recvmsg_len) {
db65a3aaf29ecc Arad, Ronen        2015-10-15  2217  		alloc_size = nlk->max_recvmsg_len;
d35c99ff77ecb2 Eric Dumazet       2016-10-06  2218  		skb = alloc_skb(alloc_size,
d35c99ff77ecb2 Eric Dumazet       2016-10-06  2219  				(GFP_KERNEL & ~__GFP_DIRECT_RECLAIM) |
c5b0db3263b925 Florian Westphal   2016-02-18  2220  				__GFP_NOWARN | __GFP_NORETRY);
9063e21fb026c4 Eric Dumazet       2014-03-07  2221  	}
db65a3aaf29ecc Arad, Ronen        2015-10-15  2222  	if (!skb) {
db65a3aaf29ecc Arad, Ronen        2015-10-15  2223  		alloc_size = alloc_min_size;
c5b0db3263b925 Florian Westphal   2016-02-18  2224  		skb = alloc_skb(alloc_size, GFP_KERNEL);
db65a3aaf29ecc Arad, Ronen        2015-10-15  2225  	}
c7ac8679bec939 Greg Rose          2011-06-10  2226  	if (!skb)
c63d6ea3060d9e Dan Carpenter      2011-06-15  2227  		goto errout_skb;
db65a3aaf29ecc Arad, Ronen        2015-10-15  2228  
db65a3aaf29ecc Arad, Ronen        2015-10-15  2229  	/* Trim skb to allocated size. User is expected to provide buffer as
db65a3aaf29ecc Arad, Ronen        2015-10-15  2230  	 * large as max(min_dump_alloc, 16KiB (mac_recvmsg_len capped at
db65a3aaf29ecc Arad, Ronen        2015-10-15  2231  	 * netlink_recvmsg())). dump will pack as many smaller messages as
db65a3aaf29ecc Arad, Ronen        2015-10-15  2232  	 * could fit within the allocated skb. skb is typically allocated
db65a3aaf29ecc Arad, Ronen        2015-10-15  2233  	 * with larger space than required (could be as much as near 2x the
db65a3aaf29ecc Arad, Ronen        2015-10-15  2234  	 * requested size with align to next power of 2 approach). Allowing
db65a3aaf29ecc Arad, Ronen        2015-10-15  2235  	 * dump to use the excess space makes it difficult for a user to have a
db65a3aaf29ecc Arad, Ronen        2015-10-15  2236  	 * reasonable static buffer based on the expected largest dump of a
db65a3aaf29ecc Arad, Ronen        2015-10-15  2237  	 * single netdev. The outcome is MSG_TRUNC error.
db65a3aaf29ecc Arad, Ronen        2015-10-15  2238  	 */
db65a3aaf29ecc Arad, Ronen        2015-10-15  2239  	skb_reserve(skb, skb_tailroom(skb) - alloc_size);
f9c2288837ba07 Patrick McHardy    2013-04-17  2240  	netlink_skb_set_owner_r(skb, sk);
c7ac8679bec939 Greg Rose          2011-06-10  2241  
4a19edb60d0203 David Ahern        2018-10-07  2242  	if (nlk->dump_done_errno > 0) {
4a19edb60d0203 David Ahern        2018-10-07  2243  		cb->extack = &extack;
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2244  		nlk->dump_done_errno = cb->dump(skb, cb);
4a19edb60d0203 David Ahern        2018-10-07  2245  		cb->extack = NULL;
4a19edb60d0203 David Ahern        2018-10-07  2246  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  2247  
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2248  	if (nlk->dump_done_errno > 0 ||
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2249  	    skb_tailroom(skb) < nlmsg_total_size(sizeof(nlk->dump_done_errno))) {
af65bdfce98d79 Patrick McHardy    2007-04-20  2250  		mutex_unlock(nlk->cb_mutex);
b1153f29ee07dc Stephen Hemminger  2008-03-21  2251  
b1153f29ee07dc Stephen Hemminger  2008-03-21  2252  		if (sk_filter(sk, skb))
b1153f29ee07dc Stephen Hemminger  2008-03-21  2253  			kfree_skb(skb);
4a7e7c2ad540e5 Eric Dumazet       2012-04-05  2254  		else
4a7e7c2ad540e5 Eric Dumazet       2012-04-05  2255  			__netlink_sendskb(sk, skb);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2256  		return 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2257  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  2258  
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2259  	nlh = nlmsg_put_answer(skb, cb, NLMSG_DONE,
22e6c58b8c2843 David Ahern        2018-10-15  2260  			       sizeof(nlk->dump_done_errno),
22e6c58b8c2843 David Ahern        2018-10-15  2261  			       NLM_F_MULTI | cb->answer_flags);
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2262  	if (WARN_ON(!nlh))
bf8b79e444a748 Thomas Graf        2006-08-04  2263  		goto errout_skb;
bf8b79e444a748 Thomas Graf        2006-08-04  2264  
670dc2833d1443 Johannes Berg      2011-06-20  2265  	nl_dump_check_consistent(cb, nlh);
670dc2833d1443 Johannes Berg      2011-06-20  2266  
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2267  	memcpy(nlmsg_data(nlh), &nlk->dump_done_errno,
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2268  	       sizeof(nlk->dump_done_errno));
bf8b79e444a748 Thomas Graf        2006-08-04  2269  
4a19edb60d0203 David Ahern        2018-10-07 @2270  	if (extack._msg && nlk->flags & NETLINK_F_EXT_ACK) {
4a19edb60d0203 David Ahern        2018-10-07  2271  		nlh->nlmsg_flags |= NLM_F_ACK_TLVS;
4a19edb60d0203 David Ahern        2018-10-07  2272  		if (!nla_put_string(skb, NLMSGERR_ATTR_MSG, extack._msg))
4a19edb60d0203 David Ahern        2018-10-07  2273  			nlmsg_end(skb, nlh);
4a19edb60d0203 David Ahern        2018-10-07  2274  	}
4a19edb60d0203 David Ahern        2018-10-07  2275  
b1153f29ee07dc Stephen Hemminger  2008-03-21  2276  	if (sk_filter(sk, skb))
b1153f29ee07dc Stephen Hemminger  2008-03-21  2277  		kfree_skb(skb);
4a7e7c2ad540e5 Eric Dumazet       2012-04-05  2278  	else
4a7e7c2ad540e5 Eric Dumazet       2012-04-05  2279  		__netlink_sendskb(sk, skb);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2280  
a8f74b228826ee Thomas Graf        2005-11-10  2281  	if (cb->done)
^1da177e4c3f41 Linus Torvalds     2005-04-16  2282  		cb->done(cb);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2283  
16b304f3404f8e Pravin B Shelar    2013-08-15  2284  	nlk->cb_running = false;
92964c79b357ef Herbert Xu         2016-05-16  2285  	module = cb->module;
92964c79b357ef Herbert Xu         2016-05-16  2286  	skb = cb->skb;
16b304f3404f8e Pravin B Shelar    2013-08-15  2287  	mutex_unlock(nlk->cb_mutex);
92964c79b357ef Herbert Xu         2016-05-16  2288  	module_put(module);
92964c79b357ef Herbert Xu         2016-05-16  2289  	consume_skb(skb);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2290  	return 0;
1797754ea7ee5e Thomas Graf        2005-06-18  2291  
bf8b79e444a748 Thomas Graf        2006-08-04  2292  errout_skb:
af65bdfce98d79 Patrick McHardy    2007-04-20  2293  	mutex_unlock(nlk->cb_mutex);
bf8b79e444a748 Thomas Graf        2006-08-04  2294  	kfree_skb(skb);
bf8b79e444a748 Thomas Graf        2006-08-04  2295  	return err;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2296  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  2297  
6dc878a8ca39e9 Gao feng           2012-10-04  2298  int __netlink_dump_start(struct sock *ssk, struct sk_buff *skb,
3a6c2b419b7768 Patrick McHardy    2009-08-25  2299  			 const struct nlmsghdr *nlh,
80d326fab534a5 Pablo Neira Ayuso  2012-02-24  2300  			 struct netlink_dump_control *control)
^1da177e4c3f41 Linus Torvalds     2005-04-16  2301  {
89d35528d17d25 David Ahern        2018-10-07  2302  	struct netlink_sock *nlk, *nlk2;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2303  	struct netlink_callback *cb;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2304  	struct sock *sk;
b44d211e166b4b Andrey Vagin       2011-02-21  2305  	int ret;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2306  
633547973ffc32 Reshetova, Elena   2017-06-30  2307  	refcount_inc(&skb->users);
f9c2288837ba07 Patrick McHardy    2013-04-17  2308  
15e473046cb6e5 Eric W. Biederman  2012-09-07  2309  	sk = netlink_lookup(sock_net(ssk), ssk->sk_protocol, NETLINK_CB(skb).portid);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2310  	if (sk == NULL) {
16b304f3404f8e Pravin B Shelar    2013-08-15  2311  		ret = -ECONNREFUSED;
16b304f3404f8e Pravin B Shelar    2013-08-15  2312  		goto error_free;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2313  	}
6dc878a8ca39e9 Gao feng           2012-10-04  2314  
16b304f3404f8e Pravin B Shelar    2013-08-15  2315  	nlk = nlk_sk(sk);
af65bdfce98d79 Patrick McHardy    2007-04-20  2316  	mutex_lock(nlk->cb_mutex);
6dc878a8ca39e9 Gao feng           2012-10-04  2317  	/* A dump is in progress... */
16b304f3404f8e Pravin B Shelar    2013-08-15  2318  	if (nlk->cb_running) {
6dc878a8ca39e9 Gao feng           2012-10-04  2319  		ret = -EBUSY;
16b304f3404f8e Pravin B Shelar    2013-08-15  2320  		goto error_unlock;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2321  	}
6dc878a8ca39e9 Gao feng           2012-10-04  2322  	/* add reference of module which cb->dump belongs to */
16b304f3404f8e Pravin B Shelar    2013-08-15  2323  	if (!try_module_get(control->module)) {
6dc878a8ca39e9 Gao feng           2012-10-04  2324  		ret = -EPROTONOSUPPORT;
16b304f3404f8e Pravin B Shelar    2013-08-15  2325  		goto error_unlock;
6dc878a8ca39e9 Gao feng           2012-10-04  2326  	}
6dc878a8ca39e9 Gao feng           2012-10-04  2327  
16b304f3404f8e Pravin B Shelar    2013-08-15  2328  	cb = &nlk->cb;
16b304f3404f8e Pravin B Shelar    2013-08-15  2329  	memset(cb, 0, sizeof(*cb));
16b304f3404f8e Pravin B Shelar    2013-08-15  2330  	cb->dump = control->dump;
16b304f3404f8e Pravin B Shelar    2013-08-15  2331  	cb->done = control->done;
16b304f3404f8e Pravin B Shelar    2013-08-15  2332  	cb->nlh = nlh;
16b304f3404f8e Pravin B Shelar    2013-08-15  2333  	cb->data = control->data;
16b304f3404f8e Pravin B Shelar    2013-08-15  2334  	cb->module = control->module;
16b304f3404f8e Pravin B Shelar    2013-08-15  2335  	cb->min_dump_alloc = control->min_dump_alloc;
16b304f3404f8e Pravin B Shelar    2013-08-15  2336  	cb->skb = skb;
16b304f3404f8e Pravin B Shelar    2013-08-15  2337  
89d35528d17d25 David Ahern        2018-10-07  2338  	nlk2 = nlk_sk(NETLINK_CB(skb).sk);
89d35528d17d25 David Ahern        2018-10-07  2339  	cb->strict_check = !!(nlk2->flags & NETLINK_F_STRICT_CHK);
89d35528d17d25 David Ahern        2018-10-07  2340  
3730cf4dd70b6a Florian Westphal   2018-07-24  2341  	if (control->start) {
3730cf4dd70b6a Florian Westphal   2018-07-24  2342  		ret = control->start(cb);
41c87425a1ac9b Jason A. Donenfeld 2017-10-09  2343  		if (ret)
b87b6194be631c Jason A. Donenfeld 2018-02-21  2344  			goto error_put;
41c87425a1ac9b Jason A. Donenfeld 2017-10-09  2345  	}
41c87425a1ac9b Jason A. Donenfeld 2017-10-09  2346  
16b304f3404f8e Pravin B Shelar    2013-08-15  2347  	nlk->cb_running = true;
0642840b8bb008 Jason A. Donenfeld 2017-11-09  2348  	nlk->dump_done_errno = INT_MAX;
16b304f3404f8e Pravin B Shelar    2013-08-15  2349  
af65bdfce98d79 Patrick McHardy    2007-04-20  2350  	mutex_unlock(nlk->cb_mutex);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2351  
b44d211e166b4b Andrey Vagin       2011-02-21  2352  	ret = netlink_dump(sk);
fef0035c0f3132 Jason A. Donenfeld 2017-09-28  2353  
^1da177e4c3f41 Linus Torvalds     2005-04-16  2354  	sock_put(sk);
5c58298c253625 Denis V. Lunev     2007-10-23  2355  
b44d211e166b4b Andrey Vagin       2011-02-21  2356  	if (ret)
b44d211e166b4b Andrey Vagin       2011-02-21  2357  		return ret;
b44d211e166b4b Andrey Vagin       2011-02-21  2358  
5c58298c253625 Denis V. Lunev     2007-10-23  2359  	/* We successfully started a dump, by returning -EINTR we
5c58298c253625 Denis V. Lunev     2007-10-23  2360  	 * signal not to send ACK even if it was requested.
5c58298c253625 Denis V. Lunev     2007-10-23  2361  	 */
5c58298c253625 Denis V. Lunev     2007-10-23  2362  	return -EINTR;
16b304f3404f8e Pravin B Shelar    2013-08-15  2363  
b87b6194be631c Jason A. Donenfeld 2018-02-21  2364  error_put:
b87b6194be631c Jason A. Donenfeld 2018-02-21  2365  	module_put(control->module);
16b304f3404f8e Pravin B Shelar    2013-08-15  2366  error_unlock:
16b304f3404f8e Pravin B Shelar    2013-08-15  2367  	sock_put(sk);
16b304f3404f8e Pravin B Shelar    2013-08-15  2368  	mutex_unlock(nlk->cb_mutex);
16b304f3404f8e Pravin B Shelar    2013-08-15  2369  error_free:
16b304f3404f8e Pravin B Shelar    2013-08-15  2370  	kfree_skb(skb);
16b304f3404f8e Pravin B Shelar    2013-08-15  2371  	return ret;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2372  }
6dc878a8ca39e9 Gao feng           2012-10-04  2373  EXPORT_SYMBOL(__netlink_dump_start);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2374  
2d4bc93368f5a0 Johannes Berg      2017-04-12  2375  void netlink_ack(struct sk_buff *in_skb, struct nlmsghdr *nlh, int err,
2d4bc93368f5a0 Johannes Berg      2017-04-12  2376  		 const struct netlink_ext_ack *extack)
^1da177e4c3f41 Linus Torvalds     2005-04-16  2377  {
^1da177e4c3f41 Linus Torvalds     2005-04-16  2378  	struct sk_buff *skb;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2379  	struct nlmsghdr *rep;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2380  	struct nlmsgerr *errmsg;
339bf98ffc6a8d Thomas Graf        2006-11-10  2381  	size_t payload = sizeof(*errmsg);
2d4bc93368f5a0 Johannes Berg      2017-04-12  2382  	size_t tlvlen = 0;
0a6a3a23ea6efd Christophe Ricard  2015-08-28  2383  	struct netlink_sock *nlk = nlk_sk(NETLINK_CB(in_skb).sk);
2d4bc93368f5a0 Johannes Berg      2017-04-12  2384  	unsigned int flags = 0;
48044eb490be71 Johannes Berg      2017-10-16  2385  	bool nlk_has_extack = nlk->flags & NETLINK_F_EXT_ACK;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2386  
0a6a3a23ea6efd Christophe Ricard  2015-08-28  2387  	/* Error messages get the original request appened, unless the user
2d4bc93368f5a0 Johannes Berg      2017-04-12  2388  	 * requests to cap the error message, and get extra error data if
2d4bc93368f5a0 Johannes Berg      2017-04-12  2389  	 * requested.
0a6a3a23ea6efd Christophe Ricard  2015-08-28  2390  	 */
4f6265d485ea0a David Ahern        2017-10-27 @2391  	if (nlk_has_extack && extack && extack->_msg)
4f6265d485ea0a David Ahern        2017-10-27  2392  		tlvlen += nla_total_size(strlen(extack->_msg) + 1);
4f6265d485ea0a David Ahern        2017-10-27  2393  
2d4bc93368f5a0 Johannes Berg      2017-04-12  2394  	if (err) {
2d4bc93368f5a0 Johannes Berg      2017-04-12  2395  		if (!(nlk->flags & NETLINK_F_CAP_ACK))
339bf98ffc6a8d Thomas Graf        2006-11-10  2396  			payload += nlmsg_len(nlh);
2d4bc93368f5a0 Johannes Berg      2017-04-12  2397  		else
2d4bc93368f5a0 Johannes Berg      2017-04-12  2398  			flags |= NLM_F_CAPPED;
4f6265d485ea0a David Ahern        2017-10-27  2399  		if (nlk_has_extack && extack && extack->bad_attr)
2d4bc93368f5a0 Johannes Berg      2017-04-12  2400  			tlvlen += nla_total_size(sizeof(u32));
2d4bc93368f5a0 Johannes Berg      2017-04-12  2401  	} else {
2d4bc93368f5a0 Johannes Berg      2017-04-12  2402  		flags |= NLM_F_CAPPED;
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2403  
48044eb490be71 Johannes Berg      2017-10-16  2404  		if (nlk_has_extack && extack && extack->cookie_len)
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2405  			tlvlen += nla_total_size(extack->cookie_len);
2d4bc93368f5a0 Johannes Berg      2017-04-12  2406  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  2407  
2d4bc93368f5a0 Johannes Berg      2017-04-12  2408  	if (tlvlen)
2d4bc93368f5a0 Johannes Berg      2017-04-12  2409  		flags |= NLM_F_ACK_TLVS;
2d4bc93368f5a0 Johannes Berg      2017-04-12  2410  
2d4bc93368f5a0 Johannes Berg      2017-04-12  2411  	skb = nlmsg_new(payload + tlvlen, GFP_KERNEL);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2412  	if (!skb) {
a2084f5650624e Johannes Berg      2017-10-16  2413  		NETLINK_CB(in_skb).sk->sk_err = ENOBUFS;
a2084f5650624e Johannes Berg      2017-10-16  2414  		NETLINK_CB(in_skb).sk->sk_error_report(NETLINK_CB(in_skb).sk);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2415  		return;
^1da177e4c3f41 Linus Torvalds     2005-04-16  2416  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  2417  
15e473046cb6e5 Eric W. Biederman  2012-09-07  2418  	rep = __nlmsg_put(skb, NETLINK_CB(in_skb).portid, nlh->nlmsg_seq,
2d4bc93368f5a0 Johannes Berg      2017-04-12  2419  			  NLMSG_ERROR, payload, flags);
bf8b79e444a748 Thomas Graf        2006-08-04  2420  	errmsg = nlmsg_data(rep);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2421  	errmsg->error = err;
0a6a3a23ea6efd Christophe Ricard  2015-08-28  2422  	memcpy(&errmsg->msg, nlh, payload > sizeof(*errmsg) ? nlh->nlmsg_len : sizeof(*nlh));
2d4bc93368f5a0 Johannes Berg      2017-04-12  2423  
48044eb490be71 Johannes Berg      2017-10-16  2424  	if (nlk_has_extack && extack) {
4f6265d485ea0a David Ahern        2017-10-27  2425  		if (extack->_msg) {
2d4bc93368f5a0 Johannes Berg      2017-04-12  2426  			WARN_ON(nla_put_string(skb, NLMSGERR_ATTR_MSG,
2d4bc93368f5a0 Johannes Berg      2017-04-12  2427  					       extack->_msg));
4f6265d485ea0a David Ahern        2017-10-27  2428  		}
4f6265d485ea0a David Ahern        2017-10-27  2429  		if (err) {
2d4bc93368f5a0 Johannes Berg      2017-04-12  2430  			if (extack->bad_attr &&
2d4bc93368f5a0 Johannes Berg      2017-04-12  2431  			    !WARN_ON((u8 *)extack->bad_attr < in_skb->data ||
2d4bc93368f5a0 Johannes Berg      2017-04-12  2432  				     (u8 *)extack->bad_attr >= in_skb->data +
2d4bc93368f5a0 Johannes Berg      2017-04-12  2433  							       in_skb->len))
2d4bc93368f5a0 Johannes Berg      2017-04-12  2434  				WARN_ON(nla_put_u32(skb, NLMSGERR_ATTR_OFFS,
2d4bc93368f5a0 Johannes Berg      2017-04-12  2435  						    (u8 *)extack->bad_attr -
2d4bc93368f5a0 Johannes Berg      2017-04-12  2436  						    in_skb->data));
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2437  		} else {
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2438  			if (extack->cookie_len)
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2439  				WARN_ON(nla_put(skb, NLMSGERR_ATTR_COOKIE,
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2440  						extack->cookie_len,
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2441  						extack->cookie));
ba0dc5f6e0ba5a Johannes Berg      2017-04-12  2442  		}
2d4bc93368f5a0 Johannes Berg      2017-04-12  2443  	}
2d4bc93368f5a0 Johannes Berg      2017-04-12  2444  
2d4bc93368f5a0 Johannes Berg      2017-04-12  2445  	nlmsg_end(skb, rep);
2d4bc93368f5a0 Johannes Berg      2017-04-12  2446  
15e473046cb6e5 Eric W. Biederman  2012-09-07  2447  	netlink_unicast(in_skb->sk, skb, NETLINK_CB(in_skb).portid, MSG_DONTWAIT);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2448  }
6ac552fdc6e96b Patrick McHardy    2007-12-04  2449  EXPORT_SYMBOL(netlink_ack);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2450  

:::::: The code at line 2391 was first introduced by commit
:::::: 4f6265d485ea0a2507692ded8ed47b323f49587c netlink: Allow ext_ack to carry non-error messages

:::::: TO: David Ahern <dsahern@gmail.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911250959.H5jxppLi%25lkp%40intel.com.

--ttigrhjj7ths2g7z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
flY6KBt5RuV/AV3ifRoLFgMA

--ttigrhjj7ths2g7z--
