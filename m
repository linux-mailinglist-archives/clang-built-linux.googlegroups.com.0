Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJMET6DAMGQESSBJZXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 215F43A70CB
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 22:55:02 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id s3-20020ac246430000b02902f4a79c5c14sf5709957lfo.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 13:55:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623704101; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNGUK13lfwikPcvBw0dy5b5j2SipWmuyr2o11ZzzDA57yVofItRaFaI2gw+mWRCCf3
         LVc/1zX6u5CR6AVSBh+RnjW8W36ss4bCjkiN1OzBmxzDdxqSshtL63oXe9WnrxTkaflK
         aye9UwjDtDSmrAsDoHT2uYKu22UELMOT6BG5yK16UZCTxRXUmkBKNN+5NtNdypSLVlGl
         iPtKw7E9E5xnWa0OotUruvcHo65PDQST8R+RZAZH1wofvSQo6+ee6wuR8CDDHTF1inzv
         pwzsE+7dmyigbk3dZM/RAyirNBU/nzTZh28GchActenqGGd4TztSvblUH1EbGyofzlkf
         adfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RI+FTocA1kdyTbIicujsvvjZ2haN87Ypozrx8kr0YH8=;
        b=VPc10tDQrYqUkbfzhZFMrbI18cPfMPlzjvK2ecAfHKMIDZVE0tVgju1BWNiismsSOH
         kl/JCZnIsoA4n3NnAzlwIaW3TeVJB56xdgaxuqlbd7Q+7ZFxmWAqdZklbVJH5oNElmnR
         4uIA6zlAC7HYSrQDr7GGyMmTJHW0A07dwV9Gpoj6DKhE7INMwW4RGxQ7ITKRK7nuhFPA
         NWbtTKzHHJobre6p3FFj/G4yzLyIWMM7MVoT32PgMgONPISt/ys91Nzzy3hDeIgYlX6y
         JQCUIiHoQrNmomsbOIb/OVgPXuGdW3eI2YuFn2HnPaaquMn3vC1+hD/bmcv3mKToYoRG
         YBbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=plPsxy+9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RI+FTocA1kdyTbIicujsvvjZ2haN87Ypozrx8kr0YH8=;
        b=VQtbRn4rNGJL1OOcSWlAeZghXpvrSO2Sp5S7Cf72gGabTSMLpiamqjdVBHlwsJ5xM0
         uRSln8X7NGw0CsbnZ5i7zsfMkgrlZ8FDqMeHrTm/Nus5yviCS3854ElwgMXpyVoDfX99
         hXixRfp3P7+OydNdJZllSHbiFPCodA9oD350HbKmHh2skzf3SKo/ajV9b9pkYmIw78AX
         Y4jyiHp+RoWHrO0JTXAaMq7/bCLBXaWZQlAivrwW5Lf/2s1d9t93VfqvnooNx7zODKlh
         oQtlRBBydzTsHE4COFHZyMJQoTOFetb0U+woiDwlF7z+/AH2jJm1bEeMigPC3iUVUBv6
         56ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RI+FTocA1kdyTbIicujsvvjZ2haN87Ypozrx8kr0YH8=;
        b=cOMF2gmLTgZHRoCnUjPhyqP9CCEK8ZrtOzM3poenZKqoWIaI5GqH8lO1bKk5a21Diy
         6yyWdM1t034UnwpNasQy9zj2hNo0YUmuuUdHn8Jmkoe0/rcbm1AEY2Pq1KCJ2Ix8TKsJ
         UTKGhoD+2nviMwZ+PnBrIstyPmP0VqpB7POr21TratRvrV/VGIo5dMboT3KlB7pqPvQJ
         +jNBoh6UI7ToCmvGAlGZgx5SJ6OlVIW764Zzzd2iO4MA0s9n89hpC/xJiWiBF/aiiF2m
         eALXjKYPjczy5x0dnPPv7dyha4uATRmCV6gqvG3TQXn237AMRiAwdCmWD7RpFdfe1Djt
         gP+Q==
X-Gm-Message-State: AOAM533RgetX/N3ehA5DU2ogjgyIIiZLO+KK4nv/5t3REfIdoEKiLBz0
	Yo7rMWv6Vn6U2A6R4tgOj70=
X-Google-Smtp-Source: ABdhPJxi2mMFrXDtVmtWxlFujMEc5vJXYFNZ3m8mRcjBwiW7UfEQMsr9v5g4ThE8VRwcOTBoORwNxA==
X-Received: by 2002:a05:6512:31cc:: with SMTP id j12mr13367282lfe.158.1623704101645;
        Mon, 14 Jun 2021 13:55:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b09:: with SMTP id u9ls3511339lji.9.gmail; Mon, 14 Jun
 2021 13:55:00 -0700 (PDT)
X-Received: by 2002:a2e:bc1b:: with SMTP id b27mr14985206ljf.65.1623704100657;
        Mon, 14 Jun 2021 13:55:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623704100; cv=none;
        d=google.com; s=arc-20160816;
        b=oKyc0dBLNMoeCH+SAv7/YzCMfGrFXX+grycLvPIYthatZoS7j0QgyCUpO6L36Js8BB
         coZp67FDSaE7loFVCHIYw0S6TpAP0R0G6fIITOvcKLRnp5qLalAnBKEu7D0im6YS+UFd
         LAu0h/t1Ao7NvZNDDbTQkssobBPR52OZqkR9PUv6FRy71Undwbvcb5QADZVKpCpsx+GS
         4eRaExV0KWLWw0jlNbZWwTi9X7VSzjPjvGgbXNKyjH7JB0FOv1CFzB8zGf+N3M+ojPAk
         IFhz6scUDF7AUPuWApWogniOiNEEJyN5/d9aDPGL8fIbHdmBEsX7KG6o5dli+5PmKw3L
         DILA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qBa3/WQ3AGZ6PKm/jM3ch14S6swJuVHrhcyrw+AJEwA=;
        b=Mz1MoKeIOaIl6fiURQspRKRIWgCn1Uzdoaazgak+niWAJ8FjtOpo4FnJYCwoJu2odU
         oNvB1mLyZLbJbzdzbkNixQCRqISEvIU6v2s1GMUv4vRR0Sn2JtSqV+3IniQHfWMbxGzk
         AaH0H4B8UB0mGh19WXaOaZuOLY+981yZA+dnXW0wMMdgGXyMEGrHkMEIDRlWJmiXjYce
         3e/4RWjCYOelNHxAEFDxV6dMs9hdR7ofM9TdMO/3SlJj0AeJy1fXakcrVCTUS82vyThe
         gwhhI68hE58OmjBOgJl/3f0PTLk8f6pZpXqzoZYw4/ZZvPKobtfu9TGW3h0hTbHY+NO2
         UQ9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=plPsxy+9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id w3si21667ljg.8.2021.06.14.13.55.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 13:55:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id d2so21881752ljj.11
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 13:55:00 -0700 (PDT)
X-Received: by 2002:a2e:3c06:: with SMTP id j6mr14789034lja.495.1623704100254;
 Mon, 14 Jun 2021 13:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <7631bab7-a8ab-f884-ab54-f4198976125c@mailbox.org>
In-Reply-To: <7631bab7-a8ab-f884-ab54-f4198976125c@mailbox.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 13:54:48 -0700
Message-ID: <CAKwvOdmWYuOqOp7BNjaLM5p+Tumvs+N2iLe23PYEz-WsXU=-fA@mail.gmail.com>
Subject: Re: [PATCH 1/1] Makefile: Pass -warn-stack-size only on LLD < 13.0.0
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=plPsxy+9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Sun, Jun 13, 2021 at 6:07 AM Tor Vic <torvic9@mailbox.org> wrote:
>
> Since LLVM commit fc018eb, the '-warn-stack-size' flag has been dropped
> [1], leading to the following error message when building with Clang-13
> and LLD-13:
>
>     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>     '-warn-stack-size=2048'.  Try: 'ld.lld --help'
>     ld.lld: Did you mean '--asan-stack=2048'?
>
> In the same way as with commit 2398ce80152a ("x86, lto: Pass
> -stack-alignment only on LLD < 13.0.0") , make '-warn-stack-size'
> conditional on LLD < 13.0.0.
>
> [1] https://reviews.llvm.org/D103928
>
> Fixes: 24845dcb170e ("Makefile: LTO: have linker check -Wframe-larger-than")
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1377
> Signed-off-by: Tor Vic <torvic9@mailbox.org>

Thanks for the patch!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  Makefile | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 144d4f8b7eb3..51a1b6b2c2ab 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -929,11 +929,14 @@ CC_FLAGS_LTO      += -fvisibility=hidden
>  # Limit inlining across translation units to reduce binary size
>  KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
>
> -# Check for frame size exceeding threshold during prolog/epilog insertion.
> +# Check for frame size exceeding threshold during prolog/epilog insertion
> +# when using lld < 13.0.0.
>  ifneq ($(CONFIG_FRAME_WARN),0)
> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
>  KBUILD_LDFLAGS += -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
>  endif
>  endif
> +endif
>
>  ifdef CONFIG_LTO
>  KBUILD_CFLAGS  += -fno-lto $(CC_FLAGS_LTO)
> --
> 2.32.0



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmWYuOqOp7BNjaLM5p%2BTumvs%2BN2iLe23PYEz-WsXU%3D-fA%40mail.gmail.com.
