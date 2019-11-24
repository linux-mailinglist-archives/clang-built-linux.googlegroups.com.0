Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBO5X5LXAKGQEVYDCWHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6211083F4
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 Nov 2019 16:03:25 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id m12sf5840521pjs.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 Nov 2019 07:03:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574607804; cv=pass;
        d=google.com; s=arc-20160816;
        b=tPVZgSatwymKOkx/mZ5EYS1BHF2+GcCj2nm2psAyjFFXbb+Ka0NDQhoVMAylqvWX/T
         qSXIx3144a1iE5cqn2+ZBdVB3W1d8B3dIAf/XUT+4PCAL+zaesMNqxzOnjHtCT5PxWcN
         OLwzrE25a6WV/lohpvPYNYCVbm05Dse8G6PjwAqYSkC/eAR5KZKzKvSc/+SIOCj5LP0+
         VW5C8gfxc0HaUBD83dGeOev+/wX7nj20A47chGL4zcb/+rGlk0sBXBUmAcDCsbvYL6eF
         1Sv6u/HFe3nd2/YRCDNyqQKK0aX17d+0XEI+02O1QYgxoLEGA7ROdeRLFmMTVibg2gnW
         rKfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4gJTuXx4nNib4rU+5JjW7HHZnDuaOZyca8Y16g4yRpM=;
        b=rmU5kYZugdoawDccP2QzjlmJnyaEVK5q+KpFdwPfCwBh6oneH/ytdvvITMMpzBVv9k
         7+w7zrgB1O/h7pRPvyDVUFfbcznRgI1wKN/Me+9uFiGREXWkjNcSP8MEhhuw+6ToDXld
         dKifO/KV5I8Zi+dexMcvNylGjmRoEE8GyKcDZ/MKMAvInNQzgtHMfu6haL8P11LswwI4
         VpzOnkGwqmFEXpBuvJPP8E8ud6EXZ+rDteY9uowml55/t4wQ+Di1U5h6VbkuaeF380sH
         zgT2kefhkQYTiTJPubJp4AidzjdeXDbn8Lgb1oDtEH3SnYswiQW7C15MnHr4+IAk5OzV
         KJmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4gJTuXx4nNib4rU+5JjW7HHZnDuaOZyca8Y16g4yRpM=;
        b=S9n3T7EGy854v7JGmf+kVFRPMA7qtuc1oxVdnsJGmcJp0Pmeqav/V7HZD1EmB/Riiv
         VX0ZakDkXjD3BjF3dvkkM5+HUJBwJX3qHE3w8QEnvgIhVXEXIIDviF1PFSezbsGgBQOP
         CSX8PjOMu8n/cn9fB2/Oo0ZIluug09XHtEU/BN6xAB27oZNF5cRoLQWfWy5Y3fOct44A
         eOHdwV2Zrkw30KZ78r523Xx7n9A1mpPF6B4cVbRGM5SqGh+B+URSMwhrGaY2928zfD/m
         QkjcApZIkgYwQ2lv9tLrL3//QPG6G7gvvc3U6d5d4RwKJRtXtMMGHgcl0EmoQYWT7Lg1
         z0RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gJTuXx4nNib4rU+5JjW7HHZnDuaOZyca8Y16g4yRpM=;
        b=Sk8isf5iEZDkotNpa4f/LUN2mesW9GwkXdxZq0NGdziQkvzPGd/5dshUaFrfu21pfs
         Ru2brU3RwiHMUyPceHagtrVN5UV0TZiIs+X7svP+2S8NLW3wI7O52mUoY8QKq9XH+Kgi
         5BkIhv6OE3kwdEZ9to/7FTQKZhYFQOC6YFYeAwEbtP3S5iTYiXEFK+duvs4gyQFC6gb7
         BwjgRBLQiJ58bJ1cDLxwfARsQrpZavOpAC53I8Uags8I2L1vRH3csNFXtXH27Q54b05T
         ABMpr80iDXwQTs0mmAWEmJhr7zU2YC0WsiLOHpYF4LldZpDsJsI7Z1oNdagJeMI11DqN
         McDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVKI4/VhfQXJIJQ80B4EB0oKMjJkSnAgqsXGGS8JSluLqxvhlgL
	qwcbvkuw3uFZWczjS4jkg8k=
X-Google-Smtp-Source: APXvYqwnB1J80Sv4xlnEJWY1YlZEm670P2loOnxXiFMnrYVmvNaPP8e9DHYENSUFzmOByj/lptfkXw==
X-Received: by 2002:a63:3409:: with SMTP id b9mr13886103pga.320.1574607803780;
        Sun, 24 Nov 2019 07:03:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5fd1:: with SMTP id t200ls3253736pgb.4.gmail; Sun, 24
 Nov 2019 07:03:23 -0800 (PST)
X-Received: by 2002:a63:5c21:: with SMTP id q33mr28253911pgb.61.1574607803289;
        Sun, 24 Nov 2019 07:03:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574607803; cv=none;
        d=google.com; s=arc-20160816;
        b=MkgPw5us/SrhGkKOsRpwphbT8rnysjG2WihJ3vUkaab4l9uvhJWG1ihyaGAYcK/bai
         VfKRDxFLjJH4ysAB7oweOgLBWx2zkgeQWAVRD8ynCIGT1l60w/v5l4Lxbco+mpoplw+P
         vMB7NEm7XeOam7AdEN2Ll2I1MSTcAg35ZfQN7vZeqS8Q6qXsxscqSUXbCgcWGdToLftJ
         eKR0kSlHSmDUR+N+L7tSd44Goj8DviwTAQ+5JIKlRwCtmpfCzXa5yIcAKS251QQIBxiq
         l5r0motSAMH9A2l72CqDlrLh8AysWHGfwYjDOYdKA0+XAYEQCMbU+Kw3/MyaKE79a1CG
         cnqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=kK+Lj8cQjF00i6+L1za3ZyM8zStjEC1QMK1+/l7x+aA=;
        b=FwtFh4g9stxfFA/4NwDrmKn8jMJk3UjuelPQ20z3E2fShB2xzWMueURnOG7I4eNOHH
         n9oqqDptwmRuXOpJorIJHwEZzUZ5hcSceS/g6LJAefHwKrUqvRIqPHKFIxVBDkjx4Yy4
         OaZfGZegNgNhG7UloYdc9h+4/Bpv6PhDp0+LdoU8eQge25CYrexPW8h9b8bYY24j8LqJ
         wEZ08FPVBlnpH2SI26f/6EXDphko1UVKds0BHyL0F5lIUrdwQgaCt6pVVZO78UGHejOT
         F2xnZIddxESx8ftUhttd4LYa4KabbDrULAqQ9lEMblXzWDXea5rsJOPhlK+tHCcUzUZw
         WHlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id n2si171385pgq.0.2019.11.24.07.03.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Nov 2019 07:03:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Nov 2019 07:03:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,238,1571727600"; 
   d="gz'50?scan'50,208,50";a="198171557"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 24 Nov 2019 07:03:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iYtQ1-0009XE-DQ; Sun, 24 Nov 2019 23:03:21 +0800
Date: Sun, 24 Nov 2019 23:03:12 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 4/5] fibmap: Use bmap instead of ->bmap method in
 ioctl_fibmap
Message-ID: <201911242219.iyazkqle%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="56d3pjpha4vikqus"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--56d3pjpha4vikqus
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
In-Reply-To: <20191122085320.124560-5-cmaiolino@redhat.com>
References: <20191122085320.124560-5-cmaiolino@redhat.com>
TO: Carlos Maiolino <cmaiolino@redhat.com>
CC: linux-fsdevel@vger.kernel.org
CC: hch@lst.de, darrick.wong@oracle.com, sandeen@sandeen.net

Hi Carlos,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on hch-configfs/for-next]
[also build test ERROR on v5.4-rc8 next-20191122]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Carlos-Maiolino/Refactor-ioctl_fibmap-internal-interface/20191124-165458
base:   git://git.infradead.org/users/hch/configfs.git for-next
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 844d97f650a2d716e63e3be903c32a82f2f817b1)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:17:
>> include/linux/fs.h:2869:38: error: parameter name omitted
   static inline int bmap(struct inode *,  sector_t *)
                                        ^
   include/linux/fs.h:2869:51: error: parameter name omitted
   static inline int bmap(struct inode *,  sector_t *)
                                                     ^
   2 errors generated.
   make[2]: *** [arch/x86/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   21 real  7 user  9 sys  82.74% cpu 	make prepare

vim +2869 include/linux/fs.h

  2865	
  2866	#ifdef CONFIG_BLOCK
  2867	extern int bmap(struct inode *, sector_t *);
  2868	#else
> 2869	static inline int bmap(struct inode *,  sector_t *)
  2870	{
  2871		return -EINVAL;
  2872	}
  2873	#endif
  2874	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911242219.iyazkqle%25lkp%40intel.com.

--56d3pjpha4vikqus
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--56d3pjpha4vikqus--
