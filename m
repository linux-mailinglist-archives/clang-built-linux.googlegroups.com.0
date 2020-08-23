Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBBXLQ35AKGQEKXSFE7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6B824EA8A
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 02:17:11 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id u144sf1197316wmu.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 17:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598141831; cv=pass;
        d=google.com; s=arc-20160816;
        b=r+iG092hM+GWC6bUq6FH3vLrjfrkka0wwzROdQbXr+f7H1UFUF4GDKs0GolztQGNaY
         gxFklBnhjn6q3B8gxMlx+QL/omaa7xidpai04Gd40l3vuvf6l9c4UueFiOpT37V2jboR
         pjCpDIxzd+aQEr1KrD5BU2OhlOKModpH5vA1YLOqaq8QUY+lq8W35yjWGhmsPmE6/oJf
         JPR24YDdG3Zc4gCvpuYX1E3iN5bmp46pBCBdJZwru2O0WY0dwC7hUALXTlH3uIMqWzlo
         ARiBPSYHKiGWpRu7oU1sYq66XSpTW+T0cnmLlRsVrMBeVL8OsPL1eK7loBpQU7iegnaX
         v5aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PmtGz2dswHNqcXk+2XenfJ7xs9rwK7cde6Z31mS5btw=;
        b=wjEabBbPFK7BOyBJkQDyRSb/NsYM88vjGT8/mR6sdUATRG3NEDkgprsh1GYrXpEMRM
         sgv+K/uXVRk2m7iNIzJe6sp00/B+d1hPJkZDPOlkpbwRkAmiTiKnebM/OLrRNACMjYyi
         QM86jhxFDTBJ6JA63yKDru/imvLshUypTxXWOLfUBrlE4LJIWGLezsMDBSOhDtc5/Ack
         U2+fKn5GMkWpo6XSyYa7ZFcwghze8XbNGIXV8oMZE7VLlfUiK5DuzZ01rbl4PZBY1gCi
         YXWBvy7+yVkWFf+q0XAz++Wdl7w67lmRh2kJzL4pPPlgKEMnPFFXFpmAHHiARTtIEeY/
         gJtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=dTw30b2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PmtGz2dswHNqcXk+2XenfJ7xs9rwK7cde6Z31mS5btw=;
        b=psm78mLsImeRYWi+TGqBNMyI9OAw0ynOfhIlMr5wz+AOj+wQdQz/Jdg9V6eBOUUK7/
         T1/CIePWWsZmWeBq+sqOYfATutUdMU/vGnYv2GNgK1MwYhS26Ja+3xm4Od3PX1wPkqOj
         eMgdR8DQH2NmYxe1KHajaPaMRMT5GUzLf5xJ4LVy4U/dVry/n1JZa+EEG9ko54v47ElG
         Y3eme+EICD/f2SOt1Xfl2WGOdAd40DSNPUf9BaAX81WRIHGdaHBoQlAcM01hk9A6Eb3Z
         PiQ0t+LfJsWBnF/s9TjZnOW2F8scjYBKOX31i8+DM260WR4ZX7tr7artIsdyZKFMFdqD
         kSvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PmtGz2dswHNqcXk+2XenfJ7xs9rwK7cde6Z31mS5btw=;
        b=PJ65aLQAAXkbVcdanFEx99B9UD8N2XTCKoNGqBmP22XTDNXuFf4HSgpfjvuGiKOlRh
         r6DANKgQR2peVNVpSs75BTNIHZ6IJe+FICB5wsY3LRCjdaDxbH7ppS+npLaJevM2RtoX
         +aSahwD0zAHezd1Aaqu6KyEHUDmChOLpf6fQQHvkWm+EUe9Ddk5/v9f4d9h+DdYtU6Oe
         V7LSH8CXUotNuALbPyUAzt5AxNaYwwQOg/VbMYvd6BqVwy4TctVFjPDaL0/so3fugPcc
         K72+XYcZPbe8velgAJsvNgSg6P3YAF3QKDQsqCzKgsVMeLN0IdnYvgz05FN1p4aMz/0R
         OHCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530exKnT1VPIUMsu+HJePDgyrIZI5l+wVjoj6dfmoJACPQWjiueL
	WYDg6ODcmcXDmabrWtYz9jc=
X-Google-Smtp-Source: ABdhPJwvp74vi4+FDqhy7TTHWhQoiO9QDtqGnLMSw6IZ7IOldM06kXVBgVnv2ie+PUIKPgcXA4irSw==
X-Received: by 2002:adf:fb87:: with SMTP id a7mr9379581wrr.390.1598141831031;
        Sat, 22 Aug 2020 17:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6592:: with SMTP id q18ls672923wru.0.gmail; Sat, 22 Aug
 2020 17:17:10 -0700 (PDT)
X-Received: by 2002:adf:f8d0:: with SMTP id f16mr9326460wrq.66.1598141830225;
        Sat, 22 Aug 2020 17:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598141830; cv=none;
        d=google.com; s=arc-20160816;
        b=PBB8qTmLiaLEGhqYkZH8GEnjVmnQozHeAbWCiO8x/EX6tZcCC0qGbz8MPbPVfnGmdS
         fA6qH5zy39nhNQT4BPR/JkEp6YSSF128WFW14AQECeneEsk24Z3EIov+YWObldlxvS3m
         EezXTY+KI95Uia9/YaDqoyIvGrJwYYYh6il0sazunqeQw+z6/TpspQ114pAKg9pOSRbO
         V5hlkgVrRJU61VTSdpnI5JkB/nlf/Rk7kP3lSUHgkz9c7qqt8KVnNqsBJcao7X52817J
         CL4Qhu/HrdgzwYYw9+ZNO5pQVdic05b7b2cR5XTLpaJJFDnAXeUUAcWMoR6TP90snD2Z
         xZqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YIkVDHiTfHwp9VvpwPx0pR6/gdoUoxP4akmJs/bN2QQ=;
        b=Xd7iIfwZNNeO/SRR8hqeGYFH43LP8F+6uN/l6sFUvToHoEHHLMDkvn8Tb52Fwb/Dd8
         ohx10UUTuykIbHhNn6FKmOpCypNrQDVvSw2HNgnVW3CUgCDhDf1232mmNIwFW1VeZzC0
         UbWt73k3FhIcYvtyzOK2J0f04aNePUQn3nzu2MJDQ/I5poLe9F3BPUxiB8KpDAHNKVHC
         EH+b7SjdM3BttB2vfXR9yhbZFZXhX+EK4Xqjla74+LqvfP4uy0AvFFLHSuzzY2R9UKSC
         RWOKeHFNgVH3w7t58i5EaT55bHFwNXgTruzyXQsBbauTNKPy4M1SBX21xKNLinLO6Enz
         81hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=dTw30b2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id 64si168386wmb.1.2020.08.22.17.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 17:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id x64so1723276lff.0
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 17:17:10 -0700 (PDT)
X-Received: by 2002:a05:6512:482:: with SMTP id v2mr1145520lfq.182.1598141829410;
        Sat, 22 Aug 2020 17:17:09 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com. [209.85.208.177])
        by smtp.gmail.com with ESMTPSA id 14sm1246467lfr.17.2020.08.22.17.17.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 17:17:09 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id v9so5769367ljk.6
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 17:17:09 -0700 (PDT)
X-Received: by 2002:a2e:7615:: with SMTP id r21mr4215256ljc.371.1598141437262;
 Sat, 22 Aug 2020 17:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <87zh6ohm03.fsf@nanos.tec.linutronix.de> <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org> <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
 <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
 <CAHk-=whaVW4FQjdwaicLFE4kiqr18rk6V50CuU-ziUPyRFjHrg@mail.gmail.com> <20200822231055.GA1871205@rani.riverdale.lan>
In-Reply-To: <20200822231055.GA1871205@rani.riverdale.lan>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 22 Aug 2020 17:10:21 -0700
X-Gmail-Original-Message-ID: <CAHk-=whEb2xVU7uGOFwLxPgX-U2asMu1bJQA8QUEZPrL7zWwQQ@mail.gmail.com>
Message-ID: <CAHk-=whEb2xVU7uGOFwLxPgX-U2asMu1bJQA8QUEZPrL7zWwQQ@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=dTw30b2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, Aug 22, 2020 at 4:11 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Actually, is a memory clobber required for correctness? Memory accesses
> probably shouldn't be reordered across a CRn write. Is asm volatile
> enough to stop that or do you need a memory clobber?

You do need a memory clobber if you really care about ordering wrt
normal memory references.

That said, I'm not convinced we do care here. Normal memory accesses
(as seen by the compiler) should be entirely immune to any changes we
do wrt CRx registers.

Because code that really fundamentally changes kernel mappings or
access rules is already written in low-level assembler (eg the entry
routines or bootup).

Anything that relies on the more subtle changes (ie user space
accesses etc) should already be ordered by other things - usually by
the fact that they are also "asm volatile".

But hey, maybe somebody can come up with an exception to that.

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhEb2xVU7uGOFwLxPgX-U2asMu1bJQA8QUEZPrL7zWwQQ%40mail.gmail.com.
