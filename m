Return-Path: <clang-built-linux+bncBAABBCF74GCQMGQE2Q72GWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F38399955
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 06:50:18 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id s14-20020a63450e0000b029021f631b8861sf3200528pga.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 21:50:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622695816; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2sTB05Vp1a5dib2quzMDqteOC5klwVR/Jr2g0ldtPA01cuelo61mP2q9euFkKti9c
         tDpP2+96JzwgbUKG2R4ulDG6JiVigR42Isc8KQlHuk7UrJEl8235h6WT+Aywg2cWLLmP
         Fz5PXvfdgvUJJZieUKhHKmrKTmvjAV/SIqc+AlPDcMh6ZMTdaUtnIKmISZ1nNIpVIe1M
         evWxmdE0AGxsNXa4jvtHWDr1ERTYqd1uOFpIykB4qtt2NeW7+xWjkl2ngRMdcdHkSE1T
         nDvdSqSP48z1bwDatrTAdE1rGosOE/ED0TxBpJwsj1+75oWDc4t8CDoxFFOPVselVq8Q
         jTJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:from:mime-version:in-reply-to
         :subject:to:message-id:content-transfer-encoding:sender
         :dkim-signature;
        bh=m2h5aUnwXojFy6gVagiC2fiuZm10crQTzpj4DAlV8zs=;
        b=oPhtfc8veKyClTMZYbfJ8nRBMdYI2qMTmWVb1K7R0K1V/9zF67kfFt7GgEZ5xk+JXT
         rdKhi1zxbQuSVRi8ctgpqz/GTTQUpy2BAn9h1lxetdTCTSjFSdg3Jgih4WyeQn9FeWSz
         gJgpO+O0U9PzaEiNKMzylCjimt8cUeic+UCOb+uHBASnRzjsYWLdHY2JJHe2vMvjwqHt
         IEjlJQTE9dFGj9rJt6/Yaxjaxs6/kvzXFclLFJGJQdN+EgdNkAody5rZkiu5W2p5c4oB
         Jdji1vFT4NWKg4CrQLyEebhV4b6eLMa31+PitWhZmzQBJyzDe3M9m9JCZ3y/CIrG3PdJ
         sPxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as permitted sender) smtp.mailfrom=wanjiabing@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:message-id:to:subject:in-reply-to
         :mime-version:from:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m2h5aUnwXojFy6gVagiC2fiuZm10crQTzpj4DAlV8zs=;
        b=WJpJimmatlat4NrlggwHNsq0ZEl9RCI8c3I9CC9iL121JzLliEhtKWqleiY2+uLHJ7
         NJso2GuLIEtcq06kgdzLR0YPKYn5Q5n3tZwO0bnyC+2DrEv1LXzZ43T8v6X5GTBajyJx
         LHqvrihqdPqVZK/C8eXXre6htKdaDf5MhKFMlB6a3MmZQiCl46lcnwRjQYuXt9ccMSn8
         2AIcpHzIpuZXLS42KwwJUetT9uqJtVq3Tn1JWbMz5prpBKipJjL17c+UaHecLbauNaF5
         yTjHxgp441+KlcVs/QQZJAS7v2m6SXc7JHGLyq8CpHQBdXzDQKeL4X+uyMBOn32qhC+M
         uAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:message-id:to
         :subject:in-reply-to:mime-version:from:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2h5aUnwXojFy6gVagiC2fiuZm10crQTzpj4DAlV8zs=;
        b=p/0imzWFaPsC7gVgdHzoC4/Mcm/SPLhb8Pc7ssL2yiFtAelLUMoKX6yxhWG25TdTrc
         2n6Us2anYSzgpyiOpT/z5t5hFtXugtKMfdQHe5h3TTjuZKN3cx8aXET6Ip9ypHFxarop
         bZRDVFBAFlPJdmsP6r5ZgJsC9YndcdWR9gRqaJJNqN7mYV3jRKAoojEo1fb0mJSlIwJo
         5mbXEVJkOif4Pr0RIO9TU3C9ixQLpsaS2l3a8RrCmGn1J3i4WQ5MlFl4bbPIzuLmS6aY
         SEYU1FasU3FVsNwaUJSnnN4RAI7/qkchpJFdDRxPBHs0klYECuLM78p7i5dpm1RnbPGE
         nQ5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rFAdI4SDVdhOsFRMPVmUp+wCS5jdzZgEcyxaojYzoMtDY1rlO
	w26gU0njBLVBss0QYFEcj+w=
X-Google-Smtp-Source: ABdhPJy1tEArUEDT6MT8JJEPHb3ZrepOnXEV2nSMYvNXMa2b/mTOZ1gX3VSUlr2o9m7S8/+KxCoUKQ==
X-Received: by 2002:a17:90a:de09:: with SMTP id m9mr33327549pjv.41.1622695816314;
        Wed, 02 Jun 2021 21:50:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1dd4:: with SMTP id d203ls1019195pfd.2.gmail; Wed, 02
 Jun 2021 21:50:15 -0700 (PDT)
X-Received: by 2002:a63:1c52:: with SMTP id c18mr37999761pgm.258.1622695815851;
        Wed, 02 Jun 2021 21:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622695815; cv=none;
        d=google.com; s=arc-20160816;
        b=EJ1MWHOJD3lglLgSNIWYmNMNo7X8KgPuw6h+87Eizfn7F6+c9e0tOk9tyFlJhBsE8a
         zYqn/mM6ecdOMLIaEvmVIiE75aJrQayRdJdGUiuvZ4HY0g0nqMZtzKeDXHVxDemJELmV
         BsRHUpIuk3kcCAlQZbMNctfdUX2RZqvQ9N/HwNP9W4zvxZYiKZI+Ji/MgF1DCgcL5jaD
         9xyOfE9E703+1flPWFI+xCrNxDr8/znL+FtKBzTztx4NuIaXuucDsDjeC50g9K68fOhV
         w8NpVP8XueBr55eMnc2rsotgw51fXoqNa59EgzFDIyhU6AUVXBsXJJ2UqbQrP1Dhy4EA
         qJHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:from:mime-version:in-reply-to:subject:to:message-id
         :content-transfer-encoding;
        bh=/qgce8GfTRMncwigbX+ocpuFR6i6+4/2SZce1Wsi8Hs=;
        b=G66pX/qYWawZW3DHjrhpdLgL9IEK7KOfhc3S60XYtLrzJ5i08nOThJnEMGNx8A2Ya1
         Q5wYH7FN3xXa6e1LLEp2g557CgBxQfwkl/sY8Elao3zsHqC1jmfhAtyrK7X6l8F4AEXV
         Ddh29i8geBGaaSHPfdJGo7uQldZAATZGbQLbuTvxaUclE6RuaiyFZbg0/SUC3WB2mtke
         oAlMKHhJUROPL13L7o9XaoVbP+KlqBptvE++iVR3wmcfTpFvhYizM+vILn4Yzh5yqGTD
         3gEPwig/C5kYd2878dUfK/pM7CG65mCxTgWU0DZDA2m/tmQj2JDjBFcRJsqRcrnQuZeO
         RHOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as permitted sender) smtp.mailfrom=wanjiabing@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
Received: from mail-m17641.qiye.163.com (mail-m17641.qiye.163.com. [59.111.176.41])
        by gmr-mx.google.com with ESMTPS id mm4si154953pjb.2.2021.06.02.21.50.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Jun 2021 21:50:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as permitted sender) client-ip=59.111.176.41;
Received: from vivo.com (localhost [127.0.0.1])
	by mail-m17641.qiye.163.com (Hmail) with ESMTP id C5B696012C;
	Thu,  3 Jun 2021 12:50:12 +0800 (CST)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-ID: <ACYAbADLDo5nvv4af7zOLqqA.3.1622695812793.Hmail.wanjiabing@vivo.com>
To: Alex Shi <seakeel@gmail.com>, Alex Shi <alexs@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Wu XiangCheng <bobwxc@email.cn>, Fangrui Song <maskray@google.com>, 
	Bernard Zhao <bernard@vivo.com>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	clang-built-linux@googlegroups.com
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSF0gW3YyXSBkb2NzL3poX0NOOiBhZGQgdHJhbnNsYXRpb25zIGluIHpoX0NOL2Rldi10b29scy9rYXNhbg==?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 58.213.83.158
In-Reply-To: <69008e54-003a-eeb5-75f8-96e03f37d2df@gmail.com>
MIME-Version: 1.0
Received: from wanjiabing@vivo.com( [58.213.83.158) ] by ajax-webmail ( [127.0.0.1] ) ; Thu, 3 Jun 2021 12:50:12 +0800 (GMT+08:00)
From: Jiabing Wan <wanjiabing@vivo.com>
Date: Thu, 3 Jun 2021 12:50:12 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
	oVCBIfWUFZQh1IHlYYSE9PHRlKTRlPTRhVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
	hKQ1VLWQY+
X-HM-Sender-Digest: e1kJHlYWEh9ZQU1PS0lLTkJJT01MN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
	WUc6OCI6GTo*Nz8UThUNDU8aHUwBNDcKCjpVSFVKTUlJTUJOQ0pISUlDVTMWGhIXVQwaFRESGhkS
	FRw7DRINFFUYFBZFWVdZEgtZQVlOQ1VJSkhVQ0hVSk5DWVdZCAFZQU9DTkw3Bg++
X-HM-Tid: 0a79d0351ed6d997kuwsc5b696012c
X-Original-Sender: wanjiabing@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as
 permitted sender) smtp.mailfrom=wanjiabing@vivo.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=vivo.com
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

=20
> Re: [PATCH] [v2] docs/zh_CN: add translations in zh_CN/dev-tools/kasan>>H=
i Jiabing,
>
>Thanks for translation! The contents are generally fine.=20
>I tried the patch with scripts/checkpatch.pl found there are lots errors

Hi,Alex,

Oh, that is strange.

In my ubuntu server, I ran scripts/checkpatch.pl and got:

When Documentation/translations/zh_CN/dev-tools/kasan.rst
"total: 0 errors, 0 warnings, 431 lines checked"

When 0001-v2-docs-zh_CN-add-translations-in-zh_CN-dev-tools-ka.patch.
"WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
#41:=20
new file mode 100644
total: 0 errors, 1 warnings, 445 lines checked"

No errors and just one warning.
So I think there was a problem with your platform or downloading?

If there were no problem, I would check my email client again ;)

>---
>...
>ERROR: DOS line endings
>#552: FILE: Documentation/translations/zh_CN/dev-tools/kasan.rst:430:
>+^M$
>
>ERROR: trailing whitespace
>#553: FILE: Documentation/translations/zh_CN/dev-tools/kasan.rst:431:
>+.. _KUnit: https://www.kernel.org/doc/html/latest/dev-tools/kunit/index.h=
tml^M$
>
>total: 432 errors, 1 warnings, 445 lines checked
>---
>
>and the lines in the patch are not aligned on 80 chars, (40 chars for Chin=
ese,
>since one Chinese char could take 2 positions. )
>Thanks
>Alex

OK, great tips for me.
I'll fix them in v3.

Thanks,
Jiabing

>
>On 2021/6/2 =E4=B8=8B=E5=8D=888:56, Wan Jiabing wrote:
>> Add new zh translations
>> * zh_CN/dev-tools/kasan.rst
>> and link it to zh_CN/dev-tools/index.rst
>>=20
>> Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
>> ---
>> Changelog:
>> v2:
>> - Delete spaces surround with English words.
>> ---

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ACYAbADLDo5nvv4af7zOLqqA.3.1622695812793.Hmail.wanjiabing=
%40vivo.com.
