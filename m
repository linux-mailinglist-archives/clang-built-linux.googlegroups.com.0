Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGMGY6EAMGQEC7PYZSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id D12FC3E503A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 02:06:50 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id l18-20020a056e020dd2b0290222da58a0f0sf6209057ilj.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 17:06:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628554009; cv=pass;
        d=google.com; s=arc-20160816;
        b=lffCrzwnE6QKyEyLhaJtBiKj/szPU3xqmgjQ9KLm/wJYpdqLJj3J3qdcz59MlMOTff
         +apl+0B7Om7wGstMBU0x1208XNbLQ75CanaqXK6LIL6X0Kgtc7GSmUHhjT5Mb8k+Cdfp
         LJQSifN8VURof7oUnCL3GCktInUW2FzF0jKC8Cjar16SzIeKfo3pwXSj3ftm8m8Oihu8
         kJwRzyf4GxhO6wfeNG5gAJappo1h2Z715sDJVJHbEHkNg+JAb6UZdCVnvXViHkK/Sf8L
         u+/4ArQDPfft8LilvhNSmHMJ4erEsPwWS+iCP9whjcOcQPOd20juVR0ZwUNrMQGTe/Fo
         8blg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=5AX1mGOiGurY2zO6N645pc43SQ9C5KplCgszexSfybA=;
        b=YmzGAh3RlJPDJQ9skDpshhHD6dLT+FWUIkrUaKtqCJOfCfet6Qr6L+gk2rDWDFAFXc
         mIuv796aDGvn2iomn1pFTlgXDwoYV8DfvczVP4Ee6RjE3RGNFMgOW5ISfvHu7rnXZvQE
         bRZGSDfMYW6Pg5crSQkF6/DtS1WsfUjrx+CI73AywYyM6O21sTJczXyUifxXqabC9XXC
         EoILyx1Pvz9X25fRaMZXoqAJ4XiiMdZI+uOa1QeST9g2IlBckDSHx/NRPp6bzvqboHfV
         noydsxEdCLqqlJ+f0EQQwAaV+0zpbNKUW5WQXRFaRoqpy67yLujGaHHAZheKOpBxGbzB
         vM5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iFsLPq8W;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5AX1mGOiGurY2zO6N645pc43SQ9C5KplCgszexSfybA=;
        b=BBbZsAeZgJazYt+L4xsjd6Vo+tCzPN79ZsJx348rm8RtC485uosmi9FE7TPQ1rJ2Jy
         fU3l2GsKbaNNTOzjw/xeKdyhdbR7pxj0kaoXXvdmG5UpFwoQl4XPM+OLE0cgOZqbxr4d
         eIHjDwXDoxUZ7PiszsJdIsRqIXrs5TAG1AstOGpOEj7QiL5NHzNaQprJXG5ddg4LK89u
         JhZItRWBrQuUyYZTnLJY83nNAfhvR1FCboCzznwFEf9rDd2UNlglNd5rSRPALwurHdFc
         MC1nX0tuAr9jN/eiqtQb82q4uDkvrtXdCcJPNX6wnLUcwkSB4tnv4ZL4mJYhwcsp7Jkl
         WFTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5AX1mGOiGurY2zO6N645pc43SQ9C5KplCgszexSfybA=;
        b=QhkZ52XauGXPWKTKsVmZezZXstOY1c6PWx/lYcI7/lb/cbtK6FgsqhBik3RQRLvOQq
         AMq+6iLmfywrdLF8S4mvv46IaJ8GwNW8FoowBeJQWRbiukmn681FlkdKaCyHhtnj6Ac0
         mGP9STsq4P0yb5r80n6Wi7RUCGK/QaijxO3oUmcWjV1ECbzzjMICrPy+Z9YBwYIgTWMr
         gz276nHsFWdFlwL7yVeyKOtUbCKGkC6JYmSLf7Z6Sj2if+aqGwVFwxUv2NtPbO4PDR4n
         JSYKlCffZZNwfwgvkUhmBZI2fAyVKiCPeFvyIc1tvyzonklEuLbYySsFIDnSj4EeZKQ/
         fy+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327aVoUHACh9WVH4QYcMO7kZNTn3zHLwWPTNjQ4XCgwTyafcHu1
	ycX0n32y32S+NJjHP7NgBn4=
X-Google-Smtp-Source: ABdhPJwy80neWWpcolwnSkdg8QMZTqNI0hx3XnkiZluL+JXfvf1s4Qe1jTQaqkMyk8FhbhHS16/kGA==
X-Received: by 2002:a5d:824e:: with SMTP id n14mr22558ioo.134.1628554009508;
        Mon, 09 Aug 2021 17:06:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db11:: with SMTP id b17ls3763461iln.5.gmail; Mon, 09 Aug
 2021 17:06:49 -0700 (PDT)
X-Received: by 2002:a92:d60a:: with SMTP id w10mr101081ilm.22.1628554009132;
        Mon, 09 Aug 2021 17:06:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628554009; cv=none;
        d=google.com; s=arc-20160816;
        b=vtdbBMbPLHigmXoleEFxq0BKy8kr98Vl+THrtKKoyeZ3jv+SMxlv9JDZ3W87UUPvcg
         Eu2TWNPuOjmkzJofHCMXe1a0b9SAxE9/9rKT2oRFFYoBpaxrjctUH+RfhsmS+c0cFDa8
         H/pyvfJY6N8L1Rk/hFgkKUMNThdX2C32r/4xpmNg96IEQvd035KXI/5dqw4RIz7PgPCK
         e9gcnbgq4qP2E9BEG+pPUSB+oV0uWoSXXaZ+0p/pKhcsE06tMEUED85Q4rATHW3EnEYU
         STNlF0bOv+8LQCXCyp5bnE3HC5Vc2VISfY5pxBMIaBYJ7baI4WGnjhq8rKZwSxwDbaM9
         5K8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=xHNISeRMlTiEcgni+JyLJx7pYa/VEYClQ3P0qFmQuz8=;
        b=E7HtDWup3gpylEm6AAUUyu2PxIkuxxVJix/tgjsfEqwu8cWo9syvIzJO50U6C1oO2W
         WS7zrjK4KlE/ya+GYhqRdUV1ZNRx8TUV+j+CdpLQDPCI6vn4sy87jLw20p3TwiirBm4z
         vpVerTYOo7IXwrCu4yBELIUSIrrgp7CcLWalo6pSDBeTLYisHnXo3+vHAwYMCIlMJtGK
         /loEwsrmqAu6XTdOXWecCeh8UON76SZBplBlwklaswIK0ADr9LBaaXTQYceIcxqfOfKs
         cXDYcm266Mq3xh0j1OTPM5G/yQ6OhX1Kq0gJ5N2GX9mPEtiLygzqlFgMzXX7mWkuPW04
         SaMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iFsLPq8W;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id e16si847543ilm.3.2021.08.09.17.06.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 17:06:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 17A06GCX020831
	for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 09:06:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 17A06GCX020831
X-Nifty-SrcIP: [209.85.216.47]
Received: by mail-pj1-f47.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so368683pje.0
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 17:06:16 -0700 (PDT)
X-Received: by 2002:aa7:8e56:0:b029:3cd:c2ec:6c1c with SMTP id
 d22-20020aa78e560000b02903cdc2ec6c1cmr1422755pfr.80.1628553976079; Mon, 09
 Aug 2021 17:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
In-Reply-To: <20210802183910.1802120-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Aug 2021 09:05:39 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQqVNpDkcj4ziyT_nimNHdusp862-t2y068SUtHr2xfaw@mail.gmail.com>
Message-ID: <CAK7LNAQqVNpDkcj4ziyT_nimNHdusp862-t2y068SUtHr2xfaw@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] infer --target from SRCARCH for CC=clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=iFsLPq8W;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 3, 2021 at 3:39 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
>
> Instead, let's infer --target from SRCARCH, and move some flag handling into a
> new file included from the top level Makefile.


Series, applied to linux-kbuild.
Thanks.



> Changes v5 -> v6:
> * Use indirection as per Linus.
> * Change hexagon triple to use -musl rather than -gnu. glibc doesn't
>   have support for hexagon, and hexagon-linux-musl is the triple we use
>   in CI.
>   https://github.com/ClangBuiltLinux/continuous-integration2/blob/d659897d1700894d67feb64fe28e298da399a287/generator.yml#L53
> * Pick up Fangrui's RB.
> * Reorder use of Env vars in documentation to use command line
>   parameters instead, for consistency.
>
> Changes v4 -> v5:
> * Include previously missing first patch!
>
> Changes v3 -> v4:
> * Remove the requirement that LLVM_IAS=1 be set, as per Masahiro.
> * Remove the Documentation/ change from patch 2, as per Masahiro and
>   Nathan.
> * Add Documentation/ change as patch 3, from Masahiro.
> * Reword commit message of patch 2, as per Nathan.
> * Change patch 2 oneline to refer to --target and CC=clang (not
>   CROSS_COMPILE).
> * Carry Arnd's and Nathan's AB/RB/TB tags, confirmed ok on IRC+discord.
>
> Changes v2 -> v3:
> * Remove requirement that LLVM=1 be set. Instead, if building with just
>   CC=clang LLVM_IAS=1 instead of LLVM=1 LLVM_IAS=1, you should use
>   LD=ld.lld explicitly, or LD=aarch64-linux-gnu-ld. (As per Masahiro)
>   Example:
>
>   $ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=ld.lld OBJCOPY=llvm-objcopy \
>     STRIP=llvm-strip -j72 defconfig all
>
>   (It's still preferable to use LLVM=1 IMO, but this is maximally
>   flexible.)
> * Change oneliner from LLVM=1 to CC=clang.
> * Update Docs slightly.
>
> Changes v1 -> v2:
> * patch 1/2 untouched.
> * Fix typos in commit message as per Geert and Masahiro.
> * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
>   Masahiro. Add his sugguested by tag.
> * change commit oneline from 'drop' to 'infer.'
> * Add detail about explicit host --target and relationship of ARCH to
>   SRCARCH, as per Masahiro.
>
> Nick Desaulniers (3):
>   Makefile: move initial clang flag handling into scripts/Makefile.clang
>   Makefile: infer --target from ARCH for CC=clang
>   Documentation/llvm: update CROSS_COMPILE inferencing
>
>  Documentation/kbuild/llvm.rst | 19 ++++++++++++++++++-
>  MAINTAINERS                   |  1 +
>  Makefile                      | 15 +--------------
>  scripts/Makefile.clang        | 35 +++++++++++++++++++++++++++++++++++
>  4 files changed, 55 insertions(+), 15 deletions(-)
>  create mode 100644 scripts/Makefile.clang
>
>
> base-commit: d7a86429dbc691bf540688fcc8542cc20246a85b
> --
> 2.32.0.554.ge1b32706d8-goog
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQqVNpDkcj4ziyT_nimNHdusp862-t2y068SUtHr2xfaw%40mail.gmail.com.
