Return-Path: <clang-built-linux+bncBDTI55WH24IRBFUSUDVQKGQEK3YIWFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C00A220A
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 19:19:19 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id m19sf3030606ywj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 10:19:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567099158; cv=pass;
        d=google.com; s=arc-20160816;
        b=QJE5HA/ZsNhPkRiq5PqKVoFiUR/3O1963AOErjMsIa/5went+pFrXv2Usr+qBtJwIF
         C9/JYPWBAngQMhSmYkAywdzgs4Un9tlvTxylnpIBa0upV4eDpaznPCFUy15HDSvWWPCz
         bvT1ujg67eZUn4LpRMD/q2M7KRIf21zsiwaIPokm4Ib+YQwdDctZnqnKm0eZ2/R9rom5
         DAZr0zKXE50u16yzNEAehkEqsy+wGT2lA58y1Mvxv1ezdU0doxe07xS1XFnha60iiD4P
         5fNGz5HrCo7YvYERIXS1z3Ruo1VSrSLMKXA0qI2r9x/EN+sKKwe0MLcq23nmI6+zEAMB
         hEWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=XZcPSrkm/Q906yKZ5Wp7FoxNmyCyUqLPJp1Gy4X2DfI=;
        b=jF9ViAWYrsuPM2g1epo/NKfTH6MVI03rzX6A9t+JiG7JN7ryTHKKzph6E6TlotfKpp
         NdW9RHzN6MqipZsFhj9DijjracpCgkNBvnvUeQ2sPhqBwAhNIwI42qpWerZLuiWH5TIc
         NSpJ9mv+1LiCOd58oei8ukmgBP2ZpDnxqNEudqnHwwDooriupkGc9N1dTkzaj7Xi7ZZE
         7msrEEEDjiu/J8dUbSFsDtaFfyKovaOwxzAxbSk/gtFt19Jd7/8afBrIBVxQ4DBlUQbt
         71VHMKjzYTUKQ6gQRfYkUpOBVHYNZahRQ4G8PA80rUUJ8o8BVibW2OVY+PX6DSKjUWy0
         5MmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=f9g1cyoM;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XZcPSrkm/Q906yKZ5Wp7FoxNmyCyUqLPJp1Gy4X2DfI=;
        b=Hd4HgQGFYsOB61gDKcFh16oMD1rywtlPymyV954BX2SMDBAxKWrga9sDY78ChlYIY3
         ZEKvfvjzYx1h2whW+BBgEFaDWg8C4VzYPvtmes8OHiapPvHWW5rmrIB3wUzNyiTPWFa+
         L/2OrWZoP5C6rZZ/f5XgJNecZ1A6OMZ21GluHhQb8bTlXBh/a7ZuEr7JiLnirsROXGVM
         RhN44uT2MWMak2xdCav47L+p/A89UiYzQUpvRQMwWh0+7y1CPbwVbNH6IpzvLJ3d+sDz
         y6J5w14i5rgXJqLxVbvWkZcJSwrGUOcudY9jzYsVtByvZqVEG7h6XddwITAAI9rVxo5j
         AUHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XZcPSrkm/Q906yKZ5Wp7FoxNmyCyUqLPJp1Gy4X2DfI=;
        b=KFGMFZ/EbCZBP25Rew8YU0e4Vuiap/QW1rDLXJ0bQaibmA/Z699Yq7P9C7ELUxIzJI
         9sriXrpnBEbmi+bPR7xpywPcvRSbKYntWuIdWx33UhL5BgYh4u9R/DOX2HmQh9TDsdmH
         BjvYFkKiq4vwGd6iKKjvS+VXeJeGlQxbR2GPetdhAZch72hzEN0IeSC/GS9UM/vVd8+b
         0Z25ZKIhRh8MtxKmI3zLNu/0HimlmorcT0PeaUR/SnjNnld806WWHZoJQVOexewxBHmO
         b++yxLX0Sw2FLqPDshX5JNvfv7BsH+0Mfjw1SjO4Z0bpGAvfiDapLoGcmcv+u91OGzF7
         CFfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVveXFE7O92YH6AZymwmpJ9oCFGapoZCw0nK2iKYpaVM4tkNTBw
	CPBolINWAk7RFOJP0X3UsSc=
X-Google-Smtp-Source: APXvYqykOjA4ZkrmejaKEBkWzEWbGHq12FctyLogYV5VDRx6x0Y0e9EJgYDsCovRQudw21OvGVf0Qg==
X-Received: by 2002:a25:c945:: with SMTP id z66mr7629908ybf.47.1567099158464;
        Thu, 29 Aug 2019 10:19:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:578b:: with SMTP id l133ls3534ywb.13.gmail; Thu, 29 Aug
 2019 10:19:18 -0700 (PDT)
X-Received: by 2002:a0d:ef45:: with SMTP id y66mr7686700ywe.498.1567099158120;
        Thu, 29 Aug 2019 10:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567099158; cv=none;
        d=google.com; s=arc-20160816;
        b=uI1ekobxh1XL8DQg1i5tAM3E6LnB17x+igqIirWy2swdMefa4u1FHRyV0q0b10pxlQ
         3YG4WwN6/RaW2XxhLgaT3CcekOh833JH3AlfX/qGy09k8c2S3GLq5zUOFiboy6Udh2EY
         szjDkheMRWgn06lsu1VfiMjtWZGjvqVShgSWhOejv6kJJRaW0F3icHhVlKd/GQ7olaQ7
         vadafZDsUHSRzQroHIi0ggriQuW6VnQfqO0axO7SBrZ8FQ1ABHO3PwDg1glzs/G61kY/
         mNX3VCIoNXm/h7WKhgZyXJbHR1zIvwl7Pdo65ygyDt4j2ebXKaEuVxQHcw/6uj1vmiT3
         W4WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=jCxDkVSWG7Y4WLqCHMtqonuIZYm6GUxztAGzGCbt8DY=;
        b=CvGwYGwtFed2v11H2+y9DwHjpqyS45wfpE1D0alVJVaVXXvyt6LOYRnGMlqzHRKWmB
         A4YZbsoIl2fkt0I16jvLJzzJ2nrVdMY2iWgY90YXR+51tEKDriofj7bQzYqi+m0ACTfA
         oRhirfSjdiAhPwS1ZBz5xEUDQie84bhnLiLuVqLQsHxwEcGlw0vIckD483dlaqcud1Kv
         Pf4FA+T29oj6052zkqJxfecn6zCUkB5QUXmzW+GNqlqt6xeKoqn79CaH7AfQ5mI5lEY4
         oMel448FtiNJVYqmLDEGThJqmdOm6EMVdZ0rVHIPUuvLccQG5jJKDTrM+JCoG+A/HjX1
         cQaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=f9g1cyoM;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id r134si283474ybc.4.2019.08.29.10.19.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 10:19:17 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id x7THIq74017887
	for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 02:18:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x7THIq74017887
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id y19so1391323ual.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 10:18:53 -0700 (PDT)
X-Received: by 2002:ab0:4261:: with SMTP id i88mr5511251uai.95.1567099131876;
 Thu, 29 Aug 2019 10:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190815225844.145726-1-nhuck@google.com> <20190827004155.11366-1-natechancellor@gmail.com>
 <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
 <CANiq72ndWZWD-KBT1s-mUxQNa1jaD7oDaCB2+NPiT1chf14Z_g@mail.gmail.com>
 <CAKwvOdkuDPfOusJRneeTzg7tZ4VKxaRCNg2SgmjVas58cDwe8w@mail.gmail.com> <CAKwvOdnOo3RXm3cx5YDtPyM=9Ry7kss-i4HzjxQkK4pjE-n9Lw@mail.gmail.com>
In-Reply-To: <CAKwvOdnOo3RXm3cx5YDtPyM=9Ry7kss-i4HzjxQkK4pjE-n9Lw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 30 Aug 2019 02:18:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNATZSLYMW3NaEgm=r7EiHwLnxjtaogm_CRHZYgcBLVRb-w@mail.gmail.com>
Message-ID: <CAK7LNATZSLYMW3NaEgm=r7EiHwLnxjtaogm_CRHZYgcBLVRb-w@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Do not enable -Wimplicit-fallthrough for clang
 for now
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Huckleberry <nhuck@google.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=f9g1cyoM;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Thu, Aug 29, 2019 at 2:44 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Aug 28, 2019 at 10:39 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Aug 28, 2019 at 9:45 AM Miguel Ojeda
> > <miguel.ojeda.sandonis@gmail.com> wrote:
> > >
> > > On Wed, Aug 28, 2019 at 6:21 PM Masahiro Yamada
> > > <yamada.masahiro@socionext.com> wrote:
> > > >
> > > > Applied to linux-kbuild. Thanks.
> > > >
> > > > (If other clang folks give tags, I will add them later.)
> > >
> > > Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> >
> > I verified that GCC didn't get support for -Wimplicit-fallthrough
> > until GCC ~7.1 release, so the cc-option guard is still required.
> > Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> > Thanks for the patch Nathan.
>
> Also, there's an inconsistency between Makefile vs
> scripts/Makefile.extrawarn that's been bugging me: it seems we enable
> GCC only flags in Makefile, then disable certain Clang flags in
> scripts/Makefile.extrawarn.


All the flags listed in scripts/Makefile.extrawarn depend on W= option.
The options in Makefile are passed irrespective of W=.

There is no inconsistency.


> Not necessary to fix here and now, but I
> hope one day to have one file that has all of the compiler specific
> flags in one place (maybe its own file), so I only have to look in one
> place.  I know, I know, "patches welcome." ;)
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATZSLYMW3NaEgm%3Dr7EiHwLnxjtaogm_CRHZYgcBLVRb-w%40mail.gmail.com.
