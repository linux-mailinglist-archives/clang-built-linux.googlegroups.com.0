Return-Path: <clang-built-linux+bncBAABB3FRTD2AKGQEMPVVSFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 1881119C76C
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 18:55:10 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id f206sf3642148qke.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 09:55:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585846509; cv=pass;
        d=google.com; s=arc-20160816;
        b=fkK/KraoASnI1VplGaPJHNk9vmz3vP8pW45wLjyqT/PoY/g75269QnImGB5zAjce0s
         0XMr9A1z6VvIfCG3BiB+Bm4jB2RiNxH+o9f4xaIfbPTTwB3R/JLNhJI6grnu+qgCdEym
         ZFJMnwZSCWlEcNizU/aTYHWxTLU4kKR3V/tFp6oJQrBwQ06692EfDpED8Y5NsJOlpLjO
         ucvBfrfBkWbnTgNnzTw4mf09Ot651FOZjtZPBBpg/mixns8rQC6Zzj3Mu07vLIrUOzvt
         ODbtZQvChi44xCh3QV2VF/Cw/lWAtDVadXBNSha25sAiXfP3d2cdu2tvI19sQZ/RD1um
         H8iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=mSIa/mQoBRyB/xgo/IoCAPNJuqYcN+mxyaZyamwYU9c=;
        b=x2szxuS+e6LHXPtSJw0Mqqtv6q7gnAdyfkCUkzf9f7fKt3TWjPHYLPxERcT+sXOlYx
         aI3J/4BxnFGDd1OYrC0gTsCWElI2PKEN41LvSdd/FqvJwzQsPs0sBMDaK/KG86Mt+X8W
         i5ABFTmdckiZcz5UW7PoA30qCUwQTrK2BITY9xuvZowqyGtBzoRVZSNBZ9QEJlyUL7u6
         rhpLj7KDfvVGhWxTRFTVWWzv6b2jsURo0xCD90hJ6oiG6u9d8umfsVHIdG6EKpmLNUWR
         /Nm8tXlI69xm/sQ0F0Oj4EOxxRT4yVxXLIZaQTyWZsfwf5TcgyQf90/ZFzDCB/15uiNg
         0jqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=r4dvWeRr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mSIa/mQoBRyB/xgo/IoCAPNJuqYcN+mxyaZyamwYU9c=;
        b=L+2dGn1SaF0E2/5AiDQU7OqA8x2Yco2mGv6O2wzAj5Nwym929p38XxBJhkjj4VTj4E
         HNK6QrpyuaMPbyZ7TEBt0PCekDqanE1NZbJU+jho5v0YcWda2aCa499vj67bVZ7NWwCI
         LyQvkncopF4e92oWYsJVCM5CxE8Fcn/NbebsRxXeUa2V6HKZY8ydXUsok5+EWlkAQ/kO
         sbj7K8vMcOVnrENRkfI563dlGsQ7t96k9Dwn0bHonqkCORYKdViegNoDg/+2n3Idku8u
         onymexkH/mFjg5aferJ8em4j1TB/augALnYjKpAB3hoyN6DUNcryy/wtLfgElLuCgO2Y
         3fvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mSIa/mQoBRyB/xgo/IoCAPNJuqYcN+mxyaZyamwYU9c=;
        b=jK3oaGOFogCRTqx9vzmdhRNj0y+EqZMUji0WGWU4lqKUo4AxR4hSUjJTySoHc9qM02
         pTaM+se/bh4p7G3WMLnpNHj/evmW5CSiv39esT1uk1AGyjQoy0F6Vtm4CYEkGfcLURGL
         OcnCPmUMReXtUOMNrXLmREb/0+Hm8+c1zbCaMRVL5Ro588v61e89RT8JPf+hCkKGtkR9
         NxGN/EQdnDS88gQ25mmw3L+hWKutpED6fbG7wWO8iU1xUgZWfiQGDy9G4eYucUF3FvOW
         c90VZd+wz537gnjKcqOYXc15zLIPFVtig5Ws68e6N9TA5z6lV1ulat/vMOvM4WQAYry2
         YoGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub3TOXOS6wecZnc19+VLoUhlBKSDMC45+Wwk9C9JpACfEr/r0LY
	1jVvG33Pf9eg+QNmey291Xo=
X-Google-Smtp-Source: APiQypKp+qfb2kyz4bHBR0vIJFRPanEDOq8CzhsLXE5hLR02O2VAAjWhMWk+qz0mq9jZSlXkskupOg==
X-Received: by 2002:a05:620a:304:: with SMTP id s4mr4383270qkm.464.1585846508982;
        Thu, 02 Apr 2020 09:55:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:dc83:: with SMTP id q125ls2678146qkf.9.gmail; Thu, 02
 Apr 2020 09:55:08 -0700 (PDT)
X-Received: by 2002:a37:a93:: with SMTP id 141mr4489470qkk.244.1585846508682;
        Thu, 02 Apr 2020 09:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585846508; cv=none;
        d=google.com; s=arc-20160816;
        b=vCza4xbL1MkiO8TuzLF4o5JPtOCcTdW9xgGKnk9HWGdINNn5BeogSKxjqLymnvv89L
         bw3L1j8A02oVqzmWuuw+zYqA4YHLm4abtK4HjpGXQL+qzFyY42X7eGqlNb0hAFD/s0kP
         0FrsRdXw7xcI+/YVQ//sFy9lMBmTo9lPjsqGxTmdgTv5G4PnXos2m9Fkp4Q0Y5ZWOpqe
         UQqWObyp0Yxpt4M/AoDnEUDPb8M1RDifEhBXxoJ8zkNAtcHFP+1NhaYeiktcrN/8EGIL
         n3Cbw4Mu0ECa9b+8/RwiKM+NdjYS5d4L/Aw4DXzGubQHEVKegB59ZBFCda2C0cGw4/DZ
         EBkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=7OcTobGkjHwoSGKSzSqbMXwOD8hf/Cu5Rv1KanxRG6M=;
        b=MAbdN8j3OEA6Ty8+IBze/i83cFMASgUmwGsdFYExTSrOxAHEMJjUYzmLkcb9AtF1Uz
         lmg1oom+OYOJ6VprGfW6lGCd2QYXthfK+dMqf4dJG5gHlQLVEOzHEabJGR7SPRc+MHgQ
         W8NGgckL4iyNqhzXlcw1SQH6YFUz1ZPASp7jfubvJLlC1ybOLd+CRQtXyvY85wBAN0ji
         aGijz51jddtOOgDYji18Ia5a9qKXErhnZPfgtmg7+ZypzhcyOk0w09drG5S19KlM650k
         7ZQ8Wqt+FTP9QooG9HUw7vIeTlT9I8vbSx4is/FIDkrY+nQ0ScbFbGPaVQGO/ChxtTKb
         xLTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=r4dvWeRr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id y81si293771qka.6.2020.04.02.09.55.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 09:55:08 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 032GsoTK026919
	for <clang-built-linux@googlegroups.com>; Fri, 3 Apr 2020 01:54:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 032GsoTK026919
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id o3so2834360vsd.4
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 09:54:50 -0700 (PDT)
X-Received: by 2002:a67:33cb:: with SMTP id z194mr3145292vsz.155.1585846489469;
 Thu, 02 Apr 2020 09:54:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
 <20200330190312.GA32257@ubuntu-m2-xlarge-x86> <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
 <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com>
 <CAK7LNAR0PPxibFVC5F07mytz4J2BbwQkpHcquH56j7=S_Mqj2g@mail.gmail.com>
 <CAKwvOdnYXXcfxWT6bOZXCX9-ac8tb=p2J53W+T-_gOfUu9vvSg@mail.gmail.com> <20200402163957.lqgr3tpc4z7ish5e@google.com>
In-Reply-To: <20200402163957.lqgr3tpc4z7ish5e@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 3 Apr 2020 01:54:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQxN=y=E_wysYhvDZh9hVpe5Yo6R0kVjCP7ZpK7+C_Vxw@mail.gmail.com>
Message-ID: <CAK7LNAQxN=y=E_wysYhvDZh9hVpe5Yo6R0kVjCP7ZpK7+C_Vxw@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Fangrui Song <maskray@google.com>
Cc: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=r4dvWeRr;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Apr 3, 2020 at 1:40 AM Fangrui Song <maskray@google.com> wrote:
>
>
> On 2020-04-01, 'Nick Desaulniers' via Clang Built Linux wrote:
> >On Tue, Mar 31, 2020 at 11:11 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >>
> >> On Wed, Apr 1, 2020 at 3:39 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >> >
> >> > On Mon, Mar 30, 2020 at 11:25 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >> > >
> >> > > Having both LLVM_DIR and LLVM_SUFFIX seems verbose.
> >> >
> >> > I agree, so maybe just LLVM=y, and we can support both non-standard
> >> > locations and debian suffixes via modifications to PATH.
> >>
> >>
> >>
> >> OK, so we will start with the boolean switch 'LLVM'.
> >>
> >> People can use PATH to cope with directory path and suffixes.
> >
> >Sounds good, we will modify our CI to use PATH modifications rather
> >than suffixes. We can even do that before such a patch to Makefile
> >exists.
>
> The proposed LLVM=1 + PATH scheme looks good to me.
>
>
> There seems to be one issue.
> OBJSIZE=llvm-objsize added in
> commit fcf1b6a35c16ac500fa908a4022238e5d666eabf "Documentation/llvm: add documentation on building w/ Clang/LLVM"
> is wrong.
>
> The tool is named llvm-size. OBJSIZE is only used once:
>
>    arch/s390/scripts/Makefile.chkbss
>    14:     if ! $(OBJSIZE) --common $< | $(AWK) 'END { if ($$3) exit 1 }'; then \


Good catch.

Could you send a patch, please?




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQxN%3Dy%3DE_wysYhvDZh9hVpe5Yo6R0kVjCP7ZpK7%2BC_Vxw%40mail.gmail.com.
