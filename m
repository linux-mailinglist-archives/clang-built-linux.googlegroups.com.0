Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7M5YKAAMGQEB37ATKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B6568304BC3
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 22:51:58 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id h25sf2083141vkn.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 13:51:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611697917; cv=pass;
        d=google.com; s=arc-20160816;
        b=0owD06FNgv1OIPWJPD+dVEOYV8qq73q1KvL2z8nWc055ZB4HYP1qGO3Yn6wi24IT/a
         6sM7NE4vf/7k1hHDOoHqn2FTuzWn0I0Xm6qEGPw8gC4E86PwIMGHWsrfsMPDdtzajmCe
         t2YMY5Wuv07m/pcj+Z+7wPQwdVEyAiyv2dTL1ymmE95nAuD847m0YDtXeXuOgCWB5JVb
         g3H1BvWbxptn5E/aoDDFl5udzYN+DcdaU8w+2qEjM6Yv1bnwlbIcMwUVt5B15STR5Tzk
         cT59N997eZDqRY28S7z9+vtKyZQgeyLSSSfO28SsQ4+DnRygwwBc3UtPfvhgj/rqu1s4
         NWAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=bnHasPtMSM2GAJ7mxE7fKQSCZkCEprOEIzKbU6dn5Ks=;
        b=N8+zeUaCTR5XqGdMXjVy26qMb3D6pI63tFL8HIAnAiPPyyiWgFqVglMr2bcQKzu6ah
         A027UeZ8vLS0CJ2b80jfAU8AP7It9WqUFbZcnJ7e64hlkD5T3S/k5H8BJ7TjUzCvG707
         xSdRMxVY1vMnjyq0xg3YINZhefwiQzx6k1Xd6NFAWCFZ/SiibLKP7uJtGBuBg7OWgXgU
         WCHmlVj+0KXcWx36oXBxV6N40CJc0jSfj+kWPF4MQLEGg7+WkQ8GKHml1yJebO2BXrrg
         Nj08gvnJY2RPItFGw4Y0TYJ5HpUDyyPLQiijhfUB9ybQu4Dp7jOoEp0VW9L6sitcSTbg
         OSNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CoF8scV8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bnHasPtMSM2GAJ7mxE7fKQSCZkCEprOEIzKbU6dn5Ks=;
        b=BXhcImRQObibMUYtEi64sx4eT2uiR6SzkmmFrhkGIyubsg40/wzMPHD2kn8M76KPNr
         WYVqtg8oBhTZCXM6chIGUXd9jwsFLlTDMjsoSGG29z/FbxIAhAAhY4Nwp0+aboBNBXdr
         eI3Ho2aH11pmbA9NtiOafNltFAR7amF4uiEKXC7FVESNwGPZUPZ8uYlsUsbDsk2Rh8um
         jzM/F8YabUEyyOSWEPX2+2Fn0PLn9WtJPB6j+BW3lQqA8Ofn9XULrQLxXD+pJlL5jDKa
         F9CAKI0Sa35Hq5t1Y8Bb57Y1sfmKFTdevc/+XhwvmLuTI/IJOJVM+aSTedxmwQSxeFCO
         94eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bnHasPtMSM2GAJ7mxE7fKQSCZkCEprOEIzKbU6dn5Ks=;
        b=P6UeXSQxCisACe3x6JUKzIxOSk2E3FH26tRdRmnOLiMmUuH3T2edtA/U5wmr9dGC+v
         SYU33+45niPX+RupJGhiIZDqlq55XQmfz3OoGlPhNxjjn2oyFOpFSaIFrugXJVHX/avo
         3ZkpPaoX4VwzZMXU6Rrrml6GUxTDCi91lSsz3+fij6RZ4Ozr+NdKzaHUPdvFOX8eJy7e
         0lKxEHc5RCO72NDxD3cyHx2oHQ9GCH9kOUzI/p1LNO6ySdTwxAtpaFDwI8nCdBJnpahT
         zCSPZEt0mXGZePaEw1BD6bwJ4tJ6Zu7F1dgHuP7tnBSQrCoBssSlT4t6wiAUoA6SnHjW
         370A==
X-Gm-Message-State: AOAM532cGUxMUBu4J06QAMSfhYN+yptcg7meKJf2VETgWy61qDc97VRI
	xgTWmBkQoKLKjJzqSd4YuT0=
X-Google-Smtp-Source: ABdhPJyW1hRWbbmLl3cjgwZgcXvqF58x1F/uPpFL3q/UAmOTMCiT/OaKZo4fvFeqGq1jRBsU18/Fuw==
X-Received: by 2002:a67:f594:: with SMTP id i20mr6567910vso.56.1611697917673;
        Tue, 26 Jan 2021 13:51:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8f8d:: with SMTP id r135ls686992vkd.1.gmail; Tue, 26 Jan
 2021 13:51:57 -0800 (PST)
X-Received: by 2002:a1f:8d54:: with SMTP id p81mr4203492vkd.10.1611697917277;
        Tue, 26 Jan 2021 13:51:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611697917; cv=none;
        d=google.com; s=arc-20160816;
        b=lOnEI6wrLxd0dL9rGfKdWEqE8OlG4DZ7DTjt0d0vSH6hmKQVHiA3vkICeLUMCUsVlD
         hEZUVXRQFjwS6dSzDSBEgCjGlzIU8Bm4soXQN6gGrG8zHhoV8eP/lqf5OvBIsHxg7tl9
         NwmdJpeV4aZFnn4Oh2pLHYpesoKGC2fWkIwCt0s78RagFnku2G2zi/KaWrWmGu5B4EGA
         S8amXKPVvrxkKtTA80euWlAoeDtkUwv6+2FAxUY1LI9MJ6QSza+jtT8AMNRL3ms+WwYm
         gXIigvrdst0NTz279zXI8sSBM6iDcmU7mA0Oaj6kE04krNvTfQaVO/SM6B+t3nb8x+2+
         Bf9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=9AGUrnYhoWJA1kfWhc7TVECC62YzbW1KPUtWDLu+fzU=;
        b=UNLYA6NTYR35kuwkUa7Kz1LgVYlgUNV3lwYj1attqvC/7jBUxcsm4zzuIJBPX9BA+m
         LCXdOTBkOJWkoDKZ1Ydwd28tkCvHjCWo3oROeBaqpgrvXld8O/1CIUWWGj474ueLoAhx
         qDgf16cSJIC0jguy/45UtmKqS2mFqG+Zl2ew9UeHaztA8Y1c6eB4Rv3gqN7BvFJrA/LE
         K/T/A7eO2j3zfcuv8hC9ccfTCbYu2b3pIKT5qFKyDzvyggOB+Bw+7fWvVdQnb7zAwFwy
         5ob/E5aFgE9o5K2dIH61v8nNiEXcwVsOsmKYi2H7hXHns6CIo79PWlnJiETUOG3qpjJm
         ifmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CoF8scV8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id n3si1648uad.0.2021.01.26.13.51.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 13:51:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id d13so4773759plg.0
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 13:51:57 -0800 (PST)
X-Received: by 2002:a17:90a:2e0d:: with SMTP id q13mr1881367pjd.101.1611697916681;
 Tue, 26 Jan 2021 13:51:56 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 Jan 2021 13:51:46 -0800
Message-ID: <CAKwvOdnQjm2yMfKLcT-9=iQg68=EskMh3Evrx=3rTAJo3UAnZw@mail.gmail.com>
Subject: csky + clangbuiltlinux
To: zixuan.wu@linux.alibaba.com, guoren@linux.alibaba.com, ren_guo@c-sky.com, 
	linux-csky@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CoF8scV8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

Hello,
I was wondering if there's any interest in getting LLVM's csky backend
to compile the Linux kernel?  We maintain LLVM support in the kernel,
and CI in various places.  It would be neat to see these working well
together and actively supported.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnQjm2yMfKLcT-9%3DiQg68%3DEskMh3Evrx%3D3rTAJo3UAnZw%40mail.gmail.com.
