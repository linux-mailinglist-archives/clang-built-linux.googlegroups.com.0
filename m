Return-Path: <clang-built-linux+bncBAABBBUJ234QKGQERSO2QRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id BC440243EC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 20:20:57 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id c84sf4934537ila.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 11:20:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597342855; cv=pass;
        d=google.com; s=arc-20160816;
        b=AGNbbR+f85nCPjPesRD/Ijw0wupC7ewsh7gtOCgeiRGYQrgFqUdksyXiJimgz8MzRJ
         /JIJvifPkFHvCXA5GCUz44ejl1v5MvBoeJNwe1f9hfJQAW3BG3Ipg4Cbh8tm0jpimEJY
         bSfUCpRw+1+fxJfXx184M47WvsBcIaSlEfaYnWCh4jvqmwFhwXF+5JkSgMMMWyLx8M2H
         iGmUB7Y+F3koWE/a3dPqaHcmAhSLJQyED1aW6gqI/mFrHg6mbQtiykCiIi5n9a2vJcqn
         vEp3XTni3JDGB46nu6jS0yTOzxd+1nHpbxGxVk5GwSpRAmbmoyLaVUUpJdKlP0gAUXX0
         aBUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=9pb69DSZwuINrFf5qhvXPL06bMbtRBhUC9I9Lo85soI=;
        b=jlg6DrEPsPZy18IQt6eFr8IkSexWpSqoRGdlJL3dCY+bYpUgz23X2AKG2w1m5buCar
         M4hA7i78PxPOuGXRxgyactzbXfqLP6c2iFZlBsD/SqqUVx3kcsVkhSjKhmZzJ6OezE7n
         xSxnSzc30yhsSzBi8jSxr6U/TyFiHHY4ucKdUIgmAk9emTY8jDbu+5fAydQrjn/c5tsw
         g06wCURCFfjDDPQK7FoiVRSaRLO9sMIK0vE5q2VxXPpuiz8D7157qddrktd1MnQN+Jlx
         C1F6Xx/wV7cpbXN4/IqJR4f/JR2Na4NZlcGJxhAaunVReohEvFouWcOeMXgwb+Sa9Pu+
         3F8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="bdlYiV/y";
       spf=pass (google.com: domain of srs0=t/ce=bx=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=T/CE=BX=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9pb69DSZwuINrFf5qhvXPL06bMbtRBhUC9I9Lo85soI=;
        b=aeEKzaqYr8xHGcEt/NOoamZxfTOWevoxAnS7V3lHtJoH33qfqoM12kO40Rr43c3Mos
         oaOwfO5OqRlxljwy9bRoJ7nalHIAz6Uc9yLjL0dMlA2Z4049BPj35Vx8saWQZ6jz3Iml
         peqlP1PCDiqyReKrXwl2F54Exh4gxfutXas9SlGg1BZCBFdSKxCQnqKNxXHA7HoDie69
         2A/tnWgEsSsiTCS/dDaR+rTPg3pGdj1k9RRu04rY0sTkeSD4TfNzHWnUkLpYwdZH9Lgx
         6A5SbFot90N1lgtSdxRumzfSLvcisaNfMF5IlIOOD/8xcxDnDO7cV99WUE9wybVcp2cj
         cZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9pb69DSZwuINrFf5qhvXPL06bMbtRBhUC9I9Lo85soI=;
        b=reUKNpf9eWxTiWGwS41/xhgFWjGv0pshsithGy76tMMBLFWqdLFrKvwDB1nWgRX4Wv
         rAjGmISUkuBT9oc2kjLqLPeBTxC56Y83jYJ7NPDXpnQ0+yaUXCq/+VBXbiys+tBRfi5l
         gyiryQOCEfJCnG/eXdQwKRWL7DgAzzarhmgZxt5fUvymfz0BTGuqpq5lCvet72BDRDg1
         WbHXMGZWe4hgtT+GXAa4imxvfiexRZtN6UpJ9pT4sz9kNCWZPr84MIITOAoS0vE635CB
         CTy4a/k2ltoSh8UX7JytIjIHdfB2RcyFwpfIO5sBkjG4fip6EAxNZgfrvliq/F6Rx8Jp
         SQJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53156IArUmBrGH0twFIA8seBd/26JLEXT4VHKTQnp2K4SsNGbEgM
	QlqwliKQmBDT3h0nlSbm848=
X-Google-Smtp-Source: ABdhPJxFEC3CkChaG4EU7I9shSaaZ9Bs75RICbU5guDdo1QrtsFN8tKMiezyh+Sx4qnsnwMEv8HIgg==
X-Received: by 2002:a02:b610:: with SMTP id h16mr6601647jam.74.1597342854407;
        Thu, 13 Aug 2020 11:20:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2cc5:: with SMTP id j5ls1105057iow.8.gmail; Thu, 13
 Aug 2020 11:20:54 -0700 (PDT)
X-Received: by 2002:a5d:9d8a:: with SMTP id 10mr6211493ion.195.1597342854095;
        Thu, 13 Aug 2020 11:20:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597342854; cv=none;
        d=google.com; s=arc-20160816;
        b=yz0ifm14WQlSd0fOBBTDb/4D6aVzeaNdb1CVJJkh+NbovfvgKUtl35gnJqLX32sm1j
         4wt/jdovmcQ0vqMFNXQqPaXtNDJoSmz3hET/1VmLYfsM2JrdBz5gW61x1YwEDi554KrZ
         uqbEZiqQXYp1JKNOpdGx2ePPSgX9GZLyKOXBNQj/S6lCB8cZa6vGe1AIUtWIY44qv0Hb
         Y77f9J+uRD2gS2PnLDtpdfiYZFENy55/zvKqz2jXFvACs0WcYQjTC71LOuUqFU+Ji9bi
         r+qbtFAiOAPdGlzfAVjBaiFrlZOlSD+OHTZkLQ98/vwyS9TsmanpPnozUwdgUCABifYJ
         zDWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=E5iqdULjt/DcVsvuwsfZp3hpC/Hs1IuMjRMJ6HhZPHA=;
        b=H83+oplouD1dYMOIy0yWSUTp94NaUUJDsUR68mQBAlU9GMFE0x+M0H+Nvv61pCsb0v
         +vdmPEL9wuGKZ9RukBlyvnBBwE8JKeqGH5Tqhm/CortGIp+C54S75aTMpa75mYJBc4Y+
         CazKuFe/XuBxl7jjUfEbmCIZQvZW1OQmsuJN6qFXUuMDVUaWXexqsjtAAYGHxj8o9JB1
         7Hcv4oRhF7jAI8dLH/rFBI0Lgn5CphseRUUsgbEjnWCClTa2pzFrW5Jv839PuByxtUlw
         RpNXooEw2/bVopiyTTvfkgjdxo79108YFPZ/4TM1sAwaH5v04pJnfJ3PiRE6GouCL4uV
         WkBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="bdlYiV/y";
       spf=pass (google.com: domain of srs0=t/ce=bx=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=T/CE=BX=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z7si352208ilm.3.2020.08.13.11.20.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Aug 2020 11:20:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=t/ce=bx=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (unknown [50.45.173.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 40289204EC;
	Thu, 13 Aug 2020 18:20:53 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id D9880352279C; Thu, 13 Aug 2020 11:20:52 -0700 (PDT)
Date: Thu, 13 Aug 2020 11:20:52 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>,
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
Message-ID: <20200813182052.GE4295@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200527135329.1172644-1-arnd@arndb.de>
 <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de>
 <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200813180933.GA532283@rani.riverdale.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="bdlYiV/y";       spf=pass
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

On Thu, Aug 13, 2020 at 02:09:33PM -0400, Arvind Sankar wrote:
> On Thu, Aug 13, 2020 at 10:37:01AM -0700, Paul E. McKenney wrote:
> > On Thu, Aug 13, 2020 at 07:28:57PM +0200, Thomas Gleixner wrote:
> > > Nick Desaulniers <ndesaulniers@google.com> writes:
> > > > On Thu, Aug 6, 2020 at 3:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > > >> > + *
> > > >> > + * Clang sometimes fails to kill the reference to the dummy variable, so
> > > >> > + * provide an actual copy.
> > > >>
> > > >> Can that compiler be fixed instead?
> > > >
> > > > I don't think so. The logic in the compiler whether to emit an
> > > 
> > > Forget that I asked. Heat induced brain damaged.
> > > 
> > > > I'd much rather remove all of __force_order.
> > > 
> > > Right.
> > > 
> > > > Not sure about the comment in arch/x86/include/asm/special_insns.h
> > > > either; smells fishy like a bug with a compiler from a long time ago.
> > > > It looks like it was introduced in:
> > > > commit d3ca901f94b32 ("x86: unify paravirt parts of system.h")
> > > > Lore has this thread:
> > > > https://lore.kernel.org/lkml/4755A809.4050305@qumranet.com/
> > > > Patch 4: https://lore.kernel.org/lkml/11967844071346-git-send-email-gcosta@redhat.com/
> > > > It seems like there was a discussion about %cr8, but no one asked
> > > > "what's going on here with __force_order, is that right?"
> > > 
> > > Correct and the changelog is uselss in this regard.
> > > 
> > > > Quick boot test of the below works for me, though I should probably
> > > > test hosting a virtualized guest since d3ca901f94b32 refers to
> > > > paravirt.  Thoughts?
> > > 
> > > Let me ask (hopefully) useful questions this time:
> > > 
> > >   Is a compiler allowed to reorder two 'asm volatile()'?
> > > 
> > >   Are there compilers (gcc >= 4.9 or other supported ones) which do that?
> > 
> > I would hope that the answer to both of these questions is "no"!
> > 
> > But I freely confess that I have been disappointed before on this sort
> > of thing.  :-/
> > 
> > 							Thanx, Paul
> 
> Ok, I found this, so gcc developers consider re-ordering volatile asm
> wrt each other a bug at least.
> 
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602

Whew!!!  ;-)

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200813182052.GE4295%40paulmck-ThinkPad-P72.
