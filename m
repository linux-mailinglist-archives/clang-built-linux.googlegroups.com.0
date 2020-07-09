Return-Path: <clang-built-linux+bncBDYJPJO25UGBB47GTX4AKGQERMML4FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7A621A7F8
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 21:43:48 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id s7sf4108427ybg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 12:43:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594323827; cv=pass;
        d=google.com; s=arc-20160816;
        b=eoGOpgjJ1+Wk+BXvUM7JtW/R5mVpq1r5kiK40dbGD7Y2l5Mfxq/aFHYumEN6MuWn2h
         lZDKFYJTCiqdVdQFIEAY2f1QDmM2/wNPOPUb/EO4r609ikaa20eSvZgIAxNgK61BnG5q
         HU+nnCogCZ1JDwH/prolluSIBLjqN2M/MIAsqilS5WM81/+u0bFmPRTPpgZZXZV29P7e
         6RCUCGZBq1NJyfc5E7pQiAEEJ3bFoVDI3rq7wOPAGqaTMOr99Add3dVKRjqKnFiC7C25
         98aSTwtlxXZQiWZ3v0b9UsyOayf0PQC8jc7JsQmEm7pI8Q/sKosK+pizjwe4P6ne/yMl
         +mVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=oq1PUZfE3AGKqIB9o5nrMS3rjQCeAZ3Lm7LPCrW9+F4=;
        b=eZF0X2qUP4ryqu1WKwno8DC5Qg0dfHChZ38RXuAh21nX0Ey274sluI8NaWMqUZ6nnG
         r3OS+ClfDJ+y53a0a7ZbLt8Nn2OJVAsXCC/gm8wL7EturfhG70/sVHFdarTWN1YhdX15
         ZauMGo7kQpPhotI1IECud9LDAz/DeOn7YcyIqdpO2ki18l30YzWqUAT+TJmOA+K8zj+c
         sWVBRp29YyvEkwKmg5FuKlaXKyLMMPAz0S1u4inQ6D8Sjobjpk2r8fbmdERzGeOG7oVP
         QEfZRySfM6j5dt5kHaWhufNjEC/JrgeksQZ2ANxcuPpUl40P6kAqydsQtDOSwAxCYSIO
         rpOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="F/UUvtPF";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oq1PUZfE3AGKqIB9o5nrMS3rjQCeAZ3Lm7LPCrW9+F4=;
        b=diyGz3aA5vwsRlaJ7yle4C+dQotHXA297XFtePZ8cTq2tcs2r7cgMUl1rXJJlsI5BP
         jv49S9R9cmZQeRS1j6cYg+/nyWhZDtOD5FfVxZ8UNXh/8kwYgWw5drmbwlzOJcyOoEov
         V1Ew5zwSgoEp+WREEl6CqgmSG2rOaFHR74iRp9pHA8i8qMukdWAwhZou+OTvfQ3Y1tYE
         rCFyvw0KA+JHiOf7iEiXoGp8DqX6coYUG/S6gpnkZ2BkXAfPWKIBYdtBxxsDCbDzLEo/
         i9N8m0v0Lm7Q4gMa63Eno0VOwCRjB52zmlKMU31sDWyciKf4lXQ5HvmCp4wGK0w/Xizs
         6a7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oq1PUZfE3AGKqIB9o5nrMS3rjQCeAZ3Lm7LPCrW9+F4=;
        b=nIcVyeovhLea5k6uCSJLohOBG/Rj0NyQ9kXmBpQig0mQXK49bMkyTqijS9pisiT2jV
         LMIK70Y/3Sl1R6882rm77S2reBeikovPiwRC1ZfNxJZ7gm/h6uxBj+gtwuR904M+h3DE
         /76+bKSVs3vzdJATYWU2cPc+a49WJbPKdNtzjigNOOE2YxOTWuY+wqmRLth1n0eGhAB5
         mHYagk0RkthLR5LMekEkgeiqHbmvqyY1Mj7ZZ0LBpZf9C7EfDuMM7lb+LpD2ResEdr44
         9nMi4LCcTaP4OyzQG+BMYccw/QkX+aKj9JBK/XKNmYgbO+hsLLzDxgSr5tQOzraewaqR
         l4/g==
X-Gm-Message-State: AOAM532HqzI+kLjEzV1IRxxP8JLBI/4klK92coTnXVJOkNcVKJNMcVSc
	4H2bQQRggEm8CYyN7HUHb18=
X-Google-Smtp-Source: ABdhPJxJgk3cIJU3V8WoQjZbAKO+HRTBgqbn4fvsekPYkc5kxpSUxfPqbUKD9gxGlZUd3GFLCwWWFA==
X-Received: by 2002:a25:8802:: with SMTP id c2mr16855484ybl.444.1594323827579;
        Thu, 09 Jul 2020 12:43:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6087:: with SMTP id u129ls2493396ybb.10.gmail; Thu, 09
 Jul 2020 12:43:47 -0700 (PDT)
X-Received: by 2002:a25:9384:: with SMTP id a4mr14236948ybm.150.1594323827128;
        Thu, 09 Jul 2020 12:43:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594323827; cv=none;
        d=google.com; s=arc-20160816;
        b=KoAuW8jFpLzBK+YkmhaORalO0skpdOGsGFw0Zj9Zwr2hijSSyFgpFQim+QF2CZANHP
         /uSzHzLt6Zi8IWODp93UDg25DG7Y2pZlap+10STzNsMXZiz575Z4SzR5IdgBFp+RtquI
         aWws1Hx9IcVzzryajBcR2xzcUXye6y7U2UcL2v2Jf9/xLcwmMVNpijQKGIxlGaIoWKBf
         pGRMsO7L8oyAETmq/s/VGsnsMrTvooRqKZeIDpxicpCG0nFECvvWaV4lU26D4PMQ+WJf
         esfzxY6qJG8U/QKaEZTE1Z6d8UhHzPzSbJlyS02tcW9OvrLzpwGsQ85g1BswuxHdFFpI
         1/Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=LV8yOlhlgJtmA3PSCn38SrfJWuUPH5OH5CgM+ITjv9s=;
        b=qmCkq2YbPYwq9PUumrbwonUdN+pdqtAKwWVjZTWDre7rhZz356f3W0Wbx+HJ99pPyr
         QI3/xqJD8SGYD0fQo69F2R3AW1HpU+GHjLqD31eg1MY0c+8NupktbXjuYajaHUr+PBmk
         /gKHK3VFS35vhYy17CL5zzhFvv+2opFXO0kFX0yxxmCH+fk73L6oxr2I57nsSUwkTtdM
         ioEKewGfLgtSr0Oqltvu0cFlNdYDfgDnYY+qTJISvRPu4K04hZusQB+2saiCCMgUbmhe
         6JAcMomeyBWPfxoqs6r7vhOSMV5hbGMkgdEpjHSK8Qrki53cKZ8/mFmMcN5VT6OvUCGL
         OUSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="F/UUvtPF";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n82si228904ybc.3.2020.07.09.12.43.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 12:43:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d194so1399536pga.13
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 12:43:47 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr54079220pgf.10.1594323826101;
 Thu, 09 Jul 2020 12:43:46 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jul 2020 12:43:34 -0700
Message-ID: <CAKwvOdnT5ZMjvz2_UJ4MtvDEs9+90bsDp-Rd2SnXZZ+AqebYHw@mail.gmail.com>
Subject: Plumbers session on GNU+LLVM collab?
To: Segher Boessenkool <segher@kernel.crashing.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Ramana Radhakrishnan <ramana.gcc@googlemail.com>, 
	Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="F/UUvtPF";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

Hi Segher, Rasmus, and Ramana,
I am working on finalizing a proposal for an LLVM microconference at
plumbers, which is focusing on a lot of issues we currently face on
the LLVM side.

I'd really like to host a session with more GNU toolchain developers
to discuss collaboration more.

I was curious; are either of you planning on attending plumbers this year?

If so, would such a session be interesting enough for you to attend?

I was curious too, who else we should explicitly invite?  I ran a
quick set analysis on who's contributed to both kernel and
<toolchain>, and the list was much much bigger than I was expecting.
https://gist.github.com/nickdesaulniers/5330eea6f46dea93e7766bb03311d474
89 contributors to both linux and llvm
283 linux+gcc
159 linux+binutils
(No one to all four yet...also, not super scientific, since I'm using
name+email for the set, and emails change. Point being I don't want to
explicitly invite hundreds of people)

The details of the MC are still being worked out, and it might not
happen, but I think with more explicit interest it's likely.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnT5ZMjvz2_UJ4MtvDEs9%2B90bsDp-Rd2SnXZZ%2BAqebYHw%40mail.gmail.com.
