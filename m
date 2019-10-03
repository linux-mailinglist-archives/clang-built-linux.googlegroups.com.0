Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQGZ3DWAKGQE34RLV7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 546F1CA814
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:15:46 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id m21sf548115uao.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:15:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570122945; cv=pass;
        d=google.com; s=arc-20160816;
        b=ungeAW6Y2TjuLL8Vl1bAlWbt3CkHUaJyCMlqHOjP7GBpvakZZk81L9IcN27npVBydD
         As1xNE5yqoeG4NdJwiwrJG/73hXyrW8xCdYIORmxj0tkckAYfxACFOlcUt7T0WMYLmrM
         EQwRb0rUsOP6fbyyQIh4OGyYPyRcpuMbinkzfJ8UD4GLSCk4wxynDXqsTAbC5PSWbGZT
         IFaxvLPP0UKR7UH1J4fo4z50auSK6FuBCfEwwevaBtzZ7CHYTkA1Su0Ee8WPAsa4lWQ6
         aWIhHT71U7kcV+Qra+88FGstodnChCQpIMEk9c6TUURAEusXfD0OsERbklSWxTDcsklH
         sqzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PvP/U3wpqWVX7ovijOy1f8tPk4S8+KKTidxdgpqhy54=;
        b=mU/YiySFRjmjeume1H2Q8J94TYwSl+uAqnqAap3lHJKZByjY4qRW6D1H2Z+F+1JAZm
         BvdzIbKxcWgHbSXZi0YThBX3s43Cd+m8tcAF0gtF76gnDC54m+jJYcJGsXv0DWbLMePA
         +iggsQKIUxjvLhzPnt6BFhxNDr0hIkx3UCaFA8n0yYRjOt8uSqRWmR1owXlBHYMZ72b9
         tCSyV68Nj/dLQw6gWp1Hwjxy9kbj+esp5Iwo5ffa9r1MtYyGvMCx5d3O2m/tL89h4H1c
         j4g/2uAFtVKB7pkAV/fcoPQsMtieiGlwE5HxjEFkP16DqykQ61MFHNexBS7BSZmkK7PF
         FkSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PvP/U3wpqWVX7ovijOy1f8tPk4S8+KKTidxdgpqhy54=;
        b=M/aYYxCnNKnJ3jrIXxTys1XuVys0btkcC/x12mFDnjw+aWZQIRnP7Tia3EkJzEaS+/
         D6TUB0SG/A0LVrgQZSl92n07t/+PZPdPeaSxUCb82FQ6DEhVFM35plK5R7w6AOhnK/9S
         xVmv3l/S+70OG0cFXnYK+SheuAhMqC3ozyTIr4F19axA5RCv2jhIDsNLNJNbrL9kSr9Z
         JhDy9n4mgTfvWu3I1fOaDRODWOGlg6HpSCSaFwrfyvBDUS1qdJOdq+hEWiKxJLTG3spY
         fPV9W3kWXP1qx4pRy3xdDiRvB6WAn/0D2Gkrz/ByWYKcJnZcIb2mFuqYcKQQYIkIeMxO
         9XPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PvP/U3wpqWVX7ovijOy1f8tPk4S8+KKTidxdgpqhy54=;
        b=dfKfozLCuZAq7MAH2WIfUi9l8j7c1Xk3MYOUMfzCGXLiT75LGBJ0vt5c/l8AcfYzCv
         Nn1nWIt986GcamN1BqWPwqfTSTIPcX9pfmAv6qqGE+eXkDnMXDKodVB8Mx7CTbhv0+t5
         wmwHXVw2YKYtp6MU0OMoD9tOcxxU1A2SR/KBQlI2KMrVpze98VDrF4dTrGA1oHSNH+2v
         dieH7F8YjluTdEeYMTxgVsuQb7QcR/uV7LumtiQblqulK2uHMKJ5+Vm5DT7se6E9eHEw
         /tKw5C0fEZW4uv+2bAk32DzSRsJ6+jnzGL9EKPJF8UPgD9CxMr0zRI1zV/8ca5Z3GgAL
         QfwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbphdHVtsOKZt7esdHbQXQ1+4thXDQHQ4u0QIfki193SF0EP1Q
	o28lyoZyWmz28NkeDrPVUwg=
X-Google-Smtp-Source: APXvYqwRJTGiajPOu+baMd2S/dMYaEDBkgRI2kblaUuLZNz6H/r9xav1lKm6KoQxW0dSM5H4c/OCUQ==
X-Received: by 2002:a9f:3f06:: with SMTP id h6mr5561658uaj.106.1570122944918;
        Thu, 03 Oct 2019 10:15:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:66c1:: with SMTP id a184ls718300vsc.8.gmail; Thu, 03 Oct
 2019 10:15:44 -0700 (PDT)
X-Received: by 2002:a05:6102:15b:: with SMTP id a27mr5734349vsr.114.1570122944542;
        Thu, 03 Oct 2019 10:15:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570122944; cv=none;
        d=google.com; s=arc-20160816;
        b=XNwE+GHKTdzjfyxp+4G0395tpY6AzfsQwtRhsFFTL7GFm0hZDm2WuLWtYAB9JkrEbX
         /AFCHAJezdLZRcmXl097F4HqXXVM7JU0xLDibcqFFjYvSvj/sp3hhw3MvSbNYHH03+lC
         4CqWNFyGGvXilwsgaLwnQEHXOSbXQ+jdtvG4KU6U6d9WUXwA/Lnr8YS4gXtPGQRKiYhW
         Ekyhq0n7zpR4u7JaPv/Un8UvZhW4zE8XkaoQZT9TjQtrhtvDSlg7Ur1OaNQJcELprb/a
         F5eITSn3knhp/aXW51zEegjbhU3WqETQhocDecTSqfVCbg8NLK5TnGyn1+VLiS7GLGQ7
         IQHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=r7gDTZ7AlApWMLIx8h2rE/6rLzc3EvnjbE0FtwqwwaQ=;
        b=KiiFbTzBCG1vzcl+ZVrEa2ONCnS+cN9upkJZAvzBNKxjnJWjRiFQQj500LcuHpqyHb
         KlXWayZvwZLVN98ayeHnGL+aOEFz/iyKNWLrY2+ByeIGCY9jY+uCRcV1irpH5uAQtwP4
         jCrcqQp6k/h4q/nyxjcZ0XSuMnjUj+gN208O1oVjkHy3iBdhmE4ai/gQldCr/LtmCr46
         5qquKGhDD4MyPJ0JUaeq71kP1sJXymH3iX/27yCNO7Glgmau8gZ/1SJPbFavDpQHzYl1
         OyfprL2oOrv+VjHzPaOXv/2s9rHaD6XikDfjAQ5CjkwijxAkoaYrlZTfOwWOmMSetz9u
         DjjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id e68si152883vke.0.2019.10.03.10.15.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2019 10:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; 
   d="gz'50?scan'50,208,50";a="367108670"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 03 Oct 2019 10:15:40 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iG4hY-0002uq-CW; Fri, 04 Oct 2019 01:15:40 +0800
Date: Fri, 4 Oct 2019 01:14:53 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [jwboyer-fedora:rawhide 6/22] include/linux/security.h:1274:1:
 error: expected identifier or '('
Message-ID: <201910040153.iMuKXYUM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="okiedigtdmn2fcuq"
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


--okiedigtdmn2fcuq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
BCC: philip.li@intel.com
TO: Josh Boyer <jwboyer@fedoraproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jwboyer/fedora.git rawhide
head:   5a956afaad51cbd4564a00c813aee827b19e745d
commit: f23552a8281a747aed80fccc5bbec9e917159994 [6/22] security: lockdown: expose a hook to lock the kernel down
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 38ac6bdb83a9bb76c109901960c20d1714339891)
reproduce:
        git checkout f23552a8281a747aed80fccc5bbec9e917159994
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from init/main.c:38:
>> include/linux/security.h:1274:1: error: expected identifier or '('
   {
   ^
   1 error generated.
--
   In file included from init/do_mounts.c:9:
>> include/linux/security.h:1274:1: error: expected identifier or '('
   {
   ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                                         ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:88:4: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:90:11: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
   In file included from include/linux/sunrpc/auth.h:15:
   In file included from include/linux/sunrpc/sched.h:15:
   In file included from include/linux/sunrpc/types.h:14:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:31:
--
   In file included from kernel/signal.c:29:
>> include/linux/security.h:1274:1: error: expected identifier or '('
   {
   ^
   kernel/signal.c:137:37: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 4: ready  = signal->sig[3] &~ blocked->sig[3];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:137:19: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 4: ready  = signal->sig[3] &~ blocked->sig[3];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:138:30: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   ready |= signal->sig[2] &~ blocked->sig[2];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:138:12: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   ready |= signal->sig[2] &~ blocked->sig[2];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:139:30: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   ready |= signal->sig[1] &~ blocked->sig[1];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:139:12: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   ready |= signal->sig[1] &~ blocked->sig[1];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:143:37: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: ready  = signal->sig[1] &~ blocked->sig[1];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:143:19: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
           case 2: ready  = signal->sig[1] &~ blocked->sig[1];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   8 warnings and 1 error generated.
--
   In file included from mm/util.c:12:
>> include/linux/security.h:1274:1: error: expected identifier or '('
   {
   ^
   In file included from mm/util.c:15:
   include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.

vim +1274 include/linux/security.h

  1256	
  1257	static inline int security_inode_notifysecctx(struct inode *inode, void *ctx, u32 ctxlen)
  1258	{
  1259		return -EOPNOTSUPP;
  1260	}
  1261	static inline int security_inode_setsecctx(struct dentry *dentry, void *ctx, u32 ctxlen)
  1262	{
  1263		return -EOPNOTSUPP;
  1264	}
  1265	static inline int security_inode_getsecctx(struct inode *inode, void **ctx, u32 *ctxlen)
  1266	{
  1267		return -EOPNOTSUPP;
  1268	}
  1269	static inline int security_locked_down(enum lockdown_reason what)
  1270	{
  1271		return 0;
  1272	}
  1273	static inline int security_lock_kernel_down(const char *where, enum lockdown_reason level);
> 1274	{
  1275		return 0;
  1276	}
  1277	#endif	/* CONFIG_SECURITY */
  1278	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910040153.iMuKXYUM%25lkp%40intel.com.

--okiedigtdmn2fcuq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICHYrll0AAy5jb25maWcAlFxbc9vGkn7Pr0AlVVv2g23drMhnSw9DYEBMiJsxA170gqJJ
yOZGIrUkldj/frsHADEAemhvzklsTffce7q/vkB//PaHw16Pu+flcbNaPj39cL6W23K/PJZr
53HzVP634yVOnCiHe0K9B+Zws339/uH73W1xe+N8fH/z/uLdfnXpTMr9tnxy3N32cfP1Ffpv
dtvf/vgN/v8HND6/wFD7/zirp+X2q/NPuT8A2bm8eA//c9583Rz/8+ED/Pd5s9/v9h+env55
Ll72u/8pV0fn+m65uv2y/nJ3vfz05cuft6vLi0+fLi4/3V6sri7Wl39e3lxff7r7dPkWpnKT
2BfjYuy6xZRnUiTx/UXTCG1CFm7I4vH9j1Mj/njivbzAf4wOLouLUMQTo4NbBEwWTEbFOFFJ
SxDZ52KWZAbrKBehp0TECz5XbBTyQiaZaukqyDjzChH7CfynUExiZ31gY30FT86hPL6+tPsa
ZcmEx0USFzJKjaljoQoeTwuWjWG5kVD311d47PWSkygVMLviUjmbg7PdHXHgliGAZfBsQK+p
YeKysDmh339vu5mEguUqITrrMygkCxV2beZjU15MeBbzsBg/CGMnJmUElCuaFD5EjKbMH2w9
EhvhpiV013TaqLkg8gCNZZ2jzx/O907Ok2+I8/W4z/JQFUEiVcwifv/7m+1uW741rkku5FSk
Ljm2myVSFhGPkmxRMKWYG5B8ueShGBHz66NkmRuAAIB+gLlAJsJGjOFNOIfXL4cfh2P5bDxP
HvNMuPrJpFky4u0NmCQZJLPu+/KSiImYaisCwTNcx4IeK2IqE/MC1gZCq5KM5sq45NmUKRTo
KPF4dyY/yVzu1c9WmFpEpiyTHJm02JTbtbN77O2+1TiJO5FJDmMVM6bcwEuMkfRRmiweU+wM
GZ++qc1aypSFAjrzImRSFe7CDYlj1tpp2t5aj6zH41MeK3mWiIqJeS5MdJ4tgoti3l85yRcl
sshTXHIjPmrzDIaCkqDgoUihV+IJ13yocYIU4YWclGJNpjWgGAd4+/pAMtnlqa9zsJpmMWnG
eZQqGD7m5mqa9mkS5rFi2YKcuuYyaZXNTPMPann42znCvM4S1nA4Lo8HZ7la7V63x832a3sc
SriTAjoUzHUTmKsSztMUU5GpHhmPnVwOCrqWipaXXrYU5Cn9wrL19jI3d+TwYmG+RQE0c/nw
I1hQuG/KOsmK2ewum/71krpTGVudVH+xqbU8lrXZdgN491qQG9GUq2/l+hUgjfNYLo+v+/Kg
m+sZCWrnBcs8TQEKyCLOI1aMGIAQt6NQNNeMxQqISs+exxFLCxWOCj/MZdBjPQ0oYnV5dWee
njvOkjyVtPoPuDtJE+iEwg9qkX431f7RwuuxSJ6Mh4wW8FE4ATM11aoq84jDBkiVpCBz4oGj
jsWXDX9EcCad59Rnk/AXSiBAmakQBMblqVbkKmMu7xn/1JXpBGYKmcKpWmolZ+a0EZhXAfYv
o49mzFUEwK2odSjNtJC+PMvhByy2aa00kWC5KMV00iBwgRP67HPL6+3un+7LwKT5uW3FueJz
ksLTxHYOYhyz0PdIot6ghabNh4UmA4AvJIUJGlCJpMgzm15j3lTAvuvLog8cJhyxLBMWmZhg
x0VE9x2l/llJQEnTkM6nnop+7Oh/tEuA0WKwnvB2OzpT8s9Ef+jFPY97/ecAcxYnO29IyeVF
B3RqHVc7emm5f9ztn5fbVenwf8ot6HgG2s9FLQ92slXplsE9DsJZEWHPxTTS2Iy0Kb84o2Hw
omrCQpsw27tBv4iBhs3otyNDRiFeGeYjcx8yTEbW/nBP2Zg3KN3O5gMICAXgtAz0QEKLc5cx
YJkHyMn2JnLfB8OVMpj8hHktyiPxRTh4DfXJd/3Q5ghub0Ym6pzrUEDnZ9M3lSrLXa2JPe4C
qDawd5KrNFeF1vbgIJZPj7c3777f3b67vfm9I/JwgNWP978v96tvGH34sNKRhkMdiSjW5WPV
cuqJ9trjaWMcDbgOfs5Em4UhLYrynm2N0PBmsVfApjWEvb+6O8fA5uh9kwyNxDUDWcbpsMFw
l7cDsAzgfpQhuvfQ7vZWjAoC4R7a5DlFAzePY1yDayNKcIBIwLMp0jGIh+opC8lVnuLDrSAl
OEMtQ8wBKDQkrWxgqAz9jyA3oygdPi2lJFu1HjECD7hyysAWSjEK+0uWuUw5HJyFrIGUPjoW
FkEOJjsctSwPANsLL2LXRrBBO7O6sw1o1eoLlq7fl40t1/6t4T35YMs5y8KFiz4mN6BHOq7Q
ZgiqK5T3N72Ik2R4XSi5eCfcrZxYrZHT/W5VHg67vXP88VKB7g4q7W2UVhkRjevwcfucqTzj
BQYYJKESkSdKtQ9sasZxEnq+kHREIeMKcAKIoHXWSoIBzGW0pUQePldw7yhL55BMhV+TCK7U
z2APhYa8FusdLEAuAQMAwhzntohZNLmj21NJB1oiNNB08AhUX1fj9996mnd1rV57DJq0fsgy
EL66vzVZwks7TUm3O54bpXM3GPdUODrk024LqCwR5ZG+GZ9FIlzc396YDPpRAPqOZNZ1hBOX
SzxRyUOQXMoHgCHh0ei9GYGIpplF3rAxWIyTeNjsguFneTYkPAQsmZvhoyDlqsKdHWASCWKB
sdZVEg00aKsRH8NAlzQRJHJIqiHAgNA2wApD1OjdkI6+TQy0FiwVvYsDIFs3dh5FxsFLU5WT
VEeMR0mi0LWngZC+W5cPkJ4JuJ53281xt6/CDu3NttgO7wge1qz/rGokYRmru4gmEgWmIw+1
xqcB/B2N2CLhgqTBw7DvUtKPvtY3goZTSP2o1bJF+XkiA7EuxiO0Bx2Ui4cCWh5kws0WKSX5
lb3QyrNiZIR9O5EbMerR9bNq4rgYuTTekAhDPgb5qZUeBgZzfn/xfV0u1xfGP73TwNAAQJBE
om+R5Wn/NjoCh2FTsFzJDBVCex8qo49bL/oM1MVBJaAhK1GriSKPxM9YQLX9jKM6tNqoIsiY
8AX9TiR3EZrRZuOhuLy4oEJJD8XVxwtTJqDlusvaG4Ue5h6GMbMCc26L6TMJiDnvLrR5sMFC
CtQmgCQA9l58v+xfPoBGdBdQCs/1BwA6jqH/Va87ypq76L9kaqg+5zyJw4V5Tn0GjK/SO448
DWZBy9FQAV6E8BdF6CnK9zbBbSimPMWQmxlAPIevBtCZeV7RqAGTVj3sRtyCRKVh3o/41Twy
DQGqpKhPlRl0THf/lnsHdOjya/kM/q9eCXNT4exeMN3aQXs1JqadPgpvdIErDttRZDgN+Sh8
MTAcoEodf1/+72u5Xf1wDqvlU89uaASRdUMUZgiZ6H0aWKyfyv5Yw5C/MVbV4XSZPz1EPfjo
9dA0OG9SVzjlcfX+rTmvkKwY5bSmQBogbTTPdgW3kP6IXLRl7mpdm+1y/8Phz69Py8GdC3Bi
fmI7ceb59RU972BsPbi/2T//u9yXjrff/FOFdtrInEdLGLhz0Qx8Q5R3myIfJ8k45CfWgRSp
8ut+6Tw2s6/17GaY3cLQkAfr7uZ/p1E/R5KDUnsYHF0nIY/Rh82xXOHjf7cuX2AqlKH2/ZlT
JFVwxbDmTUsRR2KIPP8CnQ0YcETiDD0i933hCoxs5bHWwBiXdxFc9zQJhtQw964EgD85Y/0c
uwB3BMMNhH8/6busVSs6bBQhSen2ehgsVvCpELyfx5W55VkGQFXEf1Xmt8cGB9Vr0fvTIwZJ
MukR8dHBz0qM8yQnkpbg5mplUWdxqdAHqD80FlUalWCQvEFaFmKNBqPBoVcrr6o+qqhYMQuE
0gE9ImQBTsMCXG5M0+oMg+7RH1JGaN3qKoz+HWR8DJo89qq4QS0pqJT6fJJ/tl0P1pRYOwYz
8DA4q3JIPVok5iCdLVnq5fSYMNyNsYA8i8G+w8ELMz7YD04T0oBxULSR4D15vAqL6B7UIMT8
Tfw5q48IYRN1a+3TPE/VMTcFIGIgG5UsF5L5vPG4+0PVD7oWDQQRPY66X+UQWmhekncciHaV
NXytg3skB55BCBfWD/n1w06N6a1DUx3yIA/eJZ8tIpkJFYDGqu5Cx2r6F4aPm8+VVgCTTs5U
ky2p7r72Gya5+8KboHBE/URJo3ti9MhQDWM0kbgoK1+R5uSYSMccSErogYqIcFCCtNNXm/ha
76jFYB9e40JyF16XEUEAUh6CgkZTwUNfSy5xTnwOWBT0gK7IwXshtJ7urt25Tji5XV8nRN5j
0BOQ6rjbq42614KQLhplqsL+oJUE1TUwQ6sCexUV1D6lAloOnd7Q8kFtBS/pdBBGxqlpPZe1
g5ct4GXXFV3ZzAjOnyH1u1cXZ+HJMFOSx50UdtM2yOYONpfCwQCErH3ArkUxc49NPKPxTMZu
Mn33ZXko187fVbLuZb973Dx1qlROAyB30SChqvCozTidGamzXqzxRBdKxLLT/9eAWjOUTnJL
zD3eX3b8RXwaxFE1j0ZlHOMdCdgd86RHaIqIbiKusi0pKLc8Rqa6WKxL18Jc0c/RyL6zDJCE
rbNJ7PbueX0qQbwBgJzAk59znqN5gk3oOjM7SzajGLQIN8nqYsR9/ANtb7fUzuCt/P5ZxtKU
n7Id/Hu5ej0uvzyVuj7Z0WHFY8crGYnYjxSqJToHX5Glm4mUju/XHJGwhPNxB/0Iy0kEbQvU
K4zK5x34WFHrfw58h7PRvDYUGLE4ZxSlbwKaABeX3ARpRsxxDuJsaruWNK38tzYs2Vr1Po9N
sWCpgpY7nbIYomIf6xPH3XfUjZJQWfgqRKLDI1Uc/ca8nShlriVgiREsDNJkheonsjV4UAl6
9eZiJpIKlzSVt/p4qsJGL7u/ufh0a9S0EAjAZh8qxK8CMCMdd62TKp10fFYXoFqs8zyWsBid
6ntIbXGyh1FOu/MPclie0fOsdFKz8SuJ15zqZHUNccwEgk7PKKboSAoIBqiK2A0ilp21rTi+
BjmsY0/s762dI+ZUYL4CJ1iv85c4GTqv/GezMiMhHWYhmbk5/Nk2cOp2wmsY5aELtVzWLZpr
wxGbVb0OJxmG//KqACbgYWpJdMJlqCj1LaFuBXCOhbaIKygTPfwpzKPr/AfLPEVgnnbLdR27
qUfwZ2A+8bMDUoX2OxpxSBDDma4npHXwaXOYnvcy8MRsu9cMfJpx+gQqBvwmoh4GLDB6Becz
tbpK0lLTjuRpHmIZwkiA+hJ8iFyGd3qKRq616HXqTM1m48nE0lK3pujXnfi2hxWJcaAagQWP
NKuLZVpBqJoGNx+DUXDk68vLbn80V9xprwzi5rDq7K05/zyKFohV6IrA2A0TiUUJmHoSruUS
JbiQdBgUa57mhfR8WxblitwX53C5kXMwdtasSFOKT9fu/JaGBd2udYjz+/LgiO3huH991hVt
h28g9mvnuF9uD8jnAPItnTUc0uYF/9qNf/6/e+vu7OkIGNnx0zEzoqe7f7f42pznHZYuO28w
Ar/ZlzDBlfu2+ZJLbI8AyQEjOv/l7Msn/ZVYexg9FhRPr4naVmXT4IMSzdMk7ba2flWS9oPs
vUmC3eHYG64lusv9mlqClX/3csr1yCPszjQcb9xERm8N3X9auzcITZ87J0Nm3CAhZaXzKLou
uXf6PEK6UtRMxh00kg9ExI6mhqE6GNqBuSJWCeYOtb6jDv3l9TicsU0/xGk+fDIB3IGWMPEh
cbBLN02Fn3H8mvrRrKbyGbOI91/pabPUtO3tEBupVgUPaLmC50GpJKXoCneENZYaZCBNbDTc
Dwu1LbPmkdJIFFVtuKVaaXYujx5PbfoPxhxXKX6dhSB5lAv/pnR/xUO37+u2SbfBIRqxCL1a
QMa51IE6ujjMZMLalSFUqATyyiXl8IquIzbZDe5r2gJIW8IzjWhC0P8kprGR6fAppSp1Vk+7
1d997cm32nEELwU/uMPcJKBT/K4UHRd9WQDNohQLdo87GK90jt9KZ7lebxAuLJ+qUQ/vTWU0
nMxYnIitFXbjVCS9z/5OtNklvVcsACrY1PKlgqaiI0q73RUdoxEh/dKCWWTJa6qAZ+Cj0Gut
P7Oj/Eg5MqtG20uWVO33CFwqkn3U87UqZPP6dNw8vm5XeDONtlkPc6iR74HyBfmm3bVAIfKS
wr2mQR30nvAoDWlspwdXt9ef/rSSZfTxgr5NNpp/vLjQSNveeyFdy50gWYmCRdfXH+dYd8g8
S3UkMn6O5nc0cjp7kIbW4GPMfFsK3SPuCdZEuoYO1X758m2zOlDqxLOUlUJ74WG9oTsYjkEX
Aq+bzRWfmzpv2Ot6swPocSozeTv4ir4d4Zc6VM7XfvlcOl9eHx9BEXtDa2YpPiC7VU7IcvX3
0+brtyNgmtD1zgABoOKX9RLLHhGc0zE2zDVpA29nbfycn8x8cqH6t2g86CSPqS9qclAASeCK
AhwyFeriTcGMdAHS248EWvcamvMwFX3LbZBPkYnA9XpdB/KCbRqvr7vgEtvTbz8O+JsZnHD5
A03qUIHEAJJxxrnLxZQ8wDPjdPc0Zt7YopzVIrX4StgxSzCbMhPK8gV5FFmePo8kfr5K4xc+
K0Lu0cakSkoL7UoviDvgHnObgLZ0s9wo+dekwacfGShaMHfdhsi9vLm9u7yrKa2yUW4lt7Rq
QH0+cEurCFLERrlPVmxhbBxzIuQV9voZ55DPPSFT2+eXueUrOB3sJJB+h0EkcEFxPthEtFnt
d4fd49EJfryU+3dT5+trCX7YYejx/4zV2L9iY9tneVi21NT4F8TRdkwJ/laDwubXB+CE89NY
tg/8wpDFyfz8ZwXBrEmFDM7H1WhL7l73HZN/ittO+FQV4u7q47WRTA8no9A7tbZomhrLdNtE
OEroKleRRFFutXlZ+bw7lujwUkoFo10KQxY0liY6V4O+PB++kuOlkWyEih6x07OnuWeCKBCT
sLY3Un/W7SRbcDs2L2+dw0u52jye4mgnVcqen3ZfoVnu3M7yGsNKkKt+MCA477ZuQ2plK/e7
5Xq1e7b1I+lV5GyefvD3ZYl1j6XzebcXn22D/IxV827eR3PbAAOaJn5+XT7B0qxrJ+nmfeHv
lRhc1hxzuN8HY3bjcVM3J2WD6nyKavySFBhOhlYgw+rTxjbMlRXP6qwU/dIsWjadRYOTwJjm
ClZJacsBzYwFYEmDLVKgnSpdHQOWOCR8ZXAfO79wofXy6vA0MpA4zY2KSRIzNPNXVi70TtM5
K67u4gg9YVr7drhwPPK2u0vtuYeupZo0coewivjohDr0c2zGCbOhMWfb9X63WZvHyWIvS/of
kjTaomY3gAKjNXfcjyhVobQZhnZXm+1XCnVLRdup6jsHFZBLIoY0XASMEJMxEGGxODIUkTWY
hZ+fwN/j3idgrW2uvtam4U838Vanl0DtVVJiWFev+vJtlmRGbWyLappfi+PLQmewaW+Rz9Fk
Ak+Vuk4sv0BDV7Aghw23wAh1qYytIBs4AIIJW2hRF0VadE5FK6y/nMJnZ3p/zhNFXy6msHx5
U1hSgxXZRvWxDMRCS2CjAFN75EqEl6tvPfdUEpntBhJV3NUbP5Sv652utGhFoVUZgF9sy9E0
NxChl1l+GY7+xR009qu+IvYp56+tcxJjFitUrVWFoCHo+AdxiI1CGu7JUHRCVm4CrE5xC4KN
Lb+64v8qu5rmtm0g+lc8OfWgZpzEk+biA/VpjvhlgjTTXjSKraoa16pHtmea/vpgdwESAHeh
5pSEWAEksFgsgPde2iIdE+T6S1dnOlGCtbt/Ox1ev3O7lRhLqgV/1pughcKFCWFrUVtphAAx
SazoVJVjVoMdDAsEBkEEnA4IDnTFvpyD78CM92IPBM6/epPA0Fr80vii3c5ggxMZuiVxQJiZ
yq/fQYIP12+T79un7QQu4Z4Px8nL9s+drufwMDkcX3d7GId3ngLHX9vTw+4IkXsYHhdjdNAr
2WH79+E/e4pkvc9IGOp5rMNhHRBOUUyQ4JMhkNcpkuRL0ARQ49D3/bdLPE5jDKIWoq2P4wi/
KZAIYbqkTxNDX3amI8TnchSTssO3E/BhTv+8vR6OfnSqklHMD9Ip7fXFTHvhEm6FwUsYMoI2
yRaFULpMC6ueQCglJ3zU8zSGxalmKez9XBxOL3NXjuE5ELIdaPm6XiyvxwAexGmhGlKVpT5x
ZVbrQDpLG2FZr2cfPkslm+bD5TzlcXpQnDbtRqw25DENJZ+vpBKxgD8gz9IpNiRxLWe8EADd
YH36CGC+pSi8+fUP0ERhI5qCkfKxfPAIspIQQ6fguCkAjCk8g9po71o1N0EZFBi4chPiLpG0
xoLjVJeWpJvhnnIBJ4SgMvwMB4XHUgYdW6+8m6ty7Kt6iYULr3I5ZyVOKgAfepyUvqg1jBXU
SsM8IkS8QhTrkswDccNCVayEITNhZBQU/Ih8/0iQZ3z6fNKR+xEv8R6edi/7MdRT/6FKTCFX
yC/v+d2/iRa3bbpoBnUQvcYqWCVHNVwN7yy+B0U0Euf9FQX7dF51//iCpvdGtJdb/AkcBcq1
fPZsuK54xwu3zMz4kxJHl9TF9cfLqy/+KFRIbBJFtAALjS0kSrp2h/eTcjeUu1UoTcRTgXud
OYRPB2qKVLcyZHGdjeWJdOgdGuHnboDnzDTKUBbC7ylRNHSRrC0glM+O/++AOjllsoL16HdV
c6ph1DpRE8ZvFYKk3RRkvvv2tt+HohHgr6jcoqRNUaCuIyeHZVcImx9i25Q6byykzRm1Upeg
sSqrI5NVOQV+IpfuE++QukhHJEOfCn5uSyIt0Pi3KsAIB1Z3InUbFwKyIS7r+C1MQaR6A7yG
zEz6VGxsnSj3lsyklPjUhm+hVHU6o3d5eOYxMmouRwnf4EGjj13PXIGaQSYJ2CWk7lV52ihg
H+v/mwBsaAC/uv2LTGfob880jW62x71/b1Mum4CCyPZdT1QcgDeI5Qi3J5G6nFeGQr0N1esV
sENZo+6WhT44Zyr8t7mTSO8XIUUvgxMQrtwqi/iFuIK3zbWjEUF6TOTvINs1WiKCkYEq1otF
FcxjStLhcqR3kotfXvTWCREwk4unt9fdvzv9F6DPv3/v6MPjmQ7WvcIFf3y/W9XlXfxkB+uA
FCrmUsz9UDjhQEczCkHuOjICpcGuSsJzPD+WdUo6ESADfGs5ppKRvTTNdJ+fqQu6D1JAmzPx
bWOr2pVRRUwMtMOHRhOwnxhwb7dueH5807AuA9eoLZROkYHCJKPqTESnFSHWP2l0RanOlKvY
omW50rGxntX6S4omTbLxeRtoIrOLM4gtIylaHCawODuWaCR2Nyo63ypu4+BoNjuhP5wSRox9
UzNZkN3qmB4K9QWEk1I4emBtjMXAEReEI33WPBqFHOu+dFUn1Q1vYyn/rGaCX4hsaY7Ubopz
In3WCzgvCPmxhluHlkTPDyvRrlOHdOKZqS23HFNTCNUIkXQZcQOgXufkRfDrEGowpKeLXPQ0
TM4K1MkXlKqGIKAXW57W6SQ2q7m3x4V/xzKudorZi17qGtgwWDar9Roo5bwJf4WE/9wj5TmZ
HNwAwf9YgowXV7KXRlcnK8tMJ1Jcn6OW2qKelgpFkRpBs5soWxH5aERdNGdINh1/E0Q6BLLu
rVnasynu0aUxyfO0DCec93pGU5ZdM+whREkqqZvLr188IS6nQBDS7S3auahv3tvI+lRVEjkj
oY7A2RYL+Hl65izJ6i9uln5EtC5XdGkBPaUDp+ei9vl5aczeFIQx+ZuL4CDkBzd+PBpdaAAA

--okiedigtdmn2fcuq--
