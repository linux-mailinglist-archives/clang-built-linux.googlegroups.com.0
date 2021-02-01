Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIMY4KAAMGQEBAH7FRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A8C30B340
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 00:17:54 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 11sf20834738ybl.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 15:17:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612221473; cv=pass;
        d=google.com; s=arc-20160816;
        b=d2JO4bvKpDqys9VmrPdyGzYvhYgpktumCaIoxZnfOi0J81gF1qP2hDakEVxUc3JRfO
         JbEdnYuk2iBkmWsY5ykJdadMHnCogdBeMKfckaJtUXHhVEDFyNK3tnmGwLom76vU9GAN
         24Q2ib1e7ELHfI7MKpfG1Gs3qqfwDwzm1b85jOrj0A2GUbyedlEHRAALuCU86gubCwgl
         93blWyss+1sHywYw01RenPUHa9hZp2cLqEHl34o7Tu3neY+tJkFEeLsJoxk0akmzqmWs
         +Ol1HlROj895mEJStwyF+ZKmKpc7VZWQ0RMfCSpVlfZre+0MnoGQBp6JhNI1aBmPk2vv
         TF/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vp136ZOdQX45wUlq42BmNhypdFG/d32/1+3YdLkIg8I=;
        b=nZ9HaExKrBBYmXBhmfbIV/zzYuxND4EXJ1EcWkEkT/Y6lL9rrX/U+W8TwWF7flCdn0
         ypOrP5dbgOKin+M5zghmXumWITwmAAuKwY+nmg4NXxDZYjC69jr6Ke6SfkBAejwKF7vj
         CiSYcRRzwI9jY91UQC8FnFX4Bi4Ai/Vb7o9SdtJ4D9tw/m0+xNlVHVSPChmTkFST2CH0
         IRdGOechsTxft9dUnmTIaq7smBE3oUBiWrwaEEUXitCR9ceIL9eN6P/CiSO6NeertZzR
         5aziv4f8HhOBSeTFmYeHPfbpdyMzIYdIml9fGT7x/KYDOx3KZEdBh9l4sgbhvlfQdrNH
         BZEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=psgOxADb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vp136ZOdQX45wUlq42BmNhypdFG/d32/1+3YdLkIg8I=;
        b=iTY7jqPlZlO/4fdIkva1Dcl2703OkwQjtKMZPyo5DKnWXagefAMjf3H5NznwOuipVO
         DTdnZVzx1M6r30f8GEbLy765IvBqkuEexhnQ7idgZK/ZlsEhGY4xM4OixWhHd8+ByWzs
         nAvzozZ8wLIJ6weBHAJ43UWoH+pOhczIau+NvYD83GpQfoENp67iCdmFFXrnBWFeqpPZ
         FZA9kRD2Anc5P6iX524VluClbAfrgphHMs1/y1PMF1ZAvuPOLTXQ9+h4ab+Q4ly8rma4
         S937XcVW/ycWhQtDTU8+zIR+le+d9uGL40BpvEIKVpS2P+7x+ACY/WIG1qgQfW6g58do
         esOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vp136ZOdQX45wUlq42BmNhypdFG/d32/1+3YdLkIg8I=;
        b=sehnLfYgcOth1gFnP8IGKHnTc1DOUS7XBlJeynpi7H0V5NVKaAEGYYYghCS0kD/Hy/
         Iu0Fm/miXR6//aSfLIn+n6GJd1i3bug4OCop7x5PnqNwM4W+RGP6pwHFys/GL6psaSmn
         8SK9ThYRvBreg/9rpkwaSv8CfOEtZVhJEUPtVk+urMQLLGpO602jAH+jqp9L2wiTl5r7
         TxRMNNqpK0VWGZF1HuAV3f+EE7EZk3Z5SA5Gl4mJftpyKOSuhOeWEB+58TquIJvKV5C1
         rsqdWMdn7eSMHxidMewwryVhsT6KBAmdVdBfUWHMXXZlwYhB484ZFO4/kingVY4xUqos
         p//g==
X-Gm-Message-State: AOAM532P9IdZ72iBMdy0VvQPjGOAr/hlx8tnxpVatdT0rMmaoDMYOVQ4
	FRSvX/PZtIPnL5JCGSlgcCA=
X-Google-Smtp-Source: ABdhPJz+TRfYmkQTWDiODelPqWBc4hk8NwrRzZt6Jxlx5ZBsyuNg603H9wqbxH7KHijAYZBImmA2eQ==
X-Received: by 2002:a25:fc2:: with SMTP id 185mr30299878ybp.385.1612221473462;
        Mon, 01 Feb 2021 15:17:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4c06:: with SMTP id z6ls5048133yba.8.gmail; Mon, 01 Feb
 2021 15:17:53 -0800 (PST)
X-Received: by 2002:a25:bbc1:: with SMTP id c1mr27898093ybk.130.1612221473096;
        Mon, 01 Feb 2021 15:17:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612221473; cv=none;
        d=google.com; s=arc-20160816;
        b=llCBf/2fUCB9lvXqiBaXWh/vq6Y11QnUFaPOv9BeatoMQodFLW3NGgt37ms/Dj/PRZ
         M8gP67AtZGyb+Q2OUXKUz545NGv1gIyXp1NMrWboEl9zxwHey0FsM0MIHhKB63pJ9h8M
         sfF0J+tqWs9mVZhMzjOM5f3SqTa9RCOXPioMIQiyVtda7Px5hNN7Q0QjfhyKp4xjkfZ3
         gxh6+Z5ug7lS761yFnazGKGPs0AR5GFDQYik2ovdnedtQ0e4SWVUTImJXRyR1R0KCoTd
         wqbCrd3U23OJ5TQbVcjAq5GzdUa45vs3rOBSkFSDp7F6KLeyztXdp7Usc3Z46j3k/26q
         4T8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BH7JqYRJgVe3vsNAU4epkLL+VUNkt6PlTrNV6f51Lak=;
        b=c1FQ1JNoruT0ewGIEiuFI1XjOoGapKYAXJgSh34RejNzaVTizU4wZ4cSLtZuMr8K8j
         B5BPJd2syeOkcpwoq/uc6QfaW33uvCfjBJfxEf7DuokXfvGVgo6hXZL3v1L/BBOMIDp8
         0lcLbakAG1iu71wg3PeAFleroXLsr8AeNGQw8oa99yvLghePPDhgUOBiJXosBqq4cK/S
         NKpVdD+Uo1DjWu8z+OnPAmV82N+98mRDMJ0X4EMHrjhF9/fdrIEyTSJLwSl7hzgFCZyJ
         X5SE5sIT1k02vY4Jv5leE1JsUky+jvecCTZ05BM+h6XhgHwbUCZ8406/20aQCggFsYnr
         +EXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=psgOxADb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id k12si759086ybf.5.2021.02.01.15.17.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 15:17:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id j11so8413058plt.11
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 15:17:53 -0800 (PST)
X-Received: by 2002:a17:90a:db05:: with SMTP id g5mr1242739pjv.32.1612221472089;
 Mon, 01 Feb 2021 15:17:52 -0800 (PST)
MIME-Version: 1.0
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com> <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com> <20210201214423.dhsma73k7ccscovm@treble>
In-Reply-To: <20210201214423.dhsma73k7ccscovm@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 15:17:40 -0800
Message-ID: <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Kees Cook <keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-efi <linux-efi@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=psgOxADb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

On Mon, Feb 1, 2021 at 1:44 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Jan 29, 2021 at 10:10:01AM -0800, Nick Desaulniers wrote:
> > On Wed, Jan 27, 2021 at 3:27 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Wed, Jan 27, 2021 at 02:15:57PM -0800, Nick Desaulniers wrote:
> > > > > From: Raphael Gault <raphael.gault@arm.com>
> > > > >
> > > > > This plugins comes into play before the final 2 RTL passes of GCC and
> > > > > detects switch-tables that are to be outputed in the ELF and writes
> > > > > information in an ".discard.switch_table_info" section which will be
> > > > > used by objtool.
> > > > >
> > > > > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> > > > > [J.T.: Change section name to store switch table information,
> > > > >        Make plugin Kconfig be selected rather than opt-in by user,
> > > > >        Add a relocation in the switch_table_info that points to
> > > > >        the jump operation itself]
> > > > > Signed-off-by: Julien Thierry <jthierry@redhat.com>
> > > >
> > > > Rather than tightly couple this feature to a particular toolchain via
> > > > plugin, it might be nice to consider what features could be spec'ed out
> > > > for toolchains to implement (perhaps via a -f flag).
> > >
> > > The problem is being able to detect switch statement jump table vectors.
> > >
> > > For a given indirect branch (due to a switch statement), what are all
> > > the corresponding jump targets?
> > >
> > > We would need the compiler to annotate that information somehow.
> >
> > Makes sense, the compiler should have this information.  How is this
> > problem solved on x86?
>
> Thus far we've been able to successfully reverse engineer it on x86,
> though it hasn't been easy.
>
> There were some particulars for arm64 which made doing so impossible.
> (I don't remember the details.)

I think the details are pertinent to finding a portable solution.  The
commit message of this commit in particular doesn't document such
details, such as why such an approach is necessary or how the data is
laid out for objtool to consume it.

> > > > Distributions (like Android, CrOS) wont be able to use such a feature as
> > > > is.
> > >
> > > Would a Clang plugin be out of the question?
> >
> > Generally, we frown on out of tree kernel modules for a couple reasons.
> >
> > Maintaining ABI compatibility when the core kernel changes is
> > generally not instantaneous; someone has to notice the ABI has changed
> > which will be more delayed than if the module was in tree.  Worse is
> > when semantics subtly change.  While we must not break userspace, we
> > provide no such guarantees within the kernel proper.
> >
> > Also, it's less likely that out of tree kernel modules have been
> > reviewed by kernel developers.  They may not have the same quality,
> > use the recommended interfaces, follow coding conventions, etc..
> >
> > Oh, did I say "out of tree kernel modules?"  I meant "compiler
> > plugins."  But it's two different sides of the same coin to me.
>
> I thought Android already relied on OOT modules.

Android Common Kernel does not *rely* on OOT modules or compiler
plugins.  Android doesn't forbid vendors from using OOT modules,
though, just as the mainline kernel does not prevent modules from
being built out of tree, or users from insmod'ing them.  It's
certainly a pragmatic approach; idealism doesn't work for all OEMs.

Personally, I lean more towards idealistic; I prefer in-tree modules,
dislike compiler plugins (for much the same reasons), and idealize
loose coupling of software components. This series looks to me like it
tightly couples arm64 live patching to objtool and GCC.

On the earlier thread, Julien writes:

>> I think most people interested in livepatching are using GCC built
>> kernels, but I could be mistaken (althought in the long run, both
>> compilers should be supported, and yes, I realize the objtool solution
>> currently only would support GCC).

Google's production kernels are using livepatching and are built with
Clang.  Getting similar functionality working for arm64 would be of
interest.

> GCC plugins generally enforce the exact same GCC version for OOT
> modules.  So there's no ABI to worry about.  I assume Clang does the
> same?
>
> Or did I miss your point?

I think so.  It would seem that the current solution for stack
validation would require multiple different compiler plugins to work
reliably.  If jump tables are an issue, I don't see why you wouldn't
pursue a more portable option like -fno-jump-tables first, then work
to claw back any performance loss from that, if relevant?  Then
there's no complaint about toolchain specific implementations or tight
coupling.

Objtool support on arm64 is interesting to me though, because it has
found bugs in LLVM codegen. That alone is extremely valuable.  But not
it's not helpful if it's predicated or tightly coupled to GCC, as this
series appears to do.  The idea of rebuilding control flow from binary
analysis and using that to find codegen bugs is a really cool idea
(novel, even? idk), and I wish we had some analog for userspace
binaries that could perform similar checks.

>
> > FWIW, I think the approach taken by -mstack-protector-guard-reg= is a
> > useful case study.  It was prototyped as a GCC extension, then added
> > to GCC proper, then added to LLVM (currently only x86, but most of the
> > machinery is in place in the compiler to get it running on arm64).  My
> > recommendation is to skip the plugin part and work on a standard
> > interface for compilers to implement, with input from compiler
> > developers.
>
> I like the idea.  Is there a recommended forum for such discussions?
> Just an email to GCC/Clang development lists?

linux-toolchains@vger.kernel.org is probably a good start.

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw%40mail.gmail.com.
