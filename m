Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBFMC56BAMGQEUG7GFII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 163133484CC
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 23:45:43 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id a1sf2428248iow.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 15:45:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616625941; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7Cp7ax7pwGRmS/EYTiEZ5jR6RIc1a/FuHL3J/8RstyjEiDtEPauGdiIpEDRfal53G
         WFTe9YQJMdO5A3OoH8sPApP+gq2Q8sXArEkQkTd4hBk905l1SeuPxHgdJfcdAbPIMYw0
         +dcE4c1dJl1iZhEWQmwEt4cjwzYCVFQa60QOCoQ6yjanUPysDQ/h59hr2CGJjsRHaahf
         C1YQ0l2qH7BbNDF2nZYuM9euijtdZ+SzHgGnXA+UpWl1TdCL0SmYIcwEEPEwm81wzYQN
         PeRM7o6t9JijxGhmRm0EBUusd3U2/ZEy6UKGomMyET6xjAIBiXYvxq/bRYj1ID6Y74nX
         Q7tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=p+y0WzIsk9hHRShiMqlXBOJWMfhKIg0rXiEk/yEG0Y0=;
        b=AVNzI/eIplwcIWHfSHJX7hdhJO1DVbFWC+3mlQ5DngAAghDFSkksyXL/c86ctsrJoV
         ZpgWAodMFCd/Q/JKwWNETKF7P0ZVlblHQGNnS0AHAyosaY9F/8PdaMAoLDmu95jwjb8L
         R3tEBMDTJQu/o6UG2RJVrtvBEXoR2rWIGs4arTPxc7COOykYJDqtEq+r+4cPdr1k5Qum
         +KhFSmgqWXjT1SL6HvFYW4lLJhIHN2zkKpVPjLKqccpccI9sSGYMjyHt4VAguUQH5NEH
         7RGwBTX4BA8ClFf6owpkYz+B0mirTivz6TxLrL5IVgHRx7+qlrNY0GXPCoorHvZ0SMKf
         4tMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mf4RKQX2;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p+y0WzIsk9hHRShiMqlXBOJWMfhKIg0rXiEk/yEG0Y0=;
        b=EvH0OtzDfVqkEsYnlIwiPCRd1UGi5kCeG2RJb5JSa0HJUn//LtheZ004xQMUKm5YT8
         AHO8keFLCgARe7NLlzcN1JKZQmqeKFJeH8UieUU+bNk/kXdvJ50tCPjlMMErjB/W6vKG
         a/8fgLdxmfPRIiBiSh5A7LRxkbwQJLnMYrHJDulRREPlVATpGdY13raLKiVOyRQzzhxB
         8h1MJVYFd9h+njy1USrIgc6rdLw5jRK87rek8Gkprv3AJCcYlciFLc0PWJzZBv7hL9Ls
         wpKgvoMOqms2l1QQOVsmTkNZ4iyOMR4AQJ4bDRWeaZOEW7ZHLys3oUdkHM1QrwL2XtL0
         CFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+y0WzIsk9hHRShiMqlXBOJWMfhKIg0rXiEk/yEG0Y0=;
        b=n65HC0VY+z2s7Wcgk7SxAIwaXR7QSJb7Ro/y2Za6NAZXeyQi1yLm4uaGhkUApOnkQK
         EUQCGbSgHGcjhVuBebPwrh6m55RKRcnKo15rE0b0r1OLLl8ROV6GLyjz6LsMSmBMAu3n
         4+T8HPI09jx4k0F75wDDFH0RoDhcluLeGxZjSwEh8vNvwQqcj+ssoGn9FphTmNA6F2F+
         n1BE0X75NjiBKClsUsadvjMZVDqJcN/OMFMnWxvNEJjFRFWmhJ9r0ieDBt0WyyJ5KEKn
         v2G0ZVbqC/Nc1Anakp5ucWkAAUiwL4DOvgkyE4lbaYQRpO36dkzjnO0h718IqXUMObem
         b6Mg==
X-Gm-Message-State: AOAM531N8cExR4YgJocnm2xEpZBoNp7lpAvuf51/JuepNlatbgmwHObv
	cnH2FRxZcI6/Q8tYH48Td2s=
X-Google-Smtp-Source: ABdhPJzhiNXa/qqy9sokwt9/rUGgmZ2dr3foTqmRRPMs0GHZPpe+wroS0HxROJOS5hZOUjXDl45jvg==
X-Received: by 2002:a05:6e02:f92:: with SMTP id v18mr4351844ilo.138.1616625941683;
        Wed, 24 Mar 2021 15:45:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a44:: with SMTP id u4ls907789ilv.2.gmail; Wed, 24
 Mar 2021 15:45:41 -0700 (PDT)
X-Received: by 2002:a05:6e02:20c6:: with SMTP id 6mr4731582ilq.116.1616625941387;
        Wed, 24 Mar 2021 15:45:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616625941; cv=none;
        d=google.com; s=arc-20160816;
        b=SVUbCe+efZcnLdF31FYoOZPdmec00sK5OdFZcYYE450ehc5wQ0xR8mAb/IrZLKoOks
         ywcHmosgqgrx+yOz/x7oHPJs33OWGpxzcvRest3Fli9kHNn0gJsk3YlW1CVT6E2C6g41
         gJM/7KiSRBA8e8s0VUnjaoout1Th39guwSMDusC+tyYL54hMW3smr1OYkAW0TRpi4fyz
         NjvceRe84wQqAZ5725ZMWrhKub+YUcCw3r70VPjug+GvLAyz/DqzgzVz2V2IiFKxard+
         1yVUZ9jShBT2m1iAJdmp6NO2PButCHMiAG+8wGz1PilfIOhdMxgwmWWWr6B7pNlJED5x
         id1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dtMAFNGRvXR9tr74ckEk4qdzC3+4Qmuoanh+5ep0zEg=;
        b=pGuQiOTdOJ42zsJyTbUFTr1LeCswLO16wnEAN+ur7aXgzkTeDOPBq88Iz1wQvFy6Do
         fpUgLBxcBpxBR3/SEmMgpKdCg5yz/uE5IGo3FVMtV/ZZaZ54hrEI07KSFGnG9/z5bZOF
         cdO3U3erYFI9dP3Jf+z7hwK0UrGKQot3zxtW86J6Rnw4NIR0ioqoD4zSyV4jdunt/JMa
         oM5wTD0M85ANAtY4yXih0xYyeFGfb+kJaEVv7Q+FMK9aQ93wXokjulG1ncRKgg84FTQk
         /aqIXBk3xNGAzni24OHiudDCBVNnhQYs7E7A3SxFixLkqBoBq9ukpHgP0WZXRarqucB7
         z6/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mf4RKQX2;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id j7si148259ilu.4.2021.03.24.15.45.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 15:45:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id v186so15796741pgv.7
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 15:45:41 -0700 (PDT)
X-Received: by 2002:a63:d704:: with SMTP id d4mr4751624pgg.221.1616625940704;
        Wed, 24 Mar 2021 15:45:40 -0700 (PDT)
Received: from google.com (240.111.247.35.bc.googleusercontent.com. [35.247.111.240])
        by smtp.gmail.com with ESMTPSA id l22sm3785879pfd.145.2021.03.24.15.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 15:45:40 -0700 (PDT)
Date: Wed, 24 Mar 2021 22:45:36 +0000
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] kbuild: Merge module sections if and only if
 CONFIG_LTO_CLANG is enabled
Message-ID: <YFvBEIkuFY2ajNlG@google.com>
References: <20210322234438.502582-1-seanjc@google.com>
 <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
 <YFoZBY1SqilWAmx4@google.com>
 <CABCJKucYHQ893LS1iCHXivPS05RMDN2BpDFou306jOEbWnt1Dg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucYHQ893LS1iCHXivPS05RMDN2BpDFou306jOEbWnt1Dg@mail.gmail.com>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mf4RKQX2;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::536 as
 permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> On Tue, Mar 23, 2021 at 9:36 AM Sean Christopherson <seanjc@google.com> wrote:
> >
> > On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > > On Mon, Mar 22, 2021 at 4:44 PM Sean Christopherson <seanjc@google.com> wrote:
> > > >
> > > > Merge module sections only when using Clang LTO.  With gcc-10, merging
> > > > sections does not appear to update the symbol tables for the module,
> > > > e.g. 'readelf -s' shows the value that a symbol would have had, if
> > > > sections were not merged.
> > >
> > > I'm fine with limiting this to LTO only, but it would be helpful to
> > > understand which sections are actually getting merged here.
> >
> > It doesn't appear to matter which sections get merged, the tables only show the
> > correct data if there is no merging whatsoever, e.g. allowing merging for any
> > one of the four types (.bss, .data, .rodata and .text) results in breakage.
> > AFAICT, merging any sections causes the layout to change and throw off the
> > symbol tables.
> 
> Thanks for the clarification. I can reproduce this issue with gcc +
> bfd if any of the sections are merged, but gcc + lld produces valid
> symbol tables.

FWIW, clang + bfd also produces mangled tables, so it does appear to be bfd
specific.

> Perhaps someone more familiar with bfd can comment on whether this is
> a bug or a feature, and if there's a flag we can pass to bfd that
> would fix the issue. In the meanwhile, this patch looks like a
> reasonable workaround to me.
> 
> Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
> Tested-by: Sami Tolvanen <samitolvanen@google.com>
> 
> Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFvBEIkuFY2ajNlG%40google.com.
