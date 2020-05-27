Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWGGXL3AKGQETSJE2VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 248E41E4BD8
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 19:28:57 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id x128sf9409951vkd.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 10:28:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590600536; cv=pass;
        d=google.com; s=arc-20160816;
        b=j5xfj66ebcCvuGucXPbfdFg0tBzut9DmfgQ3+dz5PbJ2tObiwfaijRYE6cxPOqKiiZ
         PbBnzJalFfjQRD216jRXbcEuso9Zx0/5u1BcPUAU5tyRa+90y8I5us3T8gOp6Uhauil1
         AfpAJCa6KK16wX/iB7cQwsVtTMaI9Nb2SVhK6nDuLIfu0rseITfb+1mNUdA29hVNKKbp
         H1uhomMEd/oE6bdg5rglAalnIoYjekJYbScuyiqT6u7iQC4QpT1Ve6avZxblBIY/tt3Y
         KF+8kdoVWzqgfaBDA2f8XCYIT3X6QbS3nZhBJeZLH2HS2jU/q9FbVbGFpPaDrgIvErQ7
         vC9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1jreW1Yru6ZnmYZTAKLvJ3vK4tjnUeJa88J4PuBaMuY=;
        b=jq1P4Le1r0MJFsPeByAc8ZByqSyc25dUoN3CQXdXuFNNZznkkORKzQehkdGGpOBIu1
         vPuxNFFqXVEs9RZIYLiZLOQutEdDmhVHYxvfIqAc+qCjcxZ3wssTS+bqjZXEPP9FSmlg
         S5oDXewRCI6m3w13WXqHwIV4qp4fHobanOIYqHtXXZxrIZhBSghVgdV08LGaeNK3ADzH
         vt8FwFScT+MsM3bXHkxU6eE6AiqFxNjkLvW19KB4IzkP7plc0Q9JGZZGn0cxKaOd3tZG
         ixBRQrU2yerZo+TY6vbCQbo4e1V0waxoz47emBwX2ImZas9nKe9/6+r6yukyvC0mfgq2
         jHVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ky1qqSC8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1jreW1Yru6ZnmYZTAKLvJ3vK4tjnUeJa88J4PuBaMuY=;
        b=SHrpnNn2oRo8eLXeFnEAoQjjhZ6ZBB8QujswTZdTuDcabP+1AlnS7Mn7r3yGVh5uXE
         LEXEfFjSTYfzNzkiOlTvofoELkrOzYiIc8NNCMoSHeOKbJftmK85E+vcKsaHDMRqeJek
         R+kkdKvX6VnN2icaDd2AFvpGISKvMwSDYhu5HSG1PnTQm7ssuSZFbr3EmDscqzpRO9zT
         t5YmECtN6LnTPiS7nJAT5bYXko9/SYmFJcETUJicyu87DAhRxnWxEJOAfgccyMRmzBT0
         r59j2870It0DqvDn3DSL0zJHDxmaa6z0jh4GPBnP49C4MAk0yHHI6mfUR7JfIxVVyj2l
         3VAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1jreW1Yru6ZnmYZTAKLvJ3vK4tjnUeJa88J4PuBaMuY=;
        b=Y7cc3F3zENZSyQyy5lCc/QjiTLgACTaS5TmOUeSEL4FGNRG+SsfHUENAaSQCrufoNu
         GViMLQPcQ+EppZngEof8R+Rpfz+MV7yEkONY/R4bWhsAHjlsBdgQqAvJ6Wkgpi5V45IF
         lblrkhdeWwpw/koBK/iWLCTcMHNM0udALBANt3JOYvzj4B5ro9VCuodr+Wa7pdZ3eBDG
         Ij4+l7ja+pUGhxgNGsxD6XTguQZK2WjdoUJpCuWWnO70arN0ROes4aAP8+PEpNtZli52
         XUR7/t20n6vWeTYJo167fF4Ieu6qfqUJjm0LJsoozOrCvxZRFB8L5cfRXzZRK4LmLo3q
         /+wA==
X-Gm-Message-State: AOAM530i3AaX9KVtWC1uPEhAR1kZPA/MvGuRgwZOrRHIVrbWPXpGyzra
	jgAl0mhkqfrq3M1pIjCF/n8=
X-Google-Smtp-Source: ABdhPJwz0q0NHhL2tdMEyQymcFGq2ZUR6WhSBS9sXqDom7kqY+OHqY+XMvf1kdqUtA4nJDf+fIcLaQ==
X-Received: by 2002:a1f:a8c7:: with SMTP id r190mr5812895vke.7.1590600536118;
        Wed, 27 May 2020 10:28:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7608:: with SMTP id o8ls1039928uap.8.gmail; Wed, 27 May
 2020 10:28:55 -0700 (PDT)
X-Received: by 2002:ab0:548a:: with SMTP id p10mr5617025uaa.35.1590600535802;
        Wed, 27 May 2020 10:28:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590600535; cv=none;
        d=google.com; s=arc-20160816;
        b=S6UP3C4Khd31xHb73vi6Y+dH3XBRTZ7gW2mfWp1wYLZKgLNodjiyrva1RRALt3XeCD
         YABe1HmOSHKQf2F97oMO6RJiQ6FxEmzZUQKXypqawIkXWSewxWHhlGw3tB4rk2BM8WHT
         4rw0sBFjBYvyBc2fVwEJh3bernXbzQTlfxsX/rA4Q6nL8JpmUbtHiSJO2PidNXYxpFfD
         GHnTDZHFEnJesqf5RdEqCtjfhM3iV2RvtbTw0YQEgujhzD+IYmS9caD+EDZEJY7btAf+
         QiL6TnECxKQD+6u3/fRKda+lGdH4nT2V6f5gNJEPdm7nm/RT+QoLmzRQdf4ofPHaQvK6
         +d8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tFnj+ie2MtneCS/evX/ZluPtSFLWtigbTQzNUbxK00k=;
        b=ZP0fiXbLwBCyoGZttmN8Q0vOjKbaI/g3htFJvIuDEQir4nHPr0COMBPKGBnDruzoGf
         JcHls8JfiWuI1WEpHFKT8lWq+yk5w/WAuIKzrWi6g/DUCFAI7MgnfQagQgtHecuPhwh0
         bKx6AIQ1H5OxbJxSvq9KzFgkHyh8UlIJVdLzxj8PlWsvi827HWTBtCLf9SHcjxdHQ9AW
         x6/4fCQcKG1XIzPvhHP5b2Eu9s4Vfc06vFdzCHgC2DVk8BIXhDBTI5AOUCjIvVRc1APi
         +TYIgdLm7bSVcJQ/PkHGBC/xcDHkmZnL7L0fAukHZ5XeDgo45ayKC6JEW49wrolw3sOF
         4BfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ky1qqSC8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y7si228141vko.5.2020.05.27.10.28.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 10:28:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q16so10364775plr.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 10:28:55 -0700 (PDT)
X-Received: by 2002:a17:902:82c9:: with SMTP id u9mr6827669plz.179.1590600534489;
 Wed, 27 May 2020 10:28:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200527134016.753354-1-arnd@arndb.de> <20200527152406.GD59947@C02TD0UTHF1T.local>
In-Reply-To: <20200527152406.GD59947@C02TD0UTHF1T.local>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 10:28:43 -0700
Message-ID: <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
To: Mark Rutland <mark.rutland@arm.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Fangrui Song <maskray@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ky1qqSC8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> > clang-11 and earlier do not support -fsanitize=shadow-call-stack
> > in combination with -mbig-endian, but the Kconfig check does not
> > pass the endianess flag, so building a big-endian kernel with
> > this fails at build time:
> >
> > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> >
> > Change the Kconfig check to let Kconfig figure this out earlier
> > and prevent the broken configuration. I assume this is a bug
> > in clang that needs to be fixed, but we also have to work
> > around existing releases.
> >
> > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> I suspect this is similar to the patchable-function-entry issue, and
> this is an oversight that we'd rather fix toolchain side.
>
> Nick, Fangrui, thoughts?

Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
Thanks Fangrui!
It seems it's easy in the codebase to check the specific ABI, which
isn't explicitly LE, rather than use a method that checks the ISA
regardless of endianness.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn637hSboMnMV%3DS5f1wbiEnc6qtnrn%3DfpeCGtvr2W_Daw%40mail.gmail.com.
