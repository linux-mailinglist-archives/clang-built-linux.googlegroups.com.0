Return-Path: <clang-built-linux+bncBCIO53XE7YHBBMFHXD4AKGQETPIPL7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C97FB21FE72
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:21:05 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id s8sf13267655pgs.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:21:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594758064; cv=pass;
        d=google.com; s=arc-20160816;
        b=rCTIAV8/HF+HR0FE9YuV1YXsWplY00pw+4LvVHABIrjbeUaC5r8cqRPim/bbeqPI2E
         Be0ZQ9sUe2wlnwxmuUmhj0Yy/DkGyd3IhYue12PvSCtbUKnsGqTOqcVoKI8eozFIcISN
         czbzvaK5tsD9ATg7WoKB8lQEWHh8Sr8JjA952I8j8IhU1lmIML9hr+M+pZRGfJ1h6exf
         vYQs4SJeF/0Rc+01mvOpgBsIwgvFmOsICwYXOx6ks085yJSSniSjnVKVW52oh42erA3z
         CKpCllTdfnI9+zzJlyr6Yq0Rcj383hqE/lzCXYdOfCdhjn4Y8qxywAPXNRKM4D9aBpFu
         BMoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=9F25Mu6z/PiVEjlhSZT7e/0G+cAg1Kn42pv88nKcXvk=;
        b=MZ/dzJ82dLYfUY9tNKic2iXEBJr1wsCZFqIdHb2c8RmQR8lKa3ySkt6u/miakD9HLU
         6IMkbPt5hweUDDecOiozLktaGlMPdGV95I4qj9hEiDq33JUgprhUSyKnrEJNGwo6Wr9a
         zoDp+QSqAvpFlTdDrvj5T7DHIEfIYx7yYb5VWapm5i707yHKHlwBH5z83R07go3Q0HsX
         wNCkN3IzDBUi38+NjFxrbmZCpMbdS7y5hTJjPHxfwLrvoS0/wiz2GoPFZLOYjwRg4Luo
         KJztZWsfegiT6AngREZwMQFWb5aL++wb6gsWaOz4Gi41uvtN95vqBPyUy/AJTLHxzL+I
         V7kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aA8lDs80;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9F25Mu6z/PiVEjlhSZT7e/0G+cAg1Kn42pv88nKcXvk=;
        b=mZwg6lr++G7xCK9jAh1xve/6TYhIszlBaIpXSB6GwrtD1vUUmAN1kEORU6f6/rfGaC
         51TjZbdMPVs3OUwBlQh7IJQRl71m3iLzYlG6vAFaMAbN42d9oqutwriyk9vD1PA48OqR
         ciA/q95cn/Zq9F0W40ro3K3VJ9zMUVWEcz+OESk7lia+ityjnNzS7Iok+3eG7wWYjm0d
         6USuEbDngPpEJKaKRsoBRyUCcJi5FbiqN1R+QnRUHT8UBjMs50mlPFDuDcRei9lfgjuR
         Oz9KvfKXZvsr+jOQSHmZDg4ie5yb7OFEwshkHna8CEQ/rugSq4alddhRcgEwlNSm949t
         0ldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9F25Mu6z/PiVEjlhSZT7e/0G+cAg1Kn42pv88nKcXvk=;
        b=i1Wr8U7hmuH68qE/dkToO+37JKvfAzhXcD5Z/8/aGxn6nOLBkaBtoyJqRIqt0dr4C4
         cj0P+Q1rtlKSADHrtZ9Qt4zQpVxUXpYuzlSx8JE2IOkp757d4kbO+j2IIvVUX6tUEVyB
         hfBKXZZkADCtaL9EvvVzyQKLnog33VrWgZJkZGTDCphP2GqviPEHMese72/YCdqxPYDK
         zP8Z2Z484fiRtkjo6fQbCGiG9ZMicDteo21ZANXxX2ljOfdRMEY4dD2IuJFp/Kh+j3G4
         1kvORl5IfgiAxhwriKPB/zHmiCf26xH7QzvM9okqFSRsuEjVoLpM/d10Dxewa4ajjo+A
         F51A==
X-Gm-Message-State: AOAM530jK886qghRrr/2RK3GNKQ6Bq0KPTEwNAZb+hjYDS++Yd4QJG9H
	C+aPZjIefLsjBa1XI3I/QDc=
X-Google-Smtp-Source: ABdhPJwUu9hs7AXdNuB7zn5W/q8Dt1PHV0xyGHb6PDD2Du7g0YXHwCiXfkaYNDsEN0P4Y3KrLtUj4g==
X-Received: by 2002:a17:902:6181:: with SMTP id u1mr5241527plj.205.1594758064537;
        Tue, 14 Jul 2020 13:21:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9798:: with SMTP id o24ls6879424pfp.0.gmail; Tue, 14 Jul
 2020 13:21:04 -0700 (PDT)
X-Received: by 2002:a63:b50e:: with SMTP id y14mr4851108pge.416.1594758064078;
        Tue, 14 Jul 2020 13:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594758064; cv=none;
        d=google.com; s=arc-20160816;
        b=M8OyfY8xN6DYMlW/QKq83nztx39Cuu38/7JZjodjA4J3ymwrEX30tNtHX+iX/dUIXl
         3eXmHCu1wfPQZJ0aU4I9hN2wpxgtUb0B2LikTcAwlpVBs7AMRJ+0YihtxknObrFIoXtr
         aIIxF6hnJ6Qui+uBtSPfW74VSgxxGj3G16gg8dLtHzwJGqofublQVVD+ub3PbLpvmI2+
         dj3hPadVYlWAc2aib2fdL64wFT2pkxIcKLKgAyIdlwaUcx0ZVlvR4TyHTyGmuvJcmNkJ
         XrpZbuNX30PcuTN+9Z6kZTXPfLvKi0yexRvvI4l5SLVOABN0DL/NdSGZOtTeBjMryjwo
         vbuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=dNqqoUWNmRxmdTmC2H241F4+woK6j4Lxw/jD+n5ASO0=;
        b=yNnM0fmoa19cFaWxn42x8i88qOU/W4hpz6kP6Vj02Emloezw44IXTTX9I0yY52vMCZ
         2LQ8EuMYd8u7cZJU8ReRjJcvTwR+hN5o2dDkgZ6re2+I9OfOWIlvQLPsAYmOOsNs/5s5
         DmCE3Uis6yFBSLrJTDYdAJVHWMcw6uc4K2qHtbGOwzOaP9IzRNtfVeJlfi/fzlzv9h4I
         miJBkYBq9bZhjGHVtJcTzp64SpCSGWPTEMsEAZhb6LTE3mQ/y0DjFkuZjkHWighShQgO
         Rh+svbRUydeAOO+OkRoLA7TW0TqPaisGFOOyY1Aiga31G/qJ6YjM8ihMjq/w0U59rMsO
         7nWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aA8lDs80;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id ob1si132084pjb.1.2020.07.14.13.21.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id dm12so8115023qvb.9
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:21:04 -0700 (PDT)
X-Received: by 2002:a0c:f842:: with SMTP id g2mr6506941qvo.181.1594758063273;
        Tue, 14 Jul 2020 13:21:03 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id x36sm45154qtb.78.2020.07.14.13.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 13:21:02 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 16:21:00 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714202100.GB902932@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan>
 <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan>
 <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aA8lDs80;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41
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

On Tue, Jul 14, 2020 at 10:08:04PM +0200, Sedat Dilek wrote:
> > >
> > > In any case, I think the right fix here would be to add -pie and
> > > --no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.
> >
> > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> >
> 
> We will need the "ifndef CONFIG_LD_IS_LLD" as -r and -pie cannot be
> used together.
> Is that the or not the fact when moving to LDFLAGS_vmlinux?

LDFLAGS_vmlinux will only be used to link boot/compressed/vmlinux,
whereas KBUILD_LDFLAGS is used for all linker invocations, and in
particular the little link to do the modversions stuff ends up using it.

So once we move -pie --no-dynamic-linker to the more correct
LDFLAGS_vmlinux and/or stop modversions running, we'll be fine. Being
able to use -pie with lld is one of the goals of this series.

> 
> I cannot test as I modified my local Git and re-invoking my
> build-script is doing a whole new build-dance.
> 
> - Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714202100.GB902932%40rani.riverdale.lan.
