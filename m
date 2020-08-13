Return-Path: <clang-built-linux+bncBCIO53XE7YHBBYMD234QKGQEJXQTLUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA4B243EAF
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 20:09:39 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id b142sf5012363pfb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 11:09:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597342178; cv=pass;
        d=google.com; s=arc-20160816;
        b=kR+t3RPLNn0TpEUHpgTckIDgOSK4a9liVnPApz34dF2Mpa6gaUmvobEs3Cm6JRgwZF
         Fz8l6YLPNN0yr5Zb8M10Wv7HVjROzvDPR5SG7EwiuKRxQ6TnqLUYyuYnN57tudPbxYQq
         0VOtNRd6yVv2UD5VsmNU49WiRDaTP/D318WBvhhZGoDckZcSqi6unv9ecSGlV9SPOfkQ
         XwDEoEu3L3jegEvdpeL3vcDpdE/vYJjL5lSuDCDlYi1LjEUttnRySPuWBmqUR1TzXDr+
         XFTfGHd4U1cZnt8+hzafLPg8F8Tb9HD+5j4VCqyh8/itEG9GSgXcSIGa97oRmP0rvKFD
         iqyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=f5or4XX1lg6p28cvSN504CimkjNp2vDbn3HZPvYdLO4=;
        b=HIRCua9VpNc/7JpctXTCQ8mEyObvW26GpSHO2OJvy2kXKNI2jUxWHmOCVpZwyRaPXl
         ZVtkB6WTUi8BliADPdh8QZGEAZpEAogakOinKMzej0hkCXdWU6Crs0RPUCqGmdp+FYU7
         jF0CP0J7Ut7cjsSs1Z+aIeM8OfHR2yuUupnneLc4lstWRXQ4luTdCqXdsj511TXzmcYR
         PB5wQoYlghnvDhVcBdOxdkbVhCtwQiR3DwUvCmyiTqco7Be66oLZbM6xySQPrMGmUu7k
         4T6+OmMVdUKSQ4MgJC0yyzu5VIhIA0jqdMjk90rVBAwtzsR23cOEIdGy/2jtBwlksXuh
         EeEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OMl3Qj9/";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f5or4XX1lg6p28cvSN504CimkjNp2vDbn3HZPvYdLO4=;
        b=Lbic77JpwdZcnU6ZPhViB7m4nSQZpJJWYUZyTpB+N1EUQlfES2y78FezZqNIj+yKKH
         LGIkdUoKEnEMVclVAFMePWYvIQtnEBFSZ5YDQWjrQ+IGM5hlD6CW4k1YRIlyEV+bOaH9
         dS7mvyf6gLkSllVkay2y9+hsRn5PCs1NglVqXhLcTBWGknXhW1cuYPFg8IH5GCyGzQh2
         1nLTadDzDOBgWCwd/Ms6JmmtCPOYfAU7v4agTYRe+9ngoBbrwkbpsJPXjEyTcddkbL6u
         QR0ccvHKmpL5tpZnJlRR9htsDi4qgH9ZczTtP6ib+bV+Zl2VIfGAKPmTgbvveKfTxdE3
         xMeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f5or4XX1lg6p28cvSN504CimkjNp2vDbn3HZPvYdLO4=;
        b=rRBfjg111CdexGFN1xQcDcKiHs7Ws55mWVWMOijGUmls0n+EaotACPuB/4cD2nvhxU
         PPi/Yp6Nc/Fmi9hTIAO4X6bCfBH4X2AltLznQYt7GzEJF+Am0sZ5t94td8n0ifNmevLl
         PCf44wszqZGhndmHzSOHRQsTnL+Tb3h0KH492hrJemvSUq5rdAf25O24LDk1nbEIh8bd
         e8YWy2i5lxxua067kNrDheHimJzPo2qIgS1EaJ9/ygnL5xcCF6QgPj0aFWsSk4OUQozg
         VQ3foYmRiTeBHG1OLhbJ7EAGXd9O/jrMDM3wgZPt6sQD7ElSj4HxEjBl7fiP/qMXZ9Kp
         ZGLA==
X-Gm-Message-State: AOAM530/Ii1I+8NfO7FJScw10iZn2kLpSAM0HYp5ddnkzmA2o2WeNshs
	TZJKXbx3OXss/D7YXx8OMwE=
X-Google-Smtp-Source: ABdhPJyrJBl2XE8BQHRRCQhXQDh1VuZSEUNL5tmLfvq75nbR9WoPXDN54wGrKSLpV8BUM8QsX3R3Mw==
X-Received: by 2002:a17:902:aa84:: with SMTP id d4mr4921151plr.208.1597342177911;
        Thu, 13 Aug 2020 11:09:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d04b:: with SMTP id s11ls1820949pgi.1.gmail; Thu, 13 Aug
 2020 11:09:37 -0700 (PDT)
X-Received: by 2002:a62:2c0e:: with SMTP id s14mr5601490pfs.289.1597342177216;
        Thu, 13 Aug 2020 11:09:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597342177; cv=none;
        d=google.com; s=arc-20160816;
        b=PBv6MBXKi9X60YwSP43gwZ3IiovnUvtvD+6LJNC8LMaFAe9AjunEtXL4QqxfEWs5jR
         6Vh7uFlQakg4oAmXBOruxANVYYE73xQkwFc02S+/9NfAV6LTQSA3JNVn2oOgVqx5WyOG
         cRDhJbb2oyYU/o/mnOYzr9mDzv9x998jJzllknuqZqQZqrtn6Mrbrzwz2aU3ZKUqQI7F
         5useeu+iOn/w1cvSt32mwvk972SCrQ45ZQmaaj4ROteWHP+dKni7e+WZiAw1jB/1jL+b
         5sQUnrcRvF4c0N+LDl8ZuqVYZMiEY7booGFGGp0cEYbfsGE9F1vdjeqm9tSHxwqLVxxn
         GGBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=CQ17aXKfX9jTOeTDi07zI7TGLiegJG5JHkGJpsdYnbM=;
        b=o+cfFmvr7+IF2aISK9PXaqGQM+JPrK+sOf+v8gdxqKkuP7jIA4UxJbl+rG9MhWtlq5
         M78gl84g+nImUFIz+NrzkmAOx4UG9vFlfkJirEydVik5nFz3LINXlTxJebsk/PWTDFSE
         N/IUw+CiIgoWtcYYBQCUhcWGGwEuuHgO9TvEbNhqVqAyjtE9rV97rhAXaYiSmIWREw59
         IQFwcfElcfpMVAgZGIyyoa9cOYhLrce8f7fTSSyXuAAfxDR2SViIzQgcdpMEhn7f/Q36
         66n12J4DCBFIdnxO3gLBv/TPCxW3vZMXq466ONZkgH1GLP3U5VrHYJrzRDVw56qgN9Bv
         0bKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OMl3Qj9/";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id y9si498629pgv.0.2020.08.13.11.09.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 11:09:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id w9so5048385qts.6
        for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 11:09:37 -0700 (PDT)
X-Received: by 2002:ac8:6c6:: with SMTP id j6mr6836667qth.129.1597342176242;
        Thu, 13 Aug 2020 11:09:36 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i30sm7832477qte.30.2020.08.13.11.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2020 11:09:35 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 13 Aug 2020 14:09:33 -0400
To: "Paul E. McKenney" <paulmck@kernel.org>
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
Message-ID: <20200813180933.GA532283@rani.riverdale.lan>
References: <20200527135329.1172644-1-arnd@arndb.de>
 <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de>
 <20200813173701.GC4295@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200813173701.GC4295@paulmck-ThinkPad-P72>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="OMl3Qj9/";       spf=pass
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

On Thu, Aug 13, 2020 at 10:37:01AM -0700, Paul E. McKenney wrote:
> On Thu, Aug 13, 2020 at 07:28:57PM +0200, Thomas Gleixner wrote:
> > Nick Desaulniers <ndesaulniers@google.com> writes:
> > > On Thu, Aug 6, 2020 at 3:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > >> > + *
> > >> > + * Clang sometimes fails to kill the reference to the dummy variable, so
> > >> > + * provide an actual copy.
> > >>
> > >> Can that compiler be fixed instead?
> > >
> > > I don't think so. The logic in the compiler whether to emit an
> > 
> > Forget that I asked. Heat induced brain damaged.
> > 
> > > I'd much rather remove all of __force_order.
> > 
> > Right.
> > 
> > > Not sure about the comment in arch/x86/include/asm/special_insns.h
> > > either; smells fishy like a bug with a compiler from a long time ago.
> > > It looks like it was introduced in:
> > > commit d3ca901f94b32 ("x86: unify paravirt parts of system.h")
> > > Lore has this thread:
> > > https://lore.kernel.org/lkml/4755A809.4050305@qumranet.com/
> > > Patch 4: https://lore.kernel.org/lkml/11967844071346-git-send-email-gcosta@redhat.com/
> > > It seems like there was a discussion about %cr8, but no one asked
> > > "what's going on here with __force_order, is that right?"
> > 
> > Correct and the changelog is uselss in this regard.
> > 
> > > Quick boot test of the below works for me, though I should probably
> > > test hosting a virtualized guest since d3ca901f94b32 refers to
> > > paravirt.  Thoughts?
> > 
> > Let me ask (hopefully) useful questions this time:
> > 
> >   Is a compiler allowed to reorder two 'asm volatile()'?
> > 
> >   Are there compilers (gcc >= 4.9 or other supported ones) which do that?
> 
> I would hope that the answer to both of these questions is "no"!
> 
> But I freely confess that I have been disappointed before on this sort
> of thing.  :-/
> 
> 							Thanx, Paul

Ok, I found this, so gcc developers consider re-ordering volatile asm
wrt each other a bug at least.

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200813180933.GA532283%40rani.riverdale.lan.
