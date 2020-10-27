Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTMG4L6AKGQE7IH7Z5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9978029CA2B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:30:06 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id l12sf1835500ioj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:30:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603830605; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQaC76ZO4OkGCM2LMCXP3JXTFAG8bmXxilxUPRW3OYsOHAU+qbWCJo0e7+x1j/sWLE
         0tOuajovfv7TKsdKHBDA0eZmDBzQaDzlzgTgigHpp0BuyKr9kZfIKYZ/GQlUJ9Q0KPTR
         0NL+ASmTsjrqYXJPy4w9yFteaijAgGe4/nldCTjKYMcxWo1lYpb+KpjP9nW5vwCmzkp4
         g0BNGXdItFSIchUrdJg6zF7IxxTqu+/ON3gg3zm2QooPIbu6kVqVqmJn/AOWvn5OY9XE
         7np+zDQ7oWDUcYjFu++fGnW++ImuP/8Sg2YCsV3upGmkepexObg2BrjnleeqSExJP4Lw
         sQCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=XcIAy/J1zfPuacgdNRKdGz+LafNNnTS5yZBbGxLT0yI=;
        b=0/llA+OuwvDG3b6r0PG9C+y3e/CtVoFbSs4hwiEHZJbRv2fmHub44zst0K+OCcIz4q
         c/N7wriIzVHEcvDXygovcVmMfshuVFG3nYgCiyuqCYL7K47kk3UmTU0HkzuHPxRjGv92
         39QlVoHv4PdzaOKFv1JizbMj+j79qmbKG4useE4QxQOA4lsJbwIe06LUiiaxQObnKJA+
         kmQiOEDH4oJWbdEh1zCQ6dXnCRChEaubOfQisc52/7v16sjCs5u1c1VkaZ/BPfXKTaj5
         AfmtciYWZwNBoqFJktrS5wDZvzLMrMAaVCSlKdkrCiy8uSDE+aIvqpPOiDoOg9jo7ryN
         q2ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5lrtyim;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XcIAy/J1zfPuacgdNRKdGz+LafNNnTS5yZBbGxLT0yI=;
        b=uXLl79dtHuWcv1FuelukaXr+fYEjHSP05+jT3m5OuMm6u4ZyTQng2SnnXCLx0XDy2a
         x0sA0V6GqZVY1bpd27qpD0IkAd4ndRG+q7bIFwI2aNfuSJvrWHdmhjoW1mUXUAfcPt/Q
         L9sF90qOgEyZrQhN1rqCIg8Wz1JJLhiV66IWhIsTr8z9S7/5MNf/wvwzwS+Yv2d6QRgp
         fF13cACsO8dMy6kCFGlqlmUDNjqUM+/uiut8oy14Jq3fDdkOx1OdebR0JkopP2h8LJBu
         KE17Q65sm6LuCjefTjgnWnDsX6Y7ggJYNPworHiePCWPT8eWDlxgm/rLNJ0x+63ChIVh
         FLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XcIAy/J1zfPuacgdNRKdGz+LafNNnTS5yZBbGxLT0yI=;
        b=aw4OAsgrl804OcFy4xFxiyE86TIFAZ9NJZme+EWyAgeCXwwtoxvFoq+rdP4ik82pAq
         H4A1NSS5YcnjgsEENrwLOmrVAxmChFKGcGlZLgFXkfb5hCX4tj7SCEQNE2idniZMQKBI
         ev8q8isPrR7ErgPqpSSVTJc19b4wZfdqTaPFwgBMAkAZkTw9KqgVH9yqY1UbgO24E/R/
         cqMnerEGOGH2u51rSggz7JyQJrqBGSEQCHGeF4CNFjMVxdD4l61HGe1TCQueQlFuZmYX
         9saXGI1Mnah3qFGmiSljOyHHukxLBhDEaav4wI5WRjRLWihBDTzyZQOH0vKjIXyKM0U3
         J8cg==
X-Gm-Message-State: AOAM530nUI3cVSptNsN4nyju4YWrBXvvTvnUHg24sTXe4GONtD8PGaur
	CWWOrdCznvi7qEJLmEb7mqI=
X-Google-Smtp-Source: ABdhPJxLypseBuVlNv/XYtgzZLetztfYetMMcKWbcSM/mquU7ALdlAKcH2U+Yp1eZnzIp+VuLPAxpg==
X-Received: by 2002:a5d:9d0d:: with SMTP id j13mr3714862ioj.68.1603830605631;
        Tue, 27 Oct 2020 13:30:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2a06:: with SMTP id r6ls641811ile.0.gmail; Tue, 27 Oct
 2020 13:30:04 -0700 (PDT)
X-Received: by 2002:a92:d709:: with SMTP id m9mr3583184iln.226.1603830604922;
        Tue, 27 Oct 2020 13:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603830604; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5AJR/TsLYtKxYXuyQrehNfZ05qasrz+e1qosmRfSG66lFiTpvvBYkbfRoTBeTxgQH
         kQ7btpmk7x/Z2/E8hxci2EHDMf332PQSzxOKsvtMw6+n/Zun2vkwmB2Nonk77sXwc78Z
         WCA1CaGNEVkW8I6fn3umltnWC0zooWryHCPo5tW0QASVm2gJUeBldAJ4NBV1NBLKt5Nb
         mIXSvUHujXka5GshRxBUj0AmGvQ+JfdMZ0EDvMdw0qmrOYik/Qj3u7Me3RuvVqdt1rYG
         XfpTqUM3j1Ho49aF9scbNdD4Lx3mStBvsHkna7z2iIIUr3BTqO8OzFHaZQqSBa1s4UJC
         JZMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=pTfXLkUKJcoocwAw1MeELq2/Ah/3yvNDEolWgsyMElU=;
        b=NAapvJ+XUcqsBpxIrT3etWXCcQXuJN2lU7Bi8+wB/pJuSksjeZHdT/MFxas+EJIXVV
         QfTIzGTSI39CcKSQ4n+I+JCbrxN+TQf0ItHiUyrHDZnZyDo/pVqstMX9doNVrV0sAt2j
         QudeotEU1/1RAtvfWiQe8YBkNQD3fwMLIuYPoExnz519E5zmcaFq8KUfdXBbYAmYHTTW
         G2n42LewQMq0gWFQMiE1mDvcEMfOKFVAgE/VxQ+4bA7n9JQ2XhljyUExaSf1FuyDWGfw
         Ej7hdlEovXjhIPwez9+GmznH0dst1R/FIq6eYw3FcdT4haRCUU6DXzc1liiF9jW6bNPv
         jCVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5lrtyim;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id j7si140201ilc.4.2020.10.27.13.30.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id q199so2520892qke.10
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:30:04 -0700 (PDT)
X-Received: by 2002:a37:4f92:: with SMTP id d140mr3840320qkb.402.1603830603983;
        Tue, 27 Oct 2020 13:30:03 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id b23sm1454393qkh.68.2020.10.27.13.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 13:30:03 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 27 Oct 2020 16:30:01 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	kernel-toolchains@vger.kernel.org,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
Message-ID: <20201027203001.GA1833548@rani.riverdale.lan>
References: <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
 <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
 <CAKwvOd=8YO3Vm0DuaWpDigMiwni+fVdrpagZtsROGziinjLvig@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8YO3Vm0DuaWpDigMiwni+fVdrpagZtsROGziinjLvig@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q5lrtyim;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Oct 27, 2020 at 01:17:55PM -0700, Nick Desaulniers wrote:
> On Tue, Oct 27, 2020 at 1:15 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Tue, 27 Oct 2020 at 21:12, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Oct 27, 2020 at 12:25 PM Geert Uytterhoeven
> > > <geert@linux-m68k.org> wrote:
> > > >
> > > > Hi Nick,
> > > >
> > > > CC Josh
> > > >
> > > > On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > > On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> > > > > <geert@linux-m68k.org> wrote:
> > > > > > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > > > > > placement"), which is another red herring.
> > > > > > > > >
> > > > > > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > > > > > causing the warning.
> > > > >
> > > > > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > > > > missing from someone's KBUILD_CFLAGS.
> > > > > But I don't see anything curious in kernel/bpf/Makefile, unless
> > > > > cc-disable-warning is somehow broken.
> > > >
> > > > I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
> > > > with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).
> > > >
> > > > Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
> > > > is generated.  Removing the __no_fgcse tag fixes that.
> > >
> > > That's weird.  I feel pretty strongly that unless we're working around
> > > a well understood compiler bug with a comment that links to a
> > > submitted bug report, turning off rando compiler optimizations is a
> > > terrible hack for which one must proceed straight to jail; do not pass
> > > go; do not collect $200.  But maybe I'd feel differently for this case
> > > given the context of the change that added it.  (Ard mentions
> > > retpolines+orc+objtool; can someone share the relevant SHA if you have
> > > it handy so I don't have to go digging?)
> >
> > commit 3193c0836f203a91bef96d88c64cccf0be090d9c
> > Author: Josh Poimboeuf <jpoimboe@redhat.com>
> > Date:   Wed Jul 17 20:36:45 2019 -0500
> >
> >     bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()
> >
> > has
> >
> > Fixes: e55a73251da3 ("bpf: Fix ORC unwinding in non-JIT BPF code")
> >
> > and mentions objtool and CONFIG_RETPOLINE.
> >
> > >  (I feel the same about there
> > > being an empty asm(); statement in the definition of asm_volatile_goto
> > > for compiler-gcc.h).  Might be time to "fix the compiler."
> > >
> > > (It sounds like Arvind is both in agreement with my sentiment, and has
> > > the root cause).
> > >
> >
> > I agree that the __no_fgcse hack is terrible. Does Clang support the
> > following pragmas?
> >
> > #pragma GCC push_options
> > #pragma GCC optimize ("-fno-gcse")
> > #pragma GCC pop_options
> >
> > ?
> 
> Put it in godbolt.org.  Pretty sure it's `#pragma clang` though.
> `#pragma GCC` might be supported in clang or silently ignored, but
> IIRC pragmas were a bit of a compat nightmare.  I think Arnd wrote
> some macros to set pragmas based on toolchain.  (Uses _Pragma, for
> pragmas in macros, IIRC).
> 
> -- 
> Thanks,
> ~Nick Desaulniers

https://gcc.gnu.org/onlinedocs/gcc/Function-Specific-Option-Pragmas.html#Function-Specific-Option-Pragmas

#pragma GCC optimize is equivalent to the function attribute, so does
that actually help?

Btw, the bug mentioned in asm_volatile_goto seems like its been fixed in
4.9, so the hack could be dropped now?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027203001.GA1833548%40rani.riverdale.lan.
