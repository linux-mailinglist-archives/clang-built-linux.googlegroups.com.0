Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB7UATPVQKGQEU2ATOXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7D8A0913
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 19:57:19 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id f21sf296242oig.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 10:57:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567015038; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTLhzvHn3lEqCWVdPljTBjxuSD+JOeLOP4Pny6qhQyA71X9yKZYaJiEv4r9iJ1w6Im
         MuUsDq1Evs8jqampEVeFjCNqshXx37KR3315A9VnHMrSEqhtY9KSbfxC0o1LjNKHUC88
         vbD/FTYUTnNFbBuudl3TXj2o/ncTvkBCh+TzhpQYXFnjDYahsBxcrN8M/4ZgufpqtB0f
         bW1NRNPy0j2DWSCstC0+y0COSBDpNHc8gh6UButt1MOjjuNmGmxfZu4DS0vIqHaY/pI4
         PId4WGBgCwBGjuatuuNDpffu180giJdEi1Fgt2PDvCESKZXl8b8umykUlIGY3HIMeQg2
         EtIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XmKvsZrT5uJlCfZqWOv2RidkOMHOx8363C0hfauyygU=;
        b=F4VWqfx/mQT4iqfmX421JpEyagLhQCWZl2Bwkw2ZRyg+zjsyjw52XYKIJO//ffDTVO
         VMaXIKdALUe1+errcF/W//DT1O/PpkF7qkJclTWPD2I0uU4gSvYLzm7t924goXrBUHZ9
         0TukE1QNGpmDPbyR+UwWVEcrSKvVQvSA80n7knZSDlbQoOIfVLoelH6uSEhXS+OgqSoI
         JE4MzFnVKXEarySIiTzxu5TFxmVcrSLKPJFgIiPABTSPPWbLjI/JguNx3NXbwf+sdZvR
         fzEJmJiRO+EKp6+apSYcfDOwpvdHgFizcSxqbjlOVApPb1x4NeHC2nSWW8iGhm58Hm5M
         sbcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XmKvsZrT5uJlCfZqWOv2RidkOMHOx8363C0hfauyygU=;
        b=XManozWZEGkY0FrIOT9SD1rReKUr/f2NmV0m750/kblT/wipt5IHwfNzxCYOAfH6Lz
         4LZY/9AQmmHYdhBlSNf607toloP8w3EbOMAvsteEJtXZYMfPfI36dBBlvW4ptpiO2js6
         o6m1pDwjx7SRejzvpZICD3N8bKzeoBKexAbqk4aHCKqJVOpkENcZIDPHPUK07RtF3Jl/
         Ysceg9Y4wQAx0DwSnR5N1IuPEOO0kzcXHrqjVAKqXRe78SopZqYj1mVGMKC1kTRqEtIt
         qmup1PAEE/6xus0p0VkSIs6m35D7ci+6TyyDdSUZGKiel7zCOpf83BdeSd9L9ZSTcwSO
         eb9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XmKvsZrT5uJlCfZqWOv2RidkOMHOx8363C0hfauyygU=;
        b=CifK76C/rCh04rDqVgC6l3K11MDHKDm2jH4nD3H5XuaXhEEwy6nRN/Bpuu0q8sdaMV
         OZ9QP8vX0MR0TRZXnGQ9/7bB6TGFEFGLEqo0K+qUqvLbt0NoXiZON+izD4gK0QLDJgiW
         ZwlvKwALLP3cBKYwBvgKUJz30i/XCtQngADjBxUIAroHF2Y1XuQFeEZlZ0lbAlqvnD84
         cx/bpufRQuFlLaNOArzTmzSi4lhLrXMO4ua9dQ1Ttmu2gPts6IZeu+zYk+THEYcEHnz7
         AlwqBarRVn5ppc6P+VcnZEokBNJLht5UMuEjLomv3Qaaxxp/j+UB9LiCqS50FhC5IoHj
         /whw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMYbjrjNjnbB0XcuxwFgXUFm2ifGDYSvorI152H2q1hvoKXWod
	bJ7e1oyqG/Cq0EEZHhef5AQ=
X-Google-Smtp-Source: APXvYqzc0+PmX6+XNwRvYFI4oMV53dVun/76VhLTcBy68vQ0ZhiDbPpt0H2tSp6FiWoY6Vz4Ose5dg==
X-Received: by 2002:a9d:6e6:: with SMTP id 93mr4343668otx.65.1567015038454;
        Wed, 28 Aug 2019 10:57:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d14:: with SMTP id a20ls486962oib.0.gmail; Wed, 28 Aug
 2019 10:57:18 -0700 (PDT)
X-Received: by 2002:a54:448e:: with SMTP id v14mr3715516oiv.60.1567015038221;
        Wed, 28 Aug 2019 10:57:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567015038; cv=none;
        d=google.com; s=arc-20160816;
        b=Ybcs1W+MrUSpbO1ug86d9LG/qDhiDgI5IFRi1N6o14GMZW77gEflTf04h5YUTJqOiu
         RjGv3W3enw693f06WHxBM3tRQs3LCD6ZMlbOhoagE9XWNnEsLUR2qVsHtX7cQjtvRkV6
         glmbYHtmq5HTfRaj3TgDGa8e7c7iTZq/nGgZm7iIMlFH8f3b/1fzTgRACNioSGp6V5Cm
         +QNVacUqlHUfzZ33ulctqu9unZjfNRpZa+0wBS+dHt459t2+JhsSCcnswUqfhmit0LMA
         FFUhoxaxJjIoDM2qIgXwpysNpgcotjLdC0yXukIhRPa7t7NLv5fTzmlDsVQ7wHeZr/Vl
         HDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BQjM8mPnkujAKqtKzdz6J+Qpzqm9ZXk7rndfXUueOKQ=;
        b=y+RwHjF+2yJCnSLG4MvnaobbakND/QwTn7fKWLbh/KAAdxIWre2rgtfHsDaYgoTtQF
         NVAVIzL0HQYd3MEpT2KwSnKKXRpqcmI/n3UecHKEfn7lBAsvV0yv+3Vhf2vIeCwfap4H
         n6MfgcNwEz6sG0/V7y9akxxq2N45WrTiMlXpsgbHVwDSGE6AnCYbdFw7ce1x4Zc9plKn
         BnHG0RVX0j/M7aSuihq7JR4J7vKfMKnw6jtQb2o5M8aT3Qmd+P4KEjCkpk4OCvwec0Yq
         zhVw1ylDNjNXHYJuIuwoVIKohYw904yb1mb/MoTiD69csGYcZwXl0BaHrG3wqbUJnUgh
         iHMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id f16si198305oib.0.2019.08.28.10.57.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 10:57:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2C667308219F;
	Wed, 28 Aug 2019 17:57:17 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E42E45D70D;
	Wed, 28 Aug 2019 17:57:15 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:57:13 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190828175713.s7jub3sf6l7vyfoj@treble>
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble>
 <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble>
 <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <20190828145102.o7h3la3ofb2b4aie@treble>
 <CAK8P3a1gkA4cqbKbLLCAukiX-0tA9fV_FTG6PLTfv+DSHp44GQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1gkA4cqbKbLLCAukiX-0tA9fV_FTG6PLTfv+DSHp44GQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]); Wed, 28 Aug 2019 17:57:17 +0000 (UTC)
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

On Wed, Aug 28, 2019 at 05:29:39PM +0200, Arnd Bergmann wrote:
> On Wed, Aug 28, 2019 at 4:51 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > On Wed, Aug 28, 2019 at 11:00:04AM +0200, Arnd Bergmann wrote:
> > > On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > On Tue, Aug 27, 2019 at 12:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > Only a few unique objtool warnings remain now, here are the ones I
> > > currently see,
> > > along with .config files. Let me know which ones I should investigate further,
> > > I assume a lot of these are known issues:
> >
> > None of those look necessarily familiar.  What are the remaining "known"
> > clang issues which were found by objtool?
> 
> Maybe Nick can identify some.
> 
> > If you share .o files I can look at them.
> 
> Attaching the ones I could easily recreate here.

adm1275.o: warning: objtool: adm1275_probe()+0x756: unreachable instruction
- known issue: clang switch table has invalid entries
- also an objtool bug: need to report it as "falls through to next function"

atom.o: warning: objtool: atom_op_move() falls through to next function atom_op_and()
evergreen_cs.o: warning: objtool: evergreen_cs_parse() falls through to next function evergreen_dma_cs_parse()
- known issue: clang switch table has invalid entries

common.o: warning: objtool: kasan_report()+0x52: call to __stack_chk_fail() with UACCESS enabled
trace_branch.o: warning: objtool: ftrace_likely_update()+0x6c: call to __stack_chk_fail() with UACCESS enabled
- objtool bug: need to add __stack_chk_fail to uaccess whitelist

cxd2880_tnrdmd_dvbt2.o: warning: objtool: x_tune_dvbt2_demod_setting()+0x7f6: can't find switch jump table
- objtool bug: tricky switch table issue

exit.o: warning: objtool: abort()+0x3: unreachable instruction
hugetlb.o: warning: objtool: hugetlb_vm_op_fault()+0x3: unreachable instruction
idle.o: warning: objtool: switched_to_idle()+0x3: unreachable instruction
madvise.o: warning: objtool: hugepage_madvise()+0x3: unreachable instruction
privcmd.o: warning: objtool: privcmd_ioctl_mmap_batch()+0x5dd: unreachable instruction
process.o: warning: objtool: play_dead()+0x3: unreachable instruction
rmap.o: warning: objtool: anon_vma_clone()+0x1c2: unreachable instruction
s5c73m3-core.o: warning: objtool: s5c73m3_probe()+0x262: unreachable instruction
videobuf2-core.o: warning: objtool: vb2_core_dqbuf()+0xae6: unreachable instruction
xfrm_output.o: warning: objtool: xfrm_outer_mode_output()+0x109: unreachable instruction
- clang issue: trying to finish frame pointer setup after BUG() in unreachable code path

pinctrl-ingenic.o: warning: objtool: ingenic_pinconf_set()+0x10d: sibling call from callable instruction with modified stack frame
- bad clang bug: sibling call without first popping registers

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828175713.s7jub3sf6l7vyfoj%40treble.
