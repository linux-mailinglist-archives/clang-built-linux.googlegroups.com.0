Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKUM7SBAMGQEQEWF4RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id EEED034B605
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 11:17:15 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id c21sf6091760oto.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 03:17:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616840234; cv=pass;
        d=google.com; s=arc-20160816;
        b=xkYbV0kJFMUOiqEqpuW4VzxliOizHgBBZJAahhXrqMkIJY/fEQ9SwfVTHySmU61xNc
         NiGIZK03mP6Wq/sS+IMboZbKZakodNmJHgKNdGNtJr0/1BtXmmHCaAAkkUa0BCET8ntK
         ZeeUu82uAyqdT/YPNFmSbEBx70Fxg57pwxIs1DjDoQTN8lnQGh1NHJRf7ogYKO/3j+Mq
         U+ZCoJ0rmMItym3MBxsVH24ZoN7WsoNaOG3xhzp7R8IMIM6uNa8x+uPdoeQR/J8YyfJO
         L7WTOpTf56kEYzJaFGFDYz0TdfzN8wjv64J5UiPxyixjk9sqw7jGOr5rmQN5w3LsJEkb
         HW9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=KMNFih6pcg1GwlbZvVrIhffteRsNCMsmBXP8FZ9zAa8=;
        b=W2r6/EFIncLLA6pQwJBc+Abbk9rT37mNHFXvSbNPx7apGz9StLxQRHCm3IrR8klFqC
         Ce2yBSWdOs6hjy79Ty2szQeT68bAP15VMbFxWnQD6jk4goYH2fUrjomnaAZgLcApLct1
         6YnctgE3qmZm8dPokOwAzdX3wii0Aa+15X7WE8wp2/dylCN0KgnjIE6ni/QV3uvXjy65
         uOR8tmIL7KkyCmIQVDxpSyuPFdQZFiECuyoTj9tP2xlnKNDdoAC4im6FukdDg/dflzA/
         gKb9+0S971DTBbDOerp6cAWoAu8X2ivq4SaDU99T5wfTmvEwq5ikHIIod7juKMnTgJk6
         L7PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KMNFih6pcg1GwlbZvVrIhffteRsNCMsmBXP8FZ9zAa8=;
        b=EsPfNa5eRcHJTLAHhdoQYQwMRKVoXAovXAxVnw5MB2KxEPcopGyeRWIuon2ONXXO9g
         jwsm5uC0jZ9PBpzgvfhIqHcCXUzmOsRgJN+XjfARg5cuNap/iaJBNwxZxyBQl2FNQZQ1
         0CGIjq/HK6nly5mQaaBervXXlflHn5ImdIdkFCx7kzl7NGpkrmUBH1y6O8d9vCD29Dzu
         ZcZGsKJ3spbAuNuBQ2wvliwasrwzCHoAyaJ2gSJQXTLytXJRLAguicXNaSHHXhHKFgiO
         81dhIJ7gG0ARndkOoYIUtMfNI4NQgyKBp9SRvB4fz3gnrACvNgR4tsBq9sXLSsoU3XVi
         1r5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KMNFih6pcg1GwlbZvVrIhffteRsNCMsmBXP8FZ9zAa8=;
        b=UP8sNFwcZ8XX8rK6aC/cHFiL1g8V4zgT3BiDQPTqEoqZKL2FC+omSSSdPaWXgSrqsV
         L1I3vsn/KSzaW+xGnjRt9KhGxJm7CZQD+7UljNEorVtBZJbcBh7Q5Dep5kNwW8W9HA6F
         cohpd1/FnQSzxgd1P9gwM3AoZ5v/4B482Jn6IilALUUO/g9A5Kof1IXWtWamX1MHkzPA
         8rVHa8MtZLJvC5vJTWnW4iPBnykQ8rXTsfDiji6s1P4riJpxqF/eQ2lbJYjyDE739MlS
         E47P16wBQ9sb8iPb9nJiBcDIJMrHcnOqclpVsVkqjpdkPnoA9DKCwXsRbiuV2xrGqZOm
         fogw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53034Ou6TG6bPdo/hbzT21DNTbErMAx8QOnV01pleXsUp5ktl3KZ
	vTrEXfFumKvhurtCzFsrpf0=
X-Google-Smtp-Source: ABdhPJzkGl3OfVzPW5l4lHTny06oR13WdG39U2aCpGnlmiPzIph3KWEPTbDojhp+dlMO0+sTYkyyWg==
X-Received: by 2002:a9d:68cb:: with SMTP id i11mr15176909oto.118.1616840234643;
        Sat, 27 Mar 2021 03:17:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7341:: with SMTP id l1ls3056796otk.3.gmail; Sat, 27 Mar
 2021 03:17:14 -0700 (PDT)
X-Received: by 2002:a9d:3437:: with SMTP id v52mr15216010otb.55.1616840234172;
        Sat, 27 Mar 2021 03:17:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616840234; cv=none;
        d=google.com; s=arc-20160816;
        b=uJlz7AvZ0t4tgfUbOg4/jvyHRcvMG4NxCrt/NkSzNU7ynYOVG//27h/5RIyD77EJGC
         yqu1TYtqIYUHlOk7Ljlx78ExVEVAFabztvDJNjLaN1mdd9RA4er7mbkAHSUFgbNa3fZ+
         GO27ZW+dBLEZjQHxLiK5Skl37xLRVOL+3B3oDQiUtlqAkz98lqdx27Vi6YpSb6nUmDcv
         tDveFYhlr9X8hpv39jDs5e0cLL87Z2+8RGmX2ptCqqCUT4es5Wj/lI5gF2DRZaaRWYIK
         D6NQxJenHk3t7str8JokMYSq203DUJHXhjav73xFKQQfYzWuN8s9vmcvBN5nZARIVFQL
         zEdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TXU6kVEia+6JrSzVa9t9Lc5LKALd57573pINtrBW73o=;
        b=YJlHXA74WHn1UqbJ5dARena697pb09pKpTXCjhaQzE8V2GppVk5EbR4gFNA0zjh+Ux
         RsmxlZqRfsapKI5hUXwU+oOgtoaI4oYxZAZLEWNssfPGzhK5licuxDmXauWfBL/kzA07
         +8sJCebe9pCUvpHV68dq6RxuekAxTs9+opAkAlCMXzpthlfySkR1J0noozVAsHwEAf/N
         yWO6mzSE1XGpBHHiJpzII1BRGerV56uUfAkIIf7TzbGJ920x6pOogbuRZMwGJFULIzxO
         /RA7XaBzYc4DOZrRbg4vMrtU17rZh6eYsv0uNsgYTAeZAHmXPGnpcWBXuWxbuJW/FNKC
         JlaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id v12si605284otj.0.2021.03.27.03.17.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Mar 2021 03:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: ZRG2sFM1qDpPciuAtxGWW/H19XyIiTKvRGQ0taRegm2nVYx8NOtn4FvDmcsvxfMWFV9Is4x3Lh
 a7jU88a3ck+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="255286400"
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="255286400"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2021 03:17:12 -0700
IronPort-SDR: pg+qfRv/Phuqudg2jGE84wOlPV09UYUxtYxU4I26Dhif3/iqZ/gnjksMzHiS96Z7VIUwByRnN/
 1+MPlejKi8EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="526333830"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 27 Mar 2021 03:17:10 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lQ60E-0003MK-3K; Sat, 27 Mar 2021 10:17:10 +0000
Date: Sat, 27 Mar 2021 18:16:14 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2267:16: warning:
 taking address of packed member 'hw_tx_obj' of class or structure
 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer
 value
Message-ID: <202103271812.xDwl25lD-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   0f4498cef9f5cd18d7c6639a2a902ec1edc5be4e
commit: eb79a267c9b3e608e7762a1b221428f37ace3aa3 can: mcp251xfd: rename all remaining occurrence to mcp251xfd
date:   6 months ago
config: mips-randconfig-r035-20210327 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103271812.xDwl25lD-lkp%40intel.com.

--ZPt4rx8FFjLCG7dd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
GrQx+h/MXEkXkN4BAA==

--ZPt4rx8FFjLCG7dd--
