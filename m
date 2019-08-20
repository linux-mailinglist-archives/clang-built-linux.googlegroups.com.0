Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLP56DVAKGQESK2TWWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 936F2968AD
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 20:40:46 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id q64sf1056509ljq.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 11:40:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566326446; cv=pass;
        d=google.com; s=arc-20160816;
        b=WUlMjCVJNz1k707dDYa8wFcCsMnHXrcuwmcmQgWUR4tePyRXBs2fMyRLT1OG9YfQvx
         gvBAATDLhXO9vBfsWoccc9sl4tY+D3zpkyuoM2CuxVuu8uTxElwGFVRX3E2JaoIcRj2w
         I3iABOa9COE6kDSV3V4ajHZDz1An0PnG+Ztd1FCvrztU2Ln21KL+I2rDfH+cBSj2awR/
         XH0mvp0t0cOyUWo2HrUNoE4pk1JusJH2k515Aa4/FGiIv/zT5spXZquVrmfXGXZlApTg
         O0Qf4ct9P6MSf3qJW/aYLFTPe88he6rPr66wunWtwJ56Gsi+OsShUQw+zonyxs4JEL21
         jKdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=DVdOA2t/GnSqQO/k0eY1OH0/SEXKufe0b+GawbElXzQ=;
        b=f98xrMN8OMEZDX2TKiygW4AH9nU8piw2KKHP+LWD2mDW6Myopq+JYOj8kalhypNanQ
         gc79Mf/asSXPyworIjhfk2NQOLPK9qxZmsp1u9MqgNTysYNpXVUvNMExiHQLYpomNiTd
         B3MVmePaV5SBDcZ0llsJBjITjI6nsJ2I6MF0DSjRbg3L9rHlX66sC5AuJ9n6DlVbcv/8
         ZwdTdb6cw4idJIlKRiUlDfTtaOM0U6A7BFP+yyo0KKtDvtgkCwMb+wffFqgesImAxS2+
         qIdBsU1G0CxYvstUc7ptNALkMUoVFM3NAMSVQxt+0uQWwshnF06y+qVLC9DPLTBC/oxa
         hl7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b77iBGYf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DVdOA2t/GnSqQO/k0eY1OH0/SEXKufe0b+GawbElXzQ=;
        b=Hz3XMCevOA8ZiVEhZIJzWeP1oo6ra2fRvulAMUkylwKBwtXmPRZQmL42Gxl1xkzW11
         T0B/cEv3+4LqpJROwEEq4eWwjkgLUcejxpvhsIp6wkdxQhW7z6wgFeuuUCmI1IPDuKQe
         ZG1BqmLcSOOzS2zTmSGLH9LRi13Q+bJ7wyErm7XbY5XsGfcHSRBi1nL9Op82NbOYVLH1
         jlTLmu79OriY0KI5lcyKPbQ4VKDlfQKk/Gw6ee7lRlaVVE8stv0rOGkPyzOHNZVPEMkW
         F/Yi23bIWaW4G1ZJk5oW0xZlSKsfdxU79jFdX4yCcjR54j3f7xxh/O9UUdaKEMHrnbyO
         2CGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DVdOA2t/GnSqQO/k0eY1OH0/SEXKufe0b+GawbElXzQ=;
        b=PYKbPajZqwjk4kSZtRLcvfh5zrqV3q2FhyppV52NJxws2ZSJN+1VEd37zH2DY2dt7X
         m/+DbznYyDYZYwKI7TZBvyKLYRPHBjlaVd9PuzDHFI4CumqJPdYZ+JkyB9+5z8UosYtH
         dzcr0jf1/1XZ+pLjgxQh2twFiCTyNSm0gnlY/sJnaSI3bl/4pVYO9ZMUNLfPwpuzH6gq
         x8NwTd7BjyC+JBwM6kb3pcprzup29gWIDCefwUpVmbauxke0i4ACynt1/TKOIlIRW7kt
         Q85vgKQ/toxmw9N5FIsKCKV61NTh8EJFLv2GNtRscYiKzWMjLSlKlDJGRbliVfYzUz9m
         6/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DVdOA2t/GnSqQO/k0eY1OH0/SEXKufe0b+GawbElXzQ=;
        b=dKvq0soKZSwmKj3q3BmthSwWkdNQBrhYhxnGoABNlxSUEwqNuQ3PSVCtC/hvENMit4
         xjnXz3x8kKmqQEm4LrM3fg2vUwcXdVZjCk4dEOohRLTFYOvUpCAP6Wgo5lqYMT5WygAN
         ZIjV9tDToFy018GHVVbUmeGUcn1lL/HgIjUCXXD8YSrc9HnuOW0UybfdmAfyDpfd53AH
         fPg+j0aO+s/URrYZocbdVvHst7GsyfvXTPSKJ8XI1wNSkVNblIyBmCGSWJG90SwKUTGt
         urVPfRKkzc/d8w6Rgnr1ojF81fETCT7GrkLMa0xF1H+mt5IZnUPeKQ+S6DMxE7ZToMQF
         JSSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTULSP77dlEyKZ9F8bM1FtBRK7xmGmdMMqx6m5p+Gy2dny6upa
	1XihN6gIsTpmU8ihx+QpoOU=
X-Google-Smtp-Source: APXvYqxdYWkDidUtgGBbkE1E4y40stvj1QQVh97MJX0gzNAGJyp2qskZgjDthAoYJK9rMG2hzkMQ3g==
X-Received: by 2002:a05:6512:70:: with SMTP id i16mr15761057lfo.26.1566326446023;
        Tue, 20 Aug 2019 11:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:87d5:: with SMTP id v21ls2249954ljj.5.gmail; Tue, 20 Aug
 2019 11:40:44 -0700 (PDT)
X-Received: by 2002:a2e:9889:: with SMTP id b9mr16966047ljj.230.1566326444814;
        Tue, 20 Aug 2019 11:40:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566326444; cv=none;
        d=google.com; s=arc-20160816;
        b=yM+RzdjjZfAmEFun40MDl3luAzk6v+quTvozouh258hY1TuDQOrCq/uQDNcY1H+oEG
         9Hs2N0IuzH+5AbzcefQZlBNEjUEnXgzkhQu8xBBTZUxORouDBk0jmloXdr3Yco/vMUh7
         p4wTEhUkgB9UbZ7xQBiItaVusbNAZvBpSchhydJvfaUvAdxw534q6QzdSbTO58Lo2bCa
         j7QbF4W0HO/seoKRm98Jh0iRhyvjz/z+n7Hhdi/B2/RVcyhAzRsIm2+PNKJ+crYjKskN
         x8L5rtM5hN3ZvO3xhFmoP11tvpMreaYhK1rG8LIlcHfxtI1GsNFUSK+kln0HYBBTb5cH
         B0Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lOlZyeayluYPJ81TcZOroeQndlti2+bc+r8ZDUW4UsA=;
        b=I1No0Md/j/Ps3l9KT6w8vrgK6Ls4w1oFBTTHTXAO8U2bvSgjoufnE55KSVK+wHQfA8
         XgaZlDyaGMPFL3AcpGWtVR7wFkOtkyxpuMiumJnQUf2V6p8A4vU0jBlJxgYJYxk+JeGy
         grbG5dVyMzH9ca6GReiI0hyFyC/AgphBbQ7ABtRPzsk3LeZ0a0eMS0gI6gIcJPwOUXmU
         B2bHjXglgfPVXIamE7WJOwD2RXT52Ix2gYMrJ/Mv82rMgGJd5dxAERXuQAMy0CTnrB48
         DjN/aj4qoiHER0rdQeSW5WxwWL3XFA/MYiMy0P0zE2upEwyiA64muehfnNy+QCXoIeqD
         QOhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b77iBGYf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id d23si277277ljo.5.2019.08.20.11.40.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 11:40:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Received: by mail-wm1-x331.google.com with SMTP id f72so3489426wmf.5
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 11:40:44 -0700 (PDT)
X-Received: by 2002:a1c:cb0b:: with SMTP id b11mr1533083wmg.128.1566326444406;
        Tue, 20 Aug 2019 11:40:44 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r16sm41110718wrc.81.2019.08.20.11.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 11:40:43 -0700 (PDT)
Date: Tue, 20 Aug 2019 11:40:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Guenter Roeck <groeck@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Doug Anderson <dianders@google.com>,
	Matthias Kaehlcke <mka@google.com>,
	kbuild test robot <lkp@intel.com>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [chrome-os:chromeos-4.4 34/35] arch/x86/kernel/irqinit.c:157:2:
 warning: if statement has empty body
Message-ID: <20190820184042.GA19206@archlinux-threadripper>
References: <201908151845.xO92AhOS%lkp@intel.com>
 <20190815201931.GC119104@archlinux-threadripper>
 <CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg@mail.gmail.com>
 <CABXOdTeSvWcgENC71xoKu=6Zj8uU2yzQvduEFm+ZKBrw_6EnAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABXOdTeSvWcgENC71xoKu=6Zj8uU2yzQvduEFm+ZKBrw_6EnAQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b77iBGYf;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 20, 2019 at 11:18:09AM -0700, Guenter Roeck wrote:
> Hi Nick & Nathan,
> 
> where did you get this report ? It is not in cros-kernel-buildreports
> unless I am really missing something.
> 
> Thanks,
> Guenter

Hi Guenter,

Right now, 0day clang reports get sent to the clang-built-linux mailing
list only to avoid unnecessarily annoying kernel developers with
duplicate bug reports (as a lot of the 0day emails are about C related
issues, not clang specific issues). We filter and report as necessary.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820184042.GA19206%40archlinux-threadripper.
