Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWMF2X3AKGQETXLSRWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D691EA977
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 20:03:06 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 66sf4375339otf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 11:03:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591034585; cv=pass;
        d=google.com; s=arc-20160816;
        b=XyImYoqxxx1EZNc8k8JtYAmLy9FPIfk4D0Xd+D4EsX9rDduqlgGavv49D1m+NcVC1f
         GFnPbW5Q04fctPDIPU3wu19MZbpBSUbK2eoPcKzE+cEn3D4RZ+8HhKKYmMTyZ8DDkzze
         fC6S41o/bIdDQQnipWJPcfONIVTN1C7TnyQWrNXTrKsoc3wYa9hYejg4OLeyRY0w5jHa
         jmAaFFWOPlTM1+MsjyK/pKyjL2l/YbOZt3s5TQ47boHhdOZnZdY5RLTbIVaaxA96+3Tm
         Ltjfk3gLf8pE8JgfJnKI3DC5pbW3dKBsvmgXh9FkEwFqMv9+/wjDzJteQLyGICdmE7/9
         jowQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tDV08bmBRMAqpSDXswYsEB/bCU6bDaTTUJZBrfuRfx4=;
        b=amzAbonHBgNLKeqFoQoj1/A7X6z+Ew/B52sFeeN4QcFT3XJ4L0ieHLVommvWudLgOa
         RXOuOF2pRjCRghwnUQqPNtidYno7me+usw1KFZk7sW30SwB456m1qekLJhKoHpXZtk+V
         sdehUJLh1ZmegV29nbozKP7xqvpjTd9zDrsWiNnjRjh947qARwFkzIn+lbTP7cqgd48l
         n6GIiBxjKCxzX5mZGjy3hs/uZNrdmlNaZge0NNkI1XlBqZvBjcOIrisoZ1+vTFR3qDai
         NyU9QhU7R07STUH03q6blMBYiyH2x5mXrLYs0ZyvVa6qeI3WKXoItua46v5yPLlV7W7a
         R/Cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aPQ27MW8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDV08bmBRMAqpSDXswYsEB/bCU6bDaTTUJZBrfuRfx4=;
        b=gmYBouzC9GPFZZdHNNcwLo/7lwRQ1gC2YBDG+0luB4hlbxudct5M7f+cZpavZToVTB
         3k8zwpRpd9b5h6lvX2aowEx44H6YCF4IBaIrfRH5fwt9r7/L8iXJmKOeR/7IBxOh8XNE
         zJ1iTB5zzGTlMf1GQGyxj0WTct2vqt67MgWcxDsIMTNlQJUxcTY1WhKo7V7tsDT+2c0k
         JGDvRsTlxIv9SJFNMt6myG7g2Fmb0SThaoYuQDs1Uu7HzLJBcTagwmcq2RVTEoCLY8du
         i44BGiwP/fchXuydTaUTqgSQGRZsjdHWlVcQ+nanAEcdza3v9+YVv1SOaqxjzVzjAUOL
         5AYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDV08bmBRMAqpSDXswYsEB/bCU6bDaTTUJZBrfuRfx4=;
        b=j7Vk9qd8ICPK5upsU004ORcNx7iSmQRCzvefM3LQ9sE16CnKVolApvtKovnYx1iJsS
         jh4YWTJVf3MgtLyZl+34IFDnJXg78CHypKpzf3Sf+qh0aQTEnIO818OLXnNgKc0jFWJi
         Muw6W0AnjEAvHNyVomaOHwxiCNAtkb1SMfhWeVqszv1FaA8gWrtw/kLZXhPt9u3W/eB1
         2R6w3AJURwyWy4rHR0eh6n21QHulgSsHZ8ayEthcObHeJpXks4/Fd9P69Ii7IdrPdQx6
         wGI/BO3+d/JdvbCNxeEK9luzvALXJQmQ+QJZbdxXyfC8LgEtoyI90KQ+rAdoXRZmYOWi
         uIpQ==
X-Gm-Message-State: AOAM532tsvbLoIM/ht5sIajW5Xb0YAC5xm2q8YkCDtp3DxTYeDcooEPC
	sUCrKVLDsOaDzTXtF8C8TwY=
X-Google-Smtp-Source: ABdhPJydu5olMzuGiirFbelpyT0cmLEDF4dixi4WuTmcdU6O8gsy3NjvHcQoXYtJOnFcUdHeJGltew==
X-Received: by 2002:aca:1110:: with SMTP id 16mr383877oir.98.1591034585524;
        Mon, 01 Jun 2020 11:03:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fc3:: with SMTP id d186ls1006554oib.1.gmail; Mon, 01
 Jun 2020 11:03:05 -0700 (PDT)
X-Received: by 2002:aca:c6ca:: with SMTP id w193mr360774oif.81.1591034585080;
        Mon, 01 Jun 2020 11:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591034585; cv=none;
        d=google.com; s=arc-20160816;
        b=WzxEMWDdhfCO7ODggZ6xU+nWCFLCVg2hC0jCWD+FgF4EynVRcI6+xNX0gOCpwd/VH8
         9pLA90l7f1uqdPf5YnrHCgO06ywst6n1sQ/IdyRu8O/BpDTdqkkAQZeD+8wNFF/iv64C
         OnPAfnE29/O9tSkNvvYKmdhKU0KbtXdMfssLmamBptCBQNDhGH8TKGyltIzcNBkBiTh6
         rUCqrqqtCH6UTSeOEIh1hJNjJLAlUy8SarehjwexXq/Kv/h0QtUfi7IdCG/UaHgWiDsU
         uPQfH8eQvQcuYKfrq5OFwZYadSTdJS7hIqzQDCKV1A6k64kdxToMr/e09eFTr3PR3SiZ
         zXAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wVYayIPVNOeveIJv6WNGU7voIvnU+MlvFwDdxTllZWw=;
        b=oA0uspRETEmEGyOLyNRCRgJj+Prmcotlt/ZGHpNllI3tu0fSd0SmbJfS43e+dGyo+Y
         hK+jczLz/wVudoqID7jUn5qo4RVbzfa8iNATK6K9C2D0JnL+tydUqSOkF7gBD1dn19zW
         a4MoSVCEgPywPZkD/mR9z7S0VF1/o/hWqPgLm258QSPtAHLKhW6AjfjzeG8ay6Hy3GGr
         /RaGHdvP8pkozgJH6RNzz4L4JuRaHZAOATBuR45CbU2LrEwvlh5kxnPAQpZX+iBlrBzY
         mQefjo9wkvS115DqmC7vlXE/ROqi9sAvEDKKUIDVYaxBzk5ychnyIt36fdo3x8UtzPOn
         XHYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aPQ27MW8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id e69si9561oob.2.2020.06.01.11.03.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 11:03:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id r10so3844213pgv.8
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 11:03:05 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr20736822pgh.263.1591034584078;
 Mon, 01 Jun 2020 11:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <202006011945.SmpRQmd0%lkp@intel.com>
In-Reply-To: <202006011945.SmpRQmd0%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Jun 2020 11:02:52 -0700
Message-ID: <CAKwvOdm75T+gzjgd6yGUrou-xJMqBhaqa363YKcOJxLxPecnDw@mail.gmail.com>
Subject: Re: [linux-next:master 10017/14131] kernel/sched/cpuacct.c:350:3:
 error: invalid input size for constraint 'qi'
To: kbuild test robot <lkp@intel.com>
Cc: "Muchun, Song," <songmuchun@bytedance.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aPQ27MW8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Nevermind this failure, Clang doesn't support i386 yet (WIP)

On Mon, Jun 1, 2020 at 4:39 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   e7b08814b16b80a0bf76eeca16317f8c2ed23b8c
> commit: 12aa2587388de6697fd2e585ae6a90f70249540b [10017/14131] sched/cpuacct: Use __this_cpu_add() instead of this_cpu_ptr()
> config: i386-randconfig-a012-20200601 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install i386 cross compiling tool for clang build
>         # apt-get install binutils-i386-linux-gnu
>         git checkout 12aa2587388de6697fd2e585ae6a90f70249540b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> kernel/sched/cpuacct.c:350:3: error: invalid input size for constraint 'qi'
> __this_cpu_add(ca->cpuusage->usages[index], cputime);
> ^
> include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> raw_cpu_add(pcp, val);                                                     ^
> include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
> case 1: stem##1(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:35:1: note: expanded from here
> raw_cpu_add_1
> ^
> arch/x86/include/asm/percpu.h:401:34: note: expanded from macro 'raw_cpu_add_1'
> #define raw_cpu_add_1(pcp, val)         percpu_add_op(, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> >> kernel/sched/cpuacct.c:350:3: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> raw_cpu_add(pcp, val);                                                     ^
> include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
> case 2: stem##2(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:60:1: note: expanded from here
> raw_cpu_add_2
> ^
> arch/x86/include/asm/percpu.h:402:34: note: expanded from macro 'raw_cpu_add_2'
> #define raw_cpu_add_2(pcp, val)         percpu_add_op(, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> >> kernel/sched/cpuacct.c:350:3: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> raw_cpu_add(pcp, val);                                                     ^
> include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
> case 4: stem##4(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:85:1: note: expanded from here
> raw_cpu_add_4
> ^
> arch/x86/include/asm/percpu.h:403:34: note: expanded from macro 'raw_cpu_add_4'
> #define raw_cpu_add_4(pcp, val)         percpu_add_op(, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> kernel/sched/cpuacct.c:366:3: error: invalid input size for constraint 'qi'
> __this_cpu_add(ca->cpustat->cpustat[index], val);
> ^
> include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> raw_cpu_add(pcp, val);                                                     ^
> include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
> case 1: stem##1(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:113:1: note: expanded from here
> raw_cpu_add_1
> ^
> arch/x86/include/asm/percpu.h:401:34: note: expanded from macro 'raw_cpu_add_1'
> #define raw_cpu_add_1(pcp, val)         percpu_add_op(, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> kernel/sched/cpuacct.c:366:3: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> raw_cpu_add(pcp, val);                                                     ^
> include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
> case 2: stem##2(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:138:1: note: expanded from here
> raw_cpu_add_2
> ^
> arch/x86/include/asm/percpu.h:402:34: note: expanded from macro 'raw_cpu_add_2'
> #define raw_cpu_add_2(pcp, val)         percpu_add_op(, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> kernel/sched/cpuacct.c:366:3: error: invalid input size for constraint 'qi'
> include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> raw_cpu_add(pcp, val);                                                     ^
> include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> ^
> include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
> case 4: stem##4(variable, __VA_ARGS__);break;                                      ^
> <scratch space>:163:1: note: expanded from here
> raw_cpu_add_4
> ^
> arch/x86/include/asm/percpu.h:403:34: note: expanded from macro 'raw_cpu_add_4'
> #define raw_cpu_add_4(pcp, val)         percpu_add_op(, (pcp), val)
> ^
> arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> : "qi" ((pao_T__)(val)));                                                          ^
> 6 errors generated.
>
> vim +/qi +350 kernel/sched/cpuacct.c
>
>    332
>    333  /*
>    334   * charge this task's execution time to its accounting group.
>    335   *
>    336   * called with rq->lock held.
>    337   */
>    338  void cpuacct_charge(struct task_struct *tsk, u64 cputime)
>    339  {
>    340          struct cpuacct *ca;
>    341          int index = CPUACCT_STAT_SYSTEM;
>    342          struct pt_regs *regs = task_pt_regs(tsk);
>    343
>    344          if (regs && user_mode(regs))
>    345                  index = CPUACCT_STAT_USER;
>    346
>    347          rcu_read_lock();
>    348
>    349          for (ca = task_ca(tsk); ca; ca = parent_ca(ca))
>  > 350                  __this_cpu_add(ca->cpuusage->usages[index], cputime);
>    351
>    352          rcu_read_unlock();
>    353  }
>    354
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006011945.SmpRQmd0%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm75T%2Bgzjgd6yGUrou-xJMqBhaqa363YKcOJxLxPecnDw%40mail.gmail.com.
