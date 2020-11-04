Return-Path: <clang-built-linux+bncBCIO53XE7YHBBE66Q76QKGQEV67A5GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7CD2A5AD5
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:00:21 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id b7sf19650684ybn.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:00:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604448020; cv=pass;
        d=google.com; s=arc-20160816;
        b=z9etbXATvyKWe/E7xg0b3py8TvIqLf/uS/QdeIy/VSjPcFVJ1wMKOp71gBX1SkAirh
         L3hUvE5geMsg02kJqRQgYpMRBGr1htwz5Og4qTW1A5xfJQTZb/GO226wM4DHmIorJ0en
         iI5tVFs/YkMXufLU7VGfLmZ8h2sXGuMsTJs9cWr1tJjt+m+byqf5aCxfSNiE1e3YtLtV
         cSpZlIstqz8stQvVL1cFTAAIa7YpgYUqzy0pBOsfmZx2xrW1GWZXNy964BuqDvX+u+HN
         8giKPA57B6yyIgzfxQtXGgMeWcsMysLBqra3s/7KqkvhkE6M73+bYfIPlsS6uxouhwrr
         dIyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=qbt8OoOQvonEMDB8qISbx28xwPpadCPGbQPcyB3Busg=;
        b=BH0TRFIo9GEp0mBFZEfMxu0kJ8jb3NaWmrmuYgZswz01e09JBeChkPZFwPv/VCNdbN
         4garJR47QodFAGhG7AA5CqMEcXek+pfGg11JGcc/rUvpRXw1qCoImwy8c0/LQw2iS0xQ
         4fNzzk7vbLABzGQKnmPFHoNUTuDGvUlnDfbxWACoY85o8nKcjfw5GaSlVNAfQc+QMs4H
         jOkcIRmnb+6xT5cpPX3/6aEChbjoou63CQpUVBMPr/AtfCD0Py01ooYhtSk737HaZpMm
         MlNKWVXefpx/HyOdu1mG6H8EcKofQI/UzndC6Hzlw887ISclVwjCxaECanDSSPac4L/R
         2ZMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCaSGxD2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f35 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qbt8OoOQvonEMDB8qISbx28xwPpadCPGbQPcyB3Busg=;
        b=vhIdQxPrQvbYndU9hZelVxbbsQZAi55oXuExdvcoVu8cvqqe6mDpMWxLfoVPSa0zxS
         I+/rorXWSjff2QHx6e4q92LvVnW70KdOP8/WlQrCLft0bHKPksZ18rGBwx04Kpv9SM8v
         VdauvIDXvq92A2mag4Oae5MBi0u9WerCENLloBDNihIXlznS3MufEWDqMNmV9eorfv2y
         VyeqlJPXSrE0pOjC47eTg/FJwlYU3Hg18zYpLOt/DaDJdC4spI8M3+gBuO0zNSqMd04l
         moP1BVmEqHXzIPGaceNtoahFgCVUnTf5eRH+8N5ej1tOo8TxJGAjdMNxch5NAeylyJ/9
         gPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qbt8OoOQvonEMDB8qISbx28xwPpadCPGbQPcyB3Busg=;
        b=DaV8Mcck7nqMWhm+II7D8vkoUmdiFfdmqU/V7UA76vnOVF/aCHbX9+/15h7tY99Qnq
         xQU3zBEdLY31ZhRsOzrakO11donbIs0RkLUVK0rOcbX8EjlluBMbjzLO1ExUwRVuDbyF
         XiFYRohAq+oGu/+i88+1TVDXdz2GAl4kQK/CWBRUzPYRftcgPol8zAsbqFmxlk1te+uF
         pufhbsyOxHxag0AmcTOmhZwBEH2CB8fiv3XL6kvcd7GEc7k5mD06kSAEmqGidtMPwhdi
         I2rdDdeDMoPBC8Xau82ir55QUFeEh6uF6FPbySDp+VHzFVAxc8hLYu/g7jY4g7OSyAew
         T1LQ==
X-Gm-Message-State: AOAM532IGWYFQs5ymZm5Xq/c7kHPUfGvZuhfWFRkDaPSGSzFFHL/Gv6s
	qHsrd0eXnAKqBpzxA0p9Ln4=
X-Google-Smtp-Source: ABdhPJzvjeeli9OxeR7aVKars0wqzAXAQ7O7rjDBJFS/btcmyP3O6a7gn4RTKrJntRG9R5iBTqGXiQ==
X-Received: by 2002:a5b:592:: with SMTP id l18mr32840135ybp.496.1604448020295;
        Tue, 03 Nov 2020 16:00:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4e08:: with SMTP id c8ls60922ybb.3.gmail; Tue, 03 Nov
 2020 16:00:19 -0800 (PST)
X-Received: by 2002:a25:da4e:: with SMTP id n75mr31409460ybf.425.1604448019544;
        Tue, 03 Nov 2020 16:00:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604448019; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0JQhQnkgCf9XET3eXPAYCMkm8YnDvF4v6+WE5IVOLzv0uICnb0h1BDlWtJlnswRyp
         1Qhuh15xVrWvUyRHR8xhG/VKqmFu9eJ5U/xzp6a1Zjw+O4jxjwpM9FCgvJQd9JN7cOvd
         yW47GnOwC3Hpd8ioD4jQ69BJVpoc4e7PVKswUcUaCOhml9TG4Wx3YwjPc1S1AK8o7Vtw
         Hdt2c2rE+VVPEImmbz/r/evxYH6mUNSTt7WA59zSFneVB4MMB+jgd9gSfb86jDxLHv8/
         d3UU2lA4i9H3NcKuaNOK1XtaAr/YnWpK52sdBx3ayatjylQfaQBPdz/u3Q8j450bJDCU
         QVmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=sBlEcrQKMaPe+KohbddbaWe4TK9yPL+Wt7MWMnxm1hI=;
        b=UrCiMv1YUgWufRWNymHofsFlkpC2gAuukziceaFFuQwP04gvK7UOoAkNNIZF+EQikC
         VKzLzAhOZyG+wNmgt5+bJOWGkdIN+PETfSPLHRDZg8laWKjf+GF68Ge3UD/WFYNkVVMO
         RPSOQY/27P91UKZK1ZivnmXNKN0oKNegcjDgEVFtXdwGghsd+uUNnia6+Kx6xeVtqMMK
         E4yi86mgGuSdQUuPo7ir3kEa5fv0l3/XN8b1Lv7RKzl678dXcgzpPygcbrIay8rwTgjQ
         dZiTwSn86xppMwJfUAd7fhVM3J9fFrVB5TJO2vf2Aq0noR3Bxq34mcrPM4i6GmUWAYie
         M/XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCaSGxD2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f35 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com. [2607:f8b0:4864:20::f35])
        by gmr-mx.google.com with ESMTPS id g36si43388ybj.5.2020.11.03.16.00.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:00:19 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f35 as permitted sender) client-ip=2607:f8b0:4864:20::f35;
Received: by mail-qv1-xf35.google.com with SMTP id b11so8930261qvr.9
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:00:19 -0800 (PST)
X-Received: by 2002:a05:6214:9d2:: with SMTP id dp18mr1033766qvb.29.1604448019071;
        Tue, 03 Nov 2020 16:00:19 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id k17sm516851qki.5.2020.11.03.16.00.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 16:00:18 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 3 Nov 2020 19:00:16 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
Message-ID: <20201104000016.GA2399651@rani.riverdale.lan>
References: <20201022012106.1875129-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201022012106.1875129-1-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NCaSGxD2;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f35
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, Oct 21, 2020 at 06:21:06PM -0700, Nick Desaulniers wrote:
> DWARF5 is the latest standard of the DWARF debug info format.
> 
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support. Further -gdwarf-X where X is an unsupported value doesn't
> produce an error in $(CC). GNU `as` only recently gained support for
> specifying -gdwarf-5.

Do you have more details here? On godbolt.org, gcc does report an error
for unsupported dwarf versions.

https://godbolt.org/z/G35798

gcc does not seem to pass the -gdwarf-* options to the assembler when
compiling C source. For assembler, gcc will pass an appropriate option
depending on the version of binutils it was configured with: if the
assembler doesn't support dwarf-5 it can call it with --gdwarf2 for eg.

If the user is using a properly configured toolchain it doesn't look
like it should be an issue to just use cc-option?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104000016.GA2399651%40rani.riverdale.lan.
