Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5NLQH5AKGQEXSV6QGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D072824E3D1
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:17:10 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id 2sf2459861ill.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:17:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598051830; cv=pass;
        d=google.com; s=arc-20160816;
        b=ziVKWyzO26ukkiiA1XWu6lN3X9o2GSs8ypkB3ssqRIpR+mdI3eSDFj7B82UrXY9/lX
         SqTqomEXE10PjQFvANTltl0ziCeAAxLKtDVZeztcsBe7lXIkKwwOl+uO7HbIhmht22c7
         Qu12bJC5QMmv4+fUKA7maHsQ+hI4ey+xaxiChecUkpAfzvDHgmkZOZ6+9i27e8NQm3Th
         UpDCTrZgxXFUwXsMSjbJvprqpRnR/dk/1R1GHY9Cl/MX91u9F0NYBlqGaNDpe+hIu477
         w6TAEaNY8VquczLraIZ2LVHrGtwSq2jWakhaRkS1A2SXEtBG/SeXzW0LuTcnUtMn9KZs
         GVnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lcoVnNJo3gizLUmmDPNs4dcKqv6w97eZxJaLse7lrbk=;
        b=fDvMy3QRTRNduNgsxhoF8HUjl6MLH8qagFSoYsqT5fgLnqmAbV6pyReT6qTz3a65te
         reLQaApmhOmKnWBxMGC9LVITqpE5dmNTqrx2YRogEoBuivRSX0D68BHFwyW2k93TgXBh
         OUArw9wPbwIav7raQn9tsSIdk4PvLPJvKZdOrsRG0raBzil6LSOFdGE74yuRKEgytPNE
         UU0sbpTNqBjHpPWqImahgGgfxvbSAlNaYoxDByhswLznhB3zb4JOaHh6ilVYfhx5gPy/
         uWZnIxkIfBuVHH7oZrGmWrh88bWG48MO7PKFuUjmTvN8ONf/qYHnlUDS0xml+qQtHUzJ
         Mx5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a0uDTwrK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lcoVnNJo3gizLUmmDPNs4dcKqv6w97eZxJaLse7lrbk=;
        b=cDfJiahhH615Qg0EIZeGdSYH9KB/AmD61uf+RjFFKrjE/6tPs1G0o34fktXWWKklZP
         mUbTQEDsp5dzTTag3bKdZocC1qn67wrfAhK8JbQyngCnsfYUS7idqEHjGI39xbaRirwt
         TP2W4tgd183Kl5y8VbHqh+VqU33HEzTBE/IwJVoDsxDbxeHk1OuiKMluJEplcrDDOqej
         wGwUdcBF69yPWPef4DaUOzLqZZ/KxKs2Mv6ML5kBX9AcRU0RAsrMYRDgWxrZ4iKwSG/S
         XVZyrPmEd8Cme3roZdrI7yaQ2M6oUBA7nJJwMYUNoM6EammN+lfoIvmfTPhzpPLhMUbG
         yjbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lcoVnNJo3gizLUmmDPNs4dcKqv6w97eZxJaLse7lrbk=;
        b=HZznbs1H9mM5Kp2Vpn23GOs5r4SyU9GyUArwhhngDOC4+ak1/yK/2z5DPrKtnvtoEq
         6qdNGNlxBnZPHkwrLj4LIFbCJ58M+xObTYXPRIVSY8CnCGu89592x0WKmyEUpDr/5atK
         Nt2eDGluCjJXi3f07WLMxVL1fzmB7rfYK8zoFEYXYT/NzExupFGwNzCvK1XF2XO3EmaZ
         2c/PoYMHYXj27Zuy9C6QiqFiRILU6L7X2Luz0GdgGZZHpCuOayJzxVV5IlJepi4EUYQl
         BM5OzmuRTQiT7559Z91dnQ5mDhencTvMtcN+ZznY6U2v0zK/MMWgsrNhoulB9KSN0hY0
         cR7A==
X-Gm-Message-State: AOAM530mBFWVljIyosNMXzb8+icsnm8FX9z2VgJqbV8gr0tmogFlkAvw
	/k3RDN0WZu3JS/uRQPZcJmw=
X-Google-Smtp-Source: ABdhPJwf6yp47dImGtqGVJ9vJsLJNQEAGArcC2u54nTJvYjX23XI7pysk5ktUo6yu4TM2BKOOmcXEw==
X-Received: by 2002:a5d:9a86:: with SMTP id c6mr4213878iom.27.1598051829810;
        Fri, 21 Aug 2020 16:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a305:: with SMTP id a5ls31225ili.5.gmail; Fri, 21 Aug
 2020 16:17:09 -0700 (PDT)
X-Received: by 2002:a05:6e02:f4e:: with SMTP id y14mr4457971ilj.255.1598051829286;
        Fri, 21 Aug 2020 16:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598051829; cv=none;
        d=google.com; s=arc-20160816;
        b=gjN6wBLThbFbvB630mw5/1Rxn879YCHvFpH3MLfp6pALrt9JYvAfgGimkohCBSv32/
         L2W0/Ier3d0pLe/xtVVUG7ssSDIA/84gSDzxwAH5a56Jz5bN2mO8/M+94Mbmqb1f5Wkg
         960Q2wazjmwqMNqUImsMQdxExB4bzM/9JPFe5j2CF8baeRnuQomducCexrtLY0aYyxPp
         GnM9LnZL+be1kPxd/Z3IQ0xa8M9iDigURQmN8LAwFccgpbtkQAYdTDVyFneenpSapeyI
         jlsC5XltkA+GCvSIlYnqnqvzFDKd+As4Yz/tWEIsXbYVYcnIjvr4FOGgfAXVHSnBfCKk
         qU4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8fcxk4S/SS9+6U/sU5xiUTNNUcgHge8dj9UT33Hlegs=;
        b=dvcCn/04IrqEJpj+i3B4w1mGZudpJcVlY4PCJtvMGY0gS2qvU+g9LwXZaPam3Idpam
         gkWYGZM7sIo2Bjh2t7lU22GFPadMBRBZWNDE7jN0D7rk7Pt6sAS2bG43SEVmlwg+ZWmh
         +s8RqgxFZKriRg2YtBkYLsm+8vMx+HGu5mCwoqkQIvdajKiIdKWDucxqmGK7M9VcoNGO
         ThyiQYynC3qNFUk1PRnZfDKRDZ1eAlqv+N5mcW4WXWI8x59bUY/ZAceSAWI0QcQHXlCi
         EMWLMK1dKmV7Dh/Aig/jEIFwGinDldCFM+nM+v+3je1FT4AuwnUJggbXtI5XBkJNS3HC
         OhOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a0uDTwrK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id j127si152201iof.4.2020.08.21.16.17.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 16:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id n3so1337038pjq.1
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 16:17:09 -0700 (PDT)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr4283278pjp.32.1598051828324;
 Fri, 21 Aug 2020 16:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan>
In-Reply-To: <20200821230435.GA56974@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 16:16:56 -0700
Message-ID: <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: multipart/mixed; boundary="0000000000008fd34e05ad6b6f20"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a0uDTwrK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--0000000000008fd34e05ad6b6f20
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 21, 2020 at 4:04 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Fri, Aug 21, 2020 at 02:37:48AM +0200, Thomas Gleixner wrote:
> > On Thu, Aug 20 2020 at 09:06, Arvind Sankar wrote:
> > > I don't think that's an issue, or at least, not one where force_order
> > > helps.
> > >
> > > If the source for foo() is not visible to the compiler, the only reason
> > > force_order prevents the reordering is because foo() might have
> > > references to it, but equally foo() might have volatile asm, so the
> > > reordering isn't possible anyway.
> > >
> > > If the source is visible, force_order won't prevent any reordering
> > > except across references to force_order, but the only references are
> > > from the volatile asm's which already prevent reordering.
> > >
> > > I think force_order can only help with buggy compilers, and for those it
> > > should really have been an input-output operand -- it wouldn't currently
> > > do anything to prevent cr writes from being reordered.

I agree 100%.  From the link to GCC docs, the code in question doesn't
even follow the pattern from the doc from informing the compiler of
any dependency, it just looks like !@#$.

> >
> > Fair enough. Care to provide a patch which has the collected wisdom of
> > this thread in the changelog?
> >
> > Thanks,
> >
> >         tglx
>
> The gcc bug I linked to earlier is only fixed in gcc-6 onwards. Is that

(based on https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602#c14)

> good enough to remove force_order? I can test gcc-4.9 and gcc-5 to check
> if it would currently have any impact.

I think checking the disassemblies with a pre-gcc-6 would be good
enough then; that bug isn't specific to this particular case.

> CBL guys, can you confirm that clang also will not reorder volatile asm?

Full disassemblies of vmlinux pre vs post __force_order removal are
the same.  That's pretty good actually; I was worried for a code base
of this size whether two compiles would produce the exact same
disassemblies; I know the version strings are timestamped, for
instance, but I didn't compare data, just .text.  I should triple
check i386, and some of the ko's that use modified functions.  I'd be
happy to help provide a tested by tag for numerous configurations with
Clang.

Attaching the diff I was testing, feel free to add a commit message.
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoB%2BfT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA%40mail.gmail.com.

--0000000000008fd34e05ad6b6f20
Content-Type: application/octet-stream; name="force_order.patch"
Content-Disposition: attachment; filename="force_order.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ke4uosxj0>
X-Attachment-Id: f_ke4uosxj0

ZGlmZiAtLWdpdCBhL2FyY2gveDg2L2Jvb3QvY29tcHJlc3NlZC9wZ3RhYmxlXzY0LmMgYi9hcmNo
L3g4Ni9ib290L2NvbXByZXNzZWQvcGd0YWJsZV82NC5jCmluZGV4IGM4ODYyNjk2YTQ3Yi4uN2Qw
Mzk0ZjRlYmY5IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9ib290L2NvbXByZXNzZWQvcGd0YWJsZV82
NC5jCisrKyBiL2FyY2gveDg2L2Jvb3QvY29tcHJlc3NlZC9wZ3RhYmxlXzY0LmMKQEAgLTUsMTUg
KzUsNiBAQAogI2luY2x1ZGUgInBndGFibGUuaCIKICNpbmNsdWRlICIuLi9zdHJpbmcuaCIKIAot
LyoKLSAqIF9fZm9yY2Vfb3JkZXIgaXMgdXNlZCBieSBzcGVjaWFsX2luc25zLmggYXNtIGNvZGUg
dG8gZm9yY2UgaW5zdHJ1Y3Rpb24KLSAqIHNlcmlhbGl6YXRpb24uCi0gKgotICogSXQgaXMgbm90
IHJlZmVyZW5jZWQgZnJvbSB0aGUgY29kZSwgYnV0IEdDQyA8IDUgd2l0aCAtZlBJRSB3b3VsZCBm
YWlsCi0gKiBkdWUgdG8gYW4gdW5kZWZpbmVkIHN5bWJvbC4gRGVmaW5lIGl0IHRvIG1ha2UgdGhl
c2UgYW5jaWVudCBHQ0NzIHdvcmsuCi0gKi8KLXVuc2lnbmVkIGxvbmcgX19mb3JjZV9vcmRlcjsK
LQogI2RlZmluZSBCSU9TX1NUQVJUX01JTgkJMHgyMDAwMFUJLyogMTI4SywgbGVzcyB0aGFuIHRo
aXMgaXMgaW5zYW5lICovCiAjZGVmaW5lIEJJT1NfU1RBUlRfTUFYCQkweDlmMDAwVQkvKiA2NDBL
LCBhYnNvbHV0ZSBtYXhpbXVtICovCiAKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2luY2x1ZGUvYXNt
L3NwZWNpYWxfaW5zbnMuaCBiL2FyY2gveDg2L2luY2x1ZGUvYXNtL3NwZWNpYWxfaW5zbnMuaApp
bmRleCA1OWEzZTEzMjA0YzMuLmQyZTBkNTNiMGY2OSAxMDA2NDQKLS0tIGEvYXJjaC94ODYvaW5j
bHVkZS9hc20vc3BlY2lhbF9pbnNucy5oCisrKyBiL2FyY2gveDg2L2luY2x1ZGUvYXNtL3NwZWNp
YWxfaW5zbnMuaApAQCAtMTAsNDYgKzEwLDM3IEBACiAjaW5jbHVkZSA8bGludXgvaXJxZmxhZ3Mu
aD4KICNpbmNsdWRlIDxsaW51eC9qdW1wX2xhYmVsLmg+CiAKLS8qCi0gKiBWb2xhdGlsZSBpc24n
dCBlbm91Z2ggdG8gcHJldmVudCB0aGUgY29tcGlsZXIgZnJvbSByZW9yZGVyaW5nIHRoZQotICog
cmVhZC93cml0ZSBmdW5jdGlvbnMgZm9yIHRoZSBjb250cm9sIHJlZ2lzdGVycyBhbmQgbWVzc2lu
ZyBldmVyeXRoaW5nIHVwLgotICogQSBtZW1vcnkgY2xvYmJlciB3b3VsZCBzb2x2ZSB0aGUgcHJv
YmxlbSwgYnV0IHdvdWxkIHByZXZlbnQgcmVvcmRlcmluZyBvZgotICogYWxsIGxvYWRzIHN0b3Jl
cyBhcm91bmQgaXQsIHdoaWNoIGNhbiBodXJ0IHBlcmZvcm1hbmNlLiBTb2x1dGlvbiBpcyB0bwot
ICogdXNlIGEgdmFyaWFibGUgYW5kIG1pbWljIHJlYWRzIGFuZCB3cml0ZXMgdG8gaXQgdG8gZW5m
b3JjZSBzZXJpYWxpemF0aW9uCi0gKi8KLWV4dGVybiB1bnNpZ25lZCBsb25nIF9fZm9yY2Vfb3Jk
ZXI7Ci0KIHZvaWQgbmF0aXZlX3dyaXRlX2NyMCh1bnNpZ25lZCBsb25nIHZhbCk7CiAKIHN0YXRp
YyBpbmxpbmUgdW5zaWduZWQgbG9uZyBuYXRpdmVfcmVhZF9jcjAodm9pZCkKIHsKIAl1bnNpZ25l
ZCBsb25nIHZhbDsKLQlhc20gdm9sYXRpbGUoIm1vdiAlJWNyMCwlMFxuXHQiIDogIj1yIiAodmFs
KSwgIj1tIiAoX19mb3JjZV9vcmRlcikpOworCWFzbSB2b2xhdGlsZSgibW92ICUlY3IwLCUwXG5c
dCIgOiAiPXIiICh2YWwpKTsKIAlyZXR1cm4gdmFsOwogfQogCiBzdGF0aWMgX19hbHdheXNfaW5s
aW5lIHVuc2lnbmVkIGxvbmcgbmF0aXZlX3JlYWRfY3IyKHZvaWQpCiB7CiAJdW5zaWduZWQgbG9u
ZyB2YWw7Ci0JYXNtIHZvbGF0aWxlKCJtb3YgJSVjcjIsJTBcblx0IiA6ICI9ciIgKHZhbCksICI9
bSIgKF9fZm9yY2Vfb3JkZXIpKTsKKwlhc20gdm9sYXRpbGUoIm1vdiAlJWNyMiwlMFxuXHQiIDog
Ij1yIiAodmFsKSk7CiAJcmV0dXJuIHZhbDsKIH0KIAogc3RhdGljIF9fYWx3YXlzX2lubGluZSB2
b2lkIG5hdGl2ZV93cml0ZV9jcjIodW5zaWduZWQgbG9uZyB2YWwpCiB7Ci0JYXNtIHZvbGF0aWxl
KCJtb3YgJTAsJSVjcjIiOiA6ICJyIiAodmFsKSwgIm0iIChfX2ZvcmNlX29yZGVyKSk7CisJYXNt
IHZvbGF0aWxlKCJtb3YgJTAsJSVjcjIiOiA6ICJyIiAodmFsKSk7CiB9CiAKIHN0YXRpYyBpbmxp
bmUgdW5zaWduZWQgbG9uZyBfX25hdGl2ZV9yZWFkX2NyMyh2b2lkKQogewogCXVuc2lnbmVkIGxv
bmcgdmFsOwotCWFzbSB2b2xhdGlsZSgibW92ICUlY3IzLCUwXG5cdCIgOiAiPXIiICh2YWwpLCAi
PW0iIChfX2ZvcmNlX29yZGVyKSk7CisJYXNtIHZvbGF0aWxlKCJtb3YgJSVjcjMsJTBcblx0IiA6
ICI9ciIgKHZhbCkpOwogCXJldHVybiB2YWw7CiB9CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBuYXRp
dmVfd3JpdGVfY3IzKHVuc2lnbmVkIGxvbmcgdmFsKQogewotCWFzbSB2b2xhdGlsZSgibW92ICUw
LCUlY3IzIjogOiAiciIgKHZhbCksICJtIiAoX19mb3JjZV9vcmRlcikpOworCWFzbSB2b2xhdGls
ZSgibW92ICUwLCUlY3IzIjogOiAiciIgKHZhbCkpOwogfQogCiBzdGF0aWMgaW5saW5lIHVuc2ln
bmVkIGxvbmcgbmF0aXZlX3JlYWRfY3I0KHZvaWQpCkBAIC02NCwxMCArNTUsMTAgQEAgc3RhdGlj
IGlubGluZSB1bnNpZ25lZCBsb25nIG5hdGl2ZV9yZWFkX2NyNCh2b2lkKQogCWFzbSB2b2xhdGls
ZSgiMTogbW92ICUlY3I0LCAlMFxuIgogCQkgICAgICIyOlxuIgogCQkgICAgIF9BU01fRVhUQUJM
RSgxYiwgMmIpCi0JCSAgICAgOiAiPXIiICh2YWwpLCAiPW0iIChfX2ZvcmNlX29yZGVyKSA6ICIw
IiAoMCkpOworCQkgICAgIDogIj1yIiAodmFsKSA6ICIwIiAoMCkpOwogI2Vsc2UKIAkvKiBDUjQg
YWx3YXlzIGV4aXN0cyBvbiB4ODZfNjQuICovCi0JYXNtIHZvbGF0aWxlKCJtb3YgJSVjcjQsJTBc
blx0IiA6ICI9ciIgKHZhbCksICI9bSIgKF9fZm9yY2Vfb3JkZXIpKTsKKwlhc20gdm9sYXRpbGUo
Im1vdiAlJWNyNCwlMFxuXHQiIDogIj1yIiAodmFsKSk7CiAjZW5kaWYKIAlyZXR1cm4gdmFsOwog
fQpkaWZmIC0tZ2l0IGEvYXJjaC94ODYva2VybmVsL2NwdS9jb21tb24uYyBiL2FyY2gveDg2L2tl
cm5lbC9jcHUvY29tbW9uLmMKaW5kZXggYzVkNmYxN2Q5YjlkLi5kYzYyYWVhOGM5ZTEgMTAwNjQ0
Ci0tLSBhL2FyY2gveDg2L2tlcm5lbC9jcHUvY29tbW9uLmMKKysrIGIvYXJjaC94ODYva2VybmVs
L2NwdS9jb21tb24uYwpAQCAtMzU5LDcgKzM1OSw3IEBAIHZvaWQgbmF0aXZlX3dyaXRlX2NyMCh1
bnNpZ25lZCBsb25nIHZhbCkKIAl1bnNpZ25lZCBsb25nIGJpdHNfbWlzc2luZyA9IDA7CiAKIHNl
dF9yZWdpc3RlcjoKLQlhc20gdm9sYXRpbGUoIm1vdiAlMCwlJWNyMCI6ICIrciIgKHZhbCksICIr
bSIgKF9fZm9yY2Vfb3JkZXIpKTsKKwlhc20gdm9sYXRpbGUoIm1vdiAlMCwlJWNyMCI6ICIrciIg
KHZhbCkpOwogCiAJaWYgKHN0YXRpY19icmFuY2hfbGlrZWx5KCZjcl9waW5uaW5nKSkgewogCQlp
ZiAodW5saWtlbHkoKHZhbCAmIFg4Nl9DUjBfV1ApICE9IFg4Nl9DUjBfV1ApKSB7Cg==
--0000000000008fd34e05ad6b6f20--
