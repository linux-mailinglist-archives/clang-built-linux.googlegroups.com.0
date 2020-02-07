Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGF567YQKGQET62IMDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF6B1560F8
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 23:03:11 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id l15sf494384pgk.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 14:03:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581112984; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jm1/sOKmKFQO86TlvyEKczsZo91OBRziPYPI1s6QZg5heOVTH5Y+nLdpMPHwViZCk5
         gIaNbBm0pfT4cUKUQRkIHGBqRhBjopDt302YzGrpOppWR8MlPUxMPvHxei69YPEyuYzj
         +aFVLqU5rU3Zv/KsuigE16PlQG1rsmvBKeqjBVEW+uzeFPKo7Zk0vaI+Md82/ScGWOrT
         mbxzx1y5Bnwa1l1YMlh4/7MVlxzWjDPxZ7YnhE4Be2Yk4jnarymPA8ALLT5FNgk8GXD9
         pPb1z5nwyqASzv+DwRA0ilOeolIr7teNWgk8ipGxoqozQTZthnWty+PevR/KeurHkRDy
         dOoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=zevISpW9MiXmJNluSs7dFoNiVI7P5wUODPScl7Ycdpo=;
        b=WYQty1+KWUZ6DnxNn/APh1klQh8DaBHI6X8pKLmNLzXmtGUg1iRhUQjDXjiHbmhUrK
         bUr2bGT1GQ0g5VVE8GcFCNQrrYM+mqdYhMY+anQCY91C5eETnmppZM+xe3LteJ1L7shF
         5kpGzmoqrz/1vj8S1dWmQ1XUnwZ2EnqPGkflDcQHjM1YoQ7+yQervR8vgIdHKKeLta6t
         1mWXekqwyRyO7+ODbMJBoJ3j57HTFsQYIO2TzM5MlJvmo3zd5YqkeogBrWCSqjDYqKoK
         45ij/LDQC4P+jViDRS8rXrkxQPPby7IxECbyKawb0kBTuHo3lAiYcVEbnooBz6RrKwd1
         hO2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nc2YrD4R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zevISpW9MiXmJNluSs7dFoNiVI7P5wUODPScl7Ycdpo=;
        b=TXnJT05T40hO/bsb/fEkJyaAKTRKZAenzudC5MEKKJ9APwQpghvLqdRlqoH30hOrEe
         GI3KPjePaOjkvlOWNZyf6IXOxLG4pqk+nFKpIXGPKQb8NUdY8TetPzuEY2JU4UicxUHe
         L5FVtTSxzUaQtFI1QbDeA9964yglw39FF3Kdj6wiUFvF5B1E02kUYdHU5drVyCTfbwoP
         bmgaSIyNdlgoYfqw2JS8TiqPf7kuqMPnG+2E1LLq1hvTFifhpZWg7CTqthL/evX2666t
         /SHAqlyX07DRGnQf3hB3yCj7G1fYKx2N3ow1UqS44Bxekt+AAYBIsXGrez/D6UPQkBS/
         icxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zevISpW9MiXmJNluSs7dFoNiVI7P5wUODPScl7Ycdpo=;
        b=JIrFvggCboJfnlAygPLPSl++LPQ6EkWtH/D5p08mdFVxPq+1Q4i34AYmw9NaF9RQdH
         maYvO7+enrxP/rwPGdh0pO+pu0KYZBU8tYnSWZQ0bGD/dclpJA2QvceJfL3dtwm0+7g+
         Z8xV8yLFHSBjlTQeTfmbk+o3GEjJs9N2IGiYekmkhdaMnD6b1UCgeSPMjELd9rp3jyf0
         76CFN1IdfstSU/Ligp14DyXEC6whyF9QFJd1pImxIuV8jdi05sXWlrybxD46+b2g1VOw
         /dj09GDLTpo4O5F1TFGf/dj9EaUi118Z+s4eZTyaKRHkR2flThLfzoBUFtS5YLomQzzs
         CvJg==
X-Gm-Message-State: APjAAAWSxPyA+yGl+VuyGHB51qS9nHdme/bwHr5fkiDzwKncaTgx1zav
	kv40YzpO9nLtLsU9B9YJA+c=
X-Google-Smtp-Source: APXvYqxFjgZcLU/mfM4WOIwwrC5wD/+ovJhsvBzj29Uz8HM8Nk5j1UoMRuASBWrcp+sVwf0QTGnNlw==
X-Received: by 2002:a62:5547:: with SMTP id j68mr1031321pfb.6.1581112984438;
        Fri, 07 Feb 2020 14:03:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls252658pgg.2.gmail; Fri, 07 Feb
 2020 14:03:04 -0800 (PST)
X-Received: by 2002:a63:6607:: with SMTP id a7mr1383644pgc.310.1581112984026;
        Fri, 07 Feb 2020 14:03:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581112984; cv=none;
        d=google.com; s=arc-20160816;
        b=yNtYC4cu3ZXxqo34N9SL4KKeLSkvnq0jP0kbE6j6SSDBoeklQO5tLQZ5KZdYDMOahM
         /aXHgFO6sjsVFIu9W241WG4OZoRSPicMsRcvoQCsTFNsY6K7HjZfVbsuRX2u9aWjPtwU
         wctTH1ZWtrcyCfsAoa/fa532YiCuskEA3XN4GAqlKgJBWwKHj5gMZVlJYMw0vrmCYjM4
         NC3KWaZWH6LAEiQudmLQOq3nGdwyZg29NOnHH5rxzejjHxNwErASvrz8h6qEtSHnObao
         sJ4dlKpjLxCmxekIqgT5u0RJ3XvOXAHh8DG69EIqVYAuYuKvglcMw6OlnPa0MtNCYhln
         YnhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=9VF1POlfxaQuN1Y2gdHj4ZThebtHIortCXAG/sBeJWU=;
        b=R8RXy6F/vdCZkZekq5qVe54J++TFx2BaKTSphxIFtZlt0IPA4DBZcK9dCjjJThw6sD
         11o/lw4uyeU9vrN/vmn0MuUUQFN1HJg8Tcp1D7S56U9dLjaSxHAeCrNEcETzriUmeIPZ
         6D7orMfRwr5XDg/pFaYT+/0Zti9O+yy/KIUcLGDQ4vGG2lDux4vjG5fmsGYdI5GyVdWg
         6KDTeqY3mv48sXO/BKL8Rc0tmGiXkVtM8X0CCB9jESnZ+mYWyyz2KdC2fU9u9Br5H5nf
         s96SM6jmf7x75RjBGo6HS17naEl/OhmijzM7dGT/BUKRZ9/N8pg2aM1RnjgZomf+VaVt
         AZrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nc2YrD4R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id h2si957117pju.2.2020.02.07.14.03.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 14:03:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id z7so467269pgk.7
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 14:03:04 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr947240pfa.165.1581112983354;
 Fri, 07 Feb 2020 14:03:03 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 7 Feb 2020 22:02:50 +0000
Message-ID: <CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3Au-P06c1G3McRE2KQ@mail.gmail.com>
Subject: LKML: Vasily Gorbik: [GIT PULL] s390 patches for the 5.6 merge window
To: gor@linux.ibm.org
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000b97673059e038dd7"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nc2YrD4R;       spf=pass
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

--000000000000b97673059e038dd7
Content-Type: text/plain; charset="UTF-8"

https://lkml.org/lkml/2020/1/28/1141

Yo, what's up with clang 10 support?

Can I boot this in qemu?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3Au-P06c1G3McRE2KQ%40mail.gmail.com.

--000000000000b97673059e038dd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://lkml.org/lkml/2020/1/28/1141">https://=
lkml.org/lkml/2020/1/28/1141</a>=C2=A0<div dir=3D"auto"><br></div><div dir=
=3D"auto">Yo, what&#39;s up with clang 10 support?</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Can I boot this in qemu?</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3Au-P06c1G3Mc=
RE2KQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3A=
u-P06c1G3McRE2KQ%40mail.gmail.com</a>.<br />

--000000000000b97673059e038dd7--
