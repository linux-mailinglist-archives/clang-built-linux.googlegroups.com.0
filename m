Return-Path: <clang-built-linux+bncBDTI55WH24IRBNNR2XWAKGQEEQHCMWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AC6C96A0
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 04:11:02 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id k13sf2745145ioc.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 19:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570068661; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZ1ZUUj4PY94fcY+DERJ2ZQhTW6nbS+ZltKqKMKLIq6awoplPYQ4U1w8xblVZ/3MMW
         Gq5UVQh7cXkXkpcWxxgv6KcJeIjmNIb/0V4FPS1Qc0FRrR246MtsiXopkaWjE/BDj4nZ
         MuLMGvt9d9VUTIyfcCnPEtw6cqVpNqDNgsoU4x5JRjtsXTjTkO07XVQeAD0909CkIo7m
         1Z6GYVbqxR8Tnrjd62Ci5E5u3qg91cezkkOJaTvkeezoiZpHywTn/QT4aYCrEMCDjpLA
         3RRmWWhP3IFtSkcwp8/p7p4LGoeHQrUOsvXXKqPlSaBEUIDVQaGn2WWg+juSnVcHWD3R
         EedQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Q0HJJeyCJSeqiOJPEnYiPv4L3icVrzNWyOMWU/jOhRc=;
        b=aSNNf5QiRAeUSHC59Vw7arEJtilyfKZnl161QoBnm1zkdyTL42H+D1R3G2DoOyA8pS
         yCxY9QHCb43Q/mgRb/GCpXOOSkUVyqj/WT4f9Z4SSrodQzPmkiKRzku69cVib1YU/o4Y
         twtwgS6YSV88eKDwaly+SvJW/aRDJkGksRmvilAmUPe+JW9I40nvxH3SZY9l6ozuRxwv
         tTtS974huyCjmJvVFyxMI3Ah7efio9TXOb8eLjcPeQ6ai9ayI5m28WJ3wHKAoJmpftGR
         J7y6z2KSe7QFplFJCeRzELEbNlgbER5GUo8tE5TuRqJt5qWkRUky3KlAhcVdYZpP/UHh
         +qiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=U9Oi20ce;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q0HJJeyCJSeqiOJPEnYiPv4L3icVrzNWyOMWU/jOhRc=;
        b=aSBHy32ANJoxbx8weKwvV2W3xLzJXFuVtaPAl/JhcegCxSdavsYaF2WN01Oe9Y7iHl
         kIxjik+L3/hRXgOq+aPV5ZFdNi2Xs7+lXdftXsaSCAi5HKGieQF2yV0aWyNMicaNWhjR
         /jTUvpeRzJnk65/lBzGPBFgNbSKmVsLP+XZao1H23p8E8hNRzZnzn4UtNzdMJn08vsMm
         hsV6NALoxobWE4Tu1drwCVhOOSYmFBAODCFi5wYUMy+FR6qzOttBdk3r6L7ZwYD9BdXe
         QTbhjnz7QYfuHhilUHJh1w4S7lyx7sI61AG7m03UffKCO9iVu0Nv/+vmOCMrn/KR/M80
         njmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q0HJJeyCJSeqiOJPEnYiPv4L3icVrzNWyOMWU/jOhRc=;
        b=L2akQCLEhaQaoDJlnsKIPSjOUiPRdPRrE2LNfLbpnuE5LKefiFMQHkiGeVrioQdGQ+
         Ns6gMIQSUX7By7EL8Slq45IXmP6ovO2x8oUohlMADxZSRhY3TBLhYSp3K2ZGfPMbH0Ob
         07e+8xej3lE0CezAdluvbPygP5LAVuIoouzVDlPoukezJMlwvD/XMY5+rkQHMCckYunx
         WlEUpjZwqbtqqxVdz8RYmpWf0irD8pGDCDJFXNazNLuPKv9lN3MlysAQVDW1uCbPvoge
         0Xz/07ySVpn15jmZjOz3id66foyburu2edLG9t9TuBPBEqugA+TZ6rS11An+lwlKzSXu
         WPog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWywTldDalFbOeEFLdYgNom2OmvIri/h1nmJt3cvpFcj4TsZNF3
	+qJ/zdDf4YmjdNgWbJFFymE=
X-Google-Smtp-Source: APXvYqzpUG/2W/AQlUnlaAuC6rU09ZGfdhvHSznHIn5X8jH980OeDNi7kN0lULp2n9DeA5l0QcpiLw==
X-Received: by 2002:a5e:d70d:: with SMTP id v13mr6414744iom.174.1570068661634;
        Wed, 02 Oct 2019 19:11:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:c7:: with SMTP id w7ls471391jao.14.gmail; Wed, 02
 Oct 2019 19:11:01 -0700 (PDT)
X-Received: by 2002:a02:cd06:: with SMTP id g6mr7008779jaq.89.1570068661213;
        Wed, 02 Oct 2019 19:11:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570068661; cv=none;
        d=google.com; s=arc-20160816;
        b=yu1sj1AnUGgMOjKppeeB9kjrx+jRf90QQ5KcSyvm/JwoLSD89b2hwxZ2uTmYXgFxK7
         Mxf21SS5IA7nYUXh9d5DcHBfYs9+lNOb2QA7CK35hmGvfMeP/huYYIqrYVwLt0wTtpUj
         yd6PKjK279fWGMbNB5D4S1aV8pu2OUePed9Z7KJ3K4SUaGylmqG7fHR+YEnm0Kx/AMYK
         qQLcEtgp0Ptq5LumqHZy9twJrbTM7Rz+YiXG4aJYiVa6RqME4j5fesvNDCYEnzeRuuZz
         IPX3X8BgRW21Xthmh7V/RdsdVWqkauMPfF8kxlGffiq101z4sEcfZgMDmWFxs1Ik+T4f
         4CGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=nkhw/a1oO0nPQOF4FHctSBWATyaUekhzHUNLh8TfmdI=;
        b=qc99PNuJnwA1gF3L2FFzJo7QsiwPfvhoMeXYpZ/iM3r9SR1cNdIlV2/uSam0+Pvhn1
         Xu2CWJ8Z8RdE5ADWoNIPeg8qS1m4enowSxmmoy0loeGAbSfdGmJNMsaX9homSDYRfcc+
         v45olh+UbIgbhofrGKYRRbfyI3VsQRXRXsiS7x4QSDTl2davSysVIx2KgMozC2C/ouVy
         12X/Lrahcj5mOqONUEz1r7+ejjFcRxRg4FW1l0EDpyv6aBdUFBUGC8h5f8hqfzqu9hE3
         rRCEDPMup5Z+1hoQ/OtaWQbvioodSqMFikyX+RmV+xS5HjPDGab9nVLV1CvG/Iub1iXg
         du5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=U9Oi20ce;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id i8si71872ilq.4.2019.10.02.19.11.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 19:11:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x932Al2k026935
	for <clang-built-linux@googlegroups.com>; Thu, 3 Oct 2019 11:10:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x932Al2k026935
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id w195so597776vsw.11
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 19:10:48 -0700 (PDT)
X-Received: by 2002:a67:1e87:: with SMTP id e129mr3884016vse.179.1570068647121;
 Wed, 02 Oct 2019 19:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com> <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 3 Oct 2019 11:10:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com>
Message-ID: <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        Will Deacon <will@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Andrew Morton <akpm@linux-foundation.org>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>,
        Arnd Bergmann <arnd@arndb.de>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=U9Oi20ce;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Thu, Oct 3, 2019 at 5:46 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Wed, Oct 2, 2019 at 5:56 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >
> > >
> > > Then use the C preprocessor to force the inlining.  I'm sorry it's not
> > > as pretty as static inline functions.
> >
> > Which makes us lose the baby^H^H^H^Htype checking performed
> > on function parameters, requiring to add more ugly checks.
>
> I'm 100% agreed on this.
>
> If the inline change is being pushed by people who say "you should
> have used macros instead if you wanted inlining", then I will just
> revert that stupid commit that is causing problems.
>
> No, the preprocessor is not the answer.
>
> That said, code that relies on inlining for _correctness_ should use
> "__always_inline" and possibly even have a comment about why.
>
> But I am considering just undoing commit 9012d011660e ("compiler:
> allow all arches to enable CONFIG_OPTIMIZE_INLINING") entirely.

No, please do not.

Macrofying the 'inline' is a horrid mistake that makes incorrect code work.
It would eternally prevent people from writing portable, correct code.
Please do not encourage to hide problems.


> The
> advantages are questionable, and when the advantages are balanced
> against actual regressions and the arguments are "use macros", that
> just shows how badly thought out this was.
>
>                 Linus



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx%2Bpg%40mail.gmail.com.
