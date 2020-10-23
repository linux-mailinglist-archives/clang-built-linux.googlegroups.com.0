Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLOEZT6AKGQEDUEKHCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6350F2976F6
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 20:34:22 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id b4sf2048771ilf.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 11:34:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603478061; cv=pass;
        d=google.com; s=arc-20160816;
        b=kd2yf6J0KzbvLvcln3orfArI30TzKEB0qHPIv0VeC8F4zWtdueHnXT2NsEERAQJ9fO
         TFMMhUkEpWOHCt/tmIr1BXKcKkYR2RdRn0soA5FUrkeXol28Vfu3aJqhasWqCMfZsbAp
         QsYdG4H+Zhlu3BUYj8e+BuqF45/ku6VI8crWALijkQWDJKAI3UJmZcInz4xCcypGZk7Z
         zRD8bGT7OEzgv2KnJ0HSj1uRQTnvHH7PJAbshNZVskJOPKFoj1S/59uvSp8npzjaVgo3
         EE3OFcxgIsFCkvzqO0ztXYgmkD1hcFWcfAePpedPGOBO7F+GQZON0i+O4bWWdFN+rAjk
         x28g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FEeIy+LiaLaIPnJTeYEub3pBAhrhaBk/0jEnUccOa9w=;
        b=JtMEs+11t/T/9u3ud6OdiM29xjEubPfevBHpt3/SgsFUunhXzQ8cUS5eAPGi5f0NEK
         Y6VEZqc54b3LHAEeUHILTHoftrIZ6kkjhX3Hg1j6Bho0+FDaYxveQUymA+/cNSTaZJqs
         tTCwy+AZo8i0cBniskcwpvZgNn5KZmjkYxMnjB1gaXP7AHvYNJrFvPKyEq3TPf8lIyib
         MJzLh5tDtUA7yRUJUvUwHYpTxt8CJTwTERYqdGpeqEqzeymP69mRG4xkyqlLBPdA4NrH
         fDMlKI+YSjvG/XUpK5FWIZ3dbDcSiXi3zw5aGRirnNSStMxez9UhhBOX2kbQjaKwvZ4T
         rRRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=USIIBRck;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FEeIy+LiaLaIPnJTeYEub3pBAhrhaBk/0jEnUccOa9w=;
        b=jKRjFm21ghhKK+FumhpEDzCSTZmKwmeVFCLPGcGCHQEdOXw/Pfq+3hzRG9k+iOuj0G
         wmBnQhtflKae1+zRUJgpBS1FiPgvCjNsSiTYz52w4WFAdiTWm60sW2JOOdM45dMHUBNf
         HYQ5MhslL2iBORaK7bt3IjRDzMKzmqA46I5wPjgiCfqSe94lka2nkyr+yr9iwhFnKCgX
         OhJEbvbI5OJOlmLDVpAj49QcaHz7De8KrOvF0vPY/ehFE2hpCGwUx46f4P7bG9DtGA9S
         ruz2A01PItbptKTmA/K68a1Y01hHKywdrdYqncvDfkLX4j6UjciEwaoBgz+3x7Mg0Y0n
         Kq7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FEeIy+LiaLaIPnJTeYEub3pBAhrhaBk/0jEnUccOa9w=;
        b=DPbN1J99mPKiwtVhd0Z+3JL8HVID1p71tn+PKfxtT2phExvBOVCI3jKy9/zrx1DfrP
         HbtTau/EPAOALtepT4ML7C7PV/fTEDThI2lnreuCNZSOyBboY2l55PvwJPLAasXv5MRh
         +TFaTuV2meAgmvyu/t8JiswfNixJxKb+wu0B6CNo3oH5+Ts8h0I4p7uaysZPd6oQUdq1
         dLeA2UxkJ2lhOv6HAgSKKDIx7ql7FJCXUy+4UkVXrA74luQ0FggyNLeEreBF8A0MWfPS
         1ljDNkqUnj2XBR1nNdX3t0+MFP4nfJrdJpUEjSuphFx3LkYnH+s43fh9VqHhbtJaYXoF
         PE8A==
X-Gm-Message-State: AOAM533ilqS2outOUry55sqUSOvMZlecdbG9yG35oTcFRyWW3Zay3C/n
	dkyAwem1phF0nP05xx88O4E=
X-Google-Smtp-Source: ABdhPJzpaMaZ9TeYnxk5nw0Ek7gnwEzVSXiGtO4MyaSPcFIDWfCSa2i8YLyOYLRU/PqZFdT82ARv+Q==
X-Received: by 2002:a05:6e02:6d1:: with SMTP id p17mr2620392ils.190.1603478061318;
        Fri, 23 Oct 2020 11:34:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2aa:: with SMTP id d10ls264967jaq.5.gmail; Fri, 23
 Oct 2020 11:34:20 -0700 (PDT)
X-Received: by 2002:a05:6638:12cc:: with SMTP id v12mr3154346jas.75.1603478060754;
        Fri, 23 Oct 2020 11:34:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603478060; cv=none;
        d=google.com; s=arc-20160816;
        b=hoAs3NkZdI6rUHwKFhlcKa9DSGqjWTOPDq9C63AOBN5WtRLTNFif/vnjXydVGrQ72g
         xsI+jEbtkkUYJ1CDqrtEfarB3IKlDO3PW26K3EZ01lGuTFVRpdaOdUXTOZ1jWXyBUUNj
         FPM+3raGQ2CXgi2wS77AdHNigez6J/FaOtrUwFy6mPRuNHnbww+bG18eWBE9ZXkfF4O+
         xUd0vU+KBnPiU48fsDx5qAgFRvydI04iK0uPFtLOlOwby2Ws8fjtWwc7B63cI/jFoQQ4
         uHgDV4yHvj/N1Z9Aba7KZxkKz56llDWzw2rl3Fx1uFmBKg9GzTVwhk/2gl+XYhI69IC3
         ZLwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YGd3uOKtqM38Wcv1urPR3BIkkGBkp2O/uiyToaRndbg=;
        b=nq0oOM6XWQGGifKZztm/GXx+4CT7lCUd+6yu5Tk2mQscXVTJl9FqinmBI+39osRvpz
         Da6cz5B5XkzpRhXC+heaLE3XIzBy7aujrZzl0pal7ViDI5FvUFBi75coEYujeuNUch/P
         HieiZTvq1Z3Tur5R/IYksL91E6rHjm0SDTEq6wAYJDL/DCZJGMkTdsqhn0MMHuaormUS
         ggLPpsXMM7PMGRAp4mnjvX01o2neovtseqyKtJEFoGQH4tJnTbyZUG+UIdCW0F6R/ic9
         w5PQ7s5LkxfQeXDVEvUEqhU7N8OVLAzqCd+IoR89SguCcNMXfo3ngLIysBqNgox0Na04
         UlCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=USIIBRck;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id j68si164216ilg.3.2020.10.23.11.34.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:34:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id h7so2037850pfn.2
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 11:34:20 -0700 (PDT)
X-Received: by 2002:a17:90a:740a:: with SMTP id a10mr4010133pjg.32.1603478059645;
 Fri, 23 Oct 2020 11:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <202010231654.wZSy3ayy-lkp@intel.com>
In-Reply-To: <202010231654.wZSy3ayy-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Oct 2020 11:34:08 -0700
Message-ID: <CAKwvOdnx7SFndfL8u=YPUPuPMUk5AHb1oDuoLwQiGwi=9awNHA@mail.gmail.com>
Subject: Re: ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_59)
 is being placed in '.data..L__unnamed_59'
To: Kees Cook <keescook@chromium.org>
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, SeongJae Park <sjpark@amazon.de>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=USIIBRck;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
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

https://github.com/ClangBuiltLinux/linux/issues/1185

On Fri, Oct 23, 2020 at 1:03 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   f9893351acaecf0a414baf9942b48d5bb5c688c6
> commit: 8fb156c9ee2db94f7127c930c89917634a1a9f56 mm/page_owner: change split_page_owner to take a count
> date:   7 days ago
> config: powerpc64-randconfig-r004-20201022 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ee6abef5323d59b983129bf3514ef6775d1d6cd5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8fb156c9ee2db94f7127c930c89917634a1a9f56
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 8fb156c9ee2db94f7127c930c89917634a1a9f56
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: mm/built-in.a(list_lru.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(workingset.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(workingset.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(gup.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(gup.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(gup.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memory.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(memory.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(memory.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(mincore.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(mremap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(mremap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(pagewalk.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(pagewalk.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(pagewalk.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(rmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_29) is being placed in '.data..L__unnamed_29'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_41) is being placed in '.data..L__unnamed_41'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_42) is being placed in '.data..L__unnamed_42'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_44) is being placed in '.data..L__unnamed_44'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_46) is being placed in '.data..L__unnamed_46'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_45) is being placed in '.data..L__unnamed_45'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_39) is being placed in '.data..L__unnamed_39'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_40) is being placed in '.data..L__unnamed_40'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_35) is being placed in '.data..L__unnamed_35'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_43) is being placed in '.data..L__unnamed_43'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_37) is being placed in '.data..L__unnamed_37'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_38) is being placed in '.data..L__unnamed_38'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_47) is being placed in '.data..L__unnamed_47'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_48) is being placed in '.data..L__unnamed_48'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_27) is being placed in '.data..L__unnamed_27'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_53) is being placed in '.data..L__unnamed_53'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_54) is being placed in '.data..L__unnamed_54'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_51) is being placed in '.data..L__unnamed_51'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_50) is being placed in '.data..L__unnamed_50'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_49) is being placed in '.data..L__unnamed_49'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_52) is being placed in '.data..L__unnamed_52'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_55) is being placed in '.data..L__unnamed_55'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_28) is being placed in '.data..L__unnamed_28'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_56) is being placed in '.data..L__unnamed_56'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_57) is being placed in '.data..L__unnamed_57'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_58) is being placed in '.data..L__unnamed_58'
> >> ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_59) is being placed in '.data..L__unnamed_59'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_30) is being placed in '.data..L__unnamed_30'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_31) is being placed in '.data..L__unnamed_31'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_32) is being placed in '.data..L__unnamed_32'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_33) is being placed in '.data..L__unnamed_33'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_34) is being placed in '.data..L__unnamed_34'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_36) is being placed in '.data..L__unnamed_36'
>    ld.lld: warning: mm/built-in.a(shuffle.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(shuffle.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(shuffle.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memblock.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(memblock.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memblock.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(dmapool.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(ksm.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(ksm.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(ksm.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(page_isolation.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(page_isolation.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(zbud.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(early_ioremap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(early_ioremap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(cma.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(cma.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(cma.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memfd.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(read_write.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(stat.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(pipe.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(pipe.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(namei.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(select.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(select.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(dcache.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(attr.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(libfs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(splice.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(splice.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(nsfs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fs_parser.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/fsnotify.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/notification.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/mark.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(notify/mark.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/dnotify/dnotify.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/inotify/inotify_user.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(anon_inodes.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(anon_inodes.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(verity/enable.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(verity/enable.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(verity/open.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(verity/open.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(locks.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(posix_acl.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(nfs_common/grace.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(quota/dquot.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
> --
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: mm/built-in.a(compaction.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: mm/built-in.a(list_lru.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(workingset.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(workingset.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(gup.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(gup.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(gup.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memory.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(memory.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(memory.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(mincore.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(mmap.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(mremap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(mremap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(pagewalk.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(pagewalk.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(pagewalk.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(rmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(vmalloc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_29) is being placed in '.data..L__unnamed_29'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_41) is being placed in '.data..L__unnamed_41'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_42) is being placed in '.data..L__unnamed_42'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_44) is being placed in '.data..L__unnamed_44'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_46) is being placed in '.data..L__unnamed_46'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_45) is being placed in '.data..L__unnamed_45'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_39) is being placed in '.data..L__unnamed_39'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_40) is being placed in '.data..L__unnamed_40'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_35) is being placed in '.data..L__unnamed_35'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_43) is being placed in '.data..L__unnamed_43'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_37) is being placed in '.data..L__unnamed_37'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_38) is being placed in '.data..L__unnamed_38'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_47) is being placed in '.data..L__unnamed_47'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_48) is being placed in '.data..L__unnamed_48'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_27) is being placed in '.data..L__unnamed_27'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_53) is being placed in '.data..L__unnamed_53'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_54) is being placed in '.data..L__unnamed_54'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_51) is being placed in '.data..L__unnamed_51'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_50) is being placed in '.data..L__unnamed_50'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_49) is being placed in '.data..L__unnamed_49'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_52) is being placed in '.data..L__unnamed_52'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_55) is being placed in '.data..L__unnamed_55'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_28) is being placed in '.data..L__unnamed_28'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_56) is being placed in '.data..L__unnamed_56'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_57) is being placed in '.data..L__unnamed_57'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_58) is being placed in '.data..L__unnamed_58'
> >> ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_59) is being placed in '.data..L__unnamed_59'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_30) is being placed in '.data..L__unnamed_30'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_31) is being placed in '.data..L__unnamed_31'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_32) is being placed in '.data..L__unnamed_32'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_33) is being placed in '.data..L__unnamed_33'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_34) is being placed in '.data..L__unnamed_34'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(.data..L__unnamed_36) is being placed in '.data..L__unnamed_36'
>    ld.lld: warning: mm/built-in.a(shuffle.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(shuffle.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(shuffle.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memblock.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(memblock.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memblock.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(dmapool.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(slob.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(ksm.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(ksm.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(ksm.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(page_isolation.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(page_isolation.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(zbud.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(early_ioremap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(early_ioremap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(cma.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(cma.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(cma.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: mm/built-in.a(memfd.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(read_write.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(stat.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(pipe.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(pipe.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(namei.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(select.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(select.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(dcache.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(attr.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(file.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(namespace.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(libfs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(splice.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(splice.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(nsfs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fs_parser.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/fsnotify.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/notification.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/mark.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(notify/mark.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/dnotify/dnotify.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(notify/inotify/inotify_user.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(anon_inodes.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(anon_inodes.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(timerfd.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(aio.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(verity/enable.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(verity/enable.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(verity/open.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(verity/open.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(verity/verify.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(locks.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(posix_acl.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(nfs_common/grace.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(quota/dquot.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
> ..
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010231654.wZSy3ayy-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnx7SFndfL8u%3DYPUPuPMUk5AHb1oDuoLwQiGwi%3D9awNHA%40mail.gmail.com.
