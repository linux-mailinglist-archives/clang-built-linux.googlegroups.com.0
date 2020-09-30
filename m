Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKHB2L5QKGQEGGE4PLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE8E27EEFF
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:22:01 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id y2sf1324920qvs.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:22:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601482921; cv=pass;
        d=google.com; s=arc-20160816;
        b=dBw2dabaLJNDhr2Vz/5qyGp9W5t46K8UDS55hkpdNcAVlR3xpMTrJ7ochxlZbeQmw2
         1IUbQU7EnZxt7zseg5/i7m2rQpXaEO7ME0jWgl7guhtJQx+dVYT1d7cKKdF3ARghheNC
         JBVniqLl8lt0NXWv+yeW1jz8k/pXsSL7ngjx+7pqJ1FH3NpHLz8d+5O57xF6kSbZHtMs
         2JwqTsGJSiFWhJurRKTc8abdfEKxnLWTeyBl+K39gZz+iBNmtbQsqCOoEKvQ9huJFKqq
         BckG6+dUPDrlRR5kyheH0yHVUVHfrpAHG1hvCIELAM7gck4lT6MLar4Lxhq7CI3Nbm+l
         k58Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=j3LcLMIjXOhx+kBv6kYuJx2l2q9SSnquvQ5ySA78jVk=;
        b=ahR43nsgRrniY/bHKGHf0UJoi9QR7YPfIoaVQwl81olwZlGU3KznaS8M0oZ1iLVdXL
         QSjvD7gmVhDE+fCZq2hJjBxPAwiTpzWHogcwzceyMvOcHC0/LVEScI67PdJYXtyP9F4+
         eZHHNz0xjNK4aTN3uNAeU8EZZX6Zpi+gM4Qmk3B+NlA+kQb9x7nnsle4mhc0namU2SmR
         JJ+0mYtQLYUXI58sSn0XD+2kaAuOg2y8wXl9P6e7aW/7RJPPfnvemTynyq8ZYOOfuMQ4
         2tg5M4Rrharw/8erlulia13WNMAPLorxhPDUNZx9Uk8ezcyb4RdQHaGspyzT2ftQzqaw
         6h9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQEUbrCq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j3LcLMIjXOhx+kBv6kYuJx2l2q9SSnquvQ5ySA78jVk=;
        b=Cjlhcyd1zLTp26CoLGpGgUXJbWxsypt6nfUU/4uXjIuLf0iTItzwRdk5TY6KkGW7Uu
         hV7UTdQ7rJQdbnGfSkw9+OLAAWevd5YDgdBgEF82lLCVLJveH+b3F6fuw+N3OylVvXSm
         JY0IFPfZnP7t+uqFEk0FnzP9wZd4J7LA+Sal1KDAttEzcKazH7Ms6lkWs2UpIET5xiGG
         MJl2288pj8YtVT+so0bVwJqG2C98pb4e8OkcSqKqouoHI4ogENpd9fkxI4EJRcDvscEH
         uS+7yYgFqyv9R833ZQWmMownQU9oPzRyL+83g5Kf1xR8/1mq85DK2dTzNSxJIF9OYT7q
         cufw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j3LcLMIjXOhx+kBv6kYuJx2l2q9SSnquvQ5ySA78jVk=;
        b=N++GC3OSB1eTa9L22YiQvd0WaFIXHIlrpjrMSBr6chktwGT+Xo1W3C4ESiR42xMVAL
         Woztyl1wuJHpCn8bLY/biRE5BVq1fq/95i9NfJOyzasDFODlEBNWD8xLvArdI6wm0qLx
         /FqMFPBwayytJQ7Ds53nAy2S/xLNeYqkIzOil5+wNxx5vU86u0kGRRMyGzLEI1cFBGED
         3UXv94D9oNG4RNMTAD4lAdWS7zz6UYVc4cRuTh7P8UPe7R2CDBkxJevqLut3TI72yFDx
         ZU84cvFHhxzhwqA/KKWouupcTJUXNQloSg5cm+NmtIqqmUsuWVWSRLShKCW+O+GxdDkS
         2Bvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j3LcLMIjXOhx+kBv6kYuJx2l2q9SSnquvQ5ySA78jVk=;
        b=ONeOEWq7W5PcszCxXIRnEhleniQCoMYqAB98vYJFlSuM+vGnwqZ3RhTk8rsfNHTbG6
         P22eCPPkRN7Bdn3tp0uxfl9Zc0e/2adpA/Ana4shf/pfAstMhPf689b9GxKqPJ06iRNe
         bBedzPJYpzVsIyLdmrU3gnjrhSuV/Sc8jjX7/5AhyxyRgF934eCnBl0TqhDxwEo/0Otw
         CV0BiGZ78rKOJrCdM2m2X7F3B1dTOdc73XYfx8tkaNPSlvmcDmRz4EMyeI11jcf9Ka8d
         unBucJTmm4vDLpSqdM4bYGBA+a10XzArT3yhnTKlg17rQQKAIIjIELGQEGtf7PvlZ9IJ
         Sv3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308q9FoxS2UxhHQdW8rXSXzJqATj3Y6Ky0G8FsrnJBK8Y5DWVWF
	77GFER0dDX3ZbuUMfDgryqI=
X-Google-Smtp-Source: ABdhPJzUEkF108Jb9BGfs8OmdZrMlgJGGbFzgeicBJvvBPNmL9OQeqqW+K6Xc/gGMG/USZEkQb6XnA==
X-Received: by 2002:a37:7104:: with SMTP id m4mr3386598qkc.252.1601482920869;
        Wed, 30 Sep 2020 09:22:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e00e:: with SMTP id m14ls1080340qkk.3.gmail; Wed, 30 Sep
 2020 09:22:00 -0700 (PDT)
X-Received: by 2002:a05:620a:128c:: with SMTP id w12mr3420798qki.355.1601482920440;
        Wed, 30 Sep 2020 09:22:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601482920; cv=none;
        d=google.com; s=arc-20160816;
        b=Fl1LW3X/C/ms2p6PEtUfTJkr5O64q9nt9sfgyWHJ3jgTCw+iIGXwCDNXPcZGhFzg+T
         xOwxrnEjHC4GXrzuuRYzDuqBV+GTcSpXNbRfOChGhn0WYRQdOfLPS34Jlvmr9mHxE6zL
         XIRw48Jz0bFsZj5X4GID+5Z7eVfciyB81z0rbZWSAhWlBWIiLNWplvfcxk8Bs7KJiNbq
         xviWX9mfeRtWXkgyfBYRAtqBa+HVIoo07HUOxN+k8O32oEbcPSIrXoacCxbj/+w25AN+
         N0KSZ6t62iSAoW5KyT4ebpoOM/PLMV1OSroBDCbvIxSV/cRTweJtDJ0ewTTFPOt7qg3B
         vfWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XgJ15fC621DrnHIQ5oj1JA6FQX1Stjqg9GgjlEH66cQ=;
        b=w3zx2JtchxopSiuhyXOX1AQUdRllV7EE1A9XbYDNgNKC5+ftd07J9I0XqySuZj4tzT
         5zldtoQRltlNnf6HVAjCwm6sggLsjz0xsmxIuN/U5YCjXDiieujD35OUmfEjRXKhB8p5
         6iL3WPOefZlmuB4SrMXT7FT9/Kidw0vO5i7kr0+lZUVuLwmnXas7fwMmL9GL8Yd4e2S+
         IS8PTILvKDMlArRRhtaaD+0+ol1zSVl5NGX0pZ9IPhHQgoyqkEF1XK/TI65PLUliBS5a
         pq6trWh5UmjWvEKHPAPUMYAXTGzumPgxLb8gAKslZv0ouGUbxXHfmYvEs0piCEnCXm7B
         qD/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQEUbrCq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a27si142203qtw.4.2020.09.30.09.22.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:22:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id o8so1328887pll.4
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:22:00 -0700 (PDT)
X-Received: by 2002:a17:902:eb03:b029:d1:8c50:aafb with SMTP id l3-20020a170902eb03b02900d18c50aafbmr371147plb.29.1601482919393;
        Wed, 30 Sep 2020 09:21:59 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id ca6sm2852452pjb.53.2020.09.30.09.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:21:58 -0700 (PDT)
Date: Wed, 30 Sep 2020 09:21:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] docs: programming-languages: refresh blurb on clang
 support
Message-ID: <20200930162157.GA236767@ubuntu-m3-large-x86>
References: <20200929211936.580805-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929211936.580805-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DQEUbrCq;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Sep 29, 2020 at 02:19:35PM -0700, Nick Desaulniers wrote:
> Building the kernel with Clang doesn't rely on third party patches, and
> has not for a few years now.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

Modulo Randy's nit:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

>  Documentation/process/programming-language.rst | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/process/programming-language.rst b/Documentation/process/programming-language.rst
> index e5f5f065dc24..63af142d64ec 100644
> --- a/Documentation/process/programming-language.rst
> +++ b/Documentation/process/programming-language.rst
> @@ -6,14 +6,15 @@ Programming Language
>  The kernel is written in the C programming language [c-language]_.
>  More precisely, the kernel is typically compiled with ``gcc`` [gcc]_
>  under ``-std=gnu89`` [gcc-c-dialect-options]_: the GNU dialect of ISO C90
> -(including some C99 features).
> +(including some C99 features). ``clang`` [clang]_ is also supported, see docs
> +docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
>  
>  This dialect contains many extensions to the language [gnu-extensions]_,
>  and many of them are used within the kernel as a matter of course.
>  
> -There is some support for compiling the kernel with ``clang`` [clang]_
> -and ``icc`` [icc]_ for several of the architectures, although at the time
> -of writing it is not completed, requiring third-party patches.
> +There is some support for compiling the kernel with ``icc`` [icc]_ for several
> +of the architectures, although at the time of writing it is not completed,
> +requiring third-party patches.
>  
>  Attributes
>  ----------
> -- 
> 2.28.0.709.gb0816b6eb0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930162157.GA236767%40ubuntu-m3-large-x86.
