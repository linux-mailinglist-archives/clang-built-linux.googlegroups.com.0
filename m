Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBX4F5H6AKGQEYWN3G3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ACE29E336
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 05:19:45 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id 65sf598500oii.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 21:19:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603945184; cv=pass;
        d=google.com; s=arc-20160816;
        b=OmW9A+23ptm+o4lBKFlo2Q15cD/YnobfjsX1DBf9J6+5Kb2hd05PQ0J4cLgt3eA2gG
         tD/+BvyBcQ+Vb+o3M4FkjyWfvqJDMtKMdXWKWjAiEYBndimk1G523XSqAjdAtx6IAyr2
         kQgv25LvtZfAhQtAaPbA0mKr8WcQj52FIU9eBVAqgRziePNlRZOiUL++P903w/rsMrPt
         thyTnMNk4yAHT8vNtzLyNnxR7RFzpXtdXm/ANtlerKcI8IjLZg4Nbin24NPVBVGCbCgo
         Jw+t6V2GqOD6s+mVFTqvpHqaHf171iMLN1Q0L9yslnEjGHErB54og1xm23XShUh6VF4M
         OjSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0i50Vuf+KH9Z8HFVn7dDWESIZqYxR10rhyORZgcnDfw=;
        b=qD6iz5Pb0JdzAbyHu/NwDMODUHDT8U9JWgowvNZkPBxMGeMSFvdW5Jiq9ecq6unJn4
         D7vKZDCYZ5DahuBtZGqUXTjXLja9a3YxOLx+vHNvwLky5+PaOkbct6x3n8/MOSsFZfB8
         PvmR6EWdtVIYclvSi6gh4dlTE4nMhaRSYH7KqlbeQW5VmV+hfe5c609uGqNqLXuDkaEG
         Wvl75orynZkUIi1W15kIKt0yN9XvbY37M0rzdtrzpLxbWlLJVimvP3wDrkConE9oQjnP
         2uCM0TjHCoB8YgsLUHpxj3+8sBFb9zTitX85ECwCLOCPD/cvnDCxOVt1/668x82O/2xp
         Cn0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0i50Vuf+KH9Z8HFVn7dDWESIZqYxR10rhyORZgcnDfw=;
        b=LZY91T+YPhnblruLsRbKKpYGlXdWZO8sn/h23IH42WRWJDnH0+JaYftf9skQ8TeqbI
         SDcxb94N5s5D5zeF0EcQKr//hZ72P5d9J3/PhKjTKPJ1s/K0gbhxI9n6oi0SYo72zoMl
         +ca3xvGaUsvxO0GR5QKz/yHdb/pS8M9mb13Y6r3voC5qO+6xabESokYPze13MxkuJe1N
         XmW3GiC3lthxYByfrFQMYMUAsX48tYClDHtn8gXAQSk0DsfbPm2U2fnUPqZVBGfehFSg
         SSCgBZjHaqyFUR7VbdEagRUUZaa4UDJ77aXHIEjVExz36jCHmA9r75vcFGnKLDt7u7n6
         MJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0i50Vuf+KH9Z8HFVn7dDWESIZqYxR10rhyORZgcnDfw=;
        b=ng/jOGEFqWX6LmGD/GL4ihtVG0geg/ieVxmOKi4qvR+d/zCvu4uuiGB28eKdwdOA31
         1P4rd7KuBmpwjh7RgWzP0+QozpFRMhYMzttfn/gu0Nw4isjH6LGtdjnfcM8b25/zLTgT
         TffUrChtJC54q7VvPmayd8m+Z9DBR7/9kTbcmpUdTRmE/FCUgSIAWR2o1Ov9wpEvhbMB
         CKuaYTuBY+Ai7ueWTDKVWCYmFc+/1ppW+F8NkobKOsTcJu1ibHbKTcQ6hKcZZA2DHjcc
         hFdYFtQFspZaTMa4vqV1uTN6MgkvUD20GQ4bvBem/F7JVJZ1NoqC6LD/UNO3cXPoxgFl
         KN9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IfAKv9s6ZZ60VDPYrP9er8XWNQfsa8/Q+AYO6nO2nOFxh0GfW
	A7CfTkjLYcwvWtOoPRwUhiA=
X-Google-Smtp-Source: ABdhPJxTGYuVP0jc+3aZ+oRBicn0uJfamxO2Ipn3Pp/ObWF659yI1qLWAvnkQBkgPoHJrPQk4Fr8sw==
X-Received: by 2002:a9d:34f:: with SMTP id 73mr1728622otv.189.1603945183733;
        Wed, 28 Oct 2020 21:19:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5283:: with SMTP id g125ls349841oib.9.gmail; Wed, 28 Oct
 2020 21:19:43 -0700 (PDT)
X-Received: by 2002:a05:6808:b14:: with SMTP id s20mr1676022oij.103.1603945183286;
        Wed, 28 Oct 2020 21:19:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603945183; cv=none;
        d=google.com; s=arc-20160816;
        b=LTPFa3K0bUd39M++ddTUE5OX6+9gpmm1M0mZblZXFqf2+bpqQYvRYkxNYdKLOjkyzH
         nL2zkswYn4tGYT61JE8ELQ/cJtgYaqXrox7JpnJXtNbG8MNGxpg6FB6Yi7cbmo7kiLFI
         oNWS+mv8NxluFaxuCIwRwfXiUsTR/obUyu2xafZCEVKBhvyz/dbeAJnMS5/QUxWkska0
         hZKqthlRyxpxWltmReMMs2+ZmdYwW8x1KbkQ3tQFrdOzxJvxVSeFyfsgoRotR2likjiA
         cldRO3bqPHoqw9Vbz13cDkBApqzlMgOiBF/XBLUhj7xsdspHGU+bQ81Zl0/xdZHYGLpk
         JeqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=gBW8B7pBXFcP8YQItmYGMtD+4imfvSUqS/qzw+YP4/I=;
        b=j/DNaPqG7k820R2UeOzkREbBLqJj/Ws9RnjMgqpj136ka57d+l1sgQgeaGn18s7QOS
         6yf44K8xTxKGMHKCrLa9OWIOhbO+Q+Xj7ggas5OM3Rh80Gx3glkUPs1kWhsDKXXqrFDx
         gL4PNlOioptBBncN/yoA/pFA5JvioGzg2Oej4vRY57/B0diT6R0gVwYFae89lx8P8BVp
         8gs+Z4RCbd6s7EC9TCukVJxpWmjisKQoq3nujsoPuRQC+IfyhGOjrSfP0YXLOo6RphAB
         RMq+5y002+rFcBIjLzhYdMhqfOYhGUb2HmcVAsL3uMqgI8yDh/coZYuNKdkC1i/u4rPT
         aypg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id f16si130349otc.0.2020.10.28.21.19.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 21:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: sxqagPG3JYe/dumVNz6L1fGy2UPdOLDyQKP2mz0kRpjhoIOEq3o2RDLZdexKqDHzDXd6p+Wusb
 yqBe3BWGrxjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="147658749"
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400"; 
   d="gz'50?scan'50,208,50";a="147658749"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 21:19:42 -0700
IronPort-SDR: X0glKk+8fvBK6SZuZQm2djQGoLCwr/a2ene2TCEz5Byx05L5lJ22ZYV3g2jO8aIi+xnhrsGVbS
 7gB/L4kVS69A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400"; 
   d="gz'50?scan'50,208,50";a="351277563"
Received: from lkp-server02.sh.intel.com (HELO 72b1a4bebef6) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2020 21:19:40 -0700
Received: from kbuild by 72b1a4bebef6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kXzPY-00003D-7z; Thu, 29 Oct 2020 04:19:40 +0000
Date: Thu, 29 Oct 2020 12:19:09 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [linux-rt-devel:linux-5.10.y-rt-rebase 123/194] ld.lld: error:
 include/trace/events/initcall.h:48:(.text+0x99C): relocation R_RISCV_ALIGN
 requires unimplemented linker relaxation; recompile with -mno-relax
Message-ID: <202010291207.qADGbzyU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

TO: Thomas Gleixner <tglx@linutronix.de>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git linux-5.10.y-rt-rebase
head:   16966f1ba0ebb5c8032e87e7e6d46f1bfd38c780
commit: db4ac702aad7bdd6fda8f09b1f6b0b078bdbce9b [123/194] trace: Add migrate-disabled counter to tracing output
config: riscv-randconfig-r004-20201028 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 772aaa602383cf82795572ebcd86b0e660f3579f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/commit/?id=db4ac702aad7bdd6fda8f09b1f6b0b078bdbce9b
        git remote add linux-rt-devel https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git
        git fetch --no-tags linux-rt-devel linux-5.10.y-rt-rebase
        git checkout db4ac702aad7bdd6fda8f09b1f6b0b078bdbce9b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld.lld: error: arch/riscv/kernel/head.S:183:(.head.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:163:(.head.text+0xA): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:163:(.head.text+0x40): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:163:(.head.text+0x4A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:163:(.head.text+0x4C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:183:(.init.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:191:(.init.text+0x2E): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: arch/riscv/kernel/head.S:202:(.init.text+0xBC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: init/main.c:667:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:10:(.text+0x54): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:10:(.text+0xA8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:10:(.text+0x104): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:27:(.text+0x20A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:27:(.text+0x30A): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:27:(.text+0x3E0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:27:(.text+0x490): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:48:(.text+0x572): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: include/trace/events/initcall.h:48:(.text+0x630): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: include/trace/events/initcall.h:48:(.text+0x99C): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>> ld.lld: error: include/trace/events/initcall.h:48:(.text+0x9EE): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
   ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010291207.qADGbzyU-lkp%40intel.com.

--qDbXVdCdHGoSgWSk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJg3ml8AAy5jb25maWcAnDxdc9u2su/nV2jSmTs9D20lOXbse8cPIAiKqEiCBkDJ9gtH
sZVUt46VI8lp++/vAvwCyKWSuZmpa+4uFuBiP4Glf/rXTxPydtp/2Zx2T5uXl38mn7ev28Pm
tH2efNq9bP9nEopJJvSEhVz/CsTJ7vXt798Ou+PTt8nlr7Ppr9NfDk+zyXJ7eN2+TOj+9dPu
8xuM3+1f//XTv6jIIr4oKS1XTCouslKze3377ull8/p58m17OALdZDb/FfhMfv68O/33b7/B
zy+7w2F/+O3l5duX8uth/7/bp9Pkw4f5ZrO5ms4vri+ePl3PP9xcXn6Ybz8+PV9ffZxur66m
ny4uP9x8+ve7ZtZFN+3ttAEm4RAGdFyVNCHZ4vYfhxCASRJ2IEvRDp/Np/DP4RETVRKVlguh
hTPIR5Si0HmhUTzPEp4xByUypWVBtZCqg3J5V66FXHYQHUtGYLlZJOBHqYkySBD/T5OF3c2X
yXF7evvabUggxZJlJeyHSnOHdcZ1ybJVSSQIgKdc317MgUu7njTnCYM9VHqyO05e9yfDuJWY
oCRppPPuHQYuSeHKJig4iFmRRDv0IYtIkWi7GAQcC6UzkrLbdz+/7l+3sN3t+tSDWvGcIkvL
heL3ZXpXsMKRrws1g6lOOuSaaBqXvRGFYgkPumdSgFl0jzFZMZAdjLMIw5IkSY+8g9odgu2c
HN8+Hv85nrZfuh1asIxJTu1uq1isOyYuhme/M6qNvD31CEVKeA+meIoRlTFn0iz5YThDqrih
HEUM5olJFoJ+1Jy9oSonUjGcnWXFgmIRGTX/abJ9fZ7sP/Ukgw1KQSF4Pat0xGx2gILeLZUo
JGWVKg2mtRRsxTKtms3Quy/gk7D90JwuwV4Y7IXDKhNl/GjsIrVb0GoiAHOYQ4Qc08ZqFIdF
9zh5LPgiLiVTMHMKxuOyaSU0WG43PJeMpbkGvhnzx/YIViIpMk3kA2Y2FY1jMfUgKmDMAFzp
oRUkzYvf9Ob45+QES5xsYLnH0+Z0nGyenvZvr6fd6+eeaGFASajly60bbhe64lL30GYL0ZcK
VAiLEZQpZcg1SmT8o9JEK1wuiqOy/oE3sm8uaTFRiP6AiErADWVZAdv54bFk96A9mItVHgfL
swcy72Z51FqOoAagImQYXEtCewjDGESXJJ3OO5iMMfDmbEGDhCvtmrIvlNYLLatfHL+0bIUj
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
fgEA

--qDbXVdCdHGoSgWSk--
