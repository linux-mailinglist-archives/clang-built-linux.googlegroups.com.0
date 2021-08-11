Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBYFIZSEAMGQEFL7KZ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id F31183E86F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 02:05:53 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id u8-20020a17090341c8b029012d5f2333bfsf133295ple.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 17:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628640352; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ldhcCypCMQ0gOjVvUOLqBHjL9XUkYNSd43G1uYK/TqRMCSR/TEKgkjBhFpwBsIAc6
         UwsxY7/hQiSUpO80m8XtrH40HczYjFHU4H7gVbjbJME8dmTUqpImUras3PT4t4mEtdbg
         AHeK6DhIjhDMnCKIbQWAPyiUpAZA6NwlF4xOXnssTqNLvq66idxZnQTKkUvbkAUKq23n
         zbSgS7Kz94zHG2sJ8Hg1CA5BdlLO0fpcRLdYavoZrJ3VpOoywuOnyPfcFLiaLa+OY4qt
         o/l/WQJ/7rd70jok0CBPofb3qFSSKEtEcCJtf6BvJhkc6Cfgrj7rF9aBdl+8FYtJJyYH
         YEoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=GwCeX2fxEOzx8bMCoWxK5lL0DU5QiDrlMpIFLp7O0VQ=;
        b=Cn1e6I0QdR+xTgBvWMhO2+onjfDuoMIz0kTAL6cmrgzodjKfW0rpcg2NxyYoIMryCQ
         uYLgAt9egjrmCKsNojBkShNlJBCFgSRm+rvWRfF4fbjpUyHME5L4qTJPqwEAxEOOljwk
         4jE98/9ppeOVe2oooJ/EgO2idy4WOoST0gHuhxUzOjWm1IGLRHnG75odhh5VwD8LzuFc
         I8Fc3sBfMDaFIiKCxS2kGUGj2c9zx43TaOROo6PP6fp7qgcTMEFfb3Ffjyuqj9uz0acl
         Spm8WCTn7aOnIlieTbPTjobv1FHSdp7DnV/vZLAc7c7FmpFVbrLmkORGzPK5EX+M49lB
         xuQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Jz36Syd5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GwCeX2fxEOzx8bMCoWxK5lL0DU5QiDrlMpIFLp7O0VQ=;
        b=WM98xrKfv2WaDpn5SizqrbGcY0yVGEhQLBWxUkyjnZ6aCKheSkzuwT+2n2xgqII2TF
         4QPjA3hshiV0BcPexQRZIsyQbEhXqU1MzQp3NZdxc4tnW+HN/CwmoKD2mH46KjMCxYlg
         79jL7xbZluVO5kgwOzgF8YCwiToTti6AcAZYYBnHsdA/PwT/c3IAbtKBE7TSulO/I2Ch
         jZuuJfHv87qXB9XkfteaAteZaOgENTdEy5uJ1EfETXgUQHkGAPkX7rrXzC2ilGCjiHi+
         MJ7WgY4dTN9Qq5TzkrLAY2JmS3lida7CyGJNePRu6lytG6asAoUV/46nKouJhkgNhuh5
         URIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GwCeX2fxEOzx8bMCoWxK5lL0DU5QiDrlMpIFLp7O0VQ=;
        b=pmV71dNEPZ447i1gVA7EgtxSyhdn2trfkdioUtAhH1Zutg3txjF6EgFBagnZ24zemF
         seFZnueg60JyBXlKv7tRY5DpDiTzuofup3wJB05ywUClpu8ZlZgcCEA3PJvlMfOXtICN
         odvPmaFahGAeXqLcuBV5pU5ul5AgeNNH4T/u1FEaOrqeCunCCv9w1HI7dRjTFTPRIzgq
         A2mzr4TU4vkfqdSZ537MxiHc/ZQOKrCyNj92kGLZZnjquIA9Mg10t9Uz/C9OgMaSd4rR
         dYQyXGluUzCmXlmKXp2KByzZHhmTHmI+vgX6BMGNr3zgKez/Qps9eXDmhyw+bamwG8Hx
         RyqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pWniLDzYPshMhy4vrzfltv0OrEdhT9PCAysrmZxDd8715A2L7
	Uqnd32X//HMqeK24b9XCQVg=
X-Google-Smtp-Source: ABdhPJxacKDnA7HObO6CUsAOaplwsTvh3FLlEc+bYGyh5TuOs77BABdUWk721KX4LHTKi9Xh16FD+w==
X-Received: by 2002:a63:4f51:: with SMTP id p17mr417852pgl.29.1628640352701;
        Tue, 10 Aug 2021 17:05:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls179504pgg.9.gmail; Tue, 10 Aug
 2021 17:05:52 -0700 (PDT)
X-Received: by 2002:a65:644e:: with SMTP id s14mr352544pgv.410.1628640352152;
        Tue, 10 Aug 2021 17:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628640352; cv=none;
        d=google.com; s=arc-20160816;
        b=vPJvVjWquIEjmz8FWyqPnENSkhv58vRtRgL7+rDYejfrXjgWBi4YOEQVolkJSRyXJY
         4lqFk6hL3yidpdP2jwcZXVv0GnpXMPYbzdS83tTUbq4OxPDW3bho1tdEhTZMp4164r4T
         qYIBrRaQ8e35aVa+oP4XIS64xNn7jgff5d1mkbO0cEkXFlnYYGJ3SC6CEjQoZb3ZUICS
         XzXB1D6JuYFHmDOWfbs1D9jVW9ovys5uwlTvOl2bQ3ISWsR1usJlroEmZ+mow+o0lkag
         rfQxmjd5CXFmMqnkeoLllu3ODgmL5MFsL2bUscdtBQydqooXotcS0BLACbAAXfs7jllc
         jTtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=SJajvErMbsoEWkshmBzmdwnyevn7G1Ebp1GGHefGmJw=;
        b=slXQv1CRCOEUiiAhAKfxBbvn6qH6q7dwvidzSnejNBMDKJA2Kq9gckUYdXrXrNekDV
         0hC0DOuNJ4q70mhH8i0Kssv8nCjzSDYktDJJQpWH8L7jdFqXgjwfVKAqHz1A+1slfzIJ
         L/dMLftZj5LU/Tzv71SgCrWoAR9hOfssHEkFKhCIQ+yfoA5AHpkEVdqgbQS+LQiNo7Ws
         zg4JlJNHaTp1sdT30c2QKGg28aGFuQqEFl3d3X4J3Z2LsgciHQNBWUHvgn1ft8DynObd
         Nvbqjvhpo2u3PWasVvz6jFj2ZspdrNrlB4XhXjzO9aM6exRt4p7WcwvvVSQoStfKj+NH
         d6KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Jz36Syd5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id u5si271519pji.0.2021.08.10.17.05.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 17:05:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 17B05RF0019260
	for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 09:05:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 17B05RF0019260
X-Nifty-SrcIP: [209.85.216.52]
Received: by mail-pj1-f52.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so3312750pje.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 17:05:27 -0700 (PDT)
X-Received: by 2002:aa7:8e56:0:b029:3cd:c2ec:6c1c with SMTP id
 d22-20020aa78e560000b02903cdc2ec6c1cmr6512919pfr.80.1628640327151; Tue, 10
 Aug 2021 17:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkPLrL6wkhSGaadAcj3HNi1W2q6TQHWFhSej8JvatSzfw@mail.gmail.com>
In-Reply-To: <CAKwvOdkPLrL6wkhSGaadAcj3HNi1W2q6TQHWFhSej8JvatSzfw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 11 Aug 2021 09:04:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS_VVpRuwAayeQY0AAVBU1CchtgGMKT_G=bTgNf9TQ1Tw@mail.gmail.com>
Message-ID: <CAK7LNAS_VVpRuwAayeQY0AAVBU1CchtgGMKT_G=bTgNf9TQ1Tw@mail.gmail.com>
Subject: Re: cc-option-yn necessary? (vs cc-option)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Jz36Syd5;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Aug 11, 2021 at 2:58 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Masahiro,
> I was looking through the uses of cc-option, cc-option-yn, and
> cc-disable-warning to see what we're missing support for in Clang.
>
> I have a short list of places where cc-option can be removed at
> https://github.com/ClangBuiltLinux/linux/issues/1436#issuecomment-895557491
> because all supported versions of supported toolchains support these
> flags.  These should remove a few unnecessary compiler invocations.
>
> There are also a few cc-option tests that are very compiler specific,
> so those might be convertible to just check CC_IS_* rather than
> cc-option (I'll have to verify).
>
> Another thing I noticed is that it seems that most uses of
> cc-option-yn are replaceable with simply cc-option when they use
> cc-option-yn but check that the result is equal to y. I think even the
> cases that check against n could be converted to:
>
> Examples:
> arch/x86/Makefile
> From:
> ifeq ($(call cc-option-yn, -mfentry), n)
> To:
> ifeq ($(call cc-option,-mfentry),)
> (Though technically, all supported versions of gcc and clang support
> -mfentry, so this block should just be deleted)
>
> arch/powerpc/Makefile
> From:
> ifeq ($(call cc-option-yn,-mcmodel=medium),y)
> To:
> ifneq ($(call cc-option,-mcmodel=medium),)
>
> Then perhaps we could consolidate cc-option-yn into cc-option?  What
> are your thoughts? Should I start sending you patches for all of the
> above?


Yes, I think it is a nice clean-up.

Patches are welcome.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS_VVpRuwAayeQY0AAVBU1CchtgGMKT_G%3DbTgNf9TQ1Tw%40mail.gmail.com.
