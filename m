Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWFS2PWAKGQEOGAT3SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C0BC8F62
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 19:07:36 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id n3sf3300599wmf.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 10:07:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570036056; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXdso+PE5mrh50FOcMq7SBNXBRqHwHJlmbeySPLgEULjWa8O69QuGAXVEnrAZLgD5I
         5+aSxF+ECR/XJky72vwsU3Gwx8lfB/6ztDvGM1znvtwQct+BLFUC2iNIJvk4ZbEWKaMA
         JL8BXZ4pwjvkpWNocpMq12YKQaCw/IylG7F4uUPRVuskOMcUQSUxZ1O4lxECL3dNUGGv
         FXJABIY9YB6CuDOuXq+WgBjK2ypNGXSKuciZVNeu+8/IWVnykjZKSjsnNRsG3yO2PMTD
         U4+ChUzacUO7oQdg7LIKex6tLNs+/vslMAJY+AqLzFi94aTVrSJvQFnlar+FXDCxWdEc
         pmKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=YZRhuAiMoBE05Oll2pGGLf1UkgBi/8lO7fjuxDaLwcc=;
        b=m8BFh9jx94jfVHdq3dtBKJdHPZiFZTNEN6zRFSvt08XlGEfmrww/xPPrFKPxVaxDTz
         X3bOz0b/i3R2heduXrjCw9R4BSX7Crnat9wtdXWDGyQ3RJolQnvOpOTpyxy6ngYDOEtQ
         kUQtXu6Szw3n3qC5Inz6IG0CARgCE+bx6QNbOjQW4bdToPSt73FiOTrpx4gqPHVIZ/4n
         cUNyuevm05ELxKsRRx0ho/st7EQrdrrmoCzznrclNQZ+OkGGtm9oMR6JZQnPiMdNZi21
         QNDvpWYHZMG87xmEa1amKPSNIWhhRZFEYIci3sDpzBmpvUioFqfypZ3rvK+Ufwm6lhog
         C+2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jh17YPqp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YZRhuAiMoBE05Oll2pGGLf1UkgBi/8lO7fjuxDaLwcc=;
        b=VbLWHjounxj6nZhWRhwpJYYVEtGruXCE0HG4k8+Eii4nPMpohA4KD/DzWph6I918Jf
         jXRnUPKapRR8W4QyWJ5AhYuJA7GySQJzsUSIJAcHWLf254ZyET3SYOei95juOX2c+8Dx
         XRkkFdT01JttaoObGCX1Wdj/J++4dJnl2FIqM+eanMe7M+SeRu8JoJRB/KepqKfud1t8
         69u44c39emymInLRy9op9UItGgnX8SVWrAk4cq3nlUGD0G0kljZt3TN+A5MbzxlX8gCw
         B4RnNPeIAYISRS9RGITTkK53ZlaTCFNMp+4FA82fCmZbM468oMI723MomMNrWyJFvp9h
         Q30A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YZRhuAiMoBE05Oll2pGGLf1UkgBi/8lO7fjuxDaLwcc=;
        b=TSfwVsNdfpRhFSAENI6OTx8Ebxa/MaklyYZlpdFR/El0O6TC4W4dVs6raWiuddZxwM
         nCGGmtDcdsPrHDETExHUiEN2RcI/YUjmYDWvog1o17felI4MNVnTI3ccfDyksb57lw7M
         mAVVgvnmLhwMAuxk8zlrtuo3iTbI4ERCuhbyZDfcVf/sevbe5tC6SlAkwmIYyDX42nFZ
         DuhxJ5tDCkLgdVy4Lpb7bKtRxAHyIhTOmetdEVlGOoglZXm0yycrQaaEUc41ySC8sIFH
         sazLhkyGEaQI2PlwonAPNWuf5xZVkzJ9qDa7/ZXZJrlBrpbJzeT3gCz/QeIH82xHdraq
         PnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YZRhuAiMoBE05Oll2pGGLf1UkgBi/8lO7fjuxDaLwcc=;
        b=Wr9GQQuZ0nRx2hq9f7EsaZFJ9b+sf0/8RMwDsm0evKuCmlW5TXG0DsU8RIa2S0HhTX
         yZEktBQREPDJ6T6pkMsYluBOVvh9uWPkYsWAddyRAGMA9I/lrkFjaUEX4pgoQNbAYRWj
         0mYyGY4AbPKBMIh1DjpvxbnfqOEZNtlQ+Y2KLmZHo2zkODn8Q5hBOyzmcaCuboc5t3To
         Iov3D+R9iRMOQf2QK6i+3WyvapwNMX5OehBzJ0oLzZp1wZvFEuc0REoLwVwygPgFVqBh
         yt5jW97UeVC3HbLWDU9R/FDedAopMLOF+cRaya6xLlg+gcfJ2MoPkvBwneKaHZiAdHzk
         Z0Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWuI341HEb5LjrrLgrbdaKp1224r0k7Q3tu6kdvD049mKFlErMu
	JWbWJ2ufWkp/t3nRGm+C46U=
X-Google-Smtp-Source: APXvYqyyrXizQ/E/9/cHf6sn5xXPi1JCymbzCRP+qOj/EciZIRpq8vIk9bBT3iGet6NI2NdVY3O7gQ==
X-Received: by 2002:a1c:a697:: with SMTP id p145mr3393073wme.24.1570036056614;
        Wed, 02 Oct 2019 10:07:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:526c:: with SMTP id l12ls928754wrc.12.gmail; Wed, 02 Oct
 2019 10:07:36 -0700 (PDT)
X-Received: by 2002:a5d:66ce:: with SMTP id k14mr3726679wrw.258.1570036056199;
        Wed, 02 Oct 2019 10:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570036056; cv=none;
        d=google.com; s=arc-20160816;
        b=SVCvcBD0/TzLDBORkWmOnZ8fN/PtX8PT9MmjVET1LnDpwIrc3CS0vFmYOcpz2Y3/5d
         zTPC7qGrVYawk0bDLx7KoaUj9RrgwpAe1Qb31O1yKnryDOMRxZ6gOds6QcUBLblu7V3t
         rjbNkf2gVeuHYQKRKWGDHZ9KAbHlDRDOr4MLSFhF/gyQ7M6cExKRoFsmGWz/y9qpjDtL
         AqET3YJB6e5HV/TPmM5X2Ys7tr8ED8BZWT/LoYBpdDsbIG/rSFUglqC/Z+E4HwsJzOzf
         iBPFVwos+qpRyKSuOjVhAly5iTt2YzixK+llsVumtqkI+fzNhaT6SP3vuy2lN1ixkeML
         ko0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=b5t7DfaGuIJVfpW/6AOvG6x/d8yqj3D8O6SWcaOz/1Y=;
        b=tIW0qkU4EXd3tUDOgi6+IeZYsFJIL9AKxHj9Zx2+JJiG76fcEaqCVrL1vFxMtYw7iy
         8T/4fBLHtC7GwhNXhXBtYn0rEadj2LgO/E1InVNxXCtd4qjxTshRSSBdBF6XcvvEkbe+
         Q7+M7lYgMUqRMK6G6f7D/GHhYINjQx/2NU2QlxlssrWwEv92sA53clgV6hepM81emZ7A
         LqbpfFC+XpIx0d/bOTPOIbbnYaz5G23quDnTr7+8uMuIMU5+SB8BwaJ53O6EoEdBb54p
         7ocDtwan6WxTX8PAY5Jh9SH3vdaCkjV3cTXb2lhMycn9In6DWMhEjf79Vy9FiNYE++hI
         8+Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jh17YPqp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id p5si359323wmg.0.2019.10.02.10.07.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 10:07:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id y21so7762217wmi.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 10:07:36 -0700 (PDT)
X-Received: by 2002:a7b:c34e:: with SMTP id l14mr3397429wmj.123.1570036055644;
        Wed, 02 Oct 2019 10:07:35 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c10sm31832408wrf.58.2019.10.02.10.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 10:07:34 -0700 (PDT)
Date: Wed, 2 Oct 2019 10:07:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: arnd@arndb.de, David1.Zhou@amd.com, Hawking.Zhang@amd.com,
	airlied@linux.ie, alexander.deucher@amd.com,
	amd-gfx@lists.freedesktop.org, christian.koenig@amd.com,
	clang-built-linux@googlegroups.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, le.ma@amd.com,
	linux-kernel@vger.kernel.org, ray.huang@amd.com
Subject: Re: [PATCH 6/6] [RESEND] drm/amdgpu: work around llvm bug #42576
Message-ID: <20191002170733.GB1076951@archlinux-threadripper>
References: <20191002120136.1777161-7-arnd@arndb.de>
 <20191002165137.15726-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191002165137.15726-1-ndesaulniers@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jh17YPqp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Oct 02, 2019 at 09:51:37AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > Apparently this bug is still present in both the released clang-9
> > and the current development version of clang-10.
> > I was hoping we would not need a workaround in clang-9+, but
> > it seems that we do.
> 
> I think I'd rather:
> 1. mark AMDGPU BROKEN if CC_IS_CLANG. There are numerous other issues building
>    a working driver here.

The only reason I am not thrilled about this is we will lose out on
warning coverage while the compiler bug gets fixed. I think the AMDGPU
drivers have been the single biggest source of clang warnings.

I think something like:

depends on CC_IS_GCC || (CC_IS_CLANG && COMPILE_TEST)

would end up avoiding the runtime issues and give us warning coverage.
The only issue is that we would still need this patch...

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002170733.GB1076951%40archlinux-threadripper.
