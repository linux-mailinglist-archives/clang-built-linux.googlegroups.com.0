Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEMTRX6QKGQEJ6KI3GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E532A73E4
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 01:38:42 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id d9sf119992iln.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 16:38:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604536721; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkonL3Ar70u9PbCA78HE+DWwRHNZ06ayuihLR/t+rS4CKvpr13U7clOlXHIlC4e1/d
         iiqu13kTDiT61o/A5IcYhILt8MhoC3kFXUZ9rQRUEHwwzAU/NqgiBOgEU7CNqx7K3rH2
         Vz5qRS5a+/eIFsd6ZHZBxhmYtYXEmihC4iky35Kcya9xAUH1+MUm9fBekmXI+HnKkB7/
         IJqNXaHFqSgNlEAZUbH9PD5aYi5/VA2UJs0NLbjasfsQ95nRRJiJFq53rqyHqWx6o6NK
         11N05SdHZrwyaO7lNjHJIr3B96lsPyEUrGiR7jRn0RJoPFc7bfi74PaeJVpM7kqgLeq/
         7d1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nvGCw+uckLUUkhxVqE1sV5VqSTENxoDvxUEhlvJDQZw=;
        b=BiJ9xlBh4ihb0PQxorZtGTnlBrD6nY/WkDXC3jpS0L663zgGP2yKU4wYaq5Bucm5Ed
         ey2k/GXpHgtt6P/REzlg0Q/ORuCziLZ4IE+cZ6DAZRui7Qr9lecnDf1k4GQlujZo7jsm
         8YzRkcenznUtkg3TkTHbuQxJ2UXS7ggHwCjsnu+sxXMXl1QVhnmOKlMyoLUzclc6hgtN
         P+lXDeOxy3AdDVBFu6ThAs8qYCw1vO9lSRqC+Byv7u2p2XAkvu9zQFf4WWxntHkca8Y9
         e+cRkr7F3gEPrWNZOedpdDBdYftm/mZKZMtnuTduYdlHZ6LUooqgIYrHoRTGOFChtJ8r
         K9+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lS2Wm3+l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nvGCw+uckLUUkhxVqE1sV5VqSTENxoDvxUEhlvJDQZw=;
        b=XSaVnYt5NZSpVTzCPs+ok8DiB+wW+RXRX7UBRS0Esqt9U3JrXV/qEyI2t2KhuLqhiA
         51TLThYGqfR0MMhrWw8HKQyEuwl4w4HgmyL84E4rXIkxo2DoSe2pRsk+0XiVojJEsjKL
         Kxc4zos5PyhuyY35xwmp6ZqrOQVlSe6GyAFH6oNxc7mDEMISrJ7aIEl7ufziEQYeZYyF
         IBg+C71cnXVDhLjAEVSj03cgBlhwR0kAk9LTZnq/PykhkqZ/xwC5LkdMw2xbDbw6U5S2
         VUEitVyh4zjWpS1ECy9RfVONh5IWjoY/4KOxvw7sb0fgfXM2xgqxugVwmctBYd23xZYj
         1+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nvGCw+uckLUUkhxVqE1sV5VqSTENxoDvxUEhlvJDQZw=;
        b=VC6F5keJlraLnX5PYIKON84XXm2REqSAwKyUnWiE43lKZR288oayOZ6Yuq0+C7Tz7o
         kXHMDM/ogzMZUq9kkoXdxkpzjkmQezOBay44S+Q1bdYly3PjpS5IJC01P7KJXFzXP0NX
         wGxSjXGqxRd0ID25p7MxRWR2T8tMcbUzGUBdFlsF0m6mNuF7AJWQ+tKNxpk4eorg4CAn
         dikxoF3ZCIT95P50YGSRjHY6n8kqHxBbRMvLA3FQZO7QCz/b6BoHsYBA46bTx7INmPy8
         mZ6ChrT2HdlDUvmCqV3fVb67dksaoWtj5t6/6j68xkoaVn8Mneij5DBToEAdNq4uHNFk
         VbRQ==
X-Gm-Message-State: AOAM532CphnRtlEMixLq7/IrdPaNs3IsedLgwBkVsix6/7vzvupVeXcq
	hbXaDShuDFgWE3Q16Yde4yM=
X-Google-Smtp-Source: ABdhPJxAce8GqYvoiRQ41r+zatqx2NNT2EZ3OlKYeJM9JAD9LM1EZ6sDGjf9B9MKzLsGA4uZn75CGQ==
X-Received: by 2002:a92:d106:: with SMTP id a6mr52909ilb.243.1604536721127;
        Wed, 04 Nov 2020 16:38:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d247:: with SMTP id v7ls844087ilg.0.gmail; Wed, 04 Nov
 2020 16:38:40 -0800 (PST)
X-Received: by 2002:a92:25cf:: with SMTP id l198mr55761ill.205.1604536720762;
        Wed, 04 Nov 2020 16:38:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604536720; cv=none;
        d=google.com; s=arc-20160816;
        b=pdizJoEI7La3qUBFaK577LttTe6gAUv/fIlDdDNnUz+PITKSnr3y0iD+s8zhDG6UgS
         Zb5E5BIkqEkCisgd3KtHd4jZVupA5FSioACZf83NI2XNaXt6bYm96rQbsvT7XW8JSMwC
         EeElIGP05uuFxSH/s5NcGFGrNsyj2fw+x41peXYwJjW0K/G9fYDHf+o1fV58bp8w+DTF
         j3QcjxpYU58YcajHlPx2JCCpV36MdSiOeBRsTFk+ZUJVpwCXovKVaRaKntgI7TtcZQNE
         PUtS6TLDncyIRt4HbSFhlQ32Q1gnZf3gRycRuTeSb4LlaQ21dhS0Q4I2p5VWGAiYyQXK
         ydqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dzDLNA70vujOkgYBhoAMIoBmnN56Yp1EbMRTRlMwl4g=;
        b=XYireOKDbeQkIOulTdpya78fdzpHPPakJK1o5nto8HIVQDvU2G+mhhHNjAM3kKLI6m
         bqNRoP6hAr9Nim0EMOk2gSjGq1QIgyPjhGLSFtygkv3iXI7PsQsMuEeS1aCdBBJXUzgq
         1k9hvrWN+nTNxhssjfBIu4gnXvBshZu4rspuTPwGyV0W9Bw1phdmQ4UTnMNv2pggvpSJ
         opZT4yE90mrjYnr7VkLCI+23Y7I9FZM/vUWJERiChMDL4zJSzkA5Dk7cgtN9av6kvz3C
         9jZrVKzccDbkcf8CVS9GeNgsIVxZoZCpkcrmhdkMXZFhy/JmvpItbal/W++ahJ7UAlc1
         OQSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lS2Wm3+l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id f6si2529iob.0.2020.11.04.16.38.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 16:38:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id t14so12149pgg.1
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 16:38:40 -0800 (PST)
X-Received: by 2002:a62:ed0d:0:b029:18b:78d:626 with SMTP id
 u13-20020a62ed0d0000b029018b078d0626mr43706pfh.15.1604536720269; Wed, 04 Nov
 2020 16:38:40 -0800 (PST)
MIME-Version: 1.0
References: <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86> <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86> <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86> <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
 <20201030084519.GA3748061@ubuntu-m3-large-x86> <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
 <20201030090945.GA3635064@ubuntu-m3-large-x86> <CAFP8O3KuaYTEvmWK1pnufQuH0X3Eb1G6DK9x7mhjSDy1y7d1TQ@mail.gmail.com>
In-Reply-To: <CAFP8O3KuaYTEvmWK1pnufQuH0X3Eb1G6DK9x7mhjSDy1y7d1TQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Nov 2020 16:38:28 -0800
Message-ID: <CAKwvOd=YTcdyJ30gV_U8mHP5ZfH2KcE+fSskog9GwUysrGobFA@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lS2Wm3+l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

On Wed, Nov 4, 2020 at 4:30 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google=
.com> wrote:
>
> About "ARM: Replace string mem* functions for KASan", it added .weak
> memcpy to arch/arm/lib/memcpy.S
> However, the convention is to change .weak + ENTRY(...) to WEAK(...)
>
> In particular, clang 12 will reject `.weak memcpy; .global memcpy`
> (they had different semantics in GNU as and LLVM integrated assembler
> for a long time AND binutils maintainer agreed that .weak and .global
> are strange and should not be used - though binutils will not make the
> change to cause disruption)
>
> Please see https://github.com/ClangBuiltLinux/linux/issues/1190

It's straightforward for us to fixup; Fangrui has sent patches for
x86, perf, and 64b arm already which have been accepted.  I forget
though what is the convention for "Fixes:" tags for patches in -next?
The SHAs change when pulled, right?
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DYTcdyJ30gV_U8mHP5ZfH2KcE%2BfSskog9GwUysrGobFA%4=
0mail.gmail.com.
