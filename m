Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBC7R6WBAMGQEKUIMZAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 698A734A151
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 07:00:45 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id z140sf4123571ooa.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 23:00:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616738444; cv=pass;
        d=google.com; s=arc-20160816;
        b=OUnNHmU35LKQ2nVaN5+HF2afGdIulUGKCxQO6M+2ttqwzcIjiLosSBRJB20QFvIqai
         ZBwU6FH84T1lobu35G0ct8G8yfbPDrneuI91J2QEp0HBGwWHHTQ6cmmtzU3WA/h9dBKi
         vgUM0F2/Qi8kgyNp/ArSAxXFE6rHb3bUrv/BZVOqVOt/y5EHDTDdanhNsiD40LaLSs2R
         yftYx90pF/iC2RdHdMmgY5aNuxAkN8Aai6dT77ququPmQBv3SnRbTK1ggWo7g6I9Hmfe
         r5Pi8/3r6YoxQuGRZV8vQBojdRqRnKAOUpandYc1oyeupHTN6O6BvbnmSf4/HfYS5m/H
         nPLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=47ytJ1kmVR/qCml6MXDhfgTu7xEZf6y1ZbDhfZ/vZ5o=;
        b=TPzI8nKAxjJ3kFhQLrlSnlafuJyvJ8vmjsfV2gvpz3xlW5z0cNRnzXXCbOFHQDTZCR
         kQja2FeqvZ94aO+VaC12R71ngAqo0OgwDEuMyTZiZ+SmZxdlI1deJY3sSG8kHE6knFZE
         c47n+Z3NrtWPsffQPWSWJpDzDEIitpCJI7ToDtiB2gSFkDyKPoY/IYycJj2AWUQkKDDw
         OsXVWLkSBZTtbTrKgrMo06Y3vl3IcV60PLbCiTkMRgxJfSSuwuBHLHk0giw9uxdbiIX/
         m5FhbMYQajo34kGeeab+AcWTxEGsWbkV+5fM7aXwAOiOngte7OUMamlGXxv1C/qABCZX
         deUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=47ytJ1kmVR/qCml6MXDhfgTu7xEZf6y1ZbDhfZ/vZ5o=;
        b=hjqtcibdZHAoHt85KALffZnTjsthIPWuk7eUPkwuHoJdDkKOq9PDUMJ6fhQthqknOz
         WRALd+cgfh6kGLQulHqr34NswYEyDCYLbm+viedLR9APmQHXiy6JlDdKXO+0Vdsei+Sy
         W2kq4h/tTLvTjAtkJv/1o393CELlebYXrHnrvDNnmT6XVmpP0dLUpgZRM6cKK/bR9Cnf
         dftm96c2HJzlGoTiSudnZQpjkUYI6rc9cNjCGixM/MEfmYZosUhik3CwlbiT7j6jpBR/
         SrJeYhIZpruBU/CZ7/HSxEwGgjk3GDhdbgY+DTvY0Eb5dEt8mYsxBbOzPNsT5ZyAuiTY
         q/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=47ytJ1kmVR/qCml6MXDhfgTu7xEZf6y1ZbDhfZ/vZ5o=;
        b=BwyWSnAO5U6O40BSCvRoJluE6kXNyoA6WltzFOZMS+mvu5thIcoPJivFCuw4SrNMbi
         0Qr36+oZ6aaAQ8zGCMiCYlUDWSw7Zi3nOHjWE38mOeIMGbW+FoyBWF66Y0gbyAGk43Ma
         bX4d8bmx5B5IS4+OGhyITwnYlxU8ZG6m+GBzTSlRQKRRlrfXaEJvoteSjt6HsoKHaj2w
         iUwUvAU3B4AN2Y3ITo2JoUMhz/wP77R/YHmrJTd1noztRFPGLX8D/l6h0uq/eWNlm2ft
         2JPWmCOH5Zy3gp8mmyJu9Wqk5ZytNxaTKF+jc+LS4OBksL++A1JXR6xygop+3j+4sSaF
         tubA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MijiLzSwSz2PvQ696iyrb3V4lGD77jwrZ7zWHdOVMG/Yo6VWL
	Lf6HDA/qy/eBxFnKVmbnNj8=
X-Google-Smtp-Source: ABdhPJyeoPcnv1vc/3GcWgApQIA4Vb+A2j/vI+wgU2bmjFxxLDV9xy2Yj3JoGMTE8FTg3id7WxdC7w==
X-Received: by 2002:a4a:e382:: with SMTP id l2mr9885718oov.17.1616738443882;
        Thu, 25 Mar 2021 23:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d54d:: with SMTP id m74ls1947890oig.11.gmail; Thu, 25
 Mar 2021 23:00:43 -0700 (PDT)
X-Received: by 2002:a05:6808:a8a:: with SMTP id q10mr8659711oij.167.1616738443418;
        Thu, 25 Mar 2021 23:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616738443; cv=none;
        d=google.com; s=arc-20160816;
        b=j0+oH3g11TAwqT0rLDDdYMI0DpLNDzoL7uU+1PUXU8D0tho9iYNijxahi0+lqz20vV
         o6aRscFqJeeK4mxvUnuYvLM1BKYgl2eXwlWYeCqlNxqPbgMrqo3nDo1LpzrsAVN1yJ0d
         TWStQDfKLJbUAle/J/hMAoZpuBE77PQHMwZ+nS7sImu0ZYz0XQxKP7/HUMpA9vRY8zJw
         PU54zpqVZcJoFCYi5j+qDI3wys2V4E6KpJPywobob2dK4D8D5tb5PJckVbNMgLUKCR7i
         NBf/PTyd7lJzmeqfjCN0geLiFvtRxVrkjHMHAg6kiYKrShtDURgM4zy7VEugSTXgX2ha
         z52A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=43lnLSZ/Lt52IJ3kJrt/qLAEWOecAYKrEYNLJKVu05c=;
        b=hVwnqyiujha18CFkQ2tbcclNOXJya2rPs7S8+eEx2oQjw2hZF53wBxkrSxaiWKqjxI
         8gUhDOnC/kA1gNbjq8TPEPgnfpZdDZjXYNyz9yU4UVg+AtKmIL4tb7DccUhM7vP5qSoo
         4KyeiQB2Kf/SUyRC5bw5Pteyxt9l1g5U9lB401xsomFnzeqXJt+VT4np+Yxt5rxSIBwJ
         JpiWSZmyCjsbmT8DpqlxomUwge6eLiimBPK7t9jN+O0Iem4A/5noV+Rr3IAQpS/evJCC
         Rk7qFFHbeyxGZ9Ca4bfDD1RuDksBTG38JFtrfsy6/sxiwe4XWqJLP7WXEo0kfZa3nRSQ
         t9tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id x38si525204otr.3.2021.03.25.23.00.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 23:00:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: tH/ZNUH+8hrYlLE2MpNqxCS0/4v1Czs65ZBo7MIFA1eTB3M6exheRHdpJ1d/1sfMor/IzGxlQo
 T29KZK9OaDIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="187791405"
X-IronPort-AV: E=Sophos;i="5.81,279,1610438400"; 
   d="gz'50?scan'50,208,50";a="187791405"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2021 23:00:41 -0700
IronPort-SDR: p71zITm3Z1XmlwVPVUX8tvTyxe95TC1YTlvDGJSVSqN4Wa+RJam33Bm2zE269duoI7oJlr7TJN
 MemUtbizmneA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,279,1610438400"; 
   d="gz'50?scan'50,208,50";a="443177912"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2021 23:00:39 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lPfWQ-0002Xe-QV; Fri, 26 Mar 2021 06:00:38 +0000
Date: Fri, 26 Mar 2021 14:00:20 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: ld.lld: error: debug_core.c:(.init.text+0xA8): relocation
 R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with
 -mno-relax
Message-ID: <202103261405.bl7DUbs4-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
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


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: Douglas Anderson <dianders@chromium.org>
CC: Daniel Thompson <daniel.thompson@linaro.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   db24726bfefa68c606947a86132591568a06bfb4
commit: b18b099e04f450cdc77bec72acefcde7042bd1f3 kgdb: Make "kgdbcon" work properly with "kgdb_earlycon"
date:   7 months ago
config: riscv-randconfig-r022-20210325 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5969bd52c8a48586f134ff8f02ccbb295b3)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b18b099e04f450cdc77bec72acefcde7042bd1f3
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout b18b099e04f450cdc77bec72acefcde7042bd1f3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x1098): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x10AA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x110C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x1272): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x132E): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x1372): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x13B0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x13DA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x1458): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x147A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x1490): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.text+0x14DC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: debug_core.c:(.init.text+0xA8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: debug_core.c:(.init.text+0x10A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: undefined symbol: stpcpy
   >>> referenced by tty_io.c
   >>>               tty/tty_io.o:(alloc_tty_struct) in archive drivers/built-in.a
   >>> referenced by tty_io.c
   >>>               tty/tty_io.o:(tty_register_device_attr) in archive drivers/built-in.a
   >>> referenced by tty_io.c
   >>>               tty/tty_io.o:(show_cons_active) in archive drivers/built-in.a
   >>> referenced 2 more times
   >>> did you mean: strcpy
   >>> defined in: lib/lib.a(string.o)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103261405.bl7DUbs4-lkp%40intel.com.

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPtsXWAAAy5jb25maWcAnFxbc9u4kn6fX6HKVG3NechEN9vybvkBBEEREUEwBCjJfmEp
ipxoR5ZckpyZ/PttgDeAhOSpnZqTibobt0aj++sGeH7/7fceejsfXlbn7Xq12/3qfd/sN8fV
efOt97zdbf6n5/NezGWP+FT+CcLRdv/2z6fj9rT+2bv58/7P/sfjetSbbY77za6HD/vn7fc3
aL497H/7/TfM44BOc4zzOUkF5XEuyVI+fFjvVvvvvZ+b4wnkeoPRn/0/+70/vm/P//3pE/z5
sj0eD8dPu93Pl/z1ePjfzfrcex7f91c397f3X7/dDNeT1XhyM7l9HozGz8+T5/5wvf76dXh/
83X0nw/VqNNm2Id+RYz8Lg3kqMhxhOLpwy9DEIhR5DckLVE3H4z68I/RR4hEjgTLp1xyo5HN
yHkmk0w6+TSOaEwaFk2/5AuezhqKDFOCYGJxwOGPXCKhmKDo33tTvW273mlzfnttVO+lfEbi
HDQvWGJ0HVOZk3ieoxSWShmVD6Mh9FJNirOERgR2S8je9tTbH86q41o3HKOo0sOHDy5yjjJT
C15GQaECRdKQ90mAskjqyTjIIRcyRow8fPhjf9hvmo0Vj2JOE9z0vkASh/mXjGRKe80qUi5E
zgjj6WOOpEQ4NBdTy2WCRNRzrDNEcwIagr5RBuYP48ICo0rjsD2909vX06/TefPSaHxKYpJS
rHdPhHzRTNPk0PgzwVLpz9punzNEWzRBmUsoDylJ1eQeuyMwQZXkRUZnnBDFPux32bPVVCQo
FcTdne6KeNk0EFrxm/233uG5pRlXIwYbTMtR06ZfrWsMdjQTPEsxKUyjM6yWIHMSS1Fthty+
gDdx7Uf4lCfQivsUm8YRc8WhML7TJjTbyQnpNMxTInJJGdi6LVMqoDObpnmSEsISCQPE7pEr
gTmPslii9NFhmKVMo5mqEebQpkMuzEzrCSfZJ7k6/dU7wxR7K5ju6bw6n3qr9frwtj9v998b
zUmKZzk0yBHW/VLtH+uJesKHATgmcMhAwuUoEkHNFvCzPt0+FciLiO/U37+YpV5NirOe6G65
hGXnwOvqpyDWE4KfOVmCebgmL6wedJ8tErhfofsoDdPB6pAyn7joMkW4xVAdCwkOR7ljZnoK
xYkJAYdKptiLqJDm6bOVUjuOWfEXw5XMQggmYMIPL+0DJnAIvetjVhmOWP/YfHvbbY69583q
/HbcnDS5HNPBrQPcNOVZIoy9QFNSGKp59MFN42nrZz6D/xihUvdUTM7cxQDRNDd4zmOVyndF
yv4T6otr/NRn6Bo/AEt5Iuk1kTCbEhl510R8MqfY7SFKCTgk7WPXWQpJg+uDgO92mL4Ku+D3
4Wg32s+kyGNh6h1iMFAuhdS0xat2n/qtbmA/8CzhNJbKrUqeuldd2KSCFXrurgP7KAIBa4LD
jpEkBnJrc/L50DhNJEJGDPWimVK+Dj2p0Yf+jRj0U8QmhVga6/Lz6RN1TQo4HnDM8fw8emLI
8kN+vnRHGy3ML7PG7iGfhDSm7nGuQoN9/AF4cggNjD6RPOCpthWeMhRjG0S1xAT8xa17LCNw
ppjoeFM4tGa0wssa51sBAGUl5lgCTgUDd5iXSMttB3ovr0kEBa5wR1cu6NIZuutIAYY4c7Ja
Z6WmkygA7aYutXgIoFOQadDYzC+DLMghTBJuCwo6jVEU+A5ZvYLA2GMNhwLLL4oQ3KejLaIG
Mqc8z9JWZEf+nMK8Sx27TjF07KE0paYHnynZRya6lLxAzW2qVo46fZLOLZvzksC1wYZv0RjC
Wj7ziO+bZ16Dd2XUeY0Uqy1WROglnzMYgRthO8GD/riKeGVOm2yOz4fjy2q/3vTIz80eYAiC
oIcVEAGQ16AO51jaw7pGrEPnvxym0c6cFaNUMdS1PyqBQxKyPyN5FBHyLPOIMncEEhG/xEAe
bH0K8buEcZfFVBRUyCRP4TBy9i8EQ5T6gD9c1i7CLAggP9HQQWsQQZyw/LskLPeRRCo/pwEF
gQL1GgebBxQSbFe8085KhyArj7Fz6kp4NPTMpCSlAs9bKQxjCHBCDK4fssacQaY1ucZHy4fB
ndVfLjxqOEtmwMI50q1Uvl4DqpIytiAWDwJB5EP/H9wv/rGmEMCxg1Ock1jB8Nb8i5zvMptE
kLxWmTXjPolaEgsE9qnRJIoqtNPuJEsSnkpRHRGYcus0wq42UmUngXG2ABzjWQGcSzETrisy
pJqwzqno8utUEkHqnwImgGlYMKAWEBnrUsMFgTTQ6C+AqEJQGj3C79xCrclUKhXmERzaSDzU
u6bANSASY2oFzj5gsLfdZm2X0AQHVA52bTtKRZ3TtHUMK0xu9aQ7T3ars/IyvfOv103Tud6P
dD4aWtlaSb0dU5eD0bsOK/UjXeJo8ELNQLErdQV2BtoQRfXD2E04BUn4KJTRDae2o2IuYCWz
mBiJVwOL9PmB7DLHZiu9/tPb6+vhqGqbCctaSija6ZiUsMx0A45WRjBPMqf2bVWbAcXKn6pg
9ZQP+n13veEpH970HQoAxqjfN5de9OKWfQBZQ6UEqxDhAo+V+8nn/YEjTjX5nZq+d4DWh1dl
YUYkxMzXlUyNkMvmlmRhjIe/IV+EiLf6vnmBgGf00zht5lbupaZWKXR1XP/YnsH+Yb4fv21e
ofGFYT5nLMkhGBEX3miqgNqphJwbQVUzISFU8FrSacYz0fUWYMC60lTWb1uOUJV/wVGX7vQC
06epdrkoaY2tCsdwpsqyq3hw4J+UTJ10naRpJ5r7Get0rIZvFHOda8K4jlhpbOAjIyvl1xJ6
fIjNEpbH7WzA4lzaGKV3spR6b2bUrOBrNqimCmkEK1xgOBztiYTGZQrCqyU4tK9ZGsNA5uNa
nhXMrwGBFgjQMbIqh0me+HwRFw0gEHHrjiDi4Os8WOACMJIxRgnzNCLRKUFreK5zMQjBM5LG
apcWy/clqjm5LFGCOUtnby5WvZUq1pmgVXQ88xTz+cevqxM42b8KR/N6PDxvd0VBsu5IiZVj
uBKbap5arAB8pEw+GlB3ZSRrc9X9URJlUxo7QeE73qX2p3BoVb5nllJ0kBEqFWguoaq4qEKK
SsNlx1DbBCUHGCfiyMr6SmYWK4Y7AHedRdeLtPsTKa6vdpxpWbOAzkTLRZn1AIOD7KTX4IgQ
Da6OpCSGw/Hl5sObW2dQtaVGk/G/kLoZDK9PBiwvfPhw+rGCKX3o9KLOakqEM5suJBT8XUC2
IAT4saYGl1OmIbC5yiwGr+UDQmYej9yFDDiPrJKbqXz74sCiKG5HENiyxMrD1bl1nTMRD4zC
YFxcXIKLpbG2Ozxr+Y4axUPaxiAgpmzh8C6MUb7wKiBM/tms386rr7uNvoju6ez4bKAMj8YB
k8o/G2WAKFCVGOOoFUICpzRxebSSr7KhTqOLxJyb18Il46kUb7RXDg15LWyB4rqrSoUYbDt2
4WxYTRmcaw90STNabWzzcjj+6jEXrKrBnyt9axBtmRkyFGfIddKb7LAQMYJAxXGQVDyXZvxt
OHP4Q8W9drLZkbDuB9TkqeARsq9RRRJBMEykjjk4ATw2bpQJ4bJ166pT5ZQo87TQA6PTtNVz
AfHyVpYKyXkecwnYwi5mzoSr9lbFe71eBucF+X76MO7f31YS+mIH8Jm+eZuZ1x8RQTFGODQ0
hBmyfhTJtJ2PoeqK1pnGITgLBImHuv7wlHBubOmTlxm2/jQKLNt/EmVB66UZsaLpDXeMqZGw
VrsDszEwKpqmZnEnSMET5vMKH1b7RlKlIDWG5RmnWZJ7JMYhQ6nTd1UnP5GkAIXIggeXz49x
OUxc69Kggaja5Wdap/P+5ud2ven5x+1Pq1hYoHBsFHnaP8rLeOEkdm8cgamN2MssdSgyunAZ
pXminWIZTNDRFaa3cF3vwByZaK2k8+rA7Cj/ktF05rwqUust7dkgpUWdqPQWrYcmSkDIzDMN
UtFURVlmrkceiotkS80EI2ZTKJ/bhCRtrTJBglpILORS4UfF7OBdRVsf9ufjYaduTb/V9mHN
OpDw58CZ0Su2eiHTuRyuGU4TyZeqBrpszPO0/b5frI4bPSN8gL+IotxhFLZVO3/R6shf6GG6
1MQKmya1amCtEVAOj51Z/rXJFbHu8BXUtt0p9qY9+eZEX5Yq9L0C4L7eFOxmT05V3aelCIx8
EptQ1qS6VFKxHHoxWU7lfL4bDopO3e8k3p16XTFx21tti2T/7fWw3Z/bFkhiX9fF3WUYs2Hd
1env7Xn9w23d5ildwL9U4hDye31ajU4vd9H0gCEVbl4uJJiBJ2//1slRjqmZMkOzwkeWE/64
Xh2/9b4et9++2zW5R0hX3Rf9iX97N7x3suhk2L8fOlkpSqhPeccV6IRyuy5jRI+34VpWJM4h
iRKzemKRwfnI0HpDN5csCaxQUNEA8WWx88GLRLGPVK3BMsO0GCiggNoBKxRv+TqrCLbHl7/V
Ud0dwCiPzfSDhd4Fc+o1ScMAH3o0IfwSYEE9mnXL3rTTpati6Y6FNHJV0mVG+PZMa2Sg0y91
9W+B7lp76pbCT+n8QjQtBcgcxrsioJ5Ult1AJGN87r6n1mJIPMa4Ek5S7rmumFMytZBx8Tun
Q9yhqQSrK2g+7FOVzDJhgU0JzE1TrEB7q+pq3y6JdC24qBC/nXrfNAgyTJqFNFeH0Dj2plxd
P42FWU2FX5C7pNTMODSRyVnDaJCglqdpUPIcutMimbfsdMvM5xPwQ++Hmm/hNFbH81atsfe6
Op5acVtJo/QOTDuVzpwb+GWBvJBpnJZi8aCmWl3CluhnHJ1uG8fZmZWeVgZ/hRioXmcVV8ry
uNqfdvqJdi9a/bIcs54BT1pzUmNSlQuBWTAkiiJu8QAPsU8pZ5+C3eoE/vrH9rXr7PWCA2rr
8zPxCdYmbQ8FoKWwdKumU/Sg3iWUBctLilUG7aF4li+oL8N8YA/a4g6vcsc2V41PBw7a0EGL
JaTYS2kvTa+A+eplzkt3beB80SVrAXYmqW2eEE6Y3T/sQ7tj5AlyIXZf2bkCW61eX7f77xVR
FRkKqdUajmh7e8HNwoKVChPI54Q9U32tBy7qxUEsS9jOBkonqbrAntj316ZIRIyH/CZD7aTe
yObG1WTzoG1gFUdVOSHxj1y+1pSbEkjf6aVepgnlOre/1Atke7Y+KgBjd1fAGBTz+BHCtjuw
KEFtcvk8zWPuDk+6N4CZsO9Oe3hvv4vL6c3u+aNCZavtfvOtB32WPtt96hOGb24GnTVpqnpN
FVDXMyhDppX9KY6IOoafhKmZremzLP02DX7nkksU6SdsVsml5JJU1+UVdzCclAnS9vTXR77/
iJUqLiXzakSf4+momZenHrKDn5I5exiMu1T5MDZu6t9Vq55LDPDMHlRRcrvgqT14TBTHSSze
xzzmi5TKjpOtZMrU8cLmVFKQ3rqHGC6VD592dkUzCcYK+4cI0Eg8fVcgFwy3Hd8i7y7PbApq
rgPU6u9PEA5XkETstAJ7z4XDa5Ilh0ohK0MRbRuuwWrn9Bek/FYIKPYLBcRBZkuKHWTlSNrb
pBnqMKubomvT6OSqNQeBraO4AjRse1q3MYwWU38I6i4C1UJgKdz9ZU2jDypmPMah/US2PgDa
svUEokT5zP8q/juE9Iz1XoqKnNPDaDF7eV/011ENhiiHeL9js5PMa+EVIOSLSF/gi1CVQFv+
Qwt4xCs/phr2bSUobgDICULDhf1SEtMoI+2Bw0fIcQqsXAFxaRwIHph/V3cxUkFVi6gK+uqG
xyLqx0pu1ox7ny2C/xgjRq1RdWwjJjwHmpVKcHWjDrh6rkCjeSNQMHg0t0eFTCi1XmAB6rTf
bJWEHC0nk7v7WytJLVngt10voit2rAA0rnxDPGfEVTCy6PX56GYxgK0ETwVsuRhF8/7QwnXI
vxneLHM/4a5UG7JL9qj1ZdYpQxRL7jrQkgas5ec16W65HDSGQbG4Hw3FuG/AVDj+ERdZql5c
peqLAsOQQkj+It78Rokv7if9IYqMbaUiGt73+6M2ZdhvGlaKkMC5uXEwvHBwd2c9Vao4esz7
vgsHhAzfjm6GVhIuBrcT1y2sSNv12qpwlZfHoe6jKIDmwg+IM8BRgXNIsZbWzswTFNvxsLlg
GSrT6tRDCAEXxLo1xIKeIzkcmyOU5IhMEXY9myv5DC1vJ3c3xv4W9PsRXt46+gMAnE/uw4SI
pXPypRghg35/7HTNrXXUZTTvbtAvTPLFprUwm0HMkRBZ8Tla893e5p/VqUf3p/Px7UW/ej79
WB0BBJ1VlqqG7O0AFPW+wQncvqq/mif1/9HadXh1saQ5BuqVElLJR9J867k/A34AHwgR5LjZ
6c+jT4bnKJvOeaLqGk5FXuui3k0c2sFeGSOKsPo8wwYctoiy10uQpOZnwjPOPoIECRILat19
mW6uAPxY0AqLdkxZMdX1sdmFq4FRwMvUA5LOWaGEkN5gdD/u/RFsj5sF/O8/3eECmpIFNX1g
Rcl5aKZTNTnm4tGsMV0dp9zn17fzxQXT2Pp0W/+EI2u+yCpoQaBCXqTio3EmC576yMMnc9fF
qOYXl94zK2EuOAyyN7qcFdW+urazU59HbtVHAs8rKzyVjbh6AULm3YlUnDwRKHM54JaYwAAU
4nz5MOgPx9dlHh/ubift8T7zx2vrJvNili2iciYv5uZcSsKKBjPy6HFkfrdVUSAiG4fcoCY3
N5OJU15x7q07/ZonZ57rcVUt8EUO+jd9Z1vFunO/9TVkhoNb17VfLaEKiDP1LPR2cuOYfDSD
CZp7XnNUQnGtY125UEZKfIe6JEa348GtY0TgTMaDiaNNYbdOXURsMhqOrk1HSYxGzsYQDO9G
N/fXWjMsHFNlSToYDhwzjclC2l+N1CyeAJTirdp+W0ggJrJ46tS7kHyBFsgV3BuZLL60bZA7
JK6SVC1Av4jb4dKxKA4OY+xck8QjMHDX0W9E2DCXPMMhUNx9LKJxf/SOOS/fOy4YJYPB0m0j
Hnbnn4brucIHryPUh+wX/Y7+OsP8ckT/VtEyR5hABm1uh8mkiSTuDwUNqanErtNmSADoXyDb
ZgzuzIMf7w2SAGoUF4qDpVhxwZEvEObMlSGVulA7XfhwQyENUaXV6jtOSqybRVNiMknY5NYJ
6E0x5N9BDtdYa5dngzKbf4mRQmgalFdfztmpl21RzpaunMySy8AH0iWmqXskLxsO+oORtWlt
9oUbYlNOFUTU026K48loMHlf/nGCJUODsSs0dAWng0HfvY/4UUqRtFPKroB1i9jlj1sZgEvi
4jaqqgLYk7v/ELFEhPTS9AiR9AJniiK0vMarLvuckyJLrP5/fS5tbJB9plJk72h/yrlPl5f6
CKkPSdW7ew1pKhiRO20z5cSteLy7HbwrN81i55fb/8fYtXS3jSPrv+LlzKJv8yG+Fr2gSEpi
TJAMQUm0NzqexDPJuUmc46Tndv/7iwJAEo8CnUWnrfoKQBGPwquqoH39/XgI/CBxVF+TO9RC
1Tiakeub2zX11DMJm8HZzdgU7/up5+ONxWb3SDQWBhLq+zuXImBq4AAmx3WPaUONk//AxavJ
FJ+b20gd4tdtNdWdQ777xA8cWrZquY2Go4uyPf1hjCYvdvUw/vcADopvfBv/+1q3zozgxjIM
owk+8c0eJhTmG0VeyzFNpsnd5DChwaVgR+GCwtHufpikIQ5C+i0lwCfMvBU2muh3AEeIHsMZ
TPVI3GVU43nYd1tl/MqIBL6SFFD/Ll3OJRnmXuosjWkdONlwrFhM0aTrLqf/gogQ2qx3i/cO
jAY22lvoD6c0VYCdbJhcjw/j0LX1VjEjW+IUuwhOQjaK44P2l6qpyunDr1QR/7tme7rQVS5r
Xz4vvV0u4wyMwzonV4IPEQne6tqhtgdyU+1StOmmbqq8dGHUPa7p6AehQ+Gxzc1BNcE1sL5y
VRud0jh6sy56GkdeMuFCP1ZjHAQhXvjj7LaElj50JyLXetgeVpsJ3tNI39/I7Qvu9jGQellb
rQaEQGT16+KnRDng45SDem4/U0Q/MziDUp6Imvy+b1ECkxJ6FmVnUqJoPrQ6Pb1+5PZ39e/d
HRywaVcqg9on+U/4l18EKVUhgD4f8H2lhIu6p9r9gaA39Z7RncmG/GoXJQ+FjXSmPDQgzqAY
IpuhMPPQ8R5EUy9QgCqOZKhS72ejDY85qeRl2Wr/Jmm3lkZRihS5MDQ7NF1Fzr53j68sF6YD
Ycsz9MAba+f1MBw5ZxUn6Z+eXp8+/ASTX/O+bRy1I4gLXtHntp6y9NaPD/iGWFyxbOAlP3Q/
j53pQClNYF4/P32xb6PlBnuOAaH3YQakQeSZXVGS1cBUiHkbmsSPo8jLb5eckVrTIBDhP4CB
EHYIojIxEu00ByxVSNXVSAU0UyYVqKZ8wJGC4nTCF3d7HGyH25lbRu4wdIAAhaTaYqmmsWpL
PXacVnresn7R4WabKmNOe3DSukBZuKzchtaIo6k1ODi1u/GB5s6+cn2zrYcxSFPsAEYygYmp
NB5ZrsJfvv0GaRk379786sy+8NH7uBaqxpQE6qZhK3i3GPrhg0JU+qGZ6zvUqU6CS3wUjOzs
3LQo2ql3kDdS+XFNE31KNzHHZC3Z5JTybsyPvCOZRRj4Rq04OG/7hz6nm7pBpoRUbkHljXlP
b2iHZ3MaJhOb6aQcG1XAmNiwFu7NvgEOfWCVxWirHlgjIEn0QJtb08vKNAVaQUwuk5v9YuoL
AjTUx7pgUwFuVSm5QW89+mG00Td79U5KIWrNutgDanOMkYoU49DMdmE61IJtIThxqIUNECx3
lCsoSSseiiYvVWOQ4uERjEg1F1bSTbmwLG3QOyOOUwLW4dr+DdwW4HoKDTAzg7ejIk+tB4pt
b6eywYZO2z12RDn5a89NY64LZCjV7jyiziEyYBSTYM3mdJndLNSMgLqoOHfTwr3nXg37otB5
UzH5jOBU44OMM4jRRKSoPxbrMk5VPTEaRC31vXZ7CkGh2JpxZlvruSdr2GWdyn3QIIKacpnN
6WD5IoJ3aNuXFYPQHy0eGpFziVCmvCMNh7zA9AHno7UhEmWq2yDxUN9lp12XCFG6azV0hwOe
+d4SQmvoKxKlTmJ53zdMAZDF94NbZN99QJapVv9n6xwkR/BAY0uN2047ulypO9WAqhiC3aS7
xznKV6ykqosR+FGF7vGgkAwxOmnB/usVU2tOgED5+pG/oNpsbO4T1y3a4aIC1ozSVro5CMLW
ni8dXMoaufCsHUkvTG64qpoebLHoGIaPPTe+ciD6jQWb/JoHzf5ypnAXTlWsBeiMoLuzt6bd
ZrOK5r2PqaYzHXm01sVjThg+sGWEbYyiHrRARfHbUjB+1cmmgwWn8ViLF51IzotbMPnzy8/P
3788/8VkhcK59TsmAZvB92J7yrJsmqo9qspGZGpMVStVFGiQm7HYhfxo2wD6Is+ine8C/rKz
6usW9K8NDNVRz6asdP5VtcgUpJmKvsGDlW9WllqKdNXUHdYBoESbP3i9Nsduv4YRgHyX/TS4
yq2NIbXSHcuE0T+9/Pi56XorMq/9KIz0OuDEOESIk0kkZRLFhrykTH3fN+uuNg4HVIjq59VA
6+t6Qm+nQQ/wo7hAU/xAvtRlnbPehF3K8cqtaRRlkZmOkWOH2YKEsxi/fAP4UmPOWhKBS82v
ysjlgdjv/gUOjtK55h9fWTN9+fvu+eu/nj9+fP5497vk+o3tw8Dr5p96gxWgVUxPANFxIUYw
d8vF/AGcvKipIDBVpFJjYwMJK5cP+fn1jneuAG3AeV8RNnDM2u8sUxq9HxT5ln8DsAz34WS3
KRlRo14A9cAH1V9MD39ji2wG/S6GztPHp+8/XUOmrLuGzc7noDALLZsWPxPkHyIMz13f0O27
8XB+fLx1+kqHYWPeUbbqIga1bh+kIafRH8FLACYA68Cq+/lJKCb5mUo/1D/xQGvNWNKlcow6
x6NqcKjJ1e34QpJWx1ZFchthRyDtlQE0o56poM+BTxTxLSUcajvVomwp0KRPK7Youiq4tsPp
cWtcypaiKHCiOL3v7Vh4/djfffjy8uF/TS1ffeNBn/rTA7xXA3afbTXCC0Hgdsjj/7HdHwEP
zLufLyy/5zvW9qxff+Ruwayz81x//I9qQm0XtmwpzOlzDmcpgZv1sEPdalO6wg9z6OHcmjFf
ISf2F16EBsggwaZIsyg5DZNAOS5Y6FMfeJoJ54yUeebF2EH8zECKPgipl+oLLRO1EQjepm65
FvrkR96E8I/kgJDBuDGJVS+LGemKqulGLAVbMuY2vaC7pPEjBxC6gNQFZMr8APMA64sWgTs7
QUwK6Q8V+ctZTXcwFoRzknp4D/ZQZpub0w+fevgjANiVBoBr4Bs1ItrXp+/f2UzLzV8t/cfT
JbtpMmIkCDdefkimqiux4hXOdfj1CDCU17zHbfc4DMfjbvQwwv88H1+iqN+5PfMLzsFh9cvR
U3MtrRpuumNdXHCjD85A9mlME+yYWcBV+wiWRF81Ks1JHpUB61Dd/mxUs3l8K4ndZObxQAv1
goUT5exuthFblt4O5rNfeqQvrF8sazdOff7rO9O1dn+ZTcetQssWO/gSLQGRkOza5qbMaJyn
FQ7MiuAbn3AyakJS5eWCXgzHHLbnkuGQRgm+7uUMY18XQWr2SmXONWpMjMBD+UZNDvVj1+bG
9+3LxIuC1KKyT/DJ9WLVO6j0KNoYj8ZKTcXe5e3jbRwbo7Bl9aoNjT5NQrMxgBjFkSWU0Mob
w0jq+a2mT+LIM8eFaRUhWsdp0C0bj8ZR4Ns9lgMZGt9U4O/JlMbGF0vLb5saa0dYnHolaZbt
1PUZ0ieWCFJWX9Gl3Y/ptNFFebQ2tl6/+bHre3jwLc6jHgRxaCiLMPAnVVREJOF9Q/fb3Xpd
lasLaySZPhiOx6E66g9ciK7QFRCgdZH36s9TnP/b/32Wq3Ty9EN/luTqy/Ur98PoFHWxIiUN
dplm9KpjKb7DUZn8K7ZTWzn0OX+l06O260C+RP1C+uXpv8/6x4ktxXiqBqLlL+hUcz1eyPBR
XqRWpQqk6sAyIAg/WEIobleNrMx++DaPh8cn1nhQ4yKVI3V+ijo8dcA3WluBfkHsELdVV3ki
1AdA5UhSD2+aJPVxsdPK2+FJ0spP1DGr9xdl+Q/XBLf84nj8iaPgto6+ZshRiGXcqG7qCtUO
v6qhpysxQx3ObGUuWHG1Jhd6eVnc9vnIhg3mRcRDhvFMVuEk9+KVoW1/T/lwhMpgyxgvxo7p
5tR5MabZLlLm5xkproGnbi1mOjRi7Nn8S6svUmjIlhCcQTv+m5GmOrLV9AUbJTML3atXnfLD
NSLJ23wmIuLt3wfJ5Jh1FgnzzEdf6lhqGnajk10rJl38lm2pUdOUbaMrtvXOz8cKqwswmE88
1D/EYAmwz+QYm/42kstpHxY2hV2nSkczELa0ZN0sDDGphynCmn5OWtMeJLZLY+KmmRfagLU2
mQFYpqn+DSo9TW1+Pm0h5fLOgmQ/hnHk29lDve6iJFE/fsaEMVAnmeIIW7Uo+RirQR3JQmyE
82rKkq18+yAOMkw61vF3foR1CI0jQ+oagCBCvxmgBLWXUDgiVq79oQCkWHGU7MMdWppc92IV
MPdAPqDg8inIdj5Wh8PINOCWwOeC+p4XIAKb25gVyLIsUro1nx8UqwT4yRaRpUmSJ6XisETY
bz39ZDtXzCpRhtkok52vlKTRtf3AihBwpnNYvag8uNWLyqGFatEhzHtX4wh9TGri+0mCAlmw
QwKQ5OWYTL4D2LkBZShrQBw4AEeUEw7hW9OFh4YJprZXvGD7RB9tqwmiC7U8QP3QoSH7l0zA
chEVcZx6TAfPeMH+gXd2C3G7ZaUvKb6JXXHfIb29bTcY6uj+lpO9XeOHxGdL3wMOpMHhaDfr
IYnCJKJ2kiMtbG7paCQ9Ti3Jj03kpw6LxIUj8CjBKvzIFkjYJaKCI51MXry1tqyn+hT7qiX+
Un17klfETsDofTUhdDgS5JrIhsYUGXXvih0iKVu9DH4QeFjFQfBTNoFujgehi7f6heBABJKA
bsihgRlST2B54EdoFwUo8N+QZRcEgTPxbnvwcx404IPOgShDWDXEXhzZH8QRP3MAMar2AUJX
CgpD6CdYP4PYRDDEkb7OoXBL13MOrBtxIEJ7EYd+QdgMUe+k6EMvQNT7WMQRMlE2JA6xL2tI
gu07FDjCMsMmL0ZN8SLSzY5B0hDpzCRFegSjJmgXJdl2EVmAyZuFKDUKQrQGGbBDalwAiLR9
kSZhjDY9QLtgq+nbsRCHQjU8KW6L0xYjGwJIzQGQJIg4DGB7V3SIt31Bkgk3uZ8FPqRRpnx9
T+YA2CYnsSJIIcufINnSRvAiX69GmVR0/q04HHqKQC3tz2yv1dMelasewigItpYIjCP1YqTp
66Gn0c5DlFdNmzhlcyzWXQK2XYwd+jtBlZeEwL7r3OSj02Z74Q7TTaUuVSvyRUKDYl/EkMBL
QkzlcCTC0zA1lSKaApDdbudSf2mcYo5dS1eaKjYBYIH6errzdvh0xbAojBM8eMXMdC7KDH9p
VOUIPKTsqewrP0D0yWPDZMVH+5XAmmejNHoafaT6GDlA6puRw79QcoFOX9KEbLNGSlKxaTHZ
5KnYenLnbc0XjCPwPUStMiCGszZEakKLXUIQxTojmPIW2D7M0PmAjiNN0COZNT2JY6TG2UrZ
D9IydW0qaZIGW102Z9+Z4ouIus0Db7tbAsumGmYMYYBP+wkyzMcTKUy3PYmQnu1eN0riDEhD
cnqKCEB6VEMCHRWY9JGP5H+p8ziNcwQY/cBHCriMaYBtsq9pmCQhsoUCIPVLWyQAMr/EU2SB
KwW6ruLIlm5mDA1TmfrjXzoYo2+9KzxxkJwOWD8VWHXCvAn4okJ/aUKSxAt3EG0KM02ZmSpS
DceqBRdU6bIgnh6/EfqHZ+dp3RkYuB7IfqZCdG/+OtY41P2WNPN7dMfuwsSv+tu1phWWo8p4
gIMA7uKIjkYsiXhruM8d9jJzEnfuCKMqLwLv8/bI/8E+5xdkguflJDuKl9XlMFTvMR6ryc/m
K4UzpJsbzcYASydbhpIwV1Po6xfV/Bl4txTq7RGSfvaowYYKhErpKK31VxnVOKLAQrk1599a
qqLmb5ChqWfUJIJjy2aqmUGn07LuNpLNsE6dH9Upau5xiifVmTRFs6IOy6o9PK1oZ7vXXmzk
TEJ2eEAO5V5wjEzVlyg5eZXZAOihgfdpUe4jyYtbQbTIhxreOwKT7JfnJS0rVu4W8e8/v33g
D804n4k4WA8YMMpy4ahTaZioJ7IzTV/H9oT39T6KAtzQiSfLxyBNPMvaWGfiweIOTTUVqGvY
ynNqCv2EECBWN1HmocsRDi92TPoHibtAhKYbogJ9sfjUyhVUh+8xr2/TIHQhhhiRHyRoJQgz
UGz1v6La9SJvE1BhIX6DCsn4MXCwIbY4J9YFFGpRucWdaaHF56uByTmtaY2Ux3yswJzaOA3m
lVr44TRNKFE/Z+SAuE4zqu1Ux2wpxysDtxEfC/6IZIHtEABk5fTq66tNz2hqbDIgUJUAxZqB
QYHGzd0K0pXq7SYApsEb0PidrufpuQpihBBjs/sul58mVRg4I9QIpaYxRs1ChJrubGqaeYk9
VhgZvcFa0AxPlGG7GI6OMRxamWkYNcN3hxyu2kPg74mr72uWZAp9qMaz/qHKNfs8+CRFj5u5
UPUbbp6pYgKnksfIc9gGcbiIxijdwO9TD7ca4mgbjbHvqlNaFcgsQetdEk+GPyoHSKRupRaS
/ZgKIPcPKeueuIVbvp8iz54m1OTSEFMEhxnJ5w+vL89fnj/8fH359vnDjzsRt7ee43Pbcas5
wxKzdI4A8OsZacIYptFA02L45fY01fRhtsM0jgC5WYRRZSzLhpydbdnnDcnRTUdPY9+L1EBc
PDSXrw2XOVyXM3/BkOKWcyuDc4KazQH0HgIfZRj2KuRIPexQMrHrBuipw3VwYcj8TeEyNcaW
SjVj20qMaecQO62ZbXXssTMj+bnUgsAJ692bud6FJNfGD5Jwayw0JIxCQ/FKk2SDaNgTcxU3
pVFkdc6uOLX5MUefUYOVkTQc/xsh2uslvjIJdjrxSiLfC6yPZVSH74WATYMaG3YpMwbuPGuC
YNTQtyLGWCyRt7FCWqysVcXKY9SViZ+aq5cZ4cYppq5fUgVunU1HWMpg/U4qRtWvaeDWuP3a
s1Tvadc2YUk8H+irci5EewNicRzqCQI2dc2Y63ZzKwuEzDiLyC/0TFB3wJUZjg74ycHCvtbt
ysWWQ0emCpRKUCG+pkJFkcsovH+tbLBLSmNs8aLz6DspBSujMEtxEcRe6y0B+ObrLSa+edkU
crWQQtLLvvtGBqtPiN07jH2DjsQBXqzYRWyWylgC39GEHMOGhtIn8zYKI1wyjqWpI3PHkcPK
UNMmCz00Z7hxCxI/x0cSLAaSbbE5i6PSuHXldlOZc6yO4LWB+NboIHoLprCISQjNmkFxEmPy
KDabKBalMV6JGy49JpO60dGwNN5ljoLTWLWs1qHMc4mbZvpTWgaIWjEYPJkrb2NvZmL6Cb+B
pt5bCkSwBfhyT2ETtlq/wJVm2MWNytP7rGUC9Gv7CJ4/QXsi6dMUfY5EZ4nR3k/690kW4N2B
7R3Vm5sVAX++Hd6H7H2ggh3Oj/DiF5ruwtSOvn81wBRfFhlc2ZtcqMPQitOA9Lnn41UNIH1D
v9KIpEmcYB9JmyNb9OEVQNl20FMv0DQohXBMeKo0SFosFVyo+7Ea+ljDjB2RjgXiKAHFWA8N
3ViCiskx3y2Lvi2yMMcUveE+qDBJk3yk5At36kezFovlzYzNVe9gnhUMEMFB8Stvaj1i4QAh
JIquZEs6vM8WMnoYGs1rPpr4qlLabqwPteqJQyoIUwOYXvhKBychI1aIwYVw8GOH4+vT909w
RmCFaLoccwjRtIohCaBUIWYO/cNf4syVg2Ikyn7A4wj1rdQj8wG97Nm2cZqDSCF1wpm4jTqt
mgN/gFHL+J5QGQzJph/2M/S3nR0rmcDjyV3fNd3xgXWCA9X5DnsIu4dcuK0gPDSaN2xn+QdT
AfqXCYamynlEDcq9Bx3fBxG6bqxVSnhujkBUHaSaCjQaDYDjaFT2BV6gxiqFcaL0Y0Vu/B4I
qS2oSBcG6eiJfRiK0uLE3/1aPOCfv314+fj8evfyevfp+cv3Z/EquOaUC+lEVLHE8zDvlZmB
1o0fa89ezgiEWh3ZmjlD49ZaXNIeVHE7d4nJ5cwHgoXp4zXVsaFluGfLbNVUqiRDXlaqcfRK
49vCfjSqNCclG2k6v6DdaI2x3or6HqVvZH87QmBTPkoOy+OaedHf/SP/8+Pnl7vipX99gYfc
X17/yX58+/fn//z5+gR7brNGIGQCJESr5JcynB9O//7l6e+76tt/4AVOs0ijwLIwR4+g3k5l
gcVSEOrgvhraqpkTSxk3C9bLaLvzpcqxwGF8RB4rc4yycaVTzmVjNKyp68gxP2p2cLy7FPkA
wYVOJakRpLmURjnvp8YcNvuuOOHzFRdVBADFw6IBQ5+zqps7ylxn/dO35y8/9ObhjGzOIPBy
PGVaVQ1uozDQM709eh7TziTqo9v/c/YszY3jPN73V/i0NVO1841l2bKzW3OQJdpmR6+Iki33
RZVJ3GlXJ3Eqcdc32V+/AClZJAUlXXvoyRgAIb4JgngkBdxtrzy71op4mbJ6w/FSMZlfUQH8
TdJi64ydXQkDFnnUt/v9peCCxxldWxbx0K+vQ3dWOKZLYkezYrziSX0N3655PFn6pL2XQb9H
k5PVfjwfT6Yhn3i+Ow6pz3OMjH2Nf64WCycgSZIkjTAo4Xh+9TXw6Sp+CTncYOFzMRvPaHvM
jviaJ+uQiwxtja7D8dU8HPf24qY/mR9i/aLiGthuXGfq7T5krRWAamxCZzG5ohqVpFsf6eTk
MFUnHVEa8ZhVdRSE+L9JCYNAaTu0AjkX6EO5qdMClWpXPvXtVIT4D0azmMwW83rmFuSkgf/6
AvPI1Ntt5YxXY3ea2OtXUea+yJYsz/cgJumZ88hW5f4+5DCF89ibO1fUzYWkXfT2joYkTZZp
nS9h7EOXpGhyUdbCCx0v/ISEuRt/QldcI/LcL+NqTF+xyQKLhT+GnVxMZxO2stNEfFjQ9z+e
zILx67SeurvtylkPVBzk06yObmDEc0dUn39e0YuxO9/Ow92v00/dwokYGehS34tkdqKqFsV8
rr9ODpEM7EowNdEhv5pOpv41nUWuIy7yMto3W/G83t1Ua8rjrKPfcszPnFY4864mV1d0FWBB
ZgzGqcqy8WwWTOYTUliwDhX9a8uch2tmyjHNdt9ijHOpe/Vcvh7vHw7WESUD+YVN+EIdvoH+
LIArSqYupeGScnqzJwIokY7Y5tjg4VLj7TCw2ceYSWTDM7SXDrMKLUHWrF4uZuOtW6/oPA1S
7NhFl7vVQJ1Q0s2KxJ16vYWLomadiYWn29BbqKlVCgRv+McXRjw5heBXY904pAUaLjwKiGdp
Oz5WTxQbnmAMlsBzobswP/Rg44tUbPjSV++Cc++XCenHEIKQUgVLMtikV9m0f+qgAWXizWAw
Bp6U29JZ6EzEmPQYkaJf4mPQtAr+p/Lc6cz+jo6f0y8aBlmYmSMgw+yG2/nMcQYReOO0Ls6U
lNkAJfVTf8X2l5vZElYk/pYP3fz9PMjW1n0nrqx7OgBWy9565XkOUuQNi4ek1nXsTEp30htD
ldRnoBCrVKYiVEIxUQhq3wEZgiWF1BnUNyXPry3ZAAMUqijd7d60er19Ooz+/vntG1w2QztX
0WoJF3DM0a2nq18qvdBeB3WfafUIUqtglAp1wx3kDP9WPIpy2K56iCDN9sDF7yFA3l6zJUie
BkbsBc0LESQvRNC8oIcZXyc1S0LuG8akgFymxabBEOOEBPCHLAmfKWDr+aisbEWqu7Vht7EV
SGcsrHULByTern0MWqnTYkSnCDNmGtAYtv1GTSIMFngLwuYXXJqX9yfE9zZybs/iFUdDznPj
S1lsiF8KAgOzSvF8ao4muu3BHoTQiZFMQIfK2aPX/ZLJ3BxVJ2wtHPVaqPDa5LYI2JxvB3F8
TkahwV5VccieeiA4FTGGPIi+1gxo0ZjK+6akzE86orXR2AZoWGhqDP2tKa9jm6QqZ6hVfrF3
SAcmhbN4AaQeGjbErSujsgjqJqIxZV1zsNxmVPWPCX9r+dRrOC6sqmGuRjriZIvULYRxJrAU
Fj03+/F6n6cGwA1X9hRCEEisAaPdKFoK2qwFsNs0DdPUMT6zLUCWMfukAMmEJYU9AjmV9Ewu
L9ciDfw8hv16oEdMk0IJEUHZa2wZUi4YuByWcHpVxXRmrdPG7MScnQwvAmnMTOgS2lxVFEy6
D6ytdd7iDDMorDhcgl39nVg2BpMRa6IAebrJbW55e/fj8fjw/Tz6zxHc0e0kfpo2EW/wQeQL
0TyfUF4S7Ww3CLvqdnjbtqzDZLuYAt/IzNMRCymkH+JDrBWIzECSsVg6moul8xPFoX18/ZAF
tMhzx/5AYz33isRki9msous9aAmhVQxFmNwI5Nai+s9/Wo8ozwuyrUP+L121trPJeB5ldPFl
6DljOjLT5et5UAVJQpdv7Mo+rkET8qaZ25/M4LY8SAno0KctQjgLYRMkZQIpY2ujAiK85THT
fLz3VteVEWmZ9OP3b3jYf9fbGEGheNgFuityuJoXRmYNwOc+pcArFRudsPUW61VDvBzuMCkZ
VqeTaYyi/hSVcLRrA6KDoOwlS7Yo8pI2nJXYLCNzyV1wXLu5S6DQhSwJKUGYjUzYkkXXPLF6
kxVpVq9WFiVfL1nSAwcb1AHqs1NBOfyiriQSm8poShajtFz7uT0gsR/4UTTISL4Mm7UPoJEF
pjwUy/FMVwVI5D4D0U/YX4EZsk4TVKQOfIjh26zVchbpgYgUhAW6L6CCpRbR12vW6681i5c8
p94CJHalP05LSARXtlRPm4PQTYopzjVK+RsrbpCtC2/hWr0PdWpzqOvQPbNrWgYyNvpATXd+
hKnQDdZbznZSpWw1YZ+rR2oDyjGuvFkJXliAL/5S38QRVOx4svETu7LXLMGEBAXpQ4wEUWCF
DJVAFtqAJN1aw4i9gAve/mQLxx8ZtTFfCPRhQWBexsuIZX44USh9N+Xrq+m4Xq3I7QHxuw1j
kajJDHBqHcGgxTBjegMaw5DlAyK/wu+l7+QAY7hhysXTY8uDPBXpipL/JR51kznbmz2NCaR5
OxENfkkxkFpE4nJOWUAjLs1xSRgfATEAPYFhCWnPUxqwt2DgyghdZ0rXCl740T6hdFkSjakz
g9CcNw0QdR/vFFy/AZkfawhgdtIPnzoR3LGHKgW7llS0B9bmkeX4JGnCchTFQ2a2IE+DwC9M
GGzn5s4jYfJBw+SICvyOTKrzzckuiTBMH6YQHGynKJhP2aY0OFgKcIyz3j4P9cmikjJkkg2L
eW9fxictX5D5riRDTP/5Jd0jV72sDh9elHBMpWb3wOYpGAvtaqCGeT3U3mKDifOaLD26a7wG
H9o65I6O8lGdCdLvUu7pgZmuSAI5j1MyvzFiKw4Lxi7yleWp3fsmwT4EGWhwr1bhKepNaa2c
Bh5AY+HOo36ZFH6UWaIQJrCZNAEZW6czQsS7BLonxVBASFHU3hV4SDaxIbeMxoxPLE8AzV5P
59Pd6ZESNJHH9XKYv9zhScn7k0/YZEZWepkMy+iBy0dlZj+7wXoOLb1YizA+oNU+3cBF3tB3
duOI+MYC0ATC5DTixiIM9kjUiBixLxBeRhmvl+QGoFgliRWqH8FwA4Pj3Bf1JggNTDenShXX
wf6enyRwbgSsTtiOsqJUoQKOb3eHx8fb58Pp55scgNMLmuv0Br6NKIJ3Ly5oU0lJt098dDmP
eZLmQ21NC8ytm4ZlUERcWH2KyJALGUMF88bnCcZi0Rde08tCdrMMACyWZpJl2X648sA1BM7P
UIV5+WvyH8ZsRbGhWwGYvTHosjf2nEXlGHnzajyWQ2F8qsK5Q0PD5TrQLWAvCByxPjlqk+Aa
yYQvKGybO/7J7HTWfH+ou6ty4ow3Wb+KGN7b8aoGYfBcwThAqY/Ydq02SrZwO9chTSQElcTO
5NM1W19PZKeXjjuhKiWiheN80Jh84XsePtUTZbEOGG5joGjTCrMeCJRpAVBp0b5T4ERTGr1R
8Hj7RmQDlBM3sFrapqE2gLvQoirioJ3QCZyO/z2SzS7SHFXT94cX2P/eRqfnkQgEH/398zxa
RtcyU7YIR0+3722mu9vHt9Po78Po+XC4P9z/zwhz2emcNofHl9G30+vo6fR6GB2fv53aktg6
/nT7cHx+0Gw+9SUXBgtdByuXVJgI1+5wCZRhVoYPG9nJYU77bMqdaBfQ9jINkjIpa9eEkUFB
A/Z24Q6BMWFylRj80ht4yNBjXAoxN99SZR/L9OXkCW1u1AOnM4s5mVivwU08a4cMy6KsTJhg
W8HWdsUwz0NhJ8nQ8f1F02g74O888IYHItjLwEhDYxG210Z9ZypCbilAZGtQEdVYlOiVkfA6
XnGZGU9FgB9qRq8VRe7DEbrlcOmnE63KWqY7P895aq3Qxvre2qkFK9TGsOJVUZIO3Wpe4T1s
tTNZ7qFA1eP5VfZKNTTycHbi38nMqexNSsBJDf/jzsa9Ndjipt6YthSRHYap1qG/mXrfJ2du
9v397XgHwm10+07leJU73Ea7iydppo68gPGtudpUbicjZXPhb7apKRBdQGpVLvet9NJfuu7Y
kMM/qK/Z8LUfrslMNcU+0+1A5M+6CIxs7i0sMK58CpwXztxxKIWHwq9wuHQHOQUuA6GLE/Cr
DoK1TbUJXSHcie7r1lRGuhEtKl0iKt5fDn8Eeo7tP8ODnnFb/Pt4vvvev5ooliqttyurO3Mn
+ivA/4e7XS3/UWYRPh9G8emeeOtXlUB/maiIlRrB6ukmfXWDH7y3fPw9Q4SA3b8WO14YYYBi
PfLLLhfsBrZiAnixmO7u8ZglrfTJHMbAod1flBwfB3+K8E8s8oEoe2GNxYdc9xEnwo0unl5A
NSZJC+AigbEajUY2+MwulvMg3cheoKijYhVTn0lXcPHxhb7Fm0iVTOHJbFGHLkgzX4MGJIBY
bALqA016UQq1wr+61W+Hinm0ZHDpMHEFX8VA0K+q6hgyXiUSBMu5aS+HwC16ooUxHasI8SUs
tl6pEpo5UKCEqnMPJq7VInyrQe29sa3Kat1szF0LgRtxMzRFGwPBrF8oLijzgK47K5ak9PCj
RyE58n7szagc9h3F5T4Z6rEAYxZj6FBNhdhCLlnFtHS24ny8+0FJYJdCZSL8FcNkZmXMemei
zuVXlmrLVc6kmJwvLckXqfhOandREW3JZ3o44g5MjTXqDPCKrb0S4IVbmgpQsNoKcahhpFo9
SKPUUBBKgmWOQk6CYuJmh16NyZr1n2GBtL+/y/KaKYAO9v3Cmeh5JhQ0gXNzduXbYOF6RpQO
BcWIz64FhDug55oRWzr4jI7WIgmkBQXtld3hKfGtw9p1QTuF6aTXowi+mtAvuReCMZllTKJV
Cts+3wY+HI5SUg0YJKgPY7CrqTVSCJwRrchms6pqtGvDDJsAWRZwYeYt6Ko/+6BbkMBzh7tF
N3SRED0ujjEXwslCF89UrQp3ZoZikGAiboKOLgIfvcmtDxRRMLtyKnvOX4Ja2E1vA0EMfaUX
X+Iy52b/WMDrIpx4V/3h4sJ1VpHrkOlvdQq0oXq3F7VUJvz9eHz+8ZvzuxS58vVS4oHZT8zS
SqnHR791bxO/W9vCEq8l9oDZAdpU46MqN2+7EozenoOjIiOw9TS/3eqb99i1oQaGWIp17DrT
sd41xevx4aG/4TUKT3sLbvWgBY9Zf5dtsSlstJuUVqkYhHFBackMkg0DuRTEncKaIi2esKU0
8EFW9pZDi/ODgm95sf+8oh/vRi1Vq7o2txLZ1ceX8+3fj4e30Vn1dzflksP52xFl/tGddGMd
/YbDcr59fTicfzdM7YwByP1EoDn7Z/0X+DHT7QgMZOajwQLdcZm0NkoGB1lGlSO+rqR2vkT/
x30702Bd3f74+YJNfDs9HkZvL4fD3XeJ6h6mKIqWKwv9QHsZuVQpLwJ1+hM1CTFKrnyNMByP
L9CBoMZA0Lf1B2DNkrVh64+wS0QxECkSFukeBYBNtSd2lH1yH+SqNYqEHdlOpnYDmG51KyJo
sU7GpY8TB5jpXJ9FFZYlWl/BACRV/XWf3MQZ3E8NdtJwcoPs6ngda2unQxhVDGXwaCMERgPt
k1kiOICZVUMbJ3N1E00Qq7qp9mVggsfj4fmsDYwv9gmI/5UpaMMPKyTFZfzq3JcWcS3LZbnS
nqLaLyPTFY/MgOA7CaeUX4qPNc0AUsfpljUeIfQMRaI2goY9TxEH+19mPSa3njxm3S8dUlat
blK3Cwin0zmZY4rH2IkB57ZudVM43jVp35r5ufS2yRr/8gtY+dZK5F9jC5ynsj9n2tyVCCWM
wy1BiKF0cahKlVYjmAqBMjPQCQzPEg0xZN5jNaIpYbxxkvscrvwmdrp2SiqffL0bGy/9mCV0
NNVtmFHLdys1ilhKr4qCos2RaN6OCbeo5r317vX0dvp2Hm3eXw6vf2xHDz8PcAfUX7fb8Iyf
kHafX+dsTz8si8Jfc90MJsCgG9z+fbnm2lB1cMrFwL+y+nr512Q8XXxABtKkTqkFeWmIYy6C
dnzoWaXouPApMpMIX0t7Y93gFpPZzFRHNQg/hP+0qRd6xSTWR8bO2LwH9QlmY/pOR1A6ZGrh
Pp03NdZJj8AbSITdo5yMXTq6W59yQvqi9OhcR9cb99HopfFR3d2hJN4XygjHy5sMxKo2yeYV
eVsziRaOnkHMxF05Dl3fFkuZ81+ItkjkzPUMXzaO7K0W536Ao6rc4LxBnrURTLjFxVkUIAaG
mF4LkiALJq73Md5zbRMTi4JPJpTqrUfl9lsQoDVmMNiI0BfjhZlVo8UUrhFJrgXvEym7OGP9
ltwg17D9bLKw39R45VXTHi8eZEqBRVTrRkaFn4zNiMIN+kvuDto/NCTXGMK2xJf94Y4LpGkP
dIHXr9sF12tLgwn9gTIxFhpCEaViNjWcHC9g7IUeOOG1N5vMaTgxJAg3lHgafG76+XSYyF9m
wWc9nMgjgr4QGSSxkWpeYfIinE36jRbexOt3ENedVTrWIGIEcdjDqHw6l6OLGD4YIMergz5O
rQYCkcgpWc8xZv4gFreCqcIP9in5JNERQVfRDG5KX5qWw3cyi4lNWl5y+HzwLTjA+3MeT3X6
qBc+sQqv1d+IUzZGxCb50QZJD0WvMmrUqQHI01I6Lbch3mBavp0bc5mLeltFD7u7OzweXk9P
h3P7GtCGATMxivr59vH0MDqfRvfHh+P59hFv68CuV/YjOp1Ti/77+Mf98fWg4oNbPNtrTVjM
Xccjb0K/yE2xu325vQOy57vDYEMun5wbCWXg93zq6a/4nzNrQpxgbeCPQov35/P3w9vR6LNB
GmVndTj/+/T6Q7b0/X8Pr/814k8vh3v54YCs+uyqiXnV8P9FDs2sOMMsgZKH14f3kZwBOHd4
YA4Imy9mU3pABhlIDvnh7fSICtlPZ9JnlBcjXGKKd1VVzq8zWoZubi4q/GbvGuU/37+ejvfm
7FYg6+pTq9Qtur82z9kO/hHWVu19StSrbO0v09RQapUJF3shMjolgrwBpnGWJizRA10oRMi2
xpslAkMeU28+Eqe85lWI0du3H4ezEUWxdWg0MR37ikeovhIyigHxiRVnUQg3xlpVq9UsxPhI
hjdJUS91/z30Am0wUljL0yjSzRGxoFQkJMwweFqnUbjitPcO+o4GkeYcAz9kBNA0vS41e9mW
ED7AoOeZsd/GadIw6TZ+IN2IkPbe6IpcYmfT54JGdTVdzKiPwo145k4d6yDUkWQWV5PGsa97
Gm46IE9rJHPzwGoxQRiw+dgbxF1N6BYFQkatCDKyZBP4WcMBsMlaQhZQj2ZU67YBndFXIxnO
PaARqdwSZiJHhKtAPkteiHqXZ1EEwGSy2GSBSSb4CmQQClavytkUrky5fuvY7ETGkygNrls9
ZfB4uvsxEqefr1SCPfkaYyibFQSWylKPkcxFsG2ebvToxPiUjzGu6owX3nRJ7uhkBTQePo+W
KX3r5tCN5WBc4/zwdDofXl5Pd5SlQ87Q/wbaEZC1Igorpi9Pbw8kvywWrUqO5miU1E4J9NvG
zbzXAAF1+028v50PT6P0eRR8P778jq8Xd8dvxzvNzkIdJ08gqABYnAKjeu3RQqBVOXwOuR8s
1seqMA6vp9v7u9PTUDkSr+SNKvtz9Xo4vN3dPh5GN6dXfjPE5DNS9fz1r7gaYtDDSeTNz9tH
qNpg3Um8Nl5qdUW0akomU+W9oayOj8fnf6wvdicdPqdsg1I3MKRKXF60fmliXNTQcZts9vI2
oX6O1icgfD7plWnT0soMuSpoW5qELPYTzWhcJ8pYjn4NaGJsvDHoJGh1LeAQpN4pNLpLWhzt
cUVn4wuBe92T2QjC3qhrcc229Esmq4pAKvRlOfbPGWS/1q+h5zejiGUK3C++tLG6fKpBrYQP
hywtBjYkA4YlDfb/WHu25cZxXN/nK1L9dE7V9I4l3x/6gZZkW23dIsmOkxdVOnF3XNN2cmyn
dnu+/gCkLiAFObO1+zDTMQDxCoIACQIky6H5IaD6/SEXN64hUHky2u2q0hle/bjMUqjDkzwa
ajZKCU9zTPchWvRZOBz27Ba48njWtgUQvSl3aeVToxN+4HH8nL4ub2CFM+NIC/1qU4OXl6wc
Fj23WpmYEL+SMbTwAk4DlzfVsHGXLdSw6s95xn6jd6aqNcN1VJPYlCSrXr7pxQG4Ij90Wty1
QbUN+oNhR5AkiR3b1BqVAD3s1SwU1qSn/R70Wr/NbxxgIRW9iYfq9K6waRWu6OthY2ASU5eP
ES8xNGowAiwjekX50lXV3HeNAc0rBJodHTh8rmngV9vM1UKdSkBnKrbV1vmKQaHZnIlO39Yd
c8V4MBy2AEbKWABqSX0AMBkMbQ0wHQ4tM9elgpoAEhcr3Dowp0MNMLJpg7J8Nelb2h0TgmbC
NIn/k7Ofmi3HvamVcoIQUPbUohw8HlHjQf0u/DnmXMNIp2D8aSHRgWDKun4JPEDb+nr20zKj
cgs2mRRGikzHwUQxFoJ5NwWZWRgkpEFQoUHnN4v0oo0XxIkHUiGXAWfZgpfbMZvgxo8ERvXS
mq68EA1Y7tiDsWUAJlpYUgmactGXcDfrjygngRE6ooZX6CT9ga358kbFg2U2Q6VCNocgEmsz
81PFfK7cpcPYLT0bCadiolSt8FxOa0+FUG9eViA0s/hIrU06VL2kMh9maDRUmpZ9Zn6ba/f5
yOqZ7FHh6rS9em2lwritKvt3z0bnp9fj5cY7PhMVB6Vc6mWOKN9v6GWSL0pj4+0n6JpmFKfQ
GdhDft03H6gvXnYH+UAp2x3Pr8Y6zwMB++GyFNfcopQU3kNcRSsge4s30ncp/F3KS7Iqswm/
OsRtKSOJLpmNex1RyzPH7Xem98Wm+SlGhM0WSV9zas2SrMOVevMwmW7ZEWyNmArvtX8uAfKg
0gGzhSbIIJue0jbC0AwYRNCNPtFEGmDLp0wTZmURGT3wy7Kk+q5uU2O+tJDGXqsXyOPKeSpP
wRW/A+s/KoblD92HPd3FDVNYsp5LgBgMtP1jOJza6BJKH3JKKA0EBYDRRP9sNB0ZOk4S5yD2
9XDg2WDQEfQ6HNl91q0eJOpQS0IMvye2LmEHY3uoiTuodzikUl2Jn6o59YXBleGs732e3w+H
X6VtqssRdx2G92B5LbzImD5lUEp8N0bZbJmuKGsEtVmgndJrDfpNxdTd/d/77vj0q770+Avd
rl03+yMJgurkRB1ALfBK4fHyevrD3Z8vp/239zq9jXZQ1UEnCZOXx/PucwBku+eb4PX17eZ/
oJ7/vflet+NM2kHL/ne/bAJtXu2htjp+/Dq9np9e33bARpXQrcXkwhppYhN/G3FvtyKzQZvh
YTotESyL+zTWdO0wWfd71LAsAexqV1+zCrlEMfq4ny/6dq/HMXR7BJQQ3T3+vLyQraiCni43
qXouedxfzF1q7g0GPfapFtjrPct4w6ZgfKoDtiaCpI1TTXs/7J/3l1/tiRShjZF3G2mzzKnW
tXRRH9XcEbTIQKHvGk7rFVWe2VS4qN/GpOdrSpL5Y2U7kJOzcc/m7YJWj5SYgaV2wUcTh93j
+f20O+xAC3mHEdJY1zdY12dYN84mYy10bgnR6VbhdkR64EebwnfCgT2in1KowbOAAWYeSWbW
jjIoQldFSmYOsnDkZvzOf2UU1FsLGYy0zQruV5hZLfWncNdbYEKNM0WAjMntgQFsPD1ymiIS
N5sabzMlbDpio90urTFd5vibqmZO2LetiaUD+rb2u0+jNDv47EtjKISMhnymlUVii6THGgkK
BX3r9ei5zm02ApYW1NO+VkSywJ729ASWOq4j0blEWqZS3F56UCu36hqCRIt5/jUTlq2b3WmS
9oY2p9RWDS3f4GkGXDrsSFQTbIArBvzTXrEdlL5UVL4hbMqWFcXCAgnPFBUn6P5GeCCBftk9
HZb5lpFlCyEDrrwsX/X79NQHltZ642f2kAHpizd3sv7AGhgAeixWjWMOczqkxq0ETLQWImhs
ZrZpcINhn5updTa0JrbmKr9xomDA5+ZSqL62IjZeKC1Ojlyi6HXrJhhpR3oPMB0w+lo0CV24
KP/vxx/H3UUd4TBiZzWZjskwyt9D+rs3nVKhVB4HhmIRsUBTYgIMhBrXQ7Jc8EMvj0MPY/f1
zafr/aHNZhcohbGslVc6qgaZ6Io3wAQeTgb9ToTOcxUyDfsW3WJ0eD0AlVM9N/5qZprYE4Zp
H663WhGUsNxqn37uj61J5WSVHzmBH9Vj+5FoU4fXRRqr/CgdWxxTu6y+ekR48xm9cI7PYI4c
d7Rh2Ltlqm6lSwO2Y2ZlAKp0neTE0CXoHJ/6BXGc8OjsPptnnInMt7DcmY+g2oER9Qz//Xj/
CX+/vZ730nustXDk/jMokjjT19/HRWha/tvrBfSDPXsLMGwl26oNUBAE/BkH2pUD3gIFA9PY
ExHEi7Y8CVD/5bRyo8Vsb2BkL1pngjCZWj3z8UJHyeprZaKddmdUojgeF7OkN+qFXECRWZjY
+rkS/jZFkxssQcSyGSmTrN9xG6ECalONPOmYCt9JLDQs+HlKAsvquuIBJMhMbacIs+GIPQND
RH/cknxVMxmosZEOBz0iAJeJ3Rtpo/SQCNDzeH/L1vQ0Gu4RPfDorNEdSkOWE/36r/0BTQpc
O8/7s/KlZKZd6midepDvYkpVP/eKDbsIZpatv7FJ/IjjoHSOPp70WX2WzvUUmtl22rc6XAm3
0yGrBGAh2hJEraBvmFn1fj/sB72tuZ98MFL/Xb9KJdR3hzc8ROlYh1IS9gTGGAu5COBk8SAF
OUkIttPeiCpxCkKtijwEq2Bk/CbsnoOg72m3jhJi8yFauZ5UJUW5lqIMfsLa4n39Eee7nJ8C
YlQ8ptwjiwzByGhJHC3MSvI45nPlyI+8lHvmKL/Dh99lDNKGnUKvI+CrFk8CfqgdUgcZb/IQ
JPLQC4pl4LiOLOJAkfg6eZ5rLncILhmCb4SKe6HfTMnmSD+djm/kbZDesPwuaAHKUPZKQ0pv
ZVbwdrAwwKCTG221gH74rCQWLr7Vhk9M7zlQT4hvX+lllAS+lp661Yi6DYlwVqXLa90KdXeU
45slXnhI72H4NnZyod2Hglj3cuIo23JoSpb3N9n7t7N0QmqGosz/oQfDI8Ayc6VCN+10MJV6
JGSIPyTjZg0+LoNaAYenKSZromxC0O7HJWQioAkJEIW854fbSXgrwwgZZYf+1gua1rPrC+mS
rSjsSRTK2IMfU2GHO6kc4GwZRrCjM6FIkmUceUXohqMRfUWG2NjxghjvS1LX01RKfepIleim
BTWyqp4mykL1zoonLIKkvgZKdqfvr6eD3E8O6miTeyZ8jYzwpOAf5GCAx6ve9dWajNw07gi1
bXreu4KctkQgBImskz9raUeaJ1MJFR46lYatBi3vbi6nxyepp5gCBKSRpgfkIZ735DHeN7FS
pKHA1IUkGAEijOsVBGXxOnU86W0U05TmBMdEQ1GRIXItRUcF65j/Gr3o+CzL+QQ+NUGY8Y/Z
m4rzqxVXW05ztNwe+PoUOFnQ800VRiMBCzcpzGvgFlJGdObeJUCZRbhIqy+cDVFQJLJOgqsX
PU8974FLkVte9ydoSjvxOjHEcU0nC0+9RcvIpnh3zmaYo5E34UcVb72IVOTnpgzAlRkROvwZ
CQUGPD8w8HbkQ0RmTsyF0JWomYd+eHphsUP9RPB9K4zMVl4LmochbKS7NfpwLMZTm9MrENty
WwQY+umzAoSrrZbGYREnCd3b463+CzfuVn1Z4Ie86iVPMhyV1ZO+glhHRgoL0KXwTaMLjMMb
jbWDfu5gCsOkI5ovvufRhgLf96jo1SE7HIYnrbqN3WPwHbnraDOxEWhkgYE1z9A3i49bhbg4
w/THDlHTVG5eqnVWkGKGjxwKTOqqvZsKvAIRho1GGLEA/SC9T8yjqga/AV0mv9cXRQnsjEfa
UMzWPnBqBLO+iASOth6ZpR3PhQhAiWsF9mqaITqjwdyu41x7WyrDsStwcSfSiLdZFd5Q4m/n
YV5sNAtJgTjzWJbg5GTKMKXBPBsU1D1WwTTQHLqpAM1tz5pNL1ZGQaEfxzDYmJOdMkYDw5RL
PiYsLuCf6wQiuBMyN3AQxHd0/AixH7ke5zlISEIPBiFO6phVzuPTi5buOXOEs6T5OhWgvZmV
Xyrl6rx7f369+Q7LillV+LIFyuFUR8TAog9cUKKb/q+8NKIDZphzy/XCy4MZA4JFuyC2FChH
8zKLHIHWOUAW/kJEOVoD2lfqH8UEpL9MH+t6MAoLLmhoaO6F2jqKU4z8I0vjPN/lAtc4pgaV
0YK0gDNf5/PM1pipgpQTRELE1Jg7WO6eclRhV6sizEBXEym/4OuitiLPOZmoCPDBJp7CoadZ
LOVWq6EPmK/agAUPsQmSp+h0GEvweubzGkXZAJnTMoojPsQSJUowwnxXWDxKiAF4unssSeZi
A5qr1g1oaMNBBgyDjOAjFVcNGHf7VlGyZRqD2ICz3DXBAgeSiylXf9WaUqa963zp4UppXZtU
SyYVod5XBTFjHzYWShx2LYkEU2PQAxH5G8MiBbgzVzymbSGKBAarRvOWbEU3+Lt0S4el1Okm
A5s2S0fipHRjr/TG7HAVGOpai2lLOPorTWsH9TeaWBN8+ut8ef7UolL2XLsf+BjxWptTNvtb
RH0f4EdT+/78OpkMp5+tT+Q4MUAvTNdDQV4M+pwfuEYyprcKOoZeEGuYCfUgMTB2J0Y7CzRw
Y3ZYdCLWn8UgsbpqH3W2i/oMGJhBJ6ZzZEaj7l6Oph91YEqDgeiYziGf6hcdOm7wYZWT8cD8
3M9iZKuCi1OlfWvZelhgE8lf3iCVDEDYUXxVvTGXFbjV2wrBvd2h+AFf3pAHj3jwuKv2roGu
e9PnC7Q6h5996oAEq9ifFKlenIStdRgG54TdRU8gWyEcD4Ond9SgCMBuXacx+3Eaw/4nuP2v
JrlP/SDwHe7zhfCCjnPYmiT1PC6Mf4X3HczT43Kl+9HaZy9t6JD4/KiA7bcy4kpoNOt8zruU
rSPfMZJ9VBZiXNzdUu1Zs7iVX/7u6f2EV32tuKQr717bEPE3GEK3a8zzI60Rbk9TmfRg/pAe
bMqFVkaOCTQ9mRyZ3/NLW/saCSAKdwmarafSHXMqAdJI27dUlqgV4zlrZZqDYi/vNfLUp6cm
FUEboutWdUGRl9/FKR+coyZKRN4ZMmQpUteLoM9oyaNZCGZmEDt6IPYW0RUUqMJBgNGqaXvb
VCgrs4RdSpipXqZK8lLUrVV+ejIiHFr28cunP87f9sc/3s+70+H1eff5ZffzbXf61Br+e0GD
6NZgTDKReTnNR1/j8JzGje8idI79AF14Ig20Mxl5+iPRaNd6AdjweMrdaaV00ONJ28K0WK5/
IrEuau4iMA6KrpVWRSBtGFbQ+NkwBJ/w/cHz6z+Pv/96PDz+/vP18fltf/z9/Ph9B+Xsn3/f
Hy+7H7i6f//29v2TWvCr3em4+3nz8nh63kkniWbh/9Zk8rjZH/foYrz/67F89VBZFI402vGA
ptgI9P3y8zp+96+rVJiuVu88AIGTYNDMWWhTAEOTargykAKr6CoH3+vjsiKh01sl4cN9kP4d
0dWbs11+jCp09xDXD55MqduYcCD94vpY6PTr7fJ684RJCV9PN2opkbmQxNCrhUhoLEcKtttw
T7gssE2arRw/WdKFbyDanyy1jCkE2CZNtRi+NYwlbNtFVcM7WyK6Gr9Kkjb1ip7HVyWg0dUm
hS1cLJhyS3jnB3UC2Cr+tk61mFv2JFwHLUS0Dnhguyb5DzO78uTA0U8GJIZNcJe8f/u5f/r8
5+7XzZPkwB+nx7eXXy3GSzPRqspdNopgCfIcp0XmOe6SaY7npG7GXb9U/VunG88eDq1pdaEs
3i8v6NL39HjZPd94R9lg9IX85/7yciPO59envUS5j5dHehxaleiErPivJsXhzOLq2yVoQcLu
JXFwj/7srZ4Lb+Fnlj1prx/v1t8wA7UUIIY2Vd9m8n0Z7qLn1tg7M/0BawmdszEhS2Setqp0
8oxpxqwFC9K7Fiyez1odS1S7dOCWqQQ0tLtUJAwPCAw1nq+vjDuebW4qGbl8PL90jZGWM6CS
RaFos+MWm91uygZoW6vD3f/YnS/tylKnb7erk2BmprbbJR8jvsTPArHy7PZEKHjGzX3q5FbP
9dmg9SU3s9K5Zt+W3HIHDGzI1B36wLrSHYY3rSqBEbqWzYagbvCjHjMRgLCHow+K7rM+jtWK
WwqrvQxh9Q5HTH2AGFodocZrCs7or7BhnxklsDQ8bxbz53CVQF6k1pS7OCvxd8lQPvNRomz/
9qJ59tdyp729AKzIfaZVIlrP/I7ItiVF6rBh+yqOjO8wICLDqgrRemVeMawIPTDTBYNQYSf5
j7Kc40CEs3EPy23Ja4ugufyXmf3VUjwI/sS8mkkRZOIau1VbA8cFnsc5hNfYNEFPNua7kH8Q
Xu/kfN6TCn0Xm1ErFQu9Ht7QxVpX8qtBk2ffLVbSrkNK2GRgMyMZPFxtszza7x6L8iZF+Rs/
Hp9fDzfR++Hb7lS9ua7eY5sMjYlik5S9wa66ls4WVcYLBlNuEmbJCic6DmkokcPezxGKVr1f
fTRuPPSvpLY90aDBRJmbpsHP/bfTI5gip9f3y/7I7IGBP2PFAcLLvaRyx2R4jlB1dweJFL9/
UJIi+qCgWsP7qLCa8HqB3MpHeLXrgRbrP3hfrGskVUu4QSS7Z3efGx3xemM7N6TlHfOhyO7D
0MPjK3nghRmAyf16g0zWs6CkydYznWw77E0Lx0vLszKvdLgh908rJ5vgPe0GsVhGSXGgFOMq
qQ77/VglB4ePqZfTAg+jEk/54KA3THVaV/M4PnP+LlX7s0yod97/OCrX+qeX3dOfYFo3/C4j
/OA9sTz9+/LpCT4+/4FfAFkBtsw/3naH5hhKugjQ88hUu+Fv47Mvn8hVV4n3tjl69DXDxx2l
efCHK9J7pjazPFhrmGIuq09P2eOHvzMuVe0zP8KqpXvPvBrYoFNqBH7kibSQ3hL0nlRID6kG
MPNBl8FQ94SVKq9uUHMiBw8h0ziUR4Q8SeBFBtaJU5euMmh06IGlG860hALq2FcE7WITmcw5
FJop74CNB7JVA1nGGnOKK6qzU/j5utAL6NvGzzqxllEwYmDxebP7jgQwlITXsiSBSO/UVmx8
OWPvGwCnJYkBBU4Xow5/6wkySNkxfJmTpkhlv9D2AM+4cUhGgimDv6NHKHqymnB0sMBNT1dC
HpRUN6DU60CHsiXz7gASzNFvHxBs/i62E42PSqh0m0+4ISwJfEETn5RAkYZMWQDNl7AA2Nkq
aTB4+5XaZs7XVmVGwrq6x8XswacnXgQTPGhJ7xqE7u9SLUXmBgOMH7fI4iDWcoxSKF7/WKMO
HFRJcTOakF76v25EUKCFRffALHZ8EBcbD0YyFdqdSYaigrrxK5DMNqeJEIRrGf8ibJbMZygS
eRViJGqElgZCemMsPfNZCuIdNokiYkTSSlumgYuM7lGLQA0zGf0g1h6q4O9r67GerTwG011L
xxM8FLkgBzx+eou6DpG6YeJrHlDwY+4SMRn7rvQ+B2FP9308rHe9RE9DgJdw0YJtKnnXaexa
Zi/8OPW0masQUgnOloHr9zuRaScyuIZcO2HiylN2/Xal0k4k9O20P17+VK8pD7vzj/Zlq6Mc
d4ogXgSwrwb1efe4k+J27Xv5l0E9G6X+1SphQLWMcBajKuilaSRCjx3mzsbW9uL+5+7zZX8o
tY2zJH1S8BPpWsPzknXReuF8LyN5Jh6u0eZfeg7JnjBPoY3SG/mL1bMHvxFeSWDK8MmN7uWZ
esKVpQGSlZhLD1/boYsusGHAPXwol5nnoI6BLqUhJtUj7GtgZPOKONIvG1Up6vpvvo7UJyLw
MYyEzR3RSm/YOxHlZaeTWIq0zByMEk4FcVPTnSdWMmxwlYi40hf/7pzJSZO29f6pYmV39+39
h0x24h/Pl9P7Qc+JGooF6nP3GX2/SID1VZqa5y+9f1nNMFG6zsQlZQ+zVp8zKf3u8P/M2Gfy
ukUShPgOguUHo6SOa0h5SS9naLVwZ3RjoPDidouRo5MVEYE6vaQyLn8aGF4+ltlZ2jhElELy
y6eNNbd6vU8a2UqryJ1x406w8GfuR2vYo0QuMjxzWILmTdyW17NM8Jeff4s/9KlS1+HmBKK/
diU3yxvVurCGwaRDF9hZGDxTv7FVpSBe7oK8dyN+Hd9FHT7XEg1rKovNBw9MLSBeOANBEaSx
CyNZlBYAXdVSfZA0d/9f2ZHttg3DfqWPGzAU6P7AsZXGTWynPpr0yQjaoCiGdsWSDvv88ZBi
kZI87K0VZV2heFPch8vfxTIFLvpMXwyV8JFwC38bjdvlUZvFnclVjV8fkGC00a7oEP/XRFzp
Y2Y+HSAT7dTmA1FojSgODqQNKNslrSnRyzIUx/5u9JK6TRajwHSZLbqCWLgBWhpux0HSjINC
EYZOpDJ0wNcKCzJ1odmcwpKHatze9nRp1Q4fqrCFfFSUKxIsFoBtXHHwJgI16jaNR7G16OVy
VfLI9AyYWQA/+0+RFzF9k2NI1hkQoogFjqGIVyg41g30Knus0psVxSWWW8ZrTNQlwIkV5tEH
nj7sf9X8/Dh9u8KXOD8/mG+uDu8vMrUGa9sj/W6abTRC3YdjettgRM3qMqcL1Ay9T4K7Ztlj
SNGwnX/Zm4HjaoBzAGIeQ87dfaQ4MNnkeAI/G3x+1xw0CELE8ydKDj7BnqJbImB94rjftTGJ
t1Es0QXKU5GHhq1W6A2f2M2X08frO3rIYZ1vn+fjnyP8cTw/XV9ff/UMWhSThcNR4bQpBcOd
fotV020GoKC0BGizHQ9Rw2GlWAR1QD0wzR1ApRx6szeBFONVX5J3I959t2MIULFmR/F2qkO7
6zj1SbTSCpWuSOFyZhvrys3qF2MdESaGXy25UXuQpLH6peb9kwI8xjzHUVvLpr3NaoH/gQUX
TG/xmX+44kTtlC5KQLEOlOgxmmyo0VcHpJtNWzOUbM3MJ3ksFg4SBHAPspl6BOYHC1LPh/Ph
CiWoJ7Tkigo8dLKlL1nYC2IbNTVLXykOihWKBfHOeiTxJW/oPTQnaAmKkFimHD9vjY107Nwm
gatH5Tq+X7nngUshBsoF+ExNEK3kwee+BbltpIfs5wZAyYKUwgsp/n4jhyFESXxt7l3qn3du
cufqIt9bpa116poF1/TeHMwkYn/xJYlH3MOGgaQHej8iY3guKQmZVHTFHHpLm/oLgz4qBCBl
26eFghVYUoxGoOT8YjzbEMt5WwYHObE8LE1r4sEIHKeNjxCA3BDw6l+vp6ffAs98e0x/PJ2R
WiAfy7HG1eHl6EW6DyA6TOZQ+teJ2P7CGZDAIQaaPe3AGVjVp/TzIUWMpQjYm4m2GXpT8Y4t
DZ49bQmYPNdbJPqT8ncZJWVyIAkrbx4CwQrEKWi2eLUVznDsH7sGIJWjv6ZnTqm865t10Xtv
O7HsgY6uTmEHQaqyRk0gxmcI3vGjVI6COSpOnEMZt9sF2oR1o29YljqbMCWrz6wCIhud7XTy
AMldrszeanFiB2zw5Mj5Tn0CwC73owDYfQrNvf/oL7Vaz96bOsFF2Vfy/AI4FUxNnfAwlIWa
aa9M6NSISe1LzoX3m1v0DrHioFeWiHsjWFlkAS5s1nHO67YRF7kJCroRyTxyH+h0HCmDYkqv
L0Etg7HGhanzVZW162AZy7KtQDKIeniBMvcbjzxMA7Mv1wd4vjbP1ZqiKlTuU3/JuyjMJovn
TVscohQNnUYjbpmp8gwwKBib5KKEWua+LAXNhIYL55VR8HHSG4TKs738L2xwTjI/eAEA

--gKMricLos+KVdGMg--
