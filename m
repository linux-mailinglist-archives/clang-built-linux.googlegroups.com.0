Return-Path: <clang-built-linux+bncBCRKNY4WZECBBLOI7LZAKGQEZ53ZNDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B0334177E84
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 19:38:38 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id m29sf2515681pgd.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 10:38:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583260717; cv=pass;
        d=google.com; s=arc-20160816;
        b=ovQz7OH6lJzTioCBvJsybfHM+bHfSvsBFHipADz18ibjbSi0Xo3i68IBE9lt9beSY7
         3NMfUPtgf4d+0+woiZebUjmvI4vU0YWY0+ApzoecCa7cPOPP63LPTEK+zsCZ1iHH2iB7
         yBfWim86AVHZiatXSTbkxWXXvhbwJNmzyEMUrtzArqLC8g20VGMt7cMsTeRHvxMww03w
         8sL0ZWR352qvw5rEl6nUFywD4xxC4HG71kfQdbScSyflLn51MzecftvhyADavL4T5FMf
         4TRPT7tZHoBKQYme1WVoyw3uQZeRsQpGyh5BZOJhSE56ydAvpzmgm/m6xF/xgXl9gqid
         6cYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:to:from:cc:in-reply-to:subject:date:sender
         :dkim-signature;
        bh=0F/6n6KT5IXuIwirIOvnMNZGSP8FpzQUPqOE1heNCJk=;
        b=ip36BULgFchMdHcJmUhqSvxNtpQTqZbEDL6iQmNAOXX+m2mh5tqDIWeBWVrIYiJ7wp
         dNJmqqSfOqsDGN9u0JbGMCStGyy0brDpT3VDf5UtAAvNoaIbzCpUWC5t1ElPaeR/6F9o
         FwIJPxIBby6bdybdA8k+naky07NI8lB2Ofza4Fi/cKq/8I76IJaSQ5EhZ9G396G7Lt8w
         L1Tl6Wq5ddv+DRCZX1zRm9XJ8fiwKlslavktVv9k9HJmJbXzPkkzeXax/ng1ENLHVkky
         9mwmZ5mpcy/m5VWI+9SnQad3g+uzcGcQeNaQeUDq7baQjC/CyDT/YzUFb9cc9Hln65y5
         21RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b="KEFvkU/e";
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0F/6n6KT5IXuIwirIOvnMNZGSP8FpzQUPqOE1heNCJk=;
        b=nLoj8Ev44oxJdP2S4U8N/jQ/cIy67OEepZtugmpRntRoRR/HsLTu2AFjv+LZJdMP5Y
         eqB08Lp8NpDuyixZMhurFrWwRML2a0Gy8rntIlCqKRUd0rOR2DlFHPjYTCViaRO6Zxrq
         ZCa60JBLJZ2YVdeLl9tXAMduVBHCUXFo8bL4ARow+yLgR47SdpCW8NJFZXnTdBPnR7zD
         SDKO0qCBgJKQbmQcgoL6laFjH1QkpRCFGQLPgNQ8I3stqIITSzfBDfy47OXb/LrSECjZ
         8iYp4UF/Uo2e8Dic6dBCqBx+3pxmt0EXyEY1JlNDt+70YmumwDNEb5ccke+H9BnQTII9
         U5Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0F/6n6KT5IXuIwirIOvnMNZGSP8FpzQUPqOE1heNCJk=;
        b=sUPQjZ+7zB5gwt9B0CX4bJZjDly309k8Nr5611xPmpFOr3Fh5VdC2cQppQsr9bjyHA
         /VErZtXfkCAPePHBxBQ+8FIuHgQxXwiW2qwC5fNuuCSjdbxS276H7zHzGsI9he34P11K
         Tkgf/XSZavpHuyIcuHs01Ot30X0dqsA37ZVuQlAkXwo1bibo+5Eu+ckvs8UTRhE7E101
         7VC5ZWTTvVdYvEai2gg1aEdevUGGog6PkHVt2a8hxttuh+i8pNuC0v4UiZoWugV+sQ2i
         8DlpKcF8TNzZCMp4wWcd2Y0mwcQrAmEtCQ7XjM98KXawmVpzhZv2IAwRu1MmO2GLMo4L
         E5NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3y14rQemWXp6VbupxP5KidVn0rvTtEtOG6WUrgjYvH/6C6hdwx
	m3lVFqobNapZajyZI2cYatg=
X-Google-Smtp-Source: ADFU+vvoWvqoPVNfv4A3u29DbH1cvYfFWcL18EoeukdRo8hpnhWESprGen3s2Z4pOekxCXFzrmjHpw==
X-Received: by 2002:aa7:93c5:: with SMTP id y5mr2804956pff.184.1583260717221;
        Tue, 03 Mar 2020 10:38:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b712:: with SMTP id d18ls1439212pls.1.gmail; Tue, 03
 Mar 2020 10:38:36 -0800 (PST)
X-Received: by 2002:a17:902:c113:: with SMTP id 19mr5463146pli.138.1583260716769;
        Tue, 03 Mar 2020 10:38:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583260716; cv=none;
        d=google.com; s=arc-20160816;
        b=lu2QiGAPAAfd3jEK7UZLvSwqBCvFwB9fnDQ1nob1/s3+QMnO/RzhwBbvYnECzZM0H3
         oj3B24x9nl7LiSGj7AX9Vi6s8U5UhGW+XxtCOrmnl4vRp1OAjFuJyk0Wag7SWXS6ugM3
         LA301z94PRNNUmb7xpfCwdgZ2PUWNpxG4kZH0iDMfcEi13mNZX8b1EGg0A3nb3fogQwR
         r7eFXGhKCLbTL9aWM62VjaE3CxebTbYNXFYetsH4GIfMa4kGZKyulkgFUs0S+/AY2vzV
         nX97+ughw2lfQ+T3k21A7zzjdpPmVFUBXrqPxS2KT5rKxGsJDfRLT+lOzc2Wmnen0tY5
         1Q9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=zwqvmQwhdc6pgtOJG8q45mxZQTPzWxhvYi6YFGr/Wag=;
        b=lt7AvVhfyrcDTgoP9WYEhxYgNNbnxEELCVreLJ5xvHyYuSB9wX3EbbPUvk3op6Q0aC
         6Br4KMp0I9r8s7EqBd6VWZ7QEBm0KMYreLbsA5NE8Y5HuAVUIMv9TvQFYoOc6hWxvPxR
         JAQUWaEURa//DySDRY7m8YrZnDAzk2rNFuhRDbZXIQbzC7MKHHa47GAo77+1ECqnbE6m
         Nornt/lZO//sYCcV+D9cS5u4V/LO7B+3/tjESb/o9MHS3xondPED8hB7army3uhQRgSF
         b19XV+tvtWyMc1pa7GVvbE0aD4S3r5BMwlERBJAqbwLE17U3N7WxVNxxiNgscrgalWsI
         ql0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b="KEFvkU/e";
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id x128si463010pgx.2.2020.03.03.10.38.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 10:38:36 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id s8so1739025pjq.0
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 10:38:36 -0800 (PST)
X-Received: by 2002:a17:90a:33c7:: with SMTP id n65mr5559982pjb.51.1583260716097;
        Tue, 03 Mar 2020 10:38:36 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
        by smtp.gmail.com with ESMTPSA id w19sm17947807pgm.27.2020.03.03.10.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2020 10:38:35 -0800 (PST)
Date: Tue, 03 Mar 2020 10:38:35 -0800 (PST)
Subject: Re: [PATCH 3/3] RISC-V: Stop using LOCAL for the uaccess fixups
In-Reply-To: <CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT+u8g@mail.gmail.com>
CC: linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
  kernel-team@android.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <mhng-18207e65-8208-49c4-a8fc-70b9e4311851@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b="KEFvkU/e";       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Thu, 27 Feb 2020 15:03:42 PST (-0800), Nick Desaulniers wrote:
> On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote=
:
>>
>> From: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> LLVM's integrated assembler doesn't support the LOCAL directive, which w=
e're
>> using when generating our uaccess fixup tables.  Luckily the table fragm=
ent is
>> small enough that there's only one internal symbol, so using a relative =
symbol
>> reference doesn't really complicate anything.
>
> Is `LOCAL` a macro for `.local`? (Looks like no). I would think
> `.local` is supported, but `LOCAL` isn't something I've seen before.
>
> Ah, looks like it's local to macros:
> https://sourceware.org/binutils/docs/as/Macro.html#Macro
> "Warning: LOCAL is only available if you select =E2=80=9Calternate macro
> syntax=E2=80=9D with =E2=80=98--alternate=E2=80=99 or .altmacro. See .alt=
macro."
> https://sourceware.org/binutils/docs/as/Altmacro.html#Altmacro
> Link: https://sourceware.org/binutils/docs/as/Local.html#Local
>
> But these macros are setting .altmacro...
> So it looks like Clang's integrated assembler doesn't yet support
> `LOCAL`. Filed:
> https://bugs.llvm.org/show_bug.cgi?id=3D45051
>
> If we're no longer using LOCAL, do we still need `.altmacro`?
>
> I also see two usages in:
> arch/riscv/kernel/entry.S
>
> Would you mind fixing those up, too?

Done.

>
> Otherwise patch LGTM.
>
>>
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>> ---
>>  arch/riscv/lib/uaccess.S | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
>> index f29d2ba2c0a6..40bf130073e8 100644
>> --- a/arch/riscv/lib/uaccess.S
>> +++ b/arch/riscv/lib/uaccess.S
>> @@ -5,12 +5,11 @@
>>
>>         .altmacro
>>         .macro fixup op reg addr lbl
>> -       LOCAL _epc
>> -_epc:
>> +100:
>>         \op \reg, \addr
>>         .section __ex_table,"a"
>>         .balign RISCV_SZPTR
>> -       RISCV_PTR _epc, \lbl
>> +       RISCV_PTR 100b, \lbl
>>         .previous
>>         .endm
>>
>> --
>
> --=20
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/mhng-18207e65-8208-49c4-a8fc-70b9e4311851%40palmerdabbelt=
-glaptop1.
