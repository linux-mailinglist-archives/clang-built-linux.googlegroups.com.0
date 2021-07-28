Return-Path: <clang-built-linux+bncBD26TVH6RINBBZGLQKEAMGQEJADNFLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id A88503D84BD
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:33:41 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id f19-20020ac846530000b02902682e86c382sf138496qto.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:33:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627432420; cv=pass;
        d=google.com; s=arc-20160816;
        b=BZvtsWOKQU6aOv+/BA0++hII+lDwnWsqzOZOi7VMY+DqEa2Lo3U1wyxeKte+HxVu6h
         eG91ugPCIarzXCFBMcEq+DZFieIivg51k/Esm7Wz4hTRSiTgOGzs9EBFGHMoYkl9ENaI
         jf1zD0PqoH0YO17iyAtbUADQ1/QkJPK2lhqNsHPksooUH1adWCw11E0W3UAcnSmdFduN
         ScP3Yn64D370h55+pGzM9pk3zMv7p779GyjjOiRki1elH/5YxN/7ntgDHzZda+fYs6n+
         U85N70fFRIUr2nz2qFy5QEMbizxHWKwXF+kYtcpCIcjW1/dXJfXxFbmJobvC0I7z3YyL
         z8ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:to:references
         :subject:sender:dkim-signature;
        bh=IOHc1N4udCPAUUEwJLPIBu+MSFA6ki64t0AgH0pUFXE=;
        b=A9ztAwUvQhjrZbU8FcPdvOdSKgnmxfqX8NFSQqv81uf13TNQqbsi/mMYTvw5racqlm
         nHE5HV3tPzTb9RSD0cOED6peYmdpiBdhdAMICiV7Cpg287zMe6U+edG/aryD6rAHEY0d
         7hhg1NpB/SAFFFwOdz4ebZAcgKLGPPvXkLiydIajR8EQXV38o2ppjSP7RHj5tCKcDtMA
         YO3ZfybMtmm5OkrvZPXADXqgE/f+h+6zsQtLb68RX1w71PlkfplVrR0Gd2FsDP00vVVB
         yG68uXOnozbl9gd+UUIAhtezXs6N2ndO6s7aStvSj0rHyeH4JK7cNKLKpmUjSQpbk1D+
         yZ1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IOHc1N4udCPAUUEwJLPIBu+MSFA6ki64t0AgH0pUFXE=;
        b=lXYJkn8AEvpDy8mFT8WloPhxB8Ux0/01X6bbKE/ipzMxCQGKtA3Z5JLiZzLN/lja+5
         UIICexWBd9L6OCfIU0ujQl2YtCaKKYoZMbAh+sVm1qVJ2suq0Br+so7a8wLWZ9xlbJgL
         fiP4I+2nX9fIOogtIP4mrnvinRU/ePJM9sR9uxI5pqY328Er4HU3+Djtz+LpwFrEZGzX
         VwiB9leqxalscLHOe6Gg3gs494FsJqw6L3gjZxs4c9FrkT8j2kl2UIauCV9umgTbrV0h
         /a9SMjhtBQKVeeMJzKEFwjKf942fQG66I2g+K3+6mW2H3KQhxxj0E3zFUj43beYfyb6n
         naAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IOHc1N4udCPAUUEwJLPIBu+MSFA6ki64t0AgH0pUFXE=;
        b=sqYomQdxCj0/imusjvRJ8aL2JuSjmpifbecorRRu2HgOE2A/C2nR3giyQduIgBAP74
         iV/2F3Rid4RQBzk6qSNPQt5DTxFv76y5FM21ViwmbH1Sd/tTpEwZLYQ+3lNZnxkp2SbJ
         GS1GQlXt5o5UWKESshUVBCgu5T/ZjU7WCF/gv159kPwyqYowXxXpoddE9dV814LDXnRH
         U94KEgyIUbS2YWq58ndBuCOExPZbiLLW7kCnPN8IQM8dONJYJHhcCZsxS/azMg0VFOq4
         mOJaXYB3BFdtKb3FwxNQt2lxtrs5wAyu25cjNdU7zPZ1Qf/aIYAcDFgJGMU4HPllCOYx
         MKvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326m3gvY90n9gyGWdHskt4+1D8/S9zgbTlY2vWbC1q0jFqBFcJI
	WRfKRSZbn8Uc0mEMcwUu3jE=
X-Google-Smtp-Source: ABdhPJyXQe1DEMNixcJ1IDOsKcAZauhU1EAoChUcGIOZDel/ibGs01z5HIztz2Oe3Vf30U+IZZOSGQ==
X-Received: by 2002:ac8:584c:: with SMTP id h12mr22243739qth.95.1627432420535;
        Tue, 27 Jul 2021 17:33:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:540c:: with SMTP id f12ls214268qvt.5.gmail; Tue, 27 Jul
 2021 17:33:40 -0700 (PDT)
X-Received: by 2002:a0c:c349:: with SMTP id j9mr24968277qvi.35.1627432419889;
        Tue, 27 Jul 2021 17:33:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627432419; cv=none;
        d=google.com; s=arc-20160816;
        b=rBz9ewpZ1QTXVBDuFoNAddofaYsZ3tftsYjc0A4rnjJ6OrlL50U1o3yMSKCtk2Wr2U
         inU8iVfwKVdJTS6phC8ODXUzFV1/pemK8XzE3grCyrjvSRzLfcr7L9bpHji63YKL5un/
         f24+xZ+ijsdZUGaD06foraeCvnKB64JeB3EcGVDe04x4Dv/8ZRXvae/gBSjLFPcVZTL4
         wBSaWOx6xHzCT7nR6nt9AQQtEp8wpwNNCnfo31lw9PkPGVBEF9MiWN6WKEc4nXMaXdnR
         m6E8R6kI6OkhBSRqd+x3VT5sv6DfAXk3OhhOWi6xV9xfm3UXub+1/MxCvO6ye6ymUIXa
         tZQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:references:subject;
        bh=B32aYF2ilnOVLvdc48XDaGoQEO9Sa6fvBM+nzYYZWOQ=;
        b=RuNizDxuiSUq04O4mhknrsTI1kRXHvr6pmZQbeLXlwNaJbOPtFdKBg2nxXMrou+CIA
         zN28aSRc+11HnR8aLKnJyYYcDagcQzkOPvAEaZMjuEnA9dAxIqdFBbhS3/BkqW3x5fOp
         CgJDEyEJcuAW2eEMGxkMdCL9zBNQcbpTKbvnWOPLPJXkE+Egtqp3p76egVUDwSy37hx3
         KBrUTN7eHeIJnDPMpxyL2Ml83o/SEOXf+oGYjN4jXWbUlV9SduCfcqD3Qc8wmByGZUjs
         mJJ4s6CWSeymLwGpqwg1UxN4p5h37dAHWFU7l+q2Mofzz54rDIfnfVXBkk4pLBooiPYx
         Fd2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 12si311271qtp.2.2021.07.27.17.33.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 17:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="212276623"
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="gz'50?scan'50,208,50";a="212276623"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 17:33:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="gz'50?scan'50,208,50";a="506150613"
Received: from qichaogu-mobl.ccr.corp.intel.com (HELO [10.255.30.133]) ([10.255.30.133])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 17:33:35 -0700
Subject: Fwd: [kbuild] [linux-next:master 1184/3379] drivers/of/fdt.c:196:4:
 warning: Value stored to 'pprev' is never read
 [clang-analyzer-deadcode.DeadStores]
References: <202107272200.TC2nuNg4-lkp@intel.com>
To: =?UTF-8?B?6raM7Jik7ZuI?= <ohoono.kwon@samsung.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild-all@lists.01.org, Linux Memory Management List <linux-mm@kvack.org>,
 Rob Herring <robh@kernel.org>
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202107272200.TC2nuNg4-lkp@intel.com>
Message-ID: <6a891404-a6b8-7814-b455-2fa5b78ce60d@intel.com>
Date: Wed, 28 Jul 2021 08:33:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202107272200.TC2nuNg4-lkp@intel.com>
Content-Type: multipart/mixed;
 boundary="------------7D37C42D92BF30296B54FD6D"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

This is a multi-part message in MIME format.
--------------7D37C42D92BF30296B54FD6D
Content-Type: text/plain; charset="UTF-8"; format=flowed


tree: 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   2265c5286967c58db9a99ed1b74105977507e690
commit: eb7173988caf6fc68ef00065b9defb5ac3467f21 [1184/3379] of: fdt: 
remove unnecessary codes
config: x86_64-randconfig-c001-20210726 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 
c63dbd850182797bc4b76124d08e1c320ab2365d)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         # 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=eb7173988caf6fc68ef00065b9defb5ac3467f21
         git remote add linux-next 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
         git fetch --no-tags linux-next master
         git checkout eb7173988caf6fc68ef00065b9defb5ac3467f21
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=x86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                    ^
    drivers/mtd/chips/cfi_cmdset_0020.c:703:7: note: Assuming the 
condition is false
                    if (ECCBUF_DIV(elem_len)) { /* write clean aligned 
data */
                        ^
    drivers/mtd/chips/cfi_cmdset_0020.c:660:24: note: expanded from 
macro 'ECCBUF_DIV'
    #define ECCBUF_DIV(x) ((x) & ~(ECCBUF_SIZE - 1))
                           ^~~~~~~~~~~~~~~~~~~~~~~~
    drivers/mtd/chips/cfi_cmdset_0020.c:703:3: note: Taking false branch
                    if (ECCBUF_DIV(elem_len)) { /* write clean aligned 
data */
                    ^
    drivers/mtd/chips/cfi_cmdset_0020.c:712:7: note: Assuming 'buflen' 
is not equal to 0
                    if (buflen) {
                        ^~~~~~
    drivers/mtd/chips/cfi_cmdset_0020.c:712:3: note: Taking true branch
                    if (buflen) {
                    ^
    drivers/mtd/chips/cfi_cmdset_0020.c:714:29: note: The right operand 
of '+' is a garbage value
                            memcpy(buffer, elem_base + thislen, buflen);
                                                     ^ ~~~~~~~
    drivers/mtd/chips/cfi_cmdset_0020.c:1035:16: warning: Value stored 
to 'timeo' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            unsigned long timeo = jiffies + HZ;
                          ^~~~~   ~~~~~~~~~~~~
    drivers/mtd/chips/cfi_cmdset_0020.c:1035:16: note: Value stored to 
'timeo' during its initialization is never read
            unsigned long timeo = jiffies + HZ;
                          ^~~~~   ~~~~~~~~~~~~
    drivers/mtd/chips/cfi_cmdset_0020.c:1181:16: warning: Value stored 
to 'timeo' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            unsigned long timeo = jiffies + HZ;
                          ^~~~~   ~~~~~~~~~~~~
    drivers/mtd/chips/cfi_cmdset_0020.c:1181:16: note: Value stored to 
'timeo' during its initialization is never read
            unsigned long timeo = jiffies + HZ;
                          ^~~~~   ~~~~~~~~~~~~
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    drivers/nfc/st21nfca/i2c.c:321:4: warning: Value stored to 'i' is 
never read [clang-analyzer-deadcode.DeadStores]
                            i = 0;
                            ^   ~
    drivers/nfc/st21nfca/i2c.c:321:4: note: Value stored to 'i' is never 
read
                            i = 0;
                            ^   ~
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
>> drivers/of/fdt.c:196:4: warning: Value stored to 'pprev' is never read [clang-analyzer-deadcode.DeadStores]
                            pprev      = &pp->next;
                            ^            ~~~~~~~~~
    drivers/of/fdt.c:196:4: note: Value stored to 'pprev' is never read
                            pprev      = &pp->next;
                            ^            ~~~~~~~~~
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    drivers/of/irq.c:567:2: warning: Dereference of null pointer 
[clang-analyzer-core.NullDereference]
            list_for_each_entry_safe(desc, temp_desc, &intc_parent_list, 
list) {
            ^
    include/linux/list.h:716:7: note: expanded from macro 
'list_for_each_entry_safe'
                    n = list_next_entry(pos, member); 
     \
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/list.h:555:2: note: expanded from macro 'list_next_entry'
            list_entry((pos)->member.next, typeof(*(pos)), member)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/list.h:511:2: note: expanded from macro 'list_entry'
            container_of(ptr, type, member)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/kernel.h:494:25: note: expanded from macro 'container_of'
            void *__mptr = (void *)(ptr); 
     \
                                   ^~~~~
    drivers/of/irq.c:489:2: note: Loop condition is true.  Entering loop 
body
            for_each_matching_node_and_match(np, matches, &match) {
            ^
    include/linux/of.h:1292:2: note: expanded from macro 
'for_each_matching_node_and_match'
            for (dn = of_find_matching_node_and_match(NULL, matches, 
match); \
            ^
    drivers/of/irq.c:490:8: note: Calling 'of_property_read_bool'
                    if (!of_property_read_bool(np, 
"interrupt-controller") ||
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/of.h:1230:9: note: Assuming 'prop' is non-null
            return prop ? true : false;
                   ^~~~
    include/linux/of.h:1230:9: note: '?' condition is true
    include/linux/of.h:1230:2: note: Returning the value 1, which 
participates in a condition later
            return prop ? true : false;
            ^~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/of/irq.c:490:8: note: Returning from 'of_property_read_bool'
                    if (!of_property_read_bool(np, 
"interrupt-controller") ||
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/of/irq.c:490:7: note: Left side of '||' is false
                    if (!of_property_read_bool(np, 
"interrupt-controller") ||
                        ^
    drivers/of/irq.c:491:5: note: Assuming the condition is false
                                    !of_device_is_available(np))
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/of/irq.c:490:3: note: Taking false branch
                    if (!of_property_read_bool(np, 
"interrupt-controller") ||
                    ^
    drivers/of/irq.c:494:12: note: Assuming field 'data' is non-null
                    if (WARN(!match->data, "of_irq_init: no init 
function for %s\n",
                             ^
    include/asm-generic/bug.h:130:25: note: expanded from macro 'WARN'
            int __ret_warn_on = !!(condition); 
     \
                                   ^~~~~~~~~
    drivers/of/irq.c:494:7: note: Taking false branch
                    if (WARN(!match->data, "of_irq_init: no init 
function for %s\n",
                        ^
    include/asm-generic/bug.h:131:2: note: expanded from macro 'WARN'
            if (unlikely(__ret_warn_on)) 
     \
            ^
    drivers/of/irq.c:494:3: note: Taking false branch
                    if (WARN(!match->data, "of_irq_init: no init 
function for %s\n",
                    ^
    drivers/of/irq.c:502:10: note: Calling 'kzalloc'
                    desc = kzalloc(sizeof(*desc), GFP_KERNEL);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/slab.h:721:9: note: Calling 'kmalloc'
            return kmalloc(size, flags | __GFP_ZERO);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/slab.h:579:2: note: Taking false branch
            if (__builtin_constant_p(size)) {
            ^
    include/linux/slab.h:596:2: note: Returning pointer, which 
participates in a condition later
            return __kmalloc(size, flags);
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/slab.h:721:9: note: Returning from 'kmalloc'
            return kmalloc(size, flags | __GFP_ZERO);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/slab.h:721:2: note: Returning pointer, which 
participates in a condition later
            return kmalloc(size, flags | __GFP_ZERO);
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/of/irq.c:502:10: note: Returning from 'kzalloc'
                    desc = kzalloc(sizeof(*desc), GFP_KERNEL);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/of/irq.c:503:7: note: Assuming 'desc' is non-null
                    if (!desc) {
                        ^~~~~
    drivers/of/irq.c:503:3: note: Taking false branch
                    if (!desc) {
                    ^
    drivers/of/irq.c:511:33: note: 'np' is not equal to field 
'interrupt_parent'
                    if (desc->interrupt_parent == np)
                                                  ^~
    drivers/of/irq.c:511:3: note: Taking false branch

vim +/pprev +196 drivers/of/fdt.c

bbd33931a08362 Grant Likely 2009-11-23  106  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  107  static void populate_properties(const void *blob,
dfbd4c6eff35f1 Gavin Shan   2016-05-03  108  				int offset,
dfbd4c6eff35f1 Gavin Shan   2016-05-03  109  				void **mem,
dfbd4c6eff35f1 Gavin Shan   2016-05-03  110  				struct device_node *np,
dfbd4c6eff35f1 Gavin Shan   2016-05-03  111  				const char *nodename,
dfbd4c6eff35f1 Gavin Shan   2016-05-03  112  				bool dryrun)
dfbd4c6eff35f1 Gavin Shan   2016-05-03  113  {
dfbd4c6eff35f1 Gavin Shan   2016-05-03  114  	struct property *pp, 
**pprev = NULL;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  115  	int cur;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  116  	bool has_name = false;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  117  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  118  	pprev = &np->properties;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  119  	for (cur = 
fdt_first_property_offset(blob, offset);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  120  	     cur >= 0;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  121  	     cur = 
fdt_next_property_offset(blob, cur)) {
dfbd4c6eff35f1 Gavin Shan   2016-05-03  122  		const __be32 *val;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  123  		const char *pname;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  124  		u32 sz;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  125  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  126  		val = fdt_getprop_by_offset(blob, cur, &pname, &sz);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  127  		if (!val) {
606ad42aa3b1fe Rob Herring  2016-06-15  128  			pr_warn("Cannot locate 
property at 0x%x\n", cur);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  129  			continue;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  130  		}
dfbd4c6eff35f1 Gavin Shan   2016-05-03  131  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  132  		if (!pname) {
606ad42aa3b1fe Rob Herring  2016-06-15  133  			pr_warn("Cannot find 
property name at 0x%x\n", cur);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  134  			continue;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  135  		}
dfbd4c6eff35f1 Gavin Shan   2016-05-03  136  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  137  		if (!strcmp(pname, "name"))
dfbd4c6eff35f1 Gavin Shan   2016-05-03  138  			has_name = true;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  139  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  140  		pp = unflatten_dt_alloc(mem, sizeof(struct property),
dfbd4c6eff35f1 Gavin Shan   2016-05-03  141  					__alignof__(struct 
property));
dfbd4c6eff35f1 Gavin Shan   2016-05-03  142  		if (dryrun)
dfbd4c6eff35f1 Gavin Shan   2016-05-03  143  			continue;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  144  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  145  		/* We accept flattened tree phandles either in
dfbd4c6eff35f1 Gavin Shan   2016-05-03  146  		 * ePAPR-style "phandle" 
properties, or the
dfbd4c6eff35f1 Gavin Shan   2016-05-03  147  		 * legacy "linux,phandle" 
properties.  If both
dfbd4c6eff35f1 Gavin Shan   2016-05-03  148  		 * appear and have 
different values, things
dfbd4c6eff35f1 Gavin Shan   2016-05-03  149  		 * will get weird. Don't 
do that.
bbd33931a08362 Grant Likely 2009-11-23  150  		 */
dfbd4c6eff35f1 Gavin Shan   2016-05-03  151  		if (!strcmp(pname, 
"phandle") ||
dfbd4c6eff35f1 Gavin Shan   2016-05-03  152  		    !strcmp(pname, 
"linux,phandle")) {
dfbd4c6eff35f1 Gavin Shan   2016-05-03  153  			if (!np->phandle)
dfbd4c6eff35f1 Gavin Shan   2016-05-03  154  				np->phandle = 
be32_to_cpup(val);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  155  		}
dfbd4c6eff35f1 Gavin Shan   2016-05-03  156  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  157  		/* And we process the "ibm,phandle" property
dfbd4c6eff35f1 Gavin Shan   2016-05-03  158  		 * used in pSeries 
dynamic device tree
dfbd4c6eff35f1 Gavin Shan   2016-05-03  159  		 * stuff
dfbd4c6eff35f1 Gavin Shan   2016-05-03  160  		 */
dfbd4c6eff35f1 Gavin Shan   2016-05-03  161  		if (!strcmp(pname, 
"ibm,phandle"))
dfbd4c6eff35f1 Gavin Shan   2016-05-03  162  			np->phandle = 
be32_to_cpup(val);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  163  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  164  		pp->name   = (char *)pname;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  165  		pp->length = sz;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  166  		pp->value  = (__be32 *)val;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  167  		*pprev     = pp;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  168  		pprev      = &pp->next;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  169  	}
dfbd4c6eff35f1 Gavin Shan   2016-05-03  170  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  171  	/* With version 0x10 we may not have the name property,
dfbd4c6eff35f1 Gavin Shan   2016-05-03  172  	 * recreate it here from 
the unit name if absent
dfbd4c6eff35f1 Gavin Shan   2016-05-03  173  	 */
dfbd4c6eff35f1 Gavin Shan   2016-05-03  174  	if (!has_name) {
dfbd4c6eff35f1 Gavin Shan   2016-05-03  175  		const char *p = nodename, 
*ps = p, *pa = NULL;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  176  		int len;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  177  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  178  		while (*p) {
dfbd4c6eff35f1 Gavin Shan   2016-05-03  179  			if ((*p) == '@')
dfbd4c6eff35f1 Gavin Shan   2016-05-03  180  				pa = p;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  181  			else if ((*p) == '/')
dfbd4c6eff35f1 Gavin Shan   2016-05-03  182  				ps = p + 1;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  183  			p++;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  184  		}
dfbd4c6eff35f1 Gavin Shan   2016-05-03  185  dfbd4c6eff35f1 Gavin Shan 
  2016-05-03  186  		if (pa < ps)
dfbd4c6eff35f1 Gavin Shan   2016-05-03  187  			pa = p;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  188  		len = (pa - ps) + 1;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  189  		pp = 
unflatten_dt_alloc(mem, sizeof(struct property) + len,
dfbd4c6eff35f1 Gavin Shan   2016-05-03  190  					__alignof__(struct 
property));
dfbd4c6eff35f1 Gavin Shan   2016-05-03  191  		if (!dryrun) {
dfbd4c6eff35f1 Gavin Shan   2016-05-03  192  			pp->name   = "name";
dfbd4c6eff35f1 Gavin Shan   2016-05-03  193  			pp->length = len;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  194  			pp->value  = pp + 1;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  195  			*pprev     = pp;
dfbd4c6eff35f1 Gavin Shan   2016-05-03 @196  			pprev      = &pp->next;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  197  			memcpy(pp->value, ps, 
len - 1);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  198  			((char *)pp->value)[len 
- 1] = 0;
dfbd4c6eff35f1 Gavin Shan   2016-05-03  199  			pr_debug("fixed up name 
for %s -> %s\n",
dfbd4c6eff35f1 Gavin Shan   2016-05-03  200  				 nodename, (char 
*)pp->value);
dfbd4c6eff35f1 Gavin Shan   2016-05-03  201  		}
dfbd4c6eff35f1 Gavin Shan   2016-05-03  202  	}
dfbd4c6eff35f1 Gavin Shan   2016-05-03  203  }
dfbd4c6eff35f1 Gavin Shan   2016-05-03  204
:::::: The code at line 196 was first introduced by commit
:::::: dfbd4c6eff35f1b1065cca046003cc9d7ff27222 drivers/of: Split 
unflatten_dt_node()

:::::: TO: Gavin Shan <gwshan@linux.vnet.ibm.com>
:::::: CC: Rob Herring <robh@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6a891404-a6b8-7814-b455-2fa5b78ce60d%40intel.com.

--------------7D37C42D92BF30296B54FD6D
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

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
--------------7D37C42D92BF30296B54FD6D
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="Attached Message Part"

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCmtidWls
ZCBtYWlsaW5nIGxpc3QgLS0ga2J1aWxkQGxpc3RzLjAxLm9yZw0KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBrYnVpbGQtbGVhdmVAbGlzdHMuMDEub3JnDQoNCg==
--------------7D37C42D92BF30296B54FD6D--
