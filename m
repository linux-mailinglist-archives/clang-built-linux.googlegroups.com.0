Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEUM433AKGQEOS6KNEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 565C31EEE50
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 01:38:59 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id c22sf5312715qtp.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 16:38:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591313938; cv=pass;
        d=google.com; s=arc-20160816;
        b=W8j6YwpB7S43IxylCCwbywT30DlnXCTjmyze/PFGlbpOMLW9F/sNvcbdqlR9/5i3YU
         /x9yWmv0RKQ2fUCGjP+qsLNZgMVm1zOvILVpTYzdVFED4v6xWAGdP9Bol6Gk9SctixY2
         LHQYc+mEzWhcW+FEvJVP7UGQVm2dMEFqa1cBg2UOgbbmFhQZyTyhWqh9JbXYyxZJEeHL
         OsViQZnzOcbIDTZXHwKPW34S4STZ+f8JYxYVoPRSi60BiNswqMyzSMwiG1ovZbnLk2OP
         9BKV3U3vbbRjYp0ml9+cUL81nI0nf4Vc8OY74/ALn0aMetW1gmPsfQgbuYr88lccs8Jd
         OPLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W9LVoYyDFZ//LlD99k+ngifCsYGq+L1TckMK6pZkEYo=;
        b=GOPN8i7HOfxhwu3ByNCG07XdcEFyH870202+8D8DkdVHDkbZY96UF4UL/g1tXN9gKE
         It/ed0XyssnLWDGyTiRVjQJ420guaWTfxYZQctjxKd3efjUdyp49mHFIfqVAgCpq6OZP
         SYJJ6BvbFasYUCd6dwqSrYU1ESBkzgNRFtr3yz/u/SsZyEXyYC1CYTIimOREnP2/xFg/
         Au0N8cYq4KRO9ndWpTGArqFw0LkuBIUQFt/WQSh8+BnjE+PFhIgk9DqFD2jM5hIiat/D
         8VgAN8Ruzxw0rsxzDlZ+Am9eBhTyQOCNUQj6Jr3kaPzq2GrQnx94ghaCV90ogXeKKVwZ
         UhGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QNlDKQlw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W9LVoYyDFZ//LlD99k+ngifCsYGq+L1TckMK6pZkEYo=;
        b=kgBjjQa3aYlofs+h8d719YsX9AEmckAmfVvOZ9TOD6SInyWqaPn5Hea+nVoAOX4M6S
         1fe2F591RYSTvHfMuNpXlEPlh5Jg5TLsPTp6Lzk87ockIzbIhQ2l2RoiH5DcYurb1pD0
         oxgRAHSx29gyim/OIpUAEMsfGf3Ff7PFhHhN9ECS7mVJDAaUElEEn5wFOMaTElrPBQna
         eKKKppYEKVekWG9khokVPSA1vyIV9YGYl2IACUGU7yGEtMuVaifA/qkdI22Jz3lZmW9m
         GjgSOG1gOCRzwK/m4smgHZOY17jil62XLPkguYpQKMZ7CG3mQ+ALfBj9b9FvJ/uOLAjJ
         IhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W9LVoYyDFZ//LlD99k+ngifCsYGq+L1TckMK6pZkEYo=;
        b=nh8h8y5h21gVtn/enKYmraIenwW9O5BffxWXY5c2beI1a0BEtTtpxgttRh67XSxjzA
         +/0HJn6uiCdAFEssGrGYnuBOdMZFJh8cLpUpgT5D5HD/Kq1x0byHOCYoQj4cQ2UM+1az
         A87LXXNeXXwPaXYp0OxJMFeKTigTL7fWeuOAlhpS5V8e3t7fNvbU6X1LLHzwaAqH6B86
         jHBvrbabnkctN1Q0UlSe7KiFJMPDuvN56+UC6LrsqQcwmJs3MPQSye6cHvE7jFmsXtX+
         sEre3ZRWn9y7kMQhDDEE/eHQlSJBIRDo88UjdcS8QN4Y/N856d/wyZDDOr4SLxSfQTfN
         6hxw==
X-Gm-Message-State: AOAM530gYRYwndafSL79W6osJgW/60IU33v+wFqq5dAO7DKFvYEwSZwt
	ahiMjFnTSRCNx/FHGE3ZvMI=
X-Google-Smtp-Source: ABdhPJxIaXGjV9XszVWMkNxbVv+79bmp41fU376p3zzb1wrFMeIABGVM+0xxMgpwCZXB7rSNHKM++w==
X-Received: by 2002:ac8:c4:: with SMTP id d4mr7060067qtg.45.1591313938241;
        Thu, 04 Jun 2020 16:38:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6654:: with SMTP id a81ls3523850qkc.7.gmail; Thu, 04 Jun
 2020 16:38:57 -0700 (PDT)
X-Received: by 2002:a05:620a:85c:: with SMTP id u28mr7477262qku.246.1591313937915;
        Thu, 04 Jun 2020 16:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591313937; cv=none;
        d=google.com; s=arc-20160816;
        b=wws8NaouEd9LZzgrZBkYhUWDGlEqTZV7F195A0ljV8LtKh4n4DBBBhdcYTOk669La/
         ok/AWsy20dUm7yB27pJF2qpYkiW/d2u0h6/BQJuoFjemdQvLvVfcxksCdHmItqG1yfay
         mj6LFuTzLyIqXfa4BMhHFlsbkzOI5+5c89CdmIAQ+7+9wOHZ0+6/TNPsSBTv2kmLv5Ld
         5L1XtBc7VmyMLd84h3pkHHvg1BnMVavLMj90Yu/eIIYJilDyln4TDSjYvOJv+mSTZC1F
         riEGorJ8kaZTJfDOUryNelwKBOp+57Qc4si2LNcKc7/f5esK7PkhUDTb/7bVy2vAubdm
         7s0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qYup94zySP3Uxa7E284Nu23pVrTSfDC94qvp+MhlSE8=;
        b=eBsMVFuIh4oM5G7dKnB9zPwA4cIHStmzHg9f1A6nnCTJ7kgFtw/KsznfT9Wq2mKvDZ
         AAD/4fFl4cO4VUz85vk6ZvWo8eWMv2s3sPh7c58CKEzglaiQHyvY6aK4dPXKFKSfNANm
         WP3N9LNb1Dk86VbwTQ0xgTKiBhD1puWnx7aygAthOdtFpqEHKEWRlUU3RvYXVE0f7f68
         vt+MW68w2QiY2AQCzxt/U1sAL+Ywe4xlpSECc9+xtthGiTHGgZ2LUpDUFenfw/bV2HGp
         WZ1hzHPMoEOcUWGHg1rKQW/PTrl3gb9jpQlqWk1qB0n98zZ53TPKktNrm3qFNbjJHlwb
         7j8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QNlDKQlw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x74si443340qka.4.2020.06.04.16.38.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 16:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id z64so4008961pfb.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 16:38:57 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr6940395pgh.263.1591313936725;
 Thu, 04 Jun 2020 16:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200527170840.1768178-6-jakub@cloudflare.com> <202005281031.S7IMfvFG%lkp@intel.com>
In-Reply-To: <202005281031.S7IMfvFG%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 16:38:44 -0700
Message-ID: <CAKwvOdmof_tGVAN+gkq8R3Hq_sRDHXE_cB+37Sd7gKvgzVzVHw@mail.gmail.com>
Subject: Re: [PATCH bpf-next 5/8] bpf: Add link-based BPF program attachment
 to network namespace
To: Jakub Sitnicki <jakub@cloudflare.com>
Cc: bpf <bpf@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Network Development <netdev@vger.kernel.org>, kernel-team@cloudflare.com, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QNlDKQlw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Wed, May 27, 2020 at 8:19 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Jakub,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on bpf-next/master]
> [also build test WARNING on net-next/master next-20200526]
> [cannot apply to bpf/master net/master linus/master v5.7-rc7]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Jakub-Sitnicki/Link-based-program-attachment-to-network-namespaces/20200528-011159
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> config: arm-randconfig-r035-20200527 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> kernel/bpf/net_namespace.c:130:6: warning: variable 'inum' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]

This looks legit to me. Please fix.

> if (net)
> ^~~
> kernel/bpf/net_namespace.c:134:26: note: uninitialized use occurs here
> info->netns.netns_ino = inum;
> ^~~~
> kernel/bpf/net_namespace.c:130:2: note: remove the 'if' if its condition is always true
> if (net)
> ^~~~~~~~
> kernel/bpf/net_namespace.c:123:19: note: initialize the variable 'inum' to silence this warning
> unsigned int inum;
> ^
> = 0
> 1 warning generated.
>
> vim +130 kernel/bpf/net_namespace.c
>
>    118
>    119  static int bpf_netns_link_fill_info(const struct bpf_link *link,
>    120                                      struct bpf_link_info *info)
>    121  {
>    122          const struct bpf_netns_link *net_link;
>    123          unsigned int inum;
>    124          struct net *net;
>    125
>    126          net_link = container_of(link, struct bpf_netns_link, link);
>    127
>    128          rcu_read_lock();
>    129          net = rcu_dereference(net_link->net);
>  > 130          if (net)
>    131                  inum = net->ns.inum;
>    132          rcu_read_unlock();
>    133
>    134          info->netns.netns_ino = inum;
>    135          info->netns.attach_type = net_link->type;
>    136          return 0;
>    137  }
>    138
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005281031.S7IMfvFG%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmof_tGVAN%2Bgkq8R3Hq_sRDHXE_cB%2B37Sd7gKvgzVzVHw%40mail.gmail.com.
