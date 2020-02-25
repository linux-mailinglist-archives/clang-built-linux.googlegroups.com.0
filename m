Return-Path: <clang-built-linux+bncBC27HSOJ44LBBYWU2PZAKGQEJCLQJWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5191816BD5B
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 10:35:31 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id bc3sf8706547edb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 01:35:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582623331; cv=pass;
        d=google.com; s=arc-20160816;
        b=rqk36fijtIEoIl+qcT7A4atp+b/j4XZA4bnm/CmUE5JLl+AQIPZQuQ9QVmYEZjFZpF
         yOmXX00GBOBFiBjeyt/DhwMxNx+5o5f8A5r3/L53YAOAS8oh+IiCpmhrlpc0uGYninLV
         ye37E96EyRuWnDvtX9KcM9fVAln7SBx8kP24eJ7tiRkp7RVtQWEsXCywIEL79KBh6SX9
         8zIaWc4IViQ1cPqkTab7/XOsrZ9iPXXx0Q5O0EKPjMBcQShJ3FlyqXABRNOdg5jwX5Ut
         o8hNYBw8YulD18FzcUUl6FE7iC2lqyUJS9chTDKkDeWErCJ/cE/oaSN7eCfEEj9/6AV6
         H8rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=PEmiJfBXoajKUqRbSfSJHj56Ki9dDnPUX39VdqRmaH8=;
        b=VBMV4LTso4e1BNJpZa1ls/6I8RLVIFvNAIDUi6+mhklNfdCosUHb2WyWuroyguH8GE
         CQV4UJEXH92ocF2satIShusEV2OOoiYLH4pHG1FZT4o9aT8ZKFjrs3Loc7PmEhVzPvXb
         DAY7qKjQu/4NR2D1RxfWrV20OB25De5tbBTIWVGoUhmSaYtwe+lqPged6EFBTJ79Mc3g
         wFXGzO6GQn+kib2kh5BZPGcrkD6hlaycTsokUmPi3NO/vMNHm0Rqy5Rw2+le/oKH3M/p
         6Vx42kbMwW/TcriaMXIZWxp2ARKqSD/VobbzPT9mCFx+10NeFyWZeXji4ABivJshHniy
         IpsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEmiJfBXoajKUqRbSfSJHj56Ki9dDnPUX39VdqRmaH8=;
        b=A+hhhVf2xQPcsnLyiGT7mw7WyFioWqmx5neIMj4fHJFmakn9/CSJMbx10t9btmxrEm
         HaDjtqgJyUu/TXvKWZ7v8s/Y+FbBQ+O5N+W1F7hty/9dhgcFAY7USFNJr7iNkhm/6veM
         nvgDLuKSCUqYU4r4mkOs0pfgXDBUGS9em8d1y+8fLMr2svia6w07UP79J1r63BNgrt0u
         76posaaZqdoiaW7TWS0smHns8R62Hz9hbkOWX5yOElqQXxmIh3lCRP1SzwyYvIIIVJNF
         UJgfjfrw/G+faSLYgWv8Q3nuD4/NbauuesBsm4F0uPXvg2PHzWSm+qbwf5/XypS9nraM
         6h6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEmiJfBXoajKUqRbSfSJHj56Ki9dDnPUX39VdqRmaH8=;
        b=JNny9nVx/kHuSXFb8qRmEFUQoocSH0Bt309p6m7jxu38n0O7Xg3gTK2BGgGShSBuom
         sxGxvJIQORdIOMPMBWvHUUp63+OLUl9nN0/wGaU2Cc0o4ir1COwWou5d4APFR09umj+9
         BcQJx90n9OZi5SdTQXInoBb/+5zJSXT3YwTsMNLX4ZTZOlcvQgAGSi2uKYptkURq/Pj6
         BydRtNNWssAZASr74E4N4Q6wCW2T4PaYqqEGceaZor6aX7stNyFGSyCK5aUbW3ulrWca
         BR8gzbvOSCeTzmqBnD14mlAD8jDb5aO1EAmdquD1fqTVDiq9+zjib2eCT86E6/9duJdc
         ErHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX40K5/oeMS8qO1XxLauEHXbRBKIs60HhtxQcAJbcUiU/tMLG6+
	p34TSgVAQq7mS7AbOu996bI=
X-Google-Smtp-Source: APXvYqytFR87pmZSyZHcNgS3kBsitZAKVBwNtJVjYwa1Ir+f66Cr1tDc3LFNOA/YEEo/WY3sEXPtfw==
X-Received: by 2002:aa7:df09:: with SMTP id c9mr50754802edy.133.1582623331030;
        Tue, 25 Feb 2020 01:35:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:405c:: with SMTP id ns20ls5246130ejb.3.gmail; Tue,
 25 Feb 2020 01:35:30 -0800 (PST)
X-Received: by 2002:a17:906:d4a:: with SMTP id r10mr51803838ejh.125.1582623330544;
        Tue, 25 Feb 2020 01:35:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582623330; cv=none;
        d=google.com; s=arc-20160816;
        b=yRzJTBFo1tYvMz4P3M8OoiswjCgwwJesw0XRfUuspjteiMHhEjG2UZzzlmDb6X8QWw
         Ww3PyhjoDEkCz83Wkcy5Z/Vkuvbqolhibh2emnqLx2ze+fk1jFtr8XxafV+WcMYnluhF
         O6E4mqW4aohvBhM+uP8HH1ZjEOFSdkbuvTNK3i4PrPnl8J0BpyHSPNZKNipO+pcILXSr
         BIHYfA/yUBWiLRA64o38lvtPO5Cjz5yPRWsZ+IooXvDD4STO7jYjPRLhAN2slu0JKrK5
         rRTrp9ZD0zs9CrdZUGpuGc32P7YMANilvk1iKlzTT6znLKO36afoenBCbJSnFWn3FFYp
         3IKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=1lBGu5hzC+cEIuOG6iuNalKCB52KcLCVJG4qMANsd/w=;
        b=KDxdW4gQb3amJzACfAuBLwLLlziUhF0XuGnpjo+H6LqF+8f04fwlJq3Iy2o1yFYfos
         WN7oixsCUbq07uFEMl4nh858n5zEm+678wQ/XHzpsRfhoYX8SvU61wExxHpeiw3feSC0
         5ZWzKyCpwy2Sm2FaBgR70Ag3GLy0774LL9LL15HTf+BT/pgkFPDmpASMA9LIYz8gLQ//
         zpdAVl5qwYAJkgqwoDaludydvUcYRKTVGBkj05uw6ELislWTfcq6hVdLiVYQIxaUqRBz
         eXzcvqxsnwGXbIJgVweefWUwHtafsmV/RN4P5UVtSTFaiahUF85xIRkttclqA5QK06uF
         Ht0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id b4si733584edf.5.2020.02.25.01.35.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Feb 2020 01:35:30 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-139-XFybLFxQPiu5Cqco6NpUCA-1; Tue, 25 Feb 2020 09:35:28 +0000
X-MC-Unique: XFybLFxQPiu5Cqco6NpUCA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 25 Feb 2020 09:35:28 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 25 Feb 2020 09:35:28 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Ian Rogers
	<irogers@google.com>, Arnaldo Carvalho de Melo <acme@kernel.org>
CC: Nick Desaulniers <nick.desaulniers@gmail.com>, Ingo Molnar
	<mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa
	<jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Jin Yao
	<yao.jin@linux.intel.com>, Changbin Du <changbin.du@intel.com>, John Keeping
	<john@metanate.com>, Song Liu <songliubraving@fb.com>, LKML
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] perf: fix -Wstring-compare
Thread-Topic: [PATCH] perf: fix -Wstring-compare
Thread-Index: AQHV6tcUuLM+xYY6ZEGXR+PNFoTxX6gqgYIggABl+niAAL+1kA==
Date: Tue, 25 Feb 2020 09:35:27 +0000
Message-ID: <7fe0ca3e6fb64ca59986584fffa824e6@AcuMS.aculab.com>
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
 <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com>
 <dad75d5a7aa443e39dc20972d80ee83c@AcuMS.aculab.com>
 <CAP-5=fXO+YMO9asspqYdvXATZONCbBYMGbdVNU_3+W3BdeunGg@mail.gmail.com>
 <CAKwvOdko+Qb=h_Pm=oFUnsiBg7Am9u=Z83g8cNyY1QZQS=Mh7g@mail.gmail.com>
In-Reply-To: <CAKwvOdko+Qb=h_Pm=oFUnsiBg7Am9u=Z83g8cNyY1QZQS=Mh7g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Nick Desaulniers
> Sent: 24 February 2020 22:06
> On Mon, Feb 24, 2020 at 10:20 AM 'Ian Rogers' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Mon, Feb 24, 2020 at 8:03 AM David Laight <David.Laight@aculab.com> wrote:
> > >
> > > From: Ian Rogers
> > > > Sent: 24 February 2020 05:56
> > > > On Sun, Feb 23, 2020 at 11:35 AM Nick Desaulniers
> > > > <nick.desaulniers@gmail.com> wrote:
> > > > >
> > > > > Clang warns:
> > > > >
> > > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > > literal is unspecified (use an explicit string comparison function
> > > > > instead) [-Werror,-Wstring-compare]
> > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > >                         ^  ~~~~~~~~~~~~~~~
> > > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > > literal is unspecified (use an explicit string comparison function
> > > > > instead) [-Werror,-Wstring-compare]
> > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > > literal is unspecified (use an explicit string
> > > > > comparison function instead) [-Werror,-Wstring-compare]
> > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > >                         ^  ~~~~~~~~~~~~~~~
> > > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > > literal is unspecified (use an explicit string comparison function
> > > > > instead) [-Werror,-Wstring-compare]
> > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > > util/map.c:434:15: error: result of comparison against a string literal
> > > > > is unspecified (use an explicit string comparison function instead)
> > > > > [-Werror,-Wstring-compare]
> > > > >                 if (srcline != SRCLINE_UNKNOWN)
> > > > >                             ^  ~~~~~~~~~~~~~~~
> > > > >
> > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/900
> > > > > Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> > > > > ---
> > > > > Note: was generated off of mainline; can rebase on -next if it doesn't
> > > > > apply cleanly.
> >
> > Reviewed-by: Ian Rogers <irogers@google.com>
> >
> > > > Looks good to me. Some more context:
> > > > https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
> > > > The spec says:
> > > > J.1 Unspecified behavior
> > > > The following are unspecified:
> > > > .. Whether two string literals result in distinct arrays (6.4.5).
> > >
> > > Just change the (probable):
> > > #define SRCLINE_UNKNOWN "unknown"
> > > with
> > > static const char SRC_LINE_UNKNOWN[] = "unk";
> > >
> > >         David
> >
> >
> > The SRCLINE_UNKNOWN is used to convey information. Having multiple
> > distinct pointers (static) would mean the compiler could likely remove
> > all comparisons as the compiler could prove that pointer is never
> > returned by a function - ie comparisons are either known to be true
> > (!=) or false (==).
> 
> I wouldn't define a static string in a header.  Though I could:
> 1. forward declare it in the header with extern linkage.
> 2. define it in *one* .c source file.
> 
> Thoughts on that vs the current approach?

The string compares are just stupid.
If the 'fake' strings are not printed you could use:
#define SRCLINE_UNKNOWN ((const char *)1)

Otherwise defining the strings in one of the C files is better.
Relying on the linker to merge the strings from different compilation
units is so broken...

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7fe0ca3e6fb64ca59986584fffa824e6%40AcuMS.aculab.com.
