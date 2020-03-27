Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB27O7DZQKGQEHUB23NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB42195CAD
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:27:08 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id j88sf9663238ilg.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:27:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585330027; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANL7VNOhWQE6a4KYB+dPK8h4/H/ukYk24mgDFYgGfIuGHEeEUouhX4BYwkdNgINDzm
         fGJQkb6bw5Pt86WU8wGdNy2WRxoVNFapeJijFu0ws0c3RYvqW0qnL9w60mfD5ZsjRgOQ
         hC3BRUKCE41B1j9qbkNn/TlEdqgNPmP3IMAk203WcNkoOpTd3WDugiyRiJuqYkjLaLVm
         jdOQgTPyxs3MGkNg3VzLO3QIvz7HSvpiWfim7vrcHwFEXovNUvHMNAXMlL4nQw40Obaz
         lsZLcSrwhp6TVNi+9PhEcAEoYoMxmFeHqnYj/iCtezhJILP0lupaUgJ2cF6k9Ce1j38b
         YQuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=KTkDCHAY4J1K1gb4LenPu1F1YWQhyFPuXAJWFT7Xp8g=;
        b=C4Hr8nH/IUVCtWEV55j/ilk+XDZhg95xI+OAbwrcKIoE4e432+IrEeTr1eW2Q5y9Fi
         FzE0hmN4gZVYFLb0Wzccjb3jT7+eKLz3NWZEbDTnDcsA0huN1SrUK5nbKaA4njlTf2tW
         es6z0vtPH1+mKwH9n4tvLmxXiZQu187O6mxr0aWFsVMufjVwEYrPwG6s3/hpQl/9CSp/
         x2XFbfk0HmnHQhs+2JzyaYWgs5MSlJAHBW0x4HMRbVdp9PV12HRIls7y0FwnX/kBMIUC
         8v5n5qhUu+qeOcwywVIPSPREnms6vUv7G8CBaUr1EKWB42PD6/Xewpzx5q/jKoVMLZkS
         fp1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p1kxgtdl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KTkDCHAY4J1K1gb4LenPu1F1YWQhyFPuXAJWFT7Xp8g=;
        b=kQStfHrxqBvzkfbgH8JZYT4S3Q1H2sDZIyk1xUKLhb4falzX43fiNceD1avq4ytm5/
         +YWYscCeERS0whGNdFU5tQTctOdqCk4PX8DsJYD0eb3KUZWZR/CMWM6K6yyIE8PvwEwa
         z5WqgXMQOeLhmXlOhXZH3ZzhoKu042fl7mK/hgADRYvBFap9DevlHPo9VsTvhvypS0Vz
         UtBjJUoSP0yis6oCPNhb9R7+lH75uqtLiHvQHga+mdu3SYcJZs8Oj349wgiEUcJjWXZd
         PcjUlxO19amNZD0uLaDd1lYarbgfL5QLHz8FAe93Q2A64VEeZr60bXPu9thGEV0mQ1S2
         Hedw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KTkDCHAY4J1K1gb4LenPu1F1YWQhyFPuXAJWFT7Xp8g=;
        b=ZSxqWKWAgxJTN6Cr3S4gB4w8pkpxgS6pEB31WNqBsxBCIS7QzbFWZTi9PcycPWq/s3
         eVyrca3BJw8QWFye6830PuG+0+dA6Tea5AgCvoddJiFHQBHtrgLwMmaOBYo78YeDduWC
         m5eyZJMIktqfuNNg7ZT5XDzAxXzEDN0sVuFyvHfvabZRgI441LNlNCFDVNYGukwbCJiA
         VNCqEWFKf+3G1TKVK5/7mPfb6I/1WDfqtTDTzdSOzNvAwZbvJWHea0h4OgpMkE8Zvn4s
         4a8Q6vw85datAby803TMiSN7NCl4jnedoQZsdY4hSLR3QwpOusxkiRNsI5Q5QkSMcaKz
         TcWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KTkDCHAY4J1K1gb4LenPu1F1YWQhyFPuXAJWFT7Xp8g=;
        b=SfkXvj/Jn8VhapBiFRkKFDUwiNm3vAC6Q0FJs/QY/m7sBmXgN8e0QQ2hSHRpiLuTkJ
         lwNF06x1+IYr2i+l0YoTcn2ucqNsAb0e+GlpalscNGxQ6O9i63pw6oNaF77VNSaHwUSw
         onxICk/KuHjfaZpJe1edy5N/dmt1E4kWU45Lz4tL8Fyf73b0p084PWzYlMMQuWaX0+me
         ZDyfK+xJEQMCYvRSvqYLbNPeoko46L8+3IQosuKP38bvooepAComp3AQCYLarJPAy+lt
         GqM8r3DimXEcxky+P7K9fubAi2E56GZNMPyAEGfZUb2LF18SihdiaKIaM1AYQCk+qdK/
         AGPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1K2t6ZNgUN/vZGZ78PIMSQR7F9bqSBQ9JAb4ns+PoAyX/JAZGt
	M80Gj+hF10wTaCtayJSb5d0=
X-Google-Smtp-Source: ADFU+vuMDiIBG29Q4HoqY7l3spUzr5ghLRmtBvomkq6SelS99Ft4PuHQVBoT2pYOCb14+1leJAJJ/Q==
X-Received: by 2002:a92:2544:: with SMTP id l65mr191734ill.286.1585330027182;
        Fri, 27 Mar 2020 10:27:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls2938724ilb.4.gmail; Fri, 27 Mar
 2020 10:27:06 -0700 (PDT)
X-Received: by 2002:a05:6e02:90:: with SMTP id l16mr187580ilm.294.1585330026895;
        Fri, 27 Mar 2020 10:27:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585330026; cv=none;
        d=google.com; s=arc-20160816;
        b=YvHWxw9aXowXofAvDfFXQjPi1iUgnFyje2hMBtHmSHebdh+6n/7dxWXn5Kc4fomCUT
         utve7yMJzSuTOH8GlN3iM+noIB3j515S//t95zpP8SZuHA1riZ/e91zGTwb1C6258HDa
         9PVeiKJFrjH9Vl65SfsgP3kwGGMaHjDs23uBhvxISnCAFIrHyCzgf5UkyGScfHnFQb+l
         gPZIFunvJNdkN8hQ0HgnNwm+n2aUVCbl1L/Ai1FIPQu1Q766ouVJWoZLx99s14B3NA3n
         zl+Yu7rcAhkD6/QLE7hL28bWUaJ8jMD8OCBaJypxBW0AGv4LOC4bJ0WuevLmXWKzQcPg
         ap+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ClBYvSVmf83rxBcoJPioNptteHGrQ49oK3IN7T/4Mgc=;
        b=e9sf9JNxQ+z0SuBmr/yNAc2Af8sBis74W/mmUkyesvLR3x/CiNkrlH6qrrplCl9X5o
         ZnVulATBsi2nMtR/n9VNvFTDiM1gze7p/DcLNKRGQ8z/y3ynPCyddD7e3OGw/3Uh4uJU
         r8wZl4m96IrDIJT4G12FoL8NXqW5p6mz1qwvxEgYAeaPAFH9FOfVwHprRyyqwD9ew2li
         pZzEYMk4hANUV392Vpim8kxpHu6si137j0Tm3xEiZtmqOqjAMD2HjpCLuiQFtx16yv5y
         TTUxQJ4unSaqylF81S0MDFNS4IXgqmcSkaRjQKHqtlyeh3Jry1SnJSlBO9PSrQvtqkKR
         IPog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p1kxgtdl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id j25si373724ili.4.2020.03.27.10.27.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id g23so10559945otq.4
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 10:27:06 -0700 (PDT)
X-Received: by 2002:a4a:d88b:: with SMTP id b11mr421504oov.42.1585330026427;
        Fri, 27 Mar 2020 10:27:06 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t4sm1105871otm.45.2020.03.27.10.27.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 27 Mar 2020 10:27:05 -0700 (PDT)
Date: Fri, 27 Mar 2020 10:27:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Clement Courbet <courbet@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Christophe Leroy <christophe.leroy@c-s.fr>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v1] powerpc: Make setjmp/longjump signature standard
Message-ID: <20200327172703.GA28580@ubuntu-m2-xlarge-x86>
References: <20200327100801.161671-1-courbet@google.com>
 <CAKwvOdmLmfJY4Uk-Atd9dT5+zQTPeoagjMZMcDqdVfKCU7_BuA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmLmfJY4Uk-Atd9dT5+zQTPeoagjMZMcDqdVfKCU7_BuA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=p1kxgtdl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Mar 27, 2020 at 10:10:44AM -0700, Nick Desaulniers wrote:
> On Fri, Mar 27, 2020 at 3:08 AM Clement Courbet <courbet@google.com> wrote:
> >
> > Declaring setjmp()/longjmp() as taking longs makes the signature
> > non-standard, and makes clang complain. In the past, this has been
> > worked around by adding -ffreestanding to the compile flags.
> >
> > The implementation looks like it only ever propagates the value
> > (in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
> > with integer parameters.
> >
> > This allows removing -ffreestanding from the compilation flags.
> >
> > Context:
> > https://lore.kernel.org/patchwork/patch/1214060
> > https://lore.kernel.org/patchwork/patch/1216174
> >
> > Signed-off-by: Clement Courbet <courbet@google.com>

Thanks for fixing this properly, not really sure why I did not think of
this in the first place. I guess my thought was the warning makes it
seem like clang is going to ignore the kernel's implementation of
setjmp/longjmp but I can't truly remember.

> Hi Clement, thanks for the patch! Would you mind sending a V2 that
> included a similar fix to arch/powerpc/xmon/Makefile?

Agreed.

> For context, this was the original patch:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=aea447141c7e7824b81b49acd1bc78
> which was then modified to:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c9029ef9c95765e7b63c4d9aa780674447db1ec0
> 
> So on your V2, if you include in the commit message, the line:
> 
> Fixes c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")
> 
> then that will help our LTS branch maintainers back port it to the
> appropriate branches.

The tags should be:

Cc: stable@vger.kernel.org # v4.14+
Fixes: c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")

that way it explicitly gets picked up for stable, rather than Sasha's
AUTOSEL process, which could miss it.

With the xmon/Makefile -ffreestanding removed and the tags updated,
consider this:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327172703.GA28580%40ubuntu-m2-xlarge-x86.
