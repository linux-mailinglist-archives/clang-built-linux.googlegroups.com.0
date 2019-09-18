Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBXODRLWAKGQEMQGDAXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 19766B6ED3
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 23:30:07 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id k18sf775321pgh.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 14:30:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568842205; cv=pass;
        d=google.com; s=arc-20160816;
        b=OAIch+/gnLJcp2hUzPaOdgvTtdf18W8/mxh63wNvlQYIfEtG00orM4xroFnrqnjrwc
         BYmJWlkppzXZKwCVuKUzbRq+dheFaVHIOS6E8SXf/219tUEXvt+jynKjwneA9sK5fzZ9
         Q0y2wkDg4e2XURlXLyxS4UbqP01e/NYsdgoUiElTjTFVy8wLMjWPRqnFZavctVRuLW/l
         FoJnCoa5xRMr2ASkdnnAtlPg381yMps7+qeDzZ4DrXL+dQBErF+J6+00PsHD4yYKLxIo
         S35WqteWMIeclb85Kxu4uBA5iEljeCAyz9MAeuIJg5nJrL2BEPTQ/oDJmS9t4Mdb8fgC
         Jllg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rrXggZUOrGvNE04mTzV3Kr1MNiRsgGx9tdGchdOdAKw=;
        b=TFkwqzuMTDCbZDfc/xpC7T2Hvy1eS7t/IQxlQu+xTgLl5al+NnswXAC8w4TPfJWeuA
         dz24smzi9KPM/MgA/WFP3pO0RXY4HUwd8tIzAGmUz/EjpCZUrBrDSCiXCLWZI7544dFe
         UTqCwx/1LpxsHKhc9u1PIT2e1+HsqZZ3ubiKo/PVZXdzACiC77AWzg4kY0QWI64KvQVf
         vznPG5EhMQeBhY/PWVizbFnmIrNjELV4X8ix5E8jmCq4w9EFAy8oGWmc0zWaYZVOxZ6Q
         EHtGO/fq/B6EPrjc0+IZpTCaDNTlJNP5eEu5sSiZc6MWkeJ0Pt6lzj+AzQ3WFdqzNm9o
         Rx5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIbLTEk7;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rrXggZUOrGvNE04mTzV3Kr1MNiRsgGx9tdGchdOdAKw=;
        b=LWTdIugqPGThfoycNEvBFuuZCRCd0itAIokHQ+A+I2UscVSF4lXI9LOqQXiSA5QLlW
         bL38ittfPIK3by5GIqRxFqwR7A1lSVoSyA7xtKQZsOY5Axyec4+toraxg7bic62TOP3I
         dV7UPrhCP16G/x+PpLFiBg8guwP5d7uazr6/eXwk8Ca/zZXMD/ENRmM/jrAHRu8TgWA6
         TgoBIKQzzU5edzS7TuqdmuEu3NAhK/1sSVyMXvn6m/2vgYzxypJQkBsu243mIJAy2dnC
         u0k9Iw/5awbWYeOeF+Q/26SgTN/HOJ/3lGBEJAUOmzWlUBnbsHlVZs7rIGiLQs4XEYL9
         YCfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rrXggZUOrGvNE04mTzV3Kr1MNiRsgGx9tdGchdOdAKw=;
        b=SJ//uWKrtixFtqtki6hnJzU7tsCNVOEWDUQtWukwrPLUbGGpeOcLKXJdvQbWHg3u0K
         PtoZMcZhl9rNeLduFcCMOGpvkFx5RCs+u5x0cej+w/X2OiJaGN1MRAlR4iAvHdPnuqjC
         qdQYIGjEjts/f+FZiOLa8tg2vyy9gvJAm/krYHJX8DRjZ9xncqJoHtxVdni5E0cqAvcG
         0Zky3uUcnTakQzv1IvZ7hZXlgHkm+/xTpTj48gSvimziesKR4G+UtnZNajuldj3NZbV5
         bHr4QAhyYlAfkgbI8dhPg/S/JrFop4aZYK5ew0upjkQGyGLDiPhZ60OiDAF3x7mPkq06
         vmJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rrXggZUOrGvNE04mTzV3Kr1MNiRsgGx9tdGchdOdAKw=;
        b=Vv95HyedzKGWk5ZBwwdWBFsBDvaYgN5+y34oU9JF2ZygaRn76V4ZXXAanekeTFiLdo
         3vNVW97nUnGURO55FHRWddbL3twhRk6Vy9PKk3XuCF8newK4CXkVXn9aag9sgqmHiwyD
         NDtiJmOKfiXP0yxsHVtYqTdnBQEXyx692A8hJAuqmigV5PMBaZ4jB3JauruT1+A1NerZ
         YlsK0NwRvaoaJFe1A7BmCM6ONSP21hOhfjmUjZCk/GqWbjVq2Bi9uLj8mRIXzfLa7MDV
         Ys1e2hi7cM68ObdOe8JDOg/CVYl9bZKy2vbcOuzUpxHQAnCUgFIhlSVP5gHOTh9LCIgn
         JFiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMM2qB2GgE+sS0NPEISXqthp0Uj8fqjRdAa4Mh5qjTWaHGzP/v
	eYnIZgqxZsRXurXxgpw6eAM=
X-Google-Smtp-Source: APXvYqyPC2uKAT+PMpGxbRK9O+jLQuxQeiBmHgDWIVTOh/tcPykxcMjYSkeHxZ+H1WeIDtQhFkpZNQ==
X-Received: by 2002:a63:3805:: with SMTP id f5mr5868518pga.272.1568842205397;
        Wed, 18 Sep 2019 14:30:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d705:: with SMTP id w5ls298691ply.12.gmail; Wed, 18
 Sep 2019 14:30:05 -0700 (PDT)
X-Received: by 2002:a17:90a:a6e:: with SMTP id o101mr430707pjo.71.1568842205020;
        Wed, 18 Sep 2019 14:30:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568842205; cv=none;
        d=google.com; s=arc-20160816;
        b=UABqIviL2EDCWDH7PAAgiERgwMrn6KNuyRM0Ahaixh55U6eplsAEykJzu3wMngixcc
         hLu//vRC1MAcSmwbKAN+ESeklHhnDFwCodb+6B0oDnq8ZdX7ymTB05AGPRfp+wEmYPY/
         x+4rtIPKrfuah6RhP3BfIYeTn9RXpns7sHdWsbbbXMTUeJcJfFvEV3mxdm+Z9NWREkH8
         S1D8UwJBbiZUsI9TLTVhrehlu8hgvMEnwrsCBZvAeNsYD50sNjB4+U2u9+8RtqHuyZtR
         eoLf/Yi0+j90V86W7FaePedsQsyzNRg4sM9LHAPzDcYfcZZkA7NwwzwMag0Na2+YMVgS
         QcqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lGoxk8Izv5KBiBWqzGeBm7lOkOJH17/zAEAijmUsBFU=;
        b=SBIyVMsjxaGvC7TniHHH1SPbkfIj4jcoHuJZjp2e1Nx645UE1QDRszCbiOfKS1mQ2s
         JqjE3Z3/V+FZfrXff3NYFX1rOFO1uVTGWNW1yegFvcFJ9/ZPG0ggYfWA41hV8ORHU4Nh
         PmABpG8p4K/NB7WS6WbsjVC+vUhZdJ1Gm6aw+Z82Yc8tkv8ntxbz43iy8mDVpK0L5GeV
         l3126ql53J9jSw+vVWMQa3hReOhfKrMmk9meGh9EIZxAOkTVrAeWvUCxOtAn2BXYjJxA
         H0zoGOUAf+LuJhPjdk2Mp8bErG9bkihbbykW9ao16uH+tx8Tvz1tK2qDkasEbuGq/UBM
         D1og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIbLTEk7;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id d15si199825pjr.2.2019.09.18.14.30.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 14:30:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id r5so1633641qtd.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 14:30:04 -0700 (PDT)
X-Received: by 2002:ac8:5147:: with SMTP id h7mr6398594qtn.117.1568842204628;
 Wed, 18 Sep 2019 14:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-10-ivan.khoronzhuk@linaro.org> <CAEf4BzbuPnxAs0A=w60q0jTCy5pb2R-h0uEuT2tmvjsaj4DH4A@mail.gmail.com>
 <20190918103508.GC2908@khorivan>
In-Reply-To: <20190918103508.GC2908@khorivan>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 18 Sep 2019 14:29:53 -0700
Message-ID: <CAEf4BzYCNrkaMf-LFHYDi78m9jgMDOswh8VYXGcbttJV-3D21w@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 09/14] samples: bpf: makefile: use own flags
 but not host when cross compile
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kIbLTEk7;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Sep 18, 2019 at 3:35 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> On Tue, Sep 17, 2019 at 04:42:07PM -0700, Andrii Nakryiko wrote:
> >On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
> ><ivan.khoronzhuk@linaro.org> wrote:
> >>
> >> While compile natively, the hosts cflags and ldflags are equal to ones
> >> used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
> >> have own, used for target arch. While verification, for arm, arm64 and
> >> x86_64 the following flags were used alsways:
> >>
> >> -Wall
> >> -O2
> >> -fomit-frame-pointer
> >> -Wmissing-prototypes
> >> -Wstrict-prototypes
> >>
> >> So, add them as they were verified and used before adding
> >> Makefile.target, but anyway limit it only for cross compile options as
> >> for host can be some configurations when another options can be used,
> >> So, for host arch samples left all as is, it allows to avoid potential
> >> option mistmatches for existent environments.
> >>
> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> >> ---
> >>  samples/bpf/Makefile | 9 +++++++++
> >>  1 file changed, 9 insertions(+)
> >>
> >> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> >> index 1579cc16a1c2..b5c87a8b8b51 100644
> >> --- a/samples/bpf/Makefile
> >> +++ b/samples/bpf/Makefile
> >> @@ -178,8 +178,17 @@ CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
> >>  TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
> >>  endif
> >>
> >> +ifdef CROSS_COMPILE
> >> +TPROGS_CFLAGS += -Wall
> >> +TPROGS_CFLAGS += -O2
> >
> >Specifying one arg per line seems like overkill, put them in one line?
> Will combine.
>
> >
> >> +TPROGS_CFLAGS += -fomit-frame-pointer
> >
> >Why this one?
> I've explained in commit msg. The logic is to have as much as close options
> to have smiliar binaries. As those options are used before for hosts and kinda
> cross builds - better follow same way.

I'm just asking why omit frame pointers and make it harder to do stuff
like profiling? What performance benefits are we seeking for in BPF
samples?

>
> >
> >> +TPROGS_CFLAGS += -Wmissing-prototypes
> >> +TPROGS_CFLAGS += -Wstrict-prototypes
> >
> >Are these in some way special that we want them in cross-compile mode only?
> >
> >All of those flags seem useful regardless of cross-compilation or not,
> >shouldn't they be common? I'm a bit lost about the intent here...
> They are common but split is needed to expose it at least. Also host for
> different arches can have some own opts already used that shouldn't be present
> for cross, better not mix it for safety.

We want -Wmissing-prototypes and -Wstrict-prototypes for cross-compile
and non-cross-compile cases, right? So let's specify them as common
set of options, instead of relying on KBUILD_HOSTCFLAGS or
HOST_EXTRACFLAGS to have them. Otherwise we'll be getting extra
warnings for just cross-compile case, which is not good. If you are
worrying about having duplicate -W flags, seems like it's handled by
GCC already, so shouldn't be a problem.

>
> >
> >> +else
> >>  TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
> >>  TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
> >> +endif
> >> +
> >>  TPROGS_CFLAGS += -I$(objtree)/usr/include
> >>  TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
> >>  TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
> >> --
> >> 2.17.1
> >>
>
> --
> Regards,
> Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYCNrkaMf-LFHYDi78m9jgMDOswh8VYXGcbttJV-3D21w%40mail.gmail.com.
