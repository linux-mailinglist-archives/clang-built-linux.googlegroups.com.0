Return-Path: <clang-built-linux+bncBC2ORX645YPRBVOIZ73QKGQEINEGRDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DB6209739
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:40:07 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id j19sf2553390pjn.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 16:40:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593042006; cv=pass;
        d=google.com; s=arc-20160816;
        b=dJl7Ro/2ksGcfloTnjnxv0dToNlG8uUUKGEL7YiO/Wrtp9u4DFIHrky121GrqQXes6
         ljABKVjCjHECDS/y/eJ7Ywnis2dHE9vfbwN040jDPk05AAbeTp3gFxFlXkRrK8DuNZWk
         3Dl8n56nd4OC267SVJcSY02vBdKTx8pxK0AUWmzXWYXO8h+nR6gPR9kgJb4cw9ymnE0e
         emTwoi6yRsV3nJf3N7rP+CBjNX8c9Iz3u9fqs23scv3ukTZVecRSDzHs+FtS0R+wSzXK
         Yxp3bRAo29kMptuwetZg9ZpyHWE0UDfaGaK2lrYYIrOfO3ksQv4+iyWhuQy+CsJtGGks
         BWGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1kqGQHQ6OjwCLyMVfNuQqi7/uiRDVlmD/ALyx20D3EQ=;
        b=GeCI3bVqhdlCMFXDqUdMx26QQ6Tufn8t8K8hADQh5swCvR8FDIXI8pWrRwPrgJYh/T
         wQdmTEzVgvjpEXf99UJjRkwRqfK51E/1JlewxoogQkmpBiGbyMnlL10vDS96LiHseOTS
         1iN27eXqYJQlre9alUQ9qNLbmUxuFM4OIyLEKEBDnAU9Ve+YGnD/XMn9Sw8SGF39JFw8
         ZWc1dvR3dBAnLVUXMnHkMVCE14AOey4FefMzPAIMgIN3WLWeaGsC/BaNI8s1Iv/VX78U
         flLI1Yw6S2OBVi4407VJKUiyQ+GjKjPSGAHVTQX7X1eBoeN5R6nYNipWxxEN4kVgbdDT
         tETw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eJvh37nN;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1kqGQHQ6OjwCLyMVfNuQqi7/uiRDVlmD/ALyx20D3EQ=;
        b=stQGlvBZP0edXNt3D3wORVdyDzgne5vJ2XGZDX8n7CXBx5u6e8E3TvFPGMZi8GOd9O
         guBrY1hn/Cs5EppvnnK4vsq9qJIo2ZZ51vFMJp5hK2/yYe0eag2X4GEx0ED3XdrpitoM
         uH/2gYj15Ed4IYc2Rzqld5SNdxYwEQ+ax+AATFDWf3nDXIO9KBzBZE0sAKcBYZB9hKVe
         tHEPB4NK3o6N3Deao8KG5El2MjpVt/RSFykY0T7ZoEGQ0VjAyd8RhTWoWvjHJuFH4iZz
         O/l6RKlp3BYywsXoVNqjptJVsSF39FU6yPY+m42kdLNX+avtjXVr7NPRBHbtwK/AREqD
         nJhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1kqGQHQ6OjwCLyMVfNuQqi7/uiRDVlmD/ALyx20D3EQ=;
        b=kab5hQqXZb8/PWJYZUAXFavZn8Uvq2VBhqLZI6pSEgcgyCz7Wo5oUKM9KffJjiwkAQ
         gWZcAgEUeLiSoOqLObD/90WjpHxgTUN88dIFIlp/GdkhmNzIeD0dbwA2wcMnF7pjhul/
         KTCt0Nl7c9TdVgbArHTu5wr4UWouyM/8qcwq06uQXGetOLUSnNzFoVAXREupsWxWWzep
         IkQJJJfoCt0F49f0c0e/uZ2YpiQ4oZyoj6gf8yh5BWQvpyZxJIr3Agfl1oI0fu+FbSAu
         hmqz2qer9KAqU2QrKaT7Wc84QmQ+Az8Gsbh4owT3rUfZdS9+DukwD/n9NtlxQXBz1R9z
         O2EA==
X-Gm-Message-State: AOAM532cq443/Q5QkRmDBjF+4oyLppu/4GjhNcCxtWtBsMAIf0tj65nf
	30BSy8LcbJGzTfwj+viFRl4=
X-Google-Smtp-Source: ABdhPJw0rFMIvNaD+jKg0ay/G+J5whiwL/8yfVHmZhJIsYoCNaGhfBWhllu41ABW63FjvmV/42Ojnw==
X-Received: by 2002:a62:58c4:: with SMTP id m187mr30125597pfb.216.1593042005895;
        Wed, 24 Jun 2020 16:40:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c0d:: with SMTP id j13ls1073459pga.8.gmail; Wed, 24 Jun
 2020 16:40:05 -0700 (PDT)
X-Received: by 2002:a63:e556:: with SMTP id z22mr16980712pgj.130.1593042005381;
        Wed, 24 Jun 2020 16:40:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593042005; cv=none;
        d=google.com; s=arc-20160816;
        b=shacOmYjzT/LzP/ubn/u/KbI3h6Jcu6MNK+RyO+i4tL/Tsdc6Q0VaF9LRloPudHngI
         M5+Fx8yvQJqUKKG2biIGlkCDhePQcddXr9RIru3yyRMF4MIo0319ioyAKqiRWwKgxqF/
         rBAMQr4/xXw5E0gNwwIbvkxkil7dOGaRBz39JB/tb53aFiiMXCE5/VxfXuVaelGgSoAC
         knfU4WcjfAxmOrei5/pKXHIJRQ8iDMF9YwC9Sx1OdVkcTPmNwAs3oLLCkFNvsoy82SFL
         Owll6W2Y3yFfFQvLrl+W6MklJKurrskulApCosW27joUD4wCGwFlWWvxaqCOExolhsoJ
         88Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OXwCzf5B5Vnc4rPGARP7edsvVNysUhYzQGqjGFLfJUg=;
        b=XDh5ff6Kpe0tJPpuJivkVQWOBSsBH6ZcC98hDutUqHqBuOVhEXrpa+SWX2H5MRdS7e
         8Spob8EPDMrI6rEylb35TlZTWatL4ae3WlK6UrD618JEzlWdduRAJ4CjKPiWLZzIlUpW
         ULhCe3hhy4vA0/JTGyhUszy2o1ejo0Xt0OGFZ4P2d8vLHuCHMEcJWaYw+1ymuL4pIXwL
         ih8z0/8H5yWMid6TCUGEFEJRqCOsiSbl9wXBldgL62qSqu/rhI7AO/NTUsepFLLdGwAg
         vMWNyZDslW60CnlyNFIJssrPbO15QI4RgX4ZymHz/tDvGZqvLULFGx09J3t15VqIhxnP
         5jAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eJvh37nN;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x70si1162292pfc.6.2020.06.24.16.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 16:40:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l63so2282181pge.12
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 16:40:05 -0700 (PDT)
X-Received: by 2002:aa7:9289:: with SMTP id j9mr33592532pfa.124.1593042004835;
        Wed, 24 Jun 2020 16:40:04 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id mu17sm6845223pjb.53.2020.06.24.16.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 16:40:04 -0700 (PDT)
Date: Wed, 24 Jun 2020 16:39:59 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 17/22] arm64: vdso: disable LTO
Message-ID: <20200624233959.GB94769@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-18-samitolvanen@google.com>
 <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
 <20200624215231.GC120457@google.com>
 <CAKwvOdnWfhU7n0VfoydC7epJPrj+ASZzyNRpBCNuvT_5E+=FcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnWfhU7n0VfoydC7epJPrj+ASZzyNRpBCNuvT_5E+=FcQ@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eJvh37nN;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Jun 24, 2020 at 04:05:48PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 24, 2020 at 2:52 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Wed, Jun 24, 2020 at 01:58:57PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > > On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > > >
> > > > Filter out CC_FLAGS_LTO for the vDSO.
> > >
> > > Just curious about this patch (and the following one for x86's vdso),
> > > do you happen to recall specifically what the issues with the vdso's
> > > are?
> >
> > I recall the compiler optimizing away functions at some point, but as
> > LTO is not really needed in the vDSO, it's just easiest to disable it
> > there.
> 
> Sounds fishy; with extern linkage then I would think it's not safe to
> eliminate functions.  Probably unnecessary for the initial
> implementation, and something we can follow up on, but always good to
> have an answer to the inevitable question "why?" in the commit
> message.

Sure. I can test this again with the current toolchain to see if there
are still problems.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624233959.GB94769%40google.com.
