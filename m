Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVGR2TVAKGQEBDBHLLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A7E8E878
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 11:41:41 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id v63sf854275vkb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 02:41:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565862100; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEIvbnppgIuNIHDEzMm56oqAce3e8ZW6KQMgstaB8EdTBnDZFwFrVV6s0NNXet91Y2
         E8+D9GeA/WzPcYLWOYj/8yXbAK5xt/nhqGEIn5DfkX/BOO6zpucYOW95X7WcmJOqTCSx
         Gx2QUwayCR+SWsKL1+YdOLlsKrANdLBlRMR4hFC6qzMCDewMQQDtB7sFfFwz93WVihQl
         eeP9QLY3JrNR2NKbJJrLycDc3foa/rRUV81f0KJPyVTqrRDIeUDWnW6p0jBAA2N6COFi
         DbLc+/vIs0lXWEhPQSfb1+MfWQ1GwQMnymOQl6TG+b55Rl7UfdnJ+U1crcpIckCt0+cu
         al9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x5tx+TTzllFGnaMgS7AB79XLy/E6ZX5hVCTUGSoVhgs=;
        b=e8/zAD7GL0AR5iV8ScN81/mzGRckwQlWViooklOKAnozHCJ7exvdCm1T/ym0EMAaqi
         GrS7um+ukY4nxMO+cGBtOwhGA2FxE0Hn0K9jr9qkYWkrwxRCWKuoWG0k7Dy5nDINelub
         dCDdtn3/eTQclsFwfmzx0PARiasz/NWYfaexdcTcU6ShpkV4zbEuz/aeFUrqSCfdRGus
         CoEp5tzEtukVQ39MFUGwZbdHR6e5U4cDYxvFeuLL+zYGScSrbmGaf27Dn64xmyHJ6Lrq
         E2AisOQoNzOXDkDjiGpz9WpczB42f7Gn57+kP+wZqumkAyGB3JYYZ1BRX4ciVS5Nm4wT
         eHlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x5tx+TTzllFGnaMgS7AB79XLy/E6ZX5hVCTUGSoVhgs=;
        b=Lk2mNNM/I4eOP+/BdaZFg/xDmFo2VZPGm6jMpFd8TLZk+3700cfK47CWIPT/MTbm8H
         UVIukQX6Tam9b2XHiWD1z05WN54mZ4NbRYMdO2KCqcuzqXbamVDvpbcSkb0QojesxRqT
         uOGRa9Wo6XUg+8BQrOta25QdrIptLKDS9alEFsuy9Yx8gG0DB8tt1bzg+ylhWIJo6FeW
         /DAGcydiLP4hR2ELSujKZbOo+lESwJr7pvrCYoLCAHSVvGIa037lsxDbf4XbxHKSqXZp
         rkhYBfTkh5GFimNQR4KZ4gjYK9zIQgqLMk3lEYFKnDODXY7QkEvm98rLv063g2HhL0Gw
         NiuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x5tx+TTzllFGnaMgS7AB79XLy/E6ZX5hVCTUGSoVhgs=;
        b=eyRX+uNsyZNVAjqfRhy+kh9NZ28JMK0xjsp2/zA30VIFnhkU3WcJKKe6QY8p97OWrK
         2OM/htIUQvovdONmUXeagH3qOjzzkFDdoLvWyTzwC64jeck1aPRAJguzW4YHQWnS8f8+
         fpFKJbuHrjdN0IP4drtDW3Y4cmFz+W7sB8UEjA3+seXmEYrUodqTWkY4TWRa8yA+qNU5
         EzlIMjqwlmOx1mGF2hh6cocV0Ks9aeu9TpS5ebAC9QfrXUDaMxMXiY9fyQcI70H1tnE2
         RxzmN2zyf3ipA7ZPqWM2OCskLr4T3jz8G/El4gvoW7TUEEFwOqG8M5Q8/7W1JZ816wk+
         cL1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+0M7ALNOJBXe43qRf6HDSy26b/AiLtnksRty4G6aqzKc7R0QZ
	G+9V8kEYBrmMJNK2IbHboQQ=
X-Google-Smtp-Source: APXvYqyXt2izB6fs4/OYkYcWnwE94G2fRlwGGqgiSU6WdDtPzjc3YFpTy3jxKa2dj/lXx++ISVkLcQ==
X-Received: by 2002:a67:ff19:: with SMTP id v25mr2374956vsp.74.1565862100271;
        Thu, 15 Aug 2019 02:41:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:be0b:: with SMTP id x11ls626227vsq.7.gmail; Thu, 15 Aug
 2019 02:41:40 -0700 (PDT)
X-Received: by 2002:a67:e24e:: with SMTP id w14mr2532828vse.124.1565862100021;
        Thu, 15 Aug 2019 02:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565862100; cv=none;
        d=google.com; s=arc-20160816;
        b=uFTJux9mFmk8esbRGcgp053AGAEYlI5D5+BDDlh1FmDK6oRR0pskk4L5PT0C4aXQUC
         t5Af+OCbKVoqSkGduR/LL2sZ4HRAmq3OFCkOB/9/Xeeb+toygYF0bR9C1peIDC61tS48
         uleJN2sSf3NzotgxQEt7VWcK7dru3tqAW71VMfm9CqTGDr9Bkht1FYo+V4Ao5y6UWDLV
         rdQYgwCf8UrE82JI3P+g8ydAKKWGaHmftjVe0ex0oYgRrp4WQgZzgWEQ0ZIC6uZ50c4o
         RfcCqFV53qPuclJe7xaaW0nfVmP/XIQHa9+1v/PklPV4vQ9g1k8XGufS+nDgpuvV2zrW
         rUCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=6YWX5RuoIBua0LuvLS5GDRYGmf8bWbkQr8002nsD2ww=;
        b=pKQbWK347Xk1b7Itq2VcrbSZOgbbtmdC3PQlIwF+Kt7re1uiiqfLYRtBpPqwoQ6FxF
         qUZ/cxHpptDWhKDx+JI7SetuLJKEo2K+jZvZcxiLSSvL1YQkEIAO4TVsYi6qE2ARee2c
         RIHMZE/mzS7x5E16KnZBcz9C7sDxoszCGhgGsDXQlyyC9K7IRSvi1Ua8WRIItje9lyOK
         P7cdw8tjy3KICfFy8YXOXbtGJ3LSHeokhkHlOewVplNA2ZW5mU+RgtQCvM9zcp65A008
         FJSLnbdnNvgpfP40LghMEzQesxSmYOfPjnfYQLDb2SXtw5FNjf831+3cp8z4tcerpzYQ
         g+4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id e126si138337vkg.5.2019.08.15.02.41.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Aug 2019 02:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Aug 2019 02:41:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; 
   d="gz'50?scan'50,208,50";a="176829208"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 15 Aug 2019 02:41:36 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hyCGF-000HiB-Ul; Thu, 15 Aug 2019 17:41:35 +0800
Date: Thu, 15 Aug 2019 17:41:33 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [chrome-os:chromeos-4.4 34/35] lib/lockref.c:157:2: warning: if
 statement has empty body
Message-ID: <201908151725.RAU7ovIx%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="aqmx2yifxc3ffbdo"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--aqmx2yifxc3ffbdo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
BCC: philip.li@intel.com
TO: cros-kernel-buildreports@googlegroups.com

tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chromeos-4.4
head:   5a6016061c6229a93ab01182469242faac59f3ba
commit: 2e62e34f0efe804c7e229ab9ea6b259510a404b1 [34/35] UPSTREAM: include/asm-generic/bug.h: fix "cut here" for WARN_ON for __WARN_TAINT architectures
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 2e62e34f0efe804c7e229ab9ea6b259510a404b1
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> lib/lockref.c:157:2: warning: if statement has empty body [-Wempty-body]
           assert_spin_locked(&lockref->lock);
           ^
   include/linux/spinlock.h:400:34: note: expanded from macro 'assert_spin_locked'
   #define assert_spin_locked(lock)        assert_raw_spin_locked(&(lock)->rlock)
                                           ^
   include/linux/spinlock_api_smp.h:20:35: note: expanded from macro 'assert_raw_spin_locked'
   #define assert_raw_spin_locked(x)       BUG_ON(!raw_spin_is_locked(x))
                                           ^
   include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
   #define BUG_ON(condition) do { if (condition) ; } while (0)
                                                 ^
   lib/lockref.c:157:2: note: put the semicolon on a separate line to silence this warning
   include/linux/spinlock.h:400:34: note: expanded from macro 'assert_spin_locked'
   #define assert_spin_locked(lock)        assert_raw_spin_locked(&(lock)->rlock)
                                           ^
   include/linux/spinlock_api_smp.h:20:35: note: expanded from macro 'assert_raw_spin_locked'
   #define assert_raw_spin_locked(x)       BUG_ON(!raw_spin_is_locked(x))
                                           ^
   include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
   #define BUG_ON(condition) do { if (condition) ; } while (0)
                                                 ^
   1 warning generated.

vim +157 lib/lockref.c

e7d33bb5ea8292 Linus Torvalds    2013-09-07  150  
e7d33bb5ea8292 Linus Torvalds    2013-09-07  151  /**
e7d33bb5ea8292 Linus Torvalds    2013-09-07  152   * lockref_mark_dead - mark lockref dead
e7d33bb5ea8292 Linus Torvalds    2013-09-07  153   * @lockref: pointer to lockref structure
e7d33bb5ea8292 Linus Torvalds    2013-09-07  154   */
e7d33bb5ea8292 Linus Torvalds    2013-09-07  155  void lockref_mark_dead(struct lockref *lockref)
e7d33bb5ea8292 Linus Torvalds    2013-09-07  156  {
e7d33bb5ea8292 Linus Torvalds    2013-09-07 @157  	assert_spin_locked(&lockref->lock);
e7d33bb5ea8292 Linus Torvalds    2013-09-07  158  	lockref->count = -128;
e7d33bb5ea8292 Linus Torvalds    2013-09-07  159  }
e66cf161098a63 Steven Whitehouse 2013-10-15  160  EXPORT_SYMBOL(lockref_mark_dead);
e7d33bb5ea8292 Linus Torvalds    2013-09-07  161  

:::::: The code at line 157 was first introduced by commit
:::::: e7d33bb5ea82922e6ddcfc6b28a630b1a4ced071 lockref: add ability to mark lockrefs "dead"

:::::: TO: Linus Torvalds <torvalds@linux-foundation.org>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908151725.RAU7ovIx%25lkp%40intel.com.

--aqmx2yifxc3ffbdo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
CvBemZZTAAA=

--aqmx2yifxc3ffbdo--
