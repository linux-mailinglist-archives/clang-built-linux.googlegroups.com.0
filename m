Return-Path: <clang-built-linux+bncBC2ORX645YPRBBV25TWQKGQEAEFGKVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4B7EB64E
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 18:42:31 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id q29sf6496793qkn.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 10:42:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572543750; cv=pass;
        d=google.com; s=arc-20160816;
        b=WVBa7a9Ucvn3exDpG1BJKSTyXugyCv1vymJR84vAsVlTt81HrVt8Ud0cr5GqtZ2Qz/
         T96UCIl2IK5JttfUalE7PFITZ2y/rouchV7av08A0OwkjDe7n04r+MBwftW9C5l3LIaP
         ncKNCLPwC4wHY6vF5o4j7SzPM8sUwkS1VPHhS3QUxgDuviSFo1y4wMgcoRaAoOuNA14L
         3vQoEeD9vy5cglRewnoM9vDzysjMgNUIhygF36JqMaI0eeUyucPmgbMdIIjkzJNtdb9R
         QJqCsV34+O+zp6MMDnlNEpo0Fpavpuh6vDF0DHSRRA8DnuhbznD7D/9Q1hqqhHNpAaYZ
         DACw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Wj/WRQoB6CJVkIGWburmDctQD1A9JhdZPNxCVZXepco=;
        b=UPTbfYnv+JICQ9jFMXiVoqyKdBkl8/FHJGhzvlvpBqCdrRoSSBYsWPzIiW6QVGAKg7
         Lpslq7K4AfNjorjGt9IRGtUZ/5uBbwBm/AkIYYYGr6f8aZETEurwWs74Nmnu7Oa4mvKY
         4GQuCPiBWDlkDADxU8MMG88edrgj9W+DwDxsKXihbmhd5UBvICn4doQ8yEIynG8klKP3
         fMm5+dVPcES+vuuPWzMbNWDZi02jdDyGd8gSF5CzdNI8ykdWWkdZEeHi64e/jjK+QeY9
         jr4tAfBJJkyvq3ALXeQ6K4P7mGTFcxqomV2orb/9qj5+VnJYftHEvaIo6EhZfv3nqNF0
         NYgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vyAZGLuQ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wj/WRQoB6CJVkIGWburmDctQD1A9JhdZPNxCVZXepco=;
        b=DM+WUeYL5fhDUKA32gJDDqfwHUtkmprGbqds5SIK7qFpSQesWi1tCtNAZjJGaMQtl4
         Y++BlsDEL9ae9AwW93Y7LW7a18lGYTbiUv3LZLILHlvXpDX/iEK/dLx1Ycj3FQ7rgLLK
         5gLqCSBvHhWWdkV4LZaowOeHQXxRSTpi4m1MbF7vk5mQKR9m/ERUOE+mjK8aNGE2zMik
         MC7qBSGzHlZWyAbkDQr/fPRWhkZHQu8RzwKP9xn8XvfZzKI1I1D48HmZuDdbijnM81Rd
         mS5v4gdJXlsx6heXZqorjAe05QeaTl/yrODpj14pTOnVfrMS6fnolTzvzDfXJ8MHmpQo
         IpFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wj/WRQoB6CJVkIGWburmDctQD1A9JhdZPNxCVZXepco=;
        b=AhoZpl6qK/iCQGv2VyfUNnL1pw8GyvPl3cKtPnD/2reAA+zO5E5jZqY/jilwJAV1ne
         i/6hIVD6evBe8GtgmBQ5x5FHECqYeNR3eA1uYpqLBJ3ug4jeHy0lRuuDtoH74/izoczr
         ihOkkVqDdHJXDh4Zgo3hu/Qr9Oi0JcmO3PmWTOwlroqneJiyy1CltQo1ssB4esZS2XwJ
         g1OqQtkLf9rr5zK4aFTAV4DRIeLtlcNGhcZHKSpH/jI7IQi0tICSLNhkEOPlRxQJSFT1
         FqhgD8D+JNWhyj1Nrvg8M4l3R0xbn8yzdnMmWWt8hOF7BfhTiAqu1WN7AmBUhXO1LkbV
         xluQ==
X-Gm-Message-State: APjAAAXOPmpipD8x9Sj5EJtwI6oRcI4Evz8jdr1BFxSofVxesoGaqv3R
	OpYj8frx2NtfdLjO3dJhLBQ=
X-Google-Smtp-Source: APXvYqzUrzPq8z+5S5wgPH9rHNax8EgybHYWfBGHH/GanlUjdpJDgOHPhX2wQCDFFbfUQkH63ILX/Q==
X-Received: by 2002:a37:4d03:: with SMTP id a3mr6622793qkb.265.1572543750199;
        Thu, 31 Oct 2019 10:42:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7359:: with SMTP id q25ls997285qtp.1.gmail; Thu, 31 Oct
 2019 10:42:29 -0700 (PDT)
X-Received: by 2002:aed:22c8:: with SMTP id q8mr7101584qtc.0.1572543749803;
        Thu, 31 Oct 2019 10:42:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572543749; cv=none;
        d=google.com; s=arc-20160816;
        b=z1aYzipCYrXZSksuAixlfj70KOUEjxXFBsORJPrd+9JktZxasUzRR0rNmyKVVIatK9
         gFlXKVhqtVIhcux5riLEb0k7qD++1wRhvWg6HP0lEaV5SdvKgDrzmioZL96yQVwfxwtV
         WL39n02JX6/kMZP8xPR06i2j0H+DnwL1Fi/WuLwS+/r6pK65vaky8xUETFMAeEHfWEmz
         y9X1DAYrN6SAOJ18KE2YbPrernspohHnXwkbIESuwM9ONZ6e6pJ8R3D6IFGKDNaM9wEN
         jL0KMCoikQQxPmFvLNsKgnOXs9GpDO122SfepqeF9ycF5ee6D7je58EH54TGg/2pL9pW
         TUbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SpMt9swBFV/X7pJxY11yJxvoU/jl5TYZqkYEwxVo1zk=;
        b=w44F/cL+0lTprN9bM+JNLTHj5xZRFAJdouBjhDaICYwRWiyDXmn7D4R0YueEwgFoTm
         rqgs4ViFVj9eEFIs54NFiXAUMHwvWqvb1HiF34LPx1H18fY1Ne42AgrSlFbWytx351yA
         RThoUi7tZdh8g+mVgaTheTg9037X50bLM2WokRWub+wne+UNOzoCcL/seko6utgUbhLx
         okcz0PCMxwD8kndWxZIquLBmWfxsVdLk/8+sPy+mLf8COESgXMl4zUxsU+tpSfecQCgl
         u2M+7OzV9VnrnE+5Xnwb2P1l75SJHdIWrWblReX4kD7MIBsDxNT/HOgwf+rqF+o/ukNF
         PIuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vyAZGLuQ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id z41si380915qtj.1.2019.10.31.10.42.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 10:42:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id 190so108040vss.8
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 10:42:29 -0700 (PDT)
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr3309159vsp.104.1572543748924;
 Thu, 31 Oct 2019 10:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
 <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com> <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
In-Reply-To: <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Oct 2019 10:42:17 -0700
Message-ID: <CABCJKueVVJNV2MibRkQGPbmpenK_b007kkHOoxfBHf1Wen2ENw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vyAZGLuQ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Oct 31, 2019 at 10:35 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Oct 31, 2019 at 10:27 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Thu, Oct 31, 2019 at 10:18 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > > +       ldr     x18, [x0, #96]
> > > > +       str     xzr, [x0, #96]
> > >
> > > How come we zero out x0+#96, but not for other offsets? Is this str necessary?
> >
> > It clears the shadow stack pointer from the sleep state buffer, which
> > is not strictly speaking necessary, but leaves one fewer place to find
> > it.
>
> That sounds like a good idea.  Consider adding comments or to the
> commit message so that the str doesn't get removed accidentally in the
> future.

Sure, I'll add a comment in the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueVVJNV2MibRkQGPbmpenK_b007kkHOoxfBHf1Wen2ENw%40mail.gmail.com.
