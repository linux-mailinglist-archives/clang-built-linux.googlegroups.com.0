Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH73QP5QKGQEO6MINOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E50C626AAF5
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 19:45:04 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id o60sf1334433ota.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 10:45:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600191903; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2664m991j7OyqgVrwNcYhpDfX+kYJrsQ7yaVQhIpCRNxxuCT6jPz5930uEYthgp4a
         cNygPFvvORVI7yduFjSiuYGnTyI505suaUIjQ7+KeM+qr5loIdZpFfW945W2rRv1hvox
         YKj9MvTxELmdHs6CEY7L17zpZ+wdI+AJCon8UCtm36ml4v9y8awx1f4CH3GA2bOwa+uq
         5YxefmYF2bR4eCAl8cZcqVjHYM9jFuGQHutmHSKBEjHrX5sfoyOO1gSjp/cAsr6LYFHJ
         1/i9uGAzMRAqmKuhFzyu7NkNTwDizGrK/SXm3GAN5GDEAZx9OnvPdGIX4EEFPmhToUQE
         DKuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZoprBaaU61jHKV6gN+Lg57b2u33rgp1S8JNoulifR8M=;
        b=APB3r5CILuuWzZ1+8j20kQz8Fd2BTd4HnWysRdtufspWGFCa8f16rLqQpi778tLrPf
         cnlkXG6QTl44QCEDGbYYWes683TPBLVCBiY67dobVEPQSvgztsEhnXWBcxjTLgD3qmCn
         2VPe6mueby54xRqpqP+dPhpkG5zFmEEL5V6fzFrud3ib/r2P8wvSZdrF35+oF/p9rgCo
         /484GOjBBZVSd5sckvBHytR0GjgMNRV87IZn11ELrebPB0ixwyF+3iXep5KBhDzqRt5S
         vIZG0VqxmZ7Qa4DpHPYYNOjtqAETA23NSeYREmPjJlvqmfKmV3vEsCRkKX8ZSfwXR0Lt
         OA6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rOS4fWQ/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZoprBaaU61jHKV6gN+Lg57b2u33rgp1S8JNoulifR8M=;
        b=LE2rwZZvHGdKivNIcTLLYpcierONzIZLsGTEEPjmg5jnH73cscoXwm4RsovBH7k+7z
         lyBvgO9uRSNrUG3uwImmK1+8Jh/kDL3YlvuUTO6sZchSz4QMso5O7FDPvkOnLlMLjf1Y
         h9N3/PbqUO2YfgZd1esiWiipXW9FAk8bM1pkbqSCzEUoI9v02zYPGk1ntNY9JhHWkp0t
         C5NUl9IxoPHZLfdaGr2RihMH01Fy6ixoJ7SLvSOnADpr9m58dslvSrv/3rCWGjY099QH
         bjjAzQaiWUnC8vo+z5dDRDIEwY993pFy1KWk+DYQYydpEo9U2xo4KN57WP/Jg18h26pX
         TOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZoprBaaU61jHKV6gN+Lg57b2u33rgp1S8JNoulifR8M=;
        b=VfcIOFyeU0+7gT4UeYWq7XCCcaxZCK7NSH49bZxw571+g0kM5hZflWOP4h1gitBk/N
         e+pBKQfte9u9ASoAuMmEc3iEISVQ9h4QO7J8bfrVzUmCgUeQJTDlr1lGVHcYkZtP5+Zo
         dHIG1ucbWqqASy6vwfzdHkF7Fu2E7URqeDTjBbp4cHhAnbvSdfxIvWXJLsJZoP3Wmk1R
         ov3oBDb1S4C5qPlCimNyLoeZ6zfbuLj9tK6o7a+tOixBCw9lazTRvcIVG6JtvDdlGecH
         M414KHGRU6U5yoVr07bfkbL4jF4pC3UZGb9WTNjSfRhzVIJm4J0HN/8hYDC2Uowh71ch
         /NbQ==
X-Gm-Message-State: AOAM530YPiVhhvx0wkdPxQbFzBHtJC0ArFrCjLeO3jqTEsjqvmWEPuDO
	TYHOz1TN+ChSM5GhrbMr9Qk=
X-Google-Smtp-Source: ABdhPJx0JHTEcsY/OeIzEh5mMUUm9JwWb2sx53x+gV/UWhhXjjocApiRuO5rllf3zaNcNpi2k5uzNw==
X-Received: by 2002:aca:b488:: with SMTP id d130mr419686oif.136.1600191903291;
        Tue, 15 Sep 2020 10:45:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls3119146oic.3.gmail; Tue, 15
 Sep 2020 10:45:02 -0700 (PDT)
X-Received: by 2002:aca:add4:: with SMTP id w203mr384770oie.93.1600191902919;
        Tue, 15 Sep 2020 10:45:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600191902; cv=none;
        d=google.com; s=arc-20160816;
        b=kGoJONt6kZUJl9TbsDqF6I2GCe5tFBP55vf/05iDT0b3Tlx+3zNu2wxu3Yu5mM2BE+
         eJmn3hui+CzyFqzS3eY9BPUGuqf1RhhnUiLvMixE5uarnwMvY8M/+qU6raGhJjIFXNOJ
         E4OETo5e7rU1VSk5AYuXGCkgPJVXVwBDfnYAjTvdfhzomuHfOH8+A1LRffJYKLIpxFyz
         s6zJPrcY25vXq6d1kaTJcnOUPJEF5OXFBGJhRSMIwxIjhN0K5fvlu9gRPlYgqoXzXp8J
         5kfpdTBEzCez2ALjpTPh0YXKY2ymrDw5Eoqd5dP7sMBWtxqcDC8KizUMwxLZRlyF7MRg
         nTxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QWmHefW8oD5UwOaVyeB2keHFNLfqq9QyBDTK4aqQw9Q=;
        b=zO2iVLyXUUE6i57I3eO9hZZZ9AmkiQFfsAJ45A5fiK3u1XVysG8eK99//jY0AYn7em
         W9M7dPNJ/ZcBqCjwec/zSXpTZrAsZMrrtU4gWXbpeZjucQM5XlxAAueMZb6r7tE6Hsms
         DKVsAX6NOfAbrhSLudkNJRQbj87MBUZCkCpDh9URLFy7vBKA8RtoFu3DHUDdsSVc37jN
         YKtJQq6JM9EWFoYvU/xld2VQVQxWtgLM9icwM0I/L7YZLW38eXyCv5HfU7oxzB2obmwp
         aTDj8yeJtEDuUaaZp7FyD6i++9NaAG7ouv67y5ZIEagmhLSt7FjcSum8/T7Qetb/TsTa
         JTYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rOS4fWQ/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u27si1147656otg.5.2020.09.15.10.45.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 10:45:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 34so2331046pgo.13
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 10:45:02 -0700 (PDT)
X-Received: by 2002:a65:5a4c:: with SMTP id z12mr15329368pgs.10.1600191902079;
 Tue, 15 Sep 2020 10:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic> <20200915170248.gcv54pvyckteyhk3@treble>
In-Reply-To: <20200915170248.gcv54pvyckteyhk3@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 10:44:51 -0700
Message-ID: <CAKwvOdncdq4nMN1dXv_+3rC84wGEJtmgiyNTHNhCQi+ouqaB7A@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>, 
	kernel test robot <lkp@intel.com>, "Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="rOS4fWQ/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Sep 15, 2020 at 10:02 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Sep 15, 2020 at 06:05:54PM +0200, Borislav Petkov wrote:
> > On Tue, Sep 15, 2020 at 10:18:16PM +0800, Rong Chen wrote:
> > > On Tue, Sep 15, 2020 at 03:55:19PM +0200, Borislav Petkov wrote:
> > > > On Tue, Sep 15, 2020 at 09:42:56PM +0800, kernel test robot wrote:
> > > > > tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git  x86/seves
> > > > > branch HEAD: e6eb15c9ba3165698488ae5c34920eea20eaa38e  KVM: nSVM: Avoid freeing uninitialized pointers in svm_set_nested_state()
> > > > >
> > > > > Warning in current branch:
> > > > >
> > > > > arch/x86/kernel/sev-es.o: warning: objtool: ist_exc_vmm_communication()+0x12: unreachable instruction
> > > > >
> > > > > Warning ids grouped by kconfigs:
> > > > >
> > > > > clang_recent_errors
> > > > > `-- x86_64-randconfig-r001-20200913
> > > > >     `-- arch-x86-kernel-sev-es.o:warning:objtool:ist_exc_vmm_communication():unreachable-instruction
> >
> > Ok, I can't trigger this with gcc-9, gcc-10 and clang-10.
> >
> > .config below says clang-12 so it could be some experimental
> > bug^Wfeature :)
> >
> > peterz says this has been fixed by:
> >
> > 318af7b80b6a ("Revert "kbuild: use -flive-patching when CONFIG_LIVEPATCH is enabled"")
> >
> > but that was reportedly for gcc.
> >
> > Lemme Cc the people of interest and leave the rest in here for
> > reference. Note that CONFIG_LIVEPATCH is enabled in that .config.
>
> If somebody can share the .o file, I can take a look.

I'm cc'ed on and read every report from 0day bot from builds with
Clang.  I started noticing a few randconfigs getting this report from
objtool.  I had filed a bug to follow up on this:
https://github.com/ClangBuiltLinux/linux/issues/1148.  They all seem
to be coming from randconfigs.  I've not yet had the time to bisect
configs to isolate which config this is coming from, but I wouldn't be
surprised if it was UBSAN.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdncdq4nMN1dXv_%2B3rC84wGEJtmgiyNTHNhCQi%2BouqaB7A%40mail.gmail.com.
