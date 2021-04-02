Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZPZTKBQMGQEXV6XYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C8835269B
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 08:42:46 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id j23sf1058617vsg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 23:42:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617345765; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+rpP16NMc/TQwv8wx+QzlPyjpIlJa+uATHmO3JK1uo1tFmOVGXGiX5izBVJbLHTJf
         hhawe+lVaR3V3qfQ9y0EbAIHKs4ZCnOMX6gnhq5fnAb+4kYpuNWLZ6j101xDRAl2a6NW
         uuEAIEeZBTwOw95QY8O+Bg/BxTcq6lAXoROFuauuYkcGHKt73+W9p9koey0mm7B/J9iW
         kVm+GnwRCji/kffjBDH8b1x8LfV1s5hjgrBfbEQ2+D8kEyOxjzvnWXCklsKqa/M+wIhC
         90S+heM9V0/zR72U/AGWpa4qsEqkQZ12JXYb/YCXXOJvR3BFmiLlVNLziJm61THRNudQ
         wKxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QqaWgxbLL59sCt52kb9puW7hD5PeCwt+McTA5baF2Uw=;
        b=Z4g3gr8GXtPHwsqt3QWFi1WoM6+Qpn0rNcbMIS7sL8yxAD0uRSc2JzlMfLCwH792FC
         e4lVV4e4gfFJaSERyRtWhjeW+1VuGliiqObp7XOd1vxYGpEmKIHElviZYtJovHOC7Alb
         PjEXj8eI8/0OMZm/f0oBCbMzIGkZBl6j6A3qqdeYAVZWX1L9FsLiVZLi9jqNR1Ew4fxH
         lQ4Iix7f52kIDRvbVnEhay4FEu4rKl4nNvcAJE3c0+TIqODoA3E8h57efHSqak+xRMGb
         /0u7vSDzb3kHoDKrfwz7CQnO1bkAPlGeJE3+p1N9klgrUmIA6uOIcDBZs/+0XHAKAqAk
         9Rlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qiWYH2oi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QqaWgxbLL59sCt52kb9puW7hD5PeCwt+McTA5baF2Uw=;
        b=pOt2qF2rHaAKvl5aL3dvrJGvlrvPyFhlKupAsuifJYAPR8mYWE9aI8yJcfRNkL7kkH
         8iqVPpDHKSNzWICHjGs4KQbBG458gEZUYTYvaRb1rKjI+CoSJGJeP0k3s9nXooeAQ56T
         3Z1ajKuqFodJwbB1AZOPzOuEWie6HT2ID+ymMixuRMeTl618Pf4HI4RxK4irWzwWc+5M
         DbVzx5BqMc+dj68v6JhjiR+FkefS6K+9JAnmWTGbQddzr2f8A6K0oG4nuFSNhqfrjWEw
         owJiXMWIwNBIHATIyNwLifKXuI9nLztJMfcPStsfnF3Vzb0ra1X2Ij1G3ow51S71jO8P
         L3LQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QqaWgxbLL59sCt52kb9puW7hD5PeCwt+McTA5baF2Uw=;
        b=L0VYr73njENZ21gUDkuKcnUP7ahsP0cHwqCEO5qKR7+JNcrqx2oYrC54hmJnOImP2I
         zgRciZ7peHYXvRQ+pqZmZh+Scn5xUFA9iIoctoU7BfqyWIoiSJM0D1kcZg3gGkOwUgl/
         1gJctmiWotULpXEqq6kDJNTsTkmTeMEnjc5E1zZPmNaAdEqnPxIvpV1qqBVtxouhC9Kk
         u/6vPnEner4RU8/liWgy2hS+uEinoC9RHX9yV0Rj2nnMOb13oFx5EClQ5IpHScWFcF8L
         mMRAV3lLEuk7za4io1NUo+bST8VVzJa+VK9QdRW/y/eyn5VP7RPLp8kNflJZfwaivP10
         15lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QqaWgxbLL59sCt52kb9puW7hD5PeCwt+McTA5baF2Uw=;
        b=RxOBum7l7tnG6Iw9DO2DBvSaoFVOVUN7yE0tltDl0l8T3JUhhnX1rGIPZg6lckq/Zy
         /r1TzqeZzPElT1dMpKBKHcYahu5tXjdU+DN9AplcuTOt12cu5+0o9fRYvlh1RXReo2RU
         /8iN3fsvNaurNikuA8aJd4flyCwls1GVAH3wH3wXnKAJttBEThgJ/lwwXSyOTtq7V/og
         +F3JYiuB2wemV7XN9wCt+A/qre4+YJsnzA7kVtyRc1PyNWKYMgEkittFsDgE1O6mSyvj
         f1DSwLl0hIyGNGTnRcORegRHR0qfmmDEzFHO1ZNc73KPoyA7tHrGB/I22UQvNAuYpB49
         ttXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Eki91shRBOgwtsiuHxvlNjyasjGRNAO2a05QyRTw/99FLw9+4
	F+Nygm3Z8Jfo2uv7uDOzkcc=
X-Google-Smtp-Source: ABdhPJxdX1Kpyltk/9tpMNjifpplmQ6yAK1lQJv+WxEC63tlJ3DFDJtYHPckqRf/PnKDhxVRu4CdAw==
X-Received: by 2002:a1f:9cd0:: with SMTP id f199mr8538680vke.16.1617345765518;
        Thu, 01 Apr 2021 23:42:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb06:: with SMTP id d6ls657231vsr.7.gmail; Thu, 01 Apr
 2021 23:42:45 -0700 (PDT)
X-Received: by 2002:a67:87d3:: with SMTP id j202mr8350052vsd.22.1617345764955;
        Thu, 01 Apr 2021 23:42:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617345764; cv=none;
        d=google.com; s=arc-20160816;
        b=sr1R9/8FvH1bvwncHcB/9GLWDnasZjcWpk9ZdmXln17ix01s1+b/237xx2tH4oq27I
         Koheecj/mfe9/eiSI3dXOhZwOfTRqpDLfjEbC8k6SaS3ScDvzPYuQ92GdKEBHKr4puTE
         dG57PKIqGagSXCJECp69Iwh5FgBqNFz5v9luCrg0NbBJ3SWCcEDSAI/mPlYRa+qqbIzH
         LO6lRH4TYUb6W7vRrnf+y179QHYUML5PleOawZ6FX5n3t+Nohi2G7VSGKDh42nBz8k1I
         6ZU0CeHKUTxIaCpzz2I3ZubWmb1CHgVscjxqMvxr8LInZq/9UOc9QwCDEAv+T5cSCUmV
         9mzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yj6+vSRZLkkm8CHfCAHYPtQtKWMqvTFnQ6YMhgNKBnc=;
        b=SsOC1jK4MbQf3tURLSwd6nXvZF3tIgPV6veMobvj/bfb+qcj7jQ2J/AIbyKLDqyCpX
         8SXMyGWgZrW9nzjbWnhVICyA1NbLwt+M+Ep6l7GfoZ3LKYOwBhqtRla8iG7UNxNud9W/
         vYZyEdtdxXlJtqFC8b8nmoq4/5p01+3z7DwOOU1zLedDlrAncAifPGxl8ms3q1IqpISB
         MQ3rQ4XTVpNyLUWB+kKOlr5T8zyAaak0AVotnzUGxAyTBeZFiEV0+GugBL0tlZgqySVA
         ISwFjhm3AI5T41oXtB/C9lXuvo77f6AfL3lQkgeOm/++I/ZhoZuOc4Ejdbag2tBQ6ya3
         rvHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qiWYH2oi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id u13si462871vkl.5.2021.04.01.23.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 23:42:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id k8so2071865iop.12
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 23:42:44 -0700 (PDT)
X-Received: by 2002:a5e:8610:: with SMTP id z16mr9600257ioj.57.1617345764402;
 Thu, 01 Apr 2021 23:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210211194258.4137998-1-nathan@kernel.org> <161428829728.2305454.15456455443457551559.b4-ty@chromium.org>
In-Reply-To: <161428829728.2305454.15456455443457551559.b4-ty@chromium.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 2 Apr 2021 08:42:07 +0200
Message-ID: <CA+icZUWdeWSy52bU4cjHau1hn5NiFAozaHgDb=geaaCYOET9+w@mail.gmail.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
To: Kees Cook <keescook@chromium.org>
Cc: Gabriel Somlo <somlo@cmu.edu>, Nathan Chancellor <nathan@kernel.org>, 
	"Michael S. Tsirkin" <mst@redhat.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, qemu-devel@nongnu.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qiWYH2oi;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 25, 2021 at 10:25 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, 11 Feb 2021 12:42:58 -0700, Nathan Chancellor wrote:
> > fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> > which violates clang's CFI checking because fw_cfg_showrev()'s second
> > parameter is 'struct attribute', whereas the ->show() member of 'struct
> > kobj_structure' expects the second parameter to be of type 'struct
> > kobj_attribute'.
> >
> > $ cat /sys/firmware/qemu_fw_cfg/rev
> > 3
> >
> > [...]
>
> Applied to kspp/cfi/cleanups, thanks!
>
> [1/1] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
>       https://git.kernel.org/kees/c/f5c4679d6c49
>

I have queued this up in my custom patchset
(for-5.12/kspp-cfi-cleanups-20210225).

What is the plan to get this upstream?

Feel free to add my:

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWdeWSy52bU4cjHau1hn5NiFAozaHgDb%3DgeaaCYOET9%2Bw%40mail.gmail.com.
