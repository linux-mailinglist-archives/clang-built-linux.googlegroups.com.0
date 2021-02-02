Return-Path: <clang-built-linux+bncBAABBBPT42AAMGQET5VQTII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D2F30CD38
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 21:43:50 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id p8sf3083578pjg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 12:43:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612298629; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZY6gx5B4Q5SwEgo7Wa7cCOT4K6oL62y/RsYyzr8s8t94bOqhmo1KdHR/1abUqUvp0
         ATLu8dHSXIKfXBqPrGqjbv/4BfRI1jelX7dRGyztvApnlmT1tD6ekkCYcm55+qIczL7L
         obutoG8gS70YPK6PGxHZJa7iFpva1MGyEuxsp5YbFpOGgzAoj859tbkZ6vnPFqf/X4h1
         dDBNvigbS01J8kOqo2lZ0ZFzPJZv6k/TNQ7XwiG56mOTUtO4lbnbEdhjrgjAN8TwuuEC
         sqQ7Awg3/HBSkUc2Bt3HBQsjC1OiRaZxrpL4MlJKBqzLvedCclCNGMJx07HucNyrK6bZ
         oEzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lx6nCQfyhxIkGKFgVlvCXkH2/Wp5k3gQIhUr33L+FXI=;
        b=Z0eW7NEIJ61nBXHN4xBSU0XL4x76v8sCpFDY4Xc5o8XCFOhadQuO3GPc16VOExqtzg
         ewQ0fhrLK3uYT0b+14JZYBXpQ7OJPRSLEItoA8UaIwt2gHpPwy7Msw5CL8zaKZAkiFEE
         Z7CQOHRkkRENsf3NIPVSlf97C+/kfu8IAZRgXZK/jQGD9oyuw2olgR21LBIAXmFZ9YkY
         N6LJBEV+NLuB9vVPGXm/c39LT0i0VIbTJokT9xJ6WIYPSSHIDxL9OHnsdT6waCuwOOf3
         Hv8l6EBZOrwW6keX9lvvvBEkCeznOp6xy6s4tJNUzV3LmbDsM7crUqploPyNUfS1SiKF
         vioA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W300S55L;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lx6nCQfyhxIkGKFgVlvCXkH2/Wp5k3gQIhUr33L+FXI=;
        b=UUADV7XchDxw+zEgsnKKC35wYM2KiB6TWPp5eEqM7fm6DMOlwa/JxcR3aM+TBW/HBd
         xx2gnkD/9pabRF4DXz81QaQRV84rIImGJE1N8Z/DWTm+VbZd5PSDvJjvev4V3vTivmHB
         wzHSEYCiK73rAwK3io0De8F5LgZJZH8LVSMzPXv4IBZ9aNQ0BVmQdXdjDuSZi9p7vbEZ
         bm99miT3LTcXkVPkq5suau7Li1Cm8hconolTJvun73J1hOh0HgB0ZS4K7CdKO6Tqdoo7
         z5CUwbjhpSFJPm8UanxP/jnshesY9UOKurr8AFXEoEqCIfOHczf91fevYM2TCJ2t9Rpm
         bf3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lx6nCQfyhxIkGKFgVlvCXkH2/Wp5k3gQIhUr33L+FXI=;
        b=k3o1Qq8bLydq5ezGGYAPmHzFZzh/2fdF6Ja/iLCWWfkhAn2aB8syRpcl5K4sieV8zf
         NZKmNpCRLZ8cjAVKgF1lczCt2uFqGzunDUxb1wx6v/d0VDyvgKPCuq5slysLGBfD9ir+
         OPQbUYdmmwQZV+8voCcwHCO+dCCdrnG9uamV4W6CrJHow0UzdZFNcAm1+X6g31c1rYdm
         bVaWr6t5xG8Wc8mmgz3GjhCJKvwqotzBTQRPRKerCSn2vzREZufHU61gTuG23VFGLb9q
         NMNggFeg9p4JCqfsRqIT5L3yjGlxuXoyoSg8OdtDz+iOS6JOEBqZq4FGNh9Edpug1T5Z
         o/ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YDq74NrCqA6OaqIrvfFISRYefOwHDViFkHfJljzjT0OSi66vc
	VWMZFhU2Ogh3DPpwGmCiOMw=
X-Google-Smtp-Source: ABdhPJwRBGBvRMXX4LuEuvDW96nFe+3By7BdjDMGTEmbPX/Is19nkqKn29MtYbVpsswNXhi59QLqMQ==
X-Received: by 2002:a17:902:ce83:b029:de:6b3c:fcd2 with SMTP id f3-20020a170902ce83b02900de6b3cfcd2mr17965219plg.67.1612298629218;
        Tue, 02 Feb 2021 12:43:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2302:: with SMTP id j2ls8310395pgj.5.gmail; Tue, 02 Feb
 2021 12:43:48 -0800 (PST)
X-Received: by 2002:a62:ce0a:0:b029:1cd:5296:c837 with SMTP id y10-20020a62ce0a0000b02901cd5296c837mr11422212pfg.39.1612298628622;
        Tue, 02 Feb 2021 12:43:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612298628; cv=none;
        d=google.com; s=arc-20160816;
        b=Ws/EDmmPw02Jbw1HPEnzICsPM+DQY70tBeEwVjGqLPgW6rX60+Rtgq1gjZjObm5/3L
         BIBGNxwY1C+rO7czH8pIbJP5mGi8RZ0+17qlJt3ZeOV2vZnA4p9TKOyus9D4erXRHPz+
         KT40gRYU+Bok0nNSrp/twoy4z1uPfTfFpIo8z3QVPhSNeJNpj+YylVsk123PcsAcrV1L
         OzFhmL1SKGEU3iu/AvTjNjGXmnwOrbKGeQcNXs6d+yvCnJN1Qhce81uWrN/WdZeSsakC
         SEhe/SYLKUdv8rQJm73BBABpqF8HLAaAmBT1MBMbRheWmtKkiEomwc0/8BiRmiweKM2I
         Wygg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t7Y3s0sX4GhuDpe978ctelpPhbCuMn/gL5LHNv9Pp4w=;
        b=fNGx9Xtw0P2owaCevxIbQ4iFkyEE/T5HcfVJIH0HJQmFXN45txkKuTSrDWxDMf+047
         E1hEN/NTcF460nhk1gbp+f9SE7aNAqz89CQ3B+4HH4t+tHuNFiA2Px7iA3i6VGbmfNXx
         TaYP0Ge77R84n9Uh+djPTX4N0c+lqkbT8+Tplwd/iJTXwEm7qhhlIQ7f/E9/fiZLiIBV
         YD9TRCloaYfPA2JglwioQ20YAH+LrRAfowXm+64xRBya9Yxzvr1kkt9IjS8wpFl5/OQN
         0Lsg896UC+AUB6QoIfJGvnd3OqHbfacfY1Olr4rEEEzaBELh0jr3xxbSwkHg3N5l7RYS
         8qaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W300S55L;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o14si858pgm.3.2021.02.02.12.43.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 12:43:48 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1BA4564F61
	for <clang-built-linux@googlegroups.com>; Tue,  2 Feb 2021 20:43:48 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id k25so24262754oik.13
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 12:43:48 -0800 (PST)
X-Received: by 2002:aca:e103:: with SMTP id y3mr3960496oig.11.1612298627404;
 Tue, 02 Feb 2021 12:43:47 -0800 (PST)
MIME-Version: 1.0
References: <20210202022441.1451389-1-nathan@kernel.org> <CAK8P3a2864oSVkhaYynoadyYMcYDh0LvDDFSJ2D8OTHSszuSQA@mail.gmail.com>
 <20210202195133.GA1481999@localhost>
In-Reply-To: <20210202195133.GA1481999@localhost>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 2 Feb 2021 21:43:31 +0100
X-Gmail-Original-Message-ID: <CAK8P3a19W2ejs8mtHrf6Nd6BVG8u5fM4BZB+neVEWdOmGCbLbw@mail.gmail.com>
Message-ID: <CAK8P3a19W2ejs8mtHrf6Nd6BVG8u5fM4BZB+neVEWdOmGCbLbw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
To: Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Peter Smith <Peter.Smith@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=W300S55L;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Feb 2, 2021 at 8:51 PM Nathan Chancellor <nathan@kernel.org> wrote:
> On Tue, Feb 02, 2021 at 09:04:34AM +0100, Arnd Bergmann wrote:
> > On Tue, Feb 2, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
> > > depends on !LD_IS_LLD"), ld.lld does not support aarch64 big endian,
> > > leading to the following build error when CONFIG_CPU_BIG_ENDIAN is
> > > selected:
> > >
> > > ld.lld: error: unknown emulation: aarch64linuxb
> >
> > While this is the original error message I reported, I think it would be
> > better to explain that lld actually does support linking big-endian
> > kernels but they don't boot, for unknown reasons.
>
> That statement seems to contradict what Peter Smith says:
>
> https://github.com/ClangBuiltLinux/linux/issues/1288#issuecomment-770693582
>
> https://reviews.llvm.org/D58655#1410282

Right, adding Peter to Cc for clarification. Peter, what I can tell from
experiments is that lld behaves just you describe it should, and (aside from
the command like flag handling) like ld.bfd, so I'm not sure if there are
any known deficiencies or just minor bugs when dealing with the kernel.

FWIW, I have now built a big-endian musl C library and a helloworld
binary, which I linked with ld.lld and successfully tested using
qemu-aarch64_be-static

      Arnd

> > I can send a patch to address the build error and mark big-endian
> > as "depends on !LD_IS_LLD || COMPILE_TEST" to reflect that
> > and help with randconfig testing.
>
> I have no strong opinion on handling this though.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a19W2ejs8mtHrf6Nd6BVG8u5fM4BZB%2BneVEWdOmGCbLbw%40mail.gmail.com.
