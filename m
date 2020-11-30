Return-Path: <clang-built-linux+bncBC2ORX645YPRB3EHS37AKGQEA7VEZ3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2902C92EB
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 00:44:45 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id b4sf4632717vkg.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 15:44:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606779884; cv=pass;
        d=google.com; s=arc-20160816;
        b=U0mCm6gTbStK4eQAh6oabRJCywo6NQ9Wc59RIAY9wAcw/6iv1h7fJXuJW/azFBQJel
         xiG+EveI5i2byOaG+vzHwojr9x1s8q8uzOH85GW8BwEeZ9kOSMGRVO3BHmDsywj1tG0V
         1BxX3xs7/coIM/E+REPBZz7cTtWuFE0H2wXJbtJAe5/yYh6LgiH+9GsC1wKdyza/ujbj
         ab4kAeGh1px9On+QnKhnzeMsv947mccg57sGieQoUJ9Bh/8M/HgIK+Iti/J/aBx5TbFx
         FzfD4vHAyGp4vuaUmvt8s44oj43eAOhO1Yaz4HMy9mgx+zVESDSpYjCwzb+01QOuRJ4K
         sI3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ebxvaRAFcPhHcfDc1mGHFjbSdnyGDmCeS7uPFICPFeE=;
        b=VRkKKNRL6JtkF/S0fKcEiiLm285Mzc4rA3Qg+ttUgZNQbru8KGq+ZI7+egDos1st2H
         HL5BfVLYP9Eub8Ubk5gsLawgkHszFeqMzXTZAXS/YbJ5Q8C9CCwc5AWcSzQl0niP7BDU
         vBb1tqyBHacpnycpcumTe1XSrLHZFBfPO3B4K0NBnCx+KM0KA8mP9UtJXj50AwqSMICt
         H3AmgXzSZ1ShRLmoAhbP9WYqgBQtlYNih/U1O/PB5WJjnzMEhtuJK5bpewYPsESLrBgY
         +o1IEdkS8Y6ilziWjb/XmczmPIlF3mTrlJmQe/lakpcTChUM8rc8TVxT4eIBzG6FXKn5
         C2Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eIXhFNYr;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebxvaRAFcPhHcfDc1mGHFjbSdnyGDmCeS7uPFICPFeE=;
        b=F3O+bThBfwv+UZV/sHOoPePDU+gCshg7/+L6o+HDRUJ3ArX+HTjFf4n9ot/ONc/PY0
         /kMgVZb4DMHpn8esoihHpjwltYc5yUud8kl5WtCUjnGL1MGjPPChvEu+Z8kvONbwj+/S
         8vx5V+VMHp4tMDuRpSkW2HqyUw9B13U26ZFXL9VlBZmepzKLgClNubeds5SINALXT50j
         5Rw0BBNs2MG2LcfRBnSyKj9sYrJBOFB2ALhrfMs7VIbCZj06lPKFdByWWZlI3wj8kGnW
         E7CBPa4DqDZdH4jt6yfN82Ies1oF9TKUhQHUyTnFjtuL/Sfq4Md5e8/AfRAb3CatlCJS
         qUZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebxvaRAFcPhHcfDc1mGHFjbSdnyGDmCeS7uPFICPFeE=;
        b=sqPUDzyGvlNfXKFh3k9r3HeXzhMjXIxi2djRXIsQA29F29GiOcDcuPr0EuvWdcDrCr
         DxNw2IIHg5x8y0E+gyl6eNSP3OW1MWdSFN93F4uici4ul0V28+DqryDpH+79OtRLJEvi
         Pkc3YRKydvZI8xcwHNklpmxtzA2hUBFn3HGn3sy28DgrQrfvo1BUmLCK9uUsufQ7g8Ww
         F7rtSpzvvCu/RSYkvEPWyO2KrU9KHY2fmUkL9HvPzvNyRas2YLZTbbVwLP43U3h7wZvg
         0oXBd4JfflvkMjAAv470sP3TJIBK1DNeWjdMhx2CIi2Qk78UMyHXQvSleu2BCcsr8gD4
         uN8w==
X-Gm-Message-State: AOAM530oCl+eH5dNqVKqRWKirVQYT4o/Qp9Mhy93hksxS7ARGd6gY1FT
	cvSBXLZuLazmy5WVSkVJvtY=
X-Google-Smtp-Source: ABdhPJyFHIvGeetiMyKyHM1+0/Oeqo2ZMTwo+e5fmgaJxvg9ZPP7WHpa/HmR8frg6tgjhvTnxaTnvw==
X-Received: by 2002:a67:88c2:: with SMTP id k185mr236619vsd.29.1606779884713;
        Mon, 30 Nov 2020 15:44:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe4a:: with SMTP id m10ls1901406vsr.8.gmail; Mon, 30 Nov
 2020 15:44:44 -0800 (PST)
X-Received: by 2002:a67:fdce:: with SMTP id l14mr382980vsq.26.1606779884343;
        Mon, 30 Nov 2020 15:44:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606779884; cv=none;
        d=google.com; s=arc-20160816;
        b=uBX7SWahM/S3CSTSwBRN3+4irwqRrrX/d8RatDUO66Tx4nUyrJzKHkk8YENbzt9tQS
         w9ylRwqSp+deLtJ0ZLP0kaID6OiV1EOdXtE+6tNleV9RtAIyWzxWt5HaR7/9bSIMle67
         W2xo8dFKTY6beXpMGrNdyatJSsHLAZwKjZy0nY0XnR73STISJnaFZ3niJ7zflva8z7bX
         XBDlMQuSQUvxHKkSF1/982sWFB/cyKt5Dr0quZlfSEOmOBmCfs31tVnwKSI+sL0nJlvx
         8wWxttAIF27ms4B/8eFuQWN8mXf1XlsLvOp1J3FJYelEWXgsE/iAFAckXuibF2HmnL+t
         oRuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ja5iGBqziMZwVeGBVGC3tNT2ITsfFSrpoAOQrYPIRMQ=;
        b=dPeyLT5KvN5wrvzvCm16oKospsWYGFH+TvRZxTMuf34/99kALR6CRYQsY8But+cxO/
         VIKcQCzDtQAdj1bABCEN5iQuvhrSroFs3p9D/7Jhyw/kzpappsUs4khg8DSd3BFCWCMy
         yz8WkLXNvRGcm6bVeHY7DWUNIqQP3bh5y34HIcKVlE5A3IoGTaQnY7cYXKSEp7T0FTLj
         6ZtaoA/DAv7w79rhehRcuo/Zirk2kPG1aGx4ktjxo2aYNhwr5lZyuijETepem290umPn
         B2NR2OPMvLM3XwmodxG/8XdIRyIBlb+SW+rCP9sM8CajsX6PobwAIo6opZbvLUjVBkhu
         ze9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eIXhFNYr;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id f26si1008000uao.0.2020.11.30.15.44.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 15:44:44 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id g3so4334532uae.7
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 15:44:44 -0800 (PST)
X-Received: by 2002:a9f:2595:: with SMTP id 21mr286471uaf.33.1606779883895;
 Mon, 30 Nov 2020 15:44:43 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-15-samitolvanen@google.com> <20201130115222.GC24563@willie-the-truck>
In-Reply-To: <20201130115222.GC24563@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 15:44:32 -0800
Message-ID: <CABCJKueSjSdpztOsDExCaLyQ+Pip+r6bY=Y1hR=VTOODmoSZMQ@mail.gmail.com>
Subject: Re: [PATCH v7 14/17] arm64: vdso: disable LTO
To: Will Deacon <will@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eIXhFNYr;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Nov 30, 2020 at 3:52 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Nov 18, 2020 at 02:07:28PM -0800, Sami Tolvanen wrote:
> > Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
> > point in using link-time optimization for the small about of C code.
>
> "about" => "amount" ?

Oops, I'll fix that in v8. Thanks!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueSjSdpztOsDExCaLyQ%2BPip%2Br6bY%3DY1hR%3DVTOODmoSZMQ%40mail.gmail.com.
