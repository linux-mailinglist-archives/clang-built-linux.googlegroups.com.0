Return-Path: <clang-built-linux+bncBD26TVH6RINBBKUUYSEAMGQEBT2ZR7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 125BD3E4446
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 12:57:48 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id t42-20020a05680815aab0290267a116f6b3sf1010554oiw.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 03:57:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628506667; cv=pass;
        d=google.com; s=arc-20160816;
        b=k/T5ggMegKqxheCb0djVqXbntx/nQGM3bC4vZr9yOJ4UzEnmakpWaJpNqByDjolVwY
         myEtDMi197RHCDPPohsqhuPPlilZq3VXhcrcRiptV35DsF/QqoH7the383UinqnAJJD8
         1KvkMENdSuYwO+4RyEX+r7QIeiyjjhlezwwZZ3vK/fxH8zJyTDYEenf+W9CFMp+LBOEW
         eh9aQSsW5ywauz6bXGVmhVOvQUXhhWojdcrSR2BAerFN5BEoX3sfsoYLBq4ZbUklcSAs
         DE3iMkX4VSNrjtw7CaPPoHJgNe6+WUcvpx2WewICr3z9/qa4lvkqCHkNfQZ/20BmwGDX
         sTPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:to:references
         :subject:sender:dkim-signature;
        bh=J2ZlhPoZeDgFvtK8EUAubtN87QXdLsGaSkiEsEQ5vhA=;
        b=Xcj5eQScF6rpwZq5IQsXodqQ0+G4i+m+4sCkfNCUHCNoiZywP407rW8IQgwYtLyNoS
         jXfoBBlm6VTmrioaIsE+SGvJSP6016bEh4s+UgwF6WOIlfre7IcI0CoVVXDwq5ZqQyIt
         kGo3qXzQPP3uAw8BRemPF+iKrXVegthJhGeF24S2Iz59gAPASyb0C1Ec1Ayb5edfXCi6
         otNZp21o0OZVgf2upyl7bNWHlFv3bFnpgA6tISNjjgUvtaE+oPg+cH63G84zcns/sUus
         r1q5zIgVTq9doYssiPT9nqMHu4bb9bvbYjMv2vElGkVeimdKF+YV1gkSUDtIp0IK0+Yb
         snRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J2ZlhPoZeDgFvtK8EUAubtN87QXdLsGaSkiEsEQ5vhA=;
        b=g79zDdr3lWs/4IuBpqN2SlIbnHzxiaKArKJOHx1U+B0I+CItmyNAzfXxhJNd1CBrm0
         1FJBoFMwhV3Jyur+1SkKiK8txwunPgspOXK2PUUIMZmH3KUujN+f8ztHSBNfQzD+QRJc
         GIU+jfZ6pAtlbyCBky9kURyu3t+Z5h0Bmh6JLDzHa/4I1MUH0IviCInzQQ42v8dYI4Vt
         KCPudj1VjbAXAddw0s+esMAdHCvBwdpofl+BV9bG6aRHC2SMd83BB24/9WDnfv7lYDfe
         F4pDAv5TTVnNvl0mwY+OFeqQaJLxWhPWrCQTvkKlb5+ZlaPrTkHHho35q6LbKDuf5sDH
         Vdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J2ZlhPoZeDgFvtK8EUAubtN87QXdLsGaSkiEsEQ5vhA=;
        b=lEYSwTnFdLt/VVD3C/GWfal17yACyaT+oKqihr2SgTe6XMLnj4+Rh3XC5JbLO6B2or
         eR1LzdSrsK566ieuBiw5NJ85zMNqFt0mwDGTMmMlsahwKU4KMxn8URQAyRHZeSW105O4
         nQND6Q3oayCMYiuFRCsxNSKlCRUoI/f07gsduhQ7kPnNxMgMovghIr6tdTLla/bt3871
         i0/eQuj3vQ7fPxihEXZMWfGikFGUzIHxPkFm1VHWf/yTKgyIZmQSwCj9A0erSq40m1tS
         ZCYYW9cUox8ceVKzMTjHpRsjXmZGYeRUuwKNWTXq+EaOwBbqxB0TazuQKqTNsJ31x1R0
         111w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325cV1hGW/hQL/NEEhJSntbWSiUPriyekgdwoz7gc4nN8yHrORp
	21mKEmRQwDDA1HRasp1nRNE=
X-Google-Smtp-Source: ABdhPJxF4G79QsLXFF68rjd8g1q6GZZJZQZISFd3mm0AlivAoLYWHqnaYQRQH0n0c7IHojb30k8YaQ==
X-Received: by 2002:a05:6808:ab1:: with SMTP id r17mr4906107oij.19.1628506666960;
        Mon, 09 Aug 2021 03:57:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2210:: with SMTP id bd16ls3582194oib.2.gmail; Mon,
 09 Aug 2021 03:57:46 -0700 (PDT)
X-Received: by 2002:aca:c0c3:: with SMTP id q186mr22924401oif.39.1628506666345;
        Mon, 09 Aug 2021 03:57:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628506666; cv=none;
        d=google.com; s=arc-20160816;
        b=krjHoAaN58WbTpKU99PQZDnHV6DtEQ5/EKi86b345VZnwyiPBKoGxQskJ4na1De1W4
         8FBxPZHEeAsxr75FW2t7HxdhfAu2ES/m+U9m2mJQHGQdyVX4pTLLUkn1xOubW0L1Za2s
         tmEwHaZrtaYU/YWfhD7xhzHKBpJLSccGbfaVAldqJfvIfOHLVoOqFukjgu73p0WLM66N
         eNLnc7sc5yB2JTnr5QG61IUSw+nHWQc9bNDNIP8UTgYeCW2+9phgkmQPe1vhwbXcSHob
         /2yXBCVcMAHqAZiMvO1VR7zK4vCbbur5xRxi1xgkIJX/o5QZj42weuw28XBdpiIYPUU7
         Foeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:references:subject;
        bh=bVVcFSh5E8D6lvhHj7F4d7KB1gBN211NKZqPIG2+iCo=;
        b=HdYRt/HpQ4fA72zm6fgrie/MQEBBe0zSfdL4rqgHY4N6cMKFeTuU6/d858JmiPDXYc
         kn7TNiZifhQ9pna8ppEVT5q0hT4ev9CeqZUnI5hXVvV0mRxcubU+5dJ7hChqDqh/M1iz
         LT/XE5IH58O6vfTM/m43s1ZxeDrRVhsnINm8OL3LbEucA3T3EWpNjYvXpg/YiFhsm8/Z
         rVPjdx7A2fHLZzLTnDKa+g6je59o1OSlFhstOU8mSXHny2Q+gyFKe/kipJV51oKiIxSn
         TDfGnb9GzVzjDdczYP1yOLFmWlntBbjsFMfBEYiVB29nCsvbP0MUt/HfnG6P+Bz0IH9b
         CSHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id m17si1084018otk.1.2021.08.09.03.57.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 03:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="278413631"
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; 
   d="gz'50?scan'50,208,50";a="278413631"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Aug 2021 03:57:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; 
   d="gz'50?scan'50,208,50";a="514906492"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.31.192]) ([10.255.31.192])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Aug 2021 03:57:42 -0700
Subject: arch/x86/kvm/hyperv.c:1843:22: warning: Value stored to 'hv_vcpu'
 during its initialization is never read [clang-analyzer-deadcode.DeadStores]
References: <202108091646.WZkTF4om-lkp@intel.com>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202108091646.WZkTF4om-lkp@intel.com>
Message-ID: <f54930ce-d229-1776-ade8-08a129e46da0@intel.com>
Date: Mon, 9 Aug 2021 18:57:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202108091646.WZkTF4om-lkp@intel.com>
Content-Type: multipart/mixed;
 boundary="------------BB21B77B1E962DDBBAFA9040"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as
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
--------------BB21B77B1E962DDBBAFA9040
Content-Type: text/plain; charset="UTF-8"; format=flowed


tree: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   36a21d51725af2ce0700c6ebcb6b9594aac658a6
commit: 10d7bf1e46dc19d964f0f67d2a6d20df907742d1 KVM: x86: hyper-v: 
Cache guest CPUID leaves determining features availability
date:   8 weeks ago
:::::: branch date: 12 hours ago
:::::: commit date: 8 weeks ago
config: x86_64-randconfig-c001-20210806 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 
42b9c2a17a0b63cccf3ac197a82f91b28e53e643)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         # 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=10d7bf1e46dc19d964f0f67d2a6d20df907742d1
         git remote add linus 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
         git fetch --no-tags linus master
         git checkout 10d7bf1e46dc19d964f0f67d2a6d20df907742d1
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=x86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
    arch/x86/kvm/hyperv.c:2031:13: note: Assuming the condition is true
            hc.fast = !!(hc.param & HV_HYPERCALL_FAST_BIT);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:2034:14: note: Assuming field 'rep_cnt' is not 
equal to 0
            hc.rep = !!(hc.rep_cnt || hc.rep_idx);
                        ^~~~~~~~~~
    arch/x86/kvm/hyperv.c:2034:25: note: Left side of '||' is true
            hc.rep = !!(hc.rep_cnt || hc.rep_idx);
                                   ^
    arch/x86/kvm/hyperv.c:2036:9: note: Field 'fast' is false
            if (hc.fast && is_xmm_fast_hypercall(&hc))
                   ^
    arch/x86/kvm/hyperv.c:2036:14: note: Left side of '&&' is false
            if (hc.fast && is_xmm_fast_hypercall(&hc))
                        ^
    arch/x86/kvm/hyperv.c:2042:2: note: Control jumps to 'case 3:'  at 
line 2073
            switch (hc.code) {
            ^
    arch/x86/kvm/hyperv.c:2074:20: note: Field 'rep_cnt' is not equal to 0
                    if (unlikely(!hc.rep_cnt || hc.rep_idx)) {
                                     ^
    arch/x86/kvm/hyperv.c:2074:16: note: Left side of '||' is false
                    if (unlikely(!hc.rep_cnt || hc.rep_idx)) {
                                 ^
    arch/x86/kvm/hyperv.c:2074:7: note: Assuming the condition is true
                    if (unlikely(!hc.rep_cnt || hc.rep_idx)) {
                        ^
    include/linux/compiler.h:78:40: note: expanded from macro 'unlikely'
    # define unlikely(x)    __builtin_expect(!!(x), 0)
                                              ^~~~
    arch/x86/kvm/hyperv.c:2074:3: note: Taking false branch
                    if (unlikely(!hc.rep_cnt || hc.rep_idx)) {
                    ^
    arch/x86/kvm/hyperv.c:2078:9: note: Calling 'kvm_hv_flush_tlb'
                    ret = kvm_hv_flush_tlb(vcpu, &hc, false);
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:1658:7: note: 'ex' is false
            if (!ex) {
                 ^~
    arch/x86/kvm/hyperv.c:1658:2: note: Taking true branch
            if (!ex) {
            ^
    arch/x86/kvm/hyperv.c:1659:11: note: Field 'fast' is false
                    if (hc->fast) {
                            ^
    arch/x86/kvm/hyperv.c:1659:3: note: Taking false branch
                    if (hc->fast) {
                    ^
    arch/x86/kvm/hyperv.c:1664:8: note: Assuming the condition is true
                            if (unlikely(kvm_read_guest(kvm, hc->ingpa,
                                ^
    include/linux/compiler.h:78:40: note: expanded from macro 'unlikely'
    # define unlikely(x)    __builtin_expect(!!(x), 0)
                                              ^~~~
    arch/x86/kvm/hyperv.c:1664:4: note: Taking false branch
                            if (unlikely(kvm_read_guest(kvm, hc->ingpa,
                            ^
    arch/x86/kvm/hyperv.c:1682:15: note: Assuming the condition is false
                    all_cpus = (flush.flags & HV_FLUSH_ALL_PROCESSORS) ||
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:1682:14: note: Left side of '||' is false
                    all_cpus = (flush.flags & HV_FLUSH_ALL_PROCESSORS) ||
                               ^
    arch/x86/kvm/hyperv.c:1683:4: note: Assuming field 'processor_mask' 
is not equal to 0
                            flush.processor_mask == 0;
                            ^~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:1731:14: note: 'all_cpus' is false
            vcpu_mask = all_cpus ? NULL :
                        ^~~~~~~~
    arch/x86/kvm/hyperv.c:1731:14: note: '?' condition is false
    arch/x86/kvm/hyperv.c:1732:3: note: Calling 'sparse_set_to_vcpu_mask'
                    sparse_set_to_vcpu_mask(kvm, sparse_banks, 
valid_bank_mask,
 
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:1613:2: note: Assuming the condition is true
            for_each_set_bit(bank, (unsigned long *)&valid_bank_mask,
            ^
    include/linux/bitops.h:36:7: note: expanded from macro 
'for_each_set_bit'
                 (bit) < (size);                                    \
                 ^~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:1613:2: note: Loop condition is true. 
Entering loop body
            for_each_set_bit(bank, (unsigned long *)&valid_bank_mask,
            ^
    include/linux/bitops.h:35:2: note: expanded from macro 
'for_each_set_bit'
            for ((bit) = find_first_bit((addr), (size));            \
            ^
    arch/x86/kvm/hyperv.c:1613:2: note: Assuming the condition is true
            for_each_set_bit(bank, (unsigned long *)&valid_bank_mask,
            ^
    include/linux/bitops.h:36:7: note: expanded from macro 
'for_each_set_bit'
                 (bit) < (size);                                    \
                 ^~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:1613:2: note: Loop condition is true. 
Entering loop body
            for_each_set_bit(bank, (unsigned long *)&valid_bank_mask,
            ^
    include/linux/bitops.h:35:2: note: expanded from macro 
'for_each_set_bit'
            for ((bit) = find_first_bit((addr), (size));            \
            ^
    arch/x86/kvm/hyperv.c:1615:19: note: Assigned value is garbage or 
undefined
                    vp_bitmap[bank] = sparse_banks[sbank++];
                                    ^ ~~~~~~~~~~~~~~~~~~~~~
>> arch/x86/kvm/hyperv.c:1843:22: warning: Value stored to 'hv_vcpu' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
            struct kvm_vcpu_hv *hv_vcpu = to_hv_vcpu(vcpu);
                                ^~~~~~~   ~~~~~~~~~~~~~~~~
    arch/x86/kvm/hyperv.c:1843:22: note: Value stored to 'hv_vcpu' 
during its initialization is never read
            struct kvm_vcpu_hv *hv_vcpu = to_hv_vcpu(vcpu);
                                ^~~~~~~   ~~~~~~~~~~~~~~~~
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    arch/x86/include/asm/xen/hypercall.h:358:9: warning: Assigned value 
is garbage or undefined [clang-analyzer-core.uninitialized.Assign]
            return _hypercall2(int, event_channel_op, cmd, arg);
                   ^
    arch/x86/include/asm/xen/hypercall.h:169:2: note: expanded from 
macro '_hypercall2'
            __HYPERCALL_DECLS; 
     \
            ^
    arch/x86/include/asm/xen/hypercall.h:113:2: note: expanded from 
macro '__HYPERCALL_DECLS'
            register unsigned long __arg1 asm(__HYPERCALL_ARG1REG) = 
__arg1; \
            ^
    drivers/xen/xenbus/xenbus_dev_backend.c:77:6: note: Assuming the 
condition is false
            if (!capable(CAP_SYS_ADMIN))
                ^~~~~~~~~~~~~~~~~~~~~~~
    drivers/xen/xenbus/xenbus_dev_backend.c:77:2: note: Taking false branch
            if (!capable(CAP_SYS_ADMIN))
            ^
    drivers/xen/xenbus/xenbus_dev_backend.c:80:2: note: Control jumps to 
'case 16897:'  at line 85
            switch (cmd) {
            ^
    drivers/xen/xenbus/xenbus_dev_backend.c:86:10: note: Calling 
'xenbus_alloc'
                    return xenbus_alloc(data);
                           ^~~~~~~~~~~~~~~~~~
    drivers/xen/xenbus/xenbus_dev_backend.c:47:6: note: Assuming 
'xenstored_ready' is 0
            if (xenstored_ready)
                ^~~~~~~~~~~~~~~
    drivers/xen/xenbus/xenbus_dev_backend.c:47:2: note: Taking false branch
            if (xenstored_ready)
            ^
    drivers/xen/xenbus/xenbus_dev_backend.c:56:8: note: Calling 
'HYPERVISOR_event_channel_op'
            err = HYPERVISOR_event_channel_op(EVTCHNOP_alloc_unbound, &arg);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    arch/x86/include/asm/xen/hypercall.h:358:9: note: Assigned value is 
garbage or undefined
            return _hypercall2(int, event_channel_op, cmd, arg);
                   ^
    arch/x86/include/asm/xen/hypercall.h:169:2: note: expanded from 
macro '_hypercall2'
            __HYPERCALL_DECLS; 
     \
            ^~~~~~~~~~~~~~~~~
    arch/x86/include/asm/xen/hypercall.h:113:2: note: expanded from 
macro '__HYPERCALL_DECLS'
            register unsigned long __arg1 asm(__HYPERCALL_ARG1REG) = 
__arg1; \
            ^                                                        ~~~~~~
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    drivers/mtd/lpddr/lpddr_cmds.c:441:24: warning: The left operand of 
'-' is a garbage value [clang-analyzer-core.UndefinedBinaryOperatorResult]
                    if (n > vec->iov_len - vec_seek)
                                         ^
    drivers/mtd/lpddr/lpddr_cmds.c:641:9: note: Calling 'lpddr_writev'
            return lpddr_writev(mtd, &vec, 1, to, retlen);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/mtd/lpddr/lpddr_cmds.c:656:2: note: Loop condition is true. 
  Entering loop body
            for (i = 0; i < count; i++)
            ^
    drivers/mtd/lpddr/lpddr_cmds.c:656:2: note: Loop condition is false. 
Execution continues on line 659
    drivers/mtd/lpddr/lpddr_cmds.c:659:6: note: Assuming 'len' is not 
equal to 0
            if (!len)
                ^~~~
    drivers/mtd/lpddr/lpddr_cmds.c:659:2: note: Taking false branch
            if (!len)
            ^
    drivers/mtd/lpddr/lpddr_cmds.c:671:7: note: Assuming 'size' is <= 'len'
                    if (size > len)
                        ^~~~~~~~~~
    drivers/mtd/lpddr/lpddr_cmds.c:671:3: note: Taking false branch
                    if (size > len)
                    ^
    drivers/mtd/lpddr/lpddr_cmds.c:674:9: note: Calling 'do_write_buffer'
                    ret = do_write_buffer(map, &lpddr->chips[chipnum],
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/mtd/lpddr/lpddr_cmds.c:418:6: note: Assuming 'ret' is 0
            if (ret) {
                ^~~
    drivers/mtd/lpddr/lpddr_cmds.c:418:2: note: Taking false branch
            if (ret) {
            ^
    drivers/mtd/lpddr/lpddr_cmds.c:425:6: note: Assuming 'word_gap' is 0
            if (!word_gap) {
                ^~~~~~~~~
    drivers/mtd/lpddr/lpddr_cmds.c:425:2: note: Taking true branch
            if (!word_gap) {
            ^
    drivers/mtd/lpddr/lpddr_cmds.c:441:7: note: Assuming the condition 
is false
                    if (n > vec->iov_len - vec_seek)
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/mtd/lpddr/lpddr_cmds.c:441:3: note: Taking false branch
                    if (n > vec->iov_len - vec_seek)
                    ^
    drivers/mtd/lpddr/lpddr_cmds.c:443:7: note: Assuming 'n' is <= 'len'
                    if (n > len)
                        ^~~~~~~
    drivers/mtd/lpddr/lpddr_cmds.c:443:3: note: Taking false branch

vim +/hv_vcpu +1843 arch/x86/kvm/hyperv.c

214ff83d4473a7 Vitaly Kuznetsov 2018-09-26  1839  8f014550dfb114 Vitaly 
Kuznetsov 2021-01-26  1840  void kvm_hv_set_cpuid(struct kvm_vcpu *vcpu)
8f014550dfb114 Vitaly Kuznetsov 2021-01-26  1841  {
8f014550dfb114 Vitaly Kuznetsov 2021-01-26  1842  	struct 
kvm_cpuid_entry2 *entry;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21 @1843  	struct kvm_vcpu_hv 
*hv_vcpu = to_hv_vcpu(vcpu);
8f014550dfb114 Vitaly Kuznetsov 2021-01-26  1844  8f014550dfb114 Vitaly 
Kuznetsov 2021-01-26  1845  	entry = kvm_find_cpuid_entry(vcpu, 
HYPERV_CPUID_INTERFACE, 0);
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1846  	if (entry && 
entry->eax == HYPERV_CPUID_SIGNATURE_EAX) {
8f014550dfb114 Vitaly Kuznetsov 2021-01-26  1847  	 
vcpu->arch.hyperv_enabled = true;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1848  	} else {
8f014550dfb114 Vitaly Kuznetsov 2021-01-26  1849  	 
vcpu->arch.hyperv_enabled = false;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1850  		return;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1851  	}
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1852  10d7bf1e46dc19 Vitaly 
Kuznetsov 2021-05-21  1853  	if (!to_hv_vcpu(vcpu) && 
kvm_hv_vcpu_init(vcpu))
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1854  		return;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1855  10d7bf1e46dc19 Vitaly 
Kuznetsov 2021-05-21  1856  	hv_vcpu = to_hv_vcpu(vcpu);
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1857  10d7bf1e46dc19 Vitaly 
Kuznetsov 2021-05-21  1858  	entry = kvm_find_cpuid_entry(vcpu, 
HYPERV_CPUID_FEATURES, 0);
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1859  	if (entry) {
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1860  	 
hv_vcpu->cpuid_cache.features_eax = entry->eax;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1861  	 
hv_vcpu->cpuid_cache.features_ebx = entry->ebx;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1862  	 
hv_vcpu->cpuid_cache.features_edx = entry->edx;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1863  	} else {
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1864  	 
hv_vcpu->cpuid_cache.features_eax = 0;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1865  	 
hv_vcpu->cpuid_cache.features_ebx = 0;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1866  	 
hv_vcpu->cpuid_cache.features_edx = 0;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1867  	}
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1868  10d7bf1e46dc19 Vitaly 
Kuznetsov 2021-05-21  1869  	entry = kvm_find_cpuid_entry(vcpu, 
HYPERV_CPUID_ENLIGHTMENT_INFO, 0);
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1870  	if (entry) {
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1871  	 
hv_vcpu->cpuid_cache.enlightenments_eax = entry->eax;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1872  	 
hv_vcpu->cpuid_cache.enlightenments_ebx = entry->ebx;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1873  	} else {
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1874  	 
hv_vcpu->cpuid_cache.enlightenments_eax = 0;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1875  	 
hv_vcpu->cpuid_cache.enlightenments_ebx = 0;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1876  	}
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1877  10d7bf1e46dc19 Vitaly 
Kuznetsov 2021-05-21  1878  	entry = kvm_find_cpuid_entry(vcpu, 
HYPERV_CPUID_SYNDBG_PLATFORM_CAPABILITIES, 0);
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1879  	if (entry)
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1880  	 
hv_vcpu->cpuid_cache.syndbg_cap_eax = entry->eax;
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1881  	else
10d7bf1e46dc19 Vitaly Kuznetsov 2021-05-21  1882  	 
hv_vcpu->cpuid_cache.syndbg_cap_eax = 0;
8f014550dfb114 Vitaly Kuznetsov 2021-01-26  1883  }
8f014550dfb114 Vitaly Kuznetsov 2021-01-26  1884
---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f54930ce-d229-1776-ade8-08a129e46da0%40intel.com.

--------------BB21B77B1E962DDBBAFA9040
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

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
--------------BB21B77B1E962DDBBAFA9040
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org


--------------BB21B77B1E962DDBBAFA9040--
