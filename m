Return-Path: <clang-built-linux+bncBD4LX4523YGBBOOS5GCAMGQEGGLOV6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBDF37A5AF
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 13:23:38 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id j13-20020a05612212adb02901f8d901cae9sf1428074vkp.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 04:23:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620732217; cv=pass;
        d=google.com; s=arc-20160816;
        b=qNO5OPLt693b+BGKnulemdIPvi+i7SY846p34NM5mD7jf8NT8KP8qOU5tw2jQmp059
         I7c3hKaAhran5LP71N8V2sUCH77Vyy42MdCYjamhWIFFjzN9LrFQOtdBs+4+5inSw81P
         AQ87ynLuBV6ISE0EHspsuw6e44kaEEJbRYUJTS+N0DymoxdcFeNschqbBo2H3FNM24PD
         y2BeWQasV1UUCx3Uc26vTb79k74NQk6mTpOKuOg+/liooivzSOuUFhDxonEbH0QS0zZQ
         MSrjDEoa9+crC7WYo8Qedbfd7WHUkuyD1jTacizmUG9v9g82bxF5opzESGcsoXABU66e
         SKbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GVWav0gm8qNk7tTsm+TcvcQW/qB58Q9hkUoEMzPoGTc=;
        b=VwqU8QT8ADzKTB0EFV52ZGAHrdIYkH2i4le53BbnB2WN4brAAH3GjiKMVb0X/+NwWC
         awPpn2xMiylO+b+Rt/17sWwQl9cWeXPWJltuyCc3IzA/t2MDxXxpOVyL3N7DKTqNZrqy
         RejolpjulMxkOr3HsC7N0WJg3dcwjZNAVYmM16xs0JSjS0Z10HqQTyV9QMo+u+NedCxp
         WbFD1QiebzpbDwn96OeCoViwrSIea7qP3K4q2e4fnYPsZs8okSGqnmVqIhXP1vTWszEi
         2zr2lNyizHuN2mtqwX37n85MhK6Qn2ed3PMwLOxXd1HcVHid6G+a+ZEbvkk2iYd6Q07I
         NKNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GVWav0gm8qNk7tTsm+TcvcQW/qB58Q9hkUoEMzPoGTc=;
        b=n9QPKv+tzc6S+/HRUJhykGjd5dX93wV6hv4o6g6CKFdTuLhjzlIih9asIBB73BULlW
         PhfZJsvcwehwKoGToaeZsaqUhi9lR8bV6IMyEcUEhfDTUovgD18pTZR/bHaBbzjf6xHY
         /V/0yK/WtiOsXIxSneAGtEogkCYKPv3tp5EWkOq140RbBuDsshMDQLaDezWKEVPCMx/D
         Iib/V44RthJ+i1YEz1d4UJemqvbELMxiQSavyE76Iknasco0tFg+tuS/ynUfzZxAKo7O
         7gcFAefgdB36w+c6Z9QONDb2o9/7K+DVHpBAU0WEk3nCVHAj4kwtfPtsWz44hebNmYbD
         GDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GVWav0gm8qNk7tTsm+TcvcQW/qB58Q9hkUoEMzPoGTc=;
        b=NBSMeO5JvJDzjEzNRD1HiQERYoI7nPytNzU+m4prV0cTxZQIj1YZOgJAA6UamI9kQF
         qdIG5dKql6OHh9zMnRWHV89NVR7QnoXsfIQl55tVNOfQXzPiCTPzdOOVZdoXQSV4+yST
         NV4PH5vK7S/6hihh896S7Iu31w+pztXgnrWJubkinLfvt9T4rUTj/pOJup5JYAEr579C
         Iw8k6T27KXGtFtUSt+x8HesFBxx1ou3/rDN1mbl0/ix/6+nZVbzOpAHOq2m04ep37c+F
         f4QdPtS8bS3qPoLamDcdeQWxuMPTSwIDpoLH1gDokEjNplBWZFamI/8KUAmzrSkUwKPr
         tyFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532E60ySf8kQfyqtjL2ZZtMrRK0B7pQ1DHel9vqz02JULCdwePaL
	EzGwEY3/GCWT0rOWk12e6vo=
X-Google-Smtp-Source: ABdhPJykCIHQiFriFTZLcsdnCt7paPEW01VGiOOgwx8LygvTDAixu4tx2Cy/UqgfG3BD9XcSIC7Vvw==
X-Received: by 2002:a05:6102:ac9:: with SMTP id m9mr1635777vsh.43.1620732217794;
        Tue, 11 May 2021 04:23:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22c5:: with SMTP id z5ls1885015uam.6.gmail; Tue, 11 May
 2021 04:23:37 -0700 (PDT)
X-Received: by 2002:ab0:3733:: with SMTP id s19mr24528319uag.108.1620732217250;
        Tue, 11 May 2021 04:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620732217; cv=none;
        d=google.com; s=arc-20160816;
        b=uB4gfP++P/kBqfMvwZwktlETb04W1RroiHh6Es1KRFex5qM6cwao+0t+VvdMzG/Fr3
         QOY3FXoQzzryso5kIjLKMZvu8LWuVJFfudTC0P0Xa9S2R3P79ZWrOXXGhS5x1Jh1eAqT
         /Y9awE+xZkK/3cg4RGSG/aHhHKm4WtTrKZLnEydgUzKD68KTNQY6VhTXjpaulpP1TzAj
         NbqLToDFtfqcwtp/2a8BnsUwIYxyrRQMoloAASNDCT2dVMNJWIqgXEHFg6ZkU22fE97Y
         ULAadTjzRvitKyj4J/odAFFb4Suw1P7eRM9A5GGSJ3uE9em9V2LCgnk2+/PbLf8gYpA4
         M3dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=RH8qGDtw2ESn0qVHbDwkGv8VpZ79/1ZiSl718tobTIM=;
        b=edn0yj6y13HWJMyZXVqP+oupfcqRM2Ffm6q71HGDGObAcExfu2vGVClppqv08Muvok
         1uhmHDdpFwOCyLYZynSVu/8i1rMJyXA9BBQh+30oLj0zoJqYJIXPbO8wbfG1EukzKEqy
         TrQWS4Jk9xyVeY66qWXniXglAtmMzM+fNQo8AyrS1tabZjnePk8YsqcsSkcRdcWOKpkH
         gxZ8BZaKRyDbtIyqvlYeOOK7Z/tFvEBHSX5B0ZDWXLaq38uBAtArrdMKcAJ9dqii9paX
         NQjj1gyRPD0LnnpGzHRrTjBVapTnUEkxVAOSmXNO5YWipdbg4aPyz/yRtBvUPs0ThNnk
         hgww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id h7si1682140uad.1.2021.05.11.04.23.35
        for <clang-built-linux@googlegroups.com>;
        Tue, 11 May 2021 04:23:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 14BBKWcY002034;
	Tue, 11 May 2021 06:20:32 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 14BBKKjC002001;
	Tue, 11 May 2021 06:20:20 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 11 May 2021 06:20:19 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Cc: linuxppc-dev@lists.ozlabs.org, Michal Marek <michal.lkml@markovi.net>,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux@googlegroups.com,
        Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for preprocessor
Message-ID: <20210511112019.GK10366@gate.crashing.org>
References: <20210511044812.267965-1-aik@ozlabs.ru>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210511044812.267965-1-aik@ozlabs.ru>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

On Tue, May 11, 2021 at 02:48:12PM +1000, Alexey Kardashevskiy wrote:
> --- a/arch/powerpc/kernel/vdso32/Makefile
> +++ b/arch/powerpc/kernel/vdso32/Makefile
> @@ -44,7 +44,7 @@ asflags-y := -D__VDSO32__ -s
>  
>  obj-y += vdso32_wrapper.o
>  targets += vdso32.lds
> -CPPFLAGS_vdso32.lds += -P -C -Upowerpc
> +CPPFLAGS_vdso32.lds += -C
>  
>  # link rule for the .so file, .lds has to be first
>  $(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32) $(obj)/vgettimeofday.o FORCE

> --- a/arch/powerpc/kernel/vdso64/Makefile
> +++ b/arch/powerpc/kernel/vdso64/Makefile
> @@ -30,7 +30,7 @@ ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
>  asflags-y := -D__VDSO64__ -s
>  
>  targets += vdso64.lds
> -CPPFLAGS_vdso64.lds += -P -C -U$(ARCH)
> +CPPFLAGS_vdso64.lds += -C
>  
>  # link rule for the .so file, .lds has to be first
>  $(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) $(obj)/vgettimeofday.o FORCE

Why are you removing -P and -Upowerpc here?  "powerpc" is a predefined
macro on powerpc-linux (no underscores or anything, just the bareword).
This is historical, like "unix" and "linux".  If you use the C
preprocessor for things that are not C code (like the kernel does here)
you need to undefine these macros, if anything in the files you run
through the preprocessor contains those words, or funny / strange / bad
things will happen.  Presumably at some time in the past it did contain
"powerpc" somewhere.

-P is to inhibit line number output.  Whatever consumes the
preprocessor output will have to handle line directives if you remove
this flag.  Did you check if this will work for everything that uses
$(CPP)?

In any case, please mention the reasoning (and the fact that you are
removing these flags!) in the commit message.  Thanks!


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511112019.GK10366%40gate.crashing.org.
