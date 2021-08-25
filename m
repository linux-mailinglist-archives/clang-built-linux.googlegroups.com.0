Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH4ATOEQMGQE63E335Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF063F7E1E
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:11:49 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id d19-20020a2e8913000000b001c2cf57d9b7sf285056lji.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:11:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629929503; cv=pass;
        d=google.com; s=arc-20160816;
        b=rtzFlp8CGbcyHqKublIIBrSqybDb1LVlQjyz9qCwqADalS+6cmn5hWRuQDNBZPOtJ7
         Dp5JuYfymLqP0uQ/DgwzOBQlxINRyg0zBovyp9EEA9uu8LDK+JHtAtaPljPm84vn1lcT
         cU6517yepkQQolBf91KNzpg2hEt3D1v8eRCZ9F6GGH74VirNlJ3hPQriuqs+cacapmKR
         RCrhQFaHFlslwI4GAcg4DNUJvml5abMM5X/D4Vxf5I+6Jlzpww3nxWobINUQnd2kfDxx
         3sEi9kupStiEWbd8z2TgTlbFnaFaQ9F7IKMRXzNLlKh27nAxwXZuuug3gQRMEGSRXnBU
         kLsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JcAp8XIjl/YaRQFdT1E1NQ98tKSj0bqTNJ21chTc5zo=;
        b=DR4UNO1RJ5ODrCKoZ4agYe8+8DRBUh0HULKSPwUKwQWFbRUwIFNkglsMCdqq9Lk2iR
         3zAYThJlo8Nxqv25UCKF9bVGSYFUFKmMch0+2fMRXZGywBQxIVFoB72KCBWkvgjKKXi0
         PCjLh29fUDsGcrO3FTlLcMlU61xLU/e5MqPV6pGKScVvTyT6G4ngPDKc3vcd4p+6rx4L
         DmzalS43fUQrlcTuPycUWfa2Lk5KHCSof+7AjW5/yfgr+AsmUEj54OqI3oIr1s2SrpWh
         Df+Hqj5cCdfHSBjFWe6xpsOnCHCONlMSmDVHycPVkWuBphSMm0Vxy3bfqBu7H5/YUVuK
         +WfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gwHTQzwd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JcAp8XIjl/YaRQFdT1E1NQ98tKSj0bqTNJ21chTc5zo=;
        b=Jk9kJT/vagQcZuN6lc4AQArqR2c7egxqC0C9Gs1Tu+xO6u+/QM0HkNeM8TLP5xzT+n
         +YbI5RP8TieLWIsopZhpif/zDp7e3WnC1TZiJxH6FrEp4wTi96ysOUO0S9jPK7B8QAeO
         QUx4073OirNvVCcfE/hCaJVYpTLeJc+u5ll/+g1myu7J7Crk9gw5UTONG151hKNlndsK
         m6SEjQ0WVh37coEoR4bEPZCKw+q/jkp0hN6l8QCQA25tpaWcCGkjnunf/2ulTPiMD+bg
         crs+JjvTDfzokTqamML6SkOrcFcmGN2pIJ9No4fk+mzvR+1suDt2sLpYF1l8l8D+qDEu
         Oflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JcAp8XIjl/YaRQFdT1E1NQ98tKSj0bqTNJ21chTc5zo=;
        b=KYv8omezXQrLJchTjUeZM4UJrdRyn8o4lYNpWNfOcrhcvgEsHw1isxapHxevyuG0+T
         tGovQjH6nz8XF1ju41Pu8CWc1BSXOqeGsKSzWnUSRldPMpmUFd/joR4ZH8sgIxm/Jrpj
         Ie79pG7EytULh0Md3m1ljBrnlR8/vYHUIQ/0/iB+Vmgtg3jU+spw3SqGhtpHrhQCj1YV
         zY8M46A8gshFqEJi9QToGMVjDTfpADPCms00VKrLY/StD5zTQXOvB9v3xAOL2me2bKKg
         QTdoBWVVUhEfc2Kym9w3/aYyUEN1rZHwqciPsgK4qdVIi4Gg2wPuJ/cnmYX4uEDBbvke
         d+tw==
X-Gm-Message-State: AOAM530/jjf4Amn1wkkK9FN1KlNzj61lB+JHkzFzY/Dpef7kTPBJUNKr
	9Jk+UdGrTaJeIOcL27Wblww=
X-Google-Smtp-Source: ABdhPJwsjMMk4v+aNxuAkDnYN3oP1+VC2+Bt4W3peAW63Oz13PFmvi3OJCFXAr8YtxlcXFC1o85Knw==
X-Received: by 2002:ac2:4f92:: with SMTP id z18mr259679lfs.266.1629929503559;
        Wed, 25 Aug 2021 15:11:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:15a3:: with SMTP id bp35ls2567023lfb.1.gmail; Wed,
 25 Aug 2021 15:11:42 -0700 (PDT)
X-Received: by 2002:a05:6512:45b:: with SMTP id y27mr208076lfk.619.1629929502702;
        Wed, 25 Aug 2021 15:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629929502; cv=none;
        d=google.com; s=arc-20160816;
        b=vV1S8vQgdf30eDy86eITvqkrGvkoJrJMv+5MS9s5bQO/WXYoaq+41D+7BGZzdU/RXv
         Qu7Ftw3AmtJK/zELFNgc+apD9ZWvm/MKPGz71vtP9eUDcexQEmc3pa2f6tuk8GTM71Rf
         siYKIe5klqcvMYMqLAx/x4Sj2W7Sq4wbF5knR/gfgweohzShm3ww6agzwT9QmtM33VmD
         oUYepYfVO4aGRR/p4MSXdm6Xm7EJ1DhpGJG5jdjy55O+o/Qks1UtRIFbLltDT8K+nK/O
         9s82A4QsWSHuUOu+3K6/l1yFJhZwCd2ZsMQUM3PKPFLlsorvXvsk2Mu9otLjHcjcT3lX
         Xd6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FcPemo/39ZZqVRJxyNaewA0Ko8RERS20Yvi6i29tDYQ=;
        b=izlPCnK1vdyruNFPOckJ52qGR/U2NI39Zqwa1Uj/EhQ3iDmrT28UKTPVUUJXYMfkWK
         t5MH5G93mpUddJ5DqpLETrJLqdgIpIdJ+w7gnvl5FhDMO3MnUiI2KvVGiL+Yu5IWSH0v
         WMOfnvV5k4FYFzXsYmHm92U8KBGHnsOjcKdE+atRbgYO5hjq+EIdgl/IE8t+6X8ReDqf
         PgVOSoNHroi0GfQDvmNkvOJLH1uAzIYF/Ou3xS32zSNaEmTY0fj/m9Ur8aau9TzamlDc
         C8AAhhkyElASwbypsC0JxIyAVX3xachtLwLr75USwvfb6qXRBXYm6eYFXmQud/ASYuJ7
         fiqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gwHTQzwd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id h20si49974lfv.7.2021.08.25.15.11.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:11:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id i28so1262246ljm.7
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:11:42 -0700 (PDT)
X-Received: by 2002:a2e:9ec1:: with SMTP id h1mr380854ljk.0.1629929502234;
 Wed, 25 Aug 2021 15:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210825211823.6406-1-nathan@kernel.org> <20210825211823.6406-3-nathan@kernel.org>
In-Reply-To: <20210825211823.6406-3-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:11:31 -0700
Message-ID: <CAKwvOdmpSh+fa-WfL4sijQXabJ32K_XvDii9Nu-JaT12Fce1kg@mail.gmail.com>
Subject: Re: [PATCH 3/3] Documentation/llvm: Update IRC location
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gwHTQzwd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

On Wed, Aug 25, 2021 at 2:18 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> This should have been done with commit 91ed3ed0f798 ("MAINTAINERS:
> update ClangBuiltLinux IRC chat") but I did not realize it was in two
> separate spots.

Ah, sorry, I missed it, too.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  Documentation/kbuild/llvm.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 06b8f826e1a3..683f8b7cca0b 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -114,7 +114,7 @@ Getting Help
>  - `Mailing List <https://lore.kernel.org/llvm/>`_: <llvm@lists.linux.dev>
>  - `Old Mailing List Archives <https://groups.google.com/g/clang-built-linux>`_
>  - `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
> -- IRC: #clangbuiltlinux on chat.freenode.net
> +- IRC: #clangbuiltlinux on irc.libera.chat
>  - `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
>  - `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
>  - `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
> --
> 2.33.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825211823.6406-3-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmpSh%2Bfa-WfL4sijQXabJ32K_XvDii9Nu-JaT12Fce1kg%40mail.gmail.com.
