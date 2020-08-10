Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLEKY34QKGQENVKTTRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0649C240C0F
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 19:34:38 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id 2sf8412987ill.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 10:34:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597080877; cv=pass;
        d=google.com; s=arc-20160816;
        b=oNAVvQQ+Q8Rcqi/A6dGPhwWxQr37PsShzjfV960sD4Ho5+XuIfnItHunm23vY84SBX
         b9XpguW7ivujZ+IFRlWnNcvPdew2SHAyofTX1PVwtS7JoXYncDB4q8tRJofwxHS71baV
         26mnucE774MSPnVo/2h2X/WoimewycLZv+UCRa3KgcWt+JXpksfC2rmrxntvc3EP/kwE
         y2OG7npONoxesjQH2sliyHjC8HxRRoeLGBHhkYqQz6JR90j651AjoDBYy34f8S93d6sy
         +VDKttf6LqFRBgVllM6o4/zy/sWg1F/YHNZaLwL4UiuzXOG4aqPP4rFddX6/WwjaDvQf
         ZDUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=3TacgGi4Zwngf86qDjr/H+FVhjuPilSofb76pkbejXU=;
        b=jRtfi2GC7W+ezYxWb/6C8lHt1/ThvpupOUICIu+Wk8NyNrnQ5Uw/+lF7M4ZJlWp5ye
         Vk1Kv+nNoXQ3J5hXPCR5ihor1tY13ytAYfq55gxMWUlc6EfkUyPuneNNgUlUx+VCtVB9
         0vJN0SxFD92sUSXLr+ZjHRz20eq0NqJzqehls4DT5TWf0a+4jhRh6Lw3mPp/aRUCJmm6
         i+ts39vy2UvE3lXdB/2Q5HkwzNDoYqc9AgbwAY5HvpYRQ438YDsQDGvBi7LkwuCuKOV4
         jX8PfW1/dCyzGaBngis3hEsMfR7M+AwfTFuStcO9JpYnd4uKjIImO6+EGU67mLskBNVq
         /A9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ns3bEid5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3TacgGi4Zwngf86qDjr/H+FVhjuPilSofb76pkbejXU=;
        b=VgrceL7kQXF6mNCPsR43qcdaAZ3GSc+TpwvMj7CyIrobmU2a5KOlm6yNZ8OntRckBt
         QR3s7MrjbSVLqvEUxm0XZfgLWIEarDp4i8z+AcNBPOVKQ4oyvafzG9XPJIfItYkJ//kJ
         GWw+IV4F7yXGjb54hLv9meCcFeeiOYklmk1LbMg7j5mVuBDh402BHpOYRzQPgIFBLSEV
         tUSYQYzUQ/Nrglws72NaUzJ/ob6ki+Z8bMm2JSQ5CYU8ZTNtIm+kLzXnOJ2CnePcX9/C
         YQujRPKJNjpygHPo9M3P1p4zryy0AB7XiLsZyjt3f2mGtnpCZn9WI6kekYx6HzlM8H+d
         PrFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3TacgGi4Zwngf86qDjr/H+FVhjuPilSofb76pkbejXU=;
        b=QaVldNx3ErHBH3DXkpYHiO+FoGWcfzaN8RS6gllNvJVCnhaEugKR6JC4FxOBRkQ84h
         yeiKSc5u4trhWrWlXYfj7wtrZzfBowWu4k6w0P9GIIN8+WurAmI/0BfP222YV9eGhsV3
         AehKeW8iZN1bLHirDis8iOL5U51U6Bd0PR+6uD9prYATK5o4O8/W5WxtNikzV6kENQ20
         m7uvXzWcFrgzKv2rT8F3b/hzsLZvWvs/U6eEtl5JSRwiWps5sMCS2uy6ob6lgm56PfZN
         v8vVYKuvbhwiYwNdveF06SOxXcsHDhsjEBB44yZHzqYlN79RwJ+8buJ/cL/+mH/Yd02Q
         kEQw==
X-Gm-Message-State: AOAM5300wngCBrW/6YJxZm0wytREeeWPpmDp9BQA4xllkwlo8JCCl14R
	sYGMz/ZPUrdhikhk+mHRL3w=
X-Google-Smtp-Source: ABdhPJxg4T6oYy7ITqmzXgBT0QsV2LrhJ1flQrFBV29aAPJBNtJuO1yivQonN1o8S/Cea80q6wJVMg==
X-Received: by 2002:a5e:8408:: with SMTP id h8mr18110177ioj.137.1597080876835;
        Mon, 10 Aug 2020 10:34:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cb48:: with SMTP id f8ls4376497ilq.6.gmail; Mon, 10 Aug
 2020 10:34:36 -0700 (PDT)
X-Received: by 2002:a92:2c10:: with SMTP id t16mr17963238ile.24.1597080876543;
        Mon, 10 Aug 2020 10:34:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597080876; cv=none;
        d=google.com; s=arc-20160816;
        b=HKoYJy9f1MlBD7G5/iEUqKjlBZ4A31DwlmufkerppQE8o9v99pH4SX6D6/R1VpHZ9q
         ds242y+tSd8rTbkrOGrB66EEibXzlbOE/RjtnN8XsGnT9UbDshMvs+784LUFTmQAUvFy
         bFNtBMEwN/onOcl8pYPfMoktii+Lq6JiMz87pIVQWMYFx1765toRH+mlbH2QbksRuea1
         a5XmTtLZcdpYQi4+ilo979WZNbj6tLoLbgrOYK+VrdY1KQXaHXWVrkH1TV7mhIAdV0C5
         A7JunyFYG9cHh+AFNzn471jiDtC7puSKvi5wrYKFswkAFnx+Q7rf0uvTuEPhLZSadaL4
         xdPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=pJFU3McDAx0S5i1BTMRPAoXk0qDooyRScdKEHVr6+6Y=;
        b=b030o8dgyg8naQG+vHxaCegK6/XhTn5fpNBHxnUw0WmKF5Nx9IkWLzC48CnUaW+Ari
         rQCXKQC3TkFm33Fd4iFRsUNZNWrjYJgvvSiimaz8yLNj3EL/ioAaAzM6Q75CT9ehiT6L
         6haAzOEbf0S4y1e3q7A1T1ww+Le/w8kSUMCJal0KSXQhEJq/tJVwpfWo9TMpF4VuDIcD
         BJXZXSwK3jyIba3c7VYW/vnEozoF9rgwhcneUXDKnULnk/UKWoH25OZ4AHfbngIcdNVx
         ANo+lNWQ1pBCK/W9nJn/qygFI++25UXdc26AFjRClx4D7H2pLovrZeT+H1fBapFlGI0w
         JQEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ns3bEid5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id z6si1079871ioj.0.2020.08.10.10.34.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2020 10:34:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id y206so5898874pfb.10
        for <clang-built-linux@googlegroups.com>; Mon, 10 Aug 2020 10:34:36 -0700 (PDT)
X-Received: by 2002:aa7:96e5:: with SMTP id i5mr2089117pfq.108.1597080875762;
 Mon, 10 Aug 2020 10:34:35 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 10 Aug 2020 10:34:25 -0700
Message-ID: <CAKwvOdmZfCrZCezJmvFYzprcQmqZ_uw5HX97UboO3tuGcjoOvg@mail.gmail.com>
Subject: Plumbers sold out
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ns3bEid5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

https://www.linuxplumbersconf.org/blog/2020/linux-plumbers-currently-sold-out/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmZfCrZCezJmvFYzprcQmqZ_uw5HX97UboO3tuGcjoOvg%40mail.gmail.com.
