Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBYUSQ35AKGQEXH2HQOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id DD44824E9EF
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 23:08:50 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id d13sf2259220wmd.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 14:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598130530; cv=pass;
        d=google.com; s=arc-20160816;
        b=ogQduVtuFyTYCnAwcxY1cXPp3fj+9YmMZfFm/affipZhzA4yVyJGF7pkYNpSMOZdAG
         1tzvD495zpnrYLU8a5TLakqLhV7O470Zw0jLHk3JKnu3ZwKL6uMCQJilZccDN38MfTQ7
         zTiSvsRkqMibxA2Sy4COQamRHf8FKzPF05y0G8U64XLlvo5WIZfwBN0ZwAdqksPOtQg8
         I/mKer2CfcLd0biAOAmk9R/NfzSw+KY4yuAJ9irqJBLOcM7uG1NhVRJAulFXnVtDY2Ax
         YsGuQ3qDNNkCBQiTpXvNGwTtXYKjiqsqgmuglP0WdLkjBC53t59ougsskpMjD68fEm3k
         9yqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ebu615yJqj5OmQCgRYrZFD6mL+AboCzC832LgRu/7M8=;
        b=DdBGLTP/224NJGKWt17XT1KSsU5pPvPaOgx8Va3UUyJ0FBjJPz/TFn5yg4ftlafPq6
         4SgK04fZFnE37LXw/jQar5Ej8lZ7mRcBL5McDhuFaZu60pLoaRZiF+edbsUNoMBM3n17
         ZRhTfSJnGrPAW+RVNJIx9YkL8iorXiGH8jeMKm4aou70M04+/NjTH0CWxv0sO0Lxc/Yp
         1CB2AYE10tAveMIAXP0rBXzzcBxFx5l8O1d3YdsZhRPkhmGw+0EAMcR5HQ4JmtXNuH4K
         Kgl3yZIVhy2Nv/w1zh6sAn/sRxjFv1D5pmYT1TXhWcA9DiUDupi9KKX3zzwgp/N4UN5q
         Y/QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=NZZaHKQm;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebu615yJqj5OmQCgRYrZFD6mL+AboCzC832LgRu/7M8=;
        b=KfMv0w5hkE+UZ9L7zQ1qpRE1jSXIoESuRLWWwuhGy4vjUAGqmbk8fvPuol/8MijuOp
         dObW4vG0nc/mW7UmzExnwCFPvx3iPaO8IBHIXfetzVo3JawHTPPL2GwAk/CTq6DpIHZy
         PAmNtVShypbqgx6dR+12kqS5lxj3nvxrOu8NlVhHyRuC1tbsIWcX+WuscMTMLh5XbVVa
         krk//Skcsg7m6N9GUZkbIKbKj8uu28EFGib8D+wMqQULPpLX2r9ucE8NkM708qp3MDDo
         iojumsNgL/EMVqpowjmOkfUtbaPfcJkFpbsskTdQCSiE32Ls9914WnE6Lt+F8HyUTVlJ
         c88Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebu615yJqj5OmQCgRYrZFD6mL+AboCzC832LgRu/7M8=;
        b=qAkt5VxAAubGB+B8wmCiHoQg8/59NKi+DTacJv1Oh3jJ5BTbFr5/OPAR++ScbSecrM
         w3dsfuyyrKHbcYdG7Hcg9ofg3U55E1IWll8hYxn165+y9Px7WaP23V0RCaCCHr5O0vr8
         AWTDpej1u+2O951nliAf+ospL4VMK0OajVOLulcsv+SkOL3mdLE7H7iqLwz6WfW/turi
         qRssJkjSjcWsYzO6HOK9c2dy/2iuYrQMX+1DXOnb7xSyepDUTYn375xpEolaa/pwl5x8
         MsHhz+LGtT3zIFQRx4MRdyXnAW12hCWanmRC5dSrZywf1vdqY+49ZVAqFBhCEoPhxQNE
         dwKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531swI3dW/MfMA3vmswI4d6AzEXB/RR4Glbn32srdlPB+zw+3yGo
	lLFdHrJWCUmGJBHzP4Ir/24=
X-Google-Smtp-Source: ABdhPJyXqFEVF7BaubmDcCRs95xB59hV0g223viXBvpEzub0Lr5y8wQ/CGxCGOBVpiCgmakwvZSc7g==
X-Received: by 2002:adf:a195:: with SMTP id u21mr8750748wru.296.1598130530562;
        Sat, 22 Aug 2020 14:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e78f:: with SMTP id n15ls437823wrm.1.gmail; Sat, 22 Aug
 2020 14:08:49 -0700 (PDT)
X-Received: by 2002:a5d:5712:: with SMTP id a18mr8186600wrv.184.1598130529790;
        Sat, 22 Aug 2020 14:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598130529; cv=none;
        d=google.com; s=arc-20160816;
        b=cHayaqgHIjXFKZ+vAMH5LwAs67tVY8JtFtTu72scA4Iee5Lt+yvyPowe382mIbS71V
         39H1ks0GuIgwgC+qGZinb4YFastymnyYozc9Q6I2D1Nslf4oWO9ee7yPJBosFiI7RF+h
         MkPB1FwsJfM9PtG+/uKJWrodch06o+NO6fUrOPSClEvGPwh6n8b/QLw0ATSF7UzikJv8
         QJk+P1AkVUa2hSqmn9SEPFCFSB3DCbige1R9n5ZVIMwe1VCdFHC3y+MrZDWe+JzKFGR3
         2movMOtpqEwGd6EBSH1wyoFcUvF+EKALZgpCBl0VmrJfoXUeuKro2GRcd6dzGXSHsvBY
         pf5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yQ1VHHFNzEpZ1EMHBpKzmWH6fJ7+QYWkioKmOH/oB6g=;
        b=ZAr3gnN71aNQZCWgPLgtM1Ip4XiRyG2gccc/kajhvidqj2HnNB5bgHz/Nf+bladoj7
         frnXwVmYKybD/5L1l0IPYYMDHrhP1agA6uvcXcMyM5YqTmWRdsaX03KjvQFsA+Lpp+Av
         Bfh5wNO3v9REmoc3oAtP1OcUyf4LbJTnFIedMn+6sE4zF5Wd4IhExFr0s0G23htlNYYm
         Vl+COP+Qci3DmU6F3jxlw/y1NaAc5nVwYpjjaFEnWYoFI57TJeLmcoZ5sM6MZfHhBavQ
         eXYAy3UcFzILjSE/f9z5YYY7kTywsz8y+nAeztMVuTYyLOfNQjUVHSJGH6BPQh3itpFp
         Shcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=NZZaHKQm;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id i17si198856wrw.4.2020.08.22.14.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 14:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id v12so2358888lfo.13
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 14:08:49 -0700 (PDT)
X-Received: by 2002:a19:431c:: with SMTP id q28mr4091277lfa.211.1598130528957;
        Sat, 22 Aug 2020 14:08:48 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com. [209.85.208.175])
        by smtp.gmail.com with ESMTPSA id j14sm1173956lfg.41.2020.08.22.14.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 14:08:48 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id v12so5527030ljc.10
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 14:08:46 -0700 (PDT)
X-Received: by 2002:a19:c206:: with SMTP id l6mr4047721lfc.152.1598130525569;
 Sat, 22 Aug 2020 14:08:45 -0700 (PDT)
MIME-Version: 1.0
References: <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan> <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org> <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com> <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
In-Reply-To: <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 22 Aug 2020 14:08:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=whaVW4FQjdwaicLFE4kiqr18rk6V50CuU-ziUPyRFjHrg@mail.gmail.com>
Message-ID: <CAHk-=whaVW4FQjdwaicLFE4kiqr18rk6V50CuU-ziUPyRFjHrg@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
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
 header.i=@linux-foundation.org header.s=google header.b=NZZaHKQm;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, Aug 22, 2020 at 11:17 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> However, the important question is whether those users/companies care
> about running the latest kernels. Many of those definitely do not want
> to touch their kernel either. For those that do, there are several
> longterms to pick from that still support 4.9, as well as other
> workarounds.
>
> Thus I am usually in favor of raising the minimum whenever new hacks
> are required to be added. On the other hand, we already raised the
> version twice this year and it is not clear to me what is the minimum
> version we would need to go for to ensure this does not bite us.

Yeah. The good news is that I haven't seen a lot of pushback on the
gcc version updates so far. I was expecting some complaints. I haven't
seen a single one.

That may be because people did end up finding it very onerous and
complained internally on channels I haven't seen, but it might also be
indicative of us having perhaps been a bit too timid about compiler
version updates.

However, in this case, can we just leave that old "__force_order" hack
alone, and to work around the clang thing, just make a dummy
definition of it anyway.

Alternatively, just use the memory clobber. We use memory clobbers
elsewhere in inline asms to make sure they are serialized, it's not
normally a huge problem. Both clang and gcc should be smart enough to
know that a memory clobber doesn't matter for things like local
variables etc that might be on stack but have never had their address
taken.

Or are there other cases than that particular __force_order thing that
people now worry about?

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhaVW4FQjdwaicLFE4kiqr18rk6V50CuU-ziUPyRFjHrg%40mail.gmail.com.
