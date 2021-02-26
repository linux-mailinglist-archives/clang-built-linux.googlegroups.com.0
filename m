Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB77W4KAQMGQEU3L6ELA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 6185B325FB2
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 10:12:33 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id o11sf5776580pgv.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:12:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614330752; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dv6iZLxZ7qItPNuooymyPXBfHBtyhx2Zzkb8niPN3IFW4bhP4/4rCqUOl7Dc+hmVcC
         PKmd2OIYuFK/uJd/8FT6GmiawbRKyM/MUwpp5B6pmF8XgcLlzEqgAAzGlEZ03Yf1oUeD
         THkQtlIJMNPetBmY01tji7vFiMxQf73gRriWSMsIRiVJJjELlK0eV+pOvLWi7cu4Ah0O
         h1fEs7YdcMpuiBtlyIcIQMa1me6HTfbtFdanlCNOgeu3bM8TJ4ZrFORAa4XJqm7jkK5y
         uaYHHPdAj84foxm8gCaYn/tRB+eo9v7CYKxLYHu8GrbrK+s6Wo77S03WcAVBHT+ima0q
         F75A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=56Y8/6Myq6VexoP8n/pkKhhgDkZ6k5VQHC5pZjhPaR8=;
        b=Ow/mbXYW3sZLYIpvKpQFpoRlDLGWvrtHP00FD1ktT/+cNDblBP6+xslpCyasv21+Rm
         3jEHAODRCIYaSj3PnRu27aQsdEHC+9gX+iEyhtAF+UPL39IxMWJ1NrQqG+QeI7Hver2M
         +KEyEJfrSeABy3eVXxGeXG10e3Qq9/LRZWmMpdRLcSeLWBbYt8jfC5qiwvdfEH/+TExk
         xx2SGmsG2+jP+QB/FXYpCwQ5OA4uvjj0BFxkbmN0XH/tsyCJipHsvRwglsIJKcDIXfi0
         gm2tIdVGwVz0/qfCB0xRpfmrk8ZLKJ3Cns+USL+jiaVr6WyKgKxlzIkBKOek98pnXflx
         Oz8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X/Pq9r4i";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=56Y8/6Myq6VexoP8n/pkKhhgDkZ6k5VQHC5pZjhPaR8=;
        b=KH7N6lsSyEIKArXsYvmCx3V81BCi4gV/ZCP4lZxEp30BAHvpUArwY0ercyzcGcXxWr
         7zja2GpFc22+CBkDIZ3STgVmlQzG7Lr6GS7xER6X5R9tP0IByZefI4JXpaap9+WuDOiG
         bvbSDd3eEMsJGy3v/iQwN5P/KcAxLTeKUenBjdPA+ZtuolEY6M16hFrHYsjQAku7kAgm
         GfPOmI3JWxhatcl1M2aN2JHi67SOTcx7lVElay2U4LzftZfGVapY2DIaJH2vTqjnxu2S
         HTlYnJ67Py+zzWVw/4AoZXEv5hjrpGMtsLgdJKvhtD+JyP2EFSMv2T57th+xpQ34MICR
         5gIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=56Y8/6Myq6VexoP8n/pkKhhgDkZ6k5VQHC5pZjhPaR8=;
        b=n/j7qiHk8dnAsJoLlQ2s4zp9RvCTLMuYBGl+0zCtJHBe95R8k5TiOYyIH/jrs2BoQp
         kWsIXReKswkwRQdvYm7k1bh/5q+CyvbdFVsP3Ll/UZQjvBsbeeSOFaTc5bjEGoSmmpe7
         FxNnMVvsI7aC4h4Af/0TO0HGaJjRmiLgwA8hp5UW27P8NZSBSHpsLbU7UmHq4M2win5W
         37J0bzFubWWfXj3Gbf2KKrXEXRNmpDCrcwtX+VQlMTNSI8TB5B8BqZrVBx5eTWOBMnk5
         BlowojuxumGzCnkROGAARiI6VY2PEW+hjczB8dcJoX1hq08u3+yK5ENhremI7aWZamte
         Ayjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=56Y8/6Myq6VexoP8n/pkKhhgDkZ6k5VQHC5pZjhPaR8=;
        b=qyH3u1P8sfjYIFQq+/+cFftYm2MEhaqtS2Ivswo/bzhwqF0otcR+usSZf89Mn6p+ST
         gIiqudp2HO00gcXlKITU/2y6hrX5njtGUtrzt3gKs7Odp2TzP6pr2kx+mimxn5evd8PW
         uNilUFVnxCyyvFwQjXvVGsSlcc1LhcX+rz1gLFL/UzxKUCjjgeCO0j6TFq7dIdOmqXop
         flOSiDCbduc3t377TdyqNUfLdgZGZesJG+PYfvEPtisYvGii9m/96fu2ZijqiwggAmlC
         oU3C1uH7+vk1DtX62lzy92aTeZ0awq4McivspN4Nn+hVHOBh0yX94FrZ0GrenrryvVSN
         7DGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Zmj1t8o07wwQ8s0iadwN22PCp4x3R9UCfsPQpoweeUbPAdYWt
	Lo6s4iEOofG1EZ4HuQywV/Q=
X-Google-Smtp-Source: ABdhPJziWmcoua3BQ/AIe+6IjSK6xCaeBcZurN/Sf+liRj2u4KwN9w2Q1Yf3/g1NV0beKYVEtG2LUg==
X-Received: by 2002:a62:a507:0:b029:1ce:ddad:79de with SMTP id v7-20020a62a5070000b02901ceddad79demr2396238pfm.19.1614330751610;
        Fri, 26 Feb 2021 01:12:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c1:: with SMTP id e1ls4458370plh.10.gmail; Fri, 26
 Feb 2021 01:12:31 -0800 (PST)
X-Received: by 2002:a17:902:b189:b029:dc:4102:4edf with SMTP id s9-20020a170902b189b02900dc41024edfmr2409249plr.80.1614330751019;
        Fri, 26 Feb 2021 01:12:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614330751; cv=none;
        d=google.com; s=arc-20160816;
        b=P13lbAg9HrVmwhKG34Hvz5FKHE187URdE+qu855BAdulGjN+goU2I0sTqItYFStcVY
         JYdgcw7+U+j8ZopJ0ycyPTHxIqtgmlD9MTRcLY03sbXZyvs8GHIESIMmagzeOf0ozaQm
         GN58wJz2dmgA2igu/Fj9QXyqqjNaGcZ7vCTJL+0uz+cJoaV17mh2dtN4GcjwuN9jQLlV
         9dq1XyttX8OGrA5youwrTeM/7WpJTes1JtmzWGQkBELs41uEy6kDqxlzcKYxSM4hiYwv
         caveVB0fgIL1DTBPD6XNPAg8YQAS2AXjV+5GzDVfdeVUJik5VYEFbNbepgoOiBt6QgMF
         311g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/z0p87O0PvTgjFIawsP2f0f6vDc34DrTSODuWzPDpQ4=;
        b=OC7ENpDFPL6/sSfo0pQcBjL4LLDZc+ZqzjhgQarErUjqIpOiq7SJUB0/5QlkypEIzO
         61wVDRKEkka1stAb6O5H7FDjH8KjHnzU4TZZGSj0XKjcuIOVr4FicJbWz4wWf9D4exIc
         aWrjPwJLAxunMDxFBqVwUm2GoXvht6UbER4adz+Pn7PMBJQB6B3b6o1GGIgreSdyUq0Q
         sRK6uzo3Sf1YDMbijTh8NZhij66t9g0gCDZS6TBuR4JWUql03kqHmyWCt4y+DMt1tS8a
         LzAXRkELTWALaP20fAEVI7lIIKfP4zVtKh+88g6N2ceeUvqdAjr0Bywg59hC+h86aDct
         8j7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X/Pq9r4i";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id w22si363567pjq.0.2021.02.26.01.12.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:12:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id i8so8937934iog.7
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 01:12:30 -0800 (PST)
X-Received: by 2002:a02:74a:: with SMTP id f71mr1959719jaf.30.1614330750350;
 Fri, 26 Feb 2021 01:12:30 -0800 (PST)
MIME-Version: 1.0
References: <CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT=F42KYvyBox1em_1KiQ@mail.gmail.com>
In-Reply-To: <CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT=F42KYvyBox1em_1KiQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Feb 2021 10:12:19 +0100
Message-ID: <CA+icZUWFE-NyoxrgtWAa_Z=oc1mYJZk_i1tGoP9+7Q5NT4d3ow@mail.gmail.com>
Subject: Re: Congrats, Nathan!
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="X/Pq9r4i";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Feb 26, 2021 at 7:54 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> My news ticker just pointed me to some random news repetition of:
>
> https://www.linuxfoundation.org/en/press-release/google-funds-linux-kernel-developers-to-focus-exclusively-on-security/
>
> Great to see to have such a great supporter for Clang-Built Linux
> long-term on board now and some media coverage on it :)
>
> ...and of course to Nick pulling the required strings, and to Google
> having those strings :)
>
> [For you insiders that is probably all very "old" news by now...]
>
>

Congrats Nathan.

I love when people do good things and are paid for it, too :-).

Thanks Lukas for sharing this post/link!

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWFE-NyoxrgtWAa_Z%3Doc1mYJZk_i1tGoP9%2B7Q5NT4d3ow%40mail.gmail.com.
