Return-Path: <clang-built-linux+bncBD66FMGZA4INT3HEQUDBUBDFTGLVS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E1839AB80
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 22:06:49 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id a19-20020a1c98130000b02901960b3b5621sf1062547wme.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 13:06:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622750809; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAuwvNYQgcRb5EEPM054TbAZnMv506xnD27HAMg8ndmtAewWQObQl265EEmezlE5K7
         oaXlvAMCKye97ZO/EhZDiWWaoVvzhIWuhfGirDk0KqY+p8xlbclNS68K3FrauBD6T7f0
         xAXso6nV4TRW+LJ3XX95Q+/evgWBZbykau9EKNEZTnZvfoo751axPYtcYloVrXUFK5jU
         avuKtzoPq5XNTbt5BhHeL02bMR5A8F8wkzEujtJ98Jrg7ZzGr7icX5U9mx7JxQxnOvyf
         xC0eJdpPqTbCeEqkIRAotQNhBsSqqGg4/g1QISkQjFIWysVret6NTrUouiUZNZgqT2b/
         KXYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=d8WWGcMSqbExEjEHA91DQu3ae2LX8dSX8JQ4f0y29p4=;
        b=QBIEJcMEi+Gpc8QePY1NDmxhSxjNq3HVhzZ7+qwuH7VB+pGf02tkmOKIvIRpRffaaK
         4Ayc0umZ6C0D+PoRVXTmDvMRVmmoQqJ1X8aucug1Fvgzzot+bXSC8CxV55MBFeKulqJe
         lUPr724soCZEhs4LErLh1H8lqplS9aMd7EOLQCJE0i8yNwUmL01yXXjC5GyMGoSNw6bq
         WsUJrJVlRkP1Ypi1diho5+Nn44b0X+Er3Ct/B8kqPLtr0JRm92zurJ7cxPhOet5XPhQv
         crtZXHe0FEHGqucS9heWCZNd4FxLGoxr7rrqOepE5eis9XVjQoBdbMAq12m1H+em2+H1
         LnKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uu3eWsmV;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d8WWGcMSqbExEjEHA91DQu3ae2LX8dSX8JQ4f0y29p4=;
        b=i3wtzvrcP+8ePD/wHXNb/Bsd7P9zhgr09vd1OnF7uNhZ8ktZs0VsABmfDfTHkK3SfL
         5aJZyNu9RMViCVxZjA5hS0RF1OzER6xjEOExoip9mj0JGqydGQq0iM75+fiVPDQlvsqV
         UEnFAZ9GNfZ2m2bSsQdPZHEKpl5N5ewK5u4dFA8Jh+UwtEjHPlZjJIFt2Ux0I0pmmreX
         kRF/yinG2S/wJv/8zGWbiM7+Mr8MyIAm+mjD5MbLIsqtu3qoH6e3FWbLKIV5HXp88NjR
         dq3oH9DZlEsGGxdp4ZPzfnv+BId4/6OEmif3DsfKeknAcimQDuQR5Lbniob42k5MjHyg
         SLoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d8WWGcMSqbExEjEHA91DQu3ae2LX8dSX8JQ4f0y29p4=;
        b=JX2ny/x5tX29JZZyUnRk+KdHCTqL79JnyNyIIW96g0xviQ1NR8ZuU1mC9nYUEgUWyn
         DZaFypHtbmJPuw0nZQIDbR9KcCHGzwtrOvBCV2FDO/AkxS5zInB4hmwbuQkbqnRe0PoF
         pr8lcPImvS1cbvTxxlcYmxKLnuSdQ+mR9pHuslIvZB+BKu39ghySG6iNe8phrnIX5s2z
         UJpCn9GZZ6X9t7HnwTI8Ls7sW+t2Jab/4+o/OPqY4qE3caJq+nG6f6tC5exY6e0l4Cw8
         xv/tlN5xELsuP7vUILhnvNR/kEVQ2v4KaMl8VDRmDOqwXOYHwZjxC14M58vzYyIjeVdH
         GKWQ==
X-Gm-Message-State: AOAM5325mxciuxWXV8rDiuoRyJLZsY/MvN2/ksMGRlqVPkawqRdGhIDS
	g86t/KusPIpx48bZcgjCG8A=
X-Google-Smtp-Source: ABdhPJyNAfCJgaRNepYD16obRiSrO8mT0IsbQAVPa10cu9DEuSBsrYZFCICjFn+Em+Oc4yIwZMiIhQ==
X-Received: by 2002:a1c:e441:: with SMTP id b62mr210888wmh.36.1622750809312;
        Thu, 03 Jun 2021 13:06:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f52:: with SMTP id m18ls1106785wmq.0.canary-gmail;
 Thu, 03 Jun 2021 13:06:48 -0700 (PDT)
X-Received: by 2002:a05:600c:1c28:: with SMTP id j40mr194109wms.102.1622750808418;
        Thu, 03 Jun 2021 13:06:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622750808; cv=none;
        d=google.com; s=arc-20160816;
        b=HZaGzYtndYc4LIIJg7+VWDpFQ+snQR0PGHRQehlNYNaFjrWxf0CBDUw2LkiMKYsbVh
         2wzbSE/rtCdyuE7vvW4XrDTIlNv5g/NaN4RGW3YlWoM7qf4SfLy6BX4y5ij6DHwe6FeQ
         5GK8d61WIs7RVO4t0d08nlwCgPmbmGgUSwPA0gGaM2FUTBtFHy36x5Hvhv8n/j9evxa7
         Eo0OWIuUf0ybmfFdb4/uBQmjgqAh37Zs/CYVM7Walz/Z09RZSZtrU+5IaYubMrhKzNYj
         TmCqZ4pjmaNPF0UmPhzUIRhSk34sV6LjPPRxJ3a7vblOShl7ojoE+iIJxKjnSV03RrC6
         XdVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q1oPTSJvKksooz7U4V3W2mAaxZeTXYh9MioTQmzajKM=;
        b=nYsS3zthr2lruvv5zZNEEZwKc5ch3058Fjz82qFXhrXtjcbCBbh5OqFMl3Zb9ZPD4e
         DihOnvbzd+v5i1/6NeKYXNrb9bpMEOZDGVg4+RrvERKOvbbxstTFPxDHgbu4h2OmLpCl
         A+DxQxTm2PinG1IsTgKKnR2W7GAQw4QRgly7Z5G5SqhWcUln0rMHuYys/CjhMXBI6LfK
         HWNOQdV8vTEAqwx0ovIGoK/gIDMl8wbjyGmKr6lJxA8HFqVRKDrOMeOPvbu2EMPqQUnQ
         z5emJmlFp/8/WA3Ca1mBUzl98TEr+RbOTCQo2xMoc1rtNaXUBPXckcuJCTR/gnruYGyP
         5LLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uu3eWsmV;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id x8si92563wmb.2.2021.06.03.13.06.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 13:06:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id b9so10992416ejc.13
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 13:06:48 -0700 (PDT)
X-Received: by 2002:a17:906:4747:: with SMTP id j7mr927035ejs.419.1622750807845;
 Thu, 03 Jun 2021 13:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000016a83b05c3cdbf30@google.com>
In-Reply-To: <00000000000016a83b05c3cdbf30@google.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Jun 2021 13:06:36 -0700
Message-ID: <CAGG=3QW7dWNLfq-ZUCM2FDTw4DZiTAkw5WHTKTBcYD1C1Nm3Eg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - June 2, 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: android-llvm@google.com, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000007683e405c3e21d36"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uu3eWsmV;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--0000000000007683e405c3e21d36
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 2, 2021 at 12:48 PM <ndesaulniers@google.com> wrote:

> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet <https://meet.google.com/yjf-jyqk-iaz>
>
> June 2, 2021
>
>    - Planning second meetup: Friday September 17 2021
>    - Planning LLVM Distributors Conf: Thursday September 16 2021
>    - Series of fixes for PGO being posted
>    - (Nathan) fixes for Hexagon
>       -
>       https://lore.kernel.org/lkml/20210521011239.1332345-1-nathan@kernel.org/
>    - Riscv boot failure
>       - https://github.com/ClangBuiltLinux/linux/issues/1389
>    - Strange PGO failure
>       - https://github.com/ClangBuiltLinux/linux/issues/1388
>    - (Nathan) PPC breakage
>       - https://github.com/ClangBuiltLinux/linux/issues/1386
>    - Upstream regression reverted (worth chasing a reproducer?)
>       - https://github.com/ClangBuiltLinux/linux/issues/1385
>    - CFI boot failure on WSL2
>       - https://github.com/ClangBuiltLinux/linux/issues/1384
>    - (Nick) PGO crash (will ask upstream LLVM to revert)
>       - https://github.com/ClangBuiltLinux/linux/issues/1383
>    - M68k making progress
>       - https://github.com/ClangBuiltLinux/linux/issues/1387
>    - (Nick) still looking into section mismatch warnings
>       - https://github.com/ClangBuiltLinux/linux/issues/1302
>       - commit 4a3893d069b7 ("modpost: don't emit section mismatch
>       warnings for compiler optimizations")
>    - (Nick) Reverting android patches for -fuse-ld=lld and
>    -rtlib=compiler-rt
>       - https://github.com/ClangBuiltLinux/linux/issues/479
>    - (Jian) -Wa,-march
>    - (Bill) KASAN KVM crashes, potentially a fix on llvm to backport to
>    12.0.1 release
>
>
This turned out to be a non-compiler issue. Fixed by backporting
"31d78161a373bb47c6756d102bcf9685ea74889d: KVM: VMX: don't allow memory
operands for inline asm that modifies SP"

>
>    - (Tom) June 8 tentative cutoff date for clang 12.0.1
>    - (Gustavo) -Wimplicit-fallthrough down to ~25 patches on -next
>    - https://redshirtjeff.com/listing/linux-recompile-shirt?product=211
>
>
> ------------------------------
>
> Sent by http://go/sendnotes
>
> --
> You received this message because you are subscribed to the Google Groups
> "clang linux fellowship" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-linux-fellowship+unsubscribe@google.com.
> To view this discussion on the web visit
> https://groups.google.com/a/google.com/d/msgid/clang-linux-fellowship/00000000000016a83b05c3cdbf30%40google.com
> <https://groups.google.com/a/google.com/d/msgid/clang-linux-fellowship/00000000000016a83b05c3cdbf30%40google.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QW7dWNLfq-ZUCM2FDTw4DZiTAkw5WHTKTBcYD1C1Nm3Eg%40mail.gmail.com.

--0000000000007683e405c3e21d36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,sans-serif"><span style=3D"font-family:Arial,Helvetica,sans-=
serif">On Wed, Jun 2, 2021 at 12:48 PM &lt;<a href=3D"mailto:ndesaulniers@g=
oogle.com">ndesaulniers@google.com</a>&gt; wrote:</span><br></div></div><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div><a href=3D"http://go/clang-built-linux-notes" target=3D"_blank"><span s=
tyle=3D"text-decoration:underline">http://go/clang-built-linux-notes</span>=
</a><br>Meeting: <a href=3D"https://meet.google.com/yjf-jyqk-iaz" target=3D=
"_blank"><span style=3D"text-decoration:underline">Hangouts Meet</span></a>=
<br><br><h1>June 2, 2021<br></h1><ul><li>Planning second meetup: Friday Sep=
tember 17 2021</li><li>Planning LLVM Distributors Conf: Thursday September =
16 2021</li><li>Series of fixes for PGO being posted</li><li>(Nathan) fixes=
 for Hexagon</li><ul><li><a href=3D"https://lore.kernel.org/lkml/2021052101=
1239.1332345-1-nathan@kernel.org/" target=3D"_blank"><span style=3D"text-de=
coration:underline">https://lore.kernel.org/lkml/20210521011239.1332345-1-n=
athan@kernel.org/</span></a> </li></ul><li>Riscv boot failure</li><ul><li><=
a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1389" target=3D"_=
blank"><span style=3D"text-decoration:underline">https://github.com/ClangBu=
iltLinux/linux/issues/1389</span></a> </li></ul><li>Strange PGO failure</li=
><ul><li><a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1388" t=
arget=3D"_blank"><span style=3D"text-decoration:underline">https://github.c=
om/ClangBuiltLinux/linux/issues/1388</span></a> </li></ul><li>(Nathan) PPC =
breakage</li><ul><li><a href=3D"https://github.com/ClangBuiltLinux/linux/is=
sues/1386" target=3D"_blank"><span style=3D"text-decoration:underline">http=
s://github.com/ClangBuiltLinux/linux/issues/1386</span></a> </li></ul><li>U=
pstream regression reverted (worth chasing a reproducer?)</li><ul><li><a hr=
ef=3D"https://github.com/ClangBuiltLinux/linux/issues/1385" target=3D"_blan=
k"><span style=3D"text-decoration:underline">https://github.com/ClangBuiltL=
inux/linux/issues/1385</span></a> </li></ul><li>CFI boot failure on WSL2</l=
i><ul><li><a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1384" =
target=3D"_blank"><span style=3D"text-decoration:underline">https://github.=
com/ClangBuiltLinux/linux/issues/1384</span></a> </li></ul><li>(Nick) PGO c=
rash (will ask upstream LLVM to revert)</li><ul><li><a href=3D"https://gith=
ub.com/ClangBuiltLinux/linux/issues/1383" target=3D"_blank"><span style=3D"=
text-decoration:underline">https://github.com/ClangBuiltLinux/linux/issues/=
1383</span></a> </li></ul><li>M68k making progress</li><ul><li><a href=3D"h=
ttps://github.com/ClangBuiltLinux/linux/issues/1387" target=3D"_blank"><spa=
n style=3D"text-decoration:underline">https://github.com/ClangBuiltLinux/li=
nux/issues/1387</span></a> </li></ul><li>(Nick) still looking into section =
mismatch warnings</li><ul><li><a href=3D"https://github.com/ClangBuiltLinux=
/linux/issues/1302" target=3D"_blank"><span style=3D"text-decoration:underl=
ine">https://github.com/ClangBuiltLinux/linux/issues/1302</span></a> </li><=
li>commit 4a3893d069b7 (&quot;modpost: don&#39;t emit section mismatch warn=
ings for compiler optimizations&quot;)</li></ul><li>(Nick) Reverting androi=
d patches for -fuse-ld=3Dlld and -rtlib=3Dcompiler-rt</li><ul><li><a href=
=3D"https://github.com/ClangBuiltLinux/linux/issues/479" target=3D"_blank">=
<span style=3D"text-decoration:underline">https://github.com/ClangBuiltLinu=
x/linux/issues/479</span></a> </li></ul><li>(Jian) -Wa,-march</li><li>(Bill=
) KASAN KVM crashes, potentially a fix on llvm to backport to 12.0.1 releas=
e</li></ul></div></blockquote><div><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,sans-serif">This turned out to be a non-compiler =
issue. Fixed by backporting &quot;31d78161a373bb47c6756d102bcf9685ea74889d:=
 KVM: VMX: don&#39;t allow memory operands for inline asm that modifies SP&=
quot;</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><ul><li>(=
Tom) June 8 tentative cutoff date for clang 12.0.1</li><li>(Gustavo) -Wimpl=
icit-fallthrough down to ~25 patches on -next</li><li><a href=3D"https://re=
dshirtjeff.com/listing/linux-recompile-shirt?product=3D211" target=3D"_blan=
k"><span style=3D"text-decoration:underline">https://redshirtjeff.com/listi=
ng/linux-recompile-shirt?product=3D211</span></a> </li></ul><br><hr><br>Sen=
t by <a href=3D"http://go/sendnotes" target=3D"_blank">http://go/sendnotes<=
/a></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;clang linux fellowship&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-linux-fellowship+unsubscribe@google.com" ta=
rget=3D"_blank">clang-linux-fellowship+unsubscribe@google.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/google.com/d/msgid/clang-linux-fellowship/00000000000016a83b05c3cdbf30=
%40google.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank"=
>https://groups.google.com/a/google.com/d/msgid/clang-linux-fellowship/0000=
0000000016a83b05c3cdbf30%40google.com</a>.<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QW7dWNLfq-ZUCM2FDTw4DZiTAkw5WHTKTBcYD1=
C1Nm3Eg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAGG%3D3QW7dWNLfq-ZUCM2FDTw4DZiTA=
kw5WHTKTBcYD1C1Nm3Eg%40mail.gmail.com</a>.<br />

--0000000000007683e405c3e21d36--
