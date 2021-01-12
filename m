Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBIUF6T7QKGQEAJUNYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7D72F25ED
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 03:00:04 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id y2sf533167pgq.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 18:00:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610416803; cv=pass;
        d=google.com; s=arc-20160816;
        b=LQUPXtAcm4d5lfaQuncHupllsxWqHKTKPS6tFnhXtQv4CDoZYIfZCLIpAdhGX7Xfzx
         nBK455txKScbBDht32Ph7fPU9Xi7giXazzdZ+CkdTum7wzy29wvlMAooUq+sFxdZT5Y9
         M5oKS1s7miCUK4WVn0unSJjk8Lb6PW4LsNonjO36zcvtHYWQtESvaWwRFEsyueUygrzr
         ozZkecafzR3HUmEK7kKWiWsUIRkfTmoR6fwMQC882Nyna1LREbRtDMsWAHtgBdxPDzUx
         8qRb0sAwX2jXmiq8+KQQPjT29fL7REIaHS6RnJl1UXBtCYS3NvM33Aj9oLQWpqmySrVt
         4i8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1J+VsgC34+iHvvVJGuoN3luOmI/R4etkOjdCJa5l0Fo=;
        b=LaldwFOQzMxulqHZH55wINAHrTFdxwU2ekUr20HmTdwBpZsrFjQM/H/nMOTDAHtHLn
         V1xeoaF4Gy2HllVRdi3cKkqa48v9RbjUAXOQ2E1DyCBuFrZTM6gn7zNPEBI4872z64Yt
         vmwhzXxtV4WlN3b+2N4vCTjm/WcHMFrMD3OSdCvhEp/vLSfcfj1TdbHUvA90HzR7GDrZ
         II152Hd0+0vR2sTqtyJD+BUjkvJGRX9NthcdheZRUtk9QTOGlWLwIgGqsf5RE74fRxSy
         skvE0jwvte+Dfi+YsrN80TpFXFZz8EVoWKjQkmhLs5aXzybKEeCkmxLFGi2acaM5CK04
         N1QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N8G1GiaX;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1J+VsgC34+iHvvVJGuoN3luOmI/R4etkOjdCJa5l0Fo=;
        b=YULmNAv/NVYWoSvGLuFzpM8vRpNrGb1BOlCogXOjIkJwFnKVQiZ+POp3ABBYJ+/+V1
         GOfrQWWPvsmeqMgPhlyBvArTN7RWwRV/bSPbp0zChzW9be+l7C+GpWmTn/mGjx/2nOKN
         ZrEZmm+D8JV2Xhr65ma1V2Wge4xY83u2tvHy0mKZ7vs+R2C8qkQyJExfEDl4TDXBJd25
         0F/hjpvxeTxgbfA7eReQAWUWpSOy3K6hPwaKiNWEE8zLTB5+F+vBPByJxA1OjxNNU4v4
         Qr/DwYllE9XJwQ5OtFufm8urra7FO/7/HdTqqzN2l9+O/HBqiAbPeoHc4jqFxCZMICBS
         VPOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1J+VsgC34+iHvvVJGuoN3luOmI/R4etkOjdCJa5l0Fo=;
        b=Gh1JGIFoM+QR3Txl8+GqeBvcmRy6Thc/ceZLQLtDNh8AYNt8vxI2OrcG2wez68eB4D
         soHjl8pTPJjhANpUJWL3dp7VLbYDrwBSUSFfvEnnvOGdiQbUcIigIkqb0igeU4ZiGFIP
         ZkuCizksXpLX3628Kn2vTu2HD6HmqUTzshqdvja73GmoXo9Cce2hBJJDVlaMt5TCxieV
         yOrRbHmCSgepQ3+47qFfqpypzoCfmrcrgAFcvh1eieNWOfIANEMLGXl+Qx++I0fq3byR
         RaMw3MTdfp6Bkq0+PTQ6jAEwYFIAWAyTuLTJCwNdnS7wPL7VuSTnw7e8+Y11o4u0abgc
         pWLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UyIeIutYaWYC4hO7Ctl8+JNmGfiR1/U9MlXINPqq0MCDANXy1
	txdViGVReNlxw/NfR6hZoYs=
X-Google-Smtp-Source: ABdhPJztTJ/HG3zREzigBC1hy5Vcu5jlwX1cWXOc8zTOXj11zIXI6+iKbEAzdqmt6EJWVZT9aNMg0w==
X-Received: by 2002:a63:d149:: with SMTP id c9mr2276616pgj.351.1610416803049;
        Mon, 11 Jan 2021 18:00:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls582739pjz.1.canary-gmail;
 Mon, 11 Jan 2021 18:00:02 -0800 (PST)
X-Received: by 2002:a17:90a:940e:: with SMTP id r14mr1886010pjo.105.1610416802301;
        Mon, 11 Jan 2021 18:00:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610416802; cv=none;
        d=google.com; s=arc-20160816;
        b=ad9ugGQBA5KPZgaCmoFUZnm8jSDtW4Ttjq4DMvAsY477K+v2yGvUNuDJY8GeQA+58C
         XX/t9okAoPGuriK0HlSRRb8MF4U/wv63iBz8rkoIXJwF/NRqD1MYbYdn5TL9OVWeBs8G
         /zHPhrqtCqjihqRltsM4Pq5xkl9rbmOgHwrY/pGSDP4dnit671/kaGYh9XJAlIdnyycD
         33cd1FikohtpUWxcp5/ZEakSmIjeIc0Wbo2gKeOELEG7+dwKemVE8IXy3o5gMSDBdh8a
         5amb5S+U8vZyAIdgLpAcMs+wvXaBPtKcyPBqEt2M/nhC6qAQGMeeC6wTaU0lREz7lcZi
         aQpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=OavUnJ3v/lGFi5ijff6RJv5HrBBprqBfJamMYtY2KXQ=;
        b=ue5eSsqkeliU6oUZbV3RRXBtnTGKIitx12hyMlNKVOn0PXQy6yyouasshW5/jMcUzW
         B890UOJpmQThYUImjA9Qa8bt5CxjImiimBJjUAbVWcDNxiAOC0jkuy5stgyTZw/O3rcz
         XyCalmjv9aM6+wQ2w/U9e4VgsnINTzQgmv5VpoiwAqNLR+64kp+AchEQgQPn9cvDFNeJ
         eQ0yz05G9lM4YLk3RNBh0AkhqIUx41dcUaXqksktV5lX9WS9AtZvGXUjzU0QBlR9r0Wa
         1kQZAO6CccBKf896KXaPVueB1kcAcK2K06fLzd095/gHqVHgONVdn3qN+b/7bdly+3qu
         2m4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N8G1GiaX;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id m13si85081pjg.3.2021.01.11.18.00.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 18:00:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-H8oABsysMYWAmo0_0k7Rmw-1; Mon, 11 Jan 2021 20:59:57 -0500
X-MC-Unique: H8oABsysMYWAmo0_0k7Rmw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA7321009456;
	Tue, 12 Jan 2021 01:59:55 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0CF51349A;
	Tue, 12 Jan 2021 01:59:54 +0000 (UTC)
Date: Mon, 11 Jan 2021 19:59:52 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	X86 ML <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210112015952.jdystnwkvuxsrwa2@treble>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210112003839.GL25645@zn.tnic>
 <CAFP8O3+uEE4Lity-asyFLN6_+8qRUD3hgcZVapXwk6EfmGM+DA@mail.gmail.com>
 <20210112010010.GA8239@zn.tnic>
 <CAKwvOdmGS97e4Rj_oW+RnkYAMjycTFQiiPJAfCvKTdxgv2KfEA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdmGS97e4Rj_oW+RnkYAMjycTFQiiPJAfCvKTdxgv2KfEA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=N8G1GiaX;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Mon, Jan 11, 2021 at 05:13:16PM -0800, Nick Desaulniers wrote:
> On Mon, Jan 11, 2021 at 5:00 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Mon, Jan 11, 2021 at 04:41:52PM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng =
wrote:
> > > To be fair: we cannot use
> >
> > Who's "we"?
> >
> > > .L-prefixed local because of the objtool limitation.
> >
> > What objtool limitation? I thought clang's assembler removes .text whic=
h
> > objtool uses. It worked fine with GNU as so far.
>=20
> I don't think we need to completely stop using .L prefixes in the
> kernel, just this one location since tracking the control flow seems a
> little tricky for objtool. Maybe Josh can clarify more if needed?

Right.  In the vast majority of cases, .L symbols are totally fine.

The limitation now being imposed by objtool (due to these assembler
changes) is that all code must be contained in an ELF symbol.  And .L
symbols don't create such symbols.

So basically, you can use an .L symbol *inside* a function or a code
segment, you just can't use the .L symbol to contain the code using a
SYM_*_START/END annotation pair.

It only affects a tiny fraction of all .L usage.  Just a handful of code
sites I think.

--=20
Josh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210112015952.jdystnwkvuxsrwa2%40treble.
