Return-Path: <clang-built-linux+bncBDAMN6NI5EERBXVO7T4QKGQEU3E5XQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DC224C93F
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 02:37:51 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id y11sf74842ljm.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 17:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597970270; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWxK+1Xci1IMRkDTFC2wJCLmXhxAGbz5UekDXMvgnIcCCtvFC60e5CkAJvExMf5PDt
         nsCi2J0jb1su6FjtxY1HI0Bl/t0lX1nEokfpQuIehJRnp9HaNWmBo1paUv45UF8WGx3L
         u6LZaDgC/zV7fYe99+YF9rY39qkfsZU56BwPNTpxp743M/S69YPmkXOM6/TYNlNYVHBF
         PNcGdZDsgBGTCI7oO5jI1SdI4LM4LdOuEEOSO9foiXp5atEJoK2X/jGeCpIjwic0SPe7
         ZeDFZBJi2Y6EeOBsd54QuM3expjdnnrWNEu9aGzeSkMxwDFNUEeE9Ef8R8t460N0FIgI
         GSYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=NmHplc/n5ouseHaGhMeA5jVGuhI9Jngf6iRPj/CtE8k=;
        b=NBo+Yxz1mB3sEgvHAiGU6/IqDWIfn5o0/H6r5iNKKw+H3/dsEsBgwC/hlNOksEh7hb
         MOWlokpKMf1kpjyMzyNsAcpqxAj1c8tqo7BRVrgTasdTIYH5OTz6VdthfoMerOjA+dLF
         C5C8ClJuzXOXrxHHZ4M/weWi4Ts80Kb5Q44jm7Hhi+Koh/0ZAWdq78ScpGjgxQNt7KuB
         AjwcI1z1UhUu1K7RK/KWfk2Bh75aRkSuOq3k6MNAIg9xK/RZRhrDQqlLNQmLwuc3ZGYG
         tf+7tiD7rlLZniFnaqJpzlbCtbfKKhi2kn8jMI+MEB8wEdD7lq9r9pmit31UjR3iAbBT
         Hj7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cGFoHPFj;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="t4gBM/DW";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NmHplc/n5ouseHaGhMeA5jVGuhI9Jngf6iRPj/CtE8k=;
        b=f5NNtdx0xX99Z3p0DFPeYDHivQa9+Eq8jeVTuMMYzYfglExo3yDI/R/diamYYO1TaO
         gBLXASSg4gaNbY+9tS7uqpmT3+9EwNfA4mFmMiws6mVFRpkSdxsEsgKPjWeuBMYPL66v
         n04a2osq7NenHjNFaQ+19tBrleOejrAn4HeyGoWhotvetBIYz7mx7gl1CWiIszNWGEOI
         vioe8KkNRCxPfBCQ6U4T8ee6NbaWF58V48CsE3YpjFMx3X9L+CrDFIpTFzc/pcpvb0ub
         63SV9F4E7oHkKCqp40IRnX378qJ1IOCkg/LqOCPnf+m/AHlwEVIoaUWtmie6vhSOoSw/
         Cqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NmHplc/n5ouseHaGhMeA5jVGuhI9Jngf6iRPj/CtE8k=;
        b=KtLdI7Nu6EEkmxRpSnwAfK8Bkv38Uz0GZ5nYHqUBFWzk1ylImOU1keb9FEOmgK45GF
         7r+V5HtWsFkEuUH8DUxK2Lt0G0w14KVwQSn1+n2eYRmJ8zFh+b0LABRwZ8E7LvAFzgve
         VfRrYELhLbBhtkZDQGgw8nMiNHhO2ui2RPVnwgyQXwe1e7NlM6478BZ1SzbZMT5t8y2a
         jMOJYjL2UmQ2YzXNIU2ttvQl8cJYQGvuo37EbWq0E24/fF8oiQyDmyvnmMywP7ubLTf0
         x2MZcRekUJt50k83fqntuOuFjaLuUwps47iL2IPiUE5LkqjsRHd4YCi+joKok0en+Aao
         EXtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314EkiMWREoxiuB0V3cod0eiHftZpplhno1T2izqOJdD4bP7AGR
	p+ny+KPaD4nFinpRnJVOm1k=
X-Google-Smtp-Source: ABdhPJwvnQvGPOBimhGZkMbW44eln22M/EWuFkYlKpK3/b2YwjVsPe1XWVdSqIGox+sLnACn7MmDSw==
X-Received: by 2002:a19:5042:: with SMTP id z2mr150345lfj.171.1597970270731;
        Thu, 20 Aug 2020 17:37:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:60e:: with SMTP id 14ls14461lfg.0.gmail; Thu, 20 Aug
 2020 17:37:50 -0700 (PDT)
X-Received: by 2002:ac2:5ded:: with SMTP id z13mr147830lfq.213.1597970270030;
        Thu, 20 Aug 2020 17:37:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597970270; cv=none;
        d=google.com; s=arc-20160816;
        b=iWDt6mbkwGuKW5toWEFTo84ADOL/QdF+NUO8yYo2P2Hm59b8gQuyDj+UWBXHllczMT
         lvmQC3Jx7zmRV42HoIGs9J/4nFrxD9ALurowQMv4efhJh2rgNyjkMLDBeNEc18tAaYZX
         UeaE77mx/ZMTdBr4RmRdvd0Fs5ALSzy9Vr/7aP+JmBFlolBsalFTd6OKozd0FnUHKNYD
         qg2azpCjvN6xaorYG7wAExtyAC1wBL4vsyXBJguOf+ssfJufHhxl6gr/z8CpX3RISbQo
         78cRlVE/dPWhKsTPmy5T4yapAIuBcWDZDU325O0fDdsPOhUmU/lm8lEMILFp/qmrQViH
         njFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=GRUgKcuRN8v1rgG8LJcASrlT3NFsgPKqmdOa0BdAnwU=;
        b=rQZGNhXT/BX5qZ3Qi0epeKN8823u8Xza9z6la5Ovu02co/EepP/PMijw0MjWbcBSSt
         5abYxHArzuzeVjz1p0j84KOwnEp4yU38ptUPe09J78x3T4rYN0PGR7wQtXsBcXHM9d9A
         tpFIEAcYsqEUtsqWQAuJ3KWmJQkkh2Gmh+CjnkLDY3j33ll/Sj6vO9MR5ZoCwMJPKtkr
         7sqIRIpLl4Sb4FZuLnNMSxPpuMhbXXFUpJOlkC4ECCqK9mB2gjEGF+EHR8LNo1qOP+Yg
         15a7/maPxAUvUDsCdT/fpFaA5qm/fGue5NpD6hWdHXGYyx8ieqAoMJ0h2ru1Z6WwPZ/+
         hGgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cGFoHPFj;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="t4gBM/DW";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id p12si11373ljj.0.2020.08.20.17.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2020 17:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, "Paul E. McKenney" <paulmck@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, "maintainer\:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
In-Reply-To: <20200820130641.GA536306@rani.riverdale.lan>
References: <20200527135329.1172644-1-arnd@arndb.de> <878serh1b9.fsf@nanos.tec.linutronix.de> <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com> <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72> <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de> <20200820130641.GA536306@rani.riverdale.lan>
Date: Fri, 21 Aug 2020 02:37:48 +0200
Message-ID: <87zh6ohm03.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=cGFoHPFj;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="t4gBM/DW";
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Thu, Aug 20 2020 at 09:06, Arvind Sankar wrote:
> I don't think that's an issue, or at least, not one where force_order
> helps.
>
> If the source for foo() is not visible to the compiler, the only reason
> force_order prevents the reordering is because foo() might have
> references to it, but equally foo() might have volatile asm, so the
> reordering isn't possible anyway.
>
> If the source is visible, force_order won't prevent any reordering
> except across references to force_order, but the only references are
> from the volatile asm's which already prevent reordering.
>
> I think force_order can only help with buggy compilers, and for those it
> should really have been an input-output operand -- it wouldn't currently
> do anything to prevent cr writes from being reordered.

Fair enough. Care to provide a patch which has the collected wisdom of
this thread in the changelog?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87zh6ohm03.fsf%40nanos.tec.linutronix.de.
