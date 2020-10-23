Return-Path: <clang-built-linux+bncBC2ORX645YPRB3VOZT6AKGQE5PHFP4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8674D29760D
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 19:48:31 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id b6sf1945450ilm.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 10:48:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603475310; cv=pass;
        d=google.com; s=arc-20160816;
        b=et+mpmAJtUhSz4Hu8qlR9/It+y3Qt9X4rVx0ot/UCGTo+bksjH4XtIwH/tTtLETPiQ
         9Lh09f+EzmgddgwLbkdwelHKogmek0tzdTUR5mixPBa9LgXN1ENAgRcSCemwRQH8wxHg
         YYnkFu9B1bOYpLW2FWsTkN8+7B/ahc4pXweI+ZctV5xq2eIk4/QI/y+q4iqBi50o4zgu
         EUeVwX+MpLPmz95AfXzIJ1ugb+SgfObhbIiLbU5H4g5ys/BartT5GUdfkdvKMfXHsZKm
         dCsF8WLleTIWnuoj36tW01QgZa68YurTr+EpER0M1r7vEmqdovITw/7v8uMgZzCWvLdx
         Jjaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Kdh0ssHjR2UpY/GZH72gHtIGSYNVHvbx6EBcT5BmKAg=;
        b=FzOTvhiisTvEqTJEBuYaVVYIgZpz7pl+xPtzwhXtYUWq8umehetVhuSfuvQV3/S1t+
         bm29MLOcVecmfmSa9BiTzd0/fjxaQN7rdBs4pemcmRlh0YbwQnJAUo9yUaCEehTmq915
         NyKF4d7WUnjfWn7O/di8jsl04o6SFQt1/zarufBOJ9jq/kB085iQaQShCfSvTKHFiCZ2
         gYwROyt2c/dJXxy9JCHmBxaOly72aCovD+75V6lzGdslGkQMvFHHBuAIOt2G+ym7X53J
         bFY7X8h44CEvpQ2dMHU4AuwwcDt5Ewbv64eSyFgyCgcN1hH/wPQYq+WOgyAIoGphe8BU
         oqgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9H11cgb;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Kdh0ssHjR2UpY/GZH72gHtIGSYNVHvbx6EBcT5BmKAg=;
        b=MMdzGLU9SNXRwHiiFpIeFfM7cUmyaBRPVSV1qK99pOFsKjYar+i0n3rnjOv+Nh45Cz
         hNCRA83OgZQPKrnHsXawxGbS/yy9v8DSyd3d5xMNW1Ti5EEDrkx6kT/qIN2phw8/6jLt
         rqmBTfmeqCBL5QCk57XlAROEE3xrt5X9OPZEXFtslk/tkXVtjoZK9hMpf0irUs3xkFz6
         jv9fz2ORhrMMPjnGSBYoMwAvTDwwD2IVaKz0N6DrQbMLiIS6y1UAN/lxvDl6v4FAq5Hq
         QnUXcLKptf8mpyvzVNgpaPLEP0cFL54j0V7ohVzK7+6eZ7Ap1UZn1AGDkNW5OHdSBvZU
         ovew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kdh0ssHjR2UpY/GZH72gHtIGSYNVHvbx6EBcT5BmKAg=;
        b=J546bauU1NLXEo1QL8gQ+2oPL4O1NlIwn0OBUfhSrUOJ9hg7L/wWqGIyqfAVSv5hHV
         5XV3gZ29is/cSRSxLX3487/QQ1yBeCJMOvQ7K+lFGAzI+vTZRc8BUGDApMeZTizMyr/+
         ibSbJ1SfVlCJEngICsEi4C6r4NBUg0Kqnal31Y2HH6ATqGuWNTsb/xtYAwCtTjYYlrZg
         pEcHI9ESm7Tn8PEcevtegSNuEAsZ5lDlnfu/FCumpxnW05OXl9SmsWUNYibBAFh5+Ef8
         lCPm6RpbxkJJ3zTd0nATZZdDRLd6CFH54hb7Fu7guNRU/bKUQl8I84WFwoEJLaqEvUfE
         oKuQ==
X-Gm-Message-State: AOAM533/epP60h+bj027lhLK7hE5SjbleW1lopbEuguAFc/nteED4S5N
	ii+WgwMz7W6w18onL7cF0eM=
X-Google-Smtp-Source: ABdhPJyMrPsLK6uBkY92zdb1ICH5qYnHcx9K9n0zQx/NAH2mC/3ZcR8CY5V0GZLh+nD6ZhLkMvlcpg==
X-Received: by 2002:a92:cc04:: with SMTP id s4mr2564164ilp.31.1603475310298;
        Fri, 23 Oct 2020 10:48:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8a05:: with SMTP id w5ls198390iod.0.gmail; Fri, 23 Oct
 2020 10:48:29 -0700 (PDT)
X-Received: by 2002:a5d:8a04:: with SMTP id w4mr2531487iod.210.1603475309842;
        Fri, 23 Oct 2020 10:48:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603475309; cv=none;
        d=google.com; s=arc-20160816;
        b=aq6Oxw4PSHEyH6As7azmYuNKTV0hKA4+/00/d04JEVEs/Lc8aLF6/DeQctsqS3p+95
         bwsYgOVWj1vgMfAsroh26toeM5bi+PpnWDPgFp4j4k0vpOKkqp4/Fl3yqcRgeT3/nloT
         yb61E0WYqvBN3H6wZ4Bg3tY0xexvEs5GQy/w60+RZXDP4bL9xXVJrYfxCANb9mIyk/Ye
         3auel3kMpqnoCR4svVM2aKHyDhTS/qPHOZxbWV1xxF7Xa13YJGw0Y6e3Qm6o2usGi236
         mJFMfFEarOB/RJ2NHSPM9mfP03BgWs4EA+1CM3cnzqUELRS7ydFUzbsj95Zk3R6dU5Gd
         XYRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uHs6b4ooy0rgFnXBjoHTZU/MFzwidZAAr9PXWq9UsVk=;
        b=lTAuQ/KsMht7Cq4CEtAWoObdwjyRNk3ekFeQqxwheNAf0DvDl/j9p6i45LxNgoawv0
         vI5rMx71Y2mK2VnRIx8F1JGBvcNRVFgpmAwaWS68Qroof/AMJ7B/ntQ4CZ+CpgnFrnrW
         r746MXBFd2MI4A8Ep0CKZi6uOqtXCsLiJcKgM5uc5eKTCjE7GU+4cmtcSZZ+7nwSZwGA
         IieuTF7v+nDx/8tHtWJmzDaneoBgOdKOpvPO8E00bTCRun9Oo6A/mSNrMn4AAtjdt4pl
         qy44pS12AZVR1ZzQUiD6cBD/Xcj9fGiVYjZrL53YX9yqMDOXOpyoD0mOWaeNHr1hxtaD
         81Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9H11cgb;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i8si137677ioo.0.2020.10.23.10.48.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 10:48:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 19so1799057pge.12
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 10:48:29 -0700 (PDT)
X-Received: by 2002:a17:90a:450d:: with SMTP id u13mr3848288pjg.148.1603475309279;
        Fri, 23 Oct 2020 10:48:29 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id w6sm2555511pgw.28.2020.10.23.10.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 10:48:28 -0700 (PDT)
Date: Fri, 23 Oct 2020 10:48:22 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>,
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
Message-ID: <20201023174822.GA2696347@google.com>
References: <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <20201021093213.GV2651@hirez.programming.kicks-ass.net>
 <20201021212747.ofk74lugt4hhjdzg@treble>
 <20201022072553.GN2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201022072553.GN2628@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h9H11cgb;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541
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

On Thu, Oct 22, 2020 at 09:25:53AM +0200, Peter Zijlstra wrote:
> On Wed, Oct 21, 2020 at 04:27:47PM -0500, Josh Poimboeuf wrote:
> > On Wed, Oct 21, 2020 at 11:32:13AM +0200, Peter Zijlstra wrote:
> > > On Wed, Oct 21, 2020 at 10:56:06AM +0200, Peter Zijlstra wrote:
> > > 
> > > > I do not see these in particular, although I do see a lot of:
> > > > 
> > > >   "sibling call from callable instruction with modified stack frame"
> > > 
> > > defconfig-build/vmlinux.o: warning: objtool: msr_write()+0x10a: sibling call from callable instruction with modified stack frame
> > > defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x99: (branch)
> > > defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x3e: (branch)
> > > defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x0: <=== (sym)
> > > 
> > > $ nm defconfig-build/vmlinux.o | grep msr_write
> > > 0000000000043250 t msr_write
> > > 00000000004289c0 T msr_write
> > > 0000000000003056 t msr_write.cold
> > > 
> > > Below 'fixes' it. So this is also caused by duplicate symbols.
> > 
> > There's a new linker flag for renaming duplicates:
> > 
> >   https://sourceware.org/bugzilla/show_bug.cgi?id=26391
> > 
> > But I guess that doesn't help us now.
> 
> Well, depends a bit if clang can do it; we only need this for LTO builds
> for now.

LLD doesn't seem to support -z unique-symbol.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201023174822.GA2696347%40google.com.
