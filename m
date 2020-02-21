Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE6NXXZAKGQEE5MCFSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBF8166EBD
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 06:11:48 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id x21sf572202pfp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 21:11:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582261907; cv=pass;
        d=google.com; s=arc-20160816;
        b=mKScwzUt3ySfUwkHxQWjSoANU0W8v/lx3E5YWBw+9/WhexikZ1hHIu2RQJ6t3wasyp
         /uE1pSSxQUskOUxG+kcvIh0BqfXAeiR1uOcwoKHCPDanRT/Dk7OF5tS0qvwq5+8vbuMX
         DX1GzpI7RRfSLbtsk0mInD2IEI5BJn62/8Cr5Ex/OpkwY74d/vP+78FVrRHi7Cf5ybHU
         0AMeo4D8NDBt68meXl4b/9oKONmNYrXFedjM1ak0mM+GNPu751/rishgxkvOMmCzxIab
         XJb7aA/7KQU464DKNYZ/uVKIrNSJJZUFxmLj9OgAlpoDvWXSXWDJmcoZN6batX/G9Cu5
         5D/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=QUHvJQe/5NeRQ8+nHSYcxCiyzFnY7DdYJDAYHm0VniM=;
        b=frNZiBPCyIPP4jaZpd9QslZVjilORhcuCeDm05ZHLKDcevq0thGvBosdQecD0xdhLA
         WEMGftMjKsBbc2w3zMxvEgBAkxnfheR8nxOZyu0zC35XTSZlTdV1j74xGhCRop7omBQD
         4ymIXFbGWyX7z1sbrflN7b/gDi74KNo0Uq6ngSDkUNkiYlVg5H00+7J34zZZi3DJlM/4
         v47bJh047OEdAc0uSpnD+ps5blDybf5k8hDfcmjh1JgTVQCVYjEwUlkoC1IhJcNzaNzf
         oUoH8TW8Dw/YDnz0dZpRFwdSu/KqqGR74Oc0T4k7g4YD+dE9IGUS2nw11Gb7GWyIIH/p
         oGqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZpxVmyP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QUHvJQe/5NeRQ8+nHSYcxCiyzFnY7DdYJDAYHm0VniM=;
        b=JTiFsWb8bHaQK+zW45M6J5dERBKY29zyETJTv5evdOUgCbCRfrkaTmkQ7J9iVDnxyK
         e2/0HqKBEeoXaL9fJgHmUEhObpf/P5ki2ttbGSjv+V2Mj+jiXC6rr77hRdkr7d+QV3+5
         5bfyyLStZOXlDGQfaIuZC9TK9J8VkWkbaP90pVFTkgDSGY/RslUVjDHC5zqzXw3kro/h
         Kj8F3lD3M06RDMkVZmwRj6JTf3CP+xLdc/XUVx6ul/Aviqf4UMcxFvoRrGIRFf3zbyyP
         zmxTXu1Atq5Pjtr4AD2NDAATklQjAEKGU3xiIGIE4xcmsZvkuZBujGQ5wG3iGPKJksqo
         ppeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QUHvJQe/5NeRQ8+nHSYcxCiyzFnY7DdYJDAYHm0VniM=;
        b=UeD3iPk9JPWZJlpOiQJCUbyNXb14YRwNZzwAgHlrynnU46cQn3MYUeMf3PS0xhaHX3
         5pYnoXB3Rk++vcgPdJrb32MyrzKGnwNidi/KEDr8EL4DWp+jEBJtBY9wiKJWpEc7DyQz
         dX3+h5CS1Aip4I/xNKifr4c831qxtQ/4aMaLKGa0Fa0S60fVsqvcCsFJuISS6vjxp91y
         DWqbMatAaqwz0TWFO2oRizNfNMNzA7q3CRvFqv2cedlJiwNaLpSgorvP8sIrc9UFR2aY
         u73fcfB6/NqD4Ms5b9yC+m5wE8Khvjznbqb/7JHblGcS6I7uxA3LcQ1tcsY8XEqprB2w
         d1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QUHvJQe/5NeRQ8+nHSYcxCiyzFnY7DdYJDAYHm0VniM=;
        b=JhmQj971MD3bvPP1VRFuxlPdFfLeUtFG+kHJYjrOiRchvtmTbxRqusQXb7D6UPDGRU
         g+KIJ2noAmNBMq0eOkoC9mhR+ZrTh6+paWMHSYkQoNZFDUi1b/MXllWiBTTyjNWeIefk
         5eQx7HwX6r+V7ofpxQgr/kPEfnRL3g4qU5X2JwNsvJVf4/CNBwOJy3aFQifzOUh4eK0y
         7oznALa/Stkbcnin4je7T7Kh5Y3iSpzIk3JsUqqtSwsoWb3s/LovBkXeVlDuucyZReSX
         PMu/H6cGsBtzFIxyVi31+UoaLnk7ZBKv7Bp5K1AMTzzab8ptBPmvCvI1+oxB6FydOM10
         TB8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQacDJ3o5MOYcSbsyQFzovpAZQSf74orR8d1zcCGEYEWiSqdcM
	GTLpl9XWqn18q4bzx5PJvNo=
X-Google-Smtp-Source: APXvYqwNQHhtB2VdSj5yTfgmtc1Skvj4kuRz5ezTcV8g+5wCq85rsIeJocVFkiJMJu1ViEW+u+sHnQ==
X-Received: by 2002:a17:902:9309:: with SMTP id bc9mr35969769plb.88.1582261907441;
        Thu, 20 Feb 2020 21:11:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:253:: with SMTP id fz19ls250202pjb.0.gmail; Thu, 20
 Feb 2020 21:11:47 -0800 (PST)
X-Received: by 2002:a17:90a:2223:: with SMTP id c32mr977339pje.15.1582261906975;
        Thu, 20 Feb 2020 21:11:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582261906; cv=none;
        d=google.com; s=arc-20160816;
        b=bsBwTUTNdpf6RTBzQ2yBjyA3DI3aBB3St+b2ztl/MknSd4y77pZIZvcr1Ilzp+cSjv
         RT7NUnyW+i1BiopcCiZbLw+oE54AbWpXQFgbLJ0PzQkLz61fryo4AJFYdnEPwhFCjy9k
         2NBoRafJhyRUTNNsoNr5SbX6P6tswkAs2cWHO16C0q07ozYp9Ioty7n3bPTCrJzDACd/
         AS6XGy8dDwhnaE+JbG902qGazlczR7CtxpfOsM581CskMClm9KiU+lCHVDTIN8UHVUpw
         zDj4pyr7bWZRLyiTfv5drH0cjs5/uY+cYq5Em7Thtlda/zUHdyz5AEIYWf2PFW7zOF01
         FwgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5UV5wUeMZSQ75I4nPUzI1U/CBtHwrjqZ1Gm7gVIxpqg=;
        b=OoyVNF4W+Zau//O9ZklbNu3HyFFbGswnB0wsTTV7xMb4gS0RLJ4fs/qQVl6qQoYSZu
         OS8TIPi3YfHtYysguVBd7sS+MpLoEvw2RI5Z3wMHQKhuT3uP73fur0px2+5bOacOZ6qA
         +cNyztGrnC+bO5+EHgX2oer9tXIUhy6f7U/swkslLO2LDMVvVDebfxHyBJMAxWTVTZ2o
         IHjV1umdSZBG2+V9QVzRqojoKRFu4M8U71GCNAB056N1vu9H+/JJDTJZ6OEZBzJnMffX
         BCF+p3NIQm6zuvyxtvtPtPFAjXdoONECkvE/3L6bAmeWiFdplg+Klq6ZshTV4uXOwB9c
         A72A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZpxVmyP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x11si13423pjn.1.2020.02.20.21.11.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 21:11:46 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id g64so920623otb.13
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 21:11:46 -0800 (PST)
X-Received: by 2002:a05:6830:140b:: with SMTP id v11mr26645220otp.340.1582261906182;
        Thu, 20 Feb 2020 21:11:46 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h1sm653151otm.34.2020.02.20.21.11.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 21:11:45 -0800 (PST)
Date: Thu, 20 Feb 2020 22:11:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, gustavo@embeddedor.com
Subject: Re: [gustavoars-linux:for-next/testing 1/1]
 ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
 variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a
 struct or class is a GNU extension
Message-ID: <20200221051144.GA47760@ubuntu-m2-xlarge-x86>
References: <202002211103.MQuVvnUg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002211103.MQuVvnUg%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CZpxVmyP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

+ Gustavo, since I assume the point of that patch is to see what kind of
warnings crop up?

On Fri, Feb 21, 2020 at 11:16:11AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> TO: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git for-next/testing
> head:   2d94fd162464e8b126227a996eaffa9e0442a1be
> commit: 2d94fd162464e8b126227a996eaffa9e0442a1be [1/1] treewide: Replace zero-length array with flexible-array member
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
> reproduce:
>         git checkout 2d94fd162464e8b126227a996eaffa9e0442a1be
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from <built-in>:1:
>    In file included from ./usr/include/rdma/rdma_user_cm.h:40:
> >> ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>            struct ib_uverbs_create_cq_resp base;
>                                            ^
> >> ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>            struct ib_uverbs_create_qp_resp base;
>                                            ^
> >> ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with variable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>            struct ib_uverbs_modify_qp base;
>                                       ^
>    3 warnings generated.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221051144.GA47760%40ubuntu-m2-xlarge-x86.
