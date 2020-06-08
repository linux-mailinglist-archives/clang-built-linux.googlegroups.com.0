Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYXS633AKGQEKN4YCFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556D1F11F9
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 06:07:00 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id w14sf13334059qkb.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 21:07:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591589219; cv=pass;
        d=google.com; s=arc-20160816;
        b=lg3x/LwX/2KUm+phKFT3TicEx3p4Ix3DgHm4FxMlN/9jusV8Yk966IrLDT+jM23U7q
         wyzDtlhoREkV4ExlrFI8ldmDzZJhkaCHJXs6kw8D+H7alBDgfPbDfqiAnXH0IMCqfKR3
         YMJeKT8qvAaSc2EukfQ5O6Z+5Qj8ocVmoIc2oOaRJaNaNV4SJtIJiXFzynATCm45WdqK
         ZgY4n3ulkJxxpubVFFoWg3gFRKj5LGgKgxqaU6YzayR3eTFvWwARaALWSnOWU9Yy23yv
         I6x+E+P+hUL4BN6kw/Y+8uWP0jIeSGqRu6Z7o03WHorwhzIVY5t7ZYQk8mMLfKrLJFiS
         oIYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vxXZ0e5kbJhYlekj4OEAmBwjOaM2ee8DbdKGvpMSZuo=;
        b=ed7TwH6n+yRY2iuAQjpIDyC8ikf1YvrIIMCWVcsjp2mNisd6JAPNOS0RKHdnQk/7KQ
         eDhLEzLBIerYW2ZVnn2GryeF46W1u77429iI5WfYE2zYjUu7l7UlmC0KNScvZFC5+AHy
         CAVa9r/isSAlPCd65wxPa6+kp6QBakvYRsjO1L4N5l5W+qrUgCeElun81O5+UsSpP6B6
         pq9x3zSt0MTstnBqAlOJwJB1Pox8CZ+qcu170RexBV4zJFfo/5UC7Squ7nxkf1XkK+iz
         Lj8gL2kinjcLv6syVt2Rrl4bk6PTGRdaUXayNWckbw/xrITPJiONdvl2ivQC1VwnRZ6g
         v59Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D4r7zAS1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vxXZ0e5kbJhYlekj4OEAmBwjOaM2ee8DbdKGvpMSZuo=;
        b=sMIiBYCHBVJ+NukN+l2wy4yNFi5mPHmCQdwrb7m2RKNvEeLHtQyUqh3i2WKePOViQZ
         k5miPMdFJ+/ql9FBns4LkOpqEtXHQLi1lVhzNHEFXATbAXxiQ1j70P8qPFGnU8grKqWR
         jw3Q5kKKK40pxWr5o5P1qpBtYz7JdFCRKTMGsut4SHlJ6G1DozYzlqCb9kscyh9G8/nn
         L5/jGUoRwNLjCuH2kubI0KEaDHZyTntmNVeHzXAKJ4H2t8MFGoAVxK1XiDFAkTOWVHQK
         vLOpveBNuivMw+tktolqg7GR0ln02QaAZFLqPQs/epXody2BIxBQh83Rx7hqu7/txEAe
         w2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vxXZ0e5kbJhYlekj4OEAmBwjOaM2ee8DbdKGvpMSZuo=;
        b=gc7BWpr6VZ+YJyhxuxPZv+7a9MtCbprz/seNIMKB2fhMcIO3ot3fHR55xgvwbIsTP1
         +iv2uHI7BJXsQiSutZa+Cf100DMhAn8M13SAxr/USVmMbmxlsm7AsI5umdVbc6Lc8Yhi
         BavLuTDxaB9VtPnSRWfjIunPeh9MGz/F/2TBCdOLP2popoubfAh7dGWRIRba1+MUucJw
         hkug+1u5NErPqA02M7uBPT5SXktoIisFS6yORWFIWnAssxf+Mnw6ekxhzFTwHQaDuuRD
         ImdYIbKMtC1y8Vc3ayU5xBaAFtlTHai7O6KSYz2hdqDKKLUMbtI3tWJr3LTIUbC1FPTl
         biQA==
X-Gm-Message-State: AOAM532a3hl7BOG2dqEDZbO2mM5HfbFVlOnJWXzHzPFzefu7rWyrH+NS
	y5dWlmln2klSm++2qRhJAyo=
X-Google-Smtp-Source: ABdhPJx/PjTGCGGk6zlrsOhRMSIxAW3KcTSSBnZL0k5QhldxrsAiZ/pU5RN/JM1uAnWH89H002NV8Q==
X-Received: by 2002:a37:64d8:: with SMTP id y207mr21024049qkb.2.1591589219054;
        Sun, 07 Jun 2020 21:06:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:658:: with SMTP id 85ls6971342qkg.4.gmail; Sun, 07 Jun
 2020 21:06:58 -0700 (PDT)
X-Received: by 2002:a05:620a:247:: with SMTP id q7mr21109177qkn.36.1591589218724;
        Sun, 07 Jun 2020 21:06:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591589218; cv=none;
        d=google.com; s=arc-20160816;
        b=SV1jFBNFjHVIOPWw2Qk+wVszMgRl184zdT0D16NtGAwTLoPj1BrUrI/crRIad5IYCd
         qL7API+bWmYHmaZsNJc7hV59SpjBqN8fU7v2vJ4uPuIUXUq+Hcn0VlAqVUg7eHnCI4Os
         LW4ZHI+MS2/K3Bx95hWSY9lT+9GudTt5MT29az838F5qQLLlo9luBxWdqxnGareqSvqb
         enf6Y1zvAvh9zPlPW2J8NFkFTdgRCzIUrmMLkAlRGITqULXWpWttBao6oS+QxUnalgwY
         3RucadVr890Gl0sHf6B3S0BqVOrRkMHtDEexgJlc4kEoNl6oc8hv7+FQskjo4Q40Hhfd
         /04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6prbNiDqzI4xzLA8A7G/5lhO2ebbXdg0P2nQwU11zLw=;
        b=FhrKe92lLfwr+LPjkxMwyNaeSQ2izF8K+iThgsfY4U21684zTi1EmBMBRRd/lKAYXm
         eoTnU9dVeAXqg5tS2wfwbKKFIEtOOvcB9SW7VQ8fdPFOEvKNlInUIOOVOa47ocilW0RT
         5YKC+GcV01PxRZX8C42mDqhGZf6vjAGizlwZs3Afq9W4Fpj8rmQWKuCiRQZHFk9Uz8sp
         X5+7T90Xep8dYVY7Vy7V44+0+6+8kc6DhHrQOYbHpgrOc6F0n9qwTBgn9Wl1Iuh3d+0g
         A3i9RhuBxqEakxdkXdwgts/rxi8uf6rx0glJQcCOKDZmyqBnHP8jrNFJJ29nnJuPMID4
         pmfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D4r7zAS1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x78si213455qka.4.2020.06.07.21.06.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2020 21:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 185so8130291pgb.10
        for <clang-built-linux@googlegroups.com>; Sun, 07 Jun 2020 21:06:58 -0700 (PDT)
X-Received: by 2002:aa7:9093:: with SMTP id i19mr19241270pfa.152.1591589217629;
        Sun, 07 Jun 2020 21:06:57 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id y23sm4552271pgc.78.2020.06.07.21.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2020 21:06:56 -0700 (PDT)
Date: Sun, 7 Jun 2020 21:06:53 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: ld.lld: error: unknown argument '--no-relax'
Message-ID: <20200608040653.5xsaoydwumoodklw@google.com>
References: <202006070512.Y6qqd7oR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <202006070512.Y6qqd7oR%lkp@intel.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D4r7zAS1;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-06-07, kernel test robot wrote:
>CC: linux-kernel@vger.kernel.org
>TO: Ilie Halip <ilie.halip@gmail.com>
>CC: Palmer Dabbelt <palmerdabbelt@google.com>
>CC: Nick Desaulniers <ndesaulniers@google.com>
>CC: Fangrui Song <maskray@google.com>
>
>tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>head:   b170290c2836c40ab565736ba37681eb3dfd79b8
>commit: 3c1918c8f54166598195d938564072664a8275b1 riscv: fix vdso build with lld
>date:   7 weeks ago
>config: riscv-randconfig-r022-20200607 (attached as .config)
>compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
>reproduce (this is a W=1 build):
>        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>        chmod +x ~/bin/make.cross
>        # install riscv cross compiling tool for clang build
>        # apt-get install binutils-riscv64-linux-gnu
>        git checkout 3c1918c8f54166598195d938564072664a8275b1
>        # save the attached .config to linux build tree
>        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>
>If you fix the issue, kindly add following tag as appropriate
>Reported-by: kernel test robot <lkp@intel.com>
>
>All errors (new ones prefixed by >>, old ones prefixed by <<):
>
>>> ld.lld: error: unknown argument '--no-relax'

The missing feature is known. We don't know which project actually uses
ld --no-relax, so while I know this option is meaningful on x86-64, it did
not seem meaningful to implement it. Since the Linux kernel uses it
(well, since
http://git.kernel.org/linus/a1d2a6b4cee858a2f27eebce731fbf1dfd72cb4e riscv/ftrace: Add RECORD_MCOUNT support
the pre -fpatchable-function-entry approach) uses --no-relax, it seems
fine to implement it in LLD (https://reviews.llvm.org/D81359 )

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608040653.5xsaoydwumoodklw%40google.com.
