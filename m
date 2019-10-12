Return-Path: <clang-built-linux+bncBDTI55WH24IRBWPKQ3WQKGQEUTOGJAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A8AD4F3E
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 13:13:31 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id f8sf7499288plj.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 04:13:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570878809; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1oM0MQm0LDBmXgM7YKPLlcm1UsUeAmPjU8Z9+Kkma+2x3/3zt+c7pvAy0EQZLYb89
         lzA5ErbronmpXnqouxRtS7Vy44pI8Ry7VU4YAxQKC9Ua9aZqXAZHxTjY5Ki99RpOiIEb
         BtTWbD2RrelBDxweq/W2xvmU5w7gJWooMIw0/dyxlzfOLZFfmsh5p1iQnAWGXmf0TDIs
         FHmAUVF2hkFiAQah9Dgme40ZDCDZ6bxZocBf1tDGPmg+Cp9QQ4y+G6FvTWYZmpFe/GTK
         n5bHS27qMGJ9onFWoVTSGhBZ2GGjFFochFZw/e3dFPhv56J/KnIMUtwJ/7ie5bNfslQD
         LqPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=wdvqzqJLBG/LDHQwlava6ZIWWbhWJtw0b7RdL5BeBa4=;
        b=dTNWu9YQPgzMs3V+68Mq8psGpkezrpyoJ9wvv/FPriynojcAU6zQcRugZ+M1t2EmkD
         WxTHFfvtSPeRfnPXV759DVV0hTa6YUMIqrXcq3dWHb7V5fIaA6YdzdVo2cgidbbTPpCi
         RJVs0aG+wmzUe+p1pVX6rwWZcTOl3yQDhiBuwt+ayRDKXAuBavv6W2jjQsvLQilaJHen
         7Cn5IJYLOk7HaTRmIZF4HroxVxRw32RBgW1BpwcfLNJOZL7SRVITYeJr0OJwp8nqQpwJ
         8AK6YU9d1NXReADviDf0yJ0jmWGo4sXTP5oC8Loib+dNOxwIUOWjRGhOrVfEbY7niOso
         OP2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wUiDd5ik;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wdvqzqJLBG/LDHQwlava6ZIWWbhWJtw0b7RdL5BeBa4=;
        b=OK0tsZPE0LJ3h6Pc6eHsUsNNmMjQfQvgnPP3umAQNPJpg83W/3V5pjO63IRUls1Gfp
         svmh1CxEISs59O20cZqUhz7vWeA1czrrNsOA9j6u0UrnlKtj5Y72pb3OECWp1d0UZbiT
         RusBO6Yof8aW7kqC9Rcm3w4SdGcqXY80Vo/R+sE2osFj8fzZtxtcBKrug640VKkUdePX
         ohLMnI/cbDABNeIYZhw/J4kwwzsff7R7bqv74eoIAOQXlXT5hDoF2Ip8z/1zvTgB4YpH
         7CwZ7Sd+gOvKNHdC76r2/SABxR/7/nKllyr5CBSWO+aOXp9z+2Qd4nSdqJuHhEfx4fAP
         Stmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wdvqzqJLBG/LDHQwlava6ZIWWbhWJtw0b7RdL5BeBa4=;
        b=m/CFgkBIMfN1/t2/cQay5oRU3ZGabajmmPhNKHMAqqeJDAU+9YkuJyouKTSh1Lp3VI
         k/8bpCXo4n5OXC197sMDkHIBDHBp9AeKYd4D1EHjSb0lIp81i84v7JPHbZp8r8+8Svq/
         pwwQ3mGdPdrQC+3mHDT+O5zvC5CplBwWAW70XZN5mXyKMqiCnc3jUBIOjS4KgTLxLo7q
         GE1S3IUrtXH7BFz3ASH4cPCGZFA7VhSmYZfX+vCZl9Mwp9Db+ndGxLISb7IAwQh9gW7Q
         J7hNc94bgvuTPEzpJXwV7KCmejM/MNZ/Rqg+dJeBKvEpqbl6KCe135cKHOx2mF9CJ1IN
         vlcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjmJfppcg/q3vU+1EqzpU4pkuyGW6hSLBFADzJpkT14UQHAON9
	mUMrjD3kEJhp4x90pLWE1OU=
X-Google-Smtp-Source: APXvYqw9wxX6olbhwtkS/BELnkR9FkVbmdbAlYV8w97REa4hrZNWhWFRuXiWgB55HiaL7y4m0geNlw==
X-Received: by 2002:a17:90a:b285:: with SMTP id c5mr23019383pjr.123.1570878809164;
        Sat, 12 Oct 2019 04:13:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls2693098pfb.6.gmail; Sat, 12 Oct
 2019 04:13:28 -0700 (PDT)
X-Received: by 2002:a63:5406:: with SMTP id i6mr1308162pgb.1.1570878808644;
        Sat, 12 Oct 2019 04:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570878808; cv=none;
        d=google.com; s=arc-20160816;
        b=eQ5zV7UXzm+Qfs84BNqsvQ98Dwt5HgLXnyMZXmkOV1kTmkrjfPqLh1pNY6iUaGMIsX
         pmmBo3tFk1KG1/Wp2qySZHfdwyogeEzFr/hyg+KuiiR6qO4R5u1gAfnLHT9dV04mrEqL
         TayyVkVQ3cIkcn61zY90uE2kzNj4O8A+WINkSaoICyB3M5v8W3wr1TnxH8p19Bd0rcdK
         5BHg5XXYjHmkUcxOa7g2X/aQzJgDp4XD9UFkQ6koHcoDnfWxOZW+APryOBCQyG3swuyG
         lg0VEr551/aUN4yz9WyTXBJN5cSYiYv7lgN+I3QkhkJWJr14l5tjmV+HHdX4wJ2rOZpx
         OIKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=QIQWbVFMywEGzrVFv7ncajs828mx8ZAypZawE3JRNnA=;
        b=bYxqOUeWvyXAb/Mt5bSBG2IGpSMwuHSCrK5Xm+TshyYozk3wIPGumFBLNPAfRgry+5
         trJLKqjEgEvgHvuSdN1nRaHf4YrzBmNQjEjW99ZzlLyeIil0C8fw577f0NhZA3Pwq7Wi
         RVBZhKsD3yQQ4SwiE1Aukoos+2Gj2ajcJL7mXb/IYt43VbDWbIYK0xViZPHwfHEWh8X/
         NrzwcE/yPY/dkF9J3HrHT41omul7XABFl1hSscaILf5COMjFzeWzsFRyOrh7l1ktZmWz
         vExFFEeAo/Y32dZM4ji72gYA2VAlsqYEULrpjxoTGLie1AT86aarPw25qSnU1Jh1QCwJ
         YIfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wUiDd5ik;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id d5si1191333pls.5.2019.10.12.04.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Oct 2019 04:13:28 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id x9CBDFp8001520
	for <clang-built-linux@googlegroups.com>; Sat, 12 Oct 2019 20:13:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x9CBDFp8001520
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id v19so7923738vsv.3
        for <clang-built-linux@googlegroups.com>; Sat, 12 Oct 2019 04:13:15 -0700 (PDT)
X-Received: by 2002:a67:ff86:: with SMTP id v6mr11732128vsq.181.1570878794590;
 Sat, 12 Oct 2019 04:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck>
 <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <20191003163606.iqzcxvghaw7hdqb5@willie-the-truck> <35643c7e-94e9-e410-543b-a7de17b59a32@gmx.net>
In-Reply-To: <35643c7e-94e9-e410-543b-a7de17b59a32@gmx.net>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 12 Oct 2019 20:12:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNASgwA_Z-FeqrnB4Uyk3XShGVpgRHVL2FBbzJoU7ytJBxA@mail.gmail.com>
Message-ID: <CAK7LNASgwA_Z-FeqrnB4Uyk3XShGVpgRHVL2FBbzJoU7ytJBxA@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Will Deacon <will@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Andrew Morton <akpm@linux-foundation.org>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=wUiDd5ik;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Sat, Oct 12, 2019 at 7:21 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi,
>
> Am 03.10.19 um 18:36 schrieb Will Deacon:
> > On Wed, Oct 02, 2019 at 01:39:40PM -0700, Linus Torvalds wrote:
> >> On Wed, Oct 2, 2019 at 5:56 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >>>> Then use the C preprocessor to force the inlining.  I'm sorry it's not
> >>>> as pretty as static inline functions.
> >>> Which makes us lose the baby^H^H^H^Htype checking performed
> >>> on function parameters, requiring to add more ugly checks.
> >> I'm 100% agreed on this.
> >>
> >> If the inline change is being pushed by people who say "you should
> >> have used macros instead if you wanted inlining", then I will just
> >> revert that stupid commit that is causing problems.
> >>
> >> No, the preprocessor is not the answer.
> >>
> >> That said, code that relies on inlining for _correctness_ should use
> >> "__always_inline" and possibly even have a comment about why.
> >>
> >> But I am considering just undoing commit 9012d011660e ("compiler:
> >> allow all arches to enable CONFIG_OPTIMIZE_INLINING") entirely. The
> >> advantages are questionable, and when the advantages are balanced
> >> against actual regressions and the arguments are "use macros", that
> >> just shows how badly thought out this was.
> > It's clear that opinions are divided on this issue, but you can add
> > an enthusiastic:
> >
> > Acked-by: Will Deacon <will@kernel.org>
> >
> > if you go ahead with the revert. I'm all for allowing the compiler to
> > make its own inlining decisions, but not when the potential for
> > miscompilation isn't fully understood and the proposed alternatives turn
> > the source into an unreadable mess. Perhaps we can do something different
> > for 5.5 (arch opt-in? clang only? invert the logic? work to move functions
> > over to __always_inline /before/ flipping the CONFIG option? ...?)
>
> what's the status on this?
>
> In need to prepare my pull requests for 5.5 and all recent kernelci
> targets (including linux-next) with bcm2835_defconfig are still broken.
>
> Stefan


Russell King already applied the fix-up patch.

https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8908/1

So, (I hope) the breakage of bcm2835 will be solved in mainline soon.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASgwA_Z-FeqrnB4Uyk3XShGVpgRHVL2FBbzJoU7ytJBxA%40mail.gmail.com.
