Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAUV573QKGQEI73FWOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF62210065
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 01:28:04 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id i204sf14139114ioa.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 16:28:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593559683; cv=pass;
        d=google.com; s=arc-20160816;
        b=cR6rDu5Ny76yHtH1pqCu6X5UgVXF83E1iDGFEBxJWbs8UOvaq79QGe2xKfjYCHCa+5
         cfKdJ8zaiR12nvymqRzPfzjhPfi1OG+9TI078broSLgGWVwTHoj1yS8WwoEQmjK+6AVR
         tHskXpuTgaleiNKlNCUFI19omUtP8lriuZIswoswTmXmMgCagKdZ5BLAAFtqjMIqaXlc
         2TGwUhZDICM8QxSVgZ4NvjiU16R/0YOEMvDFyubU0j8bAHAdlDA9Q5IvLxhXkm2YusOM
         1YZKmzP52GPxUen99UV3s4EHrCxypNFD/KQnDM2JnuJB6LhmhkTZSTus/Atlt25oJG9N
         jDow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=ahLKqqtn82wwN5QMTjIdYgHYaKe1mMQi2KyC18Lty5Y=;
        b=M3oHfvGkKOF8nba0vDlL6k9LVJVHZlKxP+Uxju8t5l6J7ZDZtAJy4nMddnZUjkQxDR
         tg2OJZjIG+QPlWshNk1cEDx9OUplYoMVS0dDG4kuHRoq8uCCrU/huFrSkFWtsgVm7PO8
         PKovryquJXWdsB5jIqaLiBkk/O7VKAbFlOJjmJwpboDLRUigCLSCp8Gc/Hr/gyydh6+Y
         i6on6S6cVYs87XOWfropy7D0G491qARJy4qfoDurEw1TSlw+swd0CNoXMVEwJDfvOyOr
         mMvrenRXihyS6kQD95Cn7YkoX3rSC/ILO1ryp9TjOwMX7sDCrDmLyPLsc9sygf/GjX28
         qE/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D+w4anAV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ahLKqqtn82wwN5QMTjIdYgHYaKe1mMQi2KyC18Lty5Y=;
        b=b+b2Lgixc+FRNMZlsbgh7G6HJNe17OJsBJkHNsBiQ0jr+OPDQMgS9jIwi0bNhbhgMp
         410IHLqLiI0rvyjptrsdO2RPwsiZBwGj/DlxyJNBYgz136Bi8hJoayrHg5SRxQLFcop4
         T8k5kCyBA+G1IkB7K4kucM3ux6qwyquQaFkUDAGTATyedymQMCSWHLT7TOhzsmCZCryn
         d4XAuu11Cu1oYL4qLL6gUt6/SpCSIWcxLjfyUfg1YZHxdd2qn7vf3i5MZCr0yEf7Ybu3
         wSlg3gSBBMAgxuWhxXHUMnp/1+bdzAgOTjEc3MhHpMsxqTDadJcUaYRgqWT/6d6CKv9N
         ZYzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ahLKqqtn82wwN5QMTjIdYgHYaKe1mMQi2KyC18Lty5Y=;
        b=nJ7UlWPUYyrrZUJFrG6snB7ZMil9ZlD6Hjyt7+RbtggVtvGmyUrQsFquAiXVrEba2r
         vhPVM55+ga6h0KHbDq7fZ3P0hzdMSeG7vISaAy5LZIrnA0Ba4AU0NeGqvtoICOzeTJKR
         hBh3ji2vXoZjo7wTFs6000OigNDMMHoFRq9xILtmCFbJHV83ttP6GltXV04cVcfiEF2u
         v2cNVLte5Bnc4WUxX8lP8KUBJ0Q9KZahiHmmfSE/PE+wM0TN/xA6dfBoaiaAu2ChC+Cw
         Ac+XGahLTL+ARBDDTGpHLm1W+G6vmQdDwp6zoAxi8z92f5eo/vRGsAfGLCJ7WB6jXPD/
         ChUw==
X-Gm-Message-State: AOAM530Sq+vFBLaMV6m4SexJhAvUPI5FkbR+c8/kUuwYEXZg3kR5tQuC
	zrQYwMOUYGBT3YBOD0gj/zY=
X-Google-Smtp-Source: ABdhPJzT8cX1hkgWJJuFSGoV9FnGq0/0mLVPA1CP2vyh6JUbM/WvsSpOruzR4OqW/Pd/LVG4P0pQ9g==
X-Received: by 2002:a92:5b5d:: with SMTP id p90mr5392861ilb.45.1593559682748;
        Tue, 30 Jun 2020 16:28:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:11a6:: with SMTP id 6ls102014ilj.5.gmail; Tue, 30
 Jun 2020 16:28:02 -0700 (PDT)
X-Received: by 2002:a92:d843:: with SMTP id h3mr5379579ilq.255.1593559682446;
        Tue, 30 Jun 2020 16:28:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593559682; cv=none;
        d=google.com; s=arc-20160816;
        b=zKSNzOJIz/cO+y87y0ksxwvetWZlZoiBAtOVeuf1vRg+qiVh7vTH4JogTmqOJM9mmP
         FrzqASGxGt8PqO6zRZRZnqPrJq9edxmg/hDq10HB9JZ9oLEnRqs7poVzMELZZIon+8wU
         m7HYNu2fC5PapI/EsMOhCuKSfdzKUywbzY/hJPC0tMKGysnzmwhtxMFWfDPzUqAI4Zmd
         oT/txT0WI9Eyb9uphKe0Nllgtc/gHEqSyzF3m7O5/mcuelI1MA3yJUiuCxfJfz0gdS8v
         ZujgGeDsl/VSxVYzpx5cPMFA20Kr6j7A+3xOOFH41oI9UZszDRuFGqPMyylNW/XOuBUV
         omKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=iirypFBp2xtegwS2Iq4B1iPUgMABexUaf6RMKakBSKI=;
        b=EKePYAnP0pQFWSHHlMpjEEdFVqVpyc/oP57bG4GUUhjIIaCg6/aC/1UVE3IGj7MCBx
         03SaUs7vpMLtw3FCLlxKTlAjTT8D0Atqz50VSujIYF+1G/IwZeWFfmQkp6xC7Vv8oMLn
         a9LAe1/hGClzwjmwONO4u16RMkqZShHrysgJP8yvJ+zJRWR4GGA8iUpzXperF5DR4FA0
         dLG9UJ95H1VTXmYU9Luai052348czHjKGVG+9YHGUzVeS/dZuoGyotbbhKWF+OSnNukE
         UB69KufR1UHGRhrQ/5OgTScDIN/FFg11cOwtWMHWusXtvBZ0+4FbnZ6cRR2Smt5UJ2kN
         ldSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D+w4anAV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id d3si230262iow.4.2020.06.30.16.28.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 16:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id l6so20463449qkc.6
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 16:28:02 -0700 (PDT)
X-Received: by 2002:a37:4c0d:: with SMTP id z13mr21851974qka.170.1593559681849;
        Tue, 30 Jun 2020 16:28:01 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id x13sm3868567qkx.10.2020.06.30.16.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 16:28:01 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 30 Jun 2020 19:27:59 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200630232759.GA2641539@rani.riverdale.lan>
References: <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook>
 <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com>
 <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
 <20200629233405.n56yb4xwlgxrt3fn@google.com>
 <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
 <20200630175408.GA2301688@rani.riverdale.lan>
 <20200630220043.4snabunhgvfdktte@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200630220043.4snabunhgvfdktte@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D+w4anAV;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
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

On Tue, Jun 30, 2020 at 03:00:43PM -0700, Fangrui Song wrote:
> * Ard Biesheuvel
> > On Tue, 30 Jun 2020 at 01:34, Fangrui Song <maskray@google.com> wrote:
> 
> If the executable is purely static, it does not need to have PLT. All
> calls to a PLT can be redirected to the function itself.  Some range
> extension thunks (other terms: stub groups, veneers, etc) may still be
> needed if the distance is too large.
> 
> There are cases where a GOT cannot be avoided, e.g.
> 
> extern char foo[] __attribute__((weak, visibility("hidden")));
> char *fun() { return foo; }
> 
> If foo is a SHN_ABS, `movq foo@GOTPCREL(%rip), %rax` can't be optimized
> by GOTPCRELX (https://sourceware.org/bugzilla/show_bug.cgi?id=25749 binutils>=2.35 will be good)
> Many other architectures don't even have a GOT optimization.

Urk -- the example given in that bug report isn't even weak. Are you
guys proposing to pessimize every access to a global symbol, regardless
of visibility, by going through the GOT on the off chance that somebody
might define one of them as SHN_ABS? Can we at least gate it behind
something like __attribute__((might_be_shn_abs))?

> 
> >I don't think it's really relevant for the kernel build -- all we get is
> >ld -static --no-dynamic-linker, all -static does is prevent searching
> >shared libraries, and we already pass --no-dynamic-linker if it's
> >supported.
> >
> >[0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81498

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630232759.GA2641539%40rani.riverdale.lan.
