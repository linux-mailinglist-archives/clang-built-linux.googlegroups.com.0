Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQMZ7CBAMGQEE5QTD5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDC634AC91
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 17:33:07 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id da16sf6110346qvb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 09:33:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616776386; cv=pass;
        d=google.com; s=arc-20160816;
        b=cdqocntP+W8dldljOkWQZkjqkxpf3FCy3H0LkZoQJqjZ9PvqUINNXoWjd5Pt6BbM1R
         ityNJA9mxe/EVEE+tK4b92YujnWl+uSUBWjZYuV51fiOY+i9c6TLwV4CgP3nAUW+01ES
         /yfObELkwiYlD7K14ABb0oZaARFTc4FQd/Zz7V2teBTM7FXz0h4D+bOXI1z9jvjWMUqI
         JIQ5G8fZInjwqxw9BDpzBGDO+SLxEKyDwAC0+lI1kDRyYdqPCQNuzvojJzqcGq/Z6eEN
         2dFHYSNkjfmGo7pIRpDp/gr+vzkEOqlwsgDsgFASq1C6TSjS8HNbsQNS9bsgsC/yFnWp
         h+Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=BYgIAitlbeepdejNEKfx1i3sG+TqG55GIUT1IZw8rZI=;
        b=pt6J7w925A/LhvUeQd7mFlY+02RaNSRYYI4hMV9x8EbPaO00dM17r0ysd6mXOZ1lxu
         yUKprNVUtVGpXDBzza9NIyqsVvPp0k1aEXKTh0A3kXS8EevYy73y+W+fhk/nEoiaaVEA
         W7G33hkEyZEOFv4vKaJkyrd94HzUzslzVV1u+R+WALfGxoIMDYXaORsHiEGJyIEYNbqb
         reztaCfuIqah/C9eGDFZ/qZFajVZeejVEI6da8/B6pyzfr7UYXshuuc0p2kkSKKdhGVD
         GK3ttom4//YDNE434/isHIN6YArKAz2JLzRmJJ6v9izSQJNClUCbqem5+3+CWh2/xXIT
         l4kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BYgIAitlbeepdejNEKfx1i3sG+TqG55GIUT1IZw8rZI=;
        b=eYsSAz70KS5UbGoV10V/vlsUl3Cr7HSi+H0EX4vL0StiuOV/nKsvd9McgOpVyVn8+k
         H/v/VI0M7wYpXGxwE4VFqR05xHArSUChvQHnbOQOev5A0A6w5GkcZB2yML+5Yf5uYLZY
         UjOapkARQYSDT/qITon8Q8Vpbvw/9PhWnu5+zcAiYL87Y5E0GLU3k98IffTXF4xq525N
         Fg7N/Yv+1YvzndWLNRYnFxWHPk5zPcdCy8u7hrRwLalZpUayYPeuAIdcXdhBXUJYbJZX
         pZKdsXXAryk2BQZg0JudENO9s5DkS6rHVdhRl2xNvs6LQ5qFRRCUA1yWsj5FYWHZDklQ
         OPGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BYgIAitlbeepdejNEKfx1i3sG+TqG55GIUT1IZw8rZI=;
        b=gXgrz/DpwEgzqio1GctxJ+tTe4UiUKHQVCrXVQoeeIPX06VMWhg7hHRUrojsArTejA
         vt035CUy3FF2GR+kAn66ewWcEtdEtZBs26R3nJJ+SqMjx2JegncJI8ivfj4nhTz1U4Bq
         ZU91nEOoa0scygprdkwHIvNbbjimvgVwngIDTItnZ5Qhr7uvqsWTDQojOg5PUpSsi4ML
         e9+zGfR2IQUB4Zgk95lKBIHZ/Z3UGtGYVgmXyVs8jF6PrzvuKO5dwc4NcGvrO8jTL6h/
         w2yIOdmtRZBK2npt2jv8F+SqAU8SoiJQ3BPy3JEIj2yaUOWXH8w5f1mIrfdZMQa9CmF9
         2tnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JRvb0gJmFWEMEiQ3/RXJqXhyrFj0aLcbqzuNBkXdp5u4Gz9ql
	XC4mhgzmGwamnv2oKBYw8oo=
X-Google-Smtp-Source: ABdhPJzT0HrG9u5B3WWnj7VWgAFAkURd+h22g5cF+O0Dbw52hOtQ4rypxudHwjCaclMgBOtuIcbQVw==
X-Received: by 2002:ac8:708:: with SMTP id g8mr12837771qth.316.1616776385835;
        Fri, 26 Mar 2021 09:33:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:71d9:: with SMTP id i25ls3472817qtp.8.gmail; Fri, 26 Mar
 2021 09:33:05 -0700 (PDT)
X-Received: by 2002:ac8:7f04:: with SMTP id f4mr13254066qtk.141.1616776385088;
        Fri, 26 Mar 2021 09:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616776385; cv=none;
        d=google.com; s=arc-20160816;
        b=kwdJ0KkMYn3x72yB00xIV8r9IUsBJxL6n1pLUW8A2h/Y7Qdmx+GejAUhK5m2VDp3r7
         4GPcThRFlmLaYI/pbt06PaCiDermo2zDJ9wP62xKLmq4tZFTHqZNtws1w9v+hU2aok1C
         B4czFbtx163GS/GLg7Gb5tjFjg+WJAFm5rwaB9RYOXvhDFCQBgaInWccuqGAD6mn73nh
         A9kbEb6WjDF+gigT2RoS2sOJOMNE1mMHlwIPcnObnC6g+iKHzXgr/XYHEwSgQso1Si4H
         MyWY+mjCPhKSmmoAvDoeUhvExqnJAE0LiEnSoB6/5tFcCVoTdJ2/wEBG59gIj1N7/82N
         94sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=zccFY7KZsBcL6WJFpP2ipFAlkGe7psUcaM3Snal9fFQ=;
        b=s/qpvXWaJ5dL7eG5aWYuTZu8WIGW+6I0u6dPVSDAAEMAuzglK3S9aglOFQb1ToIzS8
         jtAGAGzUCcQ+7HKUjqL70MJsm9Wq2FaKJFeLEyydLMaF6OnXZFifgmBiUdogwXU4Ml0j
         mgGZ2b67h4ER/00d1jyqSysXQ57rxjBG72/VkSZcni3uFd8pxGEJb4jVgvqRShXt8gX4
         6Yifo6/Fmy1Fj7BKatQKyn3EFjSvr0wS26jff6d6brzaVii9Vcp0rQNRMXT5fErlzX2e
         +H3p4Ss/7v5SfETI2cs8h7/EnpvB0mHTbqKL6aiwkHMdJkkcVbws3LJb9sAml6N49DIY
         XMBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id r24si602036qtp.1.2021.03.26.09.33.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Mar 2021 09:33:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: Uhsh7igP1klrUjJ+rMpBBNtEA94YlXRmHfJ8horULk81Yfag6M0nFbg+uPJFJ58qyuD/uUsVYw
 81V8joKO9tYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="178725878"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; 
   d="gz'50?scan'50,208,50";a="178725878"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2021 09:33:02 -0700
IronPort-SDR: pIJi/GANpg0SGDA08Lct44kkhlsWd0KjzTeRK+u/2fP2u3BdEeyw2Q5P+AZirD3CgV3G1Mcyas
 CBJLoucwTQRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; 
   d="gz'50?scan'50,208,50";a="526093642"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 26 Mar 2021 09:32:59 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lPpOM-0002sS-RC; Fri, 26 Mar 2021 16:32:58 +0000
Date: Sat, 27 Mar 2021 00:32:33 +0800
From: kernel test robot <lkp@intel.com>
To: Joel Stanley <joel@jms.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>
Subject: [linux-stable-rc:linux-4.19.y 5303/9999]
 drivers/net/ethernet/sun/niu.c:7466:5: warning: variable 'class' is used
 uninitialized whenever switch default is taken
Message-ID: <202103270018.TvMm6rOc-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0F1p//8PRICkK4MW"
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


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable=
-rc.git linux-4.19.y
head:   e864f43593ccf9180c61738abdf1c1dde091367d
commit: b92e5db0f492026778cb31dfc479e50f33f75bca [5303/9999] powerpc/32: Av=
oid unsupported flags with clang
config: powerpc-randconfig-r001-20210326 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5=
969bd52c8a48586f134ff8f02ccbb295b3)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stab=
le-rc.git/commit/?id=3Db92e5db0f492026778cb31dfc479e50f33f75bca
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux=
/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout b92e5db0f492026778cb31dfc479e50f33f75bca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/filter.h:24:
   include/net/sch_generic.h:387:33: warning: comparison of integers of dif=
ferent signs: 'unsigned int' and 'int' [-Wsign-compare]
           BUILD_BUG_ON(sizeof(qcb->data) < sz);
                        ~~~~~~~~~~~~~~~~~ ^ ~~
   include/linux/build_bug.h:69:19: note: expanded from macro 'BUILD_BUG_ON=
'
           BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
                            ^~~~~~~~~
   include/linux/build_bug.h:45:58: note: expanded from macro 'BUILD_BUG_ON=
_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                                            ^~~~
   include/linux/compiler.h:348:22: note: expanded from macro 'compiletime_=
assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __LIN=
E__)
                               ^~~~~~~~~
   include/linux/compiler.h:336:23: note: expanded from macro '_compiletime=
_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:328:9: note: expanded from macro '__compiletime=
_assert'
                   if (!(condition))                                       =
\
                         ^~~~~~~~~
   In file included from drivers/net/ethernet/sun/niu.c:26:
   In file included from include/linux/ipv6.h:87:
   In file included from include/linux/tcp.h:23:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   include/net/sch_generic.h:493:13: warning: comparison of integers of dif=
ferent signs: 'int' and 'const unsigned int' [-Wsign-compare]
           return ntx < dev->real_num_tx_queues ?
                  ~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~
   include/net/sch_generic.h:537:15: warning: comparison of integers of dif=
ferent signs: 'u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
           return (hwtc < netdev_get_num_tc(dev)) ? hwtc : -EINVAL;
                   ~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/sun/niu.c:26:
   In file included from include/linux/ipv6.h:87:
   In file included from include/linux/tcp.h:23:
   In file included from include/net/sock.h:64:
   include/linux/filter.h:1011:16: warning: comparison of integers of diffe=
rent signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-comp=
are]
                   if (first->k =3D=3D SKF_AD_OFF + SKF_AD_ALU_XOR_X)
                       ~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/sun/niu.c:26:
   In file included from include/linux/ipv6.h:87:
   In file included from include/linux/tcp.h:23:
   include/net/sock.h:2246:43: warning: comparison of integers of different=
 signs: 'unsigned int' and 'int' [-Wsign-compare]
           return refcount_read(&sk->sk_wmem_alloc) < (sk->sk_sndbuf >> 1);
                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/sun/niu.c:26:
   In file included from include/linux/ipv6.h:87:
   In file included from include/linux/tcp.h:24:
   include/net/inet_connection_sock.h:288:38: warning: comparison of intege=
rs of different signs: 'int' and 'const u32' (aka 'const unsigned int') [-W=
sign-compare]
           return inet_csk_reqsk_queue_len(sk) >=3D sk->sk_max_ack_backlog;
                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:3502:15: warning: comparison of integers =
of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           while (index < (rp->rbr_table_size - blocks_per_page)) {
                  ~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:3537:16: warning: comparison of integers =
of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for (i =3D 0; i < rp->rbr_table_size; i++)
                       ~ ^ ~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:3619:26: warning: comparison of integers =
of different signs: 'u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
                        (niu_tx_avail(rp) > NIU_TX_WAKEUP_THRESH(rp)))) {
                        ~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   drivers/net/ethernet/sun/niu.c:3622:25: warning: comparison of integers =
of different signs: 'u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
                       (niu_tx_avail(rp) > NIU_TX_WAKEUP_THRESH(rp)))
                        ~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:3652:37: warning: comparison of integers =
of different signs: 'unsigned long long' and 'const int' [-Wsign-compare]
           if (unlikely((misc & RXMISC_COUNT) > limit)) {
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   drivers/net/ethernet/sun/niu.c:3667:42: warning: comparison of integers =
of different signs: 'unsigned long long' and 'const int' [-Wsign-compare]
           if (unlikely((wred & RED_DIS_CNT_COUNT) > limit)) {
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   drivers/net/ethernet/sun/niu.c:6390:27: warning: passing 'char [14]' to =
parameter of type 'const u8 *' (aka 'const unsigned char *') converts betwe=
en pointers to integer types where one is of the unique plain 'char' type a=
nd the other is not [-Wpointer-sign]
           if (!is_valid_ether_addr(addr->sa_data))
                                    ^~~~~~~~~~~~~
   include/linux/etherdevice.h:194:50: note: passing argument to parameter =
'addr' here
   static inline bool is_valid_ether_addr(const u8 *addr)
                                                    ^
   drivers/net/ethernet/sun/niu.c:6719:24: warning: comparison of integers =
of different signs: 'u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
                   if (niu_tx_avail(rp) > NIU_TX_WAKEUP_THRESH(rp))
                       ~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:7176:36: warning: passing '__u32 *' (aka =
'unsigned int *') to parameter of type 'int *' converts between pointers to=
 integer types with different sign [-Wpointer-sign]
           ret =3D niu_class_to_ethflow(class, &fsp->flow_type);
                                             ^~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:6934:49: note: passing argument to parame=
ter 'flow_type' here
   static int niu_class_to_ethflow(u64 class, int *flow_type)
                                                   ^
   drivers/net/ethernet/sun/niu.c:7247:25: warning: comparison of integers =
of different signs: 'int' and '__u64' (aka 'unsigned long long') [-Wsign-co=
mpare]
           for (cnt =3D 0, i =3D 0; i < nfc->data; i++) {
                                ~ ^ ~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:7252:11: warning: comparison of integers =
of different signs: 'int' and '__u32' (aka 'unsigned int') [-Wsign-compare]
                   if (cnt =3D=3D nfc->rule_cnt) {
                       ~~~ ^  ~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:7539:24: warning: comparison of integers =
of different signs: '__u64' (aka 'unsigned long long') and 'int' [-Wsign-co=
mpare]
                   if (fsp->ring_cookie >=3D np->num_rx_rings) {
                       ~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/sun/niu.c:7466:5: warning: variable 'class' is used=
 uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
                                   default:
                                   ^~~~~~~
   drivers/net/ethernet/sun/niu.c:7469:38: note: uninitialized use occurs h=
ere
                                   ret =3D tcam_user_ip_class_set(np, class=
, 0,
                                                                    ^~~~~
   drivers/net/ethernet/sun/niu.c:7422:11: note: initialize the variable 'c=
lass' to silence this warning
           u64 class;
                    ^
                     =3D 0
   drivers/net/ethernet/sun/niu.c:7914:26: warning: comparison of integers =
of different signs: 'u64' (aka 'unsigned long long') and 'int' [-Wsign-comp=
are]
                   if (nr64(LDG_NUM(ldn)) !=3D ldg) {
                       ~~~~~~~~~~~~~~~~~~ ^  ~~~
   drivers/net/ethernet/sun/niu.c:7928:21: warning: comparison of integers =
of different signs: 'int' and 'unsigned long long' [-Wsign-compare]
           if (res < 0 || res > LDG_TIMER_RES_VAL)
                          ~~~ ^ ~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:8112:13: warning: assigning to 'u8 *' (ak=
a 'unsigned char *') from 'char [32]' converts between pointers to integer =
types where one is of the unique plain 'char' type and the other is not [-W=
pointer-sign]
                           prop_buf =3D np->vpd.model;
                                    ^ ~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:8116:13: warning: assigning to 'u8 *' (ak=
a 'unsigned char *') from 'char [16]' converts between pointers to integer =
types where one is of the unique plain 'char' type and the other is not [-W=
pointer-sign]
                           prop_buf =3D np->vpd.board_model;
                                    ^ ~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:8120:13: warning: assigning to 'u8 *' (ak=
a 'unsigned char *') from 'char [64]' converts between pointers to integer =
types where one is of the unique plain 'char' type and the other is not [-W=
pointer-sign]
                           prop_buf =3D np->vpd.version;
                                    ^ ~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:8132:13: warning: assigning to 'u8 *' (ak=
a 'unsigned char *') from 'char [8]' converts between pointers to integer t=
ypes where one is of the unique plain 'char' type and the other is not [-Wp=
ointer-sign]
                           prop_buf =3D np->vpd.phy_type;
                                    ^ ~~~~~~~~~~~~~~~~
   drivers/net/ethernet/sun/niu.c:8474:16: warning: comparison of integers =
of different signs: 'int' and 'u64' (aka 'unsigned long long') [-Wsign-comp=
are]
           for (i =3D 0; i < val; i +=3D 4) {
                       ~ ^ ~~~
   drivers/net/ethernet/sun/niu.c:8490:16: warning: comparison of integers =
of different signs: 'int' and 'u64' (aka 'unsigned long long') [-Wsign-comp=
are]
           for (i =3D 0; i < val; i +=3D 4) {
                       ~ ^ ~~~
   49 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `3'
   clang-13: error: assembler command failed with exit code 1 (use -v to se=
e invocation)
--
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:23:
   In file included from include/linux/skbuff.h:34:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:8:
   include/linux/mm.h:560:14: warning: comparison of integers of different =
signs: 'unsigned long' and 'long' [-Wsign-compare]
           return addr >=3D VMALLOC_START && addr < VMALLOC_END;
                  ~~~~ ^  ~~~~~~~~~~~~~
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:62:
   In file included from include/linux/netdevice.h:41:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:23:
   include/linux/skbuff.h:2566:24: warning: comparison of integers of diffe=
rent signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (skb_tailroom(skb) < diff) {
               ~~~~~~~~~~~~~~~~~ ^ ~~~~
   include/linux/skbuff.h:3072:14: warning: comparison of integers of diffe=
rent signs: 'int' and 'unsigned int' [-Wsign-compare]
                          off =3D=3D frag->page_offset + skb_frag_size(frag=
);
                          ~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/skbuff.h:3368:49: warning: comparison of integers of diffe=
rent signs: 'size_t' (aka 'unsigned int') and 'int' [-Wsign-compare]
           return copy_to_iter(data, len, &msg->msg_iter) =3D=3D len ? 0 : =
-EFAULT;
                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:62:
   In file included from include/linux/netdevice.h:41:
   In file included from include/linux/ethtool.h:18:
   include/uapi/linux/ethtool.h:1581:35: warning: comparison of integers of=
 different signs: '__u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
           return speed <=3D INT_MAX || speed =3D=3D SPEED_UNKNOWN;
                                      ~~~~~ ^  ~~~~~~~~~~~~~
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:62:
   In file included from include/linux/netdevice.h:46:
   In file included from include/net/netprio_cgroup.h:17:
   In file included from include/linux/cgroup.h:28:
   include/linux/cgroup-defs.h:470:16: warning: field 'cgrp' with variable =
sized type 'struct cgroup' not at the end of a struct or class is a GNU ext=
ension [-Wgnu-variable-sized-type-not-at-end]
           struct cgroup cgrp;
                         ^
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:62:
   In file included from include/linux/netdevice.h:47:
   include/net/xdp.h:110:37: warning: comparison of integers of different s=
igns: 'int' and 'unsigned int' [-Wsign-compare]
           if (unlikely((headroom - metasize) < sizeof(*xdp_frame)))
                         ~~~~~~~~~~~~~~~~~~~  ^ ~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:62:
   include/linux/netdevice.h:2703:34: warning: comparison of integers of di=
fferent signs: 'int' and 'unsigned int' [-Wsign-compare]
                   skb_checksum_start_offset(skb) <
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
   include/linux/netdevice.h:3477:15: warning: comparison of integers of di=
fferent signs: 'int' and 'unsigned int' [-Wsign-compare]
           BUG_ON(index >=3D dev->num_rx_queues);
                  ~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/bug.h:76:27: note: expanded from macro 'BUG_ON'
           if (__builtin_constant_p(x)) {                          \
                                    ^
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:62:
   include/linux/netdevice.h:3477:15: warning: comparison of integers of di=
fferent signs: 'int' and 'unsigned int' [-Wsign-compare]
           BUG_ON(index >=3D dev->num_rx_queues);
                  ~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/bug.h:77:7: note: expanded from macro 'BUG_ON'
                   if (x)                                          \
                       ^
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:62:
   include/linux/netdevice.h:3788:37: warning: comparison of integers of di=
fferent signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (debug_value < 0 || debug_value >=3D (sizeof(u32) * 8))
                                  ~~~~~~~~~~~ ^   ~~~~~~~~~~~~~~~
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:70:
   In file included from drivers/net/wireless/intersil/orinoco/orinoco.h:13=
:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   include/linux/memcontrol.h:587:22: warning: comparison of integers of di=
fferent signs: 'long' and 'unsigned int' [-Wsign-compare]
           if (unlikely(abs(x) > MEMCG_CHARGE_BATCH)) {
               ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:70:
   In file included from drivers/net/wireless/intersil/orinoco/orinoco.h:13=
:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   include/linux/memcontrol.h:673:22: warning: comparison of integers of di=
fferent signs: 'long' and 'unsigned int' [-Wsign-compare]
           if (unlikely(abs(x) > MEMCG_CHARGE_BATCH)) {
               ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from drivers/net/wireless/intersil/orinoco/orinoco_usb.=
c:70:
   In file included from drivers/net/wireless/intersil/orinoco/orinoco.h:17=
:
   In file included from include/net/cfg80211.h:24:
   include/linux/ieee80211.h:3124:15: warning: comparison of integers of di=
fferent signs: 'unsigned int' and 'int' [-Wsign-compare]
               skb->len > (skb_network_offset(skb) + 2)) {
               ~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/intersil/orinoco/orinoco_usb.c:945:15: warning: com=
parison of integers of different signs: 'unsigned int' and 'int' [-Wsign-co=
mpare]
                   if (exp_len !=3D ctx->buf_length) {
                       ~~~~~~~ ^  ~~~~~~~~~~~~~~~
   drivers/net/wireless/intersil/orinoco/orinoco_usb.c:1062:37: warning: co=
mparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-c=
ompare]
                   if ((sizeof(*ans) + offset + len) > actual_length) {
                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~  ^ ~~~~~~~~~~~~~
   drivers/net/wireless/intersil/orinoco/orinoco_usb.c:1073:41: warning: co=
mparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-c=
ompare]
                   if ((sizeof(*ans) + offset + len - 4) > actual_length) {
                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ^ ~~~~~~~~~~~~~
>> drivers/net/wireless/intersil/orinoco/orinoco_usb.c:77:17: warning: unus=
ed variable 'encaps_hdr' [-Wunused-const-variable]
   static const u8 encaps_hdr[] =3D {0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00};
                   ^
   23 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `3'
   clang-13: error: assembler command failed with exit code 1 (use -v to se=
e invocation)
--
   In file included from kernel/module_signing.c:12:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:247:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:14:
   In file included from include/linux/byteorder/big_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integer=
s of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compa=
re]
           for (i =3D 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integer=
s of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compa=
re]
           for (i =3D 0; i < len; i++)
                       ~ ^ ~~~
   In file included from kernel/module_signing.c:17:
   In file included from kernel/module-internal.h:12:
   In file included from include/linux/elf.h:5:
   In file included from arch/powerpc/include/asm/elf.h:12:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:38:
   In file included from include/linux/atomic.h:7:
   In file included from arch/powerpc/include/asm/atomic.h:11:
   In file included from arch/powerpc/include/asm/cmpxchg.h:537:
   In file included from include/asm-generic/cmpxchg-local.h:6:
   In file included from include/linux/irqflags.h:16:
   In file included from arch/powerpc/include/asm/irqflags.h:12:
   In file included from arch/powerpc/include/asm/hw_irq.h:12:
   In file included from arch/powerpc/include/asm/ptrace.h:159:
   include/linux/thread_info.h:141:29: warning: comparison of integers of d=
ifferent signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >=3D 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from kernel/module_signing.c:17:
   In file included from kernel/module-internal.h:13:
>> arch/powerpc/include/asm/module.h:98:37: warning: declaration of 'struct=
 module' will not be visible outside of this function [-Wvisibility]
   int module_trampoline_target(struct module *mod, unsigned long trampolin=
e,
                                       ^
   arch/powerpc/include/asm/module.h:104:49: warning: declaration of 'struc=
t module' will not be visible outside of this function [-Wvisibility]
   static inline int module_finalize_ftrace(struct module *mod, const Elf_S=
hdr *sechdrs)
                                                   ^
   5 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `3'
   clang-13: error: assembler command failed with exit code 1 (use -v to se=
e invocation)


vim +/class +7466 drivers/net/ethernet/sun/niu.c

2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7412 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7413  static i=
nt niu_add_ethtool_tcam_entry(struct niu *np,
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7414  				    =
  struct ethtool_rxnfc *nfc)
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7415  {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7416  	struct =
niu_parent *parent =3D np->parent;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7417  	struct =
niu_tcam_entry *tp;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7418  	struct =
ethtool_rx_flow_spec *fsp =3D &nfc->fs;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7419  	struct =
niu_rdc_tables *rdc_table =3D &parent->rdc_group_cfg[np->port];
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7420  	int l2_=
rdc_table =3D rdc_table->first_table_num;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7421  	u16 idx=
;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7422  	u64 cla=
ss;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7423  	unsigne=
d long flags;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7424  	int err=
, ret;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7425 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7426  	ret =3D=
 0;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7427 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7428  	idx =3D=
 nfc->fs.location;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7429  	if (idx=
 >=3D tcam_get_size(np))
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7430  		return=
 -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7431 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7432  	if (fsp=
->flow_type =3D=3D IP_USER_FLOW) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7433  		int i;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7434  		int ad=
d_usr_cls =3D 0;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7435  		struct=
 ethtool_usrip4_spec *uspec =3D &fsp->h_u.usr_ip4_spec;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7436  		struct=
 ethtool_usrip4_spec *umask =3D &fsp->m_u.usr_ip4_spec;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7437 =20
e0de7c93b950b9 drivers/net/niu.c Ben Hutchings   2010-09-14  7438  		if (us=
pec->ip_ver !=3D ETH_RX_NFC_IP4)
e0de7c93b950b9 drivers/net/niu.c Ben Hutchings   2010-09-14  7439  			retur=
n -EINVAL;
e0de7c93b950b9 drivers/net/niu.c Ben Hutchings   2010-09-14  7440 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7441  		niu_lo=
ck_parent(np, flags);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7442 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7443  		for (i=
 =3D 0; i < NIU_L3_PROG_CLS; i++) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7444  			if (p=
arent->l3_cls[i]) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7445  				if (=
uspec->proto =3D=3D parent->l3_cls_pid[i]) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7446  					cla=
ss =3D parent->l3_cls[i];
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7447  					par=
ent->l3_cls_refcnt[i]++;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7448  					add=
_usr_cls =3D 1;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7449  					bre=
ak;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7450  				}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7451  			} els=
e {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7452  				/* P=
rogram new user IP class */
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7453  				swit=
ch (i) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7454  				case=
 0:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7455  					cla=
ss =3D CLASS_CODE_USER_PROG1;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7456  					bre=
ak;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7457  				case=
 1:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7458  					cla=
ss =3D CLASS_CODE_USER_PROG2;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7459  					bre=
ak;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7460  				case=
 2:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7461  					cla=
ss =3D CLASS_CODE_USER_PROG3;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7462  					bre=
ak;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7463  				case=
 3:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7464  					cla=
ss =3D CLASS_CODE_USER_PROG4;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7465  					bre=
ak;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20 @7466  				defa=
ult:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7467  					bre=
ak;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7468  				}
e0de7c93b950b9 drivers/net/niu.c Ben Hutchings   2010-09-14  7469  				ret =
=3D tcam_user_ip_class_set(np, class, 0,
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7470  							 =
    uspec->proto,
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7471  							 =
    uspec->tos,
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7472  							 =
    umask->tos);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7473  				if (=
ret)
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7474  					got=
o out;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7475 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7476  				ret =
=3D tcam_user_ip_class_enable(np, class, 1);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7477  				if (=
ret)
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7478  					got=
o out;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7479  				pare=
nt->l3_cls[i] =3D class;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7480  				pare=
nt->l3_cls_pid[i] =3D uspec->proto;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7481  				pare=
nt->l3_cls_refcnt[i]++;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7482  				add_=
usr_cls =3D 1;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7483  				brea=
k;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7484  			}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7485  		}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7486  		if (!a=
dd_usr_cls) {
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7487  			netde=
v_info(np->dev, "niu%d: %s(): Could not find/insert class for pid %d\n",
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7488  				    =
parent->index, __func__, uspec->proto);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7489  			ret =
=3D -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7490  			goto =
out;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7491  		}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7492  		niu_un=
lock_parent(np, flags);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7493  	} else =
{
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7494  		if (!n=
iu_ethflow_to_class(fsp->flow_type, &class)) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7495  			retur=
n -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7496  		}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7497  	}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7498 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7499  	niu_loc=
k_parent(np, flags);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7500 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7501  	idx =3D=
 tcam_get_index(np, idx);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7502  	tp =3D =
&parent->tcam[idx];
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7503 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7504  	memset(=
tp, 0, sizeof(*tp));
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7505 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7506  	/* fill=
 in the tcam key and mask */
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7507  	switch =
(fsp->flow_type) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7508  	case TC=
P_V4_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7509  	case UD=
P_V4_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7510  	case SC=
TP_V4_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7511  	case AH=
_V4_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7512  	case ES=
P_V4_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7513  		niu_ge=
t_tcamkey_from_ip4fs(fsp, tp, l2_rdc_table, class);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7514  		break;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7515  	case TC=
P_V6_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7516  	case UD=
P_V6_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7517  	case SC=
TP_V6_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7518  	case AH=
_V6_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7519  	case ES=
P_V6_FLOW:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7520  		/* Not=
 yet implemented */
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7521  		netdev=
_info(np->dev, "niu%d: In %s(): flow %d for IPv6 not implemented\n",
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7522  			    p=
arent->index, __func__, fsp->flow_type);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7523  		ret =
=3D -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7524  		goto o=
ut;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7525  	case IP=
_USER_FLOW:
e0de7c93b950b9 drivers/net/niu.c Ben Hutchings   2010-09-14  7526  		niu_ge=
t_tcamkey_from_ip4fs(fsp, tp, l2_rdc_table, class);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7527  		break;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7528  	default=
:
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7529  		netdev=
_info(np->dev, "niu%d: In %s(): Unknown flow type %d\n",
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7530  			    p=
arent->index, __func__, fsp->flow_type);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7531  		ret =
=3D -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7532  		goto o=
ut;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7533  	}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7534 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7535  	/* fill=
 in the assoc data */
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7536  	if (fsp=
->ring_cookie =3D=3D RX_CLS_FLOW_DISC) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7537  		tp->as=
soc_data =3D TCAM_ASSOCDATA_DISC;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7538  	} else =
{
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7539  		if (fs=
p->ring_cookie >=3D np->num_rx_rings) {
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7540  			netde=
v_info(np->dev, "niu%d: In %s(): Invalid RX ring %lld\n",
f10a1f2e7e93a3 drivers/net/niu.c Joe Perches     2010-02-14  7541  				    =
parent->index, __func__,
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7542  				    =
(long long)fsp->ring_cookie);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7543  			ret =
=3D -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7544  			goto =
out;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7545  		}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7546  		tp->as=
soc_data =3D (TCAM_ASSOCDATA_TRES_USE_OFFSET |
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7547  				  (f=
sp->ring_cookie <<
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7548  				   T=
CAM_ASSOCDATA_OFFSET_SHIFT));
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7549  	}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7550 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7551  	err =3D=
 tcam_write(np, idx, tp->key, tp->key_mask);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7552  	if (err=
) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7553  		ret =
=3D -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7554  		goto o=
ut;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7555  	}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7556  	err =3D=
 tcam_assoc_write(np, idx, tp->assoc_data);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7557  	if (err=
) {
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7558  		ret =
=3D -EINVAL;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7559  		goto o=
ut;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7560  	}
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7561 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7562  	/* vali=
date the entry */
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7563  	tp->val=
id =3D 1;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7564  	np->cla=
s.tcam_valid_entries++;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7565  out:
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7566  	niu_unl=
ock_parent(np, flags);
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7567 =20
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7568  	return =
ret;
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7569  }
2d96cf8cdfd625 drivers/net/niu.c Santwona Behera 2009-02-20  7570 =20

:::::: The code at line 7466 was first introduced by commit
:::::: 2d96cf8cdfd625da51e5d237d564cd75d3147547 niu: Add TCAM classificatio=
n configuration

:::::: TO: Santwona Behera <santwona.behera@sun.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202103270018.TvMm6rOc-lkp%40intel.com.

--0F1p//8PRICkK4MW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICIIEXmAAAy5jb25maWcAjDxbd+M2zu/9FT7Tl92HdpzrZPY7eaAoymYtiYoo2cm88Hgc
Z5qvua3ttDP/fgHqBkqU2z17dmMABEEQxI3U/PzTzxP2fnh9Xh8eN+unpx+Tb9uX7W592N5P
Hh6ftv83CdUkVcVEhLL4FYjjx5f37x/fXv/a7t42k/NfTz7/evVpstjuXrZPE/768vD47R2G
P76+/PTzT/DfnwH4/Aacdv+ZbJ7WL98mf253e0BPTs5+nf46nfzr2+PhPx8/wv8+P+52r7uP
T09/Ppu33ev/bzeHycP55+n64vPl56/3F6ebq/X51cXV5cPJ2fnDw9XD9HSz+fr19PPF17N/
w1RcpZGcmRnnZilyLVV6PW2AAJPa8Jils+sfLRB/trQnZ1P4DxkwZ9ownZiZKhQZpFJd5CUv
VK47qMxvzErliw4SlDIOC5kII24LFsTCaJUXgLdKmVktP03228P7Wyd7kKuFSI1KjU4ywj2V
hRHp0rB8ZmKZyOL67BRV24iUZBImKIQuJo/7ycvrARk3o2PFWdys8sOHbhxFGFYWyjPYLsNo
Fhc4tAbO2VKYhchTEZvZF0kk9QJDEbEyLsxc6SJlibj+8K+X15ftv4koesUyOnuHuNNLmXEv
LlNa3prkphSl8IjOc6W1SUSi8jvDioLxeSdTqUUsg+43K8HAu592hSzn8woBUoCq4h65H2pW
rKAzVcAiF6LZfDCWyf796/7H/rB9JoYrUpFLbm1Jz9WqY9HHmFgsRezH8zlVPUJClTCZujAt
ExcQqZyL0BTzXLBQ0lOiM5ZrgUT+CUMRlLNID5HW+JcDJTVoDua3gHWkhWcsT5Q2ZRayotVa
8fgMnsOnuELyBZwZAaohW5gqM/+CZyNRuPjWagCYwRwqlNxjNNUoGcaix4nYhpzNTS60XSB1
AhnscZIVQJ8KOmMDX6q4TAuW3/mtuaKiuMp/ZuXHYr3/Y3IABUzWL/eT/WF92E/Wm83r+8vh
8eVbTxMwwDDOFcxVbWQ7xVLmRQ9tUlbIpfBKhLtrN7Ej99IFOgTpFRdw3IC08BIVTC90wQo9
WGDOy4n27Wp6ZwBHFwA/wZ3C9vn8nK6I6fAeCEUwDqhyb4FMTzk5D4vqj+tnootFu03KZzex
QmYRHE8ZFdcnnzqbkGmxAAcaiT7NWeuoZrkqM2pIbCaMVbnIOyh4Mj7r/TQL+D+qoSBe1Px8
HtEijOZzEXaMIiZz48XwSJuApeFKhsXc2YeCDhifKZMhWVYNzMOEDYARWP8XutoaHoql5M5p
qhFgxn1b680t8sgzzrorn/UovmhpWEEkxJAFThDMm7IrC21S7WEEkSUHjOMAZOinTUXRIwV9
8kWmwGjQxUCS4YtsVus2Ylt5ia++07BloQBfwsF1huMYszztkLmI2V3fikDzNvHIvfvLjcrA
N8gvAkOHVbbKE5b29qpHpuEPDzcbbeEchhB7wO5DYXfACEx10D+p1FkIL2jMBW8LcsIg3ScC
V8FFhsMh/DJOPHqQOaYx6lISSFskbihhPRNFAo7EDAJbpeIBOJrDCaLhpEpbhsEDHUX/t0kT
Sb0VOf8ijkBXOV0Vgzgdlc7kZSFuez/BHAmXTDlrkLOUxRExHCsnBdiQTQF6XvmgZkMkyZZZ
uJQgVK0UslwYErA8l1S1CyS5S/QQYhyNtlC7YDReDGGO/WZRM6c3GOGW2pw08hm3zfsw+++E
NMgqYHxBhIOs6MaxoiQQYeh1h9bA8YyYNuGxoa+um7Lt7uF197x+2Wwn4s/tC0R3BnGeY3yH
nKeLiS6LJqonFaiJGPQcxGVQeTznVEK9wAooNhb+lDtmgc/pAC/KBclAQzmEqjrBH+VmvXss
Nfg0OAsq8XKnZHOWh5AJuv6rEEnlF6BkkZHkPccAgTmSsZO62lNvnanrjjN+eT5IQ7Ld62a7
37/uIMV8e3vdHarsqx1iAqUWZ9qcnfrTN6C4uvj+fRzp4mrM+fQ7Fe383M9AnE6nntFtupyR
nOb8+3eiFZg5SUrIScGgSVUCNT3YwVzk1nCgNCJ+ZBlqdUbCA2aMAQqRhpKlDm9KdnYa0BIK
ZiV+AI9UkjCI/inmWxA8E3ZL8iQfARQtJyd+gsaE/46RQ+fwS3PMb/X1xclpa2NQIi6szRhd
ZllVrlNTwhFRzGZ6iMdiBqLrEJGvNNjtLZ/PWAgxO56pXBZz4i+bPZyvBBQWRU9n6IYgXzJa
kP3C+ONsA/HOLI/vhsGEpXVBpkrIPK+m/cnTZc6ITFWCoRIoXCNAgO/CQ0R9daVmdle7Nm6i
kLtWV4bBzJxcXlxM+7Uwjh2u3wlu1dplIPIq/mPQ1DKgYdSS6FJnYJYeNIoQ8ryubwbwAR+7
bbpyljYBB4ev+BhZCd4moBkHsoVgV4/PxWwUJxnX16d+XHgMtwRcu3HZrGoq2U6AOwbOP2yI
xKwGUsg21mRP6wNGGZ97k1qfe91TzW6W2aBO/RmCFU+83opxBp7C78iy8+mFFwPFe6SUP4gs
ZMxKwXwZGoNsgDiaFYvTsqCy3mJQuLW1L+Q+rbUp5ia2Lb0K9KXX2eKip9+xdZJRQ4P1zDLn
J824ZJAAxIg8//TJB704ISaWJVfTkysyegGxfVZCHUATNpZBvs1yhitqNhdc9CTabf/7vn3Z
/JjsN+unqi/QxXzw4RBeb3ztBXn/tJ3c7x7/3O7api3wQ3CfBTZGPKpREZSEnGod9Iwgf0pg
NWiNaiBOnRG9vmELeU+nx7YLJGS+7OqLOZlOez2e04up38y+mLPpKAr4+LZ+/uX6pOsNV95x
nmO3hcQ7VswhByzjJi9p+boYm6F7Ldmhmq9MmVpFJeDyaSpkPZFI7fGvu5twdrJ46D8hdsB5
WNRUf8chh7+WfQcL4a4AkpqaWHAcixmLm8BglnAKBXFP4LrOF9aPEkdYdRcH/Q/be8Qwbr6o
VChI/XIM1J3hJSEcYYEJmE9x4haCsykYZKKQ53Vd6jo2kKhWB4tBryFLIP8UInNcXGILbAv3
53QJKHchMPD7Svss6XEbNB5a5OoG1LgCJYoI0lqJEf5oRi04pjWeOaVmNllgtsKzhyd435PD
VNOhmo3ThWkbuhUHN3ZJyPtywQuMKg4GYwDPSN6AAE2jZqRjEwe9zACDE58rSStylzUQVF1r
7QK74rrTLCgMY3JQav82wbBES98OAeamlPlC9/gd2SorRFH66iNEsWLAS6rlCDEkaX3ijGnp
rR+r811riYbMBgz7wOVYXG2J9Ny9SqkSAxi4eX057F6fnra7OhDs20iwvt9iXQpUW0K291ZJ
sBdQTEDpBucZb3tGdRgV8L8nI34YCXB0Y5V+/Yk6sjeWHm73j99eVuudlRWKZ/hDtzK2KxUv
92+vjy99ubG4sb7Mq579X4+Hze9+Lbm2sYL/yoLPC+EXm0Pacf3c/U64ZP3fUExgH0y6jUEY
2LPxWrxfNuvd/eTr7vH+29YR6A48iS9nysLLT6efu1nl1en08ymVAifDawxs2EtyenPwLCGk
gs89gAml7uqLs2kfXcea/NYUt8Zm0AOe1nGJdCZT4cEJpzro2JYJNoFARNKqb7B8nrDUs/wG
n6AghodiCaOrm4j12+M9JCW62u5uj3sjCy0vPt0OtcAzbW5vfbLgiMsrr7XTwWDwp0ckzm8t
yVkjL7v/E3tG9/1rZCgasBMb2uarchvMsVphPMdO7FhAJSTX0+/2WpzcjNvLCRVFWJEiA1pl
thgYt+mNq6+GwaTy/kCK8ozM5newxawjmPYICtuPbVZE8o0GTpmSNliqpS4w3B7TRo/MTn/q
TI+JeMli+WWQ+S2tG0uF3xFWWM2133FX6CVeTBzBV7fcVWvGYE7G7wY+onltsN5tfn88bDeH
9932l/vt2/YFfPthmB+oqpcmOgu3VX4L7jauLYNbqX4rk8zELBA+XVo2XZZTpqC1WYp3GZxX
pSrNPUst7AVdIVMT4AsBMnEuin4JbplLBWksy7Ab2L/OX3gHjHKqyfExRtS7PrB4pzPfvRew
pHOlSGXQJFcaNIMFVJ0He7J1yIQLGd1BDlXmgwmxqWAY5K+2T1WrrM71HLqqL01Btm/sNiU6
uL2wqniGJX120i2q29SB0JUmqgtOnmTY6OrRrARbYJdeYLeecUy5+lXGioE1SEwN7VuD5rGK
R5I6+TVgh04/qn6vY5eBey/wgU5zE0+5eO7A+yY0vPbuUSQqrKXJBMdWNKkCVVjGYDVou3hD
g7cTHv7iVhZoWfYtBsrsMQY73PbL0e14dOG0S4/1Wknbk8eY++NNxgpiPBml8JmPnA2KphrO
uNttt5NU4QUcc+3A89WtZx26AOMvXJqumOkjj93HYCAwhaorlC6Cishu1KCyrpwfV8tfvq73
ECb/qJoLb7vXh8cn5+EEEtVCeFZgsbXzc6+i/gZj70QLc25I7wfML8FrOOpw7EWWTpDBtGdJ
TiPBgup6GZNEXxuhoilTxPftsh7qQdZHzjedznn7SMzfuajp5Gwwn5Z1ee/FOAojcD1nJz5B
KtTp6bk3HvaoLi7/AdXZ1T/hdXHiy8oIjb1b+bD/fX3yYcAD3RX2Yf2vYnKZwHaAtwjNAu80
R+fR9gkZ7Lpa0Bv/APsP5BoiCFlEsQubX8ARuXHbiM0Nf6BnXmD1OM7zIKAQs1wWdx45Gxrs
LoQu06aDY9177uJWQdGfCUBG33gV1qCTm1EJsFlO36NRqE84bRNlFreN8vXu8IgZ0aT48bal
t6+QfUrbnGsSbOIruMrTjoKuqIcyvIS6xN8d75MKodXtP6KU3Gc6fSoWUsX0sbYJBZHzmPA5
FHpyRCR52xH6msQ6GlFQAvHl6FAGib90Bjdng3E/z0SHSvt5dqVQmBydVc+kn3kZw7k9vlhd
pj55FwwCgg8hopG58AHs5dXfrIScr1GJ0NSTG7fRVsMwJ6KvNmpw/VCrerMKVfHm9+39+5NT
EUtVNcNTpeir0xqK73lip6BvMDxynk40L4SbAR7xG5KRkSjAkVH1vNcfNg//bRvEsMRxSQly
cReA03ruryGISJrNdEpucspUpnZDdAa1C4bbQYbXXiWyAhI8bvKEPPjtOtRW+eL7dvN+WH99
2tpH+RP7WORAtiGQaZQUmDESi4qj+nkQqXhzYXP8Vi+YY85h7RDf/e62Yqx5LjPfA6kan4BX
ILk4TFNXElb8ZPv8uvsxSdYv62/bZ2/FWV8zEA0AwOCrLryggGPeL0vwaY6rVQdcDx0Ma0qx
GY2hqcLa352/vhaRWsX9B2hZDLl7VthpoJDQ1+e9pzV85ASCm8t7zALIW2lyZKsTyHCDkr6V
su83oDB0X0tpIm6znzbtTyR6+jC/Pp9+vmwXKcBkM3zJBLXPggzlUJilvRcg3E2w4eeRnniL
jXwhCLEMyl193T7R+JJhl6Y9T1+CkrREv5xFUHKQ3zYtVk6Hr7n8hsVmY4+Sm3FYXvks1xbi
tmOFFfvCKfKqNw9LW0M6LXqRo/YGz5i7W88yM4FIsfPoPq4aVDKFqIpHRjLgVLT3uen28Nfr
7g+oUXxXoWBiC+FbFPidW8cL3ZpQMvoiKtadauFH9762ht1GeeL+wo6eWy5YKL5k6YHsQ8ln
B2QvByNsnrhwXQaQbsSS3/V4VGekJ5DVuNQFJDk9hMzwxFHbwCe1C+HLT3XCOyngR6Wazq1X
6u/eRGTV80/OvF/VALpts+aqdJoREvsTASb3ojIWB2W54gW4NWIXZznVFMx9c91ioRgLlPbF
yJaEx0xrGTqsszTr/zbhnGe9ORCM3tB/6VkT5Cz3RVvUvcykw7KCzTDwiKT0lfcVhSnK1Km+
UVP1appvONqUCJJoqIMkVV7FZVnIbkcRVIZDzgiPVDkAdFLQTUEkm/cAQmdDSHtSHJvqbJQC
rfXWgrmYgR5a8gRjGnirVLtPzPoUxxkEomfniMaj4NmagmfY/57RgqerXRtk4L2ia9G8DCQ5
eS18BQXpSqnQg5rDXz6wHoHfBTHzirYUMzZSeTck6fI4Hm+c8aAeW2KcjcyequPM7wSbH6eQ
MSSSSvpCa0sTcr9eeEhdf7tdAfHS7bd5fRW2+Xboj68NPu+tsYduZr3+8PuPr0/rD+4Kk/BC
S5/hwUm+JOcCftVOFj+TilyX1eDAkiO/ui1N9SECBhETMv/TLzwKl2ZkRyokHHOfuBY3OOg4
bSKzS/eEX44f/ssRqO/4j5P8DQvrAJ77C+vwVpn1ZxtsJJW1S3OcrYVo6XKuYebS+xGJRaf2
6hjT9eIuo5UiIgdLQSC67gHET3ok1KJkZYA9tT64ijoDG0tobG5ZjttbJhOdmKWvc1jNLmaX
Jl4Nw16DgySS9yIpfmKMVyD99HJAk83v7B0GZB/JaIoMxNU1ir/0y4bILjSH3Hqc6uUF/D3h
XIb7wRfgNHFAMoNkp6MfYVGqMycV6MD9xwANsohybpxveh1MM6qTuH5qOF9v/nDuApphw3k0
L5xcE38bfOasgt946v0m0VI0rtTmLHZf0fM5XZ4xOmyF+1+BjY3AO68xSYYSjGH7Lfg8HAmj
Yx9nQz3ve1pw6moQfx8pHi16SSzBAuSQhSjmvjUXJEubQc5KaurcCdlBLsPZ6KdpNkPSzE0Y
EfDcA9QX8ANCcBY4B0/GMRjY3Js3ShGz9PPZ9MyPTOhTf4qAYCFjWphQ5A0nC1rCBOZqenpy
44OZ2ZLqjiASBxEKXhVRzu9BeRTHjl+Dnz4nyQoWLyivpYFyPxYuWGZh6IRc+GmgAqedn9tT
YukxywKnlzBXqbeWvozVKmMppa1BPoMd0KRzX1IshRCouYtzJ062UJPG9R/2m0SJb3+Z786N
DMEHIoLmAx2qW0Nj9oy30xObaL77tc7x5n37vgWP+LFu+DrOsaY2PLgZsIC0PfAAI+00bxp4
lktf4tigbZz1zJGLcAjUkWdiHd345i3EjU+hLTqI3PNSrVb7WEH8PMJp5hU11Bi8h1PA/4vE
Q57nQ9rkBpU3hOtFYBEDLnyuFmJIfxN5FIzf38ZDcHRTY4bKYQsnW+pGHFHOfO5RcybFcGL7
sH2olyryeSsWFPNozdKs5SiR9srfYCE5ipSJmHbcXX0XUcl4/eHt4fHh1Tys94cP9WPap/V+
//jwuGnyI7IqHve6GQAYPm5sEAWXaSjG2ilIYb1u75wjPFr5+JVnPh/c8tLLbCgcQi+H4Cim
/3ZJA+W9T9XbFWaRR8YYryL7RoWYBP9xlbHPem0fxlKMopEHG/knKho8aPaI5eLGkz3nJOEM
U41f7Sv8R3VIjx9SIWbvjKniO2jzp++dOKVy63OCCZl/PYQk9QUjgk+4Y8mUef+fd+njqFAK
Mphl9QDaM9+yilT00+Ua0mvFVveRHf0YoukMUvuJZbpo2HW3wVk8/s8vzMkzR933tnYt+ETY
Acdn+A0mtiMqlGNCKfd+blD/2xJI4Xpvghj0bW36dIvXQXfG/VI/uKE/ssj8Jvu3B5PDdn8Y
RO9sUcyEqzOIMiqD4j+V/2Ps2prbxpH1X9HTqZmq3TMidaNO1TxAICkh5i0EJVF5YXkSz45r
bScVO7sz//6gAVJsgA15HhyF3Q0QAHFpNLo/wIEHarcDy2sWk+s0x5HA6qGr2XnMFAg7ntuE
/XkooHqaxQ//efz8MItdJ2uQPHGstGhKOyHJbEIyvtyIwFnGwQUOjBk2Fg5w0yyBbOnaqfV7
kv8HVnzqhPrfwnlNNxHVJLV4sQacwHCjIi4nOwrw+WYzdzIEEgToTPLSjOFNngxFKuA3jd3U
eee0gM2Vt7gVeHZCKEZK29P0V/rAPEF1mlum2r/ymSB2XA4WBijEUe5mj4CH8Pv95wenv0Sw
O1ACdj5JLgmijIEYOl2TkLw7MfCMNXS7VfiOdbo8ZKV0sxDJjv6+1of46sM4ywdvR0/tLFXT
Qu3beqfdHSdBFpo6YfnghXWtLJxV1UfLPnYW4LArCQqE2yGqenJQSDQJUJIckqwuEyGB5lWe
7mFrEljaid4NBRrZDmyTVOv1yaDxkqyEE+4zqwvVf+Q0b+0HpyqicU7g4C7ZxztCDLx3B5dU
EIETRTsaZ3xrrw+SZ9+jlLOIXjm8jtkUNODKPlutbZFhh2gSjcuc2d0FRFEGFpxHandFHW9p
AhrGTwxQCs/WY98zDeBcNLDq9E5kaJNgnpUU9ijuiaKojs2EqiPKrTVoOznG3Vb9gu9Zurc9
ltQ02Q1nBSaoPRtPqkPn+DwONLDMNM3FZ7O8ikGnoTXAIrV1+BTOnvfC2dlb/IJcGoBz4PiI
MwVTXawNKv3Sf/99lj4+PAF8zPPzj5d+rzH7SYn+PPuiF13LmQCyqIrVctmJkJ5PeonFwp3z
CAknD8TPBa9LHffwTJIhqVOxJgzUL6OptnwlmR2Wr09eU7SfnJraB0oPBzUo8XICiKIUNPWZ
LfwiDRd2YpkAiMKuzTHyidaokhNoosjgyC6mh7iMlImsPOH5WNscuaPTTdSlMbLn8XNPnpVT
X5GjwQY6JFnlMfSrEjV55TFnqemiiFlG25TVwNCZp6LO1aRronWudqT08fvzfyEc8+nr/RcN
LTDU+Kyd1/EIMTHcQz4oiPsqa8JUTDXwKCUFVKMauCbKrpipzaU2JyI/NdQYeiFWK5O3tfqV
uvYc/hgBWLH6bDoTWE+bz0GMyUvBB2EddUQUG0H96MB0LYem1WRvebuZZz1GXNo5QBO3IeU5
3pAMaTHip8agOahvEwOEYWp/A2CmOuhXRz/h0l+D0MeZZ+hZBgWiym1nN/VTDI5X125W8gnq
1b6QdrBCQ23a4wbVv7QOjssUHKQaD2iu4oILYg/bOhINvg7Juit3HyxCfClYLqwCaL88S69S
NKuh1bNlQ1fPeYy/DmBtJKqrn9SnsFwWDQOWHosGc4uB9xsGgI4PAqyhK3iP0ghdXaIn+f38
0e6zd/wvjmphVw+WmcPhdb0/bvEh8blJDkkwxhxXO9R8+kbYe0il0OeNqBZhi3zfPgGe0TN+
6s61aJKdFWul6b2rJ3IDnJQ+Zny7pvYwg8AxT3Kq2hntlnzNt96hSsKT2z5EK+/iKVG20Vjb
gWhBOiGiAYr7NVhTPK0SYsdR3fRgNeDxyf0iA7mfE+SoIdrs87CgouNBpnum5+SuB+2RF2l8
B6/peguQKjFt8hpqsqNmgytX6ihtozCd8gThBAxLuKK66IpD+yuWZfIB0avHHqX8gEDKdrXg
9ikC0EGB9abhE3GDcjKZYPPH18/TGZbFq3ClNPgKh8Iioq1BqZUwv9hzUXVgRVNaHRtiIkTJ
l0SZG5HmTptp0qZt0YqjGmG7COVyjtzl1dKRlfII+zI1r/Vb4EEZUgtRhhElq1hu1VaGZdb0
L2QWbufzBe2PoZkhNYBlUsiyll2jRCyosoGxOwTGFDM2Qc/RJdnO6WCYQ87XixUNFRjLYB3R
LKVg9zbHLpVsu4xohAypRiqljyEcC61aoIM/8LKpG2kFX/LQneJNuEGiVtwcAXwMn0nT1dAN
l+jbGWJ/8P3skNUOch1tVhP6dsHb9SQTETddtD1UiUTbUL7bBHPTr7A9RVO9e7KRq7QrqXS8
AQfBQIk//Hn/OhMvr2/ffzxruM3XP5Si+mX29v3+5RUqPXt6fHmYfVHD6vEb/BfDUneyobpD
JuRk+zNOd+BJw0CbrqYRquLl7eFppjSF2f/Mvj886csXXm3kklEEdKnYwuqSXG1pp+STWnmm
1DGjw9fXNy+TA6QI8Rqv/NdvV/hM+aZqgKM9fuKlzH92ty5Qvmt2Qz/gh5Losy7uzcigjXAm
zDrG3mRxMkz41dPD/euDElebqa+f9ffXO+RfHr88wN//vv35BhE2sz8enr798vjy+9eZ2j6r
DAweCA5+itXOTy172m3Oeldn7M3SJqo1rxKUegFMyRo6JhCY+1urmRLgcrr6Azn2kAcfckCg
s+6xQFKqsGj3rCsFcBpq8sfwy0DX+nl6HV3QVJ//ePymijp0419++/Gv3x//tA0PVyXOb7lG
xdEbkDQdXgKmc/Si1+lshdI63WfglGnqhwEchAgMomlGanpZh5TZzamApyAs4Wulvd5IzzIR
rNoFpWKyPN4sbybmebxettOu0NQCTkCmjEPVLNbrKf2DNtYUU0YlBJGNaKJgE5L0MFh46EQ+
hYw2y2BFVb6KeThXTQcwBTda4CpWJOdp/vJ0viMGkBQiZ/uEeq3MopAHNpDlRIRv5wnVik2d
K21kSj8JpnJtW+pL8WjN5/OAHM4oSlNjyRg9cDogdCC4mqpwD6yZiOFulJoyX0MCpBBBcgsb
TlP6I1eHmn+kPDQ0q58tJqugLntf6NnbX98eZj+p9fff/5i93X97+MeMx/9UKsLP0/EtrQrx
Q22o9LnJwC4lueu/5lmTX70Gj/64pA1D1zd7DM8Dmzwa1y1zVYMnbcY1FFfR+L4SXC2xt29t
ASoc3hnrktVBmkHLeXU6h6yE6QxOPiknyUL/azjPdkZwdRKRAuiZ2KkfgmEuXbArDnSDkkQC
HhqZuroWwk6dlWd9cOFxoEUSPfKaXzCmXUo0r5SxvilBsKak3KWdivUQ5uP6S1UMhKoxhJYj
4L3/Pr79oeRf/qmWw9mL0l3+8zAejKIvClkw67RAk/JyB2AlWZUPEXgIE+ua6NaqrPk8OSHD
vCZ9LGthBWfr3FTL8EAtb75aMg02pwvqJpUiC6mdpuaNugC0w2e3gT7/eH37+jzT2+tp46gF
Qe2ErckMMv0oHQcIU4zWV4hdjidf0ODIsmgxtC+HbytwpKZ+TXzmk1crmkbgoa0EV5GJI86V
c/IfhZneQHkdaU5xmpQGNmmCjDwcPpdTJSmk0/vUWutQjplwUqmFcFKXk1D7WTk1LVfvNjqy
aEJvy2iwNcPMaV3QMOum9CDBanajvuhNfhWtN9Qo0Oyrjman4hc/dowWUIssvRxprlHkbvP9
ZQJuG1poFCOdtrRovtHv3uF73zoqmXaqnNVqoqbnci2gNBF+W0AUH5jv+gYtYBRNv4AaijBw
bwionQA9VjXb6KEYOnIgQ9bI8AZU8LySttuBocee6/D0+CLVC8OCM4MawoOk8341cNfR3Hm9
FNNXN6U8iJ23esOGws7IGc6adhbFrrTdLM1wFuU/v748/eUOaQzCM4yWuQMarDuJPa+irzp3
6gxfyv0MLhqrJg4eXG4VypRcI51v9cl1frKObX+/f3r67f7zv2e/zJ4e/nX/+a8p5ijk0u9B
nZJdY01Guwi1BzIm487FAml43gmNlUEfTCo2gJqRzhfArPTu4BmT4AAWbffg7AOOW/oSWAEP
Wm+aGrPHOX9X3WKnR+mcHRnLQ5Iks2CxXc5+Sh+/P5zV38/TfVAq6uRsYRAOlK484B51JavS
hNaZ88CgI0dGdimRSTRnXBQwgvqjXvv4knEAf89L1Yi7hjoWU0MmVpO9HUI0eowN+QhLjSr6
L08t2cdin+QQKYjUuJo7KAiG0gXhnA5DG/jzFWX+6LnGNdRNwz1Xfg7sMt/OPffp2CJkHx1e
LVQ3p15e5uHcORLoXQ1FiuzADhp2/Pj69v3xtx9gou1RghkCVZ0O390KGzpWC32Y23cAa48J
LDh1n7oeIAlZs92YGH1jCOraqSEo03DKgIE4pebNZrWYE/RTFCXr+do689BrMlwt2t3JT7QL
kJW8JQ1Sg8xHziLrlHhg1AkYyu/Ubo/0fuqlZC75NSKOyAXzfQ5JlGhuQVsnzQE8APGNRrEb
dGPMAd2C48PpHsR7wVcbK8prpEdbsglPJVxRQs23l+pQ4rNg9G4Ws8pgtg0d3BA0WHJqTXM4
1T6xl4OkCRYBrdjgZBnjcIp+I8DiKtkkNJSbOQlpZOJ+uiFlzj55YM4sKVpVxyIfj6xoPJt6
LFf7esggAD2hxMB5TRZaT8gwB0/OSXcW+A6FfINkePGxLmu0RzXPXbGLorkzcvsUu7pksdUb
d0sUA6QezD0FcLNFkiW8sQSBpzHCbvAt+zXPQTXxRJ8ULa1q88JjTm/EvizofQNkRloQ9LVw
Nh6CknWe+ngihGSEM24giMf31qY7nPP3u6Nqd7j34Pbn7G9GcJZ9j0clTnYSR1rHxFKHJJOC
xr/AYkr18vnTDiIAQl1Yl4PkohB4QhyPsmkNCOUW47mp0Pg2mX05eBjM8elET1DTc4YtUzoZ
fZyeLFvKEt/vMbpoicZKnG+DeYinHpXvKly/O/UBPCDlTohE4PIevPvZJWGBA3PNs+lQVh80
dPVD98KB7Rkahp0BPo8HycFIyLvLgZ2tOmidpneX/7/Zbw/hy8Mb8H+8Pjw9vBpDytcfb7P7
l79mDy8AQPhFn7jZEUVD9T/Zd4+b566oIGqvUCsOBDN3idODUAbp8YNo5PF2Ix8sd81DFZCx
JTjBkZ0TQa6CIgpX2GkMs3bWjk89QmThOwsFoJ1Zl9MkvitOEk9MjKZbK6PY0xOEop9SmtPu
qUNxINuoJkCYTm8W1wpvFMt5Yj/Z/A85rWz0lhukSJ3Wy0XbwoyCtkenXr8aN4F3JCSD6seh
LXYhEEWoDparUrDCg6iL5ZS2S95f4MioNRJfAqB0Sd6VPMnKIXDQUqEn3P7pnfdc7GuC4DmY
72l34lTpz8U7SkXBmr7YY9UNiUono0UUzj2qGsSs1z5MWluuLosyf2d9LOhRGi221uVuvR7N
Wt/aE+qgNEL1rrhPWcGlOAnf5YVIqryjmkt16JKTipmBbOwvuLF2/gel8KqJknzhJQFn9VS8
28Ifs3Iv3pmdlDqcQcAsfvlHRZhMbOPpcP432ssxRxICZlM3ftsoWGx5ZT83ZYk/WE/qKo9G
M/CbY5F0zRnuZ6HXvkEwCkJ60wUC+oilbrVfNdWl6ihYb8nPWqvlzDrNxDwIUp4EsfdMyXIw
wLzXuDJJaBx0LFNmaqen/t4ZXlJkOGZX8m04XwS+8pGIc1ggx5C//QCTOd8GHN8llVSCm8sZ
h9eqdNsgsI46NG0Z0kulVVOuZpukfbdPykZPz+/U4GjdMFJVl1z1VHQ6pQ1kOCZUSmHNUeJI
dgp5KcrKWO4HrfPMuzbbO4BeI9WNBKbq1CSHY/O+lM9w0vMdY7x67OqDg7htcSGoktOA/yjb
s/jk6HWG0p1XtIJ2ZS9w5+ipuyMgAtRm++nmCMzhRkKy1EiOFZf3Gsx4mt+uXStqysID5LBC
hylpHFvrapykLa1syLuU3swojbmiPqExGzpgvZpoQ0VrCtjiC2F6m8UQzY5hL5Ehgy4/oh0Y
pjqBmhYLoobqxAZaAL57sSvmHQT4k8CK42Sq1aNcCNzMh4t2LXq2CEjhlGewXmMoqSSGQ6j9
HgKpDtOLsFT+M6D3LlLEJX7S811YHrs5DpzezNQ5ZWFtFG22652bDBmGovmi9eSqvuGmbVvb
PK+I0aYn/oWIBtfBNM4o3JuC7Cy44CyelLXf8nvKEjPV7a4Zjb27At0w9NYP+A2PgsCXLaRf
Rm5ZNHm98SRKRZvEbhLBq+woPSn0pqxrz+xit1sGHldNMA8CbjdR1jZuVfsdjOcNA1ep5ZOE
eifhS3c1qlvvH8lNQHBAU3cbwFySznwv+ojSDCpNb2l3iFqbsV8Kasy1kNYy7lAatXltrSBu
sPSqrin45NugJUb7dXgK3ocB7dW4Deu9Odsa5oIKnWmoh24nYxt+FYhqBs4ATtwiuneHAS2v
KmvbrWkQ1OMx+yh+aWdb9tiGKAPjemeRdKhn06D2lZY5TGYH2wtIca9XCCW0zVvLAKyY5ywV
2BrZFf63JioDUScGBsacS2LrmGJx1lAqPrDu2Nls4q0EFaAuHykFErh1k0XBau4mMmQKhQq4
SnXdRNg1FojqzzKwDfWAqTfYtD7Gtgs2EZtyecy1jZPkdAnWBTGj4LlbF23m03anQYL8MjiX
fCcoX7vrp8m363lAvUfW2w2pYiEB67jgSldDeLNy23TgbEnOPluHc0YVo4C5NLpVDpijd1TS
nMtNtLiVtAaUYO0ISn8CedxJvbvWl5TfELF5LBNdvlov0GGOJhfhJpzbtF2S3YnCkatzNTsc
W5uaVLIswiiKbPIdDwPbjjGU7hM71t7BoovfRuEimHfESAP2HctyQfnkDAIf1eR/PmOAIuAc
ZDltKbVYroJ20s9EdaDjNHW8mkjqWrtf2fmdsjXV7fhB7TsR/Wx2paP6Duii18PNXC1StJaP
xciy2RK5dbOffhwnZn11t0MyRiabirNER22jpb3meeqzpuDEvmMYLDOxJovqHPoMysAL6Z2W
k2Vt3DTHHUcJUWlEQjUT5om1GBgK4PZIaq7q2TrWF3AZ4FqyAgNjVFk75jroCEqxdmkFHIRn
E3L/TTxkuE6lqY9oki5rUZS8dKGYdPFX9L1/uLFuORxackksmNNNCbGa9XESZCa9Pvbuy2rP
ZcFYhgxtwAKN8BXj0yVm1FSEZfR+JykKy5DwsSlSbcgAgAQdl08pTeZL1ezCp9/vnC1WOMLF
nvv1LNFH8J0fc9bOwLtLH1Ltvn+9//Lb/cuXaQS0gTAS4XI+R/0CU23YL4tjIx+NzeUBREOw
u70eRbTAKQerteu1ovb1UvhPeAeEGGpzI2Nr8oTnTizpTquZnFV0D9LcuD51e6G0N4/d93BR
UiQnFz5OcbKq1keOfvvx5o1UciCj9KMBl3q2aWkK6A0aqMzhAFiiBVJhyFJjn90BVIqTIGdw
p9+dAVHRZTy+Pnx/gm5Foc71icBdz4GAtDkATETeeuOISbVPTIqu/TWYh8vbMpdfN+vIFvlQ
XizoQ0NNTiRxp/F00WfwITGaBHfJRUdJjk05UNTyXK1WWNFxOMhmPnKaux2V10elPmLIQ8QI
gzXFiHuoz3odrQh2dgcvmtJtg5ZF1r0moUrXcLZeBmuaEy2DiMjR9CgiSZZHi3BBFVkxFgsi
hZqVNosV1Zy5jSkx0qs6CGmXzatMkZwb8uz3KgF4ruAQJIk3y6Y8szO7UKxjQbd9qYbXkqA3
fKF6S0vWpMnDrimP/EDf6nWVaxv6nWrCC4LWwj0YW6m566qcPDhDY886fgWCGtT0hcDAk0kt
8DGCoRroeqjGNLcdz1fbDRVjZPj8wirmZpjAimwAPJzsBo7H9dERkrltQNbck2zblk3eqYfO
pPjyUrBKG3luvXCUslbc6/wFF/NY2tFAU9sxlpX0Sdkos6Bc30d2jFzVr1Re7mpGvnKfhpQ6
N/JrUREZArnLkTVn5ByFmllyDMRy5WmlnHHLQf7KlCJOwPPbc7x5lVNqNNX240vMLdzUK0R/
KbgH28+VCz0RNFe5M6trQUY1XkUgrjqzTiPHCleMJ2W9I5pXs3bWpeEjDxBjselmbJmziNUD
kebTISkOR0akYVKpogHBgIX2SH7htrIdCy2GUlRuNYcWscEzr7yqra0xbgaMvnyIvJbQsGGi
MerCmCUiQiRfldSNdYMe5kdRlUfruTVrYj6LN9FmS7zfEqqVMhP0GHR0NrC97vKWqokldwRX
gJaLmi7u7qg2xhhSYMIMtzQTLNtlkXSCF9EiiOjs+SXiTb4PgrmvIvzSNLKahFrckF3+PeGY
becLEm3JEVpZTo0WF2be2nMRHZI7sLySB/E3CpUk5DGzJbJnGfN2H8Ptl8r3X9fyBe0uh6V6
70H6C+7LMhatr4UOapJNKBMIFhKZUP2opbuRXMvLZh3QzP2x+JTQ5UrumjQMwo23oTISMtoW
Kem8zwwO7c7RHENtTQVuDE+ldgb/z9iVNTdu/PivoqetTG2yw5vUQx4okrIZkxLDpo6ZF5Vi
KxnV2pbL9vx35tsv0M2jD7Sch0ws/MC+D6AbDbiJQ73sUdgyWC7la3wFrJnrBhasqJYpwxB5
gbUI/MdHXVPvo0116GSLFAVfFftybev9+i52KXFOWS+LVc2d5tG9mIMq2oV7J7Llwf9u0efi
Bxnxv3flytYeYhX8cMrs8o7fFNv8Ucm8/IpnXTdrVnZklEu9eGWH7lvIloAu4LPaMiQB9hxn
P3jzsnIE18CYBjGkIrPMzrIq5ADGKsZUP3gK2Lkg7tiwemnNcNPKRucKtE8iNfqTUsOGRaET
00YjMuPXoos8z/+gu74KqY+seLu+rfu90SfOL0pGyZNtXQZa73GS0oKcAnqFRlnK8csGSj9a
VE4v772q6fyua1A8neIrm3RPo3ZQAYWBnkAYDidAt8fXB+7BuPy8nukOU9RRTjhV1Tj4z0OZ
OIGnE+Ff1f+7IDdZCYqmTq3KBUFVom8IUn95vm8Y6qvKpTLH+5dYmi6rMQGK1+BE8/WJtJkl
9WZBa8kCFsctTJpbG20k3KR1obbKQDmsWBgmBL0KzM/xVYbr3LkE+7JO+IGzsP/5dnw93r+f
Xs1TZLyuH7/eyv741zBIqz4oa5UOPgZHzoGBoh1YBTKHZIC4I7kn8mGBVm+y9RbGd58nh6ZT
nQSId+GcbGn+tMIokcK1t3ywxy1WO90TcPYlq9K8oBKr1/tU3FNV6v7KAW6SYDHgRTsI3bTC
AGmfPz14uJFdrq+/rmvF5Lskg/CArCec5Y+/b5hkccbdVw/xCp9UKhOmaJKFSHYoGpCsD7fb
w+ILPookZbWKB7jFF3X927Oenhdb4b5ZMhfc3gHJOCxnp9fz8ZG0VhOdmXih+ZB5dXn+jQNv
4nP+nNl0CiZSuMMgFyv5MUMPbKALq1K2oNGAw6rlf7PfXY1DdQU7jGI1ilHP+ger9RUEqCzL
VhaXKiOHG5UsthlZCqZ+nfujS282VhsZhVVnU5n6dRWWVeSTO5BkGGpuTxDWUCIVXFn/zafY
AThlsQP0NNrGtgIDuGTVoWosdZhAqhA6d4ZW2emq42EtMhjotITac+NdxoK0eLjdDn7wpYUR
aJt8obg36r1AXytZ2dQlbMWrvCIvzmBdhUU7V6/vRyKPnQy7kTYbCUZ7gJKt8EA+mXs2TYVm
lMZE7V2P3ds3oHHJk69N0W0WBmILHMehqLIACiKfJ7+xLJsxwI9UQpAh7O4Hugz+a2zN1VD2
APyTkuk+oQVVUXB6RjyP5kdCtPgrcZVAWRWWl0cy42qzXXdX+K5nt+3QS1q73lM3D0M2rPP9
r40n6ywaojnaLraqXAPrRfVFOYUfKFrIgqG12w3GKGk2xlBCdc+8TZVjQGCb8LsPaMG1SkYd
MO002i2wKteoQKy5yZMwqP7++H5+eTz9gGGLmWffzi9SCabZiD3bLoTYxwM4FivycV+fvnZL
N1EVQ/WBXHVZ4KvK9wA1WToPA+oEQ+X4oahAA1Susq61XKb3PG1BBjL30CmblAZVtrraZ01F
23QiTx/LBEUHSxbD5c3Y+enjP5fX8/u3pzel/2Fju1kvSq1zkdhkS7U9BTEdb4gh0VENQnfS
mmPqJptBIYD+Dd1JTx6bKGlFJF+6oU+72BrxiNJrR3TvayWu8ziM9P4DauKSobD4+pGoxpSc
RvvOQgi9SgVq4624au2pRFaCZjIPDWLkO3puQJ1bXp0jvCUt+noEViS5099+vr2fnmZ/YZQV
0eqzX56gOx5/zk5Pf50eHk4Ps889128gFeIL7k/q+MhwsTHnHEj95c2Kh/ZRF3ENpMIcaiyg
H21tE15OSXbAhFh/56hRlDAZ61bvfHyuXdLXujj3mkyt5lrccSu5wByQq6X0XK04XEGaEPmG
Til+wDb+DDI3QJ/F9Dg+HF/elWkh179c43XsxtPKlVcrT69aH5flUOmHiQpXu16su+Xm69fD
mpEBz5CpS9fsAFqIWpWuXH3R7mj5qGvQZSmqi/3KsH7/Jhb9vobS8NMn/ZLUxXhbdhstIz5O
9EpzYh8lwFpnYa9l8XY1MeACpw9kpIuVdJJVyWdYrKmlm+Rb2T8y/FB2VnGCBDVX3dhN5Mcz
hh6YRgImgPutXIqmMR0lN10DH1/u/5faaAE8uGGSHDLdtZsYmdyJw0y8FZqhcdOq6NAlID7A
4FIv69Ia9qyb2ftlhj7yoZdh8D6c0UU+jGie8dv/SP74+v3tp0SoZZtoZIC/pPOXPpKVAYh+
mBKcKiVIh3TfeA79jHdkIX3gDWidNZ7PnETR43sM9PsbUtUaGfZu6GgVQ3qTVnXKqPK2dwnp
I3wsDsYtS80UMxbEVRJagLl004JrofIkrifwyOQYjwbWCYxNF7rewLFeamvq8EnZ/tk78JBO
JLBHLO/5+DrMvjA5riWnDe4KBxnx9HR5/Tl7Or68wEbEEzNWQf4durHXQpFxutDKNWK+Sxut
3odlh/9zXIcuEOnLUTC01+p4W+1yLcV6kUQs3utUmHIbyTBkaKFM9ffCyea703E/52U5/XiB
6aktpqI5hNWdrbRpvmqM3LgBGXmFOsGeUR1BVWMCiYNblJn9vZFNT8cvbFmBwJmEsXIVy+ld
U2Ze4prnWPUyN1tEqXBbfl2r1sicvsjnYezWuy25YIhBxC/ObUXlaGiki7uy7RMeILrrKm0M
VI0/D3yN2M9+vSHEcmLLYLCUU/tDXBslkZYDJ3tuQjQ2AIlF/Jw45uS9KMd3dTKfB4MsgM/X
r/bRohOPt/ThUh5KfPzrUq/SBpZC8HiB0RNtnvmaJ2FhucsW14ujSDM9sJOuCHbuQcxZnpz7
2/+de+2nPoIQLScHnH0keDT3XCt1nLCcecGcfJyhsCSe7XN3Rx2wTBz9ii4Xlz0e/6MGXAF2
IUjhIzdLeoKB1fJjt5GMZXRCG5DI/aNB+L4htwTkVFjli2U1jciSr2f5ArZea4F8Si9UOWzl
8P1D1mY2MKELGcvelVXAtZS+cAIb4irmIg13bZduLU7COWpzbCJQDD9dfTHTFHRrkK0G35Ej
o3S2h+FMNdoi7WCEfpFNynoEhV18qY8bmhMp+vjwETYRHXhRYpAbV6G7FrqiVA0IW9AtOJTS
hgvfZnZ8SH/xpxfvLTcVY+nQ2utqdYWll1mtdO6GDlUttOGJneBaoj0LkSxHPNVZy9AeQ38S
CQ8sJWswYel0ugcg3WTu+CZQNUnMraE0um55PCXEG/9qx1WwZ0ake2KpOG4QxjFVzbzo+BGD
YIpCaqeS0onjaO6b5YfOD9yQGPscmDtUzgh5YXy1bsgT+5SOIXGAwOCYTQ1aux/EJl3IEkqA
on403KSbmwKb05sHrlmVtpsHoaS0DH4O5Z+w8+Y6qdfbheohri5FUBNDSxgjL+Zx4Co2NAqS
kE02sdRolvoveOhTSpWHGg4qx1y+7ZQAX7IWlIA5bHXqfdwAdejF/mp2yOFS2QEQeVR2AMT2
7GJqYI0cLIsjj8qONUWRk73T7RtqHg54ziKPCMGJ8TKpjMRiCEXNqBoI6f1KbmV4d0jrBfXt
Mg79OKTNJwTHTRW6CavNNgXAc2SbghGAjSwlyR5BFWecKzP92/I2cn2ilf7IAqKLYTNuXY9q
VVA/CxHeTAf4BA+pDuTQnH6BLPHAUnd9fiGP517rHM7heVTncCi4Pjk5T/RxQb3o2njEJT9y
otBsPI64xNTmQJTQwDw2WxsjpOLoJlqbQz5lZa9wBGQrcSi83gKcZx5fz8B3Y3kzGJGs8R1q
VnZZFAZkiYrV0nMXdWb1OTr2TB355PCrY+pmSILpUVvH1+oIcEJ/Zou+OzHQLnklhqtjvE5i
coDXpK4owcSKAVSfmMv1PPT8wAIE5LAT0LWCr7pM6JAl62QjzRHPOhDKyWGJ0NyhH9+PPA13
fnWVhx8jzelVpqlp65Lx213N11aj3Oy2c0OzrYDsEZs1kP0fVAMCkF1f//p7witlLOrMDRxy
FgDkuZZI1xJPtLPF7BhLUbMsiGt3ThsJ9Uxdx+KQHCisrmGJuSqRZK6X5IlLzq8U9nXn6iYA
HKCsJaR8AhVMyJCr4/a+Sj1nbnYb0tXnoBLie1fT7LI4IFa82zoLiSWyqxvXIaYqp/sWekKm
o4RLl+nUwNyWaZREKVXFbYeuZK6Oil3ix7FvCRkn8SQuddMic8zd3Cw0B7zcLDUHiCWM04kt
WNBxIqv3TxJexUnYMWrsCTBaUecafGVLpRR7AkbU6Ep8lcdMrKgLUIJWaHeLxx/r5RL0mioF
FZopXux7dntQgYFjTTv3HuBdW/I3gOjusKEPHgbWPhDr4WaNYVGL5rDTYvhd/WKZlqArgopH
Pg0hPkA7bvFUUx6AFGd/clVV68wSOXP4Si0Ile6/rxxyohdM/s8HeV6vywd1kG7Rtsu2+HP4
7mrpMIYANyQ3DrXTrCln5arzA2ePt7KvT7RN8C7tstt8TVWNoW+2NWPlQrYyB6ryAyrcyt5O
+VdZycOwkl8PqEoUloRjSBH6S5WJxNTLykWGYbSNtJCsMYnyYiTTiXs6HZM56CO5kYOtKUMS
jk/F1zIfyo4ucbJ6ZWQt1c2eu3HwOpnc/f39+R5v5E1Ppn0C9TI3Qr4hLc26BJQ7yriIw8yP
Xdf4CKieJW5iXWbiRtKjZFb+ddp5SexoFkQc4c9/MWQg+tF6MqHbKssz9RvuLMGRfdNx6nDX
p2WABgMaq6CpJplIHy/jlaoLqvUdHW9mvJQnz+BGVL7LH4nyPT5vRn76uyeI8okvft4ffCiG
nSM91KuA1IjuvRGm1KoeFOfKMk2zSuLNlLn+3nxvKHHclqCourxO0gFghwZNrMx8lQbJNJXy
nL5qgEra5yHCuFsNKTd+D5vV61x7lgLQXVHbjC4R5sfa5E35hGq9ad5siJFjHir39DiOrLNF
wElkJKadLI/UJDCpydyJzZEMZMuZ5ojP6ePmCafMDjjaRb58vMFpg8Kvlk+5fFWyaItuY80f
NL4QBqptpPZ3wXqt2y50fFpX4nAWdmFiTfMuUW2FOHEVdpHljBlxVmT2p/2coQziaP8BTx2S
z645dvclgZFlzEFU54hP0sU+dBxjM0gXvtuT7aUADYMS+zhmmLUgtStBM/P9cI9vdVPSJQmy
6fYQgpbEsi+pPrmq3qh8o7nVIDk1LHKdUH3cz+8wyNPy4YWtltFgQEFQVa+dI91z7XMFyw3V
8ekzDIkjJPVnKQ+9QXrDDbJEc7LCEuypLTlQzb0QEFgD1eAQ3a4KHP/KiAGGyAlMBindXeV6
sa89IOadX/uhr61jhqkLXzz2SRhqG/po/2MSzT2Sb72qLQkvWR2Crm4rNoCuMQq4CQx1sDiC
CfFJYHHg2cO+a3+0P7CEzpV9djTMkZcs/tQ7j91EjnbVFjeoa6jW0yPReu0/cQhf7Nt11Sn3
CBMDPo7aiOdhbFPLTyonHlSxuIYlcxHFgU32xmaxpHDhVkz1ysSEMnAShXQ+aR76c3p1l5hW
qRYM3mQRUi9V5V7IppBBXiXyHATfD4rWd/PVsk3SMpmTkEOvpqBLpRoSUpUDxFNnkYZRG540
2tJV6Id00qqOONGF0EnXUmDb0Kfn48RYsmruk3a8Ck/kxW5KFQ7Wtsi3dCpuhPH1enMWj0wY
jSX2dIPyzYUW9lQm0pBUYhGrsKX0aFkRU1fgE48kBpNYKG+6CpREwdwKqeGJVXD+wfznPPTo
laRvOnEuhX+UesxvP6gKg5RMz3xEZJ+QKjKP6dpabUUlluXma6FEYJKwbZJgoGcblFgamYOW
a2CJi7RZnHAee0x9UDGBhug9QYP8ezVxBjxORM5HEG5CVzh9J1IfxMkPKodsnk+apqlMoSMb
KOqYHKRAx5KIrv8glX6ctet7V5LwLEqMxqZtujSTIlsqmJAjKeGgfxZpALoE02a6x5nsIBz4
TqcDZWuJYIeve7J1rnljVnEMqkR6t0DH3twKUjzXnY7fnk4P5+Ps/vJKOC8WX2VpjedG08cK
KlxaHrqtjQHf0XcgOdk52hSNoi0gy1sJmgRIUTQMDi5Aa6XhR9eiM9xWT3pCDvlWOjjelnnB
I1TppG1QeRh9AV/9p01JwTotzbdC/NQBIXHW5Yr7U1/dqJEUBQ8e+bK7Ar2tUjYGggnjBkri
KC9jXdQe/HdQnCZzZFml7JYHl8rgL6ajuxUMMImIOSw2S3x2QlC3Nb8tmBBoRkM7R1pdk275
EVLC0nPedN8Hfm/Z726kJoQOAPEokbcbPQ84G3+vzIoMrx8O1Zqxg83vKrJvqsJ2Qs1nh3kk
zccPjxihTqnd6a/745Pp9oAHkeDdpTW7BijurrUAGzesyWyxMZpdpqYJhHHcKakgIGVCtklf
oKZMbTFsvrZ+FOhRVVh3tysWWaoFl2GeFyoaikgeoG5rNHj6fHy8/DMDBF8+TO2oz4xtCzhV
OoHf5sBB5rktmS3Mq+CBWrhuhLp/bbvYFIw369hRxTOpBp8fzv+c34+PZk3U5WHjoFWAUVBB
55PySgl6rpZSoPs+3Hu+K/eTQj7I1v8qklYstX2Fi6VR4q6ONMeWvDVyWzOoE9DisLfHDluq
pxHsOh7RZpPfFIrT4QmDPZO6Pqy582YMEqCuXgsv8/prnEZ9Okyh5hRDrpRp5y/S0vArtsQv
R2WMfLo+1mEt17Rg4Urp8vc7d2XwcPr7/Hx6mL0eH84XW1I8yE/ZsoZy/8Fj6KTZXbtUToj5
Isf3IOsWCwN0fIo4xtzSh1S6LA5ZVmbGeErzYiX79FPIh4yVXmsOXQntDFT41JhsJNZZL75Y
Z0j/3P2JooLQd2NBtp3iyhjbYdx07SEzgIu/K7G01LasjUbalmhnbkw3Tkb5x1oxwYG7Kcbk
+D0KjLy8mkoXRUxaAsWxrXc2NbdAYiPGhBi0QsSE0VrX2WcGct/gTkB1BgbTk/Ewoe2WyEEI
jKOQ8FOld0UaxqGsjQj5sgxiR9+xNJrwidDTJsl6/N6lr18wqbqlr9r4KsEWrV4c6JiS/0Xk
dJu21OsyCfXUetwVxUrxiM6j0KVtATsY9RaYFzidyzFqpLaLAqPt0jSOnejWLGtXLKMkIhVY
jotj8t/7x5Xd6cfxbVY+v72/fn9ClwEzxJMfs2XdC1mzX1g3++v4dnqQ3HpMSSX7IalpJC3P
ryeMoDP7BePWzFx/HnyapdOokkbvsmyLvNOW/J6oh2oZdASUAg7rZvCIyDO/vzw9ocWCKPLl
Be0XjL0dt8vANZaWbiucP8htmX3hQRGxKPWOtk8ahG5P0yAnOlc/CDqsSWs5tO+E5LVQgkp9
lRPp6dK9+iG7+d26N17ZNTVliM/0Ml3BhBAdo64BHLki33CtRazSkrx+fL4/Pz4eX39OTmTe
vz/D/3+FFJ7fLvjH2buHXy/nX2d/v16e30/PD2+fdAEfVb12y70WMdDCMlP57bpUvq8XhSrb
/hpKyIPfcVt+ON1fHngJXl4vsDdjIbjTiqfzD8mbRpuzkXWgbc8Pp4uFiikclQyIURgm3IGa
9NnpWU0sOz6dXo9949hk1fU2juIxoeXj8e2bxCqlfn6COv7nhBN8hg56Rpg3xWfBBFPo5RXa
AS1/FCbYPma8t1RyfX67P0GnPp8u6KLp9PiiczDRtbPvsHjMINW3y/3hXlRMDAO9e4Xm/JMg
omOcRjbKkrEuTxNPtngxQOVKVgVdQF0rOk+S2ALyhdn2JQctX9ad5+wtBdpnnuMlNkz1hK5i
gRWr9xV8GEsRFBU0CwKWyCbDarN7bhjTX7aJ53TjPMejq7d3GP7H14fZL2/Hdxgb5/fTp2k2
jwNHZb3nXmP+ewabAwy/d/Qnqn4kaxB9f2VenqtLGhY0ClVavUqSYNrrgPQbsxZNPjDZe4Er
H5jzxDpfPofkeYa3buA5GrHbOt58rhJxEDqJlqJoxbLLXcXL4gTxcrjaV6JwjlypDlbTf9F4
8KUXGzlBizqO7L+xr2yoVxYbOJGzzfq+s2a4LRj0Ftk+8bgYdwzSWYHg8G2WwtJwvj8+f767
vJ6OzyCcjJX6nPFRAjuSNbfVvkP/79pOl9V+6GpFqG7yzvd11p4aklT5tJ9rlJsk9DyKdhC7
pnC4wvJ/3Tvo9SX1HKZ8qw7X//o4QUXFl7hg+X38KVbxt89NVal5A2GU4kDV6J1KDXvJ7G/Y
gvjkUb+qVotGfiKANLyrFLeiYhsTYlk5BLmb/VKsQsfz3E+0Oz8hk14uj2/oIgryPz1eXmbP
p/9n7NmW3MZx/RXXPs08TK3vdp9T80BRssVYtxYlW86LqidxMl3bSWe7O7Unf38AUpJ5gdz7
MJM2AN4hEARB4D/+IPcvDz/+fvz0SgWqYnvKuHncM4wTaSgHGqCOZPuiVsbNfixmYDb4gXkk
BBwbrOSWCA8LWPemj2VJGUXKPtsjaCw7PGzaFR9Aq9LBGC1zCWB2yqxNOm0bVBj4uQWpHA66
KtFF+liKyKpyBmqGbMPfksfREJcNXUM6VWUCTOFs+larOsInyJs1fXTtSKRIZmsqgn5PkDWF
2ojvto07QRZ6RZ31kArOKlGe2YPUMOUfUlSlPWCWhsAMNr2Gtf7ydwguqOOhQXCjpXaPgZAV
i+yG8wzjxeQ3rajy56JXUH+HH9+/PH79+fKABxx3yqG+Fgv6Jr/XH08PvybR96+P3y/v12G7
1un+pOEkefzrBVX4l+efb1CPIb+A+6V1FFUA9aZlNO4F4rsPYmTqsrw+RsxYiQ7QB6HnVePf
UfU0+lSzIsH9Q5E/FzQ6TWt7oXo0BplRsRFdNjjuI+o+WqHgA7eZqQ4Th7tcmZDu2V7nsbZa
4aIsa9neg0gY/aZKzso2PLVxmNJvDwai5BhSxiLE3zeJ23aQ83iMvIuY7X01BctUkmmLCQs4
MDyZe19PiCnPWzRNgbRLIrd9TXKjz5qgOyb43cAUS1V0wH9Ap59xun6RZXmCgXWnm7uP5N3O
lfZDKNqkmm6maTRdTf3V0lR5KSRG+YjbvELf77vblcL/mcwzwdvjsZlNd9PFMrNUtoGyZLII
orI8w75kpmQjSc+hqGHZ0/V2TtcmWSrrDPaodbSI2fwdkvXiw7QxQ6yQVFvG6LYiccjb5eJ0
3M32JAFspkWb3M+ms3ImGzuarkcmp8tFNUsi0qdZsW4pwn1kf9G6hgFjcehVWwleHj9/vTjM
qu/XRQN/NJuteZWjvtEwk0pPcLoc1mmgFI5wJIO72suBvVvMihqSYdKVaEDZF4sCH8+GRYPv
IvZRG2xX0+Oi3Z3szuDmWFTZYrn2FgJ3wLaQ2/XcWWzYkOE/sV3PPY4G8N10Tnls9Fj9HNwq
VMUiw6hgfL2A4WEG4tHhV7mMRcC0cy4cn8dUFmD4XbGcOWNSgZnD42ZlOkFZiMXCldtGGVdH
snfFkhf7caEbCyngf0E6XgNGvg3JwGhq4dWOZrNoFe48jaeczWm/mm7XGBXQzFtLdmRkkHRL
dEVZpXTP9r4W5cHZxzCu55DnQJugXh6+XSZ//fzyBbTC0DVa7eAImmJiZeNbBFiWV2J3NkHm
KvVKrVJxie5CBaH5jAsb2aEJOUlKyz7YIXhenKE65iEE5g0NEmEXkWdJ14UIsi5E0HXt8jIS
+ww+8FAw63UDIIO8ijsMucBIAv/4FFc8tFcl0bV6ZxRocjaBoATB9hGFreneisQgpaywrzs8
IeF7JzNVM/bH0IYMUqDrDjR2e7ir45xUOs+QzzB/96HgiYenuEhK+6GHXqRzqy34Dcu2y1vM
j5NnmccJZ9g659piZrXRw5GpxtYhp2JeY+FqvVqt3CoZCFRYDzqctuI7WVEa8E5tF7O1Ux0o
opKN9qxPqT1GIGehektHt5cdBbCO/XEqkP3S4Qr2LtuvqIE56KZKcWROQQSNPk/o8Z5TkEfx
TsNis5w6rK1Ca9p90UA49GMuCVCd6Lp6Ksyme19HdB3UM4cr1p3Y4bBqjUufVm/NjaYgx07Q
3ZxFVp3HdhmNpQckF5ZwkItOLlvsN7bpIE5IZ9iYPZGOK9wjZyubK6McBK+wZ/RwLnOn4gXs
rGPjO+Z5mOeUKonICtQie5wVqJBRZksXVh6cgRcpfU+NUgOOPbAljowylbzeNVbt1vEROTpI
231TLVdTm7G7BzIWbRoB12V5GtnQAIbVeN+Ahip/kz352s4gSkRq7+o9wmXwArZykYnK3eZh
OylzFso4IoOJqhW3b4AQJEGcmTk71ZRtTDv98Em0CQ99cwECtZ+fdtW9FkSMn6PhWp1V6peP
vwYq93uiH6QRlRYnsq3u8fYIxs7ObFSWbu+Ws/aURJTidKVjYbHd2m8eHOSGjvDZ0wxvlIkO
ek+VrGlYL6aMblch6XD8BlGxXa2ozcwiwZefRPPDU1eq1/0rKqLRkWjuRpPH1Xy6SQq6eBCu
Z1P6dafRfskbnpEuxnuGZjXXR4vWutAI1Kta/Pn76/MTKFfdKbdzlfBczOGgmp79dJEWGP5N
6jSTf26nNL7MT/LP+WB925UshS1nt8NLLbdmAtkFRgVhAZp0aUUPpqjLvBqzkNOVd4pvxQ5R
rvPBXb398z21ujKvMzOukPND53SzQQVPbUB8CqPCBpXslIK6ZHlZADiXEs3+VD90xV17v+xi
canAJG8h/r/w1UayTki2eRKiU/1YL8ock6+4fTji83sZKfSOdEaziERWHQzfE+ykq1MOwL7Y
WKU6XLlbVEagmmX81rT4jnMW3oniopOshH8o67wRPxYXAKNWw4EQvXRgv/oYGU5+qqaC24Ot
rfA4GtCyOjRzJfXgms1M97ABLJv52QdzJtj9CNh1rOqRa3S88svEYsd45PJowMP5lNTO+nJ4
0l+7xZTHe05G97pi49DvRZVnOmWvhzmyUrDGhuNIMA2hPcgeiqYLmz609n71DTamNQ0hQqrD
rt9Ork0j9vREQU67UFsdwbc4UzLOtUVWMcntjI8WOs1HYlv0VLiAN/hb5YgcFQe5fx0Ui9Df
OWLbLRZ+XuOfV2WU7SsqxAqQYX5p81FELOgQKlhjp1b5ztc/Lp/wnhvLeq9DsCBbohX+unoK
xnmtbOcuuLS9lgdgu6PO/gpdWPcOA0iUXkWSTk+KqBqFh11LECUHkbmwKi+gLzaUx3gd4MIE
/Dq7feAg/5kgc5cqbL1nXr9BoofiEJGJn1Up5RvkNF/MZ6Y2rmDatdIGAg/s8wzvSkwbYw/D
of4yyaNU6uFbPYwS0jSmURG3PTw1lNrrFeYjjNTu4j5KA1F6LL7fkVZdRMV5UkUHoxb1Ww/G
riPP96CYxCxN6YSySFOtt4vS7hL0sWdfq77DmdokEVNzvLvgboETS+iYA6rlc6nUK7ttgX7/
bj2iGmv4AwtKhzmqk8hilrlDyjBZVmUbQRCTcBUPb6T+JPJWJomy/Di2wDgNnUCwC3XwNvzw
Tkn8URj63AA3mRWBZZ0GSVSwcO6h9nfLqcMPCD7BKTiR48JGWTnSvJaOxEnZWT0ntKGg6qov
yR0qqIJlLvMdbS1SFHkG4js6jxPUSSUUC46SZBV9D61xpaDsY4iDrd76dlACsQxDGSa5mVrH
ABJfVhFlME8ZZVLQ6IolZ/O1iYJimmkekkBttyDghDXcRGN9NCIKJY3honQQIN/QfiO4Iz3V
OalxVx1IQ4dBQCnnrLJhsBF4M93d4jpAZyPB3+M8qgL1JzqvvQmuIvM5YgcCboddPXKGBV0o
ktoBllaSRBRPeO3NpH3FNQBvdBCOltWH/Gw3YUIJfqrEqEQBASp1bgITGIMw8/adKsYsy/q8
Mvpx1KgXtYWkIkJomU3saCchQBkcE8KNgK/B7uDHqMy7GRgq6mHO3FkNfTyHoBGRZ241uSoW
bhubGTgNOIfhY4AG9ctTkBIiMSW+oiO1Tn1C8T5W42vrKPQD3sGNjaxMZUY2K8OyecyFcfmG
GWW5XbtLYecZHChGLugQH71bg0vh98IzbqoDn3ouY8NYibsXk23M7WmyyXTk0atajiWzDKQp
j9osOlHBDYiHAbhw3nsc/VJTR+tFk5WQTrdtU4Xbjbyiby86XHuKQaQlgvQsUydTkLloud9j
ahkA+NOW2tslgk5qOgO2o3kTU1Tzq09r6J5BVOn1pplOvWlvG1zbmDt8p6BhsOesIMhxdXxy
32I98I7XqoKWeV7hZ9pWlTvLCl9VuNbKCXRkMqO+N0PlTaHf8kKL1+TFftWILgpO36faVNfc
muZKN/V8No0Lf2SYG2q2bjqE1fIO+ANKIWqk1ZycrNzuMRzBPKZ0KMh8rwThWDtcuBw44KT9
OpssTk5ZfR2bVbNMtrPZjTkpt2y9Xt1tOia1ymJrGFJ4pGjXX0ccA1C9u0W7dS+V8TPSTiMT
/vTw+uqf45UI4s6YlBHRfDakPtYwdcdYpb7VIIO98n8mOlRCXuLd5OfLD/Qyx+dKkksx+evn
2yRIDijsWhlOvj386h3QH55enyd/XSbfL5fPl8//O8GExmZN8eXph3Kd/4ahXB6/f3l2n3/3
lJQ8Ed8evj5+/0oHrkhDvjX9+BQMtXlU5Oxhi2IsZqIqpBYjLLk7WRqRS/psMFDsGb7zv1V5
iDH6Sm3wV4Mrnh7eYFa+TfZPPy+T5OGXegamNw7FAcBJ354/X8zJUjVh1qI8S8aey4cnM9Bv
D2m72OFW1xXC77pPM3TeWyJ7FFrY9y9gnW1O9YIVTogRAM+Jfs29SdePHR4+f728/TP8+fD0
xwve4uAMTV4u//75+HLRe6wm6VUafD4BvHlRKbk/u4ynGoJ9VxRwcmLUPcNAZa6fV4MvonSZ
keiOA0FVwmEJOFbKCI8VZpJntU3GAhS4iNkz1kNRZNIIoj8Drh7x57GIbjK8Sji49gNq4OSr
KSfFFZ5rzHwPV5hxE2ZLBY0lDJ0+kevubKCYKDkL3HXrkeVhATskWdA1OJo9jhdmcj4DozSu
OGIViUUrNxpboyTyVa2+7gK25cZdvx7ZPcdOqYCCBl2UFtGe7PquCgVMVz4y20chRxIsGESi
YFTqaZOiHKk/AmHjRuy4RddW1L2bOZ7tbL6YkzMJqJUZ6t1kKuVsQqJEcSInTtQ1CUdLcAHn
kCJkZH0dfmRBD4l8Z4CHPEBPZF6Rrae8auuxCVBeLnSxXG42ZsI6B6ffZRO4prbvngxcxo4p
o7+XIpkvposRlsgrsd6u3mHoe85qN0RGhwHBjIe7kQmWBS+2DR2k0yRjO/piyBIyUVkyvGhK
4Bt8l/qcBvnYltLRVIIWL+h9+QG2BnJ9GhBouRvJqpM+p5EF0FEiRqYoTzOR3VABjDr4SNwp
s3tozGjTd6s7CRkHOenwZc6irK24mubCVzTX10W42e6mm8V0ZLx0QDXcvuwTO7mPRalYewoL
AMkkpUpPD+uq9qTQUbryOYn2eaWyOttg/5DSbwL8vOFkUglNpLLduFMgQmUuH10ctT2490e2
6QNv80JQAhI2poJKIeGf4555C9Aj2luMlIydvkBdynh0FEGpImpb8yTyEytLkXsbz8jDOrVs
sYwqff7aiaaqS0dJ0Bfdu5MNPQOdI4qij2ruGoch0ZwA/85XsyZwuxVLwfGPxWo6toQ9yXI9
XboziQblFlZAxVgYHSCPWS7xAs84WRZ//3p9/PTwpI8cNJMXsfEOIesiijU8Ekd73CqD6jGo
pTtvxWwxdRQkfc6gYHQ4wA5H+LpQZNoxZicSMsioTyjJjuBQWnUNPyew3TG1zeq01a5UEuiu
E3t5efzx9+UFpvZq/7LndYcLbjvbK3Bni6lJ71LVgxKRdp97W4RjBWiYFeUDYemxK20fXAG6
GPvUZFY44Xx6KNSkjCouR2KaQjLJISIDKIRd+OacGsmTIhJ7Vj2WhqvVYq0rsRqGrWs+39DR
CAf8diwC1j4/OHpdtNfhPHwGGGx45jlO+fsR5iD9524kbdy5IF+iq3VF3zx5EpWK32N/9eis
R18VIrpOCtEG9h1GfaJMZGlqTWNxKmV0D9tYSnWqww5nrKs5IuVtkOT8QI5RhUmrGR0AF0p2
IQC0xUPFXNNh1961IGNhT2QgUIYxp7RpxJ0CaZiVVftil7YuUIZw1szjlkt3oDzY0Kk/AHdU
4YCdSVWIOqA99xFZy5jbrdcwArEGBpi6FaE/DPpMFKMD5PexfexXY+xeEo4XS6uDVShKMfki
9YofrzrsS1p1faDDxhIwHdHXwQQlbqkZqi/xCfenbB+F/faEDtrefqSKGdmfrg4CiGCsms1H
oqRrArlY06nYdH94ul7MDb/oK3S1dfqu3NWnDungw243i27bS0oaDti7eePXv57O/DHqsPXj
Qyw4u1staAGoCEY8tXWjmCVo6fYEgKZDeAdcrZqmv0jzcWYIlCtwQQDXftXb1dQvbucq6oFb
M5j+dQJW/sR18JvjR5q1+aZAQd0scQPQmxV8qWCTkSlfNFuFsA/dWKekWqzubix0xRmGs79B
kPDV3Yx81qY5qc9w5vPw6v98vutTi403eKjC+Zrc9RVayMVslyxmd+5Udoh5M0RNvH776q7g
r6fH7//6baYD0Jb7YNI93vj5HUOuEE6Ok9+ubga/O9IjQG3ZXaYht5Y15KSB5XOAGLPE7Gb1
8vj1qy+juntU6c1jf8HqOaVTRHAilnFejVYCJy9KOFs0cQS7bhCZDi4WngzfYVHwon6vEcYr
cRTVebSOW1/dMJru7lsthJrgxx9vaKp/nbzpWb4uenZ5+/L49IZxdlTglslvuBhvDy9fL2+/
m5Z9e9LhzCjx/faNr6Yf9Fg8XouqYJngo4MGZZMOf4RWX0yRiuE3jMOVgP9nsENnlv54hSrm
wwSZRJUulW5ipJ6oKfp4MXikkmo7r+lnDV7zkXWJaKDVG8oU/yrYXpCpfg1qFobdglATYKAH
5ZmkS6uYG3ciLsYN5GngxXIqTpa6kzRLg4DkEaN8Rp4uzfngZZjSfTvq5/vFcZRCFLnpju9i
WvPC10PeGPQVD1tYxUgiWRYjjAMYSoM3G5BW1jEMwVo20Uh1QdZULXkPG4WMt7BvoruL5GVt
XJUrlOfWU1a8tR7oI6BXR4e2ERhzUIRJh23EAqbKY27X0wH7h43/eHn7NP2HSeCdQBCYHVM7
AJKOnVrBFtoHUzG2DSwhsmqHjZm8PsDx8ZDbhEKM5UdQHSuPnk1o8PbCrngqdl+K0rJ7HAuC
1ceIdMK7kjRbM0FrDw+l/TjVhrcchHNdnulymyXVGY1pTyHFmQbR2srp1cHjc7pdrRdUvX6u
Lo8EVKj13Uh6QYPGzY9F0agkWDcG0KdncsFyxRcbO+lQhxIymc2nZLIxi2JOTEuHWfvr0AB8
5Rco+G67svIumYjpekH1UOEWpNXaIqHXR6G2tIY8TOxyVpHWnp4guF/MD8Rw+pSn/sdEZGii
iFQWpptEEs6Kd1NKxegpduliZp4xh0WHT2s2pWYUMKvt7Wax8EhS4p4kShfT+W2OLTEh2cKT
KhJUiFGpouIK4SZSDO9vkR6DQ78rjUK5sC42bXgbnyx/ToNF5rM5IW3KI4zwjpPfjcbpKsdd
XOzeepXwNB/bYTpxNN+uSSm4ms1I6bdaEV8XirXtqt2xVCRnsrr1djUiNNdb+iW5QbKZb29z
CtIs/wua7S0aPQb1dBbOW+9M22ZJLloo58spHURrIFEn9lu1u4k0+w+1Osw2Fdv6058utxW1
jAhfEDUhfHVH1CPT9ZweWHC/3JJpcgd2LVbcypDQwZGLp35TH8/ZfVr039/z9z/wdHfz0+tj
NhCd21Xwl5P12Zdz2fHWmhLZFvuRbRZ2+LrhlaWOof7eN2i41uNpm+gDaKedv/Z1oq4wV402
MMcepWPkpcwP7IWab5TtrcBeCBtS9MYsy6LEbtnyfEUjb8mAOfbWISE8tawRSG0YjHcS3WRS
S5+vMHYjwNaGRU+lgIwR2qb71Lq3uaKomTqpBv20aRp+o4R2gh7miT89YkYNKzCxPGe8rZrW
afraSMpIHRbgQb3zHelVfXj9dx23PCmoMbl1091bX2FxuFxutsZHI1LsHReitV8+VbP1wYxV
goGOrbdMtflWHX60XOxsQNF9WqK8t25oMJsMpufRKOpuB3PKRNyuDQ5dPDeDDakmMEbN8PEa
iCwyUxIhRLFPEvB2rwM0WP2xkKrwakYKUtVoWVuJ4zCHzA6E2xWEH0BLpBbCcKk2FZaNstol
su8Dr7BrwMCh+x0ywOADo1nSFIl6/U+Mqe9HaqfAMcB9/L4bTz8+vTy/Pn95m8S/flxe/jhO
vv68vL5RMbpl5VlOBlx8Am0pc2/YdOmn50//msjnny+fyEBxKRNJkNM6q8jTtKZyZ+nT6uXb
89sFk4GQkjbCd1W4c/sFf3x7/UqWKUCgdfPn649Q02/y1+vb5f8be7bmtnGd/4qnT+fMnG1j
x7k95EGWaFu1bqEk28mLJnW9rWcbu2M738n++w8gdQFJyHtmdic1AFK8gCBAgsDbIN0P/J+7
3/8enPCA98/dhlz+6fDLb78OPwCcH3w7WvrkeHj9vjm8cbhknX2ZHrfb0+b113bwdDiGTxzZ
7nO85uBP76+/MLGOheumMPUtP0WFXe9+7fYfVqG6SJOsyyeXz5lKizmV4qmVnvrnYHaA0vuD
kTRIo6pZuqxvZqs00WdxZN8gRJmQ+A4CPWh6CND5KPeWdPMi6DaHvLEX0PJensMKd0V23YnA
Hbiux5VYWme0NYlYF353Oiw+zpvDvnkd4dwMa+ImU3n7mRrcZMlm10RHc33dk9O7I3ESVLM0
92POzK0panPzzQLL4v7h7prs6TU8j29uaLrrGtw44ZBrZFifZqSgkD2GTwpycAY/QG0wVAME
aSeEgvVUQDzIplmWJjOzoiJNSegGRQesZ9HgKa/pSbqMRaU9idRMw8867LA7zUjqew9Dfz0e
mRUUeTgcE60dYVNvIYxaD5huhak0RGpQBm4odR+rGfd+8KM9wyNOFbHaR6cFFxcBserulezg
CFP3kfdtE1AhwLQCzBNN+YT++kS9kaBC4FNBb10l8nFIOCDDZwYTNtyGFOgDBz+cVMQaU4Td
TVlb4ZR5QpTNnwf5+7eTkuRdM2ttxHQpm4BSsUgTlah2pFDUGWX+jF5M1eg+iZUPHLvQDKrS
yrhqUMVels1T2KzjIL69Zb0xkEzpwtrtzm4NQYWsgwzQNPG+sSl2eUz3ORz12ExK7PpmFuJu
F/cn7kBvj3gc8brf4POX/e58OHJ6hfRctcTbfz8edt+72YHdQqb0jXANqCYhbCYSOMfvxTVm
1KdvO7yf+8/P/9b/+L/9d/2vT/21dklAus3GI2fH6iC9WQTz1eB8fN3gMzBnGeSFGQ6oiLVL
Fu+SBNg8LSVm6dSPTpjZJETMRaq2sQojXkYD63GzadGznmI5GxCoRQNjud+vMuo83kIt+3Wa
zcheUluXGc6AY9Y5SOXlx7QL6wRLUjYl/KVxdaTQOqA8OwcKH0w5z/ipGS4efjbvqyvM/s2X
qHT4gGYbNErXqHnJ+cAhQW540ivIRGDAZLKhYmgPUK/WnROAStz1+9f2w/Cf7RZtiXnCZ3cP
I86sRqzdVoShXcHJlrhKs4xOVB72qPV5FMaWkNfBpXeg9Gq5TKOQ52gHeJmlKI0qNlodYK7R
a/bNAoD4yjEFgB8ZKotC5cIvpXHbDZixFStPgUoMbZRK9X3+4+P+b42tb5lVi8SXz5kdFdGk
6Xun93USGK7++LuXGBoRT3zPnwu6heLdKGCmxp7SgoGYdbVrCdQJaZhMDXWW1FqtvaLg32t9
VQQsat2Pmk1zmwNaHAYy7GGPSeH2soF108bW2pKpwVCSbIYzeZlYlqATewnQqbtOvsGaum/C
NBaMFiENR5juG2KKvhLhlHvnkISRHg0ibEfOGCgQxinlh60uoWfRULBGF4bOouFYX+H0gPZM
ZlOaXx8GkfLQCZOvwlePiOhn0CmODaLes1hR5adD1kC0G3FlhuYPwaZFcEgtDDRw0bnuuQdv
dImC2/QKnfGqQezWqzDa84v213OLdIepZVpwAh+TtE7zsSE9NcwATZUQJABfh7Xqlh/wYuQ9
WxOqN57XzU8jw0TeCCIyVQp0IRdVQzEP8yKdSY8N9l7T2GpGDU4nyCRVFJpvzRXSeZuhWx78
IdP4S7AM1Dbl7FJhnj6A0m4tq69pFLLP7V9C6xV1MK26ZGJBmn+ZesWXpOA/NlXrlGz9OZQw
IEubBH83TmyYribzZuJxfH3H4cMUD43BqHr8tDsd7u9vHv4YfuIIy2JKbNikcMSKAvUHr1do
uXIth9P2/fth8CfXdyaMrQIteqImKCRahgVZ4AqIQ4BxY0LtAktRYLBGgRRkXS6ETOiEWZ4w
RZyZbVKAf9hRNI2zMzaTKuJpUPlSGMGj9R890PRVQZjrawV0BxIxv3ASUWDo0z66hore+8CP
NvkaZYauzihv+akCfuI/TInurrk8QSbJ3Y3ZhBZzf3PVizFUIAt380+fvL+566v49qq/4lsu
8YBFMuqt+PpCxVyKRYvk5kJxzl/HIiEpbw3Mw/VtT4sfekf/4bqvlw/jh/5m3vHX4kgEAhKZ
reKchIxKhqPeVgFqaKLUjZnZ7+ZDQx5sHJJQBHdmSvFju9sNoo8XG7w1+g34rq8hD/9Q3/Ca
r3DY28Ihf66MJIs0vK84cdUiS/NreM8KO6cZWKBB+AJsVv7crCMBRbuU6WUimXoFn2epJXmW
YRTR/A4NZuaJyPQhaDFSCPaFUY0PfXyBHHBFw6QMuY3fGJKQvoJvMEUpFyF9j4QItdPSjGCR
672Zbzfvx935b/fSGUM7GBumjuAGI4soCXppj11Sl+V3LwyJKAKHoNGYtXJbE9CN9LkK5pj5
SAeppXtqbSDgLXOuznULGfqGhtaQcMdhNYpuy3NviVF6ZSASoX3EMQVYpeK92y9fHDJOrQQj
APVtfexmNAwzGviqLIbI0pkdONeDWnXq+uoRlrSxj59avWudSm18UM0bRzhttEb/+Pfv82Gw
wehVba7fjgk0MfR95mUk9psBHrlw4QUs0CWdRAtfBSjqx7iF5sbTOwJ0SSU1nzoYS9gqLU7T
e1vi9bV+kWUu9SLL3Br8NGZIZe45sMDttPAZIAgJ2MjcNtVwQ+WpUciCDOOZBfF5DgYb0ocS
TvWz6XB0H5eRg0jKiAe63UZV86kUpXAw6o8hNZvGaUx/68EcnQvqKlPD6RNd7/38c7s/7zav
5+33gdhvcFmAPBz8d4cp60+nw2anUMHr+dVZHj59vNCMBgMDCwn+G11lafQ8vL66YSbCE7Mw
78vMZdHwBgIlGt3webmboUtBHN+O+asbSjPkn5jXJLl4CpcMa869MAnbcKwT5dOBIc1O7gBO
3OnxaQzmBla4XO0zrCh8t2wkVw4sww9bkrFaMxXCBrSSXutmOH89/Wy7Yo+Yz/uPNWIq9ty+
rrl2LLVDnDbudz+2p7M7btK/HjFDh2CnPoAWw6sgnLq8ygrUC1waB5yl0SJvXNET3Jh5URp4
CFwiIvzLLG0ZB9ZScPE06W0HBsZnmg2I69ElRp57Q6eJCGTbDgj9GQd8M3QlG4CvmSblPTnj
Ghk1k8MH/va3kZgZfM09eVLBOtyF5gmXtwGGsZoccFJOQoZa+mMHCDrGahoyPNQgugjFzmrx
YgEqNne22FLkxaXyecEZRwTtzlHADMNU/WW+sJh7L+wTxWYKvSj3qGuyJe25WRdsoN0WKzPM
NuguiDzmbd92R+P9TRv0KsW5cJnl8Pb7uD2dYL9zGAZUosg8S6ql6UvqrLv7scv20cvYoQPY
3F1OL3nRxkqQr/vvh7dB8v72bXsczLb77fH1zDUPn79WfsZpeYGczCx3S4qp5bA9Rhrn5Xyq
A0rkswdwhML57tcQ8+QIdEbJnh2sfuXKaNkNolF7Od1N4fNaGb3U9JZYsu9ZbSqlydvzh+1o
7u0sjLvF4v32PJwm1d3DzdqpysCyyjpSgPQdr4n/xHxVp6TuMM4UQTHXJ5Oj8n0w2Lmbjfw5
xhiDYKCh+YlBbboWEGRWTqKaJi8nJtn65uqh8gXafyHYjgJTsudUM88Wfn4HXJrnePTEY1UI
L52ohlyTz9DqzIS+KFIXefiFkHni42+PZ3Q3Bf31pMIPnHY/9q/nd7D4Nj+3m792+x8k/Ewa
lBihJ1RG9+OnDRQ+fcESQFb9tf378+/tW2tf6gNhatVL477KxefEOq2xYl2go0U3Sk55h0Kn
XRtfPdwaVn6aBJ58tpvDmf263kmkYgXkRW/LOwrF9Orup+vAJEzweyo29bSRXdHu2/H1+Pfg
eHg/7/bGi1gvDG6rjCRsm4SFFOg3Tq/V1SzSaLKNl1leyMTPnqupVB5blFMoSSSSHmwi8Pol
pGf1rQebH7YeE+0a8WFxgMyiq9Yf3poUrkrpV2FRVoYV7V+PrJ+Mi1QNh8UkJs/35pommL4d
UJF4cuUVvGuOppiwB2yAuzX2KX9s7r4+d/0QhRNXAffJo9b12lSstdBiOw97J+o4OmmWAQ2E
C3+BT6MENrdmBXU2bNipu5rfKJTUTOBjlhp2bKZ9SM22D/ZyhlyBOfr1C4Lt39X6/taBKY/C
zKUNjWdBNdCjofE7WDEv44mDyEH8uvVO/K8OrD45sJYQPSCsUSpm/RJjocIeQ3ePPPVDWOdL
Ac2RxpMdT3kuidgGqXjBxvpEuPFCKhEYaFu/u4pUJj4Lp15JeVll5ZZtXnGZHgr5LNJdIoRP
VCpFqRH3EX+3jM0eYtd+IPawqaAIdPIiWVaWr5EfvVSFR436VAamzRgEnD4Wyic0ZEm74yw0
4irAj2lAVmKq0irNQNLTZ/vTNCncIA0IzS2i+497B0KFpgLdfqhXsZ17AgLvPoacWa1wmfBk
xNTtwUAkDDwOk7Aaf9w6H4Evs8nWETe8+hjaFeVlUrffrAfgw9HHiPNoy9HvNyVD3qaiAYw6
FSJcBgLZ4GrMcqWiUE7wOVWXsanA/ZkKTrXZLrbH/fbX4Odro8Yo6O/jbn/+Sz3E/v62Pf1w
Lzd0Tlr1jJLylE4dHGGevqWI2vPgu16KpzIUxeO45a1akXNqGBM+rZPe8IF60Rbb/dr+cd69
1erZSfVjo+FH0pWuRhX9BBVy3gswUYe2cYlmdI9PnsqgXK08mTzeDx9G9IpChhkILHwC0OMh
IMFGUF8AKpagTEqVAkDFjObrUDev6Srpuf6wo5rO4ZPAHro7RD4pwly7cqF7Q+zpOJOdimhg
VIdVugnK3vXnUvSRXglvgTdfPTGjVIo+1BXlExEwHbC9m9Fz8Ajri6Oy0wfoFqD3iIgaTo+3
bwfQKoPtt/cfPwyVXY0dqMiYU9E8ItH1IF4Jcs7RRZkdaZiniaH+mvAqSWt/RFq7RYP5xNi5
7VqBToe986vdq3J7FGowXflWzQ3F1LLjeshUoDKeC01CvIv4H8ikXyp+/B9IgZGAjzDzalJc
4PSGvF64jQwhb17yqGyCHrGujQqvnOGourAUDWeBfhEBZ7tj2WAudAaq9RdgYFg5bQyaZexW
vYzViTbu6xdqByrJZ1Ru8dkMNFw2rIIm0Y/EQB6GBdt71QH0N5xG6coRHjzS9/X+5SV+ulSZ
TYD1fafwPJTd80ZcqYPosPnr/beW4fPX/Q/raeW0wNvZMoMKCpjzlGcKRFVzfIBTeLkh77R0
aVGKudMSeGV01dqYaVqAZuvFhCyrw7z9E0kFumspHluhtXoCkQmCM0gNWYGUIFZTQ380wG1F
Xd8x2dgFNz+Fd/w5jcKaE0US8PsAjsVCiEwLNm2b4xVUK0IH/zr93u3xWur0n8Hb+3n7sYV/
bM+bz58/0yiL6LyrqpwpFcRWAjMJ/OL66qpi2AG7XajHl4VYC0fWNe+hbXgP+WqlMbDc01Xm
UXVfE6gmWDo8wgKRcaQabC24JmZZBCPZu+TqzutTyFpQm6EisSXA3hiGvi+me9cdxzrWCw4W
l1r5ZENHDlDIDqb2dOg0qB14zA58os1uRthpQdvbK/i/DtDujFbIbURZWPWkI6ynd+aWUS7X
obUhGRS+hE4kBSgIrasvbDmsIqAYEZBk4MiQk3MI2LLw2aplyCLYKtApeYiTfQnmESue+l8j
1Pz6VGtVUulT7mBoP3lQZfBglo9p2YxXJaRMZee4z+m0jmt/iwijPPIM6xVhWkdxVCWTJvYW
qMc8laIni5SiCtNGFLMNA4opsjptk9FYRufVX1fRstXH+8t2qwJPhwvTyx8PhxL/mU8EjtkQ
VEGakxh3zmmZ6LovY2fSy+Y8TWP2TK3lqivQrY2VZgQdROveIkFvbFzVihK0TsPw1sV9U3Yq
g1GnMuiA6iW+ojeENfwpkO/0o3CnB6QqxR8rIDSNViHirMDDht72Gd+rAWQz6finf5nhQQ2K
2P5dU8L4of2Myxfrx/sv3k3clAhak1QRNPFoRZaZ/Rom9zAMAyem1PQoE38xC8jBivvrQk40
hXYeO1Hkwqgt6FLLurYVYhfieZJ6lI0QivMcJiW+sActBy/i5qAItbpSe1BRTkDV0zZP+KJk
QlePwtG2u8RMHzSRF4WzJMbLXer2jxc8Cs9dQzVNApGIcXTCXHOgID3TLo81Ba0ZI+lQHGcB
Zn7r17VSQtU4i8GTHqVmgXIACsYtOcjAkiLGaOBaF2OnDt2qQa7CorKObyi/Y4Ia0IG5w8Pu
sUKOiZELdXx5iQ5bhesQdWt8Iru4sFrWMbtxaF2Prv8JppVrklbQ7nsyerbfC1mIanxlRB+3
0TAtuB56psaqCF/c5xhKGNh9++ft1dX1Vcu89cYTx6XZlqwIShUh7f8BQvK28quvAQA=

--0F1p//8PRICkK4MW--
