Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBHH5QD7QKGQELPOPLII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 665722DF931
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 07:20:14 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id s14sf6372958pjk.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 22:20:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608531612; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGtWF20neJamWOQ8AmS9WsoKnV1aFzcj63Lwc5i1oCpJEd2txqPYNxrO33iXU4SQng
         2apunf65QNto/2s73HNvWntIgXHd7oNpzwTfhP8LPLB8wk0hgLHF8t4cXdizZFURBg8k
         rVyQGkDrF1q2/lFQkl0R0vNQCSdvoJswtVFu0KK/iuQjnYHeSaT31wGBlUrip6fNiT2n
         7JcN5BCvFrpq5LO5qV8aeWe2DQmcpxcB3T/27hJNPFY19melTzqI1A+4KtPEkUL+I06/
         zVw9awvhO5s/vRBpQi3Z8cRtPKUH3dbupeGtdPN+No71zobDIsIw8mMjbVszZ/nvXWDn
         3p+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=AbKMs4AwlzdvkFrIcfnMII3j8wlo2DFQ+BBfZhioRoc=;
        b=w44zQ6fK1KStCdZGiN5GVPRuOIh3pRFvrBY3cpDT7g8eLWLqzuKUQ5tAmx7TUo4y+C
         Jp9f8SlZdAf4AoQ9Ll1ZUJ9g6ygSt9ENWfHzbUmQhKfV/aCTKEuODbtA2HXvCfijpcov
         srVd6KkuHuyZUtwMThcFa+eC8AlrvxB0ApYDByX74r/XJlgzb2tOJjJpYBAECfVXTz2g
         hdUZboHCVu54oanXIE2EGsvNtamivz6C2Fa79pUPeVw1CSU0mSa8vov23wfs5d6yUraN
         9QWKwoU81PN4Cwyjp3COuhUiiy5+AKEFw84xD8jnBkLHFGP6Jjc+7ejSawA2V1X/Od/z
         gGww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hyOhPooQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AbKMs4AwlzdvkFrIcfnMII3j8wlo2DFQ+BBfZhioRoc=;
        b=bK5ULLTXrMThyaH+3aSZLNG4L5kxrUlD1lmAWIGsFJCGpIETqAd2dh8h6QwFVvoeFa
         uggG7tYQWiLKr3H4vQ+lrr95CPzhVCXFUQOTjRtHr510D8jr/az7yqLUtbKFvvmOi1Ir
         4pkDFwa6rrJyo7RO11C7syjA72umcKKmNDb8ZnB4snyOcZ6bg2yWkqjzKbUsthSRyWdV
         TqRKPOVxMLe92tXYyxHylWlNayOAwcINPfMLze+Y1Aw7HHPLS9AgneVk6u4d9d5keAzN
         l0tuzcOsVrtAVbrfs4Z4sXYpUyueHzdRahfkObfNZoT1zqV6Pom2rbdFjH66H1yVJ+V7
         SjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AbKMs4AwlzdvkFrIcfnMII3j8wlo2DFQ+BBfZhioRoc=;
        b=pMitQH0zFuOsQ+nB4i4h4ualhDbZ8w3NJE8nL+1zUa9PHUfka89hmYHa3+grHm+EaJ
         o7HU2NvyvBV2hq4uurMRTz4N0rRHcFhMdBBwz3v9GnKFTM++LhRkhZWS2gY3wSzdtuhb
         6DOC12nmQWlGoPNz1NOJCoRP4tYGOY4sUGq2Y6deavIbuXPzBvlmg75ylyXJAbtBf0YT
         74HXNtPOjTYn57+5fAOF4mJFlglRr4F5McigM/liE2UTQPTzvk9W8Hup4BOi34cX8E44
         JLOgMV6bkLmg+dXDQ+kyDJ4qiPVYvCxGgLQ2xw/WItD4TbvoTNg5VZY2BavDnhMESrIH
         wVLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JQwaTDNwQt8yKuge/WYbX0YvN0/wBsyQW2wTRjcPB4tHilKjL
	D29lEtYR2CmQ0INNeVl28pY=
X-Google-Smtp-Source: ABdhPJxQrQTAu6apVMrtjq8MO5/uLEwz8RUMJ5lM2bGX9MJBnxaMTNKbR42PV3+TF65GSjZoTDw3PQ==
X-Received: by 2002:a17:902:7205:b029:db:d2d5:fe79 with SMTP id ba5-20020a1709027205b02900dbd2d5fe79mr15024919plb.30.1608531612659;
        Sun, 20 Dec 2020 22:20:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls6527919plq.7.gmail; Sun, 20
 Dec 2020 22:20:12 -0800 (PST)
X-Received: by 2002:a17:902:6acb:b029:dc:2e9d:7ca with SMTP id i11-20020a1709026acbb02900dc2e9d07camr14152993plt.56.1608531612069;
        Sun, 20 Dec 2020 22:20:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608531612; cv=none;
        d=google.com; s=arc-20160816;
        b=Y7PXDH2iwLvfGKvH5PPp8yxXh0YIVmHDA9IhQn4VIJJsE0OHz1Q/+JtDilbuE8sXsF
         wWzsU0M6B2NMKOpIVlGl9m3UUSB8HDDiKJNs3jc7Ic/feTIQ/ByUaXKyWifoNBR8Gr6d
         y7V3z8tDAeFc2rti58fjsJ68YOUdpFAXE45b/KI3KZFra4uJJgqlGrGYTLudeVtJj3Ti
         LOmg61VV70f5MOR88zc8XCvP3iDjRX4XWgDclw2GxDfcbRnRFQbPj2SWcyXkilylwJ0c
         SmheawFRu1J/HHm2x2yzp3jx9sK92FR1neUEXEPuuQv4vnqkidkL1FZzfeygVLx4/zBx
         DN5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=BYlCTuhSzV6TRqa7tXYTcFDqgVKa7TxcGPT3foHwNXs=;
        b=XOofzS6y8F95lHUJlvSdqMWTMS4UhMVOHdFPR9NKLMhfRJI2Pu008D7tRI4Xjx4tM7
         X413QVGoAaYL9d65sADcrWW5ehQqqMLOd47VK9voOy0l+Mrm5rVuvx4JIhuA7LDGGVZ1
         Rdn6HH28hjUb8N4XENE9u8P5d188EJzw5uYCmsjducT14vvubPcfBuGT4D5zrgLwSIyz
         c6JTBQnU48ozmcmbMwpOtrqw8EJtYB/HzEjOu0E09v8VWyAaeBP0kxGNYjlsr3vvvdwm
         QgruRFrSZDHuNuVf2vxLH9cWczFPSrube//5HAYi4XZx/Yzpah+rdl3ijUMh/A/MUVQ8
         kH4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hyOhPooQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id h11si988362pjv.3.2020.12.20.22.20.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Dec 2020 22:20:12 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 0BL6JbCe003979
	for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 15:19:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 0BL6JbCe003979
X-Nifty-SrcIP: [209.85.215.175]
Received: by mail-pg1-f175.google.com with SMTP id p18so5733218pgm.11
        for <clang-built-linux@googlegroups.com>; Sun, 20 Dec 2020 22:19:37 -0800 (PST)
X-Received: by 2002:a63:3205:: with SMTP id y5mr14082429pgy.47.1608531576913;
 Sun, 20 Dec 2020 22:19:36 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org> <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net> <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
 <X9YwXZvjSWANm4wR@kroah.com> <CANiq72=UzRTkh6bcNSjE-kSgBJYX12+zQUYphZ1GcY-7kNxaLA@mail.gmail.com>
In-Reply-To: <CANiq72=UzRTkh6bcNSjE-kSgBJYX12+zQUYphZ1GcY-7kNxaLA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 21 Dec 2020 15:18:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3=4QrHs9g@mail.gmail.com>
Message-ID: <CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3=4QrHs9g@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Guenter Roeck <linux@roeck-us.net>,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Shuah Khan <shuah@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
        Network Development <netdev@vger.kernel.org>,
        wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=hyOhPooQ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Mon, Dec 14, 2020 at 12:27 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Sun, Dec 13, 2020 at 4:16 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > Because if you get a report of something breaking for your change, you
> > need to work to resolve it, not argue about it.  Otherwise it needs to
> > be dropped/reverted.
>
> Nobody has argued that. In fact, I explicitly said the opposite: "So I
> think we can fix them as they come.".
>
> I am expecting Masahiro to follow up. It has been less than 24 hours
> since the report, on a weekend.
>
> Cheers,
> Miguel


Sorry for the delay.

Now I sent out the fix for lantiq_etop.c

https://lore.kernel.org/patchwork/patch/1355595/


The reason of the complication was
I was trying to merge the following patch in the same development cycle:
https://patchwork.kernel.org/project/linux-kbuild/patch/20201117104736.24997-1-olaf@aepfle.de/


-Werror=return-type gives a bigger impact
because any instance of __must_check violation
results in build breakage.
So, I just dropped it from my tree (and, I will aim for 5.12).

The removal of CONFIG_ENABLE_MUST_CHECK is less impactive,
because we are still able to build with some warnings.


Tomorrow's linux-next should be OK
and, you can send my patch in this merge window.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3%3D4QrHs9g%40mail.gmail.com.
