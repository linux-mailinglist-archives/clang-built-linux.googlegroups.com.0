Return-Path: <clang-built-linux+bncBCLI747UVAFRBMWB4TZQKGQE2H6TSDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0885218FFC1
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:48:52 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id b136sf13029155iof.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:48:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584996531; cv=pass;
        d=google.com; s=arc-20160816;
        b=eVpsuLjb3jcwIB2Jbjca6sIqusUfdGNGeeZHZIdB1F6S9NDzPhq8kFr4rfAKHzRoXY
         XBH4s8rD13pa+Q74HHUcxw3mmeNR6YO1SQ9hK90Dyzfxtrrc/RIPkMzlAB3KBt2lB3AL
         tSkDSKffoP8suV5SItn66DNI2LT6rzprU1Ctwu+q0aS9ky1Wh9pZM6jxgbhfpXdN3U4a
         c0pYHesfDvLGuD6nlsESpRxjXaTuSh0QrcdfI11icxwYOjK/4cvGvNL6qyHF3iSMYdJo
         nojh7nsDyalC3Oq8xa584u3ymWS+qlA1so471CB0/FM8taLhwwzZgUS2FolUWIu6tuox
         ldnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JaJfDrzKX+qBvhxKanMZxsEdhUTmFaQjH13zLAfLgck=;
        b=to0OP0QRB1Ntv8rI/ZYX0YiOqZiLgobKm/kX0Zd24ndTjDgLpXgZNy8m4BKQsq1LtG
         YCWuKTNNaMgdoWY5u3k2ZaHvnxQkAV06e+zwtCOKUJGfsL77SZwrAr7zSZ0iI7BE2LT3
         Cu0LAm03vUmnucRc2/Dh1CjY7ugZN+k4oKdFRmWg9ugiPKmArsXRTTUgpeStuRrxvn3r
         uaeVgcR+b4msZxx2vLL7AnpAuxM+Z2mthXOtVB/ap69I/cA/HaGxw0KZ6TQjIvVNlfAM
         d240EW1wdGi9rfduWLuj6VbPLy1XQByFqg73baIbYG44KRt7evr/9txkS50eVbrQRDcS
         t4AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=b58XeakZ;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JaJfDrzKX+qBvhxKanMZxsEdhUTmFaQjH13zLAfLgck=;
        b=suE/usn4Po5whYY4ZRTK3rZI1um3cjvEi31tWgnapUu/nAXSP8X5+NHPALhQhU6QyD
         jqSG97R0t3k7x67L9lLdJTUwaIRE/DdAnrTbZNMHsZPOpaF8VE6cal9SVBhium3/XqDu
         lcwiS4ZAxpbuhasigUHYXfO6nLXqaZcVvyN+AjIqHUyAXVOJ542NQsWeAO/cMDtpwhm+
         5iTJhQ2LC3dVXN4jYxOov/C3Hq61n4cFbjMPldWy3c6nD8ElBy7bD9V4A7bwhNinbTv0
         8K78NjzoT3VFS5JPz++Gf9rXwJS3pmvOXx80t5U+F2I5ZLnk7/VTxraHCBQIgiFGIu35
         KncQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JaJfDrzKX+qBvhxKanMZxsEdhUTmFaQjH13zLAfLgck=;
        b=QksP5y+9IUf4FmcWyHY6AjEp8Nav1unEAV1aqs63YtIhPCp/SrLyxb4yiX1EMzehs3
         x8QX35dRTR9NZWqAcTp6mfp9gvJ4f9y77A657wIRXrKhgl0bSwQQJZoZDqaQ1jyDYbP1
         nQXe0I3W/jkzlfbSZLgha8DQblV0PEWgY5ZTm/1uu/I+O2oImhcWE+cGPxVGrnMkql74
         J+WliCbnaAcq2zU9rxm+49f47YlPA81xa03aDFRT6Cddvo6elHxaG98XLwRLFQHe44q0
         svgmERDTb8CxnZcVTSqhxZSvmbKTSqF3qMdxJ/gbNb9SBE/mKpzLMdMeMJK3YKDyk+kS
         ZeiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ztfeHIDV62WXj4ThcPW1WfP/AaorqdQm9QPD1iOLNRDQG/8mi
	FqMEDmdSzASSrz5uvjB9ZLA=
X-Google-Smtp-Source: ADFU+vvuTpWJlt6MT+ibWSqV2/Gg8zrcz1sNRUWZPOvagD+Jw0Iugf49+nHuYZLziwTaaGIqvk3zUA==
X-Received: by 2002:a92:d6d1:: with SMTP id z17mr23008860ilp.203.1584996530971;
        Mon, 23 Mar 2020 13:48:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:14d6:: with SMTP id b22ls2421904iow.8.gmail; Mon,
 23 Mar 2020 13:48:50 -0700 (PDT)
X-Received: by 2002:a6b:8fd8:: with SMTP id r207mr20793307iod.158.1584996530548;
        Mon, 23 Mar 2020 13:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584996530; cv=none;
        d=google.com; s=arc-20160816;
        b=syJPzXAQ70SNKXwlsxJqb4Ou6oIypZYIp6cUsZGzx35y8pDPycd5bfk6VFrmkcPQ1/
         p1bDQ1ybQYoThbKYnA/acqLkokLGVGU0qmEnckj85GU99+ul6NG7wtcPyyg6nGFq6nBZ
         ZOCX98Jag44bsIWE3gjZZ+9QXb10CQr//Rr0qR78pFMK9/353bU/e8REHr9vQ69G2wZB
         h2Vn/uYvGZ0Z39F1T2QYrzEfWWH3Z3s4DLOGfSpdPxTBLYpCMZGS0sC9wjxJy8Ca37Cn
         Qhx6DQRoir8Ij2Xuflb9OuB5wo+7sib+RkKkKiPEEOv4FRRQ977XYhq1nhPXgrVclKdZ
         PojQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mF8cLKhsg98UVAqmaYvE2lAeE2V62Ogat8aw7TTz+IE=;
        b=ILPka4aGf4RG2DqU65gs4YzEKP3sqazRv9qcEug4gfHFf5+/hTDdUrjjn1QT+OfRs5
         9Ml+u/P05fNm1iCkIo58h5tNU8YoSCDpnYFQI5xPYZeMbBaLFZ0acWLQ3g8ijDuTy8c8
         A9GjmTa7D62YhYhgRf9a0k8Pc4RKOo2TCNLDZAdoYGdHlnzZskIzFRyrwARIQTzfZ6fa
         oiBEO0kz5gxS1lHOpIpA1ZtYr8whcKqBhfEREXBURkcsPePpW6BA8YEJxEoN242hSm5j
         zACt/Y6kb/+hYdbRaM1Tl/8r/Bsq0niFHeWU6i2+EAriMmzpsU9wQTWF60kEakXrhctC
         l+tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=b58XeakZ;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id d207si614539iof.3.2020.03.23.13.48.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 13:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 70112052
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 20:41:46 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 5da4fdb3 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 20:41:45 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id d15so15863107iog.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:48:48 -0700 (PDT)
X-Received: by 2002:a5e:a50f:: with SMTP id 15mr4024585iog.67.1584996526758;
 Mon, 23 Mar 2020 13:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <20200323020844.17064-6-masahiroy@kernel.org>
 <CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4=pzqFRj3E9C-bM+Q@mail.gmail.com> <CAK7LNATVAq_Wkv=K-ezwnG=o8a9OoKspZJYOyq+4OXX7EZHPnA@mail.gmail.com>
In-Reply-To: <CAK7LNATVAq_Wkv=K-ezwnG=o8a9OoKspZJYOyq+4OXX7EZHPnA@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 14:48:35 -0600
X-Gmail-Original-Message-ID: <CAHmME9pg0_EAG_YkGJQ2AE0n=9EvP2CVoj+bT8cCuiDAdHzUCQ@mail.gmail.com>
Message-ID: <CAHmME9pg0_EAG_YkGJQ2AE0n=9EvP2CVoj+bT8cCuiDAdHzUCQ@mail.gmail.com>
Subject: Re: [PATCH 5/7] x86: remove always-defined CONFIG_AS_SSSE3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=b58XeakZ;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Mon, Mar 23, 2020 at 2:45 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Mar 24, 2020 at 3:06 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> >
> > On Sun, Mar 22, 2020 at 8:10 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
> > > index bf1b4765c8f6..77457ea5a239 100644
> > > --- a/lib/raid6/algos.c
> > > +++ b/lib/raid6/algos.c
> > > @@ -103,9 +103,7 @@ const struct raid6_recov_calls *const raid6_recov_algos[] = {
> > >  #ifdef CONFIG_AS_AVX2
> > >         &raid6_recov_avx2,
> > >  #endif
> > > -#ifdef CONFIG_AS_SSSE3
> > >         &raid6_recov_ssse3,
> > > -#endif
> > >  #ifdef CONFIG_S390
> > >         &raid6_recov_s390xc,
> > >  #endif
> >
> > algos.c is compiled on all platforms, so you'll need to ifdef that x86
> > section where SSSE3 is no longer guarding it. The pattern in the rest
> > of the file, if you want to follow it, is "#if defined(__x86_64__) &&
> > !defined(__arch_um__)". That seems ugly and like there are better
> > ways, but in the interest of uniformity and a lack of desire to
> > rewrite all the raid6 code, I went with that in this cleanup:
> >
> > https://git.zx2c4.com/linux-dev/commit/?h=jd/kconfig-assembler-support&id=512a00ddebbe5294a88487dcf1dc845cf56703d9
>
>
> Thanks for the pointer,
> but I think guarding with CONFIG_X86 makes more sense.
>
> raid6_recov_ssse3 is defined in lib/raid6/recov_ssse3.c,
> which is guarded by like this:
>
> raid6_pq-$(CONFIG_X86) += recov_ssse3.o recov_avx2.o mmx.o sse1.o
> sse2.o avx2.o avx512.o recov_avx512.o
>
>
> Indeed,
>
>  #if defined(__x86_64__) && !defined(__arch_um__)
>
> is ugly.
>
>
> I wonder why the code was written like that.
>
> I rather want to check a single CONFIG option.
> Please see the attached patch.

Seems better indeed. Looks like you've cleaned up multiple cases.

Now if you could only tell me what is wrong with my series... "Your
series does not work correctly. I will comment why later." I've been
at the edge of my seat, Fermat's last theorem style. :)

By the way, it looks like 5.7 will be raising the minimum binutils to
2.23: https://lore.kernel.org/lkml/20200316160259.GN26126@zn.tnic/ In
light of this, I'll place another patch on top of my branch handling
that transition.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9pg0_EAG_YkGJQ2AE0n%3D9EvP2CVoj%2BbT8cCuiDAdHzUCQ%40mail.gmail.com.
