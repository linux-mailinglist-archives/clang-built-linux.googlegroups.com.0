Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMOQ6OBAMGQEBSL2S7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC8C349AA0
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 20:44:50 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id h19sf4684356qkk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 12:44:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616701489; cv=pass;
        d=google.com; s=arc-20160816;
        b=ERP8aoKFdG4BhRxueRTSKyXvYEkn1fjFq66tRanpxlJ4eARqR46yt/QdnhhHLRi1E+
         VA6VMT4J5nbmnVBZaZFZwTSuW4Zj3x3lJLZm2l8isTqA51WIT8cySC2f9BHU8pZQpQyB
         vDPG9mqJ++J2PdMMML224blMftBSOvut7hfZX8h1zdJpm/l60SDp9GqueRT6sbddpvDB
         o5r+HNtTCTDszJOmGiZz0sOfk8Ryk4DCLVLaZk3lw7+Xuy2qlCzQrn0jdSCr6RUY0EB4
         gsQqz3du4CbwWyxVqHtfulRO1vMXrtSCVdTAROZ4JfbuYlpshpVYc7pPjKoDiba49/Ky
         Yafg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=r7lSFz9tF4DpL1BFmL4FbqzKsjhA6CKQuKl38eF07Hg=;
        b=0ZYmDCap9lHyiYfktyEwWHSXOj7E3eKS812THKvN9n2+qUUkQVHQQPdMDYOYIW5OoF
         0wxO6kmaby1YvQ0ImBg68ceCdtB89XRvgrKrh2mcApfXa5AIvTomh/VSi/89DL2UJDEb
         Em9D+3BNGd1xYDnlAINoYsi7j7vObwTZcbXo2qT+Yba62oWSuGzDmimPaCY6wGgzW/y7
         7irpQ3NdiIW1p0reodXMcChxzkSIEwvw9ySnXnvhxFNWBypyz1YgIepnLZM9xSk9l8Tg
         C4i6xSyqoeVyk9H4cVpU4l3kSvV81+E3+AT/x4Qs8iviXiZsiBIr3at2/IhEVW5pCaaK
         KjJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r7lSFz9tF4DpL1BFmL4FbqzKsjhA6CKQuKl38eF07Hg=;
        b=AkSj9UvTfZk5cZBnO+lR1iqL5OOLY6VI+54UHyfP9Eoj7MLeRjNorpfeOm2sSmxFRR
         FOAxsZlg+6IP1K96ANP0Pcgih5XWVLnXcVaIX4ucnKF9SWSgos7p1zUxlL7ef7/SUyY+
         miBtK1yufEiGYGc9JLkpqWC47KOFbriu8c/C7eEcBmbUiq9gqzqMJm8MJ4a2x/klbQPG
         D8mreEP549xfA1GlngGMrS93uh0jMU85zozukAJj6tCG3QGDi/6MpRQ/+HWqDrq/JXOq
         Kr16IKPqLfE1XFLVDd5GqJ8bCtuebudr2Hf5tTb1cwaUwnrUZhz4BMC+sdRttzO8+uGp
         s3qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r7lSFz9tF4DpL1BFmL4FbqzKsjhA6CKQuKl38eF07Hg=;
        b=U34ZYbEVvX3ikU7CiG2FA133jud8FQmBN7TH3+/9VRbj9E7X04KOXz8qLb3AYXzUFy
         dXKP0ZHzS+yZTpLENr4P98RHvhnZ4zF9NbX8F/MCqyXsw7DmwiG7oTq0s8fi93yJi/D3
         dHf7mhJSrmyhl6sR63ZckmJLe757ni79QWpcTgUUm8EafF2c4JKLe9gV8liegQabtZ7w
         k6iIMEK3GCTFo5oLet7ggIo1ljX28x0SwN//YyLW9F2v9nAMqlgmMTUGmYA5RXHIRI9Y
         Vqj9/F3+IMTgumD5AbD0OSh+AreRdaJaYlcQAe1Th/XRAaupTInd8PeLFRUMKbBVDEeA
         G+rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530406fDF8Oi3Do8TXWdvtcsjyrjHrnwUcxV0eYJ3BfHe6o6iCAu
	1wiiFwbhVYLUGEazRmCVw2I=
X-Google-Smtp-Source: ABdhPJxxVqcaw/00tMN+u9Q+spJ5I+T21MSKb9EHQQsj7lf/uF4AgtAZ3SsPvpnb0nJZ1b9VafD1vA==
X-Received: by 2002:a37:b801:: with SMTP id i1mr9897443qkf.133.1616701489537;
        Thu, 25 Mar 2021 12:44:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b752:: with SMTP id q18ls1765411qve.8.gmail; Thu, 25 Mar
 2021 12:44:49 -0700 (PDT)
X-Received: by 2002:ad4:5629:: with SMTP id cb9mr9945677qvb.62.1616701488954;
        Thu, 25 Mar 2021 12:44:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616701488; cv=none;
        d=google.com; s=arc-20160816;
        b=fHWFwb+K5RLqmuClEfJKntTSL+U3ILgeNgOMwy0EFSzulHyCXVaIfXzNi+45uB0pmc
         zUofAhI96wQwcPGUyNQBpx2cA3QgZGloR7yDzzyImYK31YjDPKbpCmqAaLYMgwxoH3oS
         dViERe20FCyzo2pPNuVpo82lRhUPTN6AfAgMhuZIhTR0tKrTJB6eGBoXg6DoNgZX2Lj7
         U+a67bKNmxHjN+kurN1nY+e+8qMbYITC9yoAE4nSxpfonZnbDGK1I0KVrBrPR2HbHJ86
         rMT4tKZJKY0AxmwYo2Df7ji0ti+5f2Hn8r5UPB6hTizeuKiEcdsDVa2APNxvKOG8yhPB
         57uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=aOGhpVuhb2DwXMz5HNrG5h2Usu6IVv/ap6A6iOLOOZk=;
        b=yhpTnmGZ6u2Aa3Sv06ChrwOUkEbgJZBdfkSLsYI8FZNtGbBHiD9RfO/DfqZhu1+uua
         BdQu7ErXMZByFe0Bn3uLLPynF2pS/D3wl93Dq3HDLmQckTY/g3KwGGTncqjx02GIrt4X
         iLs7pGACRmkclKY420cilAvRF9AJPL/YsEULzcUEx8PBtaG4QMQRdvY9fjVGU6FLUYol
         W4d6mnPH4eFFiVgbN+HMIx5VjeaDRPQ+dMoCyrBYSW0D1swtLD/+hQvz5JqSmr7gnW7q
         ixIF3mPeSEl+AZKaRGOKQqXsItiZ/natnoSTUAHIG4SGg2EPt/uCDPYQ4bVRIE052Z/g
         l/Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id a15si554104qtn.4.2021.03.25.12.44.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 12:44:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: Kc7qTH/X8UNf/A/ucO3R/cdfJVlbEfcVFfnYpOJ7G+3hvrjsVho+/6PqZ+LXwbCVQceSxhqdd8
 h175QxoNf1wQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="190432761"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; 
   d="gz'50?scan'50,208,50";a="190432761"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2021 12:44:47 -0700
IronPort-SDR: 1nYsUbueFPY8hZXv+rb0pCEBK6D06NDMquWJWocvnxCI4BJtWNJVFHlWX4vm4jnr/Sksv4c3sI
 F2JulN82vIRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; 
   d="gz'50?scan'50,208,50";a="608637553"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 25 Mar 2021 12:44:45 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lPVuO-0002Dd-SI; Thu, 25 Mar 2021 19:44:44 +0000
Date: Fri, 26 Mar 2021 03:44:20 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [linux-next:master 4479/7299] ld.lld: error: main.c:(.text+0x3F2):
 relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile
 with -mno-relax
Message-ID: <202103260313.InQSl8KB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: Linux Memory Management List <linux-mm@kvack.org>
TO: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
CC: Tom Zanussi <zanussi@kernel.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   b4f20b70784aabf97e1727561e775500f6e294c7
commit: b47e330231acbf4506b049643145cc64268a1940 [4479/7299] tracing: Pass buffer of event to trigger operations
config: riscv-randconfig-r015-20210325 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d6b4aa80d6df62b924a12af030c5ded868ee4f1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b47e330231acbf4506b049643145cc64268a1940
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout b47e330231acbf4506b049643145cc64268a1940
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x3E): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x48): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x9C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0xB6): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0xE4): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x1C0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x56): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0xAC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x10A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x1D6): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x272): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x318): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x36A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0x3F2): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x472): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: main.c:(.text+0x4F6): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: main.c:(.text+0x54E): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103260313.InQSl8KB-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
KDNNTVjVu3zWTmXfots7u4WFs6dctFiveyKOdd69tobiy3++/fj8648/fxp10J465VgYBQTi
viSH8RUt9IwYcazxrksdcCiytYKtlcpn5N78C9yNzPe8/+vPbz9/ffm/Ny9//uvlExhI/j6z
fhPLArgA/t84CyV0nLmdoExUNTzrJB3tUF70ELdm9SO1ewuY3QZlq11eTn23+ETRCJ1hnwIy
UWK68zwNGR5CqzXzho01uZkpQKWGvl1dcYsh4qtQuQT0u2gCoiyfZxvSbUWGAp8vkTpCH4uO
C6WALeF3v/5QzXMOXKss/ZKps7qNjDkddao6Ayc/zrPVjQJt8BWKy7eNPjpq34X0NiXvaTdz
XCguJHDmtLzvCUdVY//m45dvH/+HusMOrqP9OMvU84hkVuzvl4q0RqHFg9AM3NdXEbcPmO6V
QePD4LW8sYG/gL/oKBSgKRRQI3PclLHpnCq5N4m2YRaElX0Qco92ibKQhD5/ah0G5wtl8mOP
MrZcCSM7TlQK1PbxzpddWbf4evSa+PVyDTdvDCiXOy9fX34+/3zz/fPXj79+fKG6l4tiJoKB
IlDgWgJ5yaO09WMHkGuaF6QQXVWbBfL+v1AMzrOLgNhfXxntjsYouXzSDO9n42ijKTgvTsix
VT4eSK0OpbqA1I9VdH/0Dan1aKuUSltFb9NXlA+FP5+/fxdzjUyWtY8lv0ujaTK8eynnKHJb
wUyQqAV051QdtdyUI3Cc2eMI//N8SsPX80G6XlWEweHRUKLn9lYZCQGTu/LRKplDlnD9aFHV
RcGKuApEe+kOVytqe7vLxDuqsy21XOonDVJ4K6scHTRI6TrjoZJn1f04mxngZwOo2lx1Dil9
+fv789dPxtw4O7uRRsiuRBfVpbcr4CYqh9zO2FqcZ30l5YGzeKRGijUDXe7wqLBRUjtGdV7l
jHHsmzLIfM/U7IwSU/3mWNkliQpqaD50l8JKw6FKvTigx/GF4Gf7BJE5n92o/RHVvPssJQoO
xHFCWW3P1VHZHXk55DXEai4whOpsPksocYBttDcgS2hTDcV4z6aMdgSiOotl6mGiVsqFMM/R
cQRRk7KGHz//+PWXUCt3xsTidBKrIPxcpSq2rlweyZljIUPbsnOjTLTkvpB0r4Jn1U3scuVq
UuQLxmhHV2eIZWOQxwENsjEJpckDGf961E0rHYgpU/BKYs0x0caI3bKhlq4F5xczFwVVsUkM
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

--wac7ysb48OaltWcw--
