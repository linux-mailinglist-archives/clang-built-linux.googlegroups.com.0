Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXEXTDWQKGQEI3P7O7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C872D7E8B
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 20:11:42 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id u64sf12053144oie.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 11:11:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571163100; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYw6oaAsYJMCuw/ECODq3AhRYqDt89ZEN8MDRZMJpU3tqPz8/loN3a/lmcVo46EYQ3
         A1lNOh1Nx+Psug7BkBp5wMm5LJ86PvjSlmdfaON6OjHMLk5bD+zoYNrmoJ4ENFzP1fhp
         UTseDN5jg6KJajYTmiEMPBs/uZGHOwUUsC9XnIb+CTamyN5NH+p52YklClSwoAiwIBxw
         YxJecAqPECeaCqnUO5uoM7icCYsgiExTSYHoarAbRRv1hBF5r3taJMVHIHk3Y9Pdllx7
         qkeilK6d3sFFVMCqiRsGykI16AcxACZk5h7qsEJU6prfVZS9Qx5ZtjYxMz1XP1PcoQnf
         eepg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zKPLQtajp+iEwIFrEGlh/I7YqJR6L00NPcxzvnhvEKk=;
        b=kBX3J1sTdiCWabVh99JKpSroUUVQCVUGUo0I4OLkUuXUWI6Dkf4h+hs9yd5BRg0fPk
         iAsJdwAcI1DmcmL6loV3BeFEVsFOuON5Y4VVvte3luSMZtXvSM9VP/tL10kyK3weaDq0
         7qntEnR4L+E6nApEE2o3zKZVs9LXZ59ZTRzh8B49iZhvbzjMj8a20B+hLS8tX4TSXlAo
         W51fKSxOTwPTfxJr0DSxHKw2u6tHh/HKVpVoGb5upYjfmxVJlLFGSTzC9EfOYCc2+pYA
         eLzW9IUJ+DJ3KuKVsJl2Ld3CdivhS6a0Ulc7kQfSebkAF9C1wOyhBFmDfkxEAec9hAL4
         KICA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VMmKiwez;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zKPLQtajp+iEwIFrEGlh/I7YqJR6L00NPcxzvnhvEKk=;
        b=hg6lmP2qZlSWITG8PAsJWnDbp03RfHXpKwQBdMC6EySkW02DvQYeOso6UP+ngaDGtJ
         8tIHSJVSBD3CZzRLtqSgUq6ItOrpmdWpbVPELjv1figjyNJImmqt8XD/QSrTt/CoODj2
         j0Mop6btBeZIlmOvRN00gorxh91hV9OKi3mVRkLsLt1529nFF7B8nBp0n0Q3TAgtrgVW
         9LM4aF722kf5aDM7TFhAD2bEkirW8umBlUqthYWpCMrG5RjwzCd4+/8ASQBNfnOGlj0K
         1IEP4d+fMnRSl5t1FHlOv+mSa93tjJYVfjM/mr4pKP3W8tp9EV3+dqQGmGjr9TOng+00
         DYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zKPLQtajp+iEwIFrEGlh/I7YqJR6L00NPcxzvnhvEKk=;
        b=De6cDsVkcqFlXNMqzYCu1iomhGET/zHuVqyzroNY8eGDDXB5v5TpAC4SYyArRdP7O7
         CGB5cxdxnz3/303OmBxcAjs4mYOHPNEYZRnwl9WlRDV3Lk08rscwcemPZvaDxiHJJkDB
         mRKSLH+AzMlRgst2gWfk1CO2Rb26zrcVlz8PIPT296Ugjc+c6NkwIELk/V0kz4vct1Ud
         0di0ceO2poTyblzdnyw1fvYDKAcVtIovH2JbY+BF7aKKrYyMQdPfmO7l4o0b09nH2Hly
         /ymrs8LAYh5AgO9xCATVSm5hZSRlbQJH6Z1pBxBNZCBGk5R+d5gbR4q71Q4ZcxCb9yUn
         KPfw==
X-Gm-Message-State: APjAAAVYKBIzWJ7l4GhYhrH1KB6rVKXJW5xTIzD50PfaLqu1vQo9t4sS
	5/nz4MbL48lKYOvfIZig+Sc=
X-Google-Smtp-Source: APXvYqzo/W4Qua72GJZMzqX+mcG5w19KXHWngcF30NOpBkzsDuf+UNhFkODwFlwr5z38nVojJUaj8w==
X-Received: by 2002:a9d:7f12:: with SMTP id j18mr30057506otq.328.1571163100702;
        Tue, 15 Oct 2019 11:11:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66c3:: with SMTP id t3ls3479756otm.3.gmail; Tue, 15 Oct
 2019 11:11:40 -0700 (PDT)
X-Received: by 2002:a9d:19cf:: with SMTP id k73mr30850353otk.29.1571163100344;
        Tue, 15 Oct 2019 11:11:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571163100; cv=none;
        d=google.com; s=arc-20160816;
        b=hirdDabzFyI77YWBVzwY7zVROA9tjY/1aIifq1nquun3TGyilDFhBtH5qXPbm1BW8u
         ri4ygyfsEHnBfHGnwTW5eEHDaar5lPz73JdqAZEQyUK4sduQk2ORMoO5rXU4L2sm1pgJ
         OrlSz0rbZHb/9nY6So74CNmnc+kbq1z9O9dwz2dt59JmRNv4/mVQOJ6/0FHGKUIQkdBe
         81fNpR91xdhCTOUJxk9TKbmXC9IobRSjjUXgXu2gJZNrIz9KTbKkUFTymDmqIHYpTCMC
         bYzyIcch4e3tmRyFCB9rD0mxBI2pbT8sfARIdXPHDEjW11EOgaApJ6LkLiKv+lSiHtM+
         NTMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0za/Sp4Qykw4QW51/H0d9M7C13yw8IHUmkWtTzYXed4=;
        b=KhZRlIMdv0xX2n5EoI0idSVOKnmwEluSnp7/Ysk+Cb1MOGIjHKkbGL4j5JJruuGYGF
         6XWuJX2DBtj0KtyYe2P07CwC/4BhGM3CaK27vyGisdKGbAC6oydrlKfUEq843ksEKMiI
         x4wnvjsJFkgLHZtgTvW7gbgNJu5WJlyTD+8eRJrmxU0oH0+qOIQwE5XxOcgyrhjifDgq
         fRWb7/Egdbmv5wvSIJVpvs/mlxyY1S6lBfu3IuOro7V4W2OHuyRJkLlQdLRu4RAya4uX
         pxZexh6RE16LLKU134X3p6/XPVmlubqPV3fH56OKlSM9e6M6yt39iCbRrRxRpaDjcB7r
         Ss6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VMmKiwez;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id n63si892087oib.3.2019.10.15.11.11.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 11:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id r1so11425152pgj.12
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 11:11:40 -0700 (PDT)
X-Received: by 2002:a65:464b:: with SMTP id k11mr22065858pgr.263.1571163099433;
 Tue, 15 Oct 2019 11:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com> <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
 <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
In-Reply-To: <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Oct 2019 11:11:28 -0700
Message-ID: <CAKwvOdmEDQ1yy0A1Z+x-8MX6taBJPaAseghpHxphrUi29wWRfA@mail.gmail.com>
Subject: Re: AMDGPU and 16B stack alignment
To: Arnd Bergmann <arnd@arndb.de>, "S, Shirish" <sshankar@amd.com>
Cc: "Wentland, Harry" <Harry.Wentland@amd.com>, 
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "yshuiv7@gmail.com" <yshuiv7@gmail.com>, 
	"andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, 
	"S, Shirish" <Shirish.S@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	"Koenig, Christian" <Christian.Koenig@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VMmKiwez;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

On Tue, Oct 15, 2019 at 11:05 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Oct 15, 2019 at 12:19 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Tue, Oct 15, 2019 at 9:08 AM S, Shirish <sshankar@amd.com> wrote:
> > > On 10/15/2019 3:52 AM, Nick Desaulniers wrote:
> >
> > > My gcc build fails with below errors:
> > >
> > > dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
> > >
> > > dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
>
> I was able to reproduce this failure on pre-7.1 versions of GCC.  It
> seems that when:
> 1. code is using doubles
> 2. setting -mpreferred-stack-boundary=3 -mno-sse2, ie. 8B stack alignment
> than GCC produces that error:
> https://godbolt.org/z/7T8nbH
>

Also, I suspect that very error solves the mystery of "why was 16B
stack alignment ever specified?"
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEDQ1yy0A1Z%2Bx-8MX6taBJPaAseghpHxphrUi29wWRfA%40mail.gmail.com.
