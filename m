Return-Path: <clang-built-linux+bncBCIO53XE7YHBBZPK7H4QKGQE4FHMBJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC13724BD7C
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 15:06:46 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id d2sf954241iok.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 06:06:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597928805; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fk8CHM1yJlY5SZImPLoevSrDqg35DdB8HpOyWsQ0yDoXefi0F2LDQhD6dp5mwjMer+
         U9VgY6tK7ZGfpNurSZug0ACSQfH4CwQW0ULMA8em56PZoARPjVvVWZoutC+Bucpyt7fx
         szB02Gyq/W2rpL1m64iNZ9TpZGlw0nTgh/JsH8x4fMju1gTwqTIYxS6jdEf6Ym+IQTKj
         1YPqynV6zYSTvI/0ihqXhPeLLFhSzNnSdGAu8HVfa0CZKbLor+3Sm4Vfnd/hRMtFO8SO
         QzdMCebQlQpmfx8cw0epATgeQQBbn/NCfQpuOI8DXB/P083b6mw1rL/AyxlXN2J0ukyS
         ansQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=u7JwLVcMImNfixi2HpN5qwFrCfnIXTHL8kqF/J6zb8A=;
        b=LvdmqACnwW1QBm2CieppYnDprimve4MXWQDgRoALD0vE6v31ccjGMX5eC4q2kP6Fsb
         QTtVVawIR41YTO1Ejr/blVRINpG9AZ4kOIKcQylZEm+OUbiqBQyqY9UJNVbUBdfUMvu9
         k7pLTz94u0dgdfvIJUXKh+3b0NaolhUtYc8o1yt0K4NvonzTVvg1OeYqH+wrNbZTh3xM
         aS7WpxJiHTk/I/GvxAGp8Qzqo+iVqJvnYXFnlSaRK8yDOWg3unTeyfsocr24WoQDMsJe
         5prmP9vgT6x5lnAThMPAbv1xITpYGLurkgwe2YC3IX5H07UlDBdoFuKyzELUYzIEkO3d
         78xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LM5GQuhF;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u7JwLVcMImNfixi2HpN5qwFrCfnIXTHL8kqF/J6zb8A=;
        b=miNvVaBppnRc48oeAZA8lKPmwYoHEMeuOVc1/EJBLHZqwZaCisIeAHIRgrbcB2Xt8C
         tat3vtyak5SJqassxTSWtTJagfUIOG7gWRemhME3mNDGt8Kgu7NSusPh9xo5/3ugrDk2
         DwuwGsuULuZ4Pi5+jgyKA9pfc/f+le38CiU52pmR4L7LwwVg+kZyFREKJ86dQzwPFq24
         lPn8CWbh1pMvnBV9Loe1r1dTr3bO00uo2XUp1Ix8KDjjxG4f2MTzHEfoKHzxd5CAlGXW
         EQ/0ROqddtHO3XuWQoMdNxK22dYAYfWuI5TzqVRGrryiYweakwGaMl/0n+R286Y+Dncn
         ybCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u7JwLVcMImNfixi2HpN5qwFrCfnIXTHL8kqF/J6zb8A=;
        b=LfMvy77DreMU9PIQuEA0Pm4RdvihXZLJT4fOegT87IsbKxRJkUcBXOC1TtrBhU8oFG
         u29obX9afI9FBsF1pozNzYEY2W2iZoI/1/YWgSCVf17ihirBzJfqOr4uLjnPNUNtgLa8
         8YmagrAfBkbcfRkP1QnhdMkBn0f5B9QC8argecuE5sB/2Lfm0QgVIRywBKp1xqqE5R+R
         tEawVXrOqe19JRvdze1pf4LzKlr5RwLSbVVZGDcykUwI26CmuIWAJ0ht027qNbLAyrXF
         tqKduTJ33j2yd4Dg/R+K98XzbHPmRwehmIU71WXZvH8n63piTRUObZh36wEHeh7ATu6m
         J5kw==
X-Gm-Message-State: AOAM531lYygF6fObEplgj9bAmvpJdHzIXuKPVp5WNCHHwPiYns9c7p8o
	UL54LMo1YWFFe4X6Cjb6FJU=
X-Google-Smtp-Source: ABdhPJyS99zH2MUMxiuu4LxvS6tE2hdcYdGbZWCf9dUvq+9FloeGREr5315uEfg0VR9rIce6A0mtAA==
X-Received: by 2002:a5e:8e0c:: with SMTP id a12mr2605955ion.156.1597928805372;
        Thu, 20 Aug 2020 06:06:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a305:: with SMTP id a5ls22668ili.5.gmail; Thu, 20 Aug
 2020 06:06:44 -0700 (PDT)
X-Received: by 2002:a92:130c:: with SMTP id 12mr2666090ilt.263.1597928804873;
        Thu, 20 Aug 2020 06:06:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597928804; cv=none;
        d=google.com; s=arc-20160816;
        b=E5y0GCwWSefYixGab7muxq6s8Igp5msr7W1W5sZ8ZbjY5GL/4IcGk4VDhK1Z6XCEHy
         4tCeHzb2Kxdi6zIzhCg/BgJRHHarsZUjobNAomOcf02m1s2L+z7Cia+Ffmsrf8bfspol
         jidr1WEdlHmh+tZU1KRvpjyH7Rza5A4GaPNKMraScsvBmNwcDdtBhOYll27EUmexBESa
         U5yffFHAtz0qdq45xn4eLxLeA+vzm0LLD+zoDRcOkWt/zM0YIWVRXtVIE2j4bZVaUjVD
         wAjSUPgKKwaS1ju1cbr5ElTr0XBrNmf7HXp1EdUJOb7HXEE8vkVh/O61kC6X6hNLXHS/
         FN8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=6sOeSsarGxFkc/+IF5UxnDuuMZBTO6G7PiDa6w0ehU4=;
        b=up+9Q+2bd68y/hO4Mf/QR1k1/dTlUeUbVFoejpE1eULdWrRv9DdYBQ4GGo5F3Hqteu
         1r1X7AOIZW82Xk/bRHFwXPrCmdojhGguHt2kvpILnMQltMmQcHgs4nBytdmu6Wx4dl2z
         ix1RJb4M9c6ZiOl8KVFUdhjViQaCdqGysSqznzI9dgSYaVDRhqtmU678gCnbEkz20+s0
         qlJ6+i5xFbkj9MYuK9bHcyfpK86Yihrs5fQCsstMpxBI77KJlvPbqumUm382Rzb4kCEi
         86AxJAanrMizOOnUVs8bhDRY0gfBl61EOIM9ARgRw8Ov2/8xY1mtP+TPwjNed0CDOzzb
         ud0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LM5GQuhF;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id z7si85724ilm.3.2020.08.20.06.06.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 06:06:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id e5so1093701qth.5
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 06:06:44 -0700 (PDT)
X-Received: by 2002:ac8:4e91:: with SMTP id 17mr2582988qtp.284.1597928804224;
        Thu, 20 Aug 2020 06:06:44 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id q126sm1998857qke.34.2020.08.20.06.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2020 06:06:43 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 20 Aug 2020 09:06:41 -0400
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
Message-ID: <20200820130641.GA536306@rani.riverdale.lan>
References: <20200527135329.1172644-1-arnd@arndb.de>
 <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de>
 <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan>
 <875z9dioll.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <875z9dioll.fsf@nanos.tec.linutronix.de>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LM5GQuhF;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
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

On Thu, Aug 20, 2020 at 12:44:06PM +0200, Thomas Gleixner wrote:
> On Thu, Aug 13 2020 at 14:09, Arvind Sankar wrote:
> > On Thu, Aug 13, 2020 at 10:37:01AM -0700, Paul E. McKenney wrote:
> >> > Let me ask (hopefully) useful questions this time:
> >> > 
> >> >   Is a compiler allowed to reorder two 'asm volatile()'?
> >> > 
> >> >   Are there compilers (gcc >= 4.9 or other supported ones) which do that?
> >> 
> >> I would hope that the answer to both of these questions is "no"!
> >> 
> >> But I freely confess that I have been disappointed before on this sort
> >> of thing.  :-/
> >> 
> >> 							Thanx, Paul
> >
> > Ok, I found this, so gcc developers consider re-ordering volatile asm
> > wrt each other a bug at least.
> >
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
> 
> Yes. It prevents reordering of volatiles, but it does not necessarily
> prevent reorder of something like this:
> 
>         asm volatile(...);
>         foo();
>         asm volatile(...);
> 
> it might turn that into
> 
>         foo();
>         asm volatile(...);
>         asm volatile(...);
> 
> if I understood their discussion correctly. So removing this magic is
> not really straight forward.
> 
> Thanks,
> 
>         tglx
> 
> 

I don't think that's an issue, or at least, not one where force_order
helps.

If the source for foo() is not visible to the compiler, the only reason
force_order prevents the reordering is because foo() might have
references to it, but equally foo() might have volatile asm, so the
reordering isn't possible anyway.

If the source is visible, force_order won't prevent any reordering
except across references to force_order, but the only references are
from the volatile asm's which already prevent reordering.

I think force_order can only help with buggy compilers, and for those it
should really have been an input-output operand -- it wouldn't currently
do anything to prevent cr writes from being reordered.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820130641.GA536306%40rani.riverdale.lan.
