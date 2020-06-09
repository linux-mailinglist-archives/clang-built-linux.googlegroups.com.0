Return-Path: <clang-built-linux+bncBDYJPJO25UGBB36CQD3QKGQE6MP4Q6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 792221F4A2C
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 01:55:28 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id w9sf205978ybt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 16:55:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591746927; cv=pass;
        d=google.com; s=arc-20160816;
        b=cahDnItzL3J0IfH7Go+vhXGy4rff8cSbbiDCudUy1gOrFo+9V6XbnErCwN6w9+KS53
         b7m2cLMsYQDCcZFL6Vo/FdoAkoZOLUPSydh7uL5ERHMXDKJ0D9PFax9cYZwJTHllydjf
         ZjgEcOx8k0jx+RjCk+WbFNGZE/x6u34R3JmvAn43KO9F4yaLEKhu2T9MHPe0rcqcfRCt
         pEo6GEb5ibqvCvMcWzAsvZkcswLXUnk8hgMIdNaLTW/g/3RCnZLKwYDXHLfyt+w1QPRz
         1umUWi67bO+8TmrEgLJ/RDAd1z5AEBfO4O0jnpA4AL2XZQbxtVHLh6xUMjwREOLJPeoL
         CFzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=beDkq30vIbk8pw3LGHQ07Q+hTJVgVHdqOSNgIuXQj9E=;
        b=F7B2fq87Wknwezpb/A6ZINkhJlgPn1IdF+UVzdPG869pZyT86eYlVryvG5YnXddIKJ
         fnKLhEAPn0Qzp4X80FwLCrforYgZhhAlVwpxKNwbzgpM7KyaaUwrakg4fekezxUJ+On6
         suI7RmneX2C/aI1MsAkzVox5duOwhaXShYETmCplWVWW3xffo3qXp7a7ZREiJ5IoP6Pd
         wNEUQLH9I4WSvmHFYTuZkh3vEFof74ODSQnwWN5rKVwTDIhwCQqqKVtyL+5eA7AJfS7c
         Pum+DoS/Yf47GMmj2VfURXlqOdZodxs9WWEeVToQo5iXywDAyZVYMmvYrjvWABEcXM8h
         wunA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q66wWDpX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=beDkq30vIbk8pw3LGHQ07Q+hTJVgVHdqOSNgIuXQj9E=;
        b=k97q0pbg14V6wHK2BCSSeCDfzS3svNGbXLEsGrNlh9+/fG9IVZw0xlxYt/BTPDUBZ9
         wHGNHtoTGfnsJWLcpplPitcOt1ZGCt0Amhu/nIldNzAyI1sly0pywk0dNfPBvvN+O5Ki
         Z8HQez+IP0ogReFjG7MgaA5Xj3gB4sAOg/5RWUItZVVB05OmmsfAe/BRTFhHgcPXJMSF
         zswN2Jh3tkjK+KIrfanDACt+thCNGdU1cxwaGvBvZw5eveUxcjq/PEBnvtCmpK+qOJF3
         WeNrgRqOC84zNy+QXkkD9FWBTwDkbxY6FOfQq9klfFa/v739vnnN7CcOP6mr5ktIwSbf
         ppZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=beDkq30vIbk8pw3LGHQ07Q+hTJVgVHdqOSNgIuXQj9E=;
        b=gIk3KQEx8uUQFRc6A1RJfTDwlpTXSGPsz+W9j/xQjex7+A7csjGo58deyHhkI6cCex
         kTJtUv7RRQWTwB+GbmML+vlBuVWipjHT7xoX1v1o041D6XUaAldatlXpQD/QiyUBkzGm
         F8EkpEXNWoPdrQsyhtUbmOMURv4Rasru+sf4O5k6bixwRPf0lhQEKU9Iv1AFrWVwHQxS
         IZjv3WdvDqJvXMHrYp28wGzt1iXZ8lguUCjTaN/Td9XqpSRSgwkC/xITcP01XF9LW6RE
         we3IRNFwN53/Buv95lohTqlRA/xJDcDNLl6F01fD5WRM4tNnopp9TmShuLmGNQLA9Tsv
         6CcA==
X-Gm-Message-State: AOAM530Ho9dZnMwcbKYVM/WMeZS/eyllD9OtYRDCrq8xReInHHqg7olK
	U7UoFFe6vlm4fSH2jEOkKms=
X-Google-Smtp-Source: ABdhPJyUsR/A325NJcMooNU4/MypIfZoUDQm+fqMf28aTZ+6qzuVzytKePNzj3HxyUDsFPS3/Z2Qnw==
X-Received: by 2002:a25:c507:: with SMTP id v7mr962567ybe.306.1591746927217;
        Tue, 09 Jun 2020 16:55:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4d42:: with SMTP id a63ls4411076ybb.10.gmail; Tue, 09
 Jun 2020 16:55:26 -0700 (PDT)
X-Received: by 2002:a25:b70b:: with SMTP id t11mr1015724ybj.171.1591746926220;
        Tue, 09 Jun 2020 16:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591746926; cv=none;
        d=google.com; s=arc-20160816;
        b=VNJB9B3aD8zr7yHTMmff1SemO0pIeGIGwP3O4y6hK51Ug9XQeZ6mmKmCgAop3dVN1A
         CWAjLdHAFisubPedMHlSOcZjWuf1VUmHVZ61Qbh+IYlXQ9GsHTA/UjNO0NaOQz+0AIZ7
         OPfwValrBb1M2G1EtuclGiP7TZUfiPhGxz12L9p8yuc9llF84p/gt14FFNs9lGLemukm
         6L+eGUcTzen4dVAomg1idVszYoSgtjJRBVj1AsiolKxcF2Zjt7ogOoiTFBuJEvmq37xZ
         M1kCNkny5owyF+rzXnfd9/nIchBe5Q71w0cZ+AYSeNLFT8927gEUnIF9lV8uqjFs+zlC
         8a8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DXx+4AN08cMWPSOuEs/2ai9rnq4nQ97k7cBaiF4BCfg=;
        b=s9HjwJnmQu0qQiHe1j4P/A+wR3ifB7g36UxwQwOpoLLnxlWDDOGBo7KiKhQaGV1rTy
         f8GSMBRWOBlMo5MUuA4GAJXtfWyd0e3HYS/43JjK6cVvqak8U+CFxfGe7BgyG4f5gHm/
         momEfIl/n6Q/ktjnAHz+b8ZMdgF2v6hbkjdDNdkq4/mg40DfoboYvyZ7EsAM92ixDL7t
         BD5msHW9vZhklsmhZG2S1F+e8ZksKkor/MIAeaKgSbPB/zNJpZWIURm/tq/+VlcLh/P7
         0cry77Ik8DNumLdS0X/KYDCD3WaWPdOf4v+8gmsRfBeuoHKR8o/r5sxjd0XHFM0hZyhx
         CKgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q66wWDpX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k11si283837ybb.4.2020.06.09.16.55.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 16:55:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id g12so209513pll.10
        for <clang-built-linux@googlegroups.com>; Tue, 09 Jun 2020 16:55:26 -0700 (PDT)
X-Received: by 2002:a17:902:fe8b:: with SMTP id x11mr686509plm.179.1591746925120;
 Tue, 09 Jun 2020 16:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200528072031.GA22156@willie-the-truck> <20200608205711.109418-1-ndesaulniers@google.com>
 <20200609203502.GA21214@gaia>
In-Reply-To: <20200609203502.GA21214@gaia>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 9 Jun 2020 16:55:13 -0700
Message-ID: <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>, Stephen Boyd <swboyd@google.com>, 
	Robin Murphy <robin.murphy@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Luis Lozano <llozano@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Naohiro Aota <naohiro.aota@wdc.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q66wWDpX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Tue, Jun 9, 2020 at 1:35 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 7f9d38444d6d..fe9e6b231cac 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
> >         You must have a 32-bit build of glibc 2.22 or later for programs
> >         to seamlessly take advantage of this.
> >
> > +config THUMB2_COMPAT_VDSO
> > +     bool "Compile the vDSO in THUMB2 mode"
> > +     depends on COMPAT_VDSO
> > +     default y
> > +     help
> > +       Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> > +       as -marm.
>
> Now that we understood the issue (I think), do we actually need this
> choice? Why not going for -mthumb -fomit-frame-pointer always for the
> compat vdso?

"Why should the compat vdso be configurable?" is a fair question.  I
don't have an answer, but maybe some of the folks on thread do?

Our problem is more so "if the vdso is built as thumb, we need it also
explicitly built with -fomit-frame-pointer."  Whether it should be
built as thumb, arm, or configurable (and which default to pick in
that case) are still an open questions.  Will asked for it to be
configurable, so I sent a patch making it configurable.

I'm not sure what the tradeoffs would be for a A32 vs T32 compat vdso image.

Is it possible to have hardware that's A64+A32 but not T32, or A64+T32
but not A32? (I suspect not).

I'm not sure whether userspace cares about frame pointer based
unwinding through the vdso, but if it's built as THUMB, then that
likely doesn't work for binaries with A32/T32 interworking.  Whether
the functions in the vdso are faster when built as A32 or T32 I cannot
say.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnDeYQ-tbyW8%3DtcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg%40mail.gmail.com.
