Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3NS632QKGQEUKSNPFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F131D3D48
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 21:18:06 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id s25sf580493vsn.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 12:18:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589483885; cv=pass;
        d=google.com; s=arc-20160816;
        b=VB80mccTm3r3mUGy+d87YGDbAJ7E38mKjamewlZb5L/pHLHw+IggZ8X9A3VdczYOU/
         OIqlBnS6AUlpYzGeVC97xXZvrqK+HNXqKOrPUOuMxvuW8tKi5nXPbMJ9Sn6zj44ovnrS
         4OC5M2cZRnBolH8Z6hEKVREmy7M+2cOEohgZI6k49F39kYkMtn2Zn8Ftkzow9LX69NnJ
         3nPWfNruyYwZURFfC/N723D67KHpd0ykFi4SV+b8Rj6MoUyz0RRE7D0KptjdUavj7MFB
         GiB7d5Za4TOiijnU/GBF/on9yQvYauOLhLQP6NqYZkjZiLs8fz5d8HD7FruYVSYYpSsW
         01PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n0fCI96DQkUBLsspld19lNIMzmLkUaRA1/OgXllFLWo=;
        b=clMP5w0P1n1nETaefKLj+KTG3Jm0Po2c9mfLBBMaeC3TyRCO8j7xd0i+n2JiuKnNLY
         3ReQznHAMMziugdzWvzKjm1VxH4swTzzY51cbn3oDw/dFtwCaIIw5TNJEhHPiQZI00sM
         FnXZvS0NMMKKFPvb+sQM6oLbHkiex2QQW/4AWDaR3QB/PgLhSsoSoe5gJcujDWQdZ0Q8
         ThlUkp0ggCrnhbANbhEQu9hJdZNd4Lu+KC9YTkvfj/ll7ns8H2etPtqZU/W6KFrp73WH
         Dk/ph2z2a99Bqhu07mu/oI24jKG1/f71uAM7qZiWVxpNReYeJWuEjo4fhF4SX9CL4i1a
         IG/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ehzn82XW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n0fCI96DQkUBLsspld19lNIMzmLkUaRA1/OgXllFLWo=;
        b=Gl2+A1lgWBuWBVfaTONB7Nwb7V2czbvVRC0+jnZ7paiSj4fmL2Kotsplooe1azV/8V
         v/2j1UKNTMu2UZZTPR/g95ZWxB3+ELRIG54J7AGsqeAZy19uyTx3JUXRvaEJgSaKAHkN
         ewki7EYE11ngb9XUiRd9LsCMJ0mM2XouBZyLY8DEMLVaqHeEGWz5pKkTGGbmqoWN4fjQ
         MevAsWrgIttztrjy7KgU0iBTcNmNqKuDfsk6mPtkhbJR6EtTawXOg3h/uxCkhGb4jMZN
         6o3dUv7KfxMcUsPPC0R7blcLd31FaIqUFxCo9F1cNA7UmHUmOFOaJMtcnF5DxekeSmZS
         zLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n0fCI96DQkUBLsspld19lNIMzmLkUaRA1/OgXllFLWo=;
        b=VDHccgI+f6QKRYDVStGrVpTyWwPtO56Au2yAlMylCF+kh86WSevFjXS03LFvSehNsr
         E+ZG01tgk7IkaG8MIAWk+bVMQg6HEGBUUJDYGSU6UuwEgpTwxr08gbjSIUASeqRE0mVj
         MsbMs5ImYWpmQ4o8axCIjCgDjhOEM95B0EBpCqBnLyRFFEyx6IePFPulFxnoNcMmt/ej
         dmikJfqaoR4UpPEIpuzy41za3LqWe7KG+5oraub7sYVUWDSCwoXkfHK5lhVutvuW9huU
         qRR2jM2c6svyGCxci7xmgS3bJLD7xXb1w4tYdg0ptBNQ3C0yTLT/nNaNm/UrgXvbLC7+
         Ip7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hGMdosuQSvprODEnGcJb9vZ+FT11KDC80RSmWkq1TPKiEE9KO
	bCkpVduao6zRmc/pyYjS36g=
X-Google-Smtp-Source: ABdhPJxkNWT9K1TEZPDsq1NNOP2YUcs+BonFzYEvwt7PlD/3OGXqcp73L+08tvqrJaM/L0Yzdj9/dA==
X-Received: by 2002:a67:b706:: with SMTP id h6mr5030773vsf.238.1589483885697;
        Thu, 14 May 2020 12:18:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3184:: with SMTP id x126ls493478vsx.11.gmail; Thu, 14
 May 2020 12:18:03 -0700 (PDT)
X-Received: by 2002:a67:d019:: with SMTP id r25mr4979058vsi.187.1589483883929;
        Thu, 14 May 2020 12:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589483883; cv=none;
        d=google.com; s=arc-20160816;
        b=WuEfMa/ysj06yPBkwjpH/yZlsh6v6JhSj78BAZcQDvNKOkXXWm/k3tdMKcVZ7MK+sG
         3ALjdn2Og7m21BzP6FClCdUmOvt7OgC2D4oYlZ25sG2EoMUfDKyTSKvtHYb0YcMXWCVM
         2JXzELqYnl2D/IxUTWo+jy5FXGSUzdkPN2rUPk38hFPDHaxZx40XWwVW8csavS1PUgbR
         E3Dn4ANjo6lEn8cFHPUZCYca67f9jrVPlD1ad3OAHQbvf9m+CZvIDcxGWzUu+l7jDDcg
         m+8eQG8WUPMfJYyI16TahksaOTRewELK6srtYSk980m1YfQ7dteXK674ZPE52SOQkgkR
         ytNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FpW3HF/nXi6w/16EHqbkmBkfp8I3MKk4SsBbt2uDHKA=;
        b=ZG0QQDqcMvuj/E1a/no9ogsa0c3aEhQuIhoDMzthiXBxHgymZTyCOU+RBSh3qpe0iY
         FsiEEvkhuawjISWnWXU9poc2yD2boYcecOCufGqHKXRVjltjj5EmrlRtZ5cYx4SteJCk
         eAMBOjLoDAyhJuUsXEbx1pKk0oCkzimCnBCvmSHASZFkTeYWXQeqHhZH0msVKKMDQwa9
         HkhNVeYVVUzFXf4krlnc/Hf1fKWbWyFNGIg8Ooz/jF1usm7RnjlgihzRNf0SW4rGDsUD
         vcIu8/MqyrWFAxbKcUJ1k86WiNOzkZQz5f/Om8JPKF+w38/EKese/daKPd1VZBpvmy+h
         iZXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ehzn82XW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id 132si319491vkb.1.2020.05.14.12.18.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 12:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-UuF2PNiJMLK52lSrNKaRQw-1; Thu, 14 May 2020 15:17:59 -0400
X-MC-Unique: UuF2PNiJMLK52lSrNKaRQw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48D0C1B18BC0;
	Thu, 14 May 2020 19:17:57 +0000 (UTC)
Received: from treble (ovpn-117-14.rdu2.redhat.com [10.10.117.14])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39E9C7D951;
	Thu, 14 May 2020 19:17:56 +0000 (UTC)
Date: Thu, 14 May 2020 14:17:54 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marco Elver <elver@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: ORC unwinder with Clang
Message-ID: <20200514191754.dawwxxiv4cqytn2u@treble>
References: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
 <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com>
 <CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N=wsr8kQ1VS9_Q@mail.gmail.com>
 <CAKwvOd=0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Ehzn82XW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, May 14, 2020 at 11:34:52AM -0700, Nick Desaulniers wrote:
> > The stack traces of the races shown should all start with a
> > "test_kernel_*" function, but do not. Then:
> >
> >   sed -i "s/noinline/noinline __attribute__((disable_tail_calls))/"
> > kernel/kcsan/kcsan-test.c
> >
> > which adds the disable_tail_calls attribute to all "test_kernel_*"
> > functions, and the tests pass.
> 
> That's a good lead to start with.  Do the tests pass with
> UNWINDER_FRAME_POINTER rather than UNWINDER_ORC?  Rather than
> blanketing the kernel with disable_tail_calls, the next steps I
> recommend is to narrow down which function caller and callee
> specifically trip up this test.  Maybe from there, we can take a look
> at the unwind info from objtool that ORC consumes?

After a function does a tail call, it's no longer on the stack, so
there's no way for an unwinder to find it.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200514191754.dawwxxiv4cqytn2u%40treble.
