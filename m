Return-Path: <clang-built-linux+bncBDAMN6NI5EERB6NH7H4QKGQERSCLBGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2A524B6E7
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 12:44:09 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id f14sf218745ljg.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 03:44:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597920249; cv=pass;
        d=google.com; s=arc-20160816;
        b=WDR9kD+9BO7IXhxqsATTA+zkEUppBBn9trQ3BbYiXop5ooW0tYE0rUmizjfIpBwdP4
         ke04O6qyoFIGxOM/jQ5c1hBN4idqSeJM8DaxopQ7gYGlNJfq2BQscgs8Y4s+YdVi+2em
         ea4owDcns1d3fMnkMPtuV0Ox5tOrDB1UJLUMQKHu/LGP8Z3K1v2/bsoraZAiq0ebk8rM
         EcV5JJaALs8w1CD0PYGQIdN+ZHHkywItxpg4d6TYU+DsW9kl92+vhg6AY7btOOcMGsx/
         5xaecuerrhxinxZvr4rp9pybREGOI81+NHcRrFJ1QlGwLz6bbbx/7e12Ewd5gn5zDJxE
         LHXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=zClj18f/iNz3cCORKde5K2laEz6dwtBHGYih3ejgT3c=;
        b=rH4yE44aGCt7SFjTEmGCWFRpDKZM7XSPzfFL8vEpSGaaGgl2LRJUSe7B8RmznGBfCo
         QAvAHuh3gLOtTHBzSkUdkVFpLQeEADjWJmEasqLB8VhqD+sNQsJr+4CxxBSZm1wNNp0Y
         Zu/Y/Oong1IPD9QpBBY8M6I97slJ+BGq1bGf2D0/IS55K3gEmxzVkfuSNOh465qPHUNX
         rw3FM03slBnmpqqK4p9d0YonOA/6q3M+nLBt3X4bRT+n/zngcjCQzFHrwBh7A3A/psiy
         HNnvok9y2nyOqQygV+t7VMkWVF7uc8YIB/bpGs6U60t1APDbctwi8884iocGXdYKWSqK
         gVoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=fJFa3FKK;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zClj18f/iNz3cCORKde5K2laEz6dwtBHGYih3ejgT3c=;
        b=l71UUdtdSTB86t8m4L4dGfrEfCERDSRsy2ig6f3BdOXtuFS6oPNGgNPCdlESEzjWfc
         KoTeqPDIfZcBG9lfYIrajtFsXRmC1cH30E0qAyLammdH8E16BMmGkpVbrPd+ZTDKveIX
         UXv/ejUgoDB0uwbUzeuMXxxsP9Cl1kTA/dG7TD9L4FpjH3ejc9RCRIxsk0ZQUTdCVU8q
         j1VV8YBY0+j/wwqp2U17omi6HoyHOvEYquWNN5XuSYkhMAP8L7r4pdpuhJIx/MBviTM7
         5nSs+3u9xUfqRGuX80gAsr3Ox3bgLHZoVm287H3/U/+6mGe3km+aXU0TToTCt6WU6jSp
         xf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zClj18f/iNz3cCORKde5K2laEz6dwtBHGYih3ejgT3c=;
        b=XCVHegAogDZEzaO13TcNRhaQtGSdP9rPkY+1rrrNbdSzua7WCHP1fvoP4rgdyjyZG6
         pl2cz+mj1xbWDAxvmyAKiI4WEuz0FuZ0anFeW5E/QX/YVK02jaQxzDHqdHPGf4UnmYBU
         VUNR6VLkG9oHzGqXkjeFKvbImV6yRgbICzihmfilovi+07nMvWlW06wMGfoUIVZqbFCn
         xGni7rZ8+S1zWz1kiLsy9L8IKWuxA88zdZzD6YP8a01GxkECRd2CjY8FdG20CdMFBqj4
         H/26hvbavGKS0l8oq7ntSs/aAcmtd1cKzhszvvlJyhLNsaI0WwT5MHITTLjJ7motQ/u6
         2/GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532swMrwoC04rPmHwrzCXCoGizBlyrR8lYsQaWDP9AI9GqNjAtq+
	mKuMAGeN87fmJhrJ8ibU68U=
X-Google-Smtp-Source: ABdhPJwMYZo/aXLobxEehQ2qhtbH8E+h6bqKPLQ/ay2hSoIB6PhwSXz3J2iWNnVjFK2QoRU06pUG6A==
X-Received: by 2002:a2e:920e:: with SMTP id k14mr1344115ljg.37.1597920249259;
        Thu, 20 Aug 2020 03:44:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:300f:: with SMTP id w15ls379427ljw.1.gmail; Thu, 20 Aug
 2020 03:44:08 -0700 (PDT)
X-Received: by 2002:a2e:b554:: with SMTP id a20mr1352999ljn.414.1597920248500;
        Thu, 20 Aug 2020 03:44:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597920248; cv=none;
        d=google.com; s=arc-20160816;
        b=vaI6vTcLzuLG4mf3fuNBRyg0+HwTKsj6FpkgnKr3I8Zuf86w4r9EXuyC6Gd7WkuSjK
         ktP0sGe/i301AdAf8/SCdt1ImzmsD+xv6zwAEBcOf8oxt7Nd430XOIJuwDr3WGKdE4TP
         eVGQSy6i1puJtRoQjbStZFpv1DI2/EabiwCnM+4SqPD9f6KnJW97MgcmNe56HAfuyMnQ
         T+qPNQl02mxfEajRntPVn51tMiUIf/KNJ/gLaneFyIOf/wvIRUIZvfNStYaCTaL+BJtW
         TFvcnsCY3tAZKJxzasOMs6v8K4ov8inXLJp7WSYEK3HYsiDktGKRW27JyPbTaZrwBTaJ
         RDBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=iLWA2FzepFQDF+V/YhX0IJ79bp9VAkXafLwZ2xRN6/g=;
        b=MIGd95EP5LnKLgjUOqFPFzbF6cK89eOmT/txFbkVLV5sAyI9aD8OpX2NIjRk7qycZb
         muq66/vXLy/9Sx+7ESz2/YgRxRIFhoDbwEJ0kvczqjMFT23TkF3lRBMOh2T1JtrniHTA
         GrvIMPgPdxjBkUoj3mhGe4GhDgKOvcNplBgDh01kQbhym+4+gCUZD16W/60u9fWLcyLZ
         gf8OMCI95fyKLsKobn5eSdwmBLsvdBbqWCxayRhO16iagQekHjXl1vB+WKs5RmuHIDEn
         utMovQQxnGFvVXZzzsGCz5Kr9c46YZucRmbQ34KGZrWXvgy+bwWXn+/seaJ8eegJ1eAL
         ywbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=fJFa3FKK;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id a7si40405ljp.2.2020.08.20.03.44.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2020 03:44:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Arvind Sankar <nivedita@alum.mit.edu>, "Paul E. McKenney" <paulmck@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, "maintainer\:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
In-Reply-To: <20200813180933.GA532283@rani.riverdale.lan>
References: <20200527135329.1172644-1-arnd@arndb.de> <878serh1b9.fsf@nanos.tec.linutronix.de> <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com> <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72> <20200813180933.GA532283@rani.riverdale.lan>
Date: Thu, 20 Aug 2020 12:44:06 +0200
Message-ID: <875z9dioll.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=fJFa3FKK;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Thu, Aug 13 2020 at 14:09, Arvind Sankar wrote:
> On Thu, Aug 13, 2020 at 10:37:01AM -0700, Paul E. McKenney wrote:
>> > Let me ask (hopefully) useful questions this time:
>> > 
>> >   Is a compiler allowed to reorder two 'asm volatile()'?
>> > 
>> >   Are there compilers (gcc >= 4.9 or other supported ones) which do that?
>> 
>> I would hope that the answer to both of these questions is "no"!
>> 
>> But I freely confess that I have been disappointed before on this sort
>> of thing.  :-/
>> 
>> 							Thanx, Paul
>
> Ok, I found this, so gcc developers consider re-ordering volatile asm
> wrt each other a bug at least.
>
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602

Yes. It prevents reordering of volatiles, but it does not necessarily
prevent reorder of something like this:

        asm volatile(...);
        foo();
        asm volatile(...);

it might turn that into

        foo();
        asm volatile(...);
        asm volatile(...);

if I understood their discussion correctly. So removing this magic is
not really straight forward.

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/875z9dioll.fsf%40nanos.tec.linutronix.de.
