Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBUGO4KBQMGQEKYEYAAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E3A3613B3
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 22:51:29 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id f4-20020a1709026844b02900e90242e95esf9350114pln.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 13:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618519888; cv=pass;
        d=google.com; s=arc-20160816;
        b=zIQ5+vnNOuA8bliE5N56tYZ7nSlOWPr24PjYgMtiuoPWN7lgy1DZaCoOje5G3XSxAc
         L7tHrypYjiZ6IkR/wdRd4m5SccnIdFto6cYCDmomchIaa9HCtWTWSDVKMk48zFXboEMf
         UtnAIXIC63PluI//6aFaQYi3U5p8DobW+28u165nrZD7dM8Llo/dUOalQYMtYypC4N8R
         kV1ZCjrwBn8ddqmwzS7kgkZocLP2F3/KV/EUC8VzvDIsZPXYE6G5zy3hxPWzvCm25Aue
         bHYXtUdzpvGogsb0WIPfDhSzYiq1MPtqZtnjIpbT/ZrvOGXLb6isGA8uMafaXP9pqy8i
         D7oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=uiKHLxaz1ORaYjQfXjyGySL7MtMCxT2w1aRjXI694V8=;
        b=L6Ked8XZVEySdspdSpKTv6ZLxt7n5fRBLCmsahWONeCb9/FTR+yxoy40cehH7sSzJB
         PnD99vOgS/JLN/Z79pmOSmsGbjxoIkdA878WphyAlS5ZlcG14dA+ij/TayFJvQn526a2
         M10yLO9u2VZ999J76OPDTDNL1nbMtnHuJt3Mkt73DR9Qf08nkdJT0qla6hFA0akzuAUo
         YQqBwk4/kqhoGvyWcACMQJKXXWXqkVe7yu3E+PmasMt5r4k+MPDYYaf+2SLQUfxKDi7t
         oW8HkqSsVn+5geI3tzbyBve74Byu7cKjtKC/SMJRMtRE9MwaZjIl2uc7Vh/SB43F7ztr
         +Zew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lwn.net header.s=20201203 header.b=F0xisW+Z;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uiKHLxaz1ORaYjQfXjyGySL7MtMCxT2w1aRjXI694V8=;
        b=gAQFFSW28MVXiAZEaE+nXXGb210XuKv5tRpBpFaSEb+tCk5igyvU1YEYP1cIJpVsEC
         FHrT0nZvrQwaVqtYN0Sb8oX5A6dYtvRdUtii4qxbn2dPJM8iCm8ooLssNBL+qo8oQuc+
         lxsvkULR0Kgl4KX2epM/GBI15QFwlqSIIL73jMaMF0cOUCtKz3H+zf8Ab8jYP51rz/xP
         OeuiW7LidR6vvg/H1TawxCyhR6CLtYwAoX9sM4mpIUZWN45rtMqV17SC77apGF56rBh+
         GcyC6vQqSbNKT/MwRVuK0Phtx56FL+XjE4VcDHzP9YXxvYT6uBCKF+9SP7jpghLqnkfR
         8Huw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject
         :in-reply-to:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uiKHLxaz1ORaYjQfXjyGySL7MtMCxT2w1aRjXI694V8=;
        b=T8uuiSLslMH4/goCidbggeDz6xYSXNCGW1vciz7FhjkFpcNW3LV3DMe0jn9nM8aXkn
         rTDJe5DaHsjMui1cjFnbgm4WQWHL9x/G0Z7+u/1tIB5LvQPRp5BfvGkDMqmwlmW/DLHt
         nJK/hKW7GvJgKlPhn6bT3l9UOdsAH1aJ0CCKwKNgOh1ZC4S/MUnENz6rSRImP+nHtytt
         yENVeTzKcljudFZ715PB0bb05TArgRdNiSJDrxPeY9aUJu2XjyVC0DG0fw8kGo19Y3xU
         qO4LBS4vOgLUhJmqp2HrUhUY+bFEE6aSWgx5vCaiP+JbHzkpo83l6XO3yCYnX7lp3mFz
         +uDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Xr32jB/bdiGAhuO9tae66OYm/uZ2ZEsNTQXOxwY49kuKA0LJP
	d1vUb8L1O55NBR5cl54/o80=
X-Google-Smtp-Source: ABdhPJyKPAMM8D9IRrKjh9nnmi2S0s9K0QC+a0D6fo6nv8vAfTHlvXbVmxoQyw5Jw8DjLfdNnGkvGg==
X-Received: by 2002:a62:3201:0:b029:211:3dcc:c9ca with SMTP id y1-20020a6232010000b02902113dccc9camr4833826pfy.46.1618519888556;
        Thu, 15 Apr 2021 13:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls2805951pgl.10.gmail; Thu, 15 Apr
 2021 13:51:28 -0700 (PDT)
X-Received: by 2002:a63:df56:: with SMTP id h22mr5156688pgj.84.1618519887978;
        Thu, 15 Apr 2021 13:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618519887; cv=none;
        d=google.com; s=arc-20160816;
        b=a9hMYw0d94P99TmGSViO2oZuanh49HIVFAOu6EssI6khKph/KTqxnZgOOYjSBni7fN
         TBr/ZJUrIfcgUTMoHZ+Snr9EWTo/8oWX38+IMEVXNukSm0mWl0jVIbfXYGimZ8bX8Mmm
         8i2Hz1qvSEROmj0cejd4JL4MH3oO2NRGL+9KREm1W2ucLznW4JJ5Gtockz6bUQAHKQyn
         FBwzc0a43+/ryvdeX1k/BgTtWOGKsYekhDo7Z7LaRUwWchw/0PqO16A6R9WYqe0547OE
         TiaLvJ2KAsgQeab0Idhff0azpmflI+2Z7rJF5h4V0QwudeFzZ+Dp/I5LmisyeODW7Msy
         RmGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature:dkim-filter;
        bh=WJNXxMnf3o1Krg6cX9lLd+A+GnhL4P/2Sm5O0ykWVPw=;
        b=eYAb0+iv+DBiu3sO19A8vvHBGBX0M+AhCzwnekT+6dEE068ErEsBzhj/1MKSIfZGlv
         U01p749JOXklZnXMr0Nk8VXgm9O+Y2C9XG7vmR2lT2sXpsetIhlg2WYFjsQU7KBsG6bk
         r2Bn4yO8QB8uDBjhJW0RSfsd3RBaOCcpL/RB/sQ/SXkqB0JSoOViBfFIvuAwsH8GUnN8
         ajScB/AuK0oWLwBuXofjnNf/wQmE8a9D/ZSlNKB85ByQ7+tota+vHC4m8Hj+imaW6nuz
         +2HpgIT0dWWdXjCU1+7VHdASsa0S0WnOsCRuLtTcjw2jeNqpVUPEbUO/voEyzdHjKKyX
         80nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lwn.net header.s=20201203 header.b=F0xisW+Z;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by gmr-mx.google.com with ESMTPS id b14si320354plh.1.2021.04.15.13.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 13:51:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from localhost (unknown [IPv6:2601:281:8300:104d::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 2B8FF304D;
	Thu, 15 Apr 2021 20:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 2B8FF304D
From: Jonathan Corbet <corbet@lwn.net>
To: Wu XiangCheng <bobwxc@email.cn>, Alex Shi <alexs@kernel.org>, Bernard
 Zhao <bernard@vivo.com>
Cc: YanTeng Si <sterlingteng@gmail.com>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH v6] docs/zh_CN: add translations in zh_CN/dev-tools/gcov
In-Reply-To: <20210415054304.GA26689@bobwxc.top>
References: <20210414082316.15160-1-bernard@vivo.com>
 <20210415054304.GA26689@bobwxc.top>
Date: Thu, 15 Apr 2021 14:51:26 -0600
Message-ID: <87a6pzi84x.fsf@meer.lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lwn.net header.s=20201203 header.b=F0xisW+Z;       spf=pass
 (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as
 permitted sender) smtp.mailfrom=corbet@lwn.net
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

Wu XiangCheng <bobwxc@email.cn> writes:

> From: Bernard Zhao <bernard@vivo.com>
>
> Add new zh translations
> * zh_CN/dev-tools/gcov.rst
> * zh_CN/dev-tools/index.rst
> and link them to zh_CN/index.rst
>
> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> Reviewed-by: Wu XiangCheng <bobwxc@email.cn>
> Reviewed-by: Alex Shi <alexs@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Wu XiangCheng <bobwxc@email.cn>
> ---
> base: linux-next
> commit 269dd42f4776 ("docs/zh_CN: add riscv to zh_CN index")
>
> Changes since V5:
> * modified some words under Fangrui Song's advices
> * rewrite beginning paragragh since Bernard and Fangrui's advice
>
> Changes since V4:
> * modified some words under Alex Shi's advices
>
> Changes since V3:
> * update to newest linux-next
> * fix ``
> * fix tags
> * fix list indent
>
> Changes since V2:
> * fix some inaccurate translation
>
> Changes since V1:
> * add index.rst in dev-tools and link to to zh_CN/index.rst
> * fix some inaccurate translation
>
> Thanks!
>
>  .../translations/zh_CN/dev-tools/gcov.rst     | 265 ++++++++++++++++++
>  .../translations/zh_CN/dev-tools/index.rst    |  35 +++
>  Documentation/translations/zh_CN/index.rst    |   1 +
>  3 files changed, 301 insertions(+)
>  create mode 100644 Documentation/translations/zh_CN/dev-tools/gcov.rst
>  create mode 100644 Documentation/translations/zh_CN/dev-tools/index.rst

Applied, thanks.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a6pzi84x.fsf%40meer.lwn.net.
