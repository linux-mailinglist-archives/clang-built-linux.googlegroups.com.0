Return-Path: <clang-built-linux+bncBAABBJVXTD2AKGQEACDXQUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF1B19C799
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:06:47 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id x24sf3812838oie.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:06:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585847206; cv=pass;
        d=google.com; s=arc-20160816;
        b=ARrsgiLxmetoOaNA9xSlJ0BD5weiR1H1/0tQRuqAz1WaRbpTLIqvxfrMvyS2ngLB4W
         MSdYuVB0NDSTHE2kKpZsfyZpOIUJ3zhLiYNORKKtSsF/CRKjb3MyRUSNSFdHAgZhLZqB
         K62knykO11+awHNmvfqp+Z2i1rQWavD2fgiZ2iPdZPw2NBQS0z67vw1GdUT+kSEapZs8
         PQCi2XFcN7eXYQ6LLK5ZXbTk00cCII1TI5R71BrXwtiV652wncoO2r36DJ7efVK+Tq8q
         2I5XxUZ82bvPl5jImbDi2zYJljiE+eAPyMekZESKdWyK5iiADiVKSak9dh7QYzq4Jdz+
         iG0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=dHd3NxYvkgQ6tz962C6fBn5Sno8wLht8MfyopnNb6Ig=;
        b=0v9PX9PQMLtY6OgaIHxe/4aMieySPqn1D1M8W3O3A4t589CN5fz1D+TBEJ0XESZXlu
         URwcDbxz03/oXe0mOprWr60jr5Q3ZY5KhfavrP7K4tDTyilWTU0JbKrbFiMAMOsslpZc
         C80auN/mQBWz3aIiwHSlVDB1wVkT1ZqschYjQXB41PnogAgA0fzq0ii6zWs1aDUdL6q8
         F284zN+lMkrdXKILM+PXO898bWvmwCuj2LT+cDX640yVloMDVrrH7qlQUby/SNtfsusf
         b0IyqigyW2PGpmgtT1L8l/DdrPar1seaMkzUyy00THkREc9SR/q3anyUtQ4Qg2wB+rzx
         Ex2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=o04n6qWE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dHd3NxYvkgQ6tz962C6fBn5Sno8wLht8MfyopnNb6Ig=;
        b=VYbWA4NCyt37ED39DN1QEH5KV429thT3z5zS2OdOO7mEsRUh2YeZN7ug0Ntf1uIN6a
         HmQXKSo3t+n0A1RuBhn/MXKWhQQl67QSa9WqC1uQXQ7XEDKQNJHp5A8zhThNjuea/HuF
         WxhEtmQm9LNubwABehhoK9ZY72hVDAyuh1djW/YDd8yNZ1Fqcttp57eCXlXpmWMO9F5I
         LDLsMMA7CMjrn4gec2ntvv0UDbTIBSEUZ9ICJLSLKkkoHC+u782lInIAp7E0LvQI1YQa
         BwEr5i/QzZKvCw9tix5GRUVNKMaZJKQzgNcF4uOtUBkARDJpuK3HkLCtA10gjHcXX15s
         Ceyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dHd3NxYvkgQ6tz962C6fBn5Sno8wLht8MfyopnNb6Ig=;
        b=o+njnUQHiweyBTVtSNtt/snVgA7RYz7v9YqTIwmfOl2SsI9WcllcEMiSysmXDU9Kxl
         dkpQo9WAbQNOiMzFNaFb16y+o8JeUzL4oNd67mayGCaePiafjD3fDZZ2NZ51PXmAlovN
         2ELBFGtD/5P77JoNTfYdERTxN2UD5XjI122DvRaUrVhUAHbPQctRbPvIiFLIKp90GBhJ
         Xh8BYpLYmi7k8Hui1CNpd36QWR+9KQT4agcswNPgie6CFaQUduPxvUVqc7gVkMLQD1+d
         rUeUYYkSSQ6riF0zZCdKiVF9BVK50ejrjVnDV0BVJQKj1o3oQnUeC/jcywVt5NtCGr6N
         4a0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuayrXJPIDjqtOd02LK59kI1oDaoX52G7zrj+zYNsTRcmHPmbfm7
	igsFqyMbsFqH2U7EsK+Z4Pc=
X-Google-Smtp-Source: APiQypIgdAGpWCYZaERsFqTWEL0cqyDORUpSAkFtFUt43Gwr3ahfvaSqKGenLglsArY3gAY+x72+BQ==
X-Received: by 2002:aca:2806:: with SMTP id 6mr3064933oix.135.1585847206331;
        Thu, 02 Apr 2020 10:06:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls1927494otm.4.gmail; Thu, 02 Apr
 2020 10:06:46 -0700 (PDT)
X-Received: by 2002:a9d:ac5:: with SMTP id 63mr3266030otq.239.1585847205958;
        Thu, 02 Apr 2020 10:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585847205; cv=none;
        d=google.com; s=arc-20160816;
        b=hmeCnsxiBt74vHtbO/mwfMpq2d4DbXweume496f5T2I9lk5JpsOvEJXctCTnkDIlKm
         YBDJSKONPBjVJag6oZnu+6THXstz0GfDw1H+h5hk+VdN4G3AHDAq+Am05rQ7+Xp6WL1l
         QBpZwnv40W/AYoKDeydUsfH+4H4crUinj5Fd6gSt02wUeoLtcTW5GBAxK4ESFGFMIVrb
         MkhoGC9S+wFPzvb9oIHgj360/KteKJ0e2nQNMXjX/Wl2v1tkfeE+WwT12lbftMxofxJi
         4gE9/39qQO3iT8Oxf9Jtw1YhF7QIwEdC5oKFakNLTv1BfR7QWj06PXsHvNXC0Jz/CBxZ
         yxpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=0Hu/kDIGL0VuCr3HG+sv9MGZq47PrIgCMrWOfepWzGY=;
        b=mIQq2A63rgjPJWQCK+3kPBupgQTYfvJasd3i1YQWnQPAwLE0wffuP2kugmOVBXdLf7
         hzdpYqvta6aiFl3pigaI97PE9XU8YqYb7GOmR1tHkeDxwLd2pY2d6mvEknB/asPPyHzV
         p44d2Uwh4FDtqlUQ1EOFuGxNMMIHuqn66kbHL3f3qtQtQPbXv+Sag4PvjyHIlZby4XcU
         N0nnh85Av9HwA91fikSnIivd6ofdQ58JupCsxfv/zg/ZlXYOzSOe6qzT6cIBCINtSDza
         vPXwIarCKwn1xSswbdpXTrNpRN5vme5dLyu+4/Er3tUHegha3l14CYuEWgjrOvWyZGGL
         ou8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=o04n6qWE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id p9si180437ota.4.2020.04.02.10.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:06:45 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 032H6Ra2002657
	for <clang-built-linux@googlegroups.com>; Fri, 3 Apr 2020 02:06:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 032H6Ra2002657
X-Nifty-SrcIP: [209.85.221.180]
Received: by mail-vk1-f180.google.com with SMTP id p123so1131021vkg.1
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:06:27 -0700 (PDT)
X-Received: by 2002:a1f:32cf:: with SMTP id y198mr3063123vky.96.1585847186520;
 Thu, 02 Apr 2020 10:06:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200326194155.29107-1-natechancellor@gmail.com>
 <CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg@mail.gmail.com>
 <20200331101122.GA6292@ubuntu-m2-xlarge-x86> <CAKwvOdkkpnkLwtNctSnebXTwumfprEQtLiuM5_4e-UBFTYBUxg@mail.gmail.com>
 <20200331192637.GA54270@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200331192637.GA54270@ubuntu-m2-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 3 Apr 2020 02:05:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNASPt4c-Vt9UzdKjSvPSYqXd4AFLNqKXfxnmqmfzk3Zi_A@mail.gmail.com>
Message-ID: <CAK7LNASPt4c-Vt9UzdKjSvPSYqXd4AFLNqKXfxnmqmfzk3Zi_A@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Enable -Wtautological-compare
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Dmitry Vyukov <dvyukov@google.com>,
        "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=o04n6qWE;       spf=softfail
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

On Wed, Apr 1, 2020 at 4:26 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Mar 31, 2020 at 09:02:19AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Tue, Mar 31, 2020 at 3:11 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > Just a follow up, those two patches have been picked up and should be in
> > > this coming release:
> > >
> > > https://git.kernel.org/balbi/usb/c/58582220d2d34228e5a1e1585e41b735713988bb
> > > https://git.kernel.org/rostedt/linux-trace/c/bf2cbe044da275021b2de5917240411a19e5c50d
> > >
> > > As of next-20200331, with the former applied (because it is not there
> > > yet) along with this patch, I see no warnings on arm, arm64, x86_64
> > > all{mod,yes}config.
> >
> > kbuild test robot is testing more arch's than that with Clang so it
> > may report if it finds more instances of that warning in those.
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
>
> I'll keep an eye out. Hopefully not too many more are lurking but we
> have definitely caught some bad behavior with this warning already so
> getting it turned on so that all CI systems can benefit from it is
> important.
>
> Cheers,
> Nathan



Applied to linux-kbuild.

I will rebase my branch during this MW,
so the commit ID will be unstable.
Please do not record it until it lands in Linus' tree.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASPt4c-Vt9UzdKjSvPSYqXd4AFLNqKXfxnmqmfzk3Zi_A%40mail.gmail.com.
