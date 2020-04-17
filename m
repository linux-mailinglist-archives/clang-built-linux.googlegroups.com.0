Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ4Q5D2AKGQEWJPQDDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id E17711AE632
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 21:49:24 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id g17sf1928566iln.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 12:49:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587152963; cv=pass;
        d=google.com; s=arc-20160816;
        b=PS/A20BQRiObfT9W3T8pfQtPgPHG1iGYixdm1O3myhAiU4VsGg3vIWmiep70HRusLZ
         ddfduzdy58T38IF1e30dqS1BcQwJp0wT7vvc6fSL72fTjm3OYizUoWVlfRbsUbi3V1j2
         oEzewW9avHBnE/GBHu3cd1eLHAdZMJZnnsR5igk0xWkkDEccDG1eiCuUXAnRqFz/9o5r
         lTWXK64E6E/g9O5r/fNIuMkDSoZ09/6VlS4EgCKq/r9DkqbXfPNPGya0onWccEajUuy9
         MT7jdENZ5bKHS3PsM0VUFArgdWwR1dgaWVx10SS1rYYBd89DOBCqaib/t/ebD8MKkERb
         dAng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0nCqRTENQGhINzkXZ4Ev6B0rCcJWY5AvECEkAFVJoss=;
        b=h/7bN7bkgN6afcP9vByzpfx4lWsMTo7GXhnd3mnUxsiZXw+FlQBSqdRC3ILBfjTPg/
         B0y/X9IZTLP7ABTE1o2FWXB5p7eUcGrz+g8IFrDjHg2iE346VUpCaGzwOJ/NKhDe0DBI
         nYaxW8aBuGdwIRhdVaZ1jOhd+xL9TcKvUpX3hbufTHTd3f63tSwz8LFuZ9AmsW4ioWdW
         Vn+90MES5wB6ZLRWr57bTSv5fa1C8bedF6oDXhBYzG15biV+Wa74kOiBqLBM+EvbKDyX
         ANUTy5jqCflbWyJGDFo0PVP7DjNhpwwm8wcJ6ZqeYNcwUJ5I03CL9rhGJedy81p5g6JA
         YbSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hZedHUrB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nCqRTENQGhINzkXZ4Ev6B0rCcJWY5AvECEkAFVJoss=;
        b=D8YmerhG1lRpouc8ZS5zC2Nr9jMkdmMXveCTm7uZ9a+Sp/wvawftDytIcJeWCu5hyW
         y8E3Zr9CEHwSGs1HDQv1T13LBOLEX3gQWjzNPnPLTgCk25UU6snBkz+hHo8qhM0mouOw
         MW19wPantW4c2L2r6MwYufxUqjBqeROOffCKxtGZlmPu5GDQLPGuCAK6cmxCtptng2si
         v1RYRIbbzOplwoUgjs63gEY8oSXwZtAH9Sauq7StBy+wfoYuBREBjPpSDUnaf8PqUoh7
         FomLO79LTD02uaf9U9cnkQHPfzZBDBf6+MltWCTGt3JSOqDs+eFbOdJRiOYSPxuJd4SJ
         xYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nCqRTENQGhINzkXZ4Ev6B0rCcJWY5AvECEkAFVJoss=;
        b=rNv+KDhGi7ORPRNRYiC1zzhfiQiLwu4kRuSaK1Hv+7tLzH2yRxW67w1pj0zZVUq1yV
         Jsuz/h6qNmcyUM3UXfp0rSeBWoyMDjDn0APGRbxsFYU54xXQMQcNMuKPgTxmZvv9L4t0
         KhLmyAc312Ps6aViiW+ex7uLr4lCo+FpwLvv8YzRnyDss95qvKIm2mUK53x7szaJu6JU
         SMOnc8BQ1tbhc3HmwOutMcVmEmuINCfyaAFKMJ0ZsKSXT85MqwhHlM60XKolY+KIyDgO
         sKI+3ZmBer3XP1AlOW6CiAtmL2a/obCA4EIwnSzVngbMjqkdw3zEM3dJYb77JF2nod26
         MpzA==
X-Gm-Message-State: AGi0PuanbaYdpOzWTScoUSmmmcT4VZRMEtguvYomTy5nkbgaN9D3EdSA
	4aB5yB/h+0Q3Ss7WtZhYe7s=
X-Google-Smtp-Source: APiQypLyJA+QEt6HKIJgkqkqMXym5KcTw+fIVGFUMLgnPmM0Q6XY5Lz5L80RmmqXpHHhmeNNYRQigw==
X-Received: by 2002:a92:3603:: with SMTP id d3mr4828930ila.264.1587152963628;
        Fri, 17 Apr 2020 12:49:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4919:: with SMTP id w25ls1258119ila.10.gmail; Fri, 17
 Apr 2020 12:49:23 -0700 (PDT)
X-Received: by 2002:a92:8c92:: with SMTP id s18mr4705746ill.272.1587152963282;
        Fri, 17 Apr 2020 12:49:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587152963; cv=none;
        d=google.com; s=arc-20160816;
        b=jJz6XopYEcydbDVVZfPR2WVfwOx4FzNXPOV5dFLDPWCvspA1cuMG0zviZSQjoSzFQV
         9FudWzuL4jOA/ubSftoJ33123IYzYMceKKThdrKUKks7rDiigzTL2L3pgvh9m5d+RHA7
         Vyfckh817A3GOGNemYED53FoGIKm3sfQI4aKHSXFqZTBGY+hwh2a/vgClIZkajEjSB9G
         nI90rEl48wXwDhUmWXjn6ROKkrkGX3PZnM8KBFv0XT3KEHJAuTeFZgYzncs+OVTM0pst
         HoJSAQaWbAiHXdoTH8R1WUWxQPAEb1En1F29RMETAR25RQ3D251VDkCiXngBUZMVaspg
         QkuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=InFG+7wmM1ycJvBdbCnWYIaIthHKtuRUOVVdHek9xPQ=;
        b=ZaaQ5e/7Rrv7F/DTMr6hell8RWoyed2kyv67ZbPO1ZGoGjNshhnRiIXXDUnv6Uz55s
         xJztG0Y+YWPtInsnxLrCXNt6cl3ep7TeT6YqY0tkIGReamebZ2A9/EqFdLWhGoDVxFRE
         GbaZlOuxUR+VqcQJBCY4Cxmva+r5hTUedKR3gq3ezjmCXzWn0HZNW2kXwv2y9eIk5b6x
         tebj40RuDqe0WAXhy1ZhbEGflI+UJ5GwYvrzLxcmhUslfYOuK+xauw4HNy5C++wlh1cT
         UvUOBn9kKfQgv42cOjQRUMYB+qurBW9qrQh6WclRKuI1iDQa6ITWoBIJZofQj7BNtFiM
         xU2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hZedHUrB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id t125si2387582iof.4.2020.04.17.12.49.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 12:49:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t4so1323993plq.12
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 12:49:23 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr4959971plp.179.1587152962365;
 Fri, 17 Apr 2020 12:49:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200415074842.GA31016@zn.tnic> <alpine.LSU.2.21.2004151445520.11688@wotan.suse.de>
 <20200415231930.19755bc7@sf> <20200417075739.GA7322@zn.tnic>
 <20200417080726.GS2424@tucnak> <20200417084224.GB7322@zn.tnic>
 <20200417085859.GU2424@tucnak> <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com> <20200417190607.GY2424@tucnak>
In-Reply-To: <20200417190607.GY2424@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Apr 2020 12:49:09 -0700
Message-ID: <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Jakub Jelinek <jakub@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>, Sergei Trofimovich <slyfox@gentoo.org>, Michael Matz <matz@suse.de>, 
	LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hZedHUrB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

Ah seems we do have __attribute__((no_selector))
(https://reviews.llvm.org/D46300,
https://releases.llvm.org/7.0.0/tools/clang/docs/AttributeReference.html#no-stack-protector-clang-no-stack-protector-clang-no-stack-protector)
which differs from GCC attribute name.

I'm still catching up on the thread (and my cat is insistent about
sleeping on my lap while I'm trying to use my laptop), but I like
https://lore.kernel.org/lkml/20200417190607.GY2424@tucnak/T/#m23d197d3a66a6c7d04c5444af4f51d940895b412
if it additionally defined __no_stack_protector for compiler-clang.h.

On Fri, Apr 17, 2020 at 12:06 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Apr 17, 2020 at 11:22:25AM -0700, Nick Desaulniers wrote:
> > > Sorry, I don't quite follow.  The idea is that an empty asm statement
> > > in foo() should prevent foo() from being inlined into bar()?
> >
> > s/inlined/tail called/
>
> Yeah.  The thing is, the caller changes the stack protector guard base
> value, so at the start of the function it saves a different value then
> it compares at the end.  But, the function that it calls at the end
> actually doesn't return, so this isn't a problem.
> If it is tail called though, the stack protector guard checking is done
> before the tail call and it crashes.
> If the called function is marked with noreturn attribute or _Noreturn,
> at least GCC will also not tail call it and all is fine, but not sure
> what LLVM does in that case.

Seems fine? https://godbolt.org/z/VEoEfw
(try commenting out the __attribute__((noreturn)) to observe the tail calls.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug%40mail.gmail.com.
