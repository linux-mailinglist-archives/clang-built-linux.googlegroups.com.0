Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBFOT3DWAKGQEOH23UOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C72CA809
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:02:14 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id t11sf1377157wro.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:02:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570122133; cv=pass;
        d=google.com; s=arc-20160816;
        b=w6Vchjzvd+VegBIVBMUTOpHRVyrKNrCYFArBxOMPeUuWbB7LQuH6XYshmtcJG4xU5m
         WjbJZkTZANXux4ZLvHQjVETJY5mhjPhP7ltxKukIPlgCfQLFVxTD0TCYcERcMgkPLjaj
         2W/4eivRUOUgiy74OreAA95uVAbabhKGcDokLkZHzKlf/7WWdHMr8JWiS7dL765YCcyN
         Ugs70GSCY6I+hDc0JrVmuET8VAClHArbNOEIc1/eaSWcPp1sLRtfknIhB5fN9RSlqYq9
         1+lCVdRurfI4R/PdtAGXos6LvRtplXx87KxbZPpjVZyPTgEqev3YVfP1WJyW8/4G64Z4
         mlmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VA7sttbOYBccGbRCkn1kDQg4fMbrnRwFo8fz4cfemec=;
        b=TY/rIlahIjpUeKjG3NGJYqujgC5yr0IPDZQe6vGfOgejuYZcyG1o55Px5+Saai4s4E
         VzCX21KZgnHxOBSjbl3uWnKIbpxRi11rPO/wxlx4mnqbMmEI9j//RCmEYawx4Q4T6+gy
         G3VRYZIHvWdr3f81+tIbTeVIjG5X3wEjrkvpYRsYqekEbvQn2Q8oXM2Mgv12bhtThIPQ
         55sVFTBGbh6sISxKUY07Se9vbkvab+2VotdGH5cXQY7XLjFQTjfumiCJyAv/jDZ69zyG
         s00qMu8gKQeEQV6LPfXXJ3lCaxCFj/OgTzXKH3yrw3gNK7MAvoy9C+c7CSO++qEgOn1o
         wn3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=JKo8Sv2i;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VA7sttbOYBccGbRCkn1kDQg4fMbrnRwFo8fz4cfemec=;
        b=HfiwM9jWcubZ0nWvnOoDpJ2SodDu5b4DFAnbR9iBr0GtB+aYu620VjNzBM/AD8cXyd
         AnpzMWDTZe9ho+9POpM+Dn6Sz12Jf7j4pBX9fy0OekezQEQc944SgzTKBAU/Pukq5MKF
         MOjmEICMthksuADrs4e+7J8M4nMhs++Czmz1FQBd2lv842AF6Psoe+HIJhJcGS81nOTz
         v4r7kc8nedfO3yLp61HVepKq3u3XeDxI79LcCg8K2qg0Urj6BNcyz0ay/mIGdVR/ycjP
         pjHD6XPuagBivdTWHyXOZeqtB2qelU85RhciXD4qrjWVQRJ64LBy9z6ta9KA+Aaiivz8
         jmBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VA7sttbOYBccGbRCkn1kDQg4fMbrnRwFo8fz4cfemec=;
        b=PQFVxC7bp/z9e16E7gCLyTsweLjiXbVo1uN+QHzZwtDd8bqZfFMwQ7oisCHtEjAWtR
         eDEKT5gsmQ7yAZ5soMUwCrPBFrLqwlL1kwV48Z9rzaqv/EhMapEf5EoxbMFkBfOX3IKI
         fOIez5gJMZyilBZDKm0C2v71mFNInMIBktmopq2lhpGsKyIjaXiXQn1DJQtdFiXIot36
         lDIMoecTCjIu8ZZj3zRqbaB99oaZeGrEiFrRqtzRnD2BW0+kp/WlA83dUDbK5COdUa2c
         B7+rZxljOxFD3ZzCcfjjgDEAAKGwgGaDQ1/arjIFQMUjWZlRsGQWPnCAQQQ8U7/v8MYV
         mrDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXe0xqrCHWfM/L6qq4vzoq6hwmWGR3r5ftuhjMxX1z8RHkJAicB
	L2vjiNGbzoi6P1LnaqXK4Bc=
X-Google-Smtp-Source: APXvYqwIxskKu6ryIwKx4fCAOS/fDP8Y3ZNxl7zG2ME5MM5w7It7aGiIskeeDZ2/CpJEn4oVxA8giA==
X-Received: by 2002:a7b:c0d4:: with SMTP id s20mr7980053wmh.101.1570122133623;
        Thu, 03 Oct 2019 10:02:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ce16:: with SMTP id m22ls199724wmc.5.canary-gmail; Thu,
 03 Oct 2019 10:02:12 -0700 (PDT)
X-Received: by 2002:a1c:3bd6:: with SMTP id i205mr7417079wma.135.1570122132849;
        Thu, 03 Oct 2019 10:02:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570122132; cv=none;
        d=google.com; s=arc-20160816;
        b=UeQywyqcOgeAPTRvIIJ0iNSx2UpVOCgq0zrbDGbMXVL8GKz+uG8yGJKcihAG/dlaQA
         CGOdrmcxBkWqA6w17/g0I2KOSyQvXV3At58zMVZN+9IhhGqL/3yJyk5Rt/M6cJtgFptP
         lhcMfZ1k1r0bDbmpkZEKS1mLu5XoyHx/tofVRoq2FSttRhgJi9iYnV37/uZDBsfDILti
         73jvih+RakUVblZj6yiPp/XdtzUDUaKBhYhdp0VJ9vDxKa06+C7UOKOG9kF7Oze01g8U
         uo/eB0ofTKfQvgpn229I0+acU9AkNC/w/NAOuEYwUOyhQdLkHC7bZZ8RUReUWeYawmKJ
         k41Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P5wXaF5ZltCgXSM34TOegFWPjTBpFPmOgUeBNVihY4w=;
        b=PlgTaigLAEhvAx475BXNSqlVngtEFv/18rIc1kYLa/Rn3PEUVCTPP5Mh2dAINYJzfO
         /3dD1m1ySHmXrka8D1+peB+TWmbheNepwBMp8maX0OyoFJk0HtE7JO5TFKAguyHrOMCV
         STrYmSuThYjdhbvtaH53qcOX/jL/xmDrWt+WO53qJSuajK7gBoXEy/K/md7Y6V/eVTdl
         k+6avZZ7n/XbjvgpOFEdVlVnwT3qiRHF1bcXPE+uxkIDSV/3G5UH+I0fyIeLPsQeuUmh
         v4npg0tLwL81SerD86M835pWumeh/Q8Ag/BaotISuCHCuGbcxVJnJbIWoQFg188PLo2u
         qenA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=JKo8Sv2i;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id n16si286667wrs.4.2019.10.03.10.02.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id d17so2404147lfa.7
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:02:12 -0700 (PDT)
X-Received: by 2002:ac2:593c:: with SMTP id v28mr6152420lfi.11.1570122131717;
        Thu, 03 Oct 2019 10:02:11 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id e17sm640190ljj.104.2019.10.03.10.02.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:02:10 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id d17so2404038lfa.7
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:02:10 -0700 (PDT)
X-Received: by 2002:a19:2489:: with SMTP id k131mr6216154lfk.52.1570122129934;
 Thu, 03 Oct 2019 10:02:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com> <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com>
In-Reply-To: <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 3 Oct 2019 10:01:52 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
Message-ID: <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=JKo8Sv2i;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Wed, Oct 2, 2019 at 7:11 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Macrofying the 'inline' is a horrid mistake that makes incorrect code work.
> It would eternally prevent people from writing portable, correct code.
> Please do not encourage to hide problems.

Honestly, if the alternative to hiding problems is "use a macro", then
I'd rather hide the problems and just make "inline" means "inline".

If "inline" means "it's just a hint, use macros", then inline is useless.

If "inline" means "using this means that there are known compiler
bugs, but we don't know where they trigger", then inline is _worse_
than useless.

I do not see the big advantage of letting the compiler say "yeah, I'm
not going to do that, Dave".

And I see a *huge* disadvantage when people are ignoring compiler
bugs, and are saying "use a macro". Seriously.

Right now we see the obvious compiler bugs that cause build breakages.
How many non-obvious compiler bugs do we have? And how sure are you
that our code is "correct" after fixing a couple of obvious cases?

As to "portable", nobody cares. We're a kernel. We aren't portable,
and never were.

If this is purely about the fact that x86 is different from other
architectures, then let's remove the "compiler can do stupid things"
option on x86 too. It was never clear that it was a huge advantage.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0%2BYLFORT-ZA%40mail.gmail.com.
