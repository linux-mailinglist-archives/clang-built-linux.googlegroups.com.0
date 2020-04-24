Return-Path: <clang-built-linux+bncBAABB2MHRH2QKGQETPEPJVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6A81B6AE9
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 03:42:02 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id t23sf5780817oor.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 18:42:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587692521; cv=pass;
        d=google.com; s=arc-20160816;
        b=lf6GkUEyPYLLTcs/hmF4JLm17UGf+w6pLh77sXBXlHPaOOfcT+eJgl9ztZzismEGFY
         lBw68y5vKByEuoD27cU/szEyGucRR2VLcc9OeBAaDIju015S+BqgvlFz2DmXSjL7BHvV
         oYpvpDAsDlonfC5/gM8YAyh8ZCJUOIPPNXyhT3Q6nweUnDxHQl1BiCISYtNpS0kxk+pd
         NQyjlLpsnubMyHFhviQvH1YRdmRqM8ikUUeA8DFkoBW7PoAue5HBe6+YUfU2BnGDgNoH
         xmvRKIEVSIPYXc+WZbUdkVj6ruDZ7mQEEVHr3bpPY3f+aV97m43ZDn8z63eBFz9Grs4n
         ow/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=HfrD6bC2p+EjmllzQekKhFfVe+9v0gx8YQcFRtipifo=;
        b=wvLSwo2sgb+kPsxMbCjKy7E7f8JvfBxoCbePG2Fhdz/81+1FVIiIU9u+sqkTLdOctD
         j8SHSljU3hWmIyT42e+f8eqpyU0RGDQQmU0qExjpXK/fSmAyD59+C7+V0zt5915WS5IC
         DZI4apkVZSKnnP6b9WJvkexe1xXdhU28DM7Z3K60LElBPGgee9yDmhwojScU2hkBEWJu
         dxWjaIKWzLV3lDhJBxJmqk/XKmAzIQMKJjbqG4DRyfO5vsVPE/NTpHc4r7Cf7ab7u2U9
         Si5KwqncJDzsl1YvURcCTWTyMNKHnDgBABbTE0pvWTjie8WAPLk8U69o/W0uzOIYGSDX
         9DjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="zjP6/500";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HfrD6bC2p+EjmllzQekKhFfVe+9v0gx8YQcFRtipifo=;
        b=ODpp9z3MqSv73n/bH1qRdAizcuMoq7DDlrfL+2sQuL3T7ggzylATDjZvIZ/zF8biDB
         xTzr1bJbQaOrgryKHb70R70EG10CVTBrQJi4oS50YYAeDRFp72B90GyQ5+20gFyzoPPT
         vbjId6ahePWznMxmFgr2tCiPHVKujm7lXO0GZwe7kC4XcmgJ8lFkv3vi4JYbVzE8lv6j
         f4T052pNMD4GaCl7xCCL6S0hO1wcVPnw+2bADSQr+THJNyP1qoXzXrxWKxNknEc8U79P
         lhfBAV97op28dSbZGG/7XzdhcnrQAwyAZmphQYy0Br+faTMg0u0cbDVYbwkJVlHQ2ggf
         A34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfrD6bC2p+EjmllzQekKhFfVe+9v0gx8YQcFRtipifo=;
        b=WkHlzo2N2zK8M9OMj4lY+/u2YSASY0wOtuhzACsyDeTGb7IEYJhMV7Vim4sgoiB0vC
         s1lpE+X64B1w6X/CwTWblC6bDOc/tkSiaIC304c2HWGEcmEUOvHk3ip1tvb2JUyuXSqU
         IolcSQ98oM+MFc+nG5xv/eYw4k+1DeJpXEGtiaGbpD880LBfOM1paxuX/22Bizus+W2X
         8NTk6DTva/6PnjQuAWcWGW1D+FBDGScd3VBf3uH1wrQotU9z/Pw80pI6+FlCP79hOjNm
         aZ0k+OA7/tsTpbai0ATENOkf0W06ETch1tgHzJldRHiOoofuELhCeMl+cMCr1tELJIQ+
         vvhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYTf96G2TdCEPUaqk2h5QB601VdiABNYH4NWEyC2UIIpFkjmv95
	SbGj6R2TseepjMk/SzGRkIc=
X-Google-Smtp-Source: APiQypIZpYkokhMYFlz/vt3RqNxlaFf69oJVCd9JWFff4k9kfGhHmPHI2lEBSr6ybh0UaFbNUlofbg==
X-Received: by 2002:a4a:a54a:: with SMTP id s10mr6076422oom.73.1587692521167;
        Thu, 23 Apr 2020 18:42:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:467:: with SMTP id 94ls1984306otc.11.gmail; Thu, 23 Apr
 2020 18:42:00 -0700 (PDT)
X-Received: by 2002:a05:6830:243c:: with SMTP id k28mr6044190ots.172.1587692520784;
        Thu, 23 Apr 2020 18:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587692520; cv=none;
        d=google.com; s=arc-20160816;
        b=ENpio73KOk/6Gg2MWSP6dOgOjZR0oIdPLUuRNDjm1wgTrK1qSLyrmcy2iQvR3Wr6bQ
         Xd5QT60DPsc45ZdYmse3iBw9sKBezz2ahi6SHTEFaHGj9JOzU3XEW3Xs2sHsgzXv1vPC
         aahgyc2bVuLYzQndRCSqTYGxOoWT0+SEgfxVCQeupn4DM6P/Qo3zVQv2lt/4qF0qLXdW
         Af4ZCiQc92nM6ViougQHR2KsG5SLUz73irr69shBbC/3SLqNkq+IzVa484eekH5OQi42
         wxrgRRO2jPQqPD++g3MbupJSUZFRE3Ekg/3xT9BI++EfONPCvrFOZBFQTjQF2+sDsWC8
         YjVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=1SEaeJhyzWU9jqAsfWMzXzgCHVbK39e/WrbxIKUu+9Q=;
        b=wsm/KTLGZnYp+OCzT4513dh+zv82uuswLkD4Bfojx+W7765Rji1k2BS21H3LT/FeNX
         oEFD2RiuDSQPDvJn1CithXZh5d9iDcnIvAsO6+zSVyypiFt4045H5KA82YKzc+c3Sd3J
         R9sc4RZSHjC8IfJySFEsgXbFZTqssST/Jj8r6nAAFMmV2nmhhmyTGR+DpQYfJqPLqltp
         qocvqMCCoeQhHmbjrFU+imEKW8dFFNLRxIafmmES4bzslGbbNAcRhFoIF1HXrMoDNDLP
         IpgtOH8EqJXeBI1kH98ht/YIVJ7cOql/ZGEy+aksRlCCJGM2KAfZC6LZDlD6PsPbyXXo
         nfHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="zjP6/500";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id t17si277964ooq.1.2020.04.23.18.42.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 18:42:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 03O1fZkR006292
	for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 10:41:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 03O1fZkR006292
X-Nifty-SrcIP: [209.85.221.170]
Received: by mail-vk1-f170.google.com with SMTP id v192so2089462vkd.3
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 18:41:36 -0700 (PDT)
X-Received: by 2002:a1f:3649:: with SMTP id d70mr5910043vka.12.1587692495242;
 Thu, 23 Apr 2020 18:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200419131947.173685-1-sedat.dilek@gmail.com> <CAKwvOd=Rt0q0+nRJasc8GzOXSj1_-jZGNc2bAWJkmd7Vzr8FFw@mail.gmail.com>
In-Reply-To: <CAKwvOd=Rt0q0+nRJasc8GzOXSj1_-jZGNc2bAWJkmd7Vzr8FFw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 24 Apr 2020 10:40:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQzh8EajBkXSSgFh2=5iF38XvkADf1C7J0JnwTov=NmNQ@mail.gmail.com>
Message-ID: <CAK7LNAQzh8EajBkXSSgFh2=5iF38XvkADf1C7J0JnwTov=NmNQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] kbuild: add CONFIG_LD_IS_BINUTILS
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Tejun Heo <tj@kernel.org>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        "Joel Fernandes (Google)" <joel@joelfernandes.org>,
        Patrick Bellasi <patrick.bellasi@arm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dan Williams <dan.j.williams@intel.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="zjP6/500";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Apr 24, 2020 at 3:44 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sun, Apr 19, 2020 at 6:19 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > This patch is currently not mandatory but a prerequisites for the second one.
> >
> > Folks from ClangBuiltLinux project like the combination of Clang compiler
> > and LLD linker from LLVM project to build their Linux kernels.
> >
> > Sami Tolvanen <samitolvanen@google.com> has a patch for using LD_IS_LLD (see [1]).
> >
> > Documentation/process/changes.rst says and uses "binutils" that's why I called
> > it LD_IS_BINUTILS (see [2] and [3]).
> >
> > The second patch will rename existing LD_VERSION to BINUTILS_VERSION to have
> > a consistent naming convention like:
> >
> > 1. CC_IS_GCC and GCC_VERSION
> > 2. CC_IS_CLANG and CLANG_VERSION
> > 3. LD_IS_BINUTILS and BINUTILS_VERSION
> >
> > [1] https://github.com/samitolvanen/linux/commit/61889e01f0ed4f07a9d631f163bba6c6637bfa46
> > [2] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n34
> > [3] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n76
> >
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> Just some background on Sami's patch.  Originally we were using
> ld.gold (for LTO for Pixel 3) before moving to ld.lld (for LTO for
> Pixel 4 and later).  Not sure if Kconfig would be a better place to
> check if gold is used, then warn?  I kind of prefer the distinction
> that binutils contains two different linkers, though if no one is
> supporting ld.gold, and it doesn't work for the kernel, then maybe
> that preference is moot?


I prefer LD_IS_BFD, like this patch:
https://lore.kernel.org/patchwork/patch/1039719/

We do not need LD_IS_GOLD, though.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQzh8EajBkXSSgFh2%3D5iF38XvkADf1C7J0JnwTov%3DNmNQ%40mail.gmail.com.
