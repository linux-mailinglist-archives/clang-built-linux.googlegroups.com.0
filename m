Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBHN3XH3AKGQE53DZKRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6906C1E4256
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 14:31:25 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id l26sf802114wmh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 05:31:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590582685; cv=pass;
        d=google.com; s=arc-20160816;
        b=NMg+CcCFm6ESJ9YBj8WD/Kc/N9DF78fcxJDlWNJoydECqeMDzYwM5niyD3Nae7Igs1
         RPa4i+T2TeBi9ZrCCjWBJMcH7v/R2O+ps1CTBRbRKtJTTtNfFRutPQ+SQ/tVYHAE1Ido
         BvPFZBFFiZEMlQ4CGVK3AiN8ZbasjIo8dbLIEoEE07Cq+Ara7sh7ZWGfWvhCGy/TuFDb
         nb8pA9WYwiPrhFYJTWKM0D3DtfUBNyd7dslfhOqa55XfbUYiOet9QfO1N/xg45QXpkN8
         EI8uwVLS6zJZyt+SWwNoT8iLynAfI12wIKrOLv5F7JyL+QIaBLeWw+olYFQN3vbpXPxN
         OC2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=dQF0OonSQkYLS4I6uLOUniHyrbuej0Dm7dQTXOQca4c=;
        b=ya5K3kBZPPwZAVQsKZ1tap7YtmHB/YBHDyaQ5mVW07qZXgaSL8GZ6PFQwGAF6vzgvM
         D1QPq27H15Fhuy/mHdQ9MPj0AJ1GYK2CoJcHHGeCOFwma/UQjbJC+cdkMmZkdFCec6VE
         6mlmlaDfyroxp1Z67/Lj64qRVGlPapEe6CMFaS8ACA9iGT02+dkyfnz66meCZHN4iCWP
         65cQqLlTT2muwA19ouYXkMaaKOOTmxd9BezGyKnb3HB0hVcjrju2yrojxT2UE6ZdTpd3
         zO4/uzgW6f5b+mH/H8AF+EHpcy29aG7HjeCZp8tE9j1XXm/js/Bb2LUGv1vP3fgZFXE5
         RRjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dQF0OonSQkYLS4I6uLOUniHyrbuej0Dm7dQTXOQca4c=;
        b=Cxdrh9HVIjkv02AEO4SMNYzqCwMrJ0VFGiJklJ+tIXsoZtd9OLNdw4b/P7BQIhQYzA
         1VdCAkxKaBskIjuKVEkDsNd4AlCUjfHDBW2vaQg+9Kz0YCdbCfbSuLNBnnMWmVWqYErs
         BPmLqBGXPIh67QlCwh10PdDU4TdXA0Lo3yMg2Dtj/dZQnXmhps6zAwWy83r3qasfY7DB
         5CIlklyzsmtaeGBGRaEw3Dis8sKDQxZUayqeJStcYVWUUn3pPFYGCaytpqTxWk8oSgYe
         CjLcxK9atUd1ddPhqVdOD4gCOrhCIA3GbTE0NoVZFBJp16R5ZqVEyY8t6mLLnnp+wcmH
         eoag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dQF0OonSQkYLS4I6uLOUniHyrbuej0Dm7dQTXOQca4c=;
        b=TKalq956e5O0cBEwWO5YVUvrfuNRXGKR6/4U45edvWye4edueIPF6ugxx8Jo+ZsC5I
         y+IVOJxaOkGWZyDcaD5JFCAooaPVsKQhECgDsQ1HHTHWZ2GaJcIFJ+qODzuHj40SZQKx
         t69xbmAIgEdKniB6HaAgBCe+exDKDq2Cd/9uC5a9Awggj/J60pVQHJ4XuEyiKx3baM31
         bsKfF4MHfeEiQzKKN9sTkn4pqkzOUrTxr+YZ64dWaJMQ3AJWnYSdclr9hxnNYf5ZFXQR
         Dh8qPFHQ1U3Fc/5KMjoorVlmtE2hv8wSP8MNFkN43wTuzaOFEcXZHzdq+cT9hCOe3yw+
         08lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d0hrEPV8wKHORPRhCOgWwSV9D7eCdAVjpXQxGvSvKk9G2kh/q
	4Ord1nYkIJJWEDMKGqSxECk=
X-Google-Smtp-Source: ABdhPJwxsDvnebgCsiVJ7gOz5ylx394nSKJUSndOC+JML8pY0L3l+Ort1OB4/mzcdGp0sbpLrbHD9A==
X-Received: by 2002:adf:a55e:: with SMTP id j30mr13402026wrb.60.1590582685147;
        Wed, 27 May 2020 05:31:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9e15:: with SMTP id h21ls1434802wme.0.canary-gmail; Wed,
 27 May 2020 05:31:24 -0700 (PDT)
X-Received: by 2002:a05:600c:34e:: with SMTP id u14mr4200119wmd.16.1590582684717;
        Wed, 27 May 2020 05:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590582684; cv=none;
        d=google.com; s=arc-20160816;
        b=B1mPSfnno2K/IIzhfT8WebNiileNEq8papnHbeRiv5BKE9N6bfLiGmiqGB6X8XyTQK
         +UcUqJ++pQDnhfOs/A11wU6bPDUbkkVWnDJcRjs2dOrFLvAfhYpjTghq5t+wQLee5/V0
         qc4U6XYLA0loF6RmXJFiWEDzxNrkVYmhwB061otOEYiai0QaJrjdhxHkpIfsEHqGgo8D
         //TKfXqlF7czZz5BRgWpwYyFuQgHG0NGaxINJId30Y2FmN6k3A1nRL0fHAY9Nom6odhr
         YhN+qO8TpbWPAqU5ZEyWtAC91La6tB7SueSsF6yfVhs/B6K3UHiF7kWIdtiTmxBfSJPr
         58HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=69SZBtRgVv11JV9GwXkF1Esx1we43TtqIdX55EWYkVQ=;
        b=IQRxDSO95oymnIWesRliaLJovNikbJN4Lcws5Gp4USrRGXmcNilnCGib77MQhzw9r6
         +/yi0XldBXob3/NwvjQF+lbKUENRVmPukexcwaOt/md+asZ126ayIcLIrELNoL93gnXU
         qlSDUIuDQoISeypah9PIlFpxk+MRguXvYCZBhoS4GEDvlfQSt9eK1z53xy0XgCAEe2Pd
         KV+bMGxlgRYw0g3krhoOCfYKAMTE0AhEesyt32kMucUsAVNAcZAx5CV+793hRRh6XXfM
         YNIN99+0Z0CJRVN+Ff399HNVsbXvBRhCXfb0c7/yXdJLzZUDaxmvn4tXyOmMnnAfNW4c
         /Djw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id f16si182931wrq.5.2020.05.27.05.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 05:31:24 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N79dk-1ix66C0joi-017SIA; Wed, 27 May 2020 14:31:24 +0200
Received: by mail-qk1-f169.google.com with SMTP id b6so24033076qkh.11;
        Wed, 27 May 2020 05:31:23 -0700 (PDT)
X-Received: by 2002:a37:434b:: with SMTP id q72mr4003383qka.352.1590582683017;
 Wed, 27 May 2020 05:31:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
In-Reply-To: <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 14:31:06 +0200
X-Gmail-Original-Message-ID: <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
Message-ID: <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ypXYBnlbu7+8qte2/a54rtk72Qau/UhqIXkql49qXpagugfPjeI
 1AZ/LtA0q6kqJoaPoXpLyxlha7YdRK0Cdmj31v7zdYp65hLB82aRsIIl4mlbIdWWsnqsZI+
 fxzEaF8TFe5KuOw1T5JDyTQ0xdrsHr2E6iedWwzrjYnofdKSlj0KgJdYHIggLigJFTdEZO2
 7y9W/2ui/SZ5o/HfQbkGg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tfaf0rCARNs=:2UlRODD/XCRBbCfpl6xUCo
 eLMKAIAYgyD/4689pHlitEqqlPsC6hASiLDq4PFEk0PiKOsSMwsZV8L3y8l7J1BDcpZ7MUyMb
 kE8B5RRlZw0zmRxvOfcsSkQmDQY7MjoLKigy9P4RmApzeNdIgKpCTSxQSxEAFQ58qkzro7vIl
 TJWzxhiN9hW9LbDRA0gL1Z889MOnS2Lst+pvhakPGbNbUH8IftY8sFbkA2iOfnxQE7W04azbU
 kthut8iz6oxds3TMq+FYoBt5T4NyLQ2OtXCMk8mBzoLTOcIzSbQ8Ipxsmv7RhGfpIeQb6gIb0
 De+pAlEkvtFIhMcSVIiMS0kKXqtq67w/yuum3+pxnnmTqCbWLgvcR0TTLd+Mim3EZNreWovaL
 6pi9uIoVo8Fta8znlLB2bhqdeZTD9fseQJJO2SOP+GbNKlY4cpOKU5w0zrggkfFj8B6+Xbhh9
 3r5C/toPRYgUqt+5jSuZ6hao8jcdvBBwtd4qde+TSnS+hfmVYoxDyJVslrizhOzGT6k4xPKc+
 9/Jzg+pEeRF2wyjC2V4eyqpLxv/Phd8htAf84Gx7+EGsrmtMJSn1Gih8kXwhgGtO960iNHP69
 H/a/AgKT+5jlm49b2H2MjQbh8KvalWA9Njgjjgc3Xvp2p3e7q0OkFolYaKGirGQoXmK7S4WtL
 /0nUcQj+cCbUebo0TLUaj8+Ap2Fy6xC1EwGpTKN0nowF0R0E1x8e7H88Mae8unSOWd0n8CYIB
 Z3BycFyrj7vVJ66GBlTI3kf5FyN5gKVSBaIp0Hd0yLdv5TMZZpMTVpDzwKAjHMAJsFDIQf033
 O/FNfcaTMT9El90v9as4Du+uNiUpAzGGaRBpOaWkIdherr9WW4=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.135 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> >
> > This gives us back 80% of the performance drop on clang, and 50%
> > of the drop I saw with gcc, compared to current mainline.
> >
> > Tested-by: Arnd Bergmann <arnd@arndb.de>
> >
>
> Hi Arnd,
>
> with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?

I meant v5.7.

> I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
>
> Is there a speedup benefit also for Linux v5.7?
> Which patches do I need?

v5.7-rc is the baseline and is the fastest I currently see. On certain files,
I saw an intermittent 10x slowdown that was already fixed earlier, now
linux-next
is more like 2x slowdown for me and 1.2x with this patch on top, so we're
almost back to the speed of linux-5.7.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a04%3DmVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ%40mail.gmail.com.
