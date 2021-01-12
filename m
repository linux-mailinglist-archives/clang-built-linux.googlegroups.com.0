Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRF6677QKGQEDT45JKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 298A52F3762
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 18:41:25 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id r16sf4249051ioa.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 09:41:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610473284; cv=pass;
        d=google.com; s=arc-20160816;
        b=pxVQsAcZSsjheXnUEV3+FAJEWB0LeRr0k8xNDoJdmpDP4IwKvGPIOngxD2kferHYdI
         eLgYJuPGqeZOaDgI19aoXKV+g7iwfo7obLKOOC9SFIVbErTI4jtHjszVc7IuXaZCGQYQ
         p5IfhJVTxWZgm891raj1UHmTezXK2VKto9fSY0v1Qs6TMMky5YQwsYYPXQLR+P6nrnSS
         NjVpKa/nEZEa+I91D4GAyX2wrfdDTGsIUacxRDYnB7SGDKwotDcobokQl9Etijnb/2P2
         S2pgVVbaEWhTVNlrqYEvTXcjX3RH0HfngR7UJvLKSf6b0QXnzK8id3yRzsc9nORiPoOx
         Ax9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=42ZVMNTUWMM4cVYstsvx8ROoxon5jHDvBV+JCt9CY5U=;
        b=JK8BbawWi/RtDraYXr9tk2oRZbEitpIAM8oAY2Jd/MKs0oBBZfNlXW83PhqRtpj56g
         egCdhZ8OspjmMB2LlD0C8GmOiMmur5rRoBUu9+quUjJxg74mtb6LH5qGSH7e2s8R/FGQ
         CkI3Vz2XOnjkUOElin+CZA+98mN0Fh9gHtPUM+pcZUKtx1mBfyuwk9Il1DtwF47JV3Gp
         EJfKBUmlyy5v4e0QAXaVX7kwgkyUNTLTGwfJNllDzix5UdeAxBbKcmo0C1ol8pBHgb3R
         vWBpncfNy5v6BwX7FOdxDJXQ8WFTMINX/59lRpWwBFkBscTC07bD8Cd76poEIkl+2/Ss
         ieIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g3i3QPAn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=42ZVMNTUWMM4cVYstsvx8ROoxon5jHDvBV+JCt9CY5U=;
        b=CxybmjoOdEy0rFVXg2EEaXZFEZJ2wjKRHjrIU6WpxVuBE2aeH02UIuFzatYWzG+0q8
         yxURGDODPOccpYWHg4JM+h0hDASEPLLCMboC9waaeO3KYpiCxDPWGo5CmDTxja0Gu6wF
         /XMWTQJU9u/LVtWcv+ziQoWWi/umNFN9SRg/grcP4OQkmNAY9EI8MsG+gzlJDELpgBHQ
         AUKTBdb98/cZAUKVYlTQED9zqcgBdD7mEkkfcm2zsVDFW+uZcdRPRi0tmFHrtvr2R1U2
         IwQE/oX2Ok1S0VrcfuQINypkEQwiF381NuRMRugOVK9MBX2Pr5HWCSzGq8mO2f6nTd2g
         2Vpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=42ZVMNTUWMM4cVYstsvx8ROoxon5jHDvBV+JCt9CY5U=;
        b=bhV11rrSONWhcST1hP+ru8nmskndwHH9R2FfAN3CeW2idf+OufRi7UzJp5aQdIShEV
         d5H0GUl6+NZwZB33i8ST75mu3nb4HOLPNuSVw8sTyVtEPp8eSfISc5H6tVvsXUpOZg0+
         r8AUcfyMDK9+WPuv8BlyRuNXiOFqW7Zs+V9JJI5u4Wlh/9BlJfu0FB+3WEeB51L0xcAg
         kzTtdCrJdTrJmIC7FzJQE1da8C7Zh6gblW3bjB5txB15cZLh9vU/SH35k5jzDQKILKl5
         DoTePpda1qdeUMno04DqvsjWhUd9SZhkAGW9wLWi5ZalkY5SZvRILGSBrCBnICt9FqZT
         3KaQ==
X-Gm-Message-State: AOAM530GJMdPVylXBFgNNleVIUoUd/QZ+Wu4s0Y5r/u77X4dHOHrq6f8
	WYHYJAJO4iJ/Ujdwk6bEFTk=
X-Google-Smtp-Source: ABdhPJywqE/1w3jIho6CWDFB8fa5x0wCo/sD2GtcIILfy+zYdGR8VGmemIRJaZ9pLCgAVuR1WtFKMw==
X-Received: by 2002:a05:6638:14d5:: with SMTP id l21mr444195jak.54.1610473284181;
        Tue, 12 Jan 2021 09:41:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls722002ion.0.gmail; Tue, 12 Jan
 2021 09:41:23 -0800 (PST)
X-Received: by 2002:a5d:8483:: with SMTP id t3mr4210405iom.35.1610473283785;
        Tue, 12 Jan 2021 09:41:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610473283; cv=none;
        d=google.com; s=arc-20160816;
        b=iCPLh3QUM3LiXzkSpcTCDQ+J5ZnjO0oGOnlSb7lmU5/k56gJuzJsF8zenLsrBeIF7l
         EnbWMIgAt6Qq7RheaUaeKFHAmYT3y6vK/wvzGzcoNjyCfFto5ckCbNfHAual0GL0zfEF
         on51Kc5eoWqiD/ceIcbOFBtKfZHuyESavwGyLlkJV7s81cw1T7TdDXkmnq1UQ4Sqmlf7
         m4YcCicgWUmEYctE5t5S1F7CW0IUnN1Anm+UPjbCzao7S1dRDGF6KwsJxog/6NBCZKCa
         KGp/KKnzwZF/fX+JXt/444y4iqoDlZKoplzrhyUduRlASLpvbveiSn+3zWxxYsXjksnt
         qufA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ArUQFBCDzcRouEim/oeNodLvYkQCmQAt4fD3cC2E/Bs=;
        b=iL/yerbJnyOLjTItUqmnBSa4z+YB3Dh0iyHuF6W3hinDFpEd2zpsXHpr1vURFXOXZC
         Op3wphKtMQGeRHggX6Q2AkY5yxohtSCgJt23zO3kEJEKGeIAEbVBi1StO0mNXMXhEmrk
         RS15HW2LL+atDKfBfnY9x7nW7a29zhRNhxnGzR7oH7H0+8ntRkaGrzxxE5a5ZAZQGlM6
         3dvhwWJzP1QPZsEGRnTifM4mnaR1vx6myE4V6ecZoxewfdthCYp70dr9LsuvSERESENX
         GbqaJhCyzLEJcaDIsxzn6m3IB536TKOXIN7XM8o9PAdFDdOVY97cz/TWpvMiHwk33rKs
         0heg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g3i3QPAn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id r17si394464ilg.4.2021.01.12.09.41.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 09:41:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id p12so2036122pju.5
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 09:41:23 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr243085plc.10.1610473283284; Tue, 12 Jan
 2021 09:41:23 -0800 (PST)
MIME-Version: 1.0
References: <CAGm4vTOdh3j7_9BPvDVLpMikktyEYY9T7P+zZP89F+eewiOeFQ@mail.gmail.com>
In-Reply-To: <CAGm4vTOdh3j7_9BPvDVLpMikktyEYY9T7P+zZP89F+eewiOeFQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 09:41:11 -0800
Message-ID: <CAKwvOd=73XPTSQQ6YJG8_yCSXF49b3ZmFz-HsHDsVcGvO3canA@mail.gmail.com>
Subject: Re: TuxBuild/TuxMake priorities?
To: Dan Rue <dan.rue@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Antonio Terceiro <antonio.terceiro@linaro.org>, 
	Vishal Bhoj <vishal.bhoj@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g3i3QPAn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jan 12, 2021 at 9:30 AM Dan Rue <dan.rue@linaro.org> wrote:
>
> Hello,
>
> I won't be able to make it to the meeting tomorrow. I've seen a lot of
> activity on https://github.com/ClangBuiltLinux/continuous-integration2
> and a lot of issues that are blocked on tuxmake or tuxbuild issues,
> but it's hard to know which ones are blockers vs nice to have vs
> something in between.
>
> Can you help us prioritize these issues? Here's what I've found:
>
> - Allow llvm-related make variables
> https://gitlab.com/Linaro/tuxbuild/-/issues/91 (blocks
> https://github.com/ClangBuiltLinux/continuous-integration2/issues/18)

^ #2

> - ability to specify --git-repo and --git-ref in --tux-config file
> https://gitlab.com/Linaro/tuxbuild/-/issues/79 (blocks
> https://github.com/ClangBuiltLinux/continuous-integration2/issues/3)

^ #1

(the rest are lower priority)  Thanks Dan and team!

> - big endian ppc builds are broken
> https://gitlab.com/Linaro/tuxmake/-/issues/108 (blocks
> https://github.com/ClangBuiltLinux/continuous-integration2/issues/2)
> - Produce epapr images for PPC64le
> https://gitlab.com/Linaro/tuxmake/-/issues/109 (blocks
> https://github.com/ClangBuiltLinux/continuous-integration2/issues/2)
> - uImage.gz is not a target for malta_kvm_guest_defconfig
> https://gitlab.com/Linaro/tuxmake/-/issues/110 (blocks
> https://github.com/ClangBuiltLinux/continuous-integration2/issues/1)
>
> Thanks,
> Dan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D73XPTSQQ6YJG8_yCSXF49b3ZmFz-HsHDsVcGvO3canA%40mail.gmail.com.
