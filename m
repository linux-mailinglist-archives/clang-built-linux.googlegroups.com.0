Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI7KZ3YAKGQEIG4FTNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D59131B7C
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:31:00 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id t17sf27089099ioi.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:31:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578349859; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5ak3xK4n1DlvahVYmVy3eymIeH56/WtZ1sI5r7VTlsVVdkageV7OeDtEsScNIL9MN
         nhMXmI6smY1ViXvJUi8WENxx1Yy22s6Pd7Juj8n0BJwHPtoad4xN/6D/3JN+QWL1mTqy
         EIEnGuKIFk1EEW7KGMm5XO9PUoeUP/nMA3XncwF49RuVAbOLkL/S2x4I4aRSjrhH0aj2
         yVQB5JlCLsxROUmUwV2uY2mzehlOKkYbLz+w3jaLJj9e8bb7Ege7U167CneSVS3yFP24
         AMzAqutiXAxXTIyfhjh3ky+xpxiD4pI4jUQjLfzd4YNDksNGbvEFNfSrQs7irc6snBPN
         8UZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8M/S8EwylZOJfPpDVWVdH67gTAv+J1/9xZVUC0HyZns=;
        b=xJVGSjJyCG+GUm0UZhj7d8Na18F8mVq1P0GdlWLWbmm7IjGI4nzI58IrWr0Lmo6+Oy
         0uvtx5QZRV+UIm5NF1rE3FTDcusNcwfP8vDs3YMBVD8/+I91tcG1s+CuV/3PSkYfcCnf
         FCivBUMFGd4EolyTUbMFOo4kaKhxC9xRpO2sa+X374vDJEtS0vyJfEylPO9+9qm21zch
         GSuhwjahHAz5srO3MukmW5OlJSgtG4cPF0VgLUkHrDNf2hyuvI8lJroYGkUEVreXj2wZ
         oFR0+kQKQOCZpxMCXnKmbgmPhfUONASKfvzHqk9YgR6EQ/gE86yFccFeJa0B9APfjs1e
         8s0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qe9QiCyF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8M/S8EwylZOJfPpDVWVdH67gTAv+J1/9xZVUC0HyZns=;
        b=AsFtIlJyrCU18H/cfdJfhscui+aaG/xTenNWn/qXV8muu5O0k+ZJZn/vHTTGo7GhLl
         vlutth6uW6ozdwTTYFgpyYfFeXrjVGAI+fZMbTk2JH4vptkl8AspFLfJmmBmbH4r33yb
         FAiMCcFCstEEmljPFjz7X4/asgorD74tlwx1zB9nV6VOuUWWIB8Z1NcrHbP+8/CoK+Sl
         wyfKdGWNRbYzQ4fovjOh63eEg5Sxdn2OJHM4F7JkPuuMQI2fuVS2/AP9caZFPJFjomZu
         OariG7fmzdxlsG7UgoMpeyAJ/JZwwvr/P3d52tjxKW16sS2v7pB83u73p/aVImC8t/f5
         QN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8M/S8EwylZOJfPpDVWVdH67gTAv+J1/9xZVUC0HyZns=;
        b=POXs7EGT4dCTQcVklzS65Nbjs/16PoolmdPFOQG8twWbpvTHjD8KCYFBBedHepscCG
         1W+XB8/GGj8z1jcVFSIgL0fE+ClC3u26Wc7lokxJEmitb1vYKJ4TGg3iw+vxrNQjQFSm
         rC4WyB/JJDoglpfT8FSU2FATYZxL/kDYbKogHXka5H0BX4AhW16gAafURD+vJYoeIvaM
         45j1L09H4jFKewFHh1hCS+EmFAS8WAf5YjXbdonAr7NyfcMxJfSnTa9K9eRC03WfXwC+
         PMPXyR886cAFU0FUxisSO1HFAg/mIUXldSZIJDpKqKHLUkLHOhRAul5l8BsB0gyI7mo7
         Hfog==
X-Gm-Message-State: APjAAAVYb04Gy+z+CDnU0q/ByvlDK1uj+R/RWKxAiZ1AM/1+iJg+1KIn
	bB/EFg89sjtqrw7O6xsU2u8=
X-Google-Smtp-Source: APXvYqzGtoRfPAJQ+aRC/hRus5N07l0kfS+pL++uyq9Kz4ui0MyOIJlCA7wxihKV2G5khpV578QzPA==
X-Received: by 2002:a05:6602:280b:: with SMTP id d11mr69314197ioe.250.1578349859121;
        Mon, 06 Jan 2020 14:30:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:212:: with SMTP id e18ls3502204jaq.0.gmail; Mon, 06
 Jan 2020 14:30:58 -0800 (PST)
X-Received: by 2002:a02:856a:: with SMTP id g97mr79609270jai.97.1578349858680;
        Mon, 06 Jan 2020 14:30:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578349858; cv=none;
        d=google.com; s=arc-20160816;
        b=MGDb27ypuHUAN197HDFqHbI+cSMSfanjTa7RmRVvF3EDev9CFxtIUZFMjes0RIusaZ
         Ug+BPAFVf1I7/K7lcXFCf2oXQsXC4O/KsfpYlPThC8292jheiZUl8r2LzmB0GkA0Dix8
         QRQrPhixJXzS5YpJtEhrq8I+Phr9CRL9A6eNvG2r/VDG1SD0BRjLH8PBqEDaX29axzNw
         Tpt/Tykv3kQHrVP30fuMIvePlRNN2ZhrjdLNlJYchvBQH9qQ7eJPiyOgLSHpUYN+/F41
         I7pfmw2LBMDtWx14S5Gg40BFoeWipBfi0lyrlAIwnkIbRi41FpGZnjDjH497wIJFy7Vk
         aX2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KYaglizKugac/8S4djRSKIC2zVbPfq6DTVT/upgjM44=;
        b=XUY7Rjz5Vw7l6XGePzY68u9XPRVa1osRTI28AAZ8hBndZGSqsgrbSRGg67k/po4SKm
         tq2tEwdjRzYq/IMaGT/+5QcYucOgyZe9l0uf0XnHU+bWgoL2XEBBGAfesXf48wml/7xD
         3yK/uP2L1Hfa176gyGnG/x4tfQLTKaoDtSQNUv4dztbAbimiEH1EkiEzO+IS3vztSRZa
         LnO37P4vLV1E8le9ZfDyKu/VM6WBblPrZVEszdHgZQsaD6Gm2+33qTdYF5MQeibR+XAD
         9znkWEHgPBraBLv5xirzBEW4Jasp122d07BZ5e3Imf8ei01c0+vMq9h38jTD/6dXmF4N
         OsVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qe9QiCyF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k9si3177953ili.4.2020.01.06.14.30.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:30:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 4so27580091pfz.9
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:30:58 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr111495905pgk.381.1578349857724;
 Mon, 06 Jan 2020 14:30:57 -0800 (PST)
MIME-Version: 1.0
References: <202001050316.ZKXmkO5U%lkp@intel.com>
In-Reply-To: <202001050316.ZKXmkO5U%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 14:30:46 -0800
Message-ID: <CAKwvOdm_B+fpPq_-j3Rf=nJBFj0tWY=7sp85dsrUyrxQo82C=A@mail.gmail.com>
Subject: Re: [rgushchin:new_slab.1.1 3/23] kernel/fork.c:400:30: warning:
 implicit conversion from enumeration type 'enum memcg_stat_item' to different
 enumeration type 'enum node_stat_item'
To: Roman Gushchin <guro@fb.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	Philip Li <philip.li@intel.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Qe9QiCyF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

Roman,
Apologies if it was already reported (working backwards through emails
missed during the holidays), but this warning looks legit. Can you
please take a look?

On Sat, Jan 4, 2020 at 11:43 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> BCC: philip.li@intel.com
> TO: Roman Gushchin <guro@fb.com>
>
> tree:   https://github.com/rgushchin/linux.git new_slab.1.1
> head:   0ec79f1847c5e618cc4bcbb22f9de91df63b764c
> commit: 2a337eb3936ece98e0f1b8eaf1e13b6557b0fcc5 [3/23] mm: fork: fix kernel_stack memcg stats for various stack implementations
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 320b43c39f0eb636c84815ce463893b21befdc8f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 2a337eb3936ece98e0f1b8eaf1e13b6557b0fcc5
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/fork.c:400:30: warning: implicit conversion from enumeration type 'enum memcg_stat_item' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
>                    mod_memcg_obj_state(stack, MEMCG_KERNEL_STACK_KB,
>                    ~~~~~~~~~~~~~~~~~~~        ^~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
>
> vim +400 kernel/fork.c
>
>    372
>    373  static void account_kernel_stack(struct task_struct *tsk, int account)
>    374  {
>    375          void *stack = task_stack_page(tsk);
>    376          struct vm_struct *vm = task_stack_vm_area(tsk);
>    377
>    378          BUILD_BUG_ON(IS_ENABLED(CONFIG_VMAP_STACK) && PAGE_SIZE % 1024 != 0);
>    379
>    380          if (vm) {
>    381                  int i;
>    382
>    383                  BUG_ON(vm->nr_pages != THREAD_SIZE / PAGE_SIZE);
>    384
>    385                  for (i = 0; i < THREAD_SIZE / PAGE_SIZE; i++) {
>    386                          mod_zone_page_state(page_zone(vm->pages[i]),
>    387                                              NR_KERNEL_STACK_KB,
>    388                                              PAGE_SIZE / 1024 * account);
>    389                  }
>    390          } else {
>    391                  /*
>    392                   * All stack pages are in the same zone and belong to the
>    393                   * same memcg.
>    394                   */
>    395                  struct page *first_page = virt_to_page(stack);
>    396
>    397                  mod_zone_page_state(page_zone(first_page), NR_KERNEL_STACK_KB,
>    398                                      THREAD_SIZE / 1024 * account);
>    399
>  > 400                  mod_memcg_obj_state(stack, MEMCG_KERNEL_STACK_KB,
>    401                                      account * (THREAD_SIZE / 1024));
>    402          }
>    403  }
>    404
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_B%2BfpPq_-j3Rf%3DnJBFj0tWY%3D7sp85dsrUyrxQo82C%3DA%40mail.gmail.com.
