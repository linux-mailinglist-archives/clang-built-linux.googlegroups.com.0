Return-Path: <clang-built-linux+bncBCT6537ZTEKRB6437P7AKGQEO5ILPCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4262DF380
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 05:07:24 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id v5sf4008966wrr.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 20:07:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608437244; cv=pass;
        d=google.com; s=arc-20160816;
        b=AtvUDSjMWjlEF5Te9NY+uaa0E7pemA27R4JoPw82LgiBIwQpcZJHRcm6yvLjf2xLvW
         /cqMh6rOdSvL9c4xd0scao1ZOVtKVEWCA0bnqlhI0KR2/QsgWkOFh1Qi+hndQ/hlYH2x
         6REG/6talHFFo0gN3svkZnBIxOwv0k8A9uv1BmULvmYVirprth9BH5xqQBanKBeekwC4
         N8TATVLQO4BxCkM4gQJjeaFsmfo5KQVpXf/B6IPR4YzWAlTD1RgukRqJduYR3SA6ORjm
         bzOMZTJO93wGvJgxJDU/AO/SJ9TCCjAYxC9bY2xi6EpfhW8pCEMZvE5lgG1KTJVMtNn2
         Bfcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LaXhrnqVsPFfVedwS4zLqmXc+pPMicPVrTmKRPvWP+k=;
        b=qbjt2JDPpwjxJ4w4JIlKSY72/w+U85wzT1FuIJbSwFeZKSjTreZgZym+BED0sNbXZT
         +DZEl7P5omzw7oD6eWH7i1srXlVPm0CSCqQnCNTXSF3+bLL//ipJVhKhj6KJm6rMSOOO
         A84G6B0lefrFwip3XPkUoEo4ahFzTH+c9ji7J4zQ8zY4lmv/6Z3rXmGGzJUkSSUXC9L1
         yNXMgu82GZo06o6NpI9rE/N5pundylRmsBGu8TU6QjdXBdnFN43TZCWv9yfG7xb4tnsE
         rj1A58W05LctlgK1JSCxT6/fWNEEVOq9Yq0wXL1kzippLAp+x2jIc048O1Wylbm8eh8t
         lL3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tVIzn00A;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LaXhrnqVsPFfVedwS4zLqmXc+pPMicPVrTmKRPvWP+k=;
        b=iNMBpT2hcD7mFcw9W/3B3qj4B4ol26kvuBMoITMb/7CBsT3jG0k6Qa1rwK3yoyrsDD
         TflaI+1O3J2V+w/ZpiAiWnYusbGg8ZLJ1VCBq5m9BT0z697TkT4AsjC1kgqnx7BcvX8m
         RMKg3sCv2PpLcpB5DUMtTzvmHD0DMJCRhSV/Gmlaf/cjbe7fdRYrVI1X6cFqQJqnjW+4
         U7gCjwcUrJai8x86E0zWk1M8xNzgrbxWsjpqxavbaqSTz5N7KEw2aNYkuvXfLR+gQQPR
         g6buAHNK9ZAxxotgrO4O4QEsQ9bbTdRW85Hl0OQEP8VKLbMCsC5FmM1MLAoxkUKOhd4B
         EfqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LaXhrnqVsPFfVedwS4zLqmXc+pPMicPVrTmKRPvWP+k=;
        b=S3sHZk6665+FrTtcCrvpbJanZXqyQa15khHuoW2T8+nNH4JoRV012bossuTo3r0crS
         8YWx75wGGm4wRrZ7urFvLKWOFGEOtYSCRco/5LGPuFa5xOYl0+P/iw3BYeKSj0xbxAr6
         vpy3eGkF10jFzlXH3DIOY/TlrmdCMhdzCzFwlNUb5enICOySlNsIjA9MPhWZMRIw06ef
         TFxyzgh41D1VnUrSmPp/i/gm28T8EeJitzQCw9z6/rxTazrqYRt1l2Osaqfp/UzNpNUd
         KKsr+uQxyofXjIgBv+mD25K8gEkzMdaJMol//26/QbmWideWKFF8BwasDrfqvNL+jHwT
         /vDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DK00Z58mgKWkmdr9wS7icC8nA57eFN+Co825ShBA6tNV0VPNv
	jHmq4fj7aDSgO1N67L+yEKo=
X-Google-Smtp-Source: ABdhPJwk0xGz5RXl4GpNMr2tCk8+cEGIJ8yomSofdCF325qOlPflz7jF4rCacClOUVO+nK8UlXxh0w==
X-Received: by 2002:a5d:6289:: with SMTP id k9mr12229024wru.200.1608437243978;
        Sat, 19 Dec 2020 20:07:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls4574585wrn.2.gmail; Sat, 19 Dec
 2020 20:07:23 -0800 (PST)
X-Received: by 2002:adf:db51:: with SMTP id f17mr11936956wrj.83.1608437243202;
        Sat, 19 Dec 2020 20:07:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608437243; cv=none;
        d=google.com; s=arc-20160816;
        b=WGoyUTrf0vEUD496TDj060wrHyRJAFnA+gDEz38ORzrelFoKobx2dVVuIkt5Y4narR
         kfg/nQl6nszOSZmOrvPtNXOA5Yis6ReT914qcrwn1J5An6b6B4R4ScpS0xMv7pr1PxSf
         n/QVGvYX7DfcHaHEdbkeEOORs1lQOLoo7DyJ5o7MmAtVrN5myv5SUs6MKZiW8dyX2I7G
         sayT+UZjacZih6F0Pp3H+ozfusDf7uPTZMQJg2CLv9UiYNigGVhblBm/cn74+ygJE2wX
         BBYDUSxqKtoBCr4v5e/M1LSIDFmJWXjx1OFaI0g2q9u+I5VPjnNUMnUu5mLvePKs4Ioe
         y5Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wOf8+A262GmOiEINk0rmRSARiAG9AAz8GlRftMSrMUg=;
        b=Tm6x1fDlS/XSmuHU5sy0nGcq0aRJMP5RUBB1ly2JnBp7C9OWChkTgPmdjTIckUC9NX
         e1R68Q+tYWPIglb8lv3UnjIyok/5MO+rCWFjsmUK6b/BtEKA17UCL/qBs1Rv+A70HRjB
         Jpq7zCQqltF/0OYfwoPtZhDEGBKOh5eklpWd2k6+owdlTkARCIGLzeMAZMr8UUkJ9HTC
         pm5RDr12i5ueZy8aMG4HH4g4+ufYYDdP7Ko9p0p+f7JgiSjK+LGXuz1Razyj/s0n68T7
         vCCitet2YcwnRh/KmKVGl4dtcYkc9RlDfKGi5NCHSUDi1iNl748d2mqsvVAixAkQch4W
         WrTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tVIzn00A;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id v15si629261wrg.5.2020.12.19.20.07.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Dec 2020 20:07:23 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id h16so6398363edt.7
        for <clang-built-linux@googlegroups.com>; Sat, 19 Dec 2020 20:07:23 -0800 (PST)
X-Received: by 2002:aa7:cdc3:: with SMTP id h3mr10998852edw.52.1608437242889;
 Sat, 19 Dec 2020 20:07:22 -0800 (PST)
MIME-Version: 1.0
References: <20201211102437.3929348-1-anders.roxell@linaro.org> <20201214152447.GC9149@alpha.franken.de>
In-Reply-To: <20201214152447.GC9149@alpha.franken.de>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Sun, 20 Dec 2020 09:37:11 +0530
Message-ID: <CA+G9fYuyq8da6oF-6KaVHmA2TpT7fOG5F4ZDbK=MpzYMg_ufAw@mail.gmail.com>
Subject: Re: [PATCH v2] mips: lib: uncached: fix non-standard usage of
 variable 'sp'
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Anders Roxell <anders.roxell@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-mips@vger.kernel.org, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tVIzn00A;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 14 Dec 2020 at 21:05, Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:
>
> On Fri, Dec 11, 2020 at 11:24:37AM +0100, Anders Roxell wrote:
> > When building mips tinyconfig with clang the following warning show up:
> >
> > arch/mips/lib/uncached.c:45:6: warning: variable 'sp' is uninitialized when used here [-Wuninitialized]
> >         if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
> >             ^~
> > arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
> >         register long sp __asm__("$sp");
> >                         ^
> >                          = 0
> > 1 warning generated.

<trimp>

> > [1] https://docs.w3cub.com/gcc~10/local-register-variables
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> > ---
> >  arch/mips/lib/uncached.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
>
> applied to mips-next.

We have noticed these build failures on stable tree also.
May I request you to initiate the process to get into the stable tree
and for the following branches.
 - linux-5.10.y
 - linux-5.9.y
 - linux-5.4.y
 - linux-4.19.y

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuyq8da6oF-6KaVHmA2TpT7fOG5F4ZDbK%3DMpzYMg_ufAw%40mail.gmail.com.
