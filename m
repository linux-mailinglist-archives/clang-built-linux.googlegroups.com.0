Return-Path: <clang-built-linux+bncBD66FMGZA4IPFMNGQUDBUBCGSYUSS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D295938D7D5
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 01:51:14 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i102-20020adf90ef0000b029010dfcfc46c0sf10883792wri.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 16:51:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621727474; cv=pass;
        d=google.com; s=arc-20160816;
        b=E+R/4sgxnqlC5k5WCjZF4OON2MQYJwhZHo18Kp8Z7K4Hp6hGyShjfFacRNgnP9oKyM
         V8qoMGp8kafT9YE+/tgpZJeu1KRRry+SrSjw5xx6ZjunnRq4yvIw9bR1+d4pUgLVrcWS
         7V7eCyGtchid8T+VaRkTjbT7oX+YWBm6Yc+5L7c2AJowB84xUyq1MI3CoNORUSMtoj36
         8CXTZHSIYTUL4xks7Ub29R9brfWLutqs9b+Ld+BIZsA73MjyCLvPW832e96pk5u13H4M
         CZECJTHSzrgn4LHiyBxa4zRVa/JKlychbTmE3Uvkp66g597lWZL8MNAwleAeXYBlXNKZ
         3ubA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oofeZAle604wkrhgvaKtdJJAO728/bsJlPKTkw6J+Fc=;
        b=yNCbVc5GpDWrJTMUR764aV+Aqzn4iYwFZKy1Rmb8uDZg9JIjy8UWfmdrAs72pzKGIl
         rXWxJjnlPLxVC0UE7sNGIJFY///W5fjGCD9EzDvYB8iwlXozV5iEPFZi6JUDaETq/RRA
         bEOUTJrOd6gOoauZzwrGx7zRN+5ihH38As0+DlglkxPjSY81SVwBl2O1OrSyovVBSr4p
         NshsIupiRGtS3JzDQcDfFwnNW+eXF84JW2YriLvYzF/4cLPmZL5nZpgAJAkIMluu5c+r
         +9pG4aENXtJNEzsTiOvnvrp3Jaeo1vJzPHLEdOrOAsIrjf4djXEG3J98qmIxWI3d3QCS
         Jf4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sh2wWvHD;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oofeZAle604wkrhgvaKtdJJAO728/bsJlPKTkw6J+Fc=;
        b=JoQ8IU4gb5GAH9XPNVJG6RhfUSV01S8qP+aA1/qElpQBIhKS49Du4cjfMmChvtgPCv
         wlmDBcPNUySAhjg4IVYf2zX0yyxbId6ikGJ5OUY2k2ay7PC3ESvhPtfkA3ahn1JRG7BS
         zamfrykQU0ru7mrf0+LecvY7Kj0Uxbo+VaZvmRUFnaGqG0rnSWmo/XDkdh404dMdQIY0
         HHfxhQ5yg0AP8iMkkKj5rlwI6illS48+qZuxJlzOm18FryirH3jBHwujKom5yec6vhUl
         9FEYCjuF47htxKVZEX9CvYLX6LfLRa4GRXltUA2+yqYQkmzQoGepfasyZN2tnSL8mb51
         vsBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oofeZAle604wkrhgvaKtdJJAO728/bsJlPKTkw6J+Fc=;
        b=UFwKNbPS7VbyKSF0b6EWtO1oq7jialAcHbimxqDtZ/rv1VgnWgWkSQUgE5Xd4AMhQq
         p344WxBvg+xxxjP/8H6SMKmv0IrXtKVjQMWS24DOkNStrjg9VtY/inV2a4nb6X3f5P7T
         8XpBlCPyjwBM+WRcriKNXX+5Z5CDxwWs0ZchHbUXpPZ9h0f9PDgRYyTg8m9bLZaiS7K2
         ke3zXNHnxi4VBOMGapD3iB61XHeYc4fkh7tcHzdZNhBKvhliS+WCIR8oxTmoCpIGknfM
         NrlHDLITlka7VyxBGByjgsFW+yXuGqgCdnGSIvaQLxH/8BwaqtFZ6QCR5loCAs9mTwrJ
         9PKg==
X-Gm-Message-State: AOAM532FTfFSRuXmh0PSwy5Xhpcozl25e2JvU4s7QlNrWM7dYSI0e6CD
	aNwyCAMkVm332F1EZXQQfCY=
X-Google-Smtp-Source: ABdhPJzzGuhjqyl0JrAMfq5RI+B3vB9cfyAVgAsCZH4tjurFb+FXCMOmDUm1PO19ZkebHdVCwe+rHw==
X-Received: by 2002:adf:d231:: with SMTP id k17mr15192194wrh.78.1621727474611;
        Sat, 22 May 2021 16:51:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9b95:: with SMTP id d21ls1501787wrc.0.gmail; Sat, 22 May
 2021 16:51:13 -0700 (PDT)
X-Received: by 2002:adf:f687:: with SMTP id v7mr15589329wrp.185.1621727473798;
        Sat, 22 May 2021 16:51:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621727473; cv=none;
        d=google.com; s=arc-20160816;
        b=CuqzsN/ZPiUSDmdqhug/qXNxawwpCrbDguf2GofIoCYIptR/SYRtFy0LUTeacboXLt
         GRC63cxLmKZ9eQwSVRotNtJx0+V3ryNP5117ePrnrO1jhXi7rY3XStgqXy9mwDQa0khl
         1t2z+pNVv5VwNMCR9iZogfW+MHLKYo34iG6c3BvAuYf3JRCJZzZSwn30V3XdGQloyINn
         lbwjEb10sQXS/DBx6epzw5YbDru1x7VAdE9RZVVYB9SzPlBbXzuD39W0lRMxGy/vJFlG
         HTGiBJ7DmBQEzddVeM7eJUJap8kcNXD2PUAZbk5vAv4Mvh8QKIVVqaqH2jJuicFn2VMa
         XcHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oDYOCCf0w8h4trbY4PGM+YEr9dD9IiV0gScwVLCiGbY=;
        b=gIqyG7f85EMw8G3Ebb0o0s9zUeNnOgkNtpT4LxuMu2SLcDbcuq4nOutL3TRqLdr8Ae
         gICSoMVJmHj47xf2XKxR78QPI5f/fPlZOgI4IwR1AgSRrzXQHGpm/PTxfpqNv3a5q2rJ
         oujJOhXEu0tXNAQy58/oeWqZcaktMArsqTXYPsOMrC9wmGBf0hjDO1AnZgwSTRG4Rl7j
         qRgK/qlvOhNnWE2Szha2ZCa57EmXAFwdiVbkAknl54B5+7me92Ei99qXl2YENZOPi3Fl
         CottsljL7HCdfNhEW5gRPBG5sgONstIOvqH8ibNLsQ09YexT6Pm4d65Cxzs3s+U8Gkwh
         5ykQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sh2wWvHD;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id u131si156929wmg.1.2021.05.22.16.51.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 May 2021 16:51:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Received: by mail-ed1-x52b.google.com with SMTP id r11so27574406edt.13
        for <clang-built-linux@googlegroups.com>; Sat, 22 May 2021 16:51:13 -0700 (PDT)
X-Received: by 2002:a50:f689:: with SMTP id d9mr18289418edn.197.1621727473341;
 Sat, 22 May 2021 16:51:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <202105191422.2E6748C4E0@keescook>
In-Reply-To: <202105191422.2E6748C4E0@keescook>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 22 May 2021 16:51:02 -0700
Message-ID: <CAGG=3QWJD3wDr=Eji-rMcD49Mi-SyP1Tn6B63qJFyi492YafNg@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Kees Cook <keescook@chromium.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sh2wWvHD;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Wed, May 19, 2021 at 2:37 PM Kees Cook <keescook@chromium.org> wrote:
>
> I've added this to patch to my -next tree now:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=for-next/clang/pgo&id=e1af496cbe9b4517428601a4e44fee3602dd3c15
>
> Thanks!
> Kees Cook

Thank you!

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWJD3wDr%3DEji-rMcD49Mi-SyP1Tn6B63qJFyi492YafNg%40mail.gmail.com.
