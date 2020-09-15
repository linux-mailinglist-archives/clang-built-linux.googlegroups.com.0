Return-Path: <clang-built-linux+bncBDYJPJO25UGBB264QT5QKGQEQRBOQEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F4626AF3C
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:13:16 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id u20sf3699333ilk.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:13:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600204395; cv=pass;
        d=google.com; s=arc-20160816;
        b=e8GQoaIfl5b54Qo+/WGVlOoKeB1I4SKtyvOeQBEAZljcfTPBvsZN64hvxRWMmC7ntQ
         IgiSR3uv+xIuV8h1zPc/vMwT4z/Jex8WNQHTXna0Z/D7/U0RYHbVpRhTgH7nFkTcuyUr
         TcwH8es9NDZyDyodHyABVyAuntrfWWzRY4w1zCgL6TW1wYCYZX4xV+J0rgsqeHYImsR1
         GpfQU01ec6XFlVh315/piLWgn7QMdyLNgkYOsKCN2/1iC/8r6GCgC5Hv82dlyBNNO+6g
         bN+XRi+ublG0GfkdtDwmvEXW/ouBzVub8EBzdknnpPlGnYbcpE7+CVYzl0UYymcCrcnI
         5cJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1fT9xxgP3UXkfVsubxvZ6Wf3+1eBDTYlVeHa/YYQhW0=;
        b=xKXzQbBdcozipCeeIOreJTbqz5VtLxzXSjS9Um7JcM5/ih45md08HP8T7C7PpSqCbp
         HnYvs0lAebd1ICkGY3c5GDwFF1+YJD7+dBY9OOC4lYnvRIvgjyAzezQsIHVf2BDo9Gjf
         cAAsLNV1evoqahxUmpIzPjz+fMSgwaIq1Al+2xsmRThH5A2O9yixcXluW9UD/plWw6bb
         gcMb3CANV7seunS46ZTEknmrKiFP+tU0jznaHjbyxHY/grN0n4i0dD9GoRkzIcn5ZEDd
         yl7jh66gi60qTHSZQ23l/0aVQnvxzWuaO60gWjLmfdqN3AOWN2zhabHRvSHvLByYTU8/
         tz/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g5wkGJvC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1fT9xxgP3UXkfVsubxvZ6Wf3+1eBDTYlVeHa/YYQhW0=;
        b=tfdouQQFLGYB8tpRyZcPLIESKLPVaCwbuTbiPVLSK19WzvKMLdgF/MIQP3FJdMcQnv
         Z7zmZ51Kb+B8oOeAsgM1dP8d+4izPSD+WXKN6ulQ8JBjvswGWbGCD932lVW1cOSKBK+X
         A/WS+/F5GW7Kb5THJkw6/LJfVpTxBxBXl9y12CkfEC9OpWXqybLCLxsGS0jrl6nj+P+8
         qPzyj/kkjxNfuQzaIbxclWYgtGtL+GVhrzsNeNbVN3Bus5AdFnmmlzkKg1kaTpw+7IOt
         mcHbp//lrois+Rsef73lu87nFvuNeMK68anzUBibZI3aghAoVL5p1ZdCG65wmdXt6UKr
         weRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1fT9xxgP3UXkfVsubxvZ6Wf3+1eBDTYlVeHa/YYQhW0=;
        b=hyRMRk+oxtggbuX4ZYUsJfQuGe1QNssdYYR7aufx8/fdXQvGmWD+XMQcC1uQKK2i3Y
         2iMNbICFXBTnFAMr/JFxDmhvdAa5x/6fCsz2DF4htYWR4Fw/mftGWB8TlO23A9KgHHm8
         n4CH6nnwxIoWUTLfbf37RTU4N1CkPPBT32xsLx4xXs+xPZvnCvUOKX6DswxGu4n1rori
         1T7WlBVnIJhN80JPTKNrhDkN/JBJbJkkxCOEiaIo6nuodtXRjYx13xuzYvoTU98w4H2t
         42V8x5VUSlUVJAWsX+iWWAXmZ3UKDx9ZXc22H0/mazZ3KgmvOWsZsTxyMpyhJMrlGuiM
         +gLg==
X-Gm-Message-State: AOAM531USSRra2PUueHjHRuxQ9+QIGyCf1kHa7jHTdeASurRTF+RFf4h
	U0NlpTxWAtUfTuKkZ+ok4lk=
X-Google-Smtp-Source: ABdhPJyztp0Sb/RrXGZMq6mtbLfwMtwJlG5l5GRB4Rirlp0S4w184TWU3svXOg5Xmeb1cvsGFvo99Q==
X-Received: by 2002:a92:cad2:: with SMTP id m18mr17167351ilq.282.1600204395236;
        Tue, 15 Sep 2020 14:13:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2dc2:: with SMTP id l2ls60192iow.8.gmail; Tue, 15
 Sep 2020 14:13:14 -0700 (PDT)
X-Received: by 2002:a05:6602:18a:: with SMTP id m10mr16683536ioo.174.1600204394719;
        Tue, 15 Sep 2020 14:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600204394; cv=none;
        d=google.com; s=arc-20160816;
        b=Nmrb6rRlAVM5v0vDpzY4d9t3nkvyLsmn5yMbLrNBHtV5w6IUNx3b5xaAvAmjkPijm4
         eV6FmwdqMfbpJiQekuvqL2h8oUVF8P5wstSqrnkpHXNhFIbJeRDxmV4U4T6w/KfqMNGN
         NbRXBDsE2RksxAWhCMBDVTU7VFHoO18qXlFh5poVgNIRtRcJ+6wRAivzC0anIjbmfJO8
         qcwyRKv1kOTnalDiWTvyEdyP4suyvRJIyh5z8kmkAejdHeh/w8I4+WN7Spn+j2JE+C+B
         tPlE3tgBVuWUAvrv1TPq8pVMy+3RAmz4ZxW2zDQDbeO+wvjzVri28Vm/KMfvx3RVdnvo
         M7Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QNSeN+6ns4NcR6aRqapmefDb08KgJSUKumeh/J+1Z+Y=;
        b=wuUvPXb0VJ5hVnIUEXMD9lbEklMSMQy7Joeer6kBEIC4bFjpozBJytqnzKFWFZbzJy
         Al3KqRhpbR1NLLK3FpkfqpPaZBqV9AzxXKKyBscckEikcHUCk+XaBU6XEFcj/3wYulw/
         ugtOgZb+DOnP0muLjWe47T0KRGRNvpees1raaxD8B31ACnmDznh4uqJI1BGqjqWNKKRL
         i+jBSHrMvglEUZQWsrCnoz3bndJ1xkwRMdXUF298pr8sXHmU0EdiW71IlUhoV4FRo6Bt
         4OBYQAPzP04Fj93116Hy2HnE3mfZ6vgnjJwt3eVRHnqg3GtU+WHJZjgHjWwQgMFMymzY
         RC4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g5wkGJvC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a13si1030311ios.2.2020.09.15.14.13.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id z19so2671349pfn.8
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 14:13:14 -0700 (PDT)
X-Received: by 2002:aa7:99c2:0:b029:142:440b:fa28 with SMTP id
 v2-20020aa799c20000b0290142440bfa28mr327604pfi.30.1600204393819; Tue, 15 Sep
 2020 14:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 14:13:01 -0700
Message-ID: <CAKwvOdmNzapwEo26m0soAR2OLFxOoERPKbKgvQ0bfoqjNkEVCg@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Josh Poimboeuf <jpoimboe@redhat.com>, Borislav Petkov <bp@alien8.de>, Marco Elver <elver@google.com>
Cc: Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, 
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g5wkGJvC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Sep 15, 2020 at 1:12 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 10:02 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Tue, Sep 15, 2020 at 06:05:54PM +0200, Borislav Petkov wrote:
> > > On Tue, Sep 15, 2020 at 10:18:16PM +0800, Rong Chen wrote:
> > > > On Tue, Sep 15, 2020 at 03:55:19PM +0200, Borislav Petkov wrote:
> > > > > On Tue, Sep 15, 2020 at 09:42:56PM +0800, kernel test robot wrote:
> > > > > > tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git  x86/seves
> > > > > > branch HEAD: e6eb15c9ba3165698488ae5c34920eea20eaa38e  KVM: nSVM: Avoid freeing uninitialized pointers in svm_set_nested_state()
> > > > > >
> > > > > > Warning in current branch:
> > > > > >
> > > > > > arch/x86/kernel/sev-es.o: warning: objtool: ist_exc_vmm_communication()+0x12: unreachable instruction
> > > > > >
> > > > > > Warning ids grouped by kconfigs:
> > > > > >
> > > > > > clang_recent_errors
> > > > > > `-- x86_64-randconfig-r001-20200913
> > > > > >     `-- arch-x86-kernel-sev-es.o:warning:objtool:ist_exc_vmm_communication():unreachable-instruction
> > >
> > > Ok, I can't trigger this with gcc-9, gcc-10 and clang-10.
> > >
> > > .config below says clang-12 so it could be some experimental
> > > bug^Wfeature :)
> > >
> > > peterz says this has been fixed by:
> > >
> > > 318af7b80b6a ("Revert "kbuild: use -flive-patching when CONFIG_LIVEPATCH is enabled"")
> > >
> > > but that was reportedly for gcc.
> > >
> > > Lemme Cc the people of interest and leave the rest in here for
> > > reference. Note that CONFIG_LIVEPATCH is enabled in that .config.
> >
> > If somebody can share the .o file, I can take a look.
>
> Taking a look at the latest report of unreachable instruction from
> objtool from 0day bot:
> https://groups.google.com/g/clang-built-linux/c/IbF96FeMT8g
>
> $ cd /tmp
> $ git clone --depth=1
> https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git --branch
> x86/seves
> $ cd tip
> $ gunzip <attached config.gz>
> $ cp config .config
> $ make LLVM=1 -j71 2> log.txt
> $ grep warning: log.txt | cut -d ' ' -f 2- | sort | uniq -c
>    3737 warning: objtool: asan.module_ctor()+0xc: call without frame
> pointer save/setup
>    3737 warning: objtool: asan.module_dtor()+0xc: call without frame
> pointer save/setup
>       1 warning: objtool: early_alloc()+0x6b: unreachable instruction
>       1 warning: objtool: ist_exc_vmm_communication()+0x12:
> unreachable instruction
>       1 warning: objtool: kmem_cache_create_usercopy()+0x286:
> unreachable instruction
>       1 warning: objtool: oops_end()+0xc1: unreachable instruction
>       1 warning: objtool: __register_nosave_region()+0x87: unreachable
> instruction
> $ ag ist_exc_vmm_communication
> arch/x86/kernel/sev-es.c
> 1351:           ist_exc_vmm_communication(regs, error_code);
> $ gzip -9 arch/x86/kernel/sev-es.o
> <attached>
>
> If I remove CONFIG_KASAN=y, I actually get way more unreachable
> instruction failures!  Let me play with
> tools/testing/ktest/config-bisect.pl and see if I can narrow down the
> set of configs from the randconfig.  Also, it's possible that there's
> more than one bug here.

tools/testing/ktest/config-bisect.pl narrowed this down to:

%%%%%%%% FAILED TO FIND SINGLE BAD CONFIG %%%%%%%%
Hmm, can't make any more changes without making good == bad?
Difference between good (+) and bad (-)
 UBSAN_TRAP n -> y
+UBSAN_ALIGNMENT=n
See good and bad configs for details:
good: /tmp/x86/tip/good.config.tmp
bad:  /tmp/x86/tip/bad.config.tmp
%%%%%%%% FAILED TO FIND SINGLE BAD CONFIG %%%%%%%%

(Though confirming this, I only need defconfig+CONFIG_UBSAN to repro)

For folks that know how to run tools/testing/ktest/config-bisect.pl,
skip this next section, more so notes to future self and others on our
mailing list to learn how to run this. Arnd Bergmann taught me about
this.
$ cp config_from_0day bad.config
$ make LLVM=1 -j71 defconfig
$ cp .config good.config
$ ./tools/testing/ktest/config-bisect.pl good.config bad.config
1: $ make LLVM=1 -j71 clean bzImage 2> log.txt
2: $ grep warning: log2.txt | cut -d ' ' -f 2- | sort | uniq -c | grep
"unreachable instruction"
if !$ == 0:
tools/testing/ktest/config-bisect.pl good.config bad.config good
else:
tools/testing/ktest/config-bisect.pl good.config bad.config bad
if not finished:
  goto 1

Triple checking what I wrote above; it looks like the randconfig had
BOTH CONFIG_KASAN=y and CONFIG_UBSAN=y enabled.  Aren't the sanitizers
supposed to be mutually exclusive?  If so, we should ensure that via
kconfig these can't be selected together via randconfig.

Another peculiarity I noticed was that it seems that enabling
CONFIG_UBSAN_TRAP=y doesn't allow me to select
CONFIG_UBSAN_ALIGNMENT=y.  Is that intentional? (Looks like it
lib/Kconfig.ubsan:74).

There was actually another thread about CONFIG_UBSAN_TRAP and Clang
today, related to arm64 virtualization extensions.
https://lore.kernel.org/linux-arm-kernel/CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com/T/#u
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNzapwEo26m0soAR2OLFxOoERPKbKgvQ0bfoqjNkEVCg%40mail.gmail.com.
