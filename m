Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBC4PQGDQMGQEOTCYT3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 085F23BA861
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Jul 2021 13:18:37 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id u19-20020a170902e213b0290129737d657csf16621plb.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 04:18:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625311115; cv=pass;
        d=google.com; s=arc-20160816;
        b=X02KXObOWrocMttQ4CBpBIrnphZbKdG74tNCUL+Jm60W4ZipITFVSx1Wd8J9O5jU9E
         bMX+LDtIipS7XF5JT8JybZrNjlOumf6DRdD1gJjPyhSWAvIC4P7TJB9dUGOUppwY8mux
         IsP3sv4Kaj3J1ksnh5tUVzztFg9fircdJJTBKuhFQWq5DwTC01IVmckbaVyqhR2X+Sbw
         6R7uWbNeU9qXReZassZ33myVIkJKj+tuOnheWhGN4ti9wiFbrUL8J+Kr6XlcEHcp99eC
         8LhrS4jd6k/pYWq/at9j06LULU+05LmxVmk+lKLvdPWjtHGFg8pKx+Lf0NDmqAfVF+fP
         yfEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D/q5CKS4O+B9VuagUjLMWhet0EaaoRBBzqHFYMHbjTE=;
        b=0X5xl1tLwAXhl1u0kZb+lh0JF503r6khy987Yd8abapQ7xdp4G7vuRtkEm7jKbmgal
         usEKelTRJhXHJ0+FWSyqwl2BI9FqbWvHKvBOqP71jxdIbD/C0DwGA9AN63GNNzMdiKD5
         4giMMi1rpQvy7q6YO0W2tLprpk7s4at9MVyj+vlLV8dYLdb2JcdNWo77+lGastI7yqDM
         NNYnEuGE++IIUJ8zIN9dlR9vMq05+MUuM/Pq2I6/kl5k5dl2NhrrJe4x01aHE8IM0TJH
         oFTciqB26E1/Jq3qg8y5ErcZImOP8hIamTIqAYWB1ANJQOEDzv82/VyCGQMCiLHTHC1X
         nllw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D/q5CKS4O+B9VuagUjLMWhet0EaaoRBBzqHFYMHbjTE=;
        b=As1uTz2hLxkRhw3rE/fwW+7LvMXnFQZ8IaEgqeKPGjPYQ7hTwpFsYLT5GTEIV97BdD
         8wfFkRTpijOLzATYbMYojrQdtC6jAIooXbYDr3w0dnou4s2HXxMNiQMQ9ytA1axcrapX
         ET+8UzngIyCqAmAR84VOedh01w3eeO8M9Tc/usbZhpykOA1/KnfAdctSYur2ijyu1CXI
         VwwW2niIJMiuO4u64x7+Hx5JF2Xuz962GBWje4SI1YmyB1vRWA8CqjclAQJKo+PczhCm
         Q9vpaZVisYPOIgks4N24AzvcU0t8YwN0QUe0Lv4JAvtsUu+gvNP7e5kcUxmlAnElPJoC
         hBOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D/q5CKS4O+B9VuagUjLMWhet0EaaoRBBzqHFYMHbjTE=;
        b=eU5AYgKUQ8kqa+KlX74vVsHAUCx0CblJzMRukanTQBArgifF17MkvsT4R2x2K0oEdx
         RKoyKPUOC2pNfMCRMKGj3GKHCKRxKZQKTRfNKmZ5lJkgVF751xkGTJ+Tx8LYmlpHjLDC
         1vxqZCiDStmkLg9eHYdA0KzL33E1zgvo1JP6/LUoglhM2+hp512I0mX988+w6t/OUfoF
         RBmGDN/hWgV633Tor1up1Ucjc0aGHT6fF1I+aTb8tyk91KLiBDq+2947me6YsFEs2poE
         76UC0njNa0Sruj439vYEeFOTknSTC3cNHqkfP5DL2RdS83dk7mdzAiRVGb2Ts8nTnDuM
         T7hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AjZ8N3LOH+d9BcpvHYhhgeLfK1iT2wLGFLMiLK4cVCiG620TW
	zx5ThZKSwnaDZLV1hcHQHHY=
X-Google-Smtp-Source: ABdhPJzDCHBOM3k1N06c1Cy8Nzhk12p74PGF3igpN8jgfNZBp5nJ+u0Vm/ThItWhYJDm3N5HUqQB3g==
X-Received: by 2002:a17:90a:69e3:: with SMTP id s90mr4318136pjj.159.1625311115351;
        Sat, 03 Jul 2021 04:18:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4186:: with SMTP id a6ls6218547pgq.6.gmail; Sat, 03 Jul
 2021 04:18:34 -0700 (PDT)
X-Received: by 2002:a63:a44:: with SMTP id z4mr4739353pgk.379.1625311114533;
        Sat, 03 Jul 2021 04:18:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625311114; cv=none;
        d=google.com; s=arc-20160816;
        b=u82+ct3LXCgyWjJE53LE1SD1begMkNt911QYQJq8xUtbwKA7vOB835HBQuiy8DCrG9
         KMby4YUOn+Bwqrd4iyZbnw8XRIZyrmRHfNT/TniKCeJFAMXKlnnOlP/JU2TkqknELZoJ
         YdcQnetJQBoK1JtC0FW7g4psbF2bwX40yWvOiK3/ljsVA/Xfz6igZtoDhE9Hf8vrTNtT
         IT3/Ta41sG7hgwxwGhKrgtrmIdjpEXHpHsvepK9gUf2Gz1Li1xvuTNhW/gA1e8UpqLve
         Xw0x/zZUGNulyL04Znzht+Nb7EiGGANR802M84s4HRHtxZZConpm3+ih7Zn8Fy2q1zD+
         +AYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=XvKYtUZhMqXtluG3id79zi0BViE9m8KDH0BNpG6XPZQ=;
        b=IMfuCn3umwC9uZdVJj0bCGSGe6aMLS4q2DUKhCxhkhDTMa6hqNaHoQny0rCRDq4Jxr
         mmU+9poDVnOyreKRprBsQJYzJWfRk1W9oJ8ive9E4C809x0dOqBWJUT35H8XZNKDWJ8n
         gc/nladNJg63ou68QXTwfGqbUFCv4N7VTJFoUlpCo7hM+wvHPt62SDSOf8PctleeJ1XD
         OtzLG8qDtt12vTQSJjoyPM+HRccHvmGROJdfB9PmAfMnRS3XfQa3GMjjmhRneR5SjWUp
         RDa4jbMaO5JtGaxOmyys76GVJHLxPNOEhVJbhv9aPMiq+3pOW95NJhglxOrTVzpzOyFU
         9aSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id z10si550697pfk.4.2021.07.03.04.18.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 04:18:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="294464669"
X-IronPort-AV: E=Sophos;i="5.83,322,1616482800"; 
   d="gz'50?scan'50,208,50";a="294464669"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2021 04:18:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,322,1616482800"; 
   d="gz'50?scan'50,208,50";a="448505238"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 03 Jul 2021 04:18:31 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lzdfK-000BVj-Dc; Sat, 03 Jul 2021 11:18:30 +0000
Date: Sat, 3 Jul 2021 19:17:38 +0800
From: kernel test robot <lkp@intel.com>
To: Qinglang Miao <miaoqinglang@huawei.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Steve French <stfrench@microsoft.com>
Subject: fs/cifs/connect.c:5117:16: warning: taking address of packed member
 'smb_buf_length' of class or structure 'smb_hdr' may result in an unaligned
 pointer value
Message-ID: <202107031932.biMes8Q2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   4b820e167bf6f410ace479d8df5b15a574000e75
commit: 1a0e7f7c3c573a79bcd787d8a05e80651041b815 cifs: convert to use be32_add_cpu()
date:   11 months ago
config: mips-randconfig-r006-20210703 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cb5de7c813f976dd458bd2a7f40702ba648bf650)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1a0e7f7c3c573a79bcd787d8a05e80651041b815
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 1a0e7f7c3c573a79bcd787d8a05e80651041b815
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/connect.c:45:
   In file included from include/net/ipv6.h:12:
   In file included from include/linux/ipv6.h:87:
   In file included from include/linux/icmpv6.h:13:
   include/linux/netdevice.h:565:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/connect.c:45:
   In file included from include/net/ipv6.h:12:
   In file included from include/linux/ipv6.h:87:
   In file included from include/linux/icmpv6.h:13:
   include/linux/netdevice.h:565:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/connect.c:45:
   In file included from include/net/ipv6.h:12:
   In file included from include/linux/ipv6.h:88:
   In file included from include/linux/tcp.h:19:
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
   In file included from fs/cifs/connect.c:45:
   In file included from include/net/ipv6.h:12:
   In file included from include/linux/ipv6.h:88:
   In file included from include/linux/tcp.h:19:
   include/net/sock.h:1971:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           old_dst = xchg((__force struct dst_entry **)&sk->sk_dst_cache, dst);
                     ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/connect.c:45:
   In file included from include/net/ipv6.h:12:
   In file included from include/linux/ipv6.h:88:
   In file included from include/linux/tcp.h:19:
   include/net/sock.h:2219:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           err = xchg(&sk->sk_err, 0);
                 ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/connect.c:49:
   In file included from fs/cifs/cifsglob.h:32:
   fs/cifs/smb2pdu.h:28:10: error: 'cifsacl.h' file not found with <angled> include; use "quotes" instead
   #include <cifsacl.h>
            ^~~~~~~~~~~
            "cifsacl.h"
   fs/cifs/connect.c:1261:17: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           task_to_wake = xchg(&server->tsk, NULL);
                          ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   fs/cifs/connect.c:2725:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           task = xchg(&server->tsk, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> fs/cifs/connect.c:5117:16: warning: taking address of packed member 'smb_buf_length' of class or structure 'smb_hdr' may result in an unaligned pointer value [-Waddress-of-packed-member]
           be32_add_cpu(&pSMB->hdr.smb_buf_length, count);
                         ^~~~~~~~~~~~~~~~~~~~~~~~
   21 warnings and 5 errors generated.
--
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
   In file included from include/linux/mm.h:32:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/sess.c:24:
   In file included from fs/cifs/cifspdu.h:25:
   In file included from include/net/sock.h:46:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from fs/cifs/sess.c:24:
   In file included from fs/cifs/cifspdu.h:25:
   In file included from include/net/sock.h:46:
   include/linux/netdevice.h:565:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/sess.c:24:
   In file included from fs/cifs/cifspdu.h:25:
   In file included from include/net/sock.h:46:
   include/linux/netdevice.h:565:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/sess.c:24:
   In file included from fs/cifs/cifspdu.h:25:
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
   In file included from fs/cifs/sess.c:24:
   In file included from fs/cifs/cifspdu.h:25:
   include/net/sock.h:1971:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           old_dst = xchg((__force struct dst_entry **)&sk->sk_dst_cache, dst);
                     ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/sess.c:24:
   In file included from fs/cifs/cifspdu.h:25:
   include/net/sock.h:2219:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           err = xchg(&sk->sk_err, 0);
                 ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from fs/cifs/sess.c:25:
   In file included from fs/cifs/cifsglob.h:32:
   fs/cifs/smb2pdu.h:28:10: error: 'cifsacl.h' file not found with <angled> include; use "quotes" instead
   #include <cifsacl.h>
            ^~~~~~~~~~~
            "cifsacl.h"
>> fs/cifs/sess.c:941:16: warning: taking address of packed member 'smb_buf_length' of class or structure 'smb_hdr' may result in an unaligned pointer value [-Waddress-of-packed-member]
           be32_add_cpu(&smb_buf->smb_buf_length, count);
                         ^~~~~~~~~~~~~~~~~~~~~~~
   19 warnings and 5 errors generated.


vim +5117 fs/cifs/connect.c

  5015	
  5016	/*
  5017	 * Issue a TREE_CONNECT request.
  5018	 */
  5019	int
  5020	CIFSTCon(const unsigned int xid, struct cifs_ses *ses,
  5021		 const char *tree, struct cifs_tcon *tcon,
  5022		 const struct nls_table *nls_codepage)
  5023	{
  5024		struct smb_hdr *smb_buffer;
  5025		struct smb_hdr *smb_buffer_response;
  5026		TCONX_REQ *pSMB;
  5027		TCONX_RSP *pSMBr;
  5028		unsigned char *bcc_ptr;
  5029		int rc = 0;
  5030		int length;
  5031		__u16 bytes_left, count;
  5032	
  5033		if (ses == NULL)
  5034			return -EIO;
  5035	
  5036		smb_buffer = cifs_buf_get();
  5037		if (smb_buffer == NULL)
  5038			return -ENOMEM;
  5039	
  5040		smb_buffer_response = smb_buffer;
  5041	
  5042		header_assemble(smb_buffer, SMB_COM_TREE_CONNECT_ANDX,
  5043				NULL /*no tid */ , 4 /*wct */ );
  5044	
  5045		smb_buffer->Mid = get_next_mid(ses->server);
  5046		smb_buffer->Uid = ses->Suid;
  5047		pSMB = (TCONX_REQ *) smb_buffer;
  5048		pSMBr = (TCONX_RSP *) smb_buffer_response;
  5049	
  5050		pSMB->AndXCommand = 0xFF;
  5051		pSMB->Flags = cpu_to_le16(TCON_EXTENDED_SECINFO);
  5052		bcc_ptr = &pSMB->Password[0];
  5053		if (tcon->pipe || (ses->server->sec_mode & SECMODE_USER)) {
  5054			pSMB->PasswordLength = cpu_to_le16(1);	/* minimum */
  5055			*bcc_ptr = 0; /* password is null byte */
  5056			bcc_ptr++;              /* skip password */
  5057			/* already aligned so no need to do it below */
  5058		} else {
  5059			pSMB->PasswordLength = cpu_to_le16(CIFS_AUTH_RESP_SIZE);
  5060			/* BB FIXME add code to fail this if NTLMv2 or Kerberos
  5061			   specified as required (when that support is added to
  5062			   the vfs in the future) as only NTLM or the much
  5063			   weaker LANMAN (which we do not send by default) is accepted
  5064			   by Samba (not sure whether other servers allow
  5065			   NTLMv2 password here) */
  5066	#ifdef CONFIG_CIFS_WEAK_PW_HASH
  5067			if ((global_secflags & CIFSSEC_MAY_LANMAN) &&
  5068			    (ses->sectype == LANMAN))
  5069				calc_lanman_hash(tcon->password, ses->server->cryptkey,
  5070						 ses->server->sec_mode &
  5071						    SECMODE_PW_ENCRYPT ? true : false,
  5072						 bcc_ptr);
  5073			else
  5074	#endif /* CIFS_WEAK_PW_HASH */
  5075			rc = SMBNTencrypt(tcon->password, ses->server->cryptkey,
  5076						bcc_ptr, nls_codepage);
  5077			if (rc) {
  5078				cifs_dbg(FYI, "%s Can't generate NTLM rsp. Error: %d\n",
  5079					 __func__, rc);
  5080				cifs_buf_release(smb_buffer);
  5081				return rc;
  5082			}
  5083	
  5084			bcc_ptr += CIFS_AUTH_RESP_SIZE;
  5085			if (ses->capabilities & CAP_UNICODE) {
  5086				/* must align unicode strings */
  5087				*bcc_ptr = 0; /* null byte password */
  5088				bcc_ptr++;
  5089			}
  5090		}
  5091	
  5092		if (ses->server->sign)
  5093			smb_buffer->Flags2 |= SMBFLG2_SECURITY_SIGNATURE;
  5094	
  5095		if (ses->capabilities & CAP_STATUS32) {
  5096			smb_buffer->Flags2 |= SMBFLG2_ERR_STATUS;
  5097		}
  5098		if (ses->capabilities & CAP_DFS) {
  5099			smb_buffer->Flags2 |= SMBFLG2_DFS;
  5100		}
  5101		if (ses->capabilities & CAP_UNICODE) {
  5102			smb_buffer->Flags2 |= SMBFLG2_UNICODE;
  5103			length =
  5104			    cifs_strtoUTF16((__le16 *) bcc_ptr, tree,
  5105				6 /* max utf8 char length in bytes */ *
  5106				(/* server len*/ + 256 /* share len */), nls_codepage);
  5107			bcc_ptr += 2 * length;	/* convert num 16 bit words to bytes */
  5108			bcc_ptr += 2;	/* skip trailing null */
  5109		} else {		/* ASCII */
  5110			strcpy(bcc_ptr, tree);
  5111			bcc_ptr += strlen(tree) + 1;
  5112		}
  5113		strcpy(bcc_ptr, "?????");
  5114		bcc_ptr += strlen("?????");
  5115		bcc_ptr += 1;
  5116		count = bcc_ptr - &pSMB->Password[0];
> 5117		be32_add_cpu(&pSMB->hdr.smb_buf_length, count);
  5118		pSMB->ByteCount = cpu_to_le16(count);
  5119	
  5120		rc = SendReceive(xid, ses, smb_buffer, smb_buffer_response, &length,
  5121				 0);
  5122	
  5123		/* above now done in SendReceive */
  5124		if (rc == 0) {
  5125			bool is_unicode;
  5126	
  5127			tcon->tidStatus = CifsGood;
  5128			tcon->need_reconnect = false;
  5129			tcon->tid = smb_buffer_response->Tid;
  5130			bcc_ptr = pByteArea(smb_buffer_response);
  5131			bytes_left = get_bcc(smb_buffer_response);
  5132			length = strnlen(bcc_ptr, bytes_left - 2);
  5133			if (smb_buffer->Flags2 & SMBFLG2_UNICODE)
  5134				is_unicode = true;
  5135			else
  5136				is_unicode = false;
  5137	
  5138	
  5139			/* skip service field (NB: this field is always ASCII) */
  5140			if (length == 3) {
  5141				if ((bcc_ptr[0] == 'I') && (bcc_ptr[1] == 'P') &&
  5142				    (bcc_ptr[2] == 'C')) {
  5143					cifs_dbg(FYI, "IPC connection\n");
  5144					tcon->ipc = true;
  5145					tcon->pipe = true;
  5146				}
  5147			} else if (length == 2) {
  5148				if ((bcc_ptr[0] == 'A') && (bcc_ptr[1] == ':')) {
  5149					/* the most common case */
  5150					cifs_dbg(FYI, "disk share connection\n");
  5151				}
  5152			}
  5153			bcc_ptr += length + 1;
  5154			bytes_left -= (length + 1);
  5155			strlcpy(tcon->treeName, tree, sizeof(tcon->treeName));
  5156	
  5157			/* mostly informational -- no need to fail on error here */
  5158			kfree(tcon->nativeFileSystem);
  5159			tcon->nativeFileSystem = cifs_strndup_from_utf16(bcc_ptr,
  5160							      bytes_left, is_unicode,
  5161							      nls_codepage);
  5162	
  5163			cifs_dbg(FYI, "nativeFileSystem=%s\n", tcon->nativeFileSystem);
  5164	
  5165			if ((smb_buffer_response->WordCount == 3) ||
  5166				 (smb_buffer_response->WordCount == 7))
  5167				/* field is in same location */
  5168				tcon->Flags = le16_to_cpu(pSMBr->OptionalSupport);
  5169			else
  5170				tcon->Flags = 0;
  5171			cifs_dbg(FYI, "Tcon flags: 0x%x\n", tcon->Flags);
  5172		}
  5173	
  5174		cifs_buf_release(smb_buffer);
  5175		return rc;
  5176	}
  5177	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107031932.biMes8Q2-lkp%40intel.com.

--jRHKVT23PllUwdXP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--jRHKVT23PllUwdXP--
