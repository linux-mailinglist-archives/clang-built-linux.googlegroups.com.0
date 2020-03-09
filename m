Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBSWGTDZQKGQEAOVQIWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C8317DE30
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 12:06:51 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id t8sf1966547wmd.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 04:06:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583752011; cv=pass;
        d=google.com; s=arc-20160816;
        b=zeXUKZ0Nsay7KmmnO/GZDgUm3W3MXPrH8jpTMHRAdT8UOBKGatCgdWUoYqS8xk7c5A
         Nb8UoPR9nSnM1mGJb2GZZppPMNBsyfOw9GPedi1TOYB3EAao//mND02xUGz7iQ+mJrri
         HASBIF3/e23iFAKCVoWO0oM42jjHlvsFzmVLJV7uJNzZqf2NWHW/dk4+6Hrhr1cWouOP
         kfpmzRVRm2f3Lz4eh3OKW4VRVUyPBHXKS1X1NKl+1e5iw4N59IvffbwFqPiL7b3q4TA/
         1MHCD6t9RlsE6FuFJ2nWSixT0QMWWZF+Veg6lz0PnuuNvWjyw+edAijnW6TYs+I2Gx0y
         sEnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=jZeD3VFdGk/RW0ukqEqiN/o/gASIIevM+82GVKfP+Yw=;
        b=iCVU7/P+M6uzzDIDNkPDOgusGgnGu60s0ksI2R8mXPxtKy5124pBHhD6OLS07mzsTl
         KeSjOnNCSKE85nB2ZanXzGdIiblME+SRJxTHEejkLlppEIlgO6YYylLyVeboOO7g16Pg
         gLlrO43FzOnUEAmSsrbZW+ZfQE36nBwHOcnwBM0ZtbwHQVMgDE5KA6lm5qIaTqoQqm9i
         RMJDIxVl+4BPwUT7huHP8sJadRVmdce4LKJD7yMBtuqNwFykuNrRVt/ly5kbsuAi1wZk
         2WIIdkuZ0rKK6xNxInBbUogj3a4+woLhcgnMKasgoUM+fWM9Z7iM7ZO+449kzrJyV/sZ
         HLMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jZeD3VFdGk/RW0ukqEqiN/o/gASIIevM+82GVKfP+Yw=;
        b=hFacJUuPn3UGwEM1RzK477TOLWu1/0SgxvWNJImPO90DGwgYteOYEmbQ77sl3eWL2B
         tfTrCqNHCIV/gohmHSDsHdF8TpKqy6er3nQxfchI+jiuC0niJSVZmBPWHik44yxbDeRk
         hIKUuTAciqq2ATqyoyOA3zMpGwGlMyEZ+uhPjBTDl62gEa/Fht1kQh4mf3f1VVBDBLE+
         dweTxX4JisSsb3gpd7ncg7eQetd02fyequlkL9eEffAYHFtqZRlxKY4ikounhA88kq97
         R8lrXz5ZpD8jcIppKFP7pbi24gGgp0ESOehXbVJtzb3ko9WSHhpqEcGyU7B3U/gD084x
         6QnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jZeD3VFdGk/RW0ukqEqiN/o/gASIIevM+82GVKfP+Yw=;
        b=VEYyYizncEd7kwGyrGkp/DpG3MDzjm4jSnvx3czj2X4xSHS/rqUng9d7IdxzDRJ2Fp
         KAz5QAtrOk+sTjQGY4i56gLxJNo9L+nyBVV+bsSEjrd10qjl3RCQ8gC2ybMGMI4QDZX8
         HwEl0lFetBFk4XhDjbGbtAVIFMCIOjEb/LY52IP3iOBANg+RqbkhLacQPq7zrrFIO3gI
         KyKt1j9LHECrwT1+JSn5LBW6ImiQBIWpRnw2Qv+5jNHQGuBFTUncjW86g/ZtczWvfKDJ
         mevXqa73fUoR5AD4DzJ1kBmmYpgiPifwl/HyGgZVh1tUsT+3WGhyNteC7NR+8FUtTVsr
         18Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1LDZfxbjXMxBEbN985yXKC3F471oYBoNQ31oGxVIiURnyeU4eJ
	OzU89QyxtBLCe5/RuxeMYr8=
X-Google-Smtp-Source: ADFU+vvvKAJbEwheRm7ygPZkpP5erHBJ11Lg4V9KLuxLHg33J+84QgLVB84/Ww0v+PkoaGKAYimaFg==
X-Received: by 2002:a1c:6745:: with SMTP id b66mr19652001wmc.30.1583752010894;
        Mon, 09 Mar 2020 04:06:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls5421867wrp.11.gmail; Mon, 09
 Mar 2020 04:06:50 -0700 (PDT)
X-Received: by 2002:a5d:514a:: with SMTP id u10mr470747wrt.360.1583752010156;
        Mon, 09 Mar 2020 04:06:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583752010; cv=none;
        d=google.com; s=arc-20160816;
        b=EfJF4sh8X8aD3YVDL1Kn3dAr/KI/txTsuPjbFHjoRDx7zv+aW1RjEA21mXYTaSJWbv
         FkKkFqgR2Cwnhd4YfvhjGLBsROf7TYMQuW8hP5uPUnNX5N/VK3cTH/zNwKYDKQAO8tRs
         mRn3RwL7DMDlGcFb/oztOJoUXPLlDmoQf95CnPEV7wkktC0zESFZoYPZse2BjRSUYdic
         qI8Vn0UmiGn8MDTsnNveAXwpW+9peWYlPkKB3qtxE2TL7acV6dNMGgqErz/GxAGlhVFF
         91v5Bo7LC2dFnJ9kPWNPi5XoSXNQM2syAWAuKUQeWjFvNJjCoX62Z+Sz3eSLBT5wBmM4
         xx5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ho0rchaH0s9SaaRYl8iRGMYh2UwN3JaPkWt4uBXQxvI=;
        b=P9JdFi2oC8bqDEA9/bP0kG1y47naJ3mWaBUbrx9Y5O6rrleYeGPIT+W2k9WkU7l7eN
         vDG/ocp15EQA3KwchT1xiNhUyu+ZH4AJJ8I8V3m7AXpdzcJiaVxfC50PD8hh9kGAueSU
         vxQS4ymZpg6mt+6MTvCoAw8Jf7G5+BSPVeydeKHHe1hSMG6IN1eIr0H+HyqIMQt8NSeE
         9ww0cVvAcpNik7E+4uAYjZ004sf2DCvO44siPka1+MC4E5Q3Tlu52aatVnL0nvlJ1Hak
         Rz9znG0lz2KjnPfkQfnm71CJ4AKqfK5d+VyDs2NbaXtFPOz7xTkiUyO0UF4cqIq6csM2
         w+gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l13si479364wrp.2.2020.03.09.04.06.50
        for <clang-built-linux@googlegroups.com>;
        Mon, 09 Mar 2020 04:06:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 648701FB;
	Mon,  9 Mar 2020 04:06:49 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BCE13F6CF;
	Mon,  9 Mar 2020 04:06:44 -0700 (PDT)
Subject: Re: [PATCH v2 00/20] Introduce common headers
To: Andy Lutomirski <luto@amacapital.net>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com>
Date: Mon, 9 Mar 2020 11:07:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Hi Andy,

On 3/6/20 4:04 PM, Andy Lutomirski wrote:

[...]

>>
>> To solve the problem, I decided to use the approach below:
>>  * Extract from include/linux/ the vDSO required kernel interface
>>    and place it in include/common/
>=20
> I really like the approach, but I=E2=80=99m wondering if =E2=80=9Ccommon=
=E2=80=9D is the right name. This directory is headers that aren=E2=80=99t =
stable ABI like uapi but are shared between the kernel and the vDSO. Regula=
r user code should *not* include these, right?
>=20
> Would =E2=80=9Cvdso=E2=80=9D or perhaps =E2=80=9Cprivate-abi=E2=80=9D be =
clearer?
>=20

Thanks! These headers are definitely not "uapi" like and they are meant to
evolve in future like any other kernel header. We have just to make sure th=
at
the evolution does not break what we are trying to achieve with this series=
.

I have to admit that I spent quite some time in choosing the name and I am =
not
completely satisfied with "common" either. The reason why I ended up with t=
his
is that the headers are common in between the kernel and the vdso (userspac=
e)
but I agree that it does not make completely self explanatory.

Using "vdso" would mean according to me that those are vdso only headers,
probably "private-abi" is the best choice here. If there is enough consensu=
s, I
am happy to rework my patches accordingly. What do you think?

>>  * Make sure that where meaningful the kernel includes "common"
>>  * Limit the vDSO library to include headers coming only from UAPI
>>    and "common" (with 2 exceptions compiler.h for barriers and
>>    param.h for HZ).
>>  * Adapt all the architectures that support the unified vDSO library
>>    to use "common" headers.
>=20
[...]

--=20
Regards,
Vincenzo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b18c7ce1-0948-a9e2-2d7e-d019669a71e1%40arm.com.
