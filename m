Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWWD777QKGQEXSO6QRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CCB2F5A93
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 07:16:59 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id j1sf3556280qtd.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 22:16:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610605018; cv=pass;
        d=google.com; s=arc-20160816;
        b=J4UHxgvCe4l6J86S44Wz47XsiEC7b+vKgQfDtbQXMsHAyO3DpKGpNURWCPTTGUJ3S2
         mztqglSVqr0MgU3cUPuPhHvXl8sHQ0O7N/kwdc9yE0zhqXNHt1lrSezc0VUZBneLSCWW
         9Na9yRIfr0D7UG+87Z2FaN9C48CW90m8fyt25sYCqu9qC0AZRJVkVAgLDhSFIdth2pHf
         YoGnApQA0S9eYtuPl8199q6Isso0GJ2eWV7NdK2Zg4O+WY0QgWHqs2zd1ukytnc3G6VP
         WNHaa7L41nBIrSuVYt3icj6YJKj7l9uR/RVktM+fasUCCAnASgyYJhV4hnMWzxYv9D+V
         IRQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ioaKYt6tykbxL7ckoffhxB8oRnE8BKUeapK9saT/dnk=;
        b=nKJH8uA26CXWOouqzejAb0y6wY2PbXrsams89jI7Vv7aawa6+Ed3SbRaISROZ/DR9W
         +79MKyC+kX/V6v6zlGb8q7tIS9HxzaLUs1MEOIAYvlHbVFC9xaRgMJejlMafGYCB/GTO
         VzTKheNjiRHRjFf3bsDAJC5wK1X1Y09ljRC9Xo6uYW2HNnXeVmu5h0D8b4rWRU5npO5w
         tvT7T2PQcTNc5EfX0TXz5k1VLioaLgzUWp+ldLq8YEvCicZx8Iz87XMl3VREa2Umrkug
         jO38n2gVcGLZoXTp+oOg1raOXft4Y6zr+p4tQ2AymnylgeaZTbf6UKUJw5TAICaHfUBX
         ZE9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ioaKYt6tykbxL7ckoffhxB8oRnE8BKUeapK9saT/dnk=;
        b=Lg0OHv64hVlGgdVWi56AbvX7ups6RNW/WJxmgTsRgJ6WGo7OfKNz6YfiWvxh8yBmAk
         GMyrH8tLq2GwpCagn6ksgk5G4/+MCAdJsMoHBoWPSEMv6cyE4x7zO5aR6d2qHuD0NSgg
         8j9p9ZSm+AYqOs9GyV91Nl+iXVP6AVaq31twPmRctyhj1kuXe8oyrI5zUfSwvFoxi7fP
         w4ZdMkF87DvTX1Nr6pcRpqMmDJz2O5baHXq6TabTeVJNDVVNM/TIyWFlfT/+yGTjN/Ma
         AsTIXDe5adyg8o3hTIuACwwBYFsJW6UsLSJINFw32D+pyLC/4BmHAWl2mWc8BnuQi6O/
         g+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ioaKYt6tykbxL7ckoffhxB8oRnE8BKUeapK9saT/dnk=;
        b=sxtEoza5JvWd1tX+XA6+r+zjNGiN9mnPB05mJDhfwmsMm3oGEEWp9f9foLKkrjtec6
         AEBRoMkU2Ogw3qBeUOF++VeuZofete3mx881jnEB+jN+RzdTyMYcHLixoJIgcMXSK2vL
         U3nMdTv38rvBab+E04WkGjCxfkD90ta0o4JXx2nf2GP3c99a9aXyn3nVMuLAPiKUwkgF
         hzA6Gn6tylD4ZrEDnYxx4duhnsLqVVO934/ANNihc7eIzje74m8z5z1COv9t8AgcKv/X
         TPw2/GytGkQqSpjpzZn2soZqagho5I8V+Q72wK0nv2pwRcrm0uOFR9zR1RYEpquhqaSO
         2GlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316zVtQfO2kg/bSNaSqAT+Zhy80ZSjcP5lTA2Cqxto7jyhdrNCF
	EOrpp0mQQfoJ5KhFlgOSkK8=
X-Google-Smtp-Source: ABdhPJymYQQoT4ei2OXcx3pbRNken8DK1qb+H1EzxYdaL32BnsuX3/6E+WBfW87Z3iVeahQ6fo4BGw==
X-Received: by 2002:a05:620a:2297:: with SMTP id o23mr5892364qkh.149.1610605018280;
        Wed, 13 Jan 2021 22:16:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3824:: with SMTP id q33ls1909235qtb.2.gmail; Wed, 13 Jan
 2021 22:16:58 -0800 (PST)
X-Received: by 2002:ad4:436b:: with SMTP id u11mr5692347qvt.21.1610605017750;
        Wed, 13 Jan 2021 22:16:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610605017; cv=none;
        d=google.com; s=arc-20160816;
        b=rIzWED20mYU1TveCgffAiKdi5QO/BCPYbOMHLNH8Fy1dDYkkhxQFMDWV8jD5uHwrKL
         cD4wgTw6urI3wvs3ZUQEjqmLRFi2hhVkLaXKuW0uBEa/ZsaES4Z4n8FpFU+zmDimsFKg
         4+gNPlgcz7W6QNlQTXhAENbJvPbWrnX+QXvM97UCyZHCMUnetBPiCASwyuhckGulgW10
         FE0Jxjhwa2NBMEfkmzXfNUmGHtmnzMFXOZ71Rex1K9IWf7U/Np/L2k23a+G9aJaGs49i
         H60RKjw0tRTC89FnbAp3W+BQ9Ct6hMdBQsZNxtY7bncxn1ksz+FC7yXACIwwELOuiujA
         C9Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JL9yW79w3cauoWJ7wcYA+jRdWzsTc6EPBilzNioNUCc=;
        b=j7ngR35mcxiQ5/0Pr4OWyFJeGL1b18XPuPAtBxfyHbhNuOac/M5Xr/rC2wvWR943av
         gtVW3VYUsPOGTZAtOMdmb+RwqCqn9753caXJlVo8zYA+G0FWf6bN5yHlLe5BIuyXatvm
         qbdpG2tfcLt0tT7gxL9SOegexv7T9d/GUNp5z2lC/L8MntreFEgO3bhh3OMe/awgeDQi
         KGaPeHmpJUXlDNhCyQlP4SUyQ1uoTPab9ccwkRTIxvWHyz1wFt81Cl06wC7yCbdCTjzU
         f9QXBICCBlyJyp6FgU09ONoAlCDr0KjZjhJXy5w/81wn5Ia81bqsUrulVPVslJFxgUZ9
         a0Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id p6si247484qti.1.2021.01.13.22.16.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 22:16:57 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: JLVVbTXnufC+a3NNN80A7NkS6hZDBD6c4tfkqCc/yemexUpvAvJWfurRYv5CrHrwTZuGZTl/wf
 JKDVUsXqOvVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="175735397"
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; 
   d="gz'50?scan'50,208,50";a="175735397"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2021 22:16:56 -0800
IronPort-SDR: w3k33qbHx6lLehTPwl0F1LIqa6qTFW9mdRsTLMFKqcAiuzHTvjxQXgZ33CTILId+nI4z7/W8QE
 e6ordl/qaz7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; 
   d="gz'50?scan'50,208,50";a="465155225"
Received: from lkp-server01.sh.intel.com (HELO d5d1a9a2c6bb) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2021 22:16:53 -0800
Received: from kbuild by d5d1a9a2c6bb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kzvwD-0000eo-2L; Thu, 14 Jan 2021 06:16:53 +0000
Date: Thu, 14 Jan 2021 14:16:35 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: lib/llist.c:33:11: warning: converting the result of '<<' to a
 boolean always evaluates to true
Message-ID: <202101141430.Vx7fzc7r-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   65f0d2414b7079556fbbcc070b3d1c9f9587606d
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   9 months ago
config: mips-randconfig-r026-20210114 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 68ff52ffead2ba25cca442778ab19286000daad7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/llist.h:51:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/llist.c:15:
   In file included from include/linux/llist.h:51:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/llist.c:15:
   In file included from include/linux/llist.h:51:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/llist.c:15:
   In file included from include/linux/llist.h:51:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/llist.c:15:
   In file included from include/linux/llist.h:51:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/llist.c:15:
   In file included from include/linux/llist.h:51:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/llist.c:15:
   In file included from include/linux/llist.h:51:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/llist.c:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> lib/llist.c:33:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&head->first, first, new_first) != first);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> lib/llist.c:33:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   lib/llist.c:63:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   entry = cmpxchg(&head->first, old_entry, next);
                           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   lib/llist.c:63:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   13 warnings generated.
   Assembler messages:
   Fatal error: invalid -march= option: `mips64r2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from lib/errseq.c:4:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> lib/errseq.c:94:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cur = cmpxchg(eseq, old, new);
                         ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> lib/errseq.c:94:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   lib/errseq.c:200:4: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                           cmpxchg(eseq, old, new);
                           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   lib/errseq.c:200:4: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   12 warnings generated.
   Assembler messages:
   Fatal error: invalid -march= option: `mips64r2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
>> arch/mips/kernel/cmpxchg.c:44:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   load32 = cmpxchg(ptr32, old32, new32);
                            ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> arch/mips/kernel/cmpxchg.c:44:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   arch/mips/kernel/cmpxchg.c:100:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   load32 = cmpxchg(ptr32, old32, new32);
                            ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   arch/mips/kernel/cmpxchg.c:100:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   4 warnings generated.
   Assembler messages:
   Fatal error: invalid -march= option: `mips64r2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)


vim +33 lib/llist.c

f49f23abf3dd786d Huang Ying    2011-07-13  16  
f49f23abf3dd786d Huang Ying    2011-07-13  17  
f49f23abf3dd786d Huang Ying    2011-07-13  18  /**
f49f23abf3dd786d Huang Ying    2011-07-13  19   * llist_add_batch - add several linked entries in batch
f49f23abf3dd786d Huang Ying    2011-07-13  20   * @new_first:	first entry in batch to be added
f49f23abf3dd786d Huang Ying    2011-07-13  21   * @new_last:	last entry in batch to be added
f49f23abf3dd786d Huang Ying    2011-07-13  22   * @head:	the head for your lock-less list
781f7fd916fc77a8 Huang Ying    2011-09-08  23   *
781f7fd916fc77a8 Huang Ying    2011-09-08  24   * Return whether list is empty before adding.
f49f23abf3dd786d Huang Ying    2011-07-13  25   */
781f7fd916fc77a8 Huang Ying    2011-09-08  26  bool llist_add_batch(struct llist_node *new_first, struct llist_node *new_last,
f49f23abf3dd786d Huang Ying    2011-07-13  27  		     struct llist_head *head)
f49f23abf3dd786d Huang Ying    2011-07-13  28  {
fb4214db50b00558 Oleg Nesterov 2013-07-08  29  	struct llist_node *first;
f49f23abf3dd786d Huang Ying    2011-07-13  30  
fb4214db50b00558 Oleg Nesterov 2013-07-08  31  	do {
6aa7de059173a986 Mark Rutland  2017-10-23  32  		new_last->next = first = READ_ONCE(head->first);
fb4214db50b00558 Oleg Nesterov 2013-07-08 @33  	} while (cmpxchg(&head->first, first, new_first) != first);
781f7fd916fc77a8 Huang Ying    2011-09-08  34  
fb4214db50b00558 Oleg Nesterov 2013-07-08  35  	return !first;
f49f23abf3dd786d Huang Ying    2011-07-13  36  }
f49f23abf3dd786d Huang Ying    2011-07-13  37  EXPORT_SYMBOL_GPL(llist_add_batch);
f49f23abf3dd786d Huang Ying    2011-07-13  38  

:::::: The code at line 33 was first introduced by commit
:::::: fb4214db50b00558cc6e274c88b3f7325068e942 llist: fix/simplify llist_add() and llist_add_batch()

:::::: TO: Oleg Nesterov <oleg@redhat.com>
:::::: CC: Al Viro <viro@zeniv.linux.org.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101141430.Vx7fzc7r-lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
dM/tOveZxhUGbGjDPGjwjQXv3/8D1BVVLkVCAgA=

--x+6KMIRAuhnl3hBn--
