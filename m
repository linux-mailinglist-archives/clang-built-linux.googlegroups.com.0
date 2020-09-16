Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQXPRH5QKGQEZIBKRYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6EE26CC09
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 22:38:27 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id z27sf7209126qtu.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 13:38:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600288706; cv=pass;
        d=google.com; s=arc-20160816;
        b=nSLG0mtil2lD3Sh1nf5MK298S/57orfcutBBp6raLfPbD8J2WoNM65IyIQvlb8eqrw
         aptcDu2zprhe2Y0ndeLJxaUCk9mLLxRn++8NiQVD39mWYAAUBvVojkmsqHIgiTiPOYP7
         F6SA9+rCeYr7KR6HqkP3J2nHV/yibnyzWhuQs3J1eGbTBGwoaDV+TqhjrLMOfSSBMyB5
         gnPRQ34H3CW/XY8cQo2RVm8b7kovDNudwJQhakt6j3FVgCPngc9v89XeLNxd62gNuHzc
         l3Yrt9qlKSTijMaKA6tc6x9RyLz0ReRKO/UFyNjrBFKq6znat5uRCLPKYklyxpSD7Mw1
         MaMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k5nnVSyRA26iRKIeCRlPn5AFhn7p/5s1cTndmQi0bdQ=;
        b=WyOcnwttn7oMQqx4nEUFZeE7HBv5Bvt+MPuevlkSQG5i9hztckfFqwo8gXrT7GlWIh
         Ho1FwHDvHyNpgteDS21ds+UR5QNZt4mc1tdGa5wJy0xTGGNnCZyiXpCM5/9N3S4ZLaww
         RNBMowIU6eExuZ+swZJs5Pe7NxxycS6r/cXfCq2lhqxfm19FX6/59FlgGWjlfUxDQkJH
         sDGRSHnxo21IrBpbJ0kG9nkwJ3r+zLosqo9VE8tYFfc3ezzRWVASyTbUGT+qz4EYxRYq
         t5kkpCG8+FOQY7CPynGEcnDNHwm2SYTHYDaJkEpKelw0UqbsL1eeyQ7USflEUhVm0Dgi
         Hc/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u5vbwPoo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=k5nnVSyRA26iRKIeCRlPn5AFhn7p/5s1cTndmQi0bdQ=;
        b=gAP6OODvBb3GHf1wbFU0y3RZUeiTtAUiXp3ml/lRXcrVWHVMseewmJSps+rcy7Z1Ci
         Dkg0jM58TRDjGd7wOYqTOTvUWxIYDgUIDYA8ogW8vDGkvmUGyoNNL859UT1YSO2uUdyu
         P8ZEw6BB9rgjEmXzPPSvBW/FaoBkcO6NDulcowuE8LANst+rlXOk+79forrDXsmtG0Me
         mO7IMwSTl1gZvR/nzfGrXYk6VIOsb+lx/LIMntujbK77JLHVpGu+0P7rDtNVgj2+3z26
         DQSqaz2KsK1BGciby/e/nAnJvuUfPgKc/FZx+y2VsVk3ajsEChWzZ/TcCGdWmlwNfxaU
         3wIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k5nnVSyRA26iRKIeCRlPn5AFhn7p/5s1cTndmQi0bdQ=;
        b=sv5GUJ4khtx4FeYvlW0avmDlEvSJ4VNErMhohcjeKI1FlkDcTnQPC3v1PbrARXWzs7
         /zoaAogF6yWAy/jMLrvW8Ti5NVhX8VzhEzRFbxdJb1Lr7n9YWKmIJaxuruTcMPYjOJ1I
         Mv7C9KJIvy2NmMEve+LMKjbjRR5ZawG8aVMF0+QWhqBFtO8g+6btA9mWuLkb12khGSMW
         6jdpsZLxzOvkHintgB1YhoUAsm1w7PQJyC7/hh8NDwUPbUDroHHTSRxPgfkHI9P8c7aU
         4yOsqDnKao1FWFxs0YJHqDR/a4VDUvLMQZjjg8WW4PqnJXbU7AyRaomUp1iYcqMBbhO7
         uyvg==
X-Gm-Message-State: AOAM532OYfgJ5N1u7Q3vKp/OJGV3pA+sIe/tw5NdEjSfOHSIMjgm/53M
	UD/VgMxCRYL4PJvsxyWsthI=
X-Google-Smtp-Source: ABdhPJxDeplTuyukoL7KIbZVvuLgdSzTmNfVmnQrVrdida4CRVHW9scOLuH8LOZtKWNlPiF9YvxCsw==
X-Received: by 2002:a05:620a:567:: with SMTP id p7mr26043787qkp.164.1600288706630;
        Wed, 16 Sep 2020 13:38:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b987:: with SMTP id j129ls33778qkf.5.gmail; Wed, 16 Sep
 2020 13:38:26 -0700 (PDT)
X-Received: by 2002:ae9:ef14:: with SMTP id d20mr26188326qkg.146.1600288706140;
        Wed, 16 Sep 2020 13:38:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600288706; cv=none;
        d=google.com; s=arc-20160816;
        b=Ki6EtkIL1PXNKpvlJ3N8EK/EP5GD5lE6jEt2ungG3AHmbkSAEQj5zXVRpPloSBvhoF
         0qPsD8nc0aoFKuc7sdmbBlu/PG4uH+KegqHXLBQCdd54IPnjjMbIe4V53jqpExwc+fkb
         e+1BToyVp5B1MPFQIwHQcR2vDgOsB/HO6oQFXYrOjM9ABMrX9Evg0r2srRU7QlHzRlcN
         NGbtW70afxaAF8jfCpm1DquZpMWD8RKE0f/S8QIWw1oE9orWUN/SSDT7bLK5rEF7EG+h
         MBkM0B7iekn0cSndJNse5s2RJ8MKFP5CqM/QhpeKHwspQakVR5hNKqq2/70R8Y9F5edv
         bEpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IxOdKvp9C29NfJ4bjroI0DQL4LdJrZUf8pXySsnc18Q=;
        b=b82FOTfKaSVOQJ5Z4yDl4vnJUqcxvmozGkOLZAMeQeGoynA2xVXDKRJFqBtrEKa25D
         e/ND8uMGwHsHJt5af0UjNHjV+f2sagETOTtWaS2IJE9zLOEbUz+8XKh5gsVgnLai51SW
         iWQUV6ao7cAEw0B2HiSVrSZ2s8qIJfY3g4F9eohL7lXIFrMuNnz7Dn5slksI4Y2WcoPX
         BgXU1PITzSEYGVvBWAO9G76q5rQJfWwqq2B2QTXZtcw1QxAUZDclmvNRJIVNVF4GnH3D
         Kcq6KPbLDCV0gBAHLsobYvwzOk2fTMshhCeZIFHOs+1Qq0GozempCuvCN558bkd05nSv
         G79g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u5vbwPoo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id z6si917409qkj.6.2020.09.16.13.38.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 13:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id z19so4659724pfn.8
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 13:38:26 -0700 (PDT)
X-Received: by 2002:aa7:99c2:0:b029:142:440b:fa28 with SMTP id
 v2-20020aa799c20000b0290142440bfa28mr5015999pfi.30.1600288705311; Wed, 16 Sep
 2020 13:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585C7.00432E67@LocalDomain>
 <OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
 <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
 <CAKwvOdn+kdrXp3qn0sbpYzBG+wO0RRhS6UsM3JUMK8My08-uFg@mail.gmail.com>
 <OFF00E0E50.C2C52D87-ON002585C7.0043DE22-002585C7.0043EBBA@LocalDomain> <OFED0BC1CD.FBAECBF3-ON002585C7.0043F877-002585C7.0044C3BD@notes.na.collabserv.com>
In-Reply-To: <OFED0BC1CD.FBAECBF3-ON002585C7.0043F877-002585C7.0044C3BD@notes.na.collabserv.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 13:38:13 -0700
Message-ID: <CAKwvOdkZrqjju7AY+otVAfLcKg1icu5q7bix71DssHhC-oCNPg@mail.gmail.com>
Subject: Re: buildroot on s390x
To: Stefan Schulze Frielinghaus <Stefan.Schulze.Frielinghaus@ibm.com>
Cc: Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Ilya Leoshkevich <iii@linux.ibm.com>, Guenter Roeck <linux@roeck-us.net>, Joel Stanley <joel@jms.id.au>, 
	egorenar@linux.ibm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u5vbwPoo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

On Mon, Aug 17, 2020 at 5:31 AM Stefan Schulze Frielinghaus
<Stefan.Schulze.Frielinghaus@ibm.com> wrote:
>
> From: Ulrich Weigand/Germany/IBM
>
> To: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@g=
ooglegroups.com>, Vasily Gorbik <gor@linux.ibm.com>, Ilya Leoshkevich <iii@=
linux.ibm.com>, Guenter Roeck <linux@roeck-us.net>, Stefan Schulze Frieling=
haus <Stefan.Schulze.Frielinghaus@ibm.com>
> Subject: Re: buildroot on s390x
> Date: Mon, Aug 17, 2020 14:13
>
> Nick Desaulniers <ndesaulniers@google.com> wrote on 16.08.2020 00:02:13:
> > Ah, sorry, I may have spoken too soon.  I manually used BR2_s390=3Dy in
> > our config; buildroot ignores that then proceeds to build an image
> > based on my host's triple, which is not what I want.  In buildroot, if
> > I run `make menuconfig`, then open the first menu for target
> > architecture, there is no s390/SystemZ in the list of supported target
> > architecture.
> >
> > Can you or Stefan confirm that the resulting image you were able to
> > produce via buildroot was targeting s390/SystemZ and in fact,
> > bootable?
>
> Hmm, I think Stefan probably did a native build - correct, Stefan?
>
> Maybe the issue is that native builds work, but cross-builds require
> additional setup in the buildroot sources that is missing?
>
>
> My initial build was on S/390, however, it turned out that the default ta=
rget of buildroot is x86 and not the hosts architecture. Thus my test build=
 from last week was for x86+glibc.
>
> As Nick already pointed out it looks like that the architecture S/390 is =
not available in buildroot so far. I'm looking into this. Maybe we can add =
it.

Joel notes that there's been patches submitted for BuildRoot for s/390 supp=
ort!
https://github.com/ClangBuiltLinux/continuous-integration/issues/232#issuec=
omment-693255238
Please pass along my sincere gratitude!

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkZrqjju7AY%2BotVAfLcKg1icu5q7bix71DssHhC-oCNPg%40m=
ail.gmail.com.
