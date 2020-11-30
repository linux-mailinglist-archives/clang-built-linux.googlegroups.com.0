Return-Path: <clang-built-linux+bncBCS7XUWOUULBBL5LSX7AKGQEMHNG5WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3AE2C8F1F
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 21:27:28 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id z13sf8752106wrm.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:27:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606768048; cv=pass;
        d=google.com; s=arc-20160816;
        b=FwOw5ZlzWjcaPwg3KKe8wRXqACiBOq9Dmx864TjkjCuDz5FhmKa/tjq93kr5ZXDOIt
         wDdoK92jef13t9/18H8lyiyTZ8HBcoOllEWOTIIbHug2ZViFH0SFFZuturWbj22TI2zr
         RWCOhZJS/8cEQx528KBNj9UpS1E5gJ+quWNWjV4Ic3N8vv3Y9Vmps1usrMofrZq8SDQ9
         1AOai9D0rZcR/WuFqYtPSjSZtpsoxRZMpffZofzcVmYPkypgYr7227OixIefIUe941a4
         NVHDQJnY2l0DsUJBGnYLKRRdkG+TQFSZyObSW1KmBuziF6Qk8sNBOf21Re0IIYXuGcdm
         gWtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=keL9SC7SiCgQjd/EyGna5CkKrS2+izjMVzI0oWf1tK0=;
        b=iaEp8bJF2n2+Xt6NJpnq4NiRjsGwQBt5+k7c9OQCzGNs6iZQnq1ztq9VB63CzMbXPE
         NBkQtVmHth1K9Y29DHW3cjayQovmXRT3vPJYAwpc09PJTBhPB8tloAcn8Thyisau2A/x
         W/KDPjL9wu+pXhVGjKA+x/k+m12QhgVZhRuPBfMdlA4z1UMC2MwDTTH2ehBDUCTLroRM
         nuaalLX30afrggX/ldXuw0e1TEhD1cAiebXhjNcbQLAjNSLh5VIuC8+I5k13BhilQ/uz
         w+cFEiLTM0LZMYOsWpTY53R1vHD5p/8jQ9Io9OPe+IeBUgtggF/7cBi02v8GQDWz3jOm
         fI0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RgBXm8NC;
       spf=pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=keL9SC7SiCgQjd/EyGna5CkKrS2+izjMVzI0oWf1tK0=;
        b=PG17Gczmz2+9If3wdUCBVJTugBSiwliD4mrXOMQ2bq1NfaT4KzdhyAd2/AUndpPBdS
         GYu6qwVHoVp82rZphvHCUnAlafqE2uEuUYb6aqPvDhCUzAvmuiuEm3WbMM9PsQL5X8C9
         KZXRcsN0tAFhFgR4tpUsmuUeIzSwbccp/NurRVlVoLN/ov+lJ15RFUL1z6CtxcGXEWBA
         TRPVdk3spLuGIZ0kAgNuHHYR7/v5jpDyqVsPyeENOKuyrvUj1yjCVVhcCsQVphMz60rO
         UCToGiPN4HGuI/c+lEFblAEIWJOjqcpYUyJGYgvFZnFajj/YbJxEb7vsEyowgDXUYjSm
         b3Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=keL9SC7SiCgQjd/EyGna5CkKrS2+izjMVzI0oWf1tK0=;
        b=uI/jYGmhG/qjl5G/KjwyjUNPzBgM2OdeR+rO0k0DgKKpFE5tdLCha/WXDxMLVidarp
         oFvm/dahD5yI7UH1oaSRVPQU4CWgFgJgUuFwSsh4G1DuKyzTtVw5VejhZNkdhjv0sV4E
         ZKR0j65gFcQsYml9moo9+C7uxCb6HqH/Gsx+WDoBZtJt/J/W+wiFpMzcesHj+yhEchbA
         BgSf03mHEQa67g+RL/kkYQj2alHQpAv1UuDvSuLs6XByRFTyZbH7dHiAjsJ40fj3/duH
         wnSPj1g0zCYP8iAVXGZnJ/Map3+OQMMv1wZk7hi9KHIb03QVWu/2K9d1B6BHM0K5LOlS
         7iBg==
X-Gm-Message-State: AOAM531Bkt/f5CSKiQC3bZLnjjlE42ZuNr6QnPPUgHh2UdxVhwz2h/ya
	GtCqjj3MBB9Bvc3UICXWaYo=
X-Google-Smtp-Source: ABdhPJyAtF5vyhWlz9aJJQnGA7JwGMWTz01z8bxUJdhee/P71+pRR/w9rTWDR0cpwAhbyBsf/UppgQ==
X-Received: by 2002:adf:f40a:: with SMTP id g10mr30732817wro.58.1606768048070;
        Mon, 30 Nov 2020 12:27:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c5d2:: with SMTP id n18ls171511wmk.0.gmail; Mon, 30 Nov
 2020 12:27:27 -0800 (PST)
X-Received: by 2002:a7b:c154:: with SMTP id z20mr626314wmi.160.1606768047296;
        Mon, 30 Nov 2020 12:27:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606768047; cv=none;
        d=google.com; s=arc-20160816;
        b=hFK16OyHXm/Qc8dh+Us5ClQWByeZ5LIL05y9TJh6IMirDKmiHuw2WneqUyCIPfBDhj
         nYz0VpDF/T2fArLhUcBHQo9SUEhwmhbGvW6myP7RtjfdgFW94JCxUVhG49lYbKfbIkAb
         NJCPBEQo8Wx4afLBkbgF3GuTCT9K6cBb6/PDFQr3QubrelCA/Rq9/LBVSr7QX6MyPele
         cLfgYy4yvWPaudhq7BrYOqpOWXDWOp2nOQAzzgzZl84iKJM7g2aXgMvQdqRHhzx8TLt4
         kN+kwezvJ63tuVmGJcFZR3kLuenyOeMScdWitmzQXxjp62r0l746KtUAkypHuXlhYPS1
         QbRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8Xk0oYhlswqryaWdafHrq35t1o1ARd6p1Zczec+BswM=;
        b=NJx2bSpiAjxTNgQFTwB/ciMJqr6AtwL2j4quHVx0yTdqx6bU2dKXgY8I/QQGus3I1O
         e4NSln+/R6JoBftZFlsNZWg94WLujEmayTOaodY9V7VLEsEpZHignRqOl5UgF+XzliEB
         9YQ98UIwezqa2Lrx5SrCZvAcdb1lfFGT71TgRkXDJRahreoqAA8TFSNIH9og8VxKZxzJ
         oKMlpduD0847Iwzxljxck+eACENQlRzFLmw9KfwoQmQKDVgSMkvQSmtNc9AKh5QfoSbr
         DHFuDdbJogAFG4XDh1b7yGXdi0cU4jZfhuZ2YslJ/XvYvFhhVfxgNgwpPojstDOXjDwA
         mkUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RgBXm8NC;
       spf=pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 6si424059wrg.2.2020.11.30.12.27.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 12:27:27 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id j10so20075538lja.5
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 12:27:27 -0800 (PST)
X-Received: by 2002:a2e:a404:: with SMTP id p4mr10657312ljn.420.1606768046555;
 Mon, 30 Nov 2020 12:27:26 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com>
 <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com>
In-Reply-To: <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 12:27:14 -0800
Message-ID: <CAFP8O3Ki9HoqcV450fn29fBOWAbmuGAdB6USLz8pGsW4Vzf7sg@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RgBXm8NC;       spf=pass
 (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::244
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Nov 30, 2020 at 10:05 AM Masahiro Yamada <masahiroy@kernel.org> wro=
te:
>
> On Wed, Nov 4, 2020 at 9:53 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > way that's forward compatible with existing configs, and makes adding
> > future versions more straightforward.
> >
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile          | 14 ++++++++------
> >  lib/Kconfig.debug | 19 +++++++++++++++----
> >  2 files changed, 23 insertions(+), 10 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 75b1a3dcbf30..e23786a4c1c7 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -826,12 +826,14 @@ else
> >  DEBUG_CFLAGS   +=3D -g
> >  endif
> >
> > -ifndef LLVM_IAS
> > -KBUILD_AFLAGS  +=3D -Wa,-gdwarf-2
> > -endif
> > -
> > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > -DEBUG_CFLAGS   +=3D -gdwarf-4
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) :=3D 2
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
> > +DEBUG_CFLAGS   +=3D -gdwarf-$(dwarf-version-y)
> > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > +dwarf-aflag    :=3D $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-versio=
n-y))
> > +DEBUG_CFLAGS   +=3D $(dwarf-aflag)
>
> This changes the behavior.
>
> For the Dwarf-2 case,
>
> Previously, -gdwarf-2 was passed to $(CC),
> so the debug info was generated by gcc.
>
> Now, -Wa,-gdwarf-2 is passed to $(CC).
> -gdwarf-2 is handled by GNU as.
> So, the source info points to /tmp/<hash>.s
> instead of the original .c file.
>
>
>
> Handling the Dwarf capability is very complicated.
>
> Are you still working for v3?
>
>
>
> > +KBUILD_AFLAGS  +=3D $(dwarf-aflag)
> >  endif
> >
> >  ifdef CONFIG_DEBUG_INFO_REDUCED
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index 83a860126897..03c494eefabd 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -256,14 +256,25 @@ config DEBUG_INFO_SPLIT
> >           to know about the .dwo files and include them.
> >           Incompatible with older versions of ccache.
> >
> > +choice
> > +       prompt "DWARF version"
> > +       help
> > +         Which version of DWARF debug info to emit.
> > +
> > +config DEBUG_INFO_DWARF2
> > +       bool "Generate DWARF v2 debuginfo"
> > +       help
> > +         Generate DWARF v2 debug info.
> > +
> >  config DEBUG_INFO_DWARF4
> >         bool "Generate dwarf4 debuginfo"
> >         depends on $(cc-option,-gdwarf-4)
> >         help
> > -         Generate dwarf4 debug info. This requires recent versions
> > -         of gcc and gdb. It makes the debug information larger.
> > -         But it significantly improves the success of resolving
> > -         variables in gdb on optimized code.
> > +         Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb =
7.0+.
> > +         It makes the debug information larger, but it significantly
> > +         improves the success of resolving variables in gdb on optimiz=
ed code.
> > +
> > +endchoice # "DWARF version"
> >
> >  config DEBUG_INFO_BTF
> >         bool "Generate BTF typeinfo"
> > --
> > 2.29.1.341.ge80a0c044ae-goog


We can bump -Wa,-gdwarf-2 to -Wa,-gdwarf-3 since GNU actually emits
DWARF v3 DW_AT_ranges (see
https://sourceware.org/bugzilla/show_bug.cgi?id=3D26850 )
This can avoid the `warning: DWARF2 only supports one section per
compilation unit` warning for Clang.

Deleting -Wa,-gdwarf-2 also sounds good to me if people can verify
their debugging experience is not regressed (I believe it is useless).


--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3Ki9HoqcV450fn29fBOWAbmuGAdB6USLz8pGsW4Vzf7sg%40mai=
l.gmail.com.
