Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBG457KAAMGQESCJAVZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 546B5311D20
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 13:42:05 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id c186sf7059168pfa.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 04:42:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612615323; cv=pass;
        d=google.com; s=arc-20160816;
        b=JMtgbe3rQ/xxga5hOkJzKWwLAQjKMDsWu093/X3AxUPfCcrjbrN3Xrb4X1DKNm64st
         loJoX3L0UCaE+D53HMJqEpMC9yRTk7AgwN6MUbOljjsM29SbmykLzIKlVW9BcZhQtho5
         9zAcdiINToQsYQ3bhh5JUxy/haTH4ai1p04+JK2d01I1J8iHHogS3ScP6nEgQwH6/lT6
         mMrnqstNgnP23TKGBnGXpOGCopR6p4yjEpyUq7hcSdQbOGcXvr6Qjh6GvA/nllHbko4q
         /68JTCLWeVXNQ/622vaucdt4EwqDvUHlOsAvnkdHcZED8FrbQqhDTov7qcwEOULfx678
         IwZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/zoKX65cMpzY8eIQGADvdXavfzikOBSZaZZl6tFKCyk=;
        b=IGtbqtq8eJt9VGmkQTIg5F1w+Frb9BlN7PR6LTG0N8dnte4iw72YydOEfGlFr9CyLr
         IErECSuyEmghHzd19atpVnhJOeT7V+Ggf33Fx5SCNWPTdsF6GMZyLPzbqitLop2kWbFx
         /VR7Lg7ikEb6qrEciOYJyRTRZo0l8iyOEKHB5MYqqFIBcphOUI8BS/jEdU0FxHnETrKK
         NVfJb0OkpzvSR2jpcs8IvUpOdOR+M2VtshtdmwoYi9y8gDsg1XU1EWn0DwZ66wdS1DAW
         3Lz9iMFglA++rJ0mv1xfa2qhk4TBCS4yjVnM0rIloJtNdnAsegEjg6RT36yJuVS/nmme
         1+Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jAj481HU;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/zoKX65cMpzY8eIQGADvdXavfzikOBSZaZZl6tFKCyk=;
        b=jCA4RXuHtLTQKcM/iYDaQEivkeiZ1P7ZqVcxykCiSI12TPJZ+/B3iTHFiSBd4aa235
         REeNTFIlhH8yppQlgNlgq4S1B0Iznpr0Lhk/YoeVXwGY08YzGFtWQWFG9+GTqoxnlXlD
         BvaZolS8JYFFqgZNzp+ott2fAInkyduK8IkBAqy1fR4GVZD8KfzcbcpvvSTnVsXai45X
         3RqPdq0uP0GlUAXS+dZYrMLeuO5pLpT1Wx7DK1Xvb/jfFOHGTFFQHlqmS+cZEAzOG6PG
         h9u3vM14sp96N7DUXF4bsIDAdojMkLkH8Ss9OfxUmx9AgpUX2ty2AvYeqG2JCWn9truY
         FWmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/zoKX65cMpzY8eIQGADvdXavfzikOBSZaZZl6tFKCyk=;
        b=qvuYJ7zZQVGbN5+aXhSBPMM3H/jcgDMv7ipWAAXYYEkl1KFyW7oG8qxxEAtn7tS1LB
         IR2FrsYtk5qNhefpaFkGcNvROE0jNDIDldvz9M1C9CrAJ5ZwEISHR119gYrw5Z79TpZh
         1iwamGzyXegvSTmBLlcI7Rx7uLP4usnEvTV/TQR/YZuGD5glRXi11x/D36kthiSvjulf
         7WmmZlFfFHNq0oC1ZC4vSYY5JV8AS7Pc0vHRNKK7wmEID2lPl9NtZTO6qSNKSMxzhAH8
         jArebvi3pLzNlY3EFvrN8JMRxwJEftJuc0NbS/VKl+QwkmJ8fNN9qsYyR/3G2sJ0PCGh
         2mNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/zoKX65cMpzY8eIQGADvdXavfzikOBSZaZZl6tFKCyk=;
        b=AIIQ/Sxya5eh3XWMaGBNr5ZSBS9O5rizkQBC+OUNUdq0e5IxQr1E+qxhPTaCV4z+CY
         oRtfibWbEpQdq8e8yAbNu45gS9yyi7Fbtp5UysTzZgjN/ertLG9nUUf7iXKYmv12UvJd
         ktrvNwYKHAV5i3GhcV/Zhy+1H0YRemH86Aja6bYgJ9YI+PZkgjvIB87rJWxc0a6BmUZ8
         XOaUPjCFb1u/09p6C/DP9ImYYumh4zrn47bUd+iSFdAT8pngFy4AX8E+7ek9dackpoGO
         12sX2Dx0gr7h+gGTbsnnnz+lj+Lfxth1M4duAeUpnwDw6OaQR9sdLoppr/vtyV2oNtz/
         r2cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530s/Bf7iMC64A2s7Mbsx2HN8fHuj0xDEO1WDRQfEEXTO3+pmIh/
	il4tRwCGg5fFfQr3IdwnAtw=
X-Google-Smtp-Source: ABdhPJy+oRvmZWxTiYBAdIfRr48TsmkJj6TnhE8O7OLotLDIME/kPSp4S99TTSI92gr207DNRCqqPg==
X-Received: by 2002:a17:902:ee85:b029:e2:9754:a768 with SMTP id a5-20020a170902ee85b02900e29754a768mr8384592pld.23.1612615323716;
        Sat, 06 Feb 2021 04:42:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2dcd:: with SMTP id q13ls5865223pjm.0.gmail; Sat, 06
 Feb 2021 04:42:03 -0800 (PST)
X-Received: by 2002:a17:903:248e:b029:df:e75a:68f7 with SMTP id p14-20020a170903248eb02900dfe75a68f7mr8245399plw.9.1612615322959;
        Sat, 06 Feb 2021 04:42:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612615322; cv=none;
        d=google.com; s=arc-20160816;
        b=dkiIndqHg+WbN5JyLU8AbEpjbUhRRscKgYm2P7v8VPCX8+jfBeihFGSuhwmI+71z4O
         qCLpKW2pbuFQlw+bgUUFvnoinZpmwRm9T4qmZz7pszVDPCLgQnGiF5JAYxNab+7OyOPA
         IJ7W1zbD3pcxDuOmqYvYNI+tPtC713hVNV2noabHk7rMmN3+j+5v/r3Qi3eqfLc9wjBt
         nU4mhq4plqyEuIb3UBf9d40o/io0MQofaJOZXXEM6JhNSOhy+gCeFYCc5JhJck9rsvvZ
         3BYJntWHKj2wyNO86TtfWiezVeCcSrF+5sSbtzj3LbiD3Dx4V5UTvIB8V7ykbHIKaNnt
         rHwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UbxfTKofRZ0zDRdPhBk7pcEJRlGo0uKnxytA8tD0pMk=;
        b=Co2IYC9Pr0quTooHIbfkQXQfGnitoJSLxYeSVoeUNcEs1I5SFS2lXmJVMe4Hawf+iW
         Jf9qHhyPam87OLA5FZNrE+9DZepDCjsO4/X4gRXOxydrYPjeYnBO/kvCixZVZhPGer/s
         /kfAqhPIBSLlnuk+0O+A5wNhgMKVNvsdp7xOifg+Qm2mmAJM8AHdQzHssdchQX+VdYcV
         m55Wr2ne8fAHUKau4zkpskNB7JqOsnupRhITG/11wBRO5zUAkZGOFvypbHOnP31p+GzK
         C770uhnMH1McbCZEOzoLB2ijJ9OQL4fAUehILBYPC0d/hjN7IRRBQgKGSfG+HS7w5xKw
         rgnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jAj481HU;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id f24si812505pju.1.2021.02.06.04.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 04:42:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id z18so8408134ile.9
        for <clang-built-linux@googlegroups.com>; Sat, 06 Feb 2021 04:42:02 -0800 (PST)
X-Received: by 2002:a92:ce46:: with SMTP id a6mr8368566ilr.10.1612615322419;
 Sat, 06 Feb 2021 04:42:02 -0800 (PST)
MIME-Version: 1.0
References: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
In-Reply-To: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 6 Feb 2021 13:41:51 +0100
Message-ID: <CA+icZUUFxpcoA8ejitXuRwXP_4NyjOr2McB3EC1qJMBeMaR90A@mail.gmail.com>
Subject: Re: Using GNU AS from a selfmade binutils v2.35.2
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jAj481HU;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e
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

Just wanna let you know, I filed a bug to Debian BTS namely "binutils
2.35.2 release".

- Sedat -

[1] https://bugs.debian.org/982086

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUFxpcoA8ejitXuRwXP_4NyjOr2McB3EC1qJMBeMaR90A%40mail.gmail.com.
