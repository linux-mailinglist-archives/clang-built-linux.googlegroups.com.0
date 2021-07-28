Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBD7BQOEAMGQEZDFTXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C31D3D8775
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:52:16 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id e19-20020ab02b130000b02902a1de813977sf938756uar.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:52:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451535; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+8PiWIxQmgpcM0gPZSAmdFXOMDv9yj106KEeI4/F/M7aRCd3EDR5+XXDPOCIbNMw7
         XvCAEdXQefZeQPXKtMMC42GqmVU6tIswuY2bKUm1t+QGX/76ya+aTDwQ/kOoQAvvJ59Y
         318btdjxbVu6/rC9p/Yaur9BRvAdgUztINm8KxIHI0bqL9UnHO2qG80WgOFL4OBQg9Ql
         6JXGbOf7M1Ct4OYJBnYR7oLygmkDUvwT+pyUKBzOnQxJrdMoHeiOgrL9JJNQ2S/txCeA
         cJ2P5rpa+f38SeCMCD6hoSgjFOC71VJEZnte/ZLQQAa2LkW+O2d8e0oUlTY5JUxFVT+a
         OpDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=erHOviC5eAUfdhfXNfHsGkl65czI9kobh3Hr/C32fHg=;
        b=mG3GSvc8lv50hHqj7qPRDho8R/bWyOQvNk6Ag6rWjuchtRVWYtOh/yJLwq8P9/cbx4
         i0lLb2uUIxKmH/vKRu7l7l8vjpgXT9/gLHa6+/r0sKV9LhfPEzY+0RU2y3uMe7S3OdZh
         rzb4eOc9ytqL8aa27t1tmCNG+SRrLvUtK+kD6tAdWtF2Al1IuUlXPeg4yGrIoyC0qIQ2
         cptnRUY9jaFHSMXsmN3Jaw2DLVPN08nXY2+QMrysKOxqGWGqfIaCpQD+6sdn8pHthFQt
         XKbn85lblvscMhJYgBC7LrM7s5Qa/Nyyee04kG1Ov5Alwj3dt7OqBBzeBGeqRqSN1ZN2
         2J+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=SIJyCaqr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=erHOviC5eAUfdhfXNfHsGkl65czI9kobh3Hr/C32fHg=;
        b=Wxr/hcV3fnYwNDAs/RA/dMXuKre8qEJMlAE4PbiGNgLB6zPKdTHP2v9OJxr4bd/rKd
         6QhfWe9P8siVlUfIU1O0uSt4G2euXPKiWq22g58kCic0H45OlVbrIZt0tGFrLUQ+lD9/
         LcHu/AsKm2Dno7Uk0D7YCGylnOAcNGWFrZyq7Img0IyFxsjBY+h8OVlhhS4OcHK7eF76
         Kw4BoUj9exn5D1AQuUOBlHHC1FQuPyimArjGpiWX4NZhxhEuqQNUrBW/hX3Vbk9AMXZq
         l9lDvpdjAZRN7NDAAwfWTN4Xp4bCLq3HrDESItC1rZtAu14tkevii8avDjsE191pr9l2
         GSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=erHOviC5eAUfdhfXNfHsGkl65czI9kobh3Hr/C32fHg=;
        b=e5f4GMlIW167lhrzLBV7awWmuH7l2mxvFj1KySKZmF/wSmwS/Jk5Sx7KavGEQdfWe9
         bHc79Jgtuj2EeSlPK1DCn4xDuSmL/pfK6Nxqis8RThkaaIrpJeZY5+/YZbyOoiccOdAX
         hYVcVIRoVSSdaZS2Z2xjCQcfSzi0+q5dl0/XTLLCAJbEyPK9Hv2r4KX2kF0Vmg7mFN6K
         cfaVA9M42Sr0G+53c7s5KERcZAjfeoVwq3f/JNcLJiANnC4m/VBnlHzqAS7jI3Yq9d+z
         daqX6HIRwR3LeuCD8dxJKsJUrK747DhShZ8a0o4b/DjhwKpQhSF1ZlTPUyYoemIgqYif
         mnCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QgKJvOeI+H5zoYJFOPjcEQY9IpJP8nfQ5J3YLAnWLNPovJ5L/
	D9aYjFov3BGLPdnWIQISLJ4=
X-Google-Smtp-Source: ABdhPJzdf/8moDZTr//g8Y/8eLxrGshi7fbvfa+tosh5alrEhjjzIKQ1Eq64qfzsBfUA8vIyUYeyFQ==
X-Received: by 2002:ab0:25c5:: with SMTP id y5mr21436134uan.142.1627451535460;
        Tue, 27 Jul 2021 22:52:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2183:: with SMTP id 3ls115782uac.9.gmail; Tue, 27 Jul
 2021 22:52:15 -0700 (PDT)
X-Received: by 2002:ab0:7299:: with SMTP id w25mr21292569uao.45.1627451534967;
        Tue, 27 Jul 2021 22:52:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451534; cv=none;
        d=google.com; s=arc-20160816;
        b=NFAY0gOoPwYa0y2gbq4OoQsohzaDn4SNmOPw1tO7p32pHz+R3rkKIpQAqmMVDZPBZu
         k3h8N9vynSSx3OW1I6XWFH4RUWMvYp5RzQW87PsIybJcS6ngIjfl4GWQp3UwXTUHaFt0
         EybejifVRB/6kSHfYjLjUFv4JuinVawFJ7o1ZGNPp/htef8LCxEF0WrNRk+AqdrLTVGy
         Xq/84U7y3noTaMmOBd0dbrsjVFWpKctqjIxAEBwbzRlOebgHQse6SZ+DEE79xPLzmpUt
         38jUxHVNx2Cl8tYX7OmtCs8hb+IPe9UZcdOY57Vu07c7XqYoQ7lI6xswg58mAfkDucfk
         J+kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/29qfXWrwNbL8AkOZFd719LJBo2PXzLTWYUQn8/xpuI=;
        b=g6E7Bb2NyripYsfsok6m+d4rnbOFJ6iwrYf6e2vw+4XChNH/N7KCgm8GL16FfWwHVG
         dub76z2czYVfkEwZhIdQ7QeGwGSpRKkJr/kFMqqmgILIPBJC2hk35PgJgHbO7PNnqxqo
         wUOKVoijzkV6gkGSPgLFQOgbCWPODPyh7AzwQtEbZiKGj9xiZm4boYNoPJv/WgH+Wcsu
         65BrpM1KAzVHJTK5I63ZhpLWe4Cu2yOok42XwziqDuZ1IYsJZs/m6EQuPdyflLcxRuKw
         +wIA9T4QMhAhJ4Aefc/fY+A7d3AHck/UzmgJK7odSVNSyHCEVVTWHIAaw5v+o3QBg+7A
         UbOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=SIJyCaqr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si351617uaq.0.2021.07.27.22.52.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:52:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6233F60F91;
	Wed, 28 Jul 2021 05:52:13 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:52:11 +0200
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
Subject: Re: [PATCH 10/64] lib80211: Use struct_group() for memcpy() region
Message-ID: <YQDwiz1SdrzFKOWw@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-11-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-11-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=SIJyCaqr;       spf=pass
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

On Tue, Jul 27, 2021 at 01:58:01PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() around members addr1, addr2, and addr3 in struct
> ieee80211_hdr so they can be referenced together. This will allow memcpy()
> and sizeof() to more easily reason about sizes, improve readability,
> and avoid future warnings about writing beyond the end of addr1.
> 
> "pahole" shows no size nor member offset changes to struct ieee80211_hdr.
> "objdump -d" shows no meaningful object code changes (i.e. only source
> line number induced differences and optimizations).
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/staging/rtl8723bs/core/rtw_security.c | 5 +++--
>  drivers/staging/rtl8723bs/core/rtw_xmit.c     | 5 +++--
>  include/linux/ieee80211.h                     | 8 +++++---
>  net/wireless/lib80211_crypt_ccmp.c            | 3 ++-
>  4 files changed, 13 insertions(+), 8 deletions(-)

For the staging portion:

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDwiz1SdrzFKOWw%40kroah.com.
