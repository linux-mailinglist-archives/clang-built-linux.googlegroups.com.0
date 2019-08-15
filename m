Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4GJ27VAKGQEFGNPYOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAA98F75D
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 01:04:17 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id v3sf2575692pfm.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 16:04:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565910256; cv=pass;
        d=google.com; s=arc-20160816;
        b=AH8NRN0oAVvOpL/wYgE1l2jw1G8LYaWXbKSewkN/HhrZVZmeq7VHGjqJrqY4hLUpkJ
         xM7nXhg2+Yb0Ct1qnRhRdiGSh+6q9SkixQHiHOI5JG/NR4V5hO5ErCunQoRmXBJO8GcC
         P4Q2XbhV4b8I9nhy5jPbiy7aCwV5DScpgxh9wJaN9C/JGTAZJsegHBML1pkN7y63raib
         jwaP/DX9GJ+NFlaAjt0035VI3ChfeZhipvbuD/uX+pZZDu8Wo0CcwIyg//L0gzCkijWk
         LX4RYj5Ij0lMz+n/w/JucWS9ZHvkrb4KmVF5psQspJyOXv42V73I0pDDTNlMtMz4+MOU
         BE+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=u2BaFUznwM2D8c7ufWERkz0tA+wHOrsBlJaX4Gw2NQg=;
        b=EppYidfIee1eM/b+vKmioYm10xwMoWZz+0mjv3WyqjW7BYaEPGork+tObNcOg/4E7a
         bANNrCROpqzKGFy3vFReDB8tToYQof9O0DEBHkxEDbC2hzs8PJSaoeV0O8+bLIzYzMss
         hSwkYqNBV78euc1CMM5PsA8yGo37GtXXS/JktFgXFV69TwGIsFFcfNKWR+j7dSUZ/7Ok
         s0DAKRLL6zRMtDHaMk8H1dWbc9zOMot9pFDVt8zYeRsKQPfGnrgr03C0Q/PlNBwtT+bk
         tJuD/GSnsROvLYEug/ihLnQYbcmyj6Bb8yTbAjLPXQ54R89ec2OdoawBHIvNXzn7ya3c
         eh7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ROop3CtR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u2BaFUznwM2D8c7ufWERkz0tA+wHOrsBlJaX4Gw2NQg=;
        b=MiPmPuhwfhdKsr+TdVmqbNkSkUOowotMc0WO2+mBf7qnVn/86vGg1KebvvBb4GyyD2
         +kbKpFJVnmhVX3Q70Wele0EcHyC50i7cmuNqTBGX45BUnTzvWGtQ5WmQPc0vhNfyt/WZ
         JjSHU/XyF7aK5ybmv5q8HWvWTVmJjlhZThY0kj7cUfXsuPBt967Mfu8XwI5EyiK4xT+r
         l/nJhmITg36PFP5a3tUTasCwcOQe7mmug5LaseBpcwWNAHy70Ch0Y3M/fpcKQCP0v9jK
         5D1Wa+I6wCbix9hl0m0axMmqyLhdchLY59FWPH3v503RLxHpgpT0cIdIDaqETRvc2pGC
         SIeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u2BaFUznwM2D8c7ufWERkz0tA+wHOrsBlJaX4Gw2NQg=;
        b=rnciP6DPvLLMRSZSG+NNEi7uGEIUVv+NFEoJbl8LyqZPmvuLApZTWtiFYDGnflOtBw
         inzg8dCl6TVvlD9xiMWeL73i3StbdOT4uEhaVWRTa506rWu/DWlgdBJiz9nDWgI2TUcp
         oZlSANINHBkeaANdUcfgkP7k0LFr2Lbzsv2b1bTTkg7Lug2b0zEHm+szCuhyF2ke2Jmz
         r4K4UWuvvArA9Z2ShFwUHfJKCR0r6W5NKUSggeA2LzL9a0HJBJgR+GM6Oa6Xhxe8ReVn
         ZS5KWncJdaeuTFqDuQCE+6SoOW3Y9WBTufNSxxdb2bvps79QZGGJ150vQgidTLASRsdQ
         2FaQ==
X-Gm-Message-State: APjAAAXNoDbYgo+2PFwX3qw77WN898JL/4ouN/pbqxydVGbaSDfUAo7l
	Sx+nZx9n7HrRJp4UeZemWho=
X-Google-Smtp-Source: APXvYqzXz/dwjH6hDU+Npgp71IxqxPSVXReJHHJA7KV+YvBZYMoQLGdy+NbtMxmZtxUgFHdpyoHZLw==
X-Received: by 2002:a62:1515:: with SMTP id 21mr7644109pfv.81.1565910256667;
        Thu, 15 Aug 2019 16:04:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:29c3:: with SMTP id h61ls1563061plb.10.gmail; Thu,
 15 Aug 2019 16:04:16 -0700 (PDT)
X-Received: by 2002:a17:902:e30b:: with SMTP id cg11mr6506147plb.335.1565910256396;
        Thu, 15 Aug 2019 16:04:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565910256; cv=none;
        d=google.com; s=arc-20160816;
        b=oqM0sG6tzaDdsCQTzgxrGmtJ9PZ05s79tDdsk846QHkyqUcmr+6/hWY1Qlair3wHfq
         khHQEYReXbUq2LmvEPM3uOctCuME9ycGnCTHF98+KCZHQ+uRIPojR2WSH/YJwROgXkKZ
         ETFOCpXpb8KFapl1CsIZiPZUvZXzwROm6fpP8Ud6P2rIRA/orwhIehpoSQH5AstO8eAA
         nb5HRcg55kdmJ4hu4fttVQz/qAQjaL26zN63M7ZV9enZfXRxj2PEUrsYfGf/ZHhqTgjk
         OMF06MMguXU1ARvlZp68oOnwjSRwBbLi02nc6ZEgtOm3iDeQXAgSW63a+o1Vn4V9H2aZ
         3/ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C0paVUeRwkAoF6xRtck4YRzJFED8y2mJAR0FlFh8+FQ=;
        b=KWHNl54C5NhlIOVmGETVNbsHqdZqs0U4prYgg+pmx052bMOXd/jRcRp5WF4Gs+cQB4
         rJnaGFlrIRGmjFMJxQSDL5hE/PqQ455Grf4a9kbzVOV1qTRvYp817uBdL8jjMclZEpGQ
         78V9/sgjHx5cSh+Bmj69DSqtACEbh5XabTmEN3uexQkkin5FUmTzKyqC9sKunhSk6Ru4
         XKSfxQj8I6b/GPaH9ya0KAhSx4rJ942KhU0BT57HWxDooSCIdef+YmWllvtfcv3K9Tto
         m4BMCoBGVXDWa0bMWLBhUXYDEhwHcbr7BNWJHkAviKtva944zwsnrxvO7e+XM06buf9A
         7VLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ROop3CtR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o9si132620pjt.2.2019.08.15.16.04.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 16:04:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g2so2101395pfq.0
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 16:04:16 -0700 (PDT)
X-Received: by 2002:a65:690b:: with SMTP id s11mr1686210pgq.10.1565910255496;
 Thu, 15 Aug 2019 16:04:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk+NQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z=nw@mail.gmail.com>
 <20190815225844.145726-1-nhuck@google.com>
In-Reply-To: <20190815225844.145726-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Aug 2019 16:04:04 -0700
Message-ID: <CAKwvOdmu_=CM-8LOfi556t=ZPi+p2WVYcZ6Sk+ru+EfzPCb-JA@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
	Joe Perches <joe@perches.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ROop3CtR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Aug 15, 2019 at 3:59 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang is updating to support -Wimplicit-fallthrough on C
> https://reviews.llvm.org/D64838. Since clang does not
> support the comment version of fallthrough annotations
> this update causes an additional 50k warnings. Most
> of these warnings (>49k) are duplicates from header files.
>
> This patch is intended to be reverted after the warnings
> have been cleaned up.
>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> Changes v1->v2
> * Move code to preexisting ifdef
>  scripts/Makefile.extrawarn | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..95973a1ee999 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -70,5 +70,6 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
>  KBUILD_CFLAGS += -Wno-format
>  KBUILD_CFLAGS += -Wno-sign-compare
>  KBUILD_CFLAGS += -Wno-format-zero-length
> +KBUILD_CFLAGS += $(call cc-option,-Wno-implicit-fallthrough)

Clang seems to support -Wno-implicit-fallthrough since 3.2.  You can
remove the cc-option, since you'll need a newer clang than that to
build the kernel.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmu_%3DCM-8LOfi556t%3DZPi%2Bp2WVYcZ6Sk%2Bru%2BEfzPCb-JA%40mail.gmail.com.
