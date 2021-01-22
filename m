Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMGXVCAAMGQEHO4KAHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A102FF9FE
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:34:42 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id z9sf2156392plg.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:34:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611279281; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnVkbFuRX3Dnaf0fX+2z65Q7cWC8IavdsJi1zdJEDEvim4AgneKaC6u1ZkoD3aGIAc
         3qn0u2Ie7p5pa+UkmT4o4w1AdJjkr1D7hxQqmEKTyHvOMqvubiN2UBAzXsPqayznEAY3
         5vyr0IQwl7rm9msmMUXK2a81TbQImFgSDBS5itAjic0dZcBGgw1ZNBLwT1plDlrMM3lz
         N6uJUU4DCvpEdbFxS+GrErOHHbR7n40iuUMbb9MGtNsUF2lFVyec0GvsEiefQBqbFP4B
         CqPkmfErPOrYLdC1aAVCaXYhtNWGbk7ENW3ECpXtT9yVR7nTV1B/yhh5v7N3wxDwxv5m
         o5tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZjHk7tEtINZ0mB7h+ALke9BnOe1+qJFLyYTz0n6tbAI=;
        b=R9NrSWX5aicOY8cltBWOQVbNAwX3SDcOULpLcfmbdzZ/dzNmnO2wfb/YLDbbZhSBkt
         wLzlF+LezXLq08NV45Sor4w71GFibdJS4X2nTyY1kxICWwk/+oRpQMD0EcdpVO74rF+3
         viSJP3sHEWjUdfD8e6nyUf6EslB/Xacq39H4ZY8DjXB+fjIXUtDqlAK5VRbz85cOyapV
         R1bzrbpRCKK3aIq51sg+6C+9HTodVY2J+gwTxGos/sb3oou2YLCTYT+490n0AcA8Ll/F
         x2f9yAGSm/o3KLEVv9N/CfsbOhw6EMsMinks4wVoGWpeN36Y7NMfcV51Kyf4ZVnRo0Wv
         89GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fDlBOFIQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZjHk7tEtINZ0mB7h+ALke9BnOe1+qJFLyYTz0n6tbAI=;
        b=UzTRKr8Dl/ClgxGUeOE4eonMBlLK8+KEvy0aiinog9x2TzkbAPhE/LCZEHKMqJ/PLM
         6N8+Eh4E6S7oQYcE9Cn1vZRfGUUqG2roWd0u7b3iMo66ChccJQKPHLZGdY4N1hKls2U9
         /fu4x5fF+9LaL+J52EUeoK0ASn5sCofgfifDWO+v2VsdJqUm/NMexvqisdXQTKkWWuL6
         Ia3ulKmuxa0yBCG/oSmJ+oPVhbk++/v1HcBjlNZyMnwmFpBp3Vazw7mn9tcgXUUvzKhx
         hPqIBOUu9CraaTLu5EF1SardRRjyP/sx6XRbISnLifam8/s2wMaP10H5XWVASmU1pGwZ
         DWpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZjHk7tEtINZ0mB7h+ALke9BnOe1+qJFLyYTz0n6tbAI=;
        b=n7JHqn25X/+Z7x3fo3m2qm2tI9IRM1VtLsEL0r87Nor6RrHeQx8/p+g0SUh/qnf6rw
         9Lh8l3wH8BIV4+vBl5/sOLWriyBZCIrtGcShj//7rpJyvb/GHkEvTAJx1beX6N763olN
         csRlq5EIOAWEFNemPtSTmVecLwz93RFA8jt30yEYN6Qkse+H5KiICmDiAq2nyD2Debpc
         HfBnQwg+D7gxX+6z57/ygZgUge1VTbSAELcLdUrfQTgswKFu/je8AOKz3JG+nVcE3hbE
         6ms+G2VR4XkhEeaaGcpcP5uwLqdXUqztSI+GljsHW/9TGZCJ7QkffR2OZt7uuffZJxJY
         h/9A==
X-Gm-Message-State: AOAM533QiFoPe9ZbRxSIQqVMy2f3ddLH5Eqg2aVKM4kjbTow5IE25sSu
	EQILC/zwSXDw94u1enVpBjs=
X-Google-Smtp-Source: ABdhPJxApEm/UiIe4O6K2HMBdtrgVBnXZaaPOAIrUlfv8sSNi/kTbV5J6f36Wj7JQYUAw0+SIVwzYw==
X-Received: by 2002:a17:90a:4598:: with SMTP id v24mr2441681pjg.135.1611279281088;
        Thu, 21 Jan 2021 17:34:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls48280pjr.3.canary-gmail;
 Thu, 21 Jan 2021 17:34:40 -0800 (PST)
X-Received: by 2002:a17:90a:a88e:: with SMTP id h14mr2477711pjq.59.1611279280490;
        Thu, 21 Jan 2021 17:34:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611279280; cv=none;
        d=google.com; s=arc-20160816;
        b=bLrGD0r+QCpNGrFe38DgJy8L2re6GkuyaNhFwyVIgovqQhv26tfWMbd5XzdqXCp+RN
         SWu5B9LQ1vO2qxEONAKtx+TSuu2K9W98oF+EN50OrswsJMwzHeRKCE5fN0vogpVoZzv1
         eoU2MV3BzBep49IhKmz3NY8msaE++NtyC/Y+NtVZ9sKSEG1TYyoS+OakwsgVi3RTnXCl
         KhKo1D4VTyER51VGEbpxlXYmmmCbT8eyj5Ee/itwvy2s/Yt7IW0+/XL4VoRV7q8nAUdt
         mVjXy0vQUVArrL2Av4TPqGQpuZRRsxNqQpNFZQBcJZLiuHemnz8jWnnQf1gyzMWnAgCG
         ZIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J3zUPc3/QcY2myKFIxXj5SI3ce2GEipGTyEZDOPm3Z0=;
        b=O3vC/QKv44rPgiJSjSwgYA8zRH30dmYmdXAcGYSmPd7AG1+Iq7wYMHekriknfmhbu1
         aP4oNGT1eCuJJBGb85peCrbw9H4S83RejVuiSPoa2D+T9ofO7QJ+TxsVucB0mwnFDgRH
         RGaQpSeFOIyBkAH8xipa+DON79KAKp/Kt/kes8CcTL8Xgn+4W3N8A6bu2KHuvqBWrr54
         dRVJmgRuUySdb8YJNmV1pMeUJRYVVZvRlQXRwUqWybtB0Qaa9k/wfvYGDFObUmUDdQ08
         uzMPVXwMsV5aT5ceDDu9Sl+zJaNlewEkaCq8ds8/tDD4qHs3hk0PcOhbtl9wWtXqWdqI
         v79w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fDlBOFIQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id z9si522578pgv.2.2021.01.21.17.34.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:34:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id b5so2852832pjl.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:34:40 -0800 (PST)
X-Received: by 2002:a17:90b:228f:: with SMTP id kx15mr2605248pjb.32.1611279280043;
 Thu, 21 Jan 2021 17:34:40 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <CA+icZUW63tP7kzWCKofJH0E0xA7yLCYpSOYz_aw1D4mkhNhW=w@mail.gmail.com>
In-Reply-To: <CA+icZUW63tP7kzWCKofJH0E0xA7yLCYpSOYz_aw1D4mkhNhW=w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 17:34:29 -0800
Message-ID: <CAKwvOd==OfKHKzhWVGAQs5bFJ9qSbm8WRkX7qDF+FQd-p1gdNQ@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fDlBOFIQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034
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

On Wed, Jan 20, 2021 at 6:21 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Hi,
>
> When I looked through the code I wondered why we do not add a
> "CONFIG_PGO_CLANG_PROFDATA" which can be helpful when doing the PGO
> rebuild with a vmlinux.profdata.
>
> This introduces a "PGO_PROFDATA" to turn on/off to pass
> "-fprofile-use=vmlinux.profdata" (see CFLAGS_PGO_CLANG_PROFDATA in
> top-level Makefile).
>
> If we turn off via "PGO_PROFILE := n" in several Makefiles - we should
> do the same and add "PGO_PROFDATA := n" to the same Makefiles?
>
> Please see the attached diff.

This is a good idea; something that I brought up in initial code
review (on github).  Would it be ok with you to land the core first,
then follow up with this suggestion?

Also, AutoFDO production builds are so incredibly similar to PGO
builds that I could see a possible path forward:
1. land PGO upstream
2. adds docs for AutoFDO
3. consider a config for hardcoding the location of the profiling data
so that we don't need to specify it at the command line invocation of
make.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3DOfKHKzhWVGAQs5bFJ9qSbm8WRkX7qDF%2BFQd-p1gdNQ%40mail.gmail.com.
