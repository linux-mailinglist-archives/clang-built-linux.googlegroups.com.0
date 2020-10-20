Return-Path: <clang-built-linux+bncBC2ORX645YPRBAXTXT6AKGQE4RCLRGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 171422942F3
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 21:24:51 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id 26sf1215772ljp.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 12:24:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603221890; cv=pass;
        d=google.com; s=arc-20160816;
        b=M83nMITG7Z8ym+zefsduu2/ixF3Mx6hztHmxFYRkf+jHwkLfuvxZqzbYWJfDDu2d0W
         nz+sALnVNU2Br4HywK2fDy7q1HQDV+sEKuOdXfQce7KmKvBdAWoapAdFJWqzBfA8B3u1
         guHGWnnGryaSZLWpc0H6HZWl17VHZqu//5ldfhr+4sjWdhIcUS+kY9NgMTbv/PEekkpm
         UN3LU0RiwYMyF3KHlr+EV9cNf3amKfzSkUZ7A1ZOJ0m/pZeMqbQW/GGk2DeGbMABRENc
         Z5GUKd6qp0A+2Ucl3JRz8Y3RWHl3fHlKswGHdpSEnF7YaU8YCg2Yjacxf47vuQhj03f/
         M6Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gwj1vIBNN3s6/huXmLGBAtQOEiLZMEPSeGa8mAk/jVw=;
        b=WmuJ1YuMZxAXnrysJpBpfhbeajJXW53EPCzPeTQKXn0Fu7MW9DF9W6Zs1Xc2eSg8tx
         ml7kan8NqG7FwuuWrkmraEJ2QBClV+xbgCufR2EFe1CzCdInXdlY9F8JlX3JskYbEHvy
         /XNS2Shj9/h09ArAcM6xvzDhqHHjamiQy0obRT9Xz92dlD+q2/XKfpbqUVaBpcqp1EUL
         9dBl/F8f7uTcfo1YrPF1IUjSq39L62+a2FioLXDfnQGqte0y+QWEgXuMU83cQArWtkF/
         35TNnAj/pECDpv1it2B6ew4PYyKq3WhgFmj1N5iTkzTS4Bv1OGHnPCRPrtZuwaamYj9F
         NWTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MD9d7uz3;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gwj1vIBNN3s6/huXmLGBAtQOEiLZMEPSeGa8mAk/jVw=;
        b=CvlyL2esDTpUF5X5L7liFSuHB6vAWQLD2Z5f8Q8i/T5x/fBG56TDuCKnNqHC4KAixG
         cKXaKfLJXakMCzhSYLZDnbVW4LtlfGi9Xa3KS0CoE8Va2AjCv9DDltbKQRE5F3aOW8Xy
         Efp3C2uUZchuyC13f2hvz8TVxFpwkrFDcp24fhs5Gep4E+e4XtRvjOZjNsOh+6AQaWV2
         41K05rxX15m1/BJRLyGCX1MZH4oHy6n7Ay7MOOpXYS/aTFYhzPufp9zZlE83rWFJFmZc
         eaIQgggfKttjww/S3E1kaCEwO+hL4dtUn4q700jxiUru/u3zk2TnvfD3MSHdoobEoKhL
         3MZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gwj1vIBNN3s6/huXmLGBAtQOEiLZMEPSeGa8mAk/jVw=;
        b=evXbi+g2S82v8cVKvvQLTqIXZt/r1ii6ZUpIEZJ+v2HRYrBJ+b1qTO2h8bBlY0DbSj
         eYE9ZVMhISa9CG0t9XyWVD7N0bKBt9bkPlJaCL+UhYpTK8qK5qPmDTQ74eCF1Q3TvmWB
         oAC7HCjkgkBSWblOEzb4LeuvpKCwRiO9lWMz9l3PCl0ZrMAaEREs/WrR0Pjaxz10G/yi
         bMaJy+jshqgAovhupKGKTwQh34feoFUEeKnY4dX79MO2kVQcTZS+P0MODNW6+sFZXn1h
         A/e5EEaUc5UHpJ+3GMfM2UOgaxY1luNacQmnl7mBasUXIFCoO8XCxV8CKRiTaQy3nWwJ
         1NlA==
X-Gm-Message-State: AOAM533yHhZc3indBTWoMyM3VNpTzFkIqARHarGX8KmBZV1x3IU2dRFZ
	5OKgbxMDhP4XJKV8T7W5L1U=
X-Google-Smtp-Source: ABdhPJwGm+7HAHm0rf5WmMmLNkLefYl2bpJHu2NsFixHWD7UpPZh0vxmEvP702QTjaXlW3h3Hm0vcg==
X-Received: by 2002:a05:6512:3455:: with SMTP id j21mr1659356lfr.135.1603221890628;
        Tue, 20 Oct 2020 12:24:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls1936583lff.1.gmail; Tue, 20 Oct
 2020 12:24:49 -0700 (PDT)
X-Received: by 2002:ac2:4833:: with SMTP id 19mr1700949lft.136.1603221889370;
        Tue, 20 Oct 2020 12:24:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603221889; cv=none;
        d=google.com; s=arc-20160816;
        b=AErXgY+Y9nAzi+6PFMPWrXaPsLqv+SyTaghEl4IcAnh0p2dtpI2V0AZ+FVxO+qO0RN
         7Pd8+M1YvUbk5+7YNAn6lysKqTYq5qTmRs2W/MT5W0XAGxgLowJPuMmCD+XjuwCjtUUh
         nf5bpoPehsSTakx/MOCksqFWyEQXObLgyOMFagW264DVmhP3qbrV72XGv2M3g5+I7fgB
         v2EdDrETmFbnIq2jPFZgQOC1Q96YcMn8Ec6m1lXCrgetLcbzsfH+3H2qey6iW5gH48cY
         aPUNboJI55+wezQ50nlSMj7kLCfmgVsAiXSGUEsV+4e+XTUrSGZoLwz0sur34XiEnayq
         xOHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0aSlO1W7vXD8wpvCCG7wGbAKM67BTQt/FrRx6zZmumc=;
        b=Rz9wP1AYElKSslAxD7bH4gp7AfJLoKh0cudaq3fCuItXXJWrBGWkAQw4177b66k4aq
         RQfl/AZvccMbIxG3Ib9NREI3dMkFjZZEN7LZ/DIwM0S3W9FFlq2Uo/kkZ8PRE0TZxtdu
         Tj3HsCPNIOjZ34SvlIQY8durcZ1rfoxmo4Kkk7lvlbpOxNEMRhSFi6SskiAnDXLePNAB
         IACEu2iM0o7aMI7+xhB7y7m8tmLiTBVL6O2cwOTcow3w+Do9lXYoPkXDYK9eeFDzAhoJ
         xbnYAvzIzamXQBxfVNNtZuADiJtDsgIz0Nrbnm5x5MEau3L5JAoM7dDBD0x/K//P5m29
         XXBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MD9d7uz3;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h4si87417ljl.1.2020.10.20.12.24.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 12:24:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id 33so3012612edq.13
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 12:24:49 -0700 (PDT)
X-Received: by 2002:a50:88e5:: with SMTP id d92mr4494054edd.145.1603221888446;
 Tue, 20 Oct 2020 12:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com> <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com> <20201020185217.ilg6w5l7ujau2246@treble>
In-Reply-To: <20201020185217.ilg6w5l7ujau2246@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Oct 2020 12:24:37 -0700
Message-ID: <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MD9d7uz3;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Oct 20, 2020 at 11:52 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Oct 20, 2020 at 09:45:06AM -0700, Sami Tolvanen wrote:
> > On Thu, Oct 15, 2020 at 1:39 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Thu, Oct 15, 2020 at 12:22:16PM +0200, Peter Zijlstra wrote:
> > > > On Thu, Oct 15, 2020 at 01:23:41AM +0200, Jann Horn wrote:
> > > >
> > > > > It would probably be good to keep LTO and non-LTO builds in sync about
> > > > > which files are subjected to objtool checks. So either you should be
> > > > > removing the OBJECT_FILES_NON_STANDARD annotations for anything that
> > > > > is linked into the main kernel (which would be a nice cleanup, if that
> > > > > is possible),
> > > >
> > > > This, I've had to do that for a number of files already for the limited
> > > > vmlinux.o passes we needed for noinstr validation.
> > >
> > > Getting rid of OBJECT_FILES_NON_STANDARD is indeed the end goal, though
> > > I'm not sure how practical that will be for some of the weirder edge
> > > case.
> > >
> > > On a related note, I have some old crypto cleanups which need dusting
> > > off.
> >
> > Building allyesconfig with this series and LTO enabled, I still see
> > the following objtool warnings for vmlinux.o, grouped by source file:
> >
> > arch/x86/entry/entry_64.S:
> > __switch_to_asm()+0x0: undefined stack state
> > .entry.text+0xffd: sibling call from callable instruction with
> > modified stack frame
> > .entry.text+0x48: stack state mismatch: cfa1=7-8 cfa2=-1+0
>
> Not sure what this one's about, there's no OBJECT_FILES_NON_STANDARD?

Correct, because with LTO, we won't have an ELF binary to process
until we compile everything into vmlinux.o, and at that point we can
no longer skip individual object files.

The sibling call warning is in
swapgs_restore_regs_and_return_to_usermode and the stack state
mismatch in entry_SYSCALL_64_after_hwframe.

> > arch/x86/entry/entry_64_compat.S:
> > .entry.text+0x1754: unsupported instruction in callable function

This comes from a sysretl instruction in entry_SYSCALL_compat.

> > .entry.text+0x1634: redundant CLD
> > .entry.text+0x15fd: stack state mismatch: cfa1=7-8 cfa2=-1+0
> > .entry.text+0x168c: stack state mismatch: cfa1=7-8 cfa2=-1+0
>
> Ditto.

These are all from entry_SYSENTER_compat_after_hwframe.

> > arch/x86/kernel/head_64.S:
> > .head.text+0xfb: unsupported instruction in callable function
>
> Ditto.

This is lretq in secondary_startup_64_no_verify.

> > arch/x86/crypto/camellia-aesni-avx2-asm_64.S:
> > camellia_cbc_dec_32way()+0xb3: stack state mismatch: cfa1=7+520 cfa2=7+8
> > camellia_ctr_32way()+0x1a: stack state mismatch: cfa1=7+520 cfa2=7+8
>
> I can clean off my patches for all the crypto warnings.

Great, sounds good.

> > arch/x86/lib/retpoline.S:
> > __x86_retpoline_rdi()+0x10: return with modified stack frame
> > __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=7+8
> > __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=-1+0
>
> Is this with upstream?  I thought we fixed that with
> UNWIND_HINT_RET_OFFSET.

Yes, and the UNWIND_HINT_RET_OFFSET is there.

> > Josh, Peter, any thoughts on what would be the preferred way to fix
> > these, or how to tell objtool to ignore this code?
>
> One way or another, the patches need to be free of warnings before
> getting merged.  I can help, though I'm traveling and only have limited
> bandwidth for at least the rest of the month.
>
> Ideally we'd want to have objtool understand everything, with no
> whitelisting, but some cases (e.g. suspend code) can be tricky.
>
> I wouldn't be opposed to embedding the whitelist in the binary, in a
> discardable section.  It should be relatively easy, but as I mentioned I
> may or may not have time to work on it for a bit.  I'm working half
> days, and now the ocean beckons from the window of my camper.

Something similar to STACK_FRAME_NON_STANDARD()? Using that seems to
result in "BUG: why am I validating an ignored function?" warnings, so
I suspect some additional changes are needed.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA%40mail.gmail.com.
