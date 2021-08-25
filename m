Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEN2TKEQMGQEYSP2AQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D56CF3F7CCE
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 21:42:14 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id q18-20020a05651232b200b003d9019c6ae4sf163633lfe.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 12:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629920529; cv=pass;
        d=google.com; s=arc-20160816;
        b=KXYBch2vpG8vtVJW50dFtHWmidHh06dfopFPgxyOxy4UnTI6YfzhO0vjBqjciERbku
         nxcR/wG+bjnZtjC59I4qiJNrnPihOX/8O76tOp5Yov2sU/C9kJfjEh3dH/KV5/Q643I7
         EQGiovoy2Qb6A85Gq2zumg3HN+7AaEq4T99idC3l0AgBDZyRh0M3Tz7jmB285fIhJWUl
         0M5Tk63oCiUihgQ1XEVZLl47hyVf+xsMmwlEKkV3kt1GDZoxPiYspUssV6DtN+AQkXE3
         8Gf+xbTdZXlaZEXpT9OkEWKuCtQqPhbk37niln8IErSpbIh+f402eCXirF3kQJ7zNZbu
         RWoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GeUmO+lpyr4DfpDhHB/RAxktocwOImIgDoTtL7lxWg8=;
        b=VSbN5jg1NZ+nxmODQpKZPCA02wIIl/P7qwECslHjlTxO+h+WZRO3IcCz03c3TGU9BO
         bl9z5w+X/Azm5e83sO475eGYQdXsIg9gqomgzpHr/iA872Q5KfEweLw+5tLZd5AlpbQA
         DiI+//rOgMiWiP+88AfyP3XvE5vxxEHuXl3w0BrxTzm/j9l7bRg8YEkViUC8Upl8njUS
         0SYLI0wL0adG5+XSI+4jqvNve35v8zLSP48oBCw/x5ucqoGZfXvLHB0Y0X8iMZjRZXaH
         dHwq9MSFlyc60iDe60ez1DnB9Zy2RqvSZ6w0IWQqrPq11UKMWG7wj0PllUvVrFZpQADC
         lceQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fy7FSMFV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GeUmO+lpyr4DfpDhHB/RAxktocwOImIgDoTtL7lxWg8=;
        b=qrt3cXhD5nShE/FliyOg1ECW7fIHcvwJRIgNTwwMY5wUacMCriiIWTnGHzs573cTGO
         srPK2MZUzb00z+3YoM8b3uEdiKbjyKUlEYZucepjZ+tLoDgQZSCfOK9/slJwctuhJczI
         4OtjcEMcGedUKWXNsdnwW3Fc/bEEI8t7roeZfHOL3l+n4Ogploe2JT17Ww4nDvibNWmk
         di65UrhkzqvlYHGSVZXFaa1cFEL84F9aEQxCisTL7ZScpG2PqM4B5VjILh+GjNZZcdBV
         /YIQoU7zzpyXw0HPq8bRTOkmvgN25OC6IZ7RbKNAkeYracZP80wp0OPOQEWE6UrKfjPr
         SWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GeUmO+lpyr4DfpDhHB/RAxktocwOImIgDoTtL7lxWg8=;
        b=Ee2Z9JvGRKTPgWzMYqZha2YEBHfE1FiAxjRILuujTg2mcnwEjg9huYIIv5DyQecLte
         us9tm9YIVeVZo5KKp3pNoTN0uT7FwNfehtucahX2rT7rokDqPQweW42muUic4Yph915Z
         8APl82ws+00vQOTsZ+s4vfNs6nBB383M9RkJT/qIYjqv+Nflq/r3Vwm7TidfEHmfK+2f
         /75IXN519JSnh4VuMYROBoZq6XSMz3I40jgIkdBzqYVM6Mqi3aOP2mdjb2MT4U/G6LSm
         iLi3w0gnfndMCSMVbXZ8maFi0TMWX8nj3kM/5fkBh+sMRNrgKY7nfSazoolgZ9TmMe7h
         w8eg==
X-Gm-Message-State: AOAM531GLVX/ECNBt0TtwHYd/4phnQt69tVqxRUlObSyh1m2X2wNOKXf
	hMNmwlx8L/WFllOUF2SHTy8=
X-Google-Smtp-Source: ABdhPJy1Q11WXvcYYWa+4tj6ta1WL1FcrOVW3qWITqK+GOCIZYm1bO6xS9GbckootwyFLTCUQYooWQ==
X-Received: by 2002:a05:6512:220f:: with SMTP id h15mr1703316lfu.261.1629920529331;
        Wed, 25 Aug 2021 12:42:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9109:: with SMTP id m9ls667970ljg.2.gmail; Wed, 25 Aug
 2021 12:42:08 -0700 (PDT)
X-Received: by 2002:a2e:8547:: with SMTP id u7mr37021363ljj.188.1629920528314;
        Wed, 25 Aug 2021 12:42:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629920528; cv=none;
        d=google.com; s=arc-20160816;
        b=QBEEAVBHmwTwqaZ7yXa0qY9FgNluSiWYqnv4Qfo5FJKp72kBE3EoHojdgEYUsKiieF
         C1W++lryMnfBIc5KPnmZSwZ9ujo1169rNCkqw1VclM9FX7M79sHgqGoqZt+q/mSodv6o
         exVvsUQ8/gu+6cspM5a36dVRm0EIuKoTDPDUjDwAYXxyeG8boB4sSMRBHm120G1lhcLl
         /URLrXnSNdXiON6qas/4XwhmnaP9soE1HYAwtsUb47FpAATtvyeG9MKVzq/JO8PwS45y
         nx6DPpxJZmsqMBvMlAkmsAFjrlIH9+RSpCUPiaHqI+99H8O+xZPnFI3/74NFCks7UDtA
         6PIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e8bdCyvC7Uu9hJ+o7Jz6ECHUhPAIMpOORzVb26WnGxM=;
        b=cL7ooqexFmRE9PSsBwzqHu6303ttVZhe+uNObjEeBpXbuss6JP6imi3Em07QKRF1tG
         T2QYObHPekjG+yazVMDrTiuxNQU11AZLH8FYyRavnzYXWe7sNIjaWXSeKrBmqBnahb3/
         hC5doRzektbX154rNF8UQlTg0a4Yw/daPgcLBzhYrgSc4edYmOk54TPSLN15kN+wcvWt
         NtktbAEmpMPgo8MNPf0AvxDuVmtBjhk9kQiRMA/lnn6HwPvwqVzSDMe30iWDBc424huP
         x4hhMiXeXhg0ITXjcqd8FC1QqXBPncBOdMQLuHp3wMqcfMknJthbm2HMIlKh0bz41Mt1
         6yBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fy7FSMFV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id n6si42246lft.8.2021.08.25.12.42.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 12:42:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id l18so558889lji.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 12:42:08 -0700 (PDT)
X-Received: by 2002:a2e:8008:: with SMTP id j8mr36245723ljg.233.1629920527830;
 Wed, 25 Aug 2021 12:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org> <20210822075122.864511-17-keescook@chromium.org>
In-Reply-To: <20210822075122.864511-17-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 12:41:56 -0700
Message-ID: <CAKwvOd=A+ueGV2ihdy5GtgR2fQbcXjjAtVxv3=cPjffpebZB7A@mail.gmail.com>
Subject: Re: [PATCH for-next 16/25] fortify: Explicitly disable Clang support
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Daniel Micay <danielmicay@gmail.com>, Francis Laniel <laniel_francis@privacyrequired.com>, 
	Bart Van Assche <bvanassche@acm.org>, David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fy7FSMFV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229
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

On Sun, Aug 22, 2021 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
>
> Clang has never correctly compiled the FORTIFY_SOURCE defenses due to
> a couple bugs:
>
>         Eliding inlines with matching __builtin_* names
>         https://bugs.llvm.org/show_bug.cgi?id=50322
>
>         Incorrect __builtin_constant_p() of some globals
>         https://bugs.llvm.org/show_bug.cgi?id=41459
>
> In the process of making improvements to the FORTIFY_SOURCE defenses, the
> first (silent) bug (coincidentally) becomes worked around, but exposes
> the latter which breaks the build. As such, Clang must not be used with
> CONFIG_FORTIFY_SOURCE until at least latter bug is fixed (in Clang 13),
> and the fortify routines have been rearranged.
>
> Update the Kconfig to reflect the reality of the current situation.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  security/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/security/Kconfig b/security/Kconfig
> index 0ced7fd33e4d..fe6c0395fa02 100644
> --- a/security/Kconfig
> +++ b/security/Kconfig
> @@ -191,6 +191,9 @@ config HARDENED_USERCOPY_PAGESPAN
>  config FORTIFY_SOURCE
>         bool "Harden common str/mem functions against buffer overflows"
>         depends on ARCH_HAS_FORTIFY_SOURCE
> +       # https://bugs.llvm.org/show_bug.cgi?id=50322
> +       # https://bugs.llvm.org/show_bug.cgi?id=41459
> +       depends on !CC_IS_CLANG
>         help
>           Detect overflows of buffers in common string and memory functions
>           where the compiler can determine and validate the buffer sizes.
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-17-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DA%2BueGV2ihdy5GtgR2fQbcXjjAtVxv3%3DcPjffpebZB7A%40mail.gmail.com.
