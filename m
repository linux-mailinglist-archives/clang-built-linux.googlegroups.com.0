Return-Path: <clang-built-linux+bncBDV2D5O34IDRBI742DZAKGQEONOA2FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C34616B20E
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:20:36 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id c127sf4945048vkh.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:20:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582579235; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7SoTKqYSC0/o+c7ZxBvD2PA0bqqKn1Hsug9a5pz+/mAohKqz8LYIlEKR1UyRqBNBq
         H8eHfOKwSMdLS2th6QoGMvQchG0QqQC/SdRl5NeExKLNs2/7cGDqI27GB8RAI5R0CweG
         ai14gLx3l4U35HYJUd8EOT2uxgnF5xqCzABNfq01wl8m9+Gcv/Vz7ZT9x0K487U0sttb
         NlK9gPZedJsASH755FilfNS6pgr0iiFGxfqq5nYCTgenPxzdu36TPldmm96osoVsC9Zj
         untlUi+/8mIDKXSUHjSKq8m6QxbHMg19wonxkrvF11QKhPcLSDnEcGK/LrgcoX/cPEGL
         ZrXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=UkBml79kmO8f4hvAkQroOZ2OVjkArYXDzxW7Z15k5wU=;
        b=ylHaLG4z/XI7QzgJOfmTE3QAJ+SngjQLAScxiejXnwEI8AotWjaPlzfhra1FQnyvwD
         jt5RYpYlsz0Qhu6SVZt05bGfApoYE+l/kluvrK4a/wyNdjuuK0r2dVVpY00jkWpaoJ/n
         DZbimjY7yYTMIIukEYHFhyenV+tGwrqFr/g7Bc1hSaLl1SkeTwNojDJuNTmhxFP7e1oV
         vevzZVn4vAU/G9YjQ2B/j/PDhT3S95aZhNT0++WMQQitaMTFKD0Yqlmsal4MXPO3N7au
         MyKrCmq9WmhOQSnNJBqZxcak50STwyxTbaq1faWv3U3EKG63J4T8B0X1pHQh67+RsrEz
         0sjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=u5FEQU6i;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UkBml79kmO8f4hvAkQroOZ2OVjkArYXDzxW7Z15k5wU=;
        b=a9DKs6dzz2PArmTIxPqObyzJr3aIOHECxV5Q8acFGrm+pmwUIyXb2tPHKYhAbGvAru
         rV/mnr876AlT/4i9zP47Mr98GgBWPpmITmQc5pUxErROxeC2QnFQJkNmWyyVruaHT/Pm
         kzjKlMC6lA/KviKG/7Vm5kHO87h6zbcGWGykt1DjyHX2wus5xT3gYyBf298luqNvjujA
         afgbnKhZQSiKqzMOUVgS/kMYqPrT4uyS5xDCcSbhlqyWoWuWzLIYgV1uaGNwfACXehTn
         zk3vZnHVHaPGV9u/MkFSlTLVuXWF5MNXyBlLjGzbqAgYwqJZTZEijeKFLsFYuuzUrHj5
         G4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UkBml79kmO8f4hvAkQroOZ2OVjkArYXDzxW7Z15k5wU=;
        b=Xv4+qXyqv7BFBWVX2iAoKg/d3I7lVZOS1LB1ESk/9FaC+5XD/JEYHQOWqzsjJDMbdp
         xhOEhLE1rzgPZA3rdkJV+AyIvinuBttuYX4aYsGVXsk98h/y1Fr59niXxn5oKe5+XUpx
         iUBDcoChRti6QmA9ZiIYlYsOkhpCtqV/os/Yy+0Ykp+PgQ+QN0IJrSb3XPiF0x8ZZ7Xw
         jZ3o3wvMp6Io8qTKxCseZu9bfzOE0JkckV0dje1VM8F6tT3VeTQlmnEhiuzb6z/90jLl
         L8QnnUq7gfwE/OM0YdK9cxaczTfY/6iLiicaRBlEPr4POnaTRQfvKPX3PiSqRX74sOwd
         ENWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVDvpT4smZgFxROCE7WRUAk1/sIEezmyHnD4BHShAsUPaGcWdfC
	JEtHA4JcDJDDMMSXHwRN+eI=
X-Google-Smtp-Source: APXvYqxMhvRgABidPw0mKnUCuxKfFzKgCwtd1smVJgkMLU2P7h/M4Mvxwh5whIaP0UQlykIRj/wdgA==
X-Received: by 2002:a9f:3733:: with SMTP id z48mr25713355uad.140.1582579235286;
        Mon, 24 Feb 2020 13:20:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1204:: with SMTP id 4ls512540vks.8.gmail; Mon, 24 Feb
 2020 13:20:34 -0800 (PST)
X-Received: by 2002:ac5:cc7a:: with SMTP id w26mr24739561vkm.64.1582579234877;
        Mon, 24 Feb 2020 13:20:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582579234; cv=none;
        d=google.com; s=arc-20160816;
        b=g63TPTd5vY5qcN0z74ausbTPR8VzACYJaB+r8RxjLjAg9+nfb32issiGaAk0avG9fZ
         tGdiDIO+eWlZdzVn/15CaQVidaQYkrvXyTLFSXg6Fu49Uy5ykqjt1jVsgZXpqyKRdLZr
         sDIC+QyXDkgxM+lZnSsJ0mZiJsU0s2BXJOE8xpEZVsJjsBFQEOf6OPG3igoDFKYZL9Tb
         GJEjvS4786wVoJFrXSyNNrlLZsjcE7KswJxO0hIfRFL5HGww1dphc9YQP6aSkhsorsUZ
         KaOu/HiXs75VW7zCZhH88uXGBuCTRibQRN+n5NvLZ/QmfVwvOh66jA+dALBJeKIrwM59
         fPQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fkY214yexK+t/F1pQbBsYjUG330mJqrxeclx5N+mhSA=;
        b=UV4rSS9xj4yAi8KDImIeaTl7eJ7J662v9uIB7twnsJzje5p1fP7DeTN4Mja5JU5khW
         Sx5JkhA9J/e1CgI0DmM307IhBK6vISLIXS+fesflZEFXPHW4EiMiDCty7xBvP441lmEC
         ZPBmwjp6fopDj8kJWu9obxmeYG0/tP0eoN6hJ5Mm998HGKMmjU8k9phWJuiw14lPNLyI
         Adb8f3+l6Zc01831WgmIHeNMHgbBSqD1ofq49rMuiLwz1E/BC7WTbolkOFsFcdVeD+/u
         n3fFbyFZwdQZFaSeEyZ0Ha6I1FDtmQA2uHt3W0U2WAIHZ6VnKGwJoPHDgBQv7a7B5PIU
         ZMsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=u5FEQU6i;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id y126si794861vkc.5.2020.02.24.13.20.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 13:20:34 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6L9U-0007h1-9o; Mon, 24 Feb 2020 21:20:32 +0000
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>, corbet@lwn.net,
 masahiroy@kernel.org
Cc: Kees Cook <keescook@chromium.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200224174129.2664-1-ndesaulniers@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <ab366833-3f9f-0311-3c06-d48b7dc9655f@infradead.org>
Date: Mon, 24 Feb 2020 13:20:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200224174129.2664-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=u5FEQU6i;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/24/20 9:41 AM, Nick Desaulniers wrote:
> Added to kbuild documentation. Provides more official info on building
> kernels with Clang and LLVM than our wiki.
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Documentation/kbuild/index.rst |  1 +
>  Documentation/kbuild/llvm.rst  | 80 ++++++++++++++++++++++++++++++++++
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/kbuild/llvm.rst
> 
> diff --git a/Documentation/kbuild/index.rst b/Documentation/kbuild/index.rst
> index 0f144fad99a6..3882bd5f7728 100644
> --- a/Documentation/kbuild/index.rst
> +++ b/Documentation/kbuild/index.rst
> @@ -19,6 +19,7 @@ Kernel Build System
>  
>      issues
>      reproducible-builds
> +    llvm
>  
>  .. only::  subproject and html
>  
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> new file mode 100644
> index 000000000000..68ae022aebc0
> --- /dev/null
> +++ b/Documentation/kbuild/llvm.rst
> @@ -0,0 +1,80 @@
> +==============================
> +Building Linux with Clang/LLVM
> +==============================
> +
> +This document covers how to build the Linux kernel with Clang and LLVM
> +utilities.
> +
> +About
> +-----
> +
> +The Linux kernel has always traditionally been compiled with GNU toolchains
> +such as GCC and binutils. On going work has allowed for `Clang

                             Ongoing

> +<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
> +used as viable substitutes. Distributions such as `Android
> +<https://www.android.com/>`_, `ChromeOS
> +<https://www.chromium.org/chromium-os>`_, and `OpenMandriva
> +<https://www.openmandriva.org/>`_ use Clang built kernels.  `LLVM is a
> +collection of toolchain components implemented in terms of C++ objects
> +<https://www.aosabook.org/en/llvm.html>`_. Clang is a front-end to LLVM that
> +supports C and the GNU C extensions required by the kernel, and is pronounced
> +"klang," not "see-lang."


Thanks for the info.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ab366833-3f9f-0311-3c06-d48b7dc9655f%40infradead.org.
