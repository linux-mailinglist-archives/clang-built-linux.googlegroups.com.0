Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7UBWX3AKGQENI3Q54Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A92091E26AD
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 18:17:03 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id u190sf8108602vke.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 09:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590509822; cv=pass;
        d=google.com; s=arc-20160816;
        b=qS56yMPXQxej0zW5hPanYJrF4Cnrqc5w8iHzf0BoVvhr1HCVIdziq/Zy30cFnnycmg
         cVDhAeGkhfq5bdzE3Xr4YLcun8Np7qbGvB3o1fFYPVw9DAw7hPAe5g2B4qR85BiCM1D7
         Y8oD/i5GQSkVkpYFlWWYe7hCIhA0eTkYrqN/tcgysgob6XPz8zyu1jof+RHGbIlSODYL
         N+XHSppesObVniPkTsFB7c7dcvE6/uj3unwxbfJESg5/CB7czcKo7sDq0LQygxmtw2KZ
         K+EbRxRfcvzdxCeBcLTUcNtcGWtst0RNjeLfKJ6YcdY97Ab2L6G/wYfMjVzAdAqm36RH
         XxCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Kiq95V55tE6OFggFBEGUseT2Ybe+CEovvLtXYKyO11M=;
        b=I4/iZvRO94x5/ElG7Ij+F4+smVchlUifrHCipYLAA9pm7di26xNqT0Thkd9ipKVbwm
         Mf+EZjhaYwVPfSn2bMtw0hlDEzj1UQbqwG763NjVOq9RZyOvvVR75FX2I/WVpfnW0FbS
         In9IYYxmI27GZhM4BPT7jXDwg5RyTP+O5AFTh/iz5N/8wPM6rS5AuCwvoUY82tviXQxd
         YsMQRXwWHLuTqDVN90VKM5XeVOJZCLHLD1S7DvLue8FzPSp0giPsKPm8pbyMocS68Iw/
         KnHE5mIJQfBmeRg/Cya7CO53HLRtJYpT+jknzIGkCtnkVs4VVfJ1URPX+zreRwzwE17m
         7lbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="F/XRqKR5";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kiq95V55tE6OFggFBEGUseT2Ybe+CEovvLtXYKyO11M=;
        b=frWyhSQ4dhAg3ddI5FYgbn5xnLtU+36Eulgl50EvyztDia89mPTlfqv2Xe3t9/yBwG
         WizSNh6p72wFCFXut/XafdttaZeHPmMIKpvVz4Bedr6SmhogG0jBVlHPBsz/0LE6aWhc
         15WBve/Fvf50DI9s4fB2bUPnR8OTXryHuLKVXTBeDBEtsvnQLCG5ZQKS/odzw+BXN6Yz
         kU8yX20EwEMSrBkGmYHf+F4otl+AJ/D3gircAl1GzGD6i8HudBmD8VhBVR29BEXzCVuT
         38jK3OhRpoNEVi3Jp1t7mBTqju/RxFN3fBuuZDMIdJXnBECdU6gRB0uT1/cvt1Qe9yVD
         UTRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kiq95V55tE6OFggFBEGUseT2Ybe+CEovvLtXYKyO11M=;
        b=PqjsGHvFU3Ri6yCgKuGwbCUqVjaHN9z6nvWNxHxX2Nl/uMuiZLUrXPFNxYVQAcmZmj
         TfvvO+YFexJLaJ1uKGOM7XUnExLQRWXbS4aSLYXcB4H0ThDcASKubWKrDdrbHvhvjzA8
         rJR6jV2/YbCjzKrx5fXkZXk25YnxDwUmVKOUQ+ar9LLFocxzcsUiON4kbsIlIFqQxot5
         J2wu2uvxO9DHuK6pc0TjAV8VjscWrUuRZRaI6Vqp124TZ3OZ8+7zMbj1KBsxqed7bIOL
         WluTyHcwjuomTUChpIzhuok4qThlZ0c99VYay/saWR+PcOw2UmLfuuUjyUFv2jihoEQr
         VBZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XkGm1P4ugWUHDXpiLkE5BCuIH7eeOIIwhwtPWrzJE4cmVIA4u
	SpgWGdxXK3ulHwqg8ohNekI=
X-Google-Smtp-Source: ABdhPJyfPDVCktp7Y5m1+qbT/1IkHa8PcMTSe1/11F9aJfkezMWiOk0BRZnVIn/lf/UsMYFVLNza1w==
X-Received: by 2002:a67:c317:: with SMTP id r23mr1640201vsj.194.1590509822755;
        Tue, 26 May 2020 09:17:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1703:: with SMTP id 3ls377784vkx.11.gmail; Tue, 26 May
 2020 09:17:02 -0700 (PDT)
X-Received: by 2002:a1f:24d8:: with SMTP id k207mr1650177vkk.76.1590509822402;
        Tue, 26 May 2020 09:17:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590509822; cv=none;
        d=google.com; s=arc-20160816;
        b=yA3/zfiNuIESpXB7HrFsY+YCJ2S1ZYDIEZp8uw2N0WdYR6xQ7y7pxqXg9E2osoFr3+
         egmm9YOBBJLruNuM3tfSMbCdZI7DlxC47tvq9nVyPZo7CcXxHvFjgbf0NQxkYj3thMkP
         qB5GcFF8I2z5HtiY69xcLQzhpqHQI97m/vg0y6kMYOOeZtNrRLAxWZJdU4Ab28/6CpZy
         8vg1Jgc2gE/SZSJxufuT1SVOC+n8CcMY0h51qo+LtbNrzsHBmeAj55045cjy8VqGdGxv
         Zm6MMbHc8vjD9iFtQfqssoVm4u8HbKO1Pn2Cm8qhN5TOHfDUWTeqQp0Aw/mniH8P9dJQ
         uucQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=uPjRTQwS5XbBmKTVTFnwC9LPX23TTVJM7S9st4N2Cx0=;
        b=XWFABCJMNNZ3jtGNqUWRhc+s3WobYFTOGhvFq14+pjNPT01d68wu4W5yhMm2e8MPy+
         B37g6FxP2UFXZ4+m3DM4dN6STfa2jTp873e1sZ3zBJidG8WODuHZ4TVQPv40IB6co07p
         1vvKcUGZvheRCZjnNuZmtoTNuJVrx0PmKAS9F1508DzXtqwyUE5CtuzFw5ka6BVGJB0i
         BQgRJQdMz3/fkVGJLvxgSPMG3pC//IBVOsuIcqEpnN/7++ulc0CQpuJcEzDVsaJMoFO2
         RZSJUdFaPKrwnhU8iBb32ZtqZiKlO5xKzfD/hyJXNRaCDpvT0t2cXEwWjwVyOWl9G8cz
         GRBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="F/XRqKR5";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id j5si51892vkl.3.2020.05.26.09.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 09:17:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 04QGGSaL006227
	for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 01:16:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 04QGGSaL006227
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id t4so10207709vsq.0
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 09:16:28 -0700 (PDT)
X-Received: by 2002:a05:6102:1081:: with SMTP id s1mr1529406vsr.215.1590509787468;
 Tue, 26 May 2020 09:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
 <20200521220041.87368-1-ndesaulniers@google.com> <CAK7LNARtO5Pr2nxpoORSHDFWHbjP0waOmrn_TZ+rXhmYm+TORw@mail.gmail.com>
 <CAKwvOd=qNa4fLY7ymVwvC3TwCH4DNLyEfygoTfBJ2y19xffQUg@mail.gmail.com>
In-Reply-To: <CAKwvOd=qNa4fLY7ymVwvC3TwCH4DNLyEfygoTfBJ2y19xffQUg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 27 May 2020 01:15:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
Message-ID: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>,
        Nick Clifton <nickc@redhat.com>, David Blaikie <blaikie@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Anshuman Khandual <anshuman.khandual@arm.com>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="F/XRqKR5";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, May 27, 2020 at 12:53 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, May 26, 2020 at 3:28 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > > Suggested-by: David Blaikie <blaikie@google.com>
> > > Suggested-by: Nick Clifton <nickc@redhat.com>
> > > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Reviewed-by: Fangrui Song <maskray@google.com>
> > > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> >
> >
> > Suggested-by seems strange to me, but
> > I decided to not be worried too much.
>
> Ah, sorry, Monday was a holiday.  I unplugged for the long weekend.
> https://en.wikipedia.org/wiki/Memorial_Day
>
> I like the suggestion to simply say "thanks to ..." in the commit
> message and will use that next time.  I was ok to send a v4 with it.


If you send v4, I will replace.

Thanks.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASkcLx-K%2BW1va9WxfxZ%3D7H-w65QbyBt%3D88dzK1NrrM_PQ%40mail.gmail.com.
