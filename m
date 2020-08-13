Return-Path: <clang-built-linux+bncBCIO53XE7YHBBZPM2X4QKGQEBE55QYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id C2767243E2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 19:20:38 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id m13sf1838778ual.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 10:20:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597339237; cv=pass;
        d=google.com; s=arc-20160816;
        b=V62A97gdfg5BQvbjNjv8p6ha1HUY3nCXDc2vLj6YLCLMPBkfyneyfw55hCLU75DsyU
         l/o6/PivRbgU695Zq8qRMpa9mouKuWXVOasekiFXoA0+usgj1PjBJcSMR67tcPkhQvUd
         DBkM1Y4KC7nEy9PTt0/hH3BFfS8Y9a0oOVKGxbU3mf4Cf3OFtIT+MAnWbyrLvc7i7M1M
         PPv6ZKmNi1a2jySYD4qCkfU85V3D75dwY5Sj2+yxSLwyL95xn9MEYztrhR25Vcxus/Sj
         c8sv0wVrFlxHMVPzSuaNK2EyH1GKK1gjxHLRsJPHq66bH/3gAqyRl7cKiLMY7LJPDh7Y
         LELA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=asiDhEoCFxZvf24tb8mhc1fpmuqsV0dniJf/48J8rYs=;
        b=QrCNk2hZVZKKXqptSU6egJDz3cZpqxpeSoF7/L1cYPpFsn4UMBWWSpm7OieC9EyyAp
         ex5/xkCDefSlkkERREJRIY0T2FpYjNSwjJ5gfJk6qQ4vYwNfCqDdGo54kzKo5oCw1Ye/
         lpHYxL/D6IYqCRy1/rkIsIL781ckayhUHeM8UTmHQM7DXq37yfbs52y9UH0UiLKKlDqU
         8XmzTF4AcKR9HGQXm6ynelCG3og0fmzL/v3U9uvjjVUtiCR7dsnE1YyPeF7CpLteM84i
         16/hQHvZTbnaabilh9S2t5oA798lUCOpLK+vurjyK482SFFogYrDttUchgY/36hGfIul
         Y3Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y+gd0VU0;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=asiDhEoCFxZvf24tb8mhc1fpmuqsV0dniJf/48J8rYs=;
        b=bAnRY8ATtooiNjH0kDuNcbHrADvUSMozLpTRqce2eHQ2LpmWSpBCObHYYF4gSxtc3U
         Hm5CeCWQlBgo9Q0BMrw0ArWEqtpgHB2b/KfbhYvaLDSaaYIGMMm52V6YT0ZmWtLU2kia
         0JrmUfCkdWVmFpBSkLLId6cSDaDMv2lAQLpWp+XO2hByQuiW1iqu9h4bcsT6AavQZSpe
         yeMRS8Yv0nGcZjUttyo/x0exFbNgoMJHfu8IZDaRQg6mlkgmQvNFlIEJTjlw4gOlb/2l
         84qViyHtfNI6qNH7VaqWiZoUYPsGrBPcNIBu4gjXbZNuv6gD/eJmOc2rHoV6wfyMPMiS
         LAng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=asiDhEoCFxZvf24tb8mhc1fpmuqsV0dniJf/48J8rYs=;
        b=sXOlENvz6NJ/eq1Wv8psT3eN+hLpdHNZpqmwnG5z2urNcfKW/jKm6KKO1hW6Zm0cm9
         dKvb3tV39apiMZaOuChOGL2s1bMjPSMk9V4V4Euj4xi4Isby5Mplzqw1OkRlPfXA1RW3
         GAv2NCyLk/k5J7IkmznmTwmQ9v7jthl9pMSz+xmIu+hrlON2xeNFhqnl+GkkSNJMUHse
         F55nRh7T91wmiTPs9sXsCilUNkph/nR0iR2rBskTiXZpUJtd3+lpWN4jk3jtIOMHP3nV
         JS1JoVqqR4lSM7yJDAS8rrS8aD6VbAvPZNB4+OogsivCDUs47WbT1WSaEMrFPfN2eR5z
         Jfvw==
X-Gm-Message-State: AOAM530qdtv1Iq9djM5Lmo8iYUwyhOcvmOfn8qIxwTW33mUBQ6zEQ3Km
	J2EQ9WxMeyN/aDFGUIfUmN4=
X-Google-Smtp-Source: ABdhPJxQs4UXgr/i0Y+eztjOXZmbwOtMyF74+yKY8bkocRfQtI4+24/7OpfXHaeECGRII34c51LBFA==
X-Received: by 2002:a05:6102:311a:: with SMTP id e26mr4474308vsh.86.1597339237679;
        Thu, 13 Aug 2020 10:20:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:153:: with SMTP id a19ls763062vsr.11.gmail; Thu, 13
 Aug 2020 10:20:37 -0700 (PDT)
X-Received: by 2002:a05:6102:9ca:: with SMTP id g10mr4257701vsi.231.1597339237274;
        Thu, 13 Aug 2020 10:20:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597339237; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9jrb1guWek6BS+z/ldQYG1sZ3KNdRe6N46ZzbHiS/QUofi4zE6GbVcZ/w8ppM/e3x
         qVrmxr9hEN35uuE2gTNKRFU83H/QVhU9R3e9m7jxcrBaU+l5aE+BlePHz6rfmCI9eoGU
         kk0K0srAe7rdE0EnOYtpd9bJiWI52/HJ6B5wfKCdZRF5tPwhxgEYkpf7a1sbNRxWL1WA
         /ySSmOksqZhoAlygx9oIneJn1siAM/m/aLV+IQiPFF9NTEhaWEHd+jaJ/v6Uh+pdB2xy
         UKSwiKL+07wvxT1g09BSIkXj3ZNZOWlom3RAF7mR6ryUtTLgSH+i/t9qOd3IO9wlkfFj
         neXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=Kye36mnZDsF2A6OcubUre0+uzmNqlOm7WRuMdcfkesA=;
        b=hWw5x9vLqaE9WtOfBKgazdYXY9+euuiG6VHG1Ivc/8WSgWJvjG2npoj6jJI3N7g4So
         m7+GkEPsdJcPlExpBOBjxHQIopvE+fiPzQd1JoCw5NZRsQBf+hYyx4SEvtSg+fSRnL9m
         XB/VT4WAdfksHPulpjmulOp4Uf2/s5zjPrruB94JlGaHH05Tgdb4Q+SCx0LEMxSof5ni
         W8zpBaJjTFwe749yoq+sEPHLSBJcLw5BImImKNHXnTcU5HClGTmsVpk3CEvOfg0so30I
         5JXy1pq5+5oalGva6HrJk4zkstKgNs81jVRvp2Q+LrjG3Gebc+LPVCiCv2HFtEetgchq
         iIKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y+gd0VU0;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id s126si410892vkd.1.2020.08.13.10.20.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 10:20:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id cs12so2989140qvb.2
        for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 10:20:37 -0700 (PDT)
X-Received: by 2002:ad4:438f:: with SMTP id s15mr5884726qvr.164.1597339236714;
        Thu, 13 Aug 2020 10:20:36 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id k5sm6197671qke.18.2020.08.13.10.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2020 10:20:36 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 13 Aug 2020 13:20:34 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200813172034.GA500410@rani.riverdale.lan>
References: <20200527135329.1172644-1-arnd@arndb.de>
 <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Y+gd0VU0;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41
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

On Wed, Aug 12, 2020 at 05:12:34PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 6, 2020 at 3:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > Arnd Bergmann <arnd@arndb.de> writes:
> > > When using the clang integrated assembler, we get a reference
> > > to __force_order that should normally get ignored in a few
> > > rare cases:
> > >
> > > ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!
> > >
> > > Add a 'static' definition so any file in which this happens can
> > > have a local copy.
> >
> > That's a horrible hack.
> 
> Agreed.  And static means everyone gets their own copy, rather than
> sharing one memory address.  I guess no one actually writes to it, so
> it doesn't really matter, but __force_order just seems so strange to
> me.
> 
> > And the only reason why it does not trigger -Wunused-variable warnings
> > all over the place is because it's "referenced" in unused inline
> > functions and then optimized out along with the unused inlines.
> >
> > >   * It is not referenced from the code, but GCC < 5 with -fPIE would fail
> > >   * due to an undefined symbol. Define it to make these ancient GCCs
> > >   work.
> >
> > Bah, we really should have moved straight to GCC5 instead of upping it
> > just to 4.9
> >
> > > + *
> > > + * Clang sometimes fails to kill the reference to the dummy variable, so
> > > + * provide an actual copy.
> >
> > Can that compiler be fixed instead?
> 
> I don't think so. The logic in the compiler whether to emit an
> "address is significant" assembler directive is based on whether the
> variable is "used."  The "use" of `__force_order` is as output of all
> of these control register read/write functions' inline asm, even
> though the inline asm doesn't actually write to them.  We'd have to
> peek inside of the inline asm and build "use/def chains" for the
> inline asm, to see that you don't actually use the output variable.
> Best we can do is see it listed as an output to the inline asm
> statement.  And if you reference an `extern` variable, it should be no
> wonder that you can get undefined symbol linkage failures.
> 
> I'd much rather remove all of __force_order.
> 
> >
> > Aside of that is there a reason to make this 'static' thing wrapped in
> > #ifdeffery? A quick check with GCC8.3 just works. But maybe 4.9 gets
> > unhappy. Can't say due to: -ENOANCIENTCOMPILER :)
> 
> >From the comment in arch/x86/boot/compressed/pgtable_64.c, there's a
> hint that maybe gcc < 5 and -pie (CONFIG_RANDOMIZE_BASE?) would fail
> due to undefined symbol, though I'm not sure which symbol the comment
> is referring to.  If it's __force_order, then removing outright likely
> fixes that issue.

Yes, it's __force_order. Compressed kernel is always -fPIE, and gcc <5
and clang will generate mov instructions with GOTPCREL relocations to
load the address of __force_order into a register for use by the inline
asm. gcc-5+ works because it doesn't use GOTPCREL for global variables,
instead relying on the linker inserting copy relocations if necessary.

> 
> Not sure about the comment in arch/x86/include/asm/special_insns.h
> either; smells fishy like a bug with a compiler from a long time ago.
> It looks like it was introduced in:
> commit d3ca901f94b32 ("x86: unify paravirt parts of system.h")
> Lore has this thread:
> https://lore.kernel.org/lkml/4755A809.4050305@qumranet.com/
> Patch 4: https://lore.kernel.org/lkml/11967844071346-git-send-email-gcosta@redhat.com/
> It seems like there was a discussion about %cr8, but no one asked
> "what's going on here with __force_order, is that right?"
> Latest GCC release on December 4 2007 would have been GCC 4.2.2 according to:
> https://gcc.gnu.org/releases.html
> 
> Quick boot test of the below works for me, though I should probably
> test hosting a virtualized guest since d3ca901f94b32 refers to
> paravirt.  Thoughts?

It's unclear if there was a real problem this fixes, but if there was
I'd expect it on native, not paravirt, given it's native that has this
__force_order hack?

gcc's documentation of volatile extended asm includes a caveat.

https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#Volatile

Near the end of 6.47.2.1:
"Note that the compiler can move even volatile asm instructions relative
to other code, including across jump instructions."

and it provides an example of unexpected code motion, with the fix being
adding an artificial dependency to the asm.

So it might do something silly like reversing the order of two
%crn writes, maybe?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200813172034.GA500410%40rani.riverdale.lan.
