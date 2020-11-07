Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO6GTH6QKGQEPRXLDRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADF42AA41A
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 10:05:01 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id d18sf2212640qvp.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 01:05:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604739900; cv=pass;
        d=google.com; s=arc-20160816;
        b=om5WmVWX9tzPKR5oMwiwF2WJYSXbmdobTIIofxfG6clQ/sGcagWN/eZV4VsD45vIjt
         cRXDyP6S8rYzeIK6ggKBSxdOU8pSV6XFFzQRG4d3RZhCwcqVY2rnylttCQ516wXOvpYP
         obCn1Hv6XvNSzeQWerVL+XTNnsGdqBvBPYSYXeMTTfceWA3j4Ypy9QSj7lZtFfbfJBLE
         oEQtmErCrbuCKtwW1mUAZ3cj4cwo5Z76P8s4e4J2ygo5KhUdb8bLNd/eZOcR9N729bkR
         wv8RSOoL3q+Yb36Vh0LfGDKX/miQBYiNXRpEWIYSZWDmtqgJLNT1bvJmlxbu4ggRPOhO
         H/wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2CPZqdrWPU6/pYjHFeQBiIVHvngsl7VuhFVimnyDsF8=;
        b=VOssFyaM/cxXkO4GCxCEuuCfTWsJtkhP0dh1Opeafih34wWt/q/Kx3F5HA/qaWxffJ
         jBCcrHKopHsZHxfx+xpiLdJq5NMk7Y/mKOBZEajouTf890szCkPX0CHbd+JE2pJjbZB5
         jfFs/68jFYQRBFCCeSkCWnAxN8PEpie5fzQBrgIw2dVVECLiLvlQAzTPMrtMYfxyI3CA
         r2TvKzZua7VKmr/6EVn7RFXq96tLczPpZLmL3gdAqcGmwLmUankLjU2Fn2sjur2X7mSo
         QzLUBdqgYypjznrU4U/Ily7JwvwYteEVdqGMD1L4MstrL0qaIwtQHBQprFjQ5a8lj3KO
         gNBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uZ9BKTpi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2CPZqdrWPU6/pYjHFeQBiIVHvngsl7VuhFVimnyDsF8=;
        b=FVfwO8Yn+eU2vJLKHaKj7BRks3d6gY36HE1AD68KRFxwylYJNYbK+NdVWfFIx9dEXC
         CZiRViY7/NozeoWn/dtpR6qQqH0zOeSDIizm+9jE6f8xy7p4m5aQLM2smnEs70mG1gSl
         1UqfYK/7HliKSRB4Drwsm1YYt4YqfcgoyKt3Raq3d81gn53WQ2Vou1DkbizGQEICZwih
         yhiVB655O/sBMnzqcjQdPOmeEx8YvphMqnWTOGXLrOFfG9ZjlT3a8Tdlf9kleDGduPgl
         iJcM82dop68+LDNzwQLPilKrni8qQTPzgFLO63CaHNgHu8TBBsrlWX6wAhMrNL/Pfvtb
         RZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2CPZqdrWPU6/pYjHFeQBiIVHvngsl7VuhFVimnyDsF8=;
        b=J/Fc0PcZEjliXdSdRnLFHR1GuhXuFgBvwERGXKIgQcGhun6dbpIS6hjClhZnmcqa41
         xvXZN/Zna0d7zHz3aqfOyIyqrq+DnJSDAg87GEUB9X32EodPqo/iODs67L91mYJRZiM3
         Syyf2ZVTGkbNo2rcCOBxyaqSdgdhlN1Q9c4T+qfpxIk3oy2Gk7fxZHT3fyQBpWNSPwbl
         QfFNsYJg7MV7K10Fvjqlm9Jqt3S/hWuB/9tNpfsyYVE4REImxT20p5L01U5wqytLe3Mx
         4OWzagqHciyvs4vKau+bkOb98fcP2Unv1i9vvPxSQI9OLARV5PbGyiisqFrXJg9x1vnt
         rR6w==
X-Gm-Message-State: AOAM533hMeM+FpLm8wSaOIt92/r5te7VZ4e1U2WomusJv1v68lZtCxa8
	Y7P0k1tOjQy074QyD4aczBg=
X-Google-Smtp-Source: ABdhPJwBBV39Ytabn0TzOqNry/RYVVBAjGtfDnFhCLXTBeZKk/+bW2vFR6TuDOyc2xf9DJQKFEQ2xA==
X-Received: by 2002:ac8:3890:: with SMTP id f16mr5193715qtc.372.1604739900016;
        Sat, 07 Nov 2020 01:05:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7805:: with SMTP id t5ls1798497qkc.9.gmail; Sat, 07 Nov
 2020 01:04:59 -0800 (PST)
X-Received: by 2002:a37:58c6:: with SMTP id m189mr5426155qkb.129.1604739899612;
        Sat, 07 Nov 2020 01:04:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604739899; cv=none;
        d=google.com; s=arc-20160816;
        b=dstRgCq0yQY2i41mgvsJ7nkePUmv1OI+aw5G1GlVcoHWlI+DBT8tB4wwnu2yPDWG4r
         SJOuuo48Syq/gaV7131uibVsQd92wOT7ngatIBf+nyK+WbN9b1IbzcLmkAVWCk8gsod3
         5TiyE0sEx64g+XKOu+wV4HW9x7ve135+S5xU21Vdp1ZdOW4NJkx4CamWcpHvVr66vGf1
         L00LdKxNlm9nhrQedJqpJVFYrtDjaqYK+O4LKZF8PRq6ole4XLTNA6X7aN+W/NaMmQc9
         dPtb8qnZlT2WYFow0tNh20V/oahgzV4jUSlng6ml9y7iFlLQ7e4GB9Lh7xbmte1JLV87
         5QWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YzyYN6jLumCnrlxnfcM2cNl/xFX6pvZ4pMXoDyQ+hD8=;
        b=XmF25PpQxvVDBiejGHAWZieJEBTz+Sq/SjErGONy0lM6I/yq9+iXO+D8OPYghIIQ0c
         CT00q04Tov51FpXxkuyRdI4/tBRKYjx059ifJUkpAwUKsdKD5vDf4mqiOg06BfKbEKy2
         bVWLOFNqi8GoA5yi91SERfbZfjgbdWu5ddrSDmvGbi5CplYx71g37lp6NXV3w81fgVNp
         6VJjzrXYzUr0BZdnKUeLjCrDH4zqOVm9PdGioc4jVkzheLafkqkwa51Twyucjv+14ucA
         7JRqGyj/0wB34mz64HiEfi5zpVI8noDxbIHdvU3S6RoWnhMhG3rZtxKf5jLSXFFO5c3n
         cMiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uZ9BKTpi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h1si221986qkg.5.2020.11.07.01.04.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 01:04:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t18so2108174plo.0
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 01:04:59 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr4919078pll.56.1604739898674; Sat, 07
 Nov 2020 01:04:58 -0800 (PST)
MIME-Version: 1.0
References: <20201107070744.1133811-1-ndesaulniers@google.com> <20201107084525.3417278-1-ndesaulniers@google.com>
In-Reply-To: <20201107084525.3417278-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 7 Nov 2020 01:04:47 -0800
Message-ID: <CAKwvOdnr94Pdt5GYGf52FHpa98ZtkwLWvAPiN_Se2qq9a+h_ag@mail.gmail.com>
Subject: Re: [PATCH v2] Revert "kbuild: Do not enable -Wimplicit-fallthrough
 for clang for now"
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uZ9BKTpi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Sat, Nov 7, 2020 at 12:45 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This reverts commit e2079e93f562c7f7a030eb7642017ee5eabaaa10.
>
> This has been fixed up over time thanks to the addition of "fallthrough"
> pseudo-keyword in
> commit 294f69e662d1 ("compiler_attributes.h: Add 'fallthrough' pseudo
> keyword for switch/case use")
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * We actually want a revert, not a partial revert. v1 removed
>   -Wimplicit-fallthrough outright, which we don't want. We still need
>   cc-option for GCC < 7.

Gah, I tested a ton of configs with V1...but not V2...this patch is
not ready yet. Sorry for the noise.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnr94Pdt5GYGf52FHpa98ZtkwLWvAPiN_Se2qq9a%2Bh_ag%40mail.gmail.com.
