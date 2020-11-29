Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBGZRT7AKGQE2VC2WCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 620EF2C7794
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 06:07:18 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id h9sf11527183ybj.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 21:07:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606626437; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfw6uqZT7Vk44wQdsLRHFvsBZv5hi5plG0futiC2dZeIuz3dN5uLUNrcL3T1TBNzhP
         eQoLHd3NgcBcngtE9se+MBXS/yVKQwuDKuIhg0n9nRa61K29jEiixPVHXrXoNcpZNiS9
         elbb8Fej9ZuEX+zpes2QYdUpI14QI46DKTGweY+U8/EGlZwms9BIvTCKhhYeN8TNA6Uk
         SJE1/sKbmM6/6vn+iICXlWV0dvEoKsLy5rOF9Hcc1qdbYo8ZpIxakavMQF3TYn96uwJ+
         LgsDIwEZvNL5/LaHTNakuD5XJ5CGzuRmnWlm/kvzL7lO470I8vA2ywAz8raPyC35D/xa
         cvXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WWx8AuG1g5LDrXBWSAPbpYoCaZwtDm8HXcDnNuOW5sU=;
        b=bUK3p9PxdB6H8RAj2dVam4PVxJoju7iC1Y1Js0/3kYCPwQXGsID8h78i/0gLBbxo5e
         uMm9Fb14b6rZ2v0avU3YirVhjBxuC8LhsBSnJizm9F2ewLh5sxyHO87QkpMFc4d0/SYW
         k8eyf11y8g9FjiKF4Wc7dFCFDdUlPAidPUW05ed5f+78ZDLrijWEKx8bRE7+GFufCeBU
         aRBRuLvRVxpjyz2cVWNwB/B82abBO0yvYSvMbx7Gm4pbWIWfcsJ7YpiD+uSMWsNLucof
         lUdLXXO71Ri3tmZwSeLqOfMX71jC3zSZCTxkdkx3XsHVv+n6gyQNsobb6sAmgj6/dhLJ
         G8hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WWx8AuG1g5LDrXBWSAPbpYoCaZwtDm8HXcDnNuOW5sU=;
        b=Vhi+02pnW0UXESHP766VqScr3w9wK31lzlnd/QBu1nt+S/vYyCy6/w75pJrOChAEDo
         Q96fN0Vj35dKFiGqex8F4/j4naay3Ih4GbhgxOEsj01rmlRwxhJygOGbBcCPKmH97KBh
         XrhAiNdvV2YhUQaczmDFBThbH1wvCHtJ/qZzRytFAeAlk3sHThADs9IbIU8HTuT0wWt1
         IDS+h6E8z+xLw4UJwia37wHOW+wJfc6AObeq8S2n+aWtPuq/Z8TH7ex+CgOYlTleQtRZ
         RGb1ChMxCs/H8qrZ/6ptwIuFaF4iYtR2swjgUwdTdPlU41H4ucvMtrFjiieR5rH1A6li
         o02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WWx8AuG1g5LDrXBWSAPbpYoCaZwtDm8HXcDnNuOW5sU=;
        b=ZCofRoJejdyQSGbjiHAeLRGbTNWZbV2Cthx9xssTXB18gLeEokSLgHJV/gzH/Vcr3z
         qLj3dk/6oDnHv/yvhlAXfK9CA0lqSYm+K7OE/16fCBcdVqHtsxYInvY3H4Pvn0whRpTS
         UbJ+AaT26Z0CgzZPOJIX6VEUCNvcLhYTrLBpUIdIzErmQKY2FCw7DPHk3FZY6lNDBfQj
         AbUM0lt4MEQLB66q6jV/tOXuhtglLvdc4MKww8OGIC2FHBJgCuiZcf6WAxBYO22LBe/x
         KS0VTGa25JQDHkZ8I3morQx1VarSHAfRdx/ZjSIH4hCR5iQwpsE5DHH9cFaeK1eM8xjW
         vQNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EGXbLGYzLjKsdi4bW/sK/8hO+Me62QAJAy16oBqlHVtMYSgSc
	iytZAKi5sQchOBMDY3eKW88=
X-Google-Smtp-Source: ABdhPJyMq46V6Q/8qcMgxBSZBEQNAn0H1Zg1ZFOmfkFv7SQ4lewMM8z/hK+Tx4V4mQQL1jjt6qKvhw==
X-Received: by 2002:a25:ac1a:: with SMTP id w26mr23687812ybi.395.1606626437198;
        Sat, 28 Nov 2020 21:07:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6908:: with SMTP id e8ls4115788ybc.9.gmail; Sat, 28 Nov
 2020 21:07:16 -0800 (PST)
X-Received: by 2002:a25:ad53:: with SMTP id l19mr22717589ybe.447.1606626436578;
        Sat, 28 Nov 2020 21:07:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606626436; cv=none;
        d=google.com; s=arc-20160816;
        b=GPWnY7Iz4eaD5eYUNO+qRXgVYXoc60IdMT75WWy051MyQObPGTzhQhBkDKNut6aCc8
         LE29NrQihr8LGrxMiHJ8+iI/eE0pRN1cmoTwsv/6rmTz/3m3LKtvvvZrqzr89WumMCj7
         62d96/MTyu0rFA2FvO2y2kq6YE4dAMHpO/cBwgOp3Nj/h4sG8yjQ89dV6X5DQkuzpqiB
         PnQaJYWM7Qvf6ggKCLTbwQ+1YmFtsmU7IY0EtKj7VGB6kmCfUa6BogRBhcYVK88b860q
         EcAoQybzmOsThzcRlMiG4p/iTZqiKFdOU58ENLL7cK2QjVpeCj2mjikXQwaNNLXvI+a6
         nd5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LBdRqDemKLihINSqLavYAwydyjD1CmwkWyx9NcxmoWc=;
        b=Ts+0/0MY1Kt3Lu67lmj0hVFnmhNxSb4FlQdUuSY27Idicxj0n7Sr2FDWsfuPv/4BBh
         WliNHHnAdJ+LTIBccsQME8EgAYtxvxhl8+GQ+NG+p4ak8BPJ8o7dpw07uZPosEI/zbMP
         6fSYKClxsu7cCF3Hmrq+ChutXYAKj1eOD0SQdNAgN0VBxIa8UQpGBf9kDq6TCPbdcPTj
         53OpMcOUCPXXsBR6CijKLdAlrm6FJs2+fiB7kIe0/deTJnHXJKAf9o+yTR5TbDkpUw3z
         O97f17AH7F/1dKC7g2bTUXRXx1RN3u/g98ANsUM7utmIqF28cCTTchML+/RcCzhjm6vy
         VfBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id e4si778092ybp.4.2020.11.28.21.07.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Nov 2020 21:07:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: fhJKv70gA/sSt1B4XETidZlEXu49G+sUJgybs5H/fHqxqlDf2WA36raipar1+Ecn4wD5XRoqE9
 I/m1lTFwRbTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9819"; a="169015777"
X-IronPort-AV: E=Sophos;i="5.78,378,1599548400"; 
   d="gz'50?scan'50,208,50";a="169015777"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2020 21:07:14 -0800
IronPort-SDR: BHSpI+CizPZHFLj08mS9pCtDc50e7SWQ8ZRf0p/XBHXcV6LwxRZG5CsoOEcbYA/c//QMdk8/pe
 EqsAiqckMsNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,378,1599548400"; 
   d="gz'50?scan'50,208,50";a="314775294"
Received: from lkp-server01.sh.intel.com (HELO b5888d13d5a5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 28 Nov 2020 21:07:12 -0800
Received: from kbuild by b5888d13d5a5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kjEvX-0000d4-R8; Sun, 29 Nov 2020 05:07:11 +0000
Date: Sun, 29 Nov 2020 13:07:11 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [luto:x86/fixes 12/12] kernel/sched/membarrier.c:445:1: warning:
 attribute declaration must precede definition
Message-ID: <202011291307.sMWJqc61-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git x86/fixes
head:   ebb44931654e78d649537beccf31b880a3381866
commit: ebb44931654e78d649537beccf31b880a3381866 [12/12] membarrier: Propagate SYNC_CORE and RSEQ actions more carefully
config: x86_64-randconfig-a005-20201129 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f502b14d40e751fe00afc493ef0d08f196524886)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git/commit/?id=ebb44931654e78d649537beccf31b880a3381866
        git remote add luto https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git
        git fetch --no-tags luto x86/fixes
        git checkout ebb44931654e78d649537beccf31b880a3381866
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/sched/membarrier.c:264:13: error: too few arguments to function call, expected 1, have 0
                           ipi_func();
                           ~~~~~~~~ ^
   kernel/sched/membarrier.c:277:4: error: expected expression
           } else {
             ^
   kernel/sched/membarrier.c:290:1: error: function definition is not allowed here
   {
   ^
   kernel/sched/membarrier.c:349:1: error: function definition is not allowed here
   {
   ^
   kernel/sched/membarrier.c:368:1: error: function definition is not allowed here
   {
   ^
   kernel/sched/membarrier.c:445:1: error: redefinition of '__syscall_meta__membarrier'
   SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
   ^
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:223:2: note: expanded from macro 'SYSCALL_DEFINEx'
           SYSCALL_METADATA(sname, x, __VA_ARGS__)                 \
           ^
   include/linux/syscalls.h:174:2: note: expanded from macro 'SYSCALL_METADATA'
           SYSCALL_TRACE_EXIT_EVENT(sname);                        \
           ^
   include/linux/syscalls.h:151:33: note: expanded from macro 'SYSCALL_TRACE_EXIT_EVENT'
           static struct syscall_metadata __syscall_meta_##sname;          \
                                          ^
   <scratch space>:79:1: note: expanded from here
   __syscall_meta__membarrier
   ^
   kernel/sched/membarrier.c:445:1: note: previous definition is here
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:223:2: note: expanded from macro 'SYSCALL_DEFINEx'
           SYSCALL_METADATA(sname, x, __VA_ARGS__)                 \
           ^
   include/linux/syscalls.h:173:2: note: expanded from macro 'SYSCALL_METADATA'
           SYSCALL_TRACE_ENTER_EVENT(sname);                       \
           ^
   include/linux/syscalls.h:135:33: note: expanded from macro 'SYSCALL_TRACE_ENTER_EVENT'
           static struct syscall_metadata __syscall_meta_##sname;          \
                                          ^
   <scratch space>:73:1: note: expanded from here
   __syscall_meta__membarrier
   ^
>> kernel/sched/membarrier.c:445:1: warning: attribute declaration must precede definition [-Wignored-attributes]
   SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
   ^
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:223:2: note: expanded from macro 'SYSCALL_DEFINEx'
           SYSCALL_METADATA(sname, x, __VA_ARGS__)                 \
           ^
   include/linux/syscalls.h:175:33: note: expanded from macro 'SYSCALL_METADATA'
           static struct syscall_metadata __used                   \
                                          ^
   include/linux/compiler_attributes.h:273:56: note: expanded from macro '__used'
   #define __used                          __attribute__((__used__))
                                                          ^
   kernel/sched/membarrier.c:445:1: note: previous definition is here
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:223:2: note: expanded from macro 'SYSCALL_DEFINEx'
           SYSCALL_METADATA(sname, x, __VA_ARGS__)                 \
           ^
   include/linux/syscalls.h:173:2: note: expanded from macro 'SYSCALL_METADATA'
           SYSCALL_TRACE_ENTER_EVENT(sname);                       \
           ^
   include/linux/syscalls.h:135:33: note: expanded from macro 'SYSCALL_TRACE_ENTER_EVENT'
           static struct syscall_metadata __syscall_meta_##sname;          \
                                          ^
   <scratch space>:73:1: note: expanded from here
   __syscall_meta__membarrier
   ^
   kernel/sched/membarrier.c:445:1: error: redefinition of '__syscall_meta__membarrier'
   SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
   ^
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:223:2: note: expanded from macro 'SYSCALL_DEFINEx'
           SYSCALL_METADATA(sname, x, __VA_ARGS__)                 \
           ^
   include/linux/syscalls.h:176:4: note: expanded from macro 'SYSCALL_METADATA'
             __syscall_meta_##sname = {                            \
             ^
   <scratch space>:84:1: note: expanded from here
   __syscall_meta__membarrier
   ^
   kernel/sched/membarrier.c:445:1: note: previous definition is here
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:223:2: note: expanded from macro 'SYSCALL_DEFINEx'
           SYSCALL_METADATA(sname, x, __VA_ARGS__)                 \
           ^
   include/linux/syscalls.h:173:2: note: expanded from macro 'SYSCALL_METADATA'
           SYSCALL_TRACE_ENTER_EVENT(sname);                       \
           ^
   include/linux/syscalls.h:135:33: note: expanded from macro 'SYSCALL_TRACE_ENTER_EVENT'
           static struct syscall_metadata __syscall_meta_##sname;          \
                                          ^
   <scratch space>:73:1: note: expanded from here
   __syscall_meta__membarrier
   ^
   kernel/sched/membarrier.c:445:1: error: function declared in block scope cannot have 'static' storage class
   SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
   ^
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:228:2: note: expanded from macro '__SYSCALL_DEFINEx'
           static long __se_sys##name(__MAP(x,__SC_LONG,__VA_ARGS__));     \
           ^
   kernel/sched/membarrier.c:445:1: error: function declared in block scope cannot have 'static' storage class
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:229:2: note: expanded from macro '__SYSCALL_DEFINEx'
           static inline long __do_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__));\
           ^
   kernel/sched/membarrier.c:445:1: error: function definition is not allowed here
   include/linux/syscalls.h:215:36: note: expanded from macro 'SYSCALL_DEFINE3'
   #define SYSCALL_DEFINE3(name, ...) SYSCALL_DEFINEx(3, _##name, __VA_ARGS__)
                                      ^
   include/linux/syscalls.h:224:2: note: expanded from macro 'SYSCALL_DEFINEx'
           __SYSCALL_DEFINEx(x, sname, __VA_ARGS__)
           ^
   arch/x86/include/asm/syscall_wrapper.h:230:2: note: expanded from macro '__SYSCALL_DEFINEx'
           __X64_SYS_STUBx(x, name, __VA_ARGS__)                           \
           ^
   arch/x86/include/asm/syscall_wrapper.h:96:2: note: expanded from macro '__X64_SYS_STUBx'
           __SYS_STUBx(x64, sys##name,                                     \
           ^
   arch/x86/include/asm/syscall_wrapper.h:78:2: note: expanded from macro '__SYS_STUBx'
           {                                                               \
           ^
   kernel/sched/membarrier.c:445:1: error: function definition is not allowed here

vim +445 kernel/sched/membarrier.c

22e4ebb97582283 Mathieu Desnoyers 2017-07-28  408  
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  409  /**
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  410   * sys_membarrier - issue memory barriers on a set of threads
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  411   * @cmd:    Takes command values defined in enum membarrier_cmd.
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  412   * @flags:  Currently needs to be 0 for all commands other than
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  413   *          MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ: in the latter
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  414   *          case it can be MEMBARRIER_CMD_FLAG_CPU, indicating that @cpu_id
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  415   *          contains the CPU on which to interrupt (= restart)
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  416   *          the RSEQ critical section.
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  417   * @cpu_id: if @flags == MEMBARRIER_CMD_FLAG_CPU, indicates the cpu on which
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  418   *          RSEQ CS should be interrupted (@cmd must be
2a36ab717e8fe67 Peter Oskolkov    2020-09-23  419   *          MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ).
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  420   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  421   * If this system call is not implemented, -ENOSYS is returned. If the
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  422   * command specified does not exist, not available on the running
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  423   * kernel, or if the command argument is invalid, this system call
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  424   * returns -EINVAL. For a given command, with flags argument set to 0,
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  425   * if this system call returns -ENOSYS or -EINVAL, it is guaranteed to
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  426   * always return the same value until reboot. In addition, it can return
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  427   * -ENOMEM if there is not enough memory available to perform the system
227a4aadc75ba22 Mathieu Desnoyers 2019-09-19  428   * call.
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  429   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  430   * All memory accesses performed in program order from each targeted thread
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  431   * is guaranteed to be ordered with respect to sys_membarrier(). If we use
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  432   * the semantic "barrier()" to represent a compiler barrier forcing memory
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  433   * accesses to be performed in program order across the barrier, and
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  434   * smp_mb() to represent explicit memory barriers forcing full memory
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  435   * ordering across the barrier, we have the following ordering table for
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  436   * each pair of barrier(), sys_membarrier() and smp_mb():
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  437   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  438   * The pair ordering is detailed as (O: ordered, X: not ordered):
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  439   *
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  440   *                        barrier()   smp_mb() sys_membarrier()
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  441   *        barrier()          X           X            O
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  442   *        smp_mb()           X           O            O
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  443   *        sys_membarrier()   O           O            O
22e4ebb97582283 Mathieu Desnoyers 2017-07-28  444   */
2a36ab717e8fe67 Peter Oskolkov    2020-09-23 @445  SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)

:::::: The code at line 445 was first introduced by commit
:::::: 2a36ab717e8fe678d98f81c14a0b124712719840 rseq/membarrier: Add MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ

:::::: TO: Peter Oskolkov <posk@google.com>
:::::: CC: Peter Zijlstra <peterz@infradead.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011291307.sMWJqc61-lkp%40intel.com.

--3MwIy2ne0vdjdPXF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
q2nzy+v74/iXvjLAomCpzjFo4wEPO5EHtICg6wPxUiGjszpSvX55cGLLQwq14KedXwwnL42A
6kCwNM2BDwhdVXX010EOf/YnS6gKIlm37GS9nt9TEdDW7Jgov8cVAHqW43KMagc2DImYTO3N
yKXXsZpHu+rkfr0Wv5nh6W5mvjG5hS5w5faGYXvKl/OFI6+0EHiYWAUUFiwerQd+pYTW/M0n
i3k8vYmGABPZJHIN5lwIdSrmsSyG+R4VfY7lqh3pRagFhc3h2PM6yBTvP43hlhk2xxLv/NlE
Lq/3/fpuGt1eyV0oOX01JsNKp/l04nr+7D6KGrwBBRCLZb7EpF87jwjtaJqr41FAwbZNvFcs
qMa1xTBFRk0Fit/IBxKJmlXLP62Yq+5CgHT7CslG02f4rLRN1hz6HKfP0A+ukeudAyyot1xn
xk4W2EJQrW4CD/79d5vNA4ouPctigppZOpN6thy226wlyHdTUyCaRFiPx+XNau7SdXj75oXU
+qIQyXS4xA86Tx01kQoYehc9AJvFqoKYpbMzZlcxOigB6fI2rjyeH97VceDbRxtSnHPsltwa
C9ES/dIKmaM+7G2G+RQdm4vlHFy+M/s90YVDm0xAL85iuYkCJ0ibZ/YfeJaoe1onF3RGRrMx
tn96ysM2HVvxhbyd3EiCjfHZUi6RjQfo0zlOn68QusgXEdaE9d1sic2hqpzHdgSvlg6jbxwY
0yHF45bFhLBuB+3l5Xd1TLk+wQbBJ7vtRqq/nGCS/Rw3fi2GXeAbHbUt1aHKBuTWuLJTUhBP
L2/qyP3BFGujlCDdkIB7EBCVHeG0pwaucRWDZaXQpxpEiQdaZ1C7JUVBM+GibrRToHDndcgE
BVWDZQOFYnMmOehAEQrGDhoQrJ2aYPLdCUe/jiia66m2oXMiQyWV2bEOYY1TtCYkelJ6fA2X
1sffQtl1vskdj2A9hH2ng26f54+moToKCw0j7s5jK3a10xdCHUAMofuusR+JnIhTEdfy6KZU
P9z46v3nryvCEivL9S4dXb6DXbftLREyTZnjFOmgqc77TZMc/e4aqnO+p3XBJUvxA23DJmiW
QoWxzaZh2VJS+vOgo+tzI8UePR2uODcKTM3Tjdf6rkt3x4SJMiPOncc2mc1uAsIwy+FDxIzB
+zhSiSYAO1wvUMskS//sorOPPXLF9QeYu2TzDFDnVAhjJO+g2lFki/1ina0hYJF+3s/UDMa/
mM2CXZtZuNGRcMvufzaM1uOja4G9gyDBDK8EYKVeFmnBqrsgT6IO+h/xkNCbGsS8pFXMAwft
XRN/s1H4CvIUVOL33DqDaicCL6YQTDJdBNRPAd3ur5YNS/YVuwGA3Q43FHBzg8WL2ieldTyD
X7Vg1q3uXjsMY1xma59YMVs9Q9N8FijUqYumFmgYQYOJWDhWJoYK9QomATUc0bx51xndkPjU
rnD5+fH18nb58j7a/vz+9Pr7fvT1x9PbO6JBqJU1LC0Eo7zRWq+41DVoTjaieusi44OC+gZt
KnoKvTULSdQijd9wgQvC1myuuUPDvn+Zm1vAvtKtiFGXrHSuy+NtxXPaZRp6Sc0yUvBjx4Zt
XeBmJM6sK2z1A6KWq16CqKk/fUbQPlULn7WAmet6L5OOhtr6u/BqhorkFtPAB5KFCTafzrAD
i8fjhoFxwcA7p8s0w3xouyx2GC4LiZOY3tiRTT1sZYdTszERjcGLUomi+3geaJFxxwKh4PFm
KZZsk9fxZofi24M6Fhfog3/8fHn8ZyQuP14x1356yhlB06GoHXFNnRFG92phWkb2OVL/rLXq
gc25zhKfU1FFFZtQ9723H1AWgKB8aq7IxWxtz3C01l1CwrI1t7zjdTM131pPK2Vs+V1spWcn
XZNR3chvvYyhPswuaGFdPX27vD99f708ImcjCtpZcJVtW4O3NDV06N5uJpKVKeL7t7evSO6l
kv6d8x0QtBCAnew0qKXpjdbi+xlCgOCj1tbWVtaplLWOgjXjgbk27eauhsejX8XPt/enbyP+
Mor/Pn//bfQGD59fzo+WuomxEP/2fPmqyOLinuFaS3EENulUhk+fg8mGqDELf708fH68fAul
Q3ETMfJY/pG+Pj29PT48P43uLq/sLpTJR6zmde7/8mMogwGmwbsfD8+qasG6o7j9vXz/iTrx
8fx8fvl3kKd7qtvH3gLUFIkl7vT//tMo6LdU2G/Tit51ByfzE/OY3kDGCTrLy4wqeTqhObHN
a20mJVHAQkEK1/rcYQE1aaH2TuyEY/F1/q6sk5+dDRFCiY1+IxAdq77FNd3jr6r0KOP+RpH+
+/54ebniW92wa09XS+xuvcFTQdRG7rwLNEjgnblBm/uBQk5nK2uLbFAINzN13Uj1SCjQbsNR
ymLuuUxtkEouVzdTTCxtGEQ+d1z4NORW5dBTzeNV4NE3sAEXco2fD5RIF5Ivy8PwfRTOUI9q
AiA6r9Ud7IXujY+SCwJuAuGY4J/HWpVWv4yuCDVab2svONSakwpcDsYM18MBrW5VEVbyWBIr
zICOT94GJM1sud0g6ypWlVzDr5g4uksGN4Noc8BvfzWLZI2Gy6Aby+1pJH789aYXlb4Pm5Nc
rWBLIu+JSuQoWZ0YuD8GgmKuEq4g02H713Fe34JLQ8UW6Zy7LoAcWyf+kleVmrt2vjaceJmj
TILRCvdQbDORzLXLABDu9lh+XOZ3AUVf0/gjuB7EugDg8kjqaFnk9VYw7P7Q4YHO8CuRk7Lc
8oLWeZIvFoF3ZGDkMc24hJGVBMwHgatxyQtSL1di23/go3nApaI7XKzksNSHtCrzeD0cd0+v
8JTz8KLW3W+Xl/P75dVRO2/Lu8LWzRIivEE4GxRHXj6/Xs6fHRc+RVLxgC57y94WkbF1sU9Y
bl0wrDNQSFa7U27HOgWD+8zRH15LbBviqZ9QZ19rw7N+vyXH5srEoTkbckOwN2Cd7jZHbxa1
skmfgf7phljZHkbvrw+P55evw6VVSDuuq8zhdCN5vQbH1najewg0ZwJ2lopHuwfBlkqFKWG4
alxg8oz6uTfoNVUyiy2VlSNemJEut3bHtbTAPXcHu68LHXkTyE3Ia864FUMu8JNoXx+Ju0Ho
GBD1otboYvgtu0eMckMGh7oSggx6LwIDSB8S+76EjOp8U3WMwver7nPEe8zwr+NqBGQv8G0H
s5jOxr4H2iEbhKA48pDnX822rljiumxtKqgkSHpPGxxJ3dSwBBXBmO/KzDZL0llXdMPcR3E1
4y0kVKUkzQaNVrQ6zXHL9Y6BpPgo6hhCfjxSgfWPpJ28rf7EjkY22Tpx8NK6N9sVDOb/ngle
gbDUP8swbkdxU79AmDLiZU/O2CD+piKZ0za4iQvM0kr9XdDYkSDUVwIESZGbYBn9ZqWvZj0F
uf7xxT0pGEdrZ3UkNTuifaCK1QCk9YFXSaMi2Td/TzKWEKnWJQEPKY7usCIxrgQASw3yKCPj
KMgl1EciZTUkl1ywoyrTERVbUNB4V4UUNRXTtA44HVLY7Cp2q762rEPvYarofK27xBVgmWp8
KryMG/STBuzv/8luXiBF28K+Y4Cq10i7aM0qiWRgR4OVfjSlW0mA0vp22uO3psByt+My8KD7
QfUBd1VdgcILCD9ulGMDiQatA6I6NlNV05RINP7bJhWR10DwOBXh32Itq7Y/PIoz3nxMfW91
UIJZuak8deyOp9qpMydRg+cUHD2Gd9BKQzbtvFJnNcxScJjFUmtQFCxrOqBfuaPBgNMkGCZ4
rzQpupnopvvga7c81oB105vOCxfMeG3kmp9ullppnRWf1BrIbKOGtkC1fmpvBd4O1cLZPXZj
0aOzYY73QlrXRPfq6DKYPPD9CKbdi48geoRp5q56hmLM8dRGY2Hw5qyvz+Fpz4lDVSRgW3Ny
OAL7YK1OhdWplN72bHPAIJKYwJoKoy7gSOJDDYJul9JIazXSl0CuKB2ElxWNwOukvoHWW2Cq
hgWmKwKcsbT6mewkT8XMmdmG5n+/HTiswMYiV72SkZMzlXoa+CFglRqKtfrPWWwQFpIdiBIY
Up5l/HC1KPAzRY+B/I6qg3UrrmeRU9UZvOxeXeOHx79t7aNUmA3rm0fQC4I3uA2whQjom4pg
J6+WZ7CKtQBfw4xVZ02BhocDHhjFVi/3tGGuFobWqn8gMq02PZD8XvH8j2SfaKmmF2r6Q4fg
q8VijI+EXZK2o6bNHM/QXORy8YfanP6gR/i3kF6R3ZyQzuDMhUrnUPY+C/xubXdintAS9Epm
0xsMZxzefASVf/5yfruAH/LfJ79gjDuZOpakutYhgaiQA5mmFyGvNdvcjbw9/fh8GX3BuqP3
GmkTbt0jm6btcz8CjUVuXuLhAI6dxTQn3BjaS4UmQl+CixBmImbYULxlWVLRwk8BjgzAlh5m
zc6veVzu9MWm4/X5llaF3cb2fqI9nOSluzZpAr7Xejx6o76Cq4UjoQtcttvuNmqJXaMjP6c6
NEtFibSPzq0LgQ3bkEIy0322pgD8N1hq1bTdkyo0fpDRYW14TBgVOKNahlVV7RMQNM3msqQi
T8iD3/vI++2YkRpKQMTRoKMRCRRxCFwUGvY6oEkPWmJFaMKl2gazUaNRWy/a8oYJhhfNgMlt
WMIEBCtWy1iJmZ0pFkxNbgMiGDyHMW6biipRw/8JXeEUOIjpviuqMvZ/1xvhHoINNWxUFtNy
iy/QMXPFW/htdjPMMEijoDN0UPNCS6m011Ny8zhQcluXBxjs+HWX5tqVfkBgFx/MThsc7nAd
FbeN7nG9zOm71SuM/6F+zU4d0JdJSGg7IMhu0ECrEv9Sha3UrH60+xC2TQHc7nO12uec+WZj
N1PcSsZlusEUkhyWpfuw6GH41/CY/kMZN24H9MjC0cz3MHzx8JhQlxkuyzRY+iyIzIPIIohY
VgwOspqG0qzm/1/ZkS03juN+JdVP+9AzlTjHpreqH2SJtrXWFR2x0y8qd+JJuzpXOU5NZ75+
AVCUeIDq7FRNpQ1AFEmBIIiLxz7M6cSHOfvin7N/c8FdSALKHrJae+l99mRyznunbCr/Z6EQ
5N904MQclgJPePCp3V2F+N04z81vocAXvva41CYd/8VeJf14+Bheg4RXQgwSPuEHSZZ5fNly
orRHNubcYYA/aOp6FTwFDgXWfHHJMd8W7w1nnijzoI7Ztm7KOEm41uaBSMws9h5TCsElayo8
6LFJkEX2XBMqa2LuMGWM2Cg5pTB1Uy7jamH3B08B7KRHCXfma7IYF4HhnpSgNsPgmST+RhUN
+1QCzliQt6sr/Uxl2JtldNj29m2/O7y7KRGmPxF/gbZ91Qi0cdvGWFBhKjgpwldFQoyS5jam
zkgiotYukgm/22jR5tAODYp7GmnIxhGHkkbvgDKEYZx8RaELdRmHHu/hmB1bIT17LsmkmlQ9
WEpJYFt8lL6PUb9wOIxEBqNtKPi+uCGFKLQvDHTIOAMA6JNo9ZE+SWPgaIcO6Vks0bsQSeEp
vh9jzX6piWE2J96qg0Xw4MWYRMG8VB1fh7kNtMWXVOnXTxggevf899Pn983j5vPD8+buZff0
+XXz1xba2d19xioE98hen7+//PVJctxyu3/aPhz92Ozvtk/oXhw4TyuOdbR72h12m4fdPxvE
DmwZhnQsQhNNi0edGF0HqgTF+ygVFt8zHa0AhAkMl8BYGWf00ijg22mv4dpACnyFx+MaYzUQ
yQJaeRDfSzEyDISXXkhEj73n50ih/VPchwPay753CeCVinjk0I16lB1lXvcmYWu97CAt7ry3
iO3fXw7PR7fP++3R8/7ox/bhZbvXPiMRw3TMA90nboAnLlwEEQt0SatlGBcL3T1mIdxHFkaS
jwZ0SctszsFYwl7/djru7YnC2JPbLovCpV7qjlPVAlrqXVLYs0CCuZPSwY06VB0KRQt3sDIe
7A/A5IZxmp/PTiaXaZM4iKxJeKDbdfrDfP2mXsDGYhxNJcazKSo2iFO3sXnSYGAIytBWXtEr
rWpv3x92t3/83L4f3RJb3+OlMu+6cVN97ooLHeuQkctdQg+P72EsYRlVgcMPVTphRg7y+lpM
zs9P+PRwh4otOx68HX5snw67281he3cknmjkeBvu37vDj6Pg9fX5dkeoaHPYOAs7DFOns3MG
Fi5Alwgmx0We3FDxBpsgEPMYs+69CPhHlcVtVQluKipxFXMFa/ppXQQgb6/Vl55SysPj851u
zFddnYZu92dTl1Frd32FdeU8K8Ips9ySko/G7ND5jHPkdsgCu+g2uWYdo0p4iJtVqV/orhbh
wvtJBpSadS8+uF67+ADT1urGZQZ0LF73GeWb1x++LyHTjC1BnQbuWlrLGTGB1/Jx6UnY3W9f
D+4byvB04j4pwTJ8yuUFRHKrEeHwbRL+2ijV0zW7/UyTYCkmHKNIzMiX7QhIkDF9rU+Oo3jG
DVFiuh67MpLtp5dZelbAbL6LMwefRmfubhSdMwNOY1isFDzLRcYqAZxGJ3o1Tw18ccyBJ+fu
7ADYuOpPyZJFcOI0gUBYBpU45eih9Q7JPHeOt8v7kNgv/hkOzLw8ZWA1qJTTfO4g6nl58oXb
/FfF+Qlr39V4oSU+aUEGq3UhN8bdyw8jcaqX265+ALC2ZtRAUQ3NuisjX2GSpzMYhXBs5Da+
40hnBQSYARoHXsTwoLPUFYXck0D6dbSj+7Dz0IR5yn4Gj+H8+BB3zkO1HrkiAQguOPGF8A8O
xRdKPqBPWxGJ3w5vRn9d/g2SKpi4y1gpEV7twjdmUG0LmTDAwml7839tRfWxudGoue/rkKej
6HqVe4qomARDOV0e7ZkYE92eroIbL43BU911kY8v++3rq3lwVzwwSwK9dr7Se77lzBRfssWN
+0e4rwLQxcgGQfFGXT/LzdPd8+NR9vb4fbs/mm+ftnvb2tAJoqyK27AoM1d0RuV0rpL+GQyr
lUgMt40ShlMgEeEA/xujPUJg9k9xw0wFHt3wGskR35pFqA7HHyIuPfFQNh0e0J3jRWcfeNh9
32/270f757fD7onR9ZJ4ym4ZBC9Dl3U7z/m1IJJOCXLZbcBpFx15aX7zFiln2AYkavQdY08P
Z7TRFnoyFh0JfgJ63aykK7FOTkYH6VXxjKbGuqm14Kzafh6Gs+DIygfqXkeym1pw4V9BdZOm
Ao3CZEjGCwj0RzV00UyTjqpqpkjo8u52f8C8WTj+vlKV6dfd/dPm8LbfHt3+2N7+3D3dG3eW
UahEb27tLOS8+VmSAtdh+eKq5olVhNQHuqHGP42zoLyRd77O1Gk38S4+rJl00RZXw7JTkHYq
shCkWqmXb44zEZRAks3N0l2Y62j1vu8P6KJY0EWLaVFJgqCmZmFx087KPLXKY+skicg82Exg
0FWs+8EVahbjPYxxCVMLXdCkSl5GZiIS3toj2qxJp3zZGempCBL3HVhLxwrEVygLTAsM40rC
tFiHCxnsUYqZRYGm7BlqfHSHQpHE+qD7NoCFYaPK8rp3j/TrImzDEPYKA3RyYVK450Hobt20
5lOnE+tn738yVyJhYB2J6Q2X/GwQnDGPBuUKtATP9oIUU9Y7BzhbVQt5PTPUS9PHU/fAH2qn
yP5wPoQUBVmUp9rwmZd8QzEVZ1LfeTegSgsaltC3vA+uNqGYJ+TCz1jqM5YaVR6GnMAGfT+6
9TdEsD4hRd7Ov8UaJ2uIKSAmLMaM9VZrQveKqdkVAu9JTHJDddWh2Kz2gab65WLwg3L/0C9U
BnqM2jooy+BGLiPdv1HlYQyrBjY6IhhQuPJgzep5jxJEmRzGWka4XZPODDXPqP8SkdAVjRaO
CvEFBTn17FhAqk4YRWVbg6JtiK5BROSYsIiETdb7Wge6aiVrWhkdDPMFaZCwN+eJhUqN2y8R
VIgSBCKhnE0x2v61eXs4YBH7w+7+7fnt9ehRuqk2++0G9qZ/tv/RtDv0RoLS0aZ4pUE1FIPr
EfAuDBPAqMdjbT0rdIWWIHqWFxI63dAUJwqMFmPDu2fi2BwEJAmSeJ6leJC8NOcLtV/vPerz
RLK+NutX+m6S5IbZD3+PSZssMXO6wuQbeqoHQFxeoQamvSItYqO2PfyYRRpn5XQX4Bz0kFI7
/jVhNcENONZ9YKQlqhV9HVW5u87nosa6RvksCpjKAPgM1T1q9a1rluMpvA+o1KGXv/QdjEDo
7q3whkuNtppbrN0vF8yibg3vIwD67EubupGZeO0saaqFCoCwicjLn4YWhtzDq0Av9FXBCjak
h5xPczPt1DxHSzPd6ErdJOjLfvd0+Em1me8et6/3blgHaYBLmmlDU5NgDGLk3X0ylxovn0xA
b0t6p+a/vRRXTSzqr2fD5FKVRreFnoKKOXYdiUSic0l0kwV4zYOK5OTAVvIxqEPTHDV5UZZA
pRcqJWr4H/TPaV4JfbK9E9gbNnYP2z8Ou8dOx34l0lsJ37vTLd8FSkBuvx9hmL7ShMK470TD
VqDq8TEsGlG0CsoZbyuaR1PM/YsL1gEkMvLYpg2aEjFfTFtNsG2KFhrOzHuSgUkL2C4x7V/f
Vks44FNbgNJEAkBBdcYA4DrQxY7sfCVzzDDuPA3qUNsLbQx1BHMZb+weFjmlLOnLCCMxuiRZ
K0lNvlZukjLoWN4Dw5+tPvqliS/IdLS7VYsy2n5/u7/HwIv46fWwf3s0S9jSDa141Cu185UG
7IM+5Bf6evzrhKOSRWH4FrqCMRUGbGGZpU+fzMnXA/UVpIvXlp/KnjUZ4k4EKSZEj3Bl35In
qIa2ChKMS2BQ/V34mzu79zJ4WgVdwiduylZPCTv+vrDSA/YIQTDSjuPETKkjDMscH/rc5vTK
xAF3YjHrwlGluvCevl1NeqMEFesabxjmuBvxpFT4o9fyVcZKeELCgsLbk81USBMDn7XLufW/
YyD2BkQN/cUcW/aogQRlDgs5UPfK2AwhaVZrm5l1SH8qrzGUf4DL362T6STB1I4nCFC+Q+bc
jVFUScCxM7FdxxWgcSQgitwPqTDeiZGSrumKIg8GJJDkUYcUWSQF+9iakq1dp20xp7hGeyqv
UxdCHnRTBepR5ZQBFnM47s4rd5jDez/QR1m5nWlEIrxTJUuNUVydtfilVAhcqTAgcKymlt7F
FkqsMnfy2GoFKvi8crCYRSWX0iDM4GxnncKpDVYAOQLC4o1FXA6V+5DoKH9+ef18lDzf/nx7
kTvZYvN0b5bAw7vAMPAwh1MrKyA0PO6xjTBqeMchaZV5o5X2RntWg6uphrWin/DxFnEX2fcF
VUE6vOuE9A7OlugltnuJsbbWW6kaof71ewqZQ49DguWUFizNeN81wt/33Sbu+65xO76sXTQZ
3tFbLVnRs7oCdQmUpijnLcwoSbvPwrLWOLvImHHQh+7e6LJad4eSAsjS0yXQ1IIJNqRDq8BU
pm17veMnWQpRWJZladLG+K1hQ/7X68vuCWO6YDSPb4ftry38Y3u4/fPPP/XLHXN1RfCcDmH2
ebMosao/UyRAIvCycGoig7nlzd2ExsHawhGtSE0t1sJRyFQxYRvuIV+tJAZ2nXxVBLptqXvT
qjLyNSWUOmYJOMo4FIUraDuEV9Cqu/gS4Xsap5f8jCP3H1CXYE3VGKpu3uowDJIxOlfhzHiM
twtVkXzBKojrkfJX/w8fqd5RRQ00s6jNjoW3WaqZHGintkpx0HEHo8mbDO+7h5Ujrc2MliCV
EMYWh4v4p1RP7zaHzRHqpbfoGjJEfvdhYs9kdTqap6xAx6Zzt1syTcNymwzyEZWnrCW9DrSv
smHqZhjCyDMO+60hHKZFVsO5p3ImpAwbVp2W6zfUnPc84wFJiyU0Obj1xOAiCBsqHzM8x3mR
sIHu8xtPiivmupuhDLQxHnsmYA+Qx9ySOeCaRhBaC3CgwKx+9irRAM4a4U2d67W50LE/MK4r
L/ESekLpFwmgWjVrMnm0H8fOy6BY8DTK4jOz1gyDbFdxvUD7ZfUBsq6KCNq/bPKOLKVCYNAe
ugotEqx3gAuWKMko4TSCURo3FjDsWpNNWwID69Ct7So9siuhuS+Q5XDazGb6bFEVY6I37LTw
p8bPXcGoQ3eOtaa6Qzxm3Os7oRAprNfyih+r8z51+rJf1BEytl1rxKggkVnYadrLTL/hIx8L
/Z57Ps44fRe6W20cE5XdKZhRUF5nA9w60Uk4d5pcwRJlHsMy/wTl0sm6dSu51t6pYG1nQYGX
OHsRynRmcYdsdgq7FbCWHLmlMBk44bMQKXTnzcYUNXrODC7o2nJnZqDoCq2qaldcViFdsiBX
i3n40hG4X2XudA6mJ52Y0/KL2fAKi5lsuK9D2EbXKSxEVMbRyKe1hZUWYJIB07odHdIRMepE
3QDOnyDoDVK+yFJhTD8G6cAFjOhihkGrNwQJuUPNe7nmIRZ27zikX8N97xRv1wHsyoVfEdS7
4CN2hR65JSwdQOcUlHetrZiilgFfq80XYXxy+uWMXINojeBDgAIsoc9xkWYPodq7cWdoNf0H
MvO1o3EUoV+XF5wiZKmojlR2VViXRgRlcqP8N02l2YEwOrTztZA81y/I0Z/ytBVN554HqGz4
OtJzPMQsRpNS2xn77KNjMiUHns8s10tNrooLDgOjGSJkmdGsa8kmx+tLo9yEhhAR++17iob+
jNN4hGen2JEvTYU/DMefIhip/iIfJU1lBE8fnxm+NU/kCvAonwUV/MTj4khvmmyFldrKFlRZ
Zpw92nYF9Uqyyeu617Tevh7wWIeGjRBvtNjcb7XM90ZaCoe9gLrLmIQNvCUVCCbWtJqds4HE
kspon4J7GnWKQgdmXg5VGTmpr9QNi1RTSLyVHYM4QUO1CZGGeWUXGISr2cpoyjq2kgZLoaoG
mO3ECe3K0l7oe3yGZ33vGHRXltmymo4xGbqEbcSxy1agUcDuIiWAXk6po9Z8Q0DWOVDRdxSU
6PDgvyPRohO0bFJKAEg4U7Wkgi0mKIUMOvl6/OvsGP7rN03Y0UkRllYm56a5ZBnVKb9jk80P
N/bKukvJJEnjjC6O9FN4n5ebYKVXY+VVsuHUCCJkZHueYq7SCF6PBfNSkUhANWK8MYwPAmXW
i5d2rYuzcbFHE7QQa7swnjWDMtBDJhlzwkRRVaEZ00/wJSDqnItDInQf3ms+JYNN/H1qGvsy
Ax0rg+b8eNRGZ1bRTZOixOhJx8tjTZwvRYGwccTlVUu+Xqa6ZFUDtnwYJr7z6fiaJAMHlfd0
Gi74azwlEqO2FxgD49QAV9IJo4+hc4PS629tFpfpKii5LV6yiKqxOKytuIb9Ionk7sKFnNEj
7HYlg81ZhBbbbeHghZWj7coZ9OsvHX9T2RJvXTXJ7Gk+wpag3YZw8uWs0Z28uxYFBZbYH5FO
4F79WzU+TkDFOXCT9C5h0H30N0OLXsmhrt503Qd2SQ9ecXHqfsiYsP8B9fxKuAXRAQA=

--3MwIy2ne0vdjdPXF--
