Return-Path: <clang-built-linux+bncBCIO53XE7YHBBCEHQ75AKGQE5L4ELII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 297DC24EAAD
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 03:16:57 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id j8sf3871005qvu.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 18:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598145416; cv=pass;
        d=google.com; s=arc-20160816;
        b=kActMFLFZ7m9NV286H25HLUkla+CftD8MsmkTRuX9g50uLZayRf9pxbIS0VpRp4y50
         5LdxysdCKLaPWn8pLN6Ho2aaAvyKyGjLj0efcYAa35hPxJi5lVXJaunb7LlxbNXaI9WA
         RYZWLca0fvQ7n0w7X4w77A7sZ5uN0jOrTf0yneXEpzzvSCzRca8iEym3yiLf2lh6wxTL
         tkGdIKFxt4AwN2UUAtpOC23xFCxRksJOdWAYup4kJ/nNxPISKYDGsuD4dz5BcI08RYuW
         jExVU+Rum+q23EkvrDpPuT/uS+7DHC+Sh9HfnTbjdptAuyGF39PxYCON4YVqQSu/bcLJ
         7SrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=kKXkrOVdUXfIf6mDbkJ2pC8YvB4R9TD5QWwXXOjOG+8=;
        b=nz46vtLRT10snKhRHVDh9hMeSD+A51atqvBefhbYf/Z4FEDmGppvEe0phtFRADxKIh
         zEXf9PNgJ1KKUP1gSJjf/yZVQK5n/rXVCadgPDka+v6kIWpmn5M9L92LR+oaaudTXrkJ
         CXCHWyMbbWJkcPI9FvxF/UbsHX7glpYXTSSU3WGMQgKFJ4Hj74AZkK7kAwEX6r5w46Gk
         OvlKTIWznLji/Iy+XjvmwpS2bZ/UmqMcZ6KM5+P2bewNrtYEvNvbwD238HOs3fWoLJFS
         6cwSsxUkGuHoH6cXqISdgV9f4FbcsOVkSdL17/TTlmJ7+G1T4t3DQBT72xzec8ZvKvFB
         W5eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZsPMZ5su;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kKXkrOVdUXfIf6mDbkJ2pC8YvB4R9TD5QWwXXOjOG+8=;
        b=nW46EbmKr1bKanxb6ABaPfhe2EoOenDmAlM+rRy/+xmphVN9BMADIE5WqswnGzgUc+
         MfLHWGtMeWk1CrzCQqJr/hGaaeHOPSh8KrCGdRJJVwScG6ibc78w8WtVkCE0STaY6ODC
         ueKzif9c79YxhEVj1nIk9gk6VUee1deLJF+9r22lUjSaJ8dP7cBjjFKOHmnFusCADEAE
         pfufIEegqiVu1cJyfG0QBuPTIACJ8QDPNw0pz6+h7Jv8qkUgOsmuKz1QthKzrd3h5jZu
         dFkkJ/nfrY07JvI1l+ztsRxXyxCtbFa5kxLwd//aH/s4vCE3/6zOuICG7NwgdW2wdVSk
         2JBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kKXkrOVdUXfIf6mDbkJ2pC8YvB4R9TD5QWwXXOjOG+8=;
        b=dQF8A03eNqaUUsys1/AEJV1vhKk5hy8lnejGEl5j0b/aalXtWwk8c8X/JwkON4yhIK
         Teu1o/klOVeUxewURZkL7PQkExlRwEje0P4XaZLin/OXOvAyFs3FyXCfTTjisimanp5K
         pFZmq9FiitLwZ0UKx2wn9lcDMZi7uigjtxjTqN5x4x3PoPlWchqOtat40jLfO5KYs8oi
         65bKe9cu9mdvdwzMB9/siRLTxtYtG2SfVhyu5bKIhYfIOhzJfb5OMSvjjOFIN8Fom/Oi
         RuSwEJ2Bvg6aZ0clH3G9jaubsREiPlNYPmDPw1tn2sjsnGAy900oOK1+bMFW2ENFqdaQ
         XSAw==
X-Gm-Message-State: AOAM531zTlOGvXhBbcqW1X0niCg9nAez62si8J5djRVHdrT9PQcXyrz1
	bXPNXEyR941db8jG3sZxtsc=
X-Google-Smtp-Source: ABdhPJzjb/lmGWde4jZUBXuJa8/PJ4azwHPMbOflzZbXSSpaG0e1YVizlu6GIFHC07BKJKaPa/bgew==
X-Received: by 2002:a05:620a:22b9:: with SMTP id p25mr3327750qkh.260.1598145416137;
        Sat, 22 Aug 2020 18:16:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:34dd:: with SMTP id x29ls930713qtb.6.gmail; Sat, 22 Aug
 2020 18:16:55 -0700 (PDT)
X-Received: by 2002:aed:3ead:: with SMTP id n42mr9065721qtf.5.1598145415765;
        Sat, 22 Aug 2020 18:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598145415; cv=none;
        d=google.com; s=arc-20160816;
        b=E7YdJ2Ryb6w989ue4OQY81tWFvqfsA0y7yvOElyiE+Whqj/wVMsb3KLFP3p8eUcK/a
         bRlGJPBtPRJEgUZy2D6KUNA44RX1FtaHm3/IwPwZlAE+Cp4H9GFRry3i6tZzVU9H77I/
         oSXLegTI7Cj9nzu50eW7KOw8UzcU8LLdrTeHkv0TQLhOGnYTuD26y40JNhN0236TmKSf
         T/10qOAVB/xLm41gcvFaBXLYTvkfq5RrweBVngkE0allT+kT//nBdihegodPEJ46IQgb
         iyocieHSZuvBjb3zwD9sn/g4MSP2PYIdNtmggKnVCa6I9i7n8WC23cWY9hMFyVpcNHpB
         yn2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=KMZwOnPr/kgr8gJIALudEGJEnhBEYV4zfZwOjTzah9Q=;
        b=I5RrKdhfchuF7Jkvlld+8JtVN25+4CKd0WwJg+j8AxJHbGxnkIB4FRfKa/XRLcWH57
         A9fJ8j/n47FbVhvfMXuo7MR1il3aU+NTF7NCvcMyxlsQ7b2TI5ZgYUXJyTFM9jpfln2P
         p2VMJvYIyxMcPZ+39LLu4qG6Aa8uwZAI0Vwt8q/t4tdb5BV/TnkukDzizTLD04hco9e1
         1c38cxJo1IR4JfvpUfh7C95Fpx5K76DlLr1S75RgKbiA3P/htl1dyvWFiOBYIIEt1dMV
         h9mDOENQj9e8+Stlthqy/ZXUlVPOUcuOyQMTWfsCR5LduBHu8mhsgZGy5FCtsLkeVV7l
         E+3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZsPMZ5su;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id f38si351922qte.4.2020.08.22.18.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 18:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id dd12so2315889qvb.0
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 18:16:55 -0700 (PDT)
X-Received: by 2002:a0c:f507:: with SMTP id j7mr8530731qvm.82.1598145415396;
        Sat, 22 Aug 2020 18:16:55 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z197sm5958411qkb.66.2020.08.22.18.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Aug 2020 18:16:54 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Aug 2020 21:16:52 -0400
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
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
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200823011652.GA1910689@rani.riverdale.lan>
References: <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de>
 <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org>
 <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
 <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
 <CAHk-=whaVW4FQjdwaicLFE4kiqr18rk6V50CuU-ziUPyRFjHrg@mail.gmail.com>
 <20200822231055.GA1871205@rani.riverdale.lan>
 <CAHk-=whEb2xVU7uGOFwLxPgX-U2asMu1bJQA8QUEZPrL7zWwQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whEb2xVU7uGOFwLxPgX-U2asMu1bJQA8QUEZPrL7zWwQQ@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZsPMZ5su;       spf=pass
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

On Sat, Aug 22, 2020 at 05:10:21PM -0700, Linus Torvalds wrote:
> On Sat, Aug 22, 2020 at 4:11 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > Actually, is a memory clobber required for correctness? Memory accesses
> > probably shouldn't be reordered across a CRn write. Is asm volatile
> > enough to stop that or do you need a memory clobber?
> 
> You do need a memory clobber if you really care about ordering wrt
> normal memory references.
> 
> That said, I'm not convinced we do care here. Normal memory accesses
> (as seen by the compiler) should be entirely immune to any changes we
> do wrt CRx registers.
> 
> Because code that really fundamentally changes kernel mappings or
> access rules is already written in low-level assembler (eg the entry
> routines or bootup).
> 
> Anything that relies on the more subtle changes (ie user space
> accesses etc) should already be ordered by other things - usually by
> the fact that they are also "asm volatile".
> 
> But hey, maybe somebody can come up with an exception to that.
> 
>                 Linus

I'm sure in practice it can't happen, as any memory accesses happening
immediately around write_cr3() are probably mapped the same in both
pagetables anyway, but eg cleanup_trampoline() in
arch/x86/boot/compressed/pgtable_64.c:

	memcpy(pgtable, trampoline_pgtable, PAGE_SIZE);
	native_write_cr3((unsigned long)pgtable);

There'll probably be trouble if the compiler were to reverse the order
here.

We could actually make write_crn() use memory clobber, and read_crn()
use "m"(*(int *)0x1000) as an input operand. A bit hacky, but no global
variable needed. And maybe read_crn() doesn't even have to be volatile.

Also, if we look at the rdmsr/wrmsr pair, there's no force_order
equivalent AFAICT. wrmsr has a memory clobber, but the asm volatile-ness
is the only thing enforcing read/write ordering.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200823011652.GA1910689%40rani.riverdale.lan.
