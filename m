Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ4AW35AKGQEAC45RUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B851625843B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 00:57:08 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id v13sf5184755ios.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 15:57:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598914627; cv=pass;
        d=google.com; s=arc-20160816;
        b=JIkGvaU2kgFEL/mY8fYZHKTsl8w0k3DxlyQR3/WBhy0eXQmApd9HCopaQ9sfHCoomJ
         HiDbUwVw7ZrgizhVTWRLvHQIPx/F/U2vGvDL6cIVkMLVYM2NshFQilEq5QLAMMVZry5H
         7tY2HTgg0w/cTV0OgAv4/drwlxjsu11oBoOo5LAWmQFOEf9pcNj0rLzNpxkMDuUxRsKx
         mpabCy8EXzHf1hbSHsGBCF9DpuupHHl+KVdMDdLfHc8VS1f3+oqgZ5Iign/hDY55awjL
         FEfLs65Is8ifBOtnIdTdD85Z0yCZiiqCDioam32+pskc1ztRPCcaZq1M0t1MWAyrSgY2
         XgIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Incpk6c96pLAT+pPgmaIwExjtWA3yG1LfYlm+jwPakc=;
        b=L7cKaSms0c1823jwGT8prVu+1TOr8bZL//ZgW5H9mKu8UBkLoayBGikTm0aFyOJB5R
         3prpWlWWTLGEX52WTfo4ckbobQXZDULi/fKvWBSyyIuPQ5AfQ3zhXWnP5nJkaGX4l+dF
         dIss0HlUjtP5igjuC1yYDvK/BM77AFdI0brQpw4Wl5vOC+Sn3DhdVVvbHSx0ZubI/Anr
         zZbxI9VB3wBJvresqND8kK0V2WQCiA1KIWN3XCIWQt2Df1GsOMbJBTEok3XLOgZ+ycOH
         FrxQWIwckxv54QUtak/sR3kiWgNJJ+53uj9lZt73OHF38phFwACx0JILT2OI+ppo7/qU
         rYsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kFsJjSxU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Incpk6c96pLAT+pPgmaIwExjtWA3yG1LfYlm+jwPakc=;
        b=tFbskyVTpNXheBbSyMZBMfQ7cVa2Gk7TTuwBGpK8e1N/JMWeT/mgX+IKoTg/i3iv7n
         xqi1OVtv3yHktxmVcbGppUEvM/FFb0mg/CqqRGNkIVPTCsl6R3tDSSbHx6JlCcLGUyjb
         XuFF8AK5PM7fwbjzC3tH57rpw4wZCEHiWR2R75kvJHAgrauDW9o8EvNPg9bq5mj4eBop
         qmI6ahzjaoWdrapn+iDtohcT7Faz4Ihbd9cUkVHifyzIgmzXVGAGkQrtqMI5hn3jV2Dk
         PHd/k62PK3kh7cDT8X9/5WN5FW3Nhp2aWbHTaqlG+IvncmMv36MRQzsqaJ3TPhI5nJjS
         Ra6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Incpk6c96pLAT+pPgmaIwExjtWA3yG1LfYlm+jwPakc=;
        b=lML3+/A8ZZu2x4elWxTZpfZShCHb8clHPBmPxbP4fVZZL9+ELHWno1UiUxaOTbtR7i
         HOFLMmFneU8jQEeciMPxRv1EbNABIogIbrf3NPSJ1//UN8xtH0uDUemSaUSJYGj7EPWH
         9eJI+DhtKxMUOMSfqV55dMKl76OSVR899QNnGj9kZTOBYF9AdiMZpuPqSUxvrBj9sIBg
         zpA8DUbfnglJZN6VVw/BTPaMPh8LDpJefdBGOzDg24YPFO+qWxn22GhRzgvoC1nKJDHt
         vUYQEVbj2VyCYO6F1XLsKb36MtLwsG7VRhTAghnBRThmB0RE+HBrRzR9VMugss4fLW8C
         LptQ==
X-Gm-Message-State: AOAM533Lkzx0xLgNM0SqRyARqTcFVVmAKolvwxDBxfPlJWtrrCoLj0bK
	y8I1MyLl1TJxgw/TV9uvE7A=
X-Google-Smtp-Source: ABdhPJySmTkuFgTskx0WU+3bsqN2x47ge8nsM1prIR9Uc25oEq0IxCawOXstINxnqg0WCTi/2sArfQ==
X-Received: by 2002:a5d:97cd:: with SMTP id k13mr3129492ios.164.1598914627575;
        Mon, 31 Aug 2020 15:57:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4b04:: with SMTP id m4ls730704ilg.11.gmail; Mon, 31 Aug
 2020 15:57:07 -0700 (PDT)
X-Received: by 2002:a92:1a13:: with SMTP id a19mr3383366ila.302.1598914627256;
        Mon, 31 Aug 2020 15:57:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598914627; cv=none;
        d=google.com; s=arc-20160816;
        b=z8rbaV5duXQqicSjvqNUh2BoztRAU/VmfKbDCG126B6tpV4JqjjpPk19oB2ZKeh1xa
         1TOTp0u7NqUxoO2P2bJrFwmYKGc5l5bLhu5hzMW4mHDIpKFyfEVf6QDUDh34pli1k6ch
         Dx+eYrCtWNbhwEHoITlrJ9GJrfNPyWayEQaGArBx0UXTzNSs8JGokLf7uJ4fpmBZ0mKl
         QUD0NTEEht9u9eE4FQWLlcufw0rAnQ/1J5qaXKzossiOWRGwKA4ikEEu4YBqZC274XDq
         mIwncck1/sfVH5PlCiJA1pML75TBgofL6CIBKWfAIafvgb6O3SBAgcOOk2BALmeWO225
         K9wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PKY+8Ly71xxDq1DkcGt/fdixLfb5Yj1aZufunrqv2pE=;
        b=sOsRob1j+hVVxam2pfMfjSEGpoyHSjNO874bJGlVXaDlE166KsIDu6Pb/C+VvAUQHh
         cS49VQhRBr+DRP7ElcDIT0KhQYxY46L8aOkNEbIXD4qBUQsn/Ez/RtBwtZwWY2RYpvNd
         k2sTuj9FSreuvEogLEkmAkWJxwWtzOlCPcQq25K3nE90+Q4L64MBPtWb11crlhqxxPrq
         mdcgfWdDRSUkOcSLVakqW3HE+IsUP43DH7zakGA9N2ptG3y2t0snwJmBu6mtRNOWkteI
         n9sBTRu9YP5eFPmOw8Ev3ewTID71wV6v3tD4hehYNcjj6DsuBFuwbMZMOtbxIa1eLHi9
         XYtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kFsJjSxU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h11si424765ilh.1.2020.08.31.15.57.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 15:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id u20so1549668pfn.0
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 15:57:07 -0700 (PDT)
X-Received: by 2002:aa7:947b:: with SMTP id t27mr3141426pfq.240.1598914626524;
 Mon, 31 Aug 2020 15:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200826191555.3350406-1-ndesaulniers@google.com> <20200831163048.0cbeca5d@lwn.net>
In-Reply-To: <20200831163048.0cbeca5d@lwn.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 15:56:54 -0700
Message-ID: <CAKwvOdmAoQU6PVF-gRaw-WjmyiQj0dMa-T3AmPaS+rFRJBk_Mw@mail.gmail.com>
Subject: Re: [PATCH v2] Documentation: add minimum clang/llvm version
To: Jonathan Corbet <corbet@lwn.net>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kFsJjSxU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Aug 31, 2020 at 3:30 PM Jonathan Corbet <corbet@lwn.net> wrote:
>
> On Wed, 26 Aug 2020 12:15:55 -0700
> Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> > small, supporting just one formal upstream release of LLVM for now.
> >
> > We can probably widen the support window of supported versions over
> > time.  Also, note that LLVM's release process is different than GCC's.
> > GCC tends to have 1 major release per year while releasing minor updates
> > to the past 3 major versions.  LLVM tends to support one major release
> > and one minor release every six months.
> >
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Tested-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Applied, thanks.

Hi Jon,
Thanks for picking up the patch.

Where is your tree? MAINTAINERS lists git://git.lwn.net/linux.git but
https://git.lwn.net/linux.git doesn't connect.  Is the web interface
simply disabled?  (I try to track which maintainer tree patches get
picked up in, and detect when our patches hit mainline).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAoQU6PVF-gRaw-WjmyiQj0dMa-T3AmPaS%2BrFRJBk_Mw%40mail.gmail.com.
