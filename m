Return-Path: <clang-built-linux+bncBAABBPXU2X4QKGQEHTKGDBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id E75DE243E68
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 19:37:03 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id p138sf7603260yba.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 10:37:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597340223; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pbb+HRtbPZyh5bkfxxUAtMS5HMzLzftIKPFId8usABunvvXaIRm+Mt+v0SolAcY9Qn
         4b+BXdjednLqwT/rmdULLTbe9h7HGfshBAzO6fbyIM0CE7A0bb6MzCjxwANFtw8fPLwb
         Fl5P2vrS421RlVkoZmMIqHjiEBHv8hJvGAx/+AREMV+iFTB5ttrNwcaphuE+vCj+0IjE
         1gs0AKyajjAU3Bjy7yz94ZI/vGt0CQxyHZUz7cNsiKP4v6ZO4H4hMI8xOzlvx2km/r6b
         99/GoYLRjfWXLsnR9oILdEPX8KKV1jixmJQGtNEks7rWPocXiQrjVb7yjOQE7PXaNgtS
         /TSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=KtjClRyHAjTAkaW1DGbghBLqPdD8GLXpOhoNWKStvi0=;
        b=npY2mfx7JYwl2Z+/QGTxf0kM+myqm5OamabdLnvZ0s0cLL4IgJArb5ulkeDiUDy3ON
         MsEhQRpgwE5z6epCgv20LfSVjJ/xQu3EnYfrbMfYJdSosz6h06ePbgkZzx1LGjdepmT/
         Tbf2gXdfw5jgIEj40M55FPMI5OdbiOn4vNHpkijjIA9/VEVfueripjm09deYoDGrLM+n
         MiqDWrWUJZahzZus2KKOGQin8Yb1PHKxQdaDAvzXZiCZ5IlRMeAyooi1ZQpF4jR+TjX3
         A5v/FAlakq1zNu09E6qXoNmyjKb3kfndx9nTJ1L0R1QM6QZtkT05w4hc9ddcXKCATMHn
         lz2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YaIq9Hkx;
       spf=pass (google.com: domain of srs0=t/ce=bx=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=T/CE=BX=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KtjClRyHAjTAkaW1DGbghBLqPdD8GLXpOhoNWKStvi0=;
        b=ZdF+uluEnGaUNSDsTqaaBWOErXUEWqCcw0p32K0jh1XsYY0EJXntsDSrCyTn/zc/IG
         FkoG5t9E3u9jN3frK99bL04A34/9xwFXIXueGRWqJIkjcfGvKKBXCeG8GLVUyWTDfNRj
         fEOeLj5O1w81EtVKum6JGtscs4whiAO+9VB8pOe+m101ZihxQSAT4fYZIOm3XIKlvwEX
         XDJqToawDmRO3OeGbL3yJzyoqSYPD0tmI+v1o8GSFT37ZgPOYZdy//2qY21E+EXIYSBC
         6fk4kZXe4v0IoHTu2eE90FKZZKtOWoOtyr+HH+hLmKA3bYacQCpGwvBmt5duy44vSlmT
         C+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KtjClRyHAjTAkaW1DGbghBLqPdD8GLXpOhoNWKStvi0=;
        b=gs9tY73M3EiKISCBXZH1xfU8gXEpZ4ggZqXIfFy0GIrUhGSE2x5m6JBz93c4Db0k4E
         A1KjiMgoul1EfiM8GKS06JIqx7Bbge6T8a6PWOKp84f6LUHo2vogKtPlYEXD4IE2twx3
         DTDq4Gd6ImhvNkSkKMjU2prD1/8P5E75ZueuNBp0kGrh12wM6pbJHdx9uP8PZP/pRYFd
         4cbba05kbycbYJp/gbYxjbWdLmAtHmP3AWtx/W9zN0Mmz8Z4Gda4x0mv9vUBmNqjxAPz
         iacMgnFGahIpLEJW1Ko1YTZFSerYZ13RYWFDp4+AsDY6zzOez7tbTV5cGk4i3MHaPP/t
         bZzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306xEeCpYEdabFOFThz4BF+IBdcb+1bNmM4Ph7SMPjMyhlqeZDW
	06ZpaB06Cg5H23znF3PB5qw=
X-Google-Smtp-Source: ABdhPJy2p4X6FiXsX00mSeNErQ29FOgc8eDQTuBaBsxzJtDGDpnvDeGUrKyfKu2NuLAhTy6KEDXFhA==
X-Received: by 2002:a25:c68b:: with SMTP id k133mr8828882ybf.491.1597340222799;
        Thu, 13 Aug 2020 10:37:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d451:: with SMTP id m78ls2623254ybf.1.gmail; Thu, 13 Aug
 2020 10:37:02 -0700 (PDT)
X-Received: by 2002:a25:ba4f:: with SMTP id z15mr8696973ybj.171.1597340222496;
        Thu, 13 Aug 2020 10:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597340222; cv=none;
        d=google.com; s=arc-20160816;
        b=y65g+dAUASc9yeAB+2h/sPR6PP7n29LThHdfPjEMoVnDLMk3kaYVUmOf8+TzS2SXsr
         caYpHNYqcKLik3RHa3RWKmr5TbM0qnIb1w2uGihC32KmTn6bgGF0zAJF67OpXv3HoX1m
         iktgHVF7q4A4vJLg3DHXuLb/LG5+Y8jrBtMuqUQ1BHDbQg75JDQWp60mR+eXgsRu9cOr
         BoiZUa5oG2S865HWEKVUHELc1EkGmJbkDp1IjBqMbwrb7qDm33KG6v+ToNUI5lSjQRVs
         asdcSFef1Aq9+33JLI5z7DF4xfJaMdpZQSUjluWHRz8mdkAWDSTjdQnKvYdh33XicdkD
         BDXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=g7CAj1faMuMSydXDWmXyfl1v1wqnXwikcXB3JaocUD0=;
        b=SsBEakkNwWMG+BtHZ25Jp5lh0t8DLtHAgAthcaLDmSwkOfAlykUFAVmZR+Q5x7qj6w
         vpzbPUXsfiWm7QaGRpBdUy7AJmfaXg4s8wFIXz8BugjomyvePtpVOq3uG7l4EGrw+Bv3
         le2EUlzg8xFSCrInbU3Teo08sRTHwdxRfbdpigcguWvwL2RoL59N5syT+wHoFT3BHfE6
         fwEl6YAlIqUyH/XQhZQqQhUnj0UfGAvPRYjd//P0sxhpflz/v6a/At1ZU9PUNsByMlVE
         7JU5NrghIjwWo7ODijuxIMFALZRcxMlRDmHrd1lvnh9RLbVFO9m0kOhzB5WhL5xu51au
         ZG6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YaIq9Hkx;
       spf=pass (google.com: domain of srs0=t/ce=bx=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=T/CE=BX=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i144si401880yba.4.2020.08.13.10.37.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Aug 2020 10:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=t/ce=bx=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (unknown [50.45.173.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 67A4F2078D;
	Thu, 13 Aug 2020 17:37:01 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 12287352279C; Thu, 13 Aug 2020 10:37:01 -0700 (PDT)
Date: Thu, 13 Aug 2020 10:37:01 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
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
Message-ID: <20200813173701.GC4295@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200527135329.1172644-1-arnd@arndb.de>
 <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87h7t6tpye.fsf@nanos.tec.linutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YaIq9Hkx;       spf=pass
 (google.com: domain of srs0=t/ce=bx=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=T/CE=BX=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 13, 2020 at 07:28:57PM +0200, Thomas Gleixner wrote:
> Nick Desaulniers <ndesaulniers@google.com> writes:
> > On Thu, Aug 6, 2020 at 3:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >> > + *
> >> > + * Clang sometimes fails to kill the reference to the dummy variable, so
> >> > + * provide an actual copy.
> >>
> >> Can that compiler be fixed instead?
> >
> > I don't think so. The logic in the compiler whether to emit an
> 
> Forget that I asked. Heat induced brain damaged.
> 
> > I'd much rather remove all of __force_order.
> 
> Right.
> 
> > Not sure about the comment in arch/x86/include/asm/special_insns.h
> > either; smells fishy like a bug with a compiler from a long time ago.
> > It looks like it was introduced in:
> > commit d3ca901f94b32 ("x86: unify paravirt parts of system.h")
> > Lore has this thread:
> > https://lore.kernel.org/lkml/4755A809.4050305@qumranet.com/
> > Patch 4: https://lore.kernel.org/lkml/11967844071346-git-send-email-gcosta@redhat.com/
> > It seems like there was a discussion about %cr8, but no one asked
> > "what's going on here with __force_order, is that right?"
> 
> Correct and the changelog is uselss in this regard.
> 
> > Quick boot test of the below works for me, though I should probably
> > test hosting a virtualized guest since d3ca901f94b32 refers to
> > paravirt.  Thoughts?
> 
> Let me ask (hopefully) useful questions this time:
> 
>   Is a compiler allowed to reorder two 'asm volatile()'?
> 
>   Are there compilers (gcc >= 4.9 or other supported ones) which do that?

I would hope that the answer to both of these questions is "no"!

But I freely confess that I have been disappointed before on this sort
of thing.  :-/

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200813173701.GC4295%40paulmck-ThinkPad-P72.
