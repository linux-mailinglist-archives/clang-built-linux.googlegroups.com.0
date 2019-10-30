Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMND47WQKGQEXYKL22I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C5CEA304
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 19:08:51 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id q6sf2460070ios.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 11:08:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572458929; cv=pass;
        d=google.com; s=arc-20160816;
        b=YGmbq0Inob5UYZIRSL6k7LndMZH7jK0RqCQ+MOzwO8zPTUb0MbyfYpRC2vcbh05mM+
         MO0ux5FVwtXZz/EAuuSYv5MTn5/IlLXIxdc5mYXHPIKVrOb2C84QAzyQIItos6TEezHR
         iuN5+FzHmsWTx2+rHwEQWh9a7CvOoPSLId4q2AyHt8TNiDEUMf0uzgopP7PkxMYZM1N6
         9nk2YxMK3VqrGPjUg5DuVNEpQVeGv9nDBqJH071ToC1w2AgEdOi+8BSil2UobLAVEPNU
         8PWyg9S5xzlGd1CRvFXq57fPFNi+1oIRNgSmg56bHU8koiyj1Lhr5WIYEu0aCRgHtr1m
         c3BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ddzcqIQ0mpoSpRszic1K+xjW383eMqngVMYhzIPANls=;
        b=mJWT1IbiXjLHCcaDyWfHTrfPbqekmG6a680cDrp10+0kg4zjB5kCB99CE1pfC19Pmi
         sPbJJOavw71YQGfMHLSuOvbkKJ+wBx5dML2gADXZM3oo2AC739GN0pydf4RDRKSBZUNP
         vy+RVYcLRy1j1/JUikYn0ppCWfxlkbt//ICdD13s9fSV4g/eQeCKx7oUC/7CRsnPX4Qj
         N9m40fssPRXdyc6NmtwoBDnTU7KGXiZwPs0tBAC5MfuDcf52CILGdLc2OhFZNxOYHxD9
         LBrfp7qbARjZ6UxH1jznTbT0JeEwA+J9AT8fhT3q1xRet24TFORpc4C8d26tEs4eMVag
         gTjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ddzcqIQ0mpoSpRszic1K+xjW383eMqngVMYhzIPANls=;
        b=ebtv/ImptGT53wjlXBRwGPquKH9u01+LdyCQEO9hPLVx91C82r9JccJ2zrvUJZzBOd
         FsvYKZLZaHsG3a6iMcwcsGoXnF0BJkG5x4pGoQGzdyRpAY+s0z2J1LrBfeRwgbFj6rUC
         YflYVbMeHzKLYWp8Mj6ivflrd1EfokbaQ87HB1ctlKk+AE27gRj9I8EGkJESeREU4x43
         QFfMd2a1g8LYraOoIsiIi5EZddxOO4dbl8aV16UN9hFAVPIGXlRHogVKBxFznjWK1MmW
         Mp6TEzDk5reVozDvHE4voaHwv1c7YKT/4PPoyTertj1IG0FKQ34E3JAhp8e6fMNZr3Xn
         xfYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddzcqIQ0mpoSpRszic1K+xjW383eMqngVMYhzIPANls=;
        b=O60995oI6hGNiTtufRTFsU2UDZrnwcNdrE3Q1wTZh8mSZM+gkSgdPk/KOndesxGAlO
         VK7kykQ/ctYQ3Wqu0kBzW8u3hcZ+cDIrVv83h9ybYqRP28RExYTUpdD9fwW82OSI6Obh
         gvf1eZiscroCdlGjWPSiCLfjLk3ja72pNQ4HtB65ajwd1rsGbD8A8OT75VkRTso7W4eg
         P/JGatt23WwnMw8ugDKh0eABlgGHqSWxoyXQfiSc8AHzs4Tq4kCoQ8gxAnZ2OIFejx7j
         GSDB8/X/SqBDKO9imtvdyE9Ng6jltKIkrNYnNfOcvQiMOJVHM/FzLAkWnu1rKxG3ijEG
         6Alg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9oDYzSa1mfI/NmtLCJM2IzwIsocKLB2q/2jGGh9iSrnMVW1c9
	x6IlnVn01ECI79JJGpOXOmI=
X-Google-Smtp-Source: APXvYqzPfcs3nEbB7+/JhD3tCibJgkHJgUSVRoiaEUiEGs0LjAsQ2dCp6kx+QDTztbFx2ia+zLS00w==
X-Received: by 2002:a92:cb8c:: with SMTP id z12mr1466171ilo.55.1572458929420;
        Wed, 30 Oct 2019 11:08:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2a10:: with SMTP id r16ls57224ile.8.gmail; Wed, 30 Oct
 2019 11:08:49 -0700 (PDT)
X-Received: by 2002:a92:9117:: with SMTP id t23mr1404253ild.307.1572458928990;
        Wed, 30 Oct 2019 11:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572458928; cv=none;
        d=google.com; s=arc-20160816;
        b=K3g/Es5+AaKAuCNIcaEus5wOG/0zBlfzh6LLLaChTWT5dzu86ipCxKdbExJiXiKrSP
         9cRa/vqar7r1wU6/nnXX97tnbyH3cwkM+gpUo01zm1LmpamQ6A34dszfDcfs+T/MEMp7
         siTGNSnH2T6YPq6vP0x4oa3TlyH96LGq8SAv3VAZOgje9fmKV4s6zPowgTaIcobTWFFq
         3vZpyegA00vMzDHx7Fb1cQLs4qKHAPHUgZAGE3oAZg1B5IxXCCgTHrZGjIPFzFQBsNp2
         F3muyLgb92Of3HhBHfBCp8Q0/cB/+9ymSc/teKoQrhFM5PGJsJ6xZZ0oH+a1+FXvGRqM
         BQnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Yh2suSJvHBSL00yX/AHyWkzXPx1s6+kwND+e1akMLSQ=;
        b=A0B3VQWcbKRq7YYI7gL1ZY5nWbGUmwk99Pb1d4cDdheLKoLjKdNVU57qWYJCHC6YvV
         mdbUVd5QsT7QOhALnNiwKgq3L2eKoN0xf6KswRqWSGwMQvQysGT74R7zezkQl9K25Iww
         GcwSRva4rhUbt6BuISjjAoKkz7+Ml8qHYl3AQNhB35FzJCmky6ePmFiEeaBdO2Qtyi3C
         3VuAh8GddfrAykofe61xnJUmb4aAAVYojX8On9vscO8Efn5ya1FUlzIbBjDTXS0nJHXv
         AW6zAcOarvNNA67FRH5p3Cuy0k3Wmt64XXGV0dkr4JKrX675Vn+fcT0+6r40rx6kGLef
         MZyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id z130si127585iof.5.2019.10.30.11.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 11:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 11:08:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; 
   d="gz'50?scan'50,208,50";a="225414226"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 30 Oct 2019 11:08:46 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPsOk-0001NQ-AE; Thu, 31 Oct 2019 02:08:46 +0800
Date: Thu, 31 Oct 2019 02:08:29 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [namhyung-perf:cgroup/id-rework 1/2] include/linux/cgroup.h:720:25:
 error: incomplete result type 'union u64' in function definition
Message-ID: <201910310225.yJ0iiR7S%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pide2nayjlfkmywp"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--pide2nayjlfkmywp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Tejun Heo <tj@kernel.org>
CC: Namhyung Kim <namhyung@kernel.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/namhyung/linux-perf.git cgroup/id-rework
head:   e7e022e13baeaecfc5dff76ecfde30aed3fa97fb
commit: 81feef23c5186589c9bf0f667bcbe93daa5d8206 [1/2] kernfs: Convert to u64 id
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project eb535d23418c7259cac85bdb13197263b2cee056)
reproduce:
        git checkout 81feef23c5186589c9bf0f667bcbe93daa5d8206
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
>> include/linux/cgroup.h:720:25: error: incomplete result type 'union u64' in function definition
   static inline union u64 cgroup_get_kernfs_id(struct cgroup *cgrp)
                           ^
   include/linux/cgroup.h:720:21: note: forward declaration of 'union u64'
   static inline union u64 cgroup_get_kernfs_id(struct cgroup *cgrp)
                       ^
>> include/linux/cgroup.h:722:9: error: returning 'int' from a function with incompatible result type 'union u64'
           return 0;
                  ^
   2 errors generated.
   make[2]: *** [arch/x86/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   15 real  8 user  11 sys  126.66% cpu 	make prepare

vim +720 include/linux/cgroup.h

   715	
   716	static inline int cgroup_init_early(void) { return 0; }
   717	static inline int cgroup_init(void) { return 0; }
   718	static inline void cgroup_init_kthreadd(void) {}
   719	static inline void cgroup_kthread_ready(void) {}
 > 720	static inline union u64 cgroup_get_kernfs_id(struct cgroup *cgrp)
   721	{
 > 722		return 0;
   723	}
   724	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910310225.yJ0iiR7S%25lkp%40intel.com.

--pide2nayjlfkmywp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--pide2nayjlfkmywp--
