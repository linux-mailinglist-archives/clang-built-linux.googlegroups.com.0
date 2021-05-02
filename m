Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBOVQXOCAMGQERPOLFZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCF4370E0E
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 18:50:03 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id 91-20020adf94640000b029010b019075afsf2487128wrq.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 09:50:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619974203; cv=pass;
        d=google.com; s=arc-20160816;
        b=FLnPMWZNXyBXOecQkw8XrMRXY/ji+RXocyhDP1RumbbSvjTH9ddDR0nQ5xd/qyhKt1
         OwM6pktITaIgwKFR+3880aijgDp6QYnTpxK/ETgi2sjU+BXiZUfTidi4nY5ew9p2HPGQ
         qH93lczd12w3J7rKea1OEYMxKNYhokOnayGpRdjwcZFvqZ+rUkB1S+KQ/a3k5DZc/KxD
         W2CsvlgvShdW3kjN6o8sJ2xy3BcDuXBF9Garw8oyD5asvpl/JoiFPrqKU1vzo0SufRKy
         B37zxWlMWiOEsRiAlE/GLm7mmELe1gWsKVWCJm3vT2Ho0QSSbfY0/2o+kbFb8gpHdZSs
         kZUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=mBgqUnOJi20eTBAZtY39FTpVCjLpkx8aO2o7vAiQqlc=;
        b=QBNlqHXqZPJ2KiRnlPApown1XC6DQBHMUz+Q36YS/CN6CfYTae40ZTRCXOweRUK/48
         Pf44KKgdJnNJYzOvqqzXIYMJo9/6hA/TbmodCEOkmq5RL+qB7aMTz3ABsy1ZoTK2KJFX
         zv32biQDxEjjKsZ5CibWoY78RkHwARZLcMqErmYa2VaJd/spSpzz7MbJXxteM70llUqM
         Wp7U4bU8RWJWZA7tpdl8e8g3c6Z3d632d/FJxdpmLmwGvfQiEajufsZCOOEGF6Ms4mFj
         FPYtjH+0LY1M3398idAJSnk+ya7aCocvw0Ac+5qtXA9t28AxiBHsXRO2kCYMZ+mg3Dz+
         pFhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="GQ6bAO/i";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mBgqUnOJi20eTBAZtY39FTpVCjLpkx8aO2o7vAiQqlc=;
        b=oAGSXxKjH3mEctAyzr20B/A1nVAzZ4V3oXjvBnhKqMmOwrwFKWsEdSFQiURx/CQd+8
         42ZK1X17QpqEZSo1bwZ7wW7ERjeTzZDzu4dOQKzU3la+7WWo806aRsuP13e85vhhEYvK
         gGoemeWr82gBhXzMLG2S3XCzwPrd+9jz+8x47G02iJyikWJd7agLfWZBECXiHxwGhPyG
         0BkcEim8YNOhsotM9osqI0DqHYEsOsGX/X9pDTC4Tum3YrhJmFLkj1JqMpOQ4X73ZGpH
         MtaZrNTxAfn2liRwfqmeK5RiMyYRXSqmm7ZemWyz5GxjczjszkMv5P3J5LxPpXekiz95
         Ecvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mBgqUnOJi20eTBAZtY39FTpVCjLpkx8aO2o7vAiQqlc=;
        b=VCUWKnOPgNmiunjyYbHEcoYy4szYHI/rdbew0f9tzyDP9++X5uuVNXOBmb0Oc0DDY0
         LlPp+C0RQQQkmcoopjTVCCk0dk11sXYTMIWJiUYiWQld3HPMzq6djlTAaGzYE2J6StOc
         b5+FBeKf+RaDSveIBZx3C+ppz+PCxG8X64iLdloPFoP/NYXU4Ne7eTOsK9t/BeNl0kff
         ZOIQDPGJEtxJpuRBnf8WNzy6U4Bof0wAHlFepdpYeH0Z7m7LutwBkgt8TSdbgh5tR3ox
         veCLLn1jaPcLJpEXfqgHqOTuQ9HDQUcHia0/0f1Hoy02Kg92CXDG32z5kwZobRs2Ye5p
         x/Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531v6NMlBZ8fQKfqo3skYgplLEPtqVHGrZ0nykX0R8w/rLasL8sq
	w7ZRCkWn5jR4ImSxFdBh/WU=
X-Google-Smtp-Source: ABdhPJxIn2HWp7LXtl1T8KSv2YecBJLSfPTi+M12LwORzQf+saOL8fE/SluA5G72aRajUbjjRbc2FA==
X-Received: by 2002:a5d:6810:: with SMTP id w16mr6715308wru.33.1619974202900;
        Sun, 02 May 2021 09:50:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e12:: with SMTP id g18ls8249867wmh.1.canary-gmail; Sun,
 02 May 2021 09:50:02 -0700 (PDT)
X-Received: by 2002:a05:600c:350b:: with SMTP id h11mr27320993wmq.103.1619974201927;
        Sun, 02 May 2021 09:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619974201; cv=none;
        d=google.com; s=arc-20160816;
        b=GwCzeozoYStUx1cVTjUGb/l0xlhy0iy+n+WdUYkAh7QRaWm1bKkNmH/6rWmod9qUmD
         dLpUjOPRcYeWVqUPsJDx55zyllHvPoHpXe1FQmqqibhZHaBxblJm4Kody5e8wUCjG668
         3tLl/RKTwdhB6kvZnTNP2vme3+f1RHlV4gXytOjaqK1AQq3iFHvpxChWmmToET8rR/oj
         C8WO/mRikEgcVH/LWsAkp8QMmLZKn/RbPmSMQhR99GSfVahgzDJq6rxpAqg83B6dI7zW
         Z9++5NAoKMVoNK3keoxPT0sK9uyrkuEjNEWiphDf+0+mzYoUGjpqttaL4sDGItnVBryC
         SD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WrBBUUki0q/lD+33Iml9xa0KjdifXO2SpGhQjWkCsUo=;
        b=GLj9qnHIvUcB1wzaIFbFnYZOG87XPygkn8j2oNvIF68rropmWH6fYkPLx3poHK+t6Q
         yzFx6mr0a4QleOfnPLvtVxrQ1hivvBQbciB9h3RDbYF4Iko1E5yC6JMGxZ+N4lQTJjsd
         yLL1Qkfn+imFlw/64Nm7cFQeoabU5pdRRNcHVVdhC/Yg9T+uv9m70XhBY4td1pZ/ofc5
         hpBB5VoCTxRBk33OgG0KI4nK4O6FHBHW+XuP+3NNGVspbgVMVbk4Bs68Tk1baDkgMxkF
         Pf1qEXPThrtd71ghOKuQSWFsyt997J/XO15H5I+IB0/EaHeATBspB9Zl+aC+34EUQFGj
         zV+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="GQ6bAO/i";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id s9si1462968wmh.2.2021.05.02.09.50.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 May 2021 09:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id p12so4098238ljg.1
        for <clang-built-linux@googlegroups.com>; Sun, 02 May 2021 09:50:01 -0700 (PDT)
X-Received: by 2002:a2e:864e:: with SMTP id i14mr10666526ljj.15.1619974201422;
        Sun, 02 May 2021 09:50:01 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id b15sm911479lff.70.2021.05.02.09.50.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 May 2021 09:50:00 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id a36so4052046ljq.8
        for <clang-built-linux@googlegroups.com>; Sun, 02 May 2021 09:50:00 -0700 (PDT)
X-Received: by 2002:a2e:330f:: with SMTP id d15mr10619472ljc.251.1619974200472;
 Sun, 02 May 2021 09:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost> <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
 <20210502164542.GA4522@localhost>
In-Reply-To: <20210502164542.GA4522@localhost>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 2 May 2021 09:49:44 -0700
X-Gmail-Original-Message-ID: <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
Message-ID: <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Adrian Bunk <bunk@kernel.org>
Cc: Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b="GQ6bAO/i";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sun, May 2, 2021 at 9:45 AM Adrian Bunk <bunk@kernel.org> wrote:
>
> Mesa and PostgreSQL are among the packages that do use libLLVM.so,
> this is a popular library for implementing compilers and JITs.

Yes, and it's entirely reasonable to update those packages if it turns
out libLLVM has a bug in it.

Because we're talking about a small handful of packages, not some kind
of "everything" model.

So again, what's your point?

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwinSraiwc4gC5WFWSehFq%2Bs7AqCJZoMqUuHLX0nYVG0nQ%40mail.gmail.com.
