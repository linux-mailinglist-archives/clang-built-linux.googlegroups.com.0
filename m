Return-Path: <clang-built-linux+bncBC2ORX645YPRBIP4WXZAKGQEH5Z4B3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 52243164D9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 19:27:47 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id c72sf760854pfc.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 10:27:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582136866; cv=pass;
        d=google.com; s=arc-20160816;
        b=yb8YiuC2yWLcZ++OHfMxU875q8QPvG1h4ts9PJJvSSYSVV1ki8MYNVC6Y4iYNenVe6
         LO5h+KfyKg+a7m2eLdPCmxx1EBGAC1q3/4EUwm7WHJm5UM7JfgU4DAX2v4kWQ/w8XAH2
         P62MkRH0HAqw14x3mVH8f0SudQjMInR3pEhAHqEO0U9bTf2KtBakpEfr4ZaK6+3flpgb
         IKGvgxAxa2zlmshllzj1G5XBJInFE1WjRTiZyjGmRUGdhmIpC4j6NV3TpU+koQN88BgC
         R0GyoOJj3GiVEIgsn21fq2tmvt94UJXthDg73bmRRop3eOLtps3GgMjvimTINh7kuBnJ
         YWBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3g5y6srElyi7qcK1IjaeSFqynBm6y145tFem0dMz6Hk=;
        b=QmKj5pe5sOhR2KozKWPz7Qf8y09Kum1ng4pmBF4KnKZJrWS0SU2Ydg35BVUh2QX67R
         mEbToOKHH1yGrPEtLk0p+LRWUn96DnpHkFJLr0x9Hifw6OzRoiRZLErKo0HIJztURajo
         yGSg0hI+do7Cq4K+Wo6775haQ5Gp2FUSEhlBMjCWYyRUfiq9pgEjtCdRdc2k8Kg7GtnB
         9ELzJdwF6gHUjJZuTWYVKTWc9SGHfmQF5nXucA1DcYjQK/4awG+2hxT2i08JYzq/5qwL
         lHm7R5S9kLVG07vql/J+k0qtr3DxdSOgW6mNT+KyLJ+jbuVmNFY3o1xD/8r3B+MLhHrL
         jlIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DMdoPkJf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3g5y6srElyi7qcK1IjaeSFqynBm6y145tFem0dMz6Hk=;
        b=CQSqaqtDVSDcBADgJ/wdhUddwnyXIbv7iRvs4y3KfmFwt4yU1jfICjtajTISiBjjmL
         mvzV/MAhjZmhdmmmQz15sSsuwSwiqOkny6WbRRpyPUHZjJtVomr3rBUOB7844Pgf1Gwd
         tqQfp+Z8oXC6RHwIGxSJkYdac89mbBjND9ylB3AxFhgN6uFtTXjaxCCrApE7M9zYBH6N
         E17olb6P5ngh+w+5XE4nI+Jpl8brf8bDVE85Ao2y+p1+oNhI+e0KszSktRs32mGC0UMU
         J3CpKBtMbludqU3ZBFYWY0wOIbo69B2PkGOiXW/ebGn+hiAEx0id777+GhPG5bGCnA6M
         yhcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3g5y6srElyi7qcK1IjaeSFqynBm6y145tFem0dMz6Hk=;
        b=qplKK2y7Jrk6hN/0jm+CgMiQb/8TEQKrBiGD0fQZ8JUkMToeIeJdAKNT9we+3qBQC9
         msnVIFlGWJFX2yQVgF86s2Nt/DEcZyiHVn2JOzGLsEW8QyKGEBhcSy7pXnpkaBjxZxpY
         as2Os/VD6eOpt7rxeb0j4ZtzuWpvoA02lySNHJbIQsa0W7ravtcgwzBpsv0JAdTiiKix
         bTHe58OIPhVTAvPAN+2j9W6I0WQQin3kzvq0l7xRZ0UdhC31iyfSrcMRasFByyqq35zK
         tS4V/TwGLa92PJ0CUZPpfF/S5M17+S+E+6PJz/gosqHdWYjSoQTVmkwIuKkLDMpn5N14
         k9tg==
X-Gm-Message-State: APjAAAXDI06i9Yjs10IBfnY61o71CdLSbNNAk/H9wboYlZMUHYlMb7Kj
	Aj91eWwxZPn6vwKkg52WHs4=
X-Google-Smtp-Source: APXvYqxP5pHaxDHDE01JH6G48k7MAGNj2nlhlkmyKVUkI0l/4sQlrQenDcYfXYJuHlodL8qnR3tGYQ==
X-Received: by 2002:a17:90b:4015:: with SMTP id ie21mr10403361pjb.1.1582136865980;
        Wed, 19 Feb 2020 10:27:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls8126650pgg.2.gmail; Wed, 19 Feb
 2020 10:27:45 -0800 (PST)
X-Received: by 2002:a63:ff05:: with SMTP id k5mr28630861pgi.185.1582136865467;
        Wed, 19 Feb 2020 10:27:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582136865; cv=none;
        d=google.com; s=arc-20160816;
        b=gbHbgvUzZPmF9bZvVlP8H59e802MdJ6UYJqcqZ962rGKD2Aj/VSnkbQobsOX47zWyu
         Pwcvik2AwqoSTym+eWQTyG+ixhRZLjRP+chQDnOUTEEAy4646kDdlpuT1MstWHWke8kP
         GGRzwSUVINzttcMPosVS9FJAEUE0ROxGgQ7gfv+SQerJ1xZQfQl8cYf54gNwRCn69N90
         BnsR+kJdnnI+pNlGAfD8/fi9+uBcwrf4SdN/1++z8+pmfwsYLVFP6/RFsOaylMLUay1O
         m5+eYhQfi6gY9VNhc/3j9CfmrnBHgPs93gx6I2lnEx87cVK8cUwx5L95WWOlfjz05yI4
         Hs3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l8bheu//eOsUC2rG1tcM8D2woU+rRRO7+NHd/SAby40=;
        b=sKpWb3HvD8y0kufQR2yJRYOARNHD05QD5TGPn8VXKSMdPaFja7j9p4NKosT5COiZry
         taDazm1Ws4W9Zug9v9H40f0uBxGJelY4eIIxHWozFOigKdU5DSKjoE8YT7/pkJqhynTC
         q04etDrfKgKKrSav+Lqvxrm5cUYEqZVu023tOxArekMrIa6ZW+1BvxZBw7pAQACxX42/
         ZsVRVZftjaDhkMeIGan0W5o7mzxl3sxWom8LqPlUJ4LXLEhDFnDcUoFsNf9aOdSV5aku
         BSqIwznKYX4RaK9wQ7l93nwQqtskRyRq4CNVDGRVsVW/dPxOC0S+7piNOBZGAi/8p/nG
         OCqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DMdoPkJf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id u19si52604plq.4.2020.02.19.10.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 10:27:45 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Received: by mail-vk1-xa41.google.com with SMTP id p191so415516vkf.8
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 10:27:45 -0800 (PST)
X-Received: by 2002:a1f:e784:: with SMTP id e126mr12203230vkh.102.1582136864292;
 Wed, 19 Feb 2020 10:27:44 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com> <20200219000817.195049-13-samitolvanen@google.com>
 <CAKv+Gu9HpKBO-r+Ker47sPxvHBWLa6NAHe4P71x=K4Wiy2ybwQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu9HpKBO-r+Ker47sPxvHBWLa6NAHe4P71x=K4Wiy2ybwQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 10:27:33 -0800
Message-ID: <CABCJKuckw-_WMDF7=Vndwm5vfZXpeZachUSMMCsN0Sx_P8DXBg@mail.gmail.com>
Subject: Re: [PATCH v8 12/12] efi/libstub: disable SCS
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DMdoPkJf;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Feb 18, 2020 at 11:41 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Wed, 19 Feb 2020 at 01:09, Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > +#  remove SCS flags from all objects in this directory
> > +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> > +
>
> I don't see why you'd need to remove -ffixed-x18 again here. Not using
> x18 anywhere in the kernel is a much more maintainable approach.

Sure, I will drop -ffixed-x18 from here in v9. Thanks,

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuckw-_WMDF7%3DVndwm5vfZXpeZachUSMMCsN0Sx_P8DXBg%40mail.gmail.com.
