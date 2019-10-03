Return-Path: <clang-built-linux+bncBDRZHGH43YJRBQ5Q3HWAKGQEU6JZHXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B19CB00A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 22:21:23 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id t13sf2435934edr.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 13:21:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570134083; cv=pass;
        d=google.com; s=arc-20160816;
        b=pUJA0n8vNcJUJPxSYNR/9H0iqceh2UX9CsCQGeb38yZ1xOF+koYu/zSNFtYYgs8UnY
         fjmutIA/lUmyM/06ga3SdDZ6d3qrOnRWBoTxWvxWNGyNM1DaAfTFnlF/UsybF/r88dvr
         QoI1HEHZaFUGsvejY+hMRIxGvVf+js4NPyIJivflP1ZLWtp7YCjpSi82OXHCIqBtKYD6
         dlU2I4LkP6YkoEpOuhgfLXYJTlXcQHQHC5YEiWuZdwEdvPLXlNzqXpi6mx65FquRtdY9
         1ivJPR8FFTGAsLx4jj7UMHuiLocIRtcB0MiopJkA6NAjfVcmZbg3tWHka2+HbANRgIbo
         0vzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PiFcFyIepvC2jEJ5mxcDR3z+KA2LHqUMQcSvhdWdH0M=;
        b=WRlo9WU3XhChBhlk1KMbCL5spTnE+6RSkqF2A9zY3bF0rMsJSWoYH1Y1D+z+seAdTd
         8P63Yk2lHYo/6HNqKe3lqcl1JzDxgMsWX8Toi1vchgpMeeL18hbSiqlZtmdFCriSPH0v
         09XNpp5DBGk3bFU82kUS79bRA5rfLXHsaGTGEK6c8TuO9doSJgUjj5V4mtPRxvHbXR4S
         yqwso1a1xKRBkfp5QE4vj3vKCA51NQSK+BGEQLhth4NpzkXg41uWwIpB2M9ilG5vTlmm
         5eORSmjSDwbGlHgza1UqmD4MU1jYrUv9VGhpMTFkyxdtim3UUOGX7g29RtP7L9s1Vepe
         AzYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mF4FYXDK;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PiFcFyIepvC2jEJ5mxcDR3z+KA2LHqUMQcSvhdWdH0M=;
        b=Dw8lEuDfr9sxD+L9UOJnkHBPQPJOTUS3Lma9n6iMagAVwK1wtoRhGBuGDiTg0jMrc5
         9MSS9wg7U8tGnlj8q/RuOVM4P1M3J+DH7l+BUE0RH49zbxYYZe4cxqjUB8+LD0pGEKqt
         IzSQmyH4sViecGDXxjYjJec3USa6F9FWlv1SRkeV9Ky0Jopi0TGPISD0G4N8u0YHdJ8Z
         PUjUPfiZtttSs+xffvzSkr/oJ/rbSA293/T6l47Z1J4vtNFT7xbw3NYxLloj3kNn/fmm
         XlX8RSWXBJZKrXC46Yg1SUUdTPBFeNWNrG9A1dw/1mSJcfKvr+PlJne0d1FFrlNIv5+Z
         hf7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PiFcFyIepvC2jEJ5mxcDR3z+KA2LHqUMQcSvhdWdH0M=;
        b=cw280aG1B8EucMwkBGlwT7uf5yefPRi0yuFm28osz9MvxIyYbMPJwcqp+A46go6/rz
         lDmujox520b5s7WBz7EQi5D1ELQA5g0MUUROJ1UsgpPqSggIgjnW2ayJCk6L0pc6FCXP
         tyuT59oZxdE40sKCGiSwzRIMsHBSIo1A8xqH0+qVbPvKi69W/E3tmztHpDYVVgZKQnPr
         JFF7fp/2cZxzTa0lFl7b7JaIGPH1fo1XDDfWpjiToSQzHRZreF3VbZbv0MsPeICoFw7K
         Q3YMDucML85z/Qb7exLZhAAmwZmzKBfoaVcb0J1II4lr7fNdILcBSkmMcBR+LGHJAc9D
         lfgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PiFcFyIepvC2jEJ5mxcDR3z+KA2LHqUMQcSvhdWdH0M=;
        b=DQhhbhxtxVmUYUfLw/S9b0v8PL3epnfyOnmV/rD17jeAbAGVZDey8dBvEbubgF5dEG
         7bxWmK0xO+LxyXs3zxemn4iCKuGAm/MyRXFeRYEYhUgRuCJ9ZdveBp+Or3bIG2kx7uua
         ZwKZq/dmTWXlrEusWNakwc6Ud8Co51b6y9k7TCv2KI73kiT43xj0lZ4Wnstzi0wVwzyK
         Mh4IXkUWeylWwsdpdkY1BNwylfloNNQ75/Xt3swHekFMr7PYfv1LQXrfdiyWvyRALxkR
         FFM4E1h9A3gnRxcKSv0frELOALwJGuTXyyVt2Hy4hzm1sqkJQaWWk7TC3BvMYzl+Q+hv
         6+Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKQeSmFM5lkg9RqW8Vp6pK9y+wm4mJEtHerWM2sUCPJVGYtQH1
	0mZoxi02NOHzWYIvdjyal3c=
X-Google-Smtp-Source: APXvYqxUBOM3x9bh0agqANLI0MMJAbWlifjshPnOrxIrK2kCQuph26H46zLGclG0UdLSkTtR5FkZCw==
X-Received: by 2002:a05:6402:782:: with SMTP id d2mr11463009edy.296.1570134083643;
        Thu, 03 Oct 2019 13:21:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:a51:: with SMTP id bt17ls1835901edb.8.gmail; Thu,
 03 Oct 2019 13:21:22 -0700 (PDT)
X-Received: by 2002:aa7:df8e:: with SMTP id b14mr11664167edy.65.1570134082960;
        Thu, 03 Oct 2019 13:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570134082; cv=none;
        d=google.com; s=arc-20160816;
        b=nJvt5bdTuQYBPjQEj85FFLBwWCFKKoDw1dAwJccbPVmEaVPPoMEbsu98ZvKesks0iV
         Gw6BM9sC9fEFuaUSCET0BWf9prIfsdStR56w93Hsd/XiVlfp9uFzXelAP8ytM5ghMsOR
         yoww9qoH2de3UJSHAXzpJy3NkvPszT43szSmVyfOq4d1ez9wvfIdpQdmI1NL0WCuZcj+
         kWLLNm/0EI16Q0cmqXl+tRgKCeSVk9x2e1LL0fRg0MWNC/5kadTtYq/EW7yNt6OKJc5J
         y0DixgVN2UKZ0sLM0qCQ0Fdvc8zg6wQGcMMVE5Z7s/yZp1Bjj3Iaz/pxfFM3YoDKs5kS
         HXDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jDZRfMkXuS+gCx9+RspTMOpPYXHsN1Tk1N0L1DUZ7HM=;
        b=t8xE1WUuwO3Q6gntLxryXU3t8Irn61KpBmBYWim782EYM58DMKNaCkR6Id2Qhwkaar
         Vt1QUh7XupZGmEXyWEnS6klrDSEd6vNrP9YMLaEeSrdPdR1Racd3Nvd1x6buLiH2HRMo
         /Swx0dRbOQ5vV4LYQw7U/wUKLsMKPvI9ZuBHMDrN3h/Y204k4AALEQJUYwThclJJN57Y
         vH00+Se+QfXPFDDCFbEnv0nGjtCC0f09jm5RMrcwC3zgT/PZ4wKwES97Ldbz8oGA8h1N
         ifdHU5FKdDPVthJyU/fyk/LmFR/lWQ5Wdc4Bbw9GT7cYS5nENR/omz1zME0tcUuztxNt
         5lgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mF4FYXDK;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id q8si323983edn.5.2019.10.03.13.21.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 13:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id 72so2820254lfh.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 13:21:22 -0700 (PDT)
X-Received: by 2002:a19:3805:: with SMTP id f5mr3768257lfa.173.1570134082446;
 Thu, 03 Oct 2019 13:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com>
 <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
 <CAK7LNATSoOD0g=Aarui6Y26E_YB035NsaPpHxqtBNyw0K0UXVw@mail.gmail.com> <CAHk-=wj9Dbom1x7qDfrXgNbjdFa_84bAUMdGigs4sELQQW28wg@mail.gmail.com>
In-Reply-To: <CAHk-=wj9Dbom1x7qDfrXgNbjdFa_84bAUMdGigs4sELQQW28wg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 3 Oct 2019 22:21:11 +0200
Message-ID: <CANiq72k39jKJVDkQVk=OP8zdYEAiLMadnSxDYLFY1gwpKmuo_Q@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mF4FYXDK;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Oct 3, 2019 at 7:29 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Thu, Oct 3, 2019 at 10:24 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > I just want to annotate __always_inline for the case
> > "2. code that if not inlined is somehow not correct."
>
> Oh, I support that entirely - if only for documentation.
>
> But I do *not* support the dismissal of the architecture maintainers
> concerns about "does it work?" and apparently known compiler bugs.
>
> > Again, not saying "use a macro".
>
> Other people did, though.
>
> And there seemed to be little balancing of the pain vs the gain. The
> gain really isn't that obvious. If the code shrinks by a couple of kB,
> is that good or bad? Maybe it is smaller, but is it _better_?

I think both positions that people have shown are important to take
into account.

We should minimize our usage of macros wherever possible and certainly
not write new ones when another solution is available. But we should
*also* minimize our dependence on code that "must-be-inlined" to work
as much as possible.

In particular, I think we should allow to use __always_inline only if
it doesn't work otherwise, as an alternative before trying the next
worst solution (macros). And avoid using only "inline" when we
actually require inlining, of course.

And the reasoning for each usage of __always_inline should have a
comment (be it "bad codegen", "performance tanks without it",
"compiler X <= 4.2 refuses to compile"...). Which is also useful for
compiler folks to grep for cases to improve/fix in their compiler!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k39jKJVDkQVk%3DOP8zdYEAiLMadnSxDYLFY1gwpKmuo_Q%40mail.gmail.com.
