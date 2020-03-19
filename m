Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBJVJZ3ZQKGQE6T6XBDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 558C918BB8F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 16:50:00 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id b21sf2083195iot.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:50:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584632999; cv=pass;
        d=google.com; s=arc-20160816;
        b=0WVY/168iOIp3Hk+avVUgAm1dJ6QB067r7Rv/7TNmxtJZ1NLcdejO0owcUwiYvU1D+
         qqvmlQoFq/RE7QmheIx3D1WNtiZHdOU9v1YF4JHFmH01Rde9RvhzHlZz/NNR9mzzWuUu
         AEM7D8TUbBRqQEfpqbY65hPlFs9y7igkubepKDonXHXJAEf5KJQHw2fES3ip6xpT8c2N
         L7ATTD846RVw2BViU9wDWfIjEXMSLRa72CJgpdN5jaGloHkQxMKn7wR/SDVTvIaen4Iy
         e7xV82YuLOaYslHEMojcqiaE5qEMNxAQcZA9IAe9YJNwnl6ZDGIbBjdYLh72f+t2CSeS
         20LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hxAAFagkwdW21BgxrSD8WP1lirHJMCw3TFc4EmtKPiQ=;
        b=HGA/2U1/UKqFYsL2Mw4ZMaoKgoog8nMHjMj4CT6eb0yeZfBcdTrxAaFDfdl50/gYvD
         yxwV4jBLn3HxiTgf0gwrlvjAL7f+3gUCTzGioZY5VxfjwvSmVcSDH7en2LxKuFm1rrKW
         WjRY61MWAqEV8RJtDwvR92yDsKZdCBs/D6vv9a8OWRhbqHPzazIcrxsy6s2djD3qlL6O
         HsSkxTWiTfgJ6ZRShOuJaJW2jagqQ9fjP4W6nFHiuZ+g36OhQzkOzfR2kdlC0Le3n8xl
         r5hd3dUuft/ZrfXzGLG0F+/8WxiGdwzCUPfVemf+C5pYOhkc8Pd6/1K1mUZG5naDSaE0
         xKpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WZUFhydF;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hxAAFagkwdW21BgxrSD8WP1lirHJMCw3TFc4EmtKPiQ=;
        b=lTHn1RhAQ/em6xlTsFz2xoHrkVPyXGOtd26z2Pr+ZDamAfktCd+aLsdNhiY7Dlcrqo
         A/OB2KJEYFX4v+bL0Ggk6qa9tbLFKW5Ctesdyv258XDUkRPQbYLx8jcN0Wh2EtppuHaY
         3VenMWyo7WeWt+v4GxAjfxiTwQZPXQEwFqUDlqfsRb24FJId4HlyfE6vWjbv640HGKz+
         9vydRnP1XrA/clYBUrOf3eWtwRkcUQ7S05UBbr/nna2CWxU/HO71BZURf2wzGZLhviz4
         AAErrdzj8wMI8NNsN9PMyel6/lvQqvpvTk8LvbnlB8XgaV+CGOYIZyMDeo2Q1VQ67ApY
         7Pgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hxAAFagkwdW21BgxrSD8WP1lirHJMCw3TFc4EmtKPiQ=;
        b=P4KaJ7YrCgXgWn5L62nTJkzTejKaHWx8/NOlHWPO2RbWn/mR0TEL68MWyw+6zsDThx
         bQyFLCtFOZ9TZ6oQrb6CdxRGrgq1SNoaqSOOeeB6Zmy0isoiLuEA9zzDXL5eyp7LjhA5
         eCD1ICHA18NR8lsc9gPCk0MptUZ9jvTHb9HYmOSwIdSKcBdy2MkHNIjzikebm5D+ffw3
         wXMcR9l4128I8iQxJf3hixfBvX4zehIJj/yUTuAVYYXLm+0cXc63rLeAYXpAGJWrKiyt
         sVc0G6kCTTWPUiqfpJCCRfP5b7m1QyMllw8wfKUhe2YN9YKhzlsl/IgNaH5oy8hhP0yP
         hevw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0FvoDDKLi6h+JzHjUqOzlu5A9UVbp/J2h4xfrNc/Qyp5fVhIhz
	2utjViKlqgRJ9F+swAzmtiM=
X-Google-Smtp-Source: ADFU+vvmW918cxSIreI8fb+gv2leX1yV46murvjI3OzlGNslwyTV4ng4apud33Id6Qh7wtR9IBQY4A==
X-Received: by 2002:a6b:7c4d:: with SMTP id b13mr3257000ioq.46.1584632999100;
        Thu, 19 Mar 2020 08:49:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9418:: with SMTP id v24ls482668ion.10.gmail; Thu, 19 Mar
 2020 08:49:58 -0700 (PDT)
X-Received: by 2002:a5e:9e0a:: with SMTP id i10mr3314532ioq.173.1584632998684;
        Thu, 19 Mar 2020 08:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584632998; cv=none;
        d=google.com; s=arc-20160816;
        b=vrXcnBQt6oW84NjBHy+j4p/ZRSGHjxZOW+FywoVZ1lbt839sM4uKlIiJ4XITRBns2j
         nMtta0GiVoPbBLm+hAR75xX+Za6IeprrzW7W10WKxiJw6IcPFoq5+fXzaSyhf+ERAL39
         bhd89iAggUKLrejcISbplvzdcycC2HduhJBHXzinaKS4D/cW3HnvT/k1ZUiL5tpCea6S
         vUHz/xdvdw9mKneptUZkPysGlcm025Y2MCO9nND0A8reWV8w/6zxjGfBk+naY8RTx1dX
         Hm2+m81vGPZWhLW3fcaUUJkrcI78irQZ8Ymy+vVH3XDDsTwtfR4pbeIvHmga59LKkJf8
         6jjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Od8chQx8SJ60AuXi2ixf7kNCRnkIVY/+/zUtR4WZ3HY=;
        b=PHVZZ19gHxzHTz2WA0z2oaQrInClzLAh7lAd1OeVgAVnbrGP02hVi/DIQcL6sMAKvy
         OCVgSOPdjISPhV9Fa583cQxnw1FL6/uGWOwhcJm89Bozm2NoIQotg2GAjWEsTr1Z4kly
         NKn49ctQ3kazckXk8eV9NZwQgvsOEP0vvvtShDr8SDrF5DgArs6RKArR+WKB9XKL2H1C
         ci3QDdf45Nd6DKlkP3wW4+tL9+t89JS76LqeECIWX5HRndYa3tL/Awv9OQd5aeDGIrh5
         Ci3u+5u7jrkha0hbDhVmyXPNySh5FWYonK/+p5I5D5ioYXEuwlMocBLvn5saR6QTev9C
         pD9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WZUFhydF;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k88si167770ilg.1.2020.03.19.08.49.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:49:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AC96E21775
	for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 15:49:57 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id o12so3134133wrh.11
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 08:49:57 -0700 (PDT)
X-Received: by 2002:adf:9dc6:: with SMTP id q6mr4999539wre.70.1584632996131;
 Thu, 19 Mar 2020 08:49:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com> <20200317143834.GC632169@arrakis.emea.arm.com>
In-Reply-To: <20200317143834.GC632169@arrakis.emea.arm.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 19 Mar 2020 08:49:44 -0700
X-Gmail-Original-Message-ID: <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
Message-ID: <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"open list:MIPS" <linux-mips@vger.kernel.org>, X86 ML <x86@kernel.org>, 
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>, 
	Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>, 
	Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>, 
	Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WZUFhydF;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Mar 17, 2020 at 7:38 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> > diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
> > index 54fc1c2ce93f..91138077b073 100644
> > --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
> > +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
> > @@ -8,11 +8,14 @@
> >  #include <linux/time.h>
> >  #include <linux/types.h>
> >
> > +#define VALID_CLOCK_ID(x) \
> > +     ((x >= 0) && (x < VDSO_BASES))
> > +
> >  int __vdso_clock_gettime(clockid_t clock,
> >                        struct old_timespec32 *ts)
> >  {
> >       /* The checks below are required for ABI consistency with arm */
> > -     if ((u32)ts >= TASK_SIZE_32)
> > +     if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >               return -EFAULT;
> >
> >       return __cvdso_clock_gettime32(clock, ts);
>
> I probably miss something but I can't find the TASK_SIZE check in the
> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
>

Can you not just remove the TASK_SIZE_32 check entirely?  If you pass
a garbage address to the vDSO, you are quite likely to get SIGSEGV.
Why does this particular type of error need special handling?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw%40mail.gmail.com.
