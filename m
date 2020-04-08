Return-Path: <clang-built-linux+bncBAABBL6PWT2AKGQEIFHEUKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB3C1A197D
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 03:24:00 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id i26sf2073929vkk.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 18:24:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586309039; cv=pass;
        d=google.com; s=arc-20160816;
        b=D0w/nYiBH2t8WB/f6lbpb+i5k6KIQOY5OXV54uHgzxVHSK7HtYV29Fq43N7vGDqpiV
         k1kcCTFuNf9xQ/yySK6ReEaWnO2m8wkk7QXxo0McXZ2tuQoKOpLznaCMVDewCCrtSb+Z
         /s4Mr/foJoST8rNG8yCouzL0YjH+jxrkywtZaaK13cCD7w8yTQ0jhbcBQMY6hTsPBU4+
         TwbdpxhMO/wKe9oetdiDV0Yqd1bEAsDQZAPzZM3Fo3lKEb0aUk6eKGclkgeOQM5c10cS
         aYASQ53YOHDkLLtHYEvJG/4xEuhwgytHW+RKRi2epK6gvwqZCjbse7khgyp6s9mQ+lqV
         xBhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=CTiQMnIPR0FcZ1derF8B/PnffUicXW/0oPn4dCf/tG0=;
        b=RhTHR8ABcsVNpzKR8GAirZbR9CTiaHWKE37N0SlPaKqzO1bGA7ifyA2dN/OKde+Oul
         GWuU4U0WF7mioa27qZ2Wn27TKtMZCjn3fHu1oCfJOld/5MT5H22tVq16HytQoOrS8QPz
         cO9fBtJJd2mJUG+goghwAS7WYKgejW0fIMGn5QZhIjqZFtIi9oYCv4VpXfdFAHLPC+l0
         B7jNFXysJUGioMw4ekBKigWVbVirqI4DnX2fSE7/0eemEGBA3CwvkZDBglsxe/QlyYPQ
         nFKfoY4jkFxHYQKrV11b1hDCTIpFT4rNjlRxETqyKGUU6fz2o9jvuK4msxf0aHBzrrU+
         mYpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sh3YrU5f;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CTiQMnIPR0FcZ1derF8B/PnffUicXW/0oPn4dCf/tG0=;
        b=oj2387X0hFG6aej38lsZW2rHiOY9LbL5xemWfmXlGdT8wFLedgZ0YgOZ8GqqDxyUOX
         yFgqo/GIbJd38jt9RWym3LHAuT6zbbY1Mv0boWDsHQMWJJbIvwg92L5Hh68Fk9wPEN6m
         iaHrBTm/rQEkt0+zegl0hTZyQSQHdTSSWTuTL3QEi+bZTtscmTO8+Rn8jyaPRM7wjI/O
         o/nhPHobN18siBAdhVN/UOMe2i70Ofsb+BGyV2QUrgXr7ptCHkSGIoW9frK0JKKs7Agu
         z1foNZWr/tvGFci01iXe1n7hCCkMEpaLImJ77n3X7M1OujGGLmb+uFi18cw+910eXRNg
         q4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CTiQMnIPR0FcZ1derF8B/PnffUicXW/0oPn4dCf/tG0=;
        b=EhCQg5JWWxVIuS0+8W6of496YeXm0kb/HPoALjfjmAJSKuhtRbGY58a3bpHZ9Y6MSe
         xbX7IX9mClcyfCoLoeM0zVCS8lXn6hxuLv5SHfYUmP1DLaF5WhzYnyQOwRU8hHpZCtmm
         lshjINzQYrEGq3lFq48O3pCp+pJ9IIm7JgDZ5owr14FvsWOEQtoVVaMv6PNQa1rhrSgI
         VtYCA1KgIWAZ4XIsSrV70rZPUol3CqSCbb3Aj2TOdUBsa1QGF7RGSnTovpM70gmGxxKF
         bag2gn+tXfTKeQTvlQ3XsikpRJvnkz/VNuRmk5nocihrDcxW3pEZ8bIkjgi/JwYyI2bn
         K9WA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubTgddGzYc6KuPx+MnaDejnLa9sH4pH5LL12qw8rVqUD3UqPhkb
	/yL9EwhIjhLeCK2EMZPZZUQ=
X-Google-Smtp-Source: APiQypJtMtePAXMpVUJzSrNobU1dvmRU7HjebFXpAFT1jEt5AgFXRV+GCJdqec1zYGpVPxR2OtUL0g==
X-Received: by 2002:a05:6102:1163:: with SMTP id k3mr1752129vsg.178.1586309039401;
        Tue, 07 Apr 2020 18:23:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:328a:: with SMTP id y132ls764274vsy.0.gmail; Tue, 07 Apr
 2020 18:23:59 -0700 (PDT)
X-Received: by 2002:a67:ab4f:: with SMTP id k15mr4529532vsh.69.1586309039058;
        Tue, 07 Apr 2020 18:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586309039; cv=none;
        d=google.com; s=arc-20160816;
        b=YyWxbnm4gyyOpq9op15s0JM6IpSgHyXyg+G9sMJ+C8zCWVQxaQJmWm27Mt1mNnQBpD
         rN4cbPELl3zBNWaPoVbU93BpGLsMNFkjW3dgPYqLC7189MD02Ggd+odS3xQfa+tVt8cq
         BDJ1RcwWH7m1zoOJ2b7iA1Iiu3rVwQZNdemEoNzXvX0NdbMnMJsodgaIZxpinms5ZMfB
         F/cxic9oKNsi/K0M1BKuz/WFCaSRneZUCSQt2tiYJNuFLKqWDcJMILP7IXjbn/nCuZEc
         NoP4yzwZPHRyQQqYVBC3hwbwhETYoOMS79tAydzkY1qVDR3WMCD1FIocPIU+hRgFZdPZ
         ivkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=1OXWtTS4gBVnU+5EZcvipXPbnrhrnm9+PH7xSCtTkNM=;
        b=jLLWFnPdN+sfQA+h1trBAk5ttep9krVo+wpl5oUhuuArF1qBiO4hzpQt4IHEoxwVuR
         i0LNeRGI0X9wuDSPjQf2M9JW/+31QcuVRZafZN9i5mIWwq6+0XsWMZgzB+VNpNJqXJAH
         yHfGaS4EQz8ejTd9mpiaoAbNbpnQpjjCf8w5I2/T7afjiFQRkDwsmajR7ogNCvCGxqTK
         djGNUjAFVXPInUZbfEIMz0vDjgSBkVMzzItkhFsUqXveX/R5O6d4znWFfPBVaHd8Dg0h
         YyqZQfWhF4GjnNi33oJ/n8P2c2TTIG3hqTo8gdTiMRnG0y+H5Lfn87lp2bqgmXdaZh17
         jtmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sh3YrU5f;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id g6si423708uab.1.2020.04.07.18.23.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 18:23:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0381NfHV016946
	for <clang-built-linux@googlegroups.com>; Wed, 8 Apr 2020 10:23:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0381NfHV016946
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id i5so1436186vkk.8
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 18:23:42 -0700 (PDT)
X-Received: by 2002:a1f:32cf:: with SMTP id y198mr3643371vky.96.1586309021182;
 Tue, 07 Apr 2020 18:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <20200406112220.GB126804@google.com>
 <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com>
 <CAKwvOdmHxeZ+T1OsOhW25pPygHM4D21OgZqRk141xbjP437-1w@mail.gmail.com>
 <CAK7LNARSMvGZ6T4Ct=U4Xe1WQCgkaWE8m8BxRuYiaokKVjA_ig@mail.gmail.com>
 <CAKwvOdkicpNMqQipZ+AMTEz7JVou3bkcKiQ3Cih20qH0hoziDg@mail.gmail.com> <20200407191923.txaggm7ntxrinddf@google.com>
In-Reply-To: <20200407191923.txaggm7ntxrinddf@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 8 Apr 2020 10:23:05 +0900
X-Gmail-Original-Message-ID: <CAK7LNATV0sNqHr6+ypkCE-H4Xm3fiV3-Ai2N88JQ9BQAcTqxpw@mail.gmail.com>
Message-ID: <CAK7LNATV0sNqHr6+ypkCE-H4Xm3fiV3-Ai2N88JQ9BQAcTqxpw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Fangrui Song <maskray@google.com>
Cc: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>,
        Matthias Maennich <maennich@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Jian Cai <jiancai@google.com>, Stephen Hines <srhines@google.com>,
        Luis Lozano <llozano@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=sh3YrU5f;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Apr 8, 2020 at 4:19 AM Fangrui Song <maskray@google.com> wrote:
>
>
> On 2020-04-07, 'Nick Desaulniers' via Clang Built Linux wrote:
> >On Tue, Apr 7, 2020 at 10:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >>
> >> On Wed, Apr 8, 2020 at 2:01 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >> >
> >> > On Tue, Apr 7, 2020 at 9:17 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >> > >
> >> > > On Mon, Apr 6, 2020 at 8:22 PM 'Matthias Maennich' via Clang Built
> >> > > Linux <clang-built-linux@googlegroups.com> wrote:
> >> > > >
> >> > > > On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
> >> > > > >As Documentation/kbuild/llvm.rst implies, building the kernel with a
> >> > > > >full set of LLVM tools gets very verbose and unwieldy.
> >> > > > >
> >> > > > >Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> >> > > > >GCC and Binutils. You can pass LLVM=1 from the command line or as an
> >> > > > >environment variable. Then, Kbuild will use LLVM toolchains in your
> >> > > > >PATH environment.
> >> > > > >
> >> > > > >Please note LLVM=1 does not turn on the LLVM integrated assembler.
> >> > > > >You need to explicitly pass AS=clang to use it. When the upstream
> >> > > > >kernel is ready for the integrated assembler, I think we can make
> >> > > > >it default.
> >> > > > >
> >> > > > >We discussed what we need, and we agreed to go with a simple boolean
> >> > > > >switch (https://lkml.org/lkml/2020/3/28/494).
> >> > > > >
> >> > > > >Some items in the discussion:
> >> > > > >
> >> > > > >- LLVM_DIR
> >> > > > >
> >> > > > >  When multiple versions of LLVM are installed, I just thought supporting
> >> > > > >  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
> >> > > > >
> >> > > > >  CC      = $(LLVM_DIR)clang
> >> > > > >  LD      = $(LLVM_DIR)ld.lld
> >> > > > >    ...
> >> > > > >
> >> > > > >  However, we can handle this by modifying PATH. So, we decided to not do
> >> > > > >  this.
> >> > > > >
> >> > > > >- LLVM_SUFFIX
> >> > > > >
> >> > > > >  Some distributions (e.g. Debian) package specific versions of LLVM with
> >> > > > >  naming conventions that use the version as a suffix.
> >> > > > >
> >> > > > >  CC      = clang$(LLVM_SUFFIX)
> >> > > > >  LD      = ld.lld(LLVM_SUFFIX)
> >> > > > >    ...
> >> > > > >
> >> > > > >  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
> >> > > > >  but the suffixed versions in /usr/bin/ are symlinks to binaries in
> >> > > > >  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
> >> > > > >
> >> > > > >- HOSTCC, HOSTCXX, etc.
> >> > > > >
> >> > > > >  We can switch the host compilers in the same way:
> >> > > > >
> >> > > > >  ifneq ($(LLVM),)
> >> > > > >  HOSTCC       = clang
> >> > > > >  HOSTCXX      = clang++
> >> > > > >  else
> >> > > > >  HOSTCC       = gcc
> >> > > > >  HOSTCXX      = g++
> >> > > > >  endif
> >> > > > >
> >> > > > >  This may the right thing to do, but I could not make up my mind.
> >> > > > >  Because we do not frequently switch the host compiler, a counter
> >> > > > >  solution I had in my mind was to leave it to the default of the
> >> > > > >  system.
> >> > > > >
> >> > > > >  HOSTCC       = cc
> >> > > > >  HOSTCXX      = c++
> >> > > >
> >> > > > What about HOSTLD ? I saw recently, that setting HOSTLD=ld.lld is not
> >> > > > yielding the expected result (some tools, like e.g. fixdep still require
> >> > > > an `ld` to be in PATH to be built). I did not find the time to look into
> >> > > > that yet, but I would like to consistently switch to the llvm toolchain
> >> > > > (including linker and possibly more) also for hostprogs.
> >> > >
> >> > >
> >> > > HOSTLD=ld.lld worked for me, but HOSTCC=clang did not.
> >> > >
> >> > >
> >> > >
> >> > > HOSTCC=clang without CC=clang fails to build objtool.
> >> > >
> >> > > The build system of objtool is meh.  :(
> >> >
> >> > Let's tackle that in a follow up, with the goal of build hermiticity
> >> > in mind.  I think there's good feedback in this thread to inform the
> >> > design of a v2:
> >> > 1. CLANG_AS=0 to disable integrated as.  Hopefully we won't need this
> >> > much longer, so we don't need to spend too much time on this, Masahiro
> >> > please just choose a name for this.  llvm-as naming conventions
> >> > doesn't follow the rest of binutils.
> >>
> >> I am not so familiar with the terminology in LLVM,
> >> but I feel 'integrated' is a keyword IMHO.
> >> I prefer LLVM_IA=1.  (or  LLVM_INTEGRATED_AS=1)
> >
> >I'm happy with either, and I trust your judgement.  You choose.
> >Hopefully we will fix all our assembler bugs soon and won't need the
> >flag much longer.
>
> Maybe "IAS", e.g. LLVM_IAS=1 or CLANG_IAS=1
>
> IAS is referred to in a few places. IA is not a common abbreviation.
>
> I don't have strong opinion here and thank Masahiro a lot for the
> improvement!
>

OK, I will rename it to LLVM_IAS.

Thanks for the advice.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATV0sNqHr6%2BypkCE-H4Xm3fiV3-Ai2N88JQ9BQAcTqxpw%40mail.gmail.com.
