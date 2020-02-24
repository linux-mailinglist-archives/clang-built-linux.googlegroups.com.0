Return-Path: <clang-built-linux+bncBC27HSOJ44LBBYXHZ7ZAKGQEWIY7LVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E11A16AAA8
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 17:03:46 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id k21sf2541224wmi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 08:03:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582560226; cv=pass;
        d=google.com; s=arc-20160816;
        b=KS8aoK/aW+CV08LFbluyQgKlzeY7/CKuSC7Ld2/dAfYw5/KG+0S1ZeKoeENCe+hDq/
         qmNL++ZmORGSbenfbVTonU+tx25Ug10R5SRrlv8dIedzCxkrmmbpTseEJofo5Ejt3tT6
         wXGzTFixO4ooEk6WYWrEm0jGs+ZDMGG1nwlZQ0dZTIv1M/kQoQmHx3Pb9HBNGlCqx8ve
         SiJojWGWobrPji4PV0S/te9efbmg0wlFBRI9jddydt+UPmEjL/bndX2VdnyOZoRmsg/o
         QV7p1vaWTkhGENjNcHM1WHfIN9dtvFxGFTESgU5I2ozYWjuykvs3rHDR3pznMhJ6x7ds
         Qtzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=VOH0ujt2/VGhJtFDabMGxcayMKnyNjemRKk6JcQMgMo=;
        b=tEYSq0PjpdPDxrHPPEq+S43DSGcul8ajAl6xcAQZ5nSW+73edqpTOtKhYfZqoKkemK
         0gybJzDT5HZQLpF75msJ4hF2jPzp7b3n/gmK+uGMLeG+JI++gR7mAg6KKojzKMdNrGIF
         hsu1LmdL+ONv/knuVpOUZNsq4ectxSsAFjWxg5CkKdkzS5vp3nRsUkRJVy9Gtkglt9Lm
         R1C+kWfIqVRpCxKxeMDZk7HOtVu/6j88K9jRwa1h1cfl/sPpedRU78cC3O7j7g8d00/7
         fqotHFzfLNaeCv2LRsMmB4xU/tBdXKIdGWnOINNJTwPwwNv8Jit/HYyTI/yMftpPf91T
         OBUQ==
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
        bh=VOH0ujt2/VGhJtFDabMGxcayMKnyNjemRKk6JcQMgMo=;
        b=gOsrJF95BPUacAC4ATF4ZwmVlOvGI6xs9volgTrXHvFQSs+qOR+Ia1ThJT0WEWlEjd
         IYHQMBC7B/sGg4I+wBR3lJV4qPnkhsd1acIS2aygCVwbYr9lyRh3zR06Shkn04g2OiKc
         NQjPKXMxoSHv+OohXoeaIp2pZxnkiSFUJBCe/poKVQ0yzJf9nwmcNh33dvSkYLmvNQ+t
         XMSZ4BRIcDYUnDJO7coSJBb2rBaUEQ2vAX5fN9h2J0oYZ1bbKqmh2JLZo/CL4Kn1Vl1M
         FzT/eR/nx+o7PpSqwknNE+x65oPDtDdwpqnD8GFx377W3qCimCQkSzf9AwsiSbw+bYaE
         mAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VOH0ujt2/VGhJtFDabMGxcayMKnyNjemRKk6JcQMgMo=;
        b=LooJ9my1EPa+V9aYbllA1+klz5HN+d6iFCOAjkbw7OY5GI7WZxlDnkTetK8Km6xtiu
         /+JCf2KLuPcu9lJ25C2FMrwRZDYg2CYsHMHWsoWSlf9KoDRgAQHGd2yycHlajEmkpsjR
         NsxjDWttzUeIJgOHVoDMa3CGkL6BC3BE3ayLY1H2WkKgBCJy02lF4/+3iGsxAnm5WiYf
         Fny0FhzHMUezaTrdgMkwmIl4XIdn89uBOCxAjf6jXhAJUun4/Ca0KYLXUWYStfNmb951
         +4MsjihD1KKJOEmuKCSkoJJHtYT1DVH6nZKFdJC4RAJ1WQ4LhtbRF9HPP3Xzzv7afrBB
         Pcog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWItYV0EswcXv5heEY8XaRP1zVZSt3H7lsIpN7vjqdqpHuFfBoD
	clKdHIes9Q2i5TFYOybxoJY=
X-Google-Smtp-Source: APXvYqwLsTpli1uCQ9UKYSlzM5dk+dJdj4Bx8fAJXbe4Iq+BxUABl949Wru24Ajh9VUC3WDt7co/FA==
X-Received: by 2002:a5d:5148:: with SMTP id u8mr70746824wrt.132.1582560226202;
        Mon, 24 Feb 2020 08:03:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:288:: with SMTP id 8ls4935428wmk.3.gmail; Mon, 24
 Feb 2020 08:03:45 -0800 (PST)
X-Received: by 2002:a05:600c:21c5:: with SMTP id x5mr23434515wmj.72.1582560225669;
        Mon, 24 Feb 2020 08:03:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582560225; cv=none;
        d=google.com; s=arc-20160816;
        b=FIEYHG6ueAp7AonGIgZED8gY8Yv4fz/Q0/U5z3ETnfkdu7I/5xA+AixUNj0XxeOTUi
         XXbSSkiEBapeyI6nTCBHcTSvI5CmA1iSymoXbj7CKPZvFKB5VMsBjzgWg/Ly9NGWigYb
         3n2GkMmsK9JV8IVH9ZYKqvSc0gxN7u3ketfMBrLRKC8AD3SNCg6A7FuW5PGHGIlAVrZK
         CXoyEWYOc5/EdZelY+TXySaYv+fVFdDum84N+XEVzcG4Lkxgwv1JZAJPQ3wL5QfkOAF9
         jYIEvCZgk+fqMXixURfQAZgotjlmleMdvrTZ7z8iq2eZnHtNygcEyYXjPWtuKdhL7TJp
         tnBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=+IUasr3t1M/edqD6LJ3XMpCzpaXdmf+2nxXzlhjqwRk=;
        b=f61UE7exxub9hodkZJdpBF+vVp6tsXeGg9x1JwvDqb16AiGAz8SgiNbH1PKwFhAmwF
         GI81vNAzAWKDz4pJh6f118iQ/iLHYqzNH+1m+Hvha8xwkD902CyYQly1af/FBeVlwOsa
         I81a+5RgdtTX1ZhDjs17o6IbQ3yDwHGnXHXuQH7e3wtZFA6huIjwr8vMSaUS8cdcBkVX
         /CN/xfmT9SwbrokzNyHwUcakbm5cUrTt9GDiNtwTiLN2M+RL+LEeh+1sU4ZJ7IFGT8zx
         I2RsCJsKjUxrDevIzooOauM3Mz3zhy+ddh55zwX5lr9hV/Z7CflAvQeQvhQj/BE7cTHw
         zZRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id d191si13014wmd.2.2020.02.24.08.03.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 08:03:45 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-165-GCRGvgq5PuayjL5fff0xdw-1; Mon, 24 Feb 2020 16:03:25 +0000
X-MC-Unique: GCRGvgq5PuayjL5fff0xdw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 24 Feb 2020 16:03:24 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 24 Feb 2020 16:03:24 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Ian Rogers' <irogers@google.com>, Nick Desaulniers
	<nick.desaulniers@gmail.com>
CC: Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar
	<mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa
	<jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Jin Yao
	<yao.jin@linux.intel.com>, Changbin Du <changbin.du@intel.com>, John Keeping
	<john@metanate.com>, Song Liu <songliubraving@fb.com>, LKML
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] perf: fix -Wstring-compare
Thread-Topic: [PATCH] perf: fix -Wstring-compare
Thread-Index: AQHV6tcUuLM+xYY6ZEGXR+PNFoTxX6gqgYIg
Date: Mon, 24 Feb 2020 16:03:24 +0000
Message-ID: <dad75d5a7aa443e39dc20972d80ee83c@AcuMS.aculab.com>
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
 <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com>
In-Reply-To: <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com>
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

From: Ian Rogers
> Sent: 24 February 2020 05:56
> On Sun, Feb 23, 2020 at 11:35 AM Nick Desaulniers
> <nick.desaulniers@gmail.com> wrote:
> >
> > Clang warns:
> >
> > util/block-info.c:298:18: error: result of comparison against a string
> > literal is unspecified (use an explicit string comparison function
> > instead) [-Werror,-Wstring-compare]
> >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> >                         ^  ~~~~~~~~~~~~~~~
> > util/block-info.c:298:51: error: result of comparison against a string
> > literal is unspecified (use an explicit string comparison function
> > instead) [-Werror,-Wstring-compare]
> >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> >                                                          ^  ~~~~~~~~~~~~~~~
> > util/block-info.c:298:18: error: result of comparison against a string
> > literal is unspecified (use an explicit string
> > comparison function instead) [-Werror,-Wstring-compare]
> >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> >                         ^  ~~~~~~~~~~~~~~~
> > util/block-info.c:298:51: error: result of comparison against a string
> > literal is unspecified (use an explicit string comparison function
> > instead) [-Werror,-Wstring-compare]
> >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> >                                                          ^  ~~~~~~~~~~~~~~~
> > util/map.c:434:15: error: result of comparison against a string literal
> > is unspecified (use an explicit string comparison function instead)
> > [-Werror,-Wstring-compare]
> >                 if (srcline != SRCLINE_UNKNOWN)
> >                             ^  ~~~~~~~~~~~~~~~
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/900
> > Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> > ---
> > Note: was generated off of mainline; can rebase on -next if it doesn't
> > apply cleanly.
> 
> Looks good to me. Some more context:
> https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
> The spec says:
> J.1 Unspecified behavior
> The following are unspecified:
> .. Whether two string literals result in distinct arrays (6.4.5).

Just change the (probable):
#define SRCLINE_UNKNOWN "unknown"
with
static const char SRC_LINE_UNKNOWN[] = "unk";

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dad75d5a7aa443e39dc20972d80ee83c%40AcuMS.aculab.com.
