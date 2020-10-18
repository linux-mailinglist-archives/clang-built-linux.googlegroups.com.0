Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB6EWWP6AKGQEVVNII2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AC429208E
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 01:10:49 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id j15sf6631681wrd.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 16:10:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603062649; cv=pass;
        d=google.com; s=arc-20160816;
        b=psa0XVXKH1OSgPwROTJPcEfWELhnwODBxW3yzN3YdUbd52LN4wAFgMbC5kSD0nwSL+
         sQQ2Y+UhVY9T3x9wXVUp0qbfMMCWNZSUS1wbr4qJ4xWFtXv3hdwW5yNr0HKvlC+A5aVb
         CiO8dPyoY4qJxF01Yt3FRBsMfFRptP+jKSCd/syhFGWXzooWckBjFx5omtPpMucie2eW
         aQkbe+XOi3PHrQNkqJnRjMVtAdpMLIHY4Gh9NokqayPgDhu+LgoU5k/YrsbnYoplOzxX
         Rn6qD7RGdXvxUclsu5cjprdmhz5c8Zx8fOKLaevPI3VG4U56+8UQ5E6DguRM+hCaVbpy
         WN3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cyezerTI4ZQpf+ME71tQHKXUG76pV9RyVrsVF/PuXQ4=;
        b=gTFa+is7Ghj4rNfZkjsWuiVrpll/AlnMQ/yRNlYwQ5Xdm7MzSquu2lEx2Kd79iIm7g
         5KYr2BFIASjskWcyvnLbZZWa+OtLu5PS9kJk4JRRdUmqdz+GMIGTnVO+tUPUg2bsD9U2
         AQZcyUE1yzpJIWa59Xn3CLUwjmQU5v6ZHntjY6LiFDxG9s/z2ZzbiGSx1FxOuWyrK3ar
         dzNwwcZx2atnIFO0YlJM3MSiKC+JCDl1dMv8iEqExSKFFM2RD2zgCADFjFytAMIub63H
         oYevPxGz0QSJ0/bqonEtm5pycr1KfDyg+tgsm5pNnDj/FppgHO256uybSBD2v4JIt54B
         TMdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.9 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyezerTI4ZQpf+ME71tQHKXUG76pV9RyVrsVF/PuXQ4=;
        b=RXjAl2d5/e2EtyFiXwec6sPOreYfe0DZa9Jiz53YGzZW5ZqJnMPIPVvoRsZDWUmZD3
         x5wZo2lkcuXmTJKShbbwqb9KYLdx1gWiFYFp1Q0zlDxFGDr9VeuZXYJfC1/+OMjQu7R3
         KnSBftSmc+8ipeHMApGGEaUG169eGzBceAkNUVT/8KtZ1vqEQA6gACDffD55iFyb/rCT
         CvSLxJImMCnkLcpHiUOlWhPACOCbJn69VUzDv2Uw9iRR8XQPokhfPAqsec9ZX+gM6nc0
         AwvqHZpDm0pHrt2RTxcVNz2deQuq8P1tPeizpRw2CdSpFk4oV3KnHOVmue9gioRGqRmU
         SnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyezerTI4ZQpf+ME71tQHKXUG76pV9RyVrsVF/PuXQ4=;
        b=XToKCl3ct3/DT/C1vl75psT543rilZLqP+HDzTwik5smAQw24Uuca/XuGH+nTyPxgC
         rgxZjMD8guEtKdDDWervkwdgvFO+/Er7Chqshgt05QW3oModTcmQV7AVgu9JBcbuzZCe
         crxTJYQmzoEtqJm7WQMx4MNZXSwFbTCcWlOnsH7Mnek6GeIsCRbNNcqkcR1pz8z/htzQ
         uVNV25uwdrfgE/OyQJ5zB9Hgbq2ZJDHj1RXItSfmk3JYCdXP7FQARalnz5NiCLmTF12t
         BAqaDpd+ouRVhux/xjKFJMpLe8RtAZ8nZuE50Tb2wfITa5NlUbaPRRgF89hjrQ43VPrG
         2+YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZMT4JDxedRLS7wqBnkt/5+fOJszHMiiHGR7Ws9d7skJ2qXIKq
	fxnQoULFIo0sYupIh7Ir3C0=
X-Google-Smtp-Source: ABdhPJzWL195oYjwk5ZjOpBqvyrbdAR2c7B1PuP16uCO/qLkvU6XSUjSvUfXq83n4bbiGFT39FZfuw==
X-Received: by 2002:a05:600c:2217:: with SMTP id z23mr15319237wml.133.1603062648879;
        Sun, 18 Oct 2020 16:10:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2506:: with SMTP id l6ls3764280wml.3.canary-gmail; Sun,
 18 Oct 2020 16:10:48 -0700 (PDT)
X-Received: by 2002:a7b:cf04:: with SMTP id l4mr15717308wmg.137.1603062648038;
        Sun, 18 Oct 2020 16:10:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603062648; cv=none;
        d=google.com; s=arc-20160816;
        b=LUaih67aPa2t+gKaadxH1o2vTaTGQ8tGw+5tF0w3igaAYjBzJupsgS1C1LvqpW5Ces
         VRboj3h4CTar/lD876g2vtvIueSZZGkZtc2ADdasBrGsrFtlN8M7+gRW6Qjx2xdc6kJz
         2dvXGoi3EVAnEoklUKUQLlXu93P7KJ6VTkaOu2wkS+YfQ1JCOWR60f2NG0dWR6PLNTcc
         7LcUlTKG+YdE6GAlAaMnbjs24/HLp+WU3iYVtoaLkR+DuMBXfn0g1HdEh5C+B7VZCib+
         tBY5axVCC1DiMFwS4DNuFSHAeBjkACf7MUbeUodnLBbP1nomxE+VbGXv9i3dDAazmeOf
         Uzqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=yWmboN6Wl/bcFM/spwcW7Vi5xgD8mEvWy6Nzpx1URZw=;
        b=AJcTr7H6E22ShieoLHkvlUCA8hhXAhCN8jzAMzdT3dQ1V/3miXQB6nOzztSukdzumM
         HCxoji/wCCzsjEsQIai3xWEAranO0+N2W+fWWBZn5nA3E3anJjs+DxzfNkW0XGQr4x1U
         6fxFWZf4PNHDSF7k8t2VQzdgOWl7pr3zTmScykg749xCYBapclEvbxUaJoWXtmF0KXNF
         ORIYqH8Uk+snJblumObMNUQFXW9XKiif8MUmC5HbWwdyaeYd2xOvIe/HA7oOde1iECvq
         YiLCLG54rzdoTwcJTk8zwCCa28OwRMMuB6qnIYBGNP0vkJqm3Gia+5o74vnnP3cwedBg
         V5yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.9 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout-xforward.kundenserver.de (mout-xforward.kundenserver.de. [82.165.159.9])
        by gmr-mx.google.com with ESMTPS id v12si255372wmh.0.2020.10.18.16.10.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 16:10:47 -0700 (PDT)
Received-SPF: neutral (google.com: 82.165.159.9 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=82.165.159.9;
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N3Gok-1kLrZl1pwI-010NAe for <clang-built-linux@googlegroups.com>; Mon, 19
 Oct 2020 01:10:47 +0200
Received: by mail-qk1-f181.google.com with SMTP id f21so6520330qko.5
        for <clang-built-linux@googlegroups.com>; Sun, 18 Oct 2020 16:10:47 -0700 (PDT)
X-Received: by 2002:a05:620a:74f:: with SMTP id i15mr14388713qki.352.1603062646312;
 Sun, 18 Oct 2020 16:10:46 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch> <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
 <20201005210808.GE56634@lunn.ch> <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
 <20201016141237.GD456889@lunn.ch> <CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR=yKGWw@mail.gmail.com>
In-Reply-To: <CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR=yKGWw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 19 Oct 2020 01:10:29 +0200
X-Gmail-Original-Message-ID: <CAK8P3a32ohXeMV5Yi9rOO9m_ANA4SsQDyYLJBaaEGMsaeGdzyw@mail.gmail.com>
Message-ID: <CAK8P3a32ohXeMV5Yi9rOO9m_ANA4SsQDyYLJBaaEGMsaeGdzyw@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:kWgJLrJWofdgChQp5ZD4m4cLrvUZ5KqtbGWjh6qIJcj2s1x5GKm
 ej3xlEgTlefpqVqEmnO1AvSvmzXM2Z8sFvKqLovdJoWSV/P9QybqKchMBYqblB7fzb/kc/D
 dJUE/mMjGQGTiFjq/tGo0r3/hiWeMy41NyQQ+T81ecDwwnsm4uMILIk0a1Q5l9xuEZ/nUor
 6aL8OCbvCVHJc3K1hHKTQ==
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:O4yVaqBIWaA=:MEy/NDS9RAHO4JSSUO9x7kuS
 MMm3kRTxGQrYprpkx3cqXTR7MrI44HGBGzMFvYY/9FhLHTnpDbGuaXVL2FVrFzgib1G3eOFHG
 aSzOWG4I9dWOguKavAg90cjeyIEttXsDVPgRC3d0gBYcBbAK0NZwTj7dmjqXTx/8i0t9xxCqY
 OEoZOsOTB3TvezmtcVSv0f1iejD0T0/8yxpE19MHrqGadVZRsGLDFos567P6e4TXkjPbZIgzL
 MuvWk8uoFAZpaJhl9L8Odw54SOy8dotaQtm22n4UT1NDr9Nulaugh90eRqTU11YG3M1aLH5Pd
 WLaWiPbg12qixomtOMRy3YjdcjQamb56z2q2VxF36bLd4tT85W0znsg0/08VhvxwEGMdQmbTv
 leJNNLLuD36EjaEFhGZqkp6tePxbtNL3aiecMdRuoGn3A8z9pGKIpvcAHciu0ho1O/UQhJ12u
 dblmA2gn05Co1uI0zgtxZEk9VK0r6d/w2GcJp79n07RKR28AvkpwOzoQMk0nIuXodj2nW5TQ=
 =
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 82.165.159.9 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Sat, Oct 17, 2020 at 2:48 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Fri, Oct 16, 2020 at 4:12 PM Andrew Lunn <andrew@lunn.ch> wrote:

> - Turn on -Wold-style-definition -Wmissing-include-dirs -Wstringop-truncation
>   globally, since they don't seem to cause any output any more.
>
> - Work on fixing all -Wextra warnings (except -Woverride-init
>  -Wunused-parameter -Wmissing-field-initializers -Wtype-limits)
>  across the tree, then enable -Wextra unconditionally. I see this
>  being relevant to only 25 files in the allmodconfig build, which is
>  much less than I expected for -Wextra. There are a couple more
>  for clang as well, but not that many either.

I've done these now, uploaded a branch to

git://git.kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git Wextra

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a32ohXeMV5Yi9rOO9m_ANA4SsQDyYLJBaaEGMsaeGdzyw%40mail.gmail.com.
