Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEG4VCAAMGQE4WEGSII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C493A2FFA10
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:44:49 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id e12sf6383249ioh.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:44:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611279888; cv=pass;
        d=google.com; s=arc-20160816;
        b=RW9h6qqpqXAkxfOsCb/BaoB0EbAVJLT5EFj0U9IBTMAO6LAd/FnAOPsv1F/hRJl56P
         hc7tYEBSWHqr61dgGWAQj56/uo7wPfQmoVCpYMG3iy+yDCkwjDKVK11liAJVhIm7nNow
         lTX3c12VHlPc5Rp062k6JVw0NuZSMJEtFlYr3jR1KkA2PjeiNz1Z6F7ssecfZYI2rzAC
         bUME3Jt3oEuzrVOy52rZmy30LGNfAoSaae1MS6knRDdWKWd4veP59DzV0KHPQgFDoG4V
         jrpfXMRGavkyhC1mp02zNCN643NqWU7N8SQqW0jtk75ATIZJ6KTnqVbf/wP4I2GaYvwE
         Eg6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Dh90uz7GFHW5oZ4ZUhMf/oVf7j4YtJa0zEm4icI/vSE=;
        b=eKGK2L5TIZtu19PI7onNauGkwsBw/ly/rmlPeoF3mB002JAyX+ZPH7luDDY4KSjDFn
         mNT0+AIY3qxY4i+3HwPQ5gv4Gh4R016j8Ujy0NV1gvNqSioxz3vTYSYDYpaH2kes+G3C
         S4VdRhmmB3R38T2nWdntqJi9eeA+/N8B/NW1M5iWJqhc7diK7h+1Qlyur8Ik/lmvVxNc
         OxojCGk9yD1x/26Sqbo2U4QEAZ+V14PHDBijEO/fmc7BIRJPDbAlyXhKh/XnBcKGTTWh
         mMSKZeokvpLX+1fpEQu35EbIsksGSp0LXY+JVd9SWl6OXwLcUYBneuQR5VItx088AWc0
         k8OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a6E6wHRD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dh90uz7GFHW5oZ4ZUhMf/oVf7j4YtJa0zEm4icI/vSE=;
        b=ccBM/tZ0haujNVUOpAeRfqCbsEYwa9UQl6bVpP7+nO94yI/5ZqJ2PT2RZt4Hm9JqhU
         74xDMLnuQMMDcjNxQcH/e8j9dozrzBS3kaJwz76g9R6/2ilR2P9nYOD6NjoFC/vdqw7S
         Zg2IflAJlgbXjnlcjk9RSL6/F0t+6g++BSR9et/xycXNekIfhrUQ9N4lDozFEGN4p/lY
         YPtw+QsmhtCewp7PjoNkrDDlLcdTYjbGrS64A7YPf4lry6dte50qQW8as6598HpPr50D
         MehuRJUrc3u8aum+BD0KPj7qdZcAETvWrPmsNpTeDzax6rj74lWhScTI6qco2Y+wlZjp
         ARlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dh90uz7GFHW5oZ4ZUhMf/oVf7j4YtJa0zEm4icI/vSE=;
        b=RxTVLlAr9RYmBZttK2sFUfZVpQrq96o/6mC1BAjouqoaPoXFv7cs7ayJoV+dwPMzRq
         D3XKfSrOOCGt9QgJqzycqQY9iEZxjFm44D5YQNRMcpcUlfW6xqgiha8BOUtFhbRNMaMo
         IOAsdCXrOvtWMY7+CO5NAwlL2iO8DuVjFI5F56sYY8vkU5pHcVesp1QEwF/bwi+J8z1V
         BC4cDtKHxizuwe2ztXirjGRQjbzFp9+nRpEdB8h20gWnJZZvvvJoJvwLYMvqDlPA1tBN
         FpkQsshvA1DjjFeLgzkSXNjADvgKR0Znd5lQ64YMypt6Hcaykc8KGSiCRuQnlbd6V4us
         tafQ==
X-Gm-Message-State: AOAM5311Ef2XSvAmSS9EqTPzpQYl8TtXH0cgCneemdmQ4kPrXA4fhcp9
	AhB0Z41G8BAVLKx+qTIBsic=
X-Google-Smtp-Source: ABdhPJwWj1xjlV+/KoEsnjAg12iX/JU8UnTeWUiRJm+JeCtJlxYF9aNnTy6SzAb2zRBlZqOmfnDWZg==
X-Received: by 2002:a92:8b84:: with SMTP id i126mr2151817ild.62.1611279888810;
        Thu, 21 Jan 2021 17:44:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1c9:: with SMTP id w9ls614639iot.2.gmail; Thu, 21
 Jan 2021 17:44:48 -0800 (PST)
X-Received: by 2002:a6b:9346:: with SMTP id v67mr105461iod.108.1611279888064;
        Thu, 21 Jan 2021 17:44:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611279888; cv=none;
        d=google.com; s=arc-20160816;
        b=TYp90Lv2zk7k6Pi4g0DZbm3Iz64NeCAtxAUzlcxEjDMOL60HOdWj0eUlRL2dutO1wi
         24A7Mw/bbRsSZGHKYvDnwC9vpi0gOF0PhIkcawuXaQRK2Wq5n3LO8GtFnw/MvoL1Y2/9
         brcfjYIjzquUt7TAx9SP9FNpUnsFbiaDvthjLgu+4BmO7WtaEUp+mVDzsOVhHoawucaz
         1iZYtLjpRpBTZBQjhLzSz6pCbEw7Co6RY4Jv9bl/h5kpikrTOPKpzO7thI0A6qMGBP2M
         vAGIIlSFgHvY36yXNKIU9F3cuD/LZC4adKqiEd04PKoJtPE8EkjA+lereDGy0CEPx5fw
         0V9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c4szIhxH58SMfeVsu2cGON3xQLWlR2gAfHY2l9My0L8=;
        b=P6ArDuwMyHiVIJRJ7ZXhD6dLF1dXnKo6f1KCs7vhfNbb7Q6SCJ6qeNcbv4tb+/hk5v
         a/fttc78IbYXiefLfGuA8KJBc/qef0UobDFJyaynMoFsTcxgaSXnVBUrmRL9IMJk1zgU
         syY7Jp8sYykZ5OorVrDXueQBNXKQtKTWMng/2OvlCnCE6MnatAsxtbHedLjRPtswjCOP
         8F8ZUz7DL6n/i7bGCy8LU7VMLsunLI18oFhUGLjVeZ5wdnbf9w0KTclrkzQd1Fpsow3o
         xLuFSpHG9AyNPq3buYLSvjwu1l+N7h1D69Ut+BG1xNPBhPRkGkeF0cPsV1WDWy+wIdLB
         12Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a6E6wHRD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id b8si695378ile.1.2021.01.21.17.44.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id i7so2596613pgc.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:44:48 -0800 (PST)
X-Received: by 2002:a62:838d:0:b029:1ba:9b85:2eac with SMTP id
 h135-20020a62838d0000b02901ba9b852eacmr2304176pfe.36.1611279887579; Thu, 21
 Jan 2021 17:44:47 -0800 (PST)
MIME-Version: 1.0
References: <20210116094357.3620352-1-morbo@google.com> <20210121082451.2240540-1-morbo@google.com>
 <CA+icZUWiXMbZe5d5h6KdoHUSiaHwv7z6Rf_C2Gstmx0rbszT+Q@mail.gmail.com>
In-Reply-To: <CA+icZUWiXMbZe5d5h6KdoHUSiaHwv7z6Rf_C2Gstmx0rbszT+Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 17:44:36 -0800
Message-ID: <CAKwvOdmmhW36Zbkc0aPLAOrP8UXsX5vKkrfWYH89sCKLmE5vuw@mail.gmail.com>
Subject: Re: [PATCH v6] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a6E6wHRD;       spf=pass
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

On Thu, Jan 21, 2021 at 2:35 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Thanks for v6.
>
> Small Changelog nits:
> * Can you reverse-order the changelog - latest v6 first.
> * v4: s/Makfile changes and se/Ma*k*efile changes and *u*se
>
> Can you add a hint to this "Clang-PGO" patch requiring Clang >= 12?
>
> Can you please add a comment for people using Clang >= 12 (ToT) and
> have kernel-modules enabled, they will need the patch from CBL issue
> #1250?
> Otherwise they cannot boot and follow the next steps in the workflow.
>
> Can you put a comment about value "1" to reset the profiling counter?
> That there is no "0" value stopping it.
>
> Can you add an example for the workload test?
> Here I do a x86-64 defconfig build.
> See attached script.
>
> Usually, I download this patch from LORE.
>
> link="https://lore.kernel.org/r/20210111081821.3041587-1-morbo@google.com"
> b4 -d am $link
>
> This downloads v6.
>
> What if I want a previous version (compare)?
> Again, I will love to see a "clang-pgo" branch and maybe tags for the
> several versions in your personal GitHub.
> Come on, Bill :-).

That's quite a long list, Sedat!  Do you think some of these can be
follow ups, once the core lands?  I'd much prefer to land the meat of
this and follow up quickly, than tire out poor Bill! :P
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmmhW36Zbkc0aPLAOrP8UXsX5vKkrfWYH89sCKLmE5vuw%40mail.gmail.com.
