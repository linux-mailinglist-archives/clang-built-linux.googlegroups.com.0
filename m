Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5XFS33AKGQEJO7AN3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2E81DC24E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 00:45:12 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id g15sf5214303qvx.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 15:45:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590014711; cv=pass;
        d=google.com; s=arc-20160816;
        b=gAFpIvu3i3bIIMioOY0lCD2WtgpMzBNIJmnTeynDCDHEjINbZV8YfMMWikQFjw2tqT
         F39eXGaOvDXZ/xtlseUVNQglJcDPq+wWPqYFTu82zj+YiokBHDsPhja8aAG8wxYYnme1
         mGCFCpCMD7UoPtvwWYjZlrwZe361zdASwdKdxpU0cLh6++Ca2DRTiK11mIek3tGKg6sg
         qVET4RzUsYZZcXvtTYTCdAuhgJIIKTUEq1neACRgcAL/8PdB3KqhlFkPSIsg+foUQg1k
         E2C18c8/D9+yYLQnlA+nFE3qDGTy3GMPKtaMsKbpGMVBgSETfht17DC8q3OD0U7XwoJR
         VCnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=eKWHf5CvZ1Ne2xZ0wZdDsbVRSzWmU094Zfka45KmiO8=;
        b=N9AGAh/rsJTMgMuJDrUQT8qyeC3sP40twVlM40NB5SxydOFqMqOWeCMFB48J7NLHCW
         mis7vyp2qCfQq9sM3UJlNf5wx6b+bTRASfAKsxZLWT5lmzdqozv0rjDz8dyHwniijkho
         Jy45z5aM8bUkBxs34uLJbOk+AOgdsVJevNIXVkBP9UaQQTbO6RAaiV47i0OTsbxz1l0M
         /HAWxEKrZ8yRDvhpJkPYdHXuTz0MCQP84o7SZHTvczZFFB5PrDVY5ofAKPkHAmm+VHnc
         hK3Jvtm2P1mVYC6EKeHQVBKNm2Z/GE7u5TGHIxZG8f1WQSQRrUXM4opsXxKGj+YZ+tsW
         g8og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QgD+4K3G;
       spf=pass (google.com: domain of 39blfxgwkag4zpqemgxzuqdesaasxq.oay@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=39bLFXgwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eKWHf5CvZ1Ne2xZ0wZdDsbVRSzWmU094Zfka45KmiO8=;
        b=c66nIhqwPeXdOBZERYsnwmTmYyRHB2pPSDtnPAeMSDsA5glx0vX3kBTHwrp8U7oDKV
         a3xzBm/TzxbDVMt/bwf+gn7VItABo595/vsw4pxDSaLEdNtqL1IpJgpM7NJLJnmJJeP5
         I7VR0UXdIMMh+IuT0dLLKSqFnaFq1vPp9BkV2LvGkIbwFK7cLMPQVFKHcBQiq+TZoTsn
         0/t2WRvY+X1J18f1LjxkcV8U5h2x2a7s1KR2V8/052ub0Rm1RsHhp8MnKVapo0B9Z/b/
         6A/F1Vqjqct+AV/nZsZmvF6Spw6Ep0gkebaNzrHDusST2o0VSxpJ2mRTS8HAe0JhI4BH
         g+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eKWHf5CvZ1Ne2xZ0wZdDsbVRSzWmU094Zfka45KmiO8=;
        b=dluFXS6ZTCadeQpnpzIBGZhgJtoNgWeJ47uuwdA6tPLT2kKJOQgh2CaHJhqYhBgtWs
         u5CuxijNRe2np1XLPZAqRrukUxPqWgJgLMlR1PS0dC7H7ANKnAQlxwzRTIOYWHsS1nLc
         etatuQ74YNrU8m6a38eEaU/wvCi6zFyJCW3pN8ypJy8mT5wH8ugl93QqHz+zqovWjoKW
         aH953pBz3GK/kbSfjY7UYMwFTG4RG1hhc5LGNIONF50WLhJFn3gPFWFN4HXnxjuUVHTa
         DEMXBhQBATM2gwCKMJeHkMw3Vvm2lSda/h0/rHg9jrYYhf1c6kDr8YTXReW3cCsM79Jv
         okBg==
X-Gm-Message-State: AOAM530QydO0lwCAzjZ6kBLDtQSqvWMCgIee+X4O/6K/rd4JuHUcKQIg
	7Nki0syjOuK9IgPj6JfB7lc=
X-Google-Smtp-Source: ABdhPJxCxnUJTF9pZjbPruUJFQHSOVpbLd10nQmUq3/LximxS2rTlbTelOePn4k4+pBfIz87d2/u/Q==
X-Received: by 2002:ac8:4890:: with SMTP id i16mr7949331qtq.299.1590014710816;
        Wed, 20 May 2020 15:45:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5584:: with SMTP id e4ls42481qvx.3.gmail; Wed, 20 May
 2020 15:45:10 -0700 (PDT)
X-Received: by 2002:a05:6214:370:: with SMTP id t16mr7249492qvu.197.1590014710501;
        Wed, 20 May 2020 15:45:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590014710; cv=none;
        d=google.com; s=arc-20160816;
        b=stMutIiq3I85W/298FwNS1NNarOG27JR7i3sM9kGDUw+q3WmzrJIjUf/FPkKVLRFwY
         7hNw78H3qct37y6UNxajoncB8lKZvoWnjLKVJOeDFc/qGn0xTJ+wYm2rlrSydP5JixzN
         9n+Q25OkfLJUTYe1IL+hhEzVYuPcg5nrlTWsTNRT/wm2d663skEllP1lhmB7mSQHUyBf
         NfkLhNQZPtnxMMle2nk8OKunn7KbtunOfv97e/Ehei5iFtmPlMszqZsVWnpU5tq7U+3P
         CXDuNZ4Npf03eN69DEWB0xj2XlEopE16R0OvPytkj0w34oImpLxDmFcKBdKmyyx9Fc6t
         dc9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=UPJdVFXe0w4xKFVYRvlrgAMfuSq4a5T6aTxJdrhGNkw=;
        b=HdjMTHo5vnLmAXSAIk0iazTo0D6N7lf2M4tUDG1VsBPMncdtyd2t8B+AJoo/20zS2N
         +ihSKTtfxWkG2GDtNjFTbEHJVLdzkPtra+8U4IK1IMvAgUH5vpU/z3EuuR2ZddcCMLDP
         owTeJDpI0ZHlQ91MADk190sq3LJaVog69BhFoelroW/5yy6ZngfqkorhS5Kguhb5fedX
         VGgwTZICgf6S5c52OEfYARUKD644DurTjbsCN271ZVI4KAJhla/PZZAl6AimEBAckqJV
         ncrJJfY4DE1mRVuDKdiCoDWj67GiLwvLEu5ba8wOOk5M1GrTFeNx5HWdkRFKoLy926L3
         wAmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QgD+4K3G;
       spf=pass (google.com: domain of 39blfxgwkag4zpqemgxzuqdesaasxq.oay@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=39bLFXgwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa45.google.com (mail-vk1-xa45.google.com. [2607:f8b0:4864:20::a45])
        by gmr-mx.google.com with ESMTPS id c186si277824qkb.7.2020.05.20.15.45.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 15:45:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 39blfxgwkag4zpqemgxzuqdesaasxq.oay@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) client-ip=2607:f8b0:4864:20::a45;
Received: by mail-vk1-xa45.google.com with SMTP id 188so2064964vkz.19
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 15:45:10 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a67:5ec6:: with SMTP id s189mr5588389vsb.188.1590014709876;
 Wed, 20 May 2020 15:45:09 -0700 (PDT)
Message-ID: <000000000000f8d59a05a61c25de@google.com>
Date: Wed, 20 May 2020 22:45:09 +0000
Subject: Clang-Built Linux Meeting Notes - May 18, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000f8d57d05a61c25db"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QgD+4K3G;       spf=pass
 (google.com: domain of 39blfxgwkag4zpqemgxzuqdesaasxq.oay@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=39bLFXgwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--000000000000f8d57d05a61c25db
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


May 18, 2020
------------

Cuttlefish ODR violation (Bob):  
https://lore.kernel.org/lkml/20200515180544.59824-1-inglorion@google.com/T/#u
Compressed debug info (Nick):  
https://lore.kernel.org/lkml/20200504031340.7103-1-nick.desaulniers@gmail.com/
x86 32b series (Nick reviewing):  
https://lore.kernel.org/lkml/CAKwvOdmak_L9Rp8FQ+N6-N9vWGH3M-jjP+XJTGUTeYCG9N_dBQ@mail.gmail.com/T/#t
x86 akpm patch:  
https://ozlabs.org/~akpm/mmots/broken-out/x86-bitops-fix-build-regression.patch
ppc qemu:  
https://groups.google.com/g/clang-built-linux/c/6W3Ee6PByyg/m/bVt-VkJ6AwAJ
-Wmissing-prototypes (0day bot has enabled W=1)
Kcsan moving to clang-11 only
Builtin memcpy
-Winline-asm r7 waiting on input from gcc but blocking CrOS upgrade
Libabigail -fno-eliminate-unused-debug-types:  
https://reviews.llvm.org/D80242
Aarch64 assembler issue with expressions being treated as absolut (Jian)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000f8d59a05a61c25de%40google.com.

--000000000000f8d57d05a61c25db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>May 18, 2020<br /></h1><ul><li>Cuttlefish ODR vi=
olation (Bob): <a href=3D'https://lore.kernel.org/lkml/20200515180544.59824=
-1-inglorion@google.com/T/#u'><span style=3D'text-decoration: underline'>ht=
tps://lore.kernel.org/lkml/20200515180544.59824-1-inglorion@google.com/T/#u=
</span></a></li><li>Compressed debug info (Nick): <a href=3D'https://lore.k=
ernel.org/lkml/20200504031340.7103-1-nick.desaulniers@gmail.com/'><span sty=
le=3D'text-decoration: underline'>https://lore.kernel.org/lkml/202005040313=
40.7103-1-nick.desaulniers@gmail.com/</span></a></li><li>x86 32b series (Ni=
ck reviewing): <a href=3D'https://lore.kernel.org/lkml/CAKwvOdmak_L9Rp8FQ+N=
6-N9vWGH3M-jjP+XJTGUTeYCG9N_dBQ@mail.gmail.com/T/#t'><span style=3D'text-de=
coration: underline'>https://lore.kernel.org/lkml/CAKwvOdmak_L9Rp8FQ+N6-N9v=
WGH3M-jjP+XJTGUTeYCG9N_dBQ@mail.gmail.com/T/#t</span></a> </li><li>x86 akpm=
 patch: <a href=3D'https://ozlabs.org/~akpm/mmots/broken-out/x86-bitops-fix=
-build-regression.patch'><span style=3D'text-decoration: underline'>https:/=
/ozlabs.org/~akpm/mmots/broken-out/x86-bitops-fix-build-regression.patch</s=
pan></a> </li><li>ppc qemu: <a href=3D'https://groups.google.com/g/clang-bu=
ilt-linux/c/6W3Ee6PByyg/m/bVt-VkJ6AwAJ'><span style=3D'text-decoration: und=
erline'>https://groups.google.com/g/clang-built-linux/c/6W3Ee6PByyg/m/bVt-V=
kJ6AwAJ</span></a> </li><li>-Wmissing-prototypes (0day bot has enabled W=3D=
1)</li><li>Kcsan moving to clang-11 only</li><li>Builtin memcpy</li><li>-Wi=
nline-asm r7 waiting on input from gcc but blocking CrOS upgrade</li><li>Li=
babigail -fno-eliminate-unused-debug-types: <a href=3D'https://reviews.llvm=
.org/D80242'><span style=3D'text-decoration: underline'>https://reviews.llv=
m.org/D80242</span></a></li><li>Aarch64 assembler issue with expressions be=
ing treated as absolut (Jian)</li></ul><br /><hr /><br />Sent by http://go/=
sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000f8d59a05a61c25de%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000f8d59a05a61c25de%40google.com</a>.<br />

--000000000000f8d57d05a61c25db--
