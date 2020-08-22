Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBXCQH5AKGQEIS6XFUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB8124E465
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 03:12:39 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id g1sf2092903plo.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 18:12:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598058758; cv=pass;
        d=google.com; s=arc-20160816;
        b=Di29BkakE3c4DxquTz4fHKF9dIshcYu8OAsB5717kByZ+7VomAOVpR0qt0ueCrNbyL
         6heffW33Qmby488aJA5JYj3jzdEk2y8EY4sFwkNvXV/LAqYMmV4M6WtnpuRrPZhMufJH
         QDpui1eAgwqc9E2tVlv6+kATzUINidJyxbPDiUuhL/OIhiY/eiuy7yCUFZTUYlY8rvfW
         VgQuVOXUhlfNx/B3wxwY7XwfmNBcAMukFl6CO8IdxEt+4Az4U50otxcyofrZTAJv14wz
         7VneQaO/ZLOifNBoCyj0uO3AA1GmyclQXDOkjN4cWWtZLDtCJz/MoH9gFJ1/GaZ2z8A9
         M+tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1vEX9FvFdVJxhB4ndsPf/0x5z4cfdOcV1KtNPI33XDU=;
        b=ezAei2VhvFjHh+bEDlhmO56/XxUnwVIJ8pYzEmhAfNieVLc7H8VPRWLAKE5+4yLrk9
         6Qhk6AS/6JuUozyTKkw2MftOOvMpsMoHITWbdM098lV1q+EMEyWOB7tiLcIY/UZkFIb+
         FlZLYJck7fDJIy+J/4ErawhzvIJnz1WjP0uRTe24XhfpwzE1Z1JtPvLPm1J3EWs0YJ8R
         b1HLm6jXXikDvxrxwuY9qUxdJ4xEfUlOtfhKiISRgKR3hDS2NIEr1IZgscbc6rKgD3A6
         fJGZ0w793VnSNDkWQV3nJiCqME3pQDxOLLIaLVq2MvGFEIEzbJ2VobsIRK3Y0DCfsgE3
         HAeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GiJl8vVG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1vEX9FvFdVJxhB4ndsPf/0x5z4cfdOcV1KtNPI33XDU=;
        b=IZsbiv6cdvmt+TW8/6rIEJjETd8O3jkY7zQSTMjDlftrj0XvUKGnQvAwvDHbPlqFkw
         GjgD9oC9AnvHp3fdPvsr2Eryr0fJL2GvISZ5nCUNS1ofw4zb9MgeB9JuG2SJje7TSjZc
         nueBXjN6WIMNZDUBxgDPTMrTTm9RiwcCxdrTP9ebeQSquorLrkIb4mEHUaaJQnmm9GLy
         45fGbvZs5bTeoa3no0trSEqd6EGc4oqXDfU0LfjIEt9oEzPck6ImEGBjom+rAi2/QdnG
         jQMQ9l+S/o6KZQbAqFD2C5CcKpA3/fc21YXNnCeTyRmOU02erXkKUHQTBae8y+5M7PFq
         KdEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1vEX9FvFdVJxhB4ndsPf/0x5z4cfdOcV1KtNPI33XDU=;
        b=f9Q99Wgm0x1WS24QCgOuXjoY4T/7n1opoJ8I0BTD6JDdWfzkeI5UNWGpwGjJ187k3Y
         pbeTU5uQNaqtUebeayObY4dvhxmyuDUfEGyIB+TX656hZR7FDNBWt3XuOVHSIyYIavok
         T/4l43rdCbzpzZXt74s4UHubKitpEM9qpBkjKbVaH/mwyYGL+EV0Hcbs1LL7a43/NRtu
         XTe1peZgokBUikI+LeQvM5A2jRhwDqyDOG+Qjh2Rv1BkruHwvM7mev9GviCGdoRfp5r3
         L+upM06FyA42L23EBZI1bmWBqiqnlu4bSxws5T7VK/dYrhROPZjHWQd3mdmg4ZflhTqI
         UpDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1vEX9FvFdVJxhB4ndsPf/0x5z4cfdOcV1KtNPI33XDU=;
        b=bdRGGbIf41jCwUrN1Upk8MjHwBC6T0R9jC7mtsoA+nM0xMWU4B98Hh0zygw+soAb6p
         sn4c9d5Rv0tn5Dai43P4ELSiNXhYlr92/54LCncU4VOXZdbZ/SVm/5bVmb11ybV8Pn21
         in+vwecwIt7HvsRxoAohz8lFBwJRJBacIYB3j8Wfj7X5pv0ZED4pJf03MAxq355s53hs
         iOlbOpbVhrApo2M/VSZXUW7GtbeGea7NgNd7HvdwdYv9sj5zTkIg5m3Dd3KAXQQIhpqV
         E+ARbCXMqq59KT40IOBj4lX9MaF5HWn3csSynsQmlNG0cQtbN1b065Amg5eIPKJvcKPw
         jk+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531X9iWsprU8I+/UYHJiSSrZpPKHUiY0fCCVZnIJQUWLtBKRjoUw
	5H1Q9Zy5xjrb4YbGu2gt3os=
X-Google-Smtp-Source: ABdhPJxyvK7/8LF9XuSsU+wHF276gyRPKGrB1FOqNFoPIAAuKCAgnxXRQMEkidAhXb8+mTKW+K+4tA==
X-Received: by 2002:a17:902:8c8a:: with SMTP id t10mr4517496plo.112.1598058758158;
        Fri, 21 Aug 2020 18:12:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee0c:: with SMTP id z12ls1795078plb.6.gmail; Fri, 21
 Aug 2020 18:12:37 -0700 (PDT)
X-Received: by 2002:a17:902:423:: with SMTP id 32mr2665929ple.288.1598058757657;
        Fri, 21 Aug 2020 18:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598058757; cv=none;
        d=google.com; s=arc-20160816;
        b=IVXEoTGACr1RvvcuVkMT24S0pySGFGOH8F+jU32uetXrS8zZEXummo4hGzgYl7fQyE
         kNNs53KuoH9gjbsXO44QTwBigE18Wp4YAm4ZryHxzdujQ9Y7lYtPOkuoGp4QZBfdiKe3
         hPlQ4VLa7nLiwbk3vYuMwiESfYs2UTjova8Jj9905hsdDAajtzdYZlKUdVXpOFETtm9H
         S079L2jFEfE1kSFEWmBlwj53F6jo0XymNrnc/UNRbkwVOJvjbBiyPQpe42Yr6LI3taTk
         MlWAXMCi/4UJYR/rZlL9TG0zxKjCicY6v1k3+qYcbTV2HBhhQ8OXrVyPcU2MfM+9iZjj
         9MFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+mgx7nIrSpwGQvUnnGZmtTvze/7hVXMdlFzKwysIgnA=;
        b=SZeNRGoLdPszKolemr7X7ZN9XkT4lO3cilpglLTbIAe7TQMEJxSNQ2qDUW6XyusepW
         kmAQWk4e7AFlp0A5ILRmeTUNdOFg93HFJtI0R5qnKbzFXOLVkUUf5hL6nHca+U/9wfUw
         RUrNbkk+kjPvnVGcqAdz1XRwrQXaTETlfnPZ3KezZjNdps9hG2D0wdfVR8aylixnOQLx
         gt3XqiICmqzePQWd62FAwMFjOyuW9Yy2649jyj1L6y5yOHEPezgkZcZ0uDLc0jOxPCaC
         j4ezVW0jEzFhEaCzuDBtivAIIolsXUV+tzeg3VkuAmFjEUsx+AQFBDzGk3b4hNLxJ+E2
         QJOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GiJl8vVG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id s2si211596pgh.4.2020.08.21.18.12.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 18:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id h3so3089651oie.11
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 18:12:37 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr3687524oie.72.1598058756993;
 Fri, 21 Aug 2020 18:12:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <CAKwvOdkUfOnzWH1d7-qAP-PFvkLeahoA8jZdkZEp4-PNFXL_JA@mail.gmail.com>
In-Reply-To: <CAKwvOdkUfOnzWH1d7-qAP-PFvkLeahoA8jZdkZEp4-PNFXL_JA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 22 Aug 2020 03:12:25 +0200
Message-ID: <CA+icZUUPTx8-kRKNJDeeqy=9q-KjH9qVyzk757w0XkO8YpE6vA@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] kbuild: clang-tidy
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michal Marek <michal.lkml@markovi.net>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GiJl8vVG;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242
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

On Sat, Aug 22, 2020 at 3:06 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > I improved gen_compile_commands.py,
> > then rebased Nathan's v7 [1] on top of them.
> > To save time, I modified the Makefile part.
> > No change for run-clang-tools.py
> >
> > "make clang-tidy" should work in-tree build,
> > out-of-tree build (O=), and external module build (M=).
> >
> > This version keeps the previous work-flow.
> > You can still manually run scripts/gen_compile_commands.json
> >
> > 'make compile_commands.json' or 'make clang-tidy' is handier
> > for most cases. As Nick noted, there is 3 % loss of the coverage.
> >
> > If you need the full compilation database that covers all the
> > compiled C files, please run the script manually.
> >
> > [1] https://patchwork.kernel.org/patch/11687833/
>
> Thank you for the work that went into this series.  The only reason I
> started focusing on compiling the kernel with Clang 3.5 years ago was
> that I simply wanted to run scan-build (clang's static analyzer,
> enabled by this series) on the kernel to find bugs to start
> contributing fixes for.  Turned out compiling the kernel with Clang
> was a prerequisite, and I've been distracted with that ever since.
> Thank you both for completing this journey.

/me donates Nick a "EoJ" (End Of Journey)

- Sedat -

>
> >
> > Masahiro Yamada (8):
> >   gen_compile_commands: parse only the first line of .*.cmd files
> >   gen_compile_commands: use choices for --log_levels option
> >   gen_compile_commands: do not support .cmd files under tools/ directory
> >   gen_compile_commands: reword the help message of -d option
> >   gen_compile_commands: make -o option independent of -d option
> >   gen_compile_commands: move directory walk to a generator function
> >   gen_compile_commands: support *.o, *.a, modules.order in positional
> >     argument
> >   kbuild: wire up the build rule of compile_commands.json to Makefile
> >
> > Nathan Huckleberry (1):
> >   Makefile: Add clang-tidy and static analyzer support to makefile
> >
> >  MAINTAINERS                                 |   1 +
> >  Makefile                                    |  45 +++-
> >  scripts/clang-tools/gen_compile_commands.py | 245 ++++++++++++++++++++
> >  scripts/clang-tools/run-clang-tools.py      |  74 ++++++
> >  scripts/gen_compile_commands.py             | 151 ------------
> >  5 files changed, 361 insertions(+), 155 deletions(-)
> >  create mode 100755 scripts/clang-tools/gen_compile_commands.py
> >  create mode 100755 scripts/clang-tools/run-clang-tools.py
> >  delete mode 100755 scripts/gen_compile_commands.py
> >
> > --
> > 2.25.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkUfOnzWH1d7-qAP-PFvkLeahoA8jZdkZEp4-PNFXL_JA%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUPTx8-kRKNJDeeqy%3D9q-KjH9qVyzk757w0XkO8YpE6vA%40mail.gmail.com.
