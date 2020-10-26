Return-Path: <clang-built-linux+bncBAABB46D3T6AKGQEHACZLKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DCD2996BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:22:29 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id j185sf4140517vkh.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:22:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603740148; cv=pass;
        d=google.com; s=arc-20160816;
        b=YRTMYCTayuUbOGzw/dwlmBWEKBATnSrp6Ecdna5CZI6F554rI+z+etStQWIqfc0usT
         RlX+PT11omlhTNZEaIfMoZ6jEuc24B1A3VQc2mKr2+qQ8HMF9j1c9J7A0N3Zc9CQSYFl
         o7OcSWNdfOnZizwmDETS/6B+NOU1uFce8dywwu9QCfhDSg8pZRRk4sGzgWN86+ljExky
         RTvdSlSz7HQn9rwS1Mh3iHNfrw1WPFK4d24ul8VjF7odzq1hyFKFNMcdJZNOobIU93rN
         jOJIKLxPudh94lekxtLfVo8W3zSz3bzkaoIP6adVMrQkSB14s5WPtRL7jdkz3FOUBAFB
         yNbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ztvqN33JewW2A5ON6LmX2ANJpyhhK7QEQpJQXBg3ND8=;
        b=IVh9zczYS+2zr5PDVkCdpNFsqtrE8Qu9w6fhgADZQgk5VlqTC+GivzsTLH5P5zZ+1q
         yWZtcRltmcz4lcXb/O7yhSV9JDMg5zxiQhqinLZHW6qqusoKahJ155UGnQzp6S2uL1HD
         NlC2DlsSxmf6LRINCrTHd087YoA/qIFNQ5TCQk+ho91iqrsRbwVMSrYlzgZkJ94+lD8L
         lrF2eu65XDRlUTcTu7eBb7InknSi0H/duOp3Bxa0tXRKJPEm6c299Tkw85MJ4WGBJEA+
         hK686Yg58XSk47B/oRPsi6ZaA4MWQ9plL6p8gF9tiG1z4Xk9aGrXWE/8nkUXB+OH0d1X
         DdHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aJh9wWLP;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ztvqN33JewW2A5ON6LmX2ANJpyhhK7QEQpJQXBg3ND8=;
        b=Hk5DETcJ8136DfHCrFxBdcSuYB0BvZic8+UvqF5l1NHNHCNWi/6gbuMMQWPH/RmSWq
         PAZFxeIhFWzrtquvJu0iLxJMfCgXdUJmPwWtC6lsV+i7fBRNgO9YN9zQMOafUdenUsFS
         /0ktRoON9d5nvTRJ6CzT2o61zz8Ztl2Ct1YsNHG16vJwTYLaR0qAReBPtckA1cyPBbqi
         4M9y5+rbfechAjkses2t/byIDm2VZGiriAUnUhEwuT60ELsBJFTZB+hccethYGUwXbyN
         GxB5zHJIIaAdA6zA6e3GUQFhdlTojHE/BtNtGgusxSEH3hz2lODNC94SKm79P8trU2vg
         Ya9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ztvqN33JewW2A5ON6LmX2ANJpyhhK7QEQpJQXBg3ND8=;
        b=DuSIdcej+up8zvP4vO4RRF07JfIk3Wwt6u1mCO+VsfsOUSVZrqrWIMnSmpk9b6PW5Z
         1HTfWI8QfSw9uJp1xm+MjaFWx2P8I7miDCq/gVqQ/jTk+EydR5r2ugtNtTqLVNS7AwpV
         lS2+kn/1M4JYzNk9WgR8+HQ1WezQ+ZyAxZMBcp+xhdxgO1I3vQ1Yt0/hGFwTpHQ+NOQ+
         0ZJ2/VQPrSBH8slWBtOiUJ3o0M1rR5vuNatXEfQ0ma6vgorMfbimlbWHdVfn+R6+h99Y
         T8FzSdPQ1/tQZX1g29bXI9yiEAxd2whnTnUn481D5QkYPLo2j0Y0ryAIrFjRTsOchFbY
         p13Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Jaky6CtyF9fPGKjSj7ykd6iH883BOvXj4rH2EY0o4WXGoPVw9
	5TMcrksB8cfHNrt3BdrvsTY=
X-Google-Smtp-Source: ABdhPJy4sdSdmhUVaj5VUZxB2alcyfRdbpGJqq3FtX2XSefoBtYSYuqB6rwL9k70YWmBk+kdaiL3eA==
X-Received: by 2002:a67:df97:: with SMTP id x23mr16555058vsk.13.1603740148019;
        Mon, 26 Oct 2020 12:22:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4515:: with SMTP id s21ls442953vka.11.gmail; Mon, 26 Oct
 2020 12:22:27 -0700 (PDT)
X-Received: by 2002:a1f:e8c4:: with SMTP id f187mr19648701vkh.11.1603740147589;
        Mon, 26 Oct 2020 12:22:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603740147; cv=none;
        d=google.com; s=arc-20160816;
        b=qmpZLFcAIz9ycdkWOsjP8jDK2D6ERPyypWuXRZ7D3Pi1ADbg+H81aei4WjLBvJIaaF
         cTmJOI04w0JFuCfkXEX/d1DwmpHMbZgSx8aBzCe5Qj5ttBDjJk61yyJqr//wmIrz8k7w
         8vt7LnnILQzwomJlE615deDOZLjF6Qq4x2AXukqdef5jZE6TsfZCiCbFN5VODWwEkt8n
         mRgIDt+U2LXR2IQ8Ttp3g2zMYS1bjEYd1lZLeg2tmOI2/bNUswoibhZjdNJQZYQLvWU8
         VNnAYw9Rxf8FqQkkch+1KdLJI9QsRfRJUUEgOc/oP4SvHIJ08E1kgaD/ZVGDe1VXkquq
         EIyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dpmVgXGBhtmFsFyTrhqOckyNMDSCytkDd6GcBglzkmI=;
        b=HE3Nm+arPJuYm9o2KknwO1btcYi5cohVgjKeV4/HBxy593Zem274jpYOSOvc1/hdaI
         NkV/H9Wo3w7kmIcQhnhaHeizSSJDqnh4z7YC8woewfTbfq1TFiQ9HmAjKicDtFgqKmHF
         G3vAV+1nciwvErBOLk2wKT8F0tghQbKD7tbB4bmwOl2W6pRHrPHVKs0oPP3DDBNfFzFK
         jrDBexphfZcmz9heqBT6ophSIiHbzNBPHq8klRhomSBNyHC+pGqdQgc+4vALjtPtLZAM
         IcHwwbfHpgLWxlx3vJCofc/lvxkPKklqqWQtUflY8AAQseEa4YHUDvPEG2HLI4KikbNr
         +Y4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aJh9wWLP;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e7si614778vko.4.2020.10.26.12.22.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:22:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 379222067B
	for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 19:22:26 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id h12so2530163qtc.9
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 12:22:26 -0700 (PDT)
X-Received: by 2002:ac8:4808:: with SMTP id g8mr17753337qtq.18.1603740145367;
 Mon, 26 Oct 2020 12:22:25 -0700 (PDT)
MIME-Version: 1.0
References: <20201026162336.3711040-1-arnd@kernel.org> <CAKwvOdmdv6wABToSpJt5b66E1vD3Ec0QC3DnyZm7f2sJkcsNuw@mail.gmail.com>
In-Reply-To: <CAKwvOdmdv6wABToSpJt5b66E1vD3Ec0QC3DnyZm7f2sJkcsNuw@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 26 Oct 2020 20:22:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a32dWaCQV8Q1g0eoQD2PFb8Jt2pDHEkTJOMAoyJpOhD3w@mail.gmail.com>
Message-ID: <CAK8P3a32dWaCQV8Q1g0eoQD2PFb8Jt2pDHEkTJOMAoyJpOhD3w@mail.gmail.com>
Subject: Re: [PATCH] ctype.h: remove duplicate isdigit() helper
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aJh9wWLP;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Oct 26, 2020 at 7:23 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Oct 26, 2020 at 9:23 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > gcc warns a few thousand times about the isdigit() shadow:
> >
> > include/linux/ctype.h:26:19: warning: declaration of 'isdigit' shadows a built-in function [-Wshadow]
>
> Don't all functions defined here shadow builtins in GCC?  Why is
> `isdigit` unique?  Is that because it's a `static inline` definition
> vs a function like macro?  If that's the case, what's the harm in
> converting it to a function like macro if that silences the warning?

It was originally a macro but got changed to an inline function in
1204c77f9b6a ("include/linux/ctype.h: make isdigit() table lookupless"),
apparently in order to avoid evaluating the argument more than once.

I suppose we could make it a statement expression with a local
variable like

#define isdigit(c) ({ __auto_type __c = (c);  '0' <= __c && __c <= '9'; })

> > @@ -39,6 +35,18 @@ static inline int isdigit(int c)
> >  #define isascii(c) (((unsigned char)(c))<=0x7f)
> >  #define toascii(c) (((unsigned char)(c))&0x7f)
> >
> > +#if defined __has_builtin
>
> #ifdef
>
> only use `defined` explicitly when there's more than one condition
> being checked with logical `&&` or `||`.
>
> > +#if __has_builtin(__builtin_isdigit)
>
> GCC only recently gained the `__has_builtin` macro (I filed the bug);
> I would like to see something akin to
> include/linux/compiler_attributes.h but using `__has_builtin` like
> compiler_attributes.h uses `__has_attribute`.  That way we avoid
> spaghetti like this throughout the kernel.

Ok. I've added a 'has_builtin()' macro (without underscores)
in linux/compiler.h in version 2. I don't use it anywhere else
in my current series, so there should be no dependencies.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a32dWaCQV8Q1g0eoQD2PFb8Jt2pDHEkTJOMAoyJpOhD3w%40mail.gmail.com.
