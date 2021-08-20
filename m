Return-Path: <clang-built-linux+bncBAABBUOP72EAMGQESAYKIOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B2F3F2CAF
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 15:02:10 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id e187-20020a6bb5c4000000b005b5fe391cf9sf5407873iof.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 06:02:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629464529; cv=pass;
        d=google.com; s=arc-20160816;
        b=yUZA6Dob8VJ4w5aoewx+1QkXcz4DqeQUNpZG0pnhE0U4tTqnZsR5hEkgsVhnDeMGyi
         2PPpKKSo+R2ujaYRujK2AkIRMqiKiyREYfqhoqBBFWEq/KUVBw2GPxTuohy7wKxYKWBG
         XofYHWiBb9uR4PVQ5Fd77xUvTEcEFTrfuw70etbLxE3kSAAHDUFrkXFJbVPd+xiCz+yk
         fPcXU0egMFfPv0pmeqLcF179PlT4XgJ0hqpBbA3N+MmkoCOFYN4OmsJ6KoD31nGmz89m
         pyUSHiXVjj8j3EkU/QHehISbW+7jIpzjafkrcags4tL9Co7kR11auIjUv+BqoupYyL6k
         YqYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=F642UQb3TTthhjUeJvnq8GgzLiSmjUJhU/v0xPhPNLI=;
        b=qNMDkoM3rGGw7WHiOcbPF+gr3zpcRBwthrVGBc9nOMbFAeiftUI3MuHuQoNU5jZcgF
         bGuwR2daluYrFyh/aRe4pMYyhghf+WjPR2/jS/ctuWkzu0E/uXLrS0GlEvE93+7snkPs
         M2JFHiXyZlG4395FSVlMkGNVkKPGpDOoEUg792rv+vjTRet9sCuv5NPe+sYzJ8Qf4nOy
         aHlh0QueDdAWXD6evObJLnIXAvsHFxAHMI74U4/SwKta5BL5wuhl2XWC5eE1jvnQ39NK
         WrTeqIEmvR47Pe5Ew4YWnt02K3JgDfVNaeZx+UW/n75GQ9FbpU5UPKF6HmhR/WN53fj8
         Wgrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aYMABfEH;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F642UQb3TTthhjUeJvnq8GgzLiSmjUJhU/v0xPhPNLI=;
        b=UqKcX43YrTZDacwuMeYTmSDS6WZ6Dicxskg+Ae3hJw09G9ncswdwHI2xqmbdcYvel8
         9I0Z6NIRLS2SF2BfgOEI8t9VaN4h5C3SE4zBz2flPxQcIE2/2fNmVXTQ/u+bhYSibXiO
         YahQd+cs67wGW4p5Dho6WE1OQulgDppCNEaOqUERU7BRsHT2ds0qGzfHZgglDFDQKhGj
         K5Edkm5fMIXCs78HV9kjrtEIKVgUcW/ubZyL/kTewmlkH74AGdjeUXK/GIH/LJq3dlDQ
         FtPTpRrJ2IdoSedhmjQK25TqnYI1bdxMp7XEJBE3YGpUgZCFEcUVPHlcGKWqQF8DcoGI
         LxCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F642UQb3TTthhjUeJvnq8GgzLiSmjUJhU/v0xPhPNLI=;
        b=s6DscXQu2Vxvyrv/a0bV6ivexRA40VXp0stK+yRbXEi87XEaCjUfzL15w371MQZ8mf
         rZwSEA4iT48igg9bwzd5IUTtUKqaC9t+YFCgXiFOgXXBngJ0CE347nXxXVWLFl8LMw44
         yJYjYI9GXPh3u2zwRrrITMBceIJ17BRoY5aFbJDnhel93iPv0+CYlit8/QEVxzLWsynL
         GBLUk2hraNS9wRJrxPGTwun50TVRiH8d4wIneJCjUntesk6DbBY+5PqPJcpVMyrjBzuS
         ukypb89Z5Z+zV3YpSbO8JJH3k0TAIKI8zid3BcfFIPSDsZBZ56ZbqUOXBfuhj6Ipj9Ch
         5SaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bUf9fBS2aMJzzUIYy/3XRmIOW8SEQd0SzqNuU8dHz3sw88F/e
	b3p1EB5kh/Ze1lSuJy589BY=
X-Google-Smtp-Source: ABdhPJx6v2/JxCCzDrGnL1oVZiT0BbNWZ1Clpqf9+Z29lnbrrLs7z3+CXKPwfzWbvj6jc0NjIrT4Kg==
X-Received: by 2002:a92:cf08:: with SMTP id c8mr14215067ilo.246.1629464529397;
        Fri, 20 Aug 2021 06:02:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:c55:: with SMTP id g21ls1210347jal.4.gmail; Fri, 20
 Aug 2021 06:02:09 -0700 (PDT)
X-Received: by 2002:a02:866b:: with SMTP id e98mr18070861jai.48.1629464529064;
        Fri, 20 Aug 2021 06:02:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629464529; cv=none;
        d=google.com; s=arc-20160816;
        b=QwsHjm67XASIF6Rjvm+DI75+5/0kdhH6oMBjYHrtHDL5S+cQbOhOpsJsv916Qst9Ay
         jIXa+gQGixp17mQ4ep3zwxohOFe1Hzz7m4lON2teulmwvTXMk1mQl00TCq65LjppEmZb
         UIVZzBhgNSpWUQnjXhlrAgzqJkpaWK+/8rgFQlIqTXFc1vtDqHysS8B591oc411vfmca
         nd+ZL9iEbgKfuS7m5JTNPiQd+Pnz6OVENC31Zb0iHfZjKHcyTtoFTh6KQ9/tE7MvAnNz
         47Pn4d/nsrlYAueKsCnNnO1EnHusbn0YjoLfNKCWzTnGTXeplyS6ingjPRrgOe6mKWoT
         hD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=SJVV3AKIKDS2kEFqPRBaUFYL5+LDfULPieELhdDLGkc=;
        b=lEwhaz/ZIvCY/x0wepFlNyCCDy75C7V7LFF1D/7bVCRedB3uT6GUGZbn+EO9uoYMvh
         FXpT6OVybtIHiu22cifH57mHmRe1CIS7gTdtEKOQaewXrZFbSwxzudqBoRD6hFODY7LE
         G535kN1AuO8gl5YepSQ9GjTMNKBsYyNq3kjo9If8IXIHNWnkEWNpwv8+RIjAkWXvuOs8
         AgBG818M6r9UbEY+NHo4j0kDP6DpSI008UEY8+jasIfaAH3dAcfRQIW5N5H+EEC4te/E
         rpsyPeiRzKDAl5PLn30C/PKZSYfy6U4jrmp3YNf1pUPiKwbYZmqTHeX35MntyAjEym/k
         BSdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aYMABfEH;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si504316iox.0.2021.08.20.06.02.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Aug 2021 06:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 60A9660F39;
	Fri, 20 Aug 2021 13:02:05 +0000 (UTC)
Date: Fri, 20 Aug 2021 15:02:03 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Kees Cook <keescook@chromium.org>
cc: linux-kernel@vger.kernel.org, 
    Stefan Achatz <erazor_de@users.sourceforge.net>, 
    Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
    linux-input@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Andrew Morton <akpm@linux-foundation.org>, linux-wireless@vger.kernel.org, 
    netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
    linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
    linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
    Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
    linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 55/63] HID: roccat: Use struct_group() to zero
 kone_mouse_event
In-Reply-To: <20210818060533.3569517-56-keescook@chromium.org>
Message-ID: <nycvar.YFH.7.76.2108201501510.15313@cbobk.fhfr.pm>
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-56-keescook@chromium.org>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jikos@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aYMABfEH;       spf=pass
 (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jikos@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, 17 Aug 2021, Kees Cook wrote:

> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Add struct_group() to mark region of struct kone_mouse_event that should
> be initialized to zero.
> 
> Cc: Stefan Achatz <erazor_de@users.sourceforge.net>
> Cc: Jiri Kosina <jikos@kernel.org>
> Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> Cc: linux-input@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Applied, thank you Kees.

-- 
Jiri Kosina
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YFH.7.76.2108201501510.15313%40cbobk.fhfr.pm.
