Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPP5VHZQKGQE5VEWU6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id D81CC183895
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 19:26:06 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id d9sf3638734pjs.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 11:26:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584037565; cv=pass;
        d=google.com; s=arc-20160816;
        b=PlrQ9R2Iz5K+itZWr2kC1sgheKakPJQQQcXjLCBGZ+86vQefiC2M8P1oIyrNT2SqU0
         +ecNoD1PLQ2P/GEY0qdjj1QorfEh9rcET1zfD+wbwuOHHEF44QvwGOwjE4h8WPxHOQzI
         Ar+MiPvJw8lwKpAweePyyIOdDa7bLxfV03QEHi0zvRgECm4HmgeMftaihnlLuu9kzHJb
         2ksduSgwXtON8b9pIkp5sTtWGKm8hMKYNEhtxc8/+518+Kyvn5oCIGuVIFKubmtn32Hw
         vJT7Dbiiks1PL2xUgUp8wmNBIEO5uq7z+EYIsPaT86/ehqHHPSnejIev7qZWCI3g5VIR
         nMJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :references:in-reply-to:message-id:to:from:date:dkim-signature;
        bh=GcyapRg4MCL05n5P/3eAbw04F9c/gZgWjcAULRjC+Ck=;
        b=xJq2TmfiNkwGS3h5Gfa5Sxgg2OkLRn9dnj+WNWDZ3u4tCLeD9F4rNirGNL3Pj44alh
         IayVZR0ACKIeHhjYXs13K5sAyPvki6isoGJJNjQymMCB1HmxR17w4NhVE4i0jFjLhu18
         f27zo4sQrbgngZVVWno0s8Fm5hdTGY9S7zgl+ji3a5M+DYxzJ4v1AzedbRYtwF/ThB7P
         xZ/EXoinNEHWVmfc1PhszrXgPz+VNrTTSFGI8upuYj0ag5njijEsqLyJx/yXe2ecuOfk
         D1oySMuDQpT+ta5eHA1NDEy+RIwCjImvN0AosDi6UDzR6eX55CefAb1fqUIPIaVSyh4k
         uzlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iw2apAPD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::339 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GcyapRg4MCL05n5P/3eAbw04F9c/gZgWjcAULRjC+Ck=;
        b=kWPk3lEnoTHT332FzLvv7som2F/W1U63LVWUqLufwANmw2G3l3qFqKxjpNd983kcpc
         m9bommHVlN+TuH7F8ekBexQLmNFgjaiGGG4EXpDE5moJpL7q47vlVj7PMlL8mn+siRv8
         HTgpS+Rx3nlJK8rC+k7OGoByrngtIFir3cZ5YA07fX7j5oTXGScO+qqjKkKKy+Cu/C+V
         X+i7GnCXiYvQZDm/HRV2RWKvvwaGXk41ImectS5KGbC4va7eE2EqFjqD8yvZw7X9jofV
         kndGSaQaxY0cEg6HCrKhSa0ahU3CmlltRpGKDFGxswHstgfNH4f1THC5mB5v2YY6ql61
         r+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GcyapRg4MCL05n5P/3eAbw04F9c/gZgWjcAULRjC+Ck=;
        b=XPTjBkFjS/1gWq6ePa7W2hbSGyksp8VzxdItgzqVx3TQUgf918CcX3mObeP5IQPiNV
         TutoGGxX9TlW5RW/9cpnuDcpWEVziFVPlDxmB/sehHX0zrOlVXg4dU0C7g11zxmdfUvQ
         x19Ed/a3ZW9XCVG+9+V/ERC70j9qfZ6/wdqfB7ViBK2OwLVf31ohRZDdttQfRTwSJc7q
         AKO94eut6PmF6/zKYSGcAXR7idAyO7Zmr2/2++LXWfJQwuLlIn6fO8Y3bRyCYSPIsouC
         uI6RgjSq9IreOklOVo57ncFW9p7G1bPP5weSMzs4muTiD1ZxjfXXQbG7r/m3/ewh578W
         JdgQ==
X-Gm-Message-State: ANhLgQ2btgU41j8EIjC34ZxNORd1ou0vD3aRv8PGZbi2t0jk3CbtOCuw
	b9jr1EMDDeaxH5F8wJPiiMk=
X-Google-Smtp-Source: ADFU+vtwgV1rLqpTHSDWlS6w2inVLZqcqimpJEl3eVbdFR+U2UYyHwA/C1AhrsaJB28tLg/5jwzMLw==
X-Received: by 2002:a62:1b12:: with SMTP id b18mr9454143pfb.258.1584037565374;
        Thu, 12 Mar 2020 11:26:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4c8b:: with SMTP id my11ls3288314pjb.0.gmail; Thu,
 12 Mar 2020 11:26:05 -0700 (PDT)
X-Received: by 2002:a17:90a:1acd:: with SMTP id p71mr5729826pjp.112.1584037564935;
        Thu, 12 Mar 2020 11:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584037564; cv=none;
        d=google.com; s=arc-20160816;
        b=Bde7rA+1hvVVZURbd0NzY5hIkG9VNWRMaldyGctWT+JXkADp0LzywVBDvjEQ+5Kg5P
         3JKSQTREdGc0ZGjiQcTrGD4w5+WNmd+FIQYg2gTQ2cW0d8zZVSJ3R0ehKa0SuRuSYvpY
         EDXVaAqMq0NLJZ+vrwU7P+r0wVKc6S5gZFAMJQ78b3th3F4VBqKNCU00MUG/9D18aAl1
         SkhnqkaAWU5vddKU7BvxXN6/XQxtsBjiSpAS/uwrOKP0GmH0a0LIX6R4ttHcnoQiNwkH
         0lVIJdBm6Y8G8kOaeEK8vfvr2psfnfOCBiPyyYfdWUhheeo/opTJNVCP8hxN2hd7cCkq
         WbtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=PziWG6+lJrJW0KxjXix5ZLrJqjTlhGDWUzHIIhIKp1w=;
        b=SV+p0/pRPPGjVPwFjRwimZHphUSD2bzhZMt03YuXAojBrkBrE/9CzwZuxJ5w2UjD6r
         pJd83LzYNv5I4wLSZ13bt3cn8f/2oMgjUQ98KUVfUjkNb22flX3pIG2oQC4FfwPHtbFe
         6OsTHtKI2Zx5pOMxTHQqGxhXHml5z5JdP+RzUTvXYoS6ZG89v/diIR6ix3xeLbmXOCc6
         Spw+a2rdq+e1NlYY37EVImkVUzaovfBpmVGvvX+qp8mRhmeGmrhsfXbA/c+tYIPWgvuh
         em6AUgX7uUbDwYrvmJ77eivgJZGSRLIaiDPnAOieN9ojCpkHxM09uKg9Q8DpgNQbzDCa
         hCMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iw2apAPD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::339 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com. [2607:f8b0:4864:20::339])
        by gmr-mx.google.com with ESMTPS id y13si243820plp.0.2020.03.12.11.26.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 11:26:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::339 as permitted sender) client-ip=2607:f8b0:4864:20::339;
Received: by mail-ot1-x339.google.com with SMTP id 60so3950320otp.16
        for <clang-built-linux@googlegroups.com>; Thu, 12 Mar 2020 11:26:04 -0700 (PDT)
X-Received: by 2002:a9d:66d1:: with SMTP id t17mr7171025otm.235.1584037563823;
        Thu, 12 Mar 2020 11:26:03 -0700 (PDT)
Date: Thu, 12 Mar 2020 11:26:03 -0700 (PDT)
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-Id: <0a199b30-a447-49df-a665-b3f490794718@google.com>
In-Reply-To: <000000000000fd81c005a0ac77eb@google.com>
References: <000000000000fd81c005a0ac77eb@google.com>
Subject: Fwd: Clang-Built Linux Meeting Notes - March 11, 2020
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_162_1858793816.1584037563662"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iw2apAPD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::339
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

------=_Part_162_1858793816.1584037563662
Content-Type: multipart/alternative; 
	boundary="----=_Part_163_737056438.1584037563662"

------=_Part_163_737056438.1584037563662
Content-Type: text/plain; charset="UTF-8"



---------- Forwarded message ---------
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thursday, March 12, 2020 at 11:24:53 AM UTC-7
Subject: Clang-Built Linux Meeting Notes - March 11, 2020
To: Stephen Hines <srhines@google.com>, androi...@google.com 
<android-llvm@google.com>


Meeting: Hangouts Meet <https://meet.google.com/yjf-jyqk-iaz>

March 11, 2020

   - Issues with -fno-common flag. Nathan discovered it has to deal with 
   the device tree compiler (dtc).
      - Might be an issue with it being built by the host compiler, and it 
      might be broken for TOT gcc as well.
   - PowerPC patch from Christopher Leroy.
   - Broken compile-time assert for Intel (from last week).
   - Issue with const struct designated initializers.
      - Nick has an idea of how to fix this.
   - Parsing asm inline better - https://reviews.llvm.org/D75563
   - Nathan submitted his first patch to Clang - 
   https://reviews.llvm.org/D75758. Congrats! :)
   - 491 patches for converting fallthrough comments on the kernel.
      - Richard Smith ripped out comment parsing from Clang.
         - https://reviews.llvm.org/D73852#1901694
      - Symbol visibility issue for lib-y vs obj-y. Sparc had an issue 
   (Masahiro fixed) Last issue for x86 allmodconfig.
      - Now has hit an issue in MIPS.
   - RISC-V support needed in our CI.
   - 0-day bot and kernelci are both building configs with Clang.
   - Out of tree patches for the CI for -fno-common We do this sometimes to 
   fix really bad situations.
   - 2 operand assembly issue where 2 of them are zero, but can be solved a 
   few different ways.
   - Tuxbuild microservice from Linaro
      - Might convert some of our TravisCI.
      - YAML
      - Local builds
   

------------------------------


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0a199b30-a447-49df-a665-b3f490794718%40google.com.

------=_Part_163_737056438.1584037563662
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">-=
--------- Forwarded message ---------<br>From: <span dir=3D"auto">Nick Desa=
ulniers &lt;ndesaulniers@google.com&gt;</span><br>Date: Thursday, March 12,=
 2020 at 11:24:53 AM UTC-7<br>Subject: Clang-Built Linux Meeting Notes - Ma=
rch 11, 2020<br>To: <span dir=3D"auto">Stephen Hines &lt;srhines@google.com=
&gt;</span>, <span dir=3D"auto">androi...@google.com &lt;android-llvm@googl=
e.com&gt;</span><br></div><br><html-blob><br>Meeting: <a href=3D"https://me=
et.google.com/yjf-jyqk-iaz" target=3D"_blank" rel=3D"nofollow" data-safered=
irecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://meet.google.=
com/yjf-jyqk-iaz&amp;source=3Dgmail&amp;ust=3D1584123914841000&amp;usg=3DAF=
QjCNEqWiJUT1wekUtlUBRS-HtP--QUUQ"><span style=3D"text-decoration:underline"=
>Hangouts Meet</span></a><br><br><h1>March 11, 2020<br></h1><ul><li>Issues =
with -fno-common flag. Nathan discovered it has to deal with the device tre=
e compiler (dtc).<ul><li>Might be an issue with it being built by the host =
compiler, and it might be broken for TOT gcc as well.</li></ul></li><li>Pow=
erPC patch from Christopher Leroy.</li><li>Broken compile-time assert for I=
ntel (from last week).</li><li>Issue with const struct designated initializ=
ers.<ul><li>Nick has an idea of how to fix this.</li></ul></li><li>Parsing =
asm inline better - <a href=3D"https://reviews.llvm.org/D75563" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://reviews.llvm.org/D75563&amp;source=3Dgmail&amp;ust=
=3D1584123914841000&amp;usg=3DAFQjCNHPAFDTUFT5Dx99hwPPIYTPqMOlHw"><span sty=
le=3D"text-decoration:underline">https://reviews.llvm.org/<wbr>D75563</span=
></a></li><li>Nathan submitted his first patch to Clang - <a href=3D"https:=
//reviews.llvm.org/D75758" target=3D"_blank" rel=3D"nofollow" data-saferedi=
recturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://reviews.llvm.=
org/D75758&amp;source=3Dgmail&amp;ust=3D1584123914841000&amp;usg=3DAFQjCNHl=
SxiYgyZOovPPj_-jn9tr9RZf_g"><span style=3D"text-decoration:underline">https=
://reviews.llvm.org/<wbr>D75758</span></a>. Congrats! :)</li><li>491 patche=
s for converting fallthrough comments on the kernel.<ul><li>Richard Smith r=
ipped out comment parsing from Clang.<ul><li><a href=3D"https://reviews.llv=
m.org/D73852#1901694" target=3D"_blank" rel=3D"nofollow" data-saferedirectu=
rl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://reviews.llvm.org/D=
73852%231901694&amp;source=3Dgmail&amp;ust=3D1584123914841000&amp;usg=3DAFQ=
jCNHnL79RqHfpqY34n9wbvQuMXwuY2g"><span style=3D"text-decoration:underline">=
https://reviews.llvm.org/<wbr>D73852#1901694</span></a></li></ul></li></ul>=
</li><li>Symbol visibility issue for lib-y vs obj-y. Sparc had an issue (Ma=
sahiro fixed) Last issue for x86 allmodconfig.<ul><li>Now has hit an issue =
in MIPS.</li></ul></li><li>RISC-V support needed in our CI.</li><li>0-day b=
ot and kernelci are both building configs with Clang.</li><li>Out of tree p=
atches for the CI for -fno-common We do this sometimes to fix really bad si=
tuations.</li><li>2 operand assembly issue where 2 of them are zero, but ca=
n be solved a few different ways.</li><li>Tuxbuild microservice from Linaro=
<ul><li>Might convert some of our TravisCI.</li><li>YAML</li><li>Local buil=
ds</li></ul></li></ul><br><hr><br><br></html-blob></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0a199b30-a447-49df-a665-b3f490794718%40google.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/clang-built-linux/0a199b30-a447-49df-a665-b3f490794718%40google.com</a>.=
<br />

------=_Part_163_737056438.1584037563662--

------=_Part_162_1858793816.1584037563662--
