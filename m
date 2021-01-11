Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOGB6L7QKGQENFYJZ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A352F1E73
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 20:02:17 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id r20sf150473ilh.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 11:02:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610391736; cv=pass;
        d=google.com; s=arc-20160816;
        b=mtjUAjbUKLhr1uFxS8Lg1zcn8QYq+Nze3Qxji9wjwJLN/03k/v/prrhQMV9U2fR9ky
         9JZlFBx8JgFRcOR2BUUUw26lwbaz0iqseUgXcwJsft5Pv1oNo2UsmnHktx6KIdmL38Iv
         /tn2o2Dxj5gBPE97r/MMQACNy+bN933WjIVSuTIZ5XNCboc2huw2zuxFDd3Uo0WYmfqD
         zmZpBBJDhT3FooaZKU+tM4Au9lpvNZ9IzkO1OaUUwZPKwTDlyZmJ9pYgqMuC0kgiauWK
         5jBYtnY71RNejO3ymI+8A6HBJD8qiEXgdPX/issjnAGGZl+L9eeSefqmxBt/X07hrUof
         gRMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jFMPLEeDSJg9Xunua2LwWOqOL9ZXo3ElviSkcbtDSnQ=;
        b=NXJJ2vv/M90tyRvgS19mHjllV4MQuUURmO1xM0tiYaPcwqGFwJ27YFtBxQiM6mG/+I
         QlPGDn9g36Kvzvfxx2jt6831h0/M2qH1touMA0fJefY7czxUGgbbDsZpAITU5BS3rwxJ
         jfyEnUlWxf0Um04H8lnPhvW8BBA64fJTacey+Bf9vsnZynjTye4BTwNp+PdSm7u7nJy2
         3hO1Aunwsg5qGwOnxNUZ2hMijlSfJ01ka4PytAA3MeqyL51iXnPIMxEMtV/j36ITVP7N
         jcbZFI9bP/hT61ex1Q6LgJ6V1WCSzQ96qucgSICDIHbblFfsmijxlVV9UhL7t7tjhk4x
         dHyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RoBJjjoC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFMPLEeDSJg9Xunua2LwWOqOL9ZXo3ElviSkcbtDSnQ=;
        b=B7Oeg6DKro97256UZENJUe8IsmgwIxEn9kNETt5lo5RV/sDKTrDHpauAqA4L7uW6u/
         JpJ1/KWEM0T8hA3536WjNMyceJrEQ7YfpPpLL7MIMft6RYutqPHsLAa5I2onNJ+nzCye
         Nr328VBJIPqWMzXZdwzMwx7DKcZAc/TnuYcKdyZUZW9ivQND9PrgpIJqv9iqYLbV6XzZ
         hylPsdrhE5Iq8mq9T8kkXXxMwOKw8OZpUNgnq4JK8xAQ/Dm6Dewtajl/QuTzTW2Mj3kn
         XUU6QAK7zbA9fkWTlyHXp7qJhXMb9qhMopbtDNVSSIs9/BSz9AO0akehYkIIRoNbpXUI
         Ag7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFMPLEeDSJg9Xunua2LwWOqOL9ZXo3ElviSkcbtDSnQ=;
        b=Vto8arkrTXNhVdRop7K4FKTnwE5/SIZfcX8zcLITwgGlxjTXF2VvXhniI1lnjXHGyd
         uE+lmBX9xtwPq+PsI2urMof09SlPkXq/YAQPBq4QCINn8kss79soO6ZJbID2Sc3EWKcG
         QeKRHY2iUvu+gbMPHbvoo64J62AulKP9KZIS667urMGaZdaykh7J8lDdkIHcwIz1+V48
         NL9DscD4m43xbqmbjTetP0x7KMnrtjbvhJh8h8D6CIf6DljFXnjkTsh7gaYfmZ8tgVdF
         mBbFqep0D92rOZdzmfwaNC7CDSUxD4pMP7tyXNiWDS5K1hK3pZBKz74eI2iQuS1+OowH
         0iig==
X-Gm-Message-State: AOAM530gMhJ9nh3JsdNCpahwimt+D8KaRRy9xYMM458BlrtLGCHZR7NY
	hJHcufsbYRZcAAmB68JXkSw=
X-Google-Smtp-Source: ABdhPJxlLoy8tZKP41F6LpdYkhKcZXgsusiOLoOeuGTpKA042Bs9AB/xH+MgFgQk5A6reHRGiZm5lg==
X-Received: by 2002:a92:d4c4:: with SMTP id o4mr551869ilm.15.1610391736696;
        Mon, 11 Jan 2021 11:02:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1446:: with SMTP id l6ls136459jad.5.gmail; Mon, 11
 Jan 2021 11:02:16 -0800 (PST)
X-Received: by 2002:a02:c4d5:: with SMTP id h21mr1027033jaj.23.1610391736291;
        Mon, 11 Jan 2021 11:02:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610391736; cv=none;
        d=google.com; s=arc-20160816;
        b=S6kxJ08saIsnsahNdTbV55ZSRfwdNeI3JgBzGxgMXJCTtNS0uOP/p6xwxbwBSPOpRY
         YRWyG612XRyNCGU89Ie++fPV2XFvCiWcrXXgI7PVzsooZTcnBdn++qFh1i+4Ltajjb/Z
         gAO2kg7n5sUCZbXiWAPD8KoGn3XtsBp8SNyXl8sVhC1nghprcRGrRMxPmx5AjTT//hGg
         PiJiUrueI3kOaHWIH5gKNxoFf2Tg179wvzEI8KxqJ5XThQlhEnAVO3XDD7fWqWsdMsU8
         fFQ0nIjfdF3rtyqlSx/aVaqbY3QsKQzLtjCE+tRvTIIlkWJ0p+LKvPIP8+PH+FmwzGMm
         hgiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VmWK6mk1m5mm1jRcDl1g46Nc0dFKj3QYswAXMTNH2Ww=;
        b=xQackyRE3G527kXkc1BgINpw9OTZ9aMb9Z5qgTdy2sVzDJZiTcpoAhFiLXShV+R3H2
         uDHKsJNkjBIRSL3UPNpvdcmpJ29fqI3l54vL1npDDuadZzyfiRLC87hXFbLyzsNWBlRb
         25cIMF8htCZlW0w6KsDF8tnypk16M1vi2X1/4Pk3ylknkMXTpt1eJ0ivxLYQj6LxgxcL
         FPh9QWluzBxG2dBhEwfX3VDX2boQOkTgvzb0aCpNRI0vll9KfLdWn5XKQOkF8/ph+Ycc
         /z2WbN+RDC22yedP5f6WoH59T6emysm3GAj4/Ekn+XuVqEQyCBusVJ22m6uOCth76p/H
         4L6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RoBJjjoC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id e26si37494ios.2.2021.01.11.11.02.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 11:02:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id m6so514598pfk.1
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 11:02:16 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr896173pgb.381.1610391735551;
 Mon, 11 Jan 2021 11:02:15 -0800 (PST)
MIME-Version: 1.0
References: <X/wxt38gq8Xpq9df@elver.google.com>
In-Reply-To: <X/wxt38gq8Xpq9df@elver.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 11:02:04 -0800
Message-ID: <CAKwvOdk0-es1dGkFfM72ALYrhng=JGmQku7rUiSzJVam+0VaZw@mail.gmail.com>
Subject: Re: clang 12: Error loading modules "Unknown symbol _GLOBAL_OFFSET_TABLE_"
To: Marco Elver <elver@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RoBJjjoC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
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

Thanks for the report.

On Mon, Jan 11, 2021 at 3:08 AM Marco Elver <elver@google.com> wrote:
>
> Building the kernel with Clang 12 (8165a0342033) and attempting to load
> any kernel module causes "Unknown symbol _GLOBAL_OFFSET_TABLE_". Config
> attached.
>
> For example:
>
> | $> insmod lib/test_list_sort.ko
> | [   24.371421] test_list_sort: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
> | insmod: ERROR: could not insert module lib/test_list_sort.ko: Unknown symbol in module
>
> | $> insmod lib/test_strscpy.ko
> | [   33.409482] test_strscpy: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
> | insmod: ERROR: could not insert module lib/test_strscpy.ko: Unknown symbol in module
>
> ... and so on for various modules.
>
> Attempting the same with Clang 11 does not cause problems and works as
> expected.
>
> Is the problem known? Shouldn't this already have been caught by a CI
> bot?

New to me.  No; a lot of the CI bots that are doing boot tests don't
load the kernel modules into the initrd image to test.

Filed https://github.com/ClangBuiltLinux/linux/issues/1250, let's
follow up there?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0-es1dGkFfM72ALYrhng%3DJGmQku7rUiSzJVam%2B0VaZw%40mail.gmail.com.
