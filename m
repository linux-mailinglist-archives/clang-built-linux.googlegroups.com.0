Return-Path: <clang-built-linux+bncBDRZHGH43YJRBQO5ZLVAKGQEBNANFZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AFD8B8A3
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 14:36:18 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id q64sf687948ljq.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 05:36:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565699778; cv=pass;
        d=google.com; s=arc-20160816;
        b=nTL84TPgVwrrbUc/Es/gk7UXz22eWsRIWiG3D+vKoh7yWAMnsbsqoF8gJem3BL8Q76
         GMdPnIIzkGxp0Es6LgP6cjV+VotV54JFRh2oTZwuizZOh8FnkVUxDj2MmpHal642h6qJ
         fYOqZU2fd24kqSJiji3MdnM/g2/2V9Hqmy73VFwwbqiEGjbrTIoIM6R1YDDS2vNb1i+v
         rlrbs3Twdgor9viG0AQXtRT5jqGtUdV5rQDCVgdAOH+maYFnifC8zbjF2f4BWFdXZIiT
         il6FeoUJa1L4DeQs+CAhwCliuTeEa1Pc0CXmLtfGXwoknBGX0n8dpFEUxbX4hcDsTPOy
         HGNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DhWPwPVShW9FxB60NocW2jYklBeOaQpP+f7ZD/QF3uE=;
        b=bwfh8IFFsFMVITj3Bn+3k+rfZVdFeNjdhECSOBTWxDbk4s0ad7B6VxOS+Qiqk2ftVG
         gZzcFC3tIZtm3EuHpFSGVDBphf1J+mY9jV9HmPEMhAga8eXUOVPTdHeBrNpuRpctfsQ9
         I6StfPMIh2BoJpuM8fC0lOR3roZ9mIz7DNJN5I1fmXDonqthMiWbVn3d0OsGwMV6K+Cd
         OZNtYYVcCcd3hnBQ05TzFWa7aIdBXFofJm3qJwnH5XlExO6n9F2zJuQtLmfhHIFHIORx
         4drMuoerXLEYE+9VT6QZjousKOSVV0TQzKifBBVJVxHXOCzdpRn7ItUnW2Eto+5dKCsb
         GdXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lrApJRtm;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DhWPwPVShW9FxB60NocW2jYklBeOaQpP+f7ZD/QF3uE=;
        b=Hy6eqrZjrlLMLDgB8t4A3hJOrv7A+NQk/Ky7u8jcnhCbbMWe0861HAxiHO5ND4hWTq
         Jpla0cQJM0CNvlm+MNa/zPJcx22T/coWu7ApTCKKe220DEYmJh8kThBmtBsn+VHJQL5p
         HfBDFrIslVwsw+gFlCCSGTLOReu/xfyoKwCW8QIbRpq89PeDfHVKUECywNKSvCRg8LUW
         d/A9sAdFNXabjnWErHfRfVyCPtLfTNqVpXG04f+RcCMSoZVfyhgwQ/wHRk1H+/pX2U9p
         cZl9h/IYS8YCBRjD/L05RioN+jgo5417QhN6XpfWvV4Eej4zMfYDEz25Oui4yj4Mzz91
         IxsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DhWPwPVShW9FxB60NocW2jYklBeOaQpP+f7ZD/QF3uE=;
        b=cwUrZ2Tx22Ig0dZJeWFBl+lFt6d+tw+P/Y6sMOjGAy26o3Juj+sdfHt8hxuj/GBJXv
         /xu+DRab+K+1qGKmMmr6jiHTQbZL2cT4JSmF5TDTGDKbR1TUsXCRSVUkq7WcjTkDVV43
         8r9OESU57o5g7bhxND+vcilet6Asyt192WWbqlRnoEPgax8Egdv09dJ/OQvK9aKZtn6L
         4GsS+dBny/eX2DvQi7jb2YfVfo9wubra40pO4s5T3d7N9tVaNPIfoBu35wHk3whrxVq+
         YjuczLJ6EdefjEYHIcDhHtQKLW69GSdWovurwikPVAWwEbMfaibQr051vwJM64I8Pz2A
         SjOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DhWPwPVShW9FxB60NocW2jYklBeOaQpP+f7ZD/QF3uE=;
        b=q5d62uNJs0dkUJlfIeNuKlT0FiW6oUMUpWijTBMFwRB8Pxti1ONyLKDnpPS4MDT6BP
         MOiS7b32wuitgStQah1gkNLuYgDanaSXYwl39IJrlJi0BeV85RMKDC1qSn+b/GJrWvnM
         PO4icj3TXBiN9Awkx3bHtjm15j46Xkd/QzZKA5pkQg8YEhL6p/DgkpIh+LN4fknux26k
         BIAmzmPFxAhX086TZ3MtWqOqlR+abz0TG2Wvgg2wAD24E8s8EIOUrMOWZEFVfmzmjjiv
         Hvi/lEJlO/ZjFoCUg2r0dC7ISUhcHnaFKuoC17XjBW3Pfuenrq4Z41l7wjQBoEUPdIXd
         HHWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8nt2JvWqB+wPM4OHChk1I3+icx7WA95AaWbaqEsOBJaYO7JNH
	Snj/5ROgbsZtjhJJq89BUDc=
X-Google-Smtp-Source: APXvYqwcLSfXFwuV2Z+BHVeGEX/ViEryySMCQBzi9CXghhr8qu06P95xjJ+7qTHmVtLOlWpFsm5ZPA==
X-Received: by 2002:ac2:5336:: with SMTP id f22mr12650581lfh.180.1565699778023;
        Tue, 13 Aug 2019 05:36:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8c0c:: with SMTP id o12ls9181443lfd.12.gmail; Tue, 13
 Aug 2019 05:36:17 -0700 (PDT)
X-Received: by 2002:a05:6512:244:: with SMTP id b4mr23861236lfo.114.1565699777414;
        Tue, 13 Aug 2019 05:36:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565699777; cv=none;
        d=google.com; s=arc-20160816;
        b=gfUC9DBqSRxDLpbc1VcL7BdHdu9aEbuusZV7lKAKtyUNtzugVM3zPoHjfiNDmb59Ae
         TIQ1h1oxO8JxuftI74R5S319w4AENkZJFAtRZ1mD4zs1WWpVwkxKLdZEkSgvWySBxKCV
         DPwyAzrchfPvccr22wtZ/0DDA0LNqqK9gayvA8dc0QrGzWCfVpXqglbauxY+YZuoU+XT
         lE6q5QCwbyt1a0HBfTaDQ8dBnYG0HPv9SgV9gHoiUgec7qAGcpp3FpxxQCbjqGYaxpR4
         3HejBgbYwjleShbaY8MGx+JmmtluTZ2QD5kIIq6rr+plcGfGsY5rw8IJPgzPlkgfRWS+
         gdyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/4zbvSpEn2DpmCJ6tMtDBdGBohm95LMSJu2Rb3mH21k=;
        b=twmxMcVYGmpFhNhb85ZbZJVb65DJpl7pbGX9iRjioZexafv7ne0c3iWk1VK6p2Fav1
         SaxgRQyAUkl00HBPYzKmZQ86txB+gtXUTD1ncqsH+rgHIq8bzgRPyLoQw8JlgCJD1XfJ
         RMKVZzz75O0qQfX7ZfPe40fNvUewdrhVVn5WvLXgzy+OsfeAw0AgTsOt5l4g8e1a4Jpp
         ydIIFH3B0/mIM5avREG0JMB0mSkZofIVoWbpyb/Mz7ZS1HYnVhNbSWikHXWXF2Aecpy/
         aghq0DVvf1OkgRHxp6jUpU3hvVGP+r8ClOJMOHQ5f0ubfYi6hdk7X/movM1F0goZo4Yj
         JU4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lrApJRtm;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id f26si5097442lfp.5.2019.08.13.05.36.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:36:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id f9so2860946ljc.13
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 05:36:17 -0700 (PDT)
X-Received: by 2002:a2e:3a13:: with SMTP id h19mr21421766lja.220.1565699777265;
 Tue, 13 Aug 2019 05:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com> <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
In-Reply-To: <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 13 Aug 2019 14:36:06 +0200
Message-ID: <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Josh Poimboeuf <jpoimboe@redhat.com>, yhs@fb.com, 
	clang-built-linux@googlegroups.com, Catalin Marinas <catalin.marinas@arm.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Enrico Weigelt <info@metux.net>, 
	Suzuki K Poulose <suzuki.poulose@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, Shaokun Zhang <zhangshaokun@hisilicon.com>, 
	Alexios Zavras <alexios.zavras@intel.com>, Allison Randal <allison@lohutok.net>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lrApJRtm;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Aug 13, 2019 at 10:27 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Nick,
>
> On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> > GCC unescapes escaped string section names while Clang does not. Because
> > __section uses the `#` stringification operator for the section name, it
> > doesn't need to be escaped.
> >
> > This antipattern was found with:
> > $ grep -e __section\(\" -e __section__\(\" -r
> >
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/arm64/include/asm/cache.h     | 2 +-
> >  arch/arm64/kernel/smp_spin_table.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
>
> Does this fix a build issue, or is it just cosmetic or do we end up with
> duplicate sections or something else?

This should be cosmetic -- basically we are trying to move all users
of current available __attribute__s in compiler_attributes.h to the
__attr forms. I am also adding (slowly) new attributes that are
already used but we don't have them yet in __attr form.

> Happy to route it via arm64, just having trouble working out whether it's
> 5.3 material!

As you prefer! Those that are not taken by a maintainer I will pick up
and send via compiler-attributes.

I would go for 5.4, since there is no particular rush anyway.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z%2BdmOMe14qz%3Dwa6eFg%40mail.gmail.com.
