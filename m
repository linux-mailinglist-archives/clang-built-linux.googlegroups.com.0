Return-Path: <clang-built-linux+bncBCVJB37EUYFBBYO22GAAMGQESXFAXOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4037F308E39
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:17:39 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id f16sf7256090pgh.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:17:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611951458; cv=pass;
        d=google.com; s=arc-20160816;
        b=x/51y2KM+frD4t8n63MpxbqgDz1Yd9tIHIq766sNe8L+Ur7JOqqLMsPEAT47HN7DDR
         3zrUe+ummxAAqJUxME+YjekBkX6V4qzGijgI6mweSMUMlX/wVSjx9ZPJLLMqsyFhTA1l
         pxyGeVZFeMtEng3pV2B0aDnWeUIA685bgQCD+mclBdi0RYak81GU1TTTpPMs5j0g4JSM
         adgtQPOIDAq0YmzRODRT54G6TJl8qnr8zInCKzD3+cZ9AtG5sERP5fsOqx9fNnVJnZMy
         4x6wzfuuccj+2Xerf2Twzt0bKLXagp+tCr197f5kQg3LiJw+xZn1m9mBvMMP/QFgiRyE
         sXMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=pKxrU5RTcTxF14K85FbmfE6NN3+cQ3H6Lj++0vkFQQg=;
        b=dEXK3Qx/BXzzXxuDUQaUnWBhr6OnBIWW/0YA7p0l0EV/D5dbWSsY8FdX8xZOCRZRnr
         VLZgK3OlS7tN4srdnGkHyggoypZsi6wVpd+uvqHA3DqqH41uWtmbMCnz4rLrVAB6CbUf
         qnYI6ghon2CIaM/noEZ0G/V18NGv2tP+99KJqQqK53W8tMos+EjSN8t3PfOyVvM1/fSs
         3rOV/QKUFAhOHnOAkY/TG03tXDFCwcFRiwF6INoYxW/WrBCVmaMd+ErZrRZVNLYL9ShZ
         2atWYWmsC4ylwUBWVTJ2IU5JLChpmmh6VVcQVOntJC3iTiG6qP6Mc5V79ITOcgU/SDwZ
         FvIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FD5fhlGm;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pKxrU5RTcTxF14K85FbmfE6NN3+cQ3H6Lj++0vkFQQg=;
        b=LMOVg4SckJ90PzGqgy5A2c1wz2aNYTSEEWwkJUZZEFjm6BtsA4zHYtvQzqsthuIaMy
         3ZCJ+YPyI8/fuu0WRSD5bLok6tPtswXZoAk31R1esq1+HbCo9CLBsHYmsO0/6GNdZVfy
         l4pKz7vio0arVS3DMKC77qia94/co19WsFYLnVtzpIki2uETt+nQadcqTCufSN/RxFji
         Ruo4haKhDCmnOhZmQtF5hFSVC9HDT5Du11SC4Vtx94nKcZfrAepwOFg/PZp+KUW6VQ98
         jAYV0QyJen4bDZ/LIDZIuPQn8AfLLvC82wcV2+ebHnTiPZ+aEhZiF6+32YDGV5QlPNww
         VlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pKxrU5RTcTxF14K85FbmfE6NN3+cQ3H6Lj++0vkFQQg=;
        b=JKizHPrw0nmTByfJOZSjDmjv04uiI5pzWXMkjghmSs+7TTzVMVC1ayD+qLS4HhSnLf
         P14cyebtWLwnEQ/KY1Ct+sVOsTPGWFyDqs8zUiVc86Xkrbftpks9bD269054h4qWYeGG
         AKq6YNNNejwFHr6xDz/CBTp66Ey7UfO2pd2ptfxXUqy8WgdTYce9wCC06nStp2LgrtMj
         gM9lZ57C6CavreaAZGkw1FNaU46yuAyKa+Z54Rn1h1uM18bkqoktKAS6F07iV4NL9f8x
         TnFCXAeLXOXppayrrI3aan/SoWP75uJ9gFQiC2SH/HKXEAbY99PLfxrdaUFotWX/dYN1
         g+Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306DpAPLL8WPg8c05jbvcgQ/kaN946eEKvYdfcPMGtzcsCa0uCS
	xn02OmTFiMr69X+NTMbX9es=
X-Google-Smtp-Source: ABdhPJxmu0txPWAIY/BGHEqL8Op2tRGoP+eMwj4cdz+e+3OmD4Ge74dnnuaeafOZWu6w9H1tj3AjXw==
X-Received: by 2002:a62:7bc8:0:b029:1bb:2947:5810 with SMTP id w191-20020a627bc80000b02901bb29475810mr6129175pfc.39.1611951457969;
        Fri, 29 Jan 2021 12:17:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c406:: with SMTP id k6ls4864704plk.11.gmail; Fri, 29
 Jan 2021 12:17:37 -0800 (PST)
X-Received: by 2002:a17:903:1cc:b029:de:98bb:d46d with SMTP id e12-20020a17090301ccb02900de98bbd46dmr5780736plh.54.1611951457371;
        Fri, 29 Jan 2021 12:17:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611951457; cv=none;
        d=google.com; s=arc-20160816;
        b=uuPlUrDYJyOfhZNMBixH7HgwJLiYlf5TAuuPL4T6Yrcn2OBhW9Fp3MLBJgq7Nu8RYS
         8aYXHRVQJoKpKDZjVIxO2L7wNYxnNx4ogjiL/uAzsqE581sUCDtSuOfxGEXgVlo5XRTf
         I6CQATU8W6GXtUS3ykmr7AqWQjTDkeI3mIthNMXxdKd0/eRgb7lreEW4QFQr+t+51qB6
         7x+YMmSQd5mxvwSLAkc+8FN0yr6SEXLBKnp9wxniHx8s0Yi1brotr4HGwu38buugl0Sg
         iTr97bUgSmt8y8mqKPW9bAKPuzy+XP87Tk/KzMnkvq8qV6naLJjV2dypsArmEuDiWHn0
         05PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3W/U2GBNiUXOVq9NMd7nVXM4YErVjermutIrsOy/S4s=;
        b=NCU5tXxFamTZrWkLzQQ8CuC7s9XgR81b7WEYfQWyKNMOrjpzUHoB33uNOozvw13ttp
         j4Af5w57KVJpabx6bBA40v/0lQmDuHQ/rTT3Sbz6+JLa23Eq82EdTCP3Ih6O/RewHCQH
         E0YnLsDBJ+ST0tVDgKpdmqCnZBgJfTwCOaKYTe+8rq3T8j/7O3a2NxYYG1MfJid9UkrM
         b4M6/ht6uD2Bg9FcQseSJ0vnsgb/kolB6EmEg52PlRDroJVLbB5WuLsA1/0JhpcHb7wn
         WiXKGz8Qmx7PkLX1Cn7/ozkDGE1L9aiLFUzjMe1IsI6eTjNkYaCvYfYo27ACf76B9T4k
         EXKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FD5fhlGm;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id ci6si690158pjb.1.2021.01.29.12.17.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:17:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-9fMf1rNKMvaCwOvRcrJ4vQ-1; Fri, 29 Jan 2021 15:17:32 -0500
X-MC-Unique: 9fMf1rNKMvaCwOvRcrJ4vQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 970748144E0;
	Fri, 29 Jan 2021 20:17:29 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-64.ams2.redhat.com [10.36.112.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA4F25C257;
	Fri, 29 Jan 2021 20:17:25 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 10TKHH9i2368212
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 29 Jan 2021 21:17:17 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 10TKHCBD2368211;
	Fri, 29 Jan 2021 21:17:12 +0100
Date: Fri, 29 Jan 2021 21:17:12 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
        linux-arch@vger.kernel.org, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v6 1/2] Kbuild: make DWARF version a choice
Message-ID: <20210129201712.GQ4020736@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210129194318.2125748-2-ndesaulniers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FD5fhlGm;
       spf=pass (google.com: domain of jakub@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Jan 29, 2021 at 11:43:17AM -0800, Nick Desaulniers wrote:
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> way that's forward compatible with existing configs, and makes adding
> future versions more straightforward.
> 
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile          |  6 +++---
>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>  2 files changed, 19 insertions(+), 8 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 95ab9856f357..20141cd9319e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -830,9 +830,9 @@ ifneq ($(LLVM_IAS),1)
>  KBUILD_AFLAGS	+= -Wa,-gdwarf-2
>  endif
>  
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS	+= -gdwarf-4
> -endif
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)

Why do you make DWARF2 the default?  That seems a big step back from what
the Makefile used to do before, where it defaulted to whatever DWARF version
the compiler defaulted to?
E.g. GCC 4.8 up to 10 defaults to -gdwarf-4 and GCC 11 will default to
-gdwarf-5.
DWARF2 is more than 27 years old standard, DWARF3 15 years old,
DWARF4 over 10 years old and DWARF5 almost 4 years old...
It is true that some tools aren't DWARF5 ready at this point, but with GCC
defaulting to that it will change quickly, but at least DWARF4 support has
been around for years.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129201712.GQ4020736%40tucnak.
