Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEU4TLVQKGQEISKLPDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3D0A04B7
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 16:22:10 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id y25sf223764lji.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 07:22:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567002130; cv=pass;
        d=google.com; s=arc-20160816;
        b=O94TygEyaYA2ei7b7pIeHfm/2Vsp94qIFzH9mXxxirfAslNWxWE/nRGR1vEoZdXpVp
         yj/PbFWJ6u+2ROeGm+h4MQC/qelXIIHUX/Ib2p66kd9za7cKJ5QG0eUkA99UxE9uEDCy
         e7GtrKE+ZGzWIljdJkofRF17yl6m4o2QII/uBHrLFLTl185cEk2CT//DeTcZMmPWKQtv
         Yn3f81jYdSWSL2JMNknrCsMmT8IMd/nySfi29TlWgOmGa/92z/JcFAO7PALrO1DCmChE
         pYk7RV2MS9TfYOosSmVlf5gsMSGYDuYWuDJZeXQYJ95YflOtn9OAt/TbWxVp6Sk28EMt
         H0Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xSJMD7dP8qJLX21p7VTVoxNoTKmfRjmxng457bUfGiY=;
        b=YzNWYoj29OnNv9WhK/kVNdiLqz6eOgqezD6J+MSPdZcy/9bVrwvqZXrreEsodyKnTA
         feOl28AdD3w5vnmZVc+pDGNvthjp5BCHnkQqHzUg4MnrQtIsX9LZSb/hcPn7sJ+IqzhJ
         cJ2Vgju96Fg3PHUaDmE5jtmdLRm2v5izE/ovUMTT76b8Bs802/cmLu6mdJl0DKzBop9h
         qjl01CHJOZVuTE1nXx83ckYVxCs512Pywi7ukTk8NjKSllyzmme+9fxXhiK9/oSYw3If
         2P32Vvjr0J6OO9/D/f2O2/em9iOI5nyEoQd6DbhT5H1tFsJv/WmC+OWKyaxRZ5MTCRIb
         4Fkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DOCxhZ0q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xSJMD7dP8qJLX21p7VTVoxNoTKmfRjmxng457bUfGiY=;
        b=IhHf+yxKBsHl4GmkxuxuyoJMbPfyOUoBoUtrD7L59rc2sk9enoxgzhvHyXJsXc0B4D
         rtuGju9YqwSytG6wqAYbIkVVrbJyj4F5v6/e4ZrTEXzacKXHfz9j0o9KOwgumQoS9x1s
         FuOOtG39Ip2kwov7NZLivVPJLMbJ8+UFiCEeWpt8rLvcznD7ihK1hnYGQXqX0z1JB/eJ
         IIPP/yHcxgWwtErY7C5c8hmJtWi9gAU3s5jBxQeD3zB+Pe9fw0Kw9UghwnFSWQo6UBv8
         NYxB0NVS4ief0+XhNVdGZcgitb2tsccv56STK2+E11mnvFSufCulsKz+aihT8BERukNC
         OMiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xSJMD7dP8qJLX21p7VTVoxNoTKmfRjmxng457bUfGiY=;
        b=JLF9q9lkPNE0FePviPD90ctQIARR1G9W28hiRlz3uGDQCqm+sD2IrX3f0Q6vq6FpH1
         lciDUG4gkdCP7CxQz6FwJs1LkM98sbxdNHMLeO9v8ZQ/AqUlMh+L5sKYCNwYzaNsILpB
         DldmdsGj25jTlEfgazJl6VuRDUi6lFvSqUDrRrcYfRKfurT9d12qYRkGyMrceGj3VPrj
         gYhNAdVsyg5scigA7ZcvB1Y8ilPbBNBOQ3CuR/5iDxXqQCAmhKlZ5RYxM03w8nIIaV0e
         MB60e8JX/7GtiCRfebph4Qcs6USgu/EM+YbmwgE87YIT7/8Xhh11idvAFMd78eNQB9Mm
         mQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xSJMD7dP8qJLX21p7VTVoxNoTKmfRjmxng457bUfGiY=;
        b=czopGHtuFpttPSIFgIdyw5KiRG7NLIs/aJqhdMSNmu6DAoEW4Fdc8/yqo4RHv86yEs
         PcEDQWvBTnYq/Xc/wvFoFI63LjNliSIr4U+05jjT9iCeAZKQqpRFTcKg7r1Rj1MTLEW/
         8ucmUZASjY7ulNJk7JcpyK81ISY4ecGD4QY1qjVxjwv6ldlPwsBGBmGOb3yPgOUU9AV+
         Aw1XHToJTtmnVuJw7jz/VWemwfEtPmnzCRSp8LrscRqhAkxtbUaBNMxIDc9W/VgA6Pm5
         1q9oeap1dDUxY+lbjbQKIF+G9UfEdSeQP4/U31ar7/4B6IYs677A4ltI+nwsbYRwqjZ1
         yhsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+V8OtdTWhq0pqpVCmNKyp5jOXDvX0SvDjgNjfXxA9bsvxpPvg
	gWnKj+bOrlroFtVt7RiTHrA=
X-Google-Smtp-Source: APXvYqxK7Rei11pEBcsDa57nMp9cK/RMlIqVanC3kGds0SqGwjR7nCEa6m6chGNQc8lgguZqc//V1w==
X-Received: by 2002:ac2:51d0:: with SMTP id u16mr2822925lfm.178.1567002130285;
        Wed, 28 Aug 2019 07:22:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:87d5:: with SMTP id v21ls320521ljj.5.gmail; Wed, 28 Aug
 2019 07:22:09 -0700 (PDT)
X-Received: by 2002:a05:651c:282:: with SMTP id b2mr2211363ljo.208.1567002129679;
        Wed, 28 Aug 2019 07:22:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567002129; cv=none;
        d=google.com; s=arc-20160816;
        b=mALikKRUreDSfYJXnWmaErH5ThFw4XLfmOjzd1ANp+we0Gl/Gp3YGJEqFVelXFuS3z
         9IywlCVEZpf1eToLNRiWNMFzXIiucyepu753Ml6RFcJaXNt2uDZjqsYM88cshp0TMLy3
         4ZV2Mf4zEc0w3DMg8d8nnJFGt8pPv1GR1WdQM5QobBwsXHR1injgCVfmb7VKFzTrKD7r
         FL388LgOdNd2rEW4jzHneTAVGh3u3adJc1ri8mkWOmO7l8jI1u1cG4vgdup2eUj2CAPO
         qZ7XQF+9h5f9vCdLbZXQudltgm4XYtARJvLWh+Ptz4JFvbZmgYHgy/Zp/Ro1SJ2VDh6V
         8Cfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D4lwdLEb4QQKbZ9weOV4KhRYID3FQMV0ZKC/KJGyR5E=;
        b=cj9mpjokJA11Z+AElvB2Mo20Cn31QIby27xqpFV1ZsUiSYn271eliplfT6K9Krg8Oh
         kZhPsSAIGDEufn0VhLdXydYmmpUn8/am4CANt8cLRnL3uvhVvCqYrjQA1NtwthLSewwX
         epMJ+Jjyskn8BeRO2vSuSkP5PsmxEd9fC5eNsUQ9OshmVC2+l+JP6DoNp7x5/3EzMXzA
         TkHwNC0eETh1h/947IZ1lDgJNqjEuK4OybZb0Vj5BISO+vjvRiuzkkYpXTVJTAr/4Sif
         UiO3OxpNihgOnYQ6H4O0KgL2FM1obb58CSG1GLtQx8zV8TFKjpnDIJTao+rMiEOimwFr
         03Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DOCxhZ0q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z16si151887lfe.0.2019.08.28.07.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 07:22:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id f72so247959wmf.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 07:22:09 -0700 (PDT)
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr5533245wmg.150.1567002129167;
 Wed, 28 Aug 2019 07:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com> <CA+icZUUhhOLfOgwoKP4nKOdPakNJF7XafJ09ERP6r7dOUduMsg@mail.gmail.com>
In-Reply-To: <CA+icZUUhhOLfOgwoKP4nKOdPakNJF7XafJ09ERP6r7dOUduMsg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 28 Aug 2019 16:21:58 +0200
Message-ID: <CA+icZUUSVRURu-jQAnVnZwPp0qiWpostDz+WkTjxx8zunVKBgw@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Michal Marek <michal.lkml@markovi.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DOCxhZ0q;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
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

> build-time checking. For more details see <Documentation/kbuild/kbuild.rst>.

Grrr.

s/ Documentation/kbuild/kbuild.rst / scripts/Makefile.extrawarn

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUSVRURu-jQAnVnZwPp0qiWpostDz%2BWkTjxx8zunVKBgw%40mail.gmail.com.
