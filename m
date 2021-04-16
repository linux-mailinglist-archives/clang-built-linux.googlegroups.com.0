Return-Path: <clang-built-linux+bncBDAMN6NI5EERBCUY5CBQMGQERHMYOHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C70D362AD6
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:13:30 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id s7-20020adfc5470000b0290106eef17cbdsf1693899wrf.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618611210; cv=pass;
        d=google.com; s=arc-20160816;
        b=iJ+/74DNgm+BE3D6f6aJHZTY7TcrIo/Wrwrhz3ee3rd8d0giJaIfcC2CP5ph6Kvsst
         e7etqr3WhWl0OdLlBGI/abbAcwdArNMCPHSQDpkosGVKFd5oaxtwLrfb51kL4R/zdcYX
         8D0lJpaOcBMrbFMD51O2ZMB7/DovZDFaVM9ZPoABBwRIr8OLHRpXxa6pm4MZ+ISKone5
         FQ66+5JC8quocr892x8oxjT/4imfb6TV4rYOiUae0TsocyuikSMisNZDFe5Dw+xlSGv7
         luvk7fhPXsp2j8ygh5b06OX1WWIYNEXUzLaP2blibhWrcDdaBrkLEDaouMvV5x0OcpET
         WkWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=tp8o4GUjuO1VQL28UaWcm85PjQNls91/wDyopkHTGfs=;
        b=N53WkWfoibwlmQf7KBzWbq3JuvEW2ymUsLbRjzfPweeS1iROIf2SCRuN5rexf+0syl
         omFByKuz2SbjlG9bx6Ore/p1T+1eerODVde4BReNipNPRtVew63SczAFpAqnEHvH06Cu
         UPO/bReApnkoj2wzdCh8GUat0MEvn6Rt7WOpMIDlAtFGhWkDFOUSa6hoJc/oFnPlv7GK
         w2tUQVgELMjvzkBvnDTS0/+NwZQyGlboVZ5JtHqZpqCYVX//IDhYz3L2o/LerqJzkRmP
         oXScCeLv4pEqS67LpMTR9nHUSFGRVid21OQfuviWD/5MwWGrvdcS56Qil3QpBUxbW5GX
         32ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nKJUfgNO;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="//3+6Y0v";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tp8o4GUjuO1VQL28UaWcm85PjQNls91/wDyopkHTGfs=;
        b=ITonYjSTETK/oKnCotVfKGv2+HJ7zPjphDqv1IlE4wyPpz5wJObgfrLRtiZWteGcuY
         zD8PMPB5xi/t9k3ZLH0q4xcPWlD2rnq3vVQ5LFZtusbDbmIl7iLZDAUrFgeMbWxJPwHx
         dEqlRZVEDrCNc/6lmGbPH2arIuHxjGH7CoVCRg24rsVFGF5bPO9AD59O4si2orjf6xMi
         sHvNzbtiXgMpBiar5xzh9fujPdkEy7C3UyF7krQx9ExO1iEWbayRuA85lCmO4R/tErPG
         YtIUjOFxpMzAoExdsm3opQhoeFHm75LBwKgY431hygICwYvOoEIYU4GjwhICwSpLazkM
         biTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tp8o4GUjuO1VQL28UaWcm85PjQNls91/wDyopkHTGfs=;
        b=EuJjExK2bFPKAlrzR3j9FRNqt/eCgxe8Q/VSrhAnxKMAXZTCnQ/1YUNd8SLHW5+RKJ
         mdOwW8Cv5jDcQdH48aMt8TJjHKFsKo+cbL6QhSJwKP2XxCgZKTxipDREj1xYa6+vNDyO
         ftnxMr90X7lU8xzWRUhUB1IMW1U1NudaAK+4JpBbyujeIwTETr0sFwU96jhb5/Pa2NTo
         ik5woXD+QK200+BeRWSQh3adsReYps9+kZ7sjjHkpM78uxi0ATGojFcvQiW9ovJrlGOg
         uYMk5ZylBlr980ZFEE9E+np0oq+Ecx7VvKEzOmxny/HsP1dc3Pz5PopRiwB2RQm1xLoK
         wFuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YALJOECLHeOjhqaJc1CSZ3XdmbvSZFqO7U9Saz7ul7l5faiNo
	WWy+9X8y2oc3uS+6PsUqx+g=
X-Google-Smtp-Source: ABdhPJzEnBKb5usiNMV2hHlI9qHG/4h3fY0z/nyVI9J2V0zO5RjZ1xHBLX1CHee9Y75kswDf1BXbwA==
X-Received: by 2002:adf:eec8:: with SMTP id a8mr1312471wrp.382.1618611210821;
        Fri, 16 Apr 2021 15:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:11:: with SMTP id g17ls624102wmc.3.gmail; Fri, 16
 Apr 2021 15:13:30 -0700 (PDT)
X-Received: by 2002:a1c:771a:: with SMTP id t26mr10146345wmi.96.1618611210114;
        Fri, 16 Apr 2021 15:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618611210; cv=none;
        d=google.com; s=arc-20160816;
        b=Pvx4Gfuoxqloy91TlcJWXwj5Jt+zhWWLZ2UC70RNj1HxeBn/ZRw9g+hyVRAu2qQHYn
         j3N6azRQ7nBsN2FMgzIq1/ieZRzUOZlbczExdxZIIecC3v15GhjpYXDINuQnyCScUuAq
         RGfiixNqFwqaMB7JO7jHAXBdMoFPIz+ZWTTTASfS54JRb73Xop9Pt2sidPiHkyN0s8h3
         8dHEGsNOJmrDCNl57b5gpzqTuH+Q3fF26hL41UoioPs63qOiBrcZ0eWiDpcZmg9qlmfp
         Wo9e/Sk4eNovaWAQ/OdnfShiETphjng+13esoMT6j2PVepddIfMUgmG/ZRAoxO1uuIeM
         XcqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=CfOo0OteF00ZxNk4tUH5JwKaUxTTUHXfQsULrq8CSaA=;
        b=oV0PJReosNPLnXWuf5Amt319X/kMdEgVNf3+Zlfw2+l6tAofVhZnAmjDfy0dA1eaea
         Ck8MUFeOPH4NGxqpuCpEzfPt3KTTLtACgzD8W3rW8mOnx0eRMzW7zLlEf70qkWGohcu0
         ongM/rO66fj9adRaillIGP+/7wCVbO1TOz6penYVsS3EQqe4j64XpHCgb3oExEELf09B
         Wk6++3+gwdon99Y16JINfISzv4/HHvAD/TWiHAwc15DyW2fEgHDya9/8oTmfCgFkBF0O
         9Uul3RawmKKKEZZRMNzgnxecFagaubi1wzoziIuklyYiHnhu3wGH3gKcnBUlxgrB73kx
         lWXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nKJUfgNO;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="//3+6Y0v";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id w2si546219wmb.4.2021.04.16.15.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 15:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Sami Tolvanen <samitolvanen@google.com>, Borislav Petkov <bp@alien8.de>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
In-Reply-To: <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic> <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
Date: Sat, 17 Apr 2021 00:13:29 +0200
Message-ID: <87mttxubcm.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=nKJUfgNO;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="//3+6Y0v";
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Fri, Apr 16 2021 at 14:49, Sami Tolvanen wrote:
> On Fri, Apr 16, 2021 at 2:18 PM Borislav Petkov <bp@alien8.de> wrote:
>> In file included from ./include/linux/ftrace.h:22:0,
>>                  from ./include/linux/init_task.h:9,
>>                  from init/init_task.c:2:
>> ./include/linux/ftrace.h: In function =E2=80=98ftrace_init_nop=E2=80=99:
>> ./arch/x86/include/asm/ftrace.h:9:40: error: implicit declaration of fun=
ction =E2=80=98function_nocfi=E2=80=99 [-Werror=3Dimplicit-function-declara=
tion]
>
> This is defined in linux-next, but I do see another issue, which I'll
> fix in v2. Note that CFI_CLANG itself cannot be selected on 32-bit
> x86.

Sure and because of that it's overrated to make sure that it does not
break the build. I know, sekurity ...

But aside of that when looking at the rest of the series, then I really
have to ask whether the only way to address this is to make a large
amount of code unreadable like this:

-	wrmsrl(MSR_LSTAR, (unsigned long)entry_SYSCALL_64);
+	wrmsrl(MSR_LSTAR, (unsigned long)function_nocfi(entry_SYSCALL_64));

plus a gazillion of similar changes.

This is unreadable garbage.

Thanks,

        tglx




--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87mttxubcm.ffs%40nanos.tec.linutronix.de.
