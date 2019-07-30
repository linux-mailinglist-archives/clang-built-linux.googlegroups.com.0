Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBC4XQLVAKGQE4J57GLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACE57B1E7
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 20:25:16 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id z13sf55739932qka.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 11:25:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564511115; cv=pass;
        d=google.com; s=arc-20160816;
        b=dmP+FoBzTM2Lyb2q/xSUyzhL/vaL5ASoIcatBejL4qPmSP/YdkhiOYSz+EX1o+gEQj
         aEQ+hyz/jX7l0HQb0nDw84Xa2tqq5CcNGQkCV3lT9XTDKTm+k4RJ4mHhkj0oP0RIBDsr
         fUOPIqQEfmyQ49vkZGgKxr1GW7WC9S5hJEfgK65BJk7GaBvQLsScIu+KWPXYP/Ttm8hM
         oY8gEbH8XfNjMtGI9DSai5KO+K3aAPqak/4gzBMkiu+XPErf1OINrp+f5thKgMOzYdFg
         Krmz1UpP+n+xRfT8FBeGgPU2CxtT1++w7LqgMJVECzGh+Ls/d5W3Xu+gpuIDrmu3ODGV
         2+rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Guz0XH21wrW+Aji1O0W3vjXjOOYYVRN17XaZWlO7VB4=;
        b=j/9DAy2iweBj7umdJYp9p4gbXSjywCi6xLUDD9PV5WSvyyWAkFiF5bBwpwGJ3PROsA
         z8RJhjy67WV/yqwPs9QV8Xbl3GeADlqFh49i0P8Il6bhkQztLB4ar6QsOtvmy/0fQ/Rt
         R7rGVGVBqdVSX17ZRZNLYNMpX1chaiu0RcU3Xmg4WfHZaH0weRf+cnWguxTk4AeNuwlD
         MtOH/VFrdlomCUCQC7z0j8Sg5acz0liuAfyAdNZNqFnz0sskRiJzv7sk/e7UGFY/lONj
         GN7/zryX2iTjX0CQRyZIE+jFQWFdTaJYw5n09AGuYydnPdunRqlJceRxeA2VcXRaj8Wj
         FCBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Guz0XH21wrW+Aji1O0W3vjXjOOYYVRN17XaZWlO7VB4=;
        b=fXzlxtO0MDJA/7E73ui7X+g4Sh9Vp/1Tu55izZ8iDRdZ7z1XDuz4NprxdNtahQxDlo
         Tw3P2+Euf+EsE08xwedx7t9yce/P1DfkxMDTItv0kkLCO6xIFKPzFkPcG4h2aAONNKIu
         X5YLpQtGZshHhytkxnfiKVw7ZuXEua3YX69J9Z8K9kmiD1kAZ8hmEQVrVnH4UBuROf3L
         FeSz3upHhuXIiIMexz3cOvOEo4eydAT7B0qX0Was+a4aToBIAEsmW8I1uNFqUWFB88UR
         M7FP3alW3OoOGH3X5yhF4GrQBHWzOs4fcWXF/1SKiAkPvd2CNPzLvQeTnK+G6SdeLSk7
         YGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Guz0XH21wrW+Aji1O0W3vjXjOOYYVRN17XaZWlO7VB4=;
        b=VYi+egceheGPogILBUtjhrU6z/jU10ASy4OW2s4uHtG/Tc3ikup/Hl1ea+ZoCDX+90
         PWgws4tWU8PJsu/UBCOJwQMyJfZWWDqsRhKkqm66zMmwI8bQg1A5sMLt+xKjElws4s6p
         nfyzwd5qtiI1d6E/7bDDo5VtAcwvGBaOip2p2iTjRYeQW3pBon7653+ZtZJqVI4fWEjy
         mTOZ4ckVstKcJvuorbVGsFzrYbNBiDZF7WJn+cnuSsqVF5/mPk0WEUKX3HfWvY6Wnkhq
         QGJn//MlqB/jNMPQ6kMuS3GVf9tjxXdDrbgKnFChQlPrTsNjvr7+55wYPBj90K0ZEy9x
         YANQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVesnscHiW8gt+mhWNEEd9yCtKdCZSCQUp607b0OEGNXVLDRnP5
	SOSnnKhoaVMTZeu+6Xvm/PU=
X-Google-Smtp-Source: APXvYqwEfliFkHeglQSpiswf4BhZ9LHOVcABTWPy7WZxkwWt164BQnwDyf9YeQJ0I1OJBGE204nIWw==
X-Received: by 2002:a37:47d6:: with SMTP id u205mr77394082qka.214.1564511115298;
        Tue, 30 Jul 2019 11:25:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c13c:: with SMTP id f57ls10579629qvh.12.gmail; Tue, 30
 Jul 2019 11:25:15 -0700 (PDT)
X-Received: by 2002:ad4:45b2:: with SMTP id y18mr67569062qvu.224.1564511115055;
        Tue, 30 Jul 2019 11:25:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564511115; cv=none;
        d=google.com; s=arc-20160816;
        b=BjNEHUb7mqAa84m71La9fH5P2li3syFm7DIYDKjiM/SXQttlg0Vu5zPTlq05UcXijI
         3s+Fey8wEXaulboeVSUZ9UxKQ/QSWOh7Rfw1I7bx2W3ih1ZQuObiR4nK3YvJ9eJvea6f
         5S2OzNr7YMac4sG7uH/L69EdHyAc12nS6jup1EZewVclrjib7tD70SIu5q7OzhPsaT2S
         xNYvOCrrcWJ3lRzEcV9CZfbbhSRMO8LQUtYzBaytERaFvmHIY1lOtkw/cE2Lv927pmyf
         RF609+0cKZfXUqFiaAJhfr/wZfrU+Av7BzYhw/ZOfBUOsLZMfNyz0O1UHZJqZH7JBX9W
         J9Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=hgkfIZTZT31YAwT292CElgRNymWNb2JeX6gELGSJ0g8=;
        b=B4I3+Q+aaVf22ladSPe0NjsfVVDvZzrlIRLXOBIQuGAc6fz8/vazdnukauY5Eb2C0j
         nNs4EyXOkHNrtM9VdaDaZir2FkI8RTxaGG83hhc7ojcR/GlOwAeDFXrGFyPKq2fjYubI
         L6/Pb51nuUTLNaMIQGj61mI/0tZJ6v5Yc07VcAlKAZUPUETO3yP+rxao8C7+FPA743jK
         0G1FUyqNM55sxMTkrYrkzdp9HAVOSd7GTm0QelbH10w/pSD5a5pQzkNtrqBBdNJUsMIT
         RCt8s1P5G4t0Ns/32D6WNrGPQIKgFO2LqCXnuDj2Z/iYHSbZi8iAXaXLPWoO7LN2sell
         hCgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id c23si1985708qkl.5.2019.07.30.11.25.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 11:25:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id 201so47283610qkm.9
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 11:25:15 -0700 (PDT)
X-Received: by 2002:a05:620a:b:: with SMTP id j11mr43867129qki.352.1564511114607;
 Tue, 30 Jul 2019 11:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190729202542.205309-1-ndesaulniers@google.com>
 <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org>
 <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com>
 <20190730134856.GO31406@gate.crashing.org> <CAK8P3a2755_6xq453C2AePLW8BeQk_Jg=HfjB_F-zyVMnQDfdg@mail.gmail.com>
 <20190730161637.GP31406@gate.crashing.org> <20190730170728.GQ31406@gate.crashing.org>
In-Reply-To: <20190730170728.GQ31406@gate.crashing.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Jul 2019 20:24:58 +0200
Message-ID: <CAK8P3a2mT7S4VkxqhzsH_3A8HWs6PHQFO8AinLEaHmvAmT8Kug@mail.gmail.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: kbuild test robot <lkp@intel.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Paul Mackerras <paulus@samba.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Jul 30, 2019 at 7:07 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Tue, Jul 30, 2019 at 11:16:37AM -0500, Segher Boessenkool wrote:
> > in_le32 and friends?  Yeah, huh.  If LLVM copies that to the stack as
> > well, its (not byte reversing) read will be atomic just fine, so things
> > will still work correctly.
> >
> > The things defined with DEF_MMIO_IN_D (instead of DEF_MMIO_IN_X) do not
> > look like they will work correctly if an update form address is chosen,
> > but that won't happen because the constraint is "m" instead of "m<>",
> > making the %Un pretty useless (it will always be the empty string).
>
> Btw, this is true since GCC 4.8; before 4.8, plain "m" *could* have an
> automodify (autoinc, autodec, etc.) side effect.  What is the minimum
> GCC version required, these days?

gcc-4.6, but an architecture can require a higher version.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2mT7S4VkxqhzsH_3A8HWs6PHQFO8AinLEaHmvAmT8Kug%40mail.gmail.com.
