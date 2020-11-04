Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPP7Q76QKGQE2GPDDLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDEA2A5B8D
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 02:11:27 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id l3sf5894509ply.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 17:11:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604452285; cv=pass;
        d=google.com; s=arc-20160816;
        b=CrWRcB1hpVJGdJrbiGQzmODcwvtvFlvQt4GmdRpntJOV1DxHttO/0ASzGlrxOSEjyp
         34GnLt+kZjY6qjrvxl0GQaGFpARx/eJ75ZevHeIFu61zul8Wv/v9ZI4R4zER39MC72mN
         NCvE2bCz7QBmeKhbhk7QVt4lkLWajlgfUvWkXg9/MZM1vN4dUVsk0c4Ygpiljv+9cz+X
         Oa9kxbgZlTsXsU7Tr4V2kC5bqDwZFcpAHMT/iitiEi6h4kzMCGrvVuGajVhXVvrTNpEM
         TQ40E3XpnhJjlsyTMfuahGXuFvg1E/2FciSLdVWyDe/zdJGwVnZ51kpN/v46REiaVQq0
         JUAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7KNTrsLVkeTMoBcgBJynXFdWFDMfO/z0WpQ/YGCcTE4=;
        b=FvxQWAa3FAX4LqucGxck27rVZ0fx+3pIzu3URQf/JpMHu3fzhuJKqisyOWl9jCFBjt
         RZiApmNrhjjmlYFsCPmouWKoo4/JaNxyTZ+eEDdHlwneLBgpv1qEP41j+uIPh1eurixI
         XPA0ASCF8wCHCBdTA/HFuvPGR6ws1uZ8syEHeqlt4OcRFY3xzqeHZtZ8En7tzR7DWZtW
         q3e4kzwFX0nRngXYlAo888A4f+N5NF1skgX2aIM2GYF7eu+IdpfzLPsvKnjmC1B1tPrf
         HqZ+payflUgN5bUmrDdx8Ne6lEC+SSUvrJcg/72GaPd0HgzSgshfpEW3VXoEG/k4OrOi
         KTpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IwjoCjX2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7KNTrsLVkeTMoBcgBJynXFdWFDMfO/z0WpQ/YGCcTE4=;
        b=KKnmoVyLh/XkMT7pbxeuIs1UCDYTlX8lsmmD+orIeMLxifsWptXV0Nt7MaAuago9La
         GHHUty5GXEqse+J5WUJ8T1Bmt3IwukaoNMcFatIF6y4eZnx/Btm380o7HKKplmbXhdye
         igVEmdTVrQIGgkSGhi2pD8jKDshEZ0jLl6gCeEZSFRlGyGFsWnW/Dai5iXazSEgutp43
         1oRmYk6nCGcR1pGdLsJJy+7xVgwKlnJUgIoXJMBtuRu8oohvGu/LRCC7cmMAxGRx7fsr
         R2wx735XRs33z0zadlpevOUL4VaZjlgwzwzHhI7fCD+P8AS+Ypo6r4JthFt5M6OAoAn+
         ydcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7KNTrsLVkeTMoBcgBJynXFdWFDMfO/z0WpQ/YGCcTE4=;
        b=mp4b8jOayukeCcMSJy4MhZRF/HQ/xV4j2nEsRpucEq7dUukqGaXEVLVP41mW4F/jcT
         OP+/uKJBShHkZjse8X28++4FHJdEOLrkqYQzeLqnRzQAyGqLR6kg3uUp2B9kPiKYXXFf
         tCJpOkKpyl+03acasslJmSNyEcaNY3J78WOmo3ssyaGaCZrk10lxKhPlAClzGBJq86mp
         qZXwS8IzCziDFi+LxSnATeIGT7lRuJKGqQILZMgr11FJ3bvR+g6IradVMP9NX0pFBzCG
         1oEfCbtsriA25A/4VCARSBCs5bY6BwDvuI1svKjo3PegMnAL0nSO3cBsEnqh/YTLADy6
         FSpw==
X-Gm-Message-State: AOAM530RstE5JsR3E5pZNDRsduDGA2/uHPml6iHsCspbhNeQwqK2jjOw
	JwR9yBBa/+myzMUa5/chjcY=
X-Google-Smtp-Source: ABdhPJwqbnFPcaWT7BfuiolStVERxDajQnVrb/7lpU8gCozF56GMD7AGSn0RG9Tkl1qYZrHAoCDGKg==
X-Received: by 2002:aa7:928f:0:b029:163:d44c:490e with SMTP id j15-20020aa7928f0000b0290163d44c490emr28225807pfa.60.1604452285738;
        Tue, 03 Nov 2020 17:11:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ae08:: with SMTP id q8ls209443pff.0.gmail; Tue, 03 Nov
 2020 17:11:25 -0800 (PST)
X-Received: by 2002:a63:6484:: with SMTP id y126mr8682840pgb.320.1604452285214;
        Tue, 03 Nov 2020 17:11:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604452285; cv=none;
        d=google.com; s=arc-20160816;
        b=zLtb0KgUXSYRFhbI2M1RisqybNR+iE7mrZOWMvn0+U5hh68T4bTuIO8MuV0o+rXoJP
         HeMfDThhB4jlkGDPINvXSJmkuF7zHCU7LXMZrhmeReT2aFReqHYW3iXXJlgSNGPdwC8F
         mGB/fLPL44Wp9AXyTe7zxogrHkHF38HXxqfu4Hp+M1rvI1VzEeepruiWngm3lwSG5fV8
         8QPSwjaQ+OrzyiYkP7IQFCe0ac0XwBT+sdykGYimxQnmuq0q+WOdS4J3BVMLXlitWO8X
         q3+nlzZnBrs7+i7jToaXSUBMkGDCyuNVcVVc+60TJL/8H0STYQe+PtgFE+ZDtb2Vn3L0
         euQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pl/YNzAKN3RGIriL5hG0VIj4hFBWq5DGVvwHyQw7P6M=;
        b=QLtNaMsna2QFKrnZrGEj8d/dAPM9bT4W9ZE/u2+CCWMaPEXvNpktc8/ZgePgtLbKhX
         lxNYZ8pGm7MX7AnG83jPcKfQKMSCRq/rRH+ArRxShS0Cb+Aemo7RTHLAB1Tcf2COA5Cm
         tbg1J8imwq20L607w/2FX9lIObIFAwQaU8PtkJZgdZUJg2L/qiPLaBnXTBOB8ohFsLNE
         GDiiR05lTQcXHRVj+t9bVQ7BYH5dKyrrq5H2GrkUL2+KDHJJzUBcO8AC8M2/wn1BlOSn
         xe9X2uXMFKTL5/4x0JJL8V2Sxm+AmNStUAGou33nGiTIZsztRFuhTjmCJaAgjI8Um7KV
         4zDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IwjoCjX2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id d2si36018pfr.4.2020.11.03.17.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 17:11:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id 10so15904450pfp.5
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 17:11:25 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr3071636pgq.263.1604452284771;
 Tue, 03 Nov 2020 17:11:24 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
In-Reply-To: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 17:11:13 -0800
Message-ID: <CAKwvOdnC1Sp-eBykrawt0FSG_kHu-FU_i7QjVkFEmNx75Hxf3g@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IwjoCjX2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b
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

On Tue, Nov 3, 2020 at 10:29 AM Joe Perches <joe@perches.com> wrote:
>
> Now that the clang minimum supported version is > 10.0, enable the
> commented out conditional reformatting key:value lines in the file.
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>
> Hey Miguel.
>
> I don't use this, but on its face it seems a reasonable change
> if the commented out key:value lines are correct.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnC1Sp-eBykrawt0FSG_kHu-FU_i7QjVkFEmNx75Hxf3g%40mail.gmail.com.
