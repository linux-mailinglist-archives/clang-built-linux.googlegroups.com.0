Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRMZTD4AKGQEPI4ATYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D05218F86
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 20:13:27 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id f25sf28726657ioh.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 11:13:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594232006; cv=pass;
        d=google.com; s=arc-20160816;
        b=OT2AvnvY5tFLVLkkRGg7hs9FuYKirSpGcAweAAfpxqkWPBz53E+Mmrjj+F6Ge7cZY0
         YCaqcnn36M4Txu9WCWP3D03GaNwbL+qPrHRvdXd2EoEe4/6QlLel2ASAYK3EfXRvCHj1
         5TvAuNyPTnWQWWhz+kOp3Tl6rcwT1OrERZUQuuXAkWI+CBVZvPRHHa9Y095djdwcnSxU
         dR7yCFNS3x/816NQEF93NiMDbuzvpzUi9oZBjmhjqTn7+1mAMNf04GcEIvE6LDjx4gOI
         6/i1XXm4RhxXlopKLAbBq+cx+NTjOcy7fEdyKK/oXRAGIYwjOekYfKHEof/n1HORAhee
         B9wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m5+qgIB9fhPM+TUe/HxRnBcQtPQCnZ7SaxIZ378UYZE=;
        b=FYCndDjFBJw3SWM5hUkPhbNavIGwQWLZfO5aBWtSghXtKPR6HysphThfPikRqMWFmx
         d5dxseEwEPvCxS6s79TTIc7pStU2847EnkttEVe6AaZKbISK8OScw57MKhScGpMq780D
         IXz9XxScNMbWgnW8gsgPw+5NejK45To9bHOfrye/HkGfdPLdAuvHDK1KPnjsJ9zT7Y3/
         4uJ6l3bOKcAcoYu3ZhQZZxr3EsTTbxmrH0zMnuQashHxXZT7wQ3Iaty8EfpaQCFWo7zH
         BUGHt3JjZknI2FgnW6dpeYgJNcHa/xI7zuZbh7hlPJ16rB7w++rb7JZ+rGGHNBF0PH3b
         53Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XKAaleMG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m5+qgIB9fhPM+TUe/HxRnBcQtPQCnZ7SaxIZ378UYZE=;
        b=Pym7cai56uwKsjvZYYbvPV6vNp1IY/cjdwl9I8ANdjyc4YfK6d6xsR7Wjs7Ii4Jb0y
         5/S7pL9RpnHdqzzb088ZhdIaw08AviTjJ7SWB55o1KnVY5C5HBaKqrtEh1aSdGnnFOkO
         xrIzbcRlTRv84r1s2j+vHAKb3peb7X07u1WlxVXsZND1cfU1URKAAz7W5pmqmymnn6bH
         drzMwlJFwg65Zi5pk4FXbObE7NyMaGQpoHRNCY3reys3/q7TcKmTgsrm9vc2HKHOGqvU
         dMG80gGFkGpTJE80/Bbbit4fNpYh7A2YwNJNw2CBEqOWysLfLlHcHH+omE85H+sVQdT3
         gFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m5+qgIB9fhPM+TUe/HxRnBcQtPQCnZ7SaxIZ378UYZE=;
        b=PEAXQlzYIob4EEcfECs9oiwDN8KDb/sYFgaBQlS/yT65QQSZgZxdlGWsfllCxdfSma
         sPzzwJveWDYK/Xz22GJniFnvEUNhJyq4hrfIBIqsK6yX4/UGDSOPX7ZHXxjV2o+YETDq
         E0ZGwPvId98/ceQn+ku9djl1DhjgugaQKgSSbkndLV/I0JLhokvmv9mD6YnQn3FbM1uB
         sEbVJ3nPm89osiFUI4CMyBKeDUKyWP3souM1yubkWrdy8VP3lVanwMy0cwbVga/obNZz
         b7828zXzB4j5iasd0umm53kjg3x+2QNOe/ITDygSHcVtqVw/GRrHrAmC6UUctR12JEdA
         Sapg==
X-Gm-Message-State: AOAM531RzeqlH/n8n6w8vEZI+TR8jivOnm7upiCryxeiBaZVga8Suzdi
	L7heZJ5eNzx/8arCtzZhDM8=
X-Google-Smtp-Source: ABdhPJzm430RxYGnp5uLsxW0kRMa6Rh90WjHQFlSZ8HqyQHjX3EC5jafBt/DQaGq1/GkdWAhwSuskw==
X-Received: by 2002:a92:d809:: with SMTP id y9mr36431142ilm.51.1594232005931;
        Wed, 08 Jul 2020 11:13:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f13:: with SMTP id r19ls488997jac.6.gmail; Wed, 08 Jul
 2020 11:13:25 -0700 (PDT)
X-Received: by 2002:a02:601c:: with SMTP id i28mr68983598jac.22.1594232005607;
        Wed, 08 Jul 2020 11:13:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594232005; cv=none;
        d=google.com; s=arc-20160816;
        b=O1VR+4K1ZHuPk1Ayc/vmV7sTJ68Hx4HyS4FuWW8zAyPBTl3aYwkEuadctDEOdzvWWu
         n+GJW/wsH+b8/pfnG36gpPJcLJeqlxh0fgOKacEmZf3ppd7cYOKv9XDxPgs2e4XwWcrJ
         y57auqD2eyNWPryjDKS+ZtJ/lzoFEJIsfFM6FOdLAqLPlVTbZ3p35WrDTCGHqPW6oDnr
         2eTACect53ltpx/HdeK8ygCLFDRA2EcSrGHRW/NqeV3BsYivFBh8q8JOYVulF6bWTGCA
         cJ9+vgfJJbt4NV9CLN26F0bXvfzgjev2Fod1qZSTCU6f+ce/yhh9PXJSRr8+wWf9r2vq
         b86A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yUXOplVotZyBR4sNu/4MXsSJbj1OGeWJJJs+7IP+Q+s=;
        b=q38FexsBDz54uKjW5erMQJF5rO8tNYEIy3/Slw86WhIVR4VPI146MvV3o57T2LPeP7
         VjSztD16jXQRUkTpra714bwA9wbDgEBY2UEqbmnVGjYYJ0bpn7WIssnaUNTdrmS/5It5
         k8ihLOuuEis7VdGEQpaC9/7v+trYWw+Lo2cyxfmJql8Op5McllOSo4N+KevSapa76nkE
         Lx4j2pLtsxINlrNSkvAEE+YEhy3KNRWvOES+M4uxKuEjHFy3D1/dqanHm+SFH9xFTSme
         gEOUK0zfI4mTytWAtX5QfpFFdhXckgN6KcotDGG0jnfybAIKMY+PV9kp0Cv/vLpd9ozM
         sknQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XKAaleMG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id d3si33434iow.4.2020.07.08.11.13.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2020 11:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id 72so7939048ple.0
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jul 2020 11:13:25 -0700 (PDT)
X-Received: by 2002:a17:90a:2e18:: with SMTP id q24mr10166658pjd.25.1594232004779;
 Wed, 08 Jul 2020 11:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <202007061558.jOn3THo0%lkp@intel.com> <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
 <20200707023303.GA277193@ubuntu-s3-xlarge-x86> <CAKwvOd=fdVa0K=cVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA@mail.gmail.com>
 <20200708012932.GA18919@intel.com>
In-Reply-To: <20200708012932.GA18919@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jul 2020 11:13:13 -0700
Message-ID: <CAKwvOd=_PUTQWZ7bOvFqaQKqPaVPnL11uG5iC96K9Hf-3yDGoQ@mail.gmail.com>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
To: Philip Li <philip.li@intel.com>, Chen Rong <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>, 
	Mans Rullgard <mans@mansr.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sasha Levin <alexander.levin@microsoft.com>, Wolfram Sang <wsa-dev@sang-engineering.com>, 
	Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XKAaleMG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

On Tue, Jul 7, 2020 at 6:29 PM Philip Li <philip.li@intel.com> wrote:
>
> On Tue, Jul 07, 2020 at 10:01:12AM -0700, Nick Desaulniers wrote:
> > Looks like c4e5c229b610, should we ask stable to backport to 5.4?  I
> > don't think we had clang builds working for 5.4 for s390, so maybe we
> > should just Philip to disable Clang builds of this stable branch for
> > s390? (There may not be too many backports to support, but I don't
> Got it, we will disable s390 for the linux-stable-rc.

Yeah, it's hard for s390 and probably riscv support on stable as we
only got those working on mainline recently.

> BTW: does the bot need switch to use clang's as instead of gnu's?

No; in the process of whipping LLVM's binutils substitutes into shape,
we're doing pretty well, except for clang's integrated assembler (IA).
Ironically, right now we can only build risc-v with clang's IA.

I would recommend `make LLVM=1` for most cases, though `make CC=clang
LD=ld.lld ...` may be all that we can get away with for testing stable
tree's branches.

Will you, Rong, and the rest of the 0day bot team be attending Linux
Plumbers Conference this year?  I would like to put together a session
on "CI and Clang" with the kernelci folks and tuxbuild folks to go
over our current compatibility table, which is a little complex ATM.
If you're attending the conference, would you be interested in
attending such a session?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D_PUTQWZ7bOvFqaQKqPaVPnL11uG5iC96K9Hf-3yDGoQ%40mail.gmail.com.
