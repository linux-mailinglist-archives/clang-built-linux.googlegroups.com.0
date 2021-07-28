Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBR67QOEAMGQEPIRLKDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8403D8764
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:48:57 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id fa13-20020a17090af0cdb02901731757d1a2sf1942348pjb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:48:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451336; cv=pass;
        d=google.com; s=arc-20160816;
        b=ezDrCBWTdTNNvI5E82an8BCKtbPPE2ysE9qccOLc3j9DY6Dn8I6Baq/IsnqQ55flOZ
         bapZ+ihwkfGNgdYVdxZwkAYQVYQxTMlnbfDmua/cdbVyxNMz2HPH0HohhRtOgpCbqC/L
         JeuUqMRyItk5kk8FIAuxFzMhpF8YqXE5gzSJKG91BcvbmLd4aoCEG9BTpeIQG4SpUaNB
         ZMxWPgaC+OWtm0tkHjUXEK1+iCoQWbnIh7Sw3D1kI2t6ctWgEsopgrY8dvoUDFYeQ1Za
         1qyLWqTpmwx4D8DbHPC9LhU8cOWvXodvqV4JdMwr9RioD2TaGPGMbrGrB4wT2MCDLmma
         35rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QFgoEGY1oAEzQ4hBUDuY3Y8gkfjZyCI9a9KrUC8QEQw=;
        b=kZIsrbIikMJxSyOtexeaKIJOZTjVRj4DKPLGNXZSXtzkdpyZqoYd/+XUswmwxxGobU
         UtakPQ2HJvL88YqgajuZkZge7ZHM63ywv07shTQadNwYercpVE7iE5d/+G6Ie5PLLxUl
         bLEJkhDZzund2WNioIsshh9kKa5jy4gedZKuBvpqBAE61k90icMOPaY0tg2OP8umFTlN
         sGw9FoYkfiUv9NUJ7sRx1c7Ul1+7usBpd4xMtj1vl0IxMCCWH4HEMDezNMZcjRDfc71F
         lqMHplrkhc85JHI0+IVBPKKFp+NKfkRvBUpDPHvNQXmC5SO6LZf7W9pvL5Dt1X3My+Yg
         IRDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LoC9EgXW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QFgoEGY1oAEzQ4hBUDuY3Y8gkfjZyCI9a9KrUC8QEQw=;
        b=IwK1ONbnPIAWlHJXd1YHacxZkCixM3I/azRP/b+Z3ihk1FxZpgUWUBytxPfVP5YaB0
         7PcCH/nZegC+z5t6rgrAvNSq5xlW71dMt0ak3UZ/h/hJ7Tej8tBDHpGt68D4wzameWov
         SNuLIbvqO8qWC+r+k5wd+c9RXp2acGPpdRXp93xFvXC+vR5Loc2KvcDgRLSWxf0YJzRQ
         yzbKx2bcdmYvFna68YFrOuWQb3gyblokZjp8uewpnHdTL/ybiqpNjx9gN6kIxix8hxA9
         2+d2vEmO1MPeBTfkV2VTXLrRQjJSRPlmKmqJaOLOEeChZpb/hb125O0AUJMQ4WDJTDTL
         RN7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QFgoEGY1oAEzQ4hBUDuY3Y8gkfjZyCI9a9KrUC8QEQw=;
        b=Xup0bgaCWYY4eEkB4B1q4opCKggToxdLHg48PAsTu5+r115Su3sKE1oU9YZr59Qdfz
         US36qDlIsiGqsgZZEnKcBjFAjTvHwmMkujHKf9uQAe5H6vGHadFH8mJWeFOqzrTT6SIA
         AAL0ApJuZgwU0lZD3dRLIBPU0sfbJYxgK90vV0Ul4aAakdpynpXl7uClLzjiOz7bscEN
         RCQxfAtqzNBPb11F8FMXstxUTj4BHJvZw0CjrDrgu23cwb3zOMM29/Q7qojFN0hVNE4A
         06r8ViazZCeTpBuG++Pn4NKCG4st+5UQlIymhqyBVzMj3J39v9oaB7hiZ6Zmd2Z6zUWs
         MT/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SeNDTIo0LL4gaqf+6gC8hPnWXNLG/AboyzZFTlHof4PTlhKul
	vbRzASJbqQOl8n5Erg5lTC8=
X-Google-Smtp-Source: ABdhPJx+w50OKtOcVjBa8nGheVbO5I+BEs7gL6Xv+1CbSN8JkHUeYj8BDnbmRn9CWZVhF6HnvmRnuA==
X-Received: by 2002:a17:90b:214a:: with SMTP id kt10mr5361125pjb.208.1627451335845;
        Tue, 27 Jul 2021 22:48:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4a0e:: with SMTP id e14ls678371pjh.2.gmail; Tue, 27
 Jul 2021 22:48:55 -0700 (PDT)
X-Received: by 2002:a17:902:d681:b029:12b:381c:c86 with SMTP id v1-20020a170902d681b029012b381c0c86mr21917104ply.46.1627451335296;
        Tue, 27 Jul 2021 22:48:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451335; cv=none;
        d=google.com; s=arc-20160816;
        b=Y1EVSBqbnvm4Ws9b2My9E5Zr1j5kujkjLcc18aqIJVospiDQS0YdSI9u6RWmJcF2aX
         J7L0rXRbM3SNCwDg8iQSVcaUeMptDz2gWyXxJHczjER8xy3rMifxSnXKCA+R/M2GRKj1
         KHFdWbjeb23lET7SomvbL1KNUF6Xh+y/f0aZqFH6Z98Qy4a4y93R0x50rdD8Y54wX/6p
         X5mgL75PllGAb2YdsxwSpAFUmC7PWOEjtYSS94W3A61uD+3njUmbOaNb2uUUOZsQTWH8
         Lz6qqFaNPGuEWNe33bdwPE94nz3J45bfgobiDFQL5Gi4ody0GOJnT97TyXSZvulUommM
         7xkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IYCG4nwauU74GRxzH0xWriiFjinMbrqbxre37iLRuo8=;
        b=Aq0tCyv7M37QiTW5EtioalYIT5lXHdO5/GdZgbWv8cvGdACf8q89B9mMYeeuvSG3dA
         3TcZ1/K1DDaH62ytD3vxEe1xo/QSrC4ILmgfMii+laii6AkeWXO563KNuFSpoO8iV5Rz
         ybCvJqgzMsDPBYO9iuBRp1mJ922caGpCaq+y5SIJh94GGF9UbUzlY6yjj+/2O7Nc2Nuq
         IT592OAl0tv6s98hJ3O9bwew3e644POmfneY03Lfw3Zr+cf44HPNxuDizUgYgZg/cEVu
         ITk9s0UPtfUTWcNbCZ8RtDZCRGA0nodQKaynO/6n5CjsG4/fvAKtenokyq3/AvOJWS5f
         XcQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=LoC9EgXW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o2si418010pjj.1.2021.07.27.22.48.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E4BA60F00;
	Wed, 28 Jul 2021 05:48:54 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:48:52 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 49/64] cm4000_cs: Use struct_group() to zero struct
 cm4000_dev region
Message-ID: <YQDvxAofJlI1JoGZ@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-50-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-50-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=LoC9EgXW;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 01:58:40PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Add struct_group() to mark region of struct cm4000_dev that should be
> initialized to zero.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/char/pcmcia/cm4000_cs.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDvxAofJlI1JoGZ%40kroah.com.
