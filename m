Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBC7IYT6AKGQEYJU6ZSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 543F2295903
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:26:06 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id 11sf395737pgr.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 00:26:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603351564; cv=pass;
        d=google.com; s=arc-20160816;
        b=ktd7mhIQaxxeRMnjGs+sMYwEnSi+7r0c1AP9EER5Qp2XZM0/DN5dNS5LFYYNKIg2c7
         1r6dXdNJNzRxDfEWrTTcrzMxY83XhArWrZuCFcaIizx3jy3k8+CzkXXrpTVK1mEbE4E2
         WIVxPWLdjS22oCH6beVH2MN5nDoPOnWLSJoOoiV+2EDQyEmEeSrzqo8QQDPIGK+jFLvH
         AUk8AVzy4NoHsVCBAq10fRX+GTu5QskSes1iaidMbCuoiWCQPoGvDWroF9hl6olyEZPy
         QReEyVDHcYB34WK2t5iWSR2MCT+AK6DWtSdm1vHE7QM1Z5jUZDgKDAGoYmBNeam9J1V+
         M28Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pNrHcCryNYhadZMLYhJP3LK6oRE7UFgRMxX2tSJsiFA=;
        b=MHCPwXYrKOka7upT0sMkDpphAz3vHUJrKppr1wvCydgP/P7+sPS4WH55iNMy5KDeP8
         p9Lp62jFQyNkL1mGuEdzQ8jcUFHLVEPawIKBg09u3pRpaYHN+cRxDP5nyN/NQkFhQnq4
         1jaQC1P4MFcY4RZoSSBx+/dI3QYj6KaHgQsdHPS9/pO6yBkxTLKe6/LOAK7IRGn7lAs3
         15h1pzyxKdh7NCSVfR+lHm6/OIzoXcm4dwcOuiT68PmwTGmjjyAofNeeujh7BJVp5nsT
         cpozytperG3t27APvED/fnn4sr1rN/fwCDrEAwPrjaSztgr7aAkqn8iHAGb+xoGxrCn1
         spsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=aUN68Sfz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pNrHcCryNYhadZMLYhJP3LK6oRE7UFgRMxX2tSJsiFA=;
        b=P6ZYNmaofcAfjRDlcIQ/49WbwWBK4tGMIwUOODM2julhUMdctPW//YWUrHfzUswwL4
         iVQVmJ/x1rzoQm4GPZDsHPpMy67nOaxmbgGgVKEHoBi+Ow+kSjccGg1xRTmZKIeHzICO
         bsbwJOggIEkHkj2oCleamuuwnhr8ptUM9iJk10LQjshvtIZjhmncxbFdgo2eSa/PrZKE
         SkZV4gV7FYIaz3R3jB7Txp3xyZfGd53/5LmtxL2UO4RzvrgcsIJ+9Gg3ZsPCX9v+xl0G
         IqtDqW/iVWiYMZfDCjBj5D6htoAU7fMR7pR7IVjeb3JXec8pajlmSDdiHUW38GhqZB3N
         vrag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pNrHcCryNYhadZMLYhJP3LK6oRE7UFgRMxX2tSJsiFA=;
        b=J8A54yy/7eYdhQJaNgycqyG2rrcMFL1OmgCmTAZqLL4+1CxF7Pnk3qgjAS1ABprIb3
         Hgu0Z9J9t6/QPnnfhwmSqpb+zdQIOsfLM+iAybnsT3l6/SqBTFGIoGZARh5yJI2uq56m
         L0nmc2Y1NTtvP7RhLE5jRNXtAvXxIxYWhL8ok2aYKjm1I818uLmQ5GUcbWV3m7FT+Vsj
         bbB+l0u6caDVsp/u1PzNANPA4ggsmRojRsF3a97d2r3D26wVRJHYJRw4h9uUruddwTSD
         lOuNUtlcJtYWOapC1Pah8zLh9Kxfk9NvifIj8ymcPtKisAjfr5n9qbzmv3XnXZnIbM0t
         O90A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NGXAiC4ZugbdftA1aiiNhZ8QmFrorcKvnKclJ1qo86SYVO/lk
	GIalJ3JfQ6dAxAPOkgXiWnI=
X-Google-Smtp-Source: ABdhPJxf9I50y/sLyTvlPttf5uJZ5MLt3wGiWiNxdxeB3HuvHp2iDdVnot9l/9HYT74DQ6T0MsMAaQ==
X-Received: by 2002:a65:62d5:: with SMTP id m21mr1187241pgv.226.1603351563803;
        Thu, 22 Oct 2020 00:26:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:515f:: with SMTP id r31ls348486pgl.7.gmail; Thu, 22 Oct
 2020 00:26:03 -0700 (PDT)
X-Received: by 2002:a63:d40d:: with SMTP id a13mr1247466pgh.344.1603351562990;
        Thu, 22 Oct 2020 00:26:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603351562; cv=none;
        d=google.com; s=arc-20160816;
        b=pGzg1GEXMOxBpUqzsWMseYTCOgP9lAT77Eird62PQLP+0iC7QcAbAyAUb0OpeNnDX+
         czKAt/zdPa2xpukkeRxXKfogNcw01HmSHHghvxvdQm2Z4yhmCWYIjtuBpj64yPxn01IO
         eGv4we2zYmtcU1HnP2ugOyBO8A4Lw+6fkzpB05ocUhrwuC9eIyVPczCVhdUK2tye3k+w
         dMtnbpCZJVt77z+wDcBmY9ONPCsRPBHhF7TXgxMfyRnPl9T3zvqy1E+Mq5vRAuhagG7r
         YFRnspsGusK0VFcTJHdWpJdGgT93q9Np2I1EUzkghQ1YZzM8G41KbRB+u5kMNWh/vm9g
         uxAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h+rKHFkcR5k6QSt8CeK8lSdFFr+MaETwBr6Mxg4PDmU=;
        b=xyD+wEyZXxeQJ1BffI9qtZzlrR2aMLZcTIhds7VRl3heOVBoiibUvxSwezA0oEG8Hp
         iZyDByYo0E9v79Izr5/imbISy37LeYkYod+dKGyHhCL46e8NxM4xV2O565uPIpeASc+D
         epGiQkg2lT7HIiXxanPhukBe+CTNnPtM/yuaUtEas4JV1fj/KjNFp/DQc5sTnVSu4Ak0
         t6jVul9hwCNXdW57bxUHm908QRtsxowWoHCRrK1oBpkwnln9KfvnCeGeVI1v8zbh1NRH
         TpHMnU8IM/5T3EZoiLrRMw+FVVNS0+9aeT3IUbtGHdahOTSz9ivjxpU3vdT68IC8pJSH
         XShA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=aUN68Sfz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id lw8si35435pjb.1.2020.10.22.00.26.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 00:26:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVUyy-0002dT-Ax; Thu, 22 Oct 2020 07:25:56 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 8E3203010D2;
	Thu, 22 Oct 2020 09:25:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 7DE3B21463180; Thu, 22 Oct 2020 09:25:53 +0200 (CEST)
Date: Thu, 22 Oct 2020 09:25:53 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201022072553.GN2628@hirez.programming.kicks-ass.net>
References: <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <20201021093213.GV2651@hirez.programming.kicks-ass.net>
 <20201021212747.ofk74lugt4hhjdzg@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201021212747.ofk74lugt4hhjdzg@treble>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=aUN68Sfz;
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

On Wed, Oct 21, 2020 at 04:27:47PM -0500, Josh Poimboeuf wrote:
> On Wed, Oct 21, 2020 at 11:32:13AM +0200, Peter Zijlstra wrote:
> > On Wed, Oct 21, 2020 at 10:56:06AM +0200, Peter Zijlstra wrote:
> > 
> > > I do not see these in particular, although I do see a lot of:
> > > 
> > >   "sibling call from callable instruction with modified stack frame"
> > 
> > defconfig-build/vmlinux.o: warning: objtool: msr_write()+0x10a: sibling call from callable instruction with modified stack frame
> > defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x99: (branch)
> > defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x3e: (branch)
> > defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x0: <=== (sym)
> > 
> > $ nm defconfig-build/vmlinux.o | grep msr_write
> > 0000000000043250 t msr_write
> > 00000000004289c0 T msr_write
> > 0000000000003056 t msr_write.cold
> > 
> > Below 'fixes' it. So this is also caused by duplicate symbols.
> 
> There's a new linker flag for renaming duplicates:
> 
>   https://sourceware.org/bugzilla/show_bug.cgi?id=26391
> 
> But I guess that doesn't help us now.

Well, depends a bit if clang can do it; we only need this for LTO builds
for now.

> I don't have access to GCC 10 at the moment so I can't recreate it.
> Does this fix it?

Doesn't seem to do the trick :/ I'll try and have a poke later.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201022072553.GN2628%40hirez.programming.kicks-ass.net.
