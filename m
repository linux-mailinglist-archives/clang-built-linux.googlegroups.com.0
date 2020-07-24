Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBB6B5P4AKGQEMN5J3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 300B722C639
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 15:22:17 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id l25sf1126529vsr.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 06:22:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595596936; cv=pass;
        d=google.com; s=arc-20160816;
        b=lgjd2HfkSc/Z0MY0ecb9YmfSBMIdhw00wJngP4r7tvvD0xIdSC0VfjbOGEjrB5gYDj
         5zYk21Ye7QyRqcEcb7HOTtWCH+qTw3JREZ1JKycjmROb4hlnIfdtBV8Xts5UGKvTVI7W
         uyJgeNueXIJDYMuZb73r7vHYnSouxlSyyX3xHFtIil0E6PaIXz0xEGWbfUd683HQIhYh
         Ud3uNlobmhJsrhaPLtolXsG2JL0noKzPYyLmU4kwggw8Pvs6JpOJUdSv/ZFJ1RyeYLtU
         rKxldTiMWdmMUOKepRx9YuEwHcJPNr0Y0oEGX6CW1x7E85rFinyelrtzQLeYaCfZBjlo
         8Zdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=aP+v+I5tvfF7BClaU2hBlAiYoU0q+c0FKt5KadiUgWU=;
        b=iyqfpLj4csVIzTE8A/GtiKqNZknJBwXjxRAwHeNcH8vsNE81+YPF2Mbe4X0Nw9EN/D
         O7//em06Zsf6thG3bNjXNrw0uj9XkZZ2mNZpDLC4LO/tJkmX31kylqVFFc+GgdNrMBr3
         wv2KhMfjukBlDhcjYavqckIFHO2LRo3xaDYUFjRG0dd2n4/TCXzeQanUpkA1QP+tFX+c
         PT9l51IWLUCmn+0sF0uyVqjnhmR/RIFVoqZUTl4fDELHuaPS2jF06HnYcrjndHmpCwEQ
         iG3oZ+0+zc6z4MF82kK2E9xtFoUPFBB7QhIViONxSiaLonZhugg2SCO/gTfzfRTD3ED6
         AYjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wmlhj+CD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aP+v+I5tvfF7BClaU2hBlAiYoU0q+c0FKt5KadiUgWU=;
        b=TnWd07I8mS4PLZVSXSbKf8PL5/3+g99yEJJZRUTOdvbs3NKQra/Ef+04Ap3F2JQsc/
         1GNPo3W+015B+L7JAhZODcVPmoIA6I35j4O1UkYAYCI3/tpU8shlI/gruNuP1pMS8JmL
         DQJPZIKqWfhN7w++mDNoVIQvqbiWZ/MjP+uxOfYWplr//po23x1LtQ8cUcKYMaeTuKj7
         jFgOkOUtrMVEo+xTw+u11zwngWfz3HAxeNuNqJ6LBZDPZ0iaTGIOWOB/KPKNjwHbaC3F
         6Tf5NGG3smHCAjh166O7oen6GTU459pC6CBYTAomAHHkd4l8cy6lb7SBIJiHCAlhaXtH
         m1tA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aP+v+I5tvfF7BClaU2hBlAiYoU0q+c0FKt5KadiUgWU=;
        b=ZjJ16aE3qoJxdRXoYJxqItyNeo373Bu2lIy4aKER3/DrUEsPCmYkDf/jHbP4vFk7hR
         q2pL8PmBrkQ6UPattPdY0ZCjDSB8ERQuYczmm6sALdxnuLFYl+ZsSMgDEUGnsWGXbEAf
         gg6gyCgvzfgeHBmn80TjQX6wkyjGto32AqRokcM9/B+jqOqce1iQRwYV3PU7oceRPtmH
         mHI9ES5Qkr+4PRIFnLvyfQQgRz76mg+VH2u9Wz5JorjZ12gCju0ApciJbD9rmxubMMk/
         ClFfa4oShjcYcnvAK+v7ldFews710HyJffHXkM1PvL+V4eXOOV4XGxA30LhGv9TX5xjP
         21LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aP+v+I5tvfF7BClaU2hBlAiYoU0q+c0FKt5KadiUgWU=;
        b=aH9OdrRHUiAzaaBEDmpcRvJrHe9heb4QVB8nOj/9FpEOMOe0WqzX+7rzLkqUGVo/2S
         81Fl6Z7os0gCdUkH6yiar/YaBHn95JwH3jiHUSL2XgNIcxbAdjrBl120b0jW8VYs9Xo4
         XQ2+5ERJdvCQ4W7kW4V4vocJ8rnP2QA6msWnYE8OGq3ozSVqKcV1jnGLXZctB/s2rKxh
         R/Eo6vgGrkwBJhAHDxsb4z/HV3S7t8AdLN4MNHmnews/qhvXO0Oruh/LGFmxGVR6d3Ra
         tCokss/YvZbIewTS7W2UNnXcN69DAxeYHvFHnMFVbWJ2cELtgdA9v5fV4sYYfLLhbERV
         U6Lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aJdGF1/x2IfRR5yiXWjInhzRNkhdtyHIhOnYMxRY2jhACl9UJ
	FOizaPUS2BJQF7n1UT3hSNA=
X-Google-Smtp-Source: ABdhPJydc0PNPlu+1AsdN02dq7MHFq2EFTcp8VcKxLZLYnE07O23m7yzNLaaM/Sx3aFNbpFDY3F5kw==
X-Received: by 2002:a1f:788c:: with SMTP id t134mr6761448vkc.30.1595596935905;
        Fri, 24 Jul 2020 06:22:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:211a:: with SMTP id d26ls646962ual.3.gmail; Fri, 24 Jul
 2020 06:22:15 -0700 (PDT)
X-Received: by 2002:a9f:22c4:: with SMTP id 62mr7802128uan.135.1595596935499;
        Fri, 24 Jul 2020 06:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595596935; cv=none;
        d=google.com; s=arc-20160816;
        b=t7a6TaFMpE/iLuBlpeSjO9+V++xGZg5rd49QzAo4KUkVhD0o6/lhkex11hs8ptYlsf
         MmMsT8WpE19VDejkwNPrW4auvViRULAb2RKPa55D+pjvpdnGUY6OJFtwdB6s1rS+uZeC
         9ph9DE1TFUdqFE24kVqOjh2cGyFiFUAnd+brdLU3YNcCPNE0x8iupgFToZ5g8kZg58zZ
         JAX7sg1vgEnHDrh3M5NlEPxrCKqUPdOhVNtMINXqwmI3pre9IyTMSJ7lAJZcdsmfjeSN
         X3RreC9VvyVYTxsblrTDZov5Z1/qqp9vcbokeSw6Pt2ujc0QvZ/qq8O2PyXpoxvNzVMY
         Aaqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tFbmzkA+BL4QIkFszn1H7XqsMIWLAyiLJStY3Llb7xc=;
        b=m4JNy4rgsYooJwZ/GOCouXP8tGUy8qQWDk/WBuOjOtu09d9tXa1hWmr6aizAPa1cVv
         YCD4nlKjXCmZ1LIwur5d6Su5B/Tzb5M3uD6Ahl8/jIHBWfYcrui06EtnleaLYn5SIp9i
         MpIyPGizo6eiGLygL1F2faTs6Ct8bEmv6PdI8EhHrEgBiI/qA5sRtPPCGGNwSeJWLskf
         4qZniHAwgZhvfbTV7ac07aDcBeJqpM5DV/dFpajdnnaqoUdW5faq5mbB9+fSNR+w0z52
         PG8eRBXmyGBGrfJLh2MVkW/18KBaF3MBxxBNayfMXxBB9o0uHjamymH1V01Fp6jmsIb/
         Fj4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wmlhj+CD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id j1si47072vkl.1.2020.07.24.06.22.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 06:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id i18so7165785ilk.10
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 06:22:15 -0700 (PDT)
X-Received: by 2002:a92:8b11:: with SMTP id i17mr9875109ild.212.1595596934936;
 Fri, 24 Jul 2020 06:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
 <20200720204925.3654302-12-ndesaulniers@google.com> <87365izj7i.fsf@nanos.tec.linutronix.de>
 <87zh7qy4i4.fsf@nanos.tec.linutronix.de> <CA+icZUVz0opOb0LihLvPvKM-t0Y=pcUWDyb+u-L_UVnnbPh1rQ@mail.gmail.com>
 <CAK8P3a3Ms1uvLcbhmbsU+-u11BCrXPaU5Dro=P9LjAG7CYm8ww@mail.gmail.com>
 <CA+icZUXzjcQ7ekTg8LvwcaBZFn_HeDjif+rKaFAKy=0gUrx=Xg@mail.gmail.com> <CAK8P3a0gFG8z_qdY2gPm5p7kjpj8xq-APyazk390FpHUJiZ7Hw@mail.gmail.com>
In-Reply-To: <CAK8P3a0gFG8z_qdY2gPm5p7kjpj8xq-APyazk390FpHUJiZ7Hw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 24 Jul 2020 15:22:03 +0200
Message-ID: <CA+icZUVGnfO1w6CpHh5cbZ9-ozMo6LhoyKxCq9mBpVF1jCZi-Q@mail.gmail.com>
Subject: Re: [PATCH v3 11/11] x86: support i386 with Clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, David Woodhouse <dwmw2@infradead.org>, 
	Dmitry Golovin <dima@golovin.in>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Wmlhj+CD;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 23, 2020 at 3:56 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Thu, Jul 23, 2020 at 3:14 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > What happens when there is no CONFIG_64BIT line?
> > There exist explicit checks for (and "inverse") of CONFIG_64BIT like
> > "ifdef" and "ifndef" or any "defined(...)" and its opposite?
> > I remember I have seen checks for it in x86 tree.
>
> As long as you consistently pass ARCH=i386 when running 'make',
> nothing bad happens, as ARCH=i386 just hides that option.
>
> If you run "make ARCH=i386 defconfig" followed by "make olddefconfig"
> (without ARCH=i386) on a non-i386 machine, the absence of that
> CONFIG_64BIT line will lead to the kernel going back to a 64-bit
> configuration.
>

Again thank you for your feedback.

Unsure if people are aware of the different behaviours and results.

That's why I keep the same make line with and without "defconfig".

Unfortunately, I had no opportunity to test the patchset :-(.

For testing I had done:
$ MAKE_OPTS="..."
$ ARCH=x86 make V=1 -j3 $MAKE_OPTS i386_defconfig (whereas V=1 and -j3
can be dropped of course)
$ ARCH=x86 make V=1 -j3 $MAKE_OPTS

Side-note:
How wonderful my patch "x86/defconfigs: Remove CONFIG_CRYPTO_AES_586
from i386_defconfig" landed in <tip.git#x86/build>.

- Sedat -

[1] https://git.kernel.org/tip/tip/c/6526b12de07588253a52577f42ec99fc7ca26a1f

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVGnfO1w6CpHh5cbZ9-ozMo6LhoyKxCq9mBpVF1jCZi-Q%40mail.gmail.com.
