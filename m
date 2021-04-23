Return-Path: <clang-built-linux+bncBAABBZ46RSCAMGQEX6KFBSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E7B369930
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 20:18:16 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id s34-20020a252d620000b02904e34d3a48absf25119514ybe.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 11:18:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619201895; cv=pass;
        d=google.com; s=arc-20160816;
        b=fSiyBiHT8eO5zJuLotzqpMg8T/6+HtupA7p2R0i0n/XKjI6SBv6Njuc6cSUofy7Uct
         uAg4uAlkkMivda8KoUPHJA12Dbvwx9qnARAzghymlKWyWtomKWZJbIhKP2hp3MAeKJnm
         96Kuv9CxXFR00CM82PrKtMC2fzHKR7FRlkf3S3C/FwpISeed8nSh/gLxMw/Qo4oi+Pym
         GrYELVaw9LQeC8LpQxbtrs2I6rdvTB59ajKAgeXI1yOCqaWVfBydq6sPHtB3ss78NMng
         0reLXqvg9W/0LI7xj8/CnfB+VyttWQVP44o2SBN/8RJS3L09GXOPtvdg2OlcKNn1unK3
         CZ4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=bUjV5fdHL+4Ga2g9L5ur9RosFb1e98SrNBH2G8amPvc=;
        b=wjVYV5lZCmXf2ceAXeJGAuq8UK62SowRQuPBdZsLlQ9LvIV3U5MaotczrvskK/fd8w
         z0B4Zsi7KxsNEKMQhORL9US9gM4fh943o/GRpAIxF/jDkuIpKuUNFv7sh2FtGzBxsv/2
         7bIjVbcxk3V5+oISekkKb4LeY7NaFzjDPWIXXVpF0FweUz/5SLWrxfjPfHKLGmznc9Yr
         5aTbb3aFFXGip5np7Jbi2uGIzhPohnCPVTZLCf3utcJNQz0XfMkdLMxc9vLpBHZtvdRa
         nLCcDHf7/6yfsfxDe36cMNepbpjSETW38cs/WVTDhCXUHwTacnP43QlTJBzMLuW+Y5w7
         C9Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QWSeXmKd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bUjV5fdHL+4Ga2g9L5ur9RosFb1e98SrNBH2G8amPvc=;
        b=TWqOIPHtiQ4jQj41J3iVy+pnykFIFoogC26xfVjWn0AQLoAIuQan51ATYlveEJSKxR
         aqBi9L7Up2DatD+CF1yMhFYyKBqpDCuy20uSIYCwwAl5qSoz1397PP3GXxTW22PdQsYA
         JbImD78VGt2Y1Fwyv6zLZnOfYlO/PehOhbwBp7rbd+37/wzkZKMBW2pUcTvEmf4dG4db
         WmPE/KCWBEk48leD5KvwI6ojp/IJELaXVf1QVfI2GhWIwRKLgrwK8KmBO7568pR+onkU
         fQn9m869fruBIdAZabLWfX7E7n/i+rH3WzPr/mOLrLnEU2D4CfLpSXR86oSfgljZj7Ag
         GgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bUjV5fdHL+4Ga2g9L5ur9RosFb1e98SrNBH2G8amPvc=;
        b=V5Dbh0ySmnvbSrV30TUiFMv+9/B+R+69qjQnku0UMPvul89GImxQB1Uw8HLQ7jc4A0
         PngdbTmjH631/sNJtEnSJkN/e0BS/nPwcU229/QCg7CAsIO58kXot+Dhgr+h3H3l/hAI
         +eB+AMyfQVx2J+iUMmkRjFRpr81qDS0igmbk4kPr6LLU32dAlTYRzeJ/p85oXfdTcmcU
         rSbIoRTFxiT2tqthxliuVZfaWRHN5/+DWshVRFfUfFgX1xyshRiidTPorIpYQ6Dva560
         AzzlVCyJajGDFQh+h13NiMDqvnpeUWQ7JNhG4hiOuyAOdDr9ReX/DswgXpbonFzhHYs8
         br1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eNqRDSK3v0gy7TXpkM6XeCFWt1InM0hJcMZ+/s2bhGvIVH8ga
	Pbqf7OnadRAMaCU1QCJM1Pc=
X-Google-Smtp-Source: ABdhPJw+NLNFaJMA9rTlebetclluxWalpaEFZxJAChDYOLSuTHfDIUJ83V4aizR5sGTr4wFQWA5vwQ==
X-Received: by 2002:a25:c553:: with SMTP id v80mr8014053ybe.221.1619201895545;
        Fri, 23 Apr 2021 11:18:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls4677484ybh.1.gmail; Fri, 23 Apr
 2021 11:18:15 -0700 (PDT)
X-Received: by 2002:a25:8143:: with SMTP id j3mr7244830ybm.237.1619201895076;
        Fri, 23 Apr 2021 11:18:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619201895; cv=none;
        d=google.com; s=arc-20160816;
        b=jISeMlwpKWP+RKWZcvxZzDA8ObbESaH7wd7GeOm5OycuB2IvTZTMSj2q2O02oIHui0
         kSvO0fHaGWwnidsn2tbfM4l+srtHNvDzUPHc+gsrWAg1BYm3EzLIkhKB2oK6A9IkuA+L
         jIvK9dqhr7VifVs6RYlf/EydXa2Ro8nfAw0QvSxEE5BHrHIuJNnxI5hlLo+tNUIjdMpD
         sTX8gYTbqV7Izp60bDiqD31Wu7h7CA2urpWbLCTxB3LGLgYg1Tps85oja/9H0/m5TLJD
         JDPUuJUb1L4CBRFbpbikapEjnoZElmG+W2tz1qipoXQkFt53SVjcRYP+3NYDObke7Ws4
         nyOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vzQhHkQYKvYCwY3ZKR6qRs6oVObn6xPxUpR9xRnzAVQ=;
        b=sqoc/8VvM9I0nhgSr5BkurK+TaNkCTZPfIQxkV5TTXzoYnYKGEdeJZyIOgmyFYwV5e
         UlUeG30PARje6xJJEo1js3OCQtAAZb3x4JEBGkopGUuKFj3DdVZQjwXuHHY5Zzju8+m7
         now92Bx3n0qpf5ob6WoPCBamwQngT+ItibJvCr9yJPsDffYhUwwYh2n/JxsoBgF+OO6G
         imF9ujUVbkVgYw4oSdSoDxOX//3GXO4uFN3R0XiFgpupmR7+qPLPWkPtjhEh9yN9kH+h
         ntUpDqWEEDLVQESLtZQuzm56te/4j2gvNQUeCzrwo2ACXffip/USC1ShqOpFS6C8Pja0
         pc2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QWSeXmKd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si1034818ybp.0.2021.04.23.11.18.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 11:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D31DE61458
	for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 18:18:13 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id a4so49272630wrr.2
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 11:18:13 -0700 (PDT)
X-Received: by 2002:adf:db4f:: with SMTP id f15mr6209879wrj.99.1619201892354;
 Fri, 23 Apr 2021 11:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org>
In-Reply-To: <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 23 Apr 2021 20:17:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
Message-ID: <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
Subject: Re: ARCH=hexagon unsupported?
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	"open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Brian Cain <bcain@codeaurora.org>, 
	linux-arch <linux-arch@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QWSeXmKd;       spf=pass
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

On Fri, Apr 23, 2021 at 7:43 PM Randy Dunlap <rdunlap@infradead.org> wrote:
> On 4/23/21 2:36 AM, Arnd Bergmann wrote:
> > [1] https://lore.kernel.org/lkml/04ca01d633a8$9abb8070$d0328150$@codeaurora.org/
>
> There is no current gcc C compiler in the 3 locations that I know of to look.
> The one I tried is v4.6 and it is too old to work with current makefiles.

Correct, as I understand it , work on gcc was stopped after the 4.6 release and
any testing internally to Qualcomm was done using a patched clang. A few years
ago this was said to be (almost?) entirely upstream, but as Nick points out
it has never been possible to build an upstream hexagon kernel with an upstream
clang.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW%3DuM65fB4giC_qeg%40mail.gmail.com.
