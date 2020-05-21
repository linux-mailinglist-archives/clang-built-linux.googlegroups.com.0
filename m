Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBEEHTL3AKGQEJ5LMBKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C95C1DCE37
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:35:14 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id c21sf1678013uaq.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:35:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590068113; cv=pass;
        d=google.com; s=arc-20160816;
        b=RfdD17UOI4uY7aFfRzdjJFqsRGyqSuKAtkrdWF6AP0/gdjGQ3jjZImx9TugyXTCqNp
         /MR4gzAmPeDa2GQcV8C4U1N2hfH+A0natFHq9Qbq17ckeVuos0k8aqokzp2H0FrDsUOu
         JxG7x9aIZi9AiMvxiB7qFu8FMWGG2fzxBQb0W/gAv9H/bbclI54js3ZEnjR9QqC9r5bK
         DKgn8kdOuigesSp5w2wWOg+3Oq5CemqDPGaJo1CJyYhPpasciDkeCZQ4Hii62pPyOtfq
         DyPzuC/HH7wqOBWr9WVhbiThPlQjOJZouy4YO3jPO2Ir8zODwkBAxZlsOTHDR3oRL9Ox
         vfGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Dmoj7IL2Dl1eMI6AbjEP1yORCxGiR5iuVcxiQbOv9AU=;
        b=G9VYrvrdMwxXlgMU8y53265fwmeLE2FIaHU8va0KO3U2PUgtCVCYIQqJ1J/Q4gKFeS
         41Bqd1NoTLxUKdZ0mv4b2gzlYUDN2eVPpkel6HWNgRMG2xK0sRUAuMQchqxC3Zx7fmJi
         v2vFQ79PGFYFe4SCDo/u9FETw0/0GNg/+fl9LK56KMSZ9LnzWMKSWLsOV8dIuu4CcTHr
         pwDogdCL3JildVteTVep8r46eFw8WFmD8r6yIOJEhe6+msPdcQpcTfsDOrSyidHGKNg8
         NSvUK1BPnt3oimLYPLCNoLLcTuihOt7l8ASTJVmJZ84cEtA/wkhzuWpZWkyTFtNV3W+z
         1Frw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lbnlAAnr;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dmoj7IL2Dl1eMI6AbjEP1yORCxGiR5iuVcxiQbOv9AU=;
        b=V26LZ7ONJnJ0yoHpbcAvby48rvFsjGfTYc5nyDbtkTKcWwmqSL3q9sXyy5CnsQ+RU1
         IylCNW70+s4z+s1lXw178w7zhXg1SYphz+jVS5WsZAT0RirB8CqkY4PJXCA42wSZa2uB
         NSd0YM+5m2oJwKUHBO/eXO24KWpTj32Nkk5EtfnCWGmhXGlgtfL8NR9/OrngSB8O+z3G
         /tc0FuE4gkqnYlwkqHU3KMmEU4f5AKOiQ/+F0vIb/pU+iDVlWloqny5H4PcjuwqHQzJy
         F+6W0RIR+Kks6qYWS8mL8sOzWgj2qC/WuQN5BfFqqMTHjJSXFtjo7UA8wCy7mn9+Ciii
         65nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dmoj7IL2Dl1eMI6AbjEP1yORCxGiR5iuVcxiQbOv9AU=;
        b=Y9IYxS18Kmnl5JriQIg8AUSfRPNYNtv8zHhNNJrsjSiok3EyRt2R7dRiLBDRUt//9E
         jIRUOIYH101uAfy+z2M+OSmgWltV2YMUhTkrhBoab1TH1gbXmclx4EtfmwKfjmClxrGD
         /XnI6pMO4sez/SS3/gSY4KVFSM8OahChEPrWMWKEKCNkFJgFegJJpyG4vqaJ0ib2kL2F
         IjX0Dc7EsGRjLCSw8CIF6wYWaZ2VgLETyWO+YMikm2pN1n1Njc0EvfpBtMjVbIaRDbSV
         fBC4FHGKT1/ErFshJ0WN/LTAs+0j5f1slHl+Y2vZsTTbsrktBdEA6TAyU5RJLrGDH/2S
         /+3Q==
X-Gm-Message-State: AOAM532bALL7xVV2JALMELG3I3q1bgCzLwRCaJQRL3j4nCrbSAkhv+Di
	0aXLiEtwzgnhJprRYTL5aF4=
X-Google-Smtp-Source: ABdhPJypZ3nBd6WKnGt3kF6VpbgeL7Z5YOk6xbNv0XDEHSlwozA1hQHYvSUETk894CSjAGyNkWgK3Q==
X-Received: by 2002:ab0:3356:: with SMTP id h22mr6973643uap.51.1590068112925;
        Thu, 21 May 2020 06:35:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2917:: with SMTP id v23ls146615uap.2.gmail; Thu, 21 May
 2020 06:35:12 -0700 (PDT)
X-Received: by 2002:ab0:5642:: with SMTP id z2mr7251050uaa.6.1590068112459;
        Thu, 21 May 2020 06:35:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590068112; cv=none;
        d=google.com; s=arc-20160816;
        b=escP5k0fo2VcMy4yjShi403C5W6b37SlWNqoN+9R5urgvnVN7zcSpReDtv6+8qPpj6
         U1iCWhuzy8sUo2qOb0+GyWSFWZgCn7/XvMooE6iDDS+DFBPPBoITsWGZyqxabjLpIHDi
         +qNxNsaEMURs7U4lAxy3VWfH+8iZgzS0Y/AmGVC6G+SPtVnP3j6ufsdyr3gWIBXkrzMB
         qb9ASfP5o8DlmDVkZAnGhz5E2AUMmwdCAJdT7qBPXvEzE0dx6Je4osBjbQ9lRdJ6kF3V
         8XJH6mWYTzvvlFsscfgWCm1kivPRDV88nY78tZKih3FAFBwWiP+Zgj1bpMPsjTzQFZeZ
         U36g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zx1Zxii7kuqEBAAZh/SfralQu7+w6Yj6Omise5zlDew=;
        b=AnVIzSJKwdSh+x5vZIPv7Qfob9uv7nyEmHgAZCq5H1XCabiV6+T8am91656/3nRfuQ
         ZYScvVLrSf7CBpJkkjgeRdVqVMbfhpqK9e7XfLJBDR+5TDCmPePm5N3fYfVStykwhGb2
         pq74RzswQsw/uCOml0G4ZoLSLRz0UbT220sY/nPy5dU6/XD8u57dF50OQFx8AyczriCo
         8Ckpa949AoL09NpHUWrMLVOsZqJV2ThwGpLzcQwRv65AB5Eon/FckcqSHVCB3i9nVVww
         NYLFS73F6PM3Eo1o6xScGGOTrKE6uCFleooRrXGxc5We7sj99q2BgfQeffTPbcKul7QP
         POzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lbnlAAnr;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com. [2607:f8b0:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id d84si162253vsc.0.2020.05.21.06.35.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 06:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22a as permitted sender) client-ip=2607:f8b0:4864:20::22a;
Received: by mail-oi1-x22a.google.com with SMTP id j145so6237137oib.5
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 06:35:12 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr6839565oih.70.1590068111768;
 Thu, 21 May 2020 06:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200521110854.114437-1-elver@google.com> <20200521110854.114437-8-elver@google.com>
 <20200521133322.GC6608@willie-the-truck>
In-Reply-To: <20200521133322.GC6608@willie-the-truck>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 15:35:00 +0200
Message-ID: <CANpmjNNgQkw77uATD0jWezXheX0ZtKK9GcgWd_EQu1_u-m3PoA@mail.gmail.com>
Subject: Re: [PATCH -tip v2 07/11] kcsan: Update Documentation to change
 supported compilers
To: Will Deacon <will@kernel.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lbnlAAnr;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22a as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 21 May 2020 at 15:33, Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 21, 2020 at 01:08:50PM +0200, Marco Elver wrote:
> > Signed-off-by: Marco Elver <elver@google.com>
> > ---
> >  Documentation/dev-tools/kcsan.rst | 9 +--------
> >  1 file changed, 1 insertion(+), 8 deletions(-)
>
> -ENOCOMMITMSG

Oops. Ok, then there will be a v3.

> Will
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200521133322.GC6608%40willie-the-truck.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNgQkw77uATD0jWezXheX0ZtKK9GcgWd_EQu1_u-m3PoA%40mail.gmail.com.
