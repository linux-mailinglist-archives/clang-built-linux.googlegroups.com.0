Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM7Z4OBAMGQEWDDXLGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 404613450AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 21:23:16 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id z6sf26611759wrh.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 13:23:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616444596; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYO5hQT4jiW6nmVaUyxdGYg+7DE8ixBAw+uTjQf2P+TGVZqanOQudl+4EBlDLcQvOG
         LESkkoIDDSSccydqhZKlykttAW+xulAqPZcfVeGlENSIQQ5QrmucxGDxz8kOeCiTy0K3
         lZNFe2BE4bGM7h7IjyH4UIDZu/19EcEF9DFQqK1Leqqt0rPzMwI5qWkFScRtt63lyvwn
         hdNXSgLZ2gAHASkpZQNOoTLtBn69LLAr75/lFVlvCzhX+wUuY4hF+va5wlt5VlbF4+E8
         fl8vYD0BJ/RtLCp+BDpsL1TGpt8dOwQtyfE7E1LkUaspVfoJhHtctRrkt/h+spjYm4BX
         KcFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=QMBmwB3hfOf3ZA6UmPiQbBktLMlPtZLjBBWJSPgysBs=;
        b=nmLdX2GNhdKQKnGq0degR9l+kRxQn9WtcSQBtQEO/t+sTgkGx3sZ4+A0svgXfbkuod
         CpAWEBqWoWC+8PtjzsAEFpS+d1UylxvCeJhxlJJXGtWGsXmjnraibraj1tz1AlHvdXzO
         jFFD251jHZmjZZc1Z6Nc8xoP0PrNc8MnvNlz9tf0lqDVDYJq+nsW03TPcunxF7OQK2u9
         j739VNXFlbiUMaCxPulUIXX36LZPvZp8nei2mxn/EJhLmIn+x1nD2ltxow8ffnPCrV/0
         qIXgflahC8vu76Nv3bTXSgLQ8YwHyWBrmuVao9N4TbyW/YypyMSGlTeMsNfab5hAZKQT
         Otag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PbI1uEDK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QMBmwB3hfOf3ZA6UmPiQbBktLMlPtZLjBBWJSPgysBs=;
        b=ebHiDcPA17KhgOUtHCz6AWQF1zXtcUqh1mUzzXVhzOvPa5LVASqXxmh+nKIKHgPEKk
         if3RPygiwEy0TPVSqSBNChynouXNDxNMsxqFKNaNmqezfM2ZvxgR2TEkpT1lrHtYxkzP
         YfeHH0D9zBpMqqYr6QoN4nJN77VT+Zp1dsFx1k5X6e+f+aHSg20chXZF5Jhg7KHWBUc4
         ZIo4SstWkGXdghiCyXcf1KfcSVGrTvYr6dir6nFzJPSeIZvRoNxk3sufYG2Y6WlVGLCq
         5pD3NuK/7/HJn2C7oCQkqwBY8XjxxzdrheyaRULC+mwWaDhhpZKFyIfiTGUcj1bCcSgA
         iLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QMBmwB3hfOf3ZA6UmPiQbBktLMlPtZLjBBWJSPgysBs=;
        b=EG+kUyjpDsr/fNrbsaopKxaJCr44EtVBWXsSykJ97gZiKQMVUocMKGFPG9Fklgs8f5
         QHOXoLtGvXFb5AX72xWQobslwyMxMLVIf4vt6rW4vBuSA0zcJoDNBtt8Vubs3/SaGG5u
         gOLivhCwPC94JTPh76+sdYjFK1uYfzjpoKDKv66dYw4A5vTvT+nFE1d8udcoWGEmRyKm
         auR0ZsrgOxbBpGe/H6wL60u6lN6RdSu9JWTY4a2WQDy56H0o6pf5N6mnEZHTniom/Shb
         oLkqGHf9sHiB235hXSLK1t3Rs3Cz9nrWJbYvE7wch3CxfY9G+9b9HCrNimAak8mQh1KA
         CadA==
X-Gm-Message-State: AOAM533yMqZqpHjuU7jTlRr8AtaI6Ge1WLx78cVpgptN7MWpxpAKlosn
	C76oFlGGkulJsAra9c4YYFI=
X-Google-Smtp-Source: ABdhPJwjsc8RgG5lVhA5aBhGlSCsKhd9Rc/EWOKNLnnrJOoXBAMj2JsHj304/eUDakywuDsXduE+BA==
X-Received: by 2002:a5d:6c6f:: with SMTP id r15mr332232wrz.77.1616444595976;
        Mon, 22 Mar 2021 13:23:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls15053wru.2.gmail; Mon, 22 Mar
 2021 13:23:15 -0700 (PDT)
X-Received: by 2002:a05:6000:1b0f:: with SMTP id f15mr320048wrz.171.1616444595129;
        Mon, 22 Mar 2021 13:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616444595; cv=none;
        d=google.com; s=arc-20160816;
        b=As+3ZeJ8+RR/KPaSPMnWapQWiS1WLTtudt34+usQbGNHgs/g7Y0043Ylz5zlK+HB6M
         7HSub0ScFTVJYGdko5OIJDtQjsMmpuWpmyLFobx/J/6GUwyQku//XmLTel+zl9kcpv2K
         ksOXAsZr0GoFsSPNBv/uQ+q7/NMGGGVu8IvlR3eZYVbg1sJs3XNQSVugB/HijwXRlZRv
         MprqT+C840wkc+xfTzBCUPssfu7Ya3nCzxnsxKP+1wyifkyuibL53PanjCUpfTgVtYHW
         X9OXVo9yM5rLaxn6BtRUixVVt2ho7iplh2lK/lPGoR1jMrDPnbwynLtxIxRMosdMVmEH
         RKrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=NEJ5I0jkM2wXUC/jC6hh0QGWQwdaLNmDV2hLsuazo8M=;
        b=V1pr2/g+EEqz7lpHxM3G4birIYNfOEfLaznifMiiR/leMFkPlHz2xzplPVLi3Zyxp1
         i5fUzXkbkEJ6Mc1GNzQaXx6FXCbsWQNxs9CSdjsnvFPiNfNbz5KWdfbrviep899xwRm8
         SBCaL1IiZ8SHCoZhAUD6mEHglJpE8iN5dgLiC42MCeSk42WGFoHt/Fj7IhMlUD8nFkK+
         ViG89mqoPv/gsJRM0qgPQ4DVObe0g5fH6r0Zrno/jfbLNyyhqc241lc5ohFwlwuSkJn8
         2gVw7t4+5rSx2T2pIi+w8q6EMffaOpQJPb7CJkJ7XN9kUF5hXKmbu7hDMuqfpWrwpWzr
         JHUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PbI1uEDK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id c9si27841wml.2.2021.03.22.13.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 13:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id o10so23300833lfb.9
        for <clang-built-linux@googlegroups.com>; Mon, 22 Mar 2021 13:23:15 -0700 (PDT)
X-Received: by 2002:a19:8c19:: with SMTP id o25mr593768lfd.547.1616444594392;
 Mon, 22 Mar 2021 13:23:14 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Mar 2021 13:23:03 -0700
Message-ID: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
Subject: Plumbers CF MCs
To: linux-toolchains@vger.kernel.org
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Steven Rostedt <rostedt@goodmis.org>, "Jose E. Marchesi" <jemarch@gnu.org>, Kees Cook <keescook@chromium.org>, 
	Florian Weimer <fweimer@redhat.com>, Christian Brauner <christian.brauner@canonical.com>, 
	nick.alcock@oracle.com, Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PbI1uEDK;       spf=pass
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

Hi all,
I saw plumbers opened call for microconferences:
https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/

I was going to put together a submission; do we want to do a combined
toolchain MC, or have distinct ones this year?

I know in 2020 the GNU cauldron was co-located with Plumbers, as well
as a GNU Tools Track MC and LLVM MC.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdndc%3Dej%3D40WktFz0t083pZJcdX1tipuWoTvAw%3DJC8b3Aw%40mail.gmail.com.
