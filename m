Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJF34CAQMGQEUOCUEAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 011D1325920
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:59:01 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id i5sf2130142wrp.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:59:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614290340; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+3LeRAJ/yZot9YcrI0d0CAxYWPK/aP0rUXSdgg8LbXEOJyU+XTeA+0OGlNN+9zRn8
         HU883+SwJrkfFgtdtZFN7x3aVQNugrPi0ANDVafwTwZurrixgYLdRFlYw9c+B3Vqnzkw
         NpwH7In507RAnRT7lRzJVNxCAY0dmeGGkESif73GM17AHCTyaWCfLEYtQLz6tvifggef
         +t7cJFJ5ADfeBdiF77IQ/eQhXe+KEUsiMp7gjAP+D0hm/Yv2YKWS7d2+uiR209CO4yH8
         f78Q6KSNxCDJLTk9Fs52Fap6W2/rNdwHacWeQEYedbPL0F1gYa4ay+DEUqyMOqLOvW1W
         mh0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3940UbWf/tetA+fJm4Qc+SYzKBZOw7YDgKZyOzxVsKU=;
        b=k1+1rVbDLJsUQkntNmFbsN9dpeEeKebip5ARrbzy4gqwxVy/usW3M4u8OAmLEprbK0
         38/15nFy19vR62JRMUXe/iaEmIiFRLL7jt8cV2FkwWdm1XDUGYDZTRh9smP5M8GfUBK/
         vw7oRpPtJSh0v6gSElDqcM1VSNA22j6ipNCYNiiCvOJWhTcI3ctKz86t6puB3XnEPUxp
         6PXrWFImFU44Gm7Mv1F5E9y6+A+bL+aacuR7w2kdKtHHGec4mihA9mCtIKJGGD/tQX1d
         7mNvKVyb/bk/6xQn3Nr5vakeMCpg/ptieRVTcIzKg13f4AVWSAnwDJfl5vX8+oioEvU1
         koqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZsrRRtpd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3940UbWf/tetA+fJm4Qc+SYzKBZOw7YDgKZyOzxVsKU=;
        b=gT0MOJJK1QXbILsM3332h2hAgoO/7z8vbzBDt3TSAllfF6VSM7XIp+JxmlJ6y4GGw6
         fBM2TcGQvRySVw2nQGycaaJTM0sDpHrgYJTZkcQNFLivsl06vm7/XF3ETKnSSoFavfVe
         0xN2edDqqN1W7+N6WD5qpqrwCCxY+6phnNQzb31HZyls+mTGXTUSMg1OVRIZNeQK+b0e
         k2djGMZR0VtMrvmCrnQVTeEH33LZ2GKLDQybzRRW6FRGWnKe7SZAARLDpsB52W88fBrz
         uSvA3XPhUQko6c6wsc77PZ4edep+Cxt5veU18xAPohMeJHOJwCXmuegq05mGCngAUdyw
         ZkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3940UbWf/tetA+fJm4Qc+SYzKBZOw7YDgKZyOzxVsKU=;
        b=UupfFQyyRkQ6nlGiSSfeHjicxlk5ihsoONtZEdq7Q0NonJcA5qNgGFUXlW69jeGnm5
         xUZLFsWrszpMgdUY281lK4mjj5nYM8BegGAGvaCg7DVbIjkrK5kLyAEnimRWyiTRoxYk
         633MOMfvbTqZmt8Q0dQqZ32aRcZ/oR0mZ0EU/hyx0QrOW481ps97liLsathV1u/OKKGA
         H+0NVezCLujiTeAcv4M99ypNQYcztgtUfSuUDvzs1uKUSU353p/sVSmTdv2HS26EzVBQ
         cB5sz+BMCvi+s0MEPbKq/ePFKsUs1BABeLfBCL1geieN7SJtj2QQ9zxDJe5oIIMeMbdI
         YYPA==
X-Gm-Message-State: AOAM532NbVFOlX32HTbob1c9+PeDXewlAYscqtlCwhXlAsTd6A0Uel2k
	05xxBSO++24ac2glewrWnSo=
X-Google-Smtp-Source: ABdhPJw+pteKVfF14SA3efhbCjzebMMAw/3Dtae8iEF18l20qR4f/qaUzjvzQT86wcSW/n8QIOFKIw==
X-Received: by 2002:a1c:771a:: with SMTP id t26mr373247wmi.37.1614290340740;
        Thu, 25 Feb 2021 13:59:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1371:: with SMTP id q17ls7140541wrz.1.gmail; Thu,
 25 Feb 2021 13:59:00 -0800 (PST)
X-Received: by 2002:a05:6000:107:: with SMTP id o7mr46017wrx.87.1614290340016;
        Thu, 25 Feb 2021 13:59:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614290340; cv=none;
        d=google.com; s=arc-20160816;
        b=Nm+N7psKxmjTfKbd6Enc94PvDX/UdmIyfeobAhROxeOBHuZ1qk5dMgLtmnzdChCL1t
         FUijAbeqBuRO6LNxcjvkKSQstsWlVKHZ407mkp+dc4Y4DzVt0wKWniVQAK+M0ogOUntE
         /51P21oX+GRTSq6A6U6Bdeep7+G4j+9teaL2bPbu/qjz7u1rfzsUD824ieZw2qNzeM9W
         pjbJ+rQQabd1Jhn7oL9FLNjuLqNs2uykXQIOvOA1rB7yGQuYf9znbnAd0oCep9ziHyHp
         alsTMmvGcJdAAIeJkQARelgpvcUOQuoGuZDHA00r2cJzqthpb7Zal6NYsra+7maK6IDq
         QjUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ai4anVaZwnvvwxvM54ViG62F8i0W2TcS/vYJjvyqdFI=;
        b=zeBy2Oamk+PI/mP2wQYfq35aUYWpbuj/2uNSzpdMpW+zFj9ckbPJfK1I7mRk/J3Xfa
         1xIKWpQXXB+BbwHNeoY+yViVfdEWc6KNEKQuE9DlFYD7DL50n2Qpq8xPXKEt5O/cHBcu
         NWfivkQcq4aRTPnXo+VFI05a3IBBONBy1/EcjklRB6pKcgn0w0m9qmX+QH2VH4tJPaHQ
         UqUNaVn1lc4MtVX/kM9zOcEuNQL4oRtLOkGBxCvnB0sqol0EcZCuUgA8ila+CYok1Jey
         eZVCy3gIfIzQIzQ/u+NxKB7A2UIosMkh5p5mY2TN0eN9C9VeqdKpfCeqjXRSVX0vqG7r
         R41g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZsrRRtpd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id 15si217360wrb.1.2021.02.25.13.59.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:59:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id c8so8244784ljd.12
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:58:59 -0800 (PST)
X-Received: by 2002:a2e:2a83:: with SMTP id q125mr2652653ljq.244.1614290339541;
 Thu, 25 Feb 2021 13:58:59 -0800 (PST)
MIME-Version: 1.0
References: <20210225112247.2240389-1-arnd@kernel.org> <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic> <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
 <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com> <20210225213300.GF380@zn.tnic>
In-Reply-To: <20210225213300.GF380@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 13:58:48 -0800
Message-ID: <CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw=HevQ=Q@mail.gmail.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
To: Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZsrRRtpd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Thu, Feb 25, 2021 at 1:33 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Thu, Feb 25, 2021 at 12:31:33PM -0800, Nick Desaulniers wrote:
> > (full thread: https://lore.kernel.org/lkml/20210225112247.2240389-1-arnd@kernel.org/)
> > I suspect in this specific case, "Interprocedural Sparse Conditional
> > Constant Propagation" sees the calls to the same fn with different
> > constants, propagates those down creating two specialized versions of
> > the callee (so they are distinct functions now), inlines those into
> > get_smp_config()/early_get_smp_config(), then there's too many callers
> > of those in a single TU where inlining would cause excessive code
> > bloat.
>
> Well, there's exactly one caller of get_smp_config - that's setup_arch().
> early_get_smp_config() gets called also exactly once in amd_numa_init().
>
> Now, with my simplistic approach, I can replace the lines at those call
> sites by hand with the
>
>         x86_init.mpparse.get_smp_config(<arg>);
>
> call. So those become exactly one function call. I still don't see how
> that can be done any differently, frankly.
>
> But apparently the cost model has decided that this is not inlineable.
> Maybe because that function ptr is assigned at boot time and that
> somehow gets the cost model to give it a very high (or low) value. Or
> maybe because the wrappers are calling through a variable - the x86_init
> thing - which is in a different section and that confuses the inliner.
> Or whatever - totally speculating here.

The config that reproduces it wasn't shared here; I wouldn't be
surprised if this was found via randconfig that enabled some config
that led to excessive code bloat somewhere somehow.

>
> And this brings me to my point - you can't expect people to do all that
> crazy dance of compiler introspection and understand cost models and
> compiler optimization just to fix stuff like that.

Oh, I don't expect everyone to; just leaving breadcrumbs showing other
people on thread how to fish. ;)

>
> Now, imagine we "fix" this to clang-13's inliner's satisfaction. Now
> imagine too that gcc Version Next changes their inliner and that inliner
> says that that "fix" is wrong, for whatever reason, bottom up, top down,
> whatever. Do you feel the annoyance all around?

Yes, mutually unsatisfiable cases are painful, but I don't think
that's what's going on here.

>
> And since, as you say, there are no silver bullets here, I think for
> cases like that we'll need a "I know what I'm doing Mr. Compiler, TYVM,
> even if your cost model says otherwise" facility. And in this case I
> still think __always_inline is correct.

Sure, it doesn't really matter to me which way this is fixed.  I
personally prefer placing functions in the correct sections and
letting the compiler be flexible, since if all of this is to satisfy
some randconfig then __always_inline is making a decision for all
configs, but perhaps it doesn't matter.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw%3DHevQ%3DQ%40mail.gmail.com.
