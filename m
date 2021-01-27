Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQF2Y6AAMGQEV7OEGVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id BD155306663
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 22:38:09 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id ez7sf1998614pjb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 13:38:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611783488; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZSy0YWL6Vs1RkcGyuceLXDIZwnJBaXrDDvtZcX/7O+hEGPDbSFeiNVDdEB2XnzRR4r
         5s6Bzd4HCDKVJpboA5901ujXSAT/gmJBoQ7/M6xnaJsY+Qjv/2m5SGT21Rgvt+OB9bxu
         XNfsp485R8amInqXBNSxSGVljeAwJY/Uo1q2gbr6pKO9GRFThZqVB2qCJHyvRBg6grkX
         aSqTHGkae/3MtP9emlHCo5Jo0Ute8hG3AyfMNMYsuAZ05OP9O4fCHsZ3z6OwWo0Pi5Iw
         VSOKMAs+mUcw76gnWTKUGyEKR72+THvbzPNXZThxamVzTH+dpmgplknqiHj40qdTTfbA
         A2qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=OiFWRrrhT98w2NiIInCZnct+e+ez3ERBTAoxEwxlIgQ=;
        b=LuBtgyWKQvm20TCdLI8n/HfvCYWWJFCzRpNkiM58tXHYthRoz7LlJd1oJ+WS2x0xAD
         AwpcIT6Ry3NZnWSgo8foqAMyBGhZfMGvDBxuiraYKh+Hl4zL+XXh62R2QpPIJQuxbhAp
         LKwGBzav2GL7RRxf2Jgow3ngmxkXtt9n2JTXxzXunDlqcUAcHy1nZvgKpspZFoEVsjtc
         aR3YNg/V2RPXXcKHPIvycyqDgYdu/zppVvgVZCzQFHs/zTHKRxYCEgcndKmPwR076H7z
         NnvMWUcwrObFcu+gPY/OOPL64HOCd2BQDj7WEYHywjT1cyaTo9p/35tQWYpyFfwAyqNL
         92yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="S/rD5CXh";
       spf=pass (google.com: domain of 3pt0ryawkaecwmn1j3uwrn01pxxpun.lxv@maestro.bounces.google.com designates 2607:f8b0:4864:20::147 as permitted sender) smtp.mailfrom=3Pt0RYAwKAEcwmn1j3uwrn01pxxpun.lxv@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OiFWRrrhT98w2NiIInCZnct+e+ez3ERBTAoxEwxlIgQ=;
        b=av6v2Ed1Z+DJ5m8eCGQpyaDMN7d68zQeeFfnGvVxEduBz0F8pT2VbuSIlcjB2Uu6K+
         7zXxrTFkw8Uf8U4VnN9VFElZG8I5iLVFgXxndWi47fTNUrmZHDWjV1t1XypIQKQLfuU0
         +jqrXL2HF/958F3l2mU4x6EcnAQ4PM4qv5c1umV0yl+aPaUakyEFEngv9K+8O6fUh6js
         uLdlwKt59ehHr39yxPITfdGh0gWK166fqh6RCCBRyP7VEdXyve7lHmWMdqXF+wxH8Kqs
         aJnGatXa0kw139Xi0Dp1In9RUeaC4udhnoA8VJEc9zlKj7tAkusuIlB/qux2xYm+842s
         0CnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OiFWRrrhT98w2NiIInCZnct+e+ez3ERBTAoxEwxlIgQ=;
        b=f5jMKj33hoSMAEInRGNupTlcpqM8GEivWC2Ku6SCtJMLfXMAPJBkV/AmMGGbOim7iz
         iXqDZrzPf2PAtVX2e95EtYbl0Dsi0eN+J2m8E1Y4mt6mxv9TGYSunhmjDGKzPTC6yxBL
         tjUhsil/h7MVUbUF9DPVqHb8EEEvNPJA+o518Iq2+x3wJLgZonqBDpTotxccyziznHl2
         fCsnwgdf488oqNvTG9CqAcozoQukvB6aYgsIk7LxPTMWOck1AYPe7ndhK5QjpdZPydt/
         0TI8aTvxDVYxkIFPKPxja2p2Pe3AXvR25ZGlDhHhN0PbZvANzpr34dzBh6/FveQw+o4b
         Q+xQ==
X-Gm-Message-State: AOAM531ZdCeH4Sn4vm53xyoweqS6q9WZ5QvUlTOyhBc4mCBl2ESZAw+R
	JTWOZznQ1bTQ6BQu4tbQdWU=
X-Google-Smtp-Source: ABdhPJyT+MmZYWj3tZwtjKkrkP1r26tnBVWMVsXKIntfTpoZ2FhqfIRC1W4o7Q/nvOY7pLRyfLaufA==
X-Received: by 2002:a17:90b:fd3:: with SMTP id gd19mr7821396pjb.129.1611783488450;
        Wed, 27 Jan 2021 13:38:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:71c6:: with SMTP id m6ls1717295pjs.0.canary-gmail;
 Wed, 27 Jan 2021 13:38:07 -0800 (PST)
X-Received: by 2002:a17:90b:228f:: with SMTP id kx15mr7978516pjb.32.1611783487539;
        Wed, 27 Jan 2021 13:38:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611783487; cv=none;
        d=google.com; s=arc-20160816;
        b=XfbLv8Jkxd/x05feqBS0cixGMcavOREgD27pT948iUMuxWU07F5qrarzuHEVLCBTMK
         G1Xb0yHOSyxD//j5jzZ7lnwxgX2q2i671+laJaB2ATZqCccPIgVjdub8VQuoAzrYq0Pk
         0pUCiwsxZUBnkppZijNpvzyBLDouRsLdFGJJfOv3t1GZMSoCmXAwwJbzgvpxKyQZ4xUo
         IhVcnZYiSRI2nEAjVDjhNfI1CBNh8/Cbuoi4jmliFkoXfki0ES784kbtq/rIj/H5vy7x
         /7H56c8HyNXks+5vZeZJH8FGvBd1PA2fIYDM9Pv1dnV1q3MYqF/EzEx4oly4AhWLh9IY
         wGrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=ekowB/tJmpHLgpwSrmvGpFqYL4rEILPiPS86C+TFYho=;
        b=hRlSbBPcYiyvR2R8p6ZoRAPiWisCKcfAhdJ9HqlofzEtj+9+G87AykKz+yDjRaHBrg
         9BQtadebeI5JCBxFIhKJ5Sv5iqtDdgFM/g/UMQBJslv8Y1vuij4MLuXFWs3YY6nAJJNH
         ljj6GQ8hKgTxH8Sek35cTQhO/ApxOwJi1jlNaYEqk6nZ0SN3/l+rcZFmPiEpDZeV+71e
         aqOBinUV7ieNUpkoCWNjPsUnTbmJAB341OpSSi0og7+4znhwD8fp+qyfNx0aIZcnPCoh
         ZPwdy9lgTtWhcnYT6gfujToL/pvi/2yOJCugyyN5PgW/rU/kxh9K1xBUcfFv9JouWduS
         A5Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="S/rD5CXh";
       spf=pass (google.com: domain of 3pt0ryawkaecwmn1j3uwrn01pxxpun.lxv@maestro.bounces.google.com designates 2607:f8b0:4864:20::147 as permitted sender) smtp.mailfrom=3Pt0RYAwKAEcwmn1j3uwrn01pxxpun.lxv@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com. [2607:f8b0:4864:20::147])
        by gmr-mx.google.com with ESMTPS id w2si147840ply.1.2021.01.27.13.38.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 13:38:07 -0800 (PST)
Received-SPF: pass (google.com: domain of 3pt0ryawkaecwmn1j3uwrn01pxxpun.lxv@maestro.bounces.google.com designates 2607:f8b0:4864:20::147 as permitted sender) client-ip=2607:f8b0:4864:20::147;
Received: by mail-il1-x147.google.com with SMTP id i7so2898394ilu.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 13:38:07 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:cd81:: with SMTP id r1mr10481073ilb.252.1611783486812;
 Wed, 27 Jan 2021 13:38:06 -0800 (PST)
Message-ID: <000000000000304cc805b9e896d5@google.com>
Date: Wed, 27 Jan 2021 21:38:06 +0000
Subject: Clang-Built Linux Meeting Notes - Jan 27, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000304cb205b9e896d2"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="S/rD5CXh";       spf=pass
 (google.com: domain of 3pt0ryawkaecwmn1j3uwrn01pxxpun.lxv@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::147 as permitted sender) smtp.mailfrom=3Pt0RYAwKAEcwmn1j3uwrn01pxxpun.lxv@maestro.bounces.google.com;
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

--000000000000304cb205b9e896d2
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Jan 27, 2021
------------

Integrated as
Reverted for x86_64 for 4.19 due to ltp nanosleep 32b test
https://android-review.googlesource.com/c/kernel/common/+/1559459
Arm32b blocked on https://github.com/ClangBuiltLinux/linux/issues/1195,  
https://bugs.llvm.org/show_bug.cgi?id=48894.
LTO bugs
Debug info growth out of control
thinLTO duplicates CU entries
New objtool series for x86
https://lore.kernel.org/lkml/cover.1611263461.git.jpoimboe@redhat.com/
PGO bugs
https://lore.kernel.org/lkml/20210122101156.3257143-1-morbo@google.com/
Reported issues with hash mismatches?
-Wno-error=backend-plugin
Dwarfv5???
CI work
https://github.com/ClangBuiltLinux/continuous-integration2
https://gitlab.com/cki-project/pipeline-definition/-/merge_requests/1085
LinuxConfAU report
Slides:  
https://lca-kernel.ozlabs.org/2021-Desaulniers-ClangBuiltLinux_Whats_Next.pdf
Parsing bug Linus+Will
https://reviews.llvm.org/D95408
Fixed infinite loop observed on s390 build
https://goto.google.com/llvm-cr/D94996
Ubsan bug_on (need to chase these) allmodconfig failures
llvm 10 and llvm11 next
https://github.com/ClangBuiltLinux/continuous-integration2/issues/58
https://github.com/ClangBuiltLinux/continuous-integration2/issues/57
-Wunreachable-code-*
https://github.com/ClangBuiltLinux/linux/issues/1180
Objtool arm64
Requires a GCC plugin?
https://lore.kernel.org/lkml/a3393eb3-03a5-e4dd-f40c-b801cc60778e@linux.microsoft.com/T/#m44b90dc4ff63f86e76ac4ee68710dfe61b69720e

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000304cc805b9e896d5%40google.com.

--000000000000304cb205b9e896d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Jan 27, 2021<br /></h1><ul><li>Integrated as</li=
><ul><li>Reverted for x86_64 for 4.19 due to ltp nanosleep 32b test</li><ul=
><li><a href=3D'https://android-review.googlesource.com/c/kernel/common/+/1=
559459'><span style=3D'text-decoration: underline'>https://android-review.g=
ooglesource.com/c/kernel/common/+/1559459</span></a> </li></ul><li>Arm32b b=
locked on <a href=3D'https://github.com/ClangBuiltLinux/linux/issues/1195'>=
<span style=3D'text-decoration: underline'>https://github.com/ClangBuiltLin=
ux/linux/issues/1195</span></a>, <a href=3D'https://bugs.llvm.org/show_bug.=
cgi?id=3D48894'><span style=3D'text-decoration: underline'>https://bugs.llv=
m.org/show_bug.cgi?id=3D48894</span></a>. </li></ul><li>LTO bugs</li><ul><l=
i>Debug info growth out of control</li><ul><li>thinLTO duplicates CU entrie=
s</li></ul><li>New objtool series for x86</li><ul><li><a href=3D'https://lo=
re.kernel.org/lkml/cover.1611263461.git.jpoimboe@redhat.com/'><span style=
=3D'text-decoration: underline'>https://lore.kernel.org/lkml/cover.16112634=
61.git.jpoimboe@redhat.com/</span></a> </li></ul></ul><li>PGO bugs</li><ul>=
<li><a href=3D'https://lore.kernel.org/lkml/20210122101156.3257143-1-morbo@=
google.com/'><span style=3D'text-decoration: underline'>https://lore.kernel=
.org/lkml/20210122101156.3257143-1-morbo@google.com/</span></a> </li><li>Re=
ported issues with hash mismatches?</li><ul><li>-Wno-error=3Dbackend-plugin=
</li></ul><li>Dwarfv5???</li></ul><li>CI work</li><ul><li><a href=3D'https:=
//github.com/ClangBuiltLinux/continuous-integration2'><span style=3D'text-d=
ecoration: underline'>https://github.com/ClangBuiltLinux/continuous-integra=
tion2</span></a></li><li><a href=3D'https://gitlab.com/cki-project/pipeline=
-definition/-/merge_requests/1085'><span style=3D'text-decoration: underlin=
e'>https://gitlab.com/cki-project/pipeline-definition/-/merge_requests/1085=
</span></a> </li></ul><li>LinuxConfAU report</li><ul><li>Slides: <a href=3D=
'https://lca-kernel.ozlabs.org/2021-Desaulniers-ClangBuiltLinux_Whats_Next.=
pdf'><span style=3D'text-decoration: underline'>https://lca-kernel.ozlabs.o=
rg/2021-Desaulniers-ClangBuiltLinux_Whats_Next.pdf</span></a> </li></ul><li=
>Parsing bug Linus+Will</li><ul><li><a href=3D'https://reviews.llvm.org/D95=
408'><span style=3D'text-decoration: underline'>https://reviews.llvm.org/D9=
5408</span></a> </li></ul><li>Fixed infinite loop observed on s390 build</l=
i><ul><li><a href=3D'https://goto.google.com/llvm-cr/D94996'><span style=3D=
'text-decoration: underline'>https://goto.google.com/llvm-cr/D94996</span><=
/a> </li></ul><li>Ubsan bug_on (need to chase these) allmodconfig failures<=
/li><li>llvm 10 and llvm11 next</li><ul><li><a href=3D'https://github.com/C=
langBuiltLinux/continuous-integration2/issues/58'><span style=3D'text-decor=
ation: underline'>https://github.com/ClangBuiltLinux/continuous-integration=
2/issues/58</span></a> </li><li><a href=3D'https://github.com/ClangBuiltLin=
ux/continuous-integration2/issues/57'><span style=3D'text-decoration: under=
line'>https://github.com/ClangBuiltLinux/continuous-integration2/issues/57<=
/span></a> </li></ul><li>-Wunreachable-code-*</li><ul><li><a href=3D'https:=
//github.com/ClangBuiltLinux/linux/issues/1180'><span style=3D'text-decorat=
ion: underline'>https://github.com/ClangBuiltLinux/linux/issues/1180</span>=
</a> </li></ul><li>Objtool arm64</li><ul><li>Requires a GCC plugin?</li><li=
><a href=3D'https://lore.kernel.org/lkml/a3393eb3-03a5-e4dd-f40c-b801cc6077=
8e@linux.microsoft.com/T/#m44b90dc4ff63f86e76ac4ee68710dfe61b69720e'><span =
style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/a3393eb3-=
03a5-e4dd-f40c-b801cc60778e@linux.microsoft.com/T/#m44b90dc4ff63f86e76ac4ee=
68710dfe61b69720e</span></a> </li></ul></ul><br /><hr /><br />Sent by http:=
//go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000304cc805b9e896d5%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000304cc805b9e896d5%40google.com</a>.<br />

--000000000000304cb205b9e896d2--
