Return-Path: <clang-built-linux+bncBAABBFHZWL2AKGQESOSEMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0F21A12E9
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 19:47:01 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id i11sf751630vsp.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 10:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586281620; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5BZZoPq7Kv6/0oKJrsgWArmCcim1JJEUTFGDZoAnXE7y7cgjrWZgEGMVqWBxipcnn
         5LYt+4pzVDDVj7dT5hIdixoP194CDDtqWn6ffwvotuHhOFD0EWCi3O1LRaEM09kN9vKS
         mSGdO+dpn57wS4pOx7L8Dhgo+lJ2aQnG+RNeBed+D0GKJslyEYtkA84EIFnjpp/EBnGo
         FdnV4UwJYYvmCXmRTVNbedmix7Y5aVoPIySe7PBsbOB/lHcPqzMs6AuA5Zdgp78rSNnP
         yJ0ARimgRLHU7BZMvvDpn0HEw8sz4sOGwtCsQDNiU5eY8thufUJgX1Hf6+H//wbCfsZq
         jLzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=RocqbCZWdPeeA6baN+NarqT13laiNB/eClApfzKrvdw=;
        b=u8dTT+vC7dv6e4TiXZCA+M1qUHytbNbWtNqaquOA8liPmMjZ+KNGzPOLvWu0U89uWi
         HCSqk+A6w1OwOpuEJuHGv0gI1WAbv/E7eKgy+03yn/zts1cOPaV9m9xVjo73QGqDDjD8
         dkTWKuCYgPUMJRDli61VhpY4p2TaTf/i0dD9Qz+/kJq3e6nCqEtUGiec19t9byAjC9yD
         fI+FlRepXIAW7AooK+4w72YjWjAgwrOvffE8lWqEKKiGbL7VNSiSeoxLMGrAMQqB6qd2
         9/v/uxVnroE5c8ezN13yymJWdO/mO4GCo7Bmj40168fcyrUROS4YbrTRQM7WYBKyiCRv
         /Y9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KQ32CoE6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RocqbCZWdPeeA6baN+NarqT13laiNB/eClApfzKrvdw=;
        b=JwKxJ1NHbH27jxSROtNfeyuLhZ0bvF3bYi4ZTya3OhwXUmn3wX0CZIHQFcFBoHVqKe
         XFBee+zNu5AOVnmF7f1T6DLyrkHPXdbbNkIAYmYz+Mijn/WHxELmDMDUwwKNMlOb4Wr3
         z/PNvIQtM8Wdk1UwoIwo0m3pwG7W4wHAgyIT6tuUu9VkBYKjmCkKvohrMQev3Z3qB5gZ
         FiMWBQf0+xZwU0I8105Q5GRyoXpmWxz9MQ8mo2JQGGrmy0OktApcLti/RURfM1lXv0CI
         qET/dr8ul7qFjWIY2ISu23VTEJUPMcFl8nvISXHQAz9BNSzPVYlMIyDC3hIa0UtTkouB
         8wmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RocqbCZWdPeeA6baN+NarqT13laiNB/eClApfzKrvdw=;
        b=o8XIfNvv+9/tj/JEUO5Ef9MW5km+d/9I6eRe3TRQGyz9pSEWsvYYEvIfyBZFEmCkto
         rjZmbA595F/ycdysm7mIUipraA94kYNhcUhuzjTu8522/c/fW0HYUHWuRN2xlSPtSGC1
         59ZqqmTvf9w2SF5LeVX6ebz3VE1LWng3YdO/x6VxhwaNbt3woRY6sL5jxJwbj58fPS7T
         C8l2drB8Q7MjnLwm7twc/INZ2ZQKDCC6lU8UT7GtkXIG7kW1sbGd7DOLKuCWnwS2Qd8m
         gKmKdyteflZmz8wq+4Mafb94ZyDFTAGA1Iz1jWQQ5loRIUQ9d53Np0SyB9/LPYPN7zDX
         LWvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaTnQkcQIwM87aae97YoidYexKv6X8+FpbBNXMV+BDq2aOODNbg
	+8w+BhvCeJtWJjtYwObEv4Q=
X-Google-Smtp-Source: APiQypJyVOil4rKMPGEXyMYGFeh7C+OPLiwuk92LrbVvvmhWj4g75pilzTL3ZNaQMofz9JZwF6ZrjA==
X-Received: by 2002:a05:6102:50b:: with SMTP id l11mr876692vsa.199.1586281620289;
        Tue, 07 Apr 2020 10:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c511:: with SMTP id e17ls592331vsk.4.gmail; Tue, 07 Apr
 2020 10:46:59 -0700 (PDT)
X-Received: by 2002:a67:8844:: with SMTP id k65mr2949701vsd.231.1586281619863;
        Tue, 07 Apr 2020 10:46:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586281619; cv=none;
        d=google.com; s=arc-20160816;
        b=uBHoGTaGtuf9vXnyrBxlY+joqJHxmnLEC6PA+4t5rvK21puMdfdhLWEt8wlus0bhqo
         hHm+ZA7rnb4chGz6R+UcE5zQP7VjaiiPDRqx5cJE4+wGOAV3EjAbKRlGtu/Q9DNedA6z
         MQhXn5IrH+CBYGcEheEc0tnmGopTaU1pgeEf5KAj+3afWh1pNII/nZBKBL/TEPHUOlzf
         F59VJDszj0MOGIQD/qood+ug1j3flHd6LS25v/6x7SY5GgntbETKaMst/+enaGymknNx
         +UVAo+3O5AhjkO6I8qB605KKTxFZkQQe3hrDJiIuIyEVnfR+5FS1lV9/daz8NcekHPp1
         JeXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=W8JU4ZdqtphrsLfo36sdrJqKVT9peXFuSNpLzYmGRP8=;
        b=SmzwQHDyhr450CDBPwqZyFb0eCMqgo1ojnzGWyb0BOBipq159cq1bERveVDOS2QNYX
         jETvZtii1rvjJPxoUjvYd8VJQrM90ghD3uS4HsMsmEl+6WHaDr/prX0yVLDrtmWBg4vl
         m59oFnbETTmVXilBPMxkDXke8d/ISLvAthmU6TFAztDlXT/1elidJRimlbQxeV8+T1fO
         GJqd2IaRp7iipKGo2KAyFbHNcpEsy3PSfp4C/hEBvFh4osNtQ8FvC60fC2Fs5dmPrxXK
         lKFSElGlzPyNt0arzMYqfabztA/kHVulxgEkazM1EGJLJHJySpCi0wygGdZ3k5MHZv+A
         nlqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KQ32CoE6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id g6si353525uab.1.2020.04.07.10.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:46:59 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 037HkfW6003758
	for <clang-built-linux@googlegroups.com>; Wed, 8 Apr 2020 02:46:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 037HkfW6003758
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id c7so486719uap.12
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 10:46:42 -0700 (PDT)
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr2669722uad.25.1586281600679;
 Tue, 07 Apr 2020 10:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <20200406112220.GB126804@google.com>
 <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com> <CAKwvOdmHxeZ+T1OsOhW25pPygHM4D21OgZqRk141xbjP437-1w@mail.gmail.com>
In-Reply-To: <CAKwvOdmHxeZ+T1OsOhW25pPygHM4D21OgZqRk141xbjP437-1w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 8 Apr 2020 02:46:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNARSMvGZ6T4Ct=U4Xe1WQCgkaWE8m8BxRuYiaokKVjA_ig@mail.gmail.com>
Message-ID: <CAK7LNARSMvGZ6T4Ct=U4Xe1WQCgkaWE8m8BxRuYiaokKVjA_ig@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Matthias Maennich <maennich@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=KQ32CoE6;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Apr 8, 2020 at 2:01 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Apr 7, 2020 at 9:17 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Mon, Apr 6, 2020 at 8:22 PM 'Matthias Maennich' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
> > > >As Documentation/kbuild/llvm.rst implies, building the kernel with a
> > > >full set of LLVM tools gets very verbose and unwieldy.
> > > >
> > > >Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> > > >GCC and Binutils. You can pass LLVM=1 from the command line or as an
> > > >environment variable. Then, Kbuild will use LLVM toolchains in your
> > > >PATH environment.
> > > >
> > > >Please note LLVM=1 does not turn on the LLVM integrated assembler.
> > > >You need to explicitly pass AS=clang to use it. When the upstream
> > > >kernel is ready for the integrated assembler, I think we can make
> > > >it default.
> > > >
> > > >We discussed what we need, and we agreed to go with a simple boolean
> > > >switch (https://lkml.org/lkml/2020/3/28/494).
> > > >
> > > >Some items in the discussion:
> > > >
> > > >- LLVM_DIR
> > > >
> > > >  When multiple versions of LLVM are installed, I just thought supporting
> > > >  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
> > > >
> > > >  CC      = $(LLVM_DIR)clang
> > > >  LD      = $(LLVM_DIR)ld.lld
> > > >    ...
> > > >
> > > >  However, we can handle this by modifying PATH. So, we decided to not do
> > > >  this.
> > > >
> > > >- LLVM_SUFFIX
> > > >
> > > >  Some distributions (e.g. Debian) package specific versions of LLVM with
> > > >  naming conventions that use the version as a suffix.
> > > >
> > > >  CC      = clang$(LLVM_SUFFIX)
> > > >  LD      = ld.lld(LLVM_SUFFIX)
> > > >    ...
> > > >
> > > >  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
> > > >  but the suffixed versions in /usr/bin/ are symlinks to binaries in
> > > >  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
> > > >
> > > >- HOSTCC, HOSTCXX, etc.
> > > >
> > > >  We can switch the host compilers in the same way:
> > > >
> > > >  ifneq ($(LLVM),)
> > > >  HOSTCC       = clang
> > > >  HOSTCXX      = clang++
> > > >  else
> > > >  HOSTCC       = gcc
> > > >  HOSTCXX      = g++
> > > >  endif
> > > >
> > > >  This may the right thing to do, but I could not make up my mind.
> > > >  Because we do not frequently switch the host compiler, a counter
> > > >  solution I had in my mind was to leave it to the default of the
> > > >  system.
> > > >
> > > >  HOSTCC       = cc
> > > >  HOSTCXX      = c++
> > >
> > > What about HOSTLD ? I saw recently, that setting HOSTLD=ld.lld is not
> > > yielding the expected result (some tools, like e.g. fixdep still require
> > > an `ld` to be in PATH to be built). I did not find the time to look into
> > > that yet, but I would like to consistently switch to the llvm toolchain
> > > (including linker and possibly more) also for hostprogs.
> >
> >
> > HOSTLD=ld.lld worked for me, but HOSTCC=clang did not.
> >
> >
> >
> > HOSTCC=clang without CC=clang fails to build objtool.
> >
> > The build system of objtool is meh.  :(
>
> Let's tackle that in a follow up, with the goal of build hermiticity
> in mind.  I think there's good feedback in this thread to inform the
> design of a v2:
> 1. CLANG_AS=0 to disable integrated as.  Hopefully we won't need this
> much longer, so we don't need to spend too much time on this, Masahiro
> please just choose a name for this.  llvm-as naming conventions
> doesn't follow the rest of binutils.

I am not so familiar with the terminology in LLVM,
but I feel 'integrated' is a keyword IMHO.
I prefer LLVM_IA=1.  (or  LLVM_INTEGRATED_AS=1)


> 2. HOSTCC=clang HOSTLD=ld.lld set by LLVM=1 for helping with build hermiticity.
>




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARSMvGZ6T4Ct%3DU4Xe1WQCgkaWE8m8BxRuYiaokKVjA_ig%40mail.gmail.com.
