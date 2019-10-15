Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEUVTDWQKGQESYKVTQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7C5D7E65
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 20:06:11 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id w22sf16683574ywa.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 11:06:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571162770; cv=pass;
        d=google.com; s=arc-20160816;
        b=qhrU1UMja+Gis+CFiaitJVDflz+JWzVhxo9ov55a/lq2FAoj0bUnh2Xgfbm3XnRbRW
         o8BpehIktmsSC85T8UgR4kQH6SblBgEnFZu52SC20YbHeGFnmCxCt9SZLeKicjhqvZ1m
         kAM6IOOL2wokBVu95GAuNJRK2/exsFrGI5Jz6hHhybxMC6D61QJ3kntFmG+pkwn9pw3a
         IbFkj93ALcD2jxc3wB7xyt3K0dfZrTFv8rrM2ZVId2xIvhm2jm9aeiETtTqYqYsGYJfw
         0dX5CzY26iHOvK8uCdsAypXN0skpuS3vqxo0+aB9Yaix6SE5dTEUhk2mD9sQXnEzTPbi
         AVoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ce143b0UzFrTs2S6XUGRFj5Am9xuzKbPct8jaDG+N3A=;
        b=Dnqcm8wKnsynKelJ5jt7gZHVb07y+RpiAscdxFiZvLrhWk68DYzc5Cju3YI5l/Wgsk
         Sx42cmcjS4eo6q+GTJwJknsqKL8DlDLan37OV/piFIaQJ2hO22Gf8KJ8WhC0XBp7EouE
         dNEgo/vacBYmKcvKG61gvreSpVbsACsI5BIRuZ8bueGl0BLbbEWOEN0GuUVVRjGdmTv3
         G5AAEyqPOdnlBHW95WqWJ3E7C5P4EQ3a7XPgAn5qwcQbpMmVauqEVUW9MnZBwVxLHfTT
         G9tSKfuylOImUnkgRpzp4rhVyfP8DeuBIWOXee0fRyhyLpETrUMDPN9Dh7FCkcEslrIX
         vryg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ljbIiqwT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ce143b0UzFrTs2S6XUGRFj5Am9xuzKbPct8jaDG+N3A=;
        b=cMqEcuIqxvaAetZafkBsbX13FsMSCHqjGxEjaZlv8PcLccEYmCIuQCF83QZmMONpyF
         ybYprl+r+7EcHgxqBYIlVmdkiReR7v4a9aG1c4z4fxNr7CC9t+YlGvqCk38xQ/hvoKj1
         ksBmEOfnaAch8XWityVb0+7CrloILIoohGVlspNdpj0gGRt166j9PJiNmV31C7FdJq1I
         4woOrLIqUss1q8OtTVnVnjsawPOIy47tBiLryj+UVqblwliVO0IwN1ANZI8XWD5s6mNt
         xBr5YHcbVzCYmvaRRIB+4QiDGLFjK+5m3nnMpQFooglaIX+42LzZZm/rTYqfYKqpzYaR
         GNcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ce143b0UzFrTs2S6XUGRFj5Am9xuzKbPct8jaDG+N3A=;
        b=hXyvY9QlMiFng0fLtAcrW/VcoXdXgRXAi6mO4uf/QLhgbrJnYmmYBbtVf5ZTA1oq9d
         n7voTBNXEg2zC8q0KfXWtgMWIAH7AIaHce9loXRzSbOEapF88enpkTAwbMAcyCxGTxUD
         AeTaF0lKkaUWvTHtx1nNLeUP9Lfx7kgnnz1LmR6Y2DLbEJa/VgP3IdaDEZawdsLz9QKZ
         zY0NdvzcX/aUaVqE5ULYda50VOTvhggzfdC72wbvrosHYXR8+GD6MOBALch3pGku35Fv
         e9ReKxWneBDss3zCLOth29R5L15E0kvcRmf5FjjkiAVNGk5vEad8T25GD5q0MdSsrAuX
         5fMw==
X-Gm-Message-State: APjAAAXNqaxkqJBWse03wvGuDYsvFN3LC1fhG2/X2lOQLI9Cl98g22Go
	BiJK9rM36hXgon7594UZpnc=
X-Google-Smtp-Source: APXvYqxmKBB517CfziGg07Z/OzF7aRzZ+N8fxKSoMWgxE2mtAA9rKKTdO3Jdq7CkMTCbRrxK4qu24g==
X-Received: by 2002:a81:3889:: with SMTP id f131mr17833500ywa.136.1571162770561;
        Tue, 15 Oct 2019 11:06:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:240d:: with SMTP id k13ls3003787ybk.16.gmail; Tue, 15
 Oct 2019 11:06:09 -0700 (PDT)
X-Received: by 2002:a25:e649:: with SMTP id d70mr25279509ybh.455.1571162769557;
        Tue, 15 Oct 2019 11:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571162769; cv=none;
        d=google.com; s=arc-20160816;
        b=hrXTAcCP3UYWL2WPX+aG6AgWoXGLwo18rNs7zgxTFxq8ygAFNcUxn4KRRRr+r9cqzm
         tRvFQ646MS65cx7jueV9Y2OLh0KwNVA5fpL3tgh9269ewayVlPH+93he0kUyBIQUdTCW
         a+DHDTsEcx/kQDvLKMELbEXU/eO7laueKSl+Aq6db/a4cuTiNgcZziJ25GM38U7zXlKm
         Wwm87uHUmiBev9Y867UFGVTIsie6ddNrj7BHGIA3vPT6Ms2kyF+PGOBKkT/bjRsl2SoT
         af4eT5Gl0cqXTeZeEGB5oTXSnBm9M8WsQ6RK4fWJxeLYPRDoqrGmsjoxiMsgbGaM52Oy
         2oUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hBqT9Ybr/Ipic63e3mRedQn/6ltePkNsW7NCVWavp3g=;
        b=CXoWCNBYAwR8EBoyfZIFaSUIFma5XYC3qWg7EoIEMDKFhqbRVYTuseX/hje9Cn5OO4
         GXseVFshUtBx0E7BcSkxfruWp3LAHuamJZuzACzVdMnrLZBZV3y3wHDsTXPlJadhrJhm
         ePzWMf5x55Sd2HnYBBqTDwBTWaapAunoaRaJ+sKwLFc0PUqnjheafb5G2gZn0ajom+yv
         0GgVaBbMRdDzYitgOLNsnX2Vc3MMAnQW79T9BJwYgq6UdCdLrWDWJt7PzFU/TPn17wl3
         E1qs+Jh95yVlfdm8mX4HeFvhDvfbYxHKkh0wF/I3WSk1V17gSgvnUrh4JNpl3uTTOPAc
         WOKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ljbIiqwT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id y7si1280803ybg.5.2019.10.15.11.06.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 11:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id t10so9954087plr.8
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 11:06:09 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr36165530plp.179.1571162768113;
 Tue, 15 Oct 2019 11:06:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com> <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
In-Reply-To: <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Oct 2019 11:05:56 -0700
Message-ID: <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=ljbIiqwT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

On Tue, Oct 15, 2019 at 12:19 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, Oct 15, 2019 at 9:08 AM S, Shirish <sshankar@amd.com> wrote:
> > On 10/15/2019 3:52 AM, Nick Desaulniers wrote:
>
> > My gcc build fails with below errors:
> >
> > dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
> >
> > dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12

I was able to reproduce this failure on pre-7.1 versions of GCC.  It
seems that when:
1. code is using doubles
2. setting -mpreferred-stack-boundary=3 -mno-sse2, ie. 8B stack alignment
than GCC produces that error:
https://godbolt.org/z/7T8nbH

That's already a tall order of constraints, so it's understandable
that the compiler would just error likely during instruction
selection, but was eventually taught how to solve such constraints.

> >
> > While GPF observed on clang builds seem to be fixed.

Thanks for the report.  Your testing these patches is invaluable, Shirish!

>
> Ok, so it seems that gcc insists on having at least 2^4 bytes stack
> alignment when
> SSE is enabled on x86-64, but does not actually rely on that for
> correct operation
> unless it's using sse2. So -msse always has to be paired with
>  -mpreferred-stack-boundary=3.

Seemingly only for older versions of GCC, pre 7.1.

>
> For clang, it sounds like the opposite is true: when passing 16 byte
> stack alignment
> and having sse/sse2 enabled, it requires the incoming stack to be 16
> byte aligned,

I don't think it requires the incoming stack to be 16B aligned for
sse2, I think it requires the incoming and current stack alignment to
match. Today it does not, which is why we observe GPFs.

> but passing 8 byte alignment makes it do the right thing.
>
> So, should we just always pass $(call cc-option, -mpreferred-stack-boundary=4)
> to get the desired outcome on both?

Hmmm...I would have liked to remove it outright, as it is an ABI
mismatch that is likely to result in instability and non-fun-to-debug
runtime issues in the future.  I suspect my patch does work for GCC
7.1+.  The question is: Do we want to either:
1. mark AMDGPU broken for GCC < 7.1, or
2. continue supporting it via stack alignment mismatch?

2 is brittle, and may break at any point in the future, but if it's
working for someone it does make me feel bad to outright disable it.
What I'd image 2 looks like is (psuedo code in a Makefile):

if CC_IS_GCC && GCC_VERSION < 7.1:
  set stack alignment to 16B and hope for the best

So my diff would be amended to keep the stack alignment flags, but
only to support GCC < 7.1.  And that assumes my change compiles with
GCC 7.1+. (Looks like it does for me locally with GCC 8.3, but I would
feel even more confident if someone with hardware to test on and GCC
7.1+ could boot test).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg%40mail.gmail.com.
