Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2NEUD2AKGQEWDRAZRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 464F719E2F1
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 06:51:55 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id s19sf2404499vsp.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 21:51:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585975914; cv=pass;
        d=google.com; s=arc-20160816;
        b=tZo0uFlB9nXLe0DrMe3qNoAhdvUthn5mKSdabe1e6Lu/9eK7DzbftKvC1SmrQYrIJE
         bm7pK+rE6NsD7HcKSEk4KVLGwwez0RHVAuoub3UpPb+WRov/eWJb9vnB3Dra1MbcheLw
         irgKkrUYYDrepXIWnTb4PkcNpzKn16svlILj6aGTRmKWLEN+oBJfoKtyYHOQeR38sXTH
         6aDHQ/mHIuArxI+/AXLYzZz6jWDlZ6+ibo0KUKKpsRF2mQTtzqqUS7XNGkutN8cAopX0
         C3OO4doBTiGKDRPfpwzh4o6sdy87cHvawzHFq+nFg/KA41XNoIwBOLLLv3b5UmWC0VfM
         5ebw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sKc/h1ZZW0sfrPOQOlgvhF1HfZyWdFD8yb7V4zDjtbQ=;
        b=iMRXoyUNz4T9SANh30KpYIkfwB8SDvSeQ2Oh9fOZTMENkQn4JTn82g3ly/kERBVr3G
         p+I2cyCpbIoUi2NU2CqXNavW8ratZfZ3xnM+1CBJ0Lapj1iBkiSS3UAwHf3Xs6jp6eXr
         yWfFeWp0mRja+lkcI5E3pYAL3qw3viYGy0hR+AAMmBl2/sDTTXF3/+e3fDVN0iuqNqIc
         zFB0voTEzQnvlAS5WJrxz5P1UAok6q9h0nbRvY1AM7aJgLnWveT1+jP7FygiWfArrTdL
         xaLRbyLjIworydPBDPFyUc6FxKjqhJm3rH/G4Rwde2t5ZB73F8OjuLimphj3Ng3WseRq
         q63w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBqdE1a0;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sKc/h1ZZW0sfrPOQOlgvhF1HfZyWdFD8yb7V4zDjtbQ=;
        b=g+QRw+L67oIFmDno7+w5xrs1KaYh03ijgmFD9P7EDJbQPgpIRa1+H9hygF5m5eU0CE
         CVUNGK35YJtuef3YkoaOUpkU6yyWMnd0htrEzHuRwBE5h5ywyjlL36uU5EC2FB8hftpx
         gxnaAhHB3PORL23fjuZwQ8bqPW8MBRn4LJoThZdjsZ11uevCazBApOoCyQT9S8XGcnSP
         Zqczf/vCNRtbrTOaN8t5zJMYEy2oFPBBM3INwxRvGArrfZnrV3Q1fjua3EyoNt1hbGCf
         DHv+iG4XNC5r53Fjlf87XwSKWO2zwnjjQJsBcfLXJZqrg+tLIdBcGoNThN8R14NfMshM
         90+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sKc/h1ZZW0sfrPOQOlgvhF1HfZyWdFD8yb7V4zDjtbQ=;
        b=B1P85q77thE4GLF/F+rzBSTw01k8I4lYUdeoKIK/wEuXBatootZ+FdmCF0b+wy+6au
         MYX4FboZigKFDFcHno9Xy2Z+Okd21KIfeD6QzRgoO1GAJkq+Gih4yEYQzI9JkWm/g6Ly
         DRnqrUqOh2Sb6HFBs47KM3H/QSastkELi+c/QPcoOn3lgMTZ28DQoX7miRJkyDKt+YRG
         +d2nOUEzbtW0MBvbOOAoqVC6UiAgCo9lIfFs64EyPnp+HDGWf70FQT7kpjvXuTwuR1/I
         Nm8ZxRAVxdlS2rxT+Urfu6WI1yptJc5i27Ubya1yDlHq47drlucjyLBHICji+fmk+zzE
         SJwg==
X-Gm-Message-State: AGi0PuZpDr5kccxoYzmD7wWgFdwri00SgccTQFgS7b1R/pqifsOIQQop
	JtA14iycv1UIHN9m2CrZUNk=
X-Google-Smtp-Source: APiQypIVZAVQ1uYTmC70sFTCUOCz2Fg6UjMzsIT6kASQyL2Bx+cIu41hzwp4rjz4MBeJnAl1nsjNYA==
X-Received: by 2002:ab0:1f2:: with SMTP id 105mr9416365ual.107.1585975913970;
        Fri, 03 Apr 2020 21:51:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls1613568vsd.3.gmail; Fri, 03
 Apr 2020 21:51:53 -0700 (PDT)
X-Received: by 2002:a67:68c4:: with SMTP id d187mr8895527vsc.92.1585975913597;
        Fri, 03 Apr 2020 21:51:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585975913; cv=none;
        d=google.com; s=arc-20160816;
        b=GHoDNpPJPx+JDJrighVypisBXAW4+N4FDWkeDYBCWEh65OcAIYuQ88hbjCbCPdrtRo
         5QJtgwnMNfP2JuDIin2YpCyKYu3jLV328T2Vlk3aQnu6Bun3SrohvChRWvP3pHrZBauw
         VIWWIddUeF127rmkCY35kwKI4R4RmQn3gO/MAOuZ3G6j3L9iX6PCGKSGBiOkRBAogAie
         +usEV455fiboV4M0eLcGnwzW6egBBxJ580kbPTYHPrkd8ckJ5XdMDkxdz6u7N8WoCnx7
         x+hnJjmAC3uz3saJs3EItKHF84w9v8QXYlnPCMRAAs5U0NsDrqsJ6CoEqoIQVtgi7hYi
         ue9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VtnwtgiEvNaRy9Qnd0vNktO6BIuGes3v4sHlRKc0K68=;
        b=NMm6beJruL+H6GEiJMpo7Gki/dwOYxjygVGW3EUVvdgPLH6to4bznl+4aaDZ7Qi3a0
         eWo8+QzERcyA9a1yNQMUuka5Axw4nD5vKikt4qJ4O5IAuhqnpP24LP+pFZ1eNhup2Gv7
         3SfivDkaR8yBFdykxMF2gJm7HdBHA5lydZY2hSKZ0cu4Sc/FcBso8iah8FYpu5GKQQnt
         8jEyfL08aGzL5bXFMf+BuAJHYClNBcVSUjVswDPzZ5MFsS1yq12S+yKkStwbfsd8+0RV
         fRDgEZko9/fp5WTkbbeNzWqGJCVkPP1BThkDewyOAlY0pMLWZdWjP1GVa2pxpI8FyPUm
         m2GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBqdE1a0;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id p7si420464vsf.1.2020.04.03.21.51.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 21:51:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id w9so4014483pjh.1
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 21:51:53 -0700 (PDT)
X-Received: by 2002:a17:90a:ba93:: with SMTP id t19mr13501086pjr.67.1585975912420;
        Fri, 03 Apr 2020 21:51:52 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id e126sm6773681pfa.122.2020.04.03.21.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 21:51:51 -0700 (PDT)
Date: Fri, 3 Apr 2020 21:51:49 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
Message-ID: <20200404045149.ot22fmotljg7aim4@google.com>
References: <202004020117.6E434C035@keescook>
 <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
 <CAKwvOdnO_-jiQzCmy7pQNMGmZsgD9J=PYXVzOQ1NF1+u44MsOA@mail.gmail.com>
 <202004021129.F688E2D@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <202004021129.F688E2D@keescook>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CBqdE1a0;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-04-02, Kees Cook wrote:
>On Thu, Apr 02, 2020 at 11:22:02AM -0700, Nick Desaulniers wrote:
>> With Kees patch + Masahiro's diff applied:
>> $ cat /proc/version
>> Linux version 5.6.0-rc7-next-20200330+ (ndesaulniers@<hostname
>> scrubbed>) (clang version 11.0.0 (git@github.com:llvm/llvm-project.git
>> 6d71daed03ced011cd25f4e4f4122a368fdc757d), LLD 11.0.0
>> (git@github.com:llvm/llvm-project.git
>> 6d71daed03ced011cd25f4e4f4122a368fdc757d)) #167 SMP Thu Apr 2 11:17:36
>> PDT 2020
>>
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
>Awesome! Thanks for testing. :)
>
>> We could actually use this in Android for a VTS test I've, uh, been
>> meaning to write.  Also, LOL at scrubbing the "compatible with" part,
>> reminds me of user agent strings in the browser, which are god awful.
>
>Heh, yeah. That's there because (actually, I think _you_ told me this
>when I asked during the ClangBuiltLinux summit) other tools scanned the
>LD version string for the binutils-specific bits. For this, since it's
>newly added to the kernel /proc/version, nothing is already expecting to
>find an LD string, and it looked super weird in there if I left it
>as-is. Hence, scrub!
>
>-Kees

Thanks for the patch! This is a great idea. The linker version may be
more useful if link-time optimizations or future post link-time
optimizations are enabled. The linker will do code generation just like
the compiler and there will be lots of variety. The LD version can
become more useful in the future.

> +  LD_VERSION=$($LD -v | head -n1 | sed 's/(compatible with [^)]*)//' \

This User-Agent style hack reminds me of https://reviews.llvm.org/D31199
... Looks like nobody had posted patch to teach libtool about LLD yet!
So, I just posted a patch. It should appear on
https://lists.gnu.org/archive/html/libtool-patches/2020-04/index.html in
less than 15 minutes.


As what Nathan has just said

> With this patch + Masahiro's fold in:

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404045149.ot22fmotljg7aim4%40google.com.
