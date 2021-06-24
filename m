Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMW42ODAMGQET3JHNNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC1F3B380B
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 22:42:26 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id d11-20020a05651c110bb029015743a7a85asf2270205ljo.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 13:42:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624567346; cv=pass;
        d=google.com; s=arc-20160816;
        b=R2Dp6MZuw1INLps23DBLCNcqFTf4v8j8fSPJ2LBryrdLnYcBIU5tpN5WLLPJjZ6QT+
         dfYGRAw/ssvl0aZu0B1XH6IDfwi6/qeG8++jfIHC9dX4RWNGLq8KO/XnXQGmEqBGZbFh
         Zf6r5DZAaUVTx5t6F9xCVHpzwaF/RCARueiXp+MkMtNfG9GObg3Zm6kTt0lETyCbXOGq
         41N92wCDUjvFR96VfonWAKhFP6io8WlCYY0SluXz0nlD2sFV2WwS036EVHJcRWMgjVZQ
         eC3tq2YPWnoX8UL9tA/oRdE/Xd39oQRW4e+M7j17FAc5UyORUOwrpQE50g+A+uDEOp6X
         A2Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6fYrJwhXtcjlh+yiBkPVQ1jTBAvDWOztgGzqYYCWJc0=;
        b=XWs1cfNZf1ohw7jUgStAOAveEbQNHhKPr3U1TnGdKeLJLNJsa7Vf8L+7yRxgTAorSG
         Ma7NGiSHFYrkkdqFZHJphkM1av08UejHvfNEi1DGugyDXXj1cuwhjjATYV4Vmq/r8XF+
         dUnFrPzZ5brNctb+umxQ6yq2Gt2lU0um09meVYWYv7Squ7GsDp/BD1WKv33CekWvw7bL
         SkB3FDjq65wN2Wvq4hYiq6xwMyoVHgC8bGo3dCK2p+nW+CydvTcIMgBT2fOjETpbvbQX
         6n3jfk4A3UwR7yWC2tX8LEwAN0enA+QtlNk82fBcNresjQDjO7tHPmIkM3JvaF15WVF8
         SmRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PNQu8q7l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6fYrJwhXtcjlh+yiBkPVQ1jTBAvDWOztgGzqYYCWJc0=;
        b=MTehs9nbcRx7+J0PrWVVUDLmq6kYcy9jjVBzIpwEQCzcn72aQQrWkotnTurVMcL0zb
         BKnaZbquSW2bezaUWHXYCDvL4BNAL5PKy03YVHuHYL8qQSJL4IGOhZ9VY8cRTrsj0ekT
         0+bvFR/1HTVuhso/TYt7pU5re8CXQXFgrl0R1Mis86m/ZnZdtYvK6+WEzheNPRk9gGjw
         j0fz7CNxz8RaONOtAZY8xLs1j8ItHjClMAEm1RbbwtqMO3oXRY/XSL+eGrsXMd7wo3ob
         jJ8Ojq6zeaia2nSVJztA33PICJuCPm8sAG8OkTznSxPZbC+A9xxSDY44ftwIqFOR1jS4
         jCag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6fYrJwhXtcjlh+yiBkPVQ1jTBAvDWOztgGzqYYCWJc0=;
        b=nQjxgj4082ZFdM0wJ1eUQ0LIdPgZzpHTNnkOPaFYxaMJKHJMu4v65hCvzQF4QZesZ4
         yQDwEFKLT2btg1BxObxlKGbjnbeG4uB+uWDCH+v5vDN8i2Yc8Dm1NFZSzx0AjXAM2ZGu
         cDkTUPBBAsTWTeZzVylJ8B8F2YFGje8R5OuMUPcB/jaD1cSzKj4w/NG6BctLWnC4F7CG
         FVchEp8VpPAq1kvKx/9xOGpQEhMNl3oEw4uE+gjG9K/qjmckj0jSouWx0pJwbF3xHtLq
         79zkgQgJ2+UvzLfBtuoP4rEolJenWam5hcKZ7JIeTfCCJs3EO3zDbJbn72aNQVKGFcFk
         7bQA==
X-Gm-Message-State: AOAM5300BIDgrU+uhSKVhzI7Iu0HKtYwcBPH1daaKVrna+d5mnlU2/ly
	mcI/6QCxplfz2bAktmILZQg=
X-Google-Smtp-Source: ABdhPJzLne8ICadY6oi4JyE90HFVKM0/wg1ySllU1ElkSICVqJepLXu1Q1r2Y17lO9nfzb/zxuBL3g==
X-Received: by 2002:ac2:5f49:: with SMTP id 9mr5352641lfz.51.1624567346284;
        Thu, 24 Jun 2021 13:42:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc1c:: with SMTP id b28ls1316055ljf.4.gmail; Thu, 24 Jun
 2021 13:42:25 -0700 (PDT)
X-Received: by 2002:a2e:808d:: with SMTP id i13mr5459727ljg.172.1624567345246;
        Thu, 24 Jun 2021 13:42:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624567345; cv=none;
        d=google.com; s=arc-20160816;
        b=LEOleZPLfM3sagERcPEuYBRcmRLcEShV4+MQOuWjWPJ8k40kyby24JCHxkLiM2SdWZ
         a7e2nhNPD9V+AkwLTw6b52hx17STk5KxGRf99SMyu2oPiFkPCjnfX+C0bBKZPU+3QyGX
         bba5YxcWC7huRKQb7sGeyjWv9sQrlOnkdXrzTpYszFXnIOeGKJ9y4EHhA2VsKawaRGQe
         yhgR6Cgvdu4OgibDi4i8mdtswVkw7Aiv0cEST/7mrYe2ZxB9U5g1/zM148AdFfymulCs
         TYQuJpjzGcR+wiwLsHcjfQOL4J7BV8hnzBtlbw3Ptpz+EmQMnWe8smQRzUZmsBn3nrfS
         s2Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kyyGA0wi3WCbF7KN3TP9RTaGphsoWXLOow7IY5woA+E=;
        b=kx79439Swz0Etyt2cWZpQoh/Z33gadDMqVYPAcn8aSTaNPOJ9UDAPg5RKCbD2xsY6j
         BT9BdGzqLsQ4Dr6wQdF9w+fS9QsXRBywdzpqYxhMivWj5ZkGrOBf7ZpfE1XG7ZukUEh1
         +KR0YjdCUZXfYJUtNX+8P9GwuOxT4LO/WlAx0ocbkNu33r54a0fbC2hY8tnMGw0rm5sC
         s4ld9qwaoBLKQQdy0fNi/Tl2yLEVSIJfMQWHwReadNGrgt4u/DBi8AkJo2MiF9oJBB24
         viQ9R+JvsbPnDNPs4qyG1AUpqjMK/dVdlg6PqzPQA4CXbclUv8n9DElvV5aeqLhG2/lx
         VngA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PNQu8q7l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id o13si100148ljp.0.2021.06.24.13.42.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 13:42:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id a15so4709757lfr.6
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 13:42:25 -0700 (PDT)
X-Received: by 2002:a05:6512:3884:: with SMTP id n4mr5247101lft.547.1624567344445;
 Thu, 24 Jun 2021 13:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
In-Reply-To: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Jun 2021 13:42:13 -0700
Message-ID: <CAKwvOdnfjxOiFJ-STL2AX0at+yEUAiJeNWevDxxfxtBfjmNB1A@mail.gmail.com>
Subject: Re: Linux Plumbers Conf 2021
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>, 
	Bill Wendling <morbo@google.com>, Fangrui Song <maskray@google.com>, Jann Horn <jannh@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Alexander Potapenko <glider@google.com>, 
	Nathan Huckleberry <nhuck15@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Arnd Bergmann <arnd@kernel.org>, 
	Behan Webster <behanw@converseincode.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Peter Smith <Peter.Smith@arm.com>, Dmitry Golovin <dima@golovin.in>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Mathieu Acher <mathieu.acher@irisa.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PNQu8q7l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
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

Our MC has been formally accepted:
https://www.linuxplumbersconf.org/blog/2021/index.php/2021/06/21/toolchains-and-kernel-microconference-accepted-into-2021-linux-plumbers-conference/

Would you mind please submitting a formal talk proposal at:
https://www.linuxplumbersconf.org/event/11/abstracts/

In the bottom right, click "Submit new proposal" then make sure to
select "Toolchains and Kernel" under the Track dropdown.

The Content field will be what's shown to attendees.  We'd like to
close our CFP by August 14th, 2021.

On Tue, May 4, 2021 at 10:34 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This year the Linux Plumbers Conference (https://linuxplumbersconf.org) will
> be fully virtual, and will happen from September 20-24th 2021.
>
> As part of the event, we are organizing a `Toolchains and Kernel
> Micro-conference' devoted to discuss specific topics involving kernel and
> toolchain.  It will cover both the GNU Toolchain and LLVM.
>
> As in previous years, the emphasis will be in discussing specific topics that
> require collaboration/interaction between the kernel and the toolchain chaps.
> Examples of topics are wrapping of syscalls, specific features in the
> compiler/linker/etc that are used by the kernel, desired optimizations,
> features to alleviate security concerns on the kernel side, and the like.
>
> In order to get the Micro-Conference accepted we need to provide a list of
> both topics and prospective attendants, so that's why I am reaching out to you
> asking for:
>
> 1) Topics your project may want to discuss with the kernel hackers, during the
>    event.
>
> 2) Whether you are willing to contribute and/or participate in the
>    micro-conference.
>
> Please let me know @ ndesaulniers@google.com.
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnfjxOiFJ-STL2AX0at%2ByEUAiJeNWevDxxfxtBfjmNB1A%40mail.gmail.com.
