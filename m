Return-Path: <clang-built-linux+bncBDH7RNXZVMORB2HJWODAMGQEWANPRHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5427D3AD2EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 21:32:58 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id y75-20020a1f324e0000b029021ed2c3abb3sf1768836vky.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 12:32:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624044777; cv=pass;
        d=google.com; s=arc-20160816;
        b=StAoSyVmE1vaIeGGjHUrGr1w5W3ZsxMqgCeP+Zh+n3J8lxipoPPzyivybO/CfITFu5
         ErbbklvRrtlJGVSCBDnHGfL8omL5pPSvMHj4u5b+iPmznJSXstnmhM+9d3jF0ge+3z8M
         PqWnxBUmBY+WAlccJhoDpuVNheix+NflaL4tLurYuf2YA9M23gPOvFDMaTrExJ1fXT5J
         Ae4aeccamZVI4puq/hR7eGVK7Qut1DKyCw5LZ5yG23RWTqLOh7VlEQ/L6CQsZPlY/XHh
         tqFx3enxfkKX9U5ezx9gQ1Q94i3uq3mzik+OnnKN0lxzuP6p0VwuhJzUF4hUoG5jUE0r
         9VHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :message-id:in-reply-to:subject:cc:to:from:date:dkim-signature;
        bh=C1ciBJol5nCON2h1WzkbcHsb4DNqnI3oPy/oGsT0CuE=;
        b=wDFYsBtXCxpcFJDHcC2H1Xp2TYL13BbJ67ezSbrxfrJBDg6DfoJSwD6HBHF5eb8SnE
         fqNceIEyHBXBUFsHBxUA16FSGPX//10ZHdRfkgxI/7ypWkev0N/13h8EvUXpHFW7jw0+
         S6MSn3IEb6UZjAVWiATEyIRE7t5BXWX/hGrD2HRrb79gBaTm0r35h0iTfK8AtjfTGA+N
         dYJW79d0kJRtIT137C5yd8KyBaWYc5nbvrCBWZFrTSwHLhdPVx+tEbmDbhGTChdQTNUl
         AN1D7txfjq5vfsfXVk+2zRv9BeLcXcqnEkk8msOuxHTLOm4NGitsxlXwaKedHERrjJs3
         lPNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kbqqelvA;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C1ciBJol5nCON2h1WzkbcHsb4DNqnI3oPy/oGsT0CuE=;
        b=p+LLy6BIv2TXNNiPefbqK5I3HjauUCeh+8HhHgzHzha7DVHOdzU69CqaZF/lqf5WlR
         N+fa2gJ14a4AG/TUxUXYgat5TrRtt35nAxDiglyoLCy3yQSfatL7nAU5CYjhD2z5pF7F
         JfmbJc9znCkA0ofkkeDfSFb8AKpAg7ADWWX/HKwMYf+2WTBX5Pajxod8Dp3Ad14Rv8MZ
         RkJFd61Nt0FKhGFsU3TXrZZJiD2/Q6owkUqW6xSGDgTlXavF3U8kTI6KzmTjWCA93VEj
         qGE+8fnS/is8H54mGk3sr138vyf+p1IU1k7t4N2/JcRWYL76GwFu3M0OLUcWjxwjbNab
         w+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C1ciBJol5nCON2h1WzkbcHsb4DNqnI3oPy/oGsT0CuE=;
        b=EkyNETAuLyobQUs77JjGi1/wle4FKwJLSSETrnY15Xl8XHUNIE3+hMw/x+nbd0ARG6
         VIryqSttzxinoh3euoAtJkQnZDK7Lt79Cq/jo6Uhr/3KiP4pyAlkm+JiCIlYI2fVyD4c
         WaGyN+resW7lslFTkTozPP0Zaq/JuHjNfxhvRxdQcogD9SD1Q+puxLZOgIghaIvuaf+T
         zB/v9XrDi2PtU6eKv1fEdZxKZONgIDxGslmQvZ3Duaq5ytKLgCjPw8GUGttsFRnvD7Si
         QcCMz9ZRB0PdZAsNnHVj95sBJJYniv33Hc9a8MR0ShyGpsnzaG5NS1lIBLKO9KP5p40b
         p0yA==
X-Gm-Message-State: AOAM5303M6Nqbkjm8QBRgAqCig06wJPPEObKSB0rxir+ZOIYjIw8g7fx
	ncN+8J/FGWscWMnm8FnBgOE=
X-Google-Smtp-Source: ABdhPJyMLwOUn5sdnuA2lLoHkyJFn0oCUMj8/s6kk0tt0V8VTZSldhMDbgZIBMwzSGc9wJZfLlPfug==
X-Received: by 2002:a05:6102:2046:: with SMTP id q6mr9031067vsr.51.1624044777051;
        Fri, 18 Jun 2021 12:32:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b705:: with SMTP id h5ls2888086vsf.11.gmail; Fri, 18 Jun
 2021 12:32:56 -0700 (PDT)
X-Received: by 2002:a67:7908:: with SMTP id u8mr9260060vsc.10.1624044776428;
        Fri, 18 Jun 2021 12:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624044776; cv=none;
        d=google.com; s=arc-20160816;
        b=CiXFiXZyL4ScB46YDLB07MTuOMvb+dfAPU4yd6Hjx+jCHMde2QwVvYzzP1UI5gcwhO
         E6KF4WL5C3OCil7RlGXIdV7GPE5+VevHthYXMMFvXtKausHyrrXgEhpROGzNAhkintkJ
         KXBNpb8OLmIpM4kRIcUURcLv9H2tZyIKi6MMDogByfeZdQFAmJ988sjOAUi2hbsoKvt6
         zzliqxle61xjHZMTpaRq/+P1eHVptbqB0ZzeMRNhsDP/thZRd0K7sFFaKFmEresxMz1F
         6AO67iDCqunUTjvbrXBxcpVaXjF2eZRPm3bT+DTeiib6CJRCTpbFlCkf/colWzYQaG5x
         Xx+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=9CauSEz6HxLbbaFiGe9BJb3XkCTojZuIQZ6pJCmdamk=;
        b=hQ5I/gnLcHKcVbRbbH7JhviVDll6U9q8uIIBnEfLqP+y/6HwBc+1/6bqtNzlu6/yrm
         bT//4hA7z1yvDVKDxmtsV0mRbPdolG8zYgC9fXLvccDMssMZit3U9T2VIQkYQ1zm8OCh
         7PahnH6Y3E4Xh8lxFe0W+W58P25s/oZR+IeFVGR6GZIgrhRqDl2LFvwO72ABylX+1YQq
         EKSYjFwUh4Lp1w72Zm2LQLs28Q6mM4ZDAw/hntS4fY26NBOx2cBaDiA39TCwnQ0TT8GF
         Eu4R6x9Z1Yt2xRfmXlcmxZOOjPNsfa6qq0LCC4OKnyPIHX7kAMnRW0o7HvTlRO40KIXr
         /PAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kbqqelvA;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id ba24si696969vkb.1.2021.06.18.12.32.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 12:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id e22so2414933pgv.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 12:32:56 -0700 (PDT)
X-Received: by 2002:a62:5444:0:b029:2e9:c69d:dc64 with SMTP id i65-20020a6254440000b02902e9c69ddc64mr6579262pfb.32.1624044775553;
        Fri, 18 Jun 2021 12:32:55 -0700 (PDT)
Received: from [2620:15c:17:3:3a6:a5d0:1984:a150] ([2620:15c:17:3:3a6:a5d0:1984:a150])
        by smtp.gmail.com with ESMTPSA id r8sm2009077pjr.37.2021.06.18.12.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 12:32:54 -0700 (PDT)
Date: Fri, 18 Jun 2021 12:32:53 -0700 (PDT)
From: "'David Rientjes' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
cc: gumingtao <gumingtao1225@gmail.com>, cl@linux.com, penberg@kernel.org, 
    iamjoonsoo.kim@lge.com, Andrew Morton <akpm@linux-foundation.org>, 
    Vlastimil Babka <vbabka@suse.cz>, Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, Linux-MM <linux-mm@kvack.org>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    gumingtao <gumingtao@xiaomi.com>
Subject: Re: [PATCH] slab: Use %s instead of function name
In-Reply-To: <CAKXUXMxyDaEnWeGNZpCmAFG-5OG0JVrHz0RPk18n_z+ZDKQ-cQ@mail.gmail.com>
Message-ID: <c51952f7-a355-b038-4377-f6673c413d1f@google.com>
References: <1624013943-13935-1-git-send-email-gumingtao@xiaomi.com> <CAKXUXMxyDaEnWeGNZpCmAFG-5OG0JVrHz0RPk18n_z+ZDKQ-cQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rientjes@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kbqqelvA;       spf=pass
 (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::52c
 as permitted sender) smtp.mailfrom=rientjes@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Rientjes <rientjes@google.com>
Reply-To: David Rientjes <rientjes@google.com>
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

On Fri, 18 Jun 2021, Lukas Bulwahn wrote:

> > It is better to replace the function name with %s.
> >
> > Signed-off-by: gumingtao <gumingtao@xiaomi.com>
> > ---
> >  mm/slab_common.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/mm/slab_common.c b/mm/slab_common.c
> > index a4a5714..36127dc 100644
> > --- a/mm/slab_common.c
> > +++ b/mm/slab_common.c
> > @@ -381,8 +381,8 @@ kmem_cache_create_usercopy(const char *name,
> >                         panic("kmem_cache_create: Failed to create slab '%s'. Error %d\n",
> 
> I am just wondering:
> 
> Can you also make that refactoring change for the panic() call as well?
> 
> How about checking the whole file for such patterns and doing that
> change for all occurrences?
> 

Yeah, that would be ideal if gumingtao is willing to do it.  These are 
some instances where the function name actually mismatches.  gumingtao, 
would you be willing to do this?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c51952f7-a355-b038-4377-f6673c413d1f%40google.com.
