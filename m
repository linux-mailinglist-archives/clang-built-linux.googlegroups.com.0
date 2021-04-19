Return-Path: <clang-built-linux+bncBDIMB3N5XMDRB7XG62BQMGQEFGW4DHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FAB364875
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 18:44:46 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id l6-20020a1c25060000b029010ee60ad0fcsf4688197wml.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 09:44:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618850686; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZh07LGiWRzBf1PBRvD0XHjIujMVfY62VBXbRLytR4W5YUSHpF7SuwU/XWDlZFuLJM
         yjB9h4ogWjLu1bdu3rE5CqXZham4FH3tBgb/ONmb3/aspGXKUi2OJu8f0UsPhoXOkmp9
         gjg770Ru3hG+ijuYHsD3rE+mnh9wTyUMJ0IFkVGfybbwD7L/Pd/HsrVbCrngzXCRfCOa
         teC/ETDnxD+i6yLz259byIZaUrDVo+ko0d2AYdxbW51hXlv3bgCo9oJHfNCaQ6ZOYbhy
         sNmN0DCHqbs3VtgSfQ9wsCA/YV1O3gdGxPUDsVbH56KAWKIbdKqD6PfQr3SWuhRw2T96
         fHLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=sUMreinn1+OuyXTT8rHMImoJvM9Dk1aLV0g1768zkFg=;
        b=lbxjzzYFojBMz4uo4wVK1RZEYMKIIOI04SiPlj2XV/UFqP3KRbIGbFtj9Xw6WojDSf
         D+OE6w8CcdFqm0shOGNordaVKaXSYYvU8rx78K/3IVMufK6zsMf+rbNK+W3+ksjo4d85
         0F2uuTmkNzxtcnqI+sp92z90dn7LSx2bj7AXRt0VsYjrS+vBWeyizZp9Va3tiRmGzHbI
         aZwCzcBMEcdbx0z35AezmPr7GHQtM/ZFxw3W6ONJxT2r1TxOEt9SXmSOjD2u2TDfoUKq
         PlLRhJewx1/j3xFIeyRmuvYfZfZROjnkI+fEif/Zjo4mDXTmzVKsTgF5FISQkbHejJLg
         29tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of joao@overdrivepizza.com designates 217.70.183.196 as permitted sender) smtp.mailfrom=joao@overdrivepizza.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sUMreinn1+OuyXTT8rHMImoJvM9Dk1aLV0g1768zkFg=;
        b=JHnM8G/5YuSDMPqiGjXEyeyv76sqMiPIg2Y8sUUz6Fl2BiQxVpca4McgF8HB7oq7rI
         nhBKQbifkRC1q1EEPRPUNK4cjubYwaKfRs803zESKVb6LfVHpqEyrsJR3UJw/CsP73QQ
         gmawEZWt/LWElSyIDiVfXo4NfTh0AkgV6sHnWBRCGrj54ZiXQK6Fllk+s24Gt4APMqmL
         mLKW4a1kPyH4H9KcdOw73vwfmmJgZmNZBIR17JjmFf0eo4KTDkagF51ZScpm3KkONtS/
         Jwmod81CqvQl6uTylGfkbrri9vJdpjv5HnD0PUQ/AzyJIQ6DOY2u0xfE88hf1Z9H9dMl
         ZRPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sUMreinn1+OuyXTT8rHMImoJvM9Dk1aLV0g1768zkFg=;
        b=ChRx3Yg+qu4chOsgkL6E8qszdiIFp5uDlDgqPI4JkhfsE9Yr2Y05t4eFEfIWOg2Hya
         LumrPjr7JhNb3CcVlr7LyDmxFnwEHzxrBDEx+d1XXD/CEuiTIB/Nb+P62UEYcggLTbbn
         a5hJN9iJDXlgT7bvAYdXE944d1NVf6gflcTYgyMFzheFdfBxX/pvqJQyw+m/Xz3GIb00
         W6CB8JtH2xfkKg+/osXyeq539QK0n7TO51JELgX8VU0wVGEoJV79BeR8qqk+reyNiwK2
         wxH1z29yZOtNBSEjEIZDPn80WDrYYWukPR8X5Bo78LL7j/Ep15+OWUIlA+cMZZDczb/p
         VIgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318JoAhGQ4AxLDoHrmRTJFfzO6iNTr+du3aU5EcAx3571a3hUGk
	tQGQ2p0zcIZOBAFk3ao+tME=
X-Google-Smtp-Source: ABdhPJwrp9CIywKK+HyyFZrmnL+iZdBGhgxog1GQzKlxijCter0KtNvC1U67N8u7sTRdeL86qxLS2g==
X-Received: by 2002:a1c:b457:: with SMTP id d84mr22545842wmf.169.1618850686433;
        Mon, 19 Apr 2021 09:44:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:11:: with SMTP id g17ls1396wmc.3.gmail; Mon, 19 Apr
 2021 09:44:45 -0700 (PDT)
X-Received: by 2002:a7b:cb05:: with SMTP id u5mr22503611wmj.21.1618850685311;
        Mon, 19 Apr 2021 09:44:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618850685; cv=none;
        d=google.com; s=arc-20160816;
        b=bgbdUykWj4Qj2Ag6aYC+crCtrD4A91QJ9Wu4g+grwHwiMOT0fjXmB8X4BSwZeCYLkR
         wshKnP5rQuwp/cQlHHlMQ7qOMXsx+V3uXw36tEjrxoz+J06KtcFHOK9BO2VvjwK3ga/Q
         JrZsdIS1i2yy2wvsdBp0YPhzlXmRpmow4QJBMG9I1Mcb9OMP7Fa799xXEOVv7FyGWqIC
         eFKNdt12i67MXHTojMrWQ7m41vT38sEkA94+BBfUFPaMyHcfGKJM6HXYD8XzshfzSeTV
         QEdz2PbSkIAdEHmMUzsdTpq8Q0y3fI6LNtPWwblQOTjuCOZgxNVwOkB93htHmxvw9V4D
         1EJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=0kc/By8dYZorGbyayG8g3cDXIgd8qQAI/6RS9+GKtPs=;
        b=BwavIeomVWzPR+VRAmGmwzu1sKVFqzzpdAi+lxa/+3zAS9u6kdnEiwxbKO7dwgNq1A
         6NR8vCVAxr/gzVd7AJHkks+lxTL4CHk2NjnfX6S2xHe6bCG3ijzsA/FQ++4StV82/MZt
         XPk0rzqdehJXTRzBTqQ/5/Aaf0HLoxOV+zZ7XSdWTUUhssU1RyOH8c1gZrmhZi8HFlq2
         vhHlCEFPHmWht+DpAS2PAjP6TWidwY3mRLMrdjnL738W0lbWLhs3Zb5loJgEIFW3K9E6
         h2s/AuFTJeuxv3c4QNP1nKfshCz6miqz/SlXjStVscyTSxk4FOJWUDN8vMcLtx5yewUM
         HajQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of joao@overdrivepizza.com designates 217.70.183.196 as permitted sender) smtp.mailfrom=joao@overdrivepizza.com
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net. [217.70.183.196])
        by gmr-mx.google.com with ESMTPS id s8si1322552wrn.5.2021.04.19.09.44.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Apr 2021 09:44:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of joao@overdrivepizza.com designates 217.70.183.196 as permitted sender) client-ip=217.70.183.196;
X-Originating-IP: 73.37.121.169
Received: from Joaos-MacBook-Pro.local (c-73-37-121-169.hsd1.or.comcast.net [73.37.121.169])
	(Authenticated sender: joao@overdrivepizza.com)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D6517E000A;
	Mon, 19 Apr 2021 16:44:39 +0000 (UTC)
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
 X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
 <2812c98b-3b5a-7be5-9fd9-2a6260406a45@rasmusvillemoes.dk>
From: Joao Moreira <joao@overdrivepizza.com>
Message-ID: <b9686477-4673-f977-bfb6-3ec4cc9e63fa@overdrivepizza.com>
Date: Mon, 19 Apr 2021 09:45:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <2812c98b-3b5a-7be5-9fd9-2a6260406a45@rasmusvillemoes.dk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: joao@overdrivepizza.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of joao@overdrivepizza.com designates 217.70.183.196 as
 permitted sender) smtp.mailfrom=joao@overdrivepizza.com
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


> Why not? In particular, I'd really like somebody to answer the question
> "why not just store a cookie before each address-taken or
> external-linkage function?".
>
FWIIW, this was done before (at least twice): First with grsecurity/PaX 
RAP (https://grsecurity.net/rap_faq) then with kCFI 
(https://www.blackhat.com/docs/asia-17/materials/asia-17-Moreira-Drop-The-Rop-Fine-Grained-Control-Flow-Integrity-For-The-Linux-Kernel-wp.pdf, 
https://github.com/kcfi/kcfi - which is no longer maintained).

At the time I worked on kCFI someone raised a concern regarding this 
cookie-based design being mutually exclusive to execute-only memories 
(XOM), what, if XOM is really relevant to someone, should be a valid 
concern.

Since design is being questioned, an x86/CET-specific third design for 
CFI was recently discussed here: 
https://www.openwall.com/lists/kernel-hardening/2021/02/11/1 -- I assume 
that, arch-dependency considered, this should be easier to integrate 
when compared to clang-cfi. Also, given that it is based on CET, this 
also has the benefit of constraining mispeculations (which is a nice 
side-effect).

Tks, Joao

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b9686477-4673-f977-bfb6-3ec4cc9e63fa%40overdrivepizza.com.
