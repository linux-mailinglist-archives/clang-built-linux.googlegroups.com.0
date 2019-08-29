Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBZ5XTTVQKGQEWXG2MZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 89741A0E9C
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 02:27:20 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id b143sf1841189qkg.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 17:27:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567038439; cv=pass;
        d=google.com; s=arc-20160816;
        b=N32XD1ztxovAXUGxA4Pu061H2kIjghio8byFjdTRDriJAHppdHqaJD3cGZp68SZMIJ
         3j5nKg03r3MKZY8UvgvSKpvP/rbiNN2XvOxH1SZDIZ/9V4M+3QTtT3SrEr9QA4ImhBsS
         utyxeIEjPbPYpvWMpCJ7Wq55fDEPNKuEAW2aAc057oAHGvhmvHY024hPiSHRicLGwU0y
         L/nbGaSm7HcBNDOvwV/V3mnJ9ylX+eyrMJ7DTvk6u+Pyvw/aMj+xITsx7+aMNbF3btm6
         RDssr15bGShAnBrG+fugUlpW16+OjlxcBgtlCql9OWUV1Hzfjpns/z8C8xKsDweJKXwG
         Pn/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pWDsNEBtb+enh6uodsWPG6nS1GY3ftUlF2Uuz9au3TE=;
        b=SX1aoLevWf4SXT9cSTgXapbPAOQm8WktYeTrP7vWNUJgKkCXWcyEjQSAI4RbDDnnlm
         zVlm2KrH0Q0Qm8GWzXMnYLYpZ/hMSx4c8YHx4jKomLoxHL730to6o5mjVIDPlCKwNkzZ
         6Ds7UbBuvNRcU4ekCgc63aD7bjJY8+Hjj2dj+8RHFwdxPqMExEsmqkIm0KKNa7FaIZC4
         tT/Fvpoyd5EpOLtldBdO9c07i+OdCLx5gElVfptxigZbryVJV7FLS+UhX8wuEEJRA1+g
         2LE+V47UByM74kl0xq08Bi+b9+5vHuU3rei/t4YL+iLbI1qtT4263n2tFsfaqkybJWMi
         qQ4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pWDsNEBtb+enh6uodsWPG6nS1GY3ftUlF2Uuz9au3TE=;
        b=QItofWt5+2k8FsWfBILVJyYrILM52w5ss2e5TqOGGYBl+fvOrY7vdlSRYyXB4bxTBf
         h+Y4t3xKSuNu/G5AQqdc0zHh+8Jcnv2NGlJXiFNvWYGIUHY0TvpyIjFKyuBINqfrtJot
         xENJMICuI//rf5p7QJvwwOc+dHcxptp+8ENY4PDYdlnmliUMBfRu4irCf2U9w9s3qUu2
         uScdhujl+HHSLYgDngfOqCfZZVT9gECnO0dElE2bpWaIlafkTr3QFqQGKwhebyqjtmbk
         a+9HJ2ViqCFAw15LgkvZV+znhz31I/ohlTDoLF5UaMIgSl75G6Enzmxqk6jSh8D1vKb0
         A8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pWDsNEBtb+enh6uodsWPG6nS1GY3ftUlF2Uuz9au3TE=;
        b=FuSW4jbmi+FRd0Arx0TWTWaUmEXWCT2GLdw1sMVPEclrnhQsUjdgUP911aCi/clQds
         jI0Cee5D8/31wxEWcD1EP+CCAChdy/4UN2NXbMtwS71a/joTqalvxUUj3ZbKp8pXlDCs
         GCoskbBRKsbfy1hqDKnDBpN+6H0pdgGn1x5GzebLvSiH6zeCHc0U9cR3No0I1douiJQW
         1OSqBcbNnPpfkauGzuJn9RKZCrI8EF/D+rCaCqwpMqCX6zcbpCfGwrdNftwH2zzx49o4
         Yo+S716Baslk3D6twrH2VmiWDHpsI4cYpb5zn3iVUJiS3oIQwecu3LbSPWi8H13A9caJ
         9IYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVi2tQ0xLRwcO23OGm584iraZatlu1/wKLryCVhNV28sEKhhw7U
	A5UJRQsXPR8B4FyrxWwMG2k=
X-Google-Smtp-Source: APXvYqzdbb6IBTGlLB4IRRnNwmwXt+JfVt/EhvJsk3rlGL6mStkrkvAEnUzUtoptDtG3HrbJliSIag==
X-Received: by 2002:a0c:8486:: with SMTP id m6mr4860554qva.61.1567038439522;
        Wed, 28 Aug 2019 17:27:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:81f6:: with SMTP id 51ls96270qve.2.gmail; Wed, 28 Aug
 2019 17:27:19 -0700 (PDT)
X-Received: by 2002:a0c:eec5:: with SMTP id h5mr4910949qvs.238.1567038439216;
        Wed, 28 Aug 2019 17:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567038439; cv=none;
        d=google.com; s=arc-20160816;
        b=etn1LYsyoaJXyh0P+riToFqLOV9qxTTHkg/xolwCO/uEwOoPYMD3lj8NBFWawKxzEZ
         BxuKhFssXqDjlv7QesukprYE1zDEyDr0BPa7//4NkHofW7LwbcNrkJ4T0e0Un8NAypi5
         II+T2LKvHZIUfUZoyMRBvPpJtRczjCYItFsNhQiEt7Am5DcFfdLqy95QFA0yZC8LmsUO
         g3F329bhaC4v8NyHxKu2h/jnS7pcBap/yr4papzWe6gLdNkiAq7Q7ZqSKWNpDzP6JwYV
         fZcvuEW9DMe9ZEn4Ra+1Cb9sGSNRfZnc07ui9qV5JoR1zBT7AruS3kcUX8oF+teB8GK+
         hFrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=s/KVsDmlP6t0JECNCM6NvLGrrlNTRtkqmpzZWC3KgeU=;
        b=bak5Pyxe0uxal81C9rglQuzfWYMCARIUOEwF6qOjwbb/W6rHNQNwS5BpLZGFqtHE4q
         S1XlQrz/sT6bQVKoxgMLONmNG4p6Dc+EbSfNJy4n5ZlJ6LAcpHS4Wipi2qvh4wHUdL8r
         //U9pIO6iD/5ptzTCk8P3eX+8Ql1W1IdzzPnHU+kfWvVqoGo/MIbvEOTonw29Hn/2J0v
         3UdUgs5dh3k1sBEwL2JfqqfJufz0iK1v7aBlyL97APY1EZdJ5oIasMEuKdyJ+tA/7L1u
         Ov9BC4bfbRfpoAOoyWIiuXEJMn/TfNBZc1GFfLFBZcgF7/biTV9r5XWETHNld1yJyv3S
         zJcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id h2si43487qtn.4.2019.08.28.17.27.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 17:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6215B3082E24;
	Thu, 29 Aug 2019 00:27:18 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98931600CD;
	Thu, 29 Aug 2019 00:27:17 +0000 (UTC)
Date: Wed, 28 Aug 2019 19:27:15 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [jpoimboe:objtool-dead-end-ignore-fix 1/1]
 arch/x86/xen/enlighten_pv.o: warning: objtool: xen_cpuid()+0x46: can't find
 jump dest instruction at .text+0xed
Message-ID: <20190829002715.bvalj2blv4o3ixc7@treble>
References: <201908290644.aXNcUJQt%lkp@intel.com>
 <CAKwvOdk3rWQz3V1Y0KzoP+4RWmjZyZVhXKiD77E3f+cGhwU38w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk3rWQz3V1Y0KzoP+4RWmjZyZVhXKiD77E3f+cGhwU38w@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Thu, 29 Aug 2019 00:27:18 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Aug 28, 2019 at 03:23:26PM -0700, Nick Desaulniers wrote:
> + Josh
> This is a report from 0day bot w/ Clang.  Looks like this objtool
> warning is new to the bot.  Was this one Arnd had reported previously?

No, this is actually a private branch - not an official posted patch
yet.  I saw the same warning with GCC so it has nothing to do with
Clang.

> On Wed, Aug 28, 2019 at 3:19 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: Josh Poimboeuf <jpoimboe@redhat.com>
> >
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-dead-end-ignore-fix
> > head:   0db8ce831cfdf0acdfe1d938dd4de67821c3a5ec
> > commit: 0db8ce831cfdf0acdfe1d938dd4de67821c3a5ec [1/1] todo
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout 0db8ce831cfdf0acdfe1d938dd4de67821c3a5ec
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> arch/x86/xen/enlighten_pv.o: warning: objtool: xen_cpuid()+0x46: can't find jump dest instruction at .text+0xed
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829002715.bvalj2blv4o3ixc7%40treble.
