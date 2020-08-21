Return-Path: <clang-built-linux+bncBCIO53XE7YHBBB5GQH5AKGQEC5EE3FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C8524E3C2
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:04:41 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id q62sf2146537iof.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:04:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598051080; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGzAXAOJ0RJjxlgDlpoiSaRvyERlMBMK5z77SDsCW8LjEw/piTza8oPi/n5FgZtALP
         gLbTZmh+7BbKJtQu0GlU2ncYLbXWMbJ0lFnChUOgFvct/a7gtaElumic6b7R42AhMmqP
         G30TSAoe+CHwWpZ2ory46GMn8Za0Ff59DWYGLa1/edHs/dFIWn5Gv/cf510nnfScut+w
         OxXUA2By28ByW7pGexOpfQ2Huz+wImR9EqlKmWuT9hrTNoauk/KKuoCcq6aZTlRXaVTP
         ZamRvJ3RuC4A/cTYc/inOfzsB1tSOy1RGTZSC1vGPSTFURiR5Wk/XjcO59y9LQrNGTXL
         rfqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=fTD3ApXxnZ53XF6V0ycetCytlgA5jyEjttiUA3rRymE=;
        b=aNC2X7yoOhe7J2Bmk29YH+F8ta4itnEp4ReG971OXi/B7tFgApj2u6456HPkNMKnmT
         Fr90qt9fWLkSnq8Xjjp/iyvKf4c7GjW9fUfOLZEkUKjY/BBn6qMtbX7cYklNjqM2HTWG
         y+vGOgZOfLQOemJ1PRPDq2+BoUN2kqRa947UCe/XR7ofXnTjDJsJ+ytWpY+aGzQHWODn
         fIWlwvJLgAZwzFb9/II0TLZxt2TysTLM5wyzazvCqmrNB+4GmTz2Yo36CFu6E3ba83Eg
         47JBvYY0tb1cFntE+901iZWmGBMj+npAn4SBw5b0pyvvtA3qn50VfvO4d0jgvmjocpny
         Vg1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X4bX19X9;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fTD3ApXxnZ53XF6V0ycetCytlgA5jyEjttiUA3rRymE=;
        b=PmOmWXnxF4GzAzDcH0Ck7wzomqrpnkWoN7ZPRJzxP6KH3uvNmNy4TU6KTID/cdLT12
         FcBGtsSXf4eUcyB0GiDrdD7XOaM4UBDO2ksftmHoitelOG2r3xX0FeMqwsI+Vcjmf3c8
         vS+00//BMXMOfn4nSisiVSLmnsXnr//rkTpC5TkOEfHlffbZERF6ukHPrMxmmrIGKGtC
         NLY/zDJD9u1c42tKEYXW6CihssOFTL28udhGIj5RSgi/CFP/qHe/8Svr412F3FnGgeaL
         yufXpBYvKFaRrQ1CXFIUChLkSlzvV3HegFJ/QA5UB//W5Ix6z2NFafptQ9IdMwAB/0Tl
         SWRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fTD3ApXxnZ53XF6V0ycetCytlgA5jyEjttiUA3rRymE=;
        b=AgVlfinhiMeLT+DeO+n+4BH7A3UZg7hlmXPR8PPQYRbG1r5nEsl3vf0YxeVRLxO5NV
         xDv9RaR2jjkSoc5ZUv8Gx41gZ5oV7tDPpTD27gUiXiI/ktE3vJ2hT6rHSEluocE5s/jB
         PLI1PMjVZmk7S4p7iWQgdVjgTi91A/Z2QdNr7hI3tqM70g0mknpoEnECRICsv/nIUCTq
         fp9BwlCpG6xXX54InCIVXpte5dMSoBTc/z6k6ZsRPCrF8xeUshALdGmIE3sClZNpqMLS
         REToFayD91EkfcuxyWibYXyUKOMT0V7upc5VXhkD9FxAA+C+rERmFVnNa7bUjJc/yt1E
         P5uQ==
X-Gm-Message-State: AOAM533py96vIpi8xSezw2n/Q3RyUhBOlZlS8Wf3ithOw0VlkIWkclrN
	n1gQ/CZmhLZd1srGs+YUQ4M=
X-Google-Smtp-Source: ABdhPJyprymzWTQKegaU7uYTdWpX9Y16PJfBRkfvGGIAtmYbLxea9eFS9JQm0ISsNbhd+dzyT2i3Ew==
X-Received: by 2002:a92:4001:: with SMTP id n1mr4345366ila.69.1598051079822;
        Fri, 21 Aug 2020 16:04:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4b04:: with SMTP id m4ls823875ilg.11.gmail; Fri, 21 Aug
 2020 16:04:39 -0700 (PDT)
X-Received: by 2002:a92:8550:: with SMTP id f77mr4096643ilh.129.1598051079492;
        Fri, 21 Aug 2020 16:04:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598051079; cv=none;
        d=google.com; s=arc-20160816;
        b=xvOS5k100+LDELykpOQz5ofpR5mSEN/GYHbuStpzyVWhGpKWtAXZ9Bgslnlh9n47al
         eEsMdA7sU6cPmtMAjVG/280UcKoM3jvC2IwBIrawHznlZDAIA0o/kBTwq0bRk6v+nual
         quyZrd5eFKoRSYpmZMN43WE/LDrhIiaoYgqe1lhei2VVoOehMBnZg4HrTgF0m/3ijzhm
         fj+BI9BMk7s9OIBpNmayCZOMCr0/6IvBMdaF8UOqlOXvHeV7ln4uy0xXS1ARV+3MQ3jc
         edA1p44buGEG+JPeRe46ts/IlacnGTGwgxPlrkw7sy9kUts77lEufBu89gy4jylS5zyO
         Flaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=JIkYYfWPZx8vu6g44rtUYz/n2J/i7vQ9ofU14VDGPeA=;
        b=sGa+6e7rKGwWujmXpYvKFSYul9WeD/F7/JZmuz5ntUJMNJ9wpXd29ohv1Fk7OyECMC
         dfMirm1vUwT3t+3vMcvpYNUHXMXNzGuYwcGh6wmlGTr+iJJS8ALpQlmmb3OWchDgUAAO
         xlRE0DuEEqg6m/McGCTCXgydwZ+awrfo3Eo7K5jc+LGVFzlhMc5mAOg4yfTI7/nDDzND
         fCAQaGi2+WMT4h56qp4m0IzpvoN3wnzwZTpG/HVLU7nJlTP4MGEbrz6ds6RM4uRlMnZF
         Tt59rMdaqV/OOP8HzlbT7ucD7r6GxqXMUBL1Ngl347kr3eXkexs1rKRbIlkKgni6ydHp
         6VMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X4bX19X9;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id z7si141213ilm.3.2020.08.21.16.04.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 16:04:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id cs12so1376356qvb.2
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 16:04:39 -0700 (PDT)
X-Received: by 2002:a05:6214:1454:: with SMTP id b20mr4509113qvy.35.1598051078892;
        Fri, 21 Aug 2020 16:04:38 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id q126sm2723114qkb.75.2020.08.21.16.04.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 16:04:38 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 21 Aug 2020 19:04:35 -0400
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200821230435.GA56974@rani.riverdale.lan>
References: <20200527135329.1172644-1-arnd@arndb.de>
 <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de>
 <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan>
 <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan>
 <87zh6ohm03.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87zh6ohm03.fsf@nanos.tec.linutronix.de>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X4bX19X9;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43
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

On Fri, Aug 21, 2020 at 02:37:48AM +0200, Thomas Gleixner wrote:
> On Thu, Aug 20 2020 at 09:06, Arvind Sankar wrote:
> > I don't think that's an issue, or at least, not one where force_order
> > helps.
> >
> > If the source for foo() is not visible to the compiler, the only reason
> > force_order prevents the reordering is because foo() might have
> > references to it, but equally foo() might have volatile asm, so the
> > reordering isn't possible anyway.
> >
> > If the source is visible, force_order won't prevent any reordering
> > except across references to force_order, but the only references are
> > from the volatile asm's which already prevent reordering.
> >
> > I think force_order can only help with buggy compilers, and for those it
> > should really have been an input-output operand -- it wouldn't currently
> > do anything to prevent cr writes from being reordered.
> 
> Fair enough. Care to provide a patch which has the collected wisdom of
> this thread in the changelog?
> 
> Thanks,
> 
>         tglx

The gcc bug I linked to earlier is only fixed in gcc-6 onwards. Is that
good enough to remove force_order? I can test gcc-4.9 and gcc-5 to check
if it would currently have any impact.

CBL guys, can you confirm that clang also will not reorder volatile asm?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821230435.GA56974%40rani.riverdale.lan.
