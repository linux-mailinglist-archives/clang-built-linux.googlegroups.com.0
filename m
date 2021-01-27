Return-Path: <clang-built-linux+bncBDRZHGH43YJRBRHNYKAAMGQETUSDM7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 32055304D7D
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 01:41:42 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id ob3sf114287pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 16:41:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611708100; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2zQxJS5bqcLWLdBDyRNWF4+i4E7V+xIJEkCwJMdjKlgAJ6vIsbj6BbOBMH0bfuXF8
         HuKqZA1Z1n2MxORfgk4uNe19CG5UDqZEZ7H/+Dga34Nv6t8EJ2z8CLcJVWoTXM1yFqWD
         AsOd2zCgQYre0n32DcJOUGflNijRtmsvt19O5hkQlMB33kkFx9BlEqNpgz53rUiV0xYm
         yG7oU8R/7e9I8Ad9zSpqivNvdiZgbllXLXZ0BK8VLCbjSqZnMWrj3jc5bPS4yGGz9H82
         xC2HKxsMlTUgTnsH+DMCLf5Czr1ePoL68VH0yENRQdNmPYzkONDSAPNTbo0gbf1yfuZ0
         XK5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7FT2XYRjrB6yAhQd9OvcFT9G1aErsMka5t0S+nNFl6o=;
        b=RuJ9R7jhyC6dGI4z7Hjs3TnmN9nnlyQ2IOTw45ouTMNYIixjZwIQsunTQRCwI7Pft2
         5slGSPHt5SqQGAKxMraajlDRQ4iU6It9RfhAMUBzCXKOqWlYUSkextkqw+iN4iPOKmB5
         POs5/gv8ixYl+GvrTT1++s4LB7ejpQbVvdzh7lS0L0T3q+CuX2cUK1ATrehv1ZoMTO3a
         cg/0/GFX7j3XEenpXFtKF/qHJi2F9er2jqX3TnSprjdHO5ol2C0LdTdvDzzDgHBOYfeG
         AMfbl8Qy7gtKkQd1ZT5R1zHxyFKNHMkL+zDizGUKYBRUDsf7z4zc2XRMkEpTXSisAIOJ
         NjrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c4KjGbX0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7FT2XYRjrB6yAhQd9OvcFT9G1aErsMka5t0S+nNFl6o=;
        b=LwlF02q5lTqUFLgU/peTDK2NqvC3nbPkB+1TCthJYtMhEX3fIDEzaVwmSyCbdOy5Xo
         UViv3uiCa/r7aJaN2fzWHVoZEjARqqecbF7g5ElyT4858kpN++jbiiaWJzB57QtDPc+/
         Cus+EvnacEYSFCkJfERCZV0asTVeUUuE4zccX3tx3KMtb30mm0GpJ0rlUuj8Us0MdnBX
         QIb3PWPEUrQiwvBkVXfFmk6TMht9PK7scxNmTas3vxb5RErKlJPhVeooBiyDkn4OPS40
         ORJCy6XIoy30JEiKsgmGbPYVmspYACrNLxcwxmT1kcpzqlrNdVT6QLWn7SgeqkHbpKaR
         UedA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7FT2XYRjrB6yAhQd9OvcFT9G1aErsMka5t0S+nNFl6o=;
        b=gk6yRhFWmfnGD+B80Z/S3KhfEIIxUN3dd5Qt5ub5PBWb9GNBOuNmJqpdRdNjoN8qGa
         MzvUm5e4MIsYACYu7B+t5I+d82wT1QDUdYs10DCgMe2f3f7W3HqE01CXvn28KQYizRv6
         z7TSsPZLA0bHIByIkeaJ2lJLg3NbxaIwuUcIxMoo9k18TMjhQtlQk8BpcDjGYQgWF/9c
         BcqwFH34TAudQ7bgB7nOXO8TZJSUYVHq4JottljpaUU/HlAU6C9BZAjt/RSrC3i6/CJc
         reT7YLGrCKxSeVGhQoZcvnrn75ufYkKalFlhQbgjyMV8MY03R098xJR/nDyQBANbMS1v
         OFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7FT2XYRjrB6yAhQd9OvcFT9G1aErsMka5t0S+nNFl6o=;
        b=O5smBngSdei5ActiDuhtubne2ZQHlgU0UR1C6DlB2E0wEGMC6Thi92wGhPBbnEY76U
         G8WVA5OSTdRvVOu8QHUY9SJ9bL4pcIAvXuVscFVBYhPVuaEUyOwiUqAhO+Vkz/2yGe2Y
         yZE2SbmhqagiLwTNcc5b69VVRGLTr1EH5IIOz6vSA/VKHO5zkBKWV/G1YD+I43SpxR6c
         SlEleH2LdOdopx+HF1jEOpuh+QTibBqFck5HeVMOWyssyunZZvG56TGaFd1YcAD+mnyg
         5nF7E0L/YcdI18sgyS0w7dhhVPd5vZfH3gzhSMpCCI4NwXoSCkljmZZLhDQ7WeDS4Qwi
         nRkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ge7hl8VTJ4N0bCVlzYg7TA30K7ml4weEC1FaiIZT3FGcgAb0L
	va8FMPQtzTwRMq70M0OcP2Y=
X-Google-Smtp-Source: ABdhPJxcxPAZsMU5ErrHLNx5iNXB1DuoTrCMTKGF9X3fp1a2uLEyd9+lhkY1p5oYHtpYTlXW+K9pog==
X-Received: by 2002:a17:902:9306:b029:df:fb48:8c43 with SMTP id bc6-20020a1709029306b02900dffb488c43mr8801378plb.77.1611708100636;
        Tue, 26 Jan 2021 16:41:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96f8:: with SMTP id i24ls115638pfq.9.gmail; Tue, 26 Jan
 2021 16:41:40 -0800 (PST)
X-Received: by 2002:a62:144c:0:b029:1c0:d62d:e16e with SMTP id 73-20020a62144c0000b02901c0d62de16emr7669295pfu.25.1611708099988;
        Tue, 26 Jan 2021 16:41:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611708099; cv=none;
        d=google.com; s=arc-20160816;
        b=f39aqoN1jdoMutmgN55NR8bGHT9iTBDHyR6PC5qATa12sDOA4+joXD1e+Gxk6pY8iO
         wHGf7U85Fn874nYjfxtkJTxKn4PZMFGScMuaCIlB4WmflupEkS3XeK5pfLPhcAqO/Ki9
         Lz8mu9lMuuGeWlEODkX+upsKmQ8unZJwNN+L3hbHpQaaCTJdWq4b5asaihuiuaLcaaqu
         GKvZp2Uy4MKKkPqsTTnR7gMqkTj3bKR9R7XbTeN1yU+rUfZ1UVSESiUzuBTv3j6MoIpP
         nhsd0y9TCRDu3AV5AUJTf8ppMjjpLLGqtVmlavVHvgqFBoI4MBUxEdx3iSFOZErFdCtz
         Bs4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Sp41synaVHOuSVQtii9ixbvOGDzx9cyX8huZX1w1U9I=;
        b=RMT0OSsQG+aFgde6KXcsnlmbmCN+FBGk33fgXLHJmOTVaKLaNkP12xhP1qowxbkk21
         3dsqRzgZRR80exJiydBTArqNKGgyftsDdtBtEWAFSNSvfsPRlqN67cSSoe2h5vA8Neu0
         53/dFyvjoy7DxhqmF6b1JPAdlUxJSbjMlkkVOTzv+NGzjxXP2+mBVIxMECU4TVKPbUAn
         bmiGOfjDQop5xDBUWV8gbQMMyohC+024LTRvLPSCHK1cWKnTLZf9ZOnqtL9WSs8pqali
         wN5iYoBiJG2CNTlSN+r0xqSQ5GtlfFFM9GxxCocnk50vlX9AGlbk/OoNNa2wByKwMCVy
         Pp1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c4KjGbX0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id a9si20914pjo.0.2021.01.26.16.41.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 16:41:39 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id i141so418849yba.0
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 16:41:39 -0800 (PST)
X-Received: by 2002:a25:538a:: with SMTP id h132mr11851786ybb.247.1611708099327;
 Tue, 26 Jan 2021 16:41:39 -0800 (PST)
MIME-Version: 1.0
References: <20210126212730.2097108-1-nathan@kernel.org>
In-Reply-To: <20210126212730.2097108-1-nathan@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 27 Jan 2021 01:41:28 +0100
Message-ID: <CANiq72mrh_rU2vOcx4DY8uQKeLRgr74ei2XBgq5wdsU8uyiDCw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS/.mailmap: Use my @kernel.org address
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=c4KjGbX0;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 26, 2021 at 10:27 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Use my @kernel.org for all points of contact so that I am always
> accessible.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Acked-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mrh_rU2vOcx4DY8uQKeLRgr74ei2XBgq5wdsU8uyiDCw%40mail.gmail.com.
