Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM5U4XWQKGQEIAEZOCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFB1E994B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 10:39:00 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id s128sf1134174ywb.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 02:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572428339; cv=pass;
        d=google.com; s=arc-20160816;
        b=wY9ozyCQ66oJ8fVEWbU0mSIq3wxlBCLdFuXNpwjap6olT7bPMd0Po8TJemE65o+vWr
         GZoVUJ9Jjjn+/tqCxlMRkq2rB/+VSzAOu4W3gsCqT9zAD+jCqEHwgIlX/tQL3H/YQ8Ld
         Yo2sZAiC6GlqkDbnvLm8KaW48OhtDPr08/bPQdCyDRW7WmTMFT+vkrrjnkalpU7jt7tS
         fN34mtJD569gDqwbPqfRAh0ZGnIQoyp1WIhkMXGEXIWv9LPxsgY5U48DuBAoD+M85kTI
         osY4C+FoPTHfPLXpRqRVqbcDrbG48C7nVej3QgMO5pd2wOIc3/SiMhwUBu/IBYubWL1R
         Ts5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zqrbBfAh9MC+qH36Ytd6iVx70fKJg1os4oJKQFlmAAc=;
        b=AHarta4TqWgwbjcSpxy9tWkLaMhSZv2+V76nqfa/F4O1wjwO6U8CkjyW2GQLOd7yUU
         CfCY3C11lpNKBbJsQ/E7njwiukRrpEL+LxR7TOfhN04uTBdIna02+hMO+qgFE6tbvDdr
         hCncvDogfjhqhs/nsPEMi0D5hsZD8JzDJV0+mj2UrzFg3tcvibIiiGOd0obbMVaCx8Eq
         4xK0Vzds7zoUkSzo/QGcv1UsTZuUD03agiNjAehhJ9uGbqXCfNZoJYUxg8nn7oEsag4Y
         tvjtjRS+qv6vct8ixRxgNS53Xxgc1nIWqk97C1wAs5x2Iqd73/M3z0lttJ+ui7qFiGap
         nRGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zqrbBfAh9MC+qH36Ytd6iVx70fKJg1os4oJKQFlmAAc=;
        b=O3xSruRRrfdCgPx5CVZaqaIOyq3mezkq57eMutKQKTRSRuXlVRzn0MQcM9AWOv9y97
         vJws6TjT/JgSyPsJ/eChspfCCQgXLIwrVOBQas2Vn7rJqUZtqeEamI/VImfKrgWhX7Yv
         ZhkAmelEBCyTLJbXU6x3JGFn1jNCsxpXApfzt7q4i3+sBsl/w+654HH7R9UjBcTGZk7+
         yIPWxfav/Eyqcjqk5tvd5rmUnW192ejqJelD1kK/Fe+JKpnWHDAx/m2e8S0Hj49ztM8s
         5KIl6N5oBI6smgZdXYUiDHqRTC6fjck/PrPgEKPZN70JG36Xp3dTYlypR0qfLcmpbQwm
         78Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zqrbBfAh9MC+qH36Ytd6iVx70fKJg1os4oJKQFlmAAc=;
        b=ODQTPoVPrE0xtE51XYAmqqIWms0OAShRl6wEzjlxSjySUL0+ois+xb8wom3ebnTthp
         oe2/bWna9M+9aOXVku4UK2umpShsGvn6yxSYN97e7GtwOmmO4pyCbr5ZD/Td2GnalaXj
         pYmVan1YZGO/55phUhyYYsRrNRtRl1cUoS/cMtNkSPyAqgDvuCSgUU2dSWBNMhN4+Qx0
         IvtCQM8RaemzsHunRAsGHT5n2rvIFfCLKpTnFjf6qkoiVoIxQS9HkcDSMLjNxrPuRjps
         EyLDxw1SlbXlgmb/Q2cgIivCy13LIjX3LoGniCkBaJEr63FEcTnvuzCZVbA+3UMKVv5T
         ieAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUyJSzxoRtYCah3MuufHubJorKHFtEEbTb3DbAqgO0TeniWXUtj
	oayygDtSx1zI3iUyK5+rrqU=
X-Google-Smtp-Source: APXvYqy4K8h4CBjuJw19mdLW8TCbB6lJuXTHO/54aJHHIPsKVgsr6czfGd32flAtMBqSc/jkTawO9g==
X-Received: by 2002:a0d:d651:: with SMTP id y78mr19980431ywd.365.1572428339273;
        Wed, 30 Oct 2019 02:38:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d0d7:: with SMTP id h206ls288247ybg.12.gmail; Wed, 30
 Oct 2019 02:38:58 -0700 (PDT)
X-Received: by 2002:a25:80c1:: with SMTP id c1mr2671609ybm.195.1572428338689;
        Wed, 30 Oct 2019 02:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572428338; cv=none;
        d=google.com; s=arc-20160816;
        b=hbNW4fIWnPdctqxi9vfXxyaBoDhcUzJu+r6l+m2kwPF8wAzU/pgHmggnLgHIjuhgoa
         71Dp87BI5rtOc0pnhkFH3llZdjtinB55L8ihdLMtZILgHQUFfcZlmtvEdN5NpGTAeScH
         Ti4+qEupOvaV83ZNlH+OATMiqkCB+lCLaiWVl5S6843x5iIsK2dDiXx0FfQHMNmxRlhi
         4M5liZYZFsOmVIUUfrzs6wvjyXlrCxcUbJgR55isR6zVIUtb0FGZUghK+lResHiO5K0a
         nDS0eVMgrqgCIJX+KeNT3OS27W9m9yBoQYdGaU6Qh85bCy+tpdWZAOmwPeW3ZgeC3BpR
         YtTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=72bvwXCynWQWsMHPI7ORhQTM2EBMg4/6u3caInmUkEE=;
        b=WwRR06Gc+ZDU+eXaH/MI23Ahf6hCRq0drTo88JVsd6lMAJv6+bzMwqOF8+aED9XVLC
         INiLzcaa42ikH1QrgngJquMqNy3yA+wdPLoT/D6tfA4VLfMHLJ0/Fp/RWqG3SKYzhgb8
         KvYYykRy7Kglvbf/JST/+K0gN2Ef3IRo5VMiUN8Neqk9i/oGqpTBWiaGjahZvy5zsefa
         v1K+GN8xvj2KqXUD9ZIrlCKZ2BoPTDb5QfQ4tp0L/TGmvOh25jpIOSC3D1E3/JOJDmy+
         0RBm0z3UKPuoHhIheVnTwzCHkgX5SL0zUBwieP2QurZRZRFcHPRJhFXbw7hxDUnFVHIS
         0Mcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id d192si133346ywb.1.2019.10.30.02.38.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 02:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 02:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; 
   d="scan'208";a="190227862"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 30 Oct 2019 02:38:54 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPkRJ-00066Y-K1; Wed, 30 Oct 2019 17:38:53 +0800
Date: Wed, 30 Oct 2019 17:38:39 +0800
From: kbuild test robot <lkp@intel.com>
To: Joe Perches <joe@perches.com>
Cc: kbuild-all@lists.01.org, Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
Message-ID: <201910301644.N7zPlCBx%lkp@intel.com>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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

Hi Joe,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.4-rc5 next-20191029]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Joe-Perches/compiler-h-Add-__-prefix-and-suffix-to-all-__attribute__-defines/20191030-054036
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 23fdb198ae81f47a574296dab5167c5e136a02ba
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   kernel/exit.c:715:17: sparse: sparse: symbol 'do_exit' redeclared with different type (originally declared at include/linux/kernel.h:328) - different modifiers
   kernel/exit.c:879:6: sparse: sparse: symbol 'complete_and_exit' redeclared with different type (originally declared at include/linux/kernel.h:329) - different modifiers
   kernel/exit.c:1732:13: sparse: sparse: symbol 'abort' was not declared. Should it be static?
>> arch/x86/include/asm/irqflags.h:54:9: sparse: sparse: context imbalance in 'find_child_reaper' - unexpected unlock
   kernel/exit.c:1007:17: sparse: sparse: context imbalance in 'wait_task_zombie' - unexpected unlock
   kernel/exit.c:1199:24: sparse: sparse: context imbalance in 'wait_task_stopped' - unexpected unlock
   include/linux/uidgid.h:168:9: sparse: sparse: context imbalance in 'wait_task_continued' - unexpected unlock
   arch/x86/include/asm/current.h:15:16: sparse: sparse: context imbalance in 'do_wait' - different lock contexts for basic block
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1000:47: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1000:47: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1000:47: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1037:59: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1037:59: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1037:59: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1128:47: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1128:47: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1128:47: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1384:65: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1384:65: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1384:65: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1453:27: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1453:27: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1453:27: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1627:54: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1627:54: sparse: sparse: cast to restricted gfp_t
   kernel/resource.c:1627:54: sparse: sparse: cast to restricted gfp_t
>> kernel/resource.c:88:13: sparse: sparse: context imbalance in 'r_start' - wrong count at exit
>> kernel/resource.c:99:13: sparse: sparse: context imbalance in 'r_stop' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   kernel/user.c:85:19: sparse: sparse: symbol 'uidhash_table' was not declared. Should it be static?
   kernel/user.c:185:53: sparse: sparse: cast to restricted gfp_t
   kernel/user.c:185:53: sparse: sparse: cast to restricted gfp_t
   kernel/user.c:185:53: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:680:44: sparse: sparse: cast to restricted gfp_t
   kernel/user.c:217:28: sparse: sparse: cast to restricted slab_flags_t
   kernel/user.c:217:47: sparse: sparse: cast to restricted slab_flags_t
>> kernel/user.c:139:13: sparse: sparse: context imbalance in 'free_user' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   kernel/signal.c:1110:38: sparse: sparse: cast to restricted gfp_t
   kernel/signal.c:1110:38: sparse: sparse: cast to restricted gfp_t
   kernel/signal.c:1110:38: sparse: sparse: cast to restricted gfp_t
   kernel/signal.c:1808:60: sparse: sparse: cast to restricted gfp_t
   kernel/signal.c:1808:60: sparse: sparse: cast to restricted gfp_t
   kernel/signal.c:1808:60: sparse: sparse: cast to restricted gfp_t
   kernel/signal.c:4574:27: sparse: sparse: cast to restricted slab_flags_t
   kernel/signal.c:1289:9: sparse: sparse: context imbalance in 'do_send_sig_info' - different lock contexts for basic block
   include/linux/rcupdate.h:651:9: sparse: sparse: context imbalance in '__lock_task_sighand' - different lock contexts for basic block
   include/linux/rcupdate.h:649:9: sparse: sparse: context imbalance in 'send_sigqueue' - wrong count at exit
>> kernel/signal.c:2230:17: sparse: sparse: context imbalance in 'ptrace_stop' - unexpected unlock
>> arch/x86/include/asm/current.h:15:16: sparse: sparse: context imbalance in 'do_signal_stop' - unexpected unlock
>> arch/x86/include/asm/current.h:15:16: sparse: sparse: context imbalance in 'do_freezer_trap' - unexpected unlock
   kernel/signal.c:2598:33: sparse: sparse: context imbalance in 'get_signal' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   kernel/workqueue.c:330:8: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:330:8: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:543:25: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:543:25: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:543:25: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:1820:48: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:1820:48: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:1820:48: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:701:43: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:1913:14: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:1913:14: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:1913:14: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3352:41: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3352:41: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3352:41: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3355:49: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3355:49: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3355:49: sparse: sparse: cast to restricted gfp_t
   include/linux/idr.h:311:33: sparse: sparse: cast to restricted gfp_t
   include/linux/idr.h:311:33: sparse: sparse: cast to restricted gfp_t
   include/linux/idr.h:311:33: sparse: sparse: cast from restricted xa_mark_t
   include/linux/idr.h:311:33: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3607:44: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3607:44: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3607:44: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3780:48: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3780:48: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3780:48: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3896:63: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3896:63: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:3896:63: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:4247:46: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:4247:46: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:4247:46: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5267:49: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5267:49: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5267:49: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5546:43: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5546:43: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5546:43: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5608:56: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5608:56: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5608:56: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5835:52: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5835:52: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5835:52: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:629:47: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5839:17: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5839:17: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5839:17: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5874:9: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5874:9: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5874:9: sparse: sparse: cast to restricted gfp_t
   kernel/workqueue.c:5877:21: sparse: sparse: cast to restricted slab_flags_t
>> arch/x86/include/asm/irqflags.h:54:9: sparse: sparse: context imbalance in 'maybe_create_worker' - unexpected unlock
>> kernel/workqueue.c:2240:9: sparse: sparse: context imbalance in 'process_one_work' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   kernel/futex.c:811:47: sparse: sparse: cast to restricted gfp_t
   kernel/futex.c:811:47: sparse: sparse: cast to restricted gfp_t
   kernel/futex.c:811:47: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   kernel/futex.c:1559:9: sparse: sparse: context imbalance in 'wake_futex_pi' - unexpected unlock
   kernel/futex.c:1719:33: sparse: sparse: context imbalance in 'futex_wake_op' - different lock contexts for basic block
   kernel/futex.c:2015:39: sparse: sparse: context imbalance in 'futex_requeue' - different lock contexts for basic block
>> kernel/futex.c:2356:9: sparse: sparse: context imbalance in 'unqueue_me_pi' - unexpected unlock
   kernel/futex.c:2491:9: sparse: sparse: context imbalance in 'fixup_pi_state_owner' - unexpected unlock
   kernel/futex.c:2600:13: sparse: sparse: context imbalance in 'futex_wait_queue_me' - unexpected unlock
   kernel/futex.c:2702:1: sparse: sparse: context imbalance in 'futex_wait_setup' - different lock contexts for basic block
>> kernel/futex.c:2954:22: sparse: sparse: context imbalance in 'futex_lock_pi' - different lock contexts for basic block
   kernel/futex.c:2981:12: sparse: sparse: context imbalance in 'futex_unlock_pi' - different lock contexts for basic block
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'futex_wait_requeue_pi' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> arch/x86/kernel/process_32.c:159:66: sparse: sparse: cast to restricted gfp_t
>> arch/x86/kernel/process_32.c:159:66: sparse: sparse: cast to restricted gfp_t
>> arch/x86/kernel/process_32.c:159:66: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> arch/x86/kernel/irq_32.c:120:37: sparse: sparse: cast to restricted gfp_t
>> arch/x86/kernel/irq_32.c:120:37: sparse: sparse: cast to restricted gfp_t
>> arch/x86/kernel/irq_32.c:120:37: sparse: sparse: cast to restricted gfp_t
>> arch/x86/kernel/irq_32.c:120:37: sparse: sparse: cast to restricted gfp_t
>> arch/x86/kernel/irq_32.c:120:37: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:484:9: sparse: sparse: cast to restricted gfp_t
   arch/x86/kernel/irq_32.c:123:37: sparse: sparse: cast to restricted gfp_t
   arch/x86/kernel/irq_32.c:123:37: sparse: sparse: cast to restricted gfp_t
   arch/x86/kernel/irq_32.c:123:37: sparse: sparse: cast to restricted gfp_t
   arch/x86/kernel/irq_32.c:123:37: sparse: sparse: cast to restricted gfp_t
   arch/x86/kernel/irq_32.c:123:37: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:232:45: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:232:45: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:232:45: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:257:36: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:257:36: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:257:36: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:701:43: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:323:38: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:323:38: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:323:38: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:342:39: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:342:39: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:342:39: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:382:9: sparse: sparse: cast to restricted gfp_t
>> mm/mempool.c:382:9: sparse: sparse: cast from restricted gfp_t
   mm/mempool.c:383:9: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:385:21: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:386:21: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:387:21: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:389:33: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:389:54: sparse: sparse: cast to restricted gfp_t
   mm/mempool.c:422:26: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:484:9: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> mm/vmscan.c:392:47: sparse: sparse: cast to restricted gfp_t
>> mm/vmscan.c:392:47: sparse: sparse: cast to restricted gfp_t
>> mm/vmscan.c:392:47: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:753:46: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:753:46: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:753:46: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1163:48: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1164:65: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1290:54: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1540:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1540:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1540:29: sparse: sparse: cast to restricted gfp_t
>> mm/vmscan.c:1583:47: sparse: sparse: cast to restricted isolate_mode_t
   mm/vmscan.c:1596:20: sparse: sparse: cast to restricted isolate_mode_t
   mm/vmscan.c:1625:21: sparse: sparse: cast to restricted isolate_mode_t
   mm/vmscan.c:1695:52: sparse: sparse: cast to restricted isolate_mode_t
   mm/vmscan.c:1852:30: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1852:41: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1852:56: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:1852:67: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:2154:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:2154:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:2154:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:2966:33: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:421:42: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:421:42: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:421:42: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:421:42: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:421:20: sparse: sparse: cast from restricted gfp_t
   mm/vmscan.c:2978:50: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:2978:50: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:2978:50: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:2978:63: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:421:20: sparse: sparse: cast from restricted gfp_t
   include/linux/gfp.h:421:20: sparse: sparse: cast from restricted gfp_t
   mm/vmscan.c:3242:26: sparse: sparse: cast to restricted gfp_t
>> include/linux/sched/mm.h:187:36: sparse: sparse: cast to restricted gfp_t
   include/linux/sched/mm.h:187:47: sparse: sparse: cast to restricted gfp_t
   include/linux/sched/mm.h:189:35: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:421:20: sparse: sparse: cast from restricted gfp_t
   mm/vmscan.c:3586:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:3586:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:3586:29: sparse: sparse: cast to restricted gfp_t
   mm/vmscan.c:4005:35: sparse: sparse: cast to restricted gfp_t
   arch/x86/include/asm/irqflags.h:54:9: sparse: sparse: context imbalance in 'check_move_unevictable_pages' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> mm/slab_common.c:291:21: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:311:41: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:311:41: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:311:41: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:311:41: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:311:41: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:311:41: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:348:21: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:348:21: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:348:21: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:348:21: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:348:21: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:348:21: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:358:30: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:358:30: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:358:30: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:358:62: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:358:62: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:358:62: sparse: sparse: cast to restricted slab_flags_t
>> mm/slab_common.c:392:43: sparse: sparse: cast to restricted gfp_t
>> mm/slab_common.c:392:43: sparse: sparse: cast to restricted gfp_t
>> mm/slab_common.c:392:43: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:680:44: sparse: sparse: cast to restricted gfp_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:476:22: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:487:18: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:499:42: sparse: sparse: cast to restricted gfp_t
   mm/slab_common.c:499:42: sparse: sparse: cast to restricted gfp_t
   mm/slab_common.c:499:42: sparse: sparse: cast to restricted gfp_t
   mm/slab_common.c:521:29: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:612:24: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:1012:32: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:1065:62: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   mm/slab_common.c:1223:26: sparse: sparse: cast to restricted gfp_t
   mm/slab_common.c:1232:26: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:1286:42: sparse: sparse: cast to restricted slab_flags_t
   mm/slab_common.c:1303:18: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:484:9: sparse: sparse: cast to restricted gfp_t
   mm/slab_common.c:1491:54: sparse: sparse: cast to restricted slab_flags_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> mm/compaction.c:81:46: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:948:38: sparse: sparse: cast to restricted gfp_t
>> mm/compaction.c:1108:57: sparse: sparse: cast to restricted isolate_mode_t
   mm/compaction.c:1748:55: sparse: sparse: cast to restricted isolate_mode_t
   mm/compaction.c:1749:45: sparse: sparse: cast to restricted isolate_mode_t
   include/linux/gfp.h:310:9: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:310:9: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:310:9: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:310:9: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:318:29: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:318:29: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:318:27: sparse: sparse: restricted gfp_t degrades to integer
   mm/compaction.c:2343:41: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:2343:39: sparse: sparse: incorrect type in initializer (different base types) @@    expected int may_perform_io @@    got restricted gint may_perform_io @@
   mm/compaction.c:2343:39: sparse:    expected int may_perform_io
   mm/compaction.c:2343:39: sparse:    got restricted gfp_t
   mm/compaction.c:2419:29: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:2419:29: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:2419:29: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:2534:29: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:2534:29: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:2534:29: sparse: sparse: cast to restricted gfp_t
   mm/compaction.c:482:13: sparse: sparse: context imbalance in 'compact_lock_irqsave' - wrong count at exit
   include/linux/spinlock.h:393:9: sparse: sparse: context imbalance in 'compact_unlock_should_abort' - unexpected unlock
   mm/compaction.c:638:39: sparse: sparse: context imbalance in 'isolate_freepages_block' - unexpected unlock
   mm/compaction.c:1047:39: sparse: sparse: context imbalance in 'isolate_migratepages_block' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: cast to restricted gfp_t
   mm/debug.c:36:9: sparse: sparse: cast from restricted gfp_t
>> mm/debug.c:36:9: sparse: sparse: too many warnings
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/asm-generic/pgalloc.h:21:25: sparse: sparse: cast to restricted gfp_t
   include/asm-generic/pgalloc.h:21:25: sparse: sparse: cast to restricted gfp_t
   include/asm-generic/pgalloc.h:21:25: sparse: sparse: cast to restricted gfp_t
   include/asm-generic/pgalloc.h:21:25: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:838:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:838:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:838:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2181:63: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2181:74: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2187:16: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2187:16: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2187:16: sparse: sparse: cast to restricted gfp_t
   include/linux/highmem.h:208:16: sparse: sparse: cast to restricted gfp_t
   include/linux/highmem.h:208:16: sparse: sparse: cast to restricted gfp_t
   include/linux/highmem.h:208:16: sparse: sparse: cast to restricted gfp_t
   include/linux/highmem.h:208:16: sparse: sparse: cast to restricted gfp_t
   include/linux/highmem.h:208:16: sparse: sparse: cast to restricted gfp_t
   include/linux/highmem.h:208:16: sparse: sparse: cast to restricted gfp_t
   include/linux/highmem.h:208:16: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:484:9: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2326:28: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2326:28: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2326:28: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2326:28: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2326:28: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2326:28: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2333:55: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2333:55: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2333:55: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2777:32: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2777:32: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2777:32: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2777:32: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2777:32: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2777:32: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2787:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2787:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2787:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2787:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2787:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2787:56: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2844:59: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2844:59: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:2844:59: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3006:59: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3006:59: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3006:59: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3508:25: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3508:25: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3508:25: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3508:25: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3508:25: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3508:25: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3512:68: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3512:68: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:3512:68: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:4418:37: sparse: sparse: cast to restricted gfp_t
   mm/memory.c:800:17: sparse: sparse: context imbalance in 'copy_pte_range' - different lock contexts for basic block
   mm/memory.c:1412:16: sparse: sparse: context imbalance in '__get_locked_pte' - different lock contexts for basic block
   mm/memory.c:1801:17: sparse: sparse: context imbalance in 'remap_pte_range' - different lock contexts for basic block
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'apply_to_pte_range' - unexpected unlock
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'wp_pfn_shared' - unexpected unlock
>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'wp_page_shared' - unexpected unlock
>> include/linux/mm.h:839:9: sparse: sparse: context imbalance in 'do_wp_page' - unexpected unlock
>> mm/memory.c:2930:9: sparse: sparse: context imbalance in 'do_swap_page' - different lock contexts for basic block
   mm/memory.c:3124:19: sparse: sparse: context imbalance in 'pte_alloc_one_map' - different lock contexts for basic block
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'finish_fault' - unexpected unlock
   mm/memory.c:3463:9: sparse: sparse: context imbalance in 'do_fault_around' - unexpected unlock
>> mm/memory.c:3805:19: sparse: sparse: context imbalance in 'handle_pte_fault' - different lock contexts for basic block
   mm/memory.c:4116:12: sparse: sparse: context imbalance in '__follow_pte_pmd' - different lock contexts for basic block
   mm/memory.c:4195:5: sparse: sparse: context imbalance in 'follow_pte_pmd' - different lock contexts for basic block
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   fs/super.c:77:30: sparse: sparse: cast to restricted gfp_t
   fs/super.c:203:70: sparse: sparse: cast to restricted gfp_t
   fs/super.c:203:70: sparse: sparse: cast to restricted gfp_t
   fs/super.c:203:70: sparse: sparse: cast to restricted gfp_t
   fs/super.c:203:70: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1017:39: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1017:39: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1017:39: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1051:39: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1051:39: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1051:39: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1058:8: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1058:8: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1058:8: sparse: sparse: cast from restricted xa_mark_t
   fs/super.c:1058:8: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1080:25: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1080:25: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1080:25: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1281:24: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1281:37: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1285:25: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1367:24: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1367:37: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1371:25: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1444:9: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1445:33: sparse: sparse: cast to restricted fmode_t
   fs/super.c:1599:25: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1599:25: sparse: sparse: cast to restricted gfp_t
   fs/super.c:1599:25: sparse: sparse: cast to restricted gfp_t
>> fs/super.c:385:12: sparse: sparse: context imbalance in 'grab_super' - unexpected unlock
>> fs/super.c:509:20: sparse: sparse: context imbalance in 'sget_fc' - different lock contexts for basic block
>> fs/super.c:574:20: sparse: sparse: context imbalance in 'sget' - different lock contexts for basic block
>> fs/super.c:845:20: sparse: sparse: context imbalance in 'get_active_super' - wrong count at exit
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   fs/dcache.c:1688:49: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:1688:49: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:1688:49: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:1705:51: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:1705:51: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:1705:51: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:1705:51: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:1706:51: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   fs/dcache.c:3168:24: sparse: sparse: cast to restricted slab_flags_t
   fs/dcache.c:3168:24: sparse: sparse: cast to restricted slab_flags_t
   fs/dcache.c:3168:24: sparse: sparse: cast to restricted slab_flags_t
   fs/dcache.c:3207:25: sparse: sparse: cast to restricted slab_flags_t
   fs/dcache.c:3207:44: sparse: sparse: cast to restricted slab_flags_t
>> fs/dcache.c:365:23: sparse: sparse: context imbalance in 'dentry_unlink_inode' - unexpected unlock
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in '__dentry_kill' - unexpected unlock
   fs/dcache.c:622:9: sparse: sparse: context imbalance in '__lock_parent' - wrong count at exit
   fs/dcache.c:686:9: sparse: sparse: context imbalance in 'dentry_kill' - wrong count at exit
>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'dput' - unexpected unlock
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'dput_to_list' - unexpected unlock
   include/linux/spinlock.h:338:9: sparse: sparse: context imbalance in 'd_prune_aliases' - different lock contexts for basic block
   fs/dcache.c:1055:13: sparse: sparse: context imbalance in 'shrink_lock_dentry' - different lock contexts for basic block
   include/linux/compiler.h:199:9: sparse: sparse: context imbalance in 'shrink_dentry_list' - different lock contexts for basic block
   fs/dcache.c:1124:24: sparse: sparse: context imbalance in 'dentry_lru_isolate' - wrong count at exit
   fs/dcache.c:1205:24: sparse: sparse: context imbalance in 'dentry_lru_isolate_shrink' - wrong count at exit
   fs/dcache.c:1267:13: sparse: sparse: context imbalance in 'd_walk' - different lock contexts for basic block
   fs/dcache.c:1501:24: sparse: sparse: context imbalance in 'select_collect2' - different lock contexts for basic block
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'shrink_dcache_parent' - unexpected unlock
   fs/dcache.c:2447:9: sparse: sparse: context imbalance in 'd_delete' - wrong count at exit
   fs/dcache.c:2674:6: sparse: sparse: context imbalance in 'd_add' - different lock contexts for basic block
   include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in '__d_move' - unexpected unlock
   fs/dcache.c:3044:16: sparse: sparse: context imbalance in 'd_splice_alias' - different lock contexts for basic block
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   fs/file.c:111:47: sparse: sparse: cast to restricted gfp_t
   fs/file.c:111:47: sparse: sparse: cast to restricted gfp_t
   fs/file.c:111:47: sparse: sparse: cast to restricted gfp_t
   fs/file.c:111:47: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   fs/file.c:115:58: sparse: sparse: cast to restricted gfp_t
   fs/file.c:115:58: sparse: sparse: cast to restricted gfp_t
   fs/file.c:115:58: sparse: sparse: cast to restricted gfp_t
   fs/file.c:115:58: sparse: sparse: cast to restricted gfp_t
   fs/file.c:122:34: sparse: sparse: cast to restricted gfp_t
   fs/file.c:122:34: sparse: sparse: cast to restricted gfp_t
   fs/file.c:122:34: sparse: sparse: cast to restricted gfp_t
   fs/file.c:122:34: sparse: sparse: cast to restricted gfp_t
   fs/file.c:280:47: sparse: sparse: cast to restricted gfp_t
   fs/file.c:280:47: sparse: sparse: cast to restricted gfp_t
   fs/file.c:280:47: sparse: sparse: cast to restricted gfp_t
   fs/file.c:734:27: sparse: sparse: cast to restricted fmode_t
   fs/file.c:739:27: sparse: sparse: cast to restricted fmode_t
   fs/file.c:784:33: sparse: sparse: cast to restricted fmode_t
   fs/file.c:798:37: sparse: sparse: cast to restricted fmode_t
>> fs/file.c:148:12: sparse: sparse: context imbalance in 'expand_fdtable' - unexpected unlock
>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'expand_files' - unexpected unlock
>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'do_dup2' - unexpected unlock
   fs/file.c:887:5: sparse: sparse: context imbalance in 'replace_fd' - different lock contexts for basic block
>> fs/file.c:909:12: sparse: sparse: context imbalance in 'ksys_dup3' - different lock contexts for basic block
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   fs/fs-writeback.c:1557:48: sparse: sparse: cast to restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   fs/fs-writeback.c:2412:46: sparse: sparse: cast to restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
>> include/linux/backing-dev.h:158:39: sparse: sparse: context imbalance in 'inode_to_wb_and_lock_list' - wrong count at exit
>> fs/fs-writeback.c:1118:6: sparse: sparse: context imbalance in 'inode_io_list_del' - unexpected unlock
>> fs/fs-writeback.c:1351:13: sparse: sparse: context imbalance in 'inode_sleep_on_writeback' - unexpected unlock
   fs/fs-writeback.c:1577:20: sparse: sparse: context imbalance in 'writeback_single_inode' - different lock contexts for basic block
   fs/fs-writeback.c:1639:9: sparse: sparse: context imbalance in 'writeback_sb_inodes' - different lock contexts for basic block
>> fs/fs-writeback.c:1853:17: sparse: sparse: context imbalance in 'wb_writeback' - different lock contexts for basic block
   fs/fs-writeback.c:2194:9: sparse: sparse: context imbalance in 'block_dump___mark_inode_dirty' - different lock contexts for basic block
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> arch/x86/include/asm/tlbflush.h:411:30: sparse: sparse: context imbalance in 'prepare_set' - wrong count at exit
>> arch/x86/kernel/cpu/mtrr/generic.c:792:9: sparse: sparse: context imbalance in 'post_set' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> fs/notify/dnotify/dnotify.c:295:53: sparse: sparse: cast to restricted gfp_t
>> fs/notify/dnotify/dnotify.c:295:53: sparse: sparse: cast to restricted gfp_t
>> fs/notify/dnotify/dnotify.c:295:53: sparse: sparse: cast to restricted gfp_t
   fs/notify/dnotify/dnotify.c:302:60: sparse: sparse: cast to restricted gfp_t
   fs/notify/dnotify/dnotify.c:302:60: sparse: sparse: cast to restricted gfp_t
   fs/notify/dnotify/dnotify.c:302:60: sparse: sparse: cast to restricted gfp_t
>> fs/notify/dnotify/dnotify.c:388:32: sparse: sparse: cast to restricted slab_flags_t
   fs/notify/dnotify/dnotify.c:390:30: sparse: sparse: cast to restricted slab_flags_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> fs/notify/inotify/inotify_fsnotify.c:99:36: sparse: sparse: cast to restricted gfp_t
>> fs/notify/inotify/inotify_fsnotify.c:99:36: sparse: sparse: cast to restricted gfp_t
>> fs/notify/inotify/inotify_fsnotify.c:99:36: sparse: sparse: cast to restricted gfp_t
>> fs/notify/inotify/inotify_fsnotify.c:99:36: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_fsnotify.c:99:57: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> fs/notify/inotify/inotify_user.c:109:23: sparse: sparse: cast to restricted __poll_t
   fs/notify/inotify/inotify_user.c:109:33: sparse: sparse: cast to restricted __poll_t
>> fs/notify/inotify/inotify_user.c:362:21: sparse: sparse: cast to restricted gfp_t
>> fs/notify/inotify/inotify_user.c:362:21: sparse: sparse: cast to restricted gfp_t
>> fs/notify/inotify/inotify_user.c:362:21: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_user.c:365:51: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_user.c:570:66: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_user.c:570:66: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_user.c:570:66: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_user.c:632:61: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_user.c:632:61: sparse: sparse: cast to restricted gfp_t
   fs/notify/inotify/inotify_user.c:632:61: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   include/linux/idr.h:137:9: sparse: sparse: cast to restricted gfp_t
   include/linux/idr.h:137:9: sparse: sparse: cast to restricted gfp_t
>> fs/notify/inotify/inotify_user.c:825:37: sparse: sparse: cast to restricted slab_flags_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   kernel/sched/core.c:5398:47: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5398:47: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5398:47: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5402:43: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5402:43: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5402:43: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5490:43: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5490:43: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5490:43: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5547:39: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5547:39: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:5547:39: sparse: sparse: cast to restricted gfp_t
   kernel/sched/core.c:6561:51: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
>> kernel/sched/core.c:89:36: sparse: sparse: context imbalance in '__task_rq_lock' - wrong count at exit
>> kernel/sched/core.c:130:36: sparse: sparse: context imbalance in 'task_rq_lock' - wrong count at exit
>> kernel/sched/sched.h:1182:9: sparse: sparse: context imbalance in 'ttwu_remote' - unexpected unlock
>> kernel/sched/core.c:2943:6: sparse: sparse: context imbalance in 'wake_up_new_task' - unexpected unlock
>> arch/x86/include/asm/irqflags.h:54:9: sparse: sparse: context imbalance in 'finish_task_switch' - unexpected unlock
>> kernel/sched/core.c:3579:9: sparse: sparse: context imbalance in 'task_sched_runtime' - unexpected unlock
>> kernel/sched/core.c:3989:29: sparse: sparse: context imbalance in '__schedule' - wrong count at exit
>> kernel/sched/core.c:4472:9: sparse: sparse: context imbalance in 'rt_mutex_setprio' - unexpected unlock
>> kernel/sched/sched.h:1191:9: sparse: sparse: context imbalance in 'set_user_nice' - unexpected unlock
>> kernel/sched/core.c:5002:23: sparse: sparse: context imbalance in '__sched_setscheduler' - unexpected unlock
>> kernel/sched/core.c:5863:23: sparse: sparse: context imbalance in 'sched_rr_get_interval' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> kernel/sched/cputime.c:275:12: sparse: sparse: context imbalance in 'read_sum_exec_runtime' - unexpected unlock
   kernel/sched/cputime.c:316:17: sparse: sparse: context imbalance in 'thread_group_cputime' - different lock contexts for basic block
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> kernel/sched/sched.h:1191:9: sparse: sparse: context imbalance in 'dl_task_timer' - unexpected unlock
   kernel/sched/sched.h:1191:9: sparse: sparse: context imbalance in 'inactive_task_timer' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> kernel/time/timer.c:919:26: sparse: sparse: context imbalance in 'lock_timer_base' - wrong count at exit
>> kernel/time/timer.c:1057:9: sparse: sparse: context imbalance in 'mod_timer_pending' - unexpected unlock
>> kernel/time/timer.c:1057:9: sparse: sparse: context imbalance in 'mod_timer' - unexpected unlock
>> kernel/time/timer.c:1057:9: sparse: sparse: context imbalance in 'timer_reduce' - unexpected unlock
>> kernel/time/timer.c:1171:27: sparse: sparse: context imbalance in 'add_timer_on' - unexpected unlock
>> kernel/time/timer.c:1199:17: sparse: sparse: context imbalance in 'del_timer' - unexpected unlock
>> kernel/time/timer.c:1228:9: sparse: sparse: context imbalance in 'try_to_del_timer_sync' - unexpected unlock
>> kernel/time/timer.c:1057:9: sparse: sparse: context imbalance in 'schedule_timeout' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   drivers/base/devres.c:153:44: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:728:61: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:728:61: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:728:61: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:1023:60: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:1023:60: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:1023:60: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:1091:63: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:1091:63: sparse: sparse: cast to restricted gfp_t
   drivers/base/devres.c:1091:63: sparse: sparse: cast to restricted gfp_t
>> drivers/base/devres.c:490:12: sparse: sparse: context imbalance in 'release_nodes' - unexpected unlock
>> drivers/base/devres.c:521:5: sparse: sparse: context imbalance in 'devres_release_all' - different lock contexts for basic block
>> drivers/base/devres.c:684:9: sparse: sparse: context imbalance in 'devres_release_group' - wrong count at exit
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   drivers/base/firmware_loader/main.c:174:45: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:174:45: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:174:45: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:178:51: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:178:51: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:178:51: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:479:16: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:479:16: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:479:16: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:609:28: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:609:28: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:609:28: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:612:41: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:612:41: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:612:41: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:693:61: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:693:61: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:693:61: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:1128:37: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:1128:37: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:1128:37: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:1132:41: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:1132:41: sparse: sparse: cast to restricted gfp_t
   drivers/base/firmware_loader/main.c:1132:41: sparse: sparse: cast to restricted gfp_t
>> drivers/base/firmware_loader/main.c:242:13: sparse: sparse: context imbalance in '__free_fw_priv' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in '__rpm_callback' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   lib/iov_iter.c:522:37: sparse: sparse: cast to restricted gfp_t
   lib/iov_iter.c:522:37: sparse: sparse: cast to restricted gfp_t
   lib/iov_iter.c:522:37: sparse: sparse: cast to restricted gfp_t
   lib/iov_iter.c:522:37: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:484:9: sparse: sparse: cast to restricted gfp_t
   include/net/checksum.h:86:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:92:32: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:59:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:60:17: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:47: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:17: sparse: sparse: cast to restricted __wsum
   lib/iov_iter.c:1318:57: sparse: sparse: cast to restricted gfp_t
   lib/iov_iter.c:1318:57: sparse: sparse: cast to restricted gfp_t
   lib/iov_iter.c:1318:57: sparse: sparse: cast to restricted gfp_t
   include/net/checksum.h:86:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:92:32: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:59:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:60:17: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:47: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:17: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:86:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:92:32: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:59:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:60:17: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:47: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:17: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:86:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:92:32: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:59:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:60:17: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:47: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:17: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:86:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:92:32: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:59:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:60:17: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:47: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:17: sparse: sparse: cast to restricted __wsum
>> arch/x86/include/asm/checksum_32.h:196:17: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:86:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:92:32: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:59:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:60:17: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:47: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:17: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:86:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:92:32: sparse: sparse: cast to restricted __wsum
   include/net/checksum.h:59:20: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:60:17: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:47: sparse: sparse: cast from restricted __wsum
   include/net/checksum.h:61:17: sparse: sparse: cast to restricted __wsum
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   lib/once.c:26:33: sparse: sparse: cast to restricted gfp_t
   lib/once.c:26:33: sparse: sparse: cast to restricted gfp_t
   lib/once.c:26:33: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   lib/once.c:37:6: sparse: sparse: context imbalance in '__do_once_start' - wrong count at exit
>> lib/once.c:55:6: sparse: sparse: context imbalance in '__do_once_done' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   lib/xarray.c:137:46: sparse: sparse: cast to restricted xa_mark_t
   lib/xarray.c:137:29: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:301:33: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:302:24: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:32:17: sparse: sparse: cast from restricted gfp_t
   lib/xarray.c:330:33: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:331:24: sparse: sparse: cast to restricted gfp_t
   include/linux/gfp.h:325:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:365:29: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:365:42: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:367:41: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:368:32: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:62:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:57:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:73:28: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:73:28: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:74:35: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:74:35: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:67:30: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:67:30: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:68:33: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:68:33: sparse: sparse: cast to restricted gfp_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:597:37: sparse: sparse: cast to restricted xa_mark_t
   lib/xarray.c:599:25: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:599:25: sparse: sparse: cast to restricted xa_mark_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:67:30: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:67:30: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:68:33: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:68:33: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:79:29: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:73:28: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:73:28: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:74:35: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:74:35: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:941:29: sparse: sparse: cast to restricted xa_mark_t
   lib/xarray.c:943:17: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:943:17: sparse: sparse: cast to restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:416:31: sparse: sparse: cast to restricted gfp_t
   include/linux/xarray.h:1583:52: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:1658:29: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:1659:34: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:1673:41: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:1810:22: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:1848:22: sparse: sparse: cast from restricted xa_mark_t
   include/linux/xarray.h:1583:52: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:1946:14: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:73:28: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:73:28: sparse: sparse: cast to restricted gfp_t
   lib/xarray.c:74:35: sparse: sparse: cast from restricted xa_mark_t
   lib/xarray.c:74:35: sparse: sparse: cast to restricted gfp_t
>> arch/x86/include/asm/irqflags.h:54:9: sparse: sparse: context imbalance in '__xas_nomem' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> drivers/input/serio/libps2.c:35:17: sparse: sparse: context imbalance in 'ps2_do_sendbyte' - unexpected unlock
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> drivers/power/supply/power_supply_hwmon.c:290:32: sparse: sparse: cast to restricted gfp_t
>> drivers/power/supply/power_supply_hwmon.c:290:32: sparse: sparse: cast to restricted gfp_t
>> drivers/power/supply/power_supply_hwmon.c:290:32: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:293:51: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:293:51: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:293:51: sparse: sparse: cast to restricted gfp_t
   include/linux/device.h:919:46: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:301:38: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:301:38: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:301:38: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:342:52: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:342:52: sparse: sparse: cast to restricted gfp_t
   drivers/power/supply/power_supply_hwmon.c:342:52: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> drivers/thermal/thermal_hwmon.c:143:41: sparse: sparse: cast to restricted gfp_t
>> drivers/thermal/thermal_hwmon.c:143:41: sparse: sparse: cast to restricted gfp_t
>> drivers/thermal/thermal_hwmon.c:143:41: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   drivers/thermal/thermal_hwmon.c:158:39: sparse: sparse: cast to restricted gfp_t
   drivers/thermal/thermal_hwmon.c:158:39: sparse: sparse: cast to restricted gfp_t
   drivers/thermal/thermal_hwmon.c:158:39: sparse: sparse: cast to restricted gfp_t

vim +/find_child_reaper +54 arch/x86/include/asm/irqflags.h

6abcd98ffafbff include/asm-x86/irqflags.h Glauber de Oliveira Costa 2008-01-30  51  
6abcd98ffafbff include/asm-x86/irqflags.h Glauber de Oliveira Costa 2008-01-30  52  static inline void native_irq_enable(void)
6abcd98ffafbff include/asm-x86/irqflags.h Glauber de Oliveira Costa 2008-01-30  53  {
6abcd98ffafbff include/asm-x86/irqflags.h Glauber de Oliveira Costa 2008-01-30 @54  	asm volatile("sti": : :"memory");
6abcd98ffafbff include/asm-x86/irqflags.h Glauber de Oliveira Costa 2008-01-30  55  }
6abcd98ffafbff include/asm-x86/irqflags.h Glauber de Oliveira Costa 2008-01-30  56  

:::::: The code at line 54 was first introduced by commit
:::::: 6abcd98ffafbff81f0bfd7ee1d129e634af13245 x86: irqflags consolidation

:::::: TO: Glauber de Oliveira Costa <gcosta@redhat.com>
:::::: CC: Ingo Molnar <mingo@elte.hu>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910301644.N7zPlCBx%25lkp%40intel.com.
