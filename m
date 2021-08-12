Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBA4K2SEAMGQEE6NTWKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 331B83EA3A7
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:24:53 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id u6-20020a170902bf46b029012c971d6226sf2350807pls.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 04:24:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628767492; cv=pass;
        d=google.com; s=arc-20160816;
        b=eWpgv5MQ8KskuCcBYaWDOCFFE1r1l80NzeKv7IoUSjOoaiQ8w69ZD3ncUT2m7BW2TY
         nH03wWOSrvbIKrxO8b1nJNzss7pLA3qyfpRfulHNK3KVIuRUsjc92VT5+uKS7UNLP169
         yR1cIpj5HVSvHkOmd3d0fdM/Jfxhet43yXGyKg/6si5pJ34hMCLZ3GvIP9rXGlcNB24F
         VSHJAN0fm3rvyCkL/0wPGu9JNAkL2Srh9dxGE6bYs0dZX/+dRmhkLap25H6jBoi9icVg
         oK2paFkJw/3REu6Elb1Cbw0Vw2w/2fX5WLrXcJonSo64Dax+tGtDvealInubTogRbjre
         SSLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fFCM2I7AweFvSlgHbJNUeyRnCe6hngXiR0+HGhEM6Ug=;
        b=Pj67keAAh4uVlsQnihNllUNyrzg121NmaY4T9EneJZajUI5mvHomiwcff2aFKQJRux
         RvMQormzKdZGwUpbaJUxgOSV6Gw1JkWUGMTbo8MvoE5IlRxcE4/d7VclVjY/YVxcu+wf
         LsxLMxreJN6fFu7hDW2ECYS/cHya4mGS+dJ3OIAHhE3fOTZgH9TiNPktV5AjlNULkAQG
         ROSKQvbM4WaTB0QJ5y3Swhgsxt0UpLmk39fHfZx2A6yIbTssU7A7JlGCJu4QKBMgkRZW
         caimaz4zyeyIm17MNG94KcPh21myN0QXMlyiv+SQRk5NE1jf/BhtUPQMCxsumAgVTdve
         qGfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fFCM2I7AweFvSlgHbJNUeyRnCe6hngXiR0+HGhEM6Ug=;
        b=AWkXsvPWbFxogS7WwCV2y2DzMefP2Jg3VayWYvCFynqsSYmboKWPZ+U0vnvVGbIr5c
         9Ip3F+XMXpglt2dVNBHWwiuj2LURkHZlM4zW7aWh1sofApNghTVz1yy6Fm2NKKPFVXMP
         1gdvlwOaRRuw768FSBeVr80RlDiDMEUGCwus3BUyPfuFEtcVUfPo0GilSSZ89H/zvVPc
         pRPaq4/VXL+pKw/H9xDBIb7/i+iBnG4xnz17nsBDjtqY4GpCc8yxnt2Dlzi6i9FcW81Y
         X92U21DcnxNqc9ELQ3sVe65jRWFMH35pDhbkClMgefoFKfYJ0+X1+36YrzHoVaXHCEFf
         Cstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fFCM2I7AweFvSlgHbJNUeyRnCe6hngXiR0+HGhEM6Ug=;
        b=Qd5KG0ENE3qCKXpEwH2Cmo5jQg38le139MiY+F7hTX4wGmDUKjs+2w4U2UZqosZNo4
         7QKT8WYgetMvFTw7teuzwoSJ1XCXgXiEBOlOYhGeAnxQuH7WXzPEjecRdu+pAbAVtvIL
         GJqEiOY43V0FUo+u3W0StJupZo6YEl24v56/6eyiqSfZTDe/tco/rpD9jcetKZvBTZFY
         McgAb4qZY1a4FfKzQoQAB4t0ybN+Krg1J2nS5rCMydLzGz9iVykcCRWqHKDkJkXPWJJp
         UrLeL630EUNnh8biWMDS/n5sVei7eBghDvcv8UWL2mcXR+Ddi7hj3QlDvAXB/sMKexYJ
         h2Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lf9kpRrVtQF9pEV08y9GcbUNeJ++nOiKR6SbWU79h2PmH2skM
	ZnO9/WqB0CVIfMVxYgJYFSs=
X-Google-Smtp-Source: ABdhPJzCmnh2sKNSWhieNaMG6dASH20wW7bmI8E2s9vXM81mx1krdbN8U8idPdTvfwVfPv46NBi1nA==
X-Received: by 2002:a63:5862:: with SMTP id i34mr3400642pgm.117.1628767491846;
        Thu, 12 Aug 2021 04:24:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls2442762plr.4.gmail; Thu, 12
 Aug 2021 04:24:50 -0700 (PDT)
X-Received: by 2002:a17:902:7008:b029:12c:ec3e:3952 with SMTP id y8-20020a1709027008b029012cec3e3952mr3218730plk.35.1628767490734;
        Thu, 12 Aug 2021 04:24:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628767490; cv=none;
        d=google.com; s=arc-20160816;
        b=sF71uWU5AiIsgJH2YNOxQdf26xPW/vJnnLzARvkmImYtvxrjjT/7NI8koUeM3/vaxc
         Kvhj6xg1aDCSPQULXoaruDL+I7ilGoet/EJnM0iDKGoHzRUk7Zisvo0XpH8cFy4d6NP0
         LBNygYewzD86vQhn3aTvYMhMB/FNbbahL7m/ESX1ZbAHl9TITUNoFf8grAIRHugmZ2fL
         nsubG3BILiFmxIrr7IDUgYQTsDojkoxuIRlIwKh5BdILsnVtF2qOLBvO2M0pUue/CEGz
         +mHNjRFJLBDrUnYdMM5h52b1rcwwfJAwYk2x0fOyAepxcc4jfAaS97v+XF4FcY1+iRMY
         gYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=j7zXRiugMdiZMj0HsJ+2Q0GLB4z5YtzZdkX7ZSpI2sI=;
        b=dheaEC3PNC+o7DXNe/CGTs3G3jX39XybFKg8x1OKCUpAjrX0deQ8jcUL92oq58OVUx
         6iDxYY0WSINmuNvWmnNp4d5udyWPJXYhsANrg66X/Hf0rImuzvN/D7zKEycUFFRjtjav
         zsN6w1VQQ9AfJiIW7vC+DZXuLTLMBy2j+kP1+71wLl57ZSrXFSx4okK/mhSJJFkJBJ7W
         r2HdAb6sdKhNNq7hEGYqE9uWKM67Vu3npvF4cJcOpYd3o3jzoP4z1GsDf+MgY8EybIMr
         IXcarFsExiWmrMny4bSPrBtkUGR/2bYcO8cRzF+/fQJoib9xwNr0fY/wMS58r+FFlaeJ
         a1SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id m1si608312pjv.1.2021.08.12.04.24.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 04:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="213476979"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; 
   d="gz'50?scan'50,208,50";a="213476979"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2021 04:24:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; 
   d="gz'50?scan'50,208,50";a="676732657"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 12 Aug 2021 04:24:47 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mE8pK-000Mda-Ns; Thu, 12 Aug 2021 11:24:46 +0000
Date: Thu, 12 Aug 2021 19:24:24 +0800
From: kernel test robot <lkp@intel.com>
To: Cong Wang <xiyou.wangcong@gmail.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [congwang:sch_bpf 2/2] net/sched/sch_bpf.c:174:13: error:
 indirection requires pointer operand ('struct sch_bpf_prog' invalid)
Message-ID: <202108121918.qhvpt9H0-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/congwang/linux.git sch_bpf
head:   aa61f170d88b706060a1977b7b7bef9d08e33ff1
commit: aa61f170d88b706060a1977b7b7bef9d08e33ff1 [2/2] sch_bpf: draft
config: hexagon-buildonly-randconfig-r001-20210812 (attached as .config)
compiler: clang version 12.0.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/congwang/linux/commit/aa61f170d88b706060a1977b7b7bef9d08e33ff1
        git remote add congwang https://github.com/congwang/linux.git
        git fetch --no-tags congwang sch_bpf
        git checkout aa61f170d88b706060a1977b7b7bef9d08e33ff1
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=hexagon SHELL=/bin/bash net/sched/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> net/sched/sch_bpf.c:174:13: error: indirection requires pointer operand ('struct sch_bpf_prog' invalid)
                   enqueue = rcu_dereference(q->enqueue_prog);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:596:28: note: expanded from macro 'rcu_dereference'
   #define rcu_dereference(p) rcu_dereference_check(p, 0)
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:528:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:389:9: note: expanded from macro '__rcu_dereference_check'
           typeof(*p) *________p1 = (typeof(*p) *__force)READ_ONCE(p); \
                  ^~
>> net/sched/sch_bpf.c:174:13: error: indirection requires pointer operand ('struct sch_bpf_prog' invalid)
                   enqueue = rcu_dereference(q->enqueue_prog);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:596:28: note: expanded from macro 'rcu_dereference'
   #define rcu_dereference(p) rcu_dereference_check(p, 0)
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:528:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:389:35: note: expanded from macro '__rcu_dereference_check'
           typeof(*p) *________p1 = (typeof(*p) *__force)READ_ONCE(p); \
                                            ^~
>> net/sched/sch_bpf.c:174:13: error: indirection requires pointer operand ('struct sch_bpf_prog' invalid)
                   enqueue = rcu_dereference(q->enqueue_prog);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:596:28: note: expanded from macro 'rcu_dereference'
   #define rcu_dereference(p) rcu_dereference_check(p, 0)
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:528:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:392:11: note: expanded from macro '__rcu_dereference_check'
           ((typeof(*p) __force __kernel *)(________p1)); \
                    ^~
>> net/sched/sch_bpf.c:174:11: error: assigning to 'struct bpf_prog *' from incompatible type 'void'
                   enqueue = rcu_dereference(q->enqueue_prog);
                           ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/sched/sch_bpf.c:219:12: error: indirection requires pointer operand ('struct sch_bpf_prog' invalid)
           dequeue = rcu_dereference(q->dequeue_prog);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:596:28: note: expanded from macro 'rcu_dereference'
   #define rcu_dereference(p) rcu_dereference_check(p, 0)
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:528:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:389:9: note: expanded from macro '__rcu_dereference_check'
           typeof(*p) *________p1 = (typeof(*p) *__force)READ_ONCE(p); \
                  ^~
   net/sched/sch_bpf.c:219:12: error: indirection requires pointer operand ('struct sch_bpf_prog' invalid)
           dequeue = rcu_dereference(q->dequeue_prog);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:596:28: note: expanded from macro 'rcu_dereference'
   #define rcu_dereference(p) rcu_dereference_check(p, 0)
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:528:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:389:35: note: expanded from macro '__rcu_dereference_check'
           typeof(*p) *________p1 = (typeof(*p) *__force)READ_ONCE(p); \
                                            ^~
   net/sched/sch_bpf.c:219:12: error: indirection requires pointer operand ('struct sch_bpf_prog' invalid)
           dequeue = rcu_dereference(q->dequeue_prog);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:596:28: note: expanded from macro 'rcu_dereference'
   #define rcu_dereference(p) rcu_dereference_check(p, 0)
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:528:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:392:11: note: expanded from macro '__rcu_dereference_check'
           ((typeof(*p) __force __kernel *)(________p1)); \
                    ^~
   net/sched/sch_bpf.c:219:10: error: assigning to 'struct bpf_prog *' from incompatible type 'void'
           dequeue = rcu_dereference(q->dequeue_prog);
                   ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/sched/sch_bpf.c:220:28: error: use of undeclared identifier 'skb'
           bpf_compute_data_pointers(skb);
                                     ^
>> net/sched/sch_bpf.c:231:11: error: incompatible pointer types assigning to 'struct sk_buff *' from 'struct pq_node *' [-Werror,-Wincompatible-pointer-types]
                   ctx.skb = pq_pop(&cl->pq);
                           ^ ~~~~~~~~~~~~~~~
>> net/sched/sch_bpf.c:237:13: error: use of undeclared identifier 'SCH_BPF_RET_OK'
           if (res == SCH_BPF_RET_OK) {
                      ^
>> net/sched/sch_bpf.c:239:20: error: use of undeclared identifier 'SCH_BPF_RET_REQUEUE'
           } else if (res == SCH_BPF_RET_REQUEUE) {
                             ^
>> net/sched/sch_bpf.c:284:37: warning: incompatible integer to pointer conversion passing 'u32' (aka 'unsigned int') to parameter of type 'struct Qdisc *' [-Wint-conversion]
           return (unsigned long)sch_bpf_find(handle, sch);
                                              ^~~~~~
   net/sched/sch_bpf.c:115:57: note: passing argument to parameter 'sch' here
   static struct sch_bpf_class *sch_bpf_find(struct Qdisc *sch, u32 classid)
                                                           ^
>> net/sched/sch_bpf.c:284:45: warning: incompatible pointer to integer conversion passing 'struct Qdisc *' to parameter of type 'u32' (aka 'unsigned int') [-Wint-conversion]
           return (unsigned long)sch_bpf_find(handle, sch);
                                                      ^~~
   net/sched/sch_bpf.c:115:66: note: passing argument to parameter 'classid' here
   static struct sch_bpf_class *sch_bpf_find(struct Qdisc *sch, u32 classid)
                                                                    ^
>> net/sched/sch_bpf.c:298:3: error: use of undeclared identifier 'TCA_SCH_BPF_ENQUEUE_PROG_FD'; did you mean 'TCA_SCH_BPF_ENQUEUE_PROG_ID'?
           [TCA_SCH_BPF_ENQUEUE_PROG_FD]   = { .type = NLA_U32 },
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
            TCA_SCH_BPF_ENQUEUE_PROG_ID
   include/uapi/linux/pkt_sched.h:1269:2: note: 'TCA_SCH_BPF_ENQUEUE_PROG_ID' declared here
           TCA_SCH_BPF_ENQUEUE_PROG_ID,    /* u32 */
           ^
>> net/sched/sch_bpf.c:301:3: error: use of undeclared identifier 'TCA_SCH_BPF_DEQUEUE_PROG_FD'; did you mean 'TCA_SCH_BPF_DEQUEUE_PROG_ID'?
           [TCA_SCH_BPF_DEQUEUE_PROG_FD]   = { .type = NLA_U32 },
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
            TCA_SCH_BPF_DEQUEUE_PROG_ID
   include/uapi/linux/pkt_sched.h:1272:2: note: 'TCA_SCH_BPF_DEQUEUE_PROG_ID' declared here
           TCA_SCH_BPF_DEQUEUE_PROG_ID,    /* u32 */
           ^
>> net/sched/sch_bpf.c:314:33: error: use of undeclared identifier 'BPF_PROG_TYPE_SCHED_SCH'; did you mean 'BPF_PROG_TYPE_SCHED_ACT'?
           fp = bpf_prog_get_type(bpf_fd, BPF_PROG_TYPE_SCHED_SCH);
                                          ^~~~~~~~~~~~~~~~~~~~~~~
                                          BPF_PROG_TYPE_SCHED_ACT
   include/uapi/linux/bpf.h:924:2: note: 'BPF_PROG_TYPE_SCHED_ACT' declared here
           BPF_PROG_TYPE_SCHED_ACT,
           ^
   net/sched/sch_bpf.c:353:26: error: use of undeclared identifier 'TCA_SCH_BPF_ENQUEUE_PROG_FD'; did you mean 'TCA_SCH_BPF_ENQUEUE_PROG_ID'?
           err = bpf_init_prog(opt[TCA_SCH_BPF_ENQUEUE_PROG_FD],
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   TCA_SCH_BPF_ENQUEUE_PROG_ID
   include/uapi/linux/pkt_sched.h:1269:2: note: 'TCA_SCH_BPF_ENQUEUE_PROG_ID' declared here
           TCA_SCH_BPF_ENQUEUE_PROG_ID,    /* u32 */
           ^
>> net/sched/sch_bpf.c:353:22: error: passing 'struct nlattr' to parameter of incompatible type 'struct nlattr *'; take the address with &
           err = bpf_init_prog(opt[TCA_SCH_BPF_ENQUEUE_PROG_FD],
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                               &
   net/sched/sch_bpf.c:306:41: note: passing argument to parameter 'fd' here
   static int bpf_init_prog(struct nlattr *fd, struct nlattr *name, struct sch_bpf_prog *prog)
                                           ^
   net/sched/sch_bpf.c:357:26: error: use of undeclared identifier 'TCA_SCH_BPF_DEQUEUE_PROG_FD'; did you mean 'TCA_SCH_BPF_DEQUEUE_PROG_ID'?
           err = bpf_init_prog(opt[TCA_SCH_BPF_DEQUEUE_PROG_FD],
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   TCA_SCH_BPF_DEQUEUE_PROG_ID
   include/uapi/linux/pkt_sched.h:1272:2: note: 'TCA_SCH_BPF_DEQUEUE_PROG_ID' declared here
           TCA_SCH_BPF_DEQUEUE_PROG_ID,    /* u32 */
           ^
   net/sched/sch_bpf.c:357:22: error: passing 'struct nlattr' to parameter of incompatible type 'struct nlattr *'; take the address with &
           err = bpf_init_prog(opt[TCA_SCH_BPF_DEQUEUE_PROG_FD],
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                               &
   net/sched/sch_bpf.c:306:41: note: passing argument to parameter 'fd' here
   static int bpf_init_prog(struct nlattr *fd, struct nlattr *name, struct sch_bpf_prog *prog)
                                           ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   2 warnings and 20 errors generated.


vim +174 net/sched/sch_bpf.c

   160	
   161	static int sch_bpf_enqueue(struct sk_buff *skb, struct Qdisc *sch,
   162				    struct sk_buff **to_free)
   163	{
   164		struct sch_bpf_qdisc *q = qdisc_priv(sch);
   165		unsigned int len = qdisc_pkt_len(skb);
   166		struct sch_bpf_ctx ctx = {};
   167		struct sch_bpf_class *cl;
   168		int res;
   169	
   170		cl = sch_bpf_classify(skb, sch, &res);
   171		if (!cl) {
   172			struct bpf_prog *enqueue;
   173	
 > 174			enqueue = rcu_dereference(q->enqueue_prog);
   175			bpf_compute_data_pointers(skb);
   176	
   177			ctx.skb = skb;
   178			ctx.nr_classes = q->clhash.hashelems;
   179			ctx.nr_packets = sch->q.qlen;
   180			res = BPF_PROG_RUN(enqueue, &ctx);
   181			cl = sch_bpf_find(sch, ctx.classid);
   182			if (!cl) {
   183				if (res & __NET_XMIT_BYPASS)
   184					qdisc_qstats_drop(sch);
   185				__qdisc_drop(skb, to_free);
   186				return res;
   187			}
   188		}
   189	
   190		if (cl->qdisc) {
   191			if ((res = qdisc_enqueue(skb, cl->qdisc,
   192						 to_free)) != NET_XMIT_SUCCESS) {
   193				if (net_xmit_drop_count(ret)) {
   194					qdisc_qstats_drop(sch);
   195					cl->drops++;
   196				}
   197				return res;
   198			}
   199		} else {
   200			sch_bpf_skb_cb(skb)->rank = ctx.rank;
   201			pq_push(&cl->pq, &skb->pqnode);
   202		}
   203	
   204		sch->qstats.backlog += len;
   205		sch->q.qlen++;
   206		return res;
   207	}
   208	
   209	static struct sk_buff *sch_bpf_dequeue(struct Qdisc *sch)
   210	{
   211		struct sch_bpf_qdisc *q = qdisc_priv(sch);
   212		struct sch_bpf_ctx ctx = {};
   213		struct sk_buff *ret = NULL;
   214		struct bpf_prog *dequeue;
   215		struct sch_bpf_class *cl;
   216		struct pq_node *flow;
   217		int res;
   218	
   219		dequeue = rcu_dereference(q->dequeue_prog);
 > 220		bpf_compute_data_pointers(skb);
   221	
   222		flow = pq_pop(&q->flows);
   223		if (!flow)
   224			return NULL;
   225	
   226		cl = container_of(flow, struct sch_bpf_class, node);
   227		if (cl->qdisc) {
   228			ctx.skb = cl->qdisc->dequeue(cl->qdisc);
   229			ctx.classid = cl->common.classid;
   230		} else {
 > 231			ctx.skb = pq_pop(&cl->pq);
   232			ctx.classid = cl->rank;
   233		}
   234		ctx.nr_classes = q->clhash.hashelems;
   235		ctx.nr_packets = sch->q.qlen;
   236		res = BPF_PROG_RUN(dequeue, &ctx);
 > 237		if (res == SCH_BPF_RET_OK) {
   238			ret = ctx.skb;
 > 239		} else if (res == SCH_BPF_RET_REQUEUE) {
   240			sch_bpf_skb_cb(ctx.skb)->rank = ctx.rank;
   241			pq_push(&cl->pq, &ctx.skb->pqnode);
   242			ret = NULL;
   243		} else {
   244			kfree_skb(ctx.skb);
   245			ret = NULL;
   246		}
   247	
   248		cl->rank = ctx.classid;
   249		if (pq_top(&cl->pq)) {
   250			pq_push(&q->flows, &cl->node);
   251		}
   252		return ret;
   253	}
   254	
   255	static struct Qdisc *sch_bpf_leaf(struct Qdisc *sch, unsigned long arg)
   256	{
   257		struct sch_bpf_class *cl = (struct sch_bpf_class *)arg;
   258	
   259		return cl->qdisc;
   260	}
   261	
   262	static int sch_bpf_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
   263				 struct Qdisc **old, struct netlink_ext_ack *extack)
   264	{
   265		struct sch_bpf_class *cl = (struct sch_bpf_class *)arg;
   266	
   267		if (new)
   268			*old = qdisc_replace(sch, new, &cl->qdisc);
   269		return 0;
   270	}
   271	
   272	static unsigned long sch_bpf_bind(struct Qdisc *sch, unsigned long parent,
   273				      u32 classid)
   274	{
   275		return 0;
   276	}
   277	
   278	static void sch_bpf_unbind(struct Qdisc *q, unsigned long cl)
   279	{
   280	}
   281	
   282	static unsigned long sch_bpf_search(struct Qdisc *sch, u32 handle)
   283	{
 > 284		return (unsigned long)sch_bpf_find(handle, sch);
   285	}
   286	
   287	static struct tcf_block *sch_bpf_tcf_block(struct Qdisc *sch, unsigned long cl,
   288						    struct netlink_ext_ack *extack)
   289	{
   290		struct sch_bpf_qdisc *q = qdisc_priv(sch);
   291	
   292		if (cl)
   293			return NULL;
   294		return q->block;
   295	}
   296	
   297	static const struct nla_policy sch_bpf_policy[TCA_SCH_BPF_MAX + 1] = {
 > 298		[TCA_SCH_BPF_ENQUEUE_PROG_FD]	= { .type = NLA_U32 },
   299		[TCA_SCH_BPF_ENQUEUE_PROG_NAME]	= { .type = NLA_NUL_STRING,
   300						    .len = ACT_BPF_NAME_LEN },
 > 301		[TCA_SCH_BPF_DEQUEUE_PROG_FD]	= { .type = NLA_U32 },
   302		[TCA_SCH_BPF_DEQUEUE_PROG_NAME]	= { .type = NLA_NUL_STRING,
   303						    .len = ACT_BPF_NAME_LEN },
   304	};
   305	
   306	static int bpf_init_prog(struct nlattr *fd, struct nlattr *name, struct sch_bpf_prog *prog)
   307	{
   308		char *prog_name = NULL;
   309		struct bpf_prog *fp;
   310		u32 bpf_fd;
   311	
   312		bpf_fd = nla_get_u32(fd);
   313	
 > 314		fp = bpf_prog_get_type(bpf_fd, BPF_PROG_TYPE_SCHED_SCH);
   315		if (IS_ERR(fp))
   316			return PTR_ERR(fp);
   317	
   318		if (name) {
   319			prog_name = nla_memdup(name, GFP_KERNEL);
   320			if (!prog_name) {
   321				bpf_prog_put(fp);
   322				return -ENOMEM;
   323			}
   324		}
   325	
   326		prog->name = prog_name;
   327		prog->prog = fp;
   328		return 0;
   329	}
   330	
   331	static bpf_cleanup_prog(struct sch_bpf_prog *prog)
   332	{
   333		if (prog->prog)
   334			bpf_prog_put(prog->prog);
   335		kfree(prog->name);
   336	}
   337	
   338	static int sch_bpf_change(struct Qdisc *sch, struct nlattr *opt,
   339				   struct netlink_ext_ack *extack)
   340	{
   341		struct sch_bpf_qdisc *q = qdisc_priv(sch);
   342		struct nlattr *tb[TCA_SCH_BPF_MAX + 1];
   343		u32 gen_flags = 0;
   344		int err;
   345	
   346		if (!opt)
   347			return -EINVAL;
   348	
   349		err = nla_parse_nested_deprecated(tb, TCA_SCH_BPF_MAX, opt,
   350						  sch_bpf_policy, NULL);
   351		if (err < 0)
   352			return err;
 > 353		err = bpf_init_prog(opt[TCA_SCH_BPF_ENQUEUE_PROG_FD],
   354				    opt[TCA_SCH_BPF_ENQUEUE_PROG_NAME], &q->enqueue_prog);
   355		if (err)
   356			return err;
   357		err = bpf_init_prog(opt[TCA_SCH_BPF_DEQUEUE_PROG_FD],
   358				    opt[TCA_SCH_BPF_DEQUEUE_PROG_NAME], &q->dequeue_prog);
   359		return err;
   360	}
   361	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108121918.qhvpt9H0-lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--SUOF0GtieIMvvwua--
