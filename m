Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBEE422BQMGQENKJE5JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4C135DEA7
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 14:26:57 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id j3sf6315661lfe.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 05:26:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618316816; cv=pass;
        d=google.com; s=arc-20160816;
        b=bqPC60HRPCjRwnCn9NHjabgW78IAeVKIUHMnEvUykJfB4HWqEz5wt1lEmyQ9g97Q2X
         ySpx5GRfs6oaQtgjpLP5GuePrq1K1FD6bCmFxGJmXSrv+YyK2EUvCceBSCjaPvAC62kC
         rfI9wVgRYFJHFQDdgCHaq4NkTkcHJT/xygmdZxYwnvW0kl54UBWQwDSFDFO6/Nwl8t9U
         OKUrqyuTFhXPt7G0VUC17DMbBx/Xv42yX5O16HEiT7J7MCJLLfA0+C7ZtGRj09jRBuxF
         rO8H6cP+Lhm8ya3fvi/eF+wjWQhQLFZEftQNK+nFdM/L9/oPxix7pSqO7f0KQV8GELSP
         TQIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Ua3oKGgdKcrfT/AxZ4kDsn2Z8XoplWGcsaWRe9bPvis=;
        b=eueBQb+C3sZ6ndSyG7Fst/lDM6YMTQyJU8IUDqlW/Zp3nSQ7wcRyLDnrYjKQILQP5G
         wFjprAE9qphwsVIyU8jtFX1SNvDj/JL/lCaBbBqS6/rpQIdf6jE+PtmXKXzD0Ukxib/7
         VZRNzKlMH7xBfa0PoimwqKMXjqR2BJE/mCTyHh8WNKGt1L4v112NYy2jThXdcPZJbGp1
         7wxvDkaeKvZxguqVG+3EqEkgc22EVWhfmgD4S02uRRI+8BgmgeL8LcZH/YXvSEh1IjxT
         aWSgaW+LLFWbQAk4tzRMxcqEpcw8xzRv/4fJ6A90MwPvO4q73ZhH1LbJHi9KLBq7bGvU
         w0QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ua3oKGgdKcrfT/AxZ4kDsn2Z8XoplWGcsaWRe9bPvis=;
        b=e4sYEAN/3IfMdt0zKuPXv3joopyCZCCG/PKfG66dE7RtS9qIrxkNDjwrkk3+ASBl4Y
         JuYSpCRVXrxK897u8CpPR227oP6xUjMxT/aY0OTehYtPFpwLNeuAwhvHV97ITunoOwa5
         hA8tXMMaYiG9QRlYP9JH5SZdcF+7W4rihm6oVBBOUP9WmkVTj3q4my999Ca8W6Mct5E1
         S3vSO9eH+sFUGijgZd4Jn+RVQCspNO4uauK+MStYjxdyuPxF0i55HzfuiIuLnc0ExY+t
         6Sa0Sh2fl8bnJ/KPi5PtUolzqumW8p2X4IeRgYd5hKuT7k8Y0zneiBXKf0+uBuD3Wyz2
         IiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ua3oKGgdKcrfT/AxZ4kDsn2Z8XoplWGcsaWRe9bPvis=;
        b=Lnsbiu/0v5QKiQMxAxcb3+ajFZWuELcgYCGifOqxvLZShWLJSQwH/FPJZQioldkniF
         agNeQ59YQ/VMI7pa/4f20f7dnRY93U5cmU1ZfmpDoxlAZbBoNI7DZh9nm2ouLwZnQtm8
         TXYy/7QITt+f+3Tex7bm9TNgSDaBQoi6Zvd3ImgJ9JH+cJ78dqaQXcaxiWcPpdOicCK5
         AP2n2a2y2ROzeu7Acgle2ls02q5Nv/SH3qdaYyNp6Ctelc/jIiLDrx5uOjSMMTJl8uEG
         vpwnIIC93/oeBiHiH1j4mWzFnjHzPKNAom2bqiAByZuGzr+wPNa22OzDBxguhJICtAmh
         iylg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339HSjJnkqZvWKVexdcvG5T8GW4k48+AK72T2g4zOR2KNHAt+Qa
	0YfHQSAWZRWjscRaJW1Sizg=
X-Google-Smtp-Source: ABdhPJwvEkVPh0eQHfp84fMR50cCRP+8q6IttFLo7QRZF9WrFJjzeaheifTrM+eK2iUwRnDLnMiHNQ==
X-Received: by 2002:ac2:4d0f:: with SMTP id r15mr12398341lfi.519.1618316816784;
        Tue, 13 Apr 2021 05:26:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5c07:: with SMTP id q7ls1631005ljb.11.gmail; Tue, 13 Apr
 2021 05:26:55 -0700 (PDT)
X-Received: by 2002:a2e:b4f2:: with SMTP id s18mr21053673ljm.138.1618316815731;
        Tue, 13 Apr 2021 05:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618316815; cv=none;
        d=google.com; s=arc-20160816;
        b=PY87SYv/W5rfgBknF1545KbBEZcGy5wdL6KziFuhhswze3San/VN1hB6QqtTs3QgXO
         iioknRpzRTBP6ppSy/E4NBWiiHmqTl63vTyLgcq2P4V7UEvWRYbLAKFZQ8PBwm0B3hdi
         3uyNZtkbOShYi1sLMPzFOYKECJU07c3CuwUeYDLJFE76W8LBS5a5gt6ORArWKOZevq1s
         mjTbQgxsumxBKwcBdJybaEQSlOPWoJt3AQCHATRga1FWuz2rkcrKCoyyuz0jVQpK7YbW
         boannjt0rFRZoDB+8K3iB+hT+nbYCs+qblROaJ56dQrf3/miH2gQpDCRluuAs13+8hhD
         800A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=X7VIE3F0yNmrdVg6njzbBtMXf7EmswQRPUYNZBjUSUQ=;
        b=DiRoKTDsvbSlvmPps8mI4OXGz9uFL4FxgawUVuALaawisHWJpawwuUQ4Qg8BFq+yoP
         fcOq+dwsi7/winxyEjjf5Lc8eP0oXmqC4oxAQlwA1LkNn/wI/28bmhLZaE2bM+5P0b9c
         u6SL0M9McozYWUeGFoLKHRuvzZGFXgwiFTC0v2MLQWSUQoIjl4NqYosgskAl79x+th0O
         YNqqUP+E3fgWoaemLL9gz/ctKQ7YIkaFF4cZuNVHDijQbXWGwd3lIJ7ePoCLK0Yi8RFq
         Lw+FhsG36NBUpDHHuSqGlbCCs4RaDy4ItKpIXogwQt1RZ0MNQRWqhVDPsWxn1mkBU+jn
         CqFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id p5si805367lfd.4.2021.04.13.05.26.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 05:26:55 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-wr1-f51.google.com ([209.85.221.51]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1Mr9OA-1lreGG3tzi-00oG8c for <clang-built-linux@googlegroups.com>; Tue, 13
 Apr 2021 14:26:54 +0200
Received: by mail-wr1-f51.google.com with SMTP id a4so16276688wrr.2
        for <clang-built-linux@googlegroups.com>; Tue, 13 Apr 2021 05:26:54 -0700 (PDT)
X-Received: by 2002:adf:c70b:: with SMTP id k11mr37437743wrg.165.1618316814410;
 Tue, 13 Apr 2021 05:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
In-Reply-To: <20210413115439.1011560-1-schnelle@linux.ibm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Apr 2021 14:26:38 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
Message-ID: <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
Subject: Re: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:KrimIOcuhPgySQP1ouVCErmgdfQoML0W4vJFT6lxnVQh3R7hdo5
 oznOrMkji7Iq7eFHuSSM5a2H4ONXsqLjNbw9cqcMJRZ+/PL3NsMe7S5P1LjbYAiGiu9Bx/N
 RbAdas+coZpR/cZCLjLggXS3rJ/dr94PgOyoCPRxQ9Alr/7M6X5eoNSZqCrnQMc6Hh2mt4v
 M0fjrxRBzECYU0ayJE86w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Du396KAHfvs=:zQ1t9sXUMyvv2jgBP4y7F/
 gEKQSQBioEosVLzXj3b9c4cDGzwGkTMUurOXRMiTIeDhH4U1RxAUwQbDdQb+f+7MWZiNfH0ku
 +z+qc8zbGj80lfYxtYdr4Z3ijDXuVolN+i3jsKxquOpMB+4VWi0F+o791RxUkq8u2GsBffLG7
 DqdUIYZmahdFwAZgUKeF5Ly/dknMSGPEihp8B6fm4AEGlBy5oBY+cr1icPGVv4u/wmQbJ6vlG
 Q1RHMRD/nfpp7iHdi+wAbtS8DBQ6CbyguW+M2emC5LUGYV0QDW1sXHdXpO5C6boJw7y9wTWHt
 2HA9vdAYE9F7FVAUlUhY//CAQ2mUS8RNI+KyUkIZlmYcpgIcMA4ASAVnZv2CB2ijR50sqWTZv
 1Vq69Hs5iMj5DQbTT6oPQzqeUr+3ezyPsXsjLkT94Onu7VxW2yl8+qG7EISo6tp+IewD0+zAy
 8KORpUmPE5RwUE+RciVyRxiva7WBKsp7ix3Iju06ZQZ4s77vP6JooGVrYxax/utzFRQE3y7qz
 +AQpJj5K0tXLMcoBMFt314=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
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

On Tue, Apr 13, 2021 at 1:54 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
>
> When PCI_IOBASE is not defined, it is set to 0 such that it is ignored
> in calls to the readX/writeX primitives. While mathematically obvious
> this triggers clang's -Wnull-pointer-arithmetic warning.

Indeed, this is an annoying warning.

> An additional complication is that PCI_IOBASE is explicitly typed as
> "void __iomem *" which causes the type conversion that converts the
> "unsigned long" port/addr parameters to the appropriate pointer type.
> As non pointer types are used by drivers at the callsite since these are
> dealing with I/O port numbers, changing the parameter type would cause
> further warnings in drivers. Instead use "uintptr_t" for PCI_IOBASE
> 0 and explicitly cast to "void __iomem *" when calling readX/writeX.
>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---
>  include/asm-generic/io.h | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index c6af40ce03be..8eb00bdef7ad 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -441,7 +441,7 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
>  #endif /* CONFIG_64BIT */
>
>  #ifndef PCI_IOBASE
> -#define PCI_IOBASE ((void __iomem *)0)
> +#define PCI_IOBASE ((uintptr_t)0)
>  #endif
>
>  #ifndef IO_SPACE_LIMIT

Your patch looks wrong in the way it changes the type of one of the definitions,
but not the type of any of the architecture specific ones. It's also
awkward since
'void __iomem *' is really the correct type, while 'uintptr_t' is not!

I think the real underlying problem is that '0' is a particularly bad
default value,
we should not have used this one in asm-generic, or maybe have left it as
mandatory to be defined by an architecture to a sane value. Note that
architectures that don't actually support I/O ports will cause a NULL
pointer dereference when loading a legacy driver, which is exactly what clang
is warning about here. Architectures that to support I/O ports in PCI typically
map them at a fixed location in the virtual address space and should put that
location here, rather than adding the pointer value to the port resources.

What we might do instead here would be move the definition into those
architectures that actually define the base to be at address zero, with a
comment explaining why this is a bad location, and then changing the
inb/outb style helpers to either an empty function or a WARN_ONCE().

On which architectures do you see the problem? How is the I/O port
actually mapped there?

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w%40mail.gmail.com.
