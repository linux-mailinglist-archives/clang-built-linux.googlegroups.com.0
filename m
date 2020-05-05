Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBV52Y32QKGQEUKAN2VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id EED8A1C5E5F
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 19:07:36 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id c3sf2354235plz.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 10:07:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588698455; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0KZ11ZMWFkpaDEJx8hg2a/GB852uchTSsnsgmQd1e0qdhPyq25AAQrGPQkzE77nf9
         Rh9F4sicg2u/RXCLKOGOq2bNZ1sgKqZWALVNSEqE7dPgXXVwwvLaqtX9OH0hovozNq3R
         cV2M49CBhR/3Vg5jSXjeav+l2LUUaostEGhLeZXUtZBO2UtLTUJG5JNQYUZcIpzP5/WP
         nsybiQyziijbymvXvgVLe/KkPIbMk7KO0biupx0sqFrVxtnxr506rFpmm+my30HEpIN5
         FNGWeOfv1tswr+IReQBtwwV10PWuAG7YTcBuwEr4VIL4QTk7FsVPoKsdMIvBsPoDQmAX
         sl0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GGmdRfgnwp8U3E4NkF+lgLBEIm7drqlWEzX1iemf++s=;
        b=QTE3DevZEaI/RF0+0IWguBV+CGscH5h6O6JzEU+fPbezbWAADCtPTaVQRgk/p1MqHK
         AKO5BmIXHCU2+hZ0TnOuyV9Lbonz3gSYV9s+bEi+ii7MXDjjU+HVx4wdyISVUtmBsxpn
         jHSgcoXggTvfO98ipkP/RFrcVNhGG/giBW96qi7DgP2nNPl9jIbADgAOiS+OMNC3OmHE
         wc7OAJntVQLz7o4k+rHJnhvlNhyhdzLeJ4Qs4slTEZ5KJWtkogfyixTw7Ynp7Zrtxf4p
         IImlBQlRMccnFOBzKbzo1etGSNNV5Nqv2TXyse0PrkvSORp7pxSZ0zeJE+UUpGMsijvx
         zIMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AgMhYAYI;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GGmdRfgnwp8U3E4NkF+lgLBEIm7drqlWEzX1iemf++s=;
        b=p6kfJ52E6Ra+of72xYkWTzaoNn7AxxbLeso4joENsieAiDoXO2/HDFuklJmJQb4P3C
         CDo9enzxq20ZlUOaQjUa++81+OeoHwLGJkqp5fv8fK0CdQpMQ2HJyogG3qKXfxzzatO5
         ElH7vmRJmRNuLPY7wQR54EgOa1Vi3N8alHX9AiEC1DB35DgbTiOQ4yaM2hGIr4O4siUZ
         Q2o0czHidDwalTe6W+Qb34X+TRFbx5dXD6qEciPcS6dT20LrT0gSGN6yCxpDgC1pC5pA
         hCmxHabiGrPxC6u0yGx6uptS/TDA8U/ev2lW1cdMnj/X5U2oCunjk4pOTnxZ/TlRaQGZ
         /9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GGmdRfgnwp8U3E4NkF+lgLBEIm7drqlWEzX1iemf++s=;
        b=fTOlfZQ+obwdguOh/iuAN/bVYaHt7mW6vJQ4G0uqTcwXGcM5AVCSSwJ2YE11L+4sQo
         19rdOwH4kbRIzVy17i4JuLTs7UISXD5Z9o5h+o4xfGjJLxI7a/isbMMIkVsxkjd+YguC
         z4iMZa6VM51254CzsBTvPkrMVGgvabHBy2W06y0o1zCtS0W5sr4hYRLVkcv97J2Ef29D
         rxEE1d6krAV02HGmCUACIVLq75OSefd1fZBYlbdFE7+Nyo7amorHVTLjR2jiUxIhfw8m
         05BE0ZtL3ipp6/heVe8Ar33qVyBZEVtzBmkYhUoremaSS4ZluK+ci8as7zvwAWNmutyb
         lRqQ==
X-Gm-Message-State: AGi0Pub5jfeICbgPpFXo0mbx0hFQoCCGs4k/VIQMzNwyZNJG4J+yvxd7
	S8CJVInofXvTCDLl0L0F/hQ=
X-Google-Smtp-Source: APiQypJ7oe4rbrU7kcoxKWbRCiiu+4GHY2+qWMJeZWQGlCGi7gn5+U5+LO/6t/xoLeWAYi8aqp2Fhw==
X-Received: by 2002:a17:902:9882:: with SMTP id s2mr3992512plp.184.1588698455663;
        Tue, 05 May 2020 10:07:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d68d:: with SMTP id v13ls103228ply.2.gmail; Tue, 05
 May 2020 10:07:35 -0700 (PDT)
X-Received: by 2002:a17:902:40a:: with SMTP id 10mr3736716ple.183.1588698455171;
        Tue, 05 May 2020 10:07:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588698455; cv=none;
        d=google.com; s=arc-20160816;
        b=inQhgUv9m0yzuujYth+2FesgYoCuZu+U8GL45yTdGhgy3x1Ilg7gQ0Ht9Wk4LbP+2K
         Gz/mP4LQ4CezdVJEdNZ5XeoLldGAnNL6HIUK9w2kysUuAha0WFJCHaDdIm+UmnPQbUuN
         WRa/ZcndyoceKI1nONQ3frfogT1k1YbZXSv0k0oJ7fqNpkOm46R7d7NbhFvSav0hSAcx
         BXmJApdK0h+bT29FmIB6AqRRSzUmV++gYhIIA691BcaQx06AJDA2txUmiNHFGD59Ef87
         7pdQSZatewJtSfzsjd3kzKb0lxvbdEd+2nN2q0O7LjkjM1M+/OQbqGXBngViIw/X3rpe
         dQkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SwCBEJLwe7+6OV63AZ4GOUwDgwYhujIY1KxrxYevf8k=;
        b=PhUy0zgqGX8wLu5bPWZy6aVvaqhdra+qmQ+psseOXCQkrAq2dVnVX4M2toJ5ynyKME
         TzjzFcu1DSjYfpV7T2D1nUIXE2JXcL5c5vOm4fVBThxsLdzTLkIoh25Msae4XegNjY3k
         Ysx09DKd0BYMvr+KbhJ0Y+gTVMegrI9w76p9xKizekGl+AKtSw9USokzOO8jxiRoiiV4
         hX/gxYnTo37mZlZ99xpeZFQ12MgJv8wgssVbsBAwRX7Wenc+oMNYsN5VpoguUh5wJ61t
         OI2boa5f8IdE71pZvlc5ozYElQOlM0oReI8QRSypBo5TT1z1NcdhSoKGJ77aRY48S+lN
         S0tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AgMhYAYI;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id mm20si451699pjb.3.2020.05.05.10.07.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 10:07:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id x10so2627155oie.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 10:07:35 -0700 (PDT)
X-Received: by 2002:aca:c646:: with SMTP id w67mr3335582oif.70.1588698454453;
 Tue, 05 May 2020 10:07:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142341.1096942-1-arnd@arndb.de> <CANpmjNMtGy6YK8zuqf0dmkykZMt=qkxkZrZNEKde1nbw84ZLkg@mail.gmail.com>
 <CACT4Y+Zpp=+JJedhMpunuUh832eJFu+af-r8631Ar0kE2nv72A@mail.gmail.com>
 <CAK8P3a23XzLhZQNuFbeQhaSNru1abPwXV_mXR_P6N6Dvxm6jFw@mail.gmail.com>
 <CANpmjNOE+GUG7O=WaJKQg6rdUOn+YMBhdS8enNWkD_8mdtaSBQ@mail.gmail.com> <CAK8P3a36w+QFqik_sHS3T5+_DZ7XP9Y5BYqT72pnjC67T9Sn3Q@mail.gmail.com>
In-Reply-To: <CAK8P3a36w+QFqik_sHS3T5+_DZ7XP9Y5BYqT72pnjC67T9Sn3Q@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 19:07:22 +0200
Message-ID: <CANpmjNPCZ2r9V7t50_yy+F_-roBWJdiQWgmvvcqTFxzdzOwKhg@mail.gmail.com>
Subject: Re: [PATCH] ubsan, kcsan: don't combine sanitizer with kcov
To: Arnd Bergmann <arnd@arndb.de>
Cc: Dmitry Vyukov <dvyukov@google.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Kees Cook <keescook@chromium.org>, Andrey Konovalov <andreyknvl@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Thomas Gleixner <tglx@linutronix.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AgMhYAYI;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 5 May 2020 at 17:29, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, May 5, 2020 at 5:20 PM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
>
> > > --- a/lib/Kconfig.kcsan
> > > +++ b/lib/Kconfig.kcsan
> > > @@ -5,7 +5,7 @@ config HAVE_ARCH_KCSAN
> > >
> > >  menuconfig KCSAN
> > >         bool "KCSAN: dynamic data race detector"
> > > -       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
> > > +       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !(KCOV
> > > && CC_IS_CLANG)
> >
> > I wonder if we can just add this:  depends on !(KCOV &&
> > !$(cc-option,-Werror -fsanitize=thread -fsanitize-coverage=trace-pc))
> >
> > Similarly for UBSAN.
> >
> > That way, once Clang supports this combination, we don't need another
> > patch to fix it.
>
> Good idea. It probably get a little more complicated because kcov uses
> different flags depending on other options:
>
> kcov-flags-$(CONFIG_CC_HAS_SANCOV_TRACE_PC)     += -fsanitize-coverage=trace-pc
> kcov-flags-$(CONFIG_KCOV_ENABLE_COMPARISONS)    += -fsanitize-coverage=trace-cmp
> kcov-flags-$(CONFIG_GCC_PLUGIN_SANCOV)          +=
> -fplugin=$(objtree)/scripts/gcc-plugins/sancov_plugin.so
>
> Do you have any preference on whether we should make KCSAN or KCOV
> conditional in this case? It may be easier to move the compiletime check
> into CONFIG_KCOV_ENABLE_COMPARISONS and
> CONFIG_CC_HAS_SANCOV_TRACE_PC.

Whichever is easier. I think if we have a config that tries to set
both, but then one gets silently disabled, it likely already breaks
the usecase. It'd be nice if there was a way to warn about only one
being selected so that a developer can then go back and choose the one
they're most interested in (or change compiler).

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPCZ2r9V7t50_yy%2BF_-roBWJdiQWgmvvcqTFxzdzOwKhg%40mail.gmail.com.
