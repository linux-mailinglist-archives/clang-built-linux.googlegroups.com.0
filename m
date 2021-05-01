Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGF7WKCAMGQEJ5BDZXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id A795B370459
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 02:23:52 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id l2-20020adf9f020000b029010d6bb7f1cbsf5525717wrf.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 17:23:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619828632; cv=pass;
        d=google.com; s=arc-20160816;
        b=WhO2JcHadTy2o77zgPy8mNLviya4zN1Nbdb9IgXnut2Nw1Y1X9/PBdJf1PZNUQTBG8
         Aeosiil85kAUoDkuMQda9CDyPiSEfEC3AgJ+5Zi7dKlamTWX/pAtPo+g6+wzY6WloW0R
         XkNg+L22YEok6c3rqutkqhYJOl02MbRr96UKOfVcF2spUZ49cPRyNC6K36y9ZQhkG2wy
         rgvFPzNfWOwvM+nO9NW1LoM/VYFMQX3Ve+KdkXPHmBPgImCDkikpKAbAh8vEf5C72qbV
         XvwtW9IdKXSsjgI06RQvkyBGgIZQPMk030w+WrkELKHgolOzz7QKMfcf94/XDI2QieLH
         qH4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tu0+dx1V341i/jVFuqiU1+wyNyDsr4N1x6aobg22W+A=;
        b=PQd8Yej+SW/VJL85Dj0YJnhf/E1T5OgvjAEDidjPrrs9M9i0t4S629ihbP3AQdF6Hn
         HHHfh9PqNHs2K4l/mzU9SdYGX7UBnx6qIxGy3ENgUA6VvNWOH1e2q0OyYN7jfa3KkwCf
         fo1l0Sm/2vD/mKCMlL0mI9FMRBOBJ2e7ryYG8Vr8LMMtA2rAI2/KONrsuy/9NYxwY47Q
         h8dra26Y+K0yDczqNsvDUcd+jfQTOl7/JIsROEG+cgg3rSAh6bkcq3GemYKuQS8f8QYi
         Ouq0v7EF85w6fNgvvL9AnHfgaG+XepTB8CdNiHcw2kymP/U0zNSES0ET9LBZ0QYkDaVt
         mqTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QnbdpOIi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tu0+dx1V341i/jVFuqiU1+wyNyDsr4N1x6aobg22W+A=;
        b=s1J9ejFJSS39IGoesy4gHxlFd2oUCWyM09kZOn/sspX+Rve/k8DmB1wrf1Mu6g4PYo
         VU9reY+NCbvB1XA08xn069S2wfzw4KBpTlgKRFhAIlZUyEqlRxu2HQtiLhlsUj2mxf9m
         nvSdbCQZ7LryXj8vqVbBlMu/RajkA+T5s5bX2YgvQ365Dvbb5oL9JYnEASnS/D9cwkB/
         pt25oRGHo8vK1QMajnvQr0yiHLFaLS7VRwV0uuTSSMdIVmH3bRy2y1z5LCF3mKD7lwrb
         IEkC5ZVe4EvLFvxZAdUoZKh1FqsU9yLWQEylCkgyC4Avzis5vqVSUcE4s8qkRkPJd+lH
         aQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tu0+dx1V341i/jVFuqiU1+wyNyDsr4N1x6aobg22W+A=;
        b=pDqggpmkYXNJEert/Br83ECqvOnk6xRr5olnhwUMOvZ3ozd+49Su6Azhl3yVnHId02
         99w+F1tOz+6NnQ8FP0DRUIyWrgXl46evXvw5cbQBhDxlJE1UufPqP4PsiJirz9PFcGS0
         2itN3BKFn8Ettx6F5ndgiBiThWQ2royY66n07ZqsBBkqJ9NMsB4LEd6UPcYOwEt7meua
         ICeWiE9KYgoa9G8vmgbamCVHH3OWUm0ymOh/8KiKS2zQWZfMloC0OOfDvJ9cBl8RdulZ
         TnZbkM+TA+ie2xdPslhy6MpzIbzOpe0NMEKVWFdScoPco0eaL/Kj5MoyJMWvAC94NqAx
         eTGA==
X-Gm-Message-State: AOAM5309VYr1il4TR1MBXTaAkoRD+gFiRruAEi6hdqMhMmyt+K6fu53y
	2ifIQ4rLUHa+Rb449qUyelw=
X-Google-Smtp-Source: ABdhPJyUNafpT9CRI//lrEGdr8HSjtYaBcaoVInmAt3Wqtr0I8wIefkpeIK030vROe+wgKdzcLSwfg==
X-Received: by 2002:a05:600c:35d1:: with SMTP id r17mr8651893wmq.71.1619828632404;
        Fri, 30 Apr 2021 17:23:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:e341:: with SMTP id a62ls3571168wmh.2.gmail; Fri, 30 Apr
 2021 17:23:51 -0700 (PDT)
X-Received: by 2002:a05:600c:4ec9:: with SMTP id g9mr18800078wmq.145.1619828631702;
        Fri, 30 Apr 2021 17:23:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619828631; cv=none;
        d=google.com; s=arc-20160816;
        b=CqCeCxq+lKNDUcsuutTC5pwufuHQ5mwdRymazXCi9wmTjSqFXqlFDn3oDtLZve/7if
         IFTC/5VLkPLVMOKrCBAoJ7H0XF8Md7dnxLU7N0fdpvkI95FTKm/ext8oMnATZJj64tA1
         EnefmLuGuj4peWveENVKIJOBRg0oK5p/YShnc4uWA+MymHyzvXlbwAJS6FsKey6Bbdek
         NJK/+PxSm9h/CbHJ6mN/GpEQRF2V5j8GFmt6OPPXWz6S+5WoqdWqFKb37ypIGV63x60H
         PYBUPdV+brpw59t8MtUNjRO0BZs/UBFQtwVNHb8LUa35Rd5IY0oukgrO6078kWRvpQ6P
         sW0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AVLNT3W+pl6I0XltrmL8EoY5HYXwqNz1G5YBmw1lrjM=;
        b=MgU+z8WFjYWTtHe583qbi2zhPBn/2cSpikj0CijP+MybzSSV6njwiAfRk1A+717G5t
         hftES28EUiUr8oa3MQQ4O26H13Yd/vjwPPJP1zKOf3Vi5b5v82DMPsaYjBLJP7UBEJ43
         Htewo55ze8mHoDPFFjgiJ7SRDTUoMq/+Ow1gGUVrHiaH4iT+7WttI0CM8iem/0DtSciq
         ZQbdflss02n5W2HxdGucJ5vIbq8wygfJ1bdLIy0zRLVRGV0bb0Kf4zXyWhG3XLGR6WF+
         UiaUIL94s++vLB9Grt0dFOEwX4FMTjUWu18PBHd5ANZ3SYa4ddnKTmov2E3J8v4j3B6D
         OnOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QnbdpOIi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id p189si494306wmp.1.2021.04.30.17.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 17:23:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id h36so58526863lfv.7
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 17:23:51 -0700 (PDT)
X-Received: by 2002:ac2:5979:: with SMTP id h25mr5078255lfp.297.1619828631049;
 Fri, 30 Apr 2021 17:23:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com> <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
In-Reply-To: <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 17:23:40 -0700
Message-ID: <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Linus Torvalds <torvalds@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QnbdpOIi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Fri, Apr 30, 2021 at 5:19 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> A quick:
> $ perf record -e cycles:pp --call-graph lbr make LLVM=1 LLVM_IAS=1
> -j72 allmodconfig
> $ perf report --no-children --sort=dso,symbol
> shows:
>      2.35%  [unknown]                [k] 0xffffffffabc00fc7
> +    2.29%  libc-2.31.so             [.] _int_malloc
>      1.24%  libc-2.31.so             [.] _int_free
> +    1.23%  ld-2.31.so               [.] do_lookup_x

^ bfd

> +    1.14%  libc-2.31.so             [.] __strlen_avx2
> +    1.06%  libc-2.31.so             [.] malloc
> +    1.03%  clang-13                 [.] llvm::StringMapImpl::LookupBucketFor
>      1.01%  libc-2.31.so             [.] __memmove_avx_unaligned_erms
> +    0.76%  conf                     [.] yylex

^ kconfig

> +    0.68%  clang-13                 [.] llvm::Instruction::getNumSuccessors
> +    0.63%  libbfd-2.35.2-system.so  [.] bfd_hash_lookup

^ bfd

> +    0.63%  clang-13                 [.] llvm::PMDataManager::findAnalysisPass

^ this is another suspect one to me, though perhaps I should isolate
out the HOSTCC invocations vs cc-option checks. Should retest with
just CC=clang rather than HOSTCC=clang set via LLVM=1.

> +    0.63%  ld-2.31.so               [.] _dl_lookup_symbol_x

^ bfd

>      0.62%  libc-2.31.so             [.] __memcmp_avx2_movbe
>      0.60%  libc-2.31.so             [.] __strcmp_avx2
> +    0.56%  clang-13                 [.] llvm::ValueHandleBase::AddToUseList
> +    0.56%  clang-13                 [.]
> llvm::operator==<llvm::DenseMap<llvm::BasicBlock const*, unsigned int,
> llvm::DenseMapInfo<llvm::BasicBlock const*>, llvm::detail::Dense
>      0.53%  clang-13                 [.]
> llvm::SmallPtrSetImplBase::insert_imp_big


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm3D%3DdqKw%3Dkx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw%40mail.gmail.com.
