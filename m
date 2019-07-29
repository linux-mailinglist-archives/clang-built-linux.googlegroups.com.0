Return-Path: <clang-built-linux+bncBD4LX4523YGBBFOV7XUQKGQE37BF3WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE9579B8A
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 23:52:22 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id 75sf46131979ywb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 14:52:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564437142; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7OtQu5ajp03xSkbX5Ao4WngyCS6yxwT/XnTYs4d01CmFhwAtAZ1KTdU8ZTpA9+P8h
         daTAU849o3jxa7ULlHF2Gv4e1hCuB8l+2rM91BRnnH4bGmthOtS6k8drAxR7z2G93sHR
         AyAC9nASgTKDi5iJT69DmfCk94msIxNfWTKi0WrlCEny4+NG43zgLMSACpM1ItlEJsZ9
         gTRLmGj3tPEOjBBr4WtMv2F1EKutfU08Ch4r1LL8Qw1TynRWvyVjbTjbrai8Vj880oDH
         6kuGgSUv9cDrVwqe+5sozFNVrP/MIkCaGtFLpdRtJovn0kggSCqvQ8wRI1So01Pcmv0G
         BCGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XGBc/LxWhq9s3J1VmIAJ8tlQoOTJJCYJl11odUMtlrI=;
        b=fsDzj/x3TqX24MwhsQIwd6zhmnlSMMeBuFZe5LDGlZUtyBDkjstLnjqnOVRUSX66nQ
         JnYM3U72coH+BQY1QtUYVQ3yVi2PtG0MXcO15taV2XNEgUxkGgg719is8XMD+v2jOHzb
         MoYNSdimcUCrm1j3cjzJjTohQ/Bzn53Wehh1Zubg8yPYiKDx/7wgu6dgWGSWuVJn65/v
         7zOCoPkuNIm+TUZxtdiz2kIUuT1YlgA1ys/YyumkENfToC0ZzOBOZEkzRuxpjnfvVO1t
         y53XOdEfYkZrJ/Q69plN+bL1Y6lp5KL2AIpSZ9vn+Xt6R7cu0mykEbbMmKMHALcN8Smj
         Sd9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XGBc/LxWhq9s3J1VmIAJ8tlQoOTJJCYJl11odUMtlrI=;
        b=XYowQ6t21ShnVbDHGeay9hz/ZERspojvkgxSGcjbZYdmGHxNeDDb/DOO+nVvgnTyAa
         CIJS7rNUkMGu39HTr4w/mVi+NERJya3PvuXAhUeT0pk/AKXutDQQ2tuPuEotVuHwtZXM
         GWBMmXARpmw0BTiJGs9sDJkMaStaEqYoFCCvjDq8Ba4S03/ar7VNK55Uq20fskhFsssv
         SEsiaptF/ghUrWO2924UUKMGx+jcnJKc+IteLoYMQQUa+GnN4FhFciVsKP9qgE+A01ok
         9IbtZZm3RwPfXR3yFp/S9L4Tk0Hdm6fqJvdnJxbJv07h/OYb7QF4f7PEGAEJvkVr8egx
         KdCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XGBc/LxWhq9s3J1VmIAJ8tlQoOTJJCYJl11odUMtlrI=;
        b=afmYuxfAd3ZGX6XRURdCR0TSdxltu3fs5UeitAO/TG/rhXCEyX22I8V4iY57BE33KE
         OKSOesb0p+kNw73nQvaUD5obhxKVcdAc46cJB3fEnuubGfIChpSQD8GY1sYCTR4SKTBx
         iDSMkz3lDFR1Uv29DFl3BjiMas0IIAvSZF/TZaZbKfngFgpk1GWpFdMH8zCyKIagPV3h
         B4LXh4sLx59H3R0NO4EE92w/JudOR/pxNBGoD7fHXW+TtB6hGA/AC0F/8JCu6zykTgzw
         BWAMxLcEd4kQ4G12D3KzwQZoW0ZpSqAhD1l73WutdNn0wE7fpT5SEEXq7N2H2X5wrQG3
         ortA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKvczAoh5dcnGTvxLv2vdg0SGf8K9l2wuMSnsTKU/5UoGOdNv9
	jv7LKdCkbPngkehoY/pjwwo=
X-Google-Smtp-Source: APXvYqw56QkirekYrnsLoTN6oyq3GbLjIqe7jXdA2ChZoNHAXNZ4MCQ0UciR/LAXbJvGTWg+0UBT6w==
X-Received: by 2002:a5b:c0c:: with SMTP id f12mr1927233ybq.460.1564437141956;
        Mon, 29 Jul 2019 14:52:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d408:: with SMTP id m8ls9722349ybf.13.gmail; Mon, 29 Jul
 2019 14:52:21 -0700 (PDT)
X-Received: by 2002:a25:5c4:: with SMTP id 187mr73272000ybf.11.1564437141607;
        Mon, 29 Jul 2019 14:52:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564437141; cv=none;
        d=google.com; s=arc-20160816;
        b=wl3XYwP3bgYKfyYAYPL63SLkTtQg3iivHTP9Sq/9DUBnw1Bj/gKDD7/izIeDrz7qfD
         gDLr4FG2eyc+O9/4AiDuJ2SSAbafsbETBFb0YTYjan5oD0iWffzxEhFPGYg21jLbnpKx
         62CyZ1Jy8Iuc/lOJt9SxfMOwyBsjx4vxWhANr9AyfySNoJxEpNBWs6YSq25cWz7t5JRT
         Yjh50Fm6iZokj/N/QERuY16+hYTpOeNtvJRqNypW7es8Uvrkm9N89ZTpOZBcm2SlvFIO
         IToUbSkgHjkdIqB9HNaELclT8T3Heycj9zQZMRpr1baN6UuTgh4wXardlj6Wpgja+M/v
         j+Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eYh/1Q3vf49vuKj3y+Ua4oNc1a3wqJwUSbBL2QK4Qik=;
        b=UZMXR5UN1cp+ZtOWxNYemFpLoAKNhp9BrHrPLyyKZ1nT3T2qQmF//7/U8CxRMHUkIm
         bshDKhJ4n/kIOHKH/AYrYf6GXMloecaWedbXtDwsktbUxPU5tY8/jqgue+Wr7Lc25oSl
         qEYCo+aDKrbaUtmAldqMqSyHOX+5ErCLgYizXif64zZTpSV6Hzz3MGTUFTQISBfGQDlY
         d9mTngbMG89PtCFrgUc/QHltZNMNkbrWgycKXsoD8wz5wstovJjfbsHpTi/dn/R04JlU
         DxFyg5TPYSioypzTVfQUmBSIP4ys8kqGUj4KTY+snmYWE60DgLN1S5cNHwZrQPjaeOlw
         d63Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id g15si3317658ybq.0.2019.07.29.14.52.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 29 Jul 2019 14:52:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6TLq2Kf032552;
	Mon, 29 Jul 2019 16:52:02 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6TLq0h1032546;
	Mon, 29 Jul 2019 16:52:00 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 29 Jul 2019 16:52:00 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, mpe@ellerman.id.au,
        christophe.leroy@c-s.fr, arnd@arndb.de,
        kbuild test robot <lkp@intel.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
Message-ID: <20190729215200.GN31406@gate.crashing.org>
References: <20190729202542.205309-1-ndesaulniers@google.com> <20190729203246.GA117371@archlinux-threadripper>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190729203246.GA117371@archlinux-threadripper>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Jul 29, 2019 at 01:32:46PM -0700, Nathan Chancellor wrote:
> For the record:
> 
> https://godbolt.org/z/z57VU7
> 
> This seems consistent with what Michael found so I don't think a revert
> is entirely unreasonable.

Try this:

  https://godbolt.org/z/6_ZfVi

This matters in non-trivial loops, for example.  But all current cases
where such non-trivial loops are done with cache block instructions are
actually written in real assembler already, using two registers.
Because performance matters.  Not that I recommend writing code as
critical as memset in C with inline asm :-)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729215200.GN31406%40gate.crashing.org.
