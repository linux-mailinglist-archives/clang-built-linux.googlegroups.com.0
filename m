Return-Path: <clang-built-linux+bncBAABBJ7CSL4AKGQEJGA2NPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id AE83C217527
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 19:30:16 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id h19sf14975005uac.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 10:30:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594143015; cv=pass;
        d=google.com; s=arc-20160816;
        b=LTRQuhJBLd5PSHTsBouyBzhyOgUB5dU7H7XhJH+XCQQPS52zf+C44BSQ1RXJkukDhJ
         poOZd/XEziw7c6FG8bKnL/8VM1HM6aGoqY59Mys6ehkzlCDAp+XtV2QwKAhWY+qyKIMG
         gHk3AjQOimGJarULeiCzxKJROQr2IzPVI108VEUZsUTOwdNQCDbdbhhXBXblzWXMO+bb
         87mEWxYur6zccUqBUZ9HDqVQV45jpZni1+FpD4E2sZEAsMP5Vsr8l9WeSMhZ3MQaT1Eo
         0BQEir4XLD4odmHgwkL8lqKfVGu02u7h3o3l0BplNp82KbGAfquVvD+8VGXRyhOssNxB
         HTDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ITcaKzAFe3kzxY7j6VV9oQBWDG94R0ju6AC7wV0nt9s=;
        b=EEYAaWkS1dKcfGkZj/Ar18cxdiGBlH4rjfHnDDWNCQWZkJf7KElJ8peMrV0ftVfgIt
         1Tc8MzHYpqcQiU3RntyLFbTSlSWHpW/jJaBP+UTg/6e3OMh+X14mxfcA+fkc9stbDusO
         N7L8cPBg5Kz9u5Huz4fCy943izx24pun0PfZ3UhipSEXdJxvU8lGaZZsavr8yZgTvx6b
         wtJVDrNIjFmOTeL5IKyCJZcebChes9eP6D31UQMDvbpN62VJ1xaaQqsqIypUl2YjZVbM
         Gkn0p5feZAK4UHe8+vDR0HsK30BlPrs5gWLJBFL8v7exvp2XvQfx9WlMOGe8qGKvFajI
         nm+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vPwLy/dZ";
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITcaKzAFe3kzxY7j6VV9oQBWDG94R0ju6AC7wV0nt9s=;
        b=b2aOqwfE4LRKEwjjLe+nbMJEIELb9/wRk5U/FIymecr/yCsvB80BbOXMbQ7GWD15k2
         MppM7vGDmORAWWTI5Jk2bm0kTDRfdWAYyom3Du9NjIsk+FAAOHH2k0vs+DUmt6AprMFT
         XrFTV068+XQQWtjXdRQilu/DmV8hrScOS5+pbvf1h0tnUdVFHST2wKSOlOAsCMr2ype3
         lnqMO4nShEWlAxodPPHDda+DnZPhcBghFVkxko5jT7mSSEEoAbRn6pZkEq/AfgU/kF5G
         O1wTeK8yLfDrniZeUIvm4Aax8GRIF7eDlAVlSx56IrGOpBCoxcA3Dzue0h95vp8VU7pt
         zimA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITcaKzAFe3kzxY7j6VV9oQBWDG94R0ju6AC7wV0nt9s=;
        b=SWoxO9xdzfiPkHnE9G6OLXdPWmR3A338z3kt6qss5hs+RA4G+DrH7FvOVzCE9acD/t
         3FW8QfjApPr3TnrJ67CwyXY1fudNcGtqufRM44J/olwI6XFaluT/QzARzUgF4FVnc24W
         5B74WW5+98r1c7xMoWMK8zfGCXCHokVKRYuJDQu0xdbVG49EyL1HxPKl4TNA0noIgm4I
         UrYf1WMskTxtiuGnEXxA31os13mzAbXa0qO867C1mkeiIQEbfeA5sBv41VlRMjKsQN0G
         ZKqA/vtySoNKQY2Mxwn21fdN04pwoyXU3lHu0f2NvEruYm5qxARyQX6k/1iS8M5gH//p
         nz0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xyyW+UsKQzRAW8Q0vWF/RtU9iFLUO6YC6K/IDs17FaotN24eE
	f2hBWNefNk6A1InaBKzrPnM=
X-Google-Smtp-Source: ABdhPJwEqNrXWmeaaUDCH9QJ4PpXAFwd4feFqHCan7qhvw6x+0znzXwlupmNtPWooJtCyBX+8T/3pQ==
X-Received: by 2002:a1f:3602:: with SMTP id d2mr34680627vka.9.1594143015671;
        Tue, 07 Jul 2020 10:30:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5515:: with SMTP id t21ls1445340uaa.1.gmail; Tue, 07 Jul
 2020 10:30:15 -0700 (PDT)
X-Received: by 2002:ab0:181:: with SMTP id 1mr5546547ual.74.1594143015393;
        Tue, 07 Jul 2020 10:30:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594143015; cv=none;
        d=google.com; s=arc-20160816;
        b=J/TcSxdi/7gp6nzDTkr4qEQ73ggR5muwiXvjnApBcK3YyjDq9/Hb1vLgvtJja+3uPa
         1/LRSYUZT8s5DQPOm/Q601vPS6v7p9K1dRPOMcHZqv6Ek3pbJ91KIZPIEONJIXORCGcj
         5rZD3yA0BsA8tHVe2bLRPkuKkVcU36CoQGFAAoI9ixsE1r6DM+dPtfpWn908IIBhW+jA
         CU5r2hgcD+pfRkTNiMS+9QfYJW0zQSiW8byJemzP/wcgo7JqI6seH6246hJY8Yo2FK49
         CtCr+xDSjAFw66iwUi2iHXnCdsVzZ83yHV+tCBP29JlGOeDS9iWI4TbtjxXjF+PB7d5b
         tXGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3fT7JHQzUuk2hN6+LXg4bH8jc1VGgXYeN1aqEYhz898=;
        b=a9QaJezbuP++i/t3tkdUEOeKVfxXtO4/q6Z52kKb2yTB4LfwZwhkyr0WEwfX7TRy8Y
         SKsL8wwHouVNGEG3+FQ3oxORdR5OvxVQs1hbobc+zKLeyUEzL1vS4XJUs3wG+A2/KSsI
         Q7K9rMLfetChXcyMSf9zcgE7O28LTdWspyCN7ewK8NqccazlydOfe0yA87RRKotacsHI
         DUsYYMPjBQmtFjsw67abozLA3j2xb6ER+Vq8UFftJbKxGGJLCIJq7hnmrivS+RFHrNH1
         058akDZ2cLWD9DLOHp8AYnvM1o8vXFUYuJkVfSK6VwaOd0qtJRbrWvHJLZF8L1HlmPn1
         AXLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vPwLy/dZ";
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q20si1244130uas.1.2020.07.07.10.30.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 10:30:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A2E542075B;
	Tue,  7 Jul 2020 17:30:13 +0000 (UTC)
Date: Tue, 7 Jul 2020 10:30:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada
 <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arch
 <linux-arch@vger.kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org, X86 ML
 <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200707103011.173d38c1@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAKwvOd=z0n2+1voMCzC6Hft9EBdLM+6PUi9qBVTVvea_3kM91w@mail.gmail.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
	<CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
	<20200629232059.GA3787278@google.com>
	<20200707155107.GA3357035@google.com>
	<20200707160528.GA1300535@google.com>
	<20200707095651.422f0b22@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<CAKwvOd=z0n2+1voMCzC6Hft9EBdLM+6PUi9qBVTVvea_3kM91w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="vPwLy/dZ";       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 7 Jul 2020 10:17:25 -0700 Nick Desaulniers wrote:
> On Tue, Jul 7, 2020 at 9:56 AM Jakub Kicinski <kuba@kernel.org> wrote:
> >  
> > > On Tue, Jul 07, 2020 at 08:51:07AM -0700, Sami Tolvanen wrote:  
> > > > After spending some time debugging this with Nick, it looks like the
> > > > error is caused by a recent optimization change in LLVM, which together
> > > > with the inlining of ur_load_imm_any into jeq_imm, changes a runtime
> > > > check in FIELD_FIT that would always fail, to a compile-time check that
> > > > breaks the build. In jeq_imm, we have:
> > > >
> > > >     /* struct bpf_insn: _s32 imm */
> > > >     u64 imm = insn->imm; /* sign extend */
> > > >     ...
> > > >     if (imm >> 32) { /* non-zero only if insn->imm is negative */
> > > >             /* inlined from ur_load_imm_any */
> > > >     u32 __imm = imm >> 32; /* therefore, always 0xffffffff */
> > > >
> > > >         /*
> > > >      * __imm has a value known at compile-time, which means
> > > >      * __builtin_constant_p(__imm) is true and we end up with
> > > >      * essentially this in __BF_FIELD_CHECK:
> > > >      */
> > > >     if (__builtin_constant_p(__imm) && __imm > 255)  
> >
> > I think FIELD_FIT() should not pass the value into __BF_FIELD_CHECK().
> >
> > So:
> >
> > diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
> > index 48ea093ff04c..4e035aca6f7e 100644
> > --- a/include/linux/bitfield.h
> > +++ b/include/linux/bitfield.h
> > @@ -77,7 +77,7 @@
> >   */
> >  #define FIELD_FIT(_mask, _val)                                         \
> >         ({                                                              \
> > -               __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_FIT: ");     \
> > +               __BF_FIELD_CHECK(_mask, 0ULL, 0ULL, "FIELD_FIT: ");     \
> >                 !((((typeof(_mask))_val) << __bf_shf(_mask)) & ~(_mask)); \
> >         })
> >
> > It's perfectly legal to pass a constant which does not fit, in which
> > case FIELD_FIT() should just return false not break the build.
> >
> > Right?  
> 
> I see the value of the __builtin_constant_p check; this is just a very
> interesting case where rather than an integer literal appearing in the
> source, the compiler is able to deduce that the parameter can only
> have one value in one case, and allows __builtin_constant_p to
> evaluate to true for it.
> 
> I had definitely asked Sami about the comment above FIELD_FIT:
> """
>  76  * Return: true if @_val can fit inside @_mask, false if @_val is
> too big.
> """
> in which FIELD_FIT doesn't return false if @_val is too big and a
> compile time constant. (Rather it breaks the build).
> 
> Of the 14 expansion sites of FIELD_FIT I see in mainline, it doesn't
> look like any integral literals are passed, so maybe the compile time
> checks of _val are of little value for FIELD_FIT.

Also I just double checked and all FIELD_FIT() uses check the return
value.

> So I think your suggested diff is the most concise fix.

Feel free to submit that officially as a patch if it fixes the build
for you, here's my sign-off:

Signed-off-by: Jakub Kicinski <kuba@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200707103011.173d38c1%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
