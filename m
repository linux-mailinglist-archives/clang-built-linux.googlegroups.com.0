Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4GKYX3QKGQEJCDENVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D809E204722
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 04:14:09 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id j3sf22658987yba.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:14:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592878449; cv=pass;
        d=google.com; s=arc-20160816;
        b=HsxZ+K6aCWfyViKTwHttq99FG67Isn6kkcZUrEpKoJYlX656MizkImedZcwaAthpss
         JG4uQW3ax66bhR6fA9ppssSMFz+DK+xZQgll3L/qWY4jXUzF1+laOHRGqs+ZCht5CQpF
         a14nFDc1ChPjDNSQHuMqt2fpA0U5+eXfs0sj5HWOxc2ddOz6lmc4/vGT86QPR+JEojma
         NQPzDApwcDQWkJTzyEfr3NcXjVGn1U8OEaEqQixmZw8p2DZuJYKASxN/VE67qKNxqw00
         6fvtssZ3ssSkCpI32Z3g3LZEOVGQNNW9NJ8DjkAKxxhXekGk5G19kPWMETJ5czgtlNu7
         PTyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=CiA/BYKJ64KtxKgpmKRO837+fvLb4tkGhcUEgnX9j/I=;
        b=Egaozjehi66DqzOy7L4UHBl+6hdAznjYrKwHkPbVsPdAX2xHXUklurGViaCQBX1y34
         mP9e4YImS/GgVdDcVCJCSq62C8T93NYMMHamL//7CuyKgVaoMksnvpIyv9UUaZZdevka
         KZbb7uyL759vXbXj/H5sbymy4397AlgDT+efJgvsT9pYD+qTlWrpWzl6ijwmwUbxz6Q0
         AHF3NtgyoMYMRUEmUvpb2FizM1mA4QUoV0X+55e3GdxhEjEmW3h20a3S3xE05kQprwd1
         qLdD2iU5hmUSX5VrC94Owc3NDEB95UcNQ/uU01+XmXasU2WH+LwnnXripETzod6OE5TJ
         dXTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CiA/BYKJ64KtxKgpmKRO837+fvLb4tkGhcUEgnX9j/I=;
        b=P6JJi3UwDTsaamGipy0g8geO5BvSmVGfKnzE6Xhw0W4FOr6HsoAmfAvoCFJEgKTt0f
         YFA9/h2hsFOXGzQj8a2QbzLgTdicFpXUxJE1HZVmlsmDSGovL/22uBmzrQxHrXK+v4KN
         pWE4s8KPf+yfNk9lkG+SUujSp+3ZScSKWJBvMtKn33JhCCvNzCGalCKFetNdAQ7co+Zz
         iLowjileIPvSP63IjUKPVU3wmCzEEVtO9vYpRweeCgU7ceOkiP1oTTwdwbNd3H8bswFR
         4m9N9N+Bo2PUkV6uuuUP5tCujQkR6ZwYnmH+izgt3vKBnHOvd+hmBP19hmrLisZ7XStF
         e4Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CiA/BYKJ64KtxKgpmKRO837+fvLb4tkGhcUEgnX9j/I=;
        b=kuDo0LWV30JS1NbzSL+lWwza4gDueFqL0l2TdTnjl9Q3ERFw8/dmQRqT98EIY6ZMgT
         3dtohce+EjfQWotdjvEQctRoIQG2kTJVWysOmbVXzaSmVDPIsDcqUQAMcYwWTcfavnrG
         sxQCM2NEMvCFSeFUjbCan9d98OiVYDyeCe/Xof6qqAw43el3nGpdpSfb68pczQwVUZZu
         mq/nhnYIkzTLtNQfi5ssF3k6pwMkP/5Sw4pJnyeEWuIO+yq7oy0zgme4QUf5FBEdSW1y
         5Gr+G77irQNQVVgPgbZu/EXo7dhj6F9alJ+LJVZH8xrzenCAEQaqPDYg2/aMyowaXuvS
         48ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ALYMdrF6WpY/1XT/H1+TZkn115YCqrE+vAvBdBltHJxdCVPy1
	7dE1GDnbSQVU3mnMT3HbzFA=
X-Google-Smtp-Source: ABdhPJwCRXKcVQJWzfyRlAx1MyHnTEvf+mZnn0jd9SFCsMwi03InoPAC0EEgnyvBuzCPHBFh7UUhuQ==
X-Received: by 2002:a25:cb45:: with SMTP id b66mr32937149ybg.397.1592878448790;
        Mon, 22 Jun 2020 19:14:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7003:: with SMTP id l3ls7214620ybc.2.gmail; Mon, 22 Jun
 2020 19:14:08 -0700 (PDT)
X-Received: by 2002:a25:a081:: with SMTP id y1mr32720878ybh.156.1592878448367;
        Mon, 22 Jun 2020 19:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592878448; cv=none;
        d=google.com; s=arc-20160816;
        b=uCdQ7X5wEb/nrIBCxLQNMmTdxE76Wdc0GNuojz5wAie/lCpkmRyrzSz6xV9IDJt25B
         aFsWuLlHePMVFCvxyLqEzWkixxpnk+/CN+4hZIu460pixIJa/2iLjBOvOdK76LBHa0e4
         I9uH4UMZtqIYmderv26UWOkvrvCQBxfRfEqUvJlByrAiCSiRCgqcj7yQnwqhsR80d+PQ
         MMVwkXT0YQRMwH/4dnseZCkNVRK2udbjjJsHqqkKEiuga0odozw1ifNWBrFUr3u76qyV
         Lz8kXg7w5+xGNguCUcD4asvSPRuj2NpmuOG0i6uhSmdh3aeuCMZpY99lkeo9FEXB0L0p
         WoFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Jv/zYvrAWwmgNnpQX9jEi/5zASUWjjpsUbYCpSfK4d4=;
        b=J9G0TFpYIycgWF1lBzugYQ56aL8of5uvhW+oLFCA3nYkmFIYU1xv1InFHuXIBjj7GQ
         iOVSgFYQ7iyrLPGlzWCJ5vrzwfyyzPlr98LFA83Xh4Lyf3O08ess+QgyXuBCxTee1PbJ
         9nDHlgCjGMaQjXWsQtZDOXgSAvopVBpxR86ZpqNub/yThO7WyDh3r9YEQBZYYvhF3/pL
         GvAiPXJQvB3hb+chGUC+lm/wNsJo+ox9BYxW/jVh54Q1WNrewmDYnOcuAdkk1c2DCirq
         bvr9PhXeaX05ytbIbfEZWv6SEdTGv+FsH2/aB/J8nGm9WFOjD9V+gHj5SN8V6HietQ5m
         z8vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id k75si475108ybk.0.2020.06.22.19.14.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 19:14:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: SfID6/JzUH/cc5Z60E7iNWK44bF7by+C9CANQaN2adh6iXNNcyn7KvBQM24qmK4CFfHkvmuR56
 Dgzzqru0GVZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="132351113"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; 
   d="gz'50?scan'50,208,50";a="132351113"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2020 19:14:06 -0700
IronPort-SDR: 22Gjlbs1dCUM4C/3Vpd3lnmN4lT8iJ5d3e8jhduv0Orxx3nyfpy+De6kBAkAPJK53ls+8iYurl
 ny9oOf8KC6cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; 
   d="gz'50?scan'50,208,50";a="384708990"
Received: from lkp-server01.sh.intel.com (HELO f484c95e4fd1) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 22 Jun 2020 19:14:04 -0700
Received: from kbuild by f484c95e4fd1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jnYRn-0000Yi-VX; Tue, 23 Jun 2020 02:14:03 +0000
Date: Tue, 23 Jun 2020 10:13:04 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 2/3] x86/build: Warn on orphan section placement
Message-ID: <202006231045.2mM5xTEM%lkp@intel.com>
References: <20200622205341.2987797-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
In-Reply-To: <20200622205341.2987797-3-keescook@chromium.org>
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


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kees,

I love your patch! Perhaps something to improve:

[auto build test WARNING on tip/auto-latest]
[also build test WARNING on v5.8-rc2 next-20200622]
[cannot apply to tip/x86/core bp/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Kees-Cook/x86-Warn-on-orphan-section-placement/20200623-045850
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 03e5e9954269d02edd5f6d3a73d579a60dd38c38
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> ld.lld: warning: arch/x86/built-in.a(entry/entry_64.o):(_kprobe_blacklist) is being placed in '_kprobe_blacklist'
ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006231045.2mM5xTEM%25lkp%40intel.com.

--mYCpIKhGyMATD0i+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yempKOYOg80UXTGYE7j/APYHCCgpbAAA

--mYCpIKhGyMATD0i+--
