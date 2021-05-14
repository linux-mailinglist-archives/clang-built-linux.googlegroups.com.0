Return-Path: <clang-built-linux+bncBAABB6NO7KCAMGQEMPECFIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3BC380D0F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 17:30:02 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id q6-20020a25bfc60000b02904f9715cd13csf9612394ybm.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 08:30:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621006201; cv=pass;
        d=google.com; s=arc-20160816;
        b=IT4ewlC4KCk7EWymS0k+NHr0PNI32Ph5gMWLh0mn7YsSmOVYBsiMMsiRCeWKVWVRdD
         qTLQg6hKOiCXqJMc73g0B26pvcWls4XtuAZyfAN9dcuhx4lbHhVoSN58Zo6MPRfkOGcV
         LJ9k0Q7u9RAC+q6Rltc806j/Zq5DrT9gDvx8bfkm3Eq4352dRgoB8rXhqq6YNYk7t2pd
         v8J4qMOE69ouKcN2K+f1oQnpdBm+CMnapgbObgEPfen0ZKh/COiWTxl3xQhlefYRpMJO
         BU1AaX1SbE1cHxjgrEshtSU/zEbuncl1JW6Pf2wjG1phk9ZBZe2a065IWOBl4xsyHx1d
         RXPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=m16ICEhQgJqlbzEh2Z9wSJOQEOjaOkqhqQ7EKgpcV3k=;
        b=jWpQWmnpi0xenenTzJuaFbKTyOqO0dFjNu1xI+ioVKjiHd2meuGAfYkK9UP5s/oDEe
         z9z4MW9yliOqinueqXoeMxrrAjRQzU7CruBYKs5vMa6Xn8GZFiqSmVIeJAv0IzKVAaID
         B3BoIviMKODbpkkRTVS3ghGC6y48A4m44We1eurdPzT29cdXkZ3bh//uVhk0PeSxa/uP
         DNkcdvdcGrbZJDUk/SqGdYp25xd9rvcHufLjUBuiy2Uj0MvyKbRmY+eCxGRKynSZ7gbh
         fYw2ZtJ8LyPaggt3QY3yIRUsxZPeiNO1zrtPqQgl16awhfWN2q5epgQmY8ZohOEhQMNF
         xMRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LxD8ghip;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m16ICEhQgJqlbzEh2Z9wSJOQEOjaOkqhqQ7EKgpcV3k=;
        b=apCZ3zXE+Vitop/QepG3TDiUFbUqSxTSE7HXP5oJ6PCK5/8v3BBIdYEmPekfkwvQ5C
         WjYuP3gD0TOW1ccOWRvu+l9mGdF97e7kHqS196B6RP+xXaLlnWQlt8yKRZElJf8drAtZ
         k2nI8B4Wpfb2Cpt/smqw3RTOLfQaX9K1z3HwuiMeo2f+Jw2qTt94+0RsnqzQ5Ivfkv7s
         qvLgJuu7GzeeBOte1z5l+/bD8B7sDfpDMN6sYZE8xT1GtPw9g9ZHvGxjMJ+fLPUOiZnr
         a2AOEOQInGQ71YSQKG/Hop9YxHfAIHKfKmVdKkY7uYwkHU8shiA2g0PFaECoNunJmkYt
         r2EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m16ICEhQgJqlbzEh2Z9wSJOQEOjaOkqhqQ7EKgpcV3k=;
        b=VA81STd9HBBGFd7l4vyd7ylpWFT01lT4hvukb6YiQQl7tg1YzsrdkjXrQCtCMgeytw
         m6MOBCXSbBRzEy/Ieg07lq5b6nkvbV6WKb6gM1B9zKvr1/vpzOkjsBPuDmtSpdWquaOI
         Ioy9UHAn23arBzNNUIbEcQTWpWU/4qtiXJ5W8/VNkmpJQhaF8AUPWaQsRk7R4FfMciVo
         fsxNxF3q4G21Y8qSOiQI4BpBMhNjurgV/6q3xdJvyedE7LjXgWokXFWY0Hzdb3R/SHom
         rNGqBu36v4wSY9iDt2ERTDMK0QoySpdVbsCNH2zgZy+HrVKKeAdNafXqLRJBUBY2EJE4
         tZOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rIHegdcTeXBwp+LBJvOnb+CitZmQoXeGsAptUi9YNqlnvayCB
	egFyWRB5ZddMevKquynSKSI=
X-Google-Smtp-Source: ABdhPJy4wGD1CXO5iCEyNZPZ9V4XwfjIzGMbDc1o9mHI6mi/qDvmFeEoZPjj80DQ9MB0ubyXRiU7Lw==
X-Received: by 2002:a25:1855:: with SMTP id 82mr64262448yby.305.1621006201615;
        Fri, 14 May 2021 08:30:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5ls4465699ybk.11.gmail; Fri, 14 May
 2021 08:30:01 -0700 (PDT)
X-Received: by 2002:a05:6902:72b:: with SMTP id l11mr21871425ybt.331.1621006201139;
        Fri, 14 May 2021 08:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621006201; cv=none;
        d=google.com; s=arc-20160816;
        b=A3gvp/5KiHV+xSGOVvb2dU0bFMDIQ1IxwDmml0Tni79IbJUN8deHMfP0EVxHdWyEfD
         JRzVgVX7FMfdSh/yq6FW17SOlcSP6z8RKEr4X3Fyzp5GiukaVi2t4706ExByJXnd0+lL
         WxYN9ZwGAJMAVTMssU5XYjh23V9cogdbNmpGEcgdlxQvSdswGf0hehPChU7SjXPcoS3J
         rDOpCou/untTDiR/cu5YwKCVqeHFjVXkA9dgLMdfs47jR3BIMtC2IOQHGe4W8+nV0DVF
         Cu4PfBkfO6OU/8uxa4adcseI8PjxwztCkY7gb3aZpQcO9y/w+CL2aBO1EmfJN+ROY6FU
         uVtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VaMJJCRuYq5WEvBzKIy/5zrvqnpQo5OhCoMNoRszLQs=;
        b=YJUDpDuF+W0zE+YeaB50DVhBskzQgavJs3pkVmmVjNJ0xKyQ/jAYZzRlzeJRHeLSkF
         4OT8G3D8K9nr1oHYZ+SVX9+p8hHDCgzkERY+Vry9lr2sW/HL1OpXEiJ9RFkhQKYFeL8g
         T8/J61z9ste5FV8TnEi7P7iBT8kNe5Th3oJAUZ2cKuRDVC6tRGM4DLtI5BGpLyyCNjcf
         kqre4TqLk2feO+jhoEuPQfYEYbxSo2ZJOVZQNhql+K9DzzOi+kCTFuJxzophaz1DhyQ3
         KB4CPiMWgn0iglQBKHI3bwXA+CNHFxzx0w1GCIJgzx+Bg87Fp/u6X4xilKzAnDHOqhn5
         CynQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LxD8ghip;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i15si459013ybk.2.2021.05.14.08.30.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 08:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1F93A6144C;
	Fri, 14 May 2021 15:30:00 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id d11so30399464wrw.8;
        Fri, 14 May 2021 08:30:00 -0700 (PDT)
X-Received: by 2002:a05:6000:1b0b:: with SMTP id f11mr22232026wrz.165.1621006198659;
 Fri, 14 May 2021 08:29:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140015.2944744-1-arnd@kernel.org> <YJ6E1scEoTATEJav@kroah.com>
 <CANpmjNMgiVwNovVDASz1jrUFXOCaUY9SvC7hzbv2ix_CaaSvJA@mail.gmail.com>
In-Reply-To: <CANpmjNMgiVwNovVDASz1jrUFXOCaUY9SvC7hzbv2ix_CaaSvJA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 14 May 2021 17:28:57 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1bF1bLFGdD95OQ91GG0a2ZHWX+pp07N2px7RfCpWRUjg@mail.gmail.com>
Message-ID: <CAK8P3a1bF1bLFGdD95OQ91GG0a2ZHWX+pp07N2px7RfCpWRUjg@mail.gmail.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: Marco Elver <elver@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LxD8ghip;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, May 14, 2021 at 4:45 PM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On Fri, 14 May 2021 at 16:10, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Fri, May 14, 2021 at 04:00:08PM +0200, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > clang points out that an initcall funciton should return an 'int':
> > >
> > > kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
> > > late_initcall(kcsan_debugfs_init);
> > > ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > > include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
> > >  #define late_initcall(fn)               __define_initcall(fn, 7)
> > >
> > > Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> [...]
> > >
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> Reviewed-by: Marco Elver <elver@google.com>
>
> Thanks for catching this -- it boggles my mind why gcc nor clang
> wouldn't warn about this by default...
> Is this a new clang?

It was clang-13, not sure if that made a difference.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1bF1bLFGdD95OQ91GG0a2ZHWX%2Bpp07N2px7RfCpWRUjg%40mail.gmail.com.
