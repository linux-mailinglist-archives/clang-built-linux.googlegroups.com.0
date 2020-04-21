Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMWU7X2AKGQECENB3CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 706CB1B3212
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 23:48:35 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id e15sf17882631ilc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 14:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587505714; cv=pass;
        d=google.com; s=arc-20160816;
        b=dfqyebH2tJN0KKm9NKZOwiVDRr2QBMLXmbHi0YUAxFodRyZRCoNzJGaMOI1XEkAaJA
         BUo1AuwzR9t5V5HZPUgLj56/namAIeKv8EGjcPc7KviHNd/yTxKU1pN1bCQ/JrNLC6K4
         o4b9806NZrbcoKlQq+fONLCihnblxshqit4FiFMZv+EfuHItav3VyQI9dLTG6D4VWBWQ
         zQeXN3HQWbvC5VfUzxeMIslxHj3dAJ+9+k5XuEADORiJrAVS8O3ctJvUJB+G5HRKxfn0
         RbxPEeHE52muCKTJx4Q1dcPIfwK/mpo7k9pAnLwUl3pT2P9tlka9o7mP3I63jgZH0LX3
         cO9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=04YnSevxB1U9Hq+akXR+NWvsOPotod2PSEy0PzPUtyo=;
        b=aTgBO2JBpqJsDHyWNn5/snnH9AlDIG1iqt7R98DIdTVrkk2kOBkfGpue1zkBZX/6dp
         ewf+2ClsbCuT3AOl0SdhDrS5599cHJvVWYgXuyu97fEyBBNzD2iFWT41/0dvLEqA/ssD
         BqhZDm7sCFSHhO4fvuzjET9CszzCHP9zWaUrgTFbVvXf3HlTIULwF8u+AawAuZMNGZ1X
         wcxI5JMA6ZDoQeAn89DoaW9pAeLOLps1i4gwtHJObuqeIeTufcedUl0BTVVQKwOoBjav
         NmMyDn4rTCFgnvFwqsti58z2vHPj//ZPjU1dK4e8KJ35z876oexZvwMgEN6bVqv1YoSG
         FEsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dU/T+XXA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=04YnSevxB1U9Hq+akXR+NWvsOPotod2PSEy0PzPUtyo=;
        b=lNydakQ6dsAzi0xsU+hshu2lF/NXhTsJwtk7KFv6GpNslXRdZvNaLnO5Pfr/tSSHDR
         0NetlBqEG5FUmzQpRu2Bh3/zwH9C6714MaQDoyyKmsGRVrxfVDe7Oqh9M8guh+vtHRl2
         eHg1tpkO6s55kQGAEOoVYtrRIKY8IQbz2a3cTARPMUvjP5XIUBcCWzmKZgVHquuqlMvo
         iCWGIDLUzd7qRhUtvbvpWgNTIoL9daAB/urAD1j8JIJosY7EaiD+RrYClpUwDv0OOoHE
         AqRj4EW8EX/A32VJD6FoWIDOBtNPyQCDPVP5K/kPEI5PkVM7VxCd/A+Mpc+iXePakoBS
         RhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=04YnSevxB1U9Hq+akXR+NWvsOPotod2PSEy0PzPUtyo=;
        b=uMIO7dUzJWixitMMwE+ycEkSIqi2h2Ggf3mwjC08mqmtM0SAQu0X1sqgvl3VsqhXn8
         mD9i44Il/6HFmLVohJnz885m4Qz3SDliroOnzvN6k2AaxFt6vg/39wIOs+xNz1p1+AM3
         yravTNNNKu0L6+FmP9D02U5hbgtootUfxEnjcIStbwKCqTGVjU1qpgtfsLwjMXWE867W
         F9q4JQr6DIy23+PMeekr18iJvzxNPDi6xXEChWW4k9eer/cRiShbAzawezK4A7BXR6rr
         0IcSyJ3EhEEYuhzYPXGvTPPxoxKtEe0ZqLZMJSMqVcwfvBnQ2+YujDZk9DNkYUobJEJC
         Ggag==
X-Gm-Message-State: AGi0PuaFH8eAYaC6su5q9uORJmsij8UdZ9Joicug25BmnjQzudOp8NG0
	J8EaeGKP2O11BrQuX5BI1Mc=
X-Google-Smtp-Source: APiQypJCvZEX+o6f6DtQYE7Pz40KLB4Rl7768UuhQKijpBqdi/hTEN5112sWiXfoMLmGuXRMMfIEdw==
X-Received: by 2002:a05:6602:160d:: with SMTP id x13mr23088057iow.21.1587505714316;
        Tue, 21 Apr 2020 14:48:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2186:: with SMTP id b6ls111960iob.6.gmail; Tue, 21
 Apr 2020 14:48:34 -0700 (PDT)
X-Received: by 2002:a5d:960f:: with SMTP id w15mr23156494iol.34.1587505713995;
        Tue, 21 Apr 2020 14:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587505713; cv=none;
        d=google.com; s=arc-20160816;
        b=fTpKP9OxnvVhuT8emHJimrqr+3Sg/Hy66r6PX9YpKCMDNpuIvyHghgQHU/N+Ste0ez
         EQSk0NEyn8U6d3co+FKolgURcXFsepa+BO9uiWnmHQE+ClqF9vle/cNcZPE9eELcdxYT
         JQ+ZLo7zs3PjOQopfoTpyBLhv9tdHbUspZh6mZ3pbJYTbU8uzNsc5CqYBDW294pt2aZh
         T0JGxfefBIyM0L+MVE8kAqgJNiZmQKKoEfy2hn63JsuV6+LaZ7G17AanaeEHH/ARmCSO
         QlD81YIlw8jEJWg0ijjgsC0OVrF/RkGgTk/k37CyweZHnB+Mj7WNWZpWUjeUFQxte9pr
         Aobg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=W3ASv/sGwAdS6LfoIU5trQxc2gGapPqb1zkSr+9lFYs=;
        b=Q+HJFeU6ZDD9k1icqlSF7f3/oTkgWobaIKwPy1yVPNqhduf4dg5tHzZFzXTshB7mdm
         ppfq3CwZuwV9bAXb1WbMu9/5uDa3ALWgC00jeOCbiyiXTdIkNFzCzb2S+824gmJuK45E
         OeDID6hxK5rBi17KDatz1JGrHDB+ASuwW3hTOnSMeiEA/UKrYnga8hVbckADZN9A6fLY
         rTWoAXoZbqP/H9UA+FD06DICH1Pi7YGgO4yXS8d+xw/kIdQJc9RGQa+g3lcFzskFg8nL
         CgS8qlP7GKG2A7kbv/vkxfJocqj7bfMmLrL93OyqLg6JjmTn/JQg7Tfey3c4XhYYSARM
         2s+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dU/T+XXA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id t16si367000ilj.3.2020.04.21.14.48.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 14:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id n16so17643pgb.7
        for <clang-built-linux@googlegroups.com>; Tue, 21 Apr 2020 14:48:33 -0700 (PDT)
X-Received: by 2002:a62:e415:: with SMTP id r21mr23938800pfh.169.1587505713151;
 Tue, 21 Apr 2020 14:48:33 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Apr 2020 14:48:20 -0700
Message-ID: <CAKwvOdmYShhgvgKO+OPm9-gRd5OZLXMHbEA8RsEt3SWG0W4Wfw@mail.gmail.com>
Subject: Trouble signing up for the patch tracker
To: Russell King <linux@armlinux.org.uk>
Cc: Jian Cai <jiancai@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dU/T+XXA";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
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

Hi Russell,
Jian reported issues signing up for the ARM Linux patch tracker:
https://github.com/ClangBuiltLinux/linux/issues/920#issuecomment-617360840.

Can you take a look and see if Jian's registration went through?  Or
is there someone else we should ask?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYShhgvgKO%2BOPm9-gRd5OZLXMHbEA8RsEt3SWG0W4Wfw%40mail.gmail.com.
