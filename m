Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHXV2CEAMGQEFUERDWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CC33E9A26
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 23:01:19 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id u8-20020a0cec880000b029035825559ec4sf1990693qvo.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 14:01:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628715678; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wx690HuMOjcwGcBjit+Ki8Uv/v9vWfvtbgf1UDXf1GSwPIoWC9zAxr1ns9cB1DFc45
         U0ht2BrwSXr5QKFut+K9Mgvy0w+QN+Ag4QBTmCLisf2fTiqIo+mzCDBR/4W+wJSYw1RE
         aIBk/BnIpkdCv+C9z5Hdc0z/OzlIEIg6YhmqSyf5gNQkIVYiksYpzyRFW/jp2nqiIcPx
         5gPfY0ccdP4HOWnb/VGe73Y3kwQym7agKizSJnIIN0UFSQxOvBD1CCasGtvHIf38CXU+
         m7feGT7qCJ9SDWso94e7rI0Tx1rLlaf0vfAUn/GRhdk8F3gDAKdmk2O1emWweKPPPXZG
         5zIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=OotL/uRBhgSpr3Nkh6+67i9i7S6KSJqRmea3YKK1VXo=;
        b=SgBiU1Han/fJpjWTifBHAEipUvwTaIXI/Z5APJzGY3SHx9bSLgVMUyPpglyLBoImqH
         oc0+JH5sfTq/LwMWK4rmZcVjCPfqZYOTI97NZ7A5GSJfVn7vCXLNCdNAW05ior+dCoyF
         j2PE3sLsC3V2Zid8MhG5PujqBb32H6726+w2/LsYNd51COTxx2cYPJjOdBI7pPTsKJCf
         tgYEOndWo2DXcQRzPZarhWTGLjJxWbmK387ndlkNoiGQQJQo+Do9De33HrxPKigVojGc
         clpxeEd4jZZOGiT1MuA6PkVtPqEhXGgMW5yQdmWbA96DqrX3BjZADmdffbqORLzTCRkF
         yDPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oFeFIt6u;
       spf=pass (google.com: domain of 3ntouyqwkahidtuiqkbdyuhiweewbu.sec@maestro.bounces.google.com designates 2607:f8b0:4864:20::d46 as permitted sender) smtp.mailfrom=3nToUYQwKAHIdTUiQkbdYUhiWeeWbU.Sec@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OotL/uRBhgSpr3Nkh6+67i9i7S6KSJqRmea3YKK1VXo=;
        b=SXTy5UP5YBp1dFWmTy5lO4V/B1IquobTOduRU61YykoAqzqMeRn1qTZd9O5zdpASG/
         Qi3V7vhrmhQhiJNEINV+UGpwploeXsUv8C+FUzZdhAyvfiKCROIhdnMPbphXO1aZ7Ot7
         AvATr9JkC1iQgQ0HQZ49RHhZrJf9lzEGHIxLytKnFsO5iUQmpK/NiJTobo+7tAiFoX/1
         jluDjiGdvQq/m90rDP6F96U/GzTmlhuvOxmqCSvyozGHp6z6dLTPp4JK+c/YdapmJcqq
         q8xgPkfipckvjBWD/hzAPyCDgwrJINAR6MzYFB+P2E1KYUwbeQ9Ti50F32Xk72WtF5hG
         379A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OotL/uRBhgSpr3Nkh6+67i9i7S6KSJqRmea3YKK1VXo=;
        b=jpfCa5NEr1Bhh4TKEv5aWQ/QYCmeNpQOZvfQ0I+X++D93ooPtAximi+jUubGaSraFn
         nSOOl5sSr3lGr6asB0AT5JE/EjtZL83khcwttot4n1Zvz3Xk0rL0u4hlM/2VIVbLdnjH
         OntrqW4C8DsW1oIIOdsnuasVkfbsuSnueCNz9GM64aToToI/zBcCDKfYIK+h+Y6dRfe2
         0HvqDLSfFrS1vG/HvhN/qpbGyrxqz5xxbZj5nI6I9rG3CzEogdx34DymEFkpvyEHS+v3
         3GYJlT9raLjkjVHtWEwRnO6oVkpECJJWSXZ9B6Q8JM2ghZt2/tQaEA0ggNm58K//eSJs
         CS/A==
X-Gm-Message-State: AOAM533BJh/rsOiSzg3ukP/rfadVOX0KwWfMvqEi0noNK4yeBr/kPr5t
	D69WCCwW8JJp//r3TnGqA9I=
X-Google-Smtp-Source: ABdhPJxkdS4G1N0xkU3t9lTVZZ8SQLd9HW5n+Ts/L/djHBMHpB8onXwrchRpH+F3k8DABNOGCY4IAA==
X-Received: by 2002:a0c:aacd:: with SMTP id g13mr592139qvb.20.1628715678262;
        Wed, 11 Aug 2021 14:01:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:71cc:: with SMTP id i12ls1479740qtp.9.gmail; Wed, 11 Aug
 2021 14:01:17 -0700 (PDT)
X-Received: by 2002:ac8:140b:: with SMTP id k11mr651585qtj.48.1628715677711;
        Wed, 11 Aug 2021 14:01:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628715677; cv=none;
        d=google.com; s=arc-20160816;
        b=KL0RznwQdUYaW5MV7KehzSybSM9tD4YGBF+fZpdm2Icmk7o3W5XcZ+nEvtcQ9qtjId
         CYLvAUNSEZZyMoJ3mZ1UupE4CAQCRJsDU+53eJng44N186ZXn8YnxYaXpHHhGoqgYYP0
         jqxD7QyVHsyp7jRJ+TkD0lWm6YuVz6Bhqmd/jIGN5zEdw8GYtoknK4UT6LDAiRcedkOx
         yFFLRjGGS+o8x6WT2lgusiHR6hAzoGDljAohffNzazgdVlqd36Ko93bzPxm9tvkBmzEa
         uzhsM525xJSoLdojxQ7XXAarRSYgDwlNiE3C63eNaoeOQ8HmErErZxn6WqxUoV1F9egq
         QcYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=wYtBBoR7x7vsTONZ5p9DBRBjuK950t3p/FlABEMGajI=;
        b=BS7RRzkQfGXLAWUq0smb+T4DTNM5asOX/2lN54Gsm2/zyXxEZFZ3cctQIUMSKhjyw2
         /HIFDR0dmVYUmhVQYulVFJ1rulkHpMZQMGWIUjJi3Y9y1oHqDWJoOtFGAXmKGVO8aynH
         R8NjQfEEVH4ndjWy7z5DWcrPTY1tlAi/Sjes2Fg1a6GlVcuXxii+x92M1GbTdHQ/IFA5
         S9g0DKX1jH5P2/MtyTdFv5kqsaS26K55Q1SICAC0VW5fKZFi7YaSszmrr9lkwMRXpWqO
         g64idl7B469a3bquEC4EK0/tlvdyUcqE+CzkOWUlsXWgVyAnB6mgAbu7NyPs3PVAPVI8
         oeww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oFeFIt6u;
       spf=pass (google.com: domain of 3ntouyqwkahidtuiqkbdyuhiweewbu.sec@maestro.bounces.google.com designates 2607:f8b0:4864:20::d46 as permitted sender) smtp.mailfrom=3nToUYQwKAHIdTUiQkbdYUhiWeeWbU.Sec@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com. [2607:f8b0:4864:20::d46])
        by gmr-mx.google.com with ESMTPS id s128si26623qkh.6.2021.08.11.14.01.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 14:01:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ntouyqwkahidtuiqkbdyuhiweewbu.sec@maestro.bounces.google.com designates 2607:f8b0:4864:20::d46 as permitted sender) client-ip=2607:f8b0:4864:20::d46;
Received: by mail-io1-xd46.google.com with SMTP id 123-20020a6b14810000b029058718ca54cfso2254036iou.10
        for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 14:01:17 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a4f:: with SMTP id u15mr271033ilv.251.1628715677079;
 Wed, 11 Aug 2021 14:01:17 -0700 (PDT)
Message-ID: <0000000000005ff85f05c94eebe5@google.com>
Date: Wed, 11 Aug 2021 21:01:17 +0000
Subject: Clang-Built Linux Meeting Notes - Aug 11, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005ff84b05c94eebe0"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oFeFIt6u;       spf=pass
 (google.com: domain of 3ntouyqwkahidtuiqkbdyuhiweewbu.sec@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::d46 as permitted sender) smtp.mailfrom=3nToUYQwKAHIdTUiQkbdYUhiWeeWbU.Sec@maestro.bounces.google.com;
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

--0000000000005ff84b05c94eebe0
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Aug 11, 2021
------------

ARMv4 LLD support discussion `--fix-v4bx`
https://bugs.llvm.org/show_bug.cgi?id=3D51422
cc-option-yn necessary?
https://groups.google.com/g/clang-built-linux/c/PL9lE_eKhhs
https://github.com/ClangBuiltLinux/linux/issues/1436
https://lore.kernel.org/lkml/20210811175647.3851629-1-ndesaulniers@google.c=
om/
https://lore.kernel.org/lkml/20210810204240.4008685-1-ndesaulniers@google.c=
om/
Blog Posts
Funded open source security work at the Linux Foundation
https://linuxfoundation.org/blog/funded-open-source-security-work-at-the-li=
nux-foundation/
Linux Kernel Security Done Right
https://security.googleblog.com/2021/08/linux-kernel-security-done-right.ht=
ml
Oops! Can=E2=80=99t require LLD for Android R=E2=80=A6
https://android-review.googlesource.com/c/platform/test/vts-testcase/kernel=
/+/1789650/
Death to CROSS_COMPILE
https://lore.kernel.org/lkml/20210802183910.1802120-1-ndesaulniers@google.c=
om/
https://github.com/ClangBuiltLinux/linux/issues/1399
Death to LLVM_IAS=3D1
https://lore.kernel.org/lkml/20210805150102.131008-1-masahiroy@kernel.org/
https://lore.kernel.org/lkml/20210806172701.3993843-1-ndesaulniers@google.c=
om/
https://github.com/ClangBuiltLinux/linux/issues/1434
https://github.com/ClangBuiltLinux/continuous-integration2/pull/181
__attribute__((error(=E2=80=9C=E2=80=9D))) __attribute__((warning(=E2=80=9C=
=E2=80=9D))) (Nick) for =20
BUILD_BUG and friends
https://lore.kernel.org/lkml/20210802202326.1817503-1-ndesaulniers@google.c=
om/
https://reviews.llvm.org/D107613
https://reviews.llvm.org/D106030 (WIP)
Distro configs now in CI (Fedora, Suse, Arch)
https://github.com/ClangBuiltLinux/continuous-integration2/pull/172
CFI fix for inline asm references to static functions
https://reviews.llvm.org/D104058
https://github.com/ClangBuiltLinux/linux/issues/1354
LLVM13 CI coverage WIP
https://github.com/ClangBuiltLinux/continuous-integration2/pull/179
Sanitizer build+boot CI coverage WIP
https://github.com/ClangBuiltLinux/continuous-integration2/pull/178
CFI remove __typeid__ symbols from JT to aid debugging (Nick)
ASAN ctor/dtor needed to boot test aarch64
https://lore.kernel.org/linux-arch/20210731023107.1932981-1-nathan@kernel.o=
rg/
__builtin_object_size questions (Kees)
How to determine if something is a flexible array member?
int foo [0]; // no size, just a marker/symbol that=E2=80=99s addressable
int foo []; // flexible array member, malloc + additional size
Why can=E2=80=99t flex arrays be in union, or alone in anonymous struct?
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=3D=
kspp/memcpy/next-20210803/v2-devel&id=3D8725f84346c1be20ccb21aedb3e46f25e3a=
b9f3a
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=3D=
kspp/memcpy/next-20210803/v2-devel&id=3D0f28d9daf643a1110bc7536f590e60035ba=
17635

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000005ff85f05c94eebe5%40google.com.

--0000000000005ff84b05c94eebe0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Aug 11, 2021<br /></h1><ul><li>ARMv4 LLD support=
 discussion `--fix-v4bx`</li><ul><li><a href=3D'https://bugs.llvm.org/show_=
bug.cgi?id=3D51422'><span style=3D'text-decoration: underline'>https://bugs=
.llvm.org/show_bug.cgi?id=3D51422</span></a> </li></ul><li>cc-option-yn nec=
essary?</li><ul><li><a href=3D'https://groups.google.com/g/clang-built-linu=
x/c/PL9lE_eKhhs'><span style=3D'text-decoration: underline'>https://groups.=
google.com/g/clang-built-linux/c/PL9lE_eKhhs</span></a> </li><li><a href=3D=
'https://github.com/ClangBuiltLinux/linux/issues/1436'><span style=3D'text-=
decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues/1436=
</span></a> </li><li><a href=3D'https://lore.kernel.org/lkml/20210811175647=
.3851629-1-ndesaulniers@google.com/'><span style=3D'text-decoration: underl=
ine'>https://lore.kernel.org/lkml/20210811175647.3851629-1-ndesaulniers@goo=
gle.com/</span></a> </li><li><a href=3D'https://lore.kernel.org/lkml/202108=
10204240.4008685-1-ndesaulniers@google.com/'><span style=3D'text-decoration=
: underline'>https://lore.kernel.org/lkml/20210810204240.4008685-1-ndesauln=
iers@google.com/</span></a> </li></ul><li>Blog Posts</li><ul><li>Funded ope=
n source security work at the Linux Foundation</li><ul><li><a href=3D'https=
://linuxfoundation.org/blog/funded-open-source-security-work-at-the-linux-f=
oundation/'><span style=3D'text-decoration: underline'>https://linuxfoundat=
ion.org/blog/funded-open-source-security-work-at-the-linux-foundation/</spa=
n></a> </li></ul><li>Linux Kernel Security Done Right</li><ul><li><a href=
=3D'https://security.googleblog.com/2021/08/linux-kernel-security-done-righ=
t.html'><span style=3D'text-decoration: underline'>https://security.googleb=
log.com/2021/08/linux-kernel-security-done-right.html</span></a> </li></ul>=
</ul><li>Oops! Can=E2=80=99t require LLD for Android R=E2=80=A6</li><ul><li=
><a href=3D'https://android-review.googlesource.com/c/platform/test/vts-tes=
tcase/kernel/+/1789650/'><span style=3D'text-decoration: underline'>https:/=
/android-review.googlesource.com/c/platform/test/vts-testcase/kernel/+/1789=
650/</span></a> </li></ul><li>Death to CROSS_COMPILE</li><ul><li><a href=3D=
'https://lore.kernel.org/lkml/20210802183910.1802120-1-ndesaulniers@google.=
com/'><span style=3D'text-decoration: underline'>https://lore.kernel.org/lk=
ml/20210802183910.1802120-1-ndesaulniers@google.com/</span></a> </li><li><a=
 href=3D'https://github.com/ClangBuiltLinux/linux/issues/1399'><span style=
=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/linux/is=
sues/1399</span></a> </li></ul><li>Death to LLVM_IAS=3D1</li><ul><li><a hre=
f=3D'https://lore.kernel.org/lkml/20210805150102.131008-1-masahiroy@kernel.=
org/'><span style=3D'text-decoration: underline'>https://lore.kernel.org/lk=
ml/20210805150102.131008-1-masahiroy@kernel.org/</span></a> </li><li><a hre=
f=3D'https://lore.kernel.org/lkml/20210806172701.3993843-1-ndesaulniers@goo=
gle.com/'><span style=3D'text-decoration: underline'>https://lore.kernel.or=
g/lkml/20210806172701.3993843-1-ndesaulniers@google.com/</span></a> </li><l=
i><a href=3D'https://github.com/ClangBuiltLinux/linux/issues/1434'><span st=
yle=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/linux=
/issues/1434</span></a> </li><li><a href=3D'https://github.com/ClangBuiltLi=
nux/continuous-integration2/pull/181'><span style=3D'text-decoration: under=
line'>https://github.com/ClangBuiltLinux/continuous-integration2/pull/181</=
span></a> </li></ul><li>__attribute__((error(=E2=80=9C=E2=80=9D))) __attrib=
ute__((warning(=E2=80=9C=E2=80=9D))) (Nick) for BUILD_BUG and friends</li><=
ul><li><a href=3D'https://lore.kernel.org/lkml/20210802202326.1817503-1-nde=
saulniers@google.com/'><span style=3D'text-decoration: underline'>https://l=
ore.kernel.org/lkml/20210802202326.1817503-1-ndesaulniers@google.com/</span=
></a> </li><li><a href=3D'https://reviews.llvm.org/D107613'><span style=3D'=
text-decoration: underline'>https://reviews.llvm.org/D107613</span></a> </l=
i><li><a href=3D'https://reviews.llvm.org/D106030'><span style=3D'text-deco=
ration: underline'>https://reviews.llvm.org/D106030</span></a> (WIP)</li></=
ul><li>Distro configs now in CI (Fedora, Suse, Arch)</li><ul><li><a href=3D=
'https://github.com/ClangBuiltLinux/continuous-integration2/pull/172'><span=
 style=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/co=
ntinuous-integration2/pull/172</span></a> </li></ul><li>CFI fix for inline =
asm references to static functions</li><ul><li><a href=3D'https://reviews.l=
lvm.org/D104058'><span style=3D'text-decoration: underline'>https://reviews=
.llvm.org/D104058</span></a> </li><li><a href=3D'https://github.com/ClangBu=
iltLinux/linux/issues/1354'><span style=3D'text-decoration: underline'>http=
s://github.com/ClangBuiltLinux/linux/issues/1354</span></a> </li></ul><li>L=
LVM13 CI coverage WIP</li><ul><li><a href=3D'https://github.com/ClangBuiltL=
inux/continuous-integration2/pull/179'><span style=3D'text-decoration: unde=
rline'>https://github.com/ClangBuiltLinux/continuous-integration2/pull/179<=
/span></a> </li></ul><li>Sanitizer build+boot CI coverage WIP</li><ul><li><=
a href=3D'https://github.com/ClangBuiltLinux/continuous-integration2/pull/1=
78'><span style=3D'text-decoration: underline'>https://github.com/ClangBuil=
tLinux/continuous-integration2/pull/178</span></a> </li></ul><li>CFI remove=
 __typeid__ symbols from JT to aid debugging (Nick)</li><li>ASAN ctor/dtor =
needed to boot test aarch64</li><ul><li><a href=3D'https://lore.kernel.org/=
linux-arch/20210731023107.1932981-1-nathan@kernel.org/'><span style=3D'text=
-decoration: underline'>https://lore.kernel.org/linux-arch/20210731023107.1=
932981-1-nathan@kernel.org/</span></a> </li></ul><li>__builtin_object_size =
questions (Kees)</li><ul><li>How to determine if something is a flexible ar=
ray member?</li><li>int foo [0]; // no size, just a marker/symbol that=E2=
=80=99s addressable</li><li>int foo []; // flexible array member, malloc + =
additional size</li><li>Why can=E2=80=99t flex arrays be in union, or alone=
 in anonymous struct?</li><li><a href=3D'https://git.kernel.org/pub/scm/lin=
ux/kernel/git/kees/linux.git/commit/?h=3Dkspp/memcpy/next-20210803/v2-devel=
&id=3D8725f84346c1be20ccb21aedb3e46f25e3ab9f3a'><span style=3D'text-decorat=
ion: underline'>https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.=
git/commit/?h=3Dkspp/memcpy/next-20210803/v2-devel&id=3D8725f84346c1be20ccb=
21aedb3e46f25e3ab9f3a</span></a> </li><li><a href=3D'https://git.kernel.org=
/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=3Dkspp/memcpy/next-20210=
803/v2-devel&id=3D0f28d9daf643a1110bc7536f590e60035ba17635'><span style=3D'=
text-decoration: underline'>https://git.kernel.org/pub/scm/linux/kernel/git=
/kees/linux.git/commit/?h=3Dkspp/memcpy/next-20210803/v2-devel&id=3D0f28d9d=
af643a1110bc7536f590e60035ba17635</span></a> </li></ul></ul><br /><hr /><br=
 />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000005ff85f05c94eebe5%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000005ff85f05c94eebe5%40google.com</a>.<br />

--0000000000005ff84b05c94eebe0--
