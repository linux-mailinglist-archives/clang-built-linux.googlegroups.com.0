Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBF6A6SAQMGQE6EUKDZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E7A32866E
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 18:10:48 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id e19sf10988369ote.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 09:10:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614618647; cv=pass;
        d=google.com; s=arc-20160816;
        b=guyFnOqeMMyF/VYfHvo9s71Fqac7rPAH70422yB2lB6qFrfEpJ8/ELbqYXkabpE7X8
         aXH7WfZ+nNQxGT47SBpLmyIi22wCqpKZ0N2aVWXQomt+3bq0Efw+83CMJ06pWAdSTtuF
         dtN1Zeojo8Zc6my+IPFnVj1UBwbAgjXvGl0X2G06pHfAdM6IvEYGwStCTRu3hcmVyfwh
         HMs2oG+eBCb8J7InJiZbo8l1P+OTfvh+f9Aa9rmYt8JBmwaTqmjAW2RBuBy4O3g6fuya
         cAjB69AHt7yZZ4eSb7wcAMRMLbo+NNCN7324WT5ThyxjHDuekkQkBYcxpHyFH4VGhKQB
         Rb7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=mozesIrNYLI+XdFboFa9smnDFuthDg/BzrZb3RJkxK4=;
        b=WS25tTzBJM1mZJtUbRaL7yL07djXgsJR6WoZHkhL93mC3YFyi3mULhyMjTLzXus0Bn
         H5np5jBWJvBM1HU/WLygxfrxGQAH3tXj52EXKMRkvPsWrJdyhQkbpJVqPlxyf/ocvVn6
         TiyE5e8/qK+HD6Rig3oTP1pO3ET9gi/e2VfF3c679s7WpUGbS4ii6L5DoXZPUKZr1f7z
         WfrNK19BeoSI1ikK48hSzts/kPcMhZYGp8PJSKWelqcCxth6h8wSXhMP73yc/MRtGmnb
         wMlOxmukSEYFT7EIZ29gYvdEZm0ebX6s9VSSlKzeUo3aIwJlxFQG9bbPIFvP9nCcEC/E
         VsOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mozesIrNYLI+XdFboFa9smnDFuthDg/BzrZb3RJkxK4=;
        b=SjzBGWf6hYPUsBHYUvlThSHmVpcZnAN84DKFrGYWmJ90OWV5g2JcrxOOyMX0aecEYB
         Y2BT9lbmLZ4GrP0fNAggy2VzR8XavfwiK39t9MwqTJVyIWMzpbojKrIYohl8Si88FXLP
         iJNfUr6KvAqXxlKOs62EoJfZqp9k4StVC5uCAA3voRHlMxU3aiRekApKs2L58ViH2EFj
         U8Kq4bRkXYfM25P4L4e2cGyWSs7miCYCuKi3TGJ0H1DK5LPLqLBwhYam0mEz1x4aE2xT
         OthzEM7aQxN11h9BODhpWZgwRD7kfrQgwu5ZjycT4Dhe15yEJzhiK0g02mkWBZfz72Tq
         NkvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mozesIrNYLI+XdFboFa9smnDFuthDg/BzrZb3RJkxK4=;
        b=NtyU0Amf0nLOfm2RUnP2BvB18DwBr6dUlHJqf6C2orer7V68i04lAYoyB0tZsZl9i3
         Dd+pzxsCQ8p40hjbMCn2n9hukzXHPc8Wwa6vM+5cXMDOHU8Ii3tfbw6sV72ZrtZXgyl2
         0oaD4zmV1C5Qq4BCXd4mqtEZ/cC50Q12aOdg2rJKKPausc6alHJKKK1yoyEK873Ai2Su
         fdqbnwG6tiHM36AESoRG7fuHC5q5RHeQQ4qGwVFQnCa+d2P2G0IhBfTgA782Q+5EzLIZ
         RaLzSYRab6AQNXZlTHEsFmPYfbKcVo0UIWiCJ+gavO0K8b12gANxYcvvCEOL8ba/65NO
         8q2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y3L3j047tns1Agpwpt3i/DmqNng5OlBxSeBKJtelhf0ouRmBZ
	+qY4j8JLxVwjlCMFfSiuHoo=
X-Google-Smtp-Source: ABdhPJyS5arvZGnEKq00PO/coTBJMH50QuCopwALdP2eqHqvyoL59iRWO+SlSOY29lhrjsDhLYnEeA==
X-Received: by 2002:a9d:19e5:: with SMTP id k92mr14301697otk.238.1614618647242;
        Mon, 01 Mar 2021 09:10:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:39b5:: with SMTP id y50ls4842533otb.6.gmail; Mon, 01 Mar
 2021 09:10:46 -0800 (PST)
X-Received: by 2002:a9d:6251:: with SMTP id i17mr13914096otk.162.1614618646621;
        Mon, 01 Mar 2021 09:10:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614618646; cv=none;
        d=google.com; s=arc-20160816;
        b=FR6o3KjRCwx/+CW/bO3yi1IAIR2Wt5glPzEIdh2vYAw9zkq2pKCfDKWraztwM0YTPk
         XlPUglDD1YOnwyVFT5UNZc4vKnsfTQfkkic5RhdFYg1GnbnjxVOXFZI7QsZXG8alIbFh
         RsWLNtog1/RRiuz2742v9HtkJJhGEay7B5vtrUUXpK0CCb52lSutigyK5TFGaUBF+6PT
         xlBchluNsMHMvGGjVbRWkQr8XvclYiydhkCMBXnWcT8hG9KxIN8fcD6lxk0620xtQtyr
         42aN4TDm6inJU8R0FfwAgZ58XfsDJC/O2MR5ZSVcGUMIRaJFOnJ+bE+rwWx9mOo53y+M
         4qtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=nzFsoBu8gCxcUl0UvkIXsYzXfAHB77i+V8WOEKQhHLU=;
        b=HF3Vhj1ntz/3XNkNhdIriH+LH0T0utj6oipGoj6e6Thg6N/4H3ZF92bQgh8UnYV9M0
         vbPyZszQn0HGbV8ZJb3K6gyTXeyWLl4FefcQPjR5fvFcQ+JwT4ozFj4al9iWcdx3t5EJ
         VdOD4WBMIfRE4/BmX449Wt7xjknFe2bjs26D80fBTqAzlHVAt86WDoPIwQXqEdX2rH3D
         PqzmmcidjLox9zV3SXg7QNvzLKSAnMkL7oI3P1+EETqNLfy+uZI4xNcATrKYoxGMmA8j
         EMJRg3dpi7JvVW06wCw9QQVsPWVR+D49t7T9JqXwFvTMI7uFT+y21xWVaDU+YBusX7zj
         SXyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id v4si90594oiv.4.2021.03.01.09.10.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 09:10:46 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: cyRwRAVIVCMfx3jYtywSODejeUg1oheuDAZMWhBaYu+4E52WtI8GQULgMEopm61VjOzGQUa0HZ
 KaetDDuFg0Gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="173666256"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="173666256"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2021 09:10:44 -0800
IronPort-SDR: NZiegKBJyRT4BweWU+65Ab4RDK6I0du857YKEhvmws5XIAFY2APqJe527KmMqg6EmbtGmw9Vag
 uBxFjWV9zs7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="373184963"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 01 Mar 2021 09:10:41 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGm48-0004em-LT; Mon, 01 Mar 2021 17:10:40 +0000
Date: Tue, 2 Mar 2021 01:10:21 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: drivers/staging/vt6656/rxtx.c:385:34: warning: taking address of
 packed member 'tx' of class or structure 'vnt_tx_head::(anonymous)' may
 result in an unaligned pointer value
Message-ID: <202103020116.9BsY8hVS-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Kj7319i9nmIyA2yE"
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


--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: 2faf12c57efe1f905007e866d753af7851205aec staging: vt665x: fix alignment constraints
date:   3 weeks ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d82b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2faf12c57efe1f905007e866d753af7851205aec
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 2faf12c57efe1f905007e866d753af7851205aec
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/staging/vt6656/rxtx.c:23:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:202:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/staging/vt6656/rxtx.c:23:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/staging/vt6656/rxtx.c:23:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:560:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/staging/vt6656/rxtx.c:23:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:560:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/staging/vt6656/rxtx.c:24:
   In file included from drivers/staging/vt6656/device.h:32:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
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
   In file included from drivers/staging/vt6656/rxtx.c:24:
   In file included from drivers/staging/vt6656/device.h:32:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:1994:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           old_dst = xchg((__force struct dst_entry **)&sk->sk_dst_cache, dst);
                     ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/staging/vt6656/rxtx.c:24:
   In file included from drivers/staging/vt6656/device.h:32:
   In file included from include/net/mac80211.h:22:
   In file included from include/net/codel.h:48:
   In file included from include/net/inet_ecn.h:9:
   In file included from include/net/inet_sock.h:22:
   include/net/sock.h:2244:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           err = xchg(&sk->sk_err, 0);
                 ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> drivers/staging/vt6656/rxtx.c:385:34: warning: taking address of packed member 'tx' of class or structure 'vnt_tx_head::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
           union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
                                           ^~~~~~~~~~~~~~~~~~~~~~~
>> drivers/staging/vt6656/rxtx.c:396:12: warning: taking address of packed member 'head' of class or structure 'vnt_tx_mic_hdr' may result in an unaligned pointer value [-Waddress-of-packed-member]
                           head = &tx_head->tx_rts.tx.mic.head;
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/vt6656/rxtx.c:408:34: warning: taking address of packed member 'tx' of class or structure 'vnt_tx_head::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
           union vnt_tx_data_head *head = &tx_head->tx_cts.tx.head;
                                           ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/vt6656/rxtx.c:417:12: warning: taking address of packed member 'head' of class or structure 'vnt_tx_mic_hdr' may result in an unaligned pointer value [-Waddress-of-packed-member]
                           head = &tx_head->tx_cts.tx.mic.head;
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/vt6656/rxtx.c:429:34: warning: taking address of packed member 'tx' of class or structure 'vnt_tx_head::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
           union vnt_tx_data_head *head = &tx_head->tx_ab.tx.head;
                                           ^~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/vt6656/rxtx.c:435:12: warning: taking address of packed member 'head' of class or structure 'vnt_tx_mic_hdr' may result in an unaligned pointer value [-Waddress-of-packed-member]
                           head = &tx_head->tx_ab.tx.mic.head;
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~
   24 warnings and 1 error generated.


vim +385 drivers/staging/vt6656/rxtx.c

dc6490b0c5058c Malcolm Priestley 2020-05-21  378  
dc6490b0c5058c Malcolm Priestley 2020-05-21  379  static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context)
dc6490b0c5058c Malcolm Priestley 2020-05-21  380  {
dc6490b0c5058c Malcolm Priestley 2020-05-21  381  	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
dc6490b0c5058c Malcolm Priestley 2020-05-21  382  	struct vnt_tx_buffer *tx_buffer = tx_context->tx_buffer;
dc6490b0c5058c Malcolm Priestley 2020-05-21  383  	union vnt_tx_head *tx_head = &tx_buffer->tx_head;
dc6490b0c5058c Malcolm Priestley 2020-05-21  384  	struct vnt_rrv_time_rts *buf = &tx_head->tx_rts.rts;
dc6490b0c5058c Malcolm Priestley 2020-05-21 @385  	union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
dc6490b0c5058c Malcolm Priestley 2020-05-21  386  
dc6490b0c5058c Malcolm Priestley 2020-05-21  387  	buf->rts_rrv_time_aa = vnt_get_rts_duration(tx_context);
dc6490b0c5058c Malcolm Priestley 2020-05-21  388  	buf->rts_rrv_time_ba = buf->rts_rrv_time_aa;
dc6490b0c5058c Malcolm Priestley 2020-05-21  389  	buf->rts_rrv_time_bb = buf->rts_rrv_time_aa;
dc6490b0c5058c Malcolm Priestley 2020-05-21  390  
dc6490b0c5058c Malcolm Priestley 2020-05-21  391  	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
dc6490b0c5058c Malcolm Priestley 2020-05-21  392  	buf->rrv_time_b = buf->rrv_time_a;
dc6490b0c5058c Malcolm Priestley 2020-05-21  393  
dc6490b0c5058c Malcolm Priestley 2020-05-21  394  	if (info->control.hw_key) {
dc6490b0c5058c Malcolm Priestley 2020-05-21  395  		if (vnt_fill_txkey(tx_buffer, tx_context->skb))
dc6490b0c5058c Malcolm Priestley 2020-05-21 @396  			head = &tx_head->tx_rts.tx.mic.head;
dc6490b0c5058c Malcolm Priestley 2020-05-21  397  	}
dc6490b0c5058c Malcolm Priestley 2020-05-21  398  
dc6490b0c5058c Malcolm Priestley 2020-05-21  399  	vnt_rxtx_rts_g_head(tx_context, &head->rts_g);
dc6490b0c5058c Malcolm Priestley 2020-05-21  400  }
dc6490b0c5058c Malcolm Priestley 2020-05-21  401  

:::::: The code at line 385 was first introduced by commit
:::::: dc6490b0c5058c44868b3921cfd3b2a223ee038c staging: vt6656: Move calling point of vnt_fill_txkey.

:::::: TO: Malcolm Priestley <tvboxspy@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103020116.9BsY8hVS-lkp%40intel.com.

--Kj7319i9nmIyA2yE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/5tALxe83wEA

--Kj7319i9nmIyA2yE--
