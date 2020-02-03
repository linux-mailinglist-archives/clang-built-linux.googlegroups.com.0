Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKXO4DYQKGQEN6CKOWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id E010F15091C
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 16:07:23 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id i21sf3746305uac.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 07:07:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580742443; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGYQ6pbBBQYYFtBIh0bDZmml97pQdKQUwJ4MSfA24xba4ISzhkIQNwzRwRKP4YER/n
         pC1yQS/H6foVTExjgDMivStW9BHy8GswaaiWUGBOT14iwWKh4Cy7BV6VRTq6oEKuj5Em
         dtKfrAMPZGZ+09KlVA2ZKZYXLrgQtJWDGI3clj9ogTghEoGfCy5mzzatUdrZl7pvyMMV
         BKPVPIuWerfzDwFheoKlE9e9Rx0oN8YS1WPBY0z4BYJGOauZMuSQs83EPSEYUH+TKLvu
         Cc2Uxut85UvimhcRl+QCliEpQN3zjAA8Zk5rHGyNopo7sNgh4bnH2rMrsRm5OnsE7VAm
         qSdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AAylnO9DCLMPAceJtNQxax23jA34q8aOq3Cke5bctvU=;
        b=kK0AgFyt8QL2Z04WbQcwZl3LB+EWdbQEEE6vPFLhRUm6wyiHM1fOdfC36dLtPNwhRK
         ez99Xy5zDQlEc49SQ+NCMUIcTgFOcUylBiZzwwpR6PT2Y5PxEDLZdQtEb/NRSQuQNbiC
         bZoKA/dvKNGjDejpeI7Ph8P1fXvHGkjySlKIXlNtpIHZAFc6b5o3XnOWntMDXae+wSqM
         UBWbM6J5dAjsf9gCb/4OIif4mgj9haL6Xq7SvRlhBEPSKrorLMSezDGHRPn2IfI6K6Hn
         3J9zqvOnFAEyWdJFsXwdVHI6d1RKeWnXR7DJNaA7cQywZ7IMzuhIKU0RmFsGepPVGuqb
         B6zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CKvSlwPm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAylnO9DCLMPAceJtNQxax23jA34q8aOq3Cke5bctvU=;
        b=nmHWOOzokSRQmLDwRnGY409o11uuJAjsFVm0bylqZ/Sr7MTSwtek50f7AiF/orHSwA
         4eCuONthd3YAajuKqdReZFhtUBPjbv4Q1g4HoPLBJqzB6F4AznTxzPXSMVPaZcn9Z/Vs
         LRlhTp0L3ek+zjkueDY77STVCfAP9+c1Pd1uU5eOJFG96SOsOOuDOGtgV0E0MXYGKc+J
         agoVaHksCeGCX9WyE+un3dZql5dnf34CNvdYausbwOg+3FBmqN03q5mJNiayByxID9mi
         8HpTpH7y4JTQxV0Td7DTVyKv0+n1qGuVIzMyJ2MEtOo1yFIQhZLTw8tmw1wHssTn8Pi0
         gVcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAylnO9DCLMPAceJtNQxax23jA34q8aOq3Cke5bctvU=;
        b=pSBcPNJP17yZo5F3BzH5QzL24Aj+s9n3rejaTovdh0GhCH3rpHxBe+TAdh79I4XBqL
         3FfqNk7CW1zUR4sd9rAReHjtc2tbm7TvqXArI2lwF1lOjF5yjrlGMhhnVvxv/awDyyn9
         mMjEG4o5iOEFl4MzeriKnH9ci/8c9fg4WKVUI1BTS3uIqirZOt296I9wC1i3ylVj4n5g
         uo4D9qGUAn/qsoNnXSr2YmUThwoKqKLF1VucrquPr6cutYUUURQBDUZHs+VBALUb7Af2
         qAqdgJbQRLlztHjAiuJzhWIefY6emqHci5vrAYzSSrjEk/kim1AdhLEiXfSz+Qc6GEyh
         zWmQ==
X-Gm-Message-State: APjAAAWLGJ6s9CjBKXydDRA6KuONGYw/yMv9k65VzX7w0qE4KX5O5krs
	MOSlpw4js5xX6kwsH9ORXGA=
X-Google-Smtp-Source: APXvYqzBvlVI5ohJ3DRNfAEnGZ8yB2VVwgfcbBOv4RnvTCfv+V6kN1f+qhEXCQxxFlpjHHWEpU3YDw==
X-Received: by 2002:a1f:6743:: with SMTP id m3mr14049512vki.16.1580742442866;
        Mon, 03 Feb 2020 07:07:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4196:: with SMTP id o144ls783546vka.0.gmail; Mon, 03 Feb
 2020 07:07:22 -0800 (PST)
X-Received: by 2002:a05:6122:1185:: with SMTP id x5mr13926684vkn.38.1580742442491;
        Mon, 03 Feb 2020 07:07:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580742442; cv=none;
        d=google.com; s=arc-20160816;
        b=Rq4VX/H1Iq07PgxVdeGDyQkN/3IzBOS1MfIKaIfbI+zRoqwsATdDB9l3r/t97Y9WIl
         Gx8QNj6AB0ucL1TurgnHm8nUR6EjeBs0Tx3EyQTsXVtwPgpTqU9Or1m1+ibHFNWy8Gno
         l+KqFh6ffGbp/GkMo2miGZ1YUi22fPc5t3CWlNTlm69Af2eBra/vBf4RJPSnmJNVD9X+
         7/UCAYX2YNye7NB1qONkehoSjEmqLCSEu8K/KT6ztMQE7TsKhTpT+C/2S6BJsUJUJqk+
         ciYn6MR82XXtnMXKKn3uyJ8rAu1TO5+PofPBUy44QzL7xyjs2ZaC4EIflss/yFpafoYJ
         a4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Obfboz8lgVb+jqhNDhsBHDDwQsoaQo7M8A9sI1Pqqoo=;
        b=1HTJ3ErcGg0GQNueY5Y/nnHxPT/HjQ/pd2jQHHb9R7tZyl7zgIT/pU6Upp1bCsZHDr
         KLhORoRl/Eg+RoFBsclBf1C1c/8PM4Rrgip5NM+5zQ5RudVTXKRy4jX+BCFW3hZPVlKW
         erwKXYDhgXheF6hH9EjqaVHU6gvd6izuAXZkzAfEN8SnS2ulOT1lboDYVlIO21a2LzJa
         yXHaQNPk8geF5j38kP8L8+GCohBI9Z/d4sv8Zn9iX888aqcAEthFKaKE9k56JKB1M8it
         1HFegadA8UI327lQGvBEtop3rBEkiZ7ELFwu9/mvsZox/TXwflyUKOhSE9lhrTU9Aj76
         OVvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CKvSlwPm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h6si1271177vkc.3.2020.02.03.07.07.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 07:07:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id r67so6485903pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 07:07:22 -0800 (PST)
X-Received: by 2002:a17:902:8a88:: with SMTP id p8mr23586573plo.179.1580742441712;
 Mon, 03 Feb 2020 07:07:21 -0800 (PST)
MIME-Version: 1.0
References: <202002021939.yaHm7qPy%lkp@intel.com>
In-Reply-To: <202002021939.yaHm7qPy%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Feb 2020 15:07:10 +0000
Message-ID: <CAKwvOdmWZoT8jui_BiVn1H+hLD3cPco2P601M+jkd+7=niUL-A@mail.gmail.com>
Subject: Re: [zen-kernel-zen-kernel:5.5/muqss 22/22] kernel/sched/wait.c:14:9:
 warning: 'WF_MIGRATED' macro redefined
To: steven@liquorix.net
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CKvSlwPm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

+ Steven, can you please take a look at the below report, it looks legit?

On Sun, Feb 2, 2020 at 11:58 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Steven Barrett <steven@liquorix.net>
>
> tree:   https://github.com/zen-kernel/zen-kernel 5.5/muqss
> head:   bf569053d0fe08b3615793a0105afff3d28f3676
> commit: bf569053d0fe08b3615793a0105afff3d28f3676 [22/22] muqss: Re-define WF_* wake flags in wait.c
> config: arm64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project ba8110161dfb096bbc63039afd87ff6417328f91)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout bf569053d0fe08b3615793a0105afff3d28f3676
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/sched/wait.c:14:9: warning: 'WF_MIGRATED' macro redefined [-Wmacro-redefined]
>    #define WF_MIGRATED     0x04            /* internal use, task got migrated */
>            ^
>    kernel/sched/sched.h:1659:9: note: previous definition is here
>    #define WF_MIGRATED             0x4             /* Internal use, task got migrated */
>            ^
>    1 warning generated.
>
> vim +/WF_MIGRATED +14 kernel/sched/wait.c
>
>      8
>      9  /*
>     10   * wake flags
>     11   */
>     12  #define WF_SYNC         0x01            /* waker goes to sleep after wakeup */
>     13  #define WF_FORK         0x02            /* child wakeup after fork */
>   > 14  #define WF_MIGRATED     0x04            /* internal use, task got migrated */
>     15
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmWZoT8jui_BiVn1H%2BhLD3cPco2P601M%2Bjkd%2B7%3DniUL-A%40mail.gmail.com.
