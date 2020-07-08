Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZF2TD4AKGQE5TM7R4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D1B219067
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 21:24:22 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id d67sf29665989pfd.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 12:24:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594236260; cv=pass;
        d=google.com; s=arc-20160816;
        b=BeeBAoXliTXUvPDHmwOzjb6ScV4ejmFaISLBDOotLCPm21x8ighT6Kq5nZgI4hJGk6
         CFsvNde8TYfyr0ssoxp0HV9AMxHcy0UUMfYn1WUHVZMY6jzsMmHA7fvA5z9S6yof7+jH
         GX/3ZvIlfUdbEN50DupIMoVonDk4nw7K6G7BRDJByu1qkqo3z3Ea3HFRrMEzTp7OL7lx
         JW0tqbSJSVAt8Uge0uo5AwIlh4Q13TYl1AnqRM2sqIkBZ6c2bC1G9Vz8B+Rmu39Q6j+i
         O4NZRo8mBoH3gSmoHxL+TVmAYqrQub7sl3Mg+QL/bUyQbA1rgndUgQ0T3zFL8lBwAFup
         emkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=IrjCyUJuZq4Od94LJOcZuFCLsTKYgUplEMzsSFFmjQA=;
        b=LIq2dJqJoShE3j0YLcNYgbX8iYAAtY1yHDw/VMnOchFyhfFoAZJFUEV7PMx+t//qJ8
         z4p18dmQ0t/5SoB69Kg2NXmgwaLJ385t0EeLDyuHgiv3sLosbrqYwNSc3nKLyef+AZYE
         hpWr2dmuxrVeYtXIHOHArpVx59KtE6jkt+3vJqvl6KfE1cL6JqbzeJMXoVxcl8nZJvcq
         LSbtrMXqSQwX56W9jGfM1LRAuJp+9txZbhsbPJilS6vm9cMSSLKiilGhOU1YRMUqBHoD
         nOhYJ/DdgWIo0QVJp2aPe+XelwkpAIt3vaushrXwj+/YbZFwMQxP9y/TKdxV/VToFQGZ
         yEaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aTMQhHUf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IrjCyUJuZq4Od94LJOcZuFCLsTKYgUplEMzsSFFmjQA=;
        b=XSnuqQ6RbtLAh6usKwnRra3oTaRxMR1x0pGNmVAC1Jydrscpc9cphnP8wcIy5d1yp3
         rrWZsZtFmK5SlDdlWayPjNZkGVZoVp/2Nb8wgrqQWEAWEhc0+UQX+jmAMXSNp8vAeKXR
         Wk9ZxeISU7mp4UZpc7k/LKdKrKio4igeRYIv5vpuG9K2DiwgDbPM2XH+HaibasoLScRQ
         9XuG35VNe7g5yFP3xGt8EjS01pNu3hTvEvnsDV+EaH/nL36fsOUzhH3Ub99ZrmmC3XR7
         dm8Fd+URlaLusGDVUyi/HBhHT5MKk1ZWTcMdG5x0gTT8tU/ogtvNa3qkbQdsGHE7kiHW
         em0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IrjCyUJuZq4Od94LJOcZuFCLsTKYgUplEMzsSFFmjQA=;
        b=mXqGgPdfdEYBbqnLSP2xRmpo6YUC2LW3EPrOGfulIi+HvlRSz/6as8WnlrKwe+73oZ
         m9IDUzJIuJIfLGmmBodEibhK/nq0J16A21lZeGhiZyBbhQzokl+fHGfmghnfdW0vwGFK
         LCefoxHQ2i8YNOI9ZyRT+NzkpZ8z4gygCDcmummko+SEyIrntPEaR+13BuXsjcAkEIOM
         QQrFdHdY7LJD0ucX6xiLcXRQKV3dm/2Aq/k7i+SDId36JZl7dJRUTKIYxxx6/+4bbMnI
         +wVRU3aOmPrPWeRknqF1iHbqcxI9iW0Is7/CE4F68gb+tTukoL/IeTZDaUUHDIC33q0/
         gCbw==
X-Gm-Message-State: AOAM533Af8y0Yjs9mt3aCaFAQLS8/6RPNUCe5hGTtqPEVTkkTEXpjRT4
	bjKc12WKs1aQHGqI+MHMI/o=
X-Google-Smtp-Source: ABdhPJwCGfHFTwkl9r7/UWxvnvZ/b6nRf4QgoUICuVBqBHRPnYUcaKdD8/901h/w0UXnljS5WPwbAA==
X-Received: by 2002:a17:90b:102:: with SMTP id p2mr11680631pjz.227.1594236260363;
        Wed, 08 Jul 2020 12:24:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls1290573pls.3.gmail; Wed, 08
 Jul 2020 12:24:19 -0700 (PDT)
X-Received: by 2002:a17:90a:8d12:: with SMTP id c18mr10630405pjo.222.1594236259889;
        Wed, 08 Jul 2020 12:24:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594236259; cv=none;
        d=google.com; s=arc-20160816;
        b=fpY31YNTlmrt/KM3QxFIISNyHLnvovlYIfdu/DyWbLPh92ugpbECYa5DIV3rCW1fVG
         y1MvnZm3dtYTBgTfMbGuiEcD0vXrfE4dzr3v2drnhDAfkMbxqKcvizCzhvjk8tdAAzkQ
         npv0MSLuF/6NwoR1FOANgfUG1tGnqk4hzTJWVWdyIBJksjJu6FOdfWkfqcYamT17GsU6
         5gBgGJoqm4+XUyh75QL2SirqKFmfetR2asWSiT3mCO1ujOrS816iB76Cyey8C2ABDesW
         4bNiSyVwff2PkPdiCCNRLA8chcl4cFTddn6+SdIGKTLMjL1DCTEZYW0ovTKO40AsbHHD
         S2jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=qGLbul+zhq6Vq4cGHOB+hrVbyn2oqy2krMm22LdJMNo=;
        b=HGLE7IDpMbLMRu9t7Kjg+ZozBWbMPQNx9mDY93aGpUA+/3/LHVshepfCoDoo4lnWjd
         oFcqv8PvXuXcu1lvC6sILU84Ln04DDCyPz/v7PzdvXAescLtbaRl9cgY8+y0BD6GYiA+
         idtkBIUiVffdoDTmWhCsZpGBS+EkQHthkoZ4r35UyRMBjfllwzAnbkq6Pw5az/FojRUy
         YRihFFeQqaVOyjC8D5LqqxqfCL65I6AbrO9H/g/EVIADinUsvh0iE7sAlGlhSqyndsiU
         8TCdjK840Z+32V6cIIM9ma7zCPmbKfTRyTEawzUE050JFW+dsEMZjGFQqLCN3bWlaH/w
         OwOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aTMQhHUf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id b8si56024pju.2.2020.07.08.12.24.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2020 12:24:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id l63so22111350pge.12
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jul 2020 12:24:19 -0700 (PDT)
X-Received: by 2002:a63:b546:: with SMTP id u6mr14782176pgo.381.1594236259345;
 Wed, 08 Jul 2020 12:24:19 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jul 2020 12:24:07 -0700
Message-ID: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com>
Subject: plumbers session on CI and LLVM
To: Kevin Hilman <khilman@baylibre.com>
Cc: kernelci@groups.io, Chen Rong <rong.a.chen@intel.com>, 
	Philip Li <philip.li@intel.com>, Dan Rue <dan.rue@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mathieu Acher <mathieu.acher@irisa.fr>, 
	Steven Rostedt <rostedt@goodmis.org>, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aTMQhHUf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

Hi Kevin and folks,
I'm trying to put together a Micro Conference for plumbers focused on
LLVM.  In particular, I'd like to have a session that focuses on
Continuous Integration (KernelCI, 0day bot, tuxbuild, kernel
configuration space, and LLVM buildbots).

I'm curious, are you all planning on attending the conference?

If so, would such a session be of interest to attend or speak at?

I saw the testing MC has already been approved and that Kevin and
Sasha are the leads.  I'm still working on the approval for our MC so
it may not happen ultimately, but I still would like to have such a
session regardless of which MC it's in.

Do folks who are planning to attend such a session have thoughts on
whether we can carve this out of the existing testing MC vs keep it in
the LLVM MC, or even if it is of value or not?  One thing I'm curious
is what happens for two concurrent MCs if leads need to attend both?
Maybe the conference committee can help us avoid such scheduling
contention?

Our compatibility matrix is a little complicated; Prof. Acher has some
eye opening statistics, and I'd like to cover why and what "it's
complicated" currently means for LLVM support for the benefit of CI
systems, and general info for attendees.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dum1y%3DAx2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r%3DWw%40mail.gmail.com.
