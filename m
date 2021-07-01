Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4G36WDAMGQEHTATV7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AD63B8E24
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 09:25:38 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id k6-20020a1709027606b0290104f319bb01sf2337675pll.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 00:25:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625124336; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nva1Q/kXjeDQMnjLBVZ4FgZWGU+LpwNDzDXtXE2M7LkI4hQ/hqtZhtlqsLnkednEzf
         KIpzfuY4i+fX+Mi7bWrchW6Gioc+38ddDdMHMs9FbNMp6SGwlJP+59oo02Yk7QrcLMyP
         N+omJ5XjQfXRKriaL6bau16xEVSVyxBM/Dt5B23Oj5xYuvowQcLWognmqR6dTW9SeOUd
         1gzM5t+nchCwnwKWlkgeX/JAc56crhDyokUnu5GRtEUWKUp7huAoQU3buRUEpOb6SdNR
         WgmdTixKbisoiAbkr8EOdcwAF2nAaN155arRDExByuXGhDRu8WXBI3ACBymWMJXf47hY
         Eelw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ET72Gh5uTyUHgWfGSlPmmDRWCu1LYkXmRcthFSe7V3w=;
        b=fkz3sOGBKTCwIuwQ6zvD3MNxZ7SXWHD08VgdRBstAZdLVQ6Llbqh8Hrl5cKqdCqnS8
         P4NoHkRYbHOqRboxcQXKEO5H2amMhMNR9H/nqc0I4PPF1MYm7Qufcvh6i4+zPs53wrO4
         +rY9wnAlSl13B+3AGo+3unPn6Z56w/WA8NdVfaXE/W8qpc4ynyTmsXtzPI085odrDICd
         Uw9uZ2DQ/bU/UTovCx5Trrt4bC4G49fCIGakIeWBAxf6Kege7G0v2N9FvxBZDu3cwSbp
         9dRGH3V+UU7ByfLNeX3roleHKcMoFLgJesBU0wguLqg0tW9OwfbGdgOItVG7Bk0GUhPX
         KZ8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ET72Gh5uTyUHgWfGSlPmmDRWCu1LYkXmRcthFSe7V3w=;
        b=nVDEDCaCRsrWRAJBkzr134v36uh+vuP9gUYnxsg+RPatTKN9aiybS0m0J98ipEip2p
         JQu/8xX+CCf+av4AS2JNaXINMHgE3cFXua7TFPWEcegu01TFRvbcwmY99gpDD/4XsdZ3
         wkkfycZSD/RqUp/p5G6fEKw8SHxXbi2kKL5EdgPW95yv5gI68kwLTR8UNKqnCR7HsJmd
         FUqF4UiZLn9TD5kn+2TUCWtmLu2Omb+EDmO0PcxxbUiSmAKtDRuIbNgkbPBoSFnOyyi5
         TCbtjVLqXiPTiv4MllbPrsSc56sjBGwI89dmqVBI8CBtLeIez1zACI2OHNYSisKOD1Jq
         p4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ET72Gh5uTyUHgWfGSlPmmDRWCu1LYkXmRcthFSe7V3w=;
        b=CqmuwfvpX/ZbzH4h0q4kgFZHSM25sPJCLYT+XTECcgB6axGXWtj+ynQzbeWFeWzMi8
         4rk57Ib35+0pdiaS/NFKm61s6JBNVkEWSJbSye85duz/0apHMLZKyeamXh5Ter2oqFNn
         umH0eWu/IAaMgr+EBe2wEczMRzFuqqiIwdv7rDLkEOi5CIzOCsBS+QGUrcz0zPOnladp
         Uk7cXz7pZrM4EJj9KxQqYm46d8MFhVoXUoPD4J2NbCd7xP8FU8zRIda4mawZXPghn9O/
         GNVK42Ohjy3z1HndQAXugFWeWBgMlE8f+Zpz1j2svAwek5vZJTKbGNKzBiBDT2aZKmX1
         29yA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tL/th9kPBJxHAc4Ix0pdyJWSlWLuzs4w/yJZijtcQf8clICt/
	2geFV3JxgD1TJR7Kzpb5M7g=
X-Google-Smtp-Source: ABdhPJwdmjRfKFxXqZSDFED0Ya9gsfcTMLGlwezKdvMSMqeaFMGNpJGWqddedP9KlIBzKMGM3WyUwA==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr37549559pgp.259.1625124336354;
        Thu, 01 Jul 2021 00:25:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:67cc:: with SMTP id b12ls2663446pgs.10.gmail; Thu, 01
 Jul 2021 00:25:35 -0700 (PDT)
X-Received: by 2002:a63:5903:: with SMTP id n3mr13693965pgb.104.1625124335495;
        Thu, 01 Jul 2021 00:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625124335; cv=none;
        d=google.com; s=arc-20160816;
        b=KaB2JvtiXs9QUI5NoY14sPGxfnd0kHoN4eceUuYyi9qyJFQzrzTMyA8cqOd1GE5eKO
         AYrdQl7xjqlEK/fBEZl03FzZ+zY+u0Yr4xZ4Ckj1vFUb81H3L5T2ZDJwW2AIea4xiFrO
         h5VUxzJad2ayIjmVbOay4bs01thYG7TATlGAFo2P/T1T3g/fbbkrsWXhDkDWtr2diVaI
         3fJhT/dviB4SAzgHBfFKVpLhiM2LxLwmFbTA5QtMl5cG+/MCGNgKGXSF+9GbWsQ+u0vu
         LRgPc4zICoHuRH1Mp8KDu3xZRY+25i6/Kac6hLUofyvwXVqnwhmP0yLD8IQ5BiXn4hcG
         78OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=bSJvjA7WpF1bXihdca+Kvdlhgq0rD3C2NRggL5wExbI=;
        b=WBMGoLGy0cW8xWn/eWHf3MPcmc/GwBKK+lI5a/0BC10XGy2aF1Yg0daw0KY2h9ADjo
         QiurA4dRy5s0JOtEq2yMRInCwXzqgX5aoXvZwX3QgaT7DRykpn0ZgaPhG0fIBOZNz3yn
         hlpeCR8maq42LjGd2LYDvlBOvfB/Ca+cKoetof24RzwEhTf1pI09UxnIHnhv0GsjRLbg
         dX5/vwjFg7pt++cKYOBFMJjFq8KEmD7JJie9OJQEGT8iI7r/MIF6Z6FvPzeU979h9U7q
         zepE/Hg1mW6oWAlM8vKdKLDxceTLfktGgQPSMTK6xYvHQM2U93/FcHqPi2OZCogfKUAq
         eAAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id t1si1125685pgj.4.2021.07.01.00.25.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 00:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="206664621"
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; 
   d="gz'50?scan'50,208,50";a="206664621"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2021 00:25:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; 
   d="gz'50?scan'50,208,50";a="457547479"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2021 00:25:30 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lyr4j-000ANh-A5; Thu, 01 Jul 2021 07:25:29 +0000
Date: Thu, 1 Jul 2021 15:25:24 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2267:16: warning:
 taking address of packed member 'hw_tx_obj' of class or structure
 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer
 value
Message-ID: <202107011516.MsGsARqy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Marc,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   dbe69e43372212527abf48609aba7fc39a6daa27
commit: eb79a267c9b3e608e7762a1b221428f37ace3aa3 can: mcp251xfd: rename all remaining occurrence to mcp251xfd
date:   9 months ago
config: mips-buildonly-randconfig-r005-20210630 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d21d5472501460933e78aead04cf59579025ba4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=eb79a267c9b3e608e7762a1b221428f37ace3aa3
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout eb79a267c9b3e608e7762a1b221428f37ace3aa3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:19:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:26:
   In file included from drivers/net/can/spi/mcp251xfd/mcp251xfd.h:14:
   In file included from include/linux/can/dev.h:21:
   In file included from include/linux/can/skb.h:17:
   In file included from include/net/sock.h:61:
   include/linux/poll.h:142:27: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                           ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   include/linux/poll.h:142:39: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                                       ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
>> drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2267:16: warning: taking address of packed member 'hw_tx_obj' of class or structure 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   hw_tx_obj = &load_buf->crc.hw_tx_obj;
                                ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2269:16: warning: taking address of packed member 'hw_tx_obj' of class or structure 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   hw_tx_obj = &load_buf->nocrc.hw_tx_obj;
                                ^~~~~~~~~~~~~~~~~~~~~~~~~
   4 warnings and 1 error generated.


vim +2267 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c

55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2214  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2215  static void
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2216  mcp251xfd_tx_obj_from_skb(const struct mcp251xfd_priv *priv,
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2217  			  struct mcp251xfd_tx_obj *tx_obj,
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2218  			  const struct sk_buff *skb,
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2219  			  unsigned int seq)
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2220  {
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2221  	const struct canfd_frame *cfd = (struct canfd_frame *)skb->data;
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2222  	struct mcp251xfd_hw_tx_obj_raw *hw_tx_obj;
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2223  	union mcp251xfd_tx_obj_load_buf *load_buf;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2224  	u8 dlc;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2225  	u32 id, flags;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2226  	int offset, len;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2227  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2228  	if (cfd->can_id & CAN_EFF_FLAG) {
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2229  		u32 sid, eid;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2230  
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2231  		sid = FIELD_GET(MCP251XFD_REG_FRAME_EFF_SID_MASK, cfd->can_id);
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2232  		eid = FIELD_GET(MCP251XFD_REG_FRAME_EFF_EID_MASK, cfd->can_id);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2233  
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2234  		id = FIELD_PREP(MCP251XFD_OBJ_ID_EID_MASK, eid) |
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2235  			FIELD_PREP(MCP251XFD_OBJ_ID_SID_MASK, sid);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2236  
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2237  		flags = MCP251XFD_OBJ_FLAGS_IDE;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2238  	} else {
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2239  		id = FIELD_PREP(MCP251XFD_OBJ_ID_SID_MASK, cfd->can_id);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2240  		flags = 0;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2241  	}
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2242  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2243  	/* Use the MCP2518FD mask even on the MCP2517FD. It doesn't
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2244  	 * harm, only the lower 7 bits will be transferred into the
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2245  	 * TEF object.
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2246  	 */
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2247  	dlc = can_len2dlc(cfd->len);
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2248  	flags |= FIELD_PREP(MCP251XFD_OBJ_FLAGS_SEQ_MCP2518FD_MASK, seq) |
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2249  		FIELD_PREP(MCP251XFD_OBJ_FLAGS_DLC, dlc);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2250  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2251  	if (cfd->can_id & CAN_RTR_FLAG)
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2252  		flags |= MCP251XFD_OBJ_FLAGS_RTR;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2253  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2254  	/* CANFD */
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2255  	if (can_is_canfd_skb(skb)) {
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2256  		if (cfd->flags & CANFD_ESI)
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2257  			flags |= MCP251XFD_OBJ_FLAGS_ESI;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2258  
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2259  		flags |= MCP251XFD_OBJ_FLAGS_FDF;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2260  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2261  		if (cfd->flags & CANFD_BRS)
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2262  			flags |= MCP251XFD_OBJ_FLAGS_BRS;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2263  	}
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2264  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2265  	load_buf = &tx_obj->buf;
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2266  	if (priv->devtype_data.quirks & MCP251XFD_QUIRK_CRC_TX)
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18 @2267  		hw_tx_obj = &load_buf->crc.hw_tx_obj;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2268  	else
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2269  		hw_tx_obj = &load_buf->nocrc.hw_tx_obj;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2270  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2271  	put_unaligned_le32(id, &hw_tx_obj->id);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2272  	put_unaligned_le32(flags, &hw_tx_obj->flags);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2273  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2274  	/* Clear data at end of CAN frame */
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2275  	offset = round_down(cfd->len, sizeof(u32));
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2276  	len = round_up(can_dlc2len(dlc), sizeof(u32)) - offset;
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2277  	if (MCP251XFD_SANITIZE_CAN && len)
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2278  		memset(hw_tx_obj->data + offset, 0x0, len);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2279  	memcpy(hw_tx_obj->data, cfd->data, cfd->len);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2280  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2281  	/* Number of bytes to be written into the RAM of the controller */
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2282  	len = sizeof(hw_tx_obj->id) + sizeof(hw_tx_obj->flags);
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2283  	if (MCP251XFD_SANITIZE_CAN)
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2284  		len += round_up(can_dlc2len(dlc), sizeof(u32));
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2285  	else
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2286  		len += round_up(cfd->len, sizeof(u32));
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2287  
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2288  	if (priv->devtype_data.quirks & MCP251XFD_QUIRK_CRC_TX) {
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2289  		u16 crc;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2290  
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2291  		mcp251xfd_spi_cmd_crc_set_len_in_ram(&load_buf->crc.cmd,
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2292  						     len);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2293  		/* CRC */
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2294  		len += sizeof(load_buf->crc.cmd);
eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2295  		crc = mcp251xfd_crc16_compute(&load_buf->crc, len);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2296  		put_unaligned_be16(crc, (void *)load_buf + len);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2297  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2298  		/* Total length */
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2299  		len += sizeof(load_buf->crc.crc);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2300  	} else {
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2301  		len += sizeof(load_buf->nocrc.cmd);
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2302  	}
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2303  
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2304  	tx_obj->xfer[0].len = len;
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2305  }
55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2306  

:::::: The code at line 2267 was first introduced by commit
:::::: 55e5b97f003e85e66babb55f357627d52081a264 can: mcp25xxfd: add driver for Microchip MCP25xxFD SPI CAN

:::::: TO: Marc Kleine-Budde <mkl@pengutronix.de>
:::::: CC: Marc Kleine-Budde <mkl@pengutronix.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107011516.MsGsARqy-lkp%40intel.com.

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--BOKacYhQ+x31HxR3--
