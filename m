Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW5KR7WQKGQEFMIV7XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B58CD596A
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 03:54:37 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id z24sf7070919otq.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 18:54:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571018076; cv=pass;
        d=google.com; s=arc-20160816;
        b=yMzTfimEk0hyp8CBeJn6Q2KbxnJFia8AKnHirrUoSR3VmC94kVFTeGc8H6ZnWZHPaW
         YOLCiwcWauQIqCHZTzU7IiGoGN0Z5s4Oc/lJFb0Tb3Wn5eHJM5eZveZMungUHfGewpKv
         m2gd20w8YQ6OKWQyoWfDPoVH5z+MujdCUmStiiX7uPc3NVsNafjo1Dq+oHkSqjBKmbOH
         oeyYJ01dIrybhC8ORwboc55cakV+h2tujTwojA0HH5R/rsITdkpd361sH+aLNKkbJY0x
         FJnvUkgNRhg3AylGcdLMo1+9kCN9MhoTz9yD6IiwcaIUdShzQYy3lZH4pioUl4KDivel
         OXfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ai0TM6L6p55zylY5mhKV6psyoM2luhiLx288qm6NRk0=;
        b=YVi5RNd+zeOYEk3/++CN3u0pX9V9AO6jK2sGamOG4MJgk/BxG1CvG2RLr3NfnBIl4B
         5YPHU1jd4YH4DMRB/CZARRn9Cof6NDQ4yo5kTaxmKjP8pBYHVDrJTXryhKIIq/xMdQsJ
         R6MnrNgmxpdrsMVEq+k7X1+CmaMJMhwFvhoEGzlpU6MGr7aAotUY72olUFQx1o3lXIcW
         BXA/qGByaT+OV4TL2srTImVOh+cZWZWRcjNu/fUYRepAYxClZIndnTSGUgrvjWmm++Bu
         y+hSr3BwXmXuyXZUvYUEllo5lsUNkRYYRCCnX/m8p7wprBhb2w/H9BQ4mp9UEjrwGsTA
         0ZUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIUzDc2u;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ai0TM6L6p55zylY5mhKV6psyoM2luhiLx288qm6NRk0=;
        b=Rl5nWFnAnbQXUn79Gaszn2sUxD+JKp16rgU70gjKyj6WFb8DUoTwF4FuVyN6KpdlvW
         2ihcrIpE8CCwhk0OmIktFFErAzVNrFLoa9sv8BhismflVYhJbLLcfm84mKbbotqOZF39
         tOcfhoInahu6Lsp4FnEDhn0aE6wX4UHgmPIa1baj/4J9aZ6ypWilj/TVhkuHnFhCZ5Q8
         kfyJPcIh4ienPfkzBgbUT9akw56vVQKwTxw8qYkQqhts8U8NfugNqKVIb02hRF1n8LCE
         EOvNnt/ckML4G59DsdS41d7uFD60BEgBvTPdVzuEIYBgH5f0rije2X5ZV9OW5SR2/3HP
         mGuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ai0TM6L6p55zylY5mhKV6psyoM2luhiLx288qm6NRk0=;
        b=vaKHAsSkNv1guEp/A2W+/hSzjYAan1X19LoWV60X8ayvysVbWYQcyXOKGphcLCsL9a
         oO/cuS80JUJF9nUZYUmQKvJ4/49hDdVe1WcIAQVmugZBZa+WwhpAxXlK3aQR10bie/Tm
         8P82z5ahU+IHp72BH7XnBgvV0NpzuoeQ5ZB8nG5XneshRDh8OFftW8OOMLZqcZIHIKah
         w2SLoKf4ChdeEEIj9XfYyPZRFNOzqI5Hu3nlnHoAO4vhoufSQhuPhCgsEuPHstnM1mXi
         5j4B547ShcQae+/ysL4K2oLoD3keeIIsXvMuSvjKEI+LBnxnx6vpjuxm70wq9pdgBpAx
         Pf8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ai0TM6L6p55zylY5mhKV6psyoM2luhiLx288qm6NRk0=;
        b=JdKdSim8PCuRpHdvwgEFu4Au5AQFyem2ZDJICKIcFFvF1NWlnME0BBzkEQgaOY0tpy
         mm0T52E+uok2vezrDYjejNuPvuZ9NhzOdwqW+ra4L4IksMAMx/xKQPTWTDzeZvg7LIUX
         kvsOwNR9WuuNcfg53i2Rv5TyIrwWtKL6+QYxcsxE1FEs3ZNeSeOyEFhDdM0oZVANn40/
         WVWD53wJnwdETvU4iFK7rgGq6g6QwvVLzJ/FKdsISCl0crlSbuNLQVgfz99R1G1QKdps
         U2b3OosY0zIQGZbe7w3L4IT7bY9jrjbLUwq18we/A2N36nOPnR0uYjGlXBBI96yj4EVM
         29cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKiboKpa5BDyBRT9eFf8umrxXewNAzsXtBs2Abso//sm3e/L1J
	fUS1LVzgpTKr4xs/oTnijx4=
X-Google-Smtp-Source: APXvYqy/CA8AZc5tSjQ7OP61WtxwA6DU1NIUwWyJpV/YJhyKkaH27Hw3htwxbJOPbb4MsDybiUCgDA==
X-Received: by 2002:a9d:6b19:: with SMTP id g25mr22225719otp.12.1571018075825;
        Sun, 13 Oct 2019 18:54:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1441:: with SMTP id w1ls2405311otp.7.gmail; Sun, 13
 Oct 2019 18:54:35 -0700 (PDT)
X-Received: by 2002:a05:6830:1317:: with SMTP id p23mr22624343otq.296.1571018075526;
        Sun, 13 Oct 2019 18:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571018075; cv=none;
        d=google.com; s=arc-20160816;
        b=Kl1uABkqmzeWJ8G22tqNcZmJfRrDDfyjP+LMfMVSoJRyScnfcXJWK9SHvyD2e3zs5j
         KYNlZ8/kh6Sv/FJuV0MQQ3rbDCtbJX1T3LFBw4z6JkfZiUgame5TFcdVA4hEbqfmrS6T
         8+qdp7gY3Tm6q3Ji5RsMqfgCQAIK9AR5HZr+vg1weRoFL40eubSAFZaGuFwRlSP9SayG
         5LifKmR6wwWALJzFwoD9UZ79jR2PM5T2TgzCEp+3RumyqWyleTjY1GkUdIYZ5Ee1TyxT
         kWWyAr6puDNPDZw3sMieDhuEKLivL7okCxkUHhqPBQ63sRidg7SgEHoxaRHdcLsgoeIb
         35xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6X+DcjsMjHwOB6JkPbeUc/ALXoDOCE2zEMdjHf4FHXw=;
        b=m51Fn5/ZFRn+NtDoYtcx6ut8lwXUrpHUk7AER509sT1xQaU6oLno6Kz30DngLbodpe
         PRgbvNiiSjcoJrzg2121KsjbtDdiVJX9VH9wUbJIScsA+KKVuZ1QlKXehL4tMH116TQv
         EPpLWHDzIZ2yiM0C5CtKyeRm77wGj7JS+iH+vdIoe6bbXO50ssM46+4fZ1vJVeDmhkfc
         ybmten7VZ3P/PCnOUS/ksgXut8Q1RWiJ2hkknrT35pzQallcSalmQOkUJ9pZ7h12zXjR
         hPVoX4BTiMycbEZLU2tTjyx4sWaiO6JXI4DUh0OhM0rkJBu7FCc/KVGLc7j7pfkOch6o
         uY5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIUzDc2u;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id i19si284021otk.0.2019.10.13.18.54.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 18:54:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id x3so12510669oig.2
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 18:54:35 -0700 (PDT)
X-Received: by 2002:aca:d402:: with SMTP id l2mr22745948oig.127.1571018074913;
        Sun, 13 Oct 2019 18:54:34 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 11sm5574669otg.62.2019.10.13.18.54.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 13 Oct 2019 18:54:34 -0700 (PDT)
Date: Sun, 13 Oct 2019 18:54:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andriin@fb.com>,
	kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [ast:btf_vmlinux 1/7] net/mac80211/./trace.h:253:1: warning:
 redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature
Message-ID: <20191014015432.GA54176@ubuntu-m2-xlarge-x86>
References: <201910032202.OVnkgkNP%lkp@intel.com>
 <20191011200059.GA30072@ubuntu-m2-xlarge-x86>
 <CAADnVQJA7otF=us0usjZ9x0pqpX--9UVLZhwZe-+8pVf-PMkpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAADnVQJA7otF=us0usjZ9x0pqpX--9UVLZhwZe-+8pVf-PMkpQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XIUzDc2u;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Oct 13, 2019 at 06:42:20PM -0700, Alexei Starovoitov wrote:
> On Fri, Oct 11, 2019 at 1:01 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Thu, Oct 03, 2019 at 10:48:31PM +0800, kbuild test robot wrote:
> > > CC: kbuild-all@01.org
> > > TO: Alexei Starovoitov <ast@kernel.org>
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git btf_vmlinux
> > > head:   cc9b0a180111f856b93a805fdfc2fb288c41fab2
> > > commit: 82b70116b6ba453e1dda06c7126e100d594b8e0a [1/7] bpf: add typecast to help vmlinux BTF generation
> > > config: x86_64-rhel-7.6 (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 38ac6bdb83a9bb76c109901960c20d1714339891)
> > > reproduce:
> > >         git checkout 82b70116b6ba453e1dda06c7126e100d594b8e0a
> > >         # save the attached .config to linux build tree
> > >         make ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > >    In file included from net/mac80211/trace.c:11:
> > >    In file included from net/mac80211/./trace.h:2717:
> > >    In file included from include/trace/define_trace.h:104:
> > >    In file included from include/trace/bpf_probe.h:110:
> > > >> net/mac80211/./trace.h:253:1: warning: redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature [-Wtypedef-redefinition]
> > >    DEFINE_EVENT(local_only_evt, drv_start,
> > >    ^
> > >    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
> > >            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
> > >            ^
> > >    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
> > >    typedef void (*btf_trace_##template)(void *__data, proto);              \
> >
> > Hi Alexei,
> >
> > The 0day team has been running clang builds for us for a little bit and
> > this one popped up. It looks like there are certain tracepoints that use
> > the same template so clang warns because there are two identical
> > typedefs. Is there any way to improve this so we don't get noisey
> > builds? This still occurs as of your latest btf_vmlinux branch even
> > though this report is from a week ago.
> 
> Thanks for headsup. That was indeed a valid bug in my branch.
> Interestingly gcc didn't complain.
> I knew that 0day bot is testing my development tree, but
> I didn't know it's doing it with clang.
> And for some reason I didn't receive any reports
> about this breakage.
> More so I got 'build success' email from 0day for my branch.
> Something to improve in the bot, I guess.
> 
> If you're curious the fix was:
> -typedef void (*btf_trace_##template)(void *__data, proto);             \
> +typedef void (*btf_trace_##call)(void *__data, proto);                 \
> 
> I forced pushed my btf_vmlinux branch.
> Please let me know if you still see this issue.
> 
> Thanks!

Yes, right now, the 0day build reports for clang are only getting sent
to our mailing list (clang-built-linux@googlegroups.com) because there
is a lot of overlap with GCC. We have been manually triaging the build
warnings and forwarding them along. I think the 0day maintainers
eventually intend to make these emails more public (maybe have an opt in
system when maintainers want to see clang build results, with the
understanding there might be duplicates?). Unfortunately, I cannot speak
for them.

I brought down your branch and built the net/ subdirectory with the
config that produced this warning and I do not see any warnings. Thanks
for the quick response!

Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014015432.GA54176%40ubuntu-m2-xlarge-x86.
