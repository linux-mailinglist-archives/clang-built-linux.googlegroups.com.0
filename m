Return-Path: <clang-built-linux+bncBDRZHGH43YJRB7VYZH6QKGQEM2ZIXKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 609BB2B41FB
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 12:03:28 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id v20sf8910349plo.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 03:03:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605524606; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1TLDqSXeHSNXxi2nnkbGVFHFGJtyKW6hWUquOJpFOyn9Wb/XlZCh71OMYnl3fwlpW
         wmFA1A0pD3e5PCdmjD87wTVJyZapjj/k0b2WkSvOLEvE8OEOIsFX2r3dPsAuqFvDSRwR
         X+gHkvhowcFO1PDSXlCL0DdHwEYd+NEMoAyjFF4WM0qCVAO2AQUdA7Z3vYJjWX/ksX6n
         6PTIdycZDhuagpmitoAdPojUcBHY9tWOIXQoRdUvHxAUC2CujI4U61VOJVHHpltu/raJ
         U4gik6euC6CxmMuTCIU8Se5LQ+KmiVJzAGj+n9ti6F+Phzn0GkHcGEXiuN/oXm/sVe8L
         pddA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=JprbSp04rC3iHh+aB34CQQrWYc0GVGHHstSpzKZqfuE=;
        b=WcfougTvhxM4Bu2j3pFLafzgqhESDWEGyuz1pEZphQG2IVGwDwRbHMGhDmPced4Q9D
         5H41vVN2/WJy/8lkrgBJ953Dojdk1ttt3Je3DzIUn80hc+urNfNs9iHp6Y6ya2SX/L5K
         dZvVEKMbc+MztyjIMBo86fgVJBEURASzHNV87PejYfKFaPGZEjNm6zA1OdyOJV1qT+TS
         4WBRf8UbDGlbY14MqkCaNWPg2ojHKk7pePiTRYlztwsyBqDiyq0xPPIzk5DQCoTj01dr
         uCR0vXaqCNY6mukfnsZEpRysOiKJrhJbK2OgRH0Lr6kSUc3eA4IPZ//DKDaiymmheXI+
         F3dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oSemWkKR;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JprbSp04rC3iHh+aB34CQQrWYc0GVGHHstSpzKZqfuE=;
        b=FJew+PJMNoT1gW+hXC/+zhgzEreFhi7eBU9LXGl4tKpvBAHatiCPN7Nt9sfHsWiMsS
         CHSMp59tOtoSJ5o9htBfHGaoYrr9QALtl4I46dI+fQQmCeyvqDjVjFKM1/Gj/D1VmCsr
         IUxlaN96ZhpjhIEDqDiYjZa+r9pGAq6nT3F1VtUnu0GKTayiiRjU83vR0T15rC0wA6D4
         72yYfIxB/QW5An0zTfSsHqQW3hEx7JSRJNBOv7U9Kw4BbkC/MBcCw+sW04iebVp04hR1
         oX6ebLgqSrLnF0QF5tMBP2mDU+lrAIZmClxEwOul21JLHiDegOOY2vQKBJYDA8u2ueRa
         TvmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JprbSp04rC3iHh+aB34CQQrWYc0GVGHHstSpzKZqfuE=;
        b=KH9GxPSZOzcFAACyG7biu4NVMXPRvavi/S5BsOTe7uLAJN80ray2s61veJoajtnfj0
         +3kwSKCW76BIJJrSrKtA8CCMXtlD0I5Q/vW9lZmU76C7IP+LHurmTMbqrn6EFXxCcA+i
         O2Jg8q6YdVN7XrbKFyfJbAc/rG3n2BK8QCMz4neBnerF2JY1Wour/043u2LhZ0+muKD8
         7t2yj8hLOR2PhTdRBZ0X0ZvGTjm1B6+aDYvFHywiWsxSyDEHZaUeetp/2MX6fyKtvGd9
         dltGgqWNm1PxI0z72e51ACOT1Vz7I/CKjSbgTfauLFqt8DZbdRptzdPYbLbighYPLkZH
         ssBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JprbSp04rC3iHh+aB34CQQrWYc0GVGHHstSpzKZqfuE=;
        b=Nur1iREHVkGj4QAT02DKG8Vfd97RleGnjnTQNbTOj1HLVhIjV9r93zbCkZuJEvxBlI
         mS62zwuzB8ImbeR/wkQwsyFOjAg/OcvD4S+vLaMFtvYu8AY7kmiJF6DSSehbbLarxHN8
         4N9rkv79E2RxuLIXcE6Lku6EQaR9Kce61CcBsfgXzS7tTo8bhhvwQy0cddngESLT6IFa
         pv9tw9KxxmRUqQ86Dw12sizfVN7pi+Y3GoitsyYebafan8NuOQeg1BO1nZxsHwcIRJS7
         gubjij4o6w1j/D4ZYD4mo/pC7MWhWWGTE5QGQOyMj4R7+2Xchm/EBynRGzWtlumRHXwl
         HF6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bAm2PYv/CPGFsBi3tB7GmJOWpU1W4Jy8nhyhiA7ixqgApDZVD
	fxJ/D0LlYkspCOQeJeSW3TU=
X-Google-Smtp-Source: ABdhPJzuywwZkVAmSA5XNCIlue4TrkvfrBbReoQR+5juxs6wLXaDm1XIojMSt6DEUiKiibEY/v7dEg==
X-Received: by 2002:a65:49c1:: with SMTP id t1mr12927284pgs.40.1605524606639;
        Mon, 16 Nov 2020 03:03:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls4116570plr.3.gmail; Mon, 16
 Nov 2020 03:03:26 -0800 (PST)
X-Received: by 2002:a17:90a:ee8b:: with SMTP id i11mr15888836pjz.118.1605524606012;
        Mon, 16 Nov 2020 03:03:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605524606; cv=none;
        d=google.com; s=arc-20160816;
        b=N51Eo4fMR8Xo2aC1zhg3UdmBBRhfIzcsPgzYCwPiLetEdgkLToIgKRp2ZYZ5w7OAQh
         s1uoyHt3WcaJp/o4X4J22XpR24u06PNDUznpOiwC19vUp/RE7snN3bn4x7DRgW+MIYdI
         AkZPd+KZc/Cd3AzbBlb38oIs9KcNEcYdCB4HKEjDDliquvA9CWcE1UDpxnngd9YRVgZ4
         dYWsJcg3znTa++mynlRmeZhiYA5Nm6uYXeb36OGxMXM6djSIf12hhYux0Yj5AfUPGRJM
         7zHd0MM+U2vJe1IjgTb/POc/W7n6T4q3H8cCOgc6W06RsM9Rk0fyA0GeDi+s3lhLsL0M
         W1WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6uB+yM5X+cpFMIOOauK5UvxV9OyukgFk1sQ27iEWLu4=;
        b=i/AtJu1eFlS2ygRpweMQSs/5aDopJcI5tTLKtuCskvvyNYSNLpA8AC86FCKfBUJGQY
         PYrnz7hSAjLWUY4vnU2w2q0rFh7LocmEesFCzAMlKIREuLn9+L57coLfrzmVQ9Q6165i
         fQ+NMw5g5Vcy8RjzSIDPlInnKBbMKWZPB1LXOGkQ0nHPxRunOMXeablW27PqUAibXF69
         Um3COxJbXOgWM4MGiaPMt2DCnHSzJZkBhY6UOcJ9kDDCI75pM1kAPLP2kwDfQYs4m0ZA
         jw4K+Nrg1euL6OZAt2hfgwjYZqeIMKonxt2TgbvpoTo6MSjPk5DPz8ZhOVDikHZbGhOh
         M0Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oSemWkKR;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id bi5si937811plb.2.2020.11.16.03.03.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 03:03:26 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id w5so2833007ybj.11
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 03:03:25 -0800 (PST)
X-Received: by 2002:a25:bcc7:: with SMTP id l7mr17377499ybm.115.1605524605331;
 Mon, 16 Nov 2020 03:03:25 -0800 (PST)
MIME-Version: 1.0
References: <20201114000803.909530-1-irogers@google.com> <CANiq72m=OK2bF2Nc-ht=ibNa2m6RcBCjFuhrv9kyoxE6yaMqVA@mail.gmail.com>
 <CAP-5=fV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs+590VwJVEA@mail.gmail.com>
 <CANiq72kV-hcmf17_rzywuKXe5U0kwCOb52SihwZHUK0z0AsECA@mail.gmail.com> <CAP-5=fU1RM-O4=OGGLkn2+jF4B=m+yhwqo3hE2EHSWRxQnGBOg@mail.gmail.com>
In-Reply-To: <CAP-5=fU1RM-O4=OGGLkn2+jF4B=m+yhwqo3hE2EHSWRxQnGBOg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 16 Nov 2020 12:03:14 +0100
Message-ID: <CANiq72=MYsucFkCtBZMN1VGVpRtMAwV2TpTvwXgeckwwa_7T=g@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Stephane Eranian <eranian@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oSemWkKR;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Nov 16, 2020 at 7:48 AM Ian Rogers <irogers@google.com> wrote:
>
> GCC [0-9]+ :-) Perhaps just a reference to the GCC bug rather than a date=
.

That would be very good.

> In linux/compiler_attributes.h add:
> #define __GCC4_has_attribute_disable_tail_calls 0
> to the #ifndef __has_attribute block. We can't do this locally here as af=
ter that #include __has_attribute will be defined.

As far as I know, `tools/` use their own `compiler*` files, which is
why I was suggesting creating the equivalent there.

> In terms of lines of code, there's not much difference. Arguably there is=
 a bit more cognitive load from the #include and that disable_tail_call nee=
ds the funny handling that's here but won't obviously be hinted at by placi=
ng it in a shared header. I'm a little concerned that someone will come acr=
oss this in shared code and then go and break this test again with well int=
entioned cleanup.

Fewer lines, fewer conditions :-) The `#include` is hardly important
given kernel developers already know and use compiler attributes in
many places (they are included in the majority of compilation units).

Actually, we can simplify further. The attribute itself should be
pulled from the `compiler_attributes.h` (a `tools/` one, if needed),
and the barrier should likely be the `barrier()` macro (ditto).

Then, we just need:

    #if __has_attribute(disable_tail_calls)
    # define NO_TAIL_CALL_BARRIER
    #else
    # define NO_TAIL_CALL_BARRIER barrier()
    #endif

because using the attribute directly just works -- the only special
thing here is the conditional barrier.

And this conditional barrier should probably be shared, too, defining
it wherever `barrier()` (or equivalent) is defined for `tools/`. And
the name could be `barrier_for_tail_call()` or something like that.

Of course, we don't need to do all this for this patch, but we should
always attempt to minimize/simplify the diffs later on -- that is why
I suggested using the unconditional `__has_attribute` as if it was
already properly defined (we had to untangle similar stuff when I
added `compiler_attributes.h`).

Cheers,
Miguel

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CANiq72%3DMYsucFkCtBZMN1VGVpRtMAwV2TpTvwXgeckwwa_7T%3Dg%4=
0mail.gmail.com.
