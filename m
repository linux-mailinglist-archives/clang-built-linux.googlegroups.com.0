Return-Path: <clang-built-linux+bncBAABBM5J6P7AKGQEV2Z4QLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D122DE747
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 17:11:33 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id y2sf1863259pfr.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 08:11:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608307892; cv=pass;
        d=google.com; s=arc-20160816;
        b=aXptkWdB+vctZZ3xccLjzaOHI02gi49Upw0sQkacArmEXaB+ZvwovZ09gA0kD5Ux36
         9J8MHDw1LyHP529ZhKBosw8h7Barcha1z6vlu8eDb52rfatEq8p81PjpmoCTZIbScV39
         fsCs3GutoDFIvxDjcJE1W593pKZQ5jwugFt61XlNzHisLvM9GOk2ZrzQZ71zIZBGtBiQ
         xCqUkOHp2xKA6YZT+w1iv8CZjsPkCER3Z7IWLnVoq+49bMfokOPOgiKNBisSL0zCifc1
         3PLVDqaPlDYRgXd5kI5xFyBWcTni+q38v2Rvfg5vErmLsMJvVhbzYIWvCglzhgBlKXqr
         8tOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:to:from:cc
         :references:in-reply-to:mime-version:sender:dkim-signature;
        bh=w6EBvnax9iUwiwjWO1tCKNQzZvmcx7Z/idXWyZC4S4M=;
        b=JRQkAabTTaOmQiYOrtyTSB/3TcDLxx2LcaQsxnNDsBWW4sCDPVSepdK/UoyngvUnZy
         U/twhFWm00mD8teG//Gy6+39y5ckBM0+Jw2xBaDp6xOQ1oAYwCx+dd+09LArQZHV27i2
         nmoI0qRBOzoCnRbUDfErNk2KI89NzNShW8pLY+c2XsDurbFSuMS1o2raPts4d24KMReq
         ALj59CeLQ3juvdHJll2+UaR/6cm/xd//flcItsa5sHfT3MiXbbQ6jgMGrIu3OquuREFG
         BdS4jFpr3cgWhLT59IfvoTXGfGaEEC90UG2FRGAoKgjNnFwA22uZHiEstf5wL+abxdgv
         /IqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HVlymSYl;
       spf=pass (google.com: domain of atenart@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=atenart@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:cc:from:to:subject
         :message-id:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6EBvnax9iUwiwjWO1tCKNQzZvmcx7Z/idXWyZC4S4M=;
        b=VKEgeQEBpyTW8X9pW9qclhmijf+blsVoPsO7jU3ggO2+2wCRkcJtUgfsZcZ2ygwu5L
         6CFvdHdo4CFJGH0up1N+B4J1I6yBW46n/gLbzoQL4NYdnRgNbmNzBzminA+nODLIm61u
         AyTTdtgIveWfpANxakW/Fg4d8SsVBljwZcP5zZZrEQh2YHA3QFE9XvlT8c266OagdrB4
         Coa0U0DfAfbdfsXoXGTM85QRqdQdX5OqiPf9KBUNko1XKWZnLAlRacycACfWC4AaB1sc
         pbleUZnFYEH6DgT/YaDZXL5kgTAkNTCVKFEk3VSfLsE2Py9Hu3IdGGi9fzq/Z+GYzRlp
         5lmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:cc
         :from:to:subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6EBvnax9iUwiwjWO1tCKNQzZvmcx7Z/idXWyZC4S4M=;
        b=jo5+PvIvDgx3CbgBB2lFiKTaTibviZXLHGgnh9doOuzAF4zO7TVwl67G7pXW7iEf2o
         PD2/CnT3eUVQyysZJJOvGsZmlGoz10EH50RKTxepPuJYEB3DO0Mo34NcjYBz3o6v3yml
         tlyWzTfUbFfFibxpSZZQq+7V4PuHdTHR9LrpYf3xZ6qh5tpXBHJYL+mbDvJQNy83586A
         3wZ+3BC3x+CN5Q7tYLIfw2MbkryUwK/JifDbiW3e78Ovn/QnbfuTPwjfMPzmjdCgFaKE
         Z3fsm0Z8TU+Okk7pefmRHGPu4Yv/6L+pohaoTJVXMWTihhGRgHFaFrZwgRu74EQZZWoo
         0ubg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O9f5c8I1y4ooLOEIc/bFu++HzZesO+PUFTpf0gZAPawy+epzA
	i61aPMprch4RBrbouiy9Qyc=
X-Google-Smtp-Source: ABdhPJyE3wEptPfOuFhCrEktuyWHfTcwxDrAr4KxsSjwgHrturbTR1PzM5/COsiKcguzERkGnmBcqw==
X-Received: by 2002:a65:5c47:: with SMTP id v7mr4746450pgr.409.1608307892079;
        Fri, 18 Dec 2020 08:11:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls12235123pfi.3.gmail; Fri, 18 Dec
 2020 08:11:31 -0800 (PST)
X-Received: by 2002:a65:4c4b:: with SMTP id l11mr776638pgr.177.1608307891466;
        Fri, 18 Dec 2020 08:11:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608307891; cv=none;
        d=google.com; s=arc-20160816;
        b=TsZhCmgQiVuIgdFhPsPjD84auDAAgrS/AQVcGZNAWNw8jIrN5n/o64gcU1MgOnaDUN
         ZYa0rbT2u5zTLOPc6G42poAA2N445prsjUWX8FQvGn/is52Jn8u9dy3LGa4pjYzw5kfS
         D8G9OkK9+Cc/KPCNRWnzj+XuoQipjQ9mzahUTvn4BdSuZ+0jGoP1HJhmppb2JNekJLjr
         tqs1cY0QLeAxnarvffjoPb+AGhksZmFbrr+sLy4n/XZC11jcF0jDHhu08oXUR4rq50C4
         EI2C3pu/DpTk156+SZMxkJ47dVpaU3IGjECbxPyjTeQ2LPopsUYkiNMwDclDWcEYh9pu
         Wx7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:to:from:cc:references:in-reply-to
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=ir/csCbpBcq/E+5hKY7ci8V6CfpkICu3kkUzaJ/rEHg=;
        b=b+z7rfnB1PeBoV5ly/azgn5yYFBez08x3vqHyf+2QsMpdqt2H+9y+0yCdQaXM2OJL2
         zygfbPUmLkpCnUsajqxKYn83jfeRS5541rolHeRVq5IxNk0mNrZNaQ0N5HLJcigiMgkM
         wfg1rHd+GkDj1M5Om6ifY6jeqqwo78dMZQkMlKOguScLf/0JxLixV2Crro64RjwmOJiW
         cgrtJD/CQqQlHetShkI5Ld1Yi2YlQ5fdBJlRTVk79dVKXoHfSzplQe8PbWUyona1xsXC
         Iz+giqdtYai0HIj7TggxxcjSgI5a+S8cl5pwYe+3mBWRmGXGxk50dpF+7QYPAtg4KW2u
         JDcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HVlymSYl;
       spf=pass (google.com: domain of atenart@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=atenart@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q15si661741pfs.1.2020.12.18.08.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 08:11:31 -0800 (PST)
Received-SPF: pass (google.com: domain of atenart@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <202012182344.1bEcUiOJ-lkp@intel.com>
References: <20201217162521.1134496-2-atenart@kernel.org> <202012182344.1bEcUiOJ-lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, netdev@vger.kernel.org, pabeni@redhat.com
From: Antoine Tenart <atenart@kernel.org>
To: davem@davemloft.net, kernel test robot <lkp@intel.com>, kuba@kernel.org
Subject: Re: [PATCH net 1/4] net-sysfs: take the rtnl lock when storing xps_cpus
Message-ID: <160830788823.3591.10049543791193131034@kwain.local>
Date: Fri, 18 Dec 2020 17:11:28 +0100
X-Original-Sender: atenart@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HVlymSYl;       spf=pass
 (google.com: domain of atenart@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=atenart@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

That build issue seems unrelated to the patch. The series as a whole
builds fine according to the same report, and this code is not modified
by later patches.

It looks a lot like this report from yesterday:
https://www.spinics.net/lists/netdev/msg709132.html

Which also seemed unrelated to the changes:
https://www.spinics.net/lists/netdev/msg709264.html

Thanks!
Antoine

Quoting kernel test robot (2020-12-18 16:27:46)
> Hi Antoine,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on net/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Antoine-Tenart/net-sysfs-fix-race-conditions-in-the-xps-code/20201218-002852
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 3ae32c07815a24ae12de2e7838d9d429ba31e5e0
> config: riscv-randconfig-r014-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/f989c3dcbe4d9abd1c6c48b34f08c6c0cd9d44b3
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Antoine-Tenart/net-sysfs-fix-race-conditions-in-the-xps-code/20201218-002852
>         git checkout f989c3dcbe4d9abd1c6c48b34f08c6c0cd9d44b3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Note: the linux-review/Antoine-Tenart/net-sysfs-fix-race-conditions-in-the-xps-code/20201218-002852 HEAD 563d144b47845dea594b409ecf22914b9797cd1e builds fine.
>       It only hurts bisectibility.
> 
> All errors (new ones prefixed by >>):
> 
>    /tmp/ics932s401-422897.s: Assembler messages:
> >> /tmp/ics932s401-422897.s:260: Error: unrecognized opcode `zext.b a1,s11'
>    /tmp/ics932s401-422897.s:362: Error: unrecognized opcode `zext.b a1,s11'
>    /tmp/ics932s401-422897.s:518: Error: unrecognized opcode `zext.b a1,s11'
>    /tmp/ics932s401-422897.s:637: Error: unrecognized opcode `zext.b a1,s11'
>    /tmp/ics932s401-422897.s:774: Error: unrecognized opcode `zext.b a1,s11'
>    /tmp/ics932s401-422897.s:893: Error: unrecognized opcode `zext.b a1,s11'
>    /tmp/ics932s401-422897.s:1021: Error: unrecognized opcode `zext.b a1,s11'
> >> /tmp/ics932s401-422897.s:1180: Error: unrecognized opcode `zext.b a1,s2'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160830788823.3591.10049543791193131034%40kwain.local.
