Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBRV62H3QKGQEKVHU6LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 811EB209B3B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:24:39 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id n133sf1145961vkc.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:24:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593073478; cv=pass;
        d=google.com; s=arc-20160816;
        b=SSfT06cuEjQqv0PJeOG2D3/0jaHdn71unQ6mNiZS/PZxBh2BxPG10dhKX3Gfmshbz4
         PhxMTsJRBz3yz2GLeRHNBEsjMBtAYaqKVkHsJiZBV05LAo3ruMEtwjPTPuuD2NlVu7T6
         QJcKVH2AL174SRBIrODSW2abzSwUGxol2zk4zRERRu36cH6dDW96gyCD7uBL8vhHTcsP
         1givsJX0vwPM+fxImC+JqdJwiROqadeQzowAsmWfTMijMw+4rgd6TOT9Jn+wBDJGyaW/
         XNTS1cI+hFnfPhZNfyQsLuRSboCzXRtMzidxOmSx4NeoBnmfGHCXSs5w2HKExFTqCUCU
         jflg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RsIdD5Zn+e0ou2LPv1QArGsmgOh7RHhTVU6EfXLtbCg=;
        b=vM0hf8+d0blgo4a8jPQ+10Px/FFEprjzV0r51LUoP8Ppfci6f7gIOMJWfxqUNk3mJ6
         oBJ2J0I3XppA8UFW7TfKi3ufFz1lVaNIVL88Evv0VeBnQ5dDvONcsXyi5ly4kafMs65K
         VFWOxZJi/FR0hVXdTLVqJCRnV+hDolEhu2ygWDxlnzu0haXcFQfILw/KHm/WRjZeqkXh
         EF5uilgf7Vcx31nlqgM/wMX+secTMZL3HBTE4XxZ3UVKbmFhC/+tw+IgEL6blBwOkCxt
         CDdInt1C+vgOFHMlPX94jmP5f7i2RGTxwTrUrii7aDoX2PJaeBp4xAPk5kYhJNwzmjyq
         pFyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="ibvgrw/6";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RsIdD5Zn+e0ou2LPv1QArGsmgOh7RHhTVU6EfXLtbCg=;
        b=Od1peg98GbJSpDsJOCd77ZfOu29w2q7qneMXppFS8YsJS+LBvns+yZrPEsNBHhd+T4
         o4A7Y9uaLSCr8qZmlyEes0k+IhKwjqzGjcOC1jYuiNw9Un7CDc/kqWYKRC97gRpO89wJ
         wgBDQNIW7whXgrny771EpfjMpGDm2ZtnHpqv34GLZ423CBmyfGH7UGWow3uiz3zwBZ3v
         7cAqC7WPyCI1xdUDqsi6GlUx6vrHMwjtLWkPLsGxs1dcUOWnUI3desVYvsRZkCYF2XzI
         oEdNEPcbUbz1JarxTzK5dM85KOPaivH4KkEpixMZEMelxPDtDU+VyKQC4zoSjDLEfOw+
         fgmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RsIdD5Zn+e0ou2LPv1QArGsmgOh7RHhTVU6EfXLtbCg=;
        b=EZT8lEZbWIqygjpXD+FIcYaDRd9dox1X3nLVp3t5CmErZTA/afqFGLCDKZSi/WyZwv
         XS//oVOhkGXmyCGoercahXL+Zr1u5dxhO7EpZGULfjYJgZOydJVOPf662+LNFzfgyPAW
         ahv5stIj2prC4HHkfbOiTt6Rw1oyoOH3EaheMAuiQsMo8+rc0jcvNdqLcZ9dRdSfmzPf
         96p52Mv9NL91JIxpd0HPHyVAFcucVhwKm7tmTy8vX77Xe7+VY3X8vCZjGB894dhhIl8b
         d9tS1ZC/mSYBRSLU9kWXl96/mog6RPy/00d9FxCJRn+pLOidQdrhIZxqX98vgteQLFfM
         bmzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nKHq3xMxfPbtP5/a+hYisH2lOKGUNJqu/p8mtyD/phDgpXnbO
	X6zSnJM8hXyzxxaVpR6A0SU=
X-Google-Smtp-Source: ABdhPJxIp7Oj9Js9GwIjIrca2xD9SrfTEGog1PqxfruoTUiWO4dJNgBZaFp6tHCLTLJCcuyX8LINQQ==
X-Received: by 2002:a67:e30a:: with SMTP id j10mr9300948vsf.80.1593073478387;
        Thu, 25 Jun 2020 01:24:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c643:: with SMTP id j3ls254721vkl.1.gmail; Thu, 25 Jun
 2020 01:24:38 -0700 (PDT)
X-Received: by 2002:a1f:1f04:: with SMTP id f4mr25867063vkf.73.1593073478038;
        Thu, 25 Jun 2020 01:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593073478; cv=none;
        d=google.com; s=arc-20160816;
        b=ujhoOOzErqoJM0lSdOQY8MfCe7BG/tAr8ME0GmHnkA0UkMS76s4+B+GMI38CKF2Hnn
         l5MBIkbCwAYmFg507XGx97l5PkcMGD+12YIPgc9z1TEY7e26OsQykm5FFTaBjc+EDqwZ
         NrMSstXSnwZFoMjtYconT/fCp5opuEZg2c3Yvlf4/q+drKgNsSjOiSfYJW9YiV+H5vbk
         PDapPqRtL/+bZWXuwVjmXJZL3Q79/mJF+LhQr6grNoR75CTc44CkrRgB4mTSPdPLWYaW
         oTCuAbXslO5Q6SDyrx3yvvvd3ScBu6BlS6Bj/iOxJy38YdYg5ua/i1aS7JlyU8RJIJ+t
         XcRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3AMdYg8fQNUtXAfj2fZZ8NPZ9U5EFgepOOFBuun2GQY=;
        b=MJgZqH86ByaCZ2R8Y6zbQ2QcwehVBXVeRRw5MEQI4KmUR/n25L++kSFsMSKYrGvad1
         IvrSZxkbS4qcK5Q2uRw0GdXaj8R8TdjmumtwOfgKidSD9UXhaFzbbnpHmkhZvYiei68s
         4S87wVVLqVIChqJcNUZVelv+S6UIRC/ETWjb8i1UkmwkTmZeJ2Bzr3iB0La5t1KGwIPo
         sE2cuLmlQcFLvLo4WhUlgYDOFPUbFeKJBJCy7SOphD+MK3/ZDgO8NqjJ1QbdiM/XJazh
         tQBqy7JYTFyFS6oe3SmSC2+JiApaUUBz3O7eak0VRaXTpy8lU3eUxORmQO/8EJU+iZGz
         iPag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="ibvgrw/6";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id o66si228371vkc.0.2020.06.25.01.24.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 01:24:37 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joNBS-0000yr-J3; Thu, 25 Jun 2020 08:24:34 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 2EE4E301A7A;
	Thu, 25 Jun 2020 10:24:33 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 234DB2215AD45; Thu, 25 Jun 2020 10:24:33 +0200 (CEST)
Date: Thu, 25 Jun 2020 10:24:33 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200625082433.GC117543@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625080313.GY4817@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b="ibvgrw/6";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 25, 2020 at 10:03:13AM +0200, Peter Zijlstra wrote:
> On Wed, Jun 24, 2020 at 02:31:36PM -0700, Nick Desaulniers wrote:
> > On Wed, Jun 24, 2020 at 2:15 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Wed, Jun 24, 2020 at 01:31:38PM -0700, Sami Tolvanen wrote:
> > > > This patch series adds support for building x86_64 and arm64 kernels
> > > > with Clang's Link Time Optimization (LTO).
> > > >
> > > > In addition to performance, the primary motivation for LTO is to allow
> > > > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> > > > Pixel devices have shipped with LTO+CFI kernels since 2018.
> > > >
> > > > Most of the patches are build system changes for handling LLVM bitcode,
> > > > which Clang produces with LTO instead of ELF object files, postponing
> > > > ELF processing until a later stage, and ensuring initcall ordering.
> > > >
> > > > Note that first objtool patch in the series is already in linux-next,
> > > > but as it's needed with LTO, I'm including it also here to make testing
> > > > easier.
> > >
> > > I'm very sad that yet again, memory ordering isn't addressed. LTO vastly
> > > increases the range of the optimizer to wreck things.
> > 
> > Hi Peter, could you expand on the issue for the folks on the thread?
> > I'm happy to try to hack something up in LLVM if we check that X does
> > or does not happen; maybe we can even come up with some concrete test
> > cases that can be added to LLVM's codebase?
> 
> I'm sure Will will respond, but the basic issue is the trainwreck C11
> made of dependent loads.
> 
> Anyway, here's a link to the last time this came up:
> 
>   https://lore.kernel.org/linux-arm-kernel/20171116174830.GX3624@linux.vnet.ibm.com/

Another good read:

  https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/

and having (partially) re-read that, I now worry intensily about things
like latch_tree_find(), cyc2ns_read_begin, __ktime_get_fast_ns().

It looks like kernel/time/sched_clock.c uses raw_read_seqcount() which
deviates from the above patterns by, for some reason, using a primitive
that includes an extra smp_rmb().

And this is just the few things I could remember off the top of my head,
who knows what else is out there.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625082433.GC117543%40hirez.programming.kicks-ass.net.
