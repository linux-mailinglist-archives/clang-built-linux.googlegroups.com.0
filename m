Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN7KWX5AKGQE34PVV2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB552583EC
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 00:10:01 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id k17sf6332699qvj.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 15:10:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598911800; cv=pass;
        d=google.com; s=arc-20160816;
        b=SLBh+/MOGiQYFF0NaFVGVG/QBrsAc6gqoLMbwkq3L5zC31WXDiZHBLI+N7x7XLATlg
         6XN0ar065gG3RfTE1434IfwmJbZM8hIZqmRnkLvYzDMYe81vTHxsDiht3wdmaEk9pe3v
         liaZoIy94LK2u3wmM0FojREayQJ+y3j25A3z+eo88PZgdI97UDR4OKWsARdHbno7EUz7
         3/FkBtOBCbtrVxzTkPl1oLN7ktIUrOVJcmvgRNuNshrPzZE3vu2Nfbzlpfvscpgru+fy
         ih8aNLM78PN/fZCk1XuWO+l9lW5rFAja3KWAKHuzOHOeeYphLYEFEPHdKIOXoD/BR/q+
         yxtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=/uMuJLWb1B2jN5TJy+9wIZ9kZlkMOLtCmQaXfepWikQ=;
        b=wClq7ezZi1Jrf/30OId3mTjMJw4Wq7GFDaAQb+/AEypOJtnw8+YRL3dlm96oNB4VLD
         wn7qeieYTU1Fygiuw6tmc+kn7B447DCxaj/SYkDS2LmBSdms7f07rMJfQqiom+8GegLa
         iciYH7H4ZJvEQ8MSr7p/VTRADwqUQUtUUpM8s9Y7ZrPsiok2anVm9K9Hh4ZYouDLUZ2Z
         71nWd/xQ6YSMEBEyxE3ugqYhwVhg269F5dvB3Q1b/i6aTHF8lM0sp/Hps0JEqfY5hMS2
         2oNakRg3AaSZI02loVIeVAmBEHrfS9hzENtUhzeWMCRwpqjxGiZ2qrfxkSUncteKbhC3
         uNeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G7wyID9d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/uMuJLWb1B2jN5TJy+9wIZ9kZlkMOLtCmQaXfepWikQ=;
        b=YCfrvercb1EETfAr5vG/s61DRFdDcokxtY35NyBroQvtBkuE027UNBnWIHY2sm1/Lb
         jQrwmMqguP9YgRe8U049VLQOdNyMsjnxcAWmC/VLV+f/SCvMTNYPijNA61U4bbpAoCSC
         7zCZLa+MtpNDk65XvkhOXRbUoetSNBBVgClxluT9gzMWfX7DsGNSsVNu6EGB82SLgoZn
         ufDM19Ux5jGaeMviqUmI6GOB3TpYrwuYqGn6M3j3p9akGATMCoY8K22KZdzM39MnwWV6
         /4Pss15BTojLyDvaUHeth+tXX7QQIQxX5bLRb+bEhDA0mUjiuBY9mlYnASFDdL90+CcN
         YbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/uMuJLWb1B2jN5TJy+9wIZ9kZlkMOLtCmQaXfepWikQ=;
        b=O4zQvUan4ZPrbN/8Z5j5HgPjnpM/X725NXX/YKMEySyW4ycPne3+SU5RM+zA67oaUD
         TJWP7CozWP8Ivje58whTEki2NqPVv6UI3+vyO/J265mZMz8pwo2LUGJ9PW+sfEoGRqST
         rKEzx3SSv9RhlA2kN4ANpcZDUtugvTCCMn0l+1sVhF1cjSKzcHQnbJYhgeRouzrLSDTQ
         AA8rqzPRcPDj2kuTbWRcf7soqcO3hfjEix9hQXAWDxA+RgNlh4QdeeA+1/cH3bqvbS1M
         lRxMnF8z3fqvWpnAy9RR7YjFkU8c77wNcchxI2KauRQcIPIxSFrmUsWquyXWeJfNYIfp
         Ja3g==
X-Gm-Message-State: AOAM531uKqUv7vk2G9tiAykb8RDtbNmRM24aDWYwX4bjLQk7KiN4E1Kv
	LzIXlZYKqWvRDS3G6S/vDQs=
X-Google-Smtp-Source: ABdhPJy9GKUP2FWKDBPJKyCnhefdzroqIBtlh9qSBFlIadi/EAJ+IAyqrm2axb0jLNoHhvSTWXmlmA==
X-Received: by 2002:ac8:4245:: with SMTP id r5mr3477154qtm.52.1598911800015;
        Mon, 31 Aug 2020 15:10:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:8ce:: with SMTP id y14ls3417081qth.7.gmail; Mon, 31 Aug
 2020 15:09:59 -0700 (PDT)
X-Received: by 2002:ac8:568f:: with SMTP id h15mr3585864qta.232.1598911799694;
        Mon, 31 Aug 2020 15:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598911799; cv=none;
        d=google.com; s=arc-20160816;
        b=E2SiH9R4NjsPnmEbCLcpd2P/mcVw2YVIy40efrm0xqMNWRmi+9OeHU6ES205c588R3
         lkmc/mTzrwzNgJQGqX4d4m1zw13eeZTftxEfCy5Zq18Nmoc7L1hEvq8wUkrugwMV6k0U
         SkbqBkKJlFw3RL1Sw4tUAkWlHoBMn1Aa+QwdzYIudO3ShU/Qecyw2RyjZgexO9DqYQxf
         6MTC9MXboE5Xv0/t7aMRcoV5dGskXwMGzn/pLUrQGtOP8BoHBnIwuWgsWbMRsh7IH4fL
         +mllxANib3kqNwFrDGux/MKbLK0xpKs9Dh8JP1vf3y4sdsC3Sb1JtmNY0dYslrQCOtub
         zlVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nVviuNbGpCoXpzZC0kfscosWCIZYxe9n8kW1far9Ajo=;
        b=V4M5ioUf4HA4wJhgvL17mdsvuiYFEoNLwawp1vQ/2tbWHJkWYsA9gNyrFC0wfsVHLj
         lLSkHmlSO5+b5G/iVIj1T7zxpFiQLPJ8Ktzcjnw9l1j2qXHdc7Nat7E9vRmsiZ92zgzl
         pru80xMNcRP/aiwhPyt2LpKo04uzvukS+y1yiTNcD8TeSHhGEXX2Vxoef/+0Iyxd93cA
         8Zmxk1oT4WSXUIdAu+QGzY4frRT6KD20S400f3pv+b67KT46zX9F0Q+Ht3dlegdlVBZH
         ECTQXnIaLv5eF40DrV3B9TcvKnKLAbxkJnrjhcKG+Gxag2aIpmqbKxSDE76wLenYlqmS
         4+NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G7wyID9d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id j6si439544qko.1.2020.08.31.15.09.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 15:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id np15so595084pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 15:09:59 -0700 (PDT)
X-Received: by 2002:a17:902:a584:: with SMTP id az4mr2652036plb.165.1598911798572;
 Mon, 31 Aug 2020 15:09:58 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 15:09:47 -0700
Message-ID: <CAKwvOd=RBddMs1kPkMLM_1394wHaXuZv_Xc6GBqfp3=LrEz2nw@mail.gmail.com>
Subject: Thank you to the 2020 Linux Plumbers Planning Committee
To: Laura Abbott <labbott@redhat.com>, Elena Zannoni <ezannoni@gmail.com>, elena.zannoni@oracle.com, 
	Kate Stewart <kstewart@linuxfoundation.org>, 
	James Bottomley <james.bottomley@hansenpartnership.com>, 
	Christian Brauner <christian.brauner@canonical.com>, Jonathan Corbet <corbet@lwn.net>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Carlos O'Donell" <carlos@redhat.com>, 
	Steven Rostedt <rostedt@goodmis.org>, David Woodhouse <dwmw2@infradead.org>, dwmw@amazon.co.uk, 
	glunardi@gmail.com
Cc: contact@linuxplumbersconf.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G7wyID9d;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032
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

Thank you to the Planning Committee, for the tireless effort involved
in planning and building infrastructure for the virtual event. We saw
many of you working hard day-of behind the scenes resolving minor
issues. This was a major contribution of time and effort to the Linux
ecosystem, and we're so thankful for all of the work you did that made
Linux plumbers conf 2020 such a success.  Particularly I noticed Elena
and Guy running around constantly helping folks in #helpdesk.

Our ClangBuiltLinux team really enjoyed the event.  It was commented
that meeting on a six month cadence felt just right for us; thank you
for providing an environment for us to set aside a week to collaborate
and refocus.

I also really appreciated the free tickets for a few attendees, and
noted our attendees who requested/received them were very very
grateful.  Many people are experiencing difficult times now.  Maybe
for a future conference, I would recommend just giving all speakers
free passes to ensure there's no last minute stragglers (we had some
speakers never purchase tickets), then additionally having generally
available free tickets for folks who could take advantage of such
assistance (rather than having the MC leads decide).

Finally, I wrote up our MC notes here:
https://github.com/ClangBuiltLinux/plumbers-2020-slides#notes

PTAL, and thank you all again.  I can't even begin to estimate how
much planning and work went into the conference; it feels nothing
short of a miracle to have so much in place and have it go so
smoothly.  You should all be very proud.  Great job!
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DRBddMs1kPkMLM_1394wHaXuZv_Xc6GBqfp3%3DLrEz2nw%40mail.gmail.com.
