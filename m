Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7V6QPWQKGQEVASNC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A2CD48CB
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 22:01:04 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id f2sf8289056pfk.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 13:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570824063; cv=pass;
        d=google.com; s=arc-20160816;
        b=P2WRfBM3JJxmOYZvA8lfXLkNCs7x8+E1G/soMijo7vEzo161lJTVNKfgKg7gPI1jIH
         C+WkI3EcGkd/4ggygKsymRCN1YO3gjgT6z/cwJg+IwtVfzn48MQO4PWaGSw7uvSU8jGL
         xgJhCzw7+ybHCWU/zWfKDkJSksFdhK2JLigNPilUJSupQuELvbPewXGb8xX1907cOnE5
         EFn/lnwfOnqe+5m4e19v2iCxZbtFYoVFCLi7DHHVwzx8y/x8vlPoZEljppD9UH3eqeAm
         W8AJFJ9P+X6vN2aGYuks3Hti1Uw7mGfR18vgK/ZnZA+AsSOSrLeKq7UhUasUMpyd5LRs
         HRqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=O7FbROOH0+cv0MXT0jXTfPns3OoQdjseIZup6C/BAa8=;
        b=vBIX9ZzZOXdJpnwSuBbP08epJU+DFxz90kU8EBBlG4oOYmZJKNUMVMB3tUcurqcSbk
         PKnR1gEOQSqpN7vJmz66DilELPkhoXexqfKCo8nTzYW3hydqY9eq2h5piPo+1KZKH72S
         aMws6t6C3ioAbyAPntZcGRh3jUDfd14ftZ0WHCKpC0rGKHesJr9FnCQkgQAcAHYvtwnX
         9igsW9MQQj+X0qseRYOKRoY0H0adoAhCXjgXt/MgGbBGrK1MOxeSjQTX8TpexHaNpbLc
         JxfkDxfT02mxBbASd32mPlLFetLHvZTxyn1VmxlsG59iVKTWs6gjScsMYlSykbzY/qhQ
         AMSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sM5Igqr7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O7FbROOH0+cv0MXT0jXTfPns3OoQdjseIZup6C/BAa8=;
        b=mU8KvYSLSoIt+e25HDOiDW21zvLR38mXzc+I13pkbU/cU/JjZ/Vq32CwJtyabGD0gd
         thHERBP9xG1QuqjUxfa1Jv1ABnuMJyZg7dHIJLrydaSEGfv+CkBUrtsrheTcSHCBqrl2
         GpqyXSw4FSkh8HOcixOr+maSDlXZai5jl7xP5MDCQbtkyHYxNQBIuWJKi3UJgiEis9FU
         nT2vBl2GxIgWz2xiY9gO3vmeaRPo2y/uIsDFwy00QL7N8bIQ9zFLS+ScT1gcKTb5aak3
         wTceqqUwNqu0kkp0QRCwRV8WB8xR5XBMpMuXv/aJ6Lvk2TBd5idxgtyW44Wm9XaefVoG
         hf9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O7FbROOH0+cv0MXT0jXTfPns3OoQdjseIZup6C/BAa8=;
        b=Jvdb3cWSFByM5tJ7H1AWSWhosc5OBapfXKMSz/BkO/f2k8u1/BrU/4KGXQXOIjILfD
         gALcdwJyqNJzRN14PxNZyMkybhpltpIGp5kTNMmzbVoLzXkW//OhnlTXuIaFSIXTvR1R
         Mi5W6Iao+5Ug5zJ18/E+EX1O+sKOlXHeI4Xjx+JGJvMynnzTVSjjPaIqwb60wNt4q7LI
         jJx3+hKOmvE1VoDMRrivO6uwIPeXCMoRaCVcUQxy9aOckl92KAzUFlPkjjObCW5sb71T
         0EuZibcKFcrUZMpIF17kakLV2Fx2o2nstvlRQcFKHVsJsZS3IcVK2u6d+nOVhihV7E8D
         Tdaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O7FbROOH0+cv0MXT0jXTfPns3OoQdjseIZup6C/BAa8=;
        b=p9wMixw47SNVFh5d9RMoHaUy/tWElm/fyQAXZrNJXhQsLDUJ3HQJE31Z16od1zT2aq
         NEhXrehW92lrIBUT2SMtSLwYs2weidLsTZbAu/s+lcL+eef9dVXQzHTjoqezqivG3WbT
         cekILHyyO7HNcalGTW0zylyfFy3gZBreuG4xNYAoaQr61aORNZLGRYrHpqF90KPmcs70
         7crRWn0KyDTQe7ihH0RxB/LfaqcAkS/JBnXyMeaLn9b/F7wZeVAX9zbnIVHE8+n1HRXp
         bKMnsey1wimTdNpfj+1mBmH3I2D5qO+Y8uvZYfsYIyGKOgT2ssVTfLCr3ZimsJIUVLee
         bZGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWSt68RRqZ2ySSHS/iDNn7WqxKuLzr7lSD9J5cSOmvre05H4WM8
	mY5N07C+GHT2yaGRkZqgWsE=
X-Google-Smtp-Source: APXvYqzmVDPLg5Hv+4PcAqNN9kfac7p55WOOrd156KONbHc/NG73Qhbc7BdLpYoMraZv+lFW+loTfA==
X-Received: by 2002:a63:5608:: with SMTP id k8mr19190663pgb.37.1570824063048;
        Fri, 11 Oct 2019 13:01:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2984:: with SMTP id p126ls1499890pgp.2.gmail; Fri, 11
 Oct 2019 13:01:02 -0700 (PDT)
X-Received: by 2002:a62:5ec6:: with SMTP id s189mr18491359pfb.30.1570824062664;
        Fri, 11 Oct 2019 13:01:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570824062; cv=none;
        d=google.com; s=arc-20160816;
        b=sHMd/B6cYtv66YkidLlrXaTS5HJ8Ik6HZYUkwrM56EpvLW1uCM3GcauxWkFw89u/+u
         Q742Ox8oDKzCtRlELDEp0kYP6O++nXLHwb+Y0flosnB0mErLfFll25Oa+JBkd6mFkecT
         XsC89PFJ3Vatdn8hJascdSmKA/mTpk5yBodXn3oh6Ya6FhgsfCTQAdswsZGxXzaCyHNJ
         2E4Py8ElliU3t0e9ryCxs72hntgRYrxKqnmyDOg1L7Kb4GVdK0r9Q1pSECpRs2VrFkq9
         zak81rtbOwmswYWtaNTba/7sSNsYmChuCDQmbthvRj7Uf6bIo3p8UdGdU9ANI8itWTtR
         aJIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=toAIiTeq6pt/SiPP0w+70mSR9L4pUr64hdI9a0bXbNk=;
        b=pmpNjg/P+j++gyHi3uoLlxeBh7Frj/3I0csuo4IkXdmw+1jTRo56t6+nblb3MQvJFV
         npN3fjcdJub1pKR6HBsMJdxdaV+r5LsYNIPeyd421UZ9RLMO058/io42GPpM9Y2WYqr9
         VdFYtBji/SBuLAw3qeqmq4F86gnn3HqN3T+xwvZf1AmPIUXl2jh0SRbqqEw2zHRuDT3L
         JQytBNgln937xAcapBcfYTxJHy8urxgu49t0Cp1m0T5kuKHyU1T4kmKfeoYe0ey+EvVd
         mcdj9zld5cLJ0lhINJP6qC/68g4wbBt7y0HhUHAGeYYHZW4CV+4cIGgRfR6JS5/dC2AI
         X3Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sM5Igqr7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id d5si1029906pls.5.2019.10.11.13.01.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 13:01:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Received: by mail-ot1-x32d.google.com with SMTP id y39so8998717ota.7
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 13:01:02 -0700 (PDT)
X-Received: by 2002:a9d:7c92:: with SMTP id q18mr7028588otn.216.1570824061796;
        Fri, 11 Oct 2019 13:01:01 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s66sm3030251otb.65.2019.10.11.13.01.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 11 Oct 2019 13:01:01 -0700 (PDT)
Date: Fri, 11 Oct 2019 13:00:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [ast:btf_vmlinux 1/7] net/mac80211/./trace.h:253:1: warning:
 redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature
Message-ID: <20191011200059.GA30072@ubuntu-m2-xlarge-x86>
References: <201910032202.OVnkgkNP%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910032202.OVnkgkNP%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sM5Igqr7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Oct 03, 2019 at 10:48:31PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Alexei Starovoitov <ast@kernel.org>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git btf_vmlinux
> head:   cc9b0a180111f856b93a805fdfc2fb288c41fab2
> commit: 82b70116b6ba453e1dda06c7126e100d594b8e0a [1/7] bpf: add typecast to help vmlinux BTF generation
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 38ac6bdb83a9bb76c109901960c20d1714339891)
> reproduce:
>         git checkout 82b70116b6ba453e1dda06c7126e100d594b8e0a
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
> >> net/mac80211/./trace.h:253:1: warning: redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_only_evt, drv_start,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:54:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    net/mac80211/./trace.h:191:1: note: previous definition is here
>    DEFINE_EVENT(local_only_evt, drv_return_void,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:98:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
> >> net/mac80211/./trace.h:263:1: warning: redefinition of typedef 'btf_trace_local_u32_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_u32_evt, drv_get_et_sset_count,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:70:1: note: expanded from here
>    btf_trace_local_u32_evt
>    ^
>    net/mac80211/./trace.h:258:1: note: previous definition is here
>    DEFINE_EVENT(local_u32_evt, drv_get_et_strings,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:62:1: note: expanded from here
>    btf_trace_local_u32_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:268:1: warning: redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_only_evt, drv_get_et_stats,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:78:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    net/mac80211/./trace.h:253:1: note: previous definition is here
>    DEFINE_EVENT(local_only_evt, drv_start,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:54:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:273:1: warning: redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_only_evt, drv_suspend,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:86:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    net/mac80211/./trace.h:268:1: note: previous definition is here
>    DEFINE_EVENT(local_only_evt, drv_get_et_stats,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:78:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:278:1: warning: redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_only_evt, drv_resume,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:94:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    net/mac80211/./trace.h:273:1: note: previous definition is here
>    DEFINE_EVENT(local_only_evt, drv_suspend,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:86:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:297:1: warning: redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_only_evt, drv_stop,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:114:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    net/mac80211/./trace.h:278:1: note: previous definition is here
>    DEFINE_EVENT(local_only_evt, drv_resume,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:94:1: note: expanded from here
>    btf_trace_local_only_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
> >> net/mac80211/./trace.h:336:1: warning: redefinition of typedef 'btf_trace_local_sdata_addr_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_sdata_addr_evt, drv_remove_interface,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:12:1: note: expanded from here
>    btf_trace_local_sdata_addr_evt
>    ^
>    net/mac80211/./trace.h:302:1: note: previous definition is here
>    DEFINE_EVENT(local_sdata_addr_evt, drv_add_interface,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:122:1: note: expanded from here
>    btf_trace_local_sdata_addr_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
> >> net/mac80211/./trace.h:640:1: warning: redefinition of typedef 'btf_trace_local_sdata_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_sdata_evt, drv_cancel_hw_scan,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:25:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    net/mac80211/./trace.h:634:1: note: previous definition is here
>    DEFINE_EVENT(local_sdata_evt, drv_hw_scan,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:17:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:646:1: warning: redefinition of typedef 'btf_trace_local_sdata_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_sdata_evt, drv_sched_scan_start,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:33:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    net/mac80211/./trace.h:640:1: note: previous definition is here
>    DEFINE_EVENT(local_sdata_evt, drv_cancel_hw_scan,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:25:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:652:1: warning: redefinition of typedef 'btf_trace_local_sdata_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_sdata_evt, drv_sched_scan_stop,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:41:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    net/mac80211/./trace.h:646:1: note: previous definition is here
>    DEFINE_EVENT(local_sdata_evt, drv_sched_scan_start,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:33:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:681:1: warning: redefinition of typedef 'btf_trace_local_sdata_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_sdata_evt, drv_sw_scan_complete,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:64:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    net/mac80211/./trace.h:652:1: note: previous definition is here
>    DEFINE_EVENT(local_sdata_evt, drv_sched_scan_stop,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:41:1: note: expanded from here
>    btf_trace_local_sdata_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:740:1: warning: redefinition of typedef 'btf_trace_local_u32_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_u32_evt, drv_set_frag_threshold,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:96:1: note: expanded from here
>    btf_trace_local_u32_evt
>    ^
>    net/mac80211/./trace.h:263:1: note: previous definition is here
>    DEFINE_EVENT(local_u32_evt, drv_get_et_sset_count,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:70:1: note: expanded from here
>    btf_trace_local_u32_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:745:1: warning: redefinition of typedef 'btf_trace_local_u32_evt' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(local_u32_evt, drv_set_rts_threshold,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:104:1: note: expanded from here
>    btf_trace_local_u32_evt
>    ^
>    net/mac80211/./trace.h:740:1: note: previous definition is here
>    DEFINE_EVENT(local_u32_evt, drv_set_frag_threshold,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:96:1: note: expanded from here
>    btf_trace_local_u32_evt
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
> >> net/mac80211/./trace.h:921:1: warning: redefinition of typedef 'btf_trace_sta_event' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(sta_event, drv_sta_add,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:75:1: note: expanded from here
>    btf_trace_sta_event
>    ^
>    net/mac80211/./trace.h:914:1: note: previous definition is here
>    DEFINE_EVENT(sta_event, drv_sta_statistics,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:67:1: note: expanded from here
>    btf_trace_sta_event
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:928:1: warning: redefinition of typedef 'btf_trace_sta_event' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(sta_event, drv_sta_remove,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:83:1: note: expanded from here
>    btf_trace_sta_event
>    ^
>    net/mac80211/./trace.h:921:1: note: previous definition is here
>    DEFINE_EVENT(sta_event, drv_sta_add,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:75:1: note: expanded from here
>    btf_trace_sta_event
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:935:1: warning: redefinition of typedef 'btf_trace_sta_event' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(sta_event, drv_sta_pre_rcu_remove,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:91:1: note: expanded from here
>    btf_trace_sta_event
>    ^
>    net/mac80211/./trace.h:928:1: note: previous definition is here
>    DEFINE_EVENT(sta_event, drv_sta_remove,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:83:1: note: expanded from here
>    btf_trace_sta_event
>    ^
>    In file included from net/mac80211/trace.c:11:
>    In file included from net/mac80211/./trace.h:2717:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:110:
>    net/mac80211/./trace.h:942:1: warning: redefinition of typedef 'btf_trace_sta_event' is a C11 feature [-Wtypedef-redefinition]
>    DEFINE_EVENT(sta_event, drv_sync_rx_queues,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
>            ^
>    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
>    typedef void (*btf_trace_##template)(void *__data, proto);              \
>                   ^
>    <scratch space>:99:1: note: expanded from here
>    btf_trace_sta_event
>    ^
>    net/mac80211/./trace.h:935:1: note: previous definition is here
>    DEFINE_EVENT(sta_event, drv_sta_pre_rcu_remove,
>    ^
>    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
>            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
> ..
> 
> vim +/btf_trace_local_only_evt +253 net/mac80211/./trace.h
> 
> 4efc76bdbf9bfd net/mac80211/driver-trace.h Johannes Berg  2010-06-10  252  
> ba99d93b3d7bb3 net/mac80211/driver-trace.h Johannes Berg  2011-01-26 @253  DEFINE_EVENT(local_only_evt, drv_start,
> 4efc76bdbf9bfd net/mac80211/driver-trace.h Johannes Berg  2010-06-10  254  	TP_PROTO(struct ieee80211_local *local),
> ba99d93b3d7bb3 net/mac80211/driver-trace.h Johannes Berg  2011-01-26  255  	TP_ARGS(local)
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  256  );
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  257  
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  258  DEFINE_EVENT(local_u32_evt, drv_get_et_strings,
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  259  	     TP_PROTO(struct ieee80211_local *local, u32 sset),
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  260  	     TP_ARGS(local, sset)
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  261  );
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  262  
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23 @263  DEFINE_EVENT(local_u32_evt, drv_get_et_sset_count,
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  264  	     TP_PROTO(struct ieee80211_local *local, u32 sset),
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  265  	     TP_ARGS(local, sset)
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  266  );
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  267  
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  268  DEFINE_EVENT(local_only_evt, drv_get_et_stats,
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  269  	     TP_PROTO(struct ieee80211_local *local),
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  270  	     TP_ARGS(local)
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  271  );
> e352114fd62f6d net/mac80211/driver-trace.h Ben Greear     2012-04-23  272  
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  273  DEFINE_EVENT(local_only_evt, drv_suspend,
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  274  	TP_PROTO(struct ieee80211_local *local),
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  275  	TP_ARGS(local)
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  276  );
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  277  
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  278  DEFINE_EVENT(local_only_evt, drv_resume,
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  279  	TP_PROTO(struct ieee80211_local *local),
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  280  	TP_ARGS(local)
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  281  );
> eecc48000afe2c net/mac80211/driver-trace.h Johannes Berg  2011-05-04  282  
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  283  TRACE_EVENT(drv_set_wakeup,
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  284  	TP_PROTO(struct ieee80211_local *local, bool enabled),
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  285  	TP_ARGS(local, enabled),
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  286  	TP_STRUCT__entry(
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  287  		LOCAL_ENTRY
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  288  		__field(bool, enabled)
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  289  	),
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  290  	TP_fast_assign(
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  291  		LOCAL_ASSIGN;
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  292  		__entry->enabled = enabled;
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  293  	),
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  294  	TP_printk(LOCAL_PR_FMT " enabled:%d", LOCAL_PR_ARG, __entry->enabled)
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  295  );
> 6d52563f2bc217 net/mac80211/driver-trace.h Johannes Berg  2012-04-04  296  
> ba99d93b3d7bb3 net/mac80211/driver-trace.h Johannes Berg  2011-01-26  297  DEFINE_EVENT(local_only_evt, drv_stop,
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  298  	TP_PROTO(struct ieee80211_local *local),
> ba99d93b3d7bb3 net/mac80211/driver-trace.h Johannes Berg  2011-01-26  299  	TP_ARGS(local)
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  300  );
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  301  
> 92ddc111c4bc72 net/mac80211/driver-trace.h Luciano Coelho 2011-05-09  302  DEFINE_EVENT(local_sdata_addr_evt, drv_add_interface,
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  303  	TP_PROTO(struct ieee80211_local *local,
> 4efc76bdbf9bfd net/mac80211/driver-trace.h Johannes Berg  2010-06-10  304  		 struct ieee80211_sub_if_data *sdata),
> 92ddc111c4bc72 net/mac80211/driver-trace.h Luciano Coelho 2011-05-09  305  	TP_ARGS(local, sdata)
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  306  );
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  307  
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  308  TRACE_EVENT(drv_change_interface,
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  309  	TP_PROTO(struct ieee80211_local *local,
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  310  		 struct ieee80211_sub_if_data *sdata,
> 2ca27bcff7127d net/mac80211/driver-trace.h Johannes Berg  2010-09-16  311  		 enum nl80211_iftype type, bool p2p),
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  312  
> 2ca27bcff7127d net/mac80211/driver-trace.h Johannes Berg  2010-09-16  313  	TP_ARGS(local, sdata, type, p2p),
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  314  
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  315  	TP_STRUCT__entry(
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  316  		LOCAL_ENTRY
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  317  		VIF_ENTRY
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  318  		__field(u32, new_type)
> 2ca27bcff7127d net/mac80211/driver-trace.h Johannes Berg  2010-09-16  319  		__field(bool, new_p2p)
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  320  	),
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  321  
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  322  	TP_fast_assign(
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  323  		LOCAL_ASSIGN;
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  324  		VIF_ASSIGN;
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  325  		__entry->new_type = type;
> 2ca27bcff7127d net/mac80211/driver-trace.h Johannes Berg  2010-09-16  326  		__entry->new_p2p = p2p;
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  327  	),
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  328  
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  329  	TP_printk(
> 2ca27bcff7127d net/mac80211/driver-trace.h Johannes Berg  2010-09-16  330  		LOCAL_PR_FMT  VIF_PR_FMT " new type:%d%s",
> 2ca27bcff7127d net/mac80211/driver-trace.h Johannes Berg  2010-09-16  331  		LOCAL_PR_ARG, VIF_PR_ARG, __entry->new_type,
> 2ca27bcff7127d net/mac80211/driver-trace.h Johannes Berg  2010-09-16  332  		__entry->new_p2p ? "/p2p" : ""
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  333  	)
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  334  );
> 34d4bc4d41d282 net/mac80211/driver-trace.h Johannes Berg  2010-08-27  335  
> 92ddc111c4bc72 net/mac80211/driver-trace.h Luciano Coelho 2011-05-09 @336  DEFINE_EVENT(local_sdata_addr_evt, drv_remove_interface,
> 92ddc111c4bc72 net/mac80211/driver-trace.h Luciano Coelho 2011-05-09  337  	TP_PROTO(struct ieee80211_local *local,
> 92ddc111c4bc72 net/mac80211/driver-trace.h Luciano Coelho 2011-05-09  338  		 struct ieee80211_sub_if_data *sdata),
> 92ddc111c4bc72 net/mac80211/driver-trace.h Luciano Coelho 2011-05-09  339  	TP_ARGS(local, sdata)
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  340  );
> 0a2b8bb24d4eb6 net/mac80211/driver-trace.h Johannes Berg  2009-07-07  341  
> 
> :::::: The code at line 253 was first introduced by commit
> :::::: ba99d93b3d7bb3a6406bc86f41ab863895968a0f mac80211: use DECLARE_EVENT_CLASS
> 
> :::::: TO: Johannes Berg <johannes.berg@intel.com>
> :::::: CC: John W. Linville <linville@tuxdriver.com>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910032202.OVnkgkNP%25lkp%40intel.com.

Hi Alexei,

The 0day team has been running clang builds for us for a little bit and
this one popped up. It looks like there are certain tracepoints that use
the same template so clang warns because there are two identical
typedefs. Is there any way to improve this so we don't get noisey
builds? This still occurs as of your latest btf_vmlinux branch even
though this report is from a week ago.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011200059.GA30072%40ubuntu-m2-xlarge-x86.
