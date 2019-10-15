Return-Path: <clang-built-linux+bncBC27HSOJ44LBBBWIS3WQKGQERO4TZHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2284CD73BD
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 12:48:40 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id p15sf3614053lfc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 03:48:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571136519; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vq/Oa7HxkCxhFXj0Uf27KtqByfjeeTXIx/dPIj0N68ysDylGmSkNiHp1H9Z6PmQrTp
         T43y7LwF7im+x84jn/F3VEgW4zGKu+xPRZV9nLaxHHwf3hzfglI8yJVte0xCOAX5B79U
         8OgnMBEx2YW/LDzVAVvUVvRHwauxJ7kWf0a+elkkKPR++gqS5pR3Fyz4aT4QgpyWyVz4
         GKZOWknnrYxY/a6IQabtEEpXnEGmdy10Uwtwv5qttb2dc1iWK3r/rmhaPAJzxTkxR96W
         VMBX7rqFEnm8RbrtEDexDtO7JCGwNzaK5gydsXDhKkaE0mtmsZwdzydhSjCFqBEznpg+
         3zMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=PzAx1BrNHMb1FGXeSiHHdhY2Va3Or/tCvScFdQizwBc=;
        b=Mwg8pT01XFYJLUY3egV8cBK1ucIgcKmlY943/FGE9po91lqAV3/LppqFZLnU+DdIR1
         RE8CAixxy0e5bXuKj/QVL3WulpEiRY9T7j0PtevV06YAwv9l5Gy0z+AnzsMUhd8T9MoD
         2qCsPQOdrx46vXI79xNdGOVyvts9XfJJnMBN4F29MmW0WIKz+hQlsRe/RO02Hrsw4wj/
         P+WkujqYPTR9YThLQDChHKjic6I8GfzN/XETCXNlfuKHcdSKNJtwciwUE8h3VwbofiMy
         H8ALbccq/stPPoyXebsu6RBrsZc7roY+uFoMd+cWFQ8JyZq2qEFH/fwLUHz3RXYU+ZY/
         QLkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzAx1BrNHMb1FGXeSiHHdhY2Va3Or/tCvScFdQizwBc=;
        b=pYEa8W3UfwLVlHqCEAle+1PmJkXbCvgj6mLsKeVoHEcfFfrhZySaL/2YJxtK+4PIDo
         +aMxIAlI0ijXAOYvvd+TgVoJvP18GrL72PIlReTauf7UjuPVKH7eVji6HH9Z1uSMOY31
         XkeSgVxt9d1pFeciMne44qTzDSUG2JyyJSvit9TFCBtiVtvncAGbQD1NU50LRJy2SGMf
         CvcNv69PX4MKMhXFUY8VeWR6mqEZanvQV+HBU/+vQ873J5AmNVH1T3+OP4Cp5HOR0vHo
         zaG7uK5Qs2Zryp+YX9/6Roh4YIZB7qSeduYN+zZqGEEIXj3j+XiZScpUX9VxWiUI2IOV
         XETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzAx1BrNHMb1FGXeSiHHdhY2Va3Or/tCvScFdQizwBc=;
        b=un4XhJxwEx7niJSNTs8Tnqb8j/ykDCIJbciejf9gwMZgBCLiYaVPzUERJDmT4bspx3
         walGpb57MyIqkZMKjgOFfJy6Sl1uxRc87hz4oF8+1GwlQNtGVJSI5iwYne1c72owl8tJ
         xsqhWooputZ4kZSQMwk6+OgWoKE+9CjxTIlFG442BOneg0MCtcPg0quSPKGm1o8fw/bJ
         xRMTVIYTDnLkO3Cat83tl56fn2T/teeSvxzPFh2ZbEj0aO+4WkhWjX7Vyx0QQuVZuzMw
         Xe6iTokYjCWyw7b94cjZCLA8tAn/PzJl58TSRtidey85KwgKnJ/reSszV0aZYMeBYgeH
         ZCAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4caHFAC0nk1s0oV/CJxYSuNB/1ItRmjYOo0J/F91hUgrBKmmV
	R+8zLlfPQcygOHZ9+76n1HA=
X-Google-Smtp-Source: APXvYqxbzL6FMbzSvE9lKcrrPYmRXRBG+rzmIHM4k7VhM2UlRQR7Q1Jrw69yCTawVuupOWj2QBqIJQ==
X-Received: by 2002:a2e:9dc5:: with SMTP id x5mr21016907ljj.31.1571136519656;
        Tue, 15 Oct 2019 03:48:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4190:: with SMTP id z16ls1578951lfh.7.gmail; Tue, 15 Oct
 2019 03:48:38 -0700 (PDT)
X-Received: by 2002:a19:5504:: with SMTP id n4mr2266884lfe.106.1571136518108;
        Tue, 15 Oct 2019 03:48:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571136518; cv=none;
        d=google.com; s=arc-20160816;
        b=f4Byl/mmEr45kebzIIiSSHPkptVk56fqhQQXLuKsEo9wTNfdNQUbRBq4OHdjLYEoBR
         sCZy90p9Mf1QnkME7VQubXz893dpu6ibYbG/9e3K6T0+A/3cvdhAxvEgHUpTLCs8KiqX
         WV6QAyXcRXVqb6C4P3HDESExEqksS2v55kFqBKQrmaXG8dLjulS3Fr50tf0nniGIINJd
         txhPNvt8OTu3IDa37tDkvoEZ9qGeVsYrzO4cYEt5jV58bTveCsVggr5+Wzk3ledUweLk
         ZE94HiXM4W6Y0ugsrS6SNDM42Jtb0WhzdV9jmVjW5uMk4Fh404TZaE0X45pCo0MIvGy4
         OYdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=Z3DgwfBZRAkc6d1mQ5kjbtg93aMkNbW0ljQeItcW/9w=;
        b=RllC0rTk3tHpg2rIDhXW358RS3rcOO9zKxUCQ8KuUzAoTE5PfiPaeu+QK9+ucGmsFD
         iwZl3ZJQz2ulQFjDefK4aRadneWAMzYp3DzHFahubUriZf+0+28IRq+KYoBFLKsEoW38
         OxfLfb4pTCXylZ46R/9FP1RnxDDJ96+kxSpX68AZUuSJ05OVnGhUXcSOAmLvUWwvglMz
         /Dj9+QWUM3r2MWvdv+nVqLd6sXQI+NSwpG6e/m/HgRSX/ddptXu4nu82GOV42yR+32CK
         H291sRomFnN1vKBXo9jOXLYZMcta8fIhLJfCQ8KuV1DvQ9Ci0LofqyQhHodQ6bgRG5D8
         geQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id k2si552773ljj.1.2019.10.15.03.48.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 03:48:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-4-OcvsGto7M5O-CokwjfVoxg-1;
 Tue, 15 Oct 2019 11:48:35 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 15 Oct 2019 11:48:35 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 15 Oct 2019 11:48:35 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@arndb.de>, "S, Shirish" <sshankar@amd.com>
CC: Nick Desaulniers <ndesaulniers@google.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>,
	"yshuiv7@gmail.com" <yshuiv7@gmail.com>, "andrew.cooper3@citrix.com"
	<andrew.cooper3@citrix.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, "S,
 Shirish" <Shirish.S@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	"Koenig, Christian" <Christian.Koenig@amd.com>, amd-gfx list
	<amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Subject: RE: AMDGPU and 16B stack alignment
Thread-Topic: AMDGPU and 16B stack alignment
Thread-Index: AQHVgyjgGlq8x7ABFEya7CGn/JANAKdbg66A
Date: Tue, 15 Oct 2019 10:48:35 +0000
Message-ID: <309b52a1c174410f8c6c14fe69c32e51@AcuMS.aculab.com>
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com>
 <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
In-Reply-To: <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: OcvsGto7M5O-CokwjfVoxg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Arnd Bergmann
> Sent: 15 October 2019 08:19
> 
> On Tue, Oct 15, 2019 at 9:08 AM S, Shirish <sshankar@amd.com> wrote:
> > On 10/15/2019 3:52 AM, Nick Desaulniers wrote:
> 
> > My gcc build fails with below errors:
> >
> > dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
> >
> > dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
> >
> > While GPF observed on clang builds seem to be fixed.
> 
> Ok, so it seems that gcc insists on having at least 2^4 bytes stack
> alignment when
> SSE is enabled on x86-64, but does not actually rely on that for
> correct operation
> unless it's using sse2. So -msse always has to be paired with
>  -mpreferred-stack-boundary=3.
> 
> For clang, it sounds like the opposite is true: when passing 16 byte
> stack alignment
> and having sse/sse2 enabled, it requires the incoming stack to be 16
> byte aligned,
> but passing 8 byte alignment makes it do the right thing.
> 
> So, should we just always pass $(call cc-option, -mpreferred-stack-boundary=4)
> to get the desired outcome on both?

It probably won't solve the problem.
You need to find all the asm blocks that call back into C and ensure they
maintain the required stack alignment.
This might be possible in the kernel, but is almost impossible in userspace.

ISTR that gcc arbitrarily changed the stack alignment for i386 a few years ago.
While it helped code generation it broke a lot of things.
I can't remember the correct set of options to get the stack alignment
code added only where it was needed (generates a double %bp frame).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/309b52a1c174410f8c6c14fe69c32e51%40AcuMS.aculab.com.
