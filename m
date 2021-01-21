Return-Path: <clang-built-linux+bncBCZLRWEX3ECRBHNEUWAAMGQEXG7M47Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A562FE714
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 11:06:22 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id a85sf254953vsd.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 02:06:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611223581; cv=pass;
        d=google.com; s=arc-20160816;
        b=vddzhXAnY7MJWiThJPab+VcGeyiyTPi3I3PN5mZdlCYEODSYm/1a4j2lJ6FEzRwyJ0
         vRsuELZuo88U0sE8V2LHTn3o4+F7deEPJ/AtHAFKac4ZPlH06LSszRaRKSALWoj2VY21
         TarmToaFCKvQjSKPWRIksZ6FvgdAWw5KwvH0IS5CR/MLfVDvgeRSj6K8fvpNKSecrarH
         5Ufghmk84N4DadSt76dmSszHJSb6oe2CiW4R8f+zmNC45YQVKC+Ndz+1uZOBs/AukZ3X
         IZCOc9RqeevDOrbG6r+XOEper/ciEsw55x8WEpua2EkJ6E81VBp1y0JAZSn6QGj8MjZD
         v3dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=3hh7R67YT02nao1B4GZ12VgrFmdI9rvirPjS0go6lBo=;
        b=GNMCgWZYS7XtRjMtbZrjsXrGpiVAymPmmiYMmxGYNAxvTZ+4PjRQhAYtQ7eq7evfZg
         KLLYfsdiVUdCxzbbpgnW0CxkSkBZ3rvFJzlg835QaysdbCxiILxoOp3cZyfBWxS8QxYZ
         l6k52bNmHjy6fLoGRZ8ClapmJ7HinJHqC7zbsIHBRYY5ePyonH0a3lYgL29ZgtqaAGZr
         J9tjshgPKd1suKfvYqa1HrR7QfU2BO7+vGGr9qTMB3Om7sTvuZLF3TPk5EhV2+raeplu
         ZMqTrIA03LTF39sI7n/bUtA1eP1rv1F3QgAg1hgZ92FAKXJsUQxAzc7MhOiX/SnzzqvR
         e5lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=hQ9ZqKLY;
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3hh7R67YT02nao1B4GZ12VgrFmdI9rvirPjS0go6lBo=;
        b=tDsO2Md+XQsLu52Ask9fhkE96XM5Xdyp2TcfynpAkLUXGS2iyLSd5DmOd3WoxTI2ce
         DHBn9LF1q0YHKIuNCACv/g7wetsKB9KC+Eha+5i07XaqdcRMpUcKMpxrxI4sih2r8+cV
         HzO3Ym2WylVHx8mS3SYEzfHtzR/eWikGgyoqCj2XrLfYRRFjPI/G1Ev0hkhChU2rXS8z
         QQDAS7Gzljz7T2RjtkxG//C33XJlvvMh/sbHz5k6yymCjsnNiRKuxiQfFU9mOQqDBTT4
         S47kqyI6rSOaj4h9/kXeIXqELetJRfdrzjNXTu8VYtTyUitEba7aNcJWe3KsFzmUFx6z
         2KWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3hh7R67YT02nao1B4GZ12VgrFmdI9rvirPjS0go6lBo=;
        b=qxeO2LXeVPXlvguYPnzohRqvhoXekYs8L8HykDoOEv5YTwM7NW0BXDk9RzHeq5L1iM
         k/EKY2kGmLurFJT6O6DF5GGloI8/h0Obt5wO/+NcUM1G2FgL+k1VylAe0yl78G9Wr30j
         VmO4QP0qyCrL487H6udQOkOKL/6C4c/FSiR8BZI1Ju/k4vrvLAYShwQ8HDnn/eEI8TWq
         P6lyvAainXRcudJCWTy1gpMqLhYZ4Wy2AhZ2SscB3AAZ9o5PIpETYaPDGh023ePCsSGI
         ok+1A29Im+xoa13VBs9DSMaD4924JByG2dwrIu+7uqC+v7XBiFxBn92Jq4A4ExaDE0vO
         iCMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vdavVgytQx3Hl3yJ7dITcNENQnvgG3wAQ955lHBIP5BiFzo9X
	KpKVkfeFKQlyQa7oLMFXMXk=
X-Google-Smtp-Source: ABdhPJyNpBNrNEkdkQu3+DHk6SanfP5kQ3vlwPWKupScIN/t4VXigC4cHBNwEedoc5CsEl8LElGJsw==
X-Received: by 2002:a9f:242a:: with SMTP id 39mr8896906uaq.49.1611223581432;
        Thu, 21 Jan 2021 02:06:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls188172vsf.6.gmail; Thu, 21 Jan
 2021 02:06:21 -0800 (PST)
X-Received: by 2002:a67:d20d:: with SMTP id y13mr9647922vsi.13.1611223580964;
        Thu, 21 Jan 2021 02:06:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611223580; cv=none;
        d=google.com; s=arc-20160816;
        b=0ds9RbHpAr8pCK7FbbghBqBvRbxq9Flazv5P0EXLYxHyxEd+WCXvhPCjmQyWSCd42N
         BPa/qhSTBxonzm/ykWYgafstEIS40BrkCtnu9RE3YQpAoZiYzUv+vXJZwizI6BHktxYT
         xPdvynsx9U4ITrAhkMn7kmykT84gOD2BOEh6/PvXLWpFKz3soPhkSRh1nJHAdrPjn63f
         vfjDkdM5xIbabCjYqxANzb3H2BGwDKJgeCCHUHGKEG1MQ6j2bev3dAAtA/SEKxJbaTKB
         SiMMyLRvkDjf9kJzYILQ3KmZRSEPwcXVFUHbfNOL4OOrCReKIhdFQumLm/J1u/KiK/F6
         5Nbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=ecknqWhuJL3W8p6oQ0zL/CmHsHXhDRwgK1lykE3RJyQ=;
        b=WOyLWYsk+E1jlN+cYeLzWIhlw/iw6fwt3fUB66eYIWiBEBqRqceAmF13HxFOvG+s5l
         O3V8zsqgJw6Jy/Cc/Tkzen2AwwODFNYs3YI9NP2gpOtAtY/Ikui2s2ELtPAVxsd7Ggxc
         n+B89fq8Eam1Tr4QZmctDquM872sq3iIfe7gmUhPPvTjSZYwkQeCpXN3gQ9s0bdQPKU6
         jHVWcmS4cbLI6caoR7BtxzBfwbYPQmW+vE+XabcMRfWfmdtav8QZYWJjkMLcyluTsj3x
         HxW9vPs+2Q3kUvfMKjcMxj9TzI1TBpJXrhVNN4t01/LUd1+len6HsQjZ6qjVCvKDb8n0
         B6Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=hQ9ZqKLY;
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com. [216.228.121.143])
        by gmr-mx.google.com with ESMTPS id e11si337004vkp.4.2021.01.21.02.06.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 02:06:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B6009521b0000>; Thu, 21 Jan 2021 02:06:19 -0800
Received: from [10.26.72.207] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 21 Jan
 2021 10:06:14 +0000
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: Nick Desaulniers <ndesaulniers@google.com>, Robert Moore
	<robert.moore@intel.com>, Erik Kaneda <erik.kaneda@intel.com>, "Rafael J .
 Wysocki" <rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva"
	<gustavoars@kernel.org>
CC: <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>,
	<linux-acpi@vger.kernel.org>, <devel@acpica.org>,
	<linux-kernel@vger.kernel.org>, linux-tegra <linux-tegra@vger.kernel.org>
References: <20201111021131.822867-1-ndesaulniers@google.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com>
Date: Thu, 21 Jan 2021 10:06:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201111021131.822867-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: jonathanh@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=hQ9ZqKLY;       spf=pass
 (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as
 permitted sender) smtp.mailfrom=jonathanh@nvidia.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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


On 11/11/2020 02:11, Nick Desaulniers wrote:
> The "fallthrough" pseudo-keyword was added as a portable way to denote
> intentional fallthrough. This code seemed to be using a mix of
> fallthrough comments that GCC recognizes, and some kind of lint marker.
> I'm guessing that linter hasn't been run in a while from the mixed use
> of the marker vs comments.
>=20
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>


I know this is not the exact version that was merged, I can't find it on
the list, but looks like the version that was merged [0], is causing
build errors with older toolchains (GCC v6) ...

/dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscontrol=
.c: In function =E2=80=98acpi_ds_exec_begin_control_op=E2=80=99:
/dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscontrol=
.c:65:3: error: =E2=80=98ACPI_FALLTHROUGH=E2=80=99 undeclared (first use in=
 this function)
   ACPI_FALLTHROUGH;
   ^~~~~~~~~~~~~~~~
/dvs/git/dirty/git-master_l4t-upstream/kernel/drivers/acpi/acpica/dscontrol=
.c:65:3: note: each undeclared identifier is reported only once for each fu=
nction it appears in
/dvs/git/dirty/git-master_l4t-upstream/kernel/scripts/Makefile.build:287: r=
ecipe for target 'drivers/acpi/acpica/dscontrol.o' failed

Cheers
Jon

[0] https://github.com/acpica/acpica/commit/4b9135f5
	=20
--=20
nvpublic

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/031790d7-ee26-f919-9338-b135e9b94635%40nvidia.com.
