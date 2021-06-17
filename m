Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBZ6YVKDAMGQEDGZTLVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F343AA8D5
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 03:59:04 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id v15-20020a92d24f0000b02901e85881a504sf2876396ilg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 18:59:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623895143; cv=pass;
        d=google.com; s=arc-20160816;
        b=DmPmu0XniqHxNvBuUVMYGedQikDe5ybohIFNQeiN6iYL6AzRjFS+mpxPVlNenfBJ1j
         JbnXJ0OHVgegRYW60k9rFjBYdlYgHbHAGLaIrd3UnUHHtefHOgBhfiO6bAyAmOwsc30n
         OOg8CsA5By2LNT6GEJXiZe3KcESNkyU+pnLoGnII8mP6y31tGFi4WYtn6R0XymTdVFPq
         EjFjn6MXVMkMCaPNU5LkUkEskXEBoBePZG8IN+RCo/hT4p/JqgPoqqLYJ0yFJqFMqU6R
         GuSwUl4fFk62TS28NYXFcNY0akNNFmzpsM5U0oOn0ZVoJ/I6eBPeaxcs83PvclzfI1bM
         ZCWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nWD7y981j65Lcj/MnelLWS9HyQW+16pKWdmqtZjiatI=;
        b=nO5741/T6MWotUHYsdHXMhUZZ0H17r9YY7u4rBIUT3YYGFslZ0k69ZI3+AXzooXXWB
         J8tsY03kS4avCpp84uXKmGuSSC/ndgq0hGAIEKOaH9SRRdqX1iQ/54FwXreo0nD0ISWb
         i7oy7PoV7HdFnDBPCP0uqJ8CkL+qdekBZlcEmFj/hru/2+3X8tywWTycFXqa33ZR7H1l
         7rqLqn7/tFcmTC1kDiw4ybqkw1+syqDotoG64yA1OPMmqO7ONHtjhUx11Cl961HZ86Ic
         fQuvDyY49FVbx3guc/ygjD1Rupa5tE0h64AL6H7QBcoZJq6pCa+Z7kZdF1j/rtnwvQ3p
         mUSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nWD7y981j65Lcj/MnelLWS9HyQW+16pKWdmqtZjiatI=;
        b=UxtChDx3cSJDSiYcokbE/J9z7ZYhqjmbv1BLnvyV3ltc04l3fIDb315hxj2PJQxr3l
         VALieJsc02LPo9Unpi0b7iqOqBqo8c2sY079lXTrD5id7KwTiSIpobbSigwDHq/zOBKH
         6qEzvsA4HyLjXAOrE9UU80FGZozWShKaR9lcbnhCx/bQ/92NJl4wr01BVN4AS7iMGQ9P
         xatdbYYMpZo+GMaxCUnQoFtAOh+AulDHcf6T5X6HGUrT0WCKqH236aUWPJICyb2feY3X
         7RVhFg3/FG5MNoN3SDsmqvSO9KkUF/e7yG1B257QYV1jNRlQdXVeHsfZTAF7OVsN+ydc
         MnwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nWD7y981j65Lcj/MnelLWS9HyQW+16pKWdmqtZjiatI=;
        b=bXJ0789r81SoYCIjqOTGIRsB2u65WVFvl6xSQfk9sXfAPS5EbgJm4mMuE0tB4XJide
         iIdmSlbMKV8gqlxZqF5Ct8gR2Uz1Q8P2DoXsCW3tB6YQLApqo2Qrhad3V4b0Iafa0y7E
         3F+yZV+lzRcvPjrGHRqDVxBvrkwZM0yFHGpsXbKXPryWpeLrtgZaeRUTWaSsOkoiseQ0
         aQ793so1z5JktUqOjF9SypflMlFD6Kgy2KQLqSF4JwNUgEzIkvl6KfH+VnDGiDQdSbNb
         ipyY2uDeGz9oJ+SyYcK/JMhxxHSwxb97KyykKjHib0L5cRsuXWTOLd22Ln6fWTyugs4S
         Fyog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cR1daHIhGsmW9ixCogUMPPS2WDd3lIw3I18qrlsliCuC4AQk9
	AndvI3Vt4jxlWF0vZvQnX7Y=
X-Google-Smtp-Source: ABdhPJw8QusXtVdE6VyIR5Tp6/RINNCUXtbAuCnwGu2JxUYdrUdO/TWcbNfM8yBiX3CbrJWGGzWJng==
X-Received: by 2002:a6b:7f02:: with SMTP id l2mr1797471ioq.78.1623895143796;
        Wed, 16 Jun 2021 18:59:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:dcf:: with SMTP id m15ls447545jaj.6.gmail; Wed, 16
 Jun 2021 18:59:03 -0700 (PDT)
X-Received: by 2002:a02:838c:: with SMTP id z12mr2123370jag.89.1623895143370;
        Wed, 16 Jun 2021 18:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623895143; cv=none;
        d=google.com; s=arc-20160816;
        b=L9NTki0cSuUGHRydKmD27M9GgTNxaSaPwj/rrsuMzA4ISeRhFUB9FY5vAGA2XoKKsQ
         zKeN1c/BHxFNvUUJdZLfrcLgESLaElpoaB75aBpnOePktBk7VlUe0ydNqyKkD20jyHZN
         49uALoq3tVJxlhNQXO6MZ13wEwIq8dm6n+w7NAp8oE1XdMTl2jgju/UwRdOvgsCbyP9s
         UH68v6xKsr17x8LClWD5v8BNonl5j0nPCGrTe7G52KEs645D3EO4ThhgsFhbKiMLy8Jd
         /sonol3IcKAONqqu45Eqjl5G/h3jOYx7NpXqZ7R0m7sho9MA9ncIeXB7UoOBn0uojH5Z
         4ejQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=bo6ya83/v1dYwP9diRj65UGA976O2ozjPCmvpuXf03o=;
        b=0Ylcsl2qj51/HPLuA0am6l/J/4bJNv6EgjLJwpMxvx3rAQdhzEjnqdd3ApCmGqZ26i
         FdCkmJRgaDQPghd3+hHgjoO48eUu2Ma5G6sg46pQbpm8iG4tdUgAzHogOKKbZJBoRIIG
         cAO6JcWKSIOiEQ36tdcEBkJPN92cKAnvWQuf/tfiMliccJ5GRN+CFdhl+uP/Z2KC12ZK
         q37xNr9iYSIpTWVjr1klorN9jXQRVgl8CUzpy/l1fK1XSPf8wTBoxQugci2S8jXzKa2Z
         O+z+N38B9Se1bq+YUAG74KJIinmCg+HGhcxjPZxEEIyjpcJKpey90LAca0jRv+N7pvKF
         x5FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([210.61.82.183])
        by gmr-mx.google.com with ESMTPS id f9si396710iop.1.2021.06.16.18.59.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 18:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as permitted sender) client-ip=210.61.82.183;
X-UUID: b889ef0790d8420989e32647fe327073-20210617
X-UUID: b889ef0790d8420989e32647fe327073-20210617
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 365747547; Thu, 17 Jun 2021 09:58:56 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 17 Jun 2021 09:58:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 17 Jun 2021 09:58:55 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>
CC: <clang-built-linux@googlegroups.com>, <lecopzer.chen@mediatek.com>,
	<linux-kbuild@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<masahiroy@kernel.org>, <michal.lkml@markovi.net>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [PATCH] kbuild: lto: fix module versionings mismatch in incremental build
Date: Thu, 17 Jun 2021 09:58:55 +0800
Message-ID: <20210617015855.6098-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <202106160942.A89674E54@keescook>
References: <202106160942.A89674E54@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> On Wed, Jun 16, 2021 at 04:02:52PM +0800, Lecopzer Chen wrote:
> > Yes, We can imitate how CLANG_VERSION was implemented in Kconfig.
> > 
> > Accroding to GNU make release page[1], I've only tested for 3.81,
> > 4.2 and 4.3.
> > 4.2 was released in 2016, I think it's fine for LTO lowest version.
> 
> Okay, sounds good. Are you able to build a patch for this?
> 
> Thanks for figuring it out!
> 

Okay, I'll send a patch in a couple of weeks.

Thanks,
Lecopzer

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617015855.6098-1-lecopzer.chen%40mediatek.com.
