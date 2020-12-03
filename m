Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTGZUT7AKGQEJESAXDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 930792CDD39
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 19:22:05 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id q12sf1500127plr.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 10:22:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607019724; cv=pass;
        d=google.com; s=arc-20160816;
        b=MfpMN24vgX0e6pktohb0vMNSFej8BRh5sZwlnZ5/bwcZsMJyROi1s+k07OIEN/ri99
         LugG2ged1C5SK236yVozW3OK2zFfDC2sbVJwaY5YkOb8EIS2K3nnihQ7+emAQ3xHdpkL
         xv6vvTpqmJ9Wsi8sKbzS2/jNQZ2EiBKQptHiEDoILmQ61+MQ6X3oQ0VDG1q8EUDSXvYT
         2o2FxMBlTLPOOxkYz9i5grWlY0jkRpfqJVAUZV4jRnbDNbVFvOQoLpNfCH1n3gBAkjxB
         kqwRCEnsuj8Aq7gNkxswSSm2YnDz/woboxttB1cxzcZwX7/go9akb0tXFXBluvLoFvis
         0R8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=LWILf1ThG+RQ0kxhNiQqv+PMZ864llcB7zctJr87B9c=;
        b=z8BGg1x2p0XJB2KharhW8/TgjFt/zxm2chKYkU0KkDzvEDlqzajnwhcBlxIuHbIUWw
         VcOPqKts4mAD+ZdURFYqorHttUWnAJ0bSzh0KpLFlH9mOyDeeeORWcD+a00HExzcvXD4
         nRvUE8aY55CnNkRR74sAdco868fD+m33go8xvthybnzCnhU7mNg+IcWHhpMrlXIT4jto
         XMjX6MLPmCkeqvrFtFWGAd0+NHEqGGj5onDp3+0rvtTuLtkR9izGci+ZHzF4IxM4f7Kw
         k2VLwPzOqsml+qH4eKAMlwxN6suoKvJLgiFV/tzEH3pCa8c/yKCC+161lO4xX/+j+MOh
         Y8uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ic4QleiY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LWILf1ThG+RQ0kxhNiQqv+PMZ864llcB7zctJr87B9c=;
        b=SrG3Hr7QkvrShYerWPGnKThn4FejM/DO+FY0QhHlgFWX4Wr4hKZnLPmgD0+9cGTLDF
         UnKgxo+AOdeTEkiXaS2l3gy6Bv88owxYFgm7UngQTrdxUtllSJCiAlsKJ08O4ym7mWWX
         NHd2jzBwUtgWPTgnjc6XwsQGKlRewartW0bAfYyh7CQ35cIA5Ka5vwJhK2QM5jzP6KOH
         uvhHciZZbVeCooA2lhGWw4RV+56RhyYMddvborKiefTxBBRatGPIQG8SNVjPMktnsAJW
         BDZOnl2WUB/rFN/5xw6iWpnm9Iz/xA+7Cl/AbfLfckFCEHvEY+wlt08zikbZ+9Y+3Yl0
         O2OA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LWILf1ThG+RQ0kxhNiQqv+PMZ864llcB7zctJr87B9c=;
        b=j/TeFOAiBOGpkjSgYZq5zAcFUcHvjiJ3hCQxF6gGSpeG2Ib0qSF2gWXy0sU3GlsEol
         QZtGN63zCZ2j46pk0UQt7zZPASrxJFroJqu0vSut4P6sQ6m1TqpZnYv+0JU8fm6DYISs
         3m6wqzzzPWTfi+cbtA4Uv2ALxbOvSAr9UUikd/tUhVa3wMzRyV5r+nuvr53Em6bbKR9D
         1rsuTJUPqLQRztYYxygTKmWl7oqNPzyQgdCrb2yRnkGPmP03R8FI8GFWPFruOZvybibs
         VXVS+/wl4M/xLv1jol6+7yENjFuXUtPRBem4HJjA2dHd6GcirCF27KeuhjWUFCX/jbWs
         WRiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LWILf1ThG+RQ0kxhNiQqv+PMZ864llcB7zctJr87B9c=;
        b=PkHENCtiVfJUMwEMIWzI+ewDokNZzUHq2jreDWO81HuN4TkOUNS3yO44PPuOCuF05X
         h1dogFH6nlkq2f2YFpeT9qaIOfwiQGjU3PSPdGLhoqtZQpBcSpQvRDQKO7v+S1/ai8Os
         NYKdzrVjV7EeGcGK2o9dBO5aBB4aKBLxcjqQpdUG5ZZsOD4KLSry/HE6nW9g85fNvQp6
         +GG+FivW8nIX8i2+V0SS4/VaYBu/tqQ1YI5O2ON0SaU3oPvKZYW8/aVqLcq5jb2dX9nJ
         ZRO3TvB2EVkpHJ2NlaBRlHmte9ISScgm/CpYR5VVXCadqVY00JrLtBWTgzn6VX5t2zMW
         8+FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533baM5Q9ZsmxCy15SzVzb2dH9ERYtep7hp3vrgjQAsAA35YeaJm
	+fnxfyQXFqMgXYvdF0fFzT8=
X-Google-Smtp-Source: ABdhPJwhEy3+pRKshaa1BZz1wJCCRtT8DfN4V3IwUKm4I6Ax6fWu4q/+viKUzmfYQGi9Gq1FPCczXQ==
X-Received: by 2002:a63:b51:: with SMTP id a17mr4043784pgl.221.1607019724226;
        Thu, 03 Dec 2020 10:22:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls2282900pga.5.gmail; Thu, 03 Dec
 2020 10:22:03 -0800 (PST)
X-Received: by 2002:a63:f308:: with SMTP id l8mr4219269pgh.68.1607019723590;
        Thu, 03 Dec 2020 10:22:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607019723; cv=none;
        d=google.com; s=arc-20160816;
        b=mylXeV8eur+h0UWHR8KzEzuFAyOm+OgLVVF9SB9UTj8qZwAnw6vcy1Z7bQqfyd9MB/
         A8zBsznQdyJdJOanryZcGnLEF1SKhpx/ISaYifDP7EeSw2n8RqAwBdjFmpvh56b4590g
         NpT9EEMPM0Di8GRLF+2l00B6wVV5iMESchDE8k/Cf4uBZTZXqv50Gx17c0aGcBYcjwQS
         WNpWkkI6772gmk4sBBDK5NeBB+8q2t9PbUvEHrzfryfzc7ULqP4UgGNfeJ04dVzD/kkS
         yTD1dfqyDalr9I7eL4HQZNPpW21KnTKOLhTL/gag02eFg4K/PCgEPIW9NmECiIuYtmyi
         hqJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jSR8ftEy+ZPymQ2+ANnTCIcrdEyC6rgz8i/C+YFDrrs=;
        b=tKGNCPF5jTyd6CLn68STpcoelYSwIod3JovZ37eKvpcfk+2pUKVj1+oO3DMX29qnwr
         EnAtDoz/805ADo6EQHQ5J02+ZWPkCqpbo000i5g9sJ2OtyfCAbeP4N89ffFP3GAwGXZc
         SJ3g4uHniWkwHWBQg4QYI04jzwSYhCGVtuHa8iOGagByiTK5YNXQyB7CNjEWzs6RO4yN
         2Oc0NM13ngz/dqU/28d6u9sb2oOhdMdEpfN2R3EOn0G+SanAfwmf3zwnK9qrV7l//oZV
         f75OG2pSFVqNAR2NYUkCP++1d0k9jq9tQvqnq8/f3pkwYjx+YGLcLBKg+aR9ICgTyVme
         gF8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ic4QleiY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id mt17si17862pjb.0.2020.12.03.10.22.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:22:03 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id h20so3021512qkk.4
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 10:22:03 -0800 (PST)
X-Received: by 2002:a05:620a:1489:: with SMTP id w9mr4240006qkj.43.1607019722685;
        Thu, 03 Dec 2020 10:22:02 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id s8sm1812350qtw.61.2020.12.03.10.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 10:22:01 -0800 (PST)
Date: Thu, 3 Dec 2020 11:21:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	PCI <linux-pci@vger.kernel.org>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
Message-ID: <20201203182159.GA2104680@ubuntu-m3-large-x86>
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck>
 <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ic4QleiY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 03, 2020 at 09:07:30AM -0800, Sami Tolvanen wrote:
> On Thu, Dec 3, 2020 at 3:26 AM Will Deacon <will@kernel.org> wrote:
> >
> > Hi Sami,
> >
> > On Tue, Dec 01, 2020 at 01:36:51PM -0800, Sami Tolvanen wrote:
> > > This patch series adds support for building the kernel with Clang's
> > > Link Time Optimization (LTO). In addition to performance, the primary
> > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> > > to be used in the kernel. Google has shipped millions of Pixel
> > > devices running three major kernel versions with LTO+CFI since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM
> > > bitcode, which Clang produces with LTO instead of ELF object files,
> > > postponing ELF processing until a later stage, and ensuring initcall
> > > ordering.
> > >
> > > Note that arm64 support depends on Will's memory ordering patches
> > > [1]. I will post x86_64 patches separately after we have fixed the
> > > remaining objtool warnings [2][3].
> >
> > I took this series for a spin, with my for-next/lto branch merged in but
> > I see a failure during the LTO stage with clang 11.0.5 because it doesn't
> > understand the '.arch_extension rcpc' directive we throw out in READ_ONCE().
> 
> I just tested this with Clang 11.0.0, which I believe is the latest
> 11.x version, and the current Clang 12 development branch, and both
> work for me. Godbolt confirms that '.arch_extension rcpc' is supported
> by the integrated assembler starting with Clang 11 (the example fails
> with 10.0.1):
> 
> https://godbolt.org/z/1csGcT
> 
> What does running clang --version and ld.lld --version tell you?

11.0.5 is AOSP's clang, which is behind the upstream 11.0.0 release so
it is most likely the case that it is missing the patch that added rcpc.
I think that a version based on the development branch (12.0.0) is in
the works but I am not sure.

> > We actually check that this extension is available before using it in
> > the arm64 Kconfig:
> >
> >         config AS_HAS_LDAPR
> >                 def_bool $(as-instr,.arch_extension rcpc)
> >
> > so this shouldn't happen. I then realised, I wasn't passing LLVM_IAS=1
> > on my Make command line; with that, then the detection works correctly
> > and the LTO step succeeds.
> >
> > Why is it necessary to pass LLVM_IAS=1 if LTO is enabled? I think it
> > would be _much_ better if this was implicit (or if LTO depended on it).
> 
> Without LLVM_IAS=1, Clang uses two different assemblers when LTO is
> enabled: the external GNU assembler for stand-alone assembly, and
> LLVM's integrated assembler for inline assembly. as-instr tests the
> external assembler and makes an admittedly reasonable assumption that
> the test is also valid for inline assembly.
> 
> I agree that it would reduce confusion in future if we just always
> enabled IAS with LTO. Nick, Nathan, any thoughts about this?

I am personally fine with that. As far as I am aware, we are in a fairly
good spot on arm64 and x86_64 when it comes to the integrated assembler.
Should we make it so that the user has to pass LLVM_IAS=1 explicitly or
we just make adding the no integrated assembler flag to CLANG_FLAGS
depend on not LTO (although that will require extra handling because
Kconfig is not available at that stage I think)?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203182159.GA2104680%40ubuntu-m3-large-x86.
