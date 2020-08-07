Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB27ZWP4QKGQEBWKN2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id E392E23E787
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 09:04:12 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id k1sf1014411qtp.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 00:04:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596783852; cv=pass;
        d=google.com; s=arc-20160816;
        b=069jwGEHCOG0fm0WAs0yyjtnLQ4Ia20UN7rHP/jHZ0pae0WK/gbheFy8p5ila8xD0M
         e9GH6qJjPAiMgAQuCKXVzQH2sO2RrJbX2falcmu1pLGTAHylu2dF0rl4zG21j8sBnYvb
         bBvtkMsQ0nNhwKJTg65UwBzCA+theY4OGIKU+tmhZu9lwfRpBzHIRyk/GxCPU2F63PIE
         wHCQE2I7BOI0gBvvBE91nwjGeFNDQZ7z2xzGvjZE2bjSZSu9kR0IK9QaAfRECGIgy+m6
         APY0AwKV72IF0NrvoKBJ3+AwehknyuV6eBA4Vz+7iuIjDhfIARsWj1pBbadl2Ru8nveS
         oEwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=IFLRc8QECj1Gnx3Y4Op1ySmGRPZBRUpSE+/aJDTwF4M=;
        b=Ha0FcEDByskmppSlP8ikfLfM4dqHyGSzqjxnnP1xQGd5TVLL5+4UgKM/K28TZijGak
         aXz3cP4rBhXD7bH1MbuY/PiZEJojSdRx4KPAdD0X1urbJf4Vfxk0xaQBw+Q+sroBF5DT
         TU0syEbddGB49xxcZKxs9EiW6Lhwaf6CVuvwvnFVHLTjGvwOVHfdvk1EqqTEi7nSXsc0
         n6ROsYUa1uu3V2AZd+bKrY7qIyKYooGV0BKKZJaPM9dn2RxMs8DAHVOra+f3NOFK+BUG
         MLYnc4os0QHkvFha12lmgou5dfvHkDUaAFnELdEVbeYmptGV5XWjSJyvEHmqe1SE9UCV
         /wpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="vG0VER3/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IFLRc8QECj1Gnx3Y4Op1ySmGRPZBRUpSE+/aJDTwF4M=;
        b=hxvEhwAHHf3W0tjXbgoKsIFIINYt5NUTRAJkuo8mvwvWBKnI89kggql69wg25522ah
         hNRfITUQk5W7iLXl3WbE3brX2W1kZHrSiNE7uPiZ3z0Tu3sLdaDEtyzV60oMtnoL3L5X
         rW109SHDOFLzUhbDlwx/m+63nyPrp6qpW7bZV7NFM2yRiL7GX0jxamlJH14pMG+6vs4h
         Ps3uYbH121e0h0Ktj1ZxiTgxFIGXPKpE80dqnf92hYi/Zj9677kJ5ofhRTb5uE2bOx1o
         hUzDP3OmLwZONcdVwSrZIQ69/SH5jnPLXmpzWzAqSSeI+5CITrxagUZgtLO3ho1JfBj8
         tRHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IFLRc8QECj1Gnx3Y4Op1ySmGRPZBRUpSE+/aJDTwF4M=;
        b=MNOVVyGrxXIgFu+OeHkOeXEi+cRrHk6BED4RrBqUnIac3xfnUH1jLpxL703f8tQ4wX
         A35QPp3Pf7QXpDzbXhW6T6olBQYnXVKAaA5bSFPQIfNtKZ5TmlKO3B+ASW+7oaugYBND
         jFxlE0L4324YbtwXmLd/+3lAI84crzaoiOE/r2lTgFZO3NZEH9j2Y8aPRK0nrDfT2AzI
         pqDoOTynKKjPThmMEUkW/tS1x6/4ZOLzCqdiirRkTZU0mCIEyzjk8J5ZSXS2HNOhQZ95
         oIWzA+nY7cV2yZX9VZUiQWLxZjAqzwiDKoRRLOBfbR3WjMd/Me40/1A0UnbwkhWrD8G9
         eNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IFLRc8QECj1Gnx3Y4Op1ySmGRPZBRUpSE+/aJDTwF4M=;
        b=qx2fR+nQTGUmDFPpAMfy6pyeufi/bcj20eXLApbk34H167q/T1yvDRJQY3/lFOXver
         z9ivx+54Ff1Ka7gyWJNGgh0BU7db0icUeOt79FvDot2uSyjplAF2AkATlifNOfOh+E0p
         /ZGlfb+umZej3mfs3KtIX5GhWP/aaEqs1Rge+/tkKTQjRRQMLo4/vq02SQQMC4+7ySIo
         2CM+EsA0XJO0Tlx7aZp2aPMFUwKr+vH7AKc8cMRN3h7+bj2hLh5rhcvfkzSHfb/ueHFN
         WQu/xs6XO7YYVeH59Nnp9jsSYK9COmAhk4NgRMRE45ekVaV9di2T1htChJYUmvAaT+4r
         xjEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cblVCgnCwRTR5HApJs033//Wy+TTKRkhBU6Z9ci7M2F8hT9Wv
	1V8zcDBp1TTSvXlcBPLiwoI=
X-Google-Smtp-Source: ABdhPJzooD4DamnLB23S3X5DGjnETRM9iGMOVCvgQldjJFyWwv4HGtW4Ekrd4vf3ES22nRJQMZ5dAQ==
X-Received: by 2002:a37:717:: with SMTP id 23mr12316372qkh.41.1596783851864;
        Fri, 07 Aug 2020 00:04:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7390:: with SMTP id t16ls3428706qtp.10.gmail; Fri, 07
 Aug 2020 00:04:11 -0700 (PDT)
X-Received: by 2002:ac8:7205:: with SMTP id a5mr12837131qtp.235.1596783851548;
        Fri, 07 Aug 2020 00:04:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596783851; cv=none;
        d=google.com; s=arc-20160816;
        b=lECwLqCjEW3NOi2gB+7tP4c5j2jSt7Vdu5ZFsgMpbmYmSLyXRFItGeYfI1YHTXfRCX
         3vIlmp8UwtY46C5GSFMPdPHVVHZBNikODrg1IpWvkXrY08BphPSkxFNjjiJ3kkcN9V8L
         mv3r6J6bCRFZAFxo5tI7M6zWDQ4qnmuYzmtemxV3Tmu/dmaOTHPPdozOF/ElZEG/CV00
         RSnhPWs1XK5t5Sgt0TtRYwtpgR6xWAIX02YclLPgpp8HXgIkOUm5sGMfQfZFhecops8G
         SRe/yU9/YfBADq8EXWQNo7E/cBiqgDoWr2Crperw7tbiAm3pWEE+lBYAVewj+HG0aDUV
         HUuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oYWNp/GpuNpaVK72kwx0orN+HBmw3zsxbuspfgdgQAw=;
        b=Q2CeSXCzktTSapvY4lv7v3Cp3FgmuCJxcIbrcrc4qircDkU3BWhggrNbVzprEST/kX
         SD05mWmwlYswchhkGJRUlYO7gUhPf3sNlYZuqyvVlXnbY6z9dUL2CbW0ZOMR3YiG6QVu
         dJdRs7+TRnXQK0WaTVGSQezXJwUyOFn2fK0x+3LN7Vo57pLnMbTOovPqFLSBSuq3/CPd
         bQaBLo7EOB8SRHa3cG7bp0sjxy7+1+fRCJTjGzc+vKJMBI5RGIUV9Lvisp5/So3LiQKX
         NzOwaqXDnF9G/UH18YZZyFJ3l3VoQEE6LMKb4RYPLNY2owUzkm1t4G+2PRPlr/YtKJnK
         ZL9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="vG0VER3/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id i9si477076qkg.0.2020.08.07.00.04.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 00:04:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id b22so1052877oic.8
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 00:04:11 -0700 (PDT)
X-Received: by 2002:aca:724f:: with SMTP id p76mr10105390oic.35.1596783851057;
 Fri, 07 Aug 2020 00:04:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CA+icZUUcH91QDDEin9GyEoD8kqrQSPAnkZJyMnXU40Sk5FAo3A@mail.gmail.com>
 <875z9vh18a.fsf@nanos.tec.linutronix.de>
In-Reply-To: <875z9vh18a.fsf@nanos.tec.linutronix.de>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 7 Aug 2020 09:03:59 +0200
Message-ID: <CA+icZUWpbYDJ7CnVOsWG9paoi-EHpzW2=ERYK=GeR2z9WtJCbw@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="vG0VER3/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Aug 7, 2020 at 12:13 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Sedat Dilek <sedat.dilek@gmail.com> writes:
> > what is the status of this patch?
>
> Just looked at it.
>
> > I needed this one to be able to build VirtualBox via DKMS as an
> > out-of-tree kernel-module.
>
> Not being able to build the vbox rootkit is a feature, not a bug.
>

It must be a funny job to work for Linux/x86.
Keep your humour :-).

We have a second issue hitting this problem when CONFIG_LKDTM=m.
There are more details in CBL issue #1120.
Especially see comments from Nick [2] and user pcc [3].

Thanks.

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1120
[2] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-668736160
[3] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-668746486

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWpbYDJ7CnVOsWG9paoi-EHpzW2%3DERYK%3DGeR2z9WtJCbw%40mail.gmail.com.
