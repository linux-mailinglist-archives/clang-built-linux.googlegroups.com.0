Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2VNVHWQKGQEENZ2IGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B332ADD5BD
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Oct 2019 02:20:59 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id r67sf4163654oif.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 17:20:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571444458; cv=pass;
        d=google.com; s=arc-20160816;
        b=yBzi46xlz76sW+i9yRbXQZeY4obJPru14C5MkEGeTaQouu4B5CdDrJd7FG+hRBHEx8
         4AHpIW62+1CQ21I1w5SpBkMVmDEec1qNbrQ1jy/fbQGphcfkPnYxxStiSNdO2J5/JE5v
         Dw/rDBrNOfi+40dzirvi/DeNGXpf7NtDGrS2xCc3NjD+BrGG8RCsM7b/Quf7sQkDUhA7
         nyK8WGmsQ56UGL7bXjldriJnZTSjOKVb4AC/EpavJGRUxPYbP2f6XBWRN79pLY2WZCG/
         t/J07Wn5qAGPvnHfrfB07L7pPMqqSlM3tYHSsomqU08mqLGFZE4cHgQfAvXONE4fjPXm
         9U+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=U4VhbEcLnw4cX0Cs/v1k7+wlHATAEFIRABJTvsX0wJY=;
        b=G6l3T9qNaP3nYTmfMID4jgK41I7ISR1HecxJBt/QeglEy7vdIOysh2UXIQvuor2tRd
         TDleFpiVVgcumZTP1FZoqiYJXJK2anEi+QF+UEj4P22a/TJlFcORA1Pk1qteIk51KS+W
         9nLv/0Tpi659hrkicRrk1OoptGcX7ZgF4fF6OrogSE8+umn2pTloddKXPCQz8RShgVv0
         4Ox99etRB+ij0qkjhcyuLfaGK6WFiDu8uw/iPcY5B6fcb2eoJBm6Mq1rHYu4UdgmjFyk
         5vgxnquHvKIltNNEoC2YZGhUargC2B/YM1tzvZko8VDrCkwRj9mUbo4qUL31Tuphbjbh
         DBbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U4VhbEcLnw4cX0Cs/v1k7+wlHATAEFIRABJTvsX0wJY=;
        b=girooqL8X6L8gtLewCxcoSc0SnZlbKASyUxse/IoiUnmt5l+XKSROhqOYF7mgtGnLg
         4tboKJrY30Wku9wTog4jAe8bWg96ANon+Kbs6EZOZVgH+lBHvffMdB00USyE6tX0+8av
         W67V9bHl84aAfmtaHYWdDY8nJJZlQu+2pFdcOQDauuCNtPoYqIebpkC2ijfdBtaNsW58
         gQVXRJHFNZA/W1n4X0e06UCOPhmCekzayHgOX2i0BscrxeTa1UDeEw7/FuQRxgRRfc1U
         RIydQBNdPLpYtAKIZnAdQtJAQNr8EeT4nd3J1+ovjA45EkARs+aJc53/VOaUs7mgnXS+
         oqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U4VhbEcLnw4cX0Cs/v1k7+wlHATAEFIRABJTvsX0wJY=;
        b=F4DwgYZgwnotjW56t9oosAJV15W/Ullkw3bJFCcl6Mdgklk3sqXaIBrN3QQSyOrd8S
         ldyDU/aQSEjQyjW/OLVRa3SNS9GOCN+O4Q69yAFVGeW7ncQUz65gZUpCSofyBKoWUWIV
         q4RXlCPldUv7s6hcnWPiPi3PXTxZZXRsjHooXN2vjkG+RqfGXabJX8yp/b31ipSrdP5b
         XMa9eN2yVlmq3YFjMw72d7jlQEzdLEYiVJVrPrtukN9LLrD7VTW4DTJk//85RLB2WbMk
         F/Q5uBHgLkzv9WUHIxQgnzBA9KXqpFJMrYrl/LaCAQRf/88lyQbwNb2lw+PZkKZayc0G
         fpbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjSmfwVUrgFS1Deb257oRcxOA2B43GlT8CbMXTMKY7NwvlUswG
	bjTStwnC7I1kGA8h4sgEaK4=
X-Google-Smtp-Source: APXvYqwcfkOdgyDTuBOcZR5WHPC9t/sIuabdMgIQFmWrkdYdx2aC2j41XU9w/zzAV4EBcl36CvGHKQ==
X-Received: by 2002:a9d:60c9:: with SMTP id b9mr10113123otk.255.1571444458096;
        Fri, 18 Oct 2019 17:20:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f4c9:: with SMTP id s192ls1315743oih.1.gmail; Fri, 18
 Oct 2019 17:20:57 -0700 (PDT)
X-Received: by 2002:a05:6808:606:: with SMTP id y6mr10349558oih.74.1571444457712;
        Fri, 18 Oct 2019 17:20:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571444457; cv=none;
        d=google.com; s=arc-20160816;
        b=uZaiwv0zzY0pLy8kpLb9Q6L9clEiTaQEDANoQzxpUOLvNchOb6f/YAdK30n7TIs/gS
         PkcBNRQWGoDayCP/lo0/+XQqXEjbzLXD8woPdsCbNkWGThmiGeGcMkYnX4SUH34DpSzD
         ipMvHsYyhhvCx5BLmzlu6RtpHyjN8oZXo1Jq8mjM3QpjU1Tqa+BM/+WNlnL3WrWGxoPP
         /jxaUS+ffgZk8bigHoEpRxf1AQ+q1t9pWEQEmq+O135BnJv0lHr/tKzQBq19SCQRaU0S
         KxRAIb98FS3Z3bwxIzFZn4ovXMzXqFWokx9nFGYzTx2zQr3Ht3KxhoslCETKAOzBpjVG
         RclQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=J198Si9ez2C61BbebbbIGuJTdPlemqNtHh18roB/7I8=;
        b=hPuJTTaLeXlLmjd9AN0ob0H3b8XzgAdSB7zSEo+e51zEkZ5Wx9BjLzMBwY8sR9IG/G
         UAQ7vp6SJfAbr4xd7lsiK9Tj1ginwktRUu11Mi5Uj0co6nI5UnUEAzGpnZlYseQqvJ9X
         cqRQnkvmZ/36iDSjfpFKKSycTEKbE7TRN0rZBAFInNGMQsc5gR/qAu5a4f0UtOH+UspJ
         wv7u1KCJBK3KMony3QdMxMylVayN6PDMK1ZKOQP6rYpeiFV5W34iSdMtfRL8QO0C8L/q
         i37eltLxo2o/eEAPAla3qCXtvt4mMycALMYJme1TDICw7b0uVnAhJm/r4YR5G8voQ4B2
         VxeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id b11si599634oii.5.2019.10.18.17.20.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 17:20:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 17:20:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,313,1566889200"; 
   d="scan'208";a="190520543"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 18 Oct 2019 17:20:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iLcUI-000CuB-UG; Sat, 19 Oct 2019 08:20:54 +0800
Date: Sat, 19 Oct 2019 08:19:58 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [arnd-playground:pxa-multiplatform 46/52] arch/arm/Kconfig:697:
 can't open file "arch/arm/plat-pxa/Kconfig"
Message-ID: <201910190848.JHAaryCw%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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

CC: kbuild-all@lists.01.org
TO: Arnd Bergmann <arnd@arndb.de>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git pxa-multiplatform
head:   fcc4181cd625827d83b97b98e66febd5743bebdd
commit: 038908f6d09fa7ceefb66dbd2de01eb462ced8ce [46/52] ARM: pxa: move plat-pxa to drivers/soc/
config: arm-allnoconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project a9aa4ec6a31c3c37796ca168b41f311b21359e19)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 038908f6d09fa7ceefb66dbd2de01eb462ced8ce
        make.cross ARCH=arm  allnoconfig
        make.cross ARCH=arm 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/arm/Kconfig:697: can't open file "arch/arm/plat-pxa/Kconfig"
   make[2]: *** [allnoconfig] Error 1
   make[1]: *** [allnoconfig] Error 2
   make: *** [sub-make] Error 2
   1 real  0 user  0 sys  103.31% cpu 	make allnoconfig
--
>> arch/arm/Kconfig:697: can't open file "arch/arm/plat-pxa/Kconfig"
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   1 real  0 user  0 sys  102.91% cpu 	make oldconfig
--
>> arch/arm/Kconfig:697: can't open file "arch/arm/plat-pxa/Kconfig"
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   0 real  0 user  0 sys  103.86% cpu 	make olddefconfig

vim +697 arch/arm/Kconfig

a66c51f9cc9937 Alexandre Belloni 2018-02-27  695  
95b8f20fd6a269 Russell King      2010-01-14  696  source "arch/arm/mach-pxa/Kconfig"
95b8f20fd6a269 Russell King      2010-01-14 @697  source "arch/arm/plat-pxa/Kconfig"
585cf17561d317 Tzachi Perelstein 2007-10-23  698  

:::::: The code at line 697 was first introduced by commit
:::::: 95b8f20fd6a2694a16b8addb190b942bfb670c88 ARM: fix badly placed mach/plat entries in Kconfig & Makefile

:::::: TO: Russell King <rmk+kernel@arm.linux.org.uk>
:::::: CC: Russell King <rmk+kernel@arm.linux.org.uk>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910190848.JHAaryCw%25lkp%40intel.com.
