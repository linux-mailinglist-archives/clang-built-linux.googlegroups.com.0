Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBI4LQX3QKGQEPP3VLLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBF71F5D4E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 22:42:12 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id y9sf982652edr.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 13:42:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591821732; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZ03YojYGk5pw1hHTKiMkzw7aMUaY22RjQ0cSX3L5TooDiNp9uRJGlecL/wB1Hyj1r
         Wxvc+fMg2kSDz2JHECPjK0Xb7foEn+yEWbUBe5ZPn7cWdiPcwHOqdlvXMihtOxugDWi3
         63DE8TlTvfo0AJ9evcdwlq0AGfbKekVyHUMccSFRgHwBjbCuTS/bTZ1gYyl/oaFcJwBF
         4x+DajrvKzFeIBt1jpKZoAoHhT7CANoL7XDWekzdfkfOCxoEyS8H2v+C9ahx8Cfb3LTd
         0o9Jl/e/cmg51Zd1Mii/TZgPLMP3spJs3n+3QaeY7iaqrZ601tsnn1oCa5CuTbG9ZY7d
         2AaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=0UnrNt3XLgZkoAyVsujDDRY1kMVSRb5RbeXedL8Q8v4=;
        b=dopPH/DbNyt4VSp7jhdm6YhJk2vUJR6gc7L/4wnUv1iQS6NNasybBNwZwBIVA+dV9f
         xdJV4a9zBbmdB6EUg9Spc4tveB5lJ358I16/qTimFUkX0/GFUQVYzSug/4MZH10wm73s
         nDHd5C02dRSR3jQjZP+UjmEP/xMH/CL8+SyjOVG5+oivho6EoDacy+vkBPe/xWyvF9go
         H1w8g184JRM2JyCVb7T2N69CnxweLoLR08Kdevnm9m0KzpGfxQfoOzdT2spdoLJT37Bf
         QbKlE2jwXAV8Nap9YymEeZepJ0cg61OgS5vLD3BhkWEHlD2BfYmidsdBcJWvzBQvgrZ9
         ic8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dhZUi5z7;
       spf=pass (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0UnrNt3XLgZkoAyVsujDDRY1kMVSRb5RbeXedL8Q8v4=;
        b=fWNJiRGbkkxIJIgqDb3mSyZcMMHrsdTvGXRsGpixz+/b8HVs3MVQJ+ZtBNXp1oL9N7
         CF30evU2qaEOADXfMXZNQDH4O2UWXhm15Oqh+hB9oxmhkCNc8uTnaOuKEE4Fh16FvQT/
         FiO5UnDmjKCnhYJ2oPpaD5tFLzbzicoZt+5mYxMhY5nt+j8I8BvwDBOdTRjvRedLCWQH
         bUDNtMMdfkk0WDm1jg47Uxv90Iow9RcIZA2PRJhNA57PzZS1VIkP98Aa7jb2+46cVvDV
         uKZzUY7ZmwrQtzoYwvW6+XN0OwntfQERNU7qn4Gin+RFvaNwDr5QP8ubIExxJ7w5XYDe
         DQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0UnrNt3XLgZkoAyVsujDDRY1kMVSRb5RbeXedL8Q8v4=;
        b=so/H/WNnofmB4BiTGpy655cAQLH+X1cNj4GjN0OizGzWvXetRU4EaB+oBKA5QDrR8s
         ivLb0TGqNVs/RXfsDj2bMioS0B7TA4TnvlTLJNlhbWrAfo+nk0ByBp4b7eGTDkg9W9kX
         XI8Of1rkYk2WjAIQnuiuDdYjaCx8vsKd8HGNOGCVmHSqBVKPiYDOXyMrRDhyl1a2cz/J
         RsHDHUsOrP4KFaaieTgz5Vogowti1CD6LvRbrWc3C0S8pz+i1e3U8OzG8txp5Ichl+ao
         i0theF7Mb6Egrid6MFe9BP0LKRdwcIFB9JOO8nNUnk3qpJtoxtZnn78CZ0TBeu55TMu1
         txLg==
X-Gm-Message-State: AOAM532J8ZQPE5BADOJAHiEOg9nd11u79I4jgRvP0hg6vnIIRGq/klO7
	uDeAJ6N4xV30cYIeXBft42g=
X-Google-Smtp-Source: ABdhPJzHA1annAJ2w/6tRJCfIX9uclcslMEUsJrHqcbvX4QBFXWNBkmwut9XYeqbimT4VVx0ALMLXg==
X-Received: by 2002:a50:ee04:: with SMTP id g4mr4020231eds.119.1591821731864;
        Wed, 10 Jun 2020 13:42:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8c6:: with SMTP id o6ls1555744eje.11.gmail; Wed, 10
 Jun 2020 13:42:11 -0700 (PDT)
X-Received: by 2002:a17:906:4989:: with SMTP id p9mr5362920eju.417.1591821731404;
        Wed, 10 Jun 2020 13:42:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591821731; cv=none;
        d=google.com; s=arc-20160816;
        b=pUQdEfwZSSjFzqhHIPkjgQGQWEn9oU+kiTdjp59UW+GmFt+awS0AxXMGTPn+wvpwre
         j44/mZGh+YA2irAunbW/ppNbPjWQSuLiVxWVq8AExXZ7RN1UQ0RPEP18SDL55xcdh95L
         boiLt8injS3X3hwOu4ZDlyNEwmXGM1g3tr21nsCu+7wCV2gGkw7uwpyOVrD3uJ+VaGTs
         SrYjaNJohJwPHtsPDlHTA8AxjzsjclaX2WFBtnuPGMnRufyqTci53idcB+Sqo9r0JSW6
         7Lqz4pJWqY9v4vMHbWiBqc5TxMWqoAZFFGCLXJQXIwMqlCr/QgEOm3rJQH3KDNp83tv8
         yVtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=godRcElDatq8Lg0BQzxQ2Tztbp8qr+c5yY2Y5T9leyw=;
        b=ksciOfdUL2SCBK4RJXAaquvDbjelr9zD8+A1i0p0fmOPMMPxXKeIwqjHp95Do10KCB
         mC4XnklKiYuR8w8MFzyiiS4PNtokyUDGVdXOHjacIggb0kN44n3bsIiFA3C1a21n2JNi
         0S4uRz6XMLyUCwM2cQYvkXvj5YxZ7a1yMyyURQ7Z6ZIFKSCyjeM5ySshoo0I/fJCmBA6
         s7PjirkOqS4j5iPCBgtGiNV4M0LZXGRLnYz9bFpY86ayX39hc6g5KE+/XmhpplVL0Ihn
         BeQhyRQ9R6oFDDpIBcdjE0nacWoBN2u+JoP0zkZ5M00X4VyKABoh1fXWDQFfsNlYoIHN
         d+lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dhZUi5z7;
       spf=pass (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id a23si43741edn.0.2020.06.10.13.42.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 13:42:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id 9so4229685ljv.5
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 13:42:11 -0700 (PDT)
X-Received: by 2002:a2e:9dcd:: with SMTP id x13mr2856205ljj.465.1591821730582;
 Wed, 10 Jun 2020 13:42:10 -0700 (PDT)
MIME-Version: 1.0
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Jun 2020 13:41:59 -0700
Message-ID: <CA+SOCL+ntBRGoA2qttMo=bt_VVKJMm8GEq+bfEoVvgq-j-Y1KA@mail.gmail.com>
Subject: Cherry pick 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
To: gregkh@linuxfoundation.org, sashal@kernel.org, stable@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Luis Lozano <llozano@google.com>, 
	Manoj Gupta <manojgupta@google.com>
Content-Type: multipart/alternative; boundary="000000000000cc7f3e05a7c0e0a7"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dhZUi5z7;       spf=pass
 (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000cc7f3e05a7c0e0a7
Content-Type: text/plain; charset="UTF-8"

Hello,

@Nick Desaulniers <ndesaulniers@google.com>  made a patch
(51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b) and it was accepted to mainline
as part of ClangBuiltLinux project to make the kernel compatible with
Clang's integrated assembler. Please consider cherry picking it back to 5.4
so that we can use Clang's integrated assembler to assemble ChromeOS' Linux
kernels.


commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
Author: Nick Desaulniers <ndesaulniers@google.com>
Date:   Thu Jun 4 16:50:49 2020 -0700

    elfnote: mark all .note sections SHF_ALLOC


Thanks,
Jian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2BntBRGoA2qttMo%3Dbt_VVKJMm8GEq%2BbfEoVvgq-j-Y1KA%40mail.gmail.com.

--000000000000cc7f3e05a7c0e0a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div><a class=3D"gmail_plusreply" id=
=3D"plusReplyChip-0" href=3D"mailto:ndesaulniers@google.com" tabindex=3D"-1=
">@Nick Desaulniers</a>=C2=A0=C2=A0made a patch (51da9dfb7f20911ae4e79e9b41=
2a9c2d4c373d4b) and it was accepted to mainline as part of ClangBuiltLinux =
project to make the kernel=C2=A0compatible=C2=A0with Clang&#39;s integrated=
 assembler.=C2=A0Please consider cherry picking it=C2=A0back to 5.4 so that=
 we can use Clang&#39;s integrated assembler to assemble=C2=A0ChromeOS&#39;=
 Linux kernels.=C2=A0</div><div><br></div><div><br></div><div>commit 51da9d=
fb7f20911ae4e79e9b412a9c2d4c373d4b<br>Author: Nick Desaulniers &lt;<a href=
=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt;<br>Date=
: =C2=A0 Thu Jun 4 16:50:49 2020 -0700<br><br>=C2=A0 =C2=A0 elfnote: mark a=
ll .note sections SHF_ALLOC<br></div><div><br></div><div></div><div><br></d=
iv><div>Thanks,</div><div>Jian</div><div><br></div><div><br></div><div><br>=
</div><div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCL%2BntBRGoA2qttMo%3Dbt_VVKJMm8GEq%2Bbf=
EoVvgq-j-Y1KA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2BntBRGoA2qttMo%3=
Dbt_VVKJMm8GEq%2BbfEoVvgq-j-Y1KA%40mail.gmail.com</a>.<br />

--000000000000cc7f3e05a7c0e0a7--
