Return-Path: <clang-built-linux+bncBAABBIWRQ32QKGQEZMQCRLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 884361B5E05
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 16:39:31 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id a2sf2779113uas.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 07:39:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587652770; cv=pass;
        d=google.com; s=arc-20160816;
        b=OTLLxjJdFePkiIai3rGDCbgFmouswfH8FhxjvBrK5YDLh8i4z6mXyVNgAVsnWNgYHu
         UNE6pKgi/dYOvDsXieNqlP/Hcekai8iABxiVC3mF23EBYft2TnZNrzt0xz1w2xKBl3x8
         puQkN/DrFznUrpEN0JLZTqOk76NtPl4MOaH25D1IsXppSsEDyEAF3GrmYC9cTx+bgSjX
         +WARA4RXYlFoBYYr4q6UJqMcQfTnO9r5bzydwV5fhj1Nsj6CPAt06d/jpm1I3hGNSAGn
         feitvGYKs7F+I9KRNDtQtZkIwXnxEjIyt2IeJNAcw2hwijxybZTp4ll98NnMqMpzBbyn
         WOVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Y0xDwU9CyTeE1Q/xHgBSBGdQlsR+UsQU0cQU51e7P5o=;
        b=lFeQ07fXtAGLQyKGUid6+BlvIt08iyFGFcrTV4kJfZPStwmF/cAwS9Sm6LHRqTmYOj
         iiUDPd1nfOTKD1BrFAoXhUpcO0Dqrgqw+7PAwHLE4GLfaN9L8RUYp8Yp/dv/hwVziGuS
         2tvhafPiiS001TSQjLq4SZ1sgCpvFwBubOIJqhQT1vYpzSVPr7HJ/zq77GFDphUz4MVo
         Nz2G8pi1jiFFin1SUOvO3DgJWniTccWgqcjUysmbczYQHkohYUa+mnIaxGq4UPHnNyY9
         yDD0BhjZv63PoDEWP4Qr5U3b6yPY1bEZiLYDfxVJK3kWaMWleDorrKPzpofTLjxrU2+T
         roBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1hYRHfJG;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y0xDwU9CyTeE1Q/xHgBSBGdQlsR+UsQU0cQU51e7P5o=;
        b=If5il0yExSt69aZf/Q226tUmTSIDPE+T0lqcAKCleqlVzlnyDSCOn3wfZpychM5Sh5
         EmENZ8wQDoVoQyMJfiruHS910+SwbK6y482l7Mwep9BrR+XT5HcSYa3ZS6gVIQ75gRdR
         nLw5bxocYJByOUtBlTDuihWMSXhtN7hkanVISWsq9ntnR3oyNtJFnx+FgIR0aLQuXEyx
         VrdkwnDjrDbe6tw4rfnOBceyISt45aX/7zpgnCfD4/6gyINZX8NcHSHoM6URKbRgS4UG
         AZPIsUovp9Hef5lQ/EwpNt4GVe+yPRB/ui0QteGWI1wsTAWgIaqqQg1YRTrjyGEtifL6
         VTiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y0xDwU9CyTeE1Q/xHgBSBGdQlsR+UsQU0cQU51e7P5o=;
        b=TZKLp4DKmh6qMtqPkhZepqKC3JuNoLhZ3pwPg3cgf38oUTtFKql71kMy0hvfZJejsj
         mj+K404G0Z836MZWkLu9l/FApzRhANkJvYR70DvKQv3Aq/K7FXd93h4jESHdyvTwX1F9
         GoCuIXwvsvgd/gbcvUugum1aBLi+CBDMNbNKQgCu7OlOs9jOnqZwpccSF2mqw73QDhdW
         H2EQ+l4n41lyLQ6kv8QLKk9K3YxA5k5nI5JzlffrBDpDiF3D3b7jo7gVjyjEoF2496Hq
         yQeeyafPOHqq+dPFwaZRkCIPijdAQzHCUFJ8rZNxitZ4YkaqC7oY8qP9eht4dLmeCQEL
         PQaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua0zeQfSkuGdIAk2S6f9ZpoIlRyPPSbJC43e6zxJcXtWmrTi1S/
	5aIkxrJIDE0AQ0p6oUDgyFM=
X-Google-Smtp-Source: APiQypJH2IKAKlrhnHRx3EgNlKMYBK1NwTca7T/uL1/ZFYnk3rIaPqB1uuuasqr6srqX1l8kCzhO0Q==
X-Received: by 2002:ab0:6588:: with SMTP id v8mr3502726uam.100.1587652770545;
        Thu, 23 Apr 2020 07:39:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2992:: with SMTP id u18ls562864uap.8.gmail; Thu, 23 Apr
 2020 07:39:30 -0700 (PDT)
X-Received: by 2002:a9f:27e2:: with SMTP id b89mr3290339uab.97.1587652770162;
        Thu, 23 Apr 2020 07:39:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587652770; cv=none;
        d=google.com; s=arc-20160816;
        b=bZU/1dK2v+evJ7jI+y11xTWMHp831j0KBXiOLAkvfXMZ9sKQ1f1dfLDYQuJ5ibV3TE
         gRxAgDdXERpxVRAzBHs1XyTHK8XTUKGu0cmuYrXKNl36/cmowRJO1s7IiMxp6jbN4ZST
         YAdNDpbPytn7ofPcUXWYDSlWKtvuJHZvUwb3WuqytRu02nwRQk4C1/+8ZqwIxVUVddcu
         ldqdDBqYy2zINwto+fRwnPNdgE5B8c83WpgTsV/Tw8W9/MGqtB5fDK5TACvcyd9uf1PW
         p3GrllH+1HKObRj1CqKTVK5grMkmMC13tgx5PfrJflNAbNMk5Jik3eYeEEtp68K4x6h7
         10Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=BOj4UmRurC8rIWuQU/ZmKHElncJFocku3VBgXu1RgAA=;
        b=ZHqzWFA9KPFp1o2baPDjF3AmvpWR1T+loio+x7QR19vzNR63sb0NgSLi5qTVD8vqqi
         9TkhkM974BbPlmXuEG8Ees+PaRSbf1OsTf4hPm3ZSw8XnHJnKc8FpNE2bOJnmZR3cnsD
         JD/zT/+Yg1uAoIt36ijostAVIOPo8F3CkYfpJIW/npZ5NSMwVU6omfrAg7IuceS0EycV
         RqsuSUZgDpTqhURGi5gr8QMfIy0wIN1gfIEqEZMnNFRn42yFKJdC4ZyrDt/OwSDpW9po
         fbgibKfOZ3vqX5C41hVjOauchAGRi9WGKvBVaFWkHH25WhdTRVQc3jVNxqcahrb+wB6t
         2+Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1hYRHfJG;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id y11si229447vkc.3.2020.04.23.07.39.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 07:39:30 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 03NEdBS9015548
	for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 23:39:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 03NEdBS9015548
X-Nifty-SrcIP: [209.85.222.42]
Received: by mail-ua1-f42.google.com with SMTP id s5so5895215uad.4
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 07:39:12 -0700 (PDT)
X-Received: by 2002:a67:3293:: with SMTP id y141mr3518879vsy.54.1587652750987;
 Thu, 23 Apr 2020 07:39:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200419180445.26722-1-natechancellor@gmail.com> <20200419202128.20571-1-natechancellor@gmail.com>
In-Reply-To: <20200419202128.20571-1-natechancellor@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 23 Apr 2020 23:38:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT3pt6VoQb3-HtOFJF5JEmaQhjyi+8OSCXu6zQ3oV579A@mail.gmail.com>
Message-ID: <CAK7LNAT3pt6VoQb3-HtOFJF5JEmaQhjyi+8OSCXu6zQ3oV579A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] kbuild: add CONFIG_LD_IS_LLD
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Dmitry Golovin <dima@golovin.in>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1hYRHfJG;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Mon, Apr 20, 2020 at 5:21 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> From: Sami Tolvanen <samitolvanen@google.com>
>
> Similarly to the CC_IS_CLANG config, add LD_IS_LLD to avoid GNU ld
> specific logic such as ld-version or ld-ifversion and gain the
> ability to select potential features that depend on the linker at
> configuration time such as LTO.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> [nc: Reword commit message]
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---


Acked-by: Masahiro Yamada <masahiroy@kernel.org>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT3pt6VoQb3-HtOFJF5JEmaQhjyi%2B8OSCXu6zQ3oV579A%40mail.gmail.com.
