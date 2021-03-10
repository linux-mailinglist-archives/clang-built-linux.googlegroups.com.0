Return-Path: <clang-built-linux+bncBDQ2R56ST4HRB7E4UGBAMGQE3ZEE65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE78B33346D
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 05:43:41 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id v12sf10380184ots.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 20:43:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615351420; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ug6xIBuERcYJpvNtuxAYxmxILRluUUplkSW5i4H802DXoqxeJ3tI3NdTBtFGNJzdD4
         f+NtGv2wby6VCZ1SGk5xrIJkLjZ/vHCfKMAuVge6IIANavuTuZ5louFGpzc9mqNREkH2
         +DnwX9h1WP+B+GntDnUTj2eeVUIyQr88b6vKPtVrxlf0nkIzNnY6tFgc2QXF/bWaSF0I
         J57dw998OJjjAx0CBU9LWKdBMzlm5H0S3yvoZb2XVEMNCL7yD8XDzlsM+VH9iFZUdJNt
         nJ8mDO3V1vMokDaq8AeTSuWjmQ1lMvtH0B90X8lkSqUI1QOe2X8XA3zuqTLNUiGsB1wd
         RtiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=H37OOqspYyV9KMtH3T0NVkERX16j9BT7jqQmJbeFM70=;
        b=xEo/N4KQ/NfO1/mrl4/rO1pennjTHBgYhVimzdcT1RpBs2prhe9P85ut2czl25ufr/
         l7Nf+gYpDfU0J6gevoMmnXkFWJpXwQW+7EdnIQpECaWgySc2zQEIakjZnLDxL+cPWBvv
         8XgbpsdhzNPdrXZUmXMZvf6FhmqyWvss8jIpf+VA8ULR/QBx8eUX5VCZcBRzI6ObcakT
         /TCcCKTw5LOsfZgYGQlZ1Cv9xDGjxyYbq+B1GtEmEjNB5XBTef1UlkyiLtLFEPbfpfgr
         RiO5FQ3HwwQ2p0TPX9C0aVRmwakbefP0ivU4jPsusSjqXGnnhyq+ZRtrgFL/FCKFPK2N
         ylMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tQoIjHIj;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H37OOqspYyV9KMtH3T0NVkERX16j9BT7jqQmJbeFM70=;
        b=WZOuTNI2e7VtwD1x2OoeiNwqaNr99jlAiNog83nge0EAoDr+Azl2ch40yP/xqr/jwd
         UTiKhf42oRSHIfg5cifKFqlAg7/z2w0PQQQBqcEtgqtStxO/SfvFctbbWvrg1EapJkKm
         zSSzoxCc5H9R4avnpE1s4/ivoww6nm4b6L2cUxrdGD1/4PRd4r39vhNId44vjxywqk5K
         3SGbcaeoZZZkrwSmVhCRj5Wb5UjhC6I6XhWd8IungypSHQvS18GXxNo6EEix9LiFpHEo
         Qo6irXlPpyCtqWl886tF/lW3FA1f/ERhruXsRyK2q/PBQAFqVztoERRG6gdu7xUO4Dkv
         bOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H37OOqspYyV9KMtH3T0NVkERX16j9BT7jqQmJbeFM70=;
        b=l3Yeo0zpQ4LnZrnINPZCfU4nBAGloffTkocKP4GkXLSWKzTNczNFLMjLSKL80VS2Cy
         CFUXxUn2e2a3pE2jIqg7s2OWQSp/eLBKJR2FW/UDJ2zGr1pP/eC7oiv5J3GpVK9dNLFU
         5y4tvhrud3eZSy6TjO3vEzV24Is9//zxfwYfkzmfPK/LsOROg8xc/FgWOwrQmQvTyp+d
         /EyihrUwupAWl/w3lNrGfXOqihWD5G7YdWPwB5FBtoH4Vau1oT4BlWv+XnegxkxXvmoA
         Roygn1EMLJwWQE0W3OHbQW3DLPkxr9zhQrxR3MO/Vr1B0cahNADCF85cY6mUfjba3uqU
         4IDQ==
X-Gm-Message-State: AOAM533H4LaR3mh3UdgCEuhwkFGR12WYhTlPgHM0GzCaelrz4SQfUKKu
	5zUgzEWUgrRYIhHB4zcUVGc=
X-Google-Smtp-Source: ABdhPJzV9N2SIfBBQHJ/oKwHS3qMW2Jbp+jgZsvhuo3GNRJ+7VwoDMvt8xcotS54lX/j5+k7AV1lSg==
X-Received: by 2002:a05:6808:bd2:: with SMTP id o18mr1140251oik.7.1615351420504;
        Tue, 09 Mar 2021 20:43:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:65cf:: with SMTP id z15ls238434oth.10.gmail; Tue, 09 Mar
 2021 20:43:40 -0800 (PST)
X-Received: by 2002:a9d:7646:: with SMTP id o6mr1247866otl.258.1615351420164;
        Tue, 09 Mar 2021 20:43:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615351420; cv=none;
        d=google.com; s=arc-20160816;
        b=GOAgy7D1ckzcA2chSnod5XdaZNHv89vB6tFvxejiR2wSlqmLUQo8PYZgRs9klnS9Fc
         7awoYv/RKnpfmqlabYofyncaj1md5bvp+05Rr4i0aMhiKiYTr62tGK7wD7aHXyxlvhpP
         eNL/Jjcufak41Sb+WEyyDqdS+v0+huLyWIxO+xOsFEjE6Z11FF2rG/KlMguiMxy1mzGk
         DakdPiRqhZYucDRgJy6RjI3vGOnaJB8jXkZUz+lsxUNstHpTAJpuI83jW2wLu6NjkHoL
         2sEW+gvtR4sHqeD2U2+lvlNvFzSihjos9cykOCHJlQQTt5MIk00h79XJqjVAQbtgu6QP
         GShQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9sVW/yEh768vDJxep1QYojM5RquL8YGeRAgcKVSj11Q=;
        b=xlIb5RyGvFC0euqxG8/UTqvKfqpUS4gQzoVWg3tlAmsPY5sin2aevM8eFdBDQlMQDq
         InGHd0aIjLL9lXuSWsLUCm4F7n1HBJX8XrZ8UF0BTO7iDfVO3bkEP/SQf1dJ0akWDXt8
         GWb1W1rfmqEFaqqtPe8STLxR22/PZ3bvZmJnYXuv9soTpzRrZ456eulPivwpfN1Ay21W
         xo2dsP2VQMiqLpTFsSvoJ7rU85GXY1Xa29zKYemxaYpzKfDQaoq7hUo0hSQLUOpmVIE+
         sXWgNtZ0NS9cjw0PdvsBeCTAuocqbQFCNY0smyErCI9wAFHrWoJTK+wGVdv7r+yPE+ZR
         Kb+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tQoIjHIj;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id b10si696587ots.5.2021.03.09.20.43.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 20:43:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Received: by mail-ot1-x32f.google.com with SMTP id f8so10127429otp.8
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 20:43:40 -0800 (PST)
X-Received: by 2002:a9d:66c9:: with SMTP id t9mr1219555otm.111.1615351419664;
 Tue, 09 Mar 2021 20:43:39 -0800 (PST)
MIME-Version: 1.0
References: <20210223023125.2265845-1-jiancai@google.com> <20210223023542.2287529-1-jiancai@google.com>
 <CACRpkdYC3iDD23SESM0j2=f56kr6ByKeedDQvkGwXbUC0br0fw@mail.gmail.com>
 <CA+SOCL+M5YfhygG=ogqvqp7y40v+32RiteGr=53THzwvdGugyA@mail.gmail.com> <CACRpkdYrqy78EfB_+UY0QtA0v0tD+_+O09Pod8-1Vd-p-VyMWA@mail.gmail.com>
In-Reply-To: <CACRpkdYrqy78EfB_+UY0QtA0v0tD+_+O09Pod8-1Vd-p-VyMWA@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 9 Mar 2021 20:43:28 -0800
Message-ID: <CA+SOCLLo2MdxCH3gFONHsKdvmGGm2vZuML9QdQfWuX2--qFEOA@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: Implement SLS mitigation
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Kees Cook <keescook@chromium.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tQoIjHIj;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::32f
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

On Sat, Mar 6, 2021 at 4:25 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Mar 5, 2021 at 12:23 AM Jian Cai <jiancai@google.com> wrote:
> > On Wed, Mar 3, 2021 at 7:04 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > >
> > > On Tue, Feb 23, 2021 at 3:36 AM Jian Cai <jiancai@google.com> wrote:
> > >
> > > > This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> > > > -mharden-sls=all, which mitigates the straight-line speculation
> > > > vulnerability, speculative execution of the instruction following some
> > > > unconditional jumps. Notice -mharden-sls= has other options as below,
> > > > and this config turns on the strongest option.
> > > >
> > > > all: enable all mitigations against Straight Line Speculation that are implemented.
> > > > none: disable all mitigations against Straight Line Speculation.
> > > > retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> > > > blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> > >
> > > I heard about compiler protection for this, so nice to see it happening!
> > >
> > > Would you happen to know if there is any plan to do the same for GCC?
> > > I know you folks at Google like LLVM, but if you know let us know.
> >
> > I think gcc also has these options.
> > https://gcc.gnu.org/onlinedocs/gcc/AArch64-Options.html
>
> And how does that work with this part of your patch:
>
> +#define SLS_TEXT                                       \
> +       ALIGN_FUNCTION();                              \
> +       *(.text.__llvm_slsblr_thunk_*)
>
> This does not look compiler agnostic?
>

You are right, GCC does generate different oraphan section names. I
will address it in the next version of the patch. Also it seems only
arm64 gcc supports -mharden-sls=* at this moment, arm32 gcc does not
support it yet. I don't know if there is any plan to implement it for
32-bit gcc, but should we patch arm32 linker script preemptively,
assuming the sections will be named with the same pattern like how
clang does so the kernel would not fail to boot when the flag is
implemented?

Thanks,
Jian

> Yours,
> Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLo2MdxCH3gFONHsKdvmGGm2vZuML9QdQfWuX2--qFEOA%40mail.gmail.com.
