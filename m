Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3NE4WEQMGQEIXBOVKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4AD40422F
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 02:16:46 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id c16-20020a2e89d0000000b001d018ef42aasf1677264ljk.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Sep 2021 17:16:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631146606; cv=pass;
        d=google.com; s=arc-20160816;
        b=zvVfMT50OZ2Oa9Ds+wibgJHEAlN+DfCXe2MzuC9qXFuvOD3y42kUx7RObbnWG41eZI
         cZYvr3qJ04CozD70ki4Y7yCLdIEH1MOCk69c45orjPCBjUwD5uRqge45Edr9nKJmrQzF
         uH8euuQL/RmKe6DZl3b9hCXwMWlbug5lNCmAZMD+CjxEwtwKTw2zhSPCt8yvJor6M7x9
         /sdio4Fs8tgEWciqBu7r6njM9HDL9/amuIfvGIKRETipwzWegIrkSUXwEasZOAAeHuA0
         n11kg0Br5dPkBKP2Gtj7RncIGytrnqRngFLOB3K/PtO4w81QqinCJljFGCl6shx7fip4
         1Flw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dUtjqgZ0RgMPyawyxE0TafaAVSKQ0LP3qJiHvI6PaCQ=;
        b=EEi4nH0Cwd6NzmRGpucfL0secxYU2vlQ8yJdP3pUVtAyhqx+7bqbrov+9eZ0gqTEEr
         qFsqzr04IO/JzioU9MYU2IZJRz9T10Kn/69nYxfJmzaBUo5YA0MKQ+7xLE9JWZ5uAJLv
         O51cWNi5bGe9fFEnvz4YXATj8yTkeaC+lsjKGrIKmjE4uUzETF4h2MarGn3TaDEPNPE+
         /46S7uYrRrzuZ1+s7W1cLWmFiT7Q8xG/9UxmRGfWjF7KJCmODhEirqFIarF/NPz+bz3y
         ePz8pzeDQaI7ykw5OiSkSFN9gL4szogvXWy58R88QBNBhmTAQ9hOOcGgAJjSDxIJDKPs
         zuFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ajCNXzZf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dUtjqgZ0RgMPyawyxE0TafaAVSKQ0LP3qJiHvI6PaCQ=;
        b=np3NxqeLI0COKnYpyL8sCUE0XxC1pJ8+SAZFRjiTYcfs6gYI3IMji6LzV9C1EPjrSs
         VBsQGrKClzXZ8bIKHtlGtAE7dE/tG8HdjvAroRs5oe5KBzcgxqrbVOLCSiNx5cuoi5t3
         evrW1z9GG83BdN+U9VEW+8lsodBwInSu6AqRjyxZAzzcBW0Vgiiku2PHJpSfgMbJOnXY
         12qyYqAUWkebkSZHhuLLz1HWAKTtg8GN5+v3hFmLCLlwT9obOGwzlnaqJgtUoSiWdJyR
         Wpm7BE8izN7tQORmm0Bs9nwXUjgvp8snvzleOHA3vmtj6FMaPFEmJgjEFIjjVg+bnSFh
         vnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dUtjqgZ0RgMPyawyxE0TafaAVSKQ0LP3qJiHvI6PaCQ=;
        b=NKiMBKPYzNZMsm2O/OWc0p3g2GdTrGfhAd1DkJUzIKnDNPFubby2Z4wW/Jp95GMBlw
         6mp4a6SB7R8T5p8+GY3+JRWxxzuq3wjkPvki6QR9U64pVsazEoP+13Yz9GD++BYstF5I
         m5SbYiKX4HPlgFIOn+S2UWgnh2kSbJKhHiSQIxJ5LSgLK0bFReylW+mKY57B1QM5gs5f
         kOu8ySRUZ1QZpOd7+JpqiSo3XIO6EWgyqgrQqjzh+8ekJfYSEkJd/AwIpKmxngt/KeYQ
         TiPUxfFel8lJaOgUMG7hcJp8ypdm0JfTbxmRaed5VSmI5xsE4vd8tT3NJ/uV5xRB+7xX
         pMpQ==
X-Gm-Message-State: AOAM533zveRsf4U4IyGAbE12XCvIfiH2k8MTyB2V1lV6+Ns+QbwdsAYm
	jNEUkTSe+H4mGDYDGm0JErk=
X-Google-Smtp-Source: ABdhPJyWARef9Y2uRl7VUZ4g77NtTbS+I41fP+tp0ZbcyBQpVkI+cipQ5W2ijsqNSb4qVmsgAebWjA==
X-Received: by 2002:a05:6512:6d6:: with SMTP id u22mr218941lff.363.1631146605998;
        Wed, 08 Sep 2021 17:16:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls9177ljf.7.gmail; Wed, 08 Sep
 2021 17:16:44 -0700 (PDT)
X-Received: by 2002:a05:651c:1248:: with SMTP id h8mr87196ljh.160.1631146604886;
        Wed, 08 Sep 2021 17:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631146604; cv=none;
        d=google.com; s=arc-20160816;
        b=fnZz1hoAqOGRQ/X8u6B97AjHLqwkceqCXRSQgDuyD8rgeQ2TV0zcXfEIAVJRwLeWxo
         ru45X2ihRo0Ns9WfrqK9II+b04ZTFjDuihsVSCJTvs+dbiiZ+kBV3HyYFrUAP4UvEhqb
         pcWlXSdbtfFEJEM9sWA05KKx2EzcrKcqKU3YWasOUy+YQrksRCkplEwOBY7hsG8MtFRW
         fmNDPGyyiI33Q/xWG0JcYdenAjyE6nfks2XNV9arzBoAvrvNhF0L1ZvjuhGt/L8d1ic9
         UwZi2CjYKp0okmDKbFL7Z2tZ0j51P5o5sWfSSHj+Gp3DuAY11s49PnYBRtXpiwFqxJd4
         PkmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lBWwzjK3xoVDc753vBh0YKmvHDdcUMb0hb256mIMOts=;
        b=KyT58GeAFsMefOpcJIV//1Q9PKvOPP7Urc5ICDx8NCUuuVx9oJKW7Kl/klUE0Ht7xq
         ky75/hF1MupzYxviZFbNb071JI4JpLdsIntcQzklCqxiq0nMKplq3LGaBO9XvVIZULrf
         fSOkm/nVZJ9/RmggfrE+tXRTxWCQp/nyophD3BrLjB91WeKw82o45BHBlj5LfwLRHtd0
         0AGGCnO+RzcvnnX3rtY4pqwCOI5z7KOCouEDPMVD1uLkeURGuVlVbzcp066hRAHL0q+L
         6iS93xRIYscsKk+/Q2FVcjzrfLT8vk/85o1bHG67nyXL3DQPTr+UskQ1EWW37lggtzcF
         bqLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ajCNXzZf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id g2si13861lfr.3.2021.09.08.17.16.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 17:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id w4so33059ljh.13
        for <clang-built-linux@googlegroups.com>; Wed, 08 Sep 2021 17:16:44 -0700 (PDT)
X-Received: by 2002:a2e:4e09:: with SMTP id c9mr89078ljb.62.1631146604416;
 Wed, 08 Sep 2021 17:16:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk_7TrWdJWxtNmpvHptTA7cuRsmMrL-=8k=6_ZaRCeaWw@mail.gmail.com>
In-Reply-To: <CAKwvOdk_7TrWdJWxtNmpvHptTA7cuRsmMrL-=8k=6_ZaRCeaWw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Sep 2021 17:16:33 -0700
Message-ID: <CAKwvOdnwTFv15MRHG1YrLnGhfmunxdpS9NuK=jXuC5-viAo8NA@mail.gmail.com>
Subject: Re: Announcing LLVM Distributors Conf 2021
To: llvm-dev <llvm-dev@lists.llvm.org>, Tom Stellard <tstellar@redhat.com>, 
	Sylvestre Ledru <sylvestre@mozilla.com>, Martin Storsjo <martin@martin.st>, Petr Hosek <phosek@google.com>, 
	mgorny@moritz.systems, Pirama Arumuga Nainar <pirama@google.com>, George Burgess <gbiv@google.com>, 
	Nico Weber <thakis@google.com>, bernhard.rosenkraenzer.ext@huawei.com, 
	evangelos@foutrelis.com, Dan Albert <danalbert@google.com>, 
	Fangrui Song <maskray@google.com>
Cc: "cfe-dev@lists.llvm.org Developers" <cfe-dev@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@gentoo.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=ajCNXzZf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231
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

Final call for CFPs (EOM)


On Thu, Jun 3, 2021 at 11:55 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hey everyone,
> I'd like to announce a small conference we're planning for those of
> you who package and release builds of LLVM to additional users; LLVM
> Distributors Conf 2021.
>
> We're planning a day of 15 minute lightning talks for folks who
> distribute and release builds of LLVM, with a focus on configuration,
> testing, and unique constraints (or whatever folks may find
> interesting about their distributions that they think others might
> like to know about).
>
> If you build LLVM for other users, we want to hear about how you build
> LLVM, some of the unique constraints of your users or target
> environment, configurations or configuration tips, war stories,
> headaches, distribution recommendations, and problems that would be
> nice to solve in upstream LLVM.
>
> Some example distributions of LLVM that might be of interest:
>
> Apple LLVM
> RHEL LLVM
> Snapdragon LLVM
> apt.llvm.org (Debian)
> AOSP LLVM
> CrOS LLVM
> Fuchsia LLVM
> FreeBSD LLVM
> NetBSD LLVM
> OpenBSD LLVM
> PlayStation LLVM
> Nintendo LLVM
> Chromium LLVM
> Arch Linux LLVM
> Open Mandriva LLVM
> Gentoo LLVM
> Google3 LLVM
> your distro here; I'm sure there are many more distributions that I
> don't even know about!
>
> Please help forward this announcement to folks you know who might be
> interested and that I missed on the To: line.
>
> When
>
> Thursday September 16 2021, times to be determined.
>
> Call For Papers (CFP)
>
> Please file an issue at
> https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues
> with a proposal. The CFP deadline is Thursday September 9; one week
> before the conference. We will add a schedule here with accepted
> talks. Talks are expected to be only 15 minutes in length! Keep it
> brief!
>
> Updates
>
> Please click the "subscribe" button on
> https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues/2
> to get email updates, or "watch" this repo on GitHub at
> https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnwTFv15MRHG1YrLnGhfmunxdpS9NuK%3DjXuC5-viAo8NA%40mail.gmail.com.
