Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHONTCBQMGQEKOJLD6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCC8352039
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 22:01:33 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id m23sf3249003wrh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 13:01:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617307293; cv=pass;
        d=google.com; s=arc-20160816;
        b=LGznLzAQr7cuRKE3zHtuiIBlF3N0Uu+OoFw0skGhINOcQUV2nxwbMl21yhf4yOy9yS
         0OeZAJ/sCB/+vCyZKXqTxklruX2Cq6lWAW9vPc/EtSZ3n07i0QDZpJezIwwBWblF10Te
         5q02jx6VIvfzowg75Q76/GvdapZjzE2lxplay2S0GYjcrI87PQTvvrFreb4SwdbGOrtS
         jHfxfozFIa5SeB8LKmceBQH1RbJS45/6rPc1f1WnV1j1925We7sZDDSIs1K4nZFQMP9h
         7ZCJcip0/vjE3ho4qJKCY85pGKhTyAvZt75UphH//lOKbaIik5wC0OlBHlnKyOF5ssn2
         4gGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=en3uNNM0uJGmjddWfuga/fJmtqNyoG/F1H9D1Erompc=;
        b=Ow0KTjmSTUjlPBkfGZSD/FNA38WudxP6L8Pv6hyDXxsSTzgRQ3chGq24QPPOP3G1IN
         Ews+wbjQfT6wSULWGFoCMn4PzWpZh1fG9KzI/g+zlSFW6rJABITdNPWXa1j8xy+UpYL9
         Ty2m5metidqCnib4l9RKKlxZIf92cq7eC+qICUEb6+JQ6vEVTxi1ux6SBMlrUWfNGrCP
         STbYwJTQoZb9Ol9YTf9I+pk2ldWGFzomCdow2O4Ou+B49UsMDI1BgIcxcQ5GTxTbJdn0
         dEfeXRDAMn2hmt9+NW2XnsYkqXyxudLMX2n/9rSkCLQ/ExC3o9pDGCELHkK8SDcTHE2A
         4EIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UCYtjAD1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=en3uNNM0uJGmjddWfuga/fJmtqNyoG/F1H9D1Erompc=;
        b=DQtyT4AbB0y3wpBr/iUnQlpp7bwIDHwUU+dkTGPkfQeLwsUPmfzf4WKHaYI0WVTplT
         oXgIUe4k+P/ktRYzB+3jJcqz7ZH2T23/5BFcAHt7G4Tfcgv9gmoqzcBIwviBhgsL02Uq
         2cdlphyt3VUBr6rwU2DMTY6z4clB+zy6EJhW7AukXgTqL/0PD/R0+drrKsrIQwcaFFcG
         fcRtKLYkNq4kVNFUuzTr8XJpaiXXLw/Kb/3MUT3nE23vjaCoaD51PLUkojWLQ/K97j7D
         aZC7AQjLhtpCVlnCTnRZbeGqEGJeHGL0oNveEihWhZrLOy56Atu9QRixbxYe1ChAa+Be
         m+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=en3uNNM0uJGmjddWfuga/fJmtqNyoG/F1H9D1Erompc=;
        b=bqtR3EaXXgbdJuAtQLCclJeV7v+FWOUZJ0kA9Ji6/z+iLDMqIriSkU2VgZ8P5ce1dA
         U/LlU4AE/wGMK0xvApZTcVTfesJqZU110+13QrARBSKSneAfNDzcRl4iST+FFOtTXy97
         sIyzhJM5IfVUxczWrqkfnmxMCVA5fyBSWeu8+Heb751rbxm6dcigXy8AWQToT4S7QBSs
         To93uGmIKqzA5lzhh2Qes+wmmoB4pucWaeDhKvy1lC5B7MgY9Tv9wRnK27ihvDzlx9kn
         I9YoNaE5tM9ZiAFSAz663GTZu43soD6RuKuiiDlMl2i5eshE8MLw9+MGxhR9lpXC7DCr
         0oMw==
X-Gm-Message-State: AOAM531WY947jcfXB2z0qpkPdbPDJSPjQudkLfvs5qtWqsW5iz51xr8X
	hcI/WDQk8dJs+nvm8WqhJ1Q=
X-Google-Smtp-Source: ABdhPJxLHvup0kMKyXimdrgZ56/D7gliGZm+ulcSWVo9c2uUP2QeRo4wKKK5xmhkU1cd1lMnhnV8Mg==
X-Received: by 2002:a7b:c407:: with SMTP id k7mr9846454wmi.136.1617307293633;
        Thu, 01 Apr 2021 13:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls3430799wma.0.gmail; Thu, 01 Apr
 2021 13:01:32 -0700 (PDT)
X-Received: by 2002:a05:600c:2946:: with SMTP id n6mr9594486wmd.52.1617307292807;
        Thu, 01 Apr 2021 13:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617307292; cv=none;
        d=google.com; s=arc-20160816;
        b=yRGMBHFTMpZOqnXn4zGT06uaAbpCnUsxJTatH/IBW9TzfIAI1lEYA6W7zBPvElu+DD
         CbDONWo/MQccYkw4668NColtJsrgAQ0lYoj5lEwfyz7Jxr4hiqipNXngj+mZeGr8rpEj
         Gmt9SLWIte9kRlPC4LKYnLz6PLW+O3h8K1nXu8TWnSNrdbtsEzZEH6PiFOYQsKr2iuhf
         rEsu2xaKVEBbiLbT+RnJGH1mntpsRH5pK5Fa5W82n5gK/EfIz7MuQ38w03DmMn2dlUaO
         9HB8sdJmITfMz2z+V5JJ+QZvM+tl0H5AC1J6AvxSxtys3fQ3ALrZfBXHX7DiKwwoF/zP
         Hp/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9QVb+iJf/rJazfrXAmjETTVFUuLbwmaGbcXmJfCiX+I=;
        b=VueGxPSoVJxWqpojnXX9RdV5Ic9zKWhyMCiXZymNCk7vsqE8GchuYWHo30tL+9Uc+Y
         TbvSuqwjQh+kR9cgSIgSbBRx7w5fG2y/BCjL3g/tCs2fTDp/C9sOGxrFmP66DFpDE/5t
         TVnQjLNVOWm+pPMb66GW6tlI5eKPbICoXSxAzUizrVMzBE68QlUFwxmQX8FfK2DzuYNu
         scqShm/k/3dTRUzZj052G3L1ZPlwuznCe4bfascwTqecsA9N9CtzCHNsR+Dp5SBq/9dm
         MQ7S/PA/2Wg14FQ+RaPmIlDNoUo0l5TFppYUmXHJOFPQh0fhoJ1vIq9bALoULbpIOz/T
         lM7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UCYtjAD1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id z202si657141wmc.0.2021.04.01.13.01.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 13:01:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id b14so4562377lfv.8
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 13:01:32 -0700 (PDT)
X-Received: by 2002:a19:430e:: with SMTP id q14mr6901983lfa.374.1617307292326;
 Thu, 01 Apr 2021 13:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <87o8fa3oua.fsf@gnu.org> <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
 <CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com> <87r1ju1llu.fsf@gnu.org>
In-Reply-To: <87r1ju1llu.fsf@gnu.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Apr 2021 13:01:20 -0700
Message-ID: <CAKwvOdkY07vxbUFO-wiE+h_6rqux7J0oYTYcaUc_U3DbL670MA@mail.gmail.com>
Subject: Re: Plumbers CF MCs
To: "Jose E. Marchesi" <jemarch@gnu.org>
Cc: Elena Zannoni <elena.zannoni@oracle.com>, Steven Rostedt <rostedt@goodmis.org>, 
	linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Florian Weimer <fweimer@redhat.com>, Christian Brauner <christian.brauner@canonical.com>, 
	nick.alcock@oracle.com, Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UCYtjAD1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Thu, Apr 1, 2021 at 12:59 AM Jose E. Marchesi <jemarch@gnu.org> wrote:
>
>
> Hi Nick.
>
> > On Wed, Mar 31, 2021 at 12:35 PM Elena Zannoni <elena.zannoni@oracle.com> wrote:
> >>
> >> For the toolchain related MC, we should pick a better name than last
> >> year to avoid people getting confused between the MC and the track.
> >> Something like "toolchains and kernel intersection" or similar.
> >
> > Oh, yeah, that's a great idea.
>
> What about "Toolchains and Kernel MC".

SGTM

> So, how should we proceed?  Should I send a MC proposal, or you do it?
> :)

I shared a google doc with you; let's draft something up quickly, then
maybe next week (next Friday?) we can submit it to
https://linuxplumbersconf.org/event/11/abstracts/.  As long as we're
both listed as authors in that form, I think we can even still edit it
post-submision, IIRC from last year.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkY07vxbUFO-wiE%2Bh_6rqux7J0oYTYcaUc_U3DbL670MA%40mail.gmail.com.
