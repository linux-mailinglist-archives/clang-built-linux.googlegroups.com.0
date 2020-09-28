Return-Path: <clang-built-linux+bncBD42DY67RYARBAVHZH5QKGQEKHACU7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F2C27B6F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 23:20:03 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id r1sf1746355pjp.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 14:20:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601328002; cv=pass;
        d=google.com; s=arc-20160816;
        b=A5kZAa1AJDJdeZjTgAqQFXbTmH1/Yyzpecrg4QSa/EwrnTg9J7I10/xIJDNA7r+L0d
         cvI53fpKRla4/M8Xpn24m285Ka8l38ihk/D+cpizDQPSRur4PLo8TJa4ALm5kbElBf0T
         f0H7cnF6a2gpDMiKd8sKX2oZsMpHFbnlgZ/uDBpFW14bOuOpnqc97ItyEDJ5LjSMOZH7
         1G6sPb3pIK5EDLfEKdx7lEksVoL66nSusSuAetTG5Cv8uiQYD5LxVZ/x128yIwigx8xr
         FVqPL4+W2tL/ni6HKJ0dG21GcA3YX1a1qn5jDejEJ6OndaNYaeCtwP5j5WCeFNbE8A+r
         uuQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature;
        bh=trDkpJ5KmJy1VgIhQA/K7K/OY+FQ6e2E5xsyL9WRpZU=;
        b=ohfsAF5+E7+2BEPiSAK37ndvXK6za22HH1eMoAb7EtptytIMOGga+28AUxqPlOCCV/
         bGVhawGoKz1kyujuzzfhv2vXxFNbhkt3m4nCE9Bq/I/U0pmanLfEQZIiuHtqG+6nuZzC
         sCgXH1tb+j4MIdD+sHXSHChmZvkuDHg/+X7wyFz9gzBAPW9nGwqopPD+riVT0JuAmoMy
         fgvYm/D7TyE4MSFuJj3F5gjtRKWV2MDavyx9hDMiLuNg/ASgsO/hhcMGtHv9Kb2NK41x
         p8QF1iBX5VRGR4pvdFJgHNwjasCRj+G83yz/L7pW7GNRcwAvo3vYXASX0dMGUGw19n7F
         BERA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=ow7Yhe7K;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=luto@amacapital.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=trDkpJ5KmJy1VgIhQA/K7K/OY+FQ6e2E5xsyL9WRpZU=;
        b=KK/872CEX1jUspSZdq6DXO5DRTMWYwCXMEfKddSg6yVuhMNRwwFmIijaXsXvkyCJfA
         77NWC+05oq7HjzO9uVAEV+mJpYsLc3vLYFpTqfzeG6mKWP6lEtma2sRfilWITJ3mkUk+
         1/7ml9mD9qtslwoki6PPcFpogKHOwuaJexuqOqVconxlQ0WnWiCvAgirEEVlBf6DJwG0
         OA6I1TIb/jGS9a8jZE5RcfNTi3MWmHhi+HLWWR3DocrlNBJGpAu08mVWhqk9oYgu89jm
         QSibC3OS4ygPIi9lcbaV0lsf7LKSzcQONcEPTh+Br3Eu6v60N3B0DsBErgYdfqVQgbOl
         Mb3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=trDkpJ5KmJy1VgIhQA/K7K/OY+FQ6e2E5xsyL9WRpZU=;
        b=FiTV9gQYP4co5LLKaJoY4U5zvmQzhASzYGfVd7+5ZKYleEcvjZuh+v7Mb/yYXqXG0A
         j1KYQKK/d3Zs7PNQsIXBC7KoPevm2c6MsBz4GF1ses9b6VMwB+fYEPY4bn9riEWs62MP
         pdL7yneYqsvF8ObO0Uu5CqnR6UUZ8wXy7Kyrc4LlOexLwp4+x/VbR2rpEo7+RYgstHhi
         jFePqsBvtsObx/QIyLSOKkZUVpT/I2yqcthBy/LGsERH4hsBX3YJAR5umHMxJ+USy3hT
         ZdPnYV8Es3e3Vskxdcjz5Kz+zlcxCVzyX/hqIjLKKk1+z58FZ7q4qEdk754XGT5KDBZy
         kp5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533q/zAh2s1rtraxoBtGZRHJ5+OVpFvwiPExBr9t2lWBpxyD8cjz
	tsutNmKY1tAfPxUy5vr6PxE=
X-Google-Smtp-Source: ABdhPJyz3PrwCU8T6CtfZM5ap7t8g1UXIyLohD75z4bq6JawbaOMxPZ9Q3E00iaLLrgexHShEbaLEQ==
X-Received: by 2002:a17:902:c406:b029:d2:562d:dbc with SMTP id k6-20020a170902c406b02900d2562d0dbcmr1274576plk.15.1601328002314;
        Mon, 28 Sep 2020 14:20:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d09:: with SMTP id y9ls2384773pgc.3.gmail; Mon, 28 Sep
 2020 14:20:01 -0700 (PDT)
X-Received: by 2002:a62:6d02:0:b029:142:2501:35ce with SMTP id i2-20020a626d020000b0290142250135cemr1019621pfc.46.1601328001766;
        Mon, 28 Sep 2020 14:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601328001; cv=none;
        d=google.com; s=arc-20160816;
        b=T3hS8JMvXaCAr24DIbR/juGTmCqPP+fXmO2YH520J7o09Bf4q1L/iRwEyzyRAxgto4
         /+0g+582dOwr9WVL8vNXF45k/JHiSgcnZ4w2Qaaoo5GFjgc9gMFmNGBaV3CK0WNW6v9C
         gY25e+x9Hy1gwKSJy8FlyXwERD2nAo1WTQOR/vnUN+byfxQLDp1OIMVFjYumWRDjo2WP
         40eOP6jEiw+lSxMTI029LLejb2rK/GzH51wNE0IxifZzOLCH3W9Okcbx5Ya1W8nGrEGD
         vHKf5K9DZJa5PFjAkr7jAVmoB55vcSKQKvkM4aXOVCEI8wR8b73u1108jPlTcH62Ge7G
         jwPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=2+2An9KGoSP6S51iGyhlVQStV5BSsILsLY/d1IF6Z40=;
        b=o5K6KQhRw+eJPFUcrNt13UFgdARsm3BsdDoISKCgR32e98fFnUKxvP2xgsZsQM13bf
         RNGVACzWhgyxszkRitOsXeTfjcJ3R/FpeC+RFT9jbp8ES9tzE4U6poOOp3v0sHKlwF3/
         UzZxcIjH7ysFn7mcQyojFp6LZc9QTEYR6Fq/WouLD5hActAgw/y0WkpAjiD4p6QSolpc
         XiTw2TPspQlVWKFonfZ2B/NNRsOWAR78+HtAjnMrLV2AS4DhRdmf9yTZfYKEAVauOhaL
         wUoW2XF5ZUDFUPGQ6JV7JMpSS/QNuAfy+inHJJ/kwjXilhUg3F4vubVaA8QnIDEW9wIO
         zPzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=ow7Yhe7K;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=luto@amacapital.net
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 18si218090plg.4.2020.09.28.14.20.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 14:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id d6so2332243pfn.9
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 14:20:01 -0700 (PDT)
X-Received: by 2002:a17:902:be0c:b029:d2:8ceb:f39c with SMTP id r12-20020a170902be0cb02900d28cebf39cmr1242485pls.71.1601328001370;
        Mon, 28 Sep 2020 14:20:01 -0700 (PDT)
Received: from ?IPv6:2600:1010:b00b:15a5:2004:5f47:98e:6069? ([2600:1010:b00b:15a5:2004:5f47:98e:6069])
        by smtp.gmail.com with ESMTPSA id j12sm261750pjs.21.2020.09.28.14.19.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 14:20:00 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: general protection fault in perf_misc_flags
Date: Mon, 28 Sep 2020 14:19:57 -0700
Message-Id: <15CE600C-3006-4C4D-A65E-9B608D55DD35@amacapital.net>
References: <CAKwvOdmTm2rVdc2JTSVVadKP3DONRcPXSE-s3tFPqHgCSieH7Q@mail.gmail.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Borislav Petkov <bp@alien8.de>,
 Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
 syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 the arch/x86 maintainers <x86@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
In-Reply-To: <CAKwvOdmTm2rVdc2JTSVVadKP3DONRcPXSE-s3tFPqHgCSieH7Q@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: iPhone Mail (18A393)
X-Original-Sender: luto@amacapital.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623
 header.b=ow7Yhe7K;       spf=pass (google.com: domain of luto@amacapital.net
 designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=luto@amacapital.net
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


> On Sep 28, 2020, at 1:52 PM, Nick Desaulniers <ndesaulniers@google.com> w=
rote:
>=20
> =EF=BB=BFOn Mon, Sep 28, 2020 at 3:34 AM 'Dmitry Vyukov' via Clang Built =
Linux
> <clang-built-linux@googlegroups.com> wrote:
>>=20
>>> On Mon, Sep 28, 2020 at 10:54 AM Borislav Petkov <bp@alien8.de> wrote:
>>>=20
>>> On Mon, Sep 28, 2020 at 10:40:19AM +0200, Dmitry Vyukov wrote:
>>>> I meant the kernel self-corrupts itself, that just wasn't detected by
>>>> KASAN, page protections, etc.
>>>=20
>>> Well, Nick already asked this but we're marking all kernel text RO earl=
y
>>> during boot. So it either is happening before that or something else
>>> altogether is going on.
>=20
>> On Sun, Sep 27, 2020 at 11:06 PM 'Dmitry Vyukov' via Clang Built Linux
>> <clang-built-linux@googlegroups.com> wrote:
>>=20
>> Interestingly there is a new crash, which looks similar:
>>=20
>> general protection fault in map_vdso
>> https://syzkaller.appspot.com/bug?extid=3Dc2ae01c2b1b385384a06
>>=20
>> The code is also with 4 0's:
>> Code: 00 00 00 48 b8 00 00 00 00 00 fc ff df 41 57 49 89 ff 41 56 41
>> 55 41 54 55 65 48 8b 2c 25 c0 fe 01 00 48 8d bd 28 04 00 00 53 <48> 00
>> 00 00 00 fa 48 83 ec 10 48 c1 ea 03 80 3c 02 00 0f 85 51 02
>>=20
>> But it happened with gcc.
>>=20
>> Also I found this older one:
>> general protection fault in map_vdso_randomized
>> https://syzkaller.appspot.com/bug?id=3D8366fd024559946137b9db23b26fd2235=
d43b383
>>=20
>> which also has code smashed and happened with gcc:
>> Code: 00 fc ff df 48 89 f9 48 c1 e9 03 80 3c 01 00 0f 85 eb 00 00 00
>> 65 48 8b 1c 25 c0 fe 01 00 48 8d bb 28 04 00 00 41 2b 54 24 20 <00> 00
>> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>=20
> If this is related to vdso's, they seem mapped as `r-xp` (not `w):
> $ sudo cat /proc/1/maps | grep vdso
> 7ffc667f5000-7ffc667f7000 r-xp 00000000 00:00 0                          =
[vdso]
>=20
> map_vdso() in arch/x86/entry/vdso/vma.c doesn't map the VMA as
> writable, but it uses VM_MAYWRITE with a comment about GDB setting
> breakpoints.
>=20
> So it sounds like the page protections on the vdso can be changed at
> runtime (via mprotect).  Maybe syzkaller is tickling that first?
>=20
> map_vdso_randomized() does call map_vdso().  Maybe if we mprotect the
> vdso to be writable, it may be easier to spot the write.
>=20
>=20

The kernel shouldn=E2=80=99t be executing the vDSO code.  Unless I=E2=80=99=
ve misread it, Te crash is that the map_vdso() text itself was corrupted.  =
This isn=E2=80=99t the same thing.

The VM_MAYWRITE means that a program may CoW the page and write to the copy=
, which still won=E2=80=99t allow changing the vDSO text or executing it in=
side the kernel.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/15CE600C-3006-4C4D-A65E-9B608D55DD35%40amacapital.net.
