Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQVZ474QKGQEJIUKPPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 38081245A66
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 03:26:28 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id b10sf5602079oia.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 18:26:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597627587; cv=pass;
        d=google.com; s=arc-20160816;
        b=nc8JsnSD1BhBl8/nUuECbzDT3V0dsW+pzorCaAYtI2cqSpbZdogQomXXQyxS75FiIa
         +SMerpCbHy2KHusud05lFNsFaN9vbR8Ia0IOfWdZcsddrcGeE51GiPTNqS54s9JGztLU
         lJzHtb4PUZKy0lFp0HCu1dMeNc53Fm2cJ+OH3ejR2Ww0Ud47J4piC4SIjjpKsfaP84DP
         SHQBnzykE2BCGPhVTfcyVV6vTWYSgrM87kQuh50wpa4kryXTCFS+Jmvu7+x1pMMKBkPg
         YWpAdtgUuT3S1mc+IQKu+BmGxu/nfo5wxm4uvyzsjggaaznyuaUm4YZqXUX3+aJQKQQD
         0fDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=HAeXf6i5lfq3l4SoUQkeaeldWKJSzs+ymZu10zzXot8=;
        b=u9cHNbZGPKPqHHhOZ2waUHlhqf6Hwu9neROc7D6bSw7LSm8HIyoVWp2YT+n+LbYZK/
         ARJB7Y+v/dlL/HBrz89oQsE29hyCD59Q1mrUOT6lv9QdO6M6y/Lz+RTLfutaGXiprBu0
         HvJSRojmqdaZEBkfoFdwVtABpzxcJRptjNZjEsP43ui9uXRHYaDl994SiE5IxWlYRYl3
         PB2doBwnr1SaWU/POn6Zjbfei/r4PHvY1pJtt/CsDJsoKQrKYS11lQIFEuvbXWcOhnx6
         L0vUwqmZqYE9mItsUgp3Vr7NcbDWt4tSIsBMJhsa2PgW01JZLdhJlDE6mIgVKwTjiUpP
         hAPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H7ZVe2dh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HAeXf6i5lfq3l4SoUQkeaeldWKJSzs+ymZu10zzXot8=;
        b=VRrgEeO9f71JoC76SMsX4zf1lBcbSs1EWLWc+PYPwK0OmjqV1dl/1vfOSV9WJvzqTo
         C/bdIsT2y4FU5jSEPKSZLoPwheRoNHxWBcFJ6XPpHnGKBuD1Z10cknaodyHPMbbHojGz
         ZUpdwQ4ZVhSaYJDxoFKAxbNhSpbWD3dIi/loK+BZoTIHOkF9mVWtg7hGPXkauWeXNeK0
         o4QCktTXxY0h/bna51S9YFDIXGhxf/u7LzHj37mzY1HR9OahXdAgxLBZpuNu97TSyCaw
         veIY44aKITbHthjVwkwA2ORGp8Y05QMk4BV0kLOGLEy/8Dy+q+f5jisr1K/OEbfzia9A
         ricQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HAeXf6i5lfq3l4SoUQkeaeldWKJSzs+ymZu10zzXot8=;
        b=Wu3NCAPODxxj/APKLQNrBRqW3ExkbwquJI1vt72N5f+DkEClc7/MPea9SHojF1Y6vU
         TnykbCzAhAdLZtwohkgQxwJWjufrkeFVMVNQZ5Hv8UV4Lne54rwzwf0s3uKIcgIH38MS
         w3B9hmiLw/qMLrVusR1qnLAGBOoiO3P6KQOObIMZnPNIlHK0irtmw7R17CLTWqG/6dGU
         HiSvDrLZQe9c2mtwNIhW7aDnJ5jRZnX4jNdWu91BdbdxD0+DtJ4bvq8L1uvEz/CiX0ue
         GFSeND/cefxWdhFH7p2tLGysMUUIAE/889Cv2ILPyxXvb947jkFgB/rxuYAwSuB9wkoq
         GFfg==
X-Gm-Message-State: AOAM532gtzDP70yxUta45+c+CD6j8TZmvbY8j/z+ivH1XJTuXr33GTC6
	B8miQihIvoyhneaKA9NGnGY=
X-Google-Smtp-Source: ABdhPJwRbvY4fpAlDJMDWrBdKTv2xUJwYduxAQ/NSVPUWtgI8ZK1DTM4PnA++8dR43XZvcI5o0bf6Q==
X-Received: by 2002:a9d:6f89:: with SMTP id h9mr9660495otq.293.1597627586899;
        Sun, 16 Aug 2020 18:26:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a19:: with SMTP id v25ls3229357oth.4.gmail; Sun, 16 Aug
 2020 18:26:26 -0700 (PDT)
X-Received: by 2002:a9d:3443:: with SMTP id v61mr10025037otb.139.1597627586609;
        Sun, 16 Aug 2020 18:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597627586; cv=none;
        d=google.com; s=arc-20160816;
        b=tu/IY51RTODqc2dDTD1OIjnxbaCp/n6r8+OPNujzLd3Zp2TDZoNUTh1MAUg/ZwbAQD
         s2/ANlMNpdcZ7zyq8Jk6qL5BzM5hOKyau89gn+Gff30bsESOwVzn88yUKp8wx20ZGieV
         VQl2IKrSw/hfuGaOAI2zvLX14ux1xiEobkFm2JwqlHq4Q9RpWBe6oW9ewV+00HqkOiH5
         SdyuX5ujjaUyRU4Eqb6PMWfTdAQism/F1FMV5X+Ny2wcu4ijvXij3isCyDSLDPQogtLm
         xWTx4iMJDkgtWeQ0syyfRJSbDN42lQwoER5LiGeEtZcD7eCHOPk35vuBYuamkkGNRgiP
         zcNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=t0gIL2pX5kZBPJ1QlqWoa3Nk0hz9zRsIner5Z/DBDSg=;
        b=odEK23+71QVjAYbJVm1UJoKrYDHJmYCxFQwjuEB5uzx7tDGVi9PQPeVrBsSCvpHwl2
         bOnY2XbtbtEESZQl8r+bf3swJt/vXj+3vwia1QvNosZnKAAroxfRqspb1Ta2e9CfLJ7l
         HHchHImx+YhtzS4Tyi5EmwdYjAmyHcj6ocpZpd/GenPHKypPFZyzoQQlUCt4p1+G5XR8
         OAPMihsCZFWe9GArH1nloj9FAr+u6dFD71ARiMmIAS+VtEbATbpHZFGzFgXaJoJETPuj
         c5siHZpEA8iBXkk26YUNeNERRNqKhfCb4FD+QJYTDiqXOvfryoQ6gCOf6Bia+YtCoWi3
         o/tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H7ZVe2dh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id d11si842837oti.2.2020.08.16.18.26.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Aug 2020 18:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id g33so7334207pgb.4
        for <clang-built-linux@googlegroups.com>; Sun, 16 Aug 2020 18:26:26 -0700 (PDT)
X-Received: by 2002:aa7:96e5:: with SMTP id i5mr6653918pfq.108.1597627585397;
 Sun, 16 Aug 2020 18:26:25 -0700 (PDT)
MIME-Version: 1.0
References: <96609e1f-b729-11c8-05ac-80fc5c041b7b@gmail.com>
In-Reply-To: <96609e1f-b729-11c8-05ac-80fc5c041b7b@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 16 Aug 2020 18:26:14 -0700
Message-ID: <CAKwvOdmgUR8jB2GR8Owy4TJ36eW0T4etTyXd4yRyA0h9LMEQyQ@mail.gmail.com>
Subject: Fwd: Slide templates
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H7ZVe2dh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

---------- Forwarded message ---------
From: Elena Zannoni <ezannoni@gmail.com>
Date: Sun, Aug 16, 2020 at 2:10 PM
Subject: Slide templates
To: lpc-session-leads@lists.linuxplumbersconf.org
<lpc-session-leads@lists.linuxplumbersconf.org>


Hi,

This year we have a few slide templates for LPC 2020, if you or the
presenters in your MC or track want to use them for your
talks/presentations.

They are available here:

https://linuxplumbersconf.org/event/7/page/98-graphic-resources

thanks
elena

_______________________________________________
Lpc-session-leads mailing list
Lpc-session-leads@lists.linuxplumbersconf.org
http://lists.linuxplumbersconf.org/mailman/listinfo/lpc-session-leads


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmgUR8jB2GR8Owy4TJ36eW0T4etTyXd4yRyA0h9LMEQyQ%40mail.gmail.com.
