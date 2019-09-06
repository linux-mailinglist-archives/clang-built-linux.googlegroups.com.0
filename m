Return-Path: <clang-built-linux+bncBC2NBVXJ7ILRBYVWZLVQKGQE2PKW3UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 66813ABEF0
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 19:46:12 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id b12sf3753499pgm.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 10:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567791971; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0SvaGP9wM9hF6Apc/qL6wQVxLeWH5aw1xaFf718CJgquXMm8ndQiUfGOKaNAvwdS2
         EjR2IfakIO+DqGMVsvVq004JOr4dWBZC4Ktuq9zGhpBeeSAklys2pN0G3tNatbS89qEG
         0NbttJR6BQbhstIFpIzMdRgGoUguCu6JF/4YXttfcUONZLPAT6c+dIq8Jw5xTmXlrLZx
         vJvbvl+4bDimI0pV/QEAVX0F+vEvjE41aSNk4+9AOaSY6+Jj6JaEr7kr0fO3mFKlEBok
         PK6fNuXrPM2wwYKwAIC4CHyQpDZXegmEvPMRt9WLm7HUGmhKk0Gy5+U/cv/tjev7JLwC
         MxkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/uNNrhjmHHMrRIxFY07MpUC627KTbzA4lGWGNIVgBcA=;
        b=xOD8AxyNtxyzeiUS8gxW+6wwykdMk8XjWFVs73XyZY0vD3W8id4qtnpBEwGeKtSPNj
         6TEwJ9UPXi7zgITiYHzEOXZdczKrOc26KYis5bUPJXpGY906Qe0q8Bq8DU1rCfv+DUvn
         /jS25BJ01HTIgW5UgC7oLLtV/a1zaT3NIXefY53KR1XCiPT6PyLJmvjeGwXVtCZYxVXs
         lHf2s3xK8+UGb0SsCLKCm3gupyJC8cX4JG+iJfS2oY99N9n4s8YrrcgkZ/s3MDDwIFMU
         QkFtiHDo0kaNHkq0hkMNBFvFhT0hh0J8MbUNs9HZxUOffGWCyae894BLTBSSv8j5Ucie
         Y2ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VCiAND9p;
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/uNNrhjmHHMrRIxFY07MpUC627KTbzA4lGWGNIVgBcA=;
        b=AB/oVnNe48Wmp/GoWpZhuyC8YRQbP1TYpx7e6ZoW+wvhEt+v2k+dhHPIMTDY3AsV5z
         yjXEs45rULp4Rdh8C77ooNt6wiIQiJ/lE2/ePJdSm377S4tzi+ExjgqzTL8IWRbX0ILm
         Nlp6E7lB7DwIaKworAsZL/YYSgDQuCBNWhn7ixPW7cvyx/Fb0ypVOYR/S0h5oGMcZVvX
         jqH5uK1/Fyc6GZUqjOE1AgtXC6zjjY7IfrsoPflDoyk3XN7dGnGPkhWmxrVBJoRxskQf
         yg8w6RXnvFITrXVWb15KydkqmYSsiq1i2hjDd3+aystzR+MEebUiSNKe5x1/JbAIBbxQ
         CMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/uNNrhjmHHMrRIxFY07MpUC627KTbzA4lGWGNIVgBcA=;
        b=lbfggjLrCETBoYpXgGCxBBAut/pVe6eANau5OAWZ0LX29LZEglSgOPjlHUiLWDQgh4
         xxzjE+xh8ynXCI7Keq9ZOs+e3Jr4xsC3G/TyXuQenZGvV8IPlWEpIdPx7nW+AiSiCDfw
         7C3/umW7JfqEYu93yjlmx2thpd0xy2D5PbiYp8uyR2iXXSk9LjfiWU+40LuTznhaYR+A
         lyMJ7YWQygZQn2WQQIHWl3L4gup3KUApEwmIKvnRy27FwbvtOZtNlJPlblI9Hl0h9wdo
         c2domAl3d4x2LMBqNrVi/kxRvmWi/g05FIUTBmAsmjHuXb3geAr3xOZBuw0+ac4Qh1kC
         v2vQ==
X-Gm-Message-State: APjAAAWTD8MH67Hp26EV4oQ3KtCgN9lCxDZHHL7E5as6lxkV6yYLyW2c
	gDy1/i6R5qk1KNryOgxa3MQ=
X-Google-Smtp-Source: APXvYqyLZRlI127WE7jzq0w1MUGyDIQyE/jP07w44+tggYHgI+9iNMIQSQR0qDTfmvbkoeCsb5V4ew==
X-Received: by 2002:a17:90a:e98e:: with SMTP id v14mr3641057pjy.101.1567791970947;
        Fri, 06 Sep 2019 10:46:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d152:: with SMTP id t18ls1645948pjw.5.canary-gmail;
 Fri, 06 Sep 2019 10:46:10 -0700 (PDT)
X-Received: by 2002:a17:902:7088:: with SMTP id z8mr10581499plk.307.1567791970636;
        Fri, 06 Sep 2019 10:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567791970; cv=none;
        d=google.com; s=arc-20160816;
        b=VJdUcIJhWCs7Q/LTd4ig5RR8KfhAp9u0tJqmPogBv2tudfodWFVG8+05fSzUZZVEkL
         Q+qPMMte2R1ES5LsbtcDVJeKEirnuDzgobOlBv8mSyOD0J7LkuD4M9nHGW+7PP0u7dUE
         Dtg/Ij1Yh+ZyHPtPvXTeGx8dAA1nETgYMjtvj3u8MOIBkYwtC/G+wkZqTLe2rJDoJyzp
         lPYHkogWqNhSExcbIkK5YPkqxesaDl4ewYaA3trJLB3HfUYzq7smPXELhxXu5XwGHL8A
         ft4H2vTI0fJn7+EGas0ikTOkv0KGKnjCVxeku3wXy2OR3QZlbgre2yS3KB1xmw100V33
         h3QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S14D+WSoeLbHpMhf1dWZfAVhfThhZ4fBaJV5ItEoB7c=;
        b=A31+Xcw8CXsKSFjDwiJpVhTdBNa42TIw1FUGAPwGNB8Xa1XNAVOk0vatqzg4VmgPdo
         NPsO4/OcyKfUteMLqN74m0iiG2WmyaLEVgOb43wR/cWvTGrQ8GgGBd04IIednEsKc5rT
         FtQVq6Y0NkqXcnI9xE6K7U5YDxRQ1xBmZDVQAaQ1MMgOKfEZsYwFCZTFO8mNaCVlzdGr
         XE5f7ZeKs6yoOKIFYROsrq4Kql6TIIJ3h1ebM7KkhGatkgqFRahm8/Crb53bR94Y9P9u
         FPycgvi0B9ECeeTbNNTskCk8vibeYSto29TwsWS9QxQWhP1a6qnY7ChKaKpS2FXuFVqL
         FTjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VCiAND9p;
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id g10si157297pjv.2.2019.09.06.10.46.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 10:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id m11so14663627ioo.0
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 10:46:10 -0700 (PDT)
X-Received: by 2002:a5d:8518:: with SMTP id q24mr1616396ion.228.1567791969676;
 Fri, 06 Sep 2019 10:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com> <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
In-Reply-To: <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
From: "'Hans Wennborg' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 19:45:58 +0200
Message-ID: <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: hwennborg@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VCiAND9p;       spf=pass
 (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=hwennborg@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hans Wennborg <hwennborg@google.com>
Reply-To: Hans Wennborg <hwennborg@google.com>
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

Thanks for the detailed reply!

On Fri, Sep 6, 2019 at 7:03 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Sep 6, 2019 at 1:10 AM Hans Wennborg <hwennborg@google.com> wrote:
> >
> > I'm a bit nervous about taking changes to the optimizer so close to the release. If we take them, they would be shipping with very little testing..
>
> Let me tell you the current issues, then I'll trust your judgement on
> the risk assessment.  I want these things to soak, but I also don't
> want to finally ship "asm goto" support that's not usable out of the
> box.
>
> > I've left a comment on r371111, and I see the fix for PR43222 is in review but not committed yet.
>
> Link: https://reviews.llvm.org/D67203#1660386.
>
> > How bad would it be if these fixes have to wait for 9.0.1 instead? I.e. what is broken for the end user here? Does the kernel no longer build with clang 9?
>
> One is a build failure for an obscure driver, one is a boot failure
> for all builds of one ISA.
>
> When someone builds a linux kernel, they first have to configure it,
> which is mainly selecting which drivers to support but some options
> have much larger consequences.  Typical configurations folks use for
> testing are "defconfig" which is a curated list of sane configuration
> options, and "allyesconfig" which turns on as many configurations as
> possible.
>
> Of the 2 patches I'm requesting for clang 9.0, the IfConverter
> (https://reviews.llvm.org/D67203) fixes a compile error for a lone
> driver for an arm32 allyesconfig build.  That driver is for some
> obscure piece of hardware and isn't critical, but "allyesconfig" arm32
> kernel builds are broken without it.  I think IfConverter is only used
> for ISAs w/ predication, so Eli's change may affect other ISAs than
> arm32 (I don't know who else uses predication).  Our arm32 support is
> a little behind relative to arm64 and x86_64, and we can always
> disable this driver when building w/ clang-9, but I'm hoping we don't
> add things to the kernel that ban specific releases of a compiler (ie.
> clang-9.0 is banned but clang-9.0.1 is allowed).  That said, there's
> now three reported bugs that it fixes:
> https://bugs.llvm.org/show_bug.cgi?id=43121
> https://bugs.llvm.org/show_bug.cgi?id=41121
> https://bugs.llvm.org/show_bug.cgi?id=42012
>
> The other fix in CallBrInst (https://reviews.llvm.org/D67252) fixes a
> boot issue in "defconfig" builds for arm64.  arm64 kernels do
> something insane where they detect the presence of an ARMv8.1 ISA
> extension "LSE atomics" then patch all of their atomic instructions if
> LSE is supported.  As soon as an arm64 kernel does any atomic
> operation (when built w/ Clang-9), it hangs.  This is due to a recent
> change in Linux that perturbs the control flow just enough to trigger
> SimplifyCFG to modify the successor to a callbr (asm goto's LLVM IR
> representation).  This change is limited to the callbr IR instruction
> added to clang-9 for implementing the GNU C extension "asm goto" that
> the Linux kernel makes heavy use of on all architectures for runtime
> self modification.  While we've fixed many bugs since the initial
> implementation landed, I worry that this one will make it such that
> "asm goto" appears outright broken in clang-9 and that the kernel
> community would move to ban clang-9 from being used to compile the
> kernel.
>
> Some relevant threads for debugging the atomics bug:
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678330.html
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678479.html
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678484.html
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678493.html
>
> If I had to choose, both are important to me, but I worry that the bug
> fixed by https://reviews.llvm.org/D67252 is probably pervasive, and
> likely to make `asm goto` unusable in clang-9 with more changes to the
> kernel sources.
>
> How much time do we have until you wrap the clang-9 release?  Would
> there be a few days to soak these to avoid any potential reverts of
> these patches immediately after they land that would then need to also
> be cherry picked into clang-9?

The release is on overtime since August 28th. That's no cause for
alarm since we usually slip a little, but I really don't want to slip
too much.

These do seem worth waiting for; there's no point shipping on time if
we're not shipping something good.

If the one in review lands soon, we can ship them immediately in rc4
and let them bake in trunk in parallel. If something comes up, we'd do
another release candidate with the fix, and if nothing comes up within
some number of days we could tag rc4 as final.

> What's the schedule for the clang-9.0.1 release? (Sorry, I don't have
> a good sense for timeline of LLVM releases yet)

Ideally it should be released in the middle between two major
releases, so typically December, but it varies a little.

Thanks,
Hans



> > On Thu, Sep 5, 2019 at 10:35 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >>
> >> Hans,
> >> Can we please get r371111 in the clang-9 release? It's one of the two bugs I still know about in `asm goto`.
> >>
> >> The other that I'm working on furiously is:
> >> https://bugs.llvm.org/show_bug.cgi?id=43222
> >>
> >> On Thu, Sep 5, 2019 at 1:23 PM Eli Friedman <efriedma@quicinc.com> wrote:
> >>>
> >>> Looks like it does.  Marked it fixed.
> >>>
> >>>
> >>>
> >>> -Eli
> >>>
> >>>
> >>>
> >>> From: Nick Desaulniers <ndesaulniers@google.com>
> >>> Sent: Thursday, September 5, 2019 1:08 PM
> >>> To: Eli Friedman <efriedma@quicinc.com>
> >>> Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> >>> Subject: [EXT] Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
> >>>
> >>>
> >>>
> >>> This fix also reminds me of https://bugs.llvm.org/show_bug.cgi?id=42012.  I wonder if it fixes that as well?
> >>>
> >>>
> >>>
> >>> On Thu, Sep 5, 2019 at 1:01 PM <bugzilla-daemon@llvm.org> wrote:
> >>>
> >>> Eli Friedman changed bug 43121
> >>>
> >>> What
> >>>
> >>> Removed
> >>>
> >>> Added
> >>>
> >>> Resolution
> >>>
> >>> ---
> >>>
> >>> FIXED
> >>>
> >>> Status
> >>>
> >>> NEW
> >>>
> >>> RESOLVED
> >>>
> >>> Comment # 4 on bug 43121 from Eli Friedman
> >>>
> >>> r371111.
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB8jPhfZUgVKq2%3DnMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA%40mail.gmail.com.
