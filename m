Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIHTW3VAKGQEUSCEIXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5A38823F
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 20:21:21 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 191sf61952803pfy.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 11:21:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565374880; cv=pass;
        d=google.com; s=arc-20160816;
        b=rCXfMjwtjei6YyfWpeicK/573jONNNFEcTn2ebWv2TqSTCH3Ii5zl8fvxGcbREQ5D8
         nPH1PjAKTouJbrjPcnmCkn2Z+jUC7GLPZgUDxw6H81Y66IzauB5c9unXHqf2dcUK113y
         x6kVKdryNipRyIEtMVoVRphq68oV0ogwk+kuhiDZ+qGA/OyI7fFMyNn2V9Uwl9eKOl0b
         6ZObMQRi0Ulf7rPapUttJVEIbX52+NFJydWjlwDPWsrKQXYGjc6M2uKXSuHNYZg7kX/m
         hw8yz4XCxpQnn032tIaf/8qup6jRkA+7QqmbB919lTF+f2MU2LPp0yNDCl8hmaH7qy/b
         gKcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/bXowlf0OPtCW36DbCmG0bkW275BHhNaotC7WbaB4Cw=;
        b=x7HZ9hQfbIOkcMnPYbw6q9UkmWoKnlvdFQt/wKpibLL2cZKLBskG2LdqJFH/CogXL/
         YDCS0WNk0YKpaKcAalPzBK+VWNaQUV0ZrsZcC4wjgZehnh+4F5p1XHkG9kYUxH89OIcd
         vKVXGR44lTmW2kxg5vqi7JIYWhAfB7IhAtAosZTEkkUpNLf9R+8YwZnbwVqU8MlCKZNb
         MA0EVFfF2TB4LRCTmg2SgrWGhhcZdbdNndmqUF2gd/JCbv3QQdFCBj0ocD0Qzb2XD2c9
         7fnl2wU4m1dkc5Cs7OYv1+CeYYDmJMRlR2T7pV5zezYynrDhKa2OW9Y3gELT2vsOAM2p
         XmlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p1bth4T+;
       spf=pass (google.com: domain of 3n7lnxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3n7lNXQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/bXowlf0OPtCW36DbCmG0bkW275BHhNaotC7WbaB4Cw=;
        b=WfuSWOo+rsEcycDz2RJH5ilJV/WIaiE1RsR4yOj+N4N/3d40RQpfXAJ4usGmPzFh/I
         N3Dfz2/DRAV/HrLPQ3yL/09nlm6Ddb+kysHFW+BbWEJpHON+IW4ClC4g7LXbhWiBlsk9
         IpgxSlUwlG4GaalvM731t5Zz0vcVmNuMgKubypTqh6sEnnmFInuuDJc+lEPj+1fU/QEG
         SH17UuxSXu7LgnUcvsYgK8dMt7SkPgBPYmI9sZ2T0NzSGyPVvSzktnjUEsOyFiUF+TwR
         tpr1lzn+3TuvFC8i2qX2LEcWNeh6eWr6eMI0u5HJqVhLvc1uKL33WVW1QcgebxAyZdva
         CKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/bXowlf0OPtCW36DbCmG0bkW275BHhNaotC7WbaB4Cw=;
        b=sTWw3ittMkQ4OXrtIvCtNTTaE9NnV9NbyHJZ8Lbo00IPCFrguSXT4wlwOyKzBjQakn
         PNoAMKNDelCfHpvKW48lQJv1rNO6h4kl0gVjPvwYq1xN+c88XRB9ws9t+OJEJM6IIB22
         gXLTv8EHZ0HXx4PZf6zY/rwduKUSyMIYnGUp5q2sjFbMiG1uxFnCKtt5cGKoccu4wFe0
         6taaZf2Lw7U4TAPnt1Q/BZ2DBQV7zUiZcmKlUIKe1QnpHZrFeWrFF0+TfKaF6mfGjNJU
         nIpdlnRUbw6fGjLwgJV3ZSEF5GgH3fjdUJhkzo/S3G1nv72KH4Idb0Pu/Z5MXL6kPtq3
         Wk/A==
X-Gm-Message-State: APjAAAUYxYGl4gTvChCsu0bTjfxBmQ2Rl6mSmNO3oX2FYhtNFGkm62wu
	k+qohhz82zU7ny20RWpnHWw=
X-Google-Smtp-Source: APXvYqzraEQPc5POMrJC+p8/3xrw1F0DukH27XMxz8QgtMxf3sz7kFdVP/smBnYlwRoYT54RO6cVnw==
X-Received: by 2002:a17:902:6b07:: with SMTP id o7mr19693482plk.180.1565374880299;
        Fri, 09 Aug 2019 11:21:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d91:: with SMTP id d139ls20506161pfd.6.gmail; Fri, 09
 Aug 2019 11:21:20 -0700 (PDT)
X-Received: by 2002:a63:181:: with SMTP id 123mr19075709pgb.63.1565374879918;
        Fri, 09 Aug 2019 11:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565374879; cv=none;
        d=google.com; s=arc-20160816;
        b=rPQFjkZsbBCt3TMze7EgEpcShlbBiSdIeXfNXzCC1P7QZeEEQN9nscNIoQ74SWvYym
         GiDWTDVgmjBRe2rerplCLK6IiChkLHGQc9nS0AXj9ekyGdgCnOeEMJZFdJMM2fTzdGYC
         4S3sKx+/bKwqvcZQ1eQe1WKNJLkYlF97CdmZe4FEYrhFpC007JHRyOSHaL032nxhQkds
         ApUXVQ0S99hqYV0h6pcbkUWDZ9NxTDAVCt9a/9jY1nDXFVEXLIJYyYfjQXsEmBw+Njz6
         M296gA3aQsIXPR9YQNQ0iYgPrOP6iJlDD59wtmQb2gVK5YLXWUfJG8/3FSQIamepp9ng
         MchA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=AfTcG56zmwo+ldOTopXdEviJ01wH7yWHp2h8SCNYIzM=;
        b=YKhv+YJXtN77U7ccng56gODmOoi9n7GmiZkBwRKZ2pw5f7iIv+/KYEAeUEXfrGSu3C
         bfqXzJMZf0MEYnGcmnvSv1baWXcyKWJ2n5A3zzXp4aFqjw+J6A5bJ3vLS/ykRlv7WO7G
         o/sCiscg4xn1CRlX8orhLAix4mn+QsZiwJmH1xXx71BVNOfeivtgnFao13CjXibJfYWZ
         QcE9U8MM0Y3903T3wbyYvyZfRC4sbG+6FMiWnd7FXn/YE/DBSx5fxK/+g2xEX/Um9Wwy
         FUSnzpZyWYRUWDJbpzd7FmSSyB+IY+jyJ6lGX0pFcZw7XEM8yGIdNNHWYWhy3yrXQVOw
         NPJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p1bth4T+;
       spf=pass (google.com: domain of 3n7lnxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3n7lNXQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id y13si3942384pfl.3.2019.08.09.11.21.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 11:21:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3n7lnxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id e2so6837216qtm.19
        for <clang-built-linux@googlegroups.com>; Fri, 09 Aug 2019 11:21:19 -0700 (PDT)
X-Received: by 2002:a05:620a:685:: with SMTP id f5mr19419821qkh.238.1565374879207;
 Fri, 09 Aug 2019 11:21:19 -0700 (PDT)
Date: Fri,  9 Aug 2019 11:21:05 -0700
In-Reply-To: <87h873zs88.fsf@concordia.ellerman.id.au>
Message-Id: <20190809182106.62130-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <87h873zs88.fsf@concordia.ellerman.id.au>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH] powerpc: fix inline asm constraints for dcbz
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: mpe@ellerman.id.au
Cc: christophe.leroy@c-s.fr, segher@kernel.crashing.org, arnd@arndb.de, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p1bth4T+;       spf=pass
 (google.com: domain of 3n7lnxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3n7lNXQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

The input parameter is modified, so it should be an output parameter
with "=" to make it so that a copy of the input is not made by Clang.

Link: https://bugs.llvm.org/show_bug.cgi?id=42762
Link: https://gcc.gnu.org/onlinedocs/gcc/Modifiers.html#Modifiers
Link: https://github.com/ClangBuiltLinux/linux/issues/593
Link: https://godbolt.org/z/QwhZXi
Link: https://lore.kernel.org/lkml/20190721075846.GA97701@archlinux-threadripper/
Fixes: 6c5875843b87 ("powerpc: slightly improve cache helpers")
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Green CI run:
https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds/122521976
https://github.com/ClangBuiltLinux/continuous-integration/pull/197/files#diff-40bd16e3188587e4d648c30e0c2d6d37

 arch/powerpc/include/asm/cache.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index b3388d95f451..5a0df6a1b9dc 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -107,22 +107,22 @@ extern void _set_L3CR(unsigned long);
 
 static inline void dcbz(void *addr)
 {
-	__asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbz %y0" : "=Z"(*(u8 *)addr) :: "memory");
 }
 
 static inline void dcbi(void *addr)
 {
-	__asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbi %y0" : "=Z"(*(u8 *)addr) :: "memory");
 }
 
 static inline void dcbf(void *addr)
 {
-	__asm__ __volatile__ ("dcbf %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbf %y0" : "=Z"(*(u8 *)addr) :: "memory");
 }
 
 static inline void dcbst(void *addr)
 {
-	__asm__ __volatile__ ("dcbst %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbst %y0" : "=Z"(*(u8 *)addr) :: "memory");
 }
 #endif /* !__ASSEMBLY__ */
 #endif /* __KERNEL__ */
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809182106.62130-1-ndesaulniers%40google.com.
