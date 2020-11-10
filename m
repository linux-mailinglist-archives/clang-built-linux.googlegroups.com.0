Return-Path: <clang-built-linux+bncBCIO53XE7YHBBINUVT6QKGQE4GC66PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DAA2AE3BF
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:54:27 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id b11sf212077pfl.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:54:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605048866; cv=pass;
        d=google.com; s=arc-20160816;
        b=ovoOwsR8Azl9F6n4sGdcasmqGPQBEOy1nVxJyfJHXVdLOdRlauNk7RxP5J/FkoivWk
         Zyn53vVncCHkpesB5BHgJgLM9+xgMdfmiayYfP1xl/nFifi1EzfRamNilslZR81rbVhi
         2/RmA+idv8IGsFM8/AIMEps8Q8MySyUlk/PG2gr02YxT2RWD5e/nrnD7wwLUPlDurlLW
         8CnQNQNlXL9FGW8DKKuH5GlNdTq6VpEea42LcuueVOTH9JWSWsfQmAf0k+uAGCsMTSaU
         wg9eyab78+GkY1sM6b4bEBtIbOpeFA5quHoba1hNUL9X44pbaBTjUgAmAzVjCwYkxRFM
         TsPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=91C7aYC1WxLa3/YAgWg2JFzxMlXMFR1YVYeB35h89gg=;
        b=G7KEMkiM7IJB2g96Da3LupRX2Gz1375q6Tp/5bL+R3y2jiVMvIC8OgZDffe4kBO8l5
         41hzoqc3/Cc3T9urdczWyTJ9nElw+zwzvgQd1d70Rr2qV6786lYg75cb2sBXeHxeQOk7
         76TvNv69e348/DQBfcUM/zwFp+bqhB9Qppbu5xbHMRc3JEkzWFu9M5mjD0MEZ1mQmYEK
         afnJIdgGfr54xfSp3m7xpJT37gcXFDe6lEpDf+HQfHb6ZuiMfFvXAhAjuG1SQ+TNGqoI
         1g0CNZe4cGo8ay4UMahYX4eIHg517d1bhO2s9fg4BMnkHOrwJ2wH2tBhEEOXld0dF1cJ
         Pg3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iiVm82Cd;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=91C7aYC1WxLa3/YAgWg2JFzxMlXMFR1YVYeB35h89gg=;
        b=G5fYtxXK+LYlZAB0mK5xq/FJD7rNosP0bHY9VFKAGScBe+Xq9ENqSM1fU9YdTgqUy1
         IjpdlaK8adr+RiKe7+/bxxZuaDYHK/OqMTAZ1U/ncbu0qiD1AsB15aE5dOl3r0djywjt
         Szv8ZG6z/bCcXrxzMyog2ekmd17zlsesEILfwbG278qm1nCTxxuT8YRwQwIh5yOsIDf/
         fkRj+SZMkaaCurhZC1ifrXJkSffu5dcwUcD7byyTDG/ZBAHqW9Rl68iBtcask4OGiTa/
         2KMQXSGnQJRuymAxRWS593uieJcgk4BejjBpqn3+Ki2KfuWQSk8FYE/TUz/nl2OG5A+j
         p4Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=91C7aYC1WxLa3/YAgWg2JFzxMlXMFR1YVYeB35h89gg=;
        b=XvkLF7nKBpRjNSRNkVl0t31Lz0k7uz10n73Dp7O02Nz3CqsB2kVZz6x297UaLoiC10
         o2PdhdmymvZofaY0hp6o7+n6J7KxCIXXKjkoi+zPSE0t46DY5YyOc2Mhw0sXon7LNFs0
         KkE4tKD1YEP8FZTsgykhkEOVZMZF+3KHW3tvnKRVVwgZz4fdNnTL/QXrg1Ls+rgJyFQo
         Yl1jzIxdyjV1v5f289M3hNgrbPrfFETE9Jc32a4sUS8QbV2Zo2zLcmplIbDkwzhCxxbl
         ufC+nqZmX8P1AZwm70IZhGpwKoQqcOSPUO1QHTu+AqXPNoREPzeZ+MhWzDX++pqkowC3
         6Qxg==
X-Gm-Message-State: AOAM533P1+iwxJy0P8t710cup0JtPTEoBkehkJliUwjTqy9uN7oZLylo
	Mu8UCACwsz7N3HOykhITBQA=
X-Google-Smtp-Source: ABdhPJxnxTWUx//5GeT0eUASaeMfatwnnvV78mXdo0fcSGxwpaaJAMnXokTUwoEej+ufbmEP+kV9wQ==
X-Received: by 2002:a63:5d05:: with SMTP id r5mr16893763pgb.442.1605048865985;
        Tue, 10 Nov 2020 14:54:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls5209861pfc.0.gmail; Tue, 10 Nov
 2020 14:54:25 -0800 (PST)
X-Received: by 2002:aa7:8481:0:b029:18b:f647:45f7 with SMTP id u1-20020aa784810000b029018bf64745f7mr13237895pfn.58.1605048865335;
        Tue, 10 Nov 2020 14:54:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605048865; cv=none;
        d=google.com; s=arc-20160816;
        b=IXSEyeL707CqLjnRrnJ5dQZLGToPGRxa3M3xZ0hR1v3yrYOQVo2k6PBe+7WTNsuaNn
         XNQ+Yc7c+N7bokCG5sryLWzBwng33XLj98/xmG8MnJP/wvRdlV/wV8qCKY8RVhWLPGyU
         HPJiz7o4MqRbalskZTd+hjMMZKsoTL1Qra463dW2TggTPzh9/bHzrvL15d6/TjSRZCpM
         jIhSt39yE6QzJ5Sf5CFTh7owzauTAUqFJWIUhqB7OUHJ4+2UiYehmtShcgj6v+qcgAxm
         rrNIVfIAGyc07zgHeY+7fGctgYvKRaUlqhhfsoH+TvH4kP2LEvncNTyUyD3YkR0fF0pD
         O0MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=kZBhzUj2Y7GYazkoiwLmVUtJfQQKiQzBUyUc3hTXKBs=;
        b=ZYlxZXTO2bP4Uwj2akHbzi6bv9r9pn6MltKkfMaBW9fxmj5uOaasmBfcxHpPLdEZFF
         zHqc9VCRfw4gF7OgSsO48QYd4PDa8v+j4On2sQdFbN7dM9qhbB2kZTvl2IoIwtsmFD3F
         CWFpS0sW4DGYDJ7qay1wuSG1qb4PUNPNBjtgm9F/V5Y8tuiv0cw/+j6QMLQEFiSQlP00
         RQ4Njafj3iVdJmEvxCW0p38/aEIcbaerAOxZq+wsO/9DcKhvBQa+OSf7NMQju8Y5uj7H
         6Ko20K34MoIiJQbepQZUXh4pny3b39xdlilzx0biL8iXEXaEcYlMNXb+plwgG3GvmOi8
         E2qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iiVm82Cd;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id i4si363048pjj.2.2020.11.10.14.54.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 14:54:25 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 11so13300258qkd.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 14:54:25 -0800 (PST)
X-Received: by 2002:a37:9f14:: with SMTP id i20mr4165418qke.137.1605048864135;
        Tue, 10 Nov 2020 14:54:24 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y82sm218959qkb.129.2020.11.10.14.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 14:54:23 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 10 Nov 2020 17:54:21 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Adrian Ratiu <adrian.ratiu@collabora.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	LKML <linux-kernel@vger.kernel.org>,
	Collabora Kernel ML <kernel@collabora.com>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201110225421.GA29900@rani.riverdale.lan>
References: <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
 <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
 <20201110221511.GA1373528@rani.riverdale.lan>
 <CAKwvOd=NQ==umC+N_Sgji5HCCFTRARh4jWiB3DaBfV6jDd5cRg@mail.gmail.com>
 <CAKwvOdmsCY8Hb6t8t9jW5DKCZKbja27bGufO=tw3+-UuTTFBOQ@mail.gmail.com>
 <CAKwvOd=6nPUvUY6XJULmkZywHJG2kfu46h7=Zm18j9O30ovdpw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=6nPUvUY6XJULmkZywHJG2kfu46h7=Zm18j9O30ovdpw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iiVm82Cd;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Nov 10, 2020 at 02:39:59PM -0800, Nick Desaulniers wrote:
> On Tue, Nov 10, 2020 at 2:39 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Nov 10, 2020 at 2:36 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Nov 10, 2020 at 2:15 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Tue, Nov 10, 2020 at 01:41:17PM -0800, Nick Desaulniers wrote:
> > > > > On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > > > >
> > > > > > On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> > > > > > wrote:
> > > > > > > +#pragma clang loop vectorize(enable)
> > > > > > >         do {
> > > > > > >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^=
> > > > > > >                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
> > > > > > > ``` seems to generate the vectorized code.
> > > > > > >
> > > > > > > Why don't we find a way to make those pragma's more toolchain
> > > > > > > portable, rather than open coding them like I have above rather
> > > > > > > than this series?
> > > > > >
> > > > > > Hi again Nick,
> > > > > >
> > > > > > How did you verify the above pragmas generate correct vectorized
> > > > > > code?  Have you tested this specific use case?
> > > > >
> > > > > I read the disassembly before and after my suggested use of pragmas;
> > > > > look for vld/vstr.  You can also add -Rpass-missed=loop-vectorize to
> > > > > CFLAGS_xor-neon.o in arch/arm/lib/Makefile and rebuild
> > > > > arch/arm/lib/xor-neon.o with CONFIG_BTRFS enabled.
> > > > >
> > > >
> > > > https://godbolt.org/z/1oo9M6
> > > >
> > > > With the __restrict__ keywords added, clang seems to vectorize the loop,
> > > > but still reports that vectorization wasn't beneficial -- any idea
> > > > what's going on?
> >
> > Anyways, it's not safe to make that change in the kernel unless you
> > can guarantee that callers of these routines do not alias or overlap.
> 
> s/callers/parameters passed by callers/
> 

Yep, but that seems likely, it doesn't seem like the function would do
anything useful if the destination overlapped one of the sources. The
kernel just doesn't seem to make use of the restrict keyword.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110225421.GA29900%40rani.riverdale.lan.
