Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX6C6D4QKGQEDEGI6UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id CF376248E12
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:43:44 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id g4sf13738810qki.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 11:43:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597776223; cv=pass;
        d=google.com; s=arc-20160816;
        b=MD48XxV2oHdRmrRPk90H09lUI0L1DQ8wVhjGx+0L9CRa6ydl5nqK8yyGr8zTpe+R4y
         ikT/n6ZFLlWPGn4pwg786VUMYFORE8Lvt6HwKUswjNZsytEb16r8COA5ZbVFhqS7at0n
         xly0Iz6gf+6w2n+bMTCTo41eBJ2Fxy027bFKjudTPZrmRkyo76ZHSyDkA+s4/pGvk5XR
         IcsJC9iKSSihn/ggJiqVV5Wckp2KYvkamG+rdzsjbDgQuWsMoZQYCno30K8B+9I4hKbt
         0/qEJ+DrXzHHpM8dFHut6rW3CXD93N58NpbQXkLZBlwwC1PTm8tDtMGixFVN+rQ4nQr7
         Virg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=ucw8oMxoYmJ7keopkWtTLQjiP/CiM0Nk6kdNJhaewPU=;
        b=I58v3Jyg26Wwei846u3rliuj0Ta8HSzay7/jLTuHSyaHyu3nFxW7aw6tTzUF2zorRN
         ikuozXfeW7fI+aqsTg0/2W2cFVzmjGBi2kxe/fYEcSEkBl1ROSjdCKXO8pz4/AbRYAr3
         SVFB0JgIG46WcPKYcl/i2B06BOioBPvHHctkHPYftIGIA+45cUIqXGG1ef3A+fAhBXZF
         J0pQVf2vcG/tQ2DLsF81qTOHhYjErB4vTQIjBftZxkZTkaFe7jRs3VaePZWucl/x8RMI
         fCdEwh79xW0Ss7Pt5+IH8UjdGEaBdpX7ET6JsK24GPqnL+IxloJMia1/g4A6TSdXlrid
         5KrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dfZAwytU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ucw8oMxoYmJ7keopkWtTLQjiP/CiM0Nk6kdNJhaewPU=;
        b=F3p/YUw3kOsf4NwZxp/WUa54/1a95GWIxjw1CCFc5Ze2xnvfokc0hO/mUmG9KF9GLM
         UXShKNioWaW+SlIvr1dq6cjcaC618vlUG69bSA0cYloWKvDgy2wW5/d6SuadP+kcQqdk
         zimjPYtP1U6Yo6A+d4PY8t3NcQwVpgc8xHnVfTXLQIDEs+2wKspWvDZh2xHRKKV6xrUs
         8rDQ1Czbu/Ajdg2oP6AX4qYPbxzInTWkhohDNY05Vg2LkAM1FDQWaQPwE60oOm2UomZ7
         93YhNg8PBakvURKaLx+fGzzoPYTAoBkYi9E/ZrxqQ/AAQEtouJeS9wVAHlMqU1G2eGN6
         9SEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ucw8oMxoYmJ7keopkWtTLQjiP/CiM0Nk6kdNJhaewPU=;
        b=h2vP900mEDcOzv24IxHW8QZ3vHeh3YJzC4n8hh1LX4foMTXgbqXKNucD4JCOTz2Fyt
         m1hU4r6ZlgBpzqNg7Qh/R8XRJ8l/JFNdGXIeo+Xi9f5l02L8xGv9apsyA1pLB8UKTe2S
         siFqvUKNIINcX+sZjlwOaZTKj5HtDehFaty1HI+7sWFb/mLPndCrCjc+5ZNbJM8ySHsw
         RnHxz1O7xMQzcW8jBNYfYhn9I+EwPSIr+yjnaZkO8WRjOqddCmCBlsfoy56Kgvs8UQBG
         svoOTK4CIfUtJzpaY1uidWh5MlntPfG28c1GE1Q8jH+MoJnhvUppfVI4tAK3qfe69GBk
         N9qQ==
X-Gm-Message-State: AOAM532orBaVXMpDIXnR5jMTYHFBpsNUXg1UxzEGst8+pN3zGRYKR9AQ
	OQQIDzYh2XYfQNwRUwL9aLw=
X-Google-Smtp-Source: ABdhPJyPVCVZj2E1V9mNNvNA33ndO0TUnxV7YVOorJikDlSZK4M3W367rbOKuSRQ74YLFrSlON9UCg==
X-Received: by 2002:aed:2986:: with SMTP id o6mr19055005qtd.105.1597776223593;
        Tue, 18 Aug 2020 11:43:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:36b:: with SMTP id t11ls5281949qvu.7.gmail; Tue, 18
 Aug 2020 11:43:43 -0700 (PDT)
X-Received: by 2002:a0c:cc94:: with SMTP id f20mr20516037qvl.159.1597776223235;
        Tue, 18 Aug 2020 11:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597776223; cv=none;
        d=google.com; s=arc-20160816;
        b=fEHy2djF20CZMkJweue9W0bSvOf1RbqBo+yKH75FiBZghDg7lXCP2/90M9qFIl8oSt
         fqzLoVr8382N3perDgS2PndKsq8zcAm7z1B1eR2uIDeOd1l9SnF7F6hY530K/csYFlzq
         wG7XjwreDfxeind6Ac6q8i/8qVWfl3ARl8+SVBzu4j1/UXXUGMMfPz2gV7rvDwaRAFXh
         0z9VBtoMAZL7pmvXVLHbRdZT6gnNNaeA5QRglenKpK7VP3aETl1fDNY59wL/ZIwXHgJO
         seRdGxgiz3/zi2kNDtEU/jbGk1mfYVmOFf2bc6oCigeqgMkvl/WJ8JtOmver64U9yRUy
         7log==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EGpbJRNYrCYbTeYKWY753F8m5RWR9s9YvUwXF+xazSU=;
        b=E+YC2ZH7uvbN7OhGbqvo7q0+sPeoYcTtFxFFFJgJGZqmHMzXT+/FHCkDVi3tSZDLoL
         Wp/eCs3qdrQI8lqO/UO5jrpqg0cGop8g2l7ZGPVLT7u4R+uI9iWvwm9gFxC3/8EHhnOn
         +lRRJ0Bo4e81kt303mevNXRocPsbl3IAzGwEVl2nV/CUeAhYcmwfi4efLd43XuihAKxY
         YmgLLfhcITZ+iK9v39WKndAMHM4elNUmJuVF5iU1DkmdVpzMJK4UB9QnhLp9RNrsK6/e
         vlfWV3DG7Mfn/a9LbD+i1E9BwCJ35xCj/fVXizc1welisZ17N24Q9O1mi1tmdC7HOdxS
         AoFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dfZAwytU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id d1si1177704qtw.2.2020.08.18.11.43.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 11:43:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id ep8so9627096pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 11:43:43 -0700 (PDT)
X-Received: by 2002:a17:902:7c8b:: with SMTP id y11mr15738556pll.119.1597776222162;
 Tue, 18 Aug 2020 11:43:42 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Aug 2020 11:43:31 -0700
Message-ID: <CAKwvOdmNqjq4tk0n2-cL1bxjtF1eqiRu9CPNCiPiXCrwpR5Y=g@mail.gmail.com>
Subject: kernel+toolchain tracks at plumbers
To: gcc@gcc.gnu.org
Cc: Will Deacon <will@kernel.org>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, =?UTF-8?Q?Martin_Li=C5=A1ka?= <mliska@suse.cz>, 
	Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dfZAwytU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c
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

Hi All,
Between the GNU toolchain track, GNU toolchain MC, LLVM BoF, and LLVM
MC at Plumbers 2020, we may be getting close to having more toolchain
topics than kernel topics at plumbers this year. :^D
https://linuxplumbersconf.org/event/7/timetable/?view=lpc

I'll be spending time between the above 4 for most of the conference.
I wanted to share the word on some of the talks we had lined up that
would be useful to have folks from a bunch of different tooling
backgrounds to help inform the discussion.  In particular:

Dependency Ordering in the Linux kernel
https://linuxplumbersconf.org/event/7/contributions/821/
which should have feedback on the Linux kernel's memory model for implementers.

and

asm goto w/ outputs
https://linuxplumbersconf.org/event/7/contributions/801/
which would be useful to help discuss collaboration on designs of
future language extension in the context of the Linux kernel.

I'm particularly interested in
https://linuxplumbersconf.org/event/7/contributions/771/ ("Exploring
Profile Guided Optimization of the Linux Kernel") and the BoF
https://linuxplumbersconf.org/event/7/contributions/726/.  If there's
other topics that would be particularly helpful to have LLVM folks in
the room, please let me know and I'll help promote it.

See you at the show!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNqjq4tk0n2-cL1bxjtF1eqiRu9CPNCiPiXCrwpR5Y%3Dg%40mail.gmail.com.
