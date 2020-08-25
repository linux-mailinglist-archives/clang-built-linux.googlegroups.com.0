Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB2GUST5AKGQENGJR76A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAE6251BF1
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 17:12:42 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id d20sf7338324ooh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 08:12:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598368360; cv=pass;
        d=google.com; s=arc-20160816;
        b=SpTNlQbVWV45CeR6wz4vG0o6RF9hOd0iyznobUY+U95t0y9VPaeM8+UISnNeh73cPu
         d2HlqDbyi297WJnWbLwvWce00lkgXo1hIP8ASp8qRub/yZoONZTkSkAivnloOAoBWleo
         iiFvQixm3yrWTJj/rdgHTTT0dpzek8MRT0kd7sPHXBDNSa/9IR0k/xqWb38d2z+rZO/W
         qyPILhJKCfMQcA41zSKxL4BqdQghFkaI9LZXNXNB/qmIx3m7xhtcfGSwXGw2h3hyQDBY
         cjgsaOQvJwEXNz5PRspXD3HvdOqg3rjn2emF8dahDF2TMyJEQbnokNd1M8ZwG8mFUXk/
         dlog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KwMuWxjvhBoRvrxV5cvz8GngXNBfavi5cnEiBCu6ZWs=;
        b=OzYiFyim6GFZzMk+41qH/O0Kh7trSxXugRWXiJUKFUOobIb8VHad0b1OQfuV0cbass
         sJNCUQExtaZRp3NsqgB/yl15x2njfu9kEQpKOKSKCMUng7A834inUpDgiVZ8gxP47dEU
         Xrnlr2h81RES5PcJZF90ltNPUdUGdV9l3GdU+o6rAb7U8KB38NEQjfhPc9qZLKbDY7Fr
         74w5zg8L5QR4P7H4Kej+4XTi8gqcxsAd4XT100U7zoBG8czOL1gL6NFOFSUKv3OXfKz4
         YQU6KaSVZr+fQwr43EZjs/T6mlgQBgE69yZZ16CwcSWPvxnOV3SNlpM0D4V28WOr2XJK
         Cxrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f1gCDupL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KwMuWxjvhBoRvrxV5cvz8GngXNBfavi5cnEiBCu6ZWs=;
        b=JR9E7fX9pqxDp0A2CFenJ91rHCT4vGmCLdq3XVZqnOfM+aqx4l4c1cdTsJrkfaRy2k
         xiJiX3fMlVWZ9IbuWjsg0gOIrYCrKVfYPpuV591Qrlkbzl/z+s+784w2W78NqbX1lPxE
         l6o0iwlufjemzdKICNSmk82/eDkgaUvlCr83zkF7YYoe+1Z1lY9iOJmQttNdCPPKwVGW
         0J+sEYA0K78bwXZ63wt43NBgs9V8N2aRZpZ7c8TwoI0rDcGLhfW9fdr6Uq5t0Q339yfQ
         u32xxQkOmHFs6dXi1jfOZNzqJbTl9/0IWvA0l1aau+RoaKEZGr8NAwmpATKi+KQqC1DV
         W1kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KwMuWxjvhBoRvrxV5cvz8GngXNBfavi5cnEiBCu6ZWs=;
        b=QmttlKFxNOERdY9U6E0kg95C6oTtE6HOjb3u752xG3QLjqDMhDC5YiZD6SI/gkYvZN
         rb3kOra062EAKJ2lRy0Yey3ni+7ePUjQ6CtYWHA5cjsahoBBjXpM9HTURfItAtQmNuZn
         kf+9iwOh9gsdi8ZeAWtGNrdRCEm31uQPHWrK+SnKWEccW1d392DJqJuXymjyS8hStVkF
         /nVoNR0mFTjWBp/83/PLQ+PxlQUCGGC+SGTQhc22/4g6ZEqCjlECUGvf4UzwFYIOfoQj
         C9xIygaRLHQua4ZumVdioN8QLJ5Nlri9QaWmGIiPBhEQe94JnyqAHVk4sxS3Nk9xd9cG
         4qOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KwMuWxjvhBoRvrxV5cvz8GngXNBfavi5cnEiBCu6ZWs=;
        b=iPgcnBl7cMwXF8SRWTECEW6n6ThglykKYuZllq2s0Cjtnrp2nk0HQpYjAO+e3U3QrD
         310XcbwIhot9rTZIGFWPbYU7X0zEiuu2kWXblM33l8fu8wpZtlRtXg0T4WWDf69xCBZy
         bwPhmNO/qaqmP596BYSaC1BK7yTUTcKylhLUNxSzTn+j3aT/9q4bxvBXVWspTZIAEjiQ
         AzL84AorxuPhNyh/dchoVcZ652sOW7RrwvhfYU4TLajZnCwpOgku4YAmVq7ilhT5OMfW
         GmBBkckENA1OvqYjdPW7vZhjPAyKGlGCE6lkuLZ8AbpUZ6GpQxULNLBAjO5j210REjM0
         ZXJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532E5XZdurEhG6cm3p+R7IuUNP7ESaHaibhGDaV9vAKcGNtDRP+d
	zPDqhxql7zHvnL4g2StCBHc=
X-Google-Smtp-Source: ABdhPJwTymWBIle2IwmE3sqqIa1vHDcON3T5hSZsCXnZPtbB3Fo96o9TBPhmE1sWx/Gtvc510APfrg==
X-Received: by 2002:aca:240b:: with SMTP id n11mr1362424oic.47.1598368360398;
        Tue, 25 Aug 2020 08:12:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:bd8b:: with SMTP id n133ls1359402oif.1.gmail; Tue, 25
 Aug 2020 08:12:40 -0700 (PDT)
X-Received: by 2002:a05:6808:917:: with SMTP id w23mr1336566oih.36.1598368360128;
        Tue, 25 Aug 2020 08:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598368360; cv=none;
        d=google.com; s=arc-20160816;
        b=iLmX1nRADGkW00aQ8UOs4ziqo5fuAHQYsCiWx34AkVxBSjB45UrfKUY9LNF2FUZ4fx
         GyC8yvFM95o2T0aziY2S+Yq6V4bTFZu/YjfuVZL30FdKAjo1oYTCEe/EiGef/uStdHiA
         St1MVZ4OMRlqQee86Rf6dTb/7IWqQjBImlqmFAdheElljed+blYe3avwtztok8XFoAqz
         aNq/4YsyLE/AB8Nt1sHOYej7gw8drkEVwI85QiEVi7LePBT2B4lvUvPZ0SLhiiQGIsjy
         BFkpF/OYKjSCIU81XCONQSTz+llKKh/8OrmV8JKr+QkN9ESX/6bWwemX8Bqtosov6ENS
         Q6Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aRocK4qvKtnimUOKY4g9+mYHkNoHWmO71bU+rF7n69g=;
        b=GetOBnt5jOmfkc1c7NNZdCRrbE1Do9tIsW+JKJiX53wSKBwcGTR4O/JSPPngWzTX5A
         Giri40yLJPOfRMusZT3RfGCDYjXjdfHqzSpodYXW9uIxb4Dzj4oC1BeXcgq6+TfifWui
         xJxn0g147dFGH7sJDPwmvT9PvjMjqqVHttGsfKgcm+JVd0Uei7rSfGmfJjzGDdsCQF3E
         gTX2MtUsGSCnuioN+KeaCUMSFCouzjvQqVGOwseTxomzlYPmle61v05ZAGbcR8b0tbRl
         0FiTRhe6yTaE6nUl4Bnz7Hlymv5o14oyJOzVVkPhvjnUONqaNjQ4ceW7mOlhf3jHeo/s
         U6Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f1gCDupL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c142si98214oig.2.2020.08.25.08.12.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 08:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id k4so11915032oik.2
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 08:12:40 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr1373158oie.72.1598368359877;
 Tue, 25 Aug 2020 08:12:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
In-Reply-To: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 25 Aug 2020 17:12:28 +0200
Message-ID: <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: postmaster@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Nick Clifton <nickc@redhat.com>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f1gCDupL;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241
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

On Tue, Aug 25, 2020 at 4:53 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Hello Post Master,
> During the Binutils BoF at Linux Plumbers Conf 2020, Peter had the
> great idea to establish a toolchain agnostic mailing list for the

You say *a toolchain agnostic mailing*.

> discussion of tooling related issues and requirements from kernel
> developers so that we can list it from the MAINTAINERS file.
>
> Would it be possible to setup:
> linux-tooling@vger.kernel.org
>

So why don't you use it in the name of the mailing-list?

s/linux-tooling/linux-toolchains (better plural toolchains)

Thoughts?

- Sedat -

> (I'm open to bikeshedding about the list name, but "tools" should
> probably be avoided:
> https://www.urbandictionary.com/define.php?term=Tool)
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkHzbPjw71n%2BRVXuM6Wt6PNO6fiy%2B14QTzthF7MCkewwg%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw%40mail.gmail.com.
