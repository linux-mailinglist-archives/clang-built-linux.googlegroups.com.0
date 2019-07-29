Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4NP7XUQKGQE5RLEHYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 351BD79A0A
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:32:50 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id u5sf30650790wrp.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:32:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564432370; cv=pass;
        d=google.com; s=arc-20160816;
        b=cxBPXLOuc/RoKzM3IiMa7ecc0AXKJ0Dwd9bnsB4UfLi0oQC9sApJ978INhvWx0xVJo
         y5Q2HkN8qs0wUf8F9Jigk0h09Yhyci7u2+Vg05qnze8bRLcgy+olJpmfkqDiUrWg5b1e
         bRvxDZskiPG3YxbzhPNV4WU4q9fc/DoFcRFFgbERjnfyj3dHokKKameIqOqlVBuhspDv
         +iXa9T8qnKfJmbilWFjBjSQbSfNEGa+EP/+EQ5bY5udGQnOhXKaJ0ZRG565Co5SXzoNA
         RcG1IMkUGOB9HvlZZ0t9yTbGnXXi7vgVpcjd6a+acsqJFBiVY2nHEGbTWYVRNS+dA+sc
         cn8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=js4MhZVBiUY45lTvttwAue9J6xtXzvFc+VG9+n4lkT4=;
        b=cN6WGQ7BS3Pq50SGe1gEd9kzHs03OwkbnG0zOuv+Umd67PIDt8Q3kKdnU/Yecdd5sZ
         Nwobea2ZgiShFQxNQXmJyM2UPx7O3BCTYvBSv3NXJIRdyPC7FW6Ub3orco+OMobseL7d
         /JQoq2+HGFUnq8oSSDcG4Wpjuk0oouR91lc+K0Oya+3uGPMwNzt1NIpNgl1Jg+Vg39ZJ
         kBMcRg+h2XrbTKAhHq5FY8nYe3NorDDP69tdy++RhFj5WyECsdOPcaoAk45Y4VRbtv5d
         4Cu7eHZhD+5s82CrP9xm0XGg8OWrV8/iEJQyGro/8uXCkiEacUV2PqOZ4XEJMTX7RLsM
         svVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKAMRd+s;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=js4MhZVBiUY45lTvttwAue9J6xtXzvFc+VG9+n4lkT4=;
        b=h9pmPx7IFC03fSraTsp3G6AxCi4yGVVGeNdCvcUqMLJQavCANXlYU/QveV0MvUdSgj
         Jtwg8vX1dXXH6UIBvxUM5kJjgx9jQKbNGkP5Z/O6KsKEZLofsBloLfsjNn0nBYNcBjt6
         KXPVfVcCdO9b5Rt8J4LbIyvCM10uCP4IOdihy3xgLWTb3tDfu+5qmEWzRxUkLvFQHnZE
         BH2NoLoeL7fBxl7qfoA64cdTTHaxBYts6foPS9Sw08/BW3irab6ApjVmU7Xsx0Nfj16S
         VWLueHSzBk6pLnJC2jSa93KUBCzE31wvKt4vzRtTl4aZPLqyn/pMyFZ8txXO/Xts9ZQo
         rGFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=js4MhZVBiUY45lTvttwAue9J6xtXzvFc+VG9+n4lkT4=;
        b=QqfwbH1U/jkazF2mby+lmhzp4kRTyBhxxlsx8fzm7+2/dlfvgK8O0fugYQlod7Lp72
         NHkG7bdvkoxNzod6VsYWbvz4UxGj7Fs+Qssxl5b3p/AgH02ng15VRO1rIROkGc0jhpMe
         UD2s/Xl2BocY+t9xuW7FTdE+TR9+FlFXQV/j2Juh3AFPPMlfP6hzTRVzWOiXl4tQ/5FP
         j2vjzIEMyf20IpHjOo+4mjXA0P3WNLJJH+slH1P2TkMx4qHyjs4GluL+3tbgr09UeZCB
         gXC2SBEmrl0kAH4drU0tWgAdT/8NgMn5voxysRcvc7RM4icJnIuSaZYslQCrCGoNNcYS
         ffhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=js4MhZVBiUY45lTvttwAue9J6xtXzvFc+VG9+n4lkT4=;
        b=PyOCJGFheO+9nTupXqGlOQdP8rWa/qG739iuD1MgBt+owhKs2GtSogeen96HuyHwGr
         4ttxlLUTGOFpALUGm0z1G4QyWx/McaIfVMZa4EsB2veBin1WIAbLbetl6Lk2y3WRuCjw
         aMIG/A6I8xeieVf2ugEBRKmiDfYdjCbR1uhq2tzn2XUxBfg4wGNXO2WqJNE5rFaWjApa
         P7j4Rpf2xFnXlm8miKqF/Lepi2hM1SEMRpdEcGNXPCnrMnUgpFeFhsD8/dxCdHpRHGxx
         o9fnf+0J2JIQHVD2Ou3j0gfEycBMEqqvwFBEnqkjqWrC4ODIWElDCyhbo/RUFCsuWKa4
         6a1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX5bi6/XWs7bOl37kNt71v1gQcS2+XHPkRqLukiT5GFihUkdnsr
	RljmAXZ4SXz9d4A6+rRR+LY=
X-Google-Smtp-Source: APXvYqwPtcqyD90v2Onow4AVw/3DtPyKtSIww5D7gLX0Nxevc+0HAm8GG9l/mmvBuhbssnlBio0uew==
X-Received: by 2002:adf:deca:: with SMTP id i10mr21394612wrn.313.1564432369968;
        Mon, 29 Jul 2019 13:32:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a557:: with SMTP id o84ls21786704wme.3.gmail; Mon, 29
 Jul 2019 13:32:49 -0700 (PDT)
X-Received: by 2002:a1c:9e90:: with SMTP id h138mr104602703wme.67.1564432369539;
        Mon, 29 Jul 2019 13:32:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564432369; cv=none;
        d=google.com; s=arc-20160816;
        b=W/pW0DREYBlFB/Q4A3jkkLCjs5l8hOI4S70wLyKq99SiBiUM892GXkVAM25dE6WIed
         IJyXkRMysFKlNm9eoqbpOsPpNYNX37toxBYWIp/eo4szawzWFM8FCc5SkQAPms5KQK6Y
         LRohY9gyr70+XOdlJK4Q4WkONzATbUDKvx+3Em0Z+VNZ+wjbn4HMv+16791dhu1/HE7F
         KlQgnDACYFOx4Elld6lJnc2pOZ9uwHfJ3rkuDsZDQgT5vUEx2i2D10RksfKCSKFj7CCa
         KQMRwvOQ9+UoRa02j6n+6EqR8AwzNOJtHmE+i5GPTQrotZ7dX5GpbhU+UuZoWmYU1iKd
         dccQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ee1tMJewpz3aSk+3Cf8f90eAN6SRg/eYiUnStRjgYLc=;
        b=KzV5qIw9BaNC0iSGXZaECUP2PrUaelZErfXSNttB8WM187g2MMQY21qXkJ3U+AFfOs
         UyW4lbeMDtxOftztS+BF+n841o+mt9YDoVupHZCUNdZiL8n1LqklGGjFRZpuF/AJBJVR
         sviVONuP/Xa9glmNruC7P60TIYXaLY093FUSOhlh2krEVOqb4unbwUpmFHlHLtbfpjSl
         iOa+xAuXSffbz4b2Sp8MecK02QXf+VPDRbkYzI18iXUuYf4Q01zsoYyLQOttnIWXeDSB
         VJN5stYAr/4yUgjdwc6bUGkLkd48HYcr7k1atGrxu6GY3q/9cFrxj6xQr5imtbJWW1yS
         W9vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKAMRd+s;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id s13si3644545wra.1.2019.07.29.13.32.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:32:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id v15so55051066wml.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 13:32:49 -0700 (PDT)
X-Received: by 2002:a1c:a019:: with SMTP id j25mr100975707wme.95.1564432368772;
        Mon, 29 Jul 2019 13:32:48 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id t24sm56680198wmj.14.2019.07.29.13.32.47
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 13:32:48 -0700 (PDT)
Date: Mon, 29 Jul 2019 13:32:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: mpe@ellerman.id.au, christophe.leroy@c-s.fr, segher@kernel.crashing.org,
	arnd@arndb.de, kbuild test robot <lkp@intel.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
Message-ID: <20190729203246.GA117371@archlinux-threadripper>
References: <20190729202542.205309-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190729202542.205309-1-ndesaulniers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GKAMRd+s;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 29, 2019 at 01:25:41PM -0700, Nick Desaulniers wrote:
> Commit 6c5875843b87 ("powerpc: slightly improve cache helpers") exposed
> what looks like a codegen bug in Clang's handling of `%y` output
> template with `Z` constraint. This is resulting in panics during boot
> for 32b powerpc builds w/ Clang, as reported by our CI.
> 
> Add back the original code that worked behind a preprocessor check for
> __clang__ until we can fix LLVM.
> 
> Further, it seems that clang allnoconfig builds are unhappy with `Z`, as
> reported by 0day bot. This is likely because Clang warns about inline
> asm constraints when the constraint requires inlining to be semantically
> valid.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42762
> Link: https://github.com/ClangBuiltLinux/linux/issues/593
> Link: https://lore.kernel.org/lkml/20190721075846.GA97701@archlinux-threadripper/
> Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Alternatively, we could just revert 6c5875843b87. It seems that GCC
> generates the same code for these functions for out of line versions.
> But I'm not sure how the inlined code generated would be affected.

For the record:

https://godbolt.org/z/z57VU7

This seems consistent with what Michael found so I don't think a revert
is entirely unreasonable.

Either way:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729203246.GA117371%40archlinux-threadripper.
